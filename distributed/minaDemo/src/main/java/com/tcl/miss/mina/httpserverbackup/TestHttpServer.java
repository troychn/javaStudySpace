package com.tcl.miss.mina.httpserverbackup;

import java.io.IOException;

/**
 * 测试类，需要通过这个启动才能正常使用
 * @author jingzu.liu
 *
 */
public class TestHttpServer {
	public static void main(String[] args) throws IOException,
			InterruptedException {
		HttpServer server = new HttpServer();
		server.setEncoding("UTF-8");
		//server.setEncoding("UTF8");
		server.setHttpHandler(new HttpHandler() {
			public HttpResponseMessage handle(HttpRequestMessage request) {
				System.out.println("1-------------------");
				String level = request.getParameter("param_data");
				System.out.println(request.getParameter("level"));
				System.out.println(request.getContext());
				HttpResponseMessage response = new HttpResponseMessage();
				response.setContentType("text/plain");
				response.setResponseCode(HttpResponseMessage.HTTP_STATUS_SUCCESS);
				response.appendBody("CONNECTED\n");
				response.appendBody(level);
				return response;
			}
		});
		server.run();

		Thread.sleep(10000);
		// server.stop();
	}
}
