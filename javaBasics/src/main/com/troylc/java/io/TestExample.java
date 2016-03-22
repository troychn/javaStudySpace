package com.troylc.java.io;

import org.junit.Test;

import java.io.*;

/**
 * Created by Administrator on 2015/3/9.
 */
public class TestExample {
    /**
     * 使用字节流实现内容的输出
     */
    @Test
    public void test1(){
        BufferedOutputStream bos = null;
        try {
            FileOutputStream fos = new FileOutputStream(new File("hello.txt"));
            bos = new BufferedOutputStream(fos);
            bos.write("使用字节流实现内容的输出使用字节流实现内容的输出\n使用字节流实现内容的输出使用字节流实现内容的输出".getBytes());
            bos.flush();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (bos != null) {
                try {
                    bos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /**
     * 使用字符流实现内容输出
     */
    @Test
    public void test2(){
        BufferedWriter bw = null;
        try {
            bw = new BufferedWriter(new FileWriter("hello.txt"));
            bw.write("使用字符流实现内容输出使用字符流实现内容输出\n使用字符流实现内容输出使用字符流实现内容输出");
            bw.flush();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (bw != null) {
                try {
                    bw.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /**
     * 使用字符流实现内容的读入
     */
    @Test
    public void test3(){
        BufferedReader br = null;
        try {
            br = new BufferedReader(new FileReader("hello.txt"));
            String str;
            while ((str=br.readLine()) != null){
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
     * 使用缓冲字节流实现文件的复制
     */
    @Test
    public void test4(){
        BufferedInputStream bis = null;
        BufferedOutputStream bos = null;
        try {
            bis = new BufferedInputStream(new FileInputStream(new File("hello.txt")));
            bos = new BufferedOutputStream(new FileOutputStream(new File("hello1.txt")));
            byte[] b = new byte[1024];
            int len;
            while ((len = bis.read(b)) != -1){
                bos.write(b,0,len);
                bos.flush();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
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
