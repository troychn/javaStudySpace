-- ----------------------------
-- Records of dmp_component
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_component_version`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_component_version`;
CREATE TABLE `dmp_component_version` (
  `uuid` varchar(32) NOT NULL COMMENT '主键唯一标识',
  `componentname` varchar(128) NOT NULL COMMENT '组件名称',
  `componentversion` varchar(128) DEFAULT NULL COMMENT '组件版本号',
  `deviceserialno` varchar(128) DEFAULT NULL COMMENT '设备序列号',
  `deviceuuid` varchar(32) DEFAULT NULL COMMENT '设备ID',
  `devicetype` varchar(128) DEFAULT NULL COMMENT '设备类型',
  `deviceversion` varchar(128) DEFAULT NULL COMMENT '设备版本号',
  `componentdesc` varchar(500) DEFAULT NULL COMMENT '组件说明',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `ext0` varchar(128) DEFAULT NULL COMMENT '预留字段',
  `ext1` varchar(128) DEFAULT NULL COMMENT '预留字段',
  `ext2` varchar(128) DEFAULT NULL COMMENT '预留字段',
  `ext3` varchar(128) DEFAULT NULL COMMENT '预留字段',
  `ext4` varchar(128) DEFAULT NULL COMMENT '预留字段',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备组件版本表';




-- ----------------------------
-- Table structure for `dmp_device_info`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_device_info`;
CREATE TABLE `dmp_device_info` (
  `uuid` varchar(32) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `custumername` varchar(255) DEFAULT NULL,
  `devicetype` varchar(255) DEFAULT NULL,
  `devicetypeName` varchar(255) DEFAULT NULL,
  `deviceversion` varchar(255) DEFAULT NULL,
  `devmail` varchar(255) DEFAULT NULL,
  `devname` varchar(255) DEFAULT NULL,
  `devphone` varchar(255) DEFAULT NULL,
  `eth0mac` varchar(255) DEFAULT NULL,
  `firstIndustry` varchar(255) DEFAULT NULL,
  `groupid` varchar(255) DEFAULT NULL,
  `hastatus` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `olddeviceversion` varchar(255) DEFAULT NULL,
  `patchname` varchar(255) DEFAULT NULL,
  `physicallocation` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `reportfrequency` int(11) DEFAULT NULL,
  `reporttime` varchar(255) DEFAULT NULL,
  `secondeIndustry` varchar(255) DEFAULT NULL,
  `serialnumber` varchar(255) DEFAULT NULL,
  `stepstate` int(11) DEFAULT '0',
  `stermofvalidity` varchar(255) DEFAULT NULL,
  `systemtype` varchar(255) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `upgradeversion` varchar(255) DEFAULT NULL,
  `ext0` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `dmp_device_performance`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_device_performance`;
CREATE TABLE `dmp_device_performance` (
  `uuid` varchar(32) NOT NULL,
  `cpustatus` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `currconn` varchar(255) DEFAULT NULL,
  `deviceid` varchar(255) DEFAULT NULL,
  `ext0` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` varchar(255) DEFAULT NULL,
  `memorystatus` varchar(255) DEFAULT NULL,
  `newcreatedconn` varchar(255) DEFAULT NULL,
  `receiveflow` varchar(255) DEFAULT NULL,
  `runingtime` varchar(255) DEFAULT NULL,
  `transmitflow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_device_performance
-- ----------------------------


