package com.troylc.java.reflection;

/**
 * Created by Administrator on 2015/3/14.
 */
@MyAnnotation(value = "troylc")
public class Person extends Creature<String> implements Comparable,MyInterface {
    public String name;
    private int age;

    public Person() {
        super();
    }

    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Person(String name, int age) {
        super();
        this.name = name;
        this.age = age;
    }

    /**
     * 创建类时，尽量提供一个空参的类的构造器。
     * @param name
     */
    public Person(String name) {
        super();
        this.name = name;
    }

    private Integer display(String nation,Integer integer) throws Exception{
        System.out.println("我的国籍是：" + nation);
        return integer;
    }

    @MyAnnotation(value = "troylcShow" )
    public void show(){
        System.out.println("I am a Person!");
    }

    @Override
    public int compareTo(Object o) {
        return 0;
    }

    class bird{

    }
}
