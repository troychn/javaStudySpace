package com.troylc.java.jdbc.common;

import static org.junit.Assert.*;

import java.sql.Connection;

import com.troylc.java.jdbc.Customer;
import com.troylc.java.jdbc.JDBCTools;
import org.junit.Test;

public class CustomerDaoTest {

	CustomerDao customerDao = new CustomerDao();
	
	@Test
	public void testBatch() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetForValue() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetForList() {
		fail("Not yet implemented");
	}

	@Test
	public void testGet() {
		Connection connection = null;
		
		try {
			connection = JDBCTools.getConnection();
			String sql = "SELECT id, name, " +
					"email, birth FROM cust_u " +
					"WHERE id = ?";
			Customer customer = customerDao.get(connection, sql, 1);
			System.out.println(customer); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			JDBCTools.release(null, null, connection);
		}
	}

	@Test
	public void testUpdate() {
		fail("Not yet implemented");
	}

}
