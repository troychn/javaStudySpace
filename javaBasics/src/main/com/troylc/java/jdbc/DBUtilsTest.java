package com.troylc.java.jdbc;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.*;
import org.junit.Test;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2015/3/18.
 * 测试DBUtils工具类
 */
public class DBUtilsTest {

    /**
     *
     */
    @Test
    public void testScalarHandler(){
        String sql = "SELECT  name FROM cust_u where id = ?";
        String sql2 = "SELECT  count(id) FROM cust_u";

        //1. 创建 QueryRunner 对象
        QueryRunner queryRunner = new QueryRunner();

        Connection conn = null;

        try {
            conn = JDBCTools.getConnection();

            String str = queryRunner.query(conn, sql,
                    new ScalarHandler<String>(),2);
            System.out.println(str);
            long count = queryRunner.query(conn, sql2,
                    new ScalarHandler<Long>());
            System.out.println(count);

        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            JDBCTools.release(null, null, conn);
        }
    }

    /**
     * tMapListHandler将结果集转为一个Map的List
     * Map对应的SQL查询的一条记录 键：sql查询的列名（不是列的别名），值：列的值
     * 而tMapListHandler：返回的多条记录对应的Map集合
     */
    @Test
    public void testMapListHandler(){
        String sql = "SELECT id, name, email, birth " +
                "FROM cust_u";

        //1. 创建 QueryRunner 对象
        QueryRunner queryRunner = new QueryRunner();

        Connection conn = null;

        try {
            conn = JDBCTools.getConnection();

            List<Map<String,Object>> maps = queryRunner.query(conn, sql,
                    new MapListHandler());

            System.out.println(maps);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            JDBCTools.release(null, null, conn);
        }
    }

    /**
     * MapHandler:返回SQL对应的第一条记录对应的MAP对象
     * 键：sql查询的列名（不是列的别名），值：列的值
     */
    @Test
    public void testMapHandler(){
        String sql = "SELECT id, name, email, birth " +
                "FROM cust_u";

        //1. 创建 QueryRunner 对象
        QueryRunner queryRunner = new QueryRunner();

        Connection conn = null;

        try {
            conn = JDBCTools.getConnection();

            Map<String,Object> map = queryRunner.query(conn, sql,
                    new MapHandler());

            System.out.println(map);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            JDBCTools.release(null, null, conn);
        }
    }


    /**
     * BeanListHandler 把结果集转为一个List 该List不为NUll，但可能为空集合
     * (size为0)
     * 若sql语句的确能够查询到记录 List中存放创建BeanListHandler传入的Class对象对应的对象
     */
    @Test
    public void testBeanListHandler(){
        String sql = "SELECT id, name, email, birth " +
                "FROM cust_u";

        //1. 创建 QueryRunner 对象
        QueryRunner queryRunner = new QueryRunner();

        Connection conn = null;

        try {
            conn = JDBCTools.getConnection();

            List<Customer> list = queryRunner.query(conn, sql,
                    new BeanListHandler<Customer>(Customer.class));

            System.out.println(list);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            JDBCTools.release(null, null, conn);
        }
    }


    /**
     * BeanHandler 把结果集的第一条记录转为创建BeanHandler对象时传入class参数对应的对象
     */
    @Test
    public void testBeanHandler(){
        String sql = "SELECT id, name, email, birth " +
                "FROM cust_u where id = ?";

        //1. 创建 QueryRunner 对象
        QueryRunner queryRunner = new QueryRunner();

        Connection conn = null;

        try {
            conn = JDBCTools.getConnection();

            Customer customer = queryRunner.query(conn, sql,
                    new BeanHandler<Customer>(Customer.class),1);

            System.out.println(customer);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            JDBCTools.release(null, null, conn);
        }
    }


    @Test
    public void testQuery(){
        Connection connection = null;
        //QueryRunner是线程安全的，所以可以提取成类的成员变量
        QueryRunner queryRunner = new QueryRunner();
        try {
            connection = JDBCTools.getC3p0Connection();
            String sql = "select id,name,email,birth from cust_u";

            /**
             * 2. 调用 query 方法:
             * ResultSetHandler 参数的作用: query 方法的返回值直接取决于
             * ResultSetHandler 的 hanlde(ResultSet rs) 是如何实现的. 实际上, 在
             * QueryRunner 类的 query 方法中也是调用了 ResultSetHandler 的 handle()
             * 方法作为返回值的。
             */
            Object query = queryRunner.query(connection, sql, new ResultSetHandler(){

                @Override
                public Object handle(ResultSet rs) throws SQLException {
                    List<Customer> customers = new ArrayList<Customer>();

                    while(rs.next()){
                        int id = rs.getInt(1);
                        String name = rs.getString(2);
                        String email = rs.getString(3);
                        Date birth = rs.getDate(4);

                        Customer customer =
                                new Customer(id, name, email, birth);
                        customers.add(customer);
                    }

                    return customers;
                }
            });
            System.out.println(query);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(null,null,connection);
        }
    }

    /**
     * 测试QueryRunner类的update方法
     * 该方法可用于添加，删除的操作。
     */
    @Test
    public void testQueryRunnerUpdate(){
        //1.创建QueryRunner的实现类
        QueryRunner queryRunner = new QueryRunner();

        //2.使用其update方法
        String sql = "delete from cust_u where id in(?,?)";
        Connection connection = null;
        try {
            connection = JDBCTools.getC3p0Connection();
            queryRunner.update(connection,sql,3,4);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(null,null,connection);
        }
    }
}
