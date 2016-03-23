/*
Navicat MySQL Data Transfer

Source Server         : 192.168.59.72
Source Server Version : 50709
Source Host           : 192.168.59.72:3306
Source Database       : device

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-03-23 20:53:38
*/



-- ----------------------------
-- Table structure for `dmp_component`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_component`;
CREATE TABLE `dmp_component` (
  `uuid` varchar(32) NOT NULL,
  `comVersion` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `patchId` varchar(255) DEFAULT NULL,
  `updcomVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for `dmp_data_dict`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_data_dict`;
CREATE TABLE `dmp_data_dict` (
  `uuid` varchar(30) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `KEY_` varchar(255) NOT NULL,
  `VALUE_` varchar(255) NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_nxt6mku9950jyhnxhxl2q6tu4` (`KEY_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_data_dict
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_data_dict_item`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_data_dict_item`;
CREATE TABLE `dmp_data_dict_item` (
  `uuid` varchar(32) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `DATA_DICT_ID` varchar(22) NOT NULL,
  `KEY_` varchar(255) NOT NULL,
  `ORDER_NUM` int(11) NOT NULL,
  `VALUE_` varchar(255) NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_q4ctcdef5hhy3kqwde2inb9h6` (`DATA_DICT_ID`,`KEY_`) USING BTREE,
  CONSTRAINT `dmp_data_dict_item_ibfk_1` FOREIGN KEY (`DATA_DICT_ID`) REFERENCES `dmp_data_dict` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_data_dict_item
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_department`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_department`;
CREATE TABLE `dmp_department` (
  `uuid` varchar(32) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `KEY_` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PARENT_ID` varchar(22) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_ehue9qx53rt5jl3ma2c0ygo13` (`KEY_`) USING BTREE,
  KEY `FK_gcq7hjtdc98qpv0b3nue91n94` (`PARENT_ID`) USING BTREE,
  CONSTRAINT `dmp_department_ibfk_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `dmp_department` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_department
-- ----------------------------


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
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539fbc947a0936', '0', '2016-03-23 03:10:49', '3004', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '54', '279273838', '374611', '76445164');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539fd2d0440937', '0', '2016-03-23 03:35:07', '2915', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '87', '1558528235', '376065', '790598943532');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539fd80c0e0938', '0', '2016-03-23 03:40:50', '2741', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '55', '280068669', '376411', '76449690');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539fee47d70939', '0', '2016-03-23 04:05:07', '2249', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '54', '1561232891', '377865', '791781176266');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ff38394093a', '0', '2016-03-23 04:10:50', '2888', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '63', '280856687', '378211', '76454216');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a009bf67093b', '0', '2016-03-23 04:35:07', '2263', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '54', '1563937892', '379665', '792927644234');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a00efb1f093c', '0', '2016-03-23 04:40:50', '2867', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '63', '281764564', '380011', '76458742');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a0253704093d', '0', '2016-03-23 05:05:07', '2295', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '56', '1566645873', '381465', '793990882482');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a02a72b0093e', '0', '2016-03-23 05:10:50', '2857', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '59', '282540235', '381811', '76463268');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a040ae95093f', '0', '2016-03-23 05:35:07', '2375', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '58', '1569204619', '383265', '795000985483');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a045ea350940', '0', '2016-03-23 05:40:50', '2983', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '52', '283358528', '383612', '76467794');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a05c26280941', '0', '2016-03-23 06:05:07', '2285', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '53', '1571903090', '385065', '796059514164');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a06161bc0942', '0', '2016-03-23 06:10:50', '2713', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '58', '284151101', '385412', '76472320');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a0779dbd0943', '0', '2016-03-23 06:35:07', '2736', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '77', '1574395962', '386865', '797050908100');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a07cd9450944', '0', '2016-03-23 06:40:50', '3491', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '89', '284956329', '387212', '76476846');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a093154d0945', '0', '2016-03-23 07:05:07', '2660', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '123', '1577110091', '388665', '798074225464');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a09850ca0946', '0', '2016-03-23 07:10:50', '2851', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '61', '285774875', '389012', '76481372');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a0ae8cdf0947', '0', '2016-03-23 07:35:07', '2677', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '52', '1580545799', '390466', '799708103336');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a0b3c8500948', '0', '2016-03-23 07:40:50', '4624', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '118', '286564795', '390812', '76485898');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a0ca04710949', '0', '2016-03-23 08:05:07', '3115', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '74', '1588002528', '392266', '804276226970');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a0cf3fd9094a', '0', '2016-03-23 08:10:50', '2931', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '73', '287358953', '392612', '76490424');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a0e57c0a094b', '0', '2016-03-23 08:35:07', '3700', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '78', '1594887486', '394066', '806544960260');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a0eab760094c', '0', '2016-03-23 08:40:50', '3455', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '72', '289926303', '394412', '76494950');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a100f39a094d', '0', '2016-03-23 09:05:07', '4667', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '134', '1605185463', '395866', '809777013620');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a1062ee4094e', '0', '2016-03-23 09:10:50', '6141', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '122', '295303055', '396212', '76499476');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a11c6b2b094f', '0', '2016-03-23 09:35:08', '6866', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '117', '1621753200', '397666', '817349245759');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a121a66f0950', '0', '2016-03-23 09:40:50', '29943', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '151', '300474974', '398012', '76504002');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a137e2c30951', '0', '2016-03-23 10:05:08', '21417', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '167', '1657097235', '399466', '831686832613');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a13d1dfb0952', '0', '2016-03-23 10:10:50', '17836', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '1686', '308682497', '399812', '76508528');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a1535a550953', '0', '2016-03-23 10:35:08', '8940', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '125', '1700363309', '401266', '849825028751');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a16ed1fb0954', '0', '2016-03-23 11:05:08', '8337', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '187', '1742956361', '403066', '870278734129');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a1745aff0955', '0', '2016-03-23 11:11:11', '13047', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '175', '316007839', '403432', '76514192');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a18a49880956', '0', '2016-03-23 11:35:08', '7523', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '156', '1775613801', '404866', '885920907057');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a18fd2890957', '0', '2016-03-23 11:41:11', '7552', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '130', '320789617', '405232', '76518718');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a1a5c11c0958', '0', '2016-03-23 12:05:08', '6117', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '150', '1798990607', '406666', '895372611957');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a1ab4a160959', '0', '2016-03-23 12:11:11', '7191', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '206', '322624035', '407032', '76523244');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a1c138a9095a', '0', '2016-03-23 12:35:08', '6547', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '184', '1824422595', '408466', '906944259837');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a1c6c1a1095b', '0', '2016-03-23 12:41:11', '6738', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '121', '324012784', '408833', '76527770');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a1dcb03d095c', '0', '2016-03-23 13:05:08', '6827', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '115', '1851315691', '410266', '919363444356');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a1e2392c095d', '0', '2016-03-23 13:11:11', '7206', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '140', '325693814', '410633', '76532296');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a1f827d1095e', '0', '2016-03-23 13:35:08', '8908', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '182', '1878214387', '412066', '931723077289');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a1fdb0be095f', '0', '2016-03-23 13:41:11', '10899', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '149', '328349738', '412433', '76536822');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a2139f670960', '0', '2016-03-23 14:05:08', '7698', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '132', '1910940289', '413866', '947141771613');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a219284c0961', '0', '2016-03-23 14:11:11', '11023', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '260', '331830834', '414233', '76541348');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a22f16f80962', '0', '2016-03-23 14:35:08', '14346', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '200', '1946898767', '415667', '965129285099');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a2349fd40963', '0', '2016-03-23 14:41:11', '10006', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '215', '335456605', '416033', '76545874');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a24a8e8a0964', '0', '2016-03-23 15:05:08', '8591', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '214', '1977464698', '417467', '979030848662');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a250175c0965', '0', '2016-03-23 15:11:11', '10563', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '182', '337385826', '417833', '76550400');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a26606220966', '0', '2016-03-23 15:35:09', '8530', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '145', '2014060333', '419267', '995815471606');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a26b8ee80967', '0', '2016-03-23 15:41:11', '9313', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '184', '339464732', '419633', '76554926');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a2817db60968', '0', '2016-03-23 16:05:09', '8835', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '173', '2054021769', '421067', '1020095226913');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a28706860969', '0', '2016-03-23 16:11:11', '8794', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '214', '340783934', '421433', '76559452');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a29cf54e096a', '0', '2016-03-23 16:35:09', '7431', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '191', '2093438359', '422867', '1042645856820');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a2a27e0c096b', '0', '2016-03-23 16:41:11', '9230', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '226', '342399036', '423233', '76563978');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a2b86d05096c', '0', '2016-03-23 17:05:09', '9548', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '247', '2125803274', '424667', '1056830905082');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a2bdf593096d', '0', '2016-03-23 17:11:12', '9371', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '205', '344012384', '425033', '76568504');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a2d3e494096e', '0', '2016-03-23 17:35:09', '9439', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '214', '2159917587', '426467', '1074712284341');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a2d96d49096f', '0', '2016-03-23 17:41:12', '7542', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '134', '345534384', '426833', '76573030');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a2ef5c260970', '0', '2016-03-23 18:05:09', '9001', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '248', '2187434166', '428267', '1086550926255');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a2f4e4de0971', '0', '2016-03-23 18:11:12', '7394', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '149', '346925688', '428633', '76577556');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a30ad3b60972', '0', '2016-03-23 18:35:09', '5314', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '112', '2213673215', '430067', '1098118140480');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a3105c710973', '0', '2016-03-23 18:41:12', '4771', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '93', '348380912', '430433', '76582082');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a3264b4a0974', '0', '2016-03-23 19:05:09', '5563', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '145', '2225437506', '431867', '1104198926421');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a32bd41b0975', '0', '2016-03-23 19:11:12', '6271', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '149', '350340274', '432234', '76586608');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a341c2d90976', '0', '2016-03-23 19:35:09', '3179', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '74', '2230267912', '433667', '1106823117735');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a3474ba40977', '0', '2016-03-23 19:41:12', '3648', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '67', '351186865', '434034', '76591134');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a35d3a650978', '0', '2016-03-23 20:05:09', '2900', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '65', '2233774844', '435467', '1108428307340');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a362c32e0979', '0', '2016-03-23 20:11:12', '4148', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '68', '352473005', '435834', '76595660');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a378b1f4097a', '0', '2016-03-23 20:35:09', '2912', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '67', '2239696343', '437267', '1111855647421');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153a37e3abd097b', '0', '2016-03-23 20:41:12', '4390', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '77', '353264983', '437634', '76600186');


