package com.troylc.testzkclient;

import org.I0Itec.zkclient.ZkClient;
import org.I0Itec.zkclient.serialize.SerializableSerializer;

public class WriteData {

	public static void main(String[] args) {
		ZkClient zc = new ZkClient("192.168.1.105:2181",10000,10000,new SerializableSerializer());
		System.out.println("conneted ok!");
		
		
		User u = new User();
		u.setId(2);
		u.setName("test2");
		/*向jike5这个节点中写入数据：
		* 第一个参数是写入的数据对象
		* 第二个参数是版本号
		* */
		zc.writeData("/jike5", u, 1);
		
	}
	
}
