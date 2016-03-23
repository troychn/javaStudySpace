package com.tcl.miss.mina;

import org.apache.log4j.Logger;

import com.tcl.miss.mina.httpserver.MainApp;
import com.tcl.miss.mina.tcpserver.MinaServer;
import com.tcl.miss.mina.tcpserver.TimerTaskServer;

/**
 * 启动服务
 * @author Administrator
 *
 */
public class StartServer {
	private static final Logger log = Logger.getLogger(StartServer.class);

	public static void main(String[] args) {		
		try {
			//定时加载未推送的命令
			TimerTaskServer timerTaskServer = new TimerTaskServer();
			timerTaskServer.startTask();
			
			//启动MINA tcp服务			
			MinaServer.startServer();
			
			//启动MINA http服务
			MainApp.startServer();
			//HttpServerRun.run();
			log.info("tcp、http服务器启动成功！");
		} catch (Exception e) {
			log.error(e.getMessage(),e);
			log.error("tcp、http服务器启动失败！");
		}		
	}

}
