package com.troylc.java.io;

import org.junit.Test;

import java.io.*;

/**
 * Created by Administrator on 2015/3/8.
 * 1.流的分类
 * 按照数据流向的不同：输入流 输出流
 * 按照处理数据的单位不同分：字节流 字符流（处理的文本文件）
 * 按照角色的不同分：节点流（直接作用于文件的） 处理流
 *
 *
 * 2.IO的体系
 * 四个抽象基类   -------->节点流（文件流）                 缓冲流（处理流的一种,可以提升文件操作的效率）
 * InputStream          FileInputStream(处理字节）       BufferedInputStream
 * OutputStream         FileOutputStream(处理字节）      BufferedOutputStream (flush())
 * Reader               FileReader（处理字符）           BufferedReader (readLine()读一行)
 * Writer               FileWriter （处理字符）          BufferedWriter (flush())
 */
public class TestBuffered {

    @Test
    public void testBufferedReader(){
        BufferedReader br = null;
        try {
            File file = new File("hello.txt");
            FileReader fr = new FileReader(file);
            br = new BufferedReader(fr);

        /*char[] c = new char[1024];
        int len;
        while ((len = br.read(c)) != -1){
            String str = new String(c,0,len);
            System.out.println(str);
        }*/
            String str;
            while ((str = br.readLine()) != null) {
                System.out.println(str);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }


    }


    /**
     * 使用BufferedInputStream和BufferedOutputStream实现非文本文件的复制
     */
    @Test
    public void testBufferedInputOutputStream(){

        BufferedInputStream bis = null;
        BufferedOutputStream bos = null;
        try {
            //1.提供读取、写出的文件
            File fileInput = new File("1.jpg");
            File fileOutput = new File("2.jpg");

            //2.先创建相应的节点流FileInputStream、FileOutputStream
            FileInputStream fis = new FileInputStream(fileInput);
            FileOutputStream fos = new FileOutputStream(fileOutput);

            //3.将创建的节点流的对象作为形参传递给缓冲流构造器中

            bis =  new BufferedInputStream(fis);
            bos = new BufferedOutputStream(fos);

            //4.具体的实现文件复制的操作

            byte[] b = new byte[1024];
            int len;
            while ((len = bis.read(b)) != -1){
                bos.write(b,0,len);
                bos.flush();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //5.关闭相应的流
            if (bos != null) {
                try {
                    bos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (bis != null) {
                try {
                    bis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

    }
}
