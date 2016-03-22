package com.troylc.java.netWork;

import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * Created by Administrator on 2015/3/15.
 * TCP协议例一：客户端给服务端发送信息，服务端输出此信息到控制台上
 * 网络编辑实际上就是socket的编程。
 * TCP例二 ：客户端给服务端发送信息，服务端输出此信息到控制台上，同时发送“已收到信息”给客户端
 */
public class TestSocketTCP {

    @Test
    public void client(){
        Socket socket = null;
        OutputStream os = null;
        try {
            //1.创建一个socket的对象，通过构造器指明服务器的IP地址，以及其接收程序的端口号
            socket = new Socket(InetAddress.getByName("127.0.0.1"),9090);
            //2.getOutputStream发送数据，方法返回OutputStream的对象
            os = socket.getOutputStream();
            //3.具体的输出过程
            os.write("我是客户端，".getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //4.关闭相应的流各socket对象
            if (os != null) {
                try {
                    os.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (socket != null) {
                try {
                    socket.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }


        }


    }

    @Test
    public void server(){
        ServerSocket serverSocket = null;
        Socket socket = null;
        InputStream is = null;
        try {
            //1.创建一个ServerSocket的对象，通过构造器指明自身的端口号
            serverSocket = new ServerSocket(9090);
            //2.调用其accept()方法，返回一个Socket的对象
            socket = serverSocket.accept();
            //3.调用Socket对象的getInputStream（）获取一个从客户端发过过来的输入流
            is = socket.getInputStream();
            //4.对获取的输入流进行操作
            byte[] b = new byte[20];
            int len;
            while ((len=is.read(b)) != -1){
                String str = new String(b,0,len);
                System.out.println(str);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //5。关闭相应的流和socket、serverSocket
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (socket != null) {
                try {
                    socket.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(serverSocket != null){
                try {
                    serverSocket.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }



    @Test
    public void clientTCP(){
        Socket socket = null;
        OutputStream os = null;
        InputStream is = null;
        try {
            //1.创建一个socket的对象，通过构造器指明服务器的IP地址，以及其接收程序的端口号
            socket = new Socket(InetAddress.getByName("127.0.0.1"),9090);
            //2.getOutputStream发送数据，方法返回OutputStream的对象
            os = socket.getOutputStream();
            //3.具体的输出过程
            os.write("我是客户端，".getBytes());
            //4.shutdownOutput 显示的告诉服务端数据已经发送完毕业
            socket.shutdownOutput();
            is = socket.getInputStream();
            byte[] b = new byte[20];
            int len;
            while ((len=is.read(b)) != -1){
                String str = new String(b,0,len);
                System.out.println(str);
            }


        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //4.关闭相应的流各socket对象
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (os != null) {
                try {
                    os.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (socket != null) {
                try {
                    socket.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }


        }


    }

    @Test
    public void serverTCP(){
        ServerSocket serverSocket = null;
        Socket socket = null;
        InputStream is = null;
        OutputStream os = null;
        try {
            //1.创建一个ServerSocket的对象，通过构造器指明自身的端口号
            serverSocket = new ServerSocket(9090);
            //2.调用其accept()方法，返回一个Socket的对象
            socket = serverSocket.accept();
            //3.调用Socket对象的getInputStream（）获取一个从客户端发过过来的输入流
            is = socket.getInputStream();
            //4.对获取的输入流进行操作
            byte[] b = new byte[20];
            int len;
            while ((len=is.read(b)) != -1){
                String str = new String(b,0,len);
                System.out.println(str);
            }

            os = socket.getOutputStream();
            os.write("我已经收到你发的信息".getBytes());

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //5。关闭相应的流和socket、serverSocket
            if (os != null) {
                try {
                    os.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (socket != null) {
                try {
                    socket.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(serverSocket != null){
                try {
                    serverSocket.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
