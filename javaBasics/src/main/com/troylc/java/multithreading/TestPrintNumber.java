package com.troylc.java.multithreading;

/**
 * Created by Administrator on 2015/3/12.
 * 线程通信。如下的三个关键字使用的话，都得在同步代码块或同步方法中。
 * wait():一旦一个线程执行到wait()，就释放当前的锁。
 * notify()/notifyAll():唤醒wait的一个或所有的线程
 * * Java.lang.Object提供的这三个方法只有在synchronized方法或synchronized代码块中才能使用，
 * 否则会报java.lang.IllegalMonitorStateException异常
 *
 *
 * 使用两个线程打印 1-100. 线程1, 线程2 交替打印
 */
public class TestPrintNumber {

    public static void main(String[] args) {
        PrintNum pn = new PrintNum();
        Thread t1 = new Thread(pn);
        Thread t2 = new Thread(pn);
        t1.setName("线程1--->");
        t2.setName("线程2--->");

        t1.start();
        t2.start();
    }
}

class PrintNum implements Runnable{

    int number;

    @Override
    public void run() {
        while (true){
            synchronized (this) {
                notify();
                if(number < 100){
                    try {
                        Thread.currentThread().sleep(100);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    System.out.println(Thread.currentThread().getName()+":"+(++number));
                } else {
                    break;
                }
                try {
                    wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
