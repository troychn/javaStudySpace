package com.tcl.miss.mina.dao;

import com.alibaba.fastjson.JSONObject;

import java.sql.Timestamp;

public interface IPersistentDao {
	
	/**
	 * 保存tcloud管理平台推送的数据
	 * @param params
	 * @return id
	 * @throws Exception
	 */
	public String save(JSONObject params)throws Exception;
	
	/**
	 * 推送成功后，更新推迟成功的状态
	 * @param id
	 * @param status
	 * @throws Exception
	 */
	public void update(String id, String status)throws Exception;
	
	/**
	 * 保存设备最后一次离线时间
	 * @param deviceCode
	 */
	public void updateLastTime(String deviceCode, Timestamp lastTime)throws Exception;
	
	/**
	 * 保存设备在线状态
	 * @param deviceCode
	 * @throws Exception
	 */
	public void updateOnline(String deviceCode)throws Exception;
	
	/**
	 * 服务器每次启动后，先将所有设备设置为离线状态
	 * @throws Exception
	 */
	public void updateOnline() throws Exception;
}
