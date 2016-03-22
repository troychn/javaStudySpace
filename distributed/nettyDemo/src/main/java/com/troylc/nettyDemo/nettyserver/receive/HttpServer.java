package com.troylc.nettyDemo.nettyserver.receive;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * netty-Http服务
 * * Created by lc on 2015/9/29.
 */
@Component
public class HttpServer {

    private static Logger log = LoggerFactory.getLogger(HttpServer.class);

    @Value("${netty.server.port}")
    private int HTTPPORT = 8080;

    @Value("${netty.server.ssl}")
    private boolean SSL = false;

    @Value("${netty.server.sslport}")
    private int SSLPORT = 8443;



    @Autowired
    private ChannelInitializer<SocketChannel> channelInitializer;

    private EventLoopGroup bossGroup = new NioEventLoopGroup();
    private EventLoopGroup workerGroup = new NioEventLoopGroup(2);
    private ChannelFuture future;

    public void start() throws Exception {
        //端口
        int port = SSL ? SSLPORT : HTTPPORT;
        ServerBootstrap b = new ServerBootstrap();
        b.group(bossGroup, workerGroup)
                .channel(NioServerSocketChannel.class)
                .childHandler(channelInitializer)
                .option(ChannelOption.SO_BACKLOG, 128)
                .childOption(ChannelOption.SO_KEEPALIVE, true);

        future = b.bind(port).sync();
        //future.channel().closeFuture().sync();
        log.info("-----netty server startup on port: " + port +"...");
    }

    public void colse() {
        if (future != null)
            try {
                future.channel().closeFuture().sync();
                bossGroup.shutdownGracefully();
                workerGroup.shutdownGracefully();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
    }
}
