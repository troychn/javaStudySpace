package com.troylc.java.io;

import org.junit.Test;

import java.io.*;

/**
 * Created by Administrator on 2015/3/6.
 * 1.流的分类
 * 按照数据流向的不同：输入流 输出流
 * 按照处理数据的单位不同分：字节流 字符流（处理的文本文件）
 * 按照角色的不同分：节点流（直接作用于文件的） 处理流
 *
 *
 * 2.IO的体系
 * 四个抽象基类   -------->节点流（文件流）                 缓冲流（处理流的一种）
 * InputStream          FileInputStream(处理字节）       BufferedInputStream
 * OutputStream         FileOutputStream(处理字节）      BufferedOutputStream
 * Reader               FileReader（处理字符）           BufferedReader
 * Writer               FileWriter （处理字符）          BufferedWriter
 */
public class TestFileInputOutputStream {

    /**
     * 实现文件的复制方法
     * @param inputPath 源文件路径
     * @param outputPath 目标文件路径
     */
    public static void copyFile(String inputPath,String outputPath){
        //1.提供读入、写出的文件
        File fileReader = new File(inputPath);
        File fileWriter = new File(outputPath);
        //2.提供相应的流
        FileInputStream fis = null;
        FileOutputStream fos = null;
        try {
            fis = new FileInputStream(fileReader);
            fos = new FileOutputStream(fileWriter);
            //3.实现文件的复制
            byte[] b = new byte[20];
            int len;
            while ((len=fis.read(b)) != -1){
//                fos.write(b);错误的 fos.write(b,0,b.length()
                fos.write(b,0,len);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }finally {
                    if (fis != null) {
                        try {
                            fis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    /**
     * 从硬盘赢取一个文件，并写入到别一个位置（相当于文件的复制）
     */
    @Test
    public void TestFileInputOutputStream(){
        //1.提供读入、写出的文件
        File fileReader = new File("hello.txt");
        File fileWriter = new File("hello2.txt");
        //2.提供相应的流
        FileInputStream fis = null;
        FileOutputStream fos = null;
        try {
            fis = new FileInputStream(fileReader);
            fos = new FileOutputStream(fileWriter);
            //3.实现文件的复制
            byte[] b = new byte[20];
            int len;
            while ((len=fis.read(b)) != -1){
//                fos.write(b);错误的 fos.write(b,0,b.length()
                fos.write(b,0,len);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }finally {
                    if (fis != null) {
                        try {
                            fis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }


    @Test
    public void testFileOutputStream(){
        //1.创建一个File对象，表明要写入的文件位置
        //输出的物理文件可以不存在，当执行过程中，若不存在，会自动创建；若存在，会将原有的文件覆盖。
        File file = new File("hello.txt");
        //2.创建一个FileOutputStream的对象，将file的对象作为形参传递给FileOutputStream的构造器中
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(file);
            //3.写入的操作
            fos.write(new String("I love china I love the World!").getBytes());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (fos != null) {
                try {
                    //4.关闭流
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Test
    public void testFileInputStream3(){
        File file = new File("hello.txt");
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            byte[] b = new byte[20]; //读取到的数据要写入的数组
            int len;//每次读入到 byte中的字节的长度
            while ((len=fileInputStream.read(b)) != -1){
                for (int i = 0; i < len; i++) {
                    System.out.println((char)b[i]);
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //4.关闭相应的流
            try {
                fileInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    /**
     * 使用try-catch的方式处理如下的异常更合理,保证流的关闭操作一定可以执行
     */
    @Test
    public void testFileInputStream2(){
        //1.创建一个File类的对象
        File file = new File("hello.txt");
        //2.创建一个FileInputStream殴打的对象
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            //3.调用FileInputStream的方法，实现file文件的读取
        /*
          read() 读取文件的一个字节。当执行到文件结尾时，返回 -1
         */
            int a;
            while ((a = fileInputStream.read()) != -1){
                System.out.print((char)a);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //4.关闭相应的流
            try {
                fileInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }


    }

    /**
     * 从硬盘存在的一个文件中，读取其内容到程序中，使用FileInputStream
     * 要读取的文件一定要存在，否则会抛出FileNotFoundException
     */
    @Test
    public void testFileInputStream() throws Exception {
        //1.创建一个File类的对象
        File file = new File("hello.txt");
        //2.创建一个FileInputStream殴打的对象
        FileInputStream fileInputStream = new FileInputStream(file);
        //3.调用FileInputStream的方法，实现file文件的读取
        /*
          read() 读取文件的一个字节。当执行到文件结尾时，返回 -1
         */
        int b = fileInputStream.read();
        while (b != -1) {
            System.out.print((char) b);
            b = fileInputStream.read();
        }
        System.out.println("=====================");
        int a;
        while ((a = fileInputStream.read()) != -1){
            System.out.print((char)a);
        }
        //4.关闭相应的流
        fileInputStream.close();
    }
}
