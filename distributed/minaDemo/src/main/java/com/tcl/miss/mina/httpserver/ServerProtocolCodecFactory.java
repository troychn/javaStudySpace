package com.tcl.miss.mina.httpserver;

import org.apache.mina.filter.codec.demux.DemuxingProtocolCodecFactory;

/**
 * 组装服务端的编解码器的工厂(编码、解码)
 * 暂不提供客户端编解码器(其实它与服务端的编解码器差不多差不多)
 * ====================================================================================
 * 其内部维护了一个MessageDecoder数组,用于保存添加的所有解码器
 * 每次decode()的时候就调用每个MessageDecoder的decodable()逐个检查
 * 只要发现一个MessageDecoder不是对应的解码器,就从数组中移除,知道找到合适的MessageDecoder
 * 如果最后发现数组为空,就表示没有找到对应的MessageDecoder,最后抛出异常
 * ====================================================================================
 * @author jingzu.liu
 */
public class ServerProtocolCodecFactory extends DemuxingProtocolCodecFactory {
	public ServerProtocolCodecFactory(){
		super.addMessageEncoder(String.class, ServerProtocolEncoder.class);//编码
		//super.addMessageDecoder(ServerProtocolTCPDecoder.class);//tcp解码
		super.addMessageDecoder(ServerProtocolHTTPDecoder.class);//http解码
	}
}
