package com.tcl.miss.mina.tcpserver;

import org.apache.log4j.Logger;
import org.apache.mina.core.session.IdleStatus;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.codec.textline.TextLineCodecFactory;
import org.apache.mina.transport.socket.nio.NioSocketAcceptor;

import java.net.InetSocketAddress;
import java.util.ResourceBundle;

/**
 * MINA服务端
 * MINA设计原则是将网络连接管理和客户端、服务器端消息代码分离出来。
 * @author Administrator
 *
 */
public class MinaServer {
	private static final Logger log = Logger.getLogger(MinaServer.class);
	
	//tcp服务器端口
	private static String prot = ResourceBundle.getBundle("share").getString("tcp_port");
	//服务器session超时时间
	private static String sessiontime = ResourceBundle.getBundle("share").getString("sessiontime");
	
	//启动tcp服务
	public static void startServer() throws Exception {
		//第一步创建NioSocketAcceptor对象
		NioSocketAcceptor acceptor = new NioSocketAcceptor();		
		
		//第三步获取MINA所有的拦截器，并且增加一个新拦截器
		//第一个参数codec就是拦截器的名称，可以随便命名。
		//ProtocolCodecFilter是MINA比较常用的拦截器，作用是将二进制数据和对象之间进行转换
		//TextLineCodecFactory是MINA内置的文本消息加解码的类
		acceptor.getFilterChain().addLast("codec", new ProtocolCodecFilter(new TextLineCodecFactory()));
		
		//acceptor.getSessionConfig().setTcpNoDelay(true);
		
		//设置session什么情况下进入空闲状态
		//设置如果5秒钟，客户端没有向服务器发送消息、或者服务器也没有向客户端发送消息，session会话就进入空闲状态
		acceptor.getSessionConfig().setIdleTime(IdleStatus.READER_IDLE,Integer.parseInt(sessiontime));
		
		//第二步设置自己实现的Handler
		acceptor.setHandler(new MyServerHandler());
		
		//第四步调用bind方法，设置端口9898
		acceptor.bind(new InetSocketAddress(Integer.parseInt(prot)));
		
		log.info("tcp服务器启动成功！");
	}

}
