package com.troylc.nettyDemo.utils;

import org.dom4j.*;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * Created by lc on 2015/9/6.
 * DOM4j读写xml
 */
public class TestDom4j {

    public static void main(String[] args) {
        read1();
        //read2();
        //write();
    }

    public static void read1(){
        try {
            SAXReader reader = new SAXReader();
            InputStream in = TestDom4j.class.getClassLoader().getResourceAsStream("dom4j-modify.xml");
            Document doc = reader.read(in);
            Element root = doc.getRootElement();
            readNode(root,"");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    private static void readNode(Element root, String prefix) {
        if (root == null) return;
        // 获取属性
        /*List<Attribute> attrs = root.attributes();
        if (attrs != null && attrs.size() > 0) {
            System.err.print(prefix);
            for (Attribute attr : attrs) {
                System.err.print(attr.getValue() + " ");
            }
            System.err.println();
        }*/

        /*
         * 在xml文件中的任意节点下查找是否有serialno这个节点；
         * 一条斜线表示根路径，两条斜线表示任意路径，
         * 就是说如果你写 /serialno的时候只有这个UserCode是当前的根节点才能找到，//serialno 不管在哪一层都能找到
         */
        List ecList = root.selectNodes("//serialno");
        if (ecList != null && ecList.size() > 0){
            // 获取他的子节点
            List<Element> childNodes = root.elements();
            prefix += "\t";
            for (Element e : childNodes) {
                if (e.isTextOnly()) {
                    System.out.println("Element: " + e.getName() + "="
                            + e.getText());

                } else {
                    readNode(e, prefix);
                }
            }
        } else {
            System.out.println("传入的数据没有必填项serialno数据");
        }
    }

    public static void read2() {
        try {
            SAXReader reader = new SAXReader();
            InputStream in = TestDom4j.class.getClassLoader().getResourceAsStream("src/test/dom4j-modify.xml");
            Document doc = reader.read(in);
            doc.accept(new MyVistor());
        } catch (DocumentException e) {
            e.printStackTrace();
        }
    }


    public static void write() {
        try {
            // 创建一个xml文档
            Document doc = DocumentHelper.createDocument();
            Element university = doc.addElement("university");
            university.addAttribute("name", "tsu");
            // 注释
            university.addComment("这个是根节点");
            Element college = university.addElement("college");
            college.addAttribute("name", "cccccc");
            college.setText("text");
            File file = new File("src/main/java/dom4j-modify.xml");
            if (file.exists()) {
                file.delete();
            }
            file.createNewFile();
            XMLWriter out = new XMLWriter(new FileWriter(file));
            out.write(doc);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

class MyVistor extends VisitorSupport {

    public void visit(Attribute node) {
        System.out.println("Attibute: " + node.getName() + "=" + node.getValue());
    }

    public void visit(Element node) {
        if (node.isTextOnly()) {
            System.out.println("Element: " + node.getName() + "="
                    + node.getText());
        } else {
            System.out.println(node.getName());

        }
    }
    @Override
    public void visit(ProcessingInstruction node) {
        System.out.println("PI:" + node.getTarget() + " " + node.getText());
    }
}