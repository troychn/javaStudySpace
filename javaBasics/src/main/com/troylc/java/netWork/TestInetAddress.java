package com.troylc.java.netWork;

import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * Created by Administrator on 2015/3/15.
 * 网络通信的第一要素：IP地址，通过IP地址，唯一定准互联网上的一台主机
 * java.net.InetAddress:
 * 1.InetAddress用来代表IP地址，一个InetAddress的对象就代表一个IP地址
 * 2.如何创建InetAddress的对象，getByName(String host)
 * 3.getHostName(): 获取IP地址对应的域名
 *   getHostAddress():获取IP地址
 */
public class TestInetAddress {
    public static void main(String[] args) {
        InetAddress inet = null;
        try {
            inet = InetAddress.getByName("zhizuoshop-product.shushang-z.cn");
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        System.out.println(inet);

        System.out.println(inet.getHostName());
        System.out.println(inet.getHostAddress());
    }
}
