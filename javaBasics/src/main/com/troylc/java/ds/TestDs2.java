package com.troylc.java.ds;

import org.junit.Test;

import java.util.Scanner;

/**
 * Created by Administrator on 2015/5/20.
 * //金额转换，阿拉伯数字的金额转换成中国传统的形式。
 //如：105600123 => 壹亿零仟伍佰陆拾零万零仟壹佰贰拾叁圆整
 */
public class TestDs2 {

    private static final char[] units = new char[]{'圆', '拾', '佰', '仟', '万', '拾',
            '佰', '仟', '亿', '拾','佰', '仟', '亿'};
    private static final char[] data = new char[]{'零', '壹', '贰', '叁', '肆', '伍',
            '陆', '柒', '捌', '玖'};

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.println("请输入金额");
        int money = s.nextInt();

        String strMoney = convert(money);
        System.out.println(strMoney);
    }

    public static String convert(int money) {
        StringBuffer sb = new StringBuffer("整");
        int init = 0;
        while (money != 0) {
            sb.insert(0, units[init++]);
            int number = money % 10;
            sb.insert(0, data[number]);
            money /= 10;
        }

        return sb.toString();
    }

    /**
     * 创建一个长度为6的int型数组，要求取值为1-30，同时元素值各不相同  [1,30]   拓展：34-102;
     * (数据类型)(最小值+Math.random()*(最大值-最小值+1))
     * (int)(Math.random()*30) + 1;
     * While(true){...}
     */
    @Test
    public void test(){
        int[] num = new int[6];
        int i = 0;
        while (true){
            if (i >= 6) {
                break;
            }
            int temp =(int)(Math.random() * (102-34+1)) + 34;
            for (int j = 0; j <= i; j++) {
                if(temp == num[j]){
                    temp= (int) (Math.random() * (102 - 34 +1)) + 34;
                    j = 0;
                }
                if(j == i){
                    num[i] = temp;
                }
            }
            System.out.println(num[i]);
            i++;
        }

       /* for (int j = 0; j < num.length; j++) {
            num[j] = random(num);
            System.out.println(num[j]);
        }*/
    }

    /**
     * 根据数组产生不同数组于中元素的随机数
     * @param num
     * @return
     */
    private int random(int[] num){
        int i = 0;
        int resulet = 0;
        while (true){
            int temp = (int) (Math.random() * (102 - 34)) + 34;
            if (i >= num.length) {
                resulet = temp;
                break;
            }
            if(temp == num[i]){
                temp = (int) (Math.random() * (102 - 34)) + 34;
            }
            i++;
        }
        return resulet;
    }

}
