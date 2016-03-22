package com.troylc.testzkclient;

import org.I0Itec.zkclient.ZkClient;
import org.I0Itec.zkclient.serialize.SerializableSerializer;
import org.apache.zookeeper.CreateMode;

public class CreateNode {

	public static void main(String[] args) {
		//创建客户端对像：
		/*第一个参数是连接zookeeper的地址与端口；
		* 第二个参数是会话过期时间：10秒；
		* 第三个参数是连接过期时间：10秒；
		* 第四个参数序列化器接口ZkSerializer的实例化对象SerializableSerializer*/
		ZkClient zc = new ZkClient("192.168.1.105:2181",10000,10000,new SerializableSerializer());
		System.out.println("conneted ok!");
		
		
		User u = new User();
		u.setId(1);
		u.setName("test");
		//创建数据节点
		/*Create方法参数：
		* 第一个参数节点名称；
		* 第二个参数该节点的数据内容
		* 第三个参数是该节点的类型：
		*    CreateMode.PERSISTENT 持久化节点
		*    PERSISTENT_SEQUENTIAL 顺序自动编号持久化节点，这种节点会根据当前已存在的节点数自动加 1
		*    EPHEMERAL 临时节点， 客户端session超时这类节点就会被自动删除
		*    EPHEMERAL_SEQUENTIAL 临时自动编号节点
		*    */
		String path = zc.create("/jike5", u, CreateMode.PERSISTENT);
		System.out.println("created path:"+path);
	}
	
}
