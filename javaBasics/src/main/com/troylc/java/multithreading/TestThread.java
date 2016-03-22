package com.troylc.java.multithreading;

/**
 * Created by Administrator on 2015/3/10.
 * 程序可以理解为静态的代码
 * 进程可以理解为执行中的程序
 * 线程可以理解为进程的进一步细分，程序的一条执行路径。
 *
 * 创建一个子线程，完成1－100之间的自然输出，同样，主线程执行同样的操作
 * 1.创建多线路的第一种方式，继承java.lang.thread类
 */
public class TestThread {
    public static void main(String[] args) {
        //3.创建一个继承thread的子类的对象
        SubThread subThread = new SubThread();
        //4.调用线程的start(),启动此线程；调用相应的run的方法;一个线程只能够执行一次start方法
        subThread.start();
//        subThread.run(); //不能执线程对象的run方法，这样相当于主线程在操作。

        for (int i = 0; i <= 100; i++) {
            System.out.println(Thread.currentThread().getName()+":"+i);
        }
    }
}


/**
 * 1.创建一个继承于thread的子类
 */
class SubThread extends Thread{

    /**
     * 2.重写threak类的run()方法，方法内实现此子线程要完成的功能
     */
    @Override
    public void run() {
        for (int i = 0; i <= 100; i++) {
            System.out.println(Thread.currentThread().getName()+":"+i);
        }
    }
}
