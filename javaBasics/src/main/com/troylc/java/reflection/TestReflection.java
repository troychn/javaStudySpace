package com.troylc.java.reflection;

import com.sun.org.apache.xpath.internal.SourceTree;
import org.junit.Test;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Properties;

/**
 * Created by Administrator on 2015/3/14.
 * Java Reflection
 * Reflection（反射）是被视为动态语言的关键，反射机制允许程序在执行期借助于Reflection API取得任何类的内部信息，
 * 并能直接操作任意对象的内部属性及方法
 * Java反射机制提供的功能
 * 在运行时判断任意一个对象所属的类
 * 在运行时构造任意一个类的对象
 * 在运行时判断任意一个类所具有的成员变量和方法
 * 在运行时调用任意一个对象的成员变量和方法
 * 生成动态代理
 */
public class TestReflection {

    /**
     * 关于类的加载器 ClassLoader
     */
    @Test
    public void test5() throws ClassNotFoundException, IOException {
        ClassLoader loader = ClassLoader.getSystemClassLoader();
        System.out.println(loader);

        ClassLoader loader1 = loader.getParent();
        System.out.println(loader1);

        ClassLoader loader2 = loader1.getParent();
        System.out.println(loader2);

        Class clazz = Person.class;
        ClassLoader loader3 = clazz.getClassLoader();
        System.out.println(loader3);

        String className = "java.lang.Object";
        Class  clazz2 = Class.forName(className);
        ClassLoader loader4 = clazz2.getClassLoader();
        System.out.println(loader4);

        //掌握如下
        ClassLoader loader5 = this.getClass().getClassLoader();
        InputStream is = loader5.getResourceAsStream("com\\my\\java\\reflection\\jdbc.properties");
        Properties properties = new Properties();
        properties.load(is);
        String name = properties.getProperty("abc");
        System.out.println(name);
        //当前工程下
        FileInputStream fis = new FileInputStream(new File("jdbc.properties"));
        Properties prop = new Properties();
        prop.load(fis);
        String name2 = properties.getProperty("abc");
        System.out.println(name2);


    }


    /**
     * 如何获取Class的实例（3种）
     */
    @Test
    public void test4(){
        //1.调用运行时类本身的.class属性
        Class<Person> clazz = Person.class;
        System.out.println(clazz.getName());

        //2.通过运行时类的对象来获取
        Person person = new Person();
        Class personClass = person.getClass();
        System.out.println(personClass.getName());

        //3.通过Class的静态方法获取
        String className = "com.my.java.reflection.Person";
        Class clazz2 = null;
        try {
            clazz2 = Class.forName(className);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println(clazz2.getName());

        //4.通过类的加载器
        ClassLoader classLoader = this.getClass().getClassLoader();
        Class clazz5 = null;
        try {
            clazz5 = classLoader.loadClass(className);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println(clazz5.getName());
    }

    /**
     * java.lang.Class:是反射的源头
     * 创建一个类，通过编译，生成对应.class文件，之后使用java.ext加载(JVM的类加载器)此.class文件
     * 此.class文件加载到内存以后，就是一个运行时类，存在在缓存区，那么这个运行时类本身就一个Class的实例
     * 1.每一个运行时类只加载一次
     * 2.有了Class实例后，可以进行如下的操作
     *    a.创建对应的运行时类的对象
     *    b.可以获取对应的运行时类的完整结构（属性，方法，构造器，内部类，父类，所在的包，异常，注解.....）
     *    c.调用对应的运行时类的指定的结构（属性，方法，构造器）
     *    d.反射的应用：动态代理
     */
    @Test
    public void test3(){
        Person p = new Person();
        Class clazz = p.getClass(); //通过运行时类的对象，调用其getClass()，返回其运行时类
        System.out.println(clazz);
    }


    /**
     * 有了反射，可以通过反射创建一个类的对象，并调用其中的结构
     */
    @Test
    public void test2(){
        Class<Person> clazz = Person.class;

        try {
            //1.创建clazz对应的运行时类Person类的对象
            Person person = clazz.newInstance();
            System.out.println(person);
            //2.通过反射调用运行时类的指定属性
            Field fieldName = clazz.getField("name");
            fieldName.set(person,"troylc");
            System.out.println(person);

            Field fieldAge = clazz.getDeclaredField("age");
            fieldAge.setAccessible(true);
            fieldAge.set(person,23);
            System.out.println(person);

            //3.通过反射调用运行时类的指定的方法
            try {
                Method methodShow = clazz.getMethod("show");
                methodShow.invoke(person);

                Method methodDisplay = clazz.getMethod("display",String.class);
                methodDisplay.invoke(person,"HK");

            } catch (NoSuchMethodException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }

        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    /**
     * 在有反射以前，如何创建一个类的对象，并调用 其中的方法，属性
     */
    @Test
    public void test1() throws Exception {
        Person p = new Person();
        p.setAge(19);
        p.setName("troylc");
        System.out.println(p);
        p.show();
        //p.display("china");
    }
}
