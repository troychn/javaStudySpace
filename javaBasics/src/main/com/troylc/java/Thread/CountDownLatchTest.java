package com.troylc.java.Thread;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * CountDownLatch:
 * 官方的解释为：一个同步辅助类，在完成一组正在其他线程中执行的操作之前，它允许一个或多个线程一直等待。
 * 我们现在就把它理解为倒数计数器，什么是倒数计数器呢，通俗的理解就是这个计数器事先有一个初始计数，在这个计数减到0之前，
 * 所有的线程等待。
 */
public class CountDownLatchTest {
    public static void main(String[] args) throws InterruptedException {
        //倒数计数器
        final CountDownLatch begin = new CountDownLatch(1);
        //倒数计数器
        final CountDownLatch end = new CountDownLatch(10);
        //十名枪手
        ExecutorService execu = Executors.newFixedThreadPool(10);
        //模拟招募10名枪手到齐后开动大巴，送往“战场”
        for (int i = 0; i < 10; i++) {
            final int NO = i + 1;
            Runnable r = new Runnable() {
                @Override
                public void run() {
                    try {
                        //等待招募者下令招募
                        begin.await();
                        Thread.sleep((long) (Math.random() * 10000));
                        System.out.println("枪手:" + NO + "到了");
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    } finally {
                        //每到达一个枪手，计数器减1
                        end.countDown();
                    }
                }
            };
            execu.submit(r);
        }
        //begin倒数计数器减1为0，则开始下招募令，一声令下
        begin.countDown();
        System.out.println("开始招募。。。。");
        //等待所有的枪手到达
        end.await();
        //所有枪手到达
        System.out.println("所有枪手到达,开动大巴,送往目的地。。。。");
        execu.shutdown();
    }
}
