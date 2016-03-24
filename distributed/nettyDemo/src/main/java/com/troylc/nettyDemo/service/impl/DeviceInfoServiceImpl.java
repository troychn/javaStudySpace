package com.troylc.nettyDemo.service.impl;

import com.troylc.nettyDemo.dao.DeviceInfoDao;
import com.troylc.nettyDemo.dao.DevicePerformanceDao;
import com.troylc.nettyDemo.domain.DmpDeviceInfoEntity;
import com.troylc.nettyDemo.domain.DmpDevicePerformanceEntity;
import com.troylc.nettyDemo.redis.DeviceInfoRedisService;
import com.troylc.nettyDemo.service.DeviceInfoService;
import com.troylc.nettyDemo.utils.DateUtils;
import com.troylc.nettyDemo.utils.ResolveDeviceXml;
import org.dom4j.Element;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;

/**
 * 通过spring cache缓存设备信息
 * @Cacheable 主要针对方法配置，能够根据方法的请求参数对其结果进行缓存
 * @CachePut 主要针对方法配置，能够根据方法的请求参数对其结果进行缓存，和
 *           @Cacheable 不同的是，它每次都会触发真实方法的调用
 * @CachEvict 主要针对方法配置，能够根据一定的条件对缓存进行清空
 * Created by lc on 2015/9/7.
 */
@Service("deviceInfoService")
@Transactional
public class DeviceInfoServiceImpl implements DeviceInfoService {

    private static Logger log = LoggerFactory.getLogger(DeviceInfoServiceImpl.class);

    @Resource
    private DeviceInfoDao deviceInfoDao;

    @Resource
    private DeviceInfoRedisService deviceInfoRedisService;

    @Resource
    private DevicePerformanceDao devicePerDao;



    /**
     * 保存设备基本信息,保存之前根据设备序列号与版本号查找是否有对应的设备存在，
     * 如果有则更新设备上报信息
     *
     * @param deviceInfoEntity
     * @return 成功返加设备UUID
     * @throws Exception
     */
    /*@CachePut(key = "targetClass + '.' + #deviceInfoEntity.serialnumber", value = "dmpDeviceInfoEntity")*/
    //@Transactional(propagation = Propagation.REQUIRES_NEW)
    public DmpDeviceInfoEntity saveDeviceInfo(DmpDeviceInfoEntity deviceInfoEntity) throws Exception {
        //Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        Date timestamp = new Date();
        if (deviceInfoEntity.getUuid() == null) {
            deviceInfoEntity.setCreatetime(timestamp); //第一次上报设置第一次上报时间
        }
        deviceInfoEntity.setReporttime(DateUtils.parseDate(timestamp)); //设置每次上报时间
        DmpDeviceInfoEntity deviceInfo = deviceInfoDao.save(deviceInfoEntity);
        //操作缓存与数据库
        //DmpDeviceInfoEntity deviceInfo = deviceInfoRedisService.saveDeviceInfo(deviceInfoEntity);
        //如果设备性能信息对象不为空，则保存设备性能信息
        if(deviceInfoEntity.getDevicePerformance() != null && deviceInfo != null){
            DmpDevicePerformanceEntity devicePerformance = deviceInfoEntity.getDevicePerformance();
            devicePerformance.setDeviceid(deviceInfo.getUuid());
            //System.out.println("---------------------"+timestamp+"---------------------------------");
            devicePerformance.setCreatetime(timestamp);
            devicePerDao.save(devicePerformance);
        }
        return deviceInfo;
    }

    /**
     * 根据设备序列号与版本号查找设备信息表中是否存在记录
     *
     * @param serialnumber 序列号
     * @return 设备信息
     * @throws Exception
     */
    /*@Cacheable(key = "targetClass + '.' + #serialnumber", value = "dmpDeviceInfoEntity")*/
    public DmpDeviceInfoEntity findBySerialNoAndVersion(String serialnumber) throws Exception {
        System.out.println("-----------------执行了findBySerialNoAndVersion--数据库查询------------------");
        return deviceInfoDao.findBySerialNoAndVersion(serialnumber);
        //return deviceInfoRedisService.findBySerialNoAndVersion(serialnumber);
    }





    /**
     * 处理上报逻辑:如果设备存在刚更新，反之增加设置；
     * 如果设备是任务下发后的上报，则根据任务提醒时长判断是否消除任务
     * 如果上报后设备的版本升级到了补丁的版本则更新升级历史中的补丁升级状态。
     *
     * //此方法为处理业务逻辑方法，不涉及数据持化操作，所以不需要开启事务,此处增加
     * @Transactional(propagation = Propagation.NOT_SUPPORTED) 主要解决异步保存设备信息时，事务提交两次的问题
     * @param root       上报设备信息
     * @param serialno   序列号
     * @param version    设备版本号
     * @param systemType 设备系统类型 0为tos，1为ngtos
     * @throws Exception
     */
    @Transactional(propagation = Propagation.NOT_SUPPORTED)
    public void handleReportInfo(Element root, String serialno, String version, String systemType)
            throws Exception {
        //判断上报信息必填项是否为空。
        if (ResolveDeviceXml.JudgeXml(root, serialno)) {
            //设备序列号查找设备是否存在，设备序列必须唯一标识一台设备
            DmpDeviceInfoEntity device = this.findBySerialNoAndVersion(serialno);
            if (device == null) {
                //初始化设备基本信息与性能信息对象
                device = new DmpDeviceInfoEntity(new DmpDevicePerformanceEntity());
            } else {
                //记录设备老版本，每次保存设备信息后，去更新针对这个设备的补丁下发任务。
                device.setOldDeviceVersion(device.getDeviceversion());
                if (device.getDevicePerformance() == null) {
                    //初始化设备性能信息对象
                    device.setDevicePerformance(new DmpDevicePerformanceEntity());
                }
            }
            device.setSystemtype(systemType);
            DmpDeviceInfoEntity deviceInfo = null;
            //与tos的业务逻辑处理
            //解析上报信息XML，并以设备信息返回z
            deviceInfo = ResolveDeviceXml.readTosNodes(root, device, systemType);
            //System.out.println("----设备信息：" + deviceInfo);

            //taskCache.getRemindtime()为空表示此任务为配置上报频率。

            //保存上报信息
            //根据设备序列号与版本号查找是否有对应的设备存在，如果有则更新设备上报信息
            //利用spring线程池异步执行上报任务。减少同步上报的压力。
            //deviceTaskExecutor.setDeviceInfoEntity(deviceInfo);
            //taskExecutor.execute(deviceTaskExecutor);
            //测试不异步丢数据问题：
            this.saveDeviceInfo(deviceInfo);

        }

    }

}
