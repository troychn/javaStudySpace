package com.tcl.miss.mina.tcpserver.server;

import com.tcl.miss.mina.dao.IPersistentDao;
import com.tcl.miss.mina.dao.impl.PersistentDao;
import com.tcl.miss.mina.util.CacheManager;
import org.apache.log4j.Logger;
import org.apache.mina.core.session.IoSession;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class CloseServer {
	private static final Logger log = Logger.getLogger(CloseServer.class);
	
	//关闭session的业务方法
	public void closeSession(IoSession session) throws Exception{
		if(session != null){
			//清理session缓存
			String hashCode = String.valueOf(session.hashCode());			
			String deviceCode = CacheManager.getCacheManager().getDeviceCode(hashCode);
			if(deviceCode != null){
				CacheManager.getCacheManager().delDeviceCode(String.valueOf(session.hashCode()));
				
				IoSession sessionOld = CacheManager.getCacheManager().getSession(deviceCode);
				if(sessionOld != null){
					if(session.hashCode() == sessionOld.hashCode()){
						CacheManager.getCacheManager().delSession(deviceCode);
						log.info(deviceCode+"------------清理缓存------------退出连接！");
					}
				}
				
				//更新离线时间到数据库和缓存
				java.sql.Timestamp date = new java.sql.Timestamp(System.currentTimeMillis());
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				
				//将最近一次离线时间保存到数据库里
				IPersistentDao dao = new PersistentDao();
				dao.updateLastTime(deviceCode, date);
				
				//将离线时间放到缓存中			
				CacheManager.getCacheManager().getLastTimeMap().put(deviceCode,df.format(date));
			}			
		}
	}

}
