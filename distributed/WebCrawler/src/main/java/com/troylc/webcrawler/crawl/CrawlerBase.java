 /**  
 *@Description:     
 */ 
package com.troylc.webcrawler.crawl;

 import org.apache.http.*;
 import org.apache.http.client.HttpRequestRetryHandler;
 import org.apache.http.client.config.RequestConfig;
 import org.apache.http.client.methods.CloseableHttpResponse;
 import org.apache.http.client.methods.HttpGet;
 import org.apache.http.client.methods.HttpPost;
 import org.apache.http.client.methods.HttpRequestBase;
 import org.apache.http.client.protocol.HttpClientContext;
 import org.apache.http.config.Registry;
 import org.apache.http.config.RegistryBuilder;
 import org.apache.http.conn.ConnectTimeoutException;
 import org.apache.http.conn.routing.HttpRoute;
 import org.apache.http.conn.socket.ConnectionSocketFactory;
 import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
 import org.apache.http.conn.socket.PlainConnectionSocketFactory;
 import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
 import org.apache.http.impl.client.CloseableHttpClient;
 import org.apache.http.impl.client.HttpClients;
 import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
 import org.apache.http.protocol.HttpContext;
 import org.apache.http.util.EntityUtils;
 import org.apache.log4j.Logger;

 import javax.net.ssl.SSLException;
 import javax.net.ssl.SSLHandshakeException;
 import java.io.IOException;
 import java.io.InterruptedIOException;
 import java.net.UnknownHostException;
 import java.util.HashMap;
 import java.util.Iterator;
 import java.util.Map.Entry;
 import java.util.concurrent.CountDownLatch;
 import java.util.concurrent.ExecutorService;
 import java.util.concurrent.Executors;


 public abstract class CrawlerBase {
	
	private static Logger log = Logger.getLogger(CrawlerBase.class);
	//链接源代码
	private static String pageSourceCode = "";
	//返回头信息
	private Header[] reponseHeaders = null;
	//连接超时时间
	private static int connectTimeOut = 10000;
	//默认最大访问次数
	private static int maxConnectTimes = 5;
	//网页默认编码方式
	private static String charsetName = "UTF-8";

	private static CloseableHttpClient httpClient = null;

	private final static Object syncLock = new Object();

	/**
	 * 获取HttpClient对象
	 *
	 * @return
	 * @author TROYLC
	 */
	public static CloseableHttpClient getHttpClient(String url) {
		String hostname = url.split("/")[2];
		int port = 80;
		if (hostname.contains(":")) {
			String[] arr = hostname.split(":");
			hostname = arr[0];
			port = Integer.parseInt(arr[1]);
		}
		if (httpClient == null) {
			synchronized (syncLock) {
				if (httpClient == null) {
					httpClient = createHttpClient(200, 40, 100, hostname, port);
				}
			}
		}
		return httpClient;
	}


	/**
	 * 创建HttpClient对象
	 *
	 * @return CloseableHttpClient
	 * @author TROYLC
	 */
	private static CloseableHttpClient createHttpClient(int maxTotal, int maxPerRoute,
													   int maxRoute, String hostname, int port) {
		ConnectionSocketFactory plainsf = PlainConnectionSocketFactory.getSocketFactory();
		LayeredConnectionSocketFactory sslsf = SSLConnectionSocketFactory.getSocketFactory();
		Registry<ConnectionSocketFactory> registry =
				RegistryBuilder.<ConnectionSocketFactory>create()
						.register("http", plainsf)
						.register("https", sslsf).build();
		PoolingHttpClientConnectionManager cm = new PoolingHttpClientConnectionManager(registry);
		// 将最大连接数增加
		cm.setMaxTotal(maxTotal);
		// 将每个路由基础的连接增加
		cm.setDefaultMaxPerRoute(maxPerRoute);
		HttpHost httpHost = new HttpHost(hostname, port);
		// 将目标主机的最大连接数增加
		cm.setMaxPerRoute(new HttpRoute(httpHost), maxRoute);

		// 请求重试处理
		HttpRequestRetryHandler httpRequestRetryHandler = new HttpRequestRetryHandler() {
			public boolean retryRequest(IOException exception, int executionCount, HttpContext context) {
				if (executionCount >= maxConnectTimes) {// 如果已经重试了5次，就放弃
					return false;
				}
				if (exception instanceof NoHttpResponseException) {// 如果服务器丢掉了连接，那么就重试
					return true;
				}
				if (exception instanceof SSLHandshakeException) {// 不要重试SSL握手异常
					return false;
				}
				if (exception instanceof InterruptedIOException) {// 超时
					return false;
				}
				if (exception instanceof UnknownHostException) {// 目标服务器不可达
					return false;
				}
				if (exception instanceof ConnectTimeoutException) {// 连接被拒绝
					return false;
				}
				if (exception instanceof SSLException) {// SSL握手异常
					return false;
				}

				HttpClientContext clientContext = HttpClientContext.adapt(context);
				HttpRequest request = clientContext.getRequest();
				// 如果请求是幂等的，就再次尝试
				if (!(request instanceof HttpEntityEnclosingRequest)) {
					return true;
				}
				return false;
			}
		};
		CloseableHttpClient httpClient =
				HttpClients.custom().setConnectionManager(cm)
						.setRetryHandler(httpRequestRetryHandler)
						.build();

		return httpClient;
	}


	/**
	 * @param urlStr
	 * @param params
	 * @param charsetName
	 * @return
	 * @Author:lulei  
	 * @Description: GET方式请求页面
	 */
	public boolean readPageByGet(String urlStr, HashMap<String, String> params, String charsetName) throws Exception {
		HttpGet get = createGetMethod(urlStr, params);
		return  readPage(get, charsetName, urlStr);
	}
	
	/**
	 * @param urlStr
	 * @param params
	 * @param charsetName
	 * @return
	 * @Author:lulei  
	 * @Description: POST方式请求页面
	 */
	public boolean readPageByPost(String urlStr, HashMap<String, String> params, String charsetName) throws Exception {
		HttpPost post = createPostMethod(urlStr, params);
		return  readPage(post, charsetName, urlStr);
	}
	
	/**
	 * @param httpRequest
	 * @param defaultCharset
	 * @param urlStr
	 * @return
	 * @Author:lulei  
	 * @Description: 执行HttpMethod，获取服务器返回的头信息和网页源代码
	 */
	private static boolean readPage(HttpRequestBase httpRequest, String defaultCharset, String urlStr) {
		CloseableHttpResponse response = null;
		try{
			response = getHttpClient(urlStr).execute(httpRequest, HttpClientContext.create());
			HttpEntity entity = response.getEntity();
			String result = EntityUtils.toString(entity, defaultCharset);
			EntityUtils.consume(entity);
			pageSourceCode = result;
			return true;
		}catch (Exception e){
			e.printStackTrace();
		} finally {
			try {
				if (response != null)
					response.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
	/**
	 * @param urlStr
	 * @param params 请求头信息
	 * @return
	 * @Author:lulei  
	 * @Description: 创建GET请求
	 */
	private static HttpGet createGetMethod(String urlStr, HashMap<String, String> params) throws Exception {
		HttpGet get = new HttpGet(urlStr);
		if (params == null) {
			return get;
		}
		setHeadersAndconnectTimeOut(get, params);
		return get;
	}

	/**
	 * @param urlStr
	 * @param params 请求头信息
	 * @return
	 * @Author:lulei  
	 * @Description: 创建POST请求
	 */
	private static HttpPost createPostMethod(String urlStr, HashMap<String, String> params) throws Exception {
		HttpPost post = new HttpPost(urlStr);
		if (params == null) {
			return post;
		}
		setHeadersAndconnectTimeOut(post,params);
		return post;
	}

	/**
	 * 设备请求头信息与超时时间
	 * @param httpRequest
	 * @param paramsHeader
	 */
	private static void setHeadersAndconnectTimeOut(HttpRequestBase httpRequest, HashMap<String, String> paramsHeader)
			throws Exception{
		Iterator<Entry<String, String>> itor = paramsHeader.entrySet().iterator();
		while (itor.hasNext()) {
			Entry entry = (Entry) itor.next();
			String key = (String) entry.getKey();
			String val = (String) entry.getValue();
			httpRequest.setHeader(key, val);
		}
		RequestConfig requestConfig =
				RequestConfig.custom()
						.setConnectionRequestTimeout(connectTimeOut)
						.setConnectTimeout(connectTimeOut)
						.setSocketTimeout(connectTimeOut).build();
		httpRequest.setConfig(requestConfig);
	}


	/**
	 * @return String
	 * @Author: lulei  
	 * @Description: 获取网页源代码
	 */
	public String getPageSourceCode(){
		return pageSourceCode;
	}
	
	/**
	 * @return Header[]
	 * @Author: lulei  
	 * @Description: 获取网页返回头信息
	 */
	public Header[] getHeader(){
		return reponseHeaders;
	}
	
	/**
	 * @param timeOut
	 * @Author: lulei  
	 * @Description: 设置连接超时时间
	 */
	public void setConnectTimeOut(int timeOut){
		CrawlerBase.connectTimeOut = timeOut;
	}
	

	/**
	 * @param maxConnectTimes
	 * @Author: lulei  
	 * @Description: 设置最大访问次数，链接失败的情况下使用
	 */
	public static void setMaxConnectTimes(int maxConnectTimes) {
		CrawlerBase.maxConnectTimes = maxConnectTimes;
	}

	/**
	 * @param connectTimeout
	 * @Author: lulei
	 * @Description: 设置连接超时时间和读取超时时间
	 */
	public void setTimeout(int connectTimeout){
		setConnectTimeOut(connectTimeout);
	}

	/**
	 * @param charsetName
	 * @Author: lulei  
	 * @Description: 设置默认编码方式
	 */
	public static void setCharsetName(String charsetName) {
		CrawlerBase.charsetName = charsetName;
	}

	/**  
	 * @param args
	 * @Author:lulei  
	 * @Description:  
	 */
	public static void main(String[] args) {
		// URL列表数组
		String[] urisToGet = {"http://www.wooyun.org/bugs/new_submit/", "http://www.wooyun.org/bugs/new_submit/page/2", "http://www.wooyun.org/bugs/new_submit/page/3"};

		long start = System.currentTimeMillis();
		try {
			int pagecount = urisToGet.length;
			ExecutorService executors = Executors.newFixedThreadPool(pagecount);
			CountDownLatch countDownLatch = new CountDownLatch(pagecount);
			HashMap<String,String> headers = new HashMap<String, String>();
			headers.put("User-Agent", "Mozilla/5.0");
			headers.put("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
			headers.put("Accept-Language", "zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3");//"en-US,en;q=0.5");
			headers.put("Accept-Charset", "ISO-8859-1,utf-8,gbk,gb2312;q=0.7,*;q=0.7");
			for (int i = 0; i < pagecount; i++) {
				HttpGet httpget = createGetMethod(urisToGet[i],headers);
				// 启动线程抓取
				executors.execute(new GetRunnable(httpget,urisToGet[i], charsetName, countDownLatch));
			}
			countDownLatch.await();
			executors.shutdown();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			System.out.println("线程" + Thread.currentThread().getName() + ","
					+ System.currentTimeMillis() + ", 所有线程已完成，开始！");
		}

		long end = System.currentTimeMillis();
		System.out.println("consume -> " + (end - start));
	}

	 static class GetRunnable implements Runnable {
		 private HttpRequestBase httpRequest;
		 private CountDownLatch countDownLatch;
		 private String url;
		 private String charset;

		 public GetRunnable(HttpRequestBase httpRequest,String url, String charset, CountDownLatch countDownLatch) {
			 this.url = url;
			 this.countDownLatch = countDownLatch;
			 this.httpRequest = httpRequest;
			 this.charset = charset;
		 }

		 public void run() {
			 try {
				 System.out.println(readPage(httpRequest,charset,url));
				 System.out.println(pageSourceCode);
			 } finally {
				 countDownLatch.countDown();
			 }
		 }
	 }

}
