package com.troylc.java.ds;

import org.junit.Test;

import java.util.Scanner;

/**
 * Created by Administrator on 2015/5/20.
 */
public class TestDs {




    /**
     * 100以内所有质数的输出。(嵌套循环)
     */
    @Test
    public void test3(){
        int i, n, k = 0;
        for (n = 2; n <= 100; n++) { //1~100的所有数
            i = 2;
            while (i < n) {
                if (n % i == 0) break;  //若能整除说明n不是素数，跳出当前循环
                i++;
            }
            if (i == n) {     //如果i==n则说明n不能被2~n-1整除，是素数
                k++;             //统计输出数的个数
                System.out.print(i + "\t ");
                if (k % 6 == 0)    //每输出5个则换行
                    System.out.println();
            }
        }
        System.out.println("------------------------------");
        int y = 0;
        for(i = 2; i <= 100; i++){ // 质数
            for (k = 2; k <= i; k++) { // 除数
                // 排除所有在 i=k 之前 能被k整除(余数为0)的数
                if (i % k == 0 && i != k) {
                    break;
                }
                // 输出所有在 i=k 且 i%k=0的数
                if (i % k == 0 && i == k) {
                    System.out.print(i + "\t ");
                    y++;
                    if (y % 6 == 0)    //每输出5个则换行
                        System.out.println();
                }
            }
        }

    }

    /**
     * 从键盘读入个数不确定的整数，并判断读入的正数和负数的个数，输入为0时结束程序
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        //标记正数的个数
        int x = 0;
        //标记负数的个数
        int y = 0;
        while (true) {
            int b = scanner.nextInt();
            if (b > 0) {
                x++;
            } else if (b < 0) {
                y++;
            } else {
                //退出循环使用 break 语句.
                break;
            }
        }
        System.out.println("正数的个数x="+x);
        System.out.println("负数的个数y="+y);
    }

    /**
     * 求1到100之间所有偶数的和。用for和while语句分别完成。
     */
    @Test
    public void test2(){
        int resuletNum1=0;
        for (int i = 0; i <= 100; i++) {
            if(i % 2 == 0){
                resuletNum1 +=i;
                System.out.print(i + ",");
            }
        }
        System.out.print("=" + resuletNum1);
        System.out.println("------------------------------");
        int resuletNum2 = 0;
        int x = 0;
        while (x <= 100) {
            if (x % 2 == 0) {
                resuletNum2 += x;
                System.out.print(x + ",");
            }
            x++;
        }
        System.out.print("=" + resuletNum2);
    }

    /**
     * 编写程序：从键盘上读入一个学生成绩，存放在变量score中，根据score的值输出其对应的成绩等级：
     score>=90        等级：A
     70=<score<90     等级: B
     60<=score<70     等级: C
     score<60         等级：D
     */
    @Test
    public void test1(){
        //Scanner scanner = new Scanner(System.in);
        //String str = scanner.next();
        int score = 80 ;//Integer.valueOf(str);
        char level;
        if (score >= 90)
            level = 'A';
        else if (score >= 70)
            level = 'B';
        else if (score >= 60)
            level = 'C';
        else
            level = 'D';
        System.out.println("等级为：" + level);
    }

}
