package com.troylc.java.Thread.concurrent;

import java.util.ArrayList;
import java.util.List;

/**
 * 流的编程模型
 * 获取流： stream/parallelSteam
 * 操作：sort/max/min/…
 */
public class StreamDemo {

    public static void main(String[] args) {
        List<String> ls = new ArrayList<String>();
        ls.add("abc");
        ls.add("def");
        ls.add("ddd");
        ls.add("eee");
        ls.add("def");
        ls.add("cba");
        ls.add("hello");

//        Optional<String> max = ls.stream().max(String::compareTo);
//        System.out.println(max.get());

       // ls.stream().sorted().forEach(e -> System.out.println(e));

       // System.out.println(ls.stream().distinct().count());
    }

}
