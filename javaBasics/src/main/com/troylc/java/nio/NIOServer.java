package com.troylc.java.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;

/**
 * Created by Administrator on 2016/2/26.
 * java NIO 编程范例，server服务端
 */
public class NIOServer {
    private int flag = 1;
    private int blockSize = 4096;
    private ByteBuffer sendbuffer = ByteBuffer.allocate(blockSize);
    private ByteBuffer receivebuffer = ByteBuffer.allocate(blockSize);
    private Selector selector;

    public NIOServer(int port) throws IOException {
        ServerSocketChannel serverSocketChannel = ServerSocketChannel.open();
        //设置是否阻塞
        serverSocketChannel.configureBlocking(false);

        ServerSocket serverSocket = serverSocketChannel.socket();
        //绑定IP和端口
        serverSocket.bind(new InetSocketAddress("127.0.0.1",port));
        //serverSocketChannel.socket().bind(new InetSocketAddress("127.0.0.1", port));
        //打开选择器
        selector = Selector.open();

        serverSocketChannel.register(selector, SelectionKey.OP_ACCEPT);

        System.out.println("Server start ->:"+port);
    }

    /**
     * 监控服务器的socket
     * @throws Exception
     */
    public void listen() throws Exception {
        while (true) {
            selector.select();
            Set<SelectionKey> selectionKeys = selector.selectedKeys();
            Iterator<SelectionKey> iterator = selectionKeys.iterator();
            while (iterator.hasNext()){
                SelectionKey selectionKey = iterator.next();
                iterator.remove();
                //业务逻辑处理
                handleSelectionKey(selectionKey);
            }

        }
    }

    /**
     * 业务逻辑处理
     * @param selectionKey
     * @throws Exception
     */
    public void handleSelectionKey(SelectionKey selectionKey) throws Exception {
        ServerSocketChannel server = null;
        SocketChannel client = null;
        String receiveText;
        String sendText;
        int count = 0;
        if(selectionKey.isAcceptable()){ //是否是一个可接受的事件
            server = (ServerSocketChannel) selectionKey.channel();
            client = server.accept();
            //设置客户端是否阻塞
            client.configureBlocking(false);
            client.register(selector,SelectionKey.OP_READ);
        } else if (selectionKey.isReadable()) { //是否是一个可读的事件
            client = (SocketChannel) selectionKey.channel();
            count = client.read(receivebuffer);
            if(count > 0) {
                receiveText = new String(receivebuffer.array(),0,count);
                System.out.println("服务器接受到客户端的信息："+receiveText);
                //注册客户端的写的事件,写给服务端
                client.register(selector,SelectionKey.OP_WRITE);
            }
        } else if(selectionKey.isWritable()){ //是否是一个可写的事件
            sendbuffer.clear();
            client = (SocketChannel) selectionKey.channel();
            //发送的数据
            sendText = "msg send to client:"+flag++;
            sendbuffer.put(sendText.getBytes());
            sendbuffer.flip();
            client.write(sendbuffer);
            System.out.println("服务端发送数据给客户端："+sendText);
        }
    }

    public static void main(String[] args) throws Exception {
        int port = 7080;
        NIOServer nioServer = new NIOServer(port);
        nioServer.listen();
    }
}
