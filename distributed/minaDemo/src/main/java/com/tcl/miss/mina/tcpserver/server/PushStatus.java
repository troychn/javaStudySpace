package com.tcl.miss.mina.tcpserver.server;

/**
 * 推送状态常量
 * @author miss-liu
 *
 */
public class PushStatus {
	public static final String INITIAL = "0";//初始化
	public static final String SUCCESS = "1";//推送成功 
	public static final String EXPIRED = "8";//已失效
    //每个设备如果有一条新的推送数据，之前的没有推送成功的数据会被置为已作废
	public static final String CANCELLED = "9";//已作废
}
