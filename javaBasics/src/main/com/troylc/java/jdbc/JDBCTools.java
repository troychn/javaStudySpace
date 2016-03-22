package com.troylc.java.jdbc;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbcp.BasicDataSource;
import org.apache.commons.dbcp.BasicDataSourceFactory;
import org.junit.Test;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

/**
 * 操作 JDBC 的工具类. 其中封装了一些工具方法 Version 1
 */
public class JDBCTools {

    /**
     * 执行 SQL 语句, 使用 PreparedStatement
     *
     * @param sql
     * @param args: 填写 SQL 占位符的可变参数
     */
    public static void update(String sql, Object... args) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = JDBCTools.getConnection();
            preparedStatement = connection.prepareStatement(sql);

            for (int i = 0; i < args.length; i++) {
                preparedStatement.setObject(i + 1, args[i]);
            }

            preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(null, preparedStatement, connection);
        }
    }

    /**
     * 执行 SQL 的方法
     *
     * @param sql: insert, update 或 delete。 而不包含 select
     */
    public static void update(String sql) {
        Connection connection = null;
        Statement statement = null;

        try {
            // 1. 获取数据库连接
            connection = getConnection();

            // 2. 调用 Connection 对象的 createStatement() 方法获取 Statement 对象
            statement = connection.createStatement();

            // 4. 发送 SQL 语句: 调用 Statement 对象的 executeUpdate(sql) 方法
            statement.executeUpdate(sql);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 5. 关闭数据库资源: 由里向外关闭.
            release(null, statement, connection);
        }
    }

    public static void release(ResultSet rs,
                               Statement statement, Connection conn) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }


        if (statement != null) {
            try {
                statement.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        if (conn != null) {
            try {
                //数据库连接池的connection对象进行close时，并不是真的进行关闭，
                // 而是把该 数据库连接归还到数据库连接池中
                conn.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /**
     * 关闭 Statement 和 Connection
     *
     * @param statement
     * @param conn
     */
    public static void release(Statement statement, Connection conn) {
        if (statement != null) {
            try {
                statement.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        if (conn != null) {
            try {
                conn.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /**
     * 1. 获取连接的方法. 通过读取配置文件从数据库服务器获取一个连接.
     *
     * @return
     * @throws Exception
     */
    public static Connection getConnection() throws Exception {
        // 1. 准备连接数据库的 4 个字符串.
        // 1). 创建 Properties 对象
        Properties properties = new Properties();

        // 2). 获取 jdbc.properties 对应的输入流
        InputStream in = JDBCTools.class.getClassLoader().getResourceAsStream(
                "jdbc.properties");

        // 3). 加载 2） 对应的输入流
        properties.load(in);

        // 4). 具体决定 user, password 等4 个字符串.
        String user = properties.getProperty("user");
        String password = properties.getProperty("password");
        String jdbcUrl = properties.getProperty("jdbcUrl");
        String driver = properties.getProperty("driver");

        // 2. 加载数据库驱动程序(对应的 Driver 实现类中有注册驱动的静态代码块.)
        Class.forName(driver);

        // 3. 通过 DriverManager 的 getConnection() 方法获取数据库连接.
        return DriverManager.getConnection(jdbcUrl, user, password);
    }

    /*
     *通过C3p0数据库连接池，只被初始化一次，获取的数据库连接
     */
    private static DataSource dataSource = null;

    static {
        dataSource = new ComboPooledDataSource("c3p0");
    }

    public static Connection getC3p0Connection() throws SQLException {
        return dataSource.getConnection();
    }


    //处理数据库事务的
    //提交事务
    public static void commit(Connection connection) {
        if (connection != null) {
            try {
                connection.commit();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    //回滚事务
    public static void rollback(Connection connection) {
        if (connection != null) {
            try {
                connection.rollback();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    //开始事务
    public static void beginTx(Connection connection) {
        if (connection != null) {
            try {
                connection.setAutoCommit(false);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
