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
-- Records of dmp_component_version
-- ----------------------------
INSERT INTO `dmp_component_version` VALUES ('4028c83c51d73aff0151d7a90cae0004', 'apache', 'V3', 'K1306215141', '4028c83c5165914e01516591ffd90000', '防火墙', '3.3.020.043.1_D8049_2614', null, null, null, null, null, null, null, null);
INSERT INTO `dmp_component_version` VALUES ('4028c83c51d73aff0151d7a90cb30005', 'nginx', 'V4', 'K1306215141', '4028c83c5165914e01516591ffd90000', '防火墙', '3.3.020.043.1_D8049_2614', null, null, null, null, null, null, null, null);
INSERT INTO `dmp_component_version` VALUES ('4028c83c51d73aff0151d7a90cb70006', 'ssl', 'V3', 'K1306215141', '4028c83c5165914e01516591ffd90000', '防火墙', '3.3.020.043.1_D8049_2614', null, null, null, null, null, null, null, null);



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
-- Records of dmp_device_info
-- ----------------------------
INSERT INTO `dmp_device_info` VALUES ('2c918085537959780153795ab3b30000', '2016-03-15 16:18:21', ' 测试客户', '防火墙', null, 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', 'NOTRUN', '172.18.23.52', null, null, null, 'NGFW4000-UF(TG-51030)', null, '2016-03-15 16:18:20', '中国民生银行', '0010f3328f94', '0', null, '0', null, null, null, null, null, null, null);
INSERT INTO `dmp_device_info` VALUES ('2c91808553795978015397c5da2b0899', '2016-03-21 14:03:59', null, null, null, 'tos_3.3.017.048.1_D8655_7_more', null, null, null, '0013320c98c2', null, '默认组', null, null, null, null, null, 'NGFW4000-UF(TG-5130)', null, '2016-03-21 14:03:59', null, 'K1208148534', '0', null, '0', null, null, null, null, null, null, null);
INSERT INTO `dmp_device_info` VALUES ('2c91808553795978015397cb1c6b089b', '2016-03-21 14:09:44', null, null, null, 'tos_3.3.017.048.1_D8655_7_more', null, null, null, '0013320c960c', null, '默认组', null, null, null, null, null, 'NGFW4000-UF(TG-5130)', null, '2016-03-21 14:09:44', null, 'K1208148532', '0', null, '0', null, null, null, null, null, null, null);
INSERT INTO `dmp_device_info` VALUES ('2c91808a51a6ba810151a6bb23c20000', '2015-12-16 01:41:01', ' 测试客户', '防火墙', null, 'tos_3.3.017.048.1_D8655_3_haveroot', 'admin@client.com.cn', 'username', '1380010001', '0013320b00e3xxx', '金融', '北京市', 'notrun', '192.168.72.60', null, null, null, 'TopVpn6000(TV-41604-VONE)', null, '2015-12-16 14:54:33', '中国民生银行', '00133206e650', '0', null, '0', null, null, null, null, null, null, null);
INSERT INTO `dmp_device_info` VALUES ('4028c839513e01ae01513e52d9f90009', '2015-11-29 21:06:36', 'zd2', '防火墙', null, 'tos_3.3.017.048.1_D8655_3_haveroot', 'admin@client.com.cn', 'testdev3', '13800138000', '00133206e650BBB', '金融', '', 'NOTRUN', '192.168.72.11', null, null, null, 'TopVPN6000(TV-41604-VONE)', '300', '2015-12-11 10:07:31', '中国民生银行', '0013320b00e3.001', '0', null, '0', null, null, null, null, null, null, null);



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

INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ec560aa0924', '0', '2016-03-22 22:40:49', '3176', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '69', '272065134', '358411', '76404431');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539edb9be90925', '0', '2016-03-22 23:05:06', '2723', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '93', '1533396178', '359864', '780558251473');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ee0d8420926', '0', '2016-03-22 23:10:49', '3383', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '87', '272835052', '360211', '76408957');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ef7138a0927', '0', '2016-03-22 23:35:06', '2579', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '69', '1536321140', '361664', '781752830083');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539efc4fcd0928', '0', '2016-03-22 23:40:49', '2955', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '58', '273637537', '362011', '76413483');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539f128b1a0929', '0', '2016-03-23 00:05:06', '2507', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '83', '1539001561', '363464', '782832880633');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539f17c752092a', '0', '2016-03-23 00:10:49', '3256', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '87', '274426583', '363811', '76418008');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539f2e02ce092b', '0', '2016-03-23 00:35:06', '2422', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '67', '1541845823', '365264', '783832665891');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539f333ed8092c', '0', '2016-03-23 00:40:49', '3110', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '68', '275335489', '365611', '76422534');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539f497a5e092d', '0', '2016-03-23 01:05:06', '2416', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '56', '1544445400', '367065', '784841456831');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539f4eb65e092e', '0', '2016-03-23 01:10:49', '3285', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '84', '276120590', '367411', '76427060');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539f64f1f1092f', '0', '2016-03-23 01:35:06', '2580', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '73', '1547372507', '368865', '785975013478');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539f6a2de10930', '0', '2016-03-23 01:40:49', '2960', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '57', '276916823', '369211', '76431586');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539f8069840931', '0', '2016-03-23 02:05:06', '2338', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '57', '1550111396', '370665', '787117138487');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539f85a5680932', '0', '2016-03-23 02:10:49', '2980', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '57', '277695193', '371011', '76436112');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539f9be1140933', '0', '2016-03-23 02:35:06', '2963', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '97', '1553115439', '372465', '788379914125');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539fa11cf00934', '0', '2016-03-23 02:40:49', '3595', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '85', '278493319', '372811', '76440638');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539fb758b30935', '0', '2016-03-23 03:05:06', '2326', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '60', '1555898196', '374265', '789579144545');



