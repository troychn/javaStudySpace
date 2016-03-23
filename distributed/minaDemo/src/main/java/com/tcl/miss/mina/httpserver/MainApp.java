package com.tcl.miss.mina.httpserver;

import org.apache.log4j.Logger;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.executor.ExecutorFilter;
import org.apache.mina.transport.socket.nio.NioSocketAcceptor;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

/**
 * 服务启动类
 * 这里并没有配置backlog,那么它会采用操作系统默认的连接请求队列长度50
 * 详见org.apache.mina.core.polling.AbstractPollingIoAcceptor类源码的96行
 * @author jingzu.liu
 */
public class MainApp {
	private static final Logger log = Logger.getLogger(MainApp.class);
	//http服务器端口
	private static String webProt = ResourceBundle.getBundle("share").getString("web_port");
	//tcp服务器端口
	private static String tcpProt = ResourceBundle.getBundle("share").getString("tcp_port");
	
	//启动http服务和tcp服务
	public static void startServer() throws Exception{
		NioSocketAcceptor acceptor = new NioSocketAcceptor();
		acceptor.setBacklog(0);
		acceptor.setReuseAddress(true);
		acceptor.getSessionConfig().setWriteTimeout(10000);
		acceptor.getSessionConfig().setBothIdleTime(90);
		acceptor.getFilterChain().addLast("codec", new ProtocolCodecFilter(new ServerProtocolCodecFactory()));
		acceptor.getFilterChain().addLast("executor", new ExecutorFilter());
		acceptor.setHandler(new ServerHandler());
		//服务端绑定两个端口,一个用于接收并处理HTTP请求,一个用于接收并处理TCP请求
		List<SocketAddress> socketAddresses = new ArrayList<SocketAddress>();
		socketAddresses.add(new InetSocketAddress(Integer.parseInt(webProt)));
		//socketAddresses.add(new InetSocketAddress(Integer.parseInt(tcpProt)));
		//这里改造成只启动一个http服务器
		//socketAddresses.add(new InetSocketAddress(Integer.parseInt(webProt)));
		acceptor.bind(socketAddresses);
		//判断服务端启动与否
		if(acceptor.isActive()){
			log.info("写 超 时: 10000ms");
			log.info("发呆配置: Both Idle 90s");
			log.info("端口重用: true");
			log.info("服务端初始化完成......");
			log.info("服务已启动....开始监听...." + acceptor.getLocalAddresses());
			
			log.info("http服务器启动成功！");
		}else{
			log.info("服务端初始化失败......");
		}
	}
	
	/*
	public static void main(String[] args) throws IOException {
		NioSocketAcceptor acceptor = new NioSocketAcceptor();
		acceptor.setBacklog(0);
		acceptor.setReuseAddress(true);
		acceptor.getSessionConfig().setWriteTimeout(10000);
		acceptor.getSessionConfig().setBothIdleTime(90);
		acceptor.getFilterChain().addLast("codec", new ProtocolCodecFilter(new ServerProtocolCodecFactory()));
		acceptor.getFilterChain().addLast("executor", new ExecutorFilter());
		acceptor.setHandler(new ServerHandler());
		//服务端绑定两个端口,8000用于接收并处理HTTP请求,9901用于接收并处理TCP请求
		List<SocketAddress> socketAddresses = new ArrayList<SocketAddress>();
		socketAddresses.add(new InetSocketAddress(8000));
		socketAddresses.add(new InetSocketAddress(9901));
		acceptor.bind(socketAddresses);
		//判断服务端启动与否
		if(acceptor.isActive()){
			System.out.println("写 超 时: 10000ms");
			System.out.println("发呆配置: Both Idle 90s");
			System.out.println("端口重用: true");
			System.out.println("服务端初始化完成......");
			System.out.println("服务已启动....开始监听...." + acceptor.getLocalAddresses());
		}else{
			System.out.println("服务端初始化失败......");
		}
	}*/
}
