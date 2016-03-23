package com.tcl.miss.mina.httpserver.server;

import com.tcl.miss.mina.httpserver.JadyerUtil;

import java.net.HttpURLConnection;

public class ResponseMessage {
	/**
	 * 构建HTTP响应报文
	 * 该方法默认构建的是HTTP响应码为200的响应报文
	 * @param httpResponseMessageBody HTTP响应报文体
	 * @return 包含了HTTP响应报文头和报文体的完整报文
	 */
	public static String buildHTTPResponseMessage(String httpResponseMessageBody){
		return buildHTTPResponseMessage(HttpURLConnection.HTTP_OK, httpResponseMessageBody);
	}
	
	/**
	 * 构建HTTP响应报文
	 * 200--请求已成功,请求所希望的响应头或数据体将随此响应返回..即服务器已成功处理了请求
	 * 400--由于包含语法错误,当前请求无法被服务器理解..除非进行修改,否则客户端不应该重复提交这个请求..即错误请求
	 * 500--服务器遇到了一个未曾预料的状况,导致其无法完成对请求的处理..一般来说,该问题都会在服务器的程序码出错时出现..即服务器内部错误
	 * 501--服务器不支持当前请求所需要的某个功能..当服务器无法识别请求的方法,且无法支持其对任何资源的请求时,可能返回此代码..即尚未实施
	 * @param httpResponseCode        HTTP响应码
	 * @param httpResponseMessageBody HTTP响应报文体
	 * @return 包含了HTTP响应报文头和报文体的完整报文
	 */
	public static String buildHTTPResponseMessage(int httpResponseCode, String httpResponseMessageBody){
		if(httpResponseCode == HttpURLConnection.HTTP_OK){
			StringBuilder sb = new StringBuilder();
			sb.append("HTTP/1.1 200 OK\r\nContent-Type: text/html; charset=UTF-8\r\nContent-Length: ");
			sb.append(JadyerUtil.getBytes(httpResponseMessageBody, "UTF-8").length);
			sb.append("\r\n\r\n");
			sb.append(httpResponseMessageBody);
			return sb.toString();
		}
		if(httpResponseCode == HttpURLConnection.HTTP_BAD_REQUEST){
			return "HTTP/1.1 400 Bad Request";
		}
		if(httpResponseCode == HttpURLConnection.HTTP_INTERNAL_ERROR){
			return "HTTP/1.1 500 Internal Server Error";
		}
		return "HTTP/1.1 501 Not Implemented";
	}
}
