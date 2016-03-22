package com.troylc.java.map;

import com.troylc.java.collection.Customer;
import com.troylc.java.collection.Customer;
import org.junit.Test;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.*;

/**
 * Created by Administrator on 2015/3/4.
 * map接口
 *      |----HashMap:Map的主要实现类
 *      |----LinkedHashMap: 使用链表维护添加进Map中的顺序，帮遍历Map时，是按添加的顺序遍历的
 *           遍历速度快于HashMap,但是插入，添加时不如HashMap，因为LinkedHashMap在添加时需要维护元素之间的链表。
 *      |----TreeMap:按照添加进Map中的元素的Key的指定属性进行排序，要求key必须是同一个类的对象！
 *           针对Key 有自然排序 VS 定制排序
 *      |----Hashtable :古老的实现类，线程安全，不建议使用
 *           |----Properties 常用来处理属性文件。键和值都为String类型
 */
public class TestMap {

    @Test
    public void testProperties(){
        //使用properties处理属性文件
        Properties pros = new Properties();
        try {
            pros.load(new FileInputStream(new File("jdbc1.properties")));
            System.out.println(pros.getProperty("user"));
            System.out.println(pros.getProperty("password"));
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @Test
    public void testTreeMap2(){
        Comparator com = new Comparator() {
            @Override
            public int compare(Object o1, Object o2) {
                if (o1 instanceof Customer && o2 instanceof Customer) {
                    Customer c1 = (Customer) o1;
                    Customer c2 = (Customer) o2;
                    int i = c1.getId().compareTo(c2.getId());
                    if (i == 0) {
                        return c1.getName().compareTo(c2.getName());
                    }
                    return i;
                }
                return 0;
            }
        };
        TreeMap map = new TreeMap(com);
        // 3.向TreeSet中添加Comparator接口中的compare方法中涉及的类的对象。
        map.put(new Customer("AA", 1003),89);
        map.put(new Customer("BB", 1002),79);
        map.put(new Customer("CC", 1001),69);
        map.put(new Customer("DD", 1004),59);
        map.put(new Customer("GG", 1006), 99);

        Set set = map.entrySet();
        for (Object o : set) {
            Map.Entry entry = (Map.Entry)o;
            System.out.println(entry);
        }
    }

    @Test
    public void testTreeMap(){
        Map map = new TreeMap();
        map.put(new Person("aa",21),89);
        map.put(new Person("bb",21),79);
        map.put(new Person("cc",20),89);
        map.put(new Person("dd",22),59);

        Set set = map.entrySet();
        for (Object o : set) {
            Map.Entry entry = (Map.Entry)o;
            System.out.println(entry);
        }
    }

    @Test
    public void test3(){
        Map map = new LinkedHashMap();
        map.put("aa",213);
        map.put("bb",213);
        map.put(123,"cc");
        map.put(null,null);
        map.put(new Person("dd",23),89);

        Set set = map.entrySet();
        for (Object o : set) {
            Map.Entry entry = (Map.Entry)o;
            System.out.println(entry);
        }
    }

    /**
     * 如何遍历Map
     * Set KeySet()
     * Collection values()
     * Set entrySet()
     */
    @Test
    public void test2(){
        Map map = new HashMap();
        map.put("aa",213);
        map.put("bb",213);
        map.put(123,"cc");
        map.put(null,null);
        map.put(new Person("dd",23),89);

        //1.遍历KEY集
        Set keySet = map.keySet();
        for (Object o : keySet) {
            System.out.println(o);
        }
        //2.遍历value集
        Collection values = map.values();
        Iterator iterator = values.iterator();
        while (iterator.hasNext()){
            System.out.println(iterator.next());
        }
        //3.如何遍历Key-value对entry
        //方式一
        Set set1 = map.keySet();
        for (Object o : set1) {
            System.out.println(o+"------>"+map.get(o));
        }
        //方式二
        Set set2 = map.entrySet();
        for (Object o : set2) {
            Map.Entry entry = (Map.Entry)o;
            System.out.println(entry);
        }

    }

    /**
     * HashMap: put()
     * 1.key是用Set来存放的，不可重复；value是用collection来存放的，可重复
     * 一个key-value对，是一个entry,所有的Entry是用Set存放的，也是不可重复。
     * 2.向HashMap中添加元素时，会调用Key所在类的equals()方法，判断两个key是否相同。若相同，则只能添加进后添加的那个元素（覆盖）
     *
     */
    @Test
    public void test1(){
        Map map = new HashMap();
        map.put("aa",213);
        map.put("bb",213);
        map.put(123,"cc");
        map.put(null,null);
        map.put(new Person("dd",23),89);
        System.out.println(map.size());
        System.out.println(map);
    }

}

