package com.troylc.java.DesignPattern.StrategyMode;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Administrator on 2015/5/11.
 */
public class PayService {

    protected static List<PayStrategy> pays;

    static {
        pays = new ArrayList<PayStrategy>();
        PayStrategy aliPay = new AliPayStrategy();
        PayStrategy abcPay = new AbcPayStrategy();
        pays.add(aliPay);
        pays.add(abcPay);
    }

    protected Iterator<PayStrategy> iterator = pays.iterator();

    public String invoke(boolean flag,String payType){
        if (!flag){
            if (iterator.hasNext()) {
                PayStrategy payStrategy = iterator.next();
                payStrategy.pay(PayService.this, payType);
            }
        }

        return "";
    }
}
