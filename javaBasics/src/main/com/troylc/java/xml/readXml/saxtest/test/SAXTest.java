package com.troylc.java.xml.readXml.saxtest.test;

import com.troylc.java.xml.readXml.saxtest.entity.Book;
import com.troylc.java.xml.readXml.saxtest.handler.SAXParserHandler;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java.io.IOException;



public class SAXTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		//创建SAXParserFactory对象
		SAXParserFactory factory = SAXParserFactory.newInstance();
		//调用SAXParserFactory对象的newSAXParser方法得到parser对象
		try {
			SAXParser parser = factory.newSAXParser();
			//创建SAXParserHandler对象
			SAXParserHandler handler = new SAXParserHandler();
			parser.parse(SAXTest.class.getResourceAsStream("/com/troylc/java/xml/readXml/books.xml"), handler);
			System.out.println("总共有" + handler.getBookList().size()
					+ "本书");
			for (Book book : handler.getBookList()) {
				System.out.println(book.getId());
				System.out.println(book.getName());
				System.out.println(book.getAuthor());
				System.out.println(book.getYear());
				System.out.println(book.getPrice());
				System.out.println(book.getLanguage());
				System.out.println("----finish----");
			}
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
