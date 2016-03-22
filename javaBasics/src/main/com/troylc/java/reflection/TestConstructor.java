package com.troylc.java.reflection;

import org.junit.Test;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/**
 * Created by Administrator on 2015/3/14.
 *
 */
public class TestConstructor {

    /**
     * 创建对应类运行时的对象
     * newInstance时必须满足以下条件：
     * 1.提供一个空参的构造器
     * 2.构造器的权限修饰符的权限要足够。
     */
    @Test
    public void test1() {
        String className = "com.my.java.reflection.Person";
        try {
            Class clazz = Class.forName(className);
            /*
             * newInstance时必须满足以下条件：
             * 1.提供一个空参的构造器
             * 2.构造器的权限修饰符的权限要足够。
             */
            Object obj = clazz.newInstance();
            Person p = (Person) obj;
            System.out.println(p);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }

    }

    @Test
    public void test2() {
        String className = "com.my.java.reflection.Person";
        try {
            Class clazz = Class.forName(className);

            Constructor[] constructors = clazz.getConstructors();
            for (Constructor constructor : constructors) {
                System.out.println(constructor);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }


    //调用指定的构造器,创建运行时类的对象
    @Test
    public void test() throws Exception{
        String className = "com.atguigu.java.Person";
        Class clazz = Class.forName(className);

        Constructor cons = clazz.getDeclaredConstructor(String.class,int.class);
        cons.setAccessible(true);
        Person p = (Person)cons.newInstance("罗伟",20);
        System.out.println(p);
    }




    /**
     * 获取运行时父类
     */
    @Test
    public void test3(){
        Class clazz = Person.class;
        Class superClass = clazz.getSuperclass();
        System.out.println(superClass);
    }

    /**
     * 获取带泛型的父类
     */
    @Test
    public void test4(){
        Class clazz = Person.class;
        Type type = clazz.getGenericSuperclass();
        System.out.println(type);
    }

    /**
     * 获取父类的泛型
     */
    @Test
    public void test5(){
        Class clazz = Person.class;
        Type type = clazz.getGenericSuperclass();
        ParameterizedType param = (ParameterizedType)type;
        Type[] types = param.getActualTypeArguments();
        System.out.println(((Class)types[0]).getName());
    }

    /**
     * 获取实现的接口
     */
    @Test
    public void test6(){
        Class clazz = Person.class;
        Class[] interfaces = clazz.getInterfaces();
        for (Class o : interfaces) {
            System.out.println(o);

        }
    }

    /**
     * 获取包名
     */
    @Test
    public void test7(){
        Class clazz = Person.class;
        Package pack = clazz.getPackage();
        System.out.println(pack);
    }

    /**
     * 获取注解，
     * @Retention(RetentionPolicy.RUNTIME)只要声明为runtime的才能被反射获取到
     */
    @Test
    public void test8(){
        Class clazz = Person.class;
        Annotation[] annotations = clazz.getAnnotations();
        for (Annotation annotation : annotations) {
            System.out.println(annotation);
        }
    }

}
