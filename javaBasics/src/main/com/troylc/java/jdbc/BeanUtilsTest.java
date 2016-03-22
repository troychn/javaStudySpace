package com.troylc.java.jdbc;

import org.apache.commons.beanutils.BeanUtils;
import org.junit.Test;

import java.lang.reflect.InvocationTargetException;

/**
 * Created by Administrator on 2015/3/17.
 * java类的属性
 * 1.在javaEE中，java类的属性通过getter,setter来定义：get(或set)方法，去除get(或set)后，即成员变量，称之为字段
 * 2.而以前叫的那个属性，即成员变量，称之为字段
 * 3.一般情况下，字段名和属性名是一致的
 * 4.操作JAVA类的属性有一个工具包:beanutils包
 * a.搭建环境需要加入：commons-beanutils-1.8.0.jar和commons-logging-1.1.1.jar
 * setProperty()
 * BeanUtils.setProperty(object, "idCard", "211121196509091876");
 * getProperty()
 * Object val = BeanUtils.getProperty(object, "idCard");
 */
public class BeanUtilsTest {
    @Test
    public void testGetProperty() throws IllegalAccessException, InvocationTargetException, NoSuchMethodException{
        Object object = new Customer();
        System.out.println(object);

        BeanUtils.setProperty(object, "email", "211121196509091876");
        System.out.println(object);

        Object val = BeanUtils.getProperty(object, "idCard");
        System.out.println(val);
    }

    @Test
    public void testSetProperty() throws IllegalAccessException, InvocationTargetException {

        Object object = new Customer();
        System.out.println(object);

        BeanUtils.setProperty(object, "name", "trocsd");
        System.out.println(object);

    }
}
