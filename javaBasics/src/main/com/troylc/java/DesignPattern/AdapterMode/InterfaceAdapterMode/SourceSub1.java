package com.troylc.java.DesignPattern.AdapterMode.InterfaceAdapterMode;

/**
 * Created by Administrator on 2015/7/24.
 */
public class SourceSub1 extends Wrapper2 {
    @Override
    public void method1() {
        System.out.println("111111111111111SourceSub11111111111111111");
    }

    @Override
    public void method3() {

    }


    public static int js(int i,int y){
        int desc = 0;
        try {
            desc = i / y;
            return desc;
        }catch (Exception e){
            e.printStackTrace();
            return -1;
        }finally {
            return -2;
        }
    }

    public static void main(String[] args) {
        System.out.println(js(1,2));
        System.out.println(js(10,5));
        System.out.println(js(1,0));
    }
}
