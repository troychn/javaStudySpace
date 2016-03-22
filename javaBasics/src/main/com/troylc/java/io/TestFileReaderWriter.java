package com.troylc.java.io;

import org.junit.Test;

import javax.swing.*;
import java.io.*;

/**
 * 使用FileReader、FileWriter可以实现文本文件的复制
 * 对于非文本文件（视频文件，音频文件，图片）,只能使用字节流！
 * Created by Administrator on 2015/3/8.
 */
public class TestFileReaderWriter {

    @Test
    public void testFileReaderWriter(){
        //1.输入流对应的文件src一定要存在，否则抛异常
        FileReader fr = null;
        FileWriter fw = null;
        try {
            File src = new File("hello.txt");
            File dest = new File("hello2.txt");

            fr = new FileReader(src);
            fw = new FileWriter(dest);

            char[] c = new char[34];
            int len;
            while ((len = fr.read(c)) != -1) {
                fw.write(c,0,len);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (fw != null) {
                try {
                    fw.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                if (fr != null) {
                    try {
                        fr.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    @Test
    public void testFileReader(){
        File file = new File("hello.txt");
        FileReader fr = null;
        try {
            fr = new FileReader(file);
            char[] c = new char[24];
            int len;
            while ((len = fr.read(c)) != -1){
                String str = new String(c,0,len);
                System.out.println(str);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if (fr != null) {
                try {
                    fr.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
