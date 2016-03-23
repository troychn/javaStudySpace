package com.tcl.miss.mina.tcpserver.server;

import org.apache.log4j.Logger;
import org.apache.mina.core.session.IoSession;

/**
 * 服务端向客户端发送消息后，业务处理类
 * @author miss-liu
 *
 */
public class SentServer {
	@SuppressWarnings("unused")
	private static final Logger log = Logger.getLogger(SentServer.class);
	
	/**
	 * 服务端向客户端发送消息后，执行此方法
	 * @param session
	 * @param message
	 * @throws Exception
	 */
	public void SentMessage(IoSession session, Object message) throws Exception {
		String s = (String) message;
		
		//服务端向客户端发送check#success才表示校验没有通过，则马上强制关闭连接
		if("check#fail".equals(s)){
			closeSession(session);
		}
	}
	
	/**
	 * 强制关闭session
	 * 客户端连接服务器成功，如果校验不通过，就马上强制关闭连接
	 * @param session
	 * @param message
	 * @throws Exception
	 */
	private void closeSession(IoSession session) throws Exception {
		if(session != null){
			session.close(true);
		}
	}
}
