package com.troylc.java.multithreading;

/**
    * Created by Administrator on 2015/3/10.
    * 创建一个子线程，完成1－100之间的自然输出，同样，主线程执行同样的操作
    * 1.创建多线路的第一种方式，继承java.lang.thread类
    */
public class TestThreadMethod {
    public static void main(String[] args) {
        //3.创建一个继承thread的子类的对象
        SubThreadm subThreadm = new SubThreadm();
        subThreadm.setName("子线程");
        //4.调用线程的start(),启动此线程；调用相应的run的方法;一个线程只能够执行一次start方法
        subThreadm.setPriority(Thread.MAX_PRIORITY);
        subThreadm.start();
//        subThread.run(); //不能执线程对象的run方法，这样相当于主线程在操作。
        Thread.currentThread().setName("----------->主线程");
        for (int i = 0; i <= 100; i++) {
            System.out.println(Thread.currentThread().getName()+":"+ Thread.currentThread().getPriority()+"--->"+i);
//            if (i % 10 == 0){
//                Thread.currentThread().yield();
//            }
           /* if (i == 20){
                try {
                    subThreadm.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }*/
        }
        System.out.println(subThreadm.isAlive());
    }
}


/**
 * thread的常用方法：
 * 1. start():启动线程并执行相应的的run()
 * 2. run():子线程要执行的代码放入run（）方法中
 * 3.currentThread()静态的，调取当前的线程
 * 4.getName():获取此线程的名称
 * 5.setName():设置子线程的名称
 * 6.yield();调用此方法的线程释放当前CPU的执行权
 * 7.join():在A线程中调用B线程的join方法，表示当执行到此方法，A线程停止执行，直至B线程执行完毕，A线程再接着join()之后的代码执行。
 * 8.isAlive()判断当前线程是否存活
 * 9.sleep(long l):显式的让当前线程睡眠l毫秒
 * 10.线程通信：wait() notify() notifyAll()
 *
 * 设置线程的优先级：
 * getPriority(): 返回线程的优先级
 * setPriority(int newPriority):改变线程的优先级 说明此线程抢到的CPU资源概率大，并不是要等着此线程执行完才能执行其它的线程
 */
class SubThreadm extends Thread{

    /**
     * 2.重写threak类的run()方法，方法内实现此子线程要完成的功能
     */
    @Override
    public void run() {
        for (int i = 0; i <= 100; i++) {
           /* try {
                Thread.currentThread().sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }*/
            System.out.println(Thread.currentThread().getName()+":"+ Thread.currentThread().getPriority()+"--->"+i);
        }
    }
}