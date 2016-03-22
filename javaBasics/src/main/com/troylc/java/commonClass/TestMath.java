package com.troylc.java.commonClass;

import org.junit.Test;

import java.math.BigDecimal;
import java.math.BigInteger;

/**
 * Created by Administrator on 2015/3/13.
 */
public class TestMath {
    /**
     * java.lang.Math提供了一系列静态方法用于科学计算；其方法的参数和返回值类型一般为double型。
     abs     绝对值
     acos,asin,atan,cos,sin,tan  三角函数
     sqrt     平方根
     pow(double a,doble b)     a的b次幂
     log    自然对数
     exp    e为底指数
     max(double a,double b)
     min(double a,double b)
     random()      返回0.0到1.0的随机数
     long round(double a)     double型数据a转换为long型（四舍五入）
     toDegrees(double angrad)     弧度—>角度
     toRadians(double angdeg)     角度—>弧度
     */
    @Test
    public void testMath(){
        double i = Math.random();
        System.out.println(i);
    }

    /**
     * 构造器
     public BigDecimal(double val)
     public BigDecimal(String val)
     常用方法
     public BigDecimal add(BigDecimal augend)
     public BigDecimal subtract(BigDecimal subtrahend)
     public BigDecimal multiply(BigDecimal multiplicand)
     public BigDecimal divide(BigDecimal divisor, int scale, int roundingMode)
     */
    public void testBigDecimal(){
        BigInteger bi = new BigInteger("12433241123");
        BigDecimal bd = new BigDecimal("12435.351");
        BigDecimal bd2 = new BigDecimal("11");
        System.out.println(bi);
        // System.out.println(bd.divide(bd2));
        System.out.println(bd.divide(bd2, BigDecimal.ROUND_HALF_UP));
        System.out.println(bd.divide(bd2, 15, BigDecimal.ROUND_HALF_UP));

    }


}
