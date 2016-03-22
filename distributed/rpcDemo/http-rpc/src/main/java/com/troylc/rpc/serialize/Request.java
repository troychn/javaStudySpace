package com.troylc.rpc.serialize;

import java.io.Serializable;

/**
 * 装请求的接口，方法，参数封装到请求的一个对象中，方便序列化
 */
public class Request implements Serializable
{
    private Class clazz;

    private String method;

    private Object param;

    public Class getClazz() {
        return clazz;
    }

    public void setClazz(Class clazz) {
        this.clazz = clazz;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public Object getParam() {
        return param;
    }

    public void setParam(Object param) {
        this.param = param;
    }

    /**
     * 反射调用bean对象的method方法，这里相当于调用了SpeakInterfaceImpl中的speak方法。
     * @param bean //实现了接口的对象，且注册到了容器中，这里指的是实现了http-interfaces中SpeakInterface接口的
     *             http-provider中的SpeakInterfaceImpl的实际对象
     * @return
     * @throws Exception
     */
    public Object invoke(Object bean) throws Exception
    {
        return clazz.getMethod(method, param.getClass()).invoke(bean,param);
    }
}
