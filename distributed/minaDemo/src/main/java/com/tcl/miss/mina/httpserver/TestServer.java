package com.tcl.miss.mina.httpserver;

/**
 * 测试类
 * 这里用到的MinaUtil和HttpClientUtil均取自我的博文,地址如下
 * http://www.csdn123.com/link.php?url=http://blog.csdn.net/jadyer/article/details/8088068
 * http://www.csdn123.com/link.php?url=http://blog.csdn.net/jadyer/article/details/8087960
 * @author jingzu.liu
 */
public class TestServer {
	
//	@Test
//	public void testTcp(){
//		String message = "00004710005101101992012092222400000201307071605";
//		String respData = MinaUtil.sendTCPMessage(message, "127.0.0.1", 9901, "UTF-8");
//		Assert.assertEquals("00003099999999`20130707144028`", respData);
//	}
//	
//	/**
//	 * 也可直接浏览器访问http://127.0.0.1:8000/login以及http://127.0.0.1:8000/login?a=b&c=d&e=f
//	 * 只要浏览器页面显示"登录成功",即表示HTTP_GET测试通过
//	 */
//	@Test
//	public void testHttpGet(){
//		//先测试带参数的GET请求
//		String respData11 = HttpClientUtil.sendGetRequest("http://127.0.0.1:8000/login?a=b&c=d&e=f");
//		Assert.assertEquals("登录成功", respData11);
//		//再测试不带参数的GET请求
//		String respData22 = HttpClientUtil.sendGetRequest("http://127.0.0.1:8000/login");
//		Assert.assertEquals("登录成功", respData22);
//	}
//	
//	@Test
//	public void testHttpPost(){
//		//先测试带报文体的POST请求(即带参数,模拟表单提交)
//		String reqURL = "http://127.0.0.1:8000/login";
//		Map<String, String> params = new HashMap<String, String>();
//		params.put("username", "Jadyer");
//		params.put("password", "hongyu");
//		String respData11 = HttpClientUtil.sendPostSSLRequest(reqURL, params, "UTF-8");
//		Assert.assertEquals("登录成功", respData11);
//		//再测试不带报文体的POST请求(不带参数)
//		String respData22 = HttpClientUtil.sendPostSSLRequest(reqURL, new HashMap<String, String>(), "UTF-8");
//		Assert.assertEquals("登录成功", respData22);
//		//最后测试一下特殊情况,即不带报文体,但在请求地址上带有参数的POST请求(建行外联平台就这么干的)
//		reqURL = "http://127.0.0.1:8000/login?username=Jadyer&password=hongyu&aa=bb&cc=dd";
//		String respData33 = HttpClientUtil.sendPostSSLRequest(reqURL, new HashMap<String, String>(), "UTF-8");
//		Assert.assertEquals("登录成功", respData33);
//	}
}
