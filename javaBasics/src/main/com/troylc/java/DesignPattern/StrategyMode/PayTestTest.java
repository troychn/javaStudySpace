package com.troylc.java.DesignPattern.StrategyMode;

import org.junit.Test;

/**
 * Created by Administrator on 2015/5/11.
 */
public class PayTestTest {

    @Test
    public void testInvoke() throws Exception {
        PayService payTest = new PayService();
        payTest.invoke(false,"abcpay");
    }
}