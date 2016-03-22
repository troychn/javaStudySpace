package com.troylc.java.enumeration;

/**
 * Created by Administrator on 2015/3/5.
 */
public class TestSeason {
    public static void main(String[] args) {
       Season spring = Season.SPRING;
        System.out.println(spring);
        spring.show();
        System.out.println(spring.getSeasonName());
    }
}

//自定义枚举类(类型的对象在类中已经确定了个数，如果是一个对象刚是单例模式)
class Season{
    //一但声明为final的属性，就表示为此属性一但赋值后就不能修改
    //1.提供殴打的属性，声明为private final
    private final String seasonName;
    private final String seasonDesc;
    //2.声明为final的属性，在构造器中初始化
    private Season(String seasonName,String seasonDesc) {
        this.seasonDesc = seasonDesc;
        this.seasonName = seasonName;
    }
    //3.通过公共方法来调用属性

    public String getSeasonName() {
        return seasonName;
    }

    public String getSeasonDesc() {
        return seasonDesc;
    }

    //4.创建枚举殴打的对象，将类的对象声明为static final
    public static final Season SPRING = new Season("Spring","春");
    public static final Season SUMMER = new Season("summer","夏");
    public static final Season AUTUMN = new Season("autumn","秋");
    public static final Season WINTER = new Season("winter","冬");

    @Override
    public String toString() {
        return "Season{" +
                "seasonName='" + seasonName + '\'' +
                ", seasonDesc='" + seasonDesc + '\'' +
                '}';
    }

    public void show(){
        System.out.println("这是一个季节！");
    }
}