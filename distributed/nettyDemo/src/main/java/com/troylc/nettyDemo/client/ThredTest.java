package com.troylc.nettyDemo.client;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.*;

/**
 * 有返回值的线程
 */
@SuppressWarnings("unchecked")
public class ThredTest {
    public static void main(String[] args) throws ExecutionException,
            InterruptedException {
        System.out.println("----程序开始运行----");
        Date date1 = new Date();

        int taskSize = 1000;
        // 创建一个线程池
        ExecutorService pool = Executors.newFixedThreadPool(taskSize);
        // 创建多个有返回值的任务
        List<Future> list = new ArrayList<Future>();
        for (int i = 0; i < taskSize; i++) {
            Callable c = new MyCallable(i + " ");
            // 执行任务并获取Future对象
            Future f = pool.submit(c);
            // System.out.println(">>>" + f.get().toString());
            list.add(f);
        }
        // 关闭线程池
        pool.shutdown();

        // 获取所有并发任务的运行结果
        for (Future f : list) {
            // 从Future对象上获取任务的返回值，并输出到控制台
            System.out.println("线程 " + f.get().toString());
        }

        Date date2 = new Date();
        System.out.println("----程序结束运行----，程序运行时间【" + (date2.getTime() - date1.getTime()) + "毫秒】");
    }
}

class MyCallable implements Callable<Object> {
    private String taskNum;

    MyCallable(String taskNum) {
        this.taskNum = taskNum;
    }

    public Object call() throws Exception {
        System.out.println("线程" + taskNum + "任务启动");
        Date dateTmp1 = new Date();

        String httpsUrl = "http://192.168.72.185:8091/nettyDemo-netty/";
        //String httpsUrl = "http://localhost:8090/dmpservice-netty/";
        // 传输文本

        //for (int j = 0; j < 10; j++) {
            for (int i = 0; i < HttpsPostNetty.serialnos.length; i++) {
                String serialno = HttpsPostNetty.serialnos[i]+taskNum;
                // 发起请求  测试设备上报
                long currentTime = System.currentTimeMillis();
                int code = HttpsPostNetty.post(httpsUrl, HttpsPostNetty.AssembleXML(serialno, i + ""), serialno, "3.3" +
                        ".020.043" +
                        ".1_D8049_" + i, "0");
                //System.out.println("-netty---第" + j + "次循环的第" + i + "次上报--" + serialnos[i] + "-----用时：" + (System
                //        .currentTimeMillis() -currentTime));
                //if(i == 2) break;
    }
        //}
        Date dateTmp2 = new Date();
        long time = dateTmp2.getTime() - dateTmp1.getTime();
        //System.out.println("-----------------" + taskNum + "任务终止");
        return taskNum + "任务终止---任务返回运行结果,当前任务时间【" + time + "毫秒】";
    }
}