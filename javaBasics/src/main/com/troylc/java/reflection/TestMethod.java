package com.troylc.java.reflection;

import org.junit.Test;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/**
 * Created by Administrator on 2015/3/14.
 */
public class TestMethod {
    /**
     * 获取运行时类的方法
     */
    @Test
    public void test1(){
        Class clazz = Person.class;
        //1.getMethods获取运行时类及其父类中所有声明为public的方法
        Method[] methods = clazz.getMethods();
        for (Method method : methods) {
            System.out.println(method);
        }

        //2.getDeclaredMethods() 获取运行时类本身所有声明的方法
        Method[] methodds = clazz.getDeclaredMethods();
        for (Method methodd : methodds) {
            System.out.println(methodd);
        }

    }

    @Test
    public void test2(){
        Class clazz = Person.class;
        Method[] methods = clazz.getDeclaredMethods();
        for (Method method : methods) {
            //1.获取注解
            Annotation[] annotateds = method.getAnnotations();
            for (Annotation annotated : annotateds) {
                System.out.println(annotated);
            }
            //2.权限修饰符
            String str = Modifier.toString(method.getModifiers());
            System.out.print(str + " ");
            //3.返回值类型
            Class returnType = method.getReturnType();
            System.out.print(returnType.getName() + " ");
            //4.方法名
            System.out.print(method.getName() + " ");

            System.out.print("(");
            //5.形参列表
            Class[] params = method.getParameterTypes();
            for (int i = 0; i <params.length; i++) {
                System.out.print(params[i].getName()+" args-" + i + " ");
            }
            System.out.print(")");

            //6异常类型
            Class[] exps = method.getExceptionTypes();
            if (exps.length != 0) {
                System.out.print("throws ");
            }
            for (int i = 0; i < exps.length; i++) {
                System.out.print(exps[i].getName() + " ");
            }
            System.out.println();
        }
    }

    //调用运行时类中指定的方法
    @Test
    public void test3() throws Exception{
        Class clazz = Person.class;
        //getMethod(String methodName,Class ... params):获取运行时类中声明为public的指定的方法
        Method m1 = clazz.getMethod("show");
        Person p = (Person)clazz.newInstance();
        //调用指定的方法：Object invoke(Object obj,Object ... obj)
        Object returnVal = m1.invoke(p);//我是一个人
        System.out.println(returnVal);//null

        Method m2 = clazz.getMethod("toString");
        Object returnVal1 = m2.invoke(p);
        System.out.println(returnVal1);//Person [name=null, age=0]
        //对于运行时类中静态方法的调用
        Method m3 = clazz.getMethod("info");
        m3.invoke(Person.class);

        //getDeclaredMethod(String methodName,Class ... params):获取运行时类本身所有声明的指定的方法
        Method m4 = clazz.getDeclaredMethod("display",String.class,Integer.class);
        m4.setAccessible(true);
        Object value = m4.invoke(p,"CHN",10);//我的国籍是：CHN
        System.out.println(value);//10
    }

}
