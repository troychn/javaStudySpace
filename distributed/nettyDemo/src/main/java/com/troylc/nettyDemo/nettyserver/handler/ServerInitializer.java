package com.troylc.nettyDemo.nettyserver.handler;

import io.netty.channel.Channel;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.socket.SocketChannel;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.HttpRequestDecoder;
import io.netty.handler.codec.http.HttpResponseEncoder;
import io.netty.handler.ssl.SslHandler;
import io.netty.handler.stream.ChunkedWriteHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;

@Component
public class ServerInitializer extends ChannelInitializer<SocketChannel> {


	@Autowired
	HttpServerHandler httpServerHandler;


	@Value("${netty.server.ssl}")
	private boolean ISSSL = false;



	/**
	 * This method will be called once the {@link Channel} was registered. After the method
	 * returns this instance
	 * will be removed from the {@link ChannelPipeline} of the {@link Channel}.
	 *
	 * @param ch the {@link Channel} which was registered.
	 * @throws Exception is thrown if an error occurs. In that case the {@link Channel} will be closed.
	 */
	protected void initChannel(SocketChannel ch) throws Exception {


		ChannelPipeline pipeline = ch.pipeline();

		if (ISSSL) {
			SSLContext sslContext = SslContextFactory.getServerContext();
			SSLEngine sslEngine = sslContext.createSSLEngine();
			sslEngine.setNeedClientAuth(true); //ssl双向认证
			sslEngine.setUseClientMode(false);
			sslEngine.setWantClientAuth(true);
			//sslEngine.setEnabledProtocols(new String[]{"SSLv3"});
			pipeline.addLast("ssl",new SslHandler(sslEngine));
		}
		//HTTP请求消息解码器
		pipeline.addLast("http-decoder", new HttpRequestDecoder());
		//HttpObjectAggregator解码器，作用是将多个消息转换为单一的FullHttpRequest
		// * 或者FullHttpResponse，原因是HTTP解码器在每个HTTP消息中会生成多个消息对象
		pipeline.addLast("http-aggregator", new HttpObjectAggregator(65536));
		//pipeline.addLast("xml-decoder", new HttpXmlRequestDecoder(Order.class, true));
		//响应编码器，对HTTP响应消息进行编码
		pipeline.addLast("http-encoder", new HttpResponseEncoder());
		//ChunkedWriteHandler 支持异步发送大的码流，但不占用过多的内存
		ch.pipeline().addLast("http-chunked", new ChunkedWriteHandler());
		//pipeline.addLast("xml-encoder", new HttpXmlResponseEncoder());
		pipeline.addLast("xmlServerHandler", httpServerHandler);

	}

}
