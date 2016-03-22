package com.troylc.java.multithreading;

import org.junit.Test;

/**
 * Created by Administrator on 2015/3/10.
 * 创建两个子线程，一个输出1－－100之间的偶数，一个输出1－100之间的奇数。
 */
public class TestExer {
    @Test
    public void testEvenOddThread(){
        EvenThread evenThread = new EvenThread();
        evenThread.setName("偶数线程-------->");
        evenThread.start();
        OddThread oddThread = new OddThread();
        oddThread.setName("奇数线程----->");
        oddThread.start();
        //匿名继承thread的线
        new Thread(){
            @Override
            public void run() {
                for (int i = 0; i < 100; i++) {
                    if (i % 2 !=0) {
                        System.out.println(Thread.currentThread().getName()+"-------:"+i);
                    }
                }
            }
        }.start();
        new Thread(){
            @Override
            public void run() {
                for (int i = 0; i < 100; i++) {
                    if (i % 2 ==0) {
                        System.out.println(Thread.currentThread().getName()+"----------:"+i);
                    }
                }
            }
        }.start();

    }
}

/**
 * 偶数线程
 */
class EvenThread extends Thread{
    @Override
    public void run() {
        for (int i = 0; i < 100; i++) {
            if (i % 2 ==0) {
                System.out.println(Thread.currentThread().getName()+":"+i);
            }
        }
    }
}

/**
 * 奇数线程
 */
class OddThread extends Thread{
    @Override
    public void run() {
        for (int i = 0; i < 100; i++) {
            if (i % 2 !=0) {
                System.out.println(Thread.currentThread().getName()+":"+i);
            }
        }
    }
}