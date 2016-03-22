package com.troylc.nettyDemo.redis;

import com.troylc.nettyDemo.dao.DeviceInfoDao;
import com.troylc.nettyDemo.dao.DevicePerformanceDao;
import com.troylc.nettyDemo.domain.DmpDeviceInfoEntity;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 处理设备信息的缓存操作
 * Created by lc on 2015/12/9.
 */
@Service("deviceInfoRedisService")
//@Transactional
public class DeviceInfoRedisService {

    @Resource
    private DeviceInfoDao deviceInfoDao;

    @Resource
    private DevicePerformanceDao devicePerDao;

    @Resource
    private RedisClientTemplate redisClientTemplate;

    /**
     * 保存设备信息到数据库与缓存中业务
     * @param deviceInfoEntity
     * @return
     * @throws Exception
     */
    //@Transactional(propagation = Propagation.REQUIRES_NEW)
    public DmpDeviceInfoEntity saveDeviceInfo(DmpDeviceInfoEntity deviceInfoEntity) throws Exception {
        DmpDeviceInfoEntity deviceInfoRedis =
                redisClientTemplate.get(deviceInfoEntity.getSerialnumber(),DmpDeviceInfoEntity.class);
        if(deviceInfoRedis != null){
             /*设置两个不记录数据库中字段的值，让获取的值与数据库中保持一持，好与缓存中的对象比较，
        * 减少数据库操作*/
            deviceInfoRedis.setOldDeviceVersion(deviceInfoEntity.getOldDeviceVersion());
            deviceInfoRedis.setComponentOldVersions(deviceInfoEntity.getComponentOldVersions());
            if (!deviceInfoEntity.equals(deviceInfoRedis)) {
                DmpDeviceInfoEntity deviceInfo = deviceInfoDao.save(deviceInfoEntity);
                redisClientTemplate.set(deviceInfoEntity.getSerialnumber(), deviceInfo);
            }
        } else {
            deviceInfoRedis = deviceInfoDao.save(deviceInfoEntity);
            redisClientTemplate.set(deviceInfoEntity.getSerialnumber(), deviceInfoRedis);
        }
        return deviceInfoRedis;
    }


    /**
     * 根据设备序列号从缓存与数据库中查找设备
     * @param serialNo
     * @return
     * @throws Exception
     */
    public DmpDeviceInfoEntity findBySerialNoAndVersion(String serialNo) throws Exception{
        DmpDeviceInfoEntity deviceInfoRedis =
                redisClientTemplate.get(serialNo, DmpDeviceInfoEntity.class);
        if(deviceInfoRedis == null){
            return deviceInfoDao.findBySerialNoAndVersion(serialNo);
        }
        return deviceInfoRedis;
    }
}
