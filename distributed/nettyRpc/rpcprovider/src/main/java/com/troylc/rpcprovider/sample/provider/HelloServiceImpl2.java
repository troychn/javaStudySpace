package com.troylc.rpcprovider.sample.provider;


import com.troylc.rpcinterfaces.sampleApi.HelloService;
import com.troylc.rpcinterfaces.sampleApi.Person;
import com.troylc.rpcserver.server.RpcService;

@RpcService(value = HelloService.class, version = "sample.hello2")
public class HelloServiceImpl2 implements HelloService {

    @Override
    public String hello(String name) {
        return "你好! " + name;
    }

    @Override
    public String hello(Person person) {
        return "你好! " + person.getFirstName() + " " + person.getLastName();
    }
}
