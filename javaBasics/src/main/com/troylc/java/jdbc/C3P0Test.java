package com.troylc.java.jdbc;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.junit.Test;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.sql.SQLException;

/**
 * Created by Administrator on 2015/3/18.
 */
public class C3P0Test {

    @Test
    public void testc3p0(){

        try {
            ComboPooledDataSource cpds = new ComboPooledDataSource();
            cpds.setDriverClass("com.mysql.jdbc.Driver"); //loads the jdbc driver
            cpds.setJdbcUrl("jdbc:mysql://119.10.8.180:3306/ZSHOPPRODUCT");
            cpds.setUser("tradeuser");
            cpds.setPassword("654321");
            System.out.println(cpds.getConnection());
        } catch (PropertyVetoException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

        }
    }


    /**
     * 1.创建c3p0-config.xml文件，参考帮助文档中的12.Appendix B: Configuation Files, etc.
     * 2.创建ComboPooledDataSource实例
     * 3.从DataSource实例中获取数据库连接
     */
    @Test
    public void testConfigC3p0(){
        try {
            DataSource dataSource = new ComboPooledDataSource("c3p0");
            System.out.println(dataSource.getConnection());

            ComboPooledDataSource comboPooledDataSource = (ComboPooledDataSource)dataSource;
            System.out.println(comboPooledDataSource.getMaxStatements());

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        }
    }
}
