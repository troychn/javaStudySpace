package com.troylc.rpcz.serialize;

import com.troylc.rpcz.exception.RpcException;

/**
 * 将报文封装成对象
 */
public interface Parser {
    /**
     * 将请求的报文封装成请求的对象
     *
     * @param param 请求参数
     * @return
     */
    Request reqParse(String param) throws RpcException;

    /**
     * 将响应的报文封装成响应的结果对象
     *
     * @param result
     * @return
     */
    public <T> T rsbParse(String result);
}
