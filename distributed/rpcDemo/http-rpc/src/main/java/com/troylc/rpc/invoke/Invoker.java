package com.troylc.rpc.invoke;

import com.troylc.rpc.exception.RpcException;

import java.io.OutputStream;

/**
 * 通信层作用
 * 1.发送报文和服务器交互
 * 2.响应服务器的请求
 */
public interface Invoker {
    /**
     * 接受请求报文和消费者配置调用去调用远程的服务
     *
     * @param request        请求报文
     * @param consumerConfig 消费者配置
     * @return
     * @throws RpcException
     */
    String request(String request, ConsumerConfig consumerConfig) throws RpcException;

    /**
     * 响应远程服务，输入远程服务的信息
     *
     * @param response     响应报文
     * @param outputStream 输出流
     * @throws RpcException
     */
    void response(String response, OutputStream outputStream) throws RpcException;
}
