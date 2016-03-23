package com.tcl.miss.mina.httpserver;

import org.apache.log4j.Logger;
import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.transport.socket.SocketSessionConfig;

import com.alibaba.fastjson.JSONObject;
import com.tcl.miss.mina.httpserver.server.HandlerService;
import com.tcl.miss.mina.httpserver.server.ResponseMessage;

/**
 * 业务分发类
 * 本例中目前只接收两种请求
 * TCP请求的固定业务编码为10005,
 * HTTP请求的固定业务编码为/login(http://127.0.0.1:8000/login)
 * TCP报文格式为前6个字节表示报文整体长度(长度不足6位时左补零),第7位开始代表业务编码(固定长度为5),第12位开始是业务数据
 * @author jingzu.liu
 */
public class ServerHandler extends IoHandlerAdapter {
	
	private static final Logger log = Logger.getLogger(ServerHandler.class);
		
	//服务端收到消息后执行此方法
	@Override
	public void messageReceived(IoSession session, Object message) throws Exception {
		log.info("服务端--"+ session.hashCode() + "--已经收到消息--");
		HandlerService server = new HandlerService();
		server.messageReceived(session, message);
	}

	//服务端发送消息后执行此方法
	@Override
	public void messageSent(IoSession session, Object message) throws Exception {
		log.info("服务端--"+ session.hashCode() + "--已经发送消息--");
		//服务端发送消息后，就需要关闭当前连接，这里是http请求
		/*
		if(session != null){
			session.close(true);
		}*/
	}
	
	//会话进入空闲状态后执行此方法
	@Override
	public void sessionIdle(IoSession session, IdleStatus status){
		log.info("服务端--"+ session.hashCode() + "--session进入空闲");
		if(session != null){
			session.close(true);
		}		
	}
	
	//异常处理
	@Override
	public void exceptionCaught(IoSession session, Throwable cause){
		log.info("服务端--"+ session.hashCode() + "--出现异常");
		log.error(cause.getMessage(),cause);
		
		JSONObject mes = new JSONObject();
		mes.put("code", "E004");
		mes.put("message", "操作失败");

		String respData = ResponseMessage.buildHTTPResponseMessage(mes.toString());
		session.write(respData);//写入客户端		
		if(session != null){
			session.close(true);
		}		
	}

	@Override
	public void sessionClosed(IoSession session) throws Exception {
		log.info("服务端--"+ session.hashCode() + "--已经关闭session");
	}

	@Override
	public void sessionCreated(IoSession session) throws Exception {
		log.info("服务端--"+ session.hashCode() + "--已经创建session");
		
		//如果不写如下几行代码，调用session.close(true)方法并没有马上关闭连接
		SocketSessionConfig cfg = (SocketSessionConfig) session.getConfig();   
        cfg.setReceiveBufferSize(2 * 1024 * 1024);   
        cfg.setReadBufferSize(2 * 1024 * 1024);   
        cfg.setKeepAlive(true);
        //设置了它后，MINA在调用了close()方法后，不会再进入TIME_WAIT状态了，而直接Close掉了，这样就不会产生这样的那些TIME_WAIT的状态了.
        cfg.setSoLinger(0); //这个是根本解决问题的设置
	}

	@Override
	public void sessionOpened(IoSession session) throws Exception {
		log.info("服务端--"+ session.hashCode() + "--已经打开session");		
	}
	
}
