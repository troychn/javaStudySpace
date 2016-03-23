package com.tcl.miss.mina.dao;

import java.util.List;

public interface IQueryDao {
	/**
	 * 根据设备唯一码查询此设备是否存在并且激活
	 * @param deviceCode
	 * @return
	 * @throws Exception
	 */
	public boolean getDeviceCode(String deviceCode) throws Exception;
		
	/**
	 * 获取所有设备的推送服务消息代码
	 * @return
	 * @throws Exception
	 */
	public List<String[]> getPushMessage() throws Exception;
		
	/**
	 * 获取所以设备的离线时间
	 * @return
	 * @throws Exception
	 */
	public void getLastTime() throws Exception;
		
}
