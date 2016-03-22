package com.troylc.java.jdbc;

import org.junit.Test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Administrator on 2015/3/18.
 *
 */
public class TransactionTest {


    /**
     * 测试事务的隔离级别 在 JDBC 程序中可以通过 Connection 的 setTransactionIsolation 来设置事务的隔离级别.
     */
    @Test
    public void testTransactionIsolationUpdate() {

        Connection connection = null;

        try {
            connection = JDBCTools.getConnection();
            connection.setAutoCommit(false);

            String sql = "UPDATE users SET balance = "
                    + "balance - 500 WHERE id = 1";
            update(connection, sql);

            connection.commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

        }
    }

    @Test
    public void testTransactionIsolationRead() {
        String sql = "SELECT balance FROM users WHERE id = 1";
        Integer balance = getForValue(sql);
        System.out.println(balance);
    }

    // 返回某条记录的某一个字段的值 或 一个统计的值(一共有多少条记录等.)
    public <E> E getForValue(String sql, Object... args) {

        // 1. 得到结果集: 该结果集应该只有一行, 且只有一列
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // 1. 得到结果集
            connection = JDBCTools.getConnection();
            //默认的隔离级别 可重复读
            System.out.println(connection.getTransactionIsolation());
            //设置事务的隔离级别 读未提交的数据 Connection.TRANSACTION_READ_UNCOMMITTED
//			connection.setTransactionIsolation(Connection.TRANSACTION_READ_UNCOMMITTED);
            //设置事务的隔离级别 读已提交的数据Connection.TRANSACTION_READ_COMMITTED
            connection.setTransactionIsolation(Connection.TRANSACTION_READ_COMMITTED);

            preparedStatement = connection.prepareStatement(sql);

            for (int i = 0; i < args.length; i++) {
                preparedStatement.setObject(i + 1, args[i]);
            }

            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return (E) resultSet.getObject(1);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            JDBCTools.release(resultSet, preparedStatement, connection);
        }
        // 2. 取得结果

        return null;
    }


    /**
     * 关于事务: 1. 如果多个操作, 每个操作使用的是自己的单独的连接, 则无法保证事务.
     * 2. 具体步骤:
     * 1). 事务操作开始前, 开始事务:
     * 取消 Connection 的默认提交行为. connection.setAutoCommit(false);
     * 2). 如果事务的操作都成功, 则提交事务: connection.commit();
     * 3). 回滚事务: 若出现异常, 则在 catch 块中回滚事务:
     */
    @Test
    public void transactionTest(){
        Connection connection = null;
        try {
            connection = JDBCTools.getConnection();
            // 开始事务: 取消默认提交.
            connection.setAutoCommit(false);
            String sql = "update cust_u set name = 'ygvyjm' where id=1";
            update(connection,sql);

            //int i = 10 / 0;
            //System.out.println(i);

            String sql2 = "update cust_u set name = 'liuch' where id=2";
            update(connection,sql2);
            // 提交事务
            connection.commit();
        } catch (Exception e) {
            e.printStackTrace();
            try {
                //回滚事务
                connection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        } finally {
            JDBCTools.release(null,null,connection);
        }
    }

    /**
     * INSERT,UPDATE,DELETE操作都可以包含其中
     */
    public void update(Connection connection,String sql, Object... args) throws SQLException {
        PreparedStatement preparedStatement = null;
        preparedStatement = connection.prepareStatement(sql);

        for (int i = 0; i < args.length; i++) {
            preparedStatement.setObject(i + 1, args[i]);
        }
        preparedStatement.executeUpdate();
    }
}
