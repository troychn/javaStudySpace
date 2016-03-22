package com.troylc.java.reflection.dynamicProxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

//动态代理的使用
interface subject {
    void action();
}

//被代理类
class Realsubject implements subject {

    @Override
    public void action() {
        System.out.println("我是被代理类，记得执行我");
    }
}

class myInvocationHandler implements InvocationHandler {
    Object obj;//实现了接口的被代理类的对象的声明

    /**
     * 给被代理类对象实例化
     * 返回一个被代理对象
     *
     * @param obj
     * @return
     */
    public Object blind(Object obj) {
        this.obj = obj;
        return Proxy.newProxyInstance(obj.getClass().getClassLoader(), obj.getClass().getInterfaces(), this);
    }

    /**
     * 当通过代理类的对象发起对被重写的方法的调用 时，都会转换为对如下的invoke方法的调用 。
     * @param proxy 代理对象
     * @param method 调用方法
     * @param args 方法参数列表
     * @return
     * @throws Throwable
     */
    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        //method方法的返回值是returnVal
        Object returnVal = method.invoke(obj, args);
        return returnVal;
    }
}

/**
 * Created by Administrator on 2015/3/14.
 */
public class DynamicProxy {
    public static void main(String[] args) {
        //1.创建一个被代理类的对象
        Realsubject real = new Realsubject();
        //2.创建一个实现InvacationHandler接口的类的对象
        myInvocationHandler handler = new myInvocationHandler();
        //3.调用blind()方法，动态的返回一个同样实现了real所在类实现的接口Subject的代理类的对象
        Object obj = handler.blind(real);
        subject sub = (subject) obj; //此时sub就是一个代理类的对象

        sub.action();//转到对InvacationHandler接口的实现类的invoke（）方法的调用


        NikeClothFactory nike = new NikeClothFactory();
        ClothFactory proxy = (ClothFactory)handler.blind(nike); //proxy代理类的对象
        proxy.productCloth();
    }
}
