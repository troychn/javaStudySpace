package com.tcl.miss.mina.tcpserver;

import org.apache.log4j.Logger;
import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.transport.socket.SocketSessionConfig;

import com.tcl.miss.mina.tcpserver.server.CloseServer;
import com.tcl.miss.mina.tcpserver.server.ReceivedServer;
import com.tcl.miss.mina.tcpserver.server.SentServer;
import com.tcl.miss.mina.util.CacheManager;

/**
 * Handler是MINA专门处理客户端和服务器端消息通讯的业务类
 * MINA设计原则是将网络连接管理的处理单独放一块，将客户端和服务器端的消息处理单独放一块。
 * 必须继承IoHandlerAdapter
 * @author ljz
 *
 */
public class MyServerHandler extends IoHandlerAdapter {
	private static final Logger log = Logger.getLogger(MyServerHandler.class);
		
	//重新父类方法
	//网络连接出现异常就会执行此方法
	@Override
	public void exceptionCaught(IoSession session, Throwable cause)
			throws Exception {		
		log.error("服务端抛异常----客户端："+ getDeviceCode(String.valueOf(session.hashCode())) + "----强制关闭session连接！");
		log.error(cause.getMessage(),cause);
		session.close(true);		
	}

	//收到消息后执行此方法
	@Override
	public void messageReceived(IoSession session, Object message)
			throws Exception {
		log.info("服务端收到----客户端："+ getDeviceCode(String.valueOf(session.hashCode())) + "----" + message);
		ReceivedServer server = new ReceivedServer();
		server.receivedMessage(session, message);
	}

	//服务端发送消息后执行此方法
	@Override
	public void messageSent(IoSession session, Object message) throws Exception {		
		log.info("服务端发送----客户端："+ getDeviceCode(String.valueOf(session.hashCode())) + "----" + message);
		SentServer server = new SentServer();
		server.SentMessage(session, message);		
	}

	//关闭客户端和服务器的session会话后执行此方法
	@Override
	public void sessionClosed(IoSession session) throws Exception {
		log.info("服务端关闭session----客户端："+ getDeviceCode(String.valueOf(session.hashCode())));
		CloseServer server = new CloseServer();
		server.closeSession(session);
	}
	
	//会话进入空闲状态后执行此方法
	//这个是可以设置的，比如此项目设置200秒如果客户端和服务端都没有任何消息通信，就认为进入限制状态
	@Override
	public void sessionIdle(IoSession session, IdleStatus status)
			throws Exception {
		log.info("服务端session进入空闲----客户端端："+ getDeviceCode(String.valueOf(session.hashCode())));
		if(session != null){
			session.close(true);
		}		
	}

	//创建客户端和服务器端session会话后执行此方法
	@Override
	public void sessionCreated(IoSession session) throws Exception {
		log.info("服务端创建session----客户端端："+ getDeviceCode(String.valueOf(session.hashCode())));
		
		//如果不写如下几行代码，调用session.close(true)方法并没有马上关闭连接
		SocketSessionConfig cfg = (SocketSessionConfig) session.getConfig();   
        cfg.setReceiveBufferSize(2 * 1024 * 1024);   
        cfg.setReadBufferSize(2 * 1024 * 1024);   
        cfg.setKeepAlive(true);
        //设置了它后，MINA在调用了close()方法后，不会再进入TIME_WAIT状态了，而直接Close掉了，这样就不会产生这样的那些TIME_WAIT的状态了.
        cfg.setSoLinger(0); //这个是根本解决问题的设置		
	}
	
	//会话打开后进入此方法(打开会话和创建会话差不多)
	@Override
	public void sessionOpened(IoSession session) throws Exception {
		log.info("服务端打开session----客户端："+ getDeviceCode(String.valueOf(session.hashCode())));
	}
	
	private String getDeviceCode(String hashCode) throws Exception {
		return CacheManager.getCacheManager().getDeviceCode(hashCode);		
	}	
}
