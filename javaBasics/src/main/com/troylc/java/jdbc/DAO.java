package com.troylc.java.jdbc;

import org.apache.commons.beanutils.BeanUtils;

import java.lang.reflect.InvocationTargetException;
import java.sql.*;
import java.util.*;

/**
 * Created by Administrator on 2015/3/17.
 * 通过的数据库层操作
 */
public class DAO {

    /**
     * INSERT,UPDATE,DELETE操作都可以包含其中
     */
    public void update(String sql, Object... args) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = JDBCTools.getConnection();
            preparedStatement = connection.prepareStatement(sql);

            for (int i = 0; i < args.length; i++) {
                preparedStatement.setObject(i + 1, args[i]);
            }
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(preparedStatement, connection);
        }
    }

    /**
     * 查询一条记录，返回对应的对象
     *
     * @param clazz
     * @param sql
     * @param args
     * @param <T>
     * @return
     */
    public <T> T get(Class<T> clazz, String sql, Object... args) {
        T entity = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            //1.获取connection
            connection = JDBCTools.getConnection();
            //2.获取PreparedStaement
            preparedStatement = connection.prepareStatement(sql);
            //3.填充占位符
            for (int i = 0; i < args.length; i++) {
                preparedStatement.setObject(i + 1, args[i]);
            }
            //4.进行查询，得到ResultSet
            resultSet = preparedStatement.executeQuery();
            //5.若ResultSet中有记录
            //准备一个Map<String ,Object>:键：存放列的别名，值：存放列的值
            if (resultSet.next()) {
                Map<String, Object> values = new HashMap<String, Object>();
                //6.得到ResultSetMetaData对象
                ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
                //7.处理ResultSet,把指针向下移动一个单位

                //8.由ResultSetMetaData对象得到结果集中有多少列
                int columnCount = resultSetMetaData.getColumnCount();
                for (int i = 0; i < columnCount; i++) {
                    //9.由ResultSetMetaData得到第一个列的别名，
                    String columnlabel = resultSetMetaData.getColumnLabel(i + 1);
                    //由ResultSet得到具体每个列的值
                    Object columnValue = resultSet.getObject(i + 1);
                    //10.填充Map对象
                    values.put(columnlabel, columnValue);
                }
                //11.用反射创建Class对应的对象
                entity = clazz.newInstance();
                //12.遍历Map对象，用反射填充对象的属性值
                //属性名为Map中的KEY，属性值为Map中的Value
                for (Map.Entry<String, Object> entry : values.entrySet()) {
//                    ReflectionUtils.setFieldValue(entity,entry.getKey(),entry.getValue());
                    BeanUtils.setProperty(entity, entry.getKey(), entry.getValue());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(resultSet, preparedStatement, connection);
        }

        return entity;
    }

    /**
     * 查询多条记录，返回对应对象的集合
     *
     * @param clazz
     * @param sql
     * @param args
     * @param <T>
     * @return
     */
    public <T> List<T> getList(Class<T> clazz, String sql, Object... args) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<T> list = new ArrayList<T>();
        try {
            //1.获取connection
            connection = JDBCTools.getConnection();
            //2.获取PreparedStaement
            preparedStatement = connection.prepareStatement(sql);
            //3.填充占位符
            for (int i = 0; i < args.length; i++) {
                preparedStatement.setObject(i + 1, args[i]);
            }
            //4.进行查询，得到ResultSet
            resultSet = preparedStatement.executeQuery();
            //5.若ResultSet中有记录
            //准备一个Map<String ,Object>:键：存放列的别名，值：存放列的值 其中一个map对就一条记录
//            List<Map<String,Object>> list = new ArrayList<Map<String, Object>>();
            list = resultSetTransformationList(clazz, resultSet);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(resultSet, preparedStatement, connection);
        }

        return list;
    }

    /**
     * 通过resultSet转换成对应表对象的集合
     *
     * @param clazz     表对应的Bean
     * @param resultSet 查询结果集
     * @param <T>       泛型
     * @return
     * @throws SQLException
     * @throws InstantiationException
     * @throws IllegalAccessException
     * @throws InvocationTargetException
     */
    private <T> List<T> resultSetTransformationList(Class<T> clazz, ResultSet resultSet) throws SQLException, InstantiationException, IllegalAccessException, InvocationTargetException {
        List<T> list = new ArrayList<T>();
        T entity = null;
        Map<String, Object> values = null;
        while (resultSet.next()) {
            values = new HashMap<String, Object>();
            //6.得到ResultSetMetaData对象
            ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
            //7.处理ResultSet,把指针向下移动一个单位

            //8.由ResultSetMetaData对象得到结果集中有多少列
            int columnCount = resultSetMetaData.getColumnCount();
            for (int i = 0; i < columnCount; i++) {
                //9.由ResultSetMetaData得到第一个列的别名，
                String columnlabel = resultSetMetaData.getColumnLabel(i + 1);
                //由ResultSet得到具体每个列的值
                Object columnValue = resultSet.getObject(i + 1);
                //10.填充Map对象
                values.put(columnlabel, columnValue);
            }

            entity = clazz.newInstance();
            //12.遍历Map对象，用反射填充对象的属性值
            //属性名为Map中的KEY，属性值为Map中的Value
            for (Map.Entry<String, Object> entry : values.entrySet()) {
//                    ReflectionUtils.setFieldValue(entity,entry.getKey(),entry.getValue());
                BeanUtils.setProperty(entity, entry.getKey(), entry.getValue());
            }
            list.add(entity);
        }
        return list;
    }

    /**
     * 返回某条记录的某一个字段的值 或一个统计的值（一共多少条）
     *
     * @param sql
     * @param args
     * @param <E>
     * @return
     */
    public <E> E getForValue(String sql, Object... args) {

        return null;
    }

}
