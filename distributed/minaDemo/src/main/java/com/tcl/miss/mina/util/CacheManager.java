package com.tcl.miss.mina.util;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.apache.mina.core.session.IoSession;

public class CacheManager {
		
	private static CacheManager cacheManager = new CacheManager();
	
	private CacheManager(){}
	
	/**
	 * key session的hashCode
	 * value deviceId
	 */
	private static Map<String,String> sessionCodeMap = new ConcurrentHashMap<String,String>();
	
	/**
	 * key deviceId
	 * value session对象
	 */
	private static Map<String,IoSession> sessionMap = new ConcurrentHashMap<String,IoSession>();
	
	/**
	 * 推送数据缓存
	 * String[] 第一个元素为推送服务器数据表id、第二元素推送内容、第三个元素推送失效时间
	 */
	private static Map<String,String[]> pushMap = new ConcurrentHashMap<String,String[]>();
	
	/**
	 * 客户端最后离线时间
	 */
	private static Map<String,String> lastTimeMap = new ConcurrentHashMap<String,String>();
		
	public static CacheManager getCacheManager() throws Exception {
		return cacheManager;
	}
	
	//获取缓存
	public Map<String,IoSession> getSessionMap() throws Exception {
		return sessionMap;
	}
	
	//获取缓存
	public Map<String,String> getSessionCodeMap() throws Exception {
		return sessionCodeMap;
	}
	
	//获取推送数据缓存
	public Map<String,String[]> getPushMap() throws Exception {
		return pushMap;
	}
	
	//获取客户端最后离线时间
	public Map<String,String> getLastTimeMap() throws Exception {
		return lastTimeMap;
	}
	
	/**
	 * 添加客户端和服务端连接的IoSession
	 * @param deviceId 客户端device_id
	 * @param session IoSession
	 * @throws Exception
	 */
	public void addDeviceCode(String hashCode,String deviceCode) throws Exception {
		sessionCodeMap.put(hashCode,deviceCode);
	}
	
	/**
	 * 添加客户端和服务端连接的IoSession
	 * @param deviceId 客户端device_id
	 * @param session IoSession
	 * @throws Exception
	 */
	public void addSession(String deviceCode,IoSession session) throws Exception {
		sessionMap.put(deviceCode,session);
	}
	
	/**
	 * 删除客户端和服务器端连接的IoSession
	 * @param deviceId
	 * @throws Exception
	 */
	public void delSession(String deviceCode) throws Exception {
		sessionMap.remove(deviceCode);
	}
	
	/**
	 * 删除客户端和服务器端连接session的hashCode和deviceId的关联
	 * @param deviceId
	 * @throws Exception
	 */
	public void delDeviceCode(String hashCode) throws Exception {
		sessionCodeMap.remove(hashCode);
	}
	
	/**
	 * 删除推送缓存数据
	 * @param deviceCode
	 * @throws Exception
	 */
	public void delPushMap(String deviceCode)throws Exception {
		if(pushMap != null && pushMap.size() > 0){
			pushMap.remove(deviceCode);
		}
	}
		
	//通过deviceId获取建立连接的session对象
	public IoSession getSession(String deviceCode)  throws Exception {
		return sessionMap.get(deviceCode);
	}
	
	//通过session的hashcode获取deviceId
	public String getDeviceCode(String hashCode)  throws Exception {
		return sessionCodeMap.get(hashCode);
	}
	
	public String getLastTime(String deviceCode)  throws Exception {
		return lastTimeMap.get(deviceCode);
	}
	
}
