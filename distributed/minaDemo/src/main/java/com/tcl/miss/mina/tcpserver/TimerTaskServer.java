package com.tcl.miss.mina.tcpserver;

import com.tcl.miss.mina.dao.IPersistentDao;
import com.tcl.miss.mina.dao.IQueryDao;
import com.tcl.miss.mina.dao.impl.PersistentDao;
import com.tcl.miss.mina.dao.impl.QueryDao;
import com.tcl.miss.mina.util.CacheManager;
import org.apache.log4j.Logger;

import java.util.List;
import java.util.ResourceBundle;
import java.util.Timer;
import java.util.TimerTask;

public class TimerTaskServer {
	private static final Logger log = Logger.getLogger(TimerTaskServer.class);
	
	//项目启动后15秒启动定时器，只执行一次
	public void startTask() throws Exception {		
		//多少时间后启动定时器
		String starttime = ResourceBundle.getBundle("share").getString("starttime");
		
		Timer timer = new Timer(true);		
		timer.schedule(new TimerTask(){
			@Override
			public void run() {
				try{
					IQueryDao service = new QueryDao();
					List<String[]> list = service.getPushMessage();
					if(list.size() > 0){
						for (String[] s : list) {
							String[] ss = {s[0],s[2]};
							CacheManager.getCacheManager().getPushMap().put(s[1],ss);
						}
					}
					
					IPersistentDao persistentDao = new PersistentDao();
					persistentDao.updateOnline();
										
					service.getLastTime();
					log.info("推送命令缓存和离线时间加载成功！");
				}catch(Exception e){
					log.error(e.getMessage(),e);
				}				
			}			
		},
		Long.parseLong(starttime));
	}

}
