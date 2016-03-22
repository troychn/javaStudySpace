package com.troylc.java.Thread.concurrent;

import java.util.concurrent.CountDownLatch;

/**
 *必须发生指定数量的事件后才可以继续运行
 * CountDownLatch(int count):必须发生count个数量才可以打开锁存器
 * await():等待锁存器：线程可以阻塞等待这一数量到达零
 * countDown()解发事件：每被调用一次，这一数量就减一
 */
public class CountDownLatchDemo {

    public static void main(String[] args) {
        CountDownLatch countDownLatch = new CountDownLatch(3);

        new Racer(countDownLatch, "A").start();
        new Racer(countDownLatch, "B").start();
        new Racer(countDownLatch, "C").start();

        for (int i = 0; i < 3; i++) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println(3 - i);
            countDownLatch.countDown();
            if (i == 2)
                System.out.println("Start");
        }

    }

}

class Racer extends Thread {

    private CountDownLatch countDownLatch;

    public Racer(CountDownLatch countDownLatch, String name) {
        setName(name);
        this.countDownLatch = countDownLatch;
    }

    public void run() {
        try {
            System.out.println(getName()+ "线程阻塞等待");
            countDownLatch.await();
            for (int i = 0; i < 3; i++)
                System.out.println(getName() + " :" + i);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

}
