package com.troylc.nettyDemo.utils;

/**
 * 常量定义
 */
public interface IConstants {

	/**
	 * 系统类型：0为TOS(旧系统)，1为NGTOS(新系统)
	 */
	public static final String SYSTEM_TYPE_TOS = "0";
	public static final String SYSTEM_TYPE_NGTOS = "1";

	/**
	 * 配置升级状态(0可更新，1待更新，2已更新，3不可更新(权限已过期)，4任务执行失败)
	 */
	public static final String CAN_BE_UPDATED = "0";
	public static final String TO_BE_UPDATED = "1";
	public static final String HAS_BEEN_UPDATED = "2";
	public static final String NOT_UPDATED = "3";
	public static final String CONFIGFAILED_TO_EXECUTE = "4";

	/**
	 * 补丁升级状态： 0，可升级 1，待升级，2已升级，3不可升级(权限已过期)，
	 * 				 4任务执行失败,5已经执行任务下发,6升级失败，转为告警
	 */
	public static final String CAN_BE_UPGRADED = "0";
	public static final String TO_BE_UPGRADED = "1";
	public static final String HAS_BEEN_UPGRADED = "2";
	public static final String NOT_UPGRADED = "3";
	public static final String PATCHFAILEDTO_EXECUTE = "4";
	public static final String HAS_BEEN_ISSUED = "5";
	public static final String UPGRADED_FAILED = "6";
	/**
	 * issuedtag 补丁下发标识，0为立即下发，1为延迟下发，即任务被挂起，默认为0
	 */
	public final static Integer IMMEDIATELY_ISSUED = 0;
	public final static Integer DELAY_ISSUED = 1;

	/**
	 * 是否为升级组件版本 0 升级设备版本 1升级组件且设备版本。
	 */
	public final static String IS_NOT_UPGRADEDCOMPONENT = "0";
	public final static String IS_UPGRADEDCOMPONENT = "1";

	/**
	 * 任务类型 config为配置设备上报频率的任务，patch为下发设备补丁升级任务
	 */
	public static final String TASK_TYPE_CONFIG = "config";
	public static final String TASK_TYPE_PATCH = "patch";


	/**
	 * 设备任务下发后的返回状态：-1为执行失败，1为执行成功。
	 */
	public static final String TASK_EXECUTION_FAILURE = "-1";
	public static final String TASK_EXECUTION_SUCCESS = "1";

	/**
	 * 排序模式:ACS表示按正序排序(即：从小到大排序)，DESC 表示按倒序排序(即：从大到小排序)
	 */
	public static final String SORT_MODE_ASC = "ASC";
	public static final String SORT_MODE_DESC = "DESC";



}
