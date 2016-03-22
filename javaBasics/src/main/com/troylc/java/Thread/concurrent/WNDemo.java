package com.troylc.java.Thread.concurrent;

/**
 * 线程间通信，通过wait()与notifyall()、notify()
 */
public class WNDemo {

    public static void main(String [] args) {
        Data2 d = new Data2();
        new Producer(d).start();
        new Consumer(d).start();
    }

}

class Data2 {
    int i;

    public void add() {
        synchronized (this) {
            i++;
            if (i % 5 == 0)
                notifyAll();
        }
    }

    public void sub() {
        synchronized (this) {
            try {
                this.wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            System.out.println("Before: " + i);
            i -= 5;
            System.out.println("After: " + i);
        }
    }

}

class Consumer extends Thread {
    Data2 data2;
    public Consumer(Data2 data2) {
        this.data2 = data2;
    }
    public void run() {
        while (true)    data2.sub();
    }
}

class Producer extends Thread {
    Data2 data2;
    public Producer(Data2 data2) {
        this.data2 = data2;
    }
    public void run() {
        while (true)    data2.add();
    }
}
