package com.troylc.java.netWork;

import org.junit.Test;

import java.io.*;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * Created by Administrator on 2015/3/15.
 */
public class TestTCP {
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
            FileInputStream fis = new FileInputStream(new File("1.jpg"));
            byte[] f = new byte[1024];
            int len1;
            while ((len1=fis.read(f)) != -1){
                //3.具体的输出过程
                os.write(f,0,len1);
            }

            //4.shutdownOutput 显式的告诉服务端数据已经发送完毕业
            //socket.shutdownOutput();
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

            FileOutputStream fos = new FileOutputStream(new File("3.jpg"));
            //4.对获取的输入流进行操作
            byte[] b = new byte[1024];
            int len;
            while ((len=is.read(b)) != -1){
                fos.write(b,0,len);
            }
            //发送信息给客户端
            os = socket.getOutputStream();
            os.write("我已经收到你发的图片".getBytes());

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
