package com.troylc.nettyDemo.nettyserver;

import com.troylc.nettyDemo.nettyserver.receive.HttpServer;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.util.Log4jConfigurer;

public class AppServer {

	/**
	 * 在启动时，spring就会加载log4j了。
	 */
	static {
		try {
			String currentlyPath = System.getProperty("user.dir");
			System.out.println(currentlyPath);
			System.out.println(System.getProperty("user.home"));;
			Log4jConfigurer.initLogging("classpath:config/log4j.properties");
		} catch (Exception ex) {
			System.err.println("Cannot Initialize log4j");
		}
	}

	public static void main(String[] args) {

		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring/spring-*.xml");
		/*ApplicationContext ac = new ClassPathXmlApplicationContext(new String[]{"classpath*:spring/spring-jpa.xml","classpath*:spring/spring-netty.xml", "classpath*:spring/spring-redissource.xml"});*/
		HttpServer server = ac.getBean(HttpServer.class);

		try {
			server.start();
		} catch (Exception e) {
			server.colse();
		} finally {
			server.colse();
		}
	}

}
