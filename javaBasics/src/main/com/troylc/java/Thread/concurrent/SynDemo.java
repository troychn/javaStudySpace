package com.troylc.java.Thread.concurrent;

/**
 * 线程同步
 */
public class SynDemo {

    public static void main(String [] args) {
        Data1 d = new Data1();
        new ThreadC(d).start();
        new ThreadC(d).start();
    }

}

class Data1 {
    int i;
    byte [] lock = new byte[0];
    public void process() {
        synchronized (lock) {
            System.out.println("Before: " + i);
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {}
//        synchronized (lock) {
            i++;
//        }
            System.out.println("After: " + i);
        }

    }
}

class ThreadC extends Thread {
    Data1 d;
    public ThreadC(Data1 d) {
        this.d = d;
    }
    public void run() {
        while(true) {
            d.process();
        }
    }
}
