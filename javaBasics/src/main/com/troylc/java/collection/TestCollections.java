package com.troylc.java.collection;

import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * Created by Administrator on 2015/3/4.
 * 操作集合的工具类 Collections （Collection,Map）
 * 区分Colletion与Collections的：Colletion是接口，Collections操作
 *
 * 存储方式：1.顺序结构 2.链式存储
 * 1.数据的存储的“容器”：①数组 int[] arr = new int[10]②集合
 * 2.Collection:用来存储一个一个的数据
 * 		|-----Set:存储无序的、不可重复的数据--相当于高中的"集合"--“哈希算法”
 * 			|----HashSet:主要的实现类
 * 				|----LinkedHashSet:对于频繁的遍历，效率高
 * 			|----TreeSet:可以按照添加的元素的指定属性进行排序遍历（自然排序Comparable（compareTo（Object
 * 		            	obj））&定制排序Comparator（compare(Obejct obj1,Object obj2)））
 * 		|-----List:存储有序的、可以重复的数据--相当于"动态"数组
 * 			|----ArrayList:主要实现类，线程不安全的
 * 			|----LinkedList:对于频繁的插入、删除操作，效率高于ArrayList
 * 			|----Vector:古老的实现类，线程安全的
 *
 *   Map:用来存储一对一对的数据(key-value)---相当于y = f(x). y = x + 1;(x1,y1)(x2,y2)
 *   		|----HashMap
 *   			|----LinkedHashMap
 *   		|----TreeMap
 *   		|----Hashtable
 *   			|----Properties
 */
public class TestCollections {

    /**
     * reverse(List)：反转 List 中元素的顺序
     shuffle(List)：对 List 集合元素进行随机排序
     sort(List)：根据元素的自然顺序对指定 List 集合元素按升序排序
     sort(List，Comparator)：根据指定的 Comparator 产生的顺序对 List 集合元素进行排序
     swap(List，int， int)：将指定 list 集合中的 i 处元素和 j 处元素进行交换
     */
    @Test
    public void testCollections1(){
        List list = new ArrayList();
        list.add(123);
        list.add(456);
        list.add(12);
        list.add(78);
        System.out.println(list);
        Collections.reverse(list);
        System.out.println(list);
        Collections.shuffle(list);
        System.out.println(list);
        Collections.sort(list);
        System.out.println(list);
        Collections.swap(list, 0, 2);
        System.out.println(list);

    }

    /*
	 *  Object max(Collection)：根据元素的自然顺序，返回给定集合中的最大元素
		Object max(Collection，Comparator)：根据 Comparator 指定的顺序，返回给定集合中的最大元素
		Object min(Collection)
		Object min(Collection，Comparator)
		int frequency(Collection,Object)：返回指定集合中指定元素的出现次数
		void copy(List dest,List src)：将src中的内容复制到dest中
		boolean replaceAll(List list，Object oldVal，Object newVal)：使用新值替换 List 对象的所有旧值
	 */
    @Test
    public void testCollections2(){
        List list = new ArrayList();
        list.add(123);
        list.add(456);
        list.add(12);
        list.add(78);
        list.add(456);
        Object obj = Collections.max(list);
        System.out.println(obj);
        int count = Collections.frequency(list, 4567);
        System.out.println(count);
        //实现List的复制
        //List list1 = new ArrayList();//错误的实现方式
        List list1 = Arrays.asList(new Object[list.size()]);
        Collections.copy(list1, list);
        System.out.println(list1);
        //通过如下的方法保证list的线程安全性。
        List list2 = Collections.synchronizedList(list);
        System.out.println(list2);
    }

    @Test
    public void testStrings() {
        String[] str = new String[5];
        for (String myStr : str) {
            myStr = "atguigu";
            System.out.println(myStr);
        }
        for (int i = 0; i < str.length; i++) {
            System.out.println(str[i]);
        }
        System.out.println("--------------------------------------");
        List<String> ls = new ArrayList<String>();
        ls.add(null);
        ls.add(null);
        ls.add(null);
        for (int i = 0; i < ls.size(); i++) {
            System.out.println(ls.get(i));
        }

    }
}
