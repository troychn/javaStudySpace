package com.troylc.nettyDemo.service.impl;

import com.troylc.nettyDemo.dao.DevicePerformanceDao;
import com.troylc.nettyDemo.service.DevicePerService;
import com.troylc.nettyDemo.domain.DmpDevicePerformanceEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.sql.Timestamp;

/**
 * Created by lc on 2015/9/7.
 */
@Service("devicePerService")
@Transactional
public class DevicePerServiceImpl implements DevicePerService {

    @Resource
    private DevicePerformanceDao devicePerDao;
    /**
     * 保存设备的性能信息
     *
     * @param devicePerformance
     * @return 返加UUID
     * @throws Exception
     */
    public String saveDevicePerformance(DmpDevicePerformanceEntity devicePerformance) throws Exception {
        devicePerformance.setCreatetime(new Timestamp(System.currentTimeMillis()));
        DmpDevicePerformanceEntity ddpe = devicePerDao.save(devicePerformance);
        return ddpe.getUuid();
    }
}
