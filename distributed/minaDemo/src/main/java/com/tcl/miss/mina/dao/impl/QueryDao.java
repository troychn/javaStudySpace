package com.tcl.miss.mina.dao.impl;

import com.tcl.miss.mina.dao.IQueryDao;
import com.tcl.miss.mina.util.CacheManager;
import com.tcl.miss.mina.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class QueryDao implements IQueryDao {
	public boolean getDeviceCode(String deviceCode) throws Exception {
		String sql = "SELECT device_code FROM t_push_server_device t WHERE t.device_code = ?";
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;		
		
		try{				
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1,deviceCode);
			rs = ps.executeQuery();			
			while(rs.next()){
				return true;
			}
		}catch(Exception e){			
			throw e;
		}finally{
			DBUtil.close(rs, ps);		
		}
		return false;
	}
		
	public List<String[]> getPushMessage() throws Exception {
		String sql = "SELECT id,device_code,messages FROM t_push_server_data t WHERE t.status = '0' order by create_time desc";
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<String[]> list = new ArrayList<String[]>();
		try{				
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();			
			while(rs.next()){
				String[] s = {rs.getString(1),rs.getString(2),rs.getString(3)};
				list.add(s);
			}
		}catch(Exception e){			
			throw e;
		}finally{
			DBUtil.close(rs, ps);
			DBUtil.closeConnection();
		}
		return list;
	}	

	public void getLastTime() throws Exception {
		String sql = "SELECT device_code,last_time FROM t_push_server_device t WHERE t.last_time is not null";
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{				
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();			
			while(rs.next()){
				Timestamp date = rs.getTimestamp(2);
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				CacheManager.getCacheManager().getLastTimeMap().put(rs.getString(1),df.format(date));
			}
		}catch(Exception e){			
			throw e;
		}finally{
			DBUtil.close(rs, ps);
			DBUtil.closeConnection();
		}
	}		
}
