package com.troylc.rpcconsumer.sample.consumer;


import com.troylc.rpcinterfaces.sampleApi.Person;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Date;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Created by Administrator on 2016/4/3.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:spring*.xml")
public class HelloClientTest {

    private static final Logger logger = LoggerFactory.getLogger(HelloClientTest.class);

    @Resource
    private HelloClient helloClient;

    @org.junit.Test
    public void testSayHello() throws Exception {
        int count = 10000;
        //开始的倒数锁
        final CountDownLatch countDownLatch = new CountDownLatch(count);
        //10名选手
        final ExecutorService exec = Executors.newFixedThreadPool(50);
        Date date = new Date();
        for (int index = 0; index < count; index++) {
            final int NO = index + 1;//Cannot refer to a non-final variable NO inside an inner class defined in a different method
            Runnable run = new Runnable() {
                public void run() {
                    try {
                        String result = helloClient.sayHello(new Person("liu"+ new Random(100).nextInt(20),"cheng"+ new Random(1).nextInt(1)));
                        System.out.println(result);
                    } catch (Exception e) {
                        logger.warn("出现异常", e);
                    } finally {
                        countDownLatch.countDown();
                    }

                }
            };
            exec.submit(run);
        }
        countDownLatch.await();
        System.out.println(new Date().getTime() - date.getTime());
        exec.shutdown();
    }

    @org.junit.Test
    public void testSayHello1() throws Exception {
        int count = 100;
        //开始的倒数锁
        final CountDownLatch countDownLatch = new CountDownLatch(count);
        //10名选手
        final ExecutorService exec = Executors.newFixedThreadPool(50);
        Date date = new Date();
        for (int index = 0; index < count; index++) {
            final int NO = index + 1;//Cannot refer to a non-final variable NO inside an inner class defined in a different method
            Runnable run = new Runnable() {
                public void run() {
                    try {
                        String result = helloClient.sayHello("liucheng" + new Random(100).nextInt(20));
                        System.out.println(result);
                    } catch (Exception e) {
                        logger.warn("出现异常", e);
                    } finally {
                        countDownLatch.countDown();
                    }

                }
            };
            exec.submit(run);
        }
        countDownLatch.await();
        System.out.println(new Date().getTime() - date.getTime());
        exec.shutdown();
    }
}