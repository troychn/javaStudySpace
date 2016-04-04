package com.troylc.rpcinterfaces.sampleApi;

public interface HelloService {

    String hello(String name);

    String hello(Person person);
}
