package com.tcl.miss.mina.httpserverbackup;

import org.apache.mina.filter.codec.demux.DemuxingProtocolCodecFactory;

/**
 * http服务编码解码工厂
 * @author jingzu.liu
 *
 */
public class HttpServerProtocolCodecFactory extends
		DemuxingProtocolCodecFactory {
	public HttpServerProtocolCodecFactory() {
		super.addMessageDecoder(HttpRequestDecoder.class);//解码
		super.addMessageEncoder(HttpResponseMessage.class,HttpResponseEncoder.class);//编码
	}

}
