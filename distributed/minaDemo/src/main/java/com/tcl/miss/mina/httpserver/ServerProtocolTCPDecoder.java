package com.tcl.miss.mina.httpserver;

import java.util.ResourceBundle;

import org.apache.mina.core.buffer.IoBuffer;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.filter.codec.ProtocolDecoderOutput;
import org.apache.mina.filter.codec.demux.MessageDecoder;
import org.apache.mina.filter.codec.demux.MessageDecoderResult;

/**
 * Server端TCP协议解码器
 * @see 用于解码接收到的TCP请求报文(报文编码一律采用UTF-8)
 * @see 当收到数据包时,程序首先会执行decodable()方法,通过读取数据判断当前数据包是否可进行decode
 * @see 当decodable()方法返回MessageDecoderResult.OK时,接着会调用decode()方法，正式decode数据包
 * @see 在decode()方法进行读取操作会影响数据包的大小,decode需要判断协议中哪些已经decode完,哪些还没decode
 * @see decode完成后,通过ProtocolDecoderOutput.write()输出,并返回MessageDecoderResult.OK表示decode完毕
 * @author jingzu.liu
 */
public class ServerProtocolTCPDecoder implements MessageDecoder {
	
	//http服务器端口
	private static String tcpProt = ResourceBundle.getBundle("share").getString("tcp_port");
	//解码编码
	private static String charset = ResourceBundle.getBundle("share").getString("charset");
	
	/**
	 * 该方法相当于预读取,用于判断是否是可用的解码器,这里对IoBuffer读取不会影响数据包的大小
	 * 该方法结束后IoBuffer会复原,所以不必担心调用该方法时,position已经不在缓冲区起始位置
	 */
	public MessageDecoderResult decodable(IoSession session, IoBuffer in) {
		//TCP报文格式约定为前6个字节表示报文整体长度,长度不足6位时左补零,第7位开始代表业务编码,业务编码固定长度为5,第12位开始是业务数据
		if(in.remaining() < 6){
			return MessageDecoderResult.NEED_DATA;
		}
		//服务端启动时已绑定9901端口,专门用来处理TCP请求的
		if(session.getLocalAddress().toString().contains(":"+tcpProt)){
			byte[] messageLength = new byte[6];
			in.get(messageLength);
			if(in.limit() >= Integer.parseInt(JadyerUtil.getString(messageLength,charset))){
				return MessageDecoderResult.OK;
			}else{
				return MessageDecoderResult.NEED_DATA;
			}
		}else{
			return MessageDecoderResult.NOT_OK;
		}
	}

	public MessageDecoderResult decode(IoSession session, IoBuffer in, ProtocolDecoderOutput out) throws Exception {
		byte[] message = new byte[in.limit()];
		in.get(message);
		String fullMessage = JadyerUtil.getString(message,charset);
		Token token = new Token();
		token.setBusiCharset(charset);
		token.setBusiType(Token.BUSI_TYPE_TCP);
		token.setBusiCode(fullMessage.substring(6,11));
		token.setBusiMessage(fullMessage);
		token.setFullMessage(fullMessage);
		out.write(token);
		return MessageDecoderResult.OK;
	}

	public void finishDecode(IoSession session, ProtocolDecoderOutput out) throws Exception {
		//暂时什么都不做
	}
}
