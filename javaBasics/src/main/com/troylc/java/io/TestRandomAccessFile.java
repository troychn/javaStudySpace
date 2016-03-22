package com.troylc.java.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

import org.junit.Test;

/*
 * RandomAccessFile:支持随机访问
 * 1.既可以充当一个输入流，有可以充当一个输出流
 * 2.支持从文件的开头读取、写入
 * 3.支持从任意位置的读取、写入（插入）
 */
public class TestRandomAccessFile {
    //相较于test3，更通用
    @Test
    public void test4(){
        RandomAccessFile raf = null;
        try {
            raf = new RandomAccessFile(new File("hello1.txt"),"rw");

            raf.seek(4);
            byte[] b = new byte[10];
            int len;
            StringBuffer sb = new StringBuffer();
            while((len = raf.read(b)) != -1){
                sb.append(new String(b,0,len));
            }
            raf.seek(4);
            raf.write("xy".getBytes());
            raf.write(sb.toString().getBytes());
        }catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            if(raf != null){
                try {
                    raf.close();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }
        }
    }

    //实现插入的效果：在d字符后面插入“xy”
    @Test
    public void test3(){
        RandomAccessFile raf = null;
        try {
            raf = new RandomAccessFile(new File("hello1.txt"),"rw");

            raf.seek(4);
            String str = raf.readLine();//efg123456
//			long l = raf.getFilePointer();
//			System.out.println(l);

            raf.seek(4);
            raf.write("xy".getBytes());
            raf.write(str.getBytes());
        }catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            if(raf != null){
                try {
                    raf.close();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }
        }
    }

    //实现的实际上是覆盖的效果
    @Test
    public void test2(){
        RandomAccessFile raf = null;
        try {
            raf = new RandomAccessFile(new File("hello1.txt"),"rw");

            raf.seek(4); //设置从那个位置开始写入
            raf.write("xy".getBytes());
        }catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            if(raf != null){
                try {
                    raf.close();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }
        }
    }

    //进行文件的读、写
    @Test
    public void test1(){
        RandomAccessFile raf1 = null;
        RandomAccessFile raf2 = null;
        try {
            raf1 = new RandomAccessFile(new File("hello.txt"), "r");
            raf2 = new RandomAccessFile(new File("hello1.txt"),"rw");

            byte[] b = new byte[20];
            int len;
            while((len = raf1.read(b)) != -1){
                raf2.write(b, 0, len);
            }
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            if(raf2 != null){
                try {
                    raf2.close();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            if(raf1 != null){
                try {
                    raf1.close();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }
        }
    }
}
