package com.troylc.java.reflection.dynamicProxy;

import javax.sound.midi.Soundbank;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * Created by Administrator on 2015/3/14.
 * 动态代理与AOP（面向切面的编程）
 */

interface Human{
   void info();

    void fly();
}

/**
 * 被代理类
 */
class SuperMan implements Human{

    @Override
    public void info() {
        System.out.println("我是超人！");
    }

    @Override
    public void fly() {
        System.out.println("I believe I can fly!");
    }
}

class HumanUtil{
    public void method1(){
        System.out.println("============方法一===========");
    }
    public void method2(){
        System.out.println("============方法二===========");
    }
}

class MyInvocationHandler2 implements InvocationHandler{
    Object obj;

    public void setObject(Object obj){
        this.obj = obj;
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        HumanUtil hu = new HumanUtil();
        hu.method1();

        Object returnVal = method.invoke(obj,args);

        hu.method2();
        return returnVal;
    }
}

class MyProxy{
    //动态的创建一个代理类的对象
    public static Object getProxyInstance(Object obj){
        MyInvocationHandler2 handler = new MyInvocationHandler2();
        handler.setObject(obj);

        return Proxy.newProxyInstance(obj.getClass().getClassLoader(),obj.getClass().getInterfaces(),handler);
    }
}

public class DynamicProxyAOP {
    public static void main(String[] args) {
        SuperMan man = new SuperMan(); //创建一个被代理类的对象
        Human hm = (Human)MyProxy.getProxyInstance(man); //返回一个代理类的对象
        hm.info();//通过代理类的对象调用 重写的抽象方法

        System.out.println();
        hm.fly();

        NikeClothFactory nike = new NikeClothFactory();
        Object obj = MyProxy.getProxyInstance(nike);
        ClothFactory cf = (ClothFactory) obj;
        cf.productCloth();
    }
}
