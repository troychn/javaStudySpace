package com.troylc.java.collection;

import org.junit.Test;

import java.util.*;

/**
 * Created by Administrator on 2015/3/3.
 */
public class TestSet {
    /**
     * set中的常用方法都是collection接口定义
     * set存储的元素是无序的，不可重复的；
     *    |--无序性指的是元素在底层存储的位置是无序的
     *    |--不可重复性，存储的元素不能重复
     *       说明 ：要求添加进set中的元素所在的类，一定要重写equals和hashCode方法；进而保证set的不可重复性
     *
     * set中的元素是如何存储？ 使用了哈希算法
     * 当向Set中添加对象时，首先调用此对象所在类的hashcode（）方法，计算此对象的哈希值，此哈希值决定了此对象在
     * Set中的存储位置，若此位置之前没有对象存储，则这个对象直接存储到此位置，若此位置已有对象存储，再通过equals()
     * 比较这两个对象是否相同，如果相同，后一个对象就不能再添加进来。
     * 万一返回false呢？都存储（不建议如此） 要求：hashCode()方法要与equals()方法一致。
     */
    @Test
    public void testHashSet(){
        Set set = new HashSet();
        set.add(123);
        set.add(456);
        set.add("aa");
        set.add("bb");
        set.add(null);
        Person p1 = new Person("gg",23);
        Person p3 = new Person("gg",23);
        System.out.println(p1.equals(p3));
        Person p2 = new Person("mm",21);
        set.add(p1);
        set.add(p2);
        set.add(p3);
        System.out.println(set.size());
        System.out.println(set);

    }

    /**
     * LinkedHashSet：使用链表维护了一个添加进集合中的顺序，导致当我们遍历LinkedHashSet集合元素时，
     * 是按照添加时的顺序遍历。
     * 与hashSet的区别：
     * LinkedHashSet插入性能慢（需要建立每个元素的前向指向和后向指向），但是遍历快
     * HashSet添加性能快，但遍历不如LinkedHashSet
     */
    @Test
    public void testLinkedHashSet(){
        Set set = new LinkedHashSet();
        set.add(123);
        set.add(456);
        set.add("aa");
        set.add("bb");
        set.add(null);

        Iterator iterator = set.iterator();
        while (iterator.hasNext()){
            System.out.println(iterator.next());
        }
    }

    /**
     * TreeSet:
     * 1.向TreeSet添加的元素必须是同一类的。
     * 2.可以按照添加进集合中的元素的顺序遍历。像String ,包装类等默认按照从小到的顺序遍历
     * 3.当向TreeSet中添加自定义类的对象时，有两种排序方法
     *    |--自然排序：要求自定义类的实现java.lang.Comparable接口并重写其compareTo(Object obj)的抽象方法，
     *               在此方法中，指明按照自定义类的那个属性进行排序
     *    |--定制排序：
     * 4.向TreeSet中添加元素时，首先按照compareTo()进行比较，一但返回0，虽然仅是两个对象的此属性值相同，但是程序
     * 会认为这两个对象是相同的，进而后一个对象就不能添加进来。
     *
     * >compareTo()与hashCode()以及equals()三者保持一致
     */
    @Test
    public void testTreeSet1(){
        Set set = new TreeSet();
       // set.add(123);
       // set.add(456);
//        set.add("a0");
//        set.add("a1");
//        set.add("a2");
//        set.add("aa");
//        set.add("bb");

        //当Person类型没有实现Comparable接口时，当向TreeSet中添加Person对象时，报ClassCastException
        Person p1 = new Person("gg",23);
        Person p3 = new Person("mm",21);

        set.add(p1);
        set.add(p3);
        set.add(new Person("cc",21));
        set.add(new Person("ee",21));
        set.add(new Person("tt",21));


        for (Object o : set) {
            System.out.println(o);
        }

    }

    /**
     * TreeSet的定制排序： 见下面的步骤 compare()与hashCode()以及equals()三者保持一致！
     */
    @Test
    public void testTreeSet2(){
        // 1.创建一个实现了Comparator接口的类对象
        Comparator com = new Comparator() {
            // 向TreeSet中添加Customer类的对象，在此compare()方法中，指明是按照Customer
            // 的哪个属性排序的。
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
        // 2.将此对象作为形参传递给TreeSet的构造器中
        TreeSet set = new TreeSet(com);
        // 3.向TreeSet中添加Comparator接口中的compare方法中涉及的类的对象。
        set.add(new Customer("AA", 1003));
        set.add(new Customer("BB", 1002));
        set.add(new Customer("GG", 1004));
        set.add(new Customer("CC", 1001));
        set.add(new Customer("DD", 1001));

        for (Object str : set) {
            System.out.println(str);
        }
    }

    @Test
    public void testTreeSet3() {

        TreeSet set = new TreeSet(new Comparator() {
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
        });
        set.add(new Customer("AA", 1003));
        set.add(new Customer("BB", 1002));
        set.add(new Customer("GG", 1004));
        set.add(new Customer("CC", 1001));
        set.add(new Customer("DD", 1001));

        for (Object str : set) {
            System.out.println(str);
        }
    }

}
