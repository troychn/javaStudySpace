package com.tcl.miss.mina.httpserverbackup;

public class HttpServerRun {
	public static void run() throws Exception {
		HttpServer server = new HttpServer();
		server.setEncoding("UTF-8");
		//server.setEncoding("UTF8");
		server.setHttpHandler(new HttpHandler() {
			public HttpResponseMessage handle(HttpRequestMessage request) {
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
	}
}
