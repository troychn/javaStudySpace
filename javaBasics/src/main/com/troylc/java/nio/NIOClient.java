package com.troylc.java.nio;

import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;

/**
 * java NIO 编程范例，client客户端
 * Created by lc on 2016/2/26.
 */
public class NIOClient {

    private static int flag = 1;
    private static int blockSize = 4096;
    private static ByteBuffer sendbuffer = ByteBuffer.allocate(blockSize);
    private static ByteBuffer receivebuffer = ByteBuffer.allocate(blockSize);
    private final static InetSocketAddress serverAddress = new InetSocketAddress("127.0.0.1",7080);

    public static void main(String[] args) throws Exception {
        SocketChannel socketChannel = SocketChannel.open();
        socketChannel.configureBlocking(false);
        //打开选择器
        Selector selector = Selector.open();
        socketChannel.register(selector, SelectionKey.OP_CONNECT);
        socketChannel.connect(serverAddress);

        Set<SelectionKey> selectionKeys;
        Iterator<SelectionKey> iterator;
        SelectionKey selectionKey;
        SocketChannel client;
        String receiveText;
        String sendText;
        int count = 0;

        while (true){
            //select() 阻塞，等待有事件发生唤醒
            selector.select();
            selectionKeys = selector.selectedKeys();
            iterator =  selectionKeys.iterator();
            while (iterator.hasNext()){
                selectionKey = iterator.next();
                iterator.remove();
                if(selectionKey.isConnectable()){
                    System.out.println("客户端开始发起连接");
                    client = (SocketChannel) selectionKey.channel();
                    if (client.isConnectionPending()){
                        client.finishConnect();
                        System.out.println("客户端完成连接操作");
                        sendbuffer.clear();
                        sendbuffer.put("你好，Hello Server".getBytes());
                        sendbuffer.flip();
                        client.write(sendbuffer);
                    }
                    client.register(selector,SelectionKey.OP_READ);
                } else if(selectionKey.isReadable()){
                    client = (SocketChannel) selectionKey.channel();
                    receivebuffer.clear();
                    count = client.read(receivebuffer);
                    if(count > 0) {
                        receiveText = new String(receivebuffer.array(),0,count);
                        System.out.println("客户端接受了服务端的数据："+receiveText);
                        client.register(selector,SelectionKey.OP_WRITE);
                    }

                } else if(selectionKey.isWritable()){
                    sendbuffer.clear();
                    client = (SocketChannel) selectionKey.channel();
                    sendText = "Msg send to Server ->"+flag++;
                    sendbuffer.put(sendText.getBytes());
                    sendbuffer.flip();
                    client.write(sendbuffer);
                    System.out.println("客户端发送数据给服务端："+sendText);
                    client.register(selector,SelectionKey.OP_READ);
                }
                selectionKeys.clear();
            }
        }
    }
}
