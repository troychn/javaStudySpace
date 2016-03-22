package com.troylc.java.DesignPattern.StrategyMode;

/**
 * 支付接口
 * Created by Administrator on 2015/5/11.
 */
public interface PayStrategy {


    /**
     * 支付策略方法
     * @param payTest
     * @return
     */
    public String pay(PayService payTest, String flag);
}
