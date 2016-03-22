package com.troylc.java.multithreading;

import org.junit.Test;

/**
 * Created by Administrator on 2015/3/11.
 * 用两种创建线程的方式实现火车站多窗口售票的案例
 * 都会出现线程安全问题
 * 原因：由于一个线程在操作共享数据过程中，未执行完成的情况下，另个的线程参与进来，导致共享数据存在了安全问题
 * 如何解决：
 * 必须让一个线程操作共享数据完成后，其它线程才有机会参于共享数据的操作
 * 3.java如何实现线程安全：线程的同步机制
 * 前提：如果我们创建的多个线程，存在着共享数据，那么就有可能出现线程的安全问题；当其中一个线程操作共享数据时，还未操作完成，
 * 另个的线程就参与进来，导致对共享数据的操作问题
 * 解决方式：要求一个线程操作共享数据时，只有当其完成操作共享数据，其它线程才有机会执行共享数据。
 * 解决方式两种：
 *    方式一：同步代码块
 *    synchronized(同步监视器）{//需要被同步的代码块（即为操作共享数据的代码）}
 *    1.共享数据，多个线程共同操作的同一个数据（变量）
 *    2.同步监视器：由一个类的对象来充当，哪个线程获取些监视器，谁就执行大括号里被同步的代码。俗称：锁
 *    要求：所有的线程必须共用同一把锁。
 *    注：在实现的方式中，考虑同步的话，可以使用this来充当锁，但是在继承的方式中，慎用this
 *    方式二：同步方法
 *    将操作共享数据的方法声明为synchronized.即此方法为同步方法，能保证当其中一个线程执行此方法时，
 *    其它线程在外等待直至此线程执行完此方法
 *    >同步方法的锁：this
 * 4.线程的同步弊端：由于同一个时间只能有一个线程访问共享数据，效率变低了
 */
public class TestTicketSync {


    public static void main(String[] args) {
        /**
         * 用继承thread类的方式创建线程，并实现火车票售票案例
         */
        TicketWindowThread2 twt = new TicketWindowThread2("窗口1");
        TicketWindowThread2 twt2 = new TicketWindowThread2("窗口2");
        TicketWindowThread2 twt3 = new TicketWindowThread2("窗口3");
        twt.start();
        twt2.start();
        twt3.start();

        /*
         * 用实现Runnable接口的方式创建线程，并实现火车票售票案例

        TicketWindowRunnable2 twr = new TicketWindowRunnable2();
        Thread th = new Thread(twr);
        Thread th2 = new Thread(twr);
        Thread th3 = new Thread(twr);
        th.setName("窗口1");
        th2.setName("窗口2");
        th3.setName("窗口3");
        th.start();
        th2.start();
        th3.start();
        */
    }

}

class TicketWindowThread2 extends Thread{

    static int ticketNumber = 0; //共享数据
    static Object obj = new Object(); //共享锁
    @Override
    public void run() {
        while (true){
            /*if(show()){ //错误的写法，正确写法如下：
                break;
            }*/
            synchronized (obj) {
                if(ticketNumber < 100){
                    try {
                        Thread.currentThread().sleep(100);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    System.out.println(Thread.currentThread().getName()+",购买的第:"+ (++ticketNumber) +"张票");
                } else {
                    break;
                }
            }
        }
    }

    public synchronized boolean show(){ //this充当的锁是错误的，只适用于实现Runnable实现的方式
        if(ticketNumber < 100){
            try {
                Thread.currentThread().sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println(Thread.currentThread().getName()+",购买的第:"+ (++ticketNumber) +"张票");
            return false;
        }
        return true;
    }

    public TicketWindowThread2(String name) {
        super(name);
    }
}

class TicketWindowRunnable2 implements Runnable{
    int ticketNumber = 0;//共享数据
    @Override
    public void run() {
        while (true) {
           if(show()){
               break;
           }
        }
    }

    public synchronized boolean show(){
            if(ticketNumber < 100){
                try {
                    Thread.currentThread().sleep(100);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                System.out.println(Thread.currentThread().getName()+",购买的第:"+ (++ticketNumber) +"张票");
                return false;
            }
        return true;
    }

}
