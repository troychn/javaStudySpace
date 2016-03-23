package com.tcl.miss.mina.tcpserver.server;

import com.tcl.miss.mina.dao.IPersistentDao;
import com.tcl.miss.mina.dao.IQueryDao;
import com.tcl.miss.mina.dao.impl.PersistentDao;
import com.tcl.miss.mina.dao.impl.QueryDao;
import com.tcl.miss.mina.util.CacheManager;
import org.apache.log4j.Logger;
import org.apache.mina.core.session.IoSession;

import java.util.ResourceBundle;

/**
 * 服务端收到客户端消息后业务处理类
 * @author miss-liu
 *
 */
public class ReceivedServer {
	private static final Logger log = Logger.getLogger(ReceivedServer.class);
	//客户端发送心跳的内容
	private static String heartcontent = ResourceBundle.getBundle("share").getString("heartcontent");
	
	//服务端收到客户端发送的消息，则执行此方法
	public void receivedMessage(final IoSession session, Object message) throws Exception {
		//将收到的消息强转成字符串
		String s = (String) message;
		if(s != null && !"".equals(s)){
			if(s.indexOf("check") >= 0){//登录校验消息
				String[] device = s.split("\\#");
				final String deviceCode = device[1];
				
				IQueryDao service = new QueryDao();				
				boolean flag = service.getDeviceCode(deviceCode);
				
				//校验通过做下面操作，并且发消息SUCCESS，校验不通过，就只发消息FAIL
				if(flag){
					//客户端每次连接服务器只发一次业务数据device_id，将session的hashCode和device_id对象保存到缓存里
					CacheManager.getCacheManager().addDeviceCode(Integer.toString(session.hashCode()),deviceCode);
					//将device_id和session对象保存在缓存里
					CacheManager.getCacheManager().addSession(deviceCode,session);
					
					log.info(deviceCode+"-----------------------------连接信息保存到缓存！");
					
					//将设备状态改成在线状态
					IPersistentDao dao = new PersistentDao();
					dao.updateOnline(deviceCode);
										
					session.write("check#success");
					
					log.info(deviceCode+"-----------------------------连接成功！");
					
					//主动推送业务消息							
					push(deviceCode,session);				
				}else{
					session.write("check#fail");
					log.info(deviceCode+"-----------------------------fail强制退出！");
				}			
			}else{//其它消息
				if(s.equals(heartcontent)){
					//如果是心跳消息，则向客户端发送相同的内容
					session.write(s);
					String deviceCode = CacheManager.getCacheManager().getDeviceCode(Integer.toString(session.hashCode()));
					log.info(deviceCode+"---------------------------- 服务端发送心跳");
				}else if (s.indexOf("mes#") >= 0) {
					//客户端接收到服务端推送消息后，则将推送表中的状态改成推送成功
					String[] ss = s.split("\\#");
					IPersistentDao persistentServer = new PersistentDao();
					persistentServer.update(ss[1],ss[2]);
					
					//清理推送数据缓存
					String deviceCode = CacheManager.getCacheManager().getDeviceCode(Integer.toString(session.hashCode()));
					if(deviceCode != null){
						CacheManager.getCacheManager().delPushMap(deviceCode);
						log.info(deviceCode+"-------------------------客户端反馈推送成功并清理推送缓存-------------------");
					}					
				}else{
					//其它消息不做处理
					session.write("400--" + s);//消息不符合
				}			
			}			
		}else{
			//收到空消息，不做处理
			session.write("400--" + s);
		}		
	}
	
	//对刚建立连接的客户端进行业务消息推送
	//缓存里有推送信息，并且当前时间大于过期时间
	private void push(String deviceCode,IoSession session){
		String[] s;
		try {
			s = CacheManager.getCacheManager().getPushMap().get(deviceCode);
			if(s != null && s.length >= 2){
				String pushContext = "mes#"+s[0]+"#"+s[1];
				session.write(pushContext);
				log.info(deviceCode+"-------------------------发送推送内容-------------------"+pushContext);
			}
		} catch (Exception e) {
			log.error(e.getMessage(),e);
		}		
	}	
}
