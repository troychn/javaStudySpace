package com.troylc.rpcprovider.sample.provider;


import com.troylc.rpcinterfaces.sampleApi.HelloService;
import com.troylc.rpcinterfaces.sampleApi.Person;
import com.troylc.rpcserver.server.RpcService;

@RpcService(HelloService.class)
public class HelloServiceImpl implements HelloService {

    @Override
    public String hello(String name) {
        return "Hello! " + name;
    }

    @Override
    public String hello(Person person) {
        return "Hello! " + person.getFirstName() + " " + person.getLastName();
    }
}
