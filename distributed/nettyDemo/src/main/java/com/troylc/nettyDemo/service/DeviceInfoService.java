package com.troylc.nettyDemo.service;

import com.troylc.nettyDemo.domain.DmpDeviceInfoEntity;
import org.dom4j.Element;

/**
 * Created by lc on 2015/9/7.
 */
public interface DeviceInfoService {

    /**
     * 保存设备基本信息
     * @param deviceInfoEntity
     * @return 成功返加设备UUID
     * @throws Exception
     */
    public DmpDeviceInfoEntity saveDeviceInfo(DmpDeviceInfoEntity deviceInfoEntity) throws Exception;

    /**
     * 根据设备序列号与版本号查找设备信息表中是否存在记录
     *
     * @param serialnumber 序列号
     * @return 设备信息
     * @throws Exception
     */
    public DmpDeviceInfoEntity findBySerialNoAndVersion(String serialnumber) throws Exception;


    /**
     * 处理上报逻辑:如果设备存在刚更新，反之增加设置；
     *             如果设备是任务下发后的上报，则根据任务提醒时长判断是否消除任务
     *             如果上报后设备的版本升级到了补丁的版本则更新升级历史中的补丁升级状态。
     * @param root 上报设备信息
     * @param serialno 序列号
     * @param version 设备版本号
     * @param systemType 设备系统类型 0为tos，1为ngtos
     * @throws Exception
     */
    public void handleReportInfo(Element root, String serialno, String version, String systemType) throws Exception;


}
