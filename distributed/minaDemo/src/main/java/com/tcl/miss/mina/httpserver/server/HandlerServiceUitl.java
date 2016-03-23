package com.tcl.miss.mina.httpserver.server;

import org.apache.log4j.Logger;
import org.apache.mina.core.session.IoSession;

import com.tcl.miss.mina.httpserver.JadyerUtil;
import com.tcl.miss.mina.httpserver.Token;

public class HandlerServiceUitl {
	private static final Logger log = Logger.getLogger(HandlerServiceUitl.class);
	
	public static void printOriginalMessages(IoSession session,Object message){
		Token token = (Token) message;
		//打印收到的原始报文
		log.info("渠道:" + token.getBusiType() + "  交易码:" + token.getBusiCode() +"  完整报文(HEX):"
						   + JadyerUtil.buildHexStringWithASCII(JadyerUtil.getBytes(token.getFullMessage(), "UTF-8")));
		
		StringBuilder sb = new StringBuilder();
		sb.append("\r\n------------------------------------------------------------------------------------------");
		sb.append("\r\n【通信双方】").append(session);
		sb.append("\r\n【收发标识】Receive");
		sb.append("\r\n【报文内容】").append(token.getFullMessage());
		sb.append("\r\n------------------------------------------------------------------------------------------");
		log.info(sb.toString());
	}
}
