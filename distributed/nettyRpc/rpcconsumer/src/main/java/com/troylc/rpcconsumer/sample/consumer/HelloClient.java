package com.troylc.rpcconsumer.sample.consumer;


import com.troylc.rpcinterfaces.sampleApi.HelloService;
import com.troylc.rpcinterfaces.sampleApi.Person;
import com.troylc.rpcserver.proxy.RpcProxy;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component("helloClient")
public class HelloClient {
    @Resource
    private HelloService helloService;

    @Resource
    private HelloService helloService2;

    public String sayHello(String sayWhat){
        return helloService.hello(sayWhat);
    }
    public String sayHello(Person person){
        return helloService2.hello(person);
    }

    public static void main(String[] args) throws Exception {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
        RpcProxy rpcProxy = context.getBean(RpcProxy.class);

        HelloService helloService = rpcProxy.create(HelloService.class);
        String result = helloService.hello("World");
        System.out.println(result);

        HelloService helloService2 = rpcProxy.create(HelloService.class, "sample.hello2");
        String result2 = helloService2.hello("世界");
        System.out.println(result2);



        System.exit(0);
    }
}
