package com.troylc.rpc.serialize;


/**
 * 将对象封装报文
 */
public interface Formater {
    /**
     * 将请求的接口，请求的方法，请求的参数封装成报文
     * @param clazz  请求的接口
     * @param method 请求的方法
     * @param param  请求的参数
     * @return
     */
    String reqFormat(Class clazz, String method, Object param);

    /**
     * 将响应的对象结果封装成报文
     * @param param 响应的结果
     * @return
     */
    String rsbFormat(Object param);
}
