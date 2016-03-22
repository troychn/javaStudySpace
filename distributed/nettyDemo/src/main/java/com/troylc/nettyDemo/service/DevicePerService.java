package com.troylc.nettyDemo.service;

import com.troylc.nettyDemo.domain.DmpDevicePerformanceEntity;

/**
 * Created by lc on 2015/9/7.
 */
public interface DevicePerService {

    /**
     * 保存设备的性能信息
     * @param devicePerformance
     * @return 返加UUID
     * @throws Exception
     */
    public String saveDevicePerformance(DmpDevicePerformanceEntity devicePerformance) throws Exception;
}
