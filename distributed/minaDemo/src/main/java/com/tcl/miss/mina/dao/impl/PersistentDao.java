package com.tcl.miss.mina.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.UUID;

import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSONObject;
import com.tcl.miss.mina.dao.IPersistentDao;
import com.tcl.miss.mina.tcpserver.server.PushStatus;
import com.tcl.miss.mina.util.DBUtil;

public class PersistentDao implements IPersistentDao {
	private static final Logger log = Logger.getLogger(PersistentDao.class);

	public String save(JSONObject params) throws Exception {
		String sql = "insert into t_push_server_data(id,device_code,push_id,messages,system_name,expired_time,status,create_time,update_time) " +
				"values (?,?,?,?,?,?,?,?,?)";
		
		String updateSql = "update t_push_server_data set status = ?,update_time = ? where device_code = ? and status = '0'";
		Connection con = null;
		PreparedStatement ps = null;
		PreparedStatement updatePs = null;
		
		String id = UUID.randomUUID().toString();
		try{				
			con = DBUtil.getConnection();
			DBUtil.beginTransaction();//开启事务
			ps = con.prepareStatement(sql);
			updatePs = con.prepareStatement(updateSql);
			
			Timestamp date = new Timestamp(System.currentTimeMillis());
			
			//先将当期设备以前的推送消息，还没有推送成功的数据置为作废
			updatePs.setString(1,PushStatus.CANCELLED);
			updatePs.setTimestamp(2,date);
			updatePs.setString(3,params.getString("device_code"));
			updatePs.execute();
			
			ps.setString(1,id);
			ps.setString(2,params.getString("device_code"));
			ps.setString(3,params.getString("push_id"));
			ps.setString(4,params.getString("messages"));
			ps.setString(5,params.getString("system_name"));			
			ps.setTimestamp(6,Timestamp.valueOf(params.getString("expired_time")));
			ps.setString(7,PushStatus.INITIAL);
			ps.setTimestamp(8,date);
			ps.setTimestamp(9,date);
			ps.execute();
			
			DBUtil.commitTransaction();
		}catch(Exception e){
			DBUtil.rollbackTransaction();
			throw e;
		}finally{
			DBUtil.close(null, ps);
			DBUtil.closeConnection();
		}
		return id;
	}

	public void update(String id, String status) throws Exception {
		if(id == null || "".equals(id) || status == null || "".equals(status)){
			return;
		}
		String sql = "update t_push_server_data t set t.status = ?,t.update_time = ? where t.id = ? and t.status = ?";
		Connection con = null;
		PreparedStatement ps = null;
		try{				
			con = DBUtil.getConnection();
			DBUtil.beginTransaction();//开启事务
			ps = con.prepareStatement(sql);
						
			Timestamp date = new Timestamp(System.currentTimeMillis());
			
			ps.setString(1,PushStatus.SUCCESS);
			ps.setTimestamp(2,date);
			ps.setString(3,id);
			ps.setString(4,PushStatus.INITIAL);
			ps.execute();
			DBUtil.commitTransaction();
		}catch(Exception e){
			DBUtil.rollbackTransaction();
			throw e;
		}finally{
			DBUtil.close(null, ps);
			DBUtil.closeConnection();
		}
	}

	public void updateLastTime(String deviceCode, Timestamp lastTime)
			throws Exception {
		String sql = "update t_push_server_device t set t.last_time = ?,t.online = ?,t.update_time = ? where t.device_code = ?";
		Connection con = null;
		PreparedStatement ps = null;
		try{				
			con = DBUtil.getConnection();
			DBUtil.beginTransaction();//开启事务
			ps = con.prepareStatement(sql);						
			ps.setTimestamp(1,lastTime);
			ps.setString(2,"0");
			ps.setTimestamp(3,lastTime);
			ps.setString(4,deviceCode);
			ps.execute();
			DBUtil.commitTransaction();
			log.info(deviceCode+"-------离线--------更新数据库离线状态成功!----------------");
		}catch(Exception e){
			DBUtil.rollbackTransaction();
			throw e;
		}finally{
			DBUtil.close(null, ps);
			DBUtil.closeConnection();
		}
	}

	public void updateOnline(String deviceCode) throws Exception {
		String sql = "update t_push_server_device t set t.online = ?,t.update_time = ? where t.device_code = ?";
		Connection con = null;
		PreparedStatement ps = null;
		try{				
			con = DBUtil.getConnection();
			DBUtil.beginTransaction();//开启事务
			ps = con.prepareStatement(sql);			
			ps.setString(1,"1");
			ps.setTimestamp(2,new Timestamp(System.currentTimeMillis()));
			ps.setString(3,deviceCode);
			ps.execute();
			DBUtil.commitTransaction();
			log.info(deviceCode+"-------在线--------更新数据库在线状态成功!----------------");
		}catch(Exception e){
			DBUtil.rollbackTransaction();
			throw e;
		}finally{
			DBUtil.close(null, ps);
			DBUtil.closeConnection();
		}		
	}

	public void updateOnline() throws Exception {
		String sql = "update t_push_server_device set online = ?,update_time = now(),last_time = now() where online = '1'";
		Connection con = null;
		PreparedStatement ps = null;
		try{
			con = DBUtil.getConnection();
			DBUtil.beginTransaction();//开启事务
			ps = con.prepareStatement(sql);			
			ps.setString(1,"0");
			ps.execute();
			DBUtil.commitTransaction();
			log.info("-------服务器启动后--------所有设备更新为离线状态!----------------");
		}catch(Exception e){
			DBUtil.rollbackTransaction();
			throw e;
		}finally{
			DBUtil.close(null, ps);
			DBUtil.closeConnection();
		}
	}	
	
}
