package com.tcl.miss.mina.httpserver.server;

import com.alibaba.fastjson.JSONObject;
import com.tcl.miss.mina.dao.IPersistentDao;
import com.tcl.miss.mina.dao.impl.PersistentDao;
import com.tcl.miss.mina.httpserver.Token;
import com.tcl.miss.mina.util.CacheManager;
import org.apache.log4j.Logger;
import org.apache.mina.core.session.IoSession;

import java.util.ResourceBundle;

public class HandlerService {
	private static final Logger log = Logger.getLogger(HandlerService.class);
	
	//推送消息服务接口http路径(提供给tcloud平台调用)
	private static String messagesPath = ResourceBundle.getBundle("share").getString("messages_path");
	//获取客户端离线时间服务接口http路径(提供给tcloud平台调用)
	private static String lastTimePath = ResourceBundle.getBundle("share").getString("lastTime_path");
	//获取客户端是否在线接口hppt路径
	private static String isOnline = ResourceBundle.getBundle("share").getString("is_online");
	
	public void messageReceived(IoSession session, Object message) throws Exception {
		//1打印报文
		//printOriginalMessages(session,message);
		
		//2请求路径业务处理
		String response = business(session,message);
		
		//3打印响应报文
		printResponse(session,response);	
	}
	
	//打印原始报文
	public void printOriginalMessages(IoSession session,Object message) throws Exception {
		Token token = (Token) message;
		log.info("sessionId:"+session.hashCode()+"--------------------------http请求原始报文");
		/*
		//打印收到的原始报文
		log.info("渠道:" + token.getBusiType() + "  交易码:" + token.getBusiCode() +"  完整报文(HEX):"
						   + JadyerUtil.buildHexStringWithASCII(JadyerUtil.getBytes(token.getFullMessage(), "UTF-8")));
		
		StringBuilder sb = new StringBuilder();
		sb.append("\r\n------------------------------------------------------------------------------------------");
		sb.append("\r\n【通信双方】").append(session);
		sb.append("\r\n【收发标识】Receive");
		sb.append("\r\n【报文内容】").append(token.getFullMessage());
		sb.append("\r\n------------------------------------------------------------------------------------------");*/
		log.info(token.getFullMessage());
	}
	
	//打印响应报文
	public void printResponse(IoSession session,String respData){
		/*
		StringBuilder sb = new StringBuilder();		
		sb.setLength(0);
		sb.append("\r\n------------------------------------------------------------------------------------------");
		sb.append("\r\n【通信双方】").append(session);
		sb.append("\r\n【收发标识】Response");
		sb.append("\r\n【报文内容】").append(respData);
		sb.append("\r\n------------------------------------------------------------------------------------------");*/
		log.info("sessionId:"+session.hashCode()+"--------------------------http响应原始报文");
		log.info(respData.toString());
	}
	
	public String business(IoSession session,Object message) throws Exception {
		String respData = null;
		
		Token token = (Token) message;
		
		JSONObject returnObject = new JSONObject();
		returnObject.put("code","E003");
		returnObject.put("message","param_data为空");
		
		if(token.getBusiCode().equals(messagesPath)){
			//System.out.println("收到请求参数=[" + token.getBusiMessage() + "]");			
			JSONObject params = null;
			String param = token.getBusiMessage();
			if(param != null && !"".equals(param)){
				String[] pms = param.split("\\=");
				try{
					params = JSONObject.parseObject(pms[1]);
				}catch(Exception e){
					log.error(e.getMessage(), e);
					returnObject.put("code","E006");
					returnObject.put("message", "param_data不符合json格式");
				}
				if(params != null){
					String device_code = params.getString("device_code");
					String push_id = params.getString("push_id");
					String messages = params.getString("messages");
					String expired_time = params.getString("expired_time");
					if(device_code == null || push_id == null || messages == null || expired_time == null){
						returnObject.put("message","device_code或push_id或messages或expired_time为空");
					}else{
						//调用业务类，将参数数据进行保存
						IPersistentDao server = new PersistentDao();
						String id = server.save(params);
						
						//将数据存入缓存中
						String[] s = {id,messages};
						CacheManager.getCacheManager().getPushMap().put(device_code,s);
						
						//马上推送
						String context = "mes#" + id +"#" + params.getString("messages");
						push(params.getString("device_code"),context);						
						
						log.info(device_code+"-------------------------发送推送内容-------------------"+context);
						
						returnObject.put("code", "success");
						returnObject.put("message", "操作成功");
					}					
				}			
			}
			respData = ResponseMessage.buildHTTPResponseMessage(returnObject.toJSONString());
		}else if (token.getBusiCode().equals(isOnline)){
			JSONObject params = null;
			String param = token.getBusiMessage();
			if(param != null && !"".equals(param)){
				String[] pms = param.split("\\=");
				try{
					params = JSONObject.parseObject(pms[1]);
				}catch(Exception e){
					log.error(e.getMessage(), e);
					returnObject.put("code","E006");
					returnObject.put("message", "param_data不符合json格式");
				}
				if(params != null){
					String device_code = (String) params.get("device_code");
					if(device_code == null || "".equals(device_code)){
						returnObject.put("code","E003");
						returnObject.put("message","device_code为空");
					}
					
					//获取客户端是否有tcp连接
					IoSession sessionDevice = CacheManager.getCacheManager().getSession(device_code);
					if(sessionDevice == null){						
						returnObject.put("status","0");
						String lastTime = CacheManager.getCacheManager().getLastTime(device_code);
						if(lastTime != null){
							returnObject.put("time",lastTime);
						}
					}else{
						returnObject.put("status","1");
					}					
					returnObject.put("code","success");
					returnObject.put("message","success");
				}			
			}
			respData = ResponseMessage.buildHTTPResponseMessage(returnObject.toJSONString());
		}else{
			returnObject.put("code", "400");
			returnObject.put("message", "不支持该请求");
			
			//respData = this.buildHTTPResponseMessage(501, null);
			//其它请求都不处理
			respData = ResponseMessage.buildHTTPResponseMessage(400,returnObject.toJSONString());
		}
				
		//写入客户端
		session.write(respData);
		return respData;
	}
	
	//tcloud平台调用推送接口将数据推送过来，马上进行推送
	private void push(String device_code,String context)throws Exception{
		//得到推送服务器和客户端的tcp连接session
		IoSession session = CacheManager.getCacheManager().getSession(device_code);
		if(session != null){
			session.write(context);
		}		
	}

}
