package com.zookeeper.rpc.serialize.json;

import com.alibaba.fastjson.JSON;
import com.zookeeper.rpc.exception.RpcException;
import com.zookeeper.rpc.exception.RpcExceptionCodeEnum;
import com.zookeeper.rpc.serialize.Parser;
import com.zookeeper.rpc.serialize.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 将字符串通过fastjson反序列化成对象
 */
public class JsonParser implements Parser {
    private static final Logger logger = LoggerFactory.getLogger(JsonParser.class);

    public static final Parser parser = new JsonParser();

    public Request reqParse(String param) throws RpcException {
        try {
            logger.debug("调用参数 {}", param);
            return (Request) JSON.parse(param);
        } catch (Exception e) {
            logger.error("转换异常 param = {}", param, e);
            throw new RpcException("", e, RpcExceptionCodeEnum.DATA_PARSER_ERROR.getCode(), param);
        }
    }

    public <T> T rsbParse(String result) {
        return (T) JSON.parse(result);
    }
}
