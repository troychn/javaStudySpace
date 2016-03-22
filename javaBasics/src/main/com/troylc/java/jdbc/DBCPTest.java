package com.troylc.java.jdbc;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.commons.dbcp.BasicDataSourceFactory;
import org.junit.Test;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * Created by Administrator on 2015/3/18.
 */
public class DBCPTest {
    /**
     * 1.加载DBCP的properties的配置文件，配置文件中的键需要来自BaseDataSource的属性
     * 2.调用BasicDataSourceFactory的createDataSource（properties）创建实例
     * 3.从DataSource 实例中获取数据库连接
     * @throws Exception
     */
    @Test
    public void testDBCPWithDataSourceFactory() throws Exception {
        Properties properties = new Properties();
        InputStream is = JDBCTest.class.getClassLoader().getResourceAsStream("dbcp.properties");
        properties.load(is);
        DataSource dataSource = BasicDataSourceFactory.createDataSource(properties);

        System.out.println(dataSource.getConnection());
        BasicDataSource basicDataSource = (BasicDataSource)dataSource;
        System.out.println(basicDataSource.getMaxWait());
    }

    /**
     * 使用DBCP数据库连接池
     * 1.加入commons-dbcp.jar包 依赖于commons-pool.jar
     * 2.创建数据库连接池
     * 3.为数据源实例指定必须的属性
     * 4.从数据源中获取连接
     */
    @Test
    public void testDBCP(){
        final BasicDataSource dataSource = new BasicDataSource();
        try {
            //1.创建DBPC数据源实例
            //dataSource = new BasicDataSource();

            //2.为数据源实例指定必须的属性
            dataSource.setUsername("tradeuser");
            dataSource.setPassword("654321");
            dataSource.setUrl("jdbc:mysql://119.10.8.180:3306/ZSHOPPRODUCT");
            dataSource.setDriverClassName("com.mysql.jdbc.Driver");
            //3.指定一些可选的数据源连接
            //a.指定数据库连接池中初始化的连接数的个数
            dataSource.setInitialSize(10);
            //b.指定最大连接数 同一时刻可以同时向数据库申请的连接数
            dataSource.setMaxActive(50);
            //c.指定最小连接数据 在数据库连接池中保存的最少的空闲连接的数量
            dataSource.setMinIdle(5);
            //d.等待数据库连接池分配连接的最长时间，单位为毫秒，超出该时间将抛出异常
            dataSource.setMaxWait(1000*5);

            //4.从数据源中获取连接
            Connection connection = dataSource.getConnection();
            System.out.println(connection.getClass());

            connection = dataSource.getConnection();
            System.out.println(connection.getClass());

            connection = dataSource.getConnection();
            System.out.println(connection.getClass());

            connection = dataSource.getConnection();
            System.out.println(connection.getClass());

            Connection connection2 = dataSource.getConnection();
            System.out.println(">" + connection2.getClass());

            new Thread(){
                public void run() {
                    Connection conn;
                    try {
                        conn = dataSource.getConnection();
                        System.out.println(conn.getClass());
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                };
            }.start();

            try {
                Thread.sleep(5500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            connection2.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
