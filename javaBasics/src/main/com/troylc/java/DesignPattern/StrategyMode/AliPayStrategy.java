package com.troylc.java.DesignPattern.StrategyMode;

/**
 * Created by Administrator on 2015/5/11.
 */
public class AliPayStrategy implements PayStrategy
{
    protected final String DEFAULT_ALI = "alipay";
    /**
     * 支付策略方法
     *
     * @param payTest
     * @return
     */
    @Override
    public String pay(PayService payTest, String flag) {

        if(DEFAULT_ALI.equals(flag)){
            System.out.println("阿里支付。。。");
            return payTest.invoke(true, flag);
        }
        return payTest.invoke(false,flag);
    }
}
