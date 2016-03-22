package com.troylc.java.io;

import org.junit.Test;

import java.io.*;

/**
 * Created by Administrator on 2015/3/8.
 * 转换流 InputStreamReader OutPutStreamWriter
 * 编码：字符串－－－>〈字节数组〉
 * 解码：字节数组－－－ >字符串
 */
public class TestOtherStream {

    /**
     * 标准的输入输出流
     * 标准的输出流：System.out
     * 标准的输入流：System.in
     */
    @Test
    public void test2(){
        BufferedReader br = null;
        try {
            InputStream is = System.in;
            InputStreamReader isr = new InputStreamReader(is);
            br = new BufferedReader(isr);
            String str;
            while (true){
                System.out.println("请输入字符串：");
                str = br.readLine();
                if(str.equalsIgnoreCase("e") || str.equalsIgnoreCase("exit")){
                    break;
                }
                String str1 = str.toUpperCase();
                System.out.println(str1);
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
     * 如何实现字节流与字符流之间的转换
     * 转换流 InputStreamReader OutPutStreamWriter
     * 编码：字符串－－－>〈字节数组〉
     * 解码：字节数组－－－ >字符串
     */
    @Test
    public void test1(){
        BufferedReader br = null;
        BufferedWriter bw = null;
        try {
            //解码
            File file = new File("hello.txt");
            FileInputStream fis = new FileInputStream(file);
            InputStreamReader isr = new InputStreamReader(fis,"GBK");
            br = new BufferedReader(isr);
            //编码
            File file1 = new File("hello1.txt");
            FileOutputStream fos = new FileOutputStream(file1);
            OutputStreamWriter osw = new OutputStreamWriter(fos,"GBK");
            bw = new BufferedWriter(osw);

            String str;
            while((str = br.readLine()) != null){
                bw.write(str);
                bw.newLine();
                bw.flush();
            }
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
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
