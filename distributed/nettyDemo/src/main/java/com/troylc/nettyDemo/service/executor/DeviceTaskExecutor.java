package com.troylc.nettyDemo.service.executor;

import com.troylc.nettyDemo.domain.DmpDeviceInfoEntity;
import com.troylc.nettyDemo.service.DeviceInfoService;
import com.troylc.nettyDemo.service.TaskCacheService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 异步执行上报的任务执行类 实现Runable接口。
 * Created by lc on 2015/9/24.
 */
@Component
public class DeviceTaskExecutor implements Runnable {

    private static Logger log = LoggerFactory.getLogger(DeviceTaskExecutor.class);

    @Resource
    private DeviceInfoService deviceInfoService;

    @Resource
    private TaskCacheService taskCacheService;

    private DmpDeviceInfoEntity deviceInfoEntity;


    /**
     * 设备的老版本
     */
    private String oldDeviceVersion;

    public String getOldDeviceVersion() {
        return oldDeviceVersion;
    }

    public void setOldDeviceVersion(String oldDeviceVersion) {
        this.oldDeviceVersion = oldDeviceVersion;
    }

    public DmpDeviceInfoEntity getDeviceInfoEntity() {
        return deviceInfoEntity;
    }

    public void setDeviceInfoEntity(DmpDeviceInfoEntity deviceInfoEntity) {
        this.deviceInfoEntity = deviceInfoEntity;
    }

    public DeviceTaskExecutor(DmpDeviceInfoEntity deviceInfoEntity, String oldDeviceVersion) {
        this.deviceInfoEntity = deviceInfoEntity;
        this.oldDeviceVersion = oldDeviceVersion;
    }

    public DeviceTaskExecutor() {
    }

    /**
     * When an object implementing interface <code>Runnable</code> is used
     * to create a thread, starting the thread causes the object's
     * <code>run</code> method to be called in that separately executing
     * thread.
     * <p/>
     * The general contract of the method <code>run</code> is that it may
     * take any action whatsoever.
     *
     * @see Thread#run()
     */
    @Override
    public void run() {
        if(deviceInfoEntity != null){
            /*try {
                Thread.sleep(5000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }*/
            executorTask(deviceInfoEntity);
        }

    }

    /**
     * 上报设备信息异步执行方法
     * @param deviceInfoEntity 设备信息
     */
    private void executorTask(DmpDeviceInfoEntity deviceInfoEntity) {
        try {
            deviceInfoService.saveDeviceInfo(deviceInfoEntity);
        } catch (Exception e) {
            log.error("保存设备信息失败,设备序列号："+ deviceInfoEntity.getSerialnumber()+",错误：" + e);
            e.printStackTrace();
        }
    }

}
