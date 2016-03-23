package com.tcl.miss.mina.util;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import org.apache.log4j.Logger;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

public class DBUtil {
	private static final Logger log = Logger.getLogger(DBUtil.class);
	
	private static ThreadLocal<Connection> connectionHolder = new ThreadLocal<Connection>();
	
	private static DataSource ds = null;   
    
    static {
        try{
            InputStream in = DBUtil.class.getClassLoader().getResourceAsStream("config.properties");
            Properties props = new Properties();
            props.load(in);
            ds = DruidDataSourceFactory.createDataSource(props);
        }catch(Exception e){
        	log.error(e.getMessage(), e);
        	log.error("创建数据源异常！");
        }
    }
     
    private static Connection openConnection() throws Exception{
    	if(ds == null){
    		throw new Exception("数据源为空"); 
    	}
		return ds.getConnection();        
    }
    
    //获取Connection
    public static Connection getConnection() throws Exception{
    	Connection conn = connectionHolder.get();
    	if(conn == null){
    		conn = openConnection();
    		connectionHolder.set(conn);
    	}
    	return conn;
    }
    
    //手动开启事务
	public static void beginTransaction() throws Exception {
		Connection conn = connectionHolder.get();
		if (conn != null) {
			if (conn.getAutoCommit()) {
				conn.setAutoCommit(false); //手动提交
			}
		}
	}
	
	//提交事务
	public static void commitTransaction() throws Exception {
		Connection conn = connectionHolder.get();
		if (conn != null) {
			if (!conn.getAutoCommit()) {
				conn.commit();
			}
		}
	}
	
	//事务回滚
	public static void rollbackTransaction() throws Exception {
		Connection conn = connectionHolder.get();
		if (conn != null) {
			if (!conn.getAutoCommit()) {
				conn.rollback();
			}
		}
	}
    
	//关闭Connection(顺便设置事务为自动提交)
	public static void closeConnection() throws Exception {
		Connection conn = connectionHolder.get();
		if (conn != null) {
			if (!conn.getAutoCommit()) {
				conn.setAutoCommit(true);
			}
			conn.close();
			//从ThreadLocal中清除Connection
			connectionHolder.remove();			
		}
	}
	
	public static void close(ResultSet rs,Statement ps) throws Exception {
		if(rs != null){
			rs.close();
		}
		if(ps != null){
			ps.close();
		}
	}

}
