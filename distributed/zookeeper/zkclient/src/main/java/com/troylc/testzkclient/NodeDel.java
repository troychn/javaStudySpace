package com.troylc.testzkclient;

import org.I0Itec.zkclient.ZkClient;
import org.I0Itec.zkclient.serialize.SerializableSerializer;

public class NodeDel {

	public static void main(String[] args) {
		ZkClient zc = new ZkClient("192.168.1.105:2181",10000,10000,new SerializableSerializer());
		System.out.println("conneted ok!");
		//删除节点
		boolean e = zc.delete("/jike5");
		
		System.out.println(e);
		
	}
	
}