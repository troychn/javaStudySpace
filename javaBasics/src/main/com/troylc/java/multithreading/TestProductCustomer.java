package com.troylc.java.multithreading;

/**
 * Created by Administrator on 2015/3/12.
 * 线程通信
 * wait() 与 notify() 和 notifyAll()
 * wait()：令当前线程挂起并放弃CPU、同步资源，使别的线程可访问并修改共享资源，而当前线程排队等候再次对资源的访问
 * notify()：唤醒正在排队等待同步资源的线程中优先级最高者结束等待
 * notifyAll ()：唤醒正在排队等待资源的所有线程结束等待.
 * Java.lang.Object提供的这三个方法只有在synchronized方法或synchronized代码块中才能使用，
 * 否则会报java.lang.IllegalMonitorStateException异常

 *
 * * 生产者/消费者问题
 * 生产者(Productor)将产品交给店员(Clerk)，而消费者(Customer)从店员处取走产品，
 * 店员一次只能持有固定数量的产品(比如:20），如果生产者试图生产更多的产品，店员会叫生产者停一下，
 * 如果店中有空位放产品了再通知生产者继续生产；如果店中没有产品了，店员会告诉消费者等一下，
 * 如果店中有产品了再通知消费者来取走产品。

     分析：
     1.是否涉及到多线程的问题？是！生产者、消费者
     2.是否涉及到共享数据？有！考虑线程的安全
     3.此共享数据是谁？即为产品的数量
     4.是否涉及到线程的通信呢？存在这生产者与消费者的通信

 */
public class TestProductCustomer {
    public static void main(String[] args) {
        Clerk clerk = new Clerk();
        Productor pd = new Productor(clerk);
        consume cs = new consume(clerk);
        Thread pdthread = new Thread(pd);
        Thread csthread = new Thread(cs);

        pdthread.setName("生产者");
        csthread.setName("消费者");

        pdthread.start();
        csthread.start();

    }
}

class Clerk{
    int productNum;

    /**
     * 向生产者进货
     */
    public synchronized void Purchase(){
        if (productNum >= 20){
            try {
                wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        } else {
            productNum++;
            System.out.println(Thread.currentThread().getName()+":生产了第"+productNum+"个商品");
            notifyAll();
        }

    }

    /**
     *  销售产品
     */
    public synchronized void sale(){
        if (productNum <= 0){
            try {
                wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println(Thread.currentThread().getName()+":消费了第"+productNum+"个产品");
            productNum--;
            notify();
        }

    }
}

class Productor implements Runnable{
    Clerk clerk;

    public Productor(Clerk clerk) {
        this.clerk = clerk;
    }

    @Override
    public void run() {
        while (true){
            try {
                Thread.currentThread().sleep(10);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            clerk.Purchase();
        }
    }
}

class consume implements Runnable{
    Clerk clerk;

    public consume(Clerk clerk) {
        this.clerk = clerk;
    }

    @Override
    public void run() {
        while (true){
            try {
                Thread.currentThread().sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            clerk.sale();
        }
    }
}


