package com.troylc.java.multithreading;

/**
 * Created by Administrator on 2015/3/11.
 * 创建线程两种方式的对比
 * 两者之间的联系：都是实现Runnable接口
 * 两种方式那种比较好？实现Runnable接口的方式好。为什么？
 *    1.解决了单继承的局限性
 *    2.如果多个线程共享数据的话，建议使用实现的方式，同时，共享数据所在的类可以作为Runnable接口的实现类
 *
 * 银行有一个账户
 * 有两储户分别向同一个账号存3000无，每次存1000，存3次，每次存完打印账户余额
 */
public class TestBankAccount {
    public static void main(String[] args) {
//        Account account = new Account();
//        Depositor dep = new Depositor(account);
//        Thread th = new Thread(dep);
//        Thread th2 = new Thread(dep);
//        th.setName("储户一");
//        th2.setName("储户二");
//        th.start();
//        th2.start();
        Account account = new Account();
        Customer ct = new Customer("客户一",account);
        Customer ct2 = new Customer("客户二",account);
        ct.start();
        ct2.start();
    }
}

class Account{
    double money;

    public synchronized void saveMoney(double m){
        money += m;
        System.out.println(Thread.currentThread().getName()+":"+money);
        try {
            Thread.currentThread().sleep(10);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}

/**
 * 用实现Runnable接口方式
 */
class Depositor implements Runnable{

    Account account;

    public Depositor(Account account) {
        this.account = account;
    }

    @Override
    public void run() {
        for (int i = 0; i < 3; i++) {
            account.saveMoney(1000);
        }
    }
}

/**
 * 用继承方式实现线程
 */
class Customer extends Thread{
    Account account;

    public Customer(String name, Account account) {
        super(name);
        this.account = account;
    }

    @Override
    public void run() {
        for (int i = 0; i < 3; i++) {
            account.saveMoney(1000);
        }
    }
}