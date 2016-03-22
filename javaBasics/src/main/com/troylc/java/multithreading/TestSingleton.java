package com.troylc.java.multithreading;

/**
 * Created by Administrator on 2015/3/11.
 */
public class TestSingleton {
    public static void main(String[] args) {
        Singletion s1 = Singletion.getInstance();
        Singletion s2 = Singletion.getInstance();

        System.out.println(s1==s2);
    }
}

/**
 * 关于单例模式懒汉式的线程安全问题，使用同步机制
 * 对于一般的方法内，使用同步代码块，可以考虑使用this充当锁
 * 对于静态方法而言，使用当前类本身对象充当锁
 */
class Singletion{
    private Singletion() {
    }

    private static Singletion instance = null;

    public static Singletion getInstance(){
        if(instance == null){
            synchronized (Singletion.class){ //Singletion.class 其实也是类的一个对象，是Class类对象
                if(instance == null){
                    instance = new Singletion();
                }
            }
        }
        return instance;
    }
}