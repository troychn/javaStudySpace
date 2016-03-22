/*
 *  Copyright 2014-2015 snakerflow.com
 *  *
 *  * Licensed under the Apache License, Version 2.0 (the "License");
 *  * you may not use this file except in compliance with the License.
 *  * You may obtain a copy of the License at
 *  *
 *  *     http://www.apache.org/licenses/LICENSE-2.0
 *  *
 *  * Unless required by applicable law or agreed to in writing, software
 *  * distributed under the License is distributed on an "AS IS" BASIS,
 *  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  * See the License for the specific language governing permissions and
 *  * limitations under the License.
 *
 */
package com.troylc.nettyDemo.utils;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 时间工具类
 * Created by lc on 2015/6/4.
 *
 */
public class DateUtils {
	public static final String DATE_FORMAT_DEFAULT = "yyyy-MM-dd HH:mm:ss";
	public static final String DATE_FORMAT_YMD = "yyyy-MM-dd";
	public static final String DATE__YMD = "yyyy年MM月dd日";
	public static final String DATE_FORMAT_YM="yyyy-MM";
	public static final String DATE_YM="yyyy年MM月";
	
	public static String getCurrentMonth() {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.MONTH, 0);
		SimpleDateFormat df = new SimpleDateFormat(DATE_FORMAT_YM);
		return df.format(c.getTime());
	}
	
	public static String getLastMonth() {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.MONTH,-1);
		SimpleDateFormat df = new SimpleDateFormat(DATE_FORMAT_YM);
		return df.format(c.getTime());
	}
	public static String getLastMonth2() {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.MONTH,-1);
		SimpleDateFormat df = new SimpleDateFormat(DATE_YM);
		return df.format(c.getTime());
	}

	public static long calculationTime(Date start,Date end){
		long l = end.getTime() - start.getTime();
		return l/1000;
		/*SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		java.util.Date now = df.parse("2004-03-26 13:31:40");
		java.util.Date date = df.parse("2004-01-02 11:30:24");
		long l = now.getTime() - date.getTime();
		long day = l / (24 * 60 * 60 * 1000);
		long hour = (l / (60 * 60 * 1000) - day * 24);
		long min = ((l / (60 * 1000)) - day * 24 * 60 - hour * 60);
		long s = (l / 1000 - day * 24 * 60 * 60 - hour * 60 * 60 - min * 60);
		System.out.println("" + day + "天" + hour + "小时" + min + "分" + s + "秒");*/
	}
	
	public static String parseDate(Date datetime) {
		SimpleDateFormat sdf=new SimpleDateFormat(DATE_FORMAT_DEFAULT);
		return sdf.format(datetime);
	}
	

	public static String getCurrentMonth2() {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.MONTH, 0);
		SimpleDateFormat df = new SimpleDateFormat(DATE_YM);
		return df.format(c.getTime());
	}

	public static String getCurrentTimestamp(Timestamp now){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//定义格式，不显示毫秒
		return df.format(now);
	}

	public static Timestamp getCurrentString(String time){
		//String转化为Timestamp:
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//String time = df.format(new Date());
		return Timestamp.valueOf(time);
	}

	public static void main(String[] args) {
		
		
		System.out.println(DateUtils.getCurrentMonth());
	}
}
