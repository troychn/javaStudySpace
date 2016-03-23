package com.tcl.miss.mina.httpserver;

import org.apache.mina.core.buffer.IoBuffer;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.filter.codec.ProtocolEncoderOutput;
import org.apache.mina.filter.codec.demux.MessageEncoder;

import java.nio.charset.Charset;
import java.util.ResourceBundle;

/**
 * Server端协议编码器
 * 用于编码响应给Client的报文(报文编码一律采用UTF-8)
 * @author jingzu.liu
 */
public class ServerProtocolEncoder implements MessageEncoder<String> {
	//编码编码
	private static String charset = ResourceBundle.getBundle("share").getString("charset");
	public void encode(IoSession session, String message, ProtocolEncoderOutput out) throws Exception {
		IoBuffer buffer = IoBuffer.allocate(100).setAutoExpand(true);
		buffer.putString(message, Charset.forName(charset).newEncoder());
		buffer.flip();
		out.write(buffer);
	}
}
