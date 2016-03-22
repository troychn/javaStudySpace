package com.troylc.java.netWork;

import org.junit.Test;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

/**
 * Created by Administrator on 2015/3/15.
 */
public class TestUDP {
    /**
     * 发送器
     */
    @Test
    public void send() {
        DatagramSocket ds = null;
        try {
            ds = new DatagramSocket();

            byte[] b = "你好，我是要发送的数据".getBytes();
            //创建一个数据报：每一个报不能大于64K，都记录着数据信息，发送端的IP，端口号，以及要发送到的接受端的IP、端口号

            DatagramPacket packet = new DatagramPacket(b, 0, b.length, InetAddress.getByName("127.0.0.1"), 9090);

            ds.send(packet);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (ds != null) {
                ds.close();
            }
        }


    }

    /**
     * 接受器
     */
    @Test
    public void rceive() {
        DatagramSocket ds = null;
        try {
            ds = new DatagramSocket(9090);
            byte[] b = new byte[1024];
            DatagramPacket packet = new DatagramPacket(b,0,b.length);
            ds.receive(packet);

            String str = new String(packet.getData(),0,packet.getLength());
            System.out.println(str);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (ds != null) {
                ds.close();
            }
        }



    }
}
