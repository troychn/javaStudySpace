package com.troylc.rpc.proxy;

import com.troylc.rpc.container.Container;
import com.troylc.rpc.container.HttpContainer;
import com.troylc.rpc.exception.RpcException;
import com.troylc.rpc.exception.RpcExceptionCodeEnum;
import com.troylc.rpc.invoke.HttpInvoker;
import com.troylc.rpc.invoke.Invoker;
import com.troylc.rpc.invoke.ProviderConfig;
import com.troylc.rpc.serialize.Formater;
import com.troylc.rpc.serialize.Parser;
import com.troylc.rpc.serialize.Request;
import com.troylc.rpc.serialize.json.JsonFormater;
import com.troylc.rpc.serialize.json.JsonParser;
import org.mortbay.jetty.handler.AbstractHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 生产者代理工厂主要用于服务的注册，与服务请求的响应
 */
public class ProviderProxyFactory extends AbstractHandler {
    private static final Logger logger = LoggerFactory.getLogger(ProviderProxyFactory.class);

    private Map<Class, Object> providers = new ConcurrentHashMap<Class, Object>();

    private static ProviderProxyFactory factory;

    private Parser parser = JsonParser.parser;

    private Formater formater = JsonFormater.formater;

    private Invoker invoker = HttpInvoker.invoker;

    public ProviderProxyFactory(Map<Class, Object> providers) {
        if (Container.container == null) {
            new HttpContainer(this).start();
        }
        for (Map.Entry<Class, Object> entry : providers.entrySet()) {
            register(entry.getKey(), entry.getValue());
        }
        factory = this;
    }

    public ProviderProxyFactory(Map<Class, Object> providers, ProviderConfig providerConfig) {
        if (Container.container == null) {
            new HttpContainer(this, providerConfig).start();
        }
        for (Map.Entry<Class, Object> entry : providers.entrySet()) {
            register(entry.getKey(), entry.getValue());
        }
        factory = this;
    }

    /**
     * 服务注册 将一个接口以及它对应对象的引用放入ConcurrentHashMap中，只有注册的服务才能被远程调用。
     * @param clazz
     * @param object
     */
    public void register(Class clazz, Object object) {
        providers.put(clazz, object);
        logger.info("{} 已经发布", clazz.getSimpleName());
    }


    public void handle(String target, HttpServletRequest request, HttpServletResponse response, int dispatch) throws IOException, ServletException {
        String reqStr = request.getParameter("data");
        try {
            //将请求参数解析
            Request rpcRequest = parser.reqParse(reqStr);
            //反射请求Request类中的Class变量对象对应的method方法并返回方法的执行结果
            Object result = rpcRequest.invoke(ProviderProxyFactory.getInstance().getBeanByClass(rpcRequest.getClazz()));
            //相应请求
            invoker.response(formater.rsbFormat(result), response.getOutputStream());
        } catch (RpcException e) {
            e.printStackTrace();
        } catch (Throwable e) {
            e.printStackTrace();
        }
    }


    /**
     * 通过clazz从已经注册到ConcurrentHashMap中取出clazz的对象引用
     * @param clazz
     * @return
     * @throws RpcException
     */
    public Object getBeanByClass(Class clazz) throws RpcException {
        Object bean = providers.get(clazz);
        if (bean != null) {
            return bean;
        }
        throw new RpcException(RpcExceptionCodeEnum.NO_BEAN_FOUND.getCode(), clazz);
    }

    public static ProviderProxyFactory getInstance() {
        return factory;
    }


}
