package com.troylc.nettyDemo.nettyserver.handler;

import com.troylc.nettyDemo.service.DeviceInfoService;
import io.netty.buffer.Unpooled;
import io.netty.channel.*;
import io.netty.handler.codec.http.*;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileInputStream;
import java.io.StringReader;
import java.net.URI;
import java.nio.charset.Charset;

import static io.netty.handler.codec.http.HttpResponseStatus.*;
import static io.netty.handler.codec.http.HttpVersion.HTTP_1_1;
/**
 * 设备上报心跳服务器业务处理类
 * Created by lc on 2015/9/29.
 */
@Component
@ChannelHandler.Sharable
public class HttpServerHandler extends SimpleChannelInboundHandler<FullHttpRequest> {

    private static Logger log = LoggerFactory.getLogger(HttpServerHandler.class);

    @Resource
    private DeviceInfoService deviceInfoService;


    private final static Charset GB2312 = Charset.forName("GB2312");
    private final static Charset UTF8 = Charset.forName("UTF-8");
    private static final CharSequence CONTENT_TYPE = "Content-Type";

    /**
     * Is called for each message of type {@link FullHttpRequest}.
     *
     * @param ctx the {@link ChannelHandlerContext} which this {@link SimpleChannelInboundHandler}
     *            belongs to
     * @param request the message to handle
     * @throws Exception is thrown if an error occurred
     */
    @Override
    protected void messageReceived(ChannelHandlerContext ctx, FullHttpRequest request) throws Exception{
            URI uri = new URI(request.uri());
            // TODO 修改netty版本的上报下发任务
            if (uri.getPath().startsWith("/nettyDemo-netty")) {
                String serialno = request.headers().getAndConvert("serialno");
                String version = request.headers().getAndConvert("version");
                String systemType = request.headers().getAndConvert("systemtype");
                if (serialno == null || "".equals(serialno) && version == null || "".equals(version)
                        && systemType == null || "".equals(systemType)) {
                    log.error("请联系管理员,请求头信息中传入参数错误：" +
                            "{serialno:" + serialno + ";version=" + version + ";systemType=" + systemType + "}");
                    sendReturnCode(ctx, OK);
                    return;
                }
                if (!request.decoderResult().isSuccess()) {
                    log.error("request decoder error!");
                    sendReturnCode(ctx, OK);
                    return;
                }
                //处理 /nettyDemo-netty url 的post请求
                if (request.method() == HttpMethod.POST) {
                    log.debug("----postNetty--post--serialno=" + serialno + "-----version" + version + "--------");
                    //接收上报消息，或者更新任务状态。
                    httpPostHandler(request,serialno,version,systemType);
                    sendReturnCode(ctx, OK);
                    return;
                }
                System.out.println("--------------------3-------------------");
                //处理 /nettyDemo-netty url 的Get请求
                if (request.method() == HttpMethod.GET) {
                    log.debug("----postNetty--get--serialno=" + serialno + "-----version" + version + "--------");
                    httpGetHander(ctx, request,serialno,version, systemType);
                    sendReturnCode(ctx, OK);
                    return;
                }
            } else if(uri.getPath().startsWith("/")){
                sendReturnindex(ctx, OK);
            } else {
                sendReturnCode(ctx, OK);
            }
    }


    /**
     * 处理 /nettyDemo-netty url 的Get请求
     * @param ctx
     * @param serialno
     * @param version
     * @throws Exception
     */
    public void httpGetHander(ChannelHandlerContext ctx, FullHttpRequest request,String serialno,String version,String systemType)
            throws Exception{
        log.debug("-----get Netty-----serialno=" + serialno + "-----version" + version + "----------");
        FullHttpResponse response = null;
        StringReader reader = null;
        try {
            if (serialno != null && !"".equals(serialno) && version != null && !"".equals(version)
                    && systemType != null && !"".equals(systemType)) {
                // 处理下发业务逻辑
                String path = ""; //deviceInfoService.handleIssuedInfo(serialno, version, systemType);
                //
                response = new DefaultFullHttpResponse(HTTP_1_1, ACCEPTED);
                if (path != null && !"".equals(path)) {
                    returnFileIo(response, path.trim());
                } else { //测试用下放的脚本路径
                    path = getClass().getResource("/bashfile/dom4j-modify.xml").getFile();
                    returnFileIo(response, path);
                }
            } else {
                response = new DefaultFullHttpResponse(HTTP_1_1, OK);
            }
            ctx.writeAndFlush(response).addListener(ChannelFutureListener.CLOSE);
        } finally {
            if (reader != null) {
                reader.close();
            }
        }
    }

    /**
     * 处理 /nettyDemo-netty url 的post请求
     * @param request post请求的request对象
     * @param serialno 设备序列号
     * @throws Exception
     */
    public void httpPostHandler(FullHttpRequest request,String serialno,String version,String systemType)throws
            Exception{
        StringReader reader = null;
        try {
            if("0".equals(systemType)){
                reader = new StringReader(request.content().toString(GB2312));
            } else {
                reader = new StringReader(request.content().toString(UTF8));
            }
            SAXReader xmlReader = new SAXReader();
            Document doc = xmlReader.read(reader);
            Element root = doc.getRootElement();
            if (root != null) { //处理上报过种中的逻辑
                deviceInfoService.handleReportInfo(root, serialno, version, systemType);
            }
        } finally {
            if (reader != null) {
                reader.close();
            }
        }
    }


    /**
     * 根据指定的文件，返回response文件流
     *
     * @param response 返回输出对象
     * @param filePath 指定文件地址
     * @throws Exception
     */
    public void returnFileIo(FullHttpResponse response, String filePath) throws Exception {
        FileInputStream input = null;
        try {
            File file = new File(filePath);

            input = new FileInputStream(file);
            byte[] data = new byte[(int) file.length()];
            int length = input.read(data);

            response.headers().set(CONTENT_TYPE, "application/octet-stream; charset=GB2312");
            response.content().writeBytes(data);

        } finally {
            if (input != null) {
                input.close();
            }
        }
    }


    /**
     * Calls {@link ChannelHandlerContext#fireExceptionCaught(Throwable)} to forward
     * to the next {@link ChannelHandler} in the {@link ChannelPipeline}.
     * <p/>
     * Sub-classes may override this method to change behavior.
     *
     * @param ctx
     * @param cause
     */
    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
        if (ctx.channel().isActive()) {
            sendReturnCode(ctx, INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * return task code
     * @param ctx
     * @param status
     */
    private static void sendReturnCode(ChannelHandlerContext ctx,HttpResponseStatus status) {
        FullHttpResponse response = new DefaultFullHttpResponse(HTTP_1_1,
                status, Unpooled.copiedBuffer("Failure: " + status.toString()
                + "\r\n", GB2312));
        //response.headers().set(CONTENT_TYPE, "text/plain; charset=GB2312");
        ctx.writeAndFlush(response).addListener(ChannelFutureListener.CLOSE);
    }

    /**
     * return index
     * @param ctx
     * @param status
     */
    private static void sendReturnindex(ChannelHandlerContext ctx, HttpResponseStatus status) {
        FullHttpResponse response = new DefaultFullHttpResponse(HTTP_1_1,
                status, Unpooled.copiedBuffer("Failure: " + status.toString()
                + "\r\n", GB2312));

        response.headers().set(CONTENT_TYPE, "text/plain; charset=GB2312");
        response.content().writeBytes("hello,world".getBytes());
        ctx.writeAndFlush(response).addListener(ChannelFutureListener.CLOSE);
    }
}
