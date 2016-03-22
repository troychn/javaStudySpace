package com.troylc.testzkclient;

import org.I0Itec.zkclient.ZkClient;
import org.I0Itec.zkclient.serialize.SerializableSerializer;

public class CreateSession {

	public static void main(String[] args) {
		//创建客户端对像：
		/*第一个参数是连接zookeeper的地址与端口；
		* 第二个参数是会话过期时间：10秒；
		* 第三个参数是连接过期时间：10秒；
		* 第四个参数序列化器接口ZkSerializer的实例化对象SerializableSerializer*/
		ZkClient zc = new ZkClient("192.168.1.105:2181",10000,10000,new SerializableSerializer());
		System.out.println("conneted ok!");
	}
	
}
