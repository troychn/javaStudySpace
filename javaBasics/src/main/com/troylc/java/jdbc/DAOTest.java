package com.troylc.java.jdbc;

import org.junit.Test;

import java.sql.Date;
import java.util.List;

import static org.junit.Assert.*;

public class DAOTest {

    DAO dao = new DAO();

    @Test
    public void testUpdate() throws Exception {
        String sql = "INSERT INTO cust_u(name,email,birth) values(?,?,?)";
        dao.update(sql,"李四","lis@300.cn",new Date(new java.util.Date().getTime()));
    }

    @Test
    public void testGet() throws Exception {
        String sql = "SELECT id, name, email, birth FROM cust_u WHERE id = ?";
        Customer customer = dao.get(Customer.class, sql, 2);
        System.out.println(customer);
    }

    @Test
    public void testGetList() throws Exception {
        String sql = "SELECT id, name, email, birth FROM cust_u";
        List<Customer> customers = dao.getList(Customer.class, sql);
        for (int i = 0; i < customers.size(); i++) {
            Customer customer = customers.get(i);
            System.out.println(customer);
        }
    }

    @Test
    public void testGetForValue() throws Exception {

    }
}