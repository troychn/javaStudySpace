package com.troylc.java.commonClass;

import org.junit.Test;

import javax.sound.midi.Soundbank;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Administrator on 2015/3/12.
 * 与时间相关的类：
 * System System.currentTimeMillis()返回当前时间与1970年1月1日0时0分0秒之间以毫秒为单位的时间差。
 * Date  java.util.Date,
 *       java.sql.Date(为前者的子类）
 * java.text.SimpleDateFormat 类是一个不与语言环境有关的方式来格式化和解析日期的具体类
 * java.util.Calendar 日历
 */
public class TestDateClass {

    /**
     * 日历 Calendar get()/add()/getTime()/set()
     */
    @Test
    public void test4(){
        Calendar c = Calendar.getInstance();
        int day = c.get(Calendar.DAY_OF_MONTH);
        System.out.println(day);

        c.add(Calendar.DAY_OF_MONTH,2);
        day = c.get(Calendar.DAY_OF_MONTH);
        System.out.println(day);

        c.set(Calendar.DAY_OF_MONTH,23);
        Date d = c.getTime();
        System.out.println(d);
    }


    /**
     * 三天打渔两天晒网  1990－01－01 xxxx-xx-xx 是打渔？晒网？
     */
    @Test
    public void test3(){
        String str1 = "1990-01-01";
        String str2 = "1990-01-06";
        int dates = getDays(str1,str2);
        if(dates % 5 == 0 || dates % 5 ==4){
            System.out.println("晒网");
        } else {
            System.out.println("打渔");
        }
    }
    /**
     * @param data1
     * @param data2
     * @return 返加data1与data2之间的天数,data1早于data2
     */
    public int getDays(String data1,String data2){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date d1 = sdf.parse(data1);
            Date d2 = sdf.parse(data2);
            long millisTime = d2.getTime()-d1.getTime();
            return (int)millisTime/1000/3600/24 + 1;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return 0;
    }

    /**
     * 易于国际化
     * 格式化：日期--->文本
     * 解析：文本--->日期
     */
    @Test
    public void testSimpleDateFormat(){
        //1.格式化一
        SimpleDateFormat sdf = new SimpleDateFormat();
        String date = sdf.format(new Date()); //相当于把Date类型转换为字符串 为日期格式化
        System.out.println(date);//15-3-13 下午4:28
        //2.格式化二
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        date = simpleDateFormat.format(new Date());
        System.out.println(date);
        //3解析
        try {
            Date date1 = sdf.parse("15-3-13 下午4:28");
            System.out.println(date1);

            Date date2 = simpleDateFormat.parse("2015-03-13 04:38:58");
            System.out.println(date2);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testDate(){
        //创建一个Date的实例
        Date date = new Date();
        System.out.println(date); //Fri Mar 13 16:20:16 CST 2015
        System.out.println(date.getTime());
        java.sql.Date d2 = new java.sql.Date(1426235014847l);
        System.out.println(d2);
    }
}
