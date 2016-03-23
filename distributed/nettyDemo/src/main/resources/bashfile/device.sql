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

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dmp_audit_log`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_audit_log`;
CREATE TABLE `dmp_audit_log` (
  `uuid` varchar(30) NOT NULL,
  `APPLICATION` varchar(255) DEFAULT NULL,
  `DETAIL` varchar(2000) DEFAULT NULL,
  `EVENT` varchar(255) DEFAULT NULL,
  `IP` varchar(255) DEFAULT NULL,
  `LOG_TIME` datetime NOT NULL,
  `MODULE` varchar(255) DEFAULT NULL,
  `SOURCE` varchar(255) DEFAULT NULL,
  `URI` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_audit_log
-- ----------------------------
INSERT INTO `dmp_audit_log` VALUES ('23jPCGaZFNSF5JBeUEPLYt', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.125', '2016-03-22 15:22:02', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('2Tuergn2DiSEKxcy8qLFNc', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-15 17:42:14', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('3oUb8ECiecXEJE5XExfF3s', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-16 17:36:00', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('3W7ixK6ZiiMobTnRThzmjt', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.129', '2016-03-17 10:06:19', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('3ZNPC4RVykZjeoEJK4u1qD', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.129', '2016-03-17 13:30:14', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('4wi5rmhiza9Fv4metNhZX6', 'EMP', '用户【admin】登录->用户名与密码不匹配！，还有4次机会', '用户登陆', '192.168.72.125', '2016-03-22 15:21:23', '登陆', null, 'loginout_doLogin', 'admin');
INSERT INTO `dmp_audit_log` VALUES ('5y9CKhzE1e9BQgj9cZREhw', 'EMP', '用户【audit】登录->用户名与密码不匹配！，还有4次机会', '用户登陆', '192.168.72.130', '2016-03-22 15:35:15', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('6jzt7jnH6ExtqxWWs7X8FY', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-16 09:37:25', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('6KdJn2gFXa3x3mv5moyGAc', 'EMP', '用户【audit】登录->用户不在有效期内!，还有4次机会', '用户登陆', '192.168.72.188', '2016-03-15 16:20:53', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('6TFe3REpopXDML9wGkEhVC', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-15 16:21:41', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('6x2awuxYP7myf9prx1ZdKb', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.129', '2016-03-21 14:32:14', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('8x5necHk3PnBmtrrN1FC34', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-21 17:19:57', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('8ZZ8aUk2rZCWMaSCKdM271', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.130', '2016-03-17 11:09:30', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('9TgSWgdkWGeDZqDCRMGwF9', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.129', '2016-03-17 16:52:13', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('A463ppZ4Bd35dPnfwH1o5T', 'EMP', '用户【audit】登录->验证码错误！', '用户登陆', '192.168.72.188', '2016-03-15 17:42:09', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('AiJFfPWHvhKrVbkLYbUsMm', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-22 15:25:48', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('AWNEjz9ZQjsfmvCbiMBiiu', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.129', '2016-03-17 17:13:14', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('B4hgaWHRJt7pGq1G1FiSqg', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-15 17:52:16', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('BEkf4vMVb7EYfERPQ5qsh4', 'EMP', '用户【audit】登录->验证码错误！', '用户登陆', '192.168.72.125', '2016-03-22 15:21:45', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('CQksRj8X4mhrZvvTyzSpPQ', 'EMP', '用户【audit】登录->验证码错误！', '用户登陆', '192.168.72.125', '2016-03-22 15:21:35', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('CrKgiKRcLRS7wyUwv89oBS', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.130', '2016-03-22 13:58:40', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('CTKvxiqptWcSLGKgVvSyyy', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-21 12:47:37', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('D1kY9AZJw15C2K2GkYFZjF', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-16 10:01:36', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('EDjP4YHKx6mWWK5azaVMEL', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-18 11:35:50', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('EENujq3YzL8vZ5gHEd5rMt', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.130', '2016-03-17 11:44:11', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('ExSbdct1LnJMUuq1wW6Dmc', 'EMP', '用户【admin】登录->用户名与密码不匹配！，还有4次机会', '用户登陆', '172.19.25.250', '2016-03-21 14:02:10', '登陆', null, 'loginout_doLogin', 'admin');
INSERT INTO `dmp_audit_log` VALUES ('F6pjE5UtyxEeNFde5oyiM1', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-22 15:33:36', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('G6CTenuPqvKiC6Q3MD3dJ1', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.130', '2016-03-17 10:06:48', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('GDyLGzBc8evGLM6SkTQ7NW', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-16 11:26:47', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('HTH6h747Fr5NQoRVcp49xh', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.129', '2016-03-17 16:32:06', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('J895h8xk7Nb9CjTiuuoVv2', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-23 19:30:12', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('JF5CWUeARjF2LCnmX6Sric', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.129', '2016-03-16 16:19:47', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('JLzFzTyvngyDMwUvuFRDu7', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-15 19:56:34', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('K6y2PLY8XuoeZeMdoM2MjV', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-18 15:55:28', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('KiD4d9v71QtKL36UTp7SNJ', 'EMP', '用户【audit】登录->验证码错误！', '用户登陆', '192.168.79.245', '2016-03-16 10:54:19', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('KvcS2ZAouhUvWmhGJiDHGX', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-16 10:54:33', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('L8UYEMCDiQtD19AAvXnMNX', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-21 09:39:54', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('LYt9D81te6j7QRTDrG8mvw', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.129', '2016-03-18 14:02:35', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('MdifGXCNQmmkqqH2KDL8Nv', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-15 20:00:03', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('Nc7H9YdatwGLdPtA49Q34i', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.8.14', '2016-03-21 17:39:56', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('NKDZijEQvihtCa4JMSqKBt', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-21 14:09:59', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('NVVMVs8UJZ8z7gSd5ZNiHg', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-21 14:05:03', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('NYUdKYYXMMtKDtWWPVKpr5', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-16 09:42:44', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('p1h1Lz1NLQNEMa7E5W3Wr', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.96.96', '2016-03-15 17:17:10', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('Pkp1CoAaY3MutcjectfXw6', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-15 17:50:57', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('PscK9LqYzbmeRZUV4GFLYv', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-16 10:43:45', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('PSfFWHQAwP4eWwpvzdCGdu', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-18 14:18:47', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('PVxXCQpMfsrUYNyDaEeG1e', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.130', '2016-03-22 15:35:29', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('R1VA518SGKvrurg6zTCf5C', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.130', '2016-03-17 16:58:00', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('RnfueAK5mSKPYPAiF8PsD3', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-15 16:27:28', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('RVn6F8ZXaZYXdgaZxRigiu', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.130', '2016-03-22 15:03:39', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('SocKntem3UzZbwnu3RKFoF', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-16 15:29:24', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('SV5QTYYNkpVjAMxBb4Yy7z', 'EMP', '用户【audit】登录->用户名与密码不匹配！，还有4次机会', '用户登陆', '192.168.72.130', '2016-03-18 13:39:49', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('TJ7Epgw5jW8pm9oKLHPnN', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-18 15:21:57', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('TkQ6ep2BrTU1U9Vu4A9MPy', 'EMP', '用户【audit】登录->验证码错误！', '用户登陆', '192.168.72.130', '2016-03-17 10:06:36', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('Toov843jvoRiEjSAkYb4py', 'EMP', '用户【audit2】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.129', '2016-03-16 16:18:32', '登陆', null, 'loginout_doLogin', 'audit2');
INSERT INTO `dmp_audit_log` VALUES ('UaTSjwUEQYEMfSGgXDQfdA', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-23 18:39:21', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('UdMSUmw59AEoCLq6R1Z3yB', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-16 14:05:18', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('UN5UbL8i1xL4whB2Xe5UdR', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.130', '2016-03-18 13:39:59', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('UUhGSXHdWDHHECbf7RVhV7', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-17 09:38:07', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('V1YJgafMMPPD6RWMW9qApG', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-17 14:35:15', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('XXNJCe3NySCgYxRJGoEwq5', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-21 18:17:22', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('YBGYqQyVk513u8ofMotcE3', 'EMP', '用户【superman】登录->用户不存在！，还有4次机会', '用户登陆', '172.19.25.250', '2016-03-21 14:02:04', '登陆', null, 'loginout_doLogin', 'superman');
INSERT INTO `dmp_audit_log` VALUES ('YRbi9kYTA39gXkNmqHT3B2', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.72.188', '2016-03-21 11:31:25', '登陆', null, 'loginout_doLogin', 'audit');
INSERT INTO `dmp_audit_log` VALUES ('YUkTZsUobBgiLoAeejqKJJ', 'EMP', '用户【audit】登录->登陆成功，进入默认页:ok', '用户登陆', '192.168.79.245', '2016-03-18 18:24:53', '登陆', null, 'loginout_doLogin', 'audit');

-- ----------------------------
-- Table structure for `dmp_authorization`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_authorization`;
CREATE TABLE `dmp_authorization` (
  `uuid` varchar(30) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `PERMISSION` varchar(255) DEFAULT NULL,
  `PERMISSION_TYPE` int(11) DEFAULT NULL,
  `RESOURCES_ID` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(22) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `FK_aaum6sh78r5whwrbkxm79x8x9` (`ROLE_ID`) USING BTREE,
  CONSTRAINT `dmp_authorization_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `dmp_role` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_authorization
-- ----------------------------
INSERT INTO `dmp_authorization` VALUES ('25HDTysfnWgqMKFNCpRGjS', '2015-11-04 16:34:59', '2015-11-04 16:34:59', 'Device_m_i:*', '1', '4', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');
INSERT INTO `dmp_authorization` VALUES ('5om9nhyjgG7aZGoAiz3xrX', '2015-11-04 16:34:58', '2015-11-04 16:34:58', 'Index_h:*', '1', '1', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');
INSERT INTO `dmp_authorization` VALUES ('C66cu74LPyaWzD3cstSkQN', '2015-11-04 16:34:59', '2015-11-04 16:34:59', 'Up_m_p:*', '1', '9', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');
INSERT INTO `dmp_authorization` VALUES ('GeyFMPHkNrsr5psQ2VhXE7', '2015-11-04 16:34:59', '2015-11-04 16:34:59', 'Device_m_w:*', '1', '5', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');
INSERT INTO `dmp_authorization` VALUES ('H6GiU5m5AxwtmMjww5Cgyk', '2015-11-04 16:34:59', '2015-11-04 16:34:59', 'Device_m_q:*', '1', '6', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');
INSERT INTO `dmp_authorization` VALUES ('LMVZ7s74LZjoPf4QAoyvNU', '2015-11-04 16:34:58', '2015-11-04 16:34:58', 'Device_m:*', '1', '3', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');
INSERT INTO `dmp_authorization` VALUES ('LzAvVS3Nq3bG5j9KiCTnHw', '2015-11-04 16:34:59', '2015-11-04 16:34:59', 'Up_c_h:*', '1', '12', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');
INSERT INTO `dmp_authorization` VALUES ('MLXaFpNcW5Z9qcXwAHGhn5', '2015-11-04 16:34:59', '2015-11-04 16:34:59', 'Up_m:*', '1', '7', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');
INSERT INTO `dmp_authorization` VALUES ('MNrezFy9TSaQXQJrkdGDsg', '2015-11-04 16:34:59', '2015-11-04 16:34:59', 'Up_m_i:*', '1', '8', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');
INSERT INTO `dmp_authorization` VALUES ('MSrgaeGCkVTfqkKxDnGV9j', '2015-11-04 16:34:58', '2015-11-04 16:34:58', 'Root:*', '1', '0', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');
INSERT INTO `dmp_authorization` VALUES ('U3KaHt41e6KW3hq2fUYz1e', '2015-11-04 16:34:59', '2015-11-04 16:34:59', 'Up_p_h:*', '1', '10', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');
INSERT INTO `dmp_authorization` VALUES ('WE4ewSKuh3yGFEFATGZsn2', '2015-11-04 16:34:59', '2015-11-04 16:34:59', 'Up_m_c:*', '1', '11', 'NavItem', 'HXQqftw4QG3R4ZxLHBH4ft');

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
-- Table structure for `dmp_configupdate_history`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_configupdate_history`;
CREATE TABLE `dmp_configupdate_history` (
  `uuid` varchar(32) NOT NULL,
  `configdesc` varchar(500) DEFAULT NULL,
  `configname` varchar(80) DEFAULT NULL,
  `configtype` varchar(80) DEFAULT NULL,
  `configurl` varchar(300) DEFAULT NULL,
  `configuuid` varchar(32) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `custumername` varchar(128) DEFAULT NULL,
  `devicetype` varchar(10) DEFAULT NULL,
  `deviceuuid` varchar(32) DEFAULT NULL,
  `deviceversion` varchar(80) NOT NULL,
  `devname` varchar(128) DEFAULT NULL,
  `devphone` varchar(255) DEFAULT NULL,
  `devrmail` varchar(32) DEFAULT NULL,
  `eth0mac` varchar(80) NOT NULL,
  `firstIndustry` varchar(128) DEFAULT NULL,
  `groupid` varchar(32) DEFAULT NULL,
  `hastatus` varchar(10) NOT NULL,
  `ip` varchar(80) DEFAULT NULL,
  `matchversion` varchar(80) DEFAULT NULL,
  `physicallocation` varchar(128) DEFAULT NULL,
  `product` varchar(80) DEFAULT NULL,
  `reportfrequency` int(11) DEFAULT NULL,
  `reporttime` varchar(80) DEFAULT NULL,
  `secondeIndustry` varchar(128) DEFAULT NULL,
  `serialnumber` varchar(80) NOT NULL,
  `stepstate` varchar(1) DEFAULT NULL,
  `stermofvalidity` varchar(80) DEFAULT NULL,
  `systemtype` varchar(255) DEFAULT NULL,
  `upgradedesc` varchar(500) DEFAULT NULL,
  `upgradeversion` varchar(80) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_configupdate_history
-- ----------------------------
INSERT INTO `dmp_configupdate_history` VALUES ('2Fvh3aELfrBZMPUChCpsSG', '', 'zff', '防火墙', '\\home\\nfs\\frequency\\config20160126180308.txt', 'UBbzaeyPucNpZRXmhrgny2', '2016-01-26 18:03:48', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', null, 'TopVPN6000(TV-41604-VONE)', '334', null, '中国民生银行', '0013320b00e3.001', '0', null, '0', null, '1', '2016-01-26 18:03:48');
INSERT INTO `dmp_configupdate_history` VALUES ('GSFiwP3t7SrXtKuXVyxjHo', '', 'zzz', '防火墙', '\\home\\nfs\\frequency\\config20160126180155.txt', 'JaUGfuuR2Hn8zzQwfsyHKe', '2016-01-26 18:02:04', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', null, 'TopVPN6000(TV-41604-VONE)', '333', null, '中国民生银行', '0013320b00e3.001', '0', null, '0', null, '1', '2016-01-26 18:02:04');
INSERT INTO `dmp_configupdate_history` VALUES ('LwnL7KX8BDw15JxHJMpdpM', 'zzzd22', 'zzzff', '防火墙', 'E:\\\\config\\config20160123180123.txt', 'XouWrWoAGQ5pqRVwf8QVNq', '2016-01-26 18:01:37', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', null, 'TopVPN6000(TV-41604-VONE)', '33344', null, '中国民生银行', '0013320b00e3.001', '0', null, '0', null, '1', '2016-01-26 18:01:37');

-- ----------------------------
-- Table structure for `dmp_config_info`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_config_info`;
CREATE TABLE `dmp_config_info` (
  `uuid` varchar(32) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `deviceNum` int(11) DEFAULT '0',
  `ext0` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` varchar(255) DEFAULT NULL,
  `matchversion` varchar(255) DEFAULT NULL,
  `patchdesc` varchar(500) DEFAULT NULL,
  `patchname` varchar(255) DEFAULT NULL,
  `patchtype` varchar(255) DEFAULT NULL,
  `patchurl` varchar(255) DEFAULT NULL,
  `reportfrequency` int(11) DEFAULT '86400',
  `systemtype` varchar(1) DEFAULT '0',
  `unUpDeviceNum` int(11) DEFAULT '0',
  `upDeviceNum` int(11) DEFAULT '0',
  `updDeviceNum` int(11) DEFAULT '0',
  `upgradedesc` varchar(500) DEFAULT NULL,
  `unSuccDeviceNum` int(11) DEFAULT '0',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_config_info
-- ----------------------------
INSERT INTO `dmp_config_info` VALUES ('Bh3xdnDyRhe5VCXftvmesL', '2016-03-15 17:52:54', '1', null, 'config20160315175253.txt', '30', null, null, 'tos_3.3.017.048.1_D8655_7_haveroot', '', '30s', '防火墙', '/nfs-data/dmp/frequency/config20160315175253.txt', '30', '0', '1', '0', '1', null, '0');

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
-- Table structure for `dmp_devicegroup`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_devicegroup`;
CREATE TABLE `dmp_devicegroup` (
  `uuid` varchar(32) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `groupbyname` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `parentsid` varchar(255) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_devicegroup
-- ----------------------------
INSERT INTO `dmp_devicegroup` VALUES ('123', '2015-10-16 10:42:23', '根组', null, '设备', null, '2015-10-16 10:42:42');
INSERT INTO `dmp_devicegroup` VALUES ('2PkpsD4rMPcqvU17XQQhtG', null, null, null, '天津市', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('3mgYX8V4mj4238FizhzdNN', null, null, null, '贵州省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('3orDyzEAQGk2b8ACZRTjZx', null, null, null, '广西壮族自治区', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('3VeDFfnZ1fEyQcgJpCuNk8', null, null, null, '湖北省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('4w1tTE4rafGyeFAY9S5Ddu', null, null, null, '福建省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('5ufkZRvLTdqToWf8Wi2C92', null, null, null, '江苏省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('5XBzL1dfXkK43WU1oZp5jm', null, null, null, '北京市', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('6CqRdZ2ADvWvkZe8uQC9vk', null, null, null, '辽宁省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('6Js7MK6xPRpjP8hqUJKqp2', null, null, null, '陕西省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('8SrKrhiwoM9Dynzr7VUnj4', null, null, null, '浙江省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('9Ftdc4qg4tF1DpjALbfD8Y', null, null, null, '香港特别行政区', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('AZM822RixsfzJ8mNSXrrua', null, null, null, '山西省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('Bk2Xe7veAsaT1EP9qJbuMu', null, null, null, '上海市', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('ddddddd', null, null, null, '默认组', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('DsYnJCAsyqKuBspjSouTTs', null, null, null, '台湾省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('FbHh9G9BMGdPUuuEfwLvKt', null, null, null, '新疆维吾尔自治区', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('fESCvHqJcC92h9mMu2Z6H', null, null, null, '海南省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('FqpGjbQxXYn9QtC8jXnKaR', null, null, null, '吉林省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('FYDBU3NFU6bhkjUMLDLh7E', null, null, null, '安徽省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('H5pPhtjcQNPgCZbHgPE8LY', null, null, null, '湖南省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('JpwBgX24wrrVBe3fw4YxuT', null, null, null, '宁夏回族自治区', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('LKBAb31Ps6ikzh8mR9GPEX', null, null, null, '青海省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('LzgrmZpwe77KnFjWnp1FbK', null, null, null, '四川省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('MX9fJksNwpfLkA6MdQVigJ', null, null, null, '澳门特别行政区', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('NE6e8yh2B3e4FjFzv2ZBFp', null, null, null, '江西省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('NvBRsL9JjwCYGP4z31Cef6', null, null, null, '云南省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('QmgNdb9WieGRQzHeL7zVxG', null, null, null, '河北省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('RCwqEEeBcCwX6D3Vy4VSqT', null, null, null, '广东省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('Rp7APTPh9EFgwQ7t6eFwvT', null, null, null, '河南省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('SVmP6riYHmAJjRtXLn8rbK', null, null, null, '重庆市', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('Te91vXmmT8EnsXAS7EaEEK', null, null, null, '西藏自治区', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('TkP8eXtwd3zLBSgZNueaRW', null, null, null, '内蒙古自治区', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('UcCtJKs9To5CBw656MNXuy', null, null, null, '甘肃省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('VAMmDeN3KnABgyvTz6Npfv', null, null, null, '山东省', '123', null);
INSERT INTO `dmp_devicegroup` VALUES ('WYD5dcD7vdZYzWBWSEtssf', null, null, null, '黑龙江省', '123', null);

-- ----------------------------
-- Table structure for `dmp_device_config`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_device_config`;
CREATE TABLE `dmp_device_config` (
  `uuid` varchar(32) NOT NULL,
  `configid` varchar(255) DEFAULT NULL,
  `deviceid` varchar(255) DEFAULT NULL,
  `deviceversion` varchar(255) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `reportfrequency` int(11) DEFAULT NULL,
  `serialnumber` varchar(255) DEFAULT NULL,
  `systemtype` varchar(255) DEFAULT NULL,
  `upgradestatus` varchar(255) DEFAULT NULL,
  `upgradetime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_device_config
-- ----------------------------
INSERT INTO `dmp_device_config` VALUES ('KDA3mC6Mqwofj57YGwqbAo', 'Bh3xdnDyRhe5VCXftvmesL', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', '/nfs-data/dmp/frequency/config20160315175253.txt', '30', '0010f3328f94', '0', '2', '2016-03-15 17:53:10');

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
-- Table structure for `dmp_device_patch`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_device_patch`;
CREATE TABLE `dmp_device_patch` (
  `uuid` varchar(32) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `deviceid` varchar(255) DEFAULT NULL,
  `deviceversion` varchar(10000) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `patchid` varchar(255) DEFAULT NULL,
  `patchversion` varchar(10000) DEFAULT NULL,
  `remindtime` int(11) DEFAULT NULL,
  `serialnumber` varchar(255) DEFAULT NULL,
  `systemtype` varchar(255) DEFAULT NULL,
  `upgradestatus` varchar(255) DEFAULT NULL,
  `upgradetime` datetime DEFAULT NULL,
  `firstremindtime` datetime DEFAULT NULL,
  `issuedtag` int(11) DEFAULT NULL,
  `isComp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_device_patch
-- ----------------------------
INSERT INTO `dmp_device_patch` VALUES ('6MkoDXvEZ6sYPtZHQPzASG', '2016-03-17 16:54:55', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', '/nfs-data/dmp/data/patch20160317165304.txt', '8LkHggULrono8gz82wjizK', '123', '86400', '0013320b00e3.001', '0', '1', '2016-03-17 16:54:55', null, '0', '0');
INSERT INTO `dmp_device_patch` VALUES ('FDRMYaZfpSaqEsXJVaLsK9', '2016-03-17 16:54:54', '2c91808a51a6ba810151a6bb23c20000', 'tos_3.3.017.048.1_D8655_3_haveroot', '/nfs-data/dmp/data/patch20160317165304.txt', '8LkHggULrono8gz82wjizK', '123', '86400', '00133206e650', '0', '1', '2016-03-17 16:54:54', null, '0', '0');
INSERT INTO `dmp_device_patch` VALUES ('Kc3BfuC2UX169AZCJ2F3J', '2016-03-17 17:01:01', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', '/nfs-data/dmp/data/patch20160317170051.txt', 'S3AmvWCY5ga8KEKVXnhDia', 'tos_3.3.017.048.1_D8655_8_haveroot', '86400', '0010f3328f94', '0', '6', '2016-03-19 15:45:50', '2016-03-17 17:01:05', '0', '0');

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
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153795ab4410001', '0', '2016-03-15 16:18:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '7897', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153795e63dc0003', '20', '2016-03-15 16:22:22', '200', '2c918085537959780153795e63d90002', null, null, null, null, null, '40', '30', null, '45', null);
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153795e790f0004', '20', '2016-03-15 16:22:28', '200', '2c918085537959780153795e63d90002', null, null, null, null, null, '40', '30', null, '45', null);
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153795f2ff40005', '20', '2016-03-15 16:23:15', '200', '2c918085537959780153795e63d90002', null, null, null, null, null, '40', '30', null, '45', null);
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153795f48120006', '0', '2016-03-15 16:23:21', '26', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '166265', '8198', '17657344');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537963dc3f0007', '0', '2016-03-15 16:28:21', '29', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '172522', '8498', '18338932');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153796521850008', '20', '2016-03-15 16:29:44', '200', '2c918085537959780153795e63d90002', null, null, null, null, null, '40', '30', null, '45', null);
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537965a8270009', '0', '2016-03-15 16:30:19', '26', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '175101', '8616', '18621231');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537968706e000a', '0', '2016-03-15 16:33:21', '28', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '179086', '8798', '19029798');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153796a7b0e000b', '0', '2016-03-15 16:35:35', '46', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '183684', '8932', '19577280');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153796abf19000c', '0', '2016-03-15 16:35:52', '47', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '184295', '8950', '19655180');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153796b304a000d', '0', '2016-03-15 16:36:21', '46', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '185286', '8979', '19773320');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153796b90b0000e', '20', '2016-03-15 16:36:46', '200', '2c918085537959780153795e63d90002', null, null, null, null, null, '40', '30', null, '45', null);
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153796c2533000f', '0', '2016-03-15 16:37:24', '42', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '187198', '9041', '19993605');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153796d04960010', '0', '2016-03-15 16:38:21', '44', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '189136', '9098', '20209804');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153797198c50011', '0', '2016-03-15 16:43:21', '40', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '198805', '9398', '21285405');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153797366e40012', '20', '2016-03-15 16:45:19', '200', '2c918085537959780153795e63d90002', null, null, null, null, null, '40', '30', null, '45', null);
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379762cf40013', '0', '2016-03-15 16:48:21', '44', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '208157', '9699', '22358808');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537976b9610014', '0', '2016-03-15 16:48:57', '44', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '3', '209272', '9734', '22496415');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379779aa90015', '0', '2016-03-15 16:49:55', '38', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '211132', '9792', '22714174');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537977f3ef0016', '0', '2016-03-15 16:50:18', '38', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '211946', '9815', '22817332');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153797ac1200017', '0', '2016-03-15 16:53:21', '37', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '217669', '9999', '23477658');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153797f554b0018', '0', '2016-03-15 16:58:21', '33', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '3', '226855', '10299', '24538471');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537983e9780019', '0', '2016-03-15 17:03:21', '45', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '3', '236850', '10599', '25710308');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537984e856001a', '0', '2016-03-15 17:04:27', '43', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '238650', '10664', '25920651');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379879189001b', '0', '2016-03-15 17:07:21', '35', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '0', '244083', '10838', '26555715');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379887d9d001c', '0', '2016-03-15 17:08:22', '26', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '245607', '10899', '26740874');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537989431b001d', '0', '2016-03-15 17:09:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '10949', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153798c8041001e', '0', '2016-03-15 17:12:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '11162', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153798cf179001f', '0', '2016-03-15 17:13:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '11191', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153798d11c40020', '0', '2016-03-15 17:13:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '11199', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537991a6820021', '0', '2016-03-15 17:18:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '11499', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379963b380022', '0', '2016-03-15 17:23:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '11799', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537996a0f90023', '20', '2016-03-15 17:23:48', '200', '2c918085537959780153795e63d90002', null, null, null, null, null, '40', '30', null, '45', null);
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153799acff00024', '0', '2016-03-15 17:28:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '12100', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153799f64ac0025', '0', '2016-03-15 17:33:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '12400', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379a3f95e0026', '0', '2016-03-15 17:38:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '12700', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379a88e1f0027', '0', '2016-03-15 17:43:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13000', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ad22ce0028', '0', '2016-03-15 17:48:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13300', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b180bb0029', '0', '2016-03-15 17:53:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13587', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b1f6d2002a', '0', '2016-03-15 17:53:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13617', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b26cd0002b', '0', '2016-03-15 17:54:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13647', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b2e2e2002c', '0', '2016-03-15 17:54:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13677', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b358e7002d', '0', '2016-03-15 17:55:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13707', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b3cedf002e', '0', '2016-03-15 17:55:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13738', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b444d8002f', '0', '2016-03-15 17:56:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13768', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b4baca0030', '0', '2016-03-15 17:56:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13798', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b530c00031', '0', '2016-03-15 17:57:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13828', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b5a6b90032', '0', '2016-03-15 17:57:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13858', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b61caf0033', '0', '2016-03-15 17:58:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13889', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b692b90034', '0', '2016-03-15 17:58:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13919', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b708b90035', '0', '2016-03-15 17:59:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13949', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b77eb70036', '0', '2016-03-15 17:59:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '13979', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b7f4a70037', '0', '2016-03-15 18:00:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14009', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b86aa10038', '0', '2016-03-15 18:00:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14040', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b8e0970039', '0', '2016-03-15 18:01:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14070', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b95691003a', '0', '2016-03-15 18:01:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14100', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379b9cc89003b', '0', '2016-03-15 18:02:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14130', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ba4282003c', '0', '2016-03-15 18:02:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14160', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379baa978003d', '0', '2016-03-15 18:03:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14187', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379bab879003e', '0', '2016-03-15 18:03:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14191', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379bb2e72003f', '0', '2016-03-15 18:03:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14221', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379bba46b0040', '0', '2016-03-15 18:04:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14251', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379bc1a610041', '0', '2016-03-15 18:04:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14281', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379bc905a0042', '0', '2016-03-15 18:05:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14311', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379bd06510043', '0', '2016-03-15 18:05:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14342', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379bd7c490044', '0', '2016-03-15 18:06:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14372', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379bdf23f0045', '0', '2016-03-15 18:06:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14402', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379be68320046', '0', '2016-03-15 18:07:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14432', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379bede290047', '0', '2016-03-15 18:07:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14462', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379bf54220048', '0', '2016-03-15 18:08:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14493', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379bfca180049', '0', '2016-03-15 18:08:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14523', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c04012004a', '0', '2016-03-15 18:09:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14553', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c0b607004b', '0', '2016-03-15 18:09:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14583', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c12c03004c', '0', '2016-03-15 18:10:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14613', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c1a20a004d', '0', '2016-03-15 18:10:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14644', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c217ff004e', '0', '2016-03-15 18:11:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14674', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c28df3004f', '0', '2016-03-15 18:11:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14704', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c303eb0050', '0', '2016-03-15 18:12:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14734', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c379df0051', '0', '2016-03-15 18:12:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14764', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c3efd30052', '0', '2016-03-15 18:13:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14795', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c465c60053', '0', '2016-03-15 18:13:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14825', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c4dbb80054', '0', '2016-03-15 18:14:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14855', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c551a80055', '0', '2016-03-15 18:14:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14885', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c5c7a00056', '0', '2016-03-15 18:15:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14915', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c63d980057', '0', '2016-03-15 18:15:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14946', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c6b38c0058', '0', '2016-03-15 18:16:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '14976', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c729800059', '0', '2016-03-15 18:16:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15006', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c79f79005a', '0', '2016-03-15 18:17:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15036', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c81570005b', '0', '2016-03-15 18:17:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15066', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c88b6c005c', '0', '2016-03-15 18:18:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15097', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c90163005d', '0', '2016-03-15 18:18:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15127', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c97760005e', '0', '2016-03-15 18:19:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15157', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379c9ed59005f', '0', '2016-03-15 18:19:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15187', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ca635a0060', '0', '2016-03-15 18:20:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15217', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379cad9530061', '0', '2016-03-15 18:20:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15248', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379cb4f490062', '0', '2016-03-15 18:21:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15278', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379cbc5390063', '0', '2016-03-15 18:21:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15308', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379cc3b340064', '0', '2016-03-15 18:22:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15338', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ccb1310065', '0', '2016-03-15 18:22:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15368', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379cd271e0066', '0', '2016-03-15 18:23:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15399', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379cd9d120067', '0', '2016-03-15 18:23:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15429', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ce13090068', '0', '2016-03-15 18:24:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15459', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ce89000069', '0', '2016-03-15 18:24:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15489', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379cefef8006a', '0', '2016-03-15 18:25:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15519', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379cf74e7006b', '0', '2016-03-15 18:25:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15550', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379cfeae0006c', '0', '2016-03-15 18:26:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15580', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d060d9006d', '0', '2016-03-15 18:26:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15610', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d0d6c8006e', '0', '2016-03-15 18:27:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15640', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d14cb7006f', '0', '2016-03-15 18:27:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15670', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d1c2a90070', '0', '2016-03-15 18:28:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15701', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d2389e0071', '0', '2016-03-15 18:28:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15731', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d2ae920072', '0', '2016-03-15 18:29:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15761', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d324880073', '0', '2016-03-15 18:29:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15791', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d39a810074', '0', '2016-03-15 18:30:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15821', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d410780075', '0', '2016-03-15 18:30:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15852', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d486700076', '0', '2016-03-15 18:31:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15882', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d4fc690077', '0', '2016-03-15 18:31:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15912', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d572620078', '0', '2016-03-15 18:32:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15942', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d5e8560079', '0', '2016-03-15 18:32:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '15972', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d65e4b007a', '0', '2016-03-15 18:33:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16003', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d6d43d007b', '0', '2016-03-15 18:33:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16033', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d74a2f007c', '0', '2016-03-15 18:34:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16063', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d7c041007d', '0', '2016-03-15 18:34:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16093', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d8363a007e', '0', '2016-03-15 18:35:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16123', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d8ac31007f', '0', '2016-03-15 18:35:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16154', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d9222f0080', '0', '2016-03-15 18:36:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16184', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379d9982a0081', '0', '2016-03-15 18:36:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16214', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379da0e210082', '0', '2016-03-15 18:37:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16244', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379da84120083', '0', '2016-03-15 18:37:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16274', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379dafa0f0084', '0', '2016-03-15 18:38:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16305', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379db70000085', '0', '2016-03-15 18:38:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16335', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379dbe5690086', '0', '2016-03-15 18:39:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16365', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379dc5b6b0087', '0', '2016-03-15 18:39:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16395', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379dcd1660088', '0', '2016-03-15 18:40:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16425', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379dd47630089', '0', '2016-03-15 18:40:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16455', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ddbd5e008a', '0', '2016-03-15 18:41:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16486', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379de3357008b', '0', '2016-03-15 18:41:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16516', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379dea94a008c', '0', '2016-03-15 18:42:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16546', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379df1f3d008d', '0', '2016-03-15 18:42:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16576', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379df9537008e', '0', '2016-03-15 18:43:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16606', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e00b2b008f', '0', '2016-03-15 18:43:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16637', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e0811d0090', '0', '2016-03-15 18:44:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16667', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e0f7170091', '0', '2016-03-15 18:45:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16697', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e16d0c0092', '0', '2016-03-15 18:45:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16727', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e1e3050093', '0', '2016-03-15 18:46:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16757', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e259050094', '0', '2016-03-15 18:46:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16788', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e2cf090095', '0', '2016-03-15 18:47:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16818', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e345050096', '0', '2016-03-15 18:47:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16848', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e3baed0097', '0', '2016-03-15 18:48:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16878', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e430d50098', '0', '2016-03-15 18:48:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16908', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e4a6be0099', '0', '2016-03-15 18:49:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16939', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e51cad009a', '0', '2016-03-15 18:49:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16969', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e592a4009b', '0', '2016-03-15 18:50:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '16999', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e60893009c', '0', '2016-03-15 18:50:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17029', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e67e78009d', '0', '2016-03-15 18:51:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17059', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e6f3e1009e', '0', '2016-03-15 18:51:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17089', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e7694a009f', '0', '2016-03-15 18:52:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17119', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e7deb300a0', '0', '2016-03-15 18:52:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17150', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e8544400a1', '0', '2016-03-15 18:53:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17180', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e8c9ae00a2', '0', '2016-03-15 18:53:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17210', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e93f1c00a3', '0', '2016-03-15 18:54:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17240', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379e9b48b00a4', '0', '2016-03-15 18:54:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17270', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ea29f800a5', '0', '2016-03-15 18:55:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17300', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ea9f6700a6', '0', '2016-03-15 18:55:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17330', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379eb14d600a7', '0', '2016-03-15 18:56:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17360', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379eb8a4300a8', '0', '2016-03-15 18:56:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17390', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ebffad00a9', '0', '2016-03-15 18:57:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17420', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ec751600aa', '0', '2016-03-15 18:57:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17450', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ecea8400ab', '0', '2016-03-15 18:58:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17480', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ed5ff400ac', '0', '2016-03-15 18:58:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17510', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379edd56000ad', '0', '2016-03-15 18:59:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17540', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ee4acd00ae', '0', '2016-03-15 18:59:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17570', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379eec03c00af', '0', '2016-03-15 19:00:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17600', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ef35a700b0', '0', '2016-03-15 19:00:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17631', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379efab1100b1', '0', '2016-03-15 19:01:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17661', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f0207f00b2', '0', '2016-03-15 19:01:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17691', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f095ec00b3', '0', '2016-03-15 19:02:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17721', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f10b5b00b4', '0', '2016-03-15 19:02:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17751', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f180c700b5', '0', '2016-03-15 19:03:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17781', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f1f63100b6', '0', '2016-03-15 19:03:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17811', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f26b9a00b7', '0', '2016-03-15 19:04:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17841', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f2e10700b8', '0', '2016-03-15 19:04:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17871', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f3567400b9', '0', '2016-03-15 19:05:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17901', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f3cbde00ba', '0', '2016-03-15 19:05:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17931', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f4414900bb', '0', '2016-03-15 19:06:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17961', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f4b6b500bc', '0', '2016-03-15 19:06:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '17991', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f52c1e00bd', '0', '2016-03-15 19:07:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18021', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f5a18800be', '0', '2016-03-15 19:07:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18051', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f616f500bf', '0', '2016-03-15 19:08:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18081', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f68c6700c0', '0', '2016-03-15 19:08:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18111', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f701d000c1', '0', '2016-03-15 19:09:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18142', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f7773b00c2', '0', '2016-03-15 19:09:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18172', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f7eca800c3', '0', '2016-03-15 19:10:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18202', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f8621800c4', '0', '2016-03-15 19:10:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18232', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f8d78400c5', '0', '2016-03-15 19:11:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18262', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f94cf000c6', '0', '2016-03-15 19:11:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18292', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379f9c25d00c7', '0', '2016-03-15 19:12:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18322', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379fa37c500c8', '0', '2016-03-15 19:12:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18352', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379faad3200c9', '0', '2016-03-15 19:13:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18382', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379fb229e00ca', '0', '2016-03-15 19:13:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18412', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379fb980c00cb', '0', '2016-03-15 19:14:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18442', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379fc0d7400cc', '0', '2016-03-15 19:14:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18472', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379fc82dd00cd', '0', '2016-03-15 19:15:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18502', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379fcf84b00ce', '0', '2016-03-15 19:15:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18532', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379fd6db500cf', '0', '2016-03-15 19:16:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18562', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379fde32300d0', '0', '2016-03-15 19:16:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18592', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379fe588f00d1', '0', '2016-03-15 19:17:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18622', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379fecdf900d2', '0', '2016-03-15 19:17:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18653', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ff436600d3', '0', '2016-03-15 19:18:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18683', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015379ffb8d000d4', '0', '2016-03-15 19:18:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18713', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a002e3f00d5', '0', '2016-03-15 19:19:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18743', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a00a3ab00d6', '0', '2016-03-15 19:19:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18773', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a01191700d7', '0', '2016-03-15 19:20:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18803', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a018e8100d8', '0', '2016-03-15 19:20:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18833', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0203eb00d9', '0', '2016-03-15 19:21:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18863', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a02795500da', '0', '2016-03-15 19:21:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18893', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a02eec300db', '0', '2016-03-15 19:22:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18923', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a03643100dc', '0', '2016-03-15 19:22:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18953', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a03d99d00dd', '0', '2016-03-15 19:23:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '18983', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a044f0900de', '0', '2016-03-15 19:23:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19013', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a04c47500df', '0', '2016-03-15 19:24:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19043', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0539df00e0', '0', '2016-03-15 19:24:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19073', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a05af4c00e1', '0', '2016-03-15 19:25:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19103', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0624b600e2', '0', '2016-03-15 19:25:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19133', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a069a2800e3', '0', '2016-03-15 19:26:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19164', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a070f9600e4', '0', '2016-03-15 19:26:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19194', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a07850300e5', '0', '2016-03-15 19:27:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19224', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a07fa7100e6', '0', '2016-03-15 19:27:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19254', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a086fdc00e7', '0', '2016-03-15 19:28:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19284', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a08e54700e8', '0', '2016-03-15 19:28:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19314', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a095aaf00e9', '0', '2016-03-15 19:29:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19344', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a09d02c00ea', '0', '2016-03-15 19:29:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19374', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0a459800eb', '0', '2016-03-15 19:30:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19404', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0abb0800ec', '0', '2016-03-15 19:30:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19434', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0b307700ed', '0', '2016-03-15 19:31:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19464', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0ba5e400ee', '0', '2016-03-15 19:31:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19494', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0c1b5200ef', '0', '2016-03-15 19:32:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19524', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0c90be00f0', '0', '2016-03-15 19:32:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19554', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0d063200f1', '0', '2016-03-15 19:33:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19584', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0d7b9e00f2', '0', '2016-03-15 19:33:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19614', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0df10600f3', '0', '2016-03-15 19:34:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19645', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0e667000f4', '0', '2016-03-15 19:34:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19675', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0edbd900f5', '0', '2016-03-15 19:35:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19705', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0f514200f6', '0', '2016-03-15 19:35:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19735', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a0fc6b000f7', '0', '2016-03-15 19:36:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19765', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a103c1f00f8', '0', '2016-03-15 19:36:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19795', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a10b18b00f9', '0', '2016-03-15 19:37:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19825', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1126f500fa', '0', '2016-03-15 19:37:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19855', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a119c6100fb', '0', '2016-03-15 19:38:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19885', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1211cb00fc', '0', '2016-03-15 19:38:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19915', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a12873400fd', '0', '2016-03-15 19:39:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19945', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a12fc9e00fe', '0', '2016-03-15 19:39:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '19975', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a13721400ff', '0', '2016-03-15 19:40:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20005', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a13e77d0100', '0', '2016-03-15 19:40:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20035', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a145ce60101', '0', '2016-03-15 19:41:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20065', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a14d2500102', '0', '2016-03-15 19:41:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20095', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1547be0103', '0', '2016-03-15 19:42:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20125', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a15bd270104', '0', '2016-03-15 19:42:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20156', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1632920105', '0', '2016-03-15 19:43:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20186', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a16a8040106', '0', '2016-03-15 19:43:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20216', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a171d700107', '0', '2016-03-15 19:44:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20246', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1792dc0108', '0', '2016-03-15 19:44:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20276', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1808460109', '0', '2016-03-15 19:45:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20306', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a187db0010a', '0', '2016-03-15 19:45:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20336', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a18f31c010b', '0', '2016-03-15 19:46:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20366', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a196888010c', '0', '2016-03-15 19:46:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20396', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a19ddfc010d', '0', '2016-03-15 19:47:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20426', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1a536a010e', '0', '2016-03-15 19:47:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20456', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1ac8d3010f', '0', '2016-03-15 19:48:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20486', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1b3e3d0110', '0', '2016-03-15 19:48:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20516', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1bb3a50111', '0', '2016-03-15 19:49:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20546', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1c290f0112', '0', '2016-03-15 19:49:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20576', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1c9e7d0113', '0', '2016-03-15 19:50:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20606', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1d13ed0114', '0', '2016-03-15 19:50:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20636', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1d89570115', '0', '2016-03-15 19:51:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20667', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1dfec20116', '0', '2016-03-15 19:51:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20697', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1e742f0117', '0', '2016-03-15 19:52:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20727', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1ee99c0118', '0', '2016-03-15 19:52:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20757', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1f5f070119', '0', '2016-03-15 19:53:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20787', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a1fd473011a', '0', '2016-03-15 19:53:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20817', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2049e5011b', '0', '2016-03-15 19:54:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20847', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a20bf50011c', '0', '2016-03-15 19:54:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20877', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2134bb011d', '0', '2016-03-15 19:55:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20907', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a21aa25011e', '0', '2016-03-15 19:55:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20937', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a221f93011f', '0', '2016-03-15 19:56:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20967', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2295040120', '0', '2016-03-15 19:56:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '20997', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a230a6d0121', '0', '2016-03-15 19:57:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21027', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a237fdc0122', '0', '2016-03-15 19:57:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21057', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a23f5490123', '0', '2016-03-15 19:58:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21087', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a246ab70124', '0', '2016-03-15 19:58:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21117', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a24e0240125', '0', '2016-03-15 19:59:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21148', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a25558d0126', '0', '2016-03-15 19:59:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21178', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a25cafd0127', '0', '2016-03-15 20:00:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21208', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2640680128', '0', '2016-03-15 20:00:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21238', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a26b5de0129', '0', '2016-03-15 20:01:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21268', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a272b4c012a', '0', '2016-03-15 20:01:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21298', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a27a0b5012b', '0', '2016-03-15 20:02:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21328', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a281623012c', '0', '2016-03-15 20:02:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21358', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a288b94012d', '0', '2016-03-15 20:03:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21388', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a290107012e', '0', '2016-03-15 20:03:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21418', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a297673012f', '0', '2016-03-15 20:04:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21448', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a29ebe50130', '0', '2016-03-15 20:04:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21478', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2a614e0131', '0', '2016-03-15 20:05:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21508', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2ad6bb0132', '0', '2016-03-15 20:05:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21538', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2b4c240133', '0', '2016-03-15 20:06:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21568', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2bc18e0134', '0', '2016-03-15 20:06:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21598', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2c36fb0135', '0', '2016-03-15 20:07:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21628', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2cac650136', '0', '2016-03-15 20:07:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21659', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2d21d70137', '0', '2016-03-15 20:08:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21689', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2d97400138', '0', '2016-03-15 20:08:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21719', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2e0d3d0139', '0', '2016-03-15 20:09:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21749', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2e833f013a', '0', '2016-03-15 20:09:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21779', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2ef938013b', '0', '2016-03-15 20:10:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21809', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2f6f3b013c', '0', '2016-03-15 20:10:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21839', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a2fe536013d', '0', '2016-03-15 20:11:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21870', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a305b34013e', '0', '2016-03-15 20:11:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21900', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a30d12a013f', '0', '2016-03-15 20:12:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21930', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3147220140', '0', '2016-03-15 20:12:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21960', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a31bd190141', '0', '2016-03-15 20:13:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '21990', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a32331a0142', '0', '2016-03-15 20:13:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22021', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a32a9100143', '0', '2016-03-15 20:14:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22051', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a331f050144', '0', '2016-03-15 20:14:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22081', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3394fd0145', '0', '2016-03-15 20:15:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22111', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a340ae20146', '0', '2016-03-15 20:15:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22141', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3480d60147', '0', '2016-03-15 20:16:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22172', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a34f6bb0148', '0', '2016-03-15 20:16:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22202', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a356ca80149', '0', '2016-03-15 20:17:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22232', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a35e291014a', '0', '2016-03-15 20:17:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22262', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a365877014b', '0', '2016-03-15 20:18:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22292', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a36ce69014c', '0', '2016-03-15 20:18:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22323', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a374451014d', '0', '2016-03-15 20:19:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22353', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a37ba35014e', '0', '2016-03-15 20:19:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22383', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a38301d014f', '0', '2016-03-15 20:20:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22413', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a38a6090150', '0', '2016-03-15 20:20:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22443', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a391bec0151', '0', '2016-03-15 20:21:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22474', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3991d20152', '0', '2016-03-15 20:21:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22504', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3a07b90153', '0', '2016-03-15 20:22:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22534', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3a7da40154', '0', '2016-03-15 20:22:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22564', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3af3870155', '0', '2016-03-15 20:23:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22594', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3b69710156', '0', '2016-03-15 20:23:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22624', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3bdf580157', '0', '2016-03-15 20:24:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22655', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3c55440158', '0', '2016-03-15 20:24:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22685', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3ccb2c0159', '0', '2016-03-15 20:25:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22715', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3d411f015a', '0', '2016-03-15 20:25:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22745', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3db712015b', '0', '2016-03-15 20:26:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22775', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3e2d01015c', '0', '2016-03-15 20:26:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22806', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3ea2f8015d', '0', '2016-03-15 20:27:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22836', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3f18ec015e', '0', '2016-03-15 20:27:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22866', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a3f8ed5015f', '0', '2016-03-15 20:28:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22896', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4004cf0160', '0', '2016-03-15 20:28:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22926', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a407ab40161', '0', '2016-03-15 20:29:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22957', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a40f0a60162', '0', '2016-03-15 20:29:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '22987', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a41668c0163', '0', '2016-03-15 20:30:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23017', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a41dc770164', '0', '2016-03-15 20:30:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23047', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a42527a0165', '0', '2016-03-15 20:31:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23077', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a42c8650166', '0', '2016-03-15 20:31:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23107', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a433e550167', '0', '2016-03-15 20:32:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23138', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a43b4490168', '0', '2016-03-15 20:32:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23168', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a442a3c0169', '0', '2016-03-15 20:33:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23198', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a44a02c016a', '0', '2016-03-15 20:33:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23228', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a451613016b', '0', '2016-03-15 20:34:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23258', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a458bfc016c', '0', '2016-03-15 20:34:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23289', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a468a9e016d', '0', '2016-03-15 20:35:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23354', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a470085016e', '0', '2016-03-15 20:36:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23384', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a47766f016f', '0', '2016-03-15 20:36:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23414', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a47ec5b0170', '0', '2016-03-15 20:37:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23444', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4862460171', '0', '2016-03-15 20:37:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23475', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a48d82b0172', '0', '2016-03-15 20:38:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23505', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a494e180173', '0', '2016-03-15 20:38:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23535', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a49c4060174', '0', '2016-03-15 20:39:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23565', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4a39eb0175', '0', '2016-03-15 20:39:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23595', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4aaff80176', '0', '2016-03-15 20:40:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23625', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4b25e20177', '0', '2016-03-15 20:40:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23656', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4b9bd40178', '0', '2016-03-15 20:41:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23686', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4c11c30179', '0', '2016-03-15 20:41:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23716', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4c87ab017a', '0', '2016-03-15 20:42:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23746', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4cfd8f017b', '0', '2016-03-15 20:42:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23776', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4d7380017c', '0', '2016-03-15 20:43:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23807', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4de967017d', '0', '2016-03-15 20:44:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23837', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4e5f59017e', '0', '2016-03-15 20:44:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23867', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4ed541017f', '0', '2016-03-15 20:45:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23897', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4f4b2c0180', '0', '2016-03-15 20:45:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23927', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a4fc1150181', '0', '2016-03-15 20:46:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23958', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5037010182', '0', '2016-03-15 20:46:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '23988', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a50acf80183', '0', '2016-03-15 20:47:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24018', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5122e90184', '0', '2016-03-15 20:47:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24048', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5198da0185', '0', '2016-03-15 20:48:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24078', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a520ecd0186', '0', '2016-03-15 20:48:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24109', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5284bf0187', '0', '2016-03-15 20:49:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24139', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a52fac30188', '0', '2016-03-15 20:49:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24169', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5370ae0189', '0', '2016-03-15 20:50:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24199', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a53e69e018a', '0', '2016-03-15 20:50:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24229', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a545c86018b', '0', '2016-03-15 20:51:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24259', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a54d281018c', '0', '2016-03-15 20:51:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24290', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a554875018d', '0', '2016-03-15 20:52:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24320', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a55be96018e', '0', '2016-03-15 20:52:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24350', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a563485018f', '0', '2016-03-15 20:53:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24380', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a56aa770190', '0', '2016-03-15 20:53:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24411', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a57205e0191', '0', '2016-03-15 20:54:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24441', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5796590192', '0', '2016-03-15 20:54:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24471', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a580c3c0193', '0', '2016-03-15 20:55:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24501', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a58822d0194', '0', '2016-03-15 20:55:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24531', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a58f81b0195', '0', '2016-03-15 20:56:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24561', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a596e0e0196', '0', '2016-03-15 20:56:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24592', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a59e4050197', '0', '2016-03-15 20:57:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24622', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5a59f80198', '0', '2016-03-15 20:57:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24652', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5acff50199', '0', '2016-03-15 20:58:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24682', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5b45e2019a', '0', '2016-03-15 20:58:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24712', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5bbbe4019b', '0', '2016-03-15 20:59:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24743', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5c31de019c', '0', '2016-03-15 20:59:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24773', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5ca7d4019d', '0', '2016-03-15 21:00:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24803', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5d1dc4019e', '0', '2016-03-15 21:00:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24833', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5d93b5019f', '0', '2016-03-15 21:01:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24863', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5e09af01a0', '0', '2016-03-15 21:01:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24894', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5e7fa401a1', '0', '2016-03-15 21:02:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24924', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5ef59c01a2', '0', '2016-03-15 21:02:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24954', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5f6b9401a3', '0', '2016-03-15 21:03:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '24984', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a5fe18501a4', '0', '2016-03-15 21:03:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25014', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a60578001a5', '0', '2016-03-15 21:04:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25045', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a60cd7401a6', '0', '2016-03-15 21:04:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25075', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a61436e01a7', '0', '2016-03-15 21:05:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25105', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a61b96901a8', '0', '2016-03-15 21:05:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25135', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a622f5d01a9', '0', '2016-03-15 21:06:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25165', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a62a55301aa', '0', '2016-03-15 21:06:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25196', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a631b4501ab', '0', '2016-03-15 21:07:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25226', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a63914401ac', '0', '2016-03-15 21:07:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25256', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a64073301ad', '0', '2016-03-15 21:08:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25286', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a647d2601ae', '0', '2016-03-15 21:08:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25316', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a64f31901af', '0', '2016-03-15 21:09:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25347', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a65690f01b0', '0', '2016-03-15 21:09:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25377', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a65df0601b1', '0', '2016-03-15 21:10:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25407', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6654f901b2', '0', '2016-03-15 21:10:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25437', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a66caeb01b3', '0', '2016-03-15 21:11:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25467', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6740e601b4', '0', '2016-03-15 21:11:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25498', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a67b6da01b5', '0', '2016-03-15 21:12:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25528', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a682ccb01b6', '0', '2016-03-15 21:12:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25558', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a68a2c301b7', '0', '2016-03-15 21:13:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25588', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6918bf01b8', '0', '2016-03-15 21:13:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25618', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a698ebc01b9', '0', '2016-03-15 21:14:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25649', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6a04b401ba', '0', '2016-03-15 21:14:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25679', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6a7ad301bb', '0', '2016-03-15 21:15:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25709', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6af0d101bc', '0', '2016-03-15 21:15:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25739', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6b66e801bd', '0', '2016-03-15 21:16:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25769', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6bdce001be', '0', '2016-03-15 21:16:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25800', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6c52e501bf', '0', '2016-03-15 21:17:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25830', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6cc91a01c0', '0', '2016-03-15 21:17:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25860', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6d3f0701c1', '0', '2016-03-15 21:18:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25890', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6db4f801c2', '0', '2016-03-15 21:18:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25921', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6e2ae501c3', '0', '2016-03-15 21:19:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25951', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6ea0d701c4', '0', '2016-03-15 21:19:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '25981', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6f16c501c5', '0', '2016-03-15 21:20:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26011', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a6f8cb601c6', '0', '2016-03-15 21:20:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26041', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7002a901c7', '0', '2016-03-15 21:21:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26071', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a70789901c8', '0', '2016-03-15 21:21:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26102', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a70ee8701c9', '0', '2016-03-15 21:22:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26132', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a71647401ca', '0', '2016-03-15 21:22:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26162', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a71da6401cb', '0', '2016-03-15 21:23:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26192', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a72505701cc', '0', '2016-03-15 21:23:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26222', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a72c64401cd', '0', '2016-03-15 21:24:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26253', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a733c3701ce', '0', '2016-03-15 21:24:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26283', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a73b22a01cf', '0', '2016-03-15 21:25:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26313', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a74281d01d0', '0', '2016-03-15 21:25:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26343', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a749e0a01d1', '0', '2016-03-15 21:26:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26373', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7513fb01d2', '0', '2016-03-15 21:26:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26404', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7589e901d3', '0', '2016-03-15 21:27:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26434', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a75ffe001d4', '0', '2016-03-15 21:27:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26464', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7675d501d5', '0', '2016-03-15 21:28:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26494', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a76ebc101d6', '0', '2016-03-15 21:28:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26524', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7761b201d7', '0', '2016-03-15 21:29:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26555', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a77d7a501d8', '0', '2016-03-15 21:29:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26585', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a784d9b01d9', '0', '2016-03-15 21:30:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26615', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a78c38901da', '0', '2016-03-15 21:30:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26645', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a79397901db', '0', '2016-03-15 21:31:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26675', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a79af6a01dc', '0', '2016-03-15 21:31:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26706', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7a255801dd', '0', '2016-03-15 21:32:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26736', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7a9b4a01de', '0', '2016-03-15 21:32:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26766', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7b113701df', '0', '2016-03-15 21:33:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26796', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7b873301e0', '0', '2016-03-15 21:33:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26826', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7bfd2201e1', '0', '2016-03-15 21:34:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26856', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7c730f01e2', '0', '2016-03-15 21:34:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26887', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7ce90001e3', '0', '2016-03-15 21:35:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26917', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7d5ef201e4', '0', '2016-03-15 21:35:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26947', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7dd4e801e5', '0', '2016-03-15 21:36:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '26977', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7e4ad601e6', '0', '2016-03-15 21:36:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27007', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7ec0d001e7', '0', '2016-03-15 21:37:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27038', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7f36cb01e8', '0', '2016-03-15 21:37:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27068', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a7facbd01e9', '0', '2016-03-15 21:38:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27098', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8022af01ea', '0', '2016-03-15 21:38:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27128', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a80989b01eb', '0', '2016-03-15 21:39:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27158', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a810e9a01ec', '0', '2016-03-15 21:39:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27189', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a81848f01ed', '0', '2016-03-15 21:40:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27219', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a81fa7d01ee', '0', '2016-03-15 21:40:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27249', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a82706e01ef', '0', '2016-03-15 21:41:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27279', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a82e66001f0', '0', '2016-03-15 21:41:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27309', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a835c5e01f1', '0', '2016-03-15 21:42:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27340', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a83d25701f2', '0', '2016-03-15 21:42:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27370', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a84484601f3', '0', '2016-03-15 21:43:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27400', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a84be4201f4', '0', '2016-03-15 21:43:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27430', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a85343701f5', '0', '2016-03-15 21:44:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27460', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a85aa2e01f6', '0', '2016-03-15 21:44:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27491', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a86201d01f7', '0', '2016-03-15 21:45:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27521', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a86961001f8', '0', '2016-03-15 21:45:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27551', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a870bf501f9', '0', '2016-03-15 21:46:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27581', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8781d301fa', '0', '2016-03-15 21:46:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27611', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a87f7b401fb', '0', '2016-03-15 21:47:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27641', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a886d9601fc', '0', '2016-03-15 21:47:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27672', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a88e37601fd', '0', '2016-03-15 21:48:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27702', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a89595901fe', '0', '2016-03-15 21:48:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27732', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a89cf3601ff', '0', '2016-03-15 21:49:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27762', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8a451f0200', '0', '2016-03-15 21:49:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27792', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8abafd0201', '0', '2016-03-15 21:50:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27823', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8b30ef0202', '0', '2016-03-15 21:50:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27853', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8ba6cc0203', '0', '2016-03-15 21:51:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27883', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8c1cae0204', '0', '2016-03-15 21:51:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27913', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8c92920205', '0', '2016-03-15 21:52:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27943', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8d08700206', '0', '2016-03-15 21:52:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '27973', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8d7e540207', '0', '2016-03-15 21:53:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28004', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8df4340208', '0', '2016-03-15 21:53:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28034', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8e6a1b0209', '0', '2016-03-15 21:54:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28064', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8ee008020a', '0', '2016-03-15 21:54:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28094', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8f55ea020b', '0', '2016-03-15 21:55:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28124', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a8fcbc9020c', '0', '2016-03-15 21:55:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28155', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9041ab020d', '0', '2016-03-15 21:56:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28185', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a90b78d020e', '0', '2016-03-15 21:56:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28215', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a912d79020f', '0', '2016-03-15 21:57:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28245', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a91a35b0210', '0', '2016-03-15 21:57:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28275', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9219390211', '0', '2016-03-15 21:58:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28305', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a928f220212', '0', '2016-03-15 21:58:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28336', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9305080213', '0', '2016-03-15 21:59:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28366', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a937af20214', '0', '2016-03-15 21:59:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28396', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a93f0d80215', '0', '2016-03-15 22:00:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28426', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9466b40216', '0', '2016-03-15 22:00:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28456', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a94dca80217', '0', '2016-03-15 22:01:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28487', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9552870218', '0', '2016-03-15 22:02:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28517', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a95c8750219', '0', '2016-03-15 22:02:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28547', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a963e66021a', '0', '2016-03-15 22:03:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28577', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a96b44c021b', '0', '2016-03-15 22:03:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28607', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a972a36021c', '0', '2016-03-15 22:04:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28637', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a97a01a021d', '0', '2016-03-15 22:04:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28668', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a981604021e', '0', '2016-03-15 22:05:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28698', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a988bea021f', '0', '2016-03-15 22:05:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28728', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9901cb0220', '0', '2016-03-15 22:06:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28758', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9977b10221', '0', '2016-03-15 22:06:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28788', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a99ed8d0222', '0', '2016-03-15 22:07:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28819', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9a637f0223', '0', '2016-03-15 22:07:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28849', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9ad9690224', '0', '2016-03-15 22:08:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28879', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9b4f4f0225', '0', '2016-03-15 22:08:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28909', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9bc52b0226', '0', '2016-03-15 22:09:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28939', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9c3b0a0227', '0', '2016-03-15 22:09:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '28969', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9cb1170228', '0', '2016-03-15 22:10:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29000', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9d26fc0229', '0', '2016-03-15 22:10:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29030', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9d9cd9022a', '0', '2016-03-15 22:11:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29060', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9e12c5022b', '0', '2016-03-15 22:11:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29090', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9e88ad022c', '0', '2016-03-15 22:12:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29120', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9efe9a022d', '0', '2016-03-15 22:12:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29151', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9f747f022e', '0', '2016-03-15 22:13:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29181', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537a9fea5e022f', '0', '2016-03-15 22:13:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29211', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa060420230', '0', '2016-03-15 22:14:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29241', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa0d6240231', '0', '2016-03-15 22:14:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29271', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa14c0e0232', '0', '2016-03-15 22:15:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29301', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa1c1f20233', '0', '2016-03-15 22:15:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29332', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa237d80234', '0', '2016-03-15 22:16:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29362', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa2adb10235', '0', '2016-03-15 22:16:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29392', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa3239b0236', '0', '2016-03-15 22:17:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29422', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa3998c0237', '0', '2016-03-15 22:17:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29452', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa40f720238', '0', '2016-03-15 22:18:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29483', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa485560239', '0', '2016-03-15 22:18:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29513', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa4fb39023a', '0', '2016-03-15 22:19:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29543', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa5711f023b', '0', '2016-03-15 22:19:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29573', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa5e70a023c', '0', '2016-03-15 22:20:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29603', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa65ce5023d', '0', '2016-03-15 22:20:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29633', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa6d2cb023e', '0', '2016-03-15 22:21:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29664', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa748b4023f', '0', '2016-03-15 22:21:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29694', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa7be9e0240', '0', '2016-03-15 22:22:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29724', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa8348c0241', '0', '2016-03-15 22:22:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29754', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa8aa710242', '0', '2016-03-15 22:23:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29784', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa9205b0243', '0', '2016-03-15 22:23:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29815', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aa9964c0244', '0', '2016-03-15 22:24:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29845', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aaa0c360245', '0', '2016-03-15 22:24:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29875', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aaa82200246', '0', '2016-03-15 22:25:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29905', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aaaf8120247', '0', '2016-03-15 22:25:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29935', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aab6e020248', '0', '2016-03-15 22:26:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29966', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aabe4000249', '0', '2016-03-15 22:26:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '29996', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aac59e9024a', '0', '2016-03-15 22:27:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30026', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aaccfde024b', '0', '2016-03-15 22:27:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30056', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aad45d4024c', '0', '2016-03-15 22:28:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30086', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aadbbb5024d', '0', '2016-03-15 22:28:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30116', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aae31bf024e', '0', '2016-03-15 22:29:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30147', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aaea7b0024f', '0', '2016-03-15 22:29:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30177', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aaf1da30250', '0', '2016-03-15 22:30:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30207', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aaf93970251', '0', '2016-03-15 22:30:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30237', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab009a80252', '0', '2016-03-15 22:31:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30267', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab07f990253', '0', '2016-03-15 22:31:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30298', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab0f58b0254', '0', '2016-03-15 22:32:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30328', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab16b7a0255', '0', '2016-03-15 22:32:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30358', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab1e1660256', '0', '2016-03-15 22:33:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30388', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab257510257', '0', '2016-03-15 22:33:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30418', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab2cd420258', '0', '2016-03-15 22:34:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30449', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab343300259', '0', '2016-03-15 22:34:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30479', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab3b91c025a', '0', '2016-03-15 22:35:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30509', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab42f06025b', '0', '2016-03-15 22:35:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30539', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab4a4f8025c', '0', '2016-03-15 22:36:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30569', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab51aee025d', '0', '2016-03-15 22:36:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30600', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab590dc025e', '0', '2016-03-15 22:37:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30630', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab606cc025f', '0', '2016-03-15 22:37:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30660', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab67cb70260', '0', '2016-03-15 22:38:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30690', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab6f2aa0261', '0', '2016-03-15 22:38:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30720', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab768a40262', '0', '2016-03-15 22:39:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30751', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab7dea50263', '0', '2016-03-15 22:39:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30781', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab854980264', '0', '2016-03-15 22:40:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30811', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab8ca8e0265', '0', '2016-03-15 22:40:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30841', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab9407a0266', '0', '2016-03-15 22:41:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30871', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ab9b66d0267', '0', '2016-03-15 22:41:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30902', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aba2c650268', '0', '2016-03-15 22:42:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30932', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abaa2580269', '0', '2016-03-15 22:42:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30962', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abb1846026a', '0', '2016-03-15 22:43:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '30992', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abb8e32026b', '0', '2016-03-15 22:43:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31022', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abc0428026c', '0', '2016-03-15 22:44:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31053', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abc7a22026d', '0', '2016-03-15 22:44:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31083', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abcf012026e', '0', '2016-03-15 22:45:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31113', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abd6603026f', '0', '2016-03-15 22:45:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31143', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abddbf50270', '0', '2016-03-15 22:46:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31173', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abe51eb0271', '0', '2016-03-15 22:46:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31203', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abec7dd0272', '0', '2016-03-15 22:47:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31234', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abf3dd10273', '0', '2016-03-15 22:47:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31264', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537abfb3cb0274', '0', '2016-03-15 22:48:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31294', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac029c10275', '0', '2016-03-15 22:48:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31324', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac09fb20276', '0', '2016-03-15 22:49:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31354', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac1159e0277', '0', '2016-03-15 22:49:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31385', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac18b970278', '0', '2016-03-15 22:50:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31415', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac2017f0279', '0', '2016-03-15 22:50:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31445', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac27778027a', '0', '2016-03-15 22:51:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31475', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac2ed6a027b', '0', '2016-03-15 22:51:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31505', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac36357027c', '0', '2016-03-15 22:52:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31536', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac3d948027d', '0', '2016-03-15 22:52:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31566', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac44f37027e', '0', '2016-03-15 22:53:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31596', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac4c51f027f', '0', '2016-03-15 22:53:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31626', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac53b150280', '0', '2016-03-15 22:54:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31656', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac5b1070281', '0', '2016-03-15 22:54:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31687', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac627000282', '0', '2016-03-15 22:55:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31717', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac69cf60283', '0', '2016-03-15 22:55:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31747', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac712e70284', '0', '2016-03-15 22:56:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31777', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac788d40285', '0', '2016-03-15 22:56:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31807', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac7fed10286', '0', '2016-03-15 22:57:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31838', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac874c80287', '0', '2016-03-15 22:57:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31868', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac8eac10288', '0', '2016-03-15 22:58:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31898', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac960b80289', '0', '2016-03-15 22:58:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31928', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ac9d6af028a', '0', '2016-03-15 22:59:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31958', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aca4c9e028b', '0', '2016-03-15 22:59:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '31989', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537acac291028c', '0', '2016-03-15 23:00:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32019', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537acb3884028d', '0', '2016-03-15 23:00:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32049', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537acbae76028e', '0', '2016-03-15 23:01:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32079', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537acc245b028f', '0', '2016-03-15 23:01:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32109', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537acc9a510290', '0', '2016-03-15 23:02:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32140', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537acd103e0291', '0', '2016-03-15 23:02:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32170', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537acd86330292', '0', '2016-03-15 23:03:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32200', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537acdfc260293', '0', '2016-03-15 23:03:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32230', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ace72190294', '0', '2016-03-15 23:04:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32260', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537acee80c0295', '0', '2016-03-15 23:04:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32290', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537acf5dfe0296', '0', '2016-03-15 23:05:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32321', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537acfd3f30297', '0', '2016-03-15 23:05:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32351', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad049e80298', '0', '2016-03-15 23:06:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32381', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad0bfd90299', '0', '2016-03-15 23:06:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32411', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad135cb029a', '0', '2016-03-15 23:07:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32441', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad1abc4029b', '0', '2016-03-15 23:07:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32472', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad221be029c', '0', '2016-03-15 23:08:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32502', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad297dc029d', '0', '2016-03-15 23:08:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32532', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad30dcf029e', '0', '2016-03-15 23:09:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32562', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad383c7029f', '0', '2016-03-15 23:09:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32592', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad3f9c102a0', '0', '2016-03-15 23:10:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32623', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad46fb502a1', '0', '2016-03-15 23:10:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32653', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad4e5ab02a2', '0', '2016-03-15 23:11:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32683', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad55bab02a3', '0', '2016-03-15 23:11:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32713', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad5d1a102a4', '0', '2016-03-15 23:12:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32743', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad6479402a5', '0', '2016-03-15 23:12:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32774', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad6bd8502a6', '0', '2016-03-15 23:13:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32804', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad7338802a7', '0', '2016-03-15 23:13:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32834', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad7a97e02a8', '0', '2016-03-15 23:14:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32864', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad81f7402a9', '0', '2016-03-15 23:14:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32894', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad8956f02aa', '0', '2016-03-15 23:15:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32925', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad90b5b02ab', '0', '2016-03-15 23:15:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32955', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad9814b02ac', '0', '2016-03-15 23:16:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '32985', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ad9f73502ad', '0', '2016-03-15 23:16:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33015', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ada6d1402ae', '0', '2016-03-15 23:17:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33045', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537adae2fb02af', '0', '2016-03-15 23:17:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33076', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537adb58dd02b0', '0', '2016-03-15 23:18:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33106', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537adbcec202b1', '0', '2016-03-15 23:18:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33136', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537adc449e02b2', '0', '2016-03-15 23:19:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33166', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537adcba8102b3', '0', '2016-03-15 23:19:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33196', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537add308202b4', '0', '2016-03-15 23:20:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33227', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537adda66602b5', '0', '2016-03-15 23:21:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33257', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ade1c4502b6', '0', '2016-03-15 23:21:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33287', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ade922602b7', '0', '2016-03-15 23:22:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33317', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537adf080802b8', '0', '2016-03-15 23:22:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33347', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537adf7ded02b9', '0', '2016-03-15 23:23:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33377', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537adff3ca02ba', '0', '2016-03-15 23:23:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33408', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae069a702bb', '0', '2016-03-15 23:24:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33438', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae0df8f02bc', '0', '2016-03-15 23:24:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33468', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae1556f02bd', '0', '2016-03-15 23:25:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33498', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae1cb6002be', '0', '2016-03-15 23:25:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33528', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae2413d02bf', '0', '2016-03-15 23:26:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33558', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae2b71f02c0', '0', '2016-03-15 23:26:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33589', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae32cfd02c1', '0', '2016-03-15 23:27:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33619', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae3a2da02c2', '0', '2016-03-15 23:27:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33649', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae418c502c3', '0', '2016-03-15 23:28:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33679', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae48ea502c4', '0', '2016-03-15 23:28:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33709', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae5048b02c5', '0', '2016-03-15 23:29:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33740', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae57a8002c6', '0', '2016-03-15 23:29:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33770', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae5f06702c7', '0', '2016-03-15 23:30:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33800', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae6665602c8', '0', '2016-03-15 23:30:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33830', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae6dc3902c9', '0', '2016-03-15 23:31:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33860', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae7521e02ca', '0', '2016-03-15 23:31:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33890', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae7c7ff02cb', '0', '2016-03-15 23:32:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33921', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae83de002cc', '0', '2016-03-15 23:32:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33951', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae8b3ce02cd', '0', '2016-03-15 23:33:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '33981', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae929ac02ce', '0', '2016-03-15 23:33:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34011', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ae99f8a02cf', '0', '2016-03-15 23:34:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34041', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aea156b02d0', '0', '2016-03-15 23:34:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34072', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aea8b4802d1', '0', '2016-03-15 23:35:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34102', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aeb013202d2', '0', '2016-03-15 23:35:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34132', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aeb771802d3', '0', '2016-03-15 23:36:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34162', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aebed0402d4', '0', '2016-03-15 23:36:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34192', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aec62e602d5', '0', '2016-03-15 23:37:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34222', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aecd8c402d6', '0', '2016-03-15 23:37:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34253', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aed4ead02d7', '0', '2016-03-15 23:38:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34283', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aedc48e02d8', '0', '2016-03-15 23:38:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34313', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aee3a7502d9', '0', '2016-03-15 23:39:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34343', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aeeb05102da', '0', '2016-03-15 23:39:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34373', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aef263402db', '0', '2016-03-15 23:40:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34404', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aef9c2502dc', '0', '2016-03-15 23:40:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34434', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af0120b02dd', '0', '2016-03-15 23:41:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34464', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af087f002de', '0', '2016-03-15 23:41:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34494', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af0fdce02df', '0', '2016-03-15 23:42:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34524', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af173dc02e0', '0', '2016-03-15 23:42:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34554', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af1e9c802e1', '0', '2016-03-15 23:43:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34585', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af25fae02e2', '0', '2016-03-15 23:43:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34615', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af2d58e02e3', '0', '2016-03-15 23:44:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34645', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af34b7102e4', '0', '2016-03-15 23:44:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34675', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af3c15602e5', '0', '2016-03-15 23:45:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34705', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af4374402e6', '0', '2016-03-15 23:45:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34736', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af4ad2e02e7', '0', '2016-03-15 23:46:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34766', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af5231a02e8', '0', '2016-03-15 23:46:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34796', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af5990502e9', '0', '2016-03-15 23:47:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34826', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af60eea02ea', '0', '2016-03-15 23:47:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34856', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af684db02eb', '0', '2016-03-15 23:48:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34886', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af6fac302ec', '0', '2016-03-15 23:48:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34917', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af770a902ed', '0', '2016-03-15 23:49:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34947', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af7e69702ee', '0', '2016-03-15 23:49:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '34977', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af85c9a02ef', '0', '2016-03-15 23:50:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35007', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af8d28a02f0', '0', '2016-03-15 23:50:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35037', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af9487002f1', '0', '2016-03-15 23:51:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35068', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537af9be6902f2', '0', '2016-03-15 23:51:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35098', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537afa345702f3', '0', '2016-03-15 23:52:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35128', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537afaaa4c02f4', '0', '2016-03-15 23:52:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35158', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537afb204602f5', '0', '2016-03-15 23:53:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35188', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537afb966c02f6', '0', '2016-03-15 23:53:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35219', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537afc0c6002f7', '0', '2016-03-15 23:54:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35249', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537afc825802f8', '0', '2016-03-15 23:54:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35279', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537afcf84802f9', '0', '2016-03-15 23:55:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35309', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537afd6e5102fa', '0', '2016-03-15 23:55:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35339', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537afde44202fb', '0', '2016-03-15 23:56:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35370', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537afe5a3c02fc', '0', '2016-03-15 23:56:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35400', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537afed02202fd', '0', '2016-03-15 23:57:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35430', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537aff460902fe', '0', '2016-03-15 23:57:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35460', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537affbbf902ff', '0', '2016-03-15 23:58:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35490', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0031f40300', '0', '2016-03-15 23:58:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35521', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b00a7df0301', '0', '2016-03-15 23:59:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35551', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b011dd10302', '0', '2016-03-15 23:59:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35581', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0193b80303', '0', '2016-03-16 00:00:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35611', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0209a90304', '0', '2016-03-16 00:00:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35641', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b027f8d0305', '0', '2016-03-16 00:01:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35672', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b02f5770306', '0', '2016-03-16 00:01:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35702', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b036b6a0307', '0', '2016-03-16 00:02:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35732', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b03e15b0308', '0', '2016-03-16 00:02:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35762', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b04574d0309', '0', '2016-03-16 00:03:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35792', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b04cd3d030a', '0', '2016-03-16 00:03:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35822', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b05432e030b', '0', '2016-03-16 00:04:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35853', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b05b920030c', '0', '2016-03-16 00:04:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35883', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b062f0d030d', '0', '2016-03-16 00:05:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35913', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b06a4fc030e', '0', '2016-03-16 00:05:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35943', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b071af0030f', '0', '2016-03-16 00:06:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '35973', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0790d60310', '0', '2016-03-16 00:06:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36004', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0806ca0311', '0', '2016-03-16 00:07:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36034', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b087cb80312', '0', '2016-03-16 00:07:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36064', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b08f2aa0313', '0', '2016-03-16 00:08:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36094', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b09689b0314', '0', '2016-03-16 00:08:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36124', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b09de8a0315', '0', '2016-03-16 00:09:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36155', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0a547c0316', '0', '2016-03-16 00:09:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36185', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0aca690317', '0', '2016-03-16 00:10:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36215', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0b405a0318', '0', '2016-03-16 00:10:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36245', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0bb6460319', '0', '2016-03-16 00:11:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36275', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0c2c39031a', '0', '2016-03-16 00:11:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36306', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0ca21e031b', '0', '2016-03-16 00:12:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36336', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0d1813031c', '0', '2016-03-16 00:12:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36366', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0d8e08031d', '0', '2016-03-16 00:13:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36396', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0e03f6031e', '0', '2016-03-16 00:13:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36426', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0e79e8031f', '0', '2016-03-16 00:14:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36457', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0eefda0320', '0', '2016-03-16 00:14:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36487', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0f65ce0321', '0', '2016-03-16 00:15:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36517', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b0fdbc00322', '0', '2016-03-16 00:15:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36547', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1051b00323', '0', '2016-03-16 00:16:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36577', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b10c79f0324', '0', '2016-03-16 00:16:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36607', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b113d950325', '0', '2016-03-16 00:17:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36638', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b11b3870326', '0', '2016-03-16 00:17:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36668', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1229900327', '0', '2016-03-16 00:18:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36698', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b129f830328', '0', '2016-03-16 00:18:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36728', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1315760329', '0', '2016-03-16 00:19:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36758', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b138b64032a', '0', '2016-03-16 00:19:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36789', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b140155032b', '0', '2016-03-16 00:20:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36819', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b147751032c', '0', '2016-03-16 00:20:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36849', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b14ed44032d', '0', '2016-03-16 00:21:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36879', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b156336032e', '0', '2016-03-16 00:21:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36909', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b15d92b032f', '0', '2016-03-16 00:22:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36940', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b164f210330', '0', '2016-03-16 00:22:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '36970', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b16c5160331', '0', '2016-03-16 00:23:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37000', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b173b060332', '0', '2016-03-16 00:23:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37030', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b17b0f50333', '0', '2016-03-16 00:24:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37060', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1826e70334', '0', '2016-03-16 00:24:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37091', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b189cdc0335', '0', '2016-03-16 00:25:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37121', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1912ce0336', '0', '2016-03-16 00:25:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37151', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1988c30337', '0', '2016-03-16 00:26:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37181', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b19feb40338', '0', '2016-03-16 00:26:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37211', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1a74a20339', '0', '2016-03-16 00:27:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37242', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1aea94033a', '0', '2016-03-16 00:27:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37272', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1b6082033b', '0', '2016-03-16 00:28:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37302', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1bd676033c', '0', '2016-03-16 00:28:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37332', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1c4c7e033d', '0', '2016-03-16 00:29:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37362', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1cc271033e', '0', '2016-03-16 00:29:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37393', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1d3862033f', '0', '2016-03-16 00:30:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37423', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1dae4c0340', '0', '2016-03-16 00:30:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37453', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1e24420341', '0', '2016-03-16 00:31:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37483', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1e9a4a0342', '0', '2016-03-16 00:31:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37513', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1f10450343', '0', '2016-03-16 00:32:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37544', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1f86360344', '0', '2016-03-16 00:32:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37574', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b1ffc220345', '0', '2016-03-16 00:33:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37604', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2072120346', '0', '2016-03-16 00:33:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37634', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b20e80f0347', '0', '2016-03-16 00:34:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37664', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b215e040348', '0', '2016-03-16 00:34:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37695', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b21d4260349', '0', '2016-03-16 00:35:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37725', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b224a1c034a', '0', '2016-03-16 00:35:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37755', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b22c00c034b', '0', '2016-03-16 00:36:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37785', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2335fe034c', '0', '2016-03-16 00:36:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37815', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b23abf3034d', '0', '2016-03-16 00:37:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37846', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2421f6034e', '0', '2016-03-16 00:37:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37876', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2497ea034f', '0', '2016-03-16 00:38:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37906', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b250ddb0350', '0', '2016-03-16 00:38:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37936', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2583d10351', '0', '2016-03-16 00:39:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37966', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b25f9c40352', '0', '2016-03-16 00:40:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '37997', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b266fb50353', '0', '2016-03-16 00:40:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38027', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b26e5ae0354', '0', '2016-03-16 00:41:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38057', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b275ba30355', '0', '2016-03-16 00:41:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38087', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b27d1910356', '0', '2016-03-16 00:42:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38117', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2847830357', '0', '2016-03-16 00:42:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38148', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b28bd7c0358', '0', '2016-03-16 00:43:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38178', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2933720359', '0', '2016-03-16 00:43:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38208', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b29a96a035a', '0', '2016-03-16 00:44:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38238', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2a1f64035b', '0', '2016-03-16 00:44:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38268', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2a955e035c', '0', '2016-03-16 00:45:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38299', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2b0b53035d', '0', '2016-03-16 00:45:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38329', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2b8154035e', '0', '2016-03-16 00:46:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38359', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2bf74a035f', '0', '2016-03-16 00:46:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38389', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2c6d3c0360', '0', '2016-03-16 00:47:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38419', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2ce3310361', '0', '2016-03-16 00:47:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38450', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2d59220362', '0', '2016-03-16 00:48:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38480', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2dcf220363', '0', '2016-03-16 00:48:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38510', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2e45150364', '0', '2016-03-16 00:49:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38540', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2ebb0b0365', '0', '2016-03-16 00:49:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38570', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2f31050366', '0', '2016-03-16 00:50:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38601', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b2fa6fe0367', '0', '2016-03-16 00:50:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38631', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b301cf40368', '0', '2016-03-16 00:51:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38661', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3092d10369', '0', '2016-03-16 00:51:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38691', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3108b1036a', '0', '2016-03-16 00:52:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38721', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b317e90036b', '0', '2016-03-16 00:52:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38751', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b31f479036c', '0', '2016-03-16 00:53:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38782', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b326a57036d', '0', '2016-03-16 00:53:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38812', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b32e034036e', '0', '2016-03-16 00:54:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38842', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b335616036f', '0', '2016-03-16 00:54:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38872', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b33cbf80370', '0', '2016-03-16 00:55:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38902', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3441d80371', '0', '2016-03-16 00:55:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38932', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b34b7ba0372', '0', '2016-03-16 00:56:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38963', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b352d970373', '0', '2016-03-16 00:56:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '38993', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b35a37a0374', '0', '2016-03-16 00:57:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39023', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3619570375', '0', '2016-03-16 00:57:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39053', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b368f610376', '0', '2016-03-16 00:58:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39083', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3705450377', '0', '2016-03-16 00:58:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39114', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b377b280378', '0', '2016-03-16 00:59:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39144', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b37f1060379', '0', '2016-03-16 00:59:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39174', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3866ee037a', '0', '2016-03-16 01:00:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39204', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b38dccc037b', '0', '2016-03-16 01:00:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39234', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3952b6037c', '0', '2016-03-16 01:01:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39264', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b39c89a037d', '0', '2016-03-16 01:01:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39295', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3a3e78037e', '0', '2016-03-16 01:02:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39325', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3ab459037f', '0', '2016-03-16 01:02:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39355', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3b2a3b0380', '0', '2016-03-16 01:03:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39385', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3ba02a0381', '0', '2016-03-16 01:03:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39415', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3c16060382', '0', '2016-03-16 01:04:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39446', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3c8bef0383', '0', '2016-03-16 01:04:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39476', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3d01d30384', '0', '2016-03-16 01:05:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39506', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3d77cd0385', '0', '2016-03-16 01:05:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39536', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3dedb40386', '0', '2016-03-16 01:06:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39566', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3e63b50387', '0', '2016-03-16 01:06:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39597', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3ed9970388', '0', '2016-03-16 01:07:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39627', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3f4f850389', '0', '2016-03-16 01:07:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39657', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b3fc561038a', '0', '2016-03-16 01:08:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39687', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b403b4c038b', '0', '2016-03-16 01:08:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39717', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b40b13d038c', '0', '2016-03-16 01:09:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39747', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b412723038d', '0', '2016-03-16 01:09:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39778', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b419d08038e', '0', '2016-03-16 01:10:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39808', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4212f9038f', '0', '2016-03-16 01:10:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39838', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4288eb0390', '0', '2016-03-16 01:11:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39868', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b42fed10391', '0', '2016-03-16 01:11:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39898', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4374bd0392', '0', '2016-03-16 01:12:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39929', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b43eaa10393', '0', '2016-03-16 01:12:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39959', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4460890394', '0', '2016-03-16 01:13:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '39989', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b44d6760395', '0', '2016-03-16 01:13:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40019', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b454c540396', '0', '2016-03-16 01:14:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40049', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b45c2350397', '0', '2016-03-16 01:14:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40079', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b46381c0398', '0', '2016-03-16 01:15:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40110', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b46adf90399', '0', '2016-03-16 01:15:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40140', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4723e1039a', '0', '2016-03-16 01:16:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40170', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4799c6039b', '0', '2016-03-16 01:16:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40200', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b480fa8039c', '0', '2016-03-16 01:17:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40230', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b48858f039d', '0', '2016-03-16 01:17:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40261', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b48fb77039e', '0', '2016-03-16 01:18:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40291', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b49715d039f', '0', '2016-03-16 01:18:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40321', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b49e73e03a0', '0', '2016-03-16 01:19:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40351', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4a5d1b03a1', '0', '2016-03-16 01:19:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40381', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4ad2fb03a2', '0', '2016-03-16 01:20:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40411', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4b48db03a3', '0', '2016-03-16 01:20:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40442', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4bbecb03a4', '0', '2016-03-16 01:21:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40472', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4c34ab03a5', '0', '2016-03-16 01:21:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40502', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4caa8f03a6', '0', '2016-03-16 01:22:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40532', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4d207a03a7', '0', '2016-03-16 01:22:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40562', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4d966b03a8', '0', '2016-03-16 01:23:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40593', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4e0c5803a9', '0', '2016-03-16 01:23:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40623', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4e823e03aa', '0', '2016-03-16 01:24:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40653', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4ef82603ab', '0', '2016-03-16 01:24:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40683', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4f6e1003ac', '0', '2016-03-16 01:25:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40713', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b4fe3f603ad', '0', '2016-03-16 01:25:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40743', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5059dc03ae', '0', '2016-03-16 01:26:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40774', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b50cfbf03af', '0', '2016-03-16 01:26:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40804', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5145a903b0', '0', '2016-03-16 01:27:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40834', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b51bb9303b1', '0', '2016-03-16 01:27:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40864', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b52317903b2', '0', '2016-03-16 01:28:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40894', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b52a76903b3', '0', '2016-03-16 01:28:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40925', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b531d5403b4', '0', '2016-03-16 01:29:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40955', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b53933b03b5', '0', '2016-03-16 01:29:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '40985', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b54091f03b6', '0', '2016-03-16 01:30:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41015', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b547f0a03b7', '0', '2016-03-16 01:30:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41045', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b54f4fa03b8', '0', '2016-03-16 01:31:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41075', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b556ae703b9', '0', '2016-03-16 01:31:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41106', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b55e0cc03ba', '0', '2016-03-16 01:32:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41136', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5656b603bb', '0', '2016-03-16 01:32:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41166', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b56cca103bc', '0', '2016-03-16 01:33:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41196', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b57428d03bd', '0', '2016-03-16 01:33:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41226', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b57b87803be', '0', '2016-03-16 01:34:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41257', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b582e6403bf', '0', '2016-03-16 01:34:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41287', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b58a46d03c0', '0', '2016-03-16 01:35:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41317', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b591a5303c1', '0', '2016-03-16 01:35:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41347', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b59903a03c2', '0', '2016-03-16 01:36:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41377', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5a062903c3', '0', '2016-03-16 01:36:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41408', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5a7c1a03c4', '0', '2016-03-16 01:37:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41438', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5af20b03c5', '0', '2016-03-16 01:37:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41468', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5b67fb03c6', '0', '2016-03-16 01:38:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41498', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5bde3503c7', '0', '2016-03-16 01:38:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41528', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5c542903c8', '0', '2016-03-16 01:39:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41559', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5cca2303c9', '0', '2016-03-16 01:39:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41589', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5d401603ca', '0', '2016-03-16 01:40:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41619', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5db60d03cb', '0', '2016-03-16 01:40:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41649', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5e2bff03cc', '0', '2016-03-16 01:41:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41679', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5ea1f503cd', '0', '2016-03-16 01:41:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41710', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5f17e303ce', '0', '2016-03-16 01:42:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41740', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b5f8dd403cf', '0', '2016-03-16 01:42:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41770', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6003c603d0', '0', '2016-03-16 01:43:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41800', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6079bb03d1', '0', '2016-03-16 01:43:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41830', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b60efac03d2', '0', '2016-03-16 01:44:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41861', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b61659a03d3', '0', '2016-03-16 01:44:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41891', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b61db8a03d4', '0', '2016-03-16 01:45:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41921', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b62517c03d5', '0', '2016-03-16 01:45:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41951', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b62c76a03d6', '0', '2016-03-16 01:46:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '41981', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b633d5803d7', '0', '2016-03-16 01:46:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42011', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b63b34003d8', '0', '2016-03-16 01:47:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42042', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b64292f03d9', '0', '2016-03-16 01:47:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42072', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b649f2803da', '0', '2016-03-16 01:48:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42102', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b65152103db', '0', '2016-03-16 01:48:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42132', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b658b1c03dc', '0', '2016-03-16 01:49:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42162', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b66010903dd', '0', '2016-03-16 01:49:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42193', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6676f703de', '0', '2016-03-16 01:50:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42223', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b66ece803df', '0', '2016-03-16 01:50:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42253', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6762d903e0', '0', '2016-03-16 01:51:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42283', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b67d8c703e1', '0', '2016-03-16 01:51:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42313', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b684eb903e2', '0', '2016-03-16 01:52:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42344', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b68c4a503e3', '0', '2016-03-16 01:52:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42374', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b693a9603e4', '0', '2016-03-16 01:53:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42404', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b69b08503e5', '0', '2016-03-16 01:53:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42434', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6a267603e6', '0', '2016-03-16 01:54:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42464', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6a9c6403e7', '0', '2016-03-16 01:54:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42495', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6b125803e8', '0', '2016-03-16 01:55:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42525', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6b884f03e9', '0', '2016-03-16 01:55:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42555', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6bfe3b03ea', '0', '2016-03-16 01:56:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42585', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6c744603eb', '0', '2016-03-16 01:56:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42615', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6cea3703ec', '0', '2016-03-16 01:57:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42646', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6d602c03ed', '0', '2016-03-16 01:57:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42676', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6dd61d03ee', '0', '2016-03-16 01:58:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42706', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6e4c0303ef', '0', '2016-03-16 01:58:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42736', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6ec1ed03f0', '0', '2016-03-16 01:59:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42766', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6f37dc03f1', '0', '2016-03-16 02:00:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42796', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b6fadcc03f2', '0', '2016-03-16 02:00:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42827', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7023c503f3', '0', '2016-03-16 02:01:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42857', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7099be03f4', '0', '2016-03-16 02:01:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42887', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b710fb403f5', '0', '2016-03-16 02:02:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42917', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7185a103f6', '0', '2016-03-16 02:02:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42947', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b71fb9303f7', '0', '2016-03-16 02:03:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '42978', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b72718403f8', '0', '2016-03-16 02:03:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43008', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b72e77a03f9', '0', '2016-03-16 02:04:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43038', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b735d6b03fa', '0', '2016-03-16 02:04:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43068', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b73d36003fb', '0', '2016-03-16 02:05:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43098', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b74495703fc', '0', '2016-03-16 02:05:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43129', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b74bf4c03fd', '0', '2016-03-16 02:06:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43159', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b75354203fe', '0', '2016-03-16 02:06:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43189', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b75ab3203ff', '0', '2016-03-16 02:07:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43219', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7621230400', '0', '2016-03-16 02:07:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43249', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7697190401', '0', '2016-03-16 02:08:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43280', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b770d240402', '0', '2016-03-16 02:08:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43310', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b77831a0403', '0', '2016-03-16 02:09:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43340', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b77f9100404', '0', '2016-03-16 02:09:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43370', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b786f040405', '0', '2016-03-16 02:10:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43400', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b78e4f80406', '0', '2016-03-16 02:10:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43431', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b795aed0407', '0', '2016-03-16 02:11:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43461', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b79d0e40408', '0', '2016-03-16 02:11:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43491', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7a46da0409', '0', '2016-03-16 02:12:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43521', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7abccb040a', '0', '2016-03-16 02:12:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43551', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7b32c0040b', '0', '2016-03-16 02:13:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43582', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7ba8b6040c', '0', '2016-03-16 02:13:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43612', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7c1ea7040d', '0', '2016-03-16 02:14:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43642', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7c9499040e', '0', '2016-03-16 02:14:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43672', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7d0a8b040f', '0', '2016-03-16 02:15:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43702', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7d80740410', '0', '2016-03-16 02:15:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43733', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7df66a0411', '0', '2016-03-16 02:16:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43763', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7e6c600412', '0', '2016-03-16 02:16:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43793', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7ee2500413', '0', '2016-03-16 02:17:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43823', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7f584a0414', '0', '2016-03-16 02:17:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43853', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b7fce400415', '0', '2016-03-16 02:18:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43884', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8044310416', '0', '2016-03-16 02:18:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43914', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b80ba260417', '0', '2016-03-16 02:19:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43944', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b81301c0418', '0', '2016-03-16 02:19:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '43974', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b81a60d0419', '0', '2016-03-16 02:20:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44004', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b821c01041a', '0', '2016-03-16 02:20:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44035', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b829200041b', '0', '2016-03-16 02:21:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44065', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8307e9041c', '0', '2016-03-16 02:21:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44095', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b837dc7041d', '0', '2016-03-16 02:22:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44125', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b83f3a4041e', '0', '2016-03-16 02:22:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44155', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b846979041f', '0', '2016-03-16 02:23:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44185', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b84df5f0420', '0', '2016-03-16 02:23:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44216', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8555420421', '0', '2016-03-16 02:24:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44246', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b85cb220422', '0', '2016-03-16 02:24:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44276', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8641080423', '0', '2016-03-16 02:25:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44306', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b86b6e90424', '0', '2016-03-16 02:25:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44336', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b872cc60425', '0', '2016-03-16 02:26:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44366', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b87a2a40426', '0', '2016-03-16 02:26:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44397', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8818880427', '0', '2016-03-16 02:27:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44427', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b888e680428', '0', '2016-03-16 02:27:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44457', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8904560429', '0', '2016-03-16 02:28:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44487', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b897a3f042a', '0', '2016-03-16 02:28:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44517', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b89f02c042b', '0', '2016-03-16 02:29:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44548', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8a660f042c', '0', '2016-03-16 02:29:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44578', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8adbe7042d', '0', '2016-03-16 02:30:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44608', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8b51c8042e', '0', '2016-03-16 02:30:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44638', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8bc7a7042f', '0', '2016-03-16 02:31:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44668', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8c3d8f0430', '0', '2016-03-16 02:31:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44698', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8cb3750431', '0', '2016-03-16 02:32:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44729', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8d29560432', '0', '2016-03-16 02:32:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44759', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8d9f340433', '0', '2016-03-16 02:33:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44789', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8e15150434', '0', '2016-03-16 02:33:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44819', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8e8afb0435', '0', '2016-03-16 02:34:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44849', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8f00d80436', '0', '2016-03-16 02:34:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44880', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8f76ba0437', '0', '2016-03-16 02:35:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44910', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b8fec9b0438', '0', '2016-03-16 02:35:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44940', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b90627c0439', '0', '2016-03-16 02:36:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '44970', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b90d865043a', '0', '2016-03-16 02:36:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45000', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b914e43043b', '0', '2016-03-16 02:37:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45030', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b91c42f043c', '0', '2016-03-16 02:37:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45061', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b923a12043d', '0', '2016-03-16 02:38:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45091', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b92aff3043e', '0', '2016-03-16 02:38:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45121', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9325db043f', '0', '2016-03-16 02:39:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45151', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b939bbb0440', '0', '2016-03-16 02:39:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45181', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b94119a0441', '0', '2016-03-16 02:40:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45211', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9487750442', '0', '2016-03-16 02:40:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45242', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b94fd570443', '0', '2016-03-16 02:41:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45272', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9573590444', '0', '2016-03-16 02:41:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45302', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b95e93e0445', '0', '2016-03-16 02:42:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45332', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b965f240446', '0', '2016-03-16 02:42:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45362', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b96d5080447', '0', '2016-03-16 02:43:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45393', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b974aef0448', '0', '2016-03-16 02:43:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45423', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b97c0dc0449', '0', '2016-03-16 02:44:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45453', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9836ba044a', '0', '2016-03-16 02:44:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45483', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b98ac9e044b', '0', '2016-03-16 02:45:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45513', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b992284044c', '0', '2016-03-16 02:45:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45544', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b99986b044d', '0', '2016-03-16 02:46:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45574', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9a0e78044e', '0', '2016-03-16 02:46:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45604', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9a8459044f', '0', '2016-03-16 02:47:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45634', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9afa3b0450', '0', '2016-03-16 02:47:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45664', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9b70250451', '0', '2016-03-16 02:48:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45694', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9be6060452', '0', '2016-03-16 02:48:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45725', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9c5bef0453', '0', '2016-03-16 02:49:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45755', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9cd1d80454', '0', '2016-03-16 02:49:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45785', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9d47be0455', '0', '2016-03-16 02:50:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45815', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9dbd9c0456', '0', '2016-03-16 02:50:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45845', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9e338c0457', '0', '2016-03-16 02:51:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45876', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9ea9860458', '0', '2016-03-16 02:51:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45906', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9f1f640459', '0', '2016-03-16 02:52:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45936', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537b9f9542045a', '0', '2016-03-16 02:52:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45966', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba00b20045b', '0', '2016-03-16 02:53:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '45996', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba08114045c', '0', '2016-03-16 02:53:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46026', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba0f70a045d', '0', '2016-03-16 02:54:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46057', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba16cef045e', '0', '2016-03-16 02:54:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46087', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba1e2d8045f', '0', '2016-03-16 02:55:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46117', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba258ba0460', '0', '2016-03-16 02:55:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46147', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba2cea00461', '0', '2016-03-16 02:56:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46177', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba344850462', '0', '2016-03-16 02:56:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46208', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba3ba620463', '0', '2016-03-16 02:57:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46238', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba430480464', '0', '2016-03-16 02:57:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46268', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba4a6290465', '0', '2016-03-16 02:58:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46298', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba51c070466', '0', '2016-03-16 02:58:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46328', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba591f10467', '0', '2016-03-16 02:59:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46358', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba607d20468', '0', '2016-03-16 02:59:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46389', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba67db90469', '0', '2016-03-16 03:00:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46419', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba6f3a5046a', '0', '2016-03-16 03:00:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46449', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba7698f046b', '0', '2016-03-16 03:01:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46479', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba7df81046c', '0', '2016-03-16 03:01:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46509', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba85565046d', '0', '2016-03-16 03:02:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46540', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba8cb43046e', '0', '2016-03-16 03:02:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46570', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba9412d046f', '0', '2016-03-16 03:03:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46600', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ba9b70e0470', '0', '2016-03-16 03:03:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46630', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537baa2cfb0471', '0', '2016-03-16 03:04:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46660', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537baaa2da0472', '0', '2016-03-16 03:04:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46690', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bab18bd0473', '0', '2016-03-16 03:05:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46721', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bab8ea30474', '0', '2016-03-16 03:05:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46751', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bac04890475', '0', '2016-03-16 03:06:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46781', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bac7a6f0476', '0', '2016-03-16 03:06:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46811', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bacf0560477', '0', '2016-03-16 03:07:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46841', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bad66420478', '0', '2016-03-16 03:07:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46872', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537baddc370479', '0', '2016-03-16 03:08:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46902', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bae5215047a', '0', '2016-03-16 03:08:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46932', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537baec7fe047b', '0', '2016-03-16 03:09:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46962', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537baf3de8047c', '0', '2016-03-16 03:09:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '46992', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bafb3d1047d', '0', '2016-03-16 03:10:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47022', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb029c3047e', '0', '2016-03-16 03:10:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47053', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb09fac047f', '0', '2016-03-16 03:11:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47083', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb115960480', '0', '2016-03-16 03:11:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47113', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb18b8a0481', '0', '2016-03-16 03:12:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47143', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb201710482', '0', '2016-03-16 03:12:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47173', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb2775a0483', '0', '2016-03-16 03:13:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47204', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb2ed4b0484', '0', '2016-03-16 03:13:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47234', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb363390485', '0', '2016-03-16 03:14:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47264', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb3d9270486', '0', '2016-03-16 03:14:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47294', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb44f120487', '0', '2016-03-16 03:15:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47324', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb4c5020488', '0', '2016-03-16 03:15:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47355', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb53ae70489', '0', '2016-03-16 03:16:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47385', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb5b0cd048a', '0', '2016-03-16 03:16:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47415', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb626be048b', '0', '2016-03-16 03:17:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47445', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb69cb3048c', '0', '2016-03-16 03:17:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47475', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb7129d048d', '0', '2016-03-16 03:18:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47505', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb7889d048e', '0', '2016-03-16 03:18:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47536', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb7fe82048f', '0', '2016-03-16 03:19:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47566', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb874750490', '0', '2016-03-16 03:19:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47596', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb8ea5b0491', '0', '2016-03-16 03:20:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47626', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb9604c0492', '0', '2016-03-16 03:21:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47656', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bb9d63a0493', '0', '2016-03-16 03:21:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47687', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bba4c470494', '0', '2016-03-16 03:22:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47717', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbac2350495', '0', '2016-03-16 03:22:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47747', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbb38220496', '0', '2016-03-16 03:23:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47777', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbbae070497', '0', '2016-03-16 03:23:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47807', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbc23fd0498', '0', '2016-03-16 03:24:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47838', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbc99e70499', '0', '2016-03-16 03:24:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47868', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbd0fd0049a', '0', '2016-03-16 03:25:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47898', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbd85b0049b', '0', '2016-03-16 03:25:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47928', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbdfb97049c', '0', '2016-03-16 03:26:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47958', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbe7185049d', '0', '2016-03-16 03:26:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '47989', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbee77e049e', '0', '2016-03-16 03:27:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48019', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbf5d70049f', '0', '2016-03-16 03:27:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48049', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bbfd36004a0', '0', '2016-03-16 03:28:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48079', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc0494e04a1', '0', '2016-03-16 03:28:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48109', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc0bf3304a2', '0', '2016-03-16 03:29:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48139', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc1352504a3', '0', '2016-03-16 03:29:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48170', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc1ab1704a4', '0', '2016-03-16 03:30:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48200', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc220fc04a5', '0', '2016-03-16 03:30:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48230', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc296e104a6', '0', '2016-03-16 03:31:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48260', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc30cdd04a7', '0', '2016-03-16 03:31:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48290', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc382c404a8', '0', '2016-03-16 03:32:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48321', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc3f8b104a9', '0', '2016-03-16 03:32:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48351', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc46e9a04aa', '0', '2016-03-16 03:33:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48381', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc4e48104ab', '0', '2016-03-16 03:33:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48411', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc55a6a04ac', '0', '2016-03-16 03:34:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48441', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc5d06004ad', '0', '2016-03-16 03:34:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48472', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc6464604ae', '0', '2016-03-16 03:35:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48502', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc6bc2f04af', '0', '2016-03-16 03:35:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48532', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc7322004b0', '0', '2016-03-16 03:36:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48562', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc7a80e04b1', '0', '2016-03-16 03:36:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48592', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc81dfe04b2', '0', '2016-03-16 03:37:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48622', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc893e404b3', '0', '2016-03-16 03:37:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48653', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc909ce04b4', '0', '2016-03-16 03:38:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48683', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc97fbb04b5', '0', '2016-03-16 03:38:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48713', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bc9f5a504b6', '0', '2016-03-16 03:39:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48743', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bca6b9104b7', '0', '2016-03-16 03:39:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48773', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bcae17b04b8', '0', '2016-03-16 03:40:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48804', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bcb577204b9', '0', '2016-03-16 03:40:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48834', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bcbcd6304ba', '0', '2016-03-16 03:41:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48864', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bcc435004bb', '0', '2016-03-16 03:41:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48894', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bccb93c04bc', '0', '2016-03-16 03:42:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48924', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bcd2f1c04bd', '0', '2016-03-16 03:42:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48955', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bcda50004be', '0', '2016-03-16 03:43:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '48985', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bce1ae004bf', '0', '2016-03-16 03:43:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49015', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bce90c404c0', '0', '2016-03-16 03:44:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49045', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bcf06a104c1', '0', '2016-03-16 03:44:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49075', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bcf7c7e04c2', '0', '2016-03-16 03:45:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49105', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bcff28804c3', '0', '2016-03-16 03:45:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49136', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd0686a04c4', '0', '2016-03-16 03:46:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49166', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd0de5404c5', '0', '2016-03-16 03:46:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49196', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd1543604c6', '0', '2016-03-16 03:47:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49226', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd1ca1204c7', '0', '2016-03-16 03:47:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49256', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd23ff804c8', '0', '2016-03-16 03:48:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49287', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd2b5db04c9', '0', '2016-03-16 03:48:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49317', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd32bbb04ca', '0', '2016-03-16 03:49:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49347', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd3a1a104cb', '0', '2016-03-16 03:49:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49377', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd4179e04cc', '0', '2016-03-16 03:50:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49407', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd48d7f04cd', '0', '2016-03-16 03:50:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49437', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd5036104ce', '0', '2016-03-16 03:51:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49468', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd5793d04cf', '0', '2016-03-16 03:51:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49498', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd5ef2704d0', '0', '2016-03-16 03:52:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49528', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd6650404d1', '0', '2016-03-16 03:52:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49558', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd6dae304d2', '0', '2016-03-16 03:53:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49588', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd750c304d3', '0', '2016-03-16 03:53:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49619', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd7c6a504d4', '0', '2016-03-16 03:54:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49649', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd83c8c04d5', '0', '2016-03-16 03:54:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49679', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd8b26804d6', '0', '2016-03-16 03:55:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49709', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd9284704d7', '0', '2016-03-16 03:55:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49739', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bd99e2704d8', '0', '2016-03-16 03:56:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49769', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bda141404d9', '0', '2016-03-16 03:56:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49800', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bda89f604da', '0', '2016-03-16 03:57:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49830', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bdb002f04db', '0', '2016-03-16 03:57:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49860', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bdb761104dc', '0', '2016-03-16 03:58:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49890', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bdbebf604dd', '0', '2016-03-16 03:58:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49920', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bdc61d404de', '0', '2016-03-16 03:59:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49951', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bdcd7c604df', '0', '2016-03-16 03:59:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '49981', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bdd4da704e0', '0', '2016-03-16 04:00:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50011', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bddc38c04e1', '0', '2016-03-16 04:00:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50041', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bde396904e2', '0', '2016-03-16 04:01:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50071', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bdeaf4b04e3', '0', '2016-03-16 04:01:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50101', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bdf253504e4', '0', '2016-03-16 04:02:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50132', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bdf9b1a04e5', '0', '2016-03-16 04:02:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50162', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be010f804e6', '0', '2016-03-16 04:03:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50192', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be086d704e7', '0', '2016-03-16 04:03:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50222', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be0fcbb04e8', '0', '2016-03-16 04:04:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50252', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be172a504e9', '0', '2016-03-16 04:04:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50283', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be1e88604ea', '0', '2016-03-16 04:05:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50313', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be25e6c04eb', '0', '2016-03-16 04:05:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50343', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be2d44d04ec', '0', '2016-03-16 04:06:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50373', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be34a3304ed', '0', '2016-03-16 04:06:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50403', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be3c01c04ee', '0', '2016-03-16 04:07:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50433', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be435f904ef', '0', '2016-03-16 04:07:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50464', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be4abdb04f0', '0', '2016-03-16 04:08:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50494', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be521b804f1', '0', '2016-03-16 04:08:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50524', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be5979504f2', '0', '2016-03-16 04:09:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50554', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be60d8f04f3', '0', '2016-03-16 04:09:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50584', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be6837104f4', '0', '2016-03-16 04:10:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50615', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be6f95604f5', '0', '2016-03-16 04:10:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50645', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be76f3404f6', '0', '2016-03-16 04:11:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50675', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be7e51104f7', '0', '2016-03-16 04:11:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50705', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be85afa04f8', '0', '2016-03-16 04:12:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50735', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be8d0d804f9', '0', '2016-03-16 04:12:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50765', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be946b904fa', '0', '2016-03-16 04:13:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50796', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537be9bc9704fb', '0', '2016-03-16 04:13:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50826', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bea327804fc', '0', '2016-03-16 04:14:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50856', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537beaa86604fd', '0', '2016-03-16 04:14:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50886', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537beb1e4304fe', '0', '2016-03-16 04:15:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50916', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537beb942c04ff', '0', '2016-03-16 04:15:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50946', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bec0a160500', '0', '2016-03-16 04:16:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '50977', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bec80000501', '0', '2016-03-16 04:16:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51007', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537becf6110502', '0', '2016-03-16 04:17:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51037', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bed6bf60503', '0', '2016-03-16 04:17:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51067', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bede1de0504', '0', '2016-03-16 04:18:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51097', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bee57c90505', '0', '2016-03-16 04:18:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51128', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537beecdb30506', '0', '2016-03-16 04:19:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51158', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bef43a20507', '0', '2016-03-16 04:19:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51188', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537befb9820508', '0', '2016-03-16 04:20:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51218', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf02f670509', '0', '2016-03-16 04:20:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51248', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf0a54a050a', '0', '2016-03-16 04:21:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51279', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf11b26050b', '0', '2016-03-16 04:21:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51309', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf19118050c', '0', '2016-03-16 04:22:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51339', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf20705050d', '0', '2016-03-16 04:22:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51369', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf27ce3050e', '0', '2016-03-16 04:23:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51399', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf2f2cc050f', '0', '2016-03-16 04:23:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51429', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf368b70510', '0', '2016-03-16 04:24:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51460', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf3dea30511', '0', '2016-03-16 04:24:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51490', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf454880512', '0', '2016-03-16 04:25:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51520', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf4ca720513', '0', '2016-03-16 04:25:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51550', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf540600514', '0', '2016-03-16 04:26:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51580', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf5b6490515', '0', '2016-03-16 04:26:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51611', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf62c3a0516', '0', '2016-03-16 04:27:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51641', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf6a2340517', '0', '2016-03-16 04:27:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51671', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf718210518', '0', '2016-03-16 04:28:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51701', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf78e170519', '0', '2016-03-16 04:28:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51731', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf80401051a', '0', '2016-03-16 04:29:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51762', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf879f2051b', '0', '2016-03-16 04:29:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51792', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf8efe5051c', '0', '2016-03-16 04:30:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51822', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf965d0051d', '0', '2016-03-16 04:30:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51852', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bf9dbd7051e', '0', '2016-03-16 04:31:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51882', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bfa51c0051f', '0', '2016-03-16 04:31:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51912', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bfac7b10520', '0', '2016-03-16 04:32:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51943', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bfb3d9f0521', '0', '2016-03-16 04:32:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '51973', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bfbb3850522', '0', '2016-03-16 04:33:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52003', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bfc296d0523', '0', '2016-03-16 04:33:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52033', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bfc9f500524', '0', '2016-03-16 04:34:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52063', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bfd15400525', '0', '2016-03-16 04:34:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52094', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bfd8b2a0526', '0', '2016-03-16 04:35:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52124', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bfe011d0527', '0', '2016-03-16 04:35:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52154', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bfe77040528', '0', '2016-03-16 04:36:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52184', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bfeecf20529', '0', '2016-03-16 04:36:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52214', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bff62fa052a', '0', '2016-03-16 04:37:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52245', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537bffd8ea052b', '0', '2016-03-16 04:37:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52275', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c004edf052c', '0', '2016-03-16 04:38:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52305', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c00c4cc052d', '0', '2016-03-16 04:38:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52335', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c013aba052e', '0', '2016-03-16 04:39:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52365', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c01b0ba052f', '0', '2016-03-16 04:39:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52396', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0226a50530', '0', '2016-03-16 04:40:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52426', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c029c920531', '0', '2016-03-16 04:40:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52456', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0312800532', '0', '2016-03-16 04:41:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52486', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0388680533', '0', '2016-03-16 04:42:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52516', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c03fe5b0534', '0', '2016-03-16 04:42:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52546', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0474480535', '0', '2016-03-16 04:43:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52577', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c04ea390536', '0', '2016-03-16 04:43:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52607', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0560280537', '0', '2016-03-16 04:44:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52637', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c05d6180538', '0', '2016-03-16 04:44:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52667', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c064c060539', '0', '2016-03-16 04:45:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52697', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c06c20a053a', '0', '2016-03-16 04:45:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52728', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0737fa053b', '0', '2016-03-16 04:46:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52758', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c07adeb053c', '0', '2016-03-16 04:46:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52788', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0823d9053d', '0', '2016-03-16 04:47:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52818', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0899c6053e', '0', '2016-03-16 04:47:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52848', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c090fb6053f', '0', '2016-03-16 04:48:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52879', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0985a80540', '0', '2016-03-16 04:48:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52909', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c09fb970541', '0', '2016-03-16 04:49:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52939', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0a71840542', '0', '2016-03-16 04:49:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52969', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0ae7750543', '0', '2016-03-16 04:50:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '52999', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0b5d670544', '0', '2016-03-16 04:50:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53030', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0bd3540545', '0', '2016-03-16 04:51:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53060', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0c49450546', '0', '2016-03-16 04:51:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53090', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0cbf340547', '0', '2016-03-16 04:52:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53120', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0d35240548', '0', '2016-03-16 04:52:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53150', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0dab140549', '0', '2016-03-16 04:53:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53181', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0e2103054a', '0', '2016-03-16 04:53:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53211', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0e96f5054b', '0', '2016-03-16 04:54:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53241', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0f0ce6054c', '0', '2016-03-16 04:54:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53271', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0f82d4054d', '0', '2016-03-16 04:55:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53301', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c0ff8c1054e', '0', '2016-03-16 04:55:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53331', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c106eaa054f', '0', '2016-03-16 04:56:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53362', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c10e49d0550', '0', '2016-03-16 04:56:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53392', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c115a890551', '0', '2016-03-16 04:57:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53422', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c11d0770552', '0', '2016-03-16 04:57:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53452', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1246680553', '0', '2016-03-16 04:58:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53482', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c12bc5b0554', '0', '2016-03-16 04:58:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53513', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1332380555', '0', '2016-03-16 04:59:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53543', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c13a8150556', '0', '2016-03-16 04:59:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53573', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c141df80557', '0', '2016-03-16 05:00:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53603', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1493d80558', '0', '2016-03-16 05:00:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53633', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1509b20559', '0', '2016-03-16 05:01:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53663', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c157f92055a', '0', '2016-03-16 05:01:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53694', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c15f570055b', '0', '2016-03-16 05:02:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53724', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c166b52055c', '0', '2016-03-16 05:02:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53754', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c16e12f055d', '0', '2016-03-16 05:03:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53784', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c17570d055e', '0', '2016-03-16 05:03:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53814', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c17cced055f', '0', '2016-03-16 05:04:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53845', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1842e00560', '0', '2016-03-16 05:04:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53875', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c18b8c60561', '0', '2016-03-16 05:05:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53905', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c192ea30562', '0', '2016-03-16 05:05:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53935', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c19a4830563', '0', '2016-03-16 05:06:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53965', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1a1a660564', '0', '2016-03-16 05:06:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '53995', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1a90400565', '0', '2016-03-16 05:07:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54026', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1b06210566', '0', '2016-03-16 05:07:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54056', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1b7c0f0567', '0', '2016-03-16 05:08:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54086', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1bf1f00568', '0', '2016-03-16 05:08:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54116', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1c67cd0569', '0', '2016-03-16 05:09:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54146', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1cddae056a', '0', '2016-03-16 05:09:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54176', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1d5394056b', '0', '2016-03-16 05:10:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54207', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1dc975056c', '0', '2016-03-16 05:10:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54237', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1e3f83056d', '0', '2016-03-16 05:11:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54267', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1eb564056e', '0', '2016-03-16 05:11:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54297', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1f2b41056f', '0', '2016-03-16 05:12:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54327', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c1fa1230570', '0', '2016-03-16 05:12:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54358', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2017010571', '0', '2016-03-16 05:13:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54388', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c208cde0572', '0', '2016-03-16 05:13:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54418', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2102c80573', '0', '2016-03-16 05:14:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54448', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2178a90574', '0', '2016-03-16 05:14:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54478', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c21ee8f0575', '0', '2016-03-16 05:15:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54508', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c22646c0576', '0', '2016-03-16 05:15:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54539', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c22da4a0577', '0', '2016-03-16 05:16:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54569', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c23502b0578', '0', '2016-03-16 05:16:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54599', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c23c61a0579', '0', '2016-03-16 05:17:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54629', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c243bfa057a', '0', '2016-03-16 05:17:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54659', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c24b1e7057b', '0', '2016-03-16 05:18:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54690', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2527c9057c', '0', '2016-03-16 05:18:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54720', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c259dae057d', '0', '2016-03-16 05:19:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54750', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c261390057e', '0', '2016-03-16 05:19:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54780', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c268976057f', '0', '2016-03-16 05:20:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54810', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c26ff560580', '0', '2016-03-16 05:20:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54840', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c27753c0581', '0', '2016-03-16 05:21:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54871', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c27eb2a0582', '0', '2016-03-16 05:21:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54901', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c28610b0583', '0', '2016-03-16 05:22:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54931', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c28d6ed0584', '0', '2016-03-16 05:22:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54961', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c294cd30585', '0', '2016-03-16 05:23:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '54991', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c29c2b00586', '0', '2016-03-16 05:23:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55022', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2a38930587', '0', '2016-03-16 05:24:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55052', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2aae770588', '0', '2016-03-16 05:24:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55082', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2b24780589', '0', '2016-03-16 05:25:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55112', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2b9a55058a', '0', '2016-03-16 05:25:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55142', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2c1034058b', '0', '2016-03-16 05:26:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55172', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2c8619058c', '0', '2016-03-16 05:26:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55203', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2cfbfa058d', '0', '2016-03-16 05:27:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55233', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2d71ec058e', '0', '2016-03-16 05:27:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55263', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2de7c9058f', '0', '2016-03-16 05:28:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55293', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2e5dab0590', '0', '2016-03-16 05:28:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55323', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2ed3880591', '0', '2016-03-16 05:29:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55354', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2f49650592', '0', '2016-03-16 05:29:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55384', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c2fbf4e0593', '0', '2016-03-16 05:30:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55414', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3035300594', '0', '2016-03-16 05:30:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55444', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c30ab0e0595', '0', '2016-03-16 05:31:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55474', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3120eb0596', '0', '2016-03-16 05:31:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55504', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3196cc0597', '0', '2016-03-16 05:32:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55535', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c320cb70598', '0', '2016-03-16 05:32:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55565', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3282980599', '0', '2016-03-16 05:33:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55595', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c32f879059a', '0', '2016-03-16 05:33:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55625', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c336e56059b', '0', '2016-03-16 05:34:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55655', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c33e438059c', '0', '2016-03-16 05:34:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55685', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c345a1e059d', '0', '2016-03-16 05:35:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55716', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c34d000059e', '0', '2016-03-16 05:35:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55746', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3545e4059f', '0', '2016-03-16 05:36:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55776', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c35bbc505a0', '0', '2016-03-16 05:36:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55806', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3631a505a1', '0', '2016-03-16 05:37:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55836', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c36a79605a2', '0', '2016-03-16 05:37:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55867', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c371d8b05a3', '0', '2016-03-16 05:38:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55897', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c37938005a4', '0', '2016-03-16 05:38:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55927', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c38096105a5', '0', '2016-03-16 05:39:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55957', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c387f3f05a6', '0', '2016-03-16 05:39:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '55987', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c38f52905a7', '0', '2016-03-16 05:40:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56017', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c396b0a05a8', '0', '2016-03-16 05:40:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56048', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c39e0f005a9', '0', '2016-03-16 05:41:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56078', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3a56d505aa', '0', '2016-03-16 05:41:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56108', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3accb605ab', '0', '2016-03-16 05:42:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56138', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3b42a005ac', '0', '2016-03-16 05:42:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56168', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3bb88505ad', '0', '2016-03-16 05:43:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56199', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3c2e7205ae', '0', '2016-03-16 05:43:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56229', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3ca47405af', '0', '2016-03-16 05:44:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56259', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3d1a5905b0', '0', '2016-03-16 05:44:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56289', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3d904305b1', '0', '2016-03-16 05:45:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56319', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3e062805b2', '0', '2016-03-16 05:45:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56350', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3e7c1205b3', '0', '2016-03-16 05:46:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56380', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3ef20305b4', '0', '2016-03-16 05:46:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56410', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3f67f305b5', '0', '2016-03-16 05:47:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56440', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c3fdde305b6', '0', '2016-03-16 05:47:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56470', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4053cf05b7', '0', '2016-03-16 05:48:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56500', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c40c9ba05b8', '0', '2016-03-16 05:48:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56531', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c413fa705b9', '0', '2016-03-16 05:49:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56561', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c41b59905ba', '0', '2016-03-16 05:49:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56591', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c422b7f05bb', '0', '2016-03-16 05:50:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56621', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c42a17005bc', '0', '2016-03-16 05:50:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56651', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c43175d05bd', '0', '2016-03-16 05:51:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56682', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c438d4f05be', '0', '2016-03-16 05:51:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56712', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c44034005bf', '0', '2016-03-16 05:52:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56742', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c44792e05c0', '0', '2016-03-16 05:52:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56772', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c44ef1405c1', '0', '2016-03-16 05:53:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56802', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4564fd05c2', '0', '2016-03-16 05:53:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56833', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c45daea05c3', '0', '2016-03-16 05:54:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56863', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4650d705c4', '0', '2016-03-16 05:54:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56893', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c46c6c105c5', '0', '2016-03-16 05:55:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56923', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c473cab05c6', '0', '2016-03-16 05:55:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56953', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c47b29d05c7', '0', '2016-03-16 05:56:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '56983', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c48288e05c8', '0', '2016-03-16 05:56:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57014', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c489e7f05c9', '0', '2016-03-16 05:57:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57044', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c49146905ca', '0', '2016-03-16 05:57:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57074', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c498a5905cb', '0', '2016-03-16 05:58:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57104', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4a004b05cc', '0', '2016-03-16 05:58:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57134', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4a763905cd', '0', '2016-03-16 05:59:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57165', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4aec2605ce', '0', '2016-03-16 05:59:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57195', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4b622005cf', '0', '2016-03-16 06:00:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57225', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4bd81205d0', '0', '2016-03-16 06:00:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57255', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4c4e0105d1', '0', '2016-03-16 06:01:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57285', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4cc3f805d2', '0', '2016-03-16 06:01:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57316', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4d39e605d3', '0', '2016-03-16 06:02:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57346', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4dafcf05d4', '0', '2016-03-16 06:02:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57376', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4e25bd05d5', '0', '2016-03-16 06:03:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57406', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4e9bae05d6', '0', '2016-03-16 06:04:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57436', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4f119e05d7', '0', '2016-03-16 06:04:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57467', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4f879105d8', '0', '2016-03-16 06:05:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57497', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c4ffd7d05d9', '0', '2016-03-16 06:05:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57527', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c50736b05da', '0', '2016-03-16 06:06:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57557', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c50e95505db', '0', '2016-03-16 06:06:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57587', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c515f4605dc', '0', '2016-03-16 06:07:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57617', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c51d53405dd', '0', '2016-03-16 06:07:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57648', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c524b2105de', '0', '2016-03-16 06:08:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57678', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c52c10b05df', '0', '2016-03-16 06:08:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57708', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c53370105e0', '0', '2016-03-16 06:09:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57738', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c53ace905e1', '0', '2016-03-16 06:09:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57768', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5422e405e2', '0', '2016-03-16 06:10:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57799', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5498d905e3', '0', '2016-03-16 06:10:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57829', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c550ed705e4', '0', '2016-03-16 06:11:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57859', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5584c005e5', '0', '2016-03-16 06:11:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57889', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c55fab305e6', '0', '2016-03-16 06:12:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57919', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5670a305e7', '0', '2016-03-16 06:12:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57950', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c56e69505e8', '0', '2016-03-16 06:13:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '57980', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c575c8b05e9', '0', '2016-03-16 06:13:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58010', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c57d27805ea', '0', '2016-03-16 06:14:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58040', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c58486805eb', '0', '2016-03-16 06:14:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58070', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c58be5a05ec', '0', '2016-03-16 06:15:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58101', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c59344805ed', '0', '2016-03-16 06:15:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58131', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c59aa3905ee', '0', '2016-03-16 06:16:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58161', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5a204705ef', '0', '2016-03-16 06:16:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58191', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5a963605f0', '0', '2016-03-16 06:17:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58221', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5b0c2a05f1', '0', '2016-03-16 06:17:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58252', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5b822605f2', '0', '2016-03-16 06:18:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58282', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5bf81905f3', '0', '2016-03-16 06:18:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58312', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5c6e0a05f4', '0', '2016-03-16 06:19:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58342', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5ce3f805f5', '0', '2016-03-16 06:19:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58372', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5d59e905f6', '0', '2016-03-16 06:20:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58403', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5dcfdf05f7', '0', '2016-03-16 06:20:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58433', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5e45d005f8', '0', '2016-03-16 06:21:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58463', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5ebbbe05f9', '0', '2016-03-16 06:21:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58493', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5f31b005fa', '0', '2016-03-16 06:22:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58523', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c5fa7a805fb', '0', '2016-03-16 06:22:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58554', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c601d9e05fc', '0', '2016-03-16 06:23:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58584', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c60938f05fd', '0', '2016-03-16 06:23:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58614', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c61097d05fe', '0', '2016-03-16 06:24:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58644', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c617f6e05ff', '0', '2016-03-16 06:24:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58674', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c61f5500600', '0', '2016-03-16 06:25:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58704', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c626b2c0601', '0', '2016-03-16 06:25:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58735', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c62e1130602', '0', '2016-03-16 06:26:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58765', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6356f00603', '0', '2016-03-16 06:26:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58795', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c63ccd20604', '0', '2016-03-16 06:27:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58825', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6442af0605', '0', '2016-03-16 06:27:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58855', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c64b8910606', '0', '2016-03-16 06:28:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58886', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c652e6f0607', '0', '2016-03-16 06:28:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58916', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c65a4540608', '0', '2016-03-16 06:29:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58946', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c661a360609', '0', '2016-03-16 06:29:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '58976', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c669013060a', '0', '2016-03-16 06:30:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59006', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6705f4060b', '0', '2016-03-16 06:30:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59036', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c677bd6060c', '0', '2016-03-16 06:31:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59067', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c67f1af060d', '0', '2016-03-16 06:31:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59097', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c686798060e', '0', '2016-03-16 06:32:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59127', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c68dd76060f', '0', '2016-03-16 06:32:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59157', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6953570610', '0', '2016-03-16 06:33:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59187', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c69c9350611', '0', '2016-03-16 06:33:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59217', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6a3f160612', '0', '2016-03-16 06:34:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59248', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6ab4f40613', '0', '2016-03-16 06:34:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59278', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6b2ad50614', '0', '2016-03-16 06:35:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59308', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6ba0bc0615', '0', '2016-03-16 06:35:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59338', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6c16a00616', '0', '2016-03-16 06:36:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59368', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6c8c8a0617', '0', '2016-03-16 06:36:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59399', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6d026b0618', '0', '2016-03-16 06:37:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59429', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6d78450619', '0', '2016-03-16 06:37:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59459', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6dee29061a', '0', '2016-03-16 06:38:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59489', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6e6404061b', '0', '2016-03-16 06:38:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59519', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6ed9e4061c', '0', '2016-03-16 06:39:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59549', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6f4fca061d', '0', '2016-03-16 06:39:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59580', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c6fc5ad061e', '0', '2016-03-16 06:40:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59610', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c703b92061f', '0', '2016-03-16 06:40:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59640', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c70b1730620', '0', '2016-03-16 06:41:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59670', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7127510621', '0', '2016-03-16 06:41:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59700', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c719d2d0622', '0', '2016-03-16 06:42:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59730', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7213180623', '0', '2016-03-16 06:42:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59761', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7288fa0624', '0', '2016-03-16 06:43:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59791', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c72fedd0625', '0', '2016-03-16 06:43:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59821', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7374bc0626', '0', '2016-03-16 06:44:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59851', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c73ea9a0627', '0', '2016-03-16 06:44:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59881', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c74608f0628', '0', '2016-03-16 06:45:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59912', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c74d67d0629', '0', '2016-03-16 06:45:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59942', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c754c5a062a', '0', '2016-03-16 06:46:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '59972', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c75c238062b', '0', '2016-03-16 06:46:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60002', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c76384e062c', '0', '2016-03-16 06:47:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60032', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c76ae3a062d', '0', '2016-03-16 06:47:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60062', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c772420062e', '0', '2016-03-16 06:48:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60093', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c779a01062f', '0', '2016-03-16 06:48:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60123', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c780fe30630', '0', '2016-03-16 06:49:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60153', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7885cf0631', '0', '2016-03-16 06:49:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60183', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c78fbb60632', '0', '2016-03-16 06:50:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60213', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c79719f0633', '0', '2016-03-16 06:50:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60244', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c79e7880634', '0', '2016-03-16 06:51:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60274', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7a5d690635', '0', '2016-03-16 06:51:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60304', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7ad34c0636', '0', '2016-03-16 06:52:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60334', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7b49280637', '0', '2016-03-16 06:52:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60364', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7bbf120638', '0', '2016-03-16 06:53:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60394', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7c34f00639', '0', '2016-03-16 06:53:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60425', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7caad1063a', '0', '2016-03-16 06:54:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60455', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7d20b8063b', '0', '2016-03-16 06:54:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60485', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7d9698063c', '0', '2016-03-16 06:55:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60515', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7e0c86063d', '0', '2016-03-16 06:55:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60545', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7e8264063e', '0', '2016-03-16 06:56:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60576', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7ef845063f', '0', '2016-03-16 06:56:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60606', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7f6e2f0640', '0', '2016-03-16 06:57:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60636', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c7fe4130641', '0', '2016-03-16 06:57:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60666', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8059f90642', '0', '2016-03-16 06:58:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60696', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c80cfdb0643', '0', '2016-03-16 06:58:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60726', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8145c40644', '0', '2016-03-16 06:59:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60757', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c81bbaa0645', '0', '2016-03-16 06:59:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60787', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c82318f0646', '0', '2016-03-16 07:00:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60817', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c82a7810647', '0', '2016-03-16 07:00:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60847', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c831d730648', '0', '2016-03-16 07:01:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60877', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8393570649', '0', '2016-03-16 07:01:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60908', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c840936064a', '0', '2016-03-16 07:02:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60938', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c847f1e064b', '0', '2016-03-16 07:02:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60968', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c84f50f064c', '0', '2016-03-16 07:03:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '60998', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c856afd064d', '0', '2016-03-16 07:03:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61028', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c85e0db064e', '0', '2016-03-16 07:04:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61058', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8656c4064f', '0', '2016-03-16 07:04:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61089', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c86ccae0650', '0', '2016-03-16 07:05:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61119', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c87429b0651', '0', '2016-03-16 07:05:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61149', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c87b8810652', '0', '2016-03-16 07:06:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61179', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c882e660653', '0', '2016-03-16 07:06:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61209', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c88a4470654', '0', '2016-03-16 07:07:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61240', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c891a2d0655', '0', '2016-03-16 07:07:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61270', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c89901a0656', '0', '2016-03-16 07:08:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61300', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8a06010657', '0', '2016-03-16 07:08:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61330', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8a7bee0658', '0', '2016-03-16 07:09:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61360', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8af1d50659', '0', '2016-03-16 07:09:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61390', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8b67c5065a', '0', '2016-03-16 07:10:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61421', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8bddb2065b', '0', '2016-03-16 07:10:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61451', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8c539f065c', '0', '2016-03-16 07:11:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61481', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8cc98d065d', '0', '2016-03-16 07:11:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61511', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8d3f83065e', '0', '2016-03-16 07:12:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61541', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8db574065f', '0', '2016-03-16 07:12:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61572', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8e2b5d0660', '0', '2016-03-16 07:13:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61602', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8ea14b0661', '0', '2016-03-16 07:13:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61632', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8f17390662', '0', '2016-03-16 07:14:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61662', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c8f8d290663', '0', '2016-03-16 07:14:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61692', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9003130664', '0', '2016-03-16 07:15:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61723', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9079010665', '0', '2016-03-16 07:15:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61753', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c90eeee0666', '0', '2016-03-16 07:16:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61783', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9164d90667', '0', '2016-03-16 07:16:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61813', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c91dadb0668', '0', '2016-03-16 07:17:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61843', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9250c70669', '0', '2016-03-16 07:17:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61874', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c92c6b8066a', '0', '2016-03-16 07:18:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61904', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c933ca6066b', '0', '2016-03-16 07:18:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61934', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c93b29c066c', '0', '2016-03-16 07:19:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61964', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c942886066d', '0', '2016-03-16 07:19:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '61994', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c949e76066e', '0', '2016-03-16 07:20:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62025', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c951467066f', '0', '2016-03-16 07:20:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62055', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c958a580670', '0', '2016-03-16 07:21:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62085', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9600560671', '0', '2016-03-16 07:21:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62115', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9676430672', '0', '2016-03-16 07:22:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62145', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c96ec3e0673', '0', '2016-03-16 07:22:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62175', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c97623e0674', '0', '2016-03-16 07:23:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62206', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c97d82f0675', '0', '2016-03-16 07:23:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62236', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c984e1f0676', '0', '2016-03-16 07:24:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62266', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c98c40c0677', '0', '2016-03-16 07:25:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62296', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c993a000678', '0', '2016-03-16 07:25:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62326', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c99aff10679', '0', '2016-03-16 07:26:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62357', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9a25dc067a', '0', '2016-03-16 07:26:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62387', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9a9bce067b', '0', '2016-03-16 07:27:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62417', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9b11bf067c', '0', '2016-03-16 07:27:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62447', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9b87ad067d', '0', '2016-03-16 07:28:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62477', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9bfd99067e', '0', '2016-03-16 07:28:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62508', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9c738b067f', '0', '2016-03-16 07:29:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62538', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9ce97d0680', '0', '2016-03-16 07:29:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62568', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9d5f6a0681', '0', '2016-03-16 07:30:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62598', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9dd55c0682', '0', '2016-03-16 07:30:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62628', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9e4b4e0683', '0', '2016-03-16 07:31:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62659', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9ec13b0684', '0', '2016-03-16 07:31:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62689', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9f37280685', '0', '2016-03-16 07:32:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62719', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537c9fad2c0686', '0', '2016-03-16 07:32:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62749', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca0231c0687', '0', '2016-03-16 07:33:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62779', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca0990d0688', '0', '2016-03-16 07:33:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62810', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca10efa0689', '0', '2016-03-16 07:34:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62840', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca184e8068a', '0', '2016-03-16 07:34:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62870', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca1fada068b', '0', '2016-03-16 07:35:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62900', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca270cb068c', '0', '2016-03-16 07:35:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62930', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca2e6b7068d', '0', '2016-03-16 07:36:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62960', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca35ca8068e', '0', '2016-03-16 07:36:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '62991', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca3d298068f', '0', '2016-03-16 07:37:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63021', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca448880690', '0', '2016-03-16 07:37:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63051', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca4be750691', '0', '2016-03-16 07:38:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63081', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca534670692', '0', '2016-03-16 07:38:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63111', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca5aa580693', '0', '2016-03-16 07:39:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63142', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca620490694', '0', '2016-03-16 07:39:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63172', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca6963d0695', '0', '2016-03-16 07:40:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63202', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca70c350696', '0', '2016-03-16 07:40:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63232', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca782260697', '0', '2016-03-16 07:41:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63262', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca7f8190698', '0', '2016-03-16 07:41:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63293', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca86e050699', '0', '2016-03-16 07:42:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63323', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca8e3f3069a', '0', '2016-03-16 07:42:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63353', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca959e4069b', '0', '2016-03-16 07:43:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63383', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ca9cfd5069c', '0', '2016-03-16 07:43:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63413', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537caa45cc069d', '0', '2016-03-16 07:44:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63444', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537caabbbc069e', '0', '2016-03-16 07:44:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63474', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cab31aa069f', '0', '2016-03-16 07:45:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63504', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537caba79c06a0', '0', '2016-03-16 07:45:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63534', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cac1d8906a1', '0', '2016-03-16 07:46:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63564', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cac938106a2', '0', '2016-03-16 07:46:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63595', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cad096906a3', '0', '2016-03-16 07:47:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63625', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cad7f4d06a4', '0', '2016-03-16 07:47:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63655', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cadf52606a5', '0', '2016-03-16 07:48:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63685', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cae6b0006a6', '0', '2016-03-16 07:48:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63715', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537caee0de06a7', '0', '2016-03-16 07:49:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63745', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537caf56bf06a8', '0', '2016-03-16 07:49:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63776', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cafcc9e06a9', '0', '2016-03-16 07:50:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63806', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb0428206aa', '0', '2016-03-16 07:50:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63836', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb0b86306ab', '0', '2016-03-16 07:51:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63866', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb12e4506ac', '0', '2016-03-16 07:51:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63896', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb1a41f06ad', '0', '2016-03-16 07:52:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63926', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb21a0006ae', '0', '2016-03-16 07:52:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63957', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb28fde06af', '0', '2016-03-16 07:53:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '63987', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb305c106b0', '0', '2016-03-16 07:53:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64017', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb37bab06b1', '0', '2016-03-16 07:54:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64047', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb3f19606b2', '0', '2016-03-16 07:54:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64077', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb4677406b3', '0', '2016-03-16 07:55:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64108', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb4dd5406b4', '0', '2016-03-16 07:55:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64138', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb5533306b5', '0', '2016-03-16 07:56:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64168', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb5c91006b6', '0', '2016-03-16 07:56:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64198', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb63ef206b7', '0', '2016-03-16 07:57:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64228', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb6b4d006b8', '0', '2016-03-16 07:57:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64258', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb72ab806b9', '0', '2016-03-16 07:58:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64289', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb7a09606ba', '0', '2016-03-16 07:58:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64319', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb8167406bb', '0', '2016-03-16 07:59:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64349', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb88c5606bc', '0', '2016-03-16 07:59:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64379', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb9023d06bd', '0', '2016-03-16 08:00:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64409', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb9781706be', '0', '2016-03-16 08:00:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64439', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cb9edfa06bf', '0', '2016-03-16 08:01:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64470', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cba63da06c0', '0', '2016-03-16 08:01:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64500', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbad9b806c1', '0', '2016-03-16 08:02:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64530', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbb4f9606c2', '0', '2016-03-16 08:02:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64560', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbbc57306c3', '0', '2016-03-16 08:03:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64590', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbc3b4e06c4', '0', '2016-03-16 08:03:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64621', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbcb13a06c5', '0', '2016-03-16 08:04:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64651', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbd272306c6', '0', '2016-03-16 08:04:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64681', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbd9d0206c7', '0', '2016-03-16 08:05:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64711', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbe12e306c8', '0', '2016-03-16 08:05:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64741', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbe88c106c9', '0', '2016-03-16 08:06:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64771', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbefea406ca', '0', '2016-03-16 08:06:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64802', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbf748806cb', '0', '2016-03-16 08:07:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64832', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cbfea7006cc', '0', '2016-03-16 08:07:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64862', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc0604e06cd', '0', '2016-03-16 08:08:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64892', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc0d63406ce', '0', '2016-03-16 08:08:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64922', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc14c1506cf', '0', '2016-03-16 08:09:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64952', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc1c1f706d0', '0', '2016-03-16 08:09:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '64983', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc237d806d1', '0', '2016-03-16 08:10:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65013', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc2adb906d2', '0', '2016-03-16 08:10:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65043', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc323a006d3', '0', '2016-03-16 08:11:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65073', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc3998406d4', '0', '2016-03-16 08:11:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65103', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc40f6d06d5', '0', '2016-03-16 08:12:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65134', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc4855006d6', '0', '2016-03-16 08:12:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65164', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc4fb2d06d7', '0', '2016-03-16 08:13:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65194', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc5711806d8', '0', '2016-03-16 08:13:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65224', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc5e6fc06d9', '0', '2016-03-16 08:14:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65254', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc65cd906da', '0', '2016-03-16 08:14:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65284', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc6d2bb06db', '0', '2016-03-16 08:15:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65315', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc748a406dc', '0', '2016-03-16 08:15:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65345', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc7be9206dd', '0', '2016-03-16 08:16:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65375', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc8347106de', '0', '2016-03-16 08:16:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65405', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc8aa6d06df', '0', '2016-03-16 08:17:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65435', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc9205206e0', '0', '2016-03-16 08:17:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65466', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cc9964006e1', '0', '2016-03-16 08:18:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65496', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cca0c3106e2', '0', '2016-03-16 08:18:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65526', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cca822f06e3', '0', '2016-03-16 08:19:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65556', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ccaf81006e4', '0', '2016-03-16 08:19:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65586', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ccb6dfb06e5', '0', '2016-03-16 08:20:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65617', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ccbe3e606e6', '0', '2016-03-16 08:20:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65647', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ccc59de06e7', '0', '2016-03-16 08:21:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65677', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ccccfc506e8', '0', '2016-03-16 08:21:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65707', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ccd45b006e9', '0', '2016-03-16 08:22:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65737', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ccdbb9506ea', '0', '2016-03-16 08:22:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65767', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cce317206eb', '0', '2016-03-16 08:23:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65798', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ccea75c06ec', '0', '2016-03-16 08:23:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65828', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ccf1d4206ed', '0', '2016-03-16 08:24:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65858', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ccf933b06ee', '0', '2016-03-16 08:24:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65888', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd0092006ef', '0', '2016-03-16 08:25:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65918', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd07f0906f0', '0', '2016-03-16 08:25:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65949', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd0f4f706f1', '0', '2016-03-16 08:26:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '65979', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd16ae106f2', '0', '2016-03-16 08:26:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66009', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd1e0c506f3', '0', '2016-03-16 08:27:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66039', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd256a806f4', '0', '2016-03-16 08:27:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66069', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd2cc8e06f5', '0', '2016-03-16 08:28:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66099', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd3428606f6', '0', '2016-03-16 08:28:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66130', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd3b86c06f7', '0', '2016-03-16 08:29:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66160', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd42e4e06f8', '0', '2016-03-16 08:29:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66190', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd4a43b06f9', '0', '2016-03-16 08:30:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66220', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd51a2506fa', '0', '2016-03-16 08:30:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66250', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd5901206fb', '0', '2016-03-16 08:31:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66281', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd6060006fc', '0', '2016-03-16 08:31:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66311', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd67bea06fd', '0', '2016-03-16 08:32:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66341', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd6f1d206fe', '0', '2016-03-16 08:32:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66371', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd767bf06ff', '0', '2016-03-16 08:33:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66401', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd7ddb10700', '0', '2016-03-16 08:33:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66432', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd853900701', '0', '2016-03-16 08:34:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66462', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd8c9800702', '0', '2016-03-16 08:34:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66492', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd93f6c0703', '0', '2016-03-16 08:35:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66522', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cd9b55d0704', '0', '2016-03-16 08:35:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66552', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cda2b450705', '0', '2016-03-16 08:36:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66582', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cdaa1370706', '0', '2016-03-16 08:36:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66613', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cdb17280707', '0', '2016-03-16 08:37:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66643', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cdb8d180708', '0', '2016-03-16 08:37:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66673', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cdc03070709', '0', '2016-03-16 08:38:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66703', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cdc78f4070a', '0', '2016-03-16 08:38:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66733', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cdceeea070b', '0', '2016-03-16 08:39:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66764', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cdd64d0070c', '0', '2016-03-16 08:39:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66794', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cdddac4070d', '0', '2016-03-16 08:40:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66824', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cde50b3070e', '0', '2016-03-16 08:40:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66854', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cdec82f070f', '0', '2016-03-16 08:41:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66885', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cdf3e250710', '0', '2016-03-16 08:41:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66915', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cdfb4130711', '0', '2016-03-16 08:42:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66945', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce02a140712', '0', '2016-03-16 08:42:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '66975', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce0a0020713', '0', '2016-03-16 08:43:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67006', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce115eb0714', '0', '2016-03-16 08:43:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67036', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce18bd80715', '0', '2016-03-16 08:44:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67066', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce201c80716', '0', '2016-03-16 08:45:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67096', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce277b90717', '0', '2016-03-16 08:45:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67126', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce2edaf0718', '0', '2016-03-16 08:46:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67157', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce364100719', '0', '2016-03-16 08:46:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67187', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce3d9fc071a', '0', '2016-03-16 08:47:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67217', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce44fec071b', '0', '2016-03-16 08:47:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67247', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce4c5df071c', '0', '2016-03-16 08:48:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67277', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce53bcc071d', '0', '2016-03-16 08:48:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67308', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce5b1be071e', '0', '2016-03-16 08:49:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67338', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce627ac071f', '0', '2016-03-16 08:49:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67368', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce69d9d0720', '0', '2016-03-16 08:50:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67398', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce713890721', '0', '2016-03-16 08:50:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67428', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce789810722', '0', '2016-03-16 08:51:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67459', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce7ff750723', '0', '2016-03-16 08:51:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67489', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce875670724', '0', '2016-03-16 08:52:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67519', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce8eb540725', '0', '2016-03-16 08:52:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67549', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce961440726', '0', '2016-03-16 08:53:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67579', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ce9d7340727', '0', '2016-03-16 08:53:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67610', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cea4d250728', '0', '2016-03-16 08:54:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67640', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ceac3150729', '0', '2016-03-16 08:54:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67670', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ceb390b072a', '0', '2016-03-16 08:55:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67700', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cebaef8072b', '0', '2016-03-16 08:55:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67730', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cec24ea072c', '0', '2016-03-16 08:56:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67760', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cec9add072d', '0', '2016-03-16 08:56:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67791', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ced10ca072e', '0', '2016-03-16 08:57:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67821', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ced86b5072f', '0', '2016-03-16 08:57:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67851', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cedfcb40730', '0', '2016-03-16 08:58:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67881', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cee72aa0731', '0', '2016-03-16 08:58:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67911', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537ceee8a00732', '0', '2016-03-16 08:59:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67942', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cef5e900733', '0', '2016-03-16 08:59:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '67972', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cefd4820734', '0', '2016-03-16 09:00:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68002', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf04a6f0735', '0', '2016-03-16 09:00:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68032', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf0c0610736', '0', '2016-03-16 09:01:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68062', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf1364f0737', '0', '2016-03-16 09:01:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68093', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf1ac410738', '0', '2016-03-16 09:02:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68123', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf2222c0739', '0', '2016-03-16 09:02:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68153', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf2981f073a', '0', '2016-03-16 09:03:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68183', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf30e0c073b', '0', '2016-03-16 09:03:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68213', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf383fe073c', '0', '2016-03-16 09:04:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68244', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf3f9eb073d', '0', '2016-03-16 09:04:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68274', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf46fdd073e', '0', '2016-03-16 09:05:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68304', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf4e5cf073f', '0', '2016-03-16 09:05:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68334', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf55bc00740', '0', '2016-03-16 09:06:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68364', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf5d1ad0741', '0', '2016-03-16 09:06:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68395', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf647a30742', '0', '2016-03-16 09:07:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68425', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf6bd940743', '0', '2016-03-16 09:07:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68455', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf7338e0744', '0', '2016-03-16 09:08:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68485', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf7a97a0745', '0', '2016-03-16 09:08:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68515', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf81f6c0746', '0', '2016-03-16 09:09:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68545', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf8955c0747', '0', '2016-03-16 09:09:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68576', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf90b530748', '0', '2016-03-16 09:10:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68606', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf981390749', '0', '2016-03-16 09:10:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68636', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cf9f712074a', '0', '2016-03-16 09:11:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68666', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cfa6cf0074b', '0', '2016-03-16 09:11:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68696', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cfae2d1074c', '0', '2016-03-16 09:12:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68727', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cfb58af074d', '0', '2016-03-16 09:12:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68757', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cfbceb0074e', '0', '2016-03-16 09:13:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68787', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cfc448d074f', '0', '2016-03-16 09:13:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68817', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cfcba6f0750', '0', '2016-03-16 09:14:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68847', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cfd30750751', '0', '2016-03-16 09:14:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68878', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cfda6560752', '0', '2016-03-16 09:15:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68908', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cfe1c3d0753', '0', '2016-03-16 09:15:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68938', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cfe921d0754', '0', '2016-03-16 09:16:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68968', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cff080b0755', '0', '2016-03-16 09:16:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '68998', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cff7de80756', '0', '2016-03-16 09:17:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69028', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537cfff3ca0757', '0', '2016-03-16 09:17:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69059', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0069ad0758', '0', '2016-03-16 09:18:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69089', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d00df900759', '0', '2016-03-16 09:18:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69119', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d01556e075a', '0', '2016-03-16 09:19:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69149', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d01cb57075b', '0', '2016-03-16 09:19:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69179', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d024143075c', '0', '2016-03-16 09:20:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69209', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d02b722075d', '0', '2016-03-16 09:20:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69240', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d032d04075e', '0', '2016-03-16 09:21:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69270', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d03a2e9075f', '0', '2016-03-16 09:21:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69300', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0418cb0760', '0', '2016-03-16 09:22:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69330', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d048eaa0761', '0', '2016-03-16 09:22:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69360', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0504940762', '0', '2016-03-16 09:23:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69391', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d057a780763', '0', '2016-03-16 09:23:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69421', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d05f0590764', '0', '2016-03-16 09:24:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69451', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0666360765', '0', '2016-03-16 09:24:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69481', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d06dc140766', '0', '2016-03-16 09:25:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69511', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0751f70767', '0', '2016-03-16 09:25:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69541', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d07c7de0768', '0', '2016-03-16 09:26:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69572', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d083dcc0769', '0', '2016-03-16 09:26:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69602', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d08b3b2076a', '0', '2016-03-16 09:27:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69632', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d092994076b', '0', '2016-03-16 09:27:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69662', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d099f7e076c', '0', '2016-03-16 09:28:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69692', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0a1562076d', '0', '2016-03-16 09:28:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69723', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0a8b47076e', '0', '2016-03-16 09:29:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69753', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0b0125076f', '0', '2016-03-16 09:29:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69783', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0b77100770', '0', '2016-03-16 09:30:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69813', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0becf30771', '0', '2016-03-16 09:30:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69843', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0c62d50772', '0', '2016-03-16 09:31:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69873', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0cd8b30773', '0', '2016-03-16 09:31:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69904', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0d4e940774', '0', '2016-03-16 09:32:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69934', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0dc4710775', '0', '2016-03-16 09:32:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69964', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0e3a4f0776', '0', '2016-03-16 09:33:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '69994', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0eb0390777', '0', '2016-03-16 09:33:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70024', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0f262b0778', '0', '2016-03-16 09:34:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70055', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d0f9c180779', '0', '2016-03-16 09:34:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70085', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d101209077a', '0', '2016-03-16 09:35:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70115', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1087ed077b', '0', '2016-03-16 09:35:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70145', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d10fddc077c', '0', '2016-03-16 09:36:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70175', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1173d1077d', '0', '2016-03-16 09:36:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70205', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d11e9bf077e', '0', '2016-03-16 09:37:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70236', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d125fb1077f', '0', '2016-03-16 09:37:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70266', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d12d5a20780', '0', '2016-03-16 09:38:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70296', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d134b8f0781', '0', '2016-03-16 09:38:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70326', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d13c17d0782', '0', '2016-03-16 09:39:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70356', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1437700783', '0', '2016-03-16 09:39:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70387', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d14ad600784', '0', '2016-03-16 09:40:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70417', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d15234e0785', '0', '2016-03-16 09:40:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70447', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d15993f0786', '0', '2016-03-16 09:41:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70477', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d160f3b0787', '0', '2016-03-16 09:41:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70507', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d16852a0788', '0', '2016-03-16 09:42:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70538', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d16fb130789', '0', '2016-03-16 09:42:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70568', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d17710d078a', '0', '2016-03-16 09:43:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70598', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d17e6fe078b', '0', '2016-03-16 09:43:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70628', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d185cef078c', '0', '2016-03-16 09:44:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70658', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d18d2dd078d', '0', '2016-03-16 09:44:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70689', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1948c3078e', '0', '2016-03-16 09:45:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70719', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d19beb4078f', '0', '2016-03-16 09:45:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70749', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1a34a50790', '0', '2016-03-16 09:46:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70779', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1aaa930791', '0', '2016-03-16 09:46:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70809', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1b20840792', '0', '2016-03-16 09:47:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70839', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1b96720793', '0', '2016-03-16 09:47:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70870', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1c0c640794', '0', '2016-03-16 09:48:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70900', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1c825d0795', '0', '2016-03-16 09:48:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70930', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1cf84b0796', '0', '2016-03-16 09:49:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70960', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1d6e380797', '0', '2016-03-16 09:49:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '70990', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1de42d0798', '0', '2016-03-16 09:50:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71021', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1e5a230799', '0', '2016-03-16 09:50:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71051', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1ed011079a', '0', '2016-03-16 09:51:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71081', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1f4602079b', '0', '2016-03-16 09:51:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71111', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d1fbc13079c', '0', '2016-03-16 09:52:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71141', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d20323d079d', '0', '2016-03-16 09:52:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71172', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d20a82c079e', '0', '2016-03-16 09:53:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71202', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d211e1c079f', '0', '2016-03-16 09:53:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71232', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d21940d07a0', '0', '2016-03-16 09:54:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71262', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2209fa07a1', '0', '2016-03-16 09:54:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71292', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d227fec07a2', '0', '2016-03-16 09:55:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71323', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d22f5e107a3', '0', '2016-03-16 09:55:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71353', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d236bd307a4', '0', '2016-03-16 09:56:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71383', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d23e1c007a5', '0', '2016-03-16 09:56:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71413', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2457b407a6', '0', '2016-03-16 09:57:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71443', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d24cda107a7', '0', '2016-03-16 09:57:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71474', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d25439d07a8', '0', '2016-03-16 09:58:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71504', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d25b99307a9', '0', '2016-03-16 09:58:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71534', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d262f7707aa', '0', '2016-03-16 09:59:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71564', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d26a56907ab', '0', '2016-03-16 09:59:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71594', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d271b5d07ac', '0', '2016-03-16 10:00:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71625', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d27915007ad', '0', '2016-03-16 10:00:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71655', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d28073e07ae', '0', '2016-03-16 10:01:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71685', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d287d4707af', '0', '2016-03-16 10:01:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71715', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d28f33507b0', '0', '2016-03-16 10:02:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71745', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d29692607b1', '0', '2016-03-16 10:02:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71776', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d29df1807b2', '0', '2016-03-16 10:03:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71806', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2a554607b3', '0', '2016-03-16 10:04:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71836', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2acb3c07b4', '0', '2016-03-16 10:04:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71866', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2b412807b5', '0', '2016-03-16 10:05:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71896', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2bb71a07b6', '0', '2016-03-16 10:05:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71927', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2c2d0807b7', '0', '2016-03-16 10:06:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71957', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2ca2fd07b8', '0', '2016-03-16 10:06:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '71987', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2d18f207b9', '0', '2016-03-16 10:07:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72017', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2d8ee007ba', '0', '2016-03-16 10:07:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72047', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2e04d107bb', '0', '2016-03-16 10:08:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72078', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2e7ac307bc', '0', '2016-03-16 10:08:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72108', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2ef0d807bd', '0', '2016-03-16 10:09:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72138', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2f66ca07be', '0', '2016-03-16 10:09:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72168', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d2fdcb707bf', '0', '2016-03-16 10:10:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72198', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3052a507c0', '0', '2016-03-16 10:10:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72229', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d30c89b07c1', '0', '2016-03-16 10:11:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72259', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d313e8807c2', '0', '2016-03-16 10:11:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72289', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d31b47907c3', '0', '2016-03-16 10:12:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72319', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d322a6a07c4', '0', '2016-03-16 10:12:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72349', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d32a06007c5', '0', '2016-03-16 10:13:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72380', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d33164d07c6', '0', '2016-03-16 10:13:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72410', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d338c4a07c7', '0', '2016-03-16 10:14:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72440', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d34024b07c8', '0', '2016-03-16 10:14:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72470', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d34783e07c9', '0', '2016-03-16 10:15:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72500', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d34ee2e07ca', '0', '2016-03-16 10:15:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72531', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d35642107cb', '0', '2016-03-16 10:16:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72561', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d35da1207cc', '0', '2016-03-16 10:16:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72591', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d36500007cd', '0', '2016-03-16 10:17:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72621', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d36c5e407ce', '0', '2016-03-16 10:17:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72651', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d373bc707cf', '0', '2016-03-16 10:18:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72681', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d37b1b007d0', '0', '2016-03-16 10:18:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72712', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d38279707d1', '0', '2016-03-16 10:19:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72742', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d389d7b07d2', '0', '2016-03-16 10:19:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72772', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d39135a07d3', '0', '2016-03-16 10:20:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72802', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d39894f07d4', '0', '2016-03-16 10:20:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72832', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d39ff3007d5', '0', '2016-03-16 10:21:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72863', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3a751207d6', '0', '2016-03-16 10:21:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72893', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3aeaf007d7', '0', '2016-03-16 10:22:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72923', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3b60d707d8', '0', '2016-03-16 10:22:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72953', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3bd6be07d9', '0', '2016-03-16 10:23:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '72983', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3c4c9e07da', '0', '2016-03-16 10:23:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73013', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3cc28407db', '0', '2016-03-16 10:24:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73044', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3d386607dc', '0', '2016-03-16 10:24:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73074', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3dae4307dd', '0', '2016-03-16 10:25:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73104', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3e242007de', '0', '2016-03-16 10:25:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73134', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3e9a0107df', '0', '2016-03-16 10:26:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73164', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3f0fe307e0', '0', '2016-03-16 10:26:38', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73194', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3f85c907e1', '0', '2016-03-16 10:27:08', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73225', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d3ffbb607e2', '0', '2016-03-16 10:27:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73255', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d40719307e3', '0', '2016-03-16 10:28:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73285', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d40e77907e4', '0', '2016-03-16 10:28:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73315', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d415d5a07e5', '0', '2016-03-16 10:29:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73345', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d41d34307e6', '0', '2016-03-16 10:29:39', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73376', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d42492d07e7', '0', '2016-03-16 10:30:09', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73406', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d42bf2f07e8', '0', '2016-03-16 10:30:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73436', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d43350907e9', '0', '2016-03-16 10:31:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73466', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d43ab0e07ea', '0', '2016-03-16 10:31:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73496', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4420f307eb', '0', '2016-03-16 10:32:10', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73527', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4496dd07ec', '0', '2016-03-16 10:32:40', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73557', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d450cd107ed', '0', '2016-03-16 10:33:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73587', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4582c007ee', '0', '2016-03-16 10:33:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73617', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d45f8a007ef', '0', '2016-03-16 10:34:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73647', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d466e8307f0', '0', '2016-03-16 10:34:41', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73677', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d46e46907f1', '0', '2016-03-16 10:35:11', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73708', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d475a4d07f2', '0', '2016-03-16 10:35:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73738', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d47d02a07f3', '0', '2016-03-16 10:36:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73768', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d48461107f4', '0', '2016-03-16 10:36:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73798', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d48bbff07f5', '0', '2016-03-16 10:37:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73828', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4931e307f6', '0', '2016-03-16 10:37:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73859', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d49a7c107f7', '0', '2016-03-16 10:38:12', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73889', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4a1da607f8', '0', '2016-03-16 10:38:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73919', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4a938707f9', '0', '2016-03-16 10:39:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73949', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4b097b07fa', '0', '2016-03-16 10:39:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '73979', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4b7f5e07fb', '0', '2016-03-16 10:40:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74009', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4bf54807fc', '0', '2016-03-16 10:40:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74040', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4c6b2e07fd', '0', '2016-03-16 10:41:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74070', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4ce11707fe', '0', '2016-03-16 10:41:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74100', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4d570507ff', '0', '2016-03-16 10:42:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74130', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4dccee0800', '0', '2016-03-16 10:42:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74160', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4e42d30801', '0', '2016-03-16 10:43:14', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74191', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4eb8bf0802', '0', '2016-03-16 10:43:44', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74221', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4f2ea40803', '0', '2016-03-16 10:44:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74251', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d4fa4930804', '0', '2016-03-16 10:44:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74281', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d501a790805', '0', '2016-03-16 10:45:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74311', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5090620806', '0', '2016-03-16 10:45:45', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74341', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d51064a0807', '0', '2016-03-16 10:46:15', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74372', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d517c380808', '0', '2016-03-16 10:46:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74402', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d51f2280809', '0', '2016-03-16 10:47:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74432', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d526812080a', '0', '2016-03-16 10:47:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74462', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d52ddf6080b', '0', '2016-03-16 10:48:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74492', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5353d7080c', '0', '2016-03-16 10:48:46', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74523', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d53c9bd080d', '0', '2016-03-16 10:49:16', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74553', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d543faf080e', '0', '2016-03-16 10:49:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74583', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d54b59c080f', '0', '2016-03-16 10:50:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74613', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d552b850810', '0', '2016-03-16 10:50:47', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74643', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d55a1d70811', '0', '2016-03-16 10:51:17', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74674', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5617c80812', '0', '2016-03-16 10:51:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74704', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d568dba0813', '0', '2016-03-16 10:52:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74734', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5703a40814', '0', '2016-03-16 10:52:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74764', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5779890815', '0', '2016-03-16 10:53:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74794', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d57ef6d0816', '0', '2016-03-16 10:53:48', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74825', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5865580817', '0', '2016-03-16 10:54:18', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74855', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d58db490818', '0', '2016-03-16 10:54:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74885', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d59512e0819', '0', '2016-03-16 10:55:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74915', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d59c714081a', '0', '2016-03-16 10:55:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74945', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5a3cfd081b', '0', '2016-03-16 10:56:19', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '74975', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5ab2e7081c', '0', '2016-03-16 10:56:49', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75006', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5b28df081d', '0', '2016-03-16 10:57:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75036', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5b9eda081e', '0', '2016-03-16 10:57:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75066', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5c14cc081f', '0', '2016-03-16 10:58:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75096', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5c8ab40820', '0', '2016-03-16 10:58:50', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75126', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5d00ab0821', '0', '2016-03-16 10:59:20', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75157', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5d76a30822', '0', '2016-03-16 10:59:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75187', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5deca60823', '0', '2016-03-16 11:00:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75217', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5e629e0824', '0', '2016-03-16 11:00:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75247', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5ed89b0825', '0', '2016-03-16 11:01:21', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75277', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5f4e910826', '0', '2016-03-16 11:01:51', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75308', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d5fc4940827', '0', '2016-03-16 11:02:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75338', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d603a8c0828', '0', '2016-03-16 11:02:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75368', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d60b0850829', '0', '2016-03-16 11:03:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75398', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d61267c082a', '0', '2016-03-16 11:03:52', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75428', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d619c6e082b', '0', '2016-03-16 11:04:22', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75459', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d621266082c', '0', '2016-03-16 11:04:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75489', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d628864082d', '0', '2016-03-16 11:05:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75519', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d62fe5d082e', '0', '2016-03-16 11:05:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75549', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d63745a082f', '0', '2016-03-16 11:06:23', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75579', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d63ea440830', '0', '2016-03-16 11:06:53', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75610', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6460360831', '0', '2016-03-16 11:07:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75640', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d64d6230832', '0', '2016-03-16 11:07:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75670', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d654c200833', '0', '2016-03-16 11:08:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75700', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d65c2150834', '0', '2016-03-16 11:08:54', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75730', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d66380b0835', '0', '2016-03-16 11:09:24', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75761', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d66adfc0836', '0', '2016-03-16 11:09:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75791', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6723eb0837', '0', '2016-03-16 11:10:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75821', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6799d40838', '0', '2016-03-16 11:10:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75851', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d680fc20839', '0', '2016-03-16 11:11:25', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75881', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6885aa083a', '0', '2016-03-16 11:11:55', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75912', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d68fba0083b', '0', '2016-03-16 11:12:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75942', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d697191083c', '0', '2016-03-16 11:12:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '75972', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d69e77f083d', '0', '2016-03-16 11:13:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76002', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6a5d70083e', '0', '2016-03-16 11:13:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76032', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6ad356083f', '0', '2016-03-16 11:14:26', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76063', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6b49540840', '0', '2016-03-16 11:14:56', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76093', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6bbf480841', '0', '2016-03-16 11:15:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76123', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6c35370842', '0', '2016-03-16 11:15:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76153', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6cab200843', '0', '2016-03-16 11:16:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76183', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6d21110844', '0', '2016-03-16 11:16:57', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76213', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6d970e0845', '0', '2016-03-16 11:17:27', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76244', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6e0d090846', '0', '2016-03-16 11:17:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76274', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6e82f70847', '0', '2016-03-16 11:18:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76304', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6ef8e70848', '0', '2016-03-16 11:18:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76334', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6f6ed40849', '0', '2016-03-16 11:19:28', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76364', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d6fe4c7084a', '0', '2016-03-16 11:19:58', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76395', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d705ab6084b', '0', '2016-03-16 11:20:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76425', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d70d0b9084c', '0', '2016-03-16 11:20:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76455', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d71470b084d', '0', '2016-03-16 11:21:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76485', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d71bc70084e', '0', '2016-03-16 11:21:59', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76515', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d723267084f', '0', '2016-03-16 11:22:29', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76546', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d72a85b0850', '0', '2016-03-16 11:23:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76576', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d731e540851', '0', '2016-03-16 11:23:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76606', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d731efa0852', '0', '2016-03-16 11:23:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76606', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7394460853', '0', '2016-03-16 11:24:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76636', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d739d4c0854', '0', '2016-03-16 11:24:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76639', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d740a3b0855', '0', '2016-03-16 11:24:30', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76666', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d74801e0856', '0', '2016-03-16 11:25:00', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76697', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d74f6120857', '0', '2016-03-16 11:25:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76727', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d756c140858', '0', '2016-03-16 11:26:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76757', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d75e2040859', '0', '2016-03-16 11:26:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76787', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7657f3085a', '0', '2016-03-16 11:27:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76817', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d76cde4085b', '0', '2016-03-16 11:27:31', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76848', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d77434d085c', '0', '2016-03-16 11:28:01', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76878', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d77b943085d', '0', '2016-03-16 11:28:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76908', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d782f3d085e', '0', '2016-03-16 11:29:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76938', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d78a526085f', '0', '2016-03-16 11:29:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76968', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d791b1b0860', '0', '2016-03-16 11:30:02', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '76998', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d79910c0861', '0', '2016-03-16 11:30:32', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77029', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7a06fe0862', '0', '2016-03-16 11:31:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77059', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7a7cf40863', '0', '2016-03-16 11:31:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77089', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7af2ed0864', '0', '2016-03-16 11:32:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77119', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7b68da0865', '0', '2016-03-16 11:32:33', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77149', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7bded00866', '0', '2016-03-16 11:33:03', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77180', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7c54c20867', '0', '2016-03-16 11:33:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77210', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7ccabb0868', '0', '2016-03-16 11:34:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77240', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7d40b50869', '0', '2016-03-16 11:34:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77270', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7db6a6086a', '0', '2016-03-16 11:35:04', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77300', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7e2c9d086b', '0', '2016-03-16 11:35:34', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77331', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7ea2ae086c', '0', '2016-03-16 11:36:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77361', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7f18a3086d', '0', '2016-03-16 11:36:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77391', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d7f8e98086e', '0', '2016-03-16 11:37:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77421', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d80048e086f', '0', '2016-03-16 11:37:35', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77451', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d807a830870', '0', '2016-03-16 11:38:05', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77482', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d80f0b00871', '0', '2016-03-16 11:38:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77512', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d81669e0872', '0', '2016-03-16 11:39:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77542', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d81dca10873', '0', '2016-03-16 11:39:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77572', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d82529d0874', '0', '2016-03-16 11:40:06', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77602', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d82c8960875', '0', '2016-03-16 11:40:36', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77633', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d833e7f0876', '0', '2016-03-16 11:41:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77663', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d83b4730877', '0', '2016-03-16 11:41:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77693', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d842a6b0878', '0', '2016-03-16 11:42:07', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77723', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d84a0690879', '0', '2016-03-16 11:42:37', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77753', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d859f23087a', '0', '2016-03-16 11:43:42', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77819', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d861505087b', '0', '2016-03-16 11:44:13', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77849', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801537d868aea087c', '0', '2016-03-16 11:44:43', '25', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '160350', '77879', '16994428');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801538259954d087d', '1', '2016-03-17 10:13:42', '51', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '6', '1873760', '66513', '138674263');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801538259a9d2087e', '0', '2016-03-17 10:13:48', '114', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '13', '1874787', '66519', '138781284');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153825b3e12087f', '0', '2016-03-17 10:15:31', '50', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '1879888', '66622', '139267980');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153826f50190880', '0', '2016-03-17 10:37:26', '113', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '3', '1937224', '67937', '144952036');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153826f5a250881', '2', '2016-03-17 10:37:29', '215', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '24', '1938780', '67940', '145097989');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015382700fcf0882', '0', '2016-03-17 10:38:16', '50', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '5', '1941723', '67987', '145371650');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015382701a080883', '2', '2016-03-17 10:38:18', '147', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '27', '1943149', '67989', '145510380');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801538271bfa10884', '2', '2016-03-17 10:40:06', '104', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '14', '1953487', '68097', '146494780');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015382732a1a0885', '3', '2016-03-17 10:41:39', '130', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '20', '1958755', '68190', '146989544');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015382732e660886', '3', '2016-03-17 10:41:40', '137', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '24', '1959013', '68191', '147022870');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801538287f9f00887', '2', '2016-03-17 11:04:23', '122', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '18', '2016118', '69554', '152786656');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015382888aaf0888', '0', '2016-03-17 11:05:00', '55', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '8', '2017779', '69591', '152955158');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153828890520889', '2', '2016-03-17 11:05:01', '96', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '16', '2018437', '69592', '153015877');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801538288a3c1088a', '0', '2016-03-17 11:05:06', '105', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '1', '2018781', '69597', '153062145');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153828b2705088b', '3', '2016-03-17 11:07:51', '316', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '57', '2033479', '69762', '156124517');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153828bdc6e088c', '0', '2016-03-17 11:08:37', '191', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '36', '2037708', '69808', '156546740');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015382abe38a088d', '0', '2016-03-17 11:43:36', '59', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '5', '2143266', '71907', '168387133');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015383899c22088e', '0', '2016-03-17 15:45:47', '58', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '5', '2814130', '86438', '246809952');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015383b5c030088f', '0', '2016-03-17 16:34:00', '126', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '3', '2930022', '89331', '261152361');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015383c87e750890', '0', '2016-03-17 16:54:28', '100', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '5', '2980718', '90559', '267248723');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015383c91ed90891', '0', '2016-03-17 16:55:09', '55', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '2', '2983996', '90600', '267606313');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015383c958d50892', '0', '2016-03-17 16:55:24', '111', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '4', '2985343', '90615', '267743188');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015383ca2d790893', '0', '2016-03-17 16:56:19', '57', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '4', '2987622', '90669', '268010056');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015383cd11cf0894', '0', '2016-03-17 16:59:28', '60', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '4', '2997046', '90859', '269063049');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015383ce8abd0895', '0', '2016-03-17 17:01:05', '55', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '7', '3000911', '90955', '269516347');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015388affe140896', '0', '2016-03-18 15:45:49', '12', '2c918085537959780153795ab3b30000', null, null, null, null, null, '5', '6', '5803005', '172838', '617116111');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801538dd6607d0897', '0', '2016-03-19 15:45:50', '16', '2c918085537959780153795ab3b30000', null, null, null, null, null, '6', '1', '6958581', '259238', '730384828');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015392fcc2cc0898', '0', '2016-03-20 15:45:52', '16', '2c918085537959780153795ab3b30000', null, null, null, null, null, '6', '0', '8112347', '345638', '842993367');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015397c5da2d089a', null, '2016-03-21 14:03:59', null, '2c91808553795978015397c5da2b0899', null, null, null, null, null, null, null, null, '240998', null);
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015397cb1c6f089c', null, '2016-03-21 14:09:44', null, '2c91808553795978015397cb1c6b089b', null, null, null, null, null, null, null, null, '241346', null);
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015397e151bb089d', null, '2016-03-21 14:33:59', null, '2c91808553795978015397c5da2b0899', null, null, null, null, null, null, null, null, '242799', null);
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015397e693f6089e', null, '2016-03-21 14:39:44', null, '2c91808553795978015397cb1c6b089b', null, null, null, null, null, null, null, null, '243146', null);
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015397fcc94a089f', null, '2016-03-21 15:04:00', null, '2c91808553795978015397c5da2b0899', null, null, null, null, null, null, null, null, '244599', null);
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398020b8008a0', null, '2016-03-21 15:09:44', null, '2c91808553795978015397cb1c6b089b', null, null, null, null, null, null, null, null, '244946', null);
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153981840da08a1', null, '2016-03-21 15:34:00', null, '2c91808553795978015397c5da2b0899', null, null, null, null, null, null, null, null, '246399', null);
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153981d830a08a2', null, '2016-03-21 15:39:44', null, '2c91808553795978015397cb1c6b089b', null, null, null, null, null, null, null, null, '246746', null);
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539823249a08a3', '0', '2016-03-21 15:45:53', '17', '2c918085537959780153795ab3b30000', null, null, null, null, null, '6', '2', '9283635', '432038', '955747624');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539833b87108a4', null, '2016-03-21 16:04:00', null, '2c91808553795978015397c5da2b0899', null, null, null, null, null, null, null, null, '248199', null);
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539838fa9308a5', null, '2016-03-21 16:09:44', null, '2c91808553795978015397cb1c6b089b', null, null, null, null, null, null, null, null, '248546', null);
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153984f300c08a6', null, '2016-03-21 16:34:00', null, '2c91808553795978015397c5da2b0899', null, null, null, null, null, null, null, null, '249999', null);
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539854721f08a7', null, '2016-03-21 16:39:44', null, '2c91808553795978015397cb1c6b089b', null, null, null, null, null, null, null, null, '250346', null);
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153986aa7a608a8', null, '2016-03-21 17:04:00', null, '2c91808553795978015397c5da2b0899', null, null, null, null, null, null, null, null, '251799', null);
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153986fe9aa08a9', null, '2016-03-21 17:09:44', null, '2c91808553795978015397cb1c6b089b', null, null, null, null, null, null, null, null, '252146', null);
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398861f3708aa', null, '2016-03-21 17:34:00', null, '2c91808553795978015397c5da2b0899', null, null, null, null, null, null, null, null, '253599', null);
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398891a7708ac', '3', '2016-03-21 17:37:15', '9152', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '183', '726674494', '253794', '378285312112');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398891e6e08ad', '4', '2016-03-21 17:37:16', '9307', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '170', '726678112', '253795', '378286696948');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539889224d08ae', '4', '2016-03-21 17:37:17', '9418', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '148', '726681399', '253796', '378288053334');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539889264708af', '4', '2016-03-21 17:37:18', '8865', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '149', '726685734', '253797', '378289921911');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153988a4d3108b1', '0', '2016-03-21 17:38:34', '34110', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '972', '168070857', '253876', '75967929');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153988a512a08b2', '5', '2016-03-21 17:38:35', '34539', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '731', '168071753', '253877', '75997520');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153988a55b808b3', '4', '2016-03-21 17:38:36', '34046', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '523', '168072703', '253878', '76027165');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153988a5a3308b4', '4', '2016-03-21 17:38:37', '34683', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '448', '168073442', '253879', '76056756');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153988a5e5408b5', '4', '2016-03-21 17:38:38', '35081', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '452', '168074258', '253880', '76086347');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153988b612b08b6', '0', '2016-03-21 17:39:45', '14966', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '255', '168131780', '253946', '76151511');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398a196ca08b7', '0', '2016-03-21 18:04:00', '8681', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '221', '745660884', '255399', '388812880510');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398a6d8b408b8', '0', '2016-03-21 18:09:45', '22956', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '257', '171041890', '255746', '76156613');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398bd0e5408b9', '0', '2016-03-21 18:34:00', '6402', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '150', '772698031', '257199', '400449649936');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398c2503c08ba', '0', '2016-03-21 18:39:45', '7570', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '186', '173326448', '257547', '76161139');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398d885e608bb', '0', '2016-03-21 19:04:00', '5676', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '142', '783135100', '258999', '405077008916');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398ddc7c608bc', '0', '2016-03-21 19:09:45', '7827', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '219', '174413131', '259347', '76165665');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398f3fd7a08bd', '0', '2016-03-21 19:34:00', '6976', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '184', '800527064', '260799', '417281289901');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015398f93f5208be', '0', '2016-03-21 19:39:45', '7611', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '232', '175339854', '261147', '76170191');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153990f750c08bf', '0', '2016-03-21 20:04:00', '6122', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '208', '807521790', '262599', '419134063068');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539914b6d808c0', '0', '2016-03-21 20:09:45', '6719', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '189', '176268139', '262947', '76174717');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153992aec9d08c1', '0', '2016-03-21 20:34:00', '6612', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '212', '814684014', '264399', '421136014729');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015399302e6108c2', '0', '2016-03-21 20:39:45', '6727', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '187', '177265882', '264747', '76179243');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539946643208c3', '0', '2016-03-21 21:04:01', '6237', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '164', '821772573', '266199', '423011152713');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153994ba61a08c4', '0', '2016-03-21 21:09:45', '5490', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '127', '178272029', '266547', '76183769');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539961dbc608c5', '0', '2016-03-21 21:34:01', '6858', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '218', '828644255', '268000', '424797243449');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015399671ddf08c6', '0', '2016-03-21 21:39:45', '5840', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '127', '179188598', '268347', '76188295');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153997d535308c7', '0', '2016-03-21 22:04:01', '5212', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '172', '835624776', '269800', '426561912107');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539982956708c8', '0', '2016-03-21 22:09:45', '6051', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '129', '180107000', '270147', '76192821');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539998cae408c9', '0', '2016-03-21 22:34:01', '4093', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '120', '842237449', '271600', '428251575754');
INSERT INTO `dmp_device_performance` VALUES ('2c918085537959780153999e0cf008ca', '0', '2016-03-21 22:39:45', '7417', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '238', '180999695', '271947', '76197347');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015399b4427308cb', '0', '2016-03-21 23:04:01', '6383', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '128', '849496051', '273400', '430267931335');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015399b9847b08cc', '0', '2016-03-21 23:09:45', '7933', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '243', '181873753', '273747', '76201873');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015399cfba0408cd', '0', '2016-03-21 23:34:01', '4795', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '84', '856305769', '275200', '432026922839');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015399d4fc0608ce', '0', '2016-03-21 23:39:46', '7312', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '208', '182775987', '275547', '76206399');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015399eb319408cf', '0', '2016-03-22 00:04:01', '6489', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '192', '863196050', '277000', '433786062842');
INSERT INTO `dmp_device_performance` VALUES ('2c91808553795978015399f0738d08d0', '0', '2016-03-22 00:09:46', '7662', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '256', '183676437', '277347', '76210925');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a06a92608d1', '0', '2016-03-22 00:34:01', '6150', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '166', '870017743', '278800', '435473955278');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a0beb1308d2', '0', '2016-03-22 00:39:46', '7065', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '212', '184669064', '279148', '76215451');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a2220ba08d3', '0', '2016-03-22 01:04:01', '6139', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '170', '876797181', '280600', '437196333681');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a27629c08d4', '0', '2016-03-22 01:09:46', '6734', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '220', '185543507', '280948', '76219977');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a3d984008d5', '0', '2016-03-22 01:34:01', '6554', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '175', '883665737', '282400', '438925048587');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a42da2508d6', '0', '2016-03-22 01:39:46', '6468', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '215', '186431902', '282748', '76224503');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a590fd108d7', '0', '2016-03-22 02:04:01', '6720', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '197', '890851914', '284200', '440802030441');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a5e51ae08d8', '0', '2016-03-22 02:09:46', '6568', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '219', '187343441', '284548', '76229029');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a74875e08d9', '0', '2016-03-22 02:34:01', '7240', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '235', '898240267', '286000', '442787970824');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a79c93908da', '0', '2016-03-22 02:39:46', '5895', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '168', '188235226', '286348', '76233555');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a8ffef208db', '0', '2016-03-22 03:04:02', '6689', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '211', '905190427', '287800', '444387767578');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539a9540bf08dc', '0', '2016-03-22 03:09:46', '5677', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '178', '189109912', '288148', '76238081');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539aab768108dd', '0', '2016-03-22 03:34:02', '7122', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '208', '912025593', '289600', '446152545193');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ab0b84608de', '0', '2016-03-22 03:39:46', '5300', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '154', '190014475', '289948', '76242607');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ac6ee1308df', '0', '2016-03-22 04:04:02', '6113', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '201', '918912915', '291400', '447873182436');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539acc2fce08e0', '0', '2016-03-22 04:09:46', '4539', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '119', '190932852', '291748', '76247133');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ae265a708e1', '0', '2016-03-22 04:34:02', '6137', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '204', '925734995', '293201', '449646774170');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ae7a75908e2', '0', '2016-03-22 04:39:46', '4998', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '72', '191949116', '293548', '76251659');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539afddd3b08e3', '0', '2016-03-22 05:04:02', '5763', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '176', '932585802', '295001', '451408925573');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539b031ee008e4', '0', '2016-03-22 05:09:46', '4613', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '66', '192838458', '295348', '76256185');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539b1954cc08e5', '0', '2016-03-22 05:34:02', '5783', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '170', '939092218', '296801', '453036072953');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539b1e966208e6', '0', '2016-03-22 05:39:46', '5947', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '115', '193726236', '297148', '76260711');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539b34cc5c08e7', '0', '2016-03-22 06:04:02', '4115', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '113', '945717076', '298601', '454678332232');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539b3a0deb08e8', '0', '2016-03-22 06:09:46', '5971', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '173', '194637099', '298948', '76265237');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539b5043ea08e9', '0', '2016-03-22 06:34:02', '3825', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '119', '952302921', '300401', '456277918165');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539b55857408ea', '0', '2016-03-22 06:39:47', '7168', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '187', '195524611', '300748', '76269763');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539b6bbb7c08eb', '0', '2016-03-22 07:04:02', '4370', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '129', '959481357', '302201', '457957126318');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539b70fcfc08ec', '0', '2016-03-22 07:09:47', '6836', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '215', '196397318', '302548', '76274289');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539b87330708ed', '0', '2016-03-22 07:34:02', '4752', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '122', '966427418', '304001', '459620409147');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539b8c748308ee', '0', '2016-03-22 07:39:47', '7534', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '233', '197283226', '304348', '76278815');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ba2aac708ef', '0', '2016-03-22 08:04:02', '5228', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '126', '973321421', '305801', '461327899394');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ba7ec1e08f0', '0', '2016-03-22 08:09:47', '7080', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '198', '198271778', '306149', '76283341');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539bbe22c008f1', '0', '2016-03-22 08:34:03', '5373', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '163', '980385701', '307601', '463141267482');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539bc363ad08f2', '0', '2016-03-22 08:39:47', '8362', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '249', '200033668', '307949', '76287867');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539bd99a5208f3', '0', '2016-03-22 09:04:03', '9236', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '269', '1008176952', '309401', '475815254502');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539bdedb3808f4', '0', '2016-03-22 09:09:47', '9379', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '239', '206734126', '309749', '76292393');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539bf511f408f5', '0', '2016-03-22 09:34:03', '31711', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '332', '1045289264', '311201', '490884145851');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539bfa52c208f6', '0', '2016-03-22 09:39:47', '11002', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '175', '214196932', '311549', '76296919');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c10899608f7', '0', '2016-03-22 10:04:03', '14087', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '346', '1097307914', '313002', '514341651839');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c15ca4d08f8', '0', '2016-03-22 10:09:47', '41595', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '1101', '224866989', '313349', '76301445');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c2c02d608f9', '0', '2016-03-22 10:34:03', '11715', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '267', '1130058556', '314802', '528850753655');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c3141d508fa', '0', '2016-03-22 10:39:47', '15876', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '334', '230588042', '315149', '76305971');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c477b0308fb', '0', '2016-03-22 11:04:04', '9868', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '162', '1168493810', '316602', '551872136266');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c4cb96008fc', '0', '2016-03-22 11:09:47', '9871', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '184', '233403003', '316949', '76310497');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c62f2ab08fd', '0', '2016-03-22 11:34:04', '10671', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '250', '1196326743', '318402', '568913608677');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c68310508fe', '0', '2016-03-22 11:39:47', '13540', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '201', '237323114', '318749', '76315023');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c7e6a9f08ff', '0', '2016-03-22 12:04:04', '9273', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '161', '1211953528', '320202', '578293133170');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c83a8910900', '0', '2016-03-22 12:09:47', '9306', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '189', '238417859', '320549', '76319549');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c99e22e0901', '0', '2016-03-22 12:34:04', '8926', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '297', '1223705974', '322003', '584991128902');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539c9f20180902', '0', '2016-03-22 12:39:47', '10127', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '187', '239601275', '322349', '76324075');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539cb55a7e0903', '0', '2016-03-22 13:04:04', '7452', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '194', '1238759185', '323803', '592702231424');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539cba97a10904', '0', '2016-03-22 13:09:48', '7895', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '162', '241790432', '324149', '76328601');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539cd0d23f0905', '0', '2016-03-22 13:34:04', '8276', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '143', '1248819517', '325603', '597747777337');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539cd60f250906', '0', '2016-03-22 13:39:48', '10155', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '182', '243361153', '325949', '76333127');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539cec49f30907', '0', '2016-03-22 14:04:04', '9673', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '230', '1267184401', '327403', '609338494410');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539cf186ad0908', '0', '2016-03-22 14:09:48', '9400', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '185', '245735252', '327749', '76337653');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d07c1870909', '0', '2016-03-22 14:34:05', '9069', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '176', '1305318942', '329203', '637440027406');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d0cfe33090a', '0', '2016-03-22 14:39:48', '9570', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '167', '248161980', '329550', '76342179');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d23391f090b', '0', '2016-03-22 15:04:05', '8745', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '155', '1330693774', '331003', '651997689952');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d2875be090c', '0', '2016-03-22 15:09:48', '9484', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '169', '251375815', '331350', '76346705');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d3eb0b1090d', '0', '2016-03-22 15:34:05', '9249', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '159', '1359046981', '332803', '669631290354');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d43ed44090e', '0', '2016-03-22 15:39:48', '10851', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '251', '253460178', '333150', '76351231');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d498659090f', '0', '2016-03-22 15:45:55', '16', '2c918085537959780153795ab3b30000', null, null, null, null, null, '6', '1', '10682520', '518438', '1069155269');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d5a283f0910', '0', '2016-03-22 16:04:05', '9944', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '203', '1393522345', '334603', '695675774029');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d5f64c80911', '0', '2016-03-22 16:09:48', '10582', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '228', '254969275', '334950', '76355757');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d759fde0912', '0', '2016-03-22 16:34:05', '9134', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '174', '1414566162', '336403', '710016632880');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d7adc520913', '0', '2016-03-22 16:39:48', '11204', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '272', '257050072', '336750', '76360283');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d91176e0914', '0', '2016-03-22 17:04:05', '16426', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '192', '1436939915', '338204', '723530156025');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539d9653d80915', '0', '2016-03-22 17:09:48', '9114', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '245', '258616836', '338550', '76364809');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539dac8f010916', '0', '2016-03-22 17:34:05', '8019', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '169', '1467142773', '340004', '743527407170');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539db1cb650917', '0', '2016-03-22 17:39:48', '8359', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '137', '260958572', '340350', '76369335');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539e1b57210918', '0', '2016-03-22 19:35:05', '3919', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '83', '1508800542', '347264', '768738252239');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539e20935e0919', '0', '2016-03-22 19:40:48', '3747', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '69', '266418830', '347610', '76377275');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539e36ceb7091a', '0', '2016-03-22 20:05:05', '2878', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '65', '1514101517', '349064', '772273601945');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539e3c0ae4091b', '0', '2016-03-22 20:10:48', '3491', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '69', '267261152', '349410', '76381801');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539e52464c091c', '0', '2016-03-22 20:35:05', '3348', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '97', '1517571145', '350864', '773890911059');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539e57826b091d', '0', '2016-03-22 20:40:48', '4005', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '88', '268803937', '351210', '76386327');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539e6dbdde091e', '0', '2016-03-22 21:05:06', '2610', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '66', '1521180567', '352664', '775471482450');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539e72f9f3091f', '0', '2016-03-22 21:10:49', '3076', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '58', '269639386', '353010', '76390853');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539e8935740920', '0', '2016-03-22 21:35:06', '3201', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '26', '67', '1524055136', '354464', '776653053132');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539e8e717e0921', '0', '2016-03-22 21:40:49', '4695', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '73', '270481046', '354810', '76395379');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ea9e9150922', '0', '2016-03-22 22:10:49', '3503', '2c91808553795978015397cb1c6b089b', null, null, null, null, null, '26', '63', '271271483', '356610', '76399905');
INSERT INTO `dmp_device_performance` VALUES ('2c9180855379597801539ec024590923', '0', '2016-03-22 22:35:06', '2618', '2c91808553795978015397c5da2b0899', null, null, null, null, null, '25', '70', '1530693858', '358064', '779457704709');
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

-- ----------------------------
-- Table structure for `dmp_dict_area`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_dict_area`;
CREATE TABLE `dmp_dict_area` (
  `uuid` varchar(30) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_dict_area
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_dict_asset_manufacturer`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_dict_asset_manufacturer`;
CREATE TABLE `dmp_dict_asset_manufacturer` (
  `uuid` varchar(30) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_dict_asset_manufacturer
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_dict_asset_proct_name_release`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_dict_asset_proct_name_release`;
CREATE TABLE `dmp_dict_asset_proct_name_release` (
  `uuid` varchar(30) NOT NULL,
  `manufacture` varchar(255) DEFAULT NULL,
  `productform` varchar(255) DEFAULT NULL,
  `productmodel` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `productpn` varchar(255) DEFAULT NULL,
  `producttype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_dict_asset_proct_name_release
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_dict_asset_producttype`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_dict_asset_producttype`;
CREATE TABLE `dmp_dict_asset_producttype` (
  `uuid` varchar(30) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_dict_asset_producttype
-- ----------------------------
INSERT INTO `dmp_dict_asset_producttype` VALUES ('AntiDDoS', '防DDos攻击、抗拒绝服务', '防DDos攻击');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('AntiTamper', '防篡改', '防篡改');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('AppOptimized', '应用交付，网络加速', '应用优化');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('AppServer', '应用服务器', '应用服务器');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Audit', '审计，日志审计，网络审计，NetFlow分析', '审计');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('BigData', '大数据分析', '大数据分析');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('BWM', '带宽管理，上网行为管理，负载均衡', '网络流量管理');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('DataSec', '数据安全，电子签章，加密机', '数据安全');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('DB', '数据库、数据库管理、数据库加固', '数据库');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('DbFirewall', '数据库防火墙', '数据库防火墙');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Device', '通用设备', '通用设备');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('EPS', '终端安全管理，移动存储介质管理', '终端安全管理');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('FilterGate', '过滤网关，防病毒，防垃圾邮件，网关', '过滤网关');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Firewall', '防火墙、下一代防火墙', '防火墙');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('GAP', '网闸', '网闸');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Honeypot', '蜜罐', '蜜罐');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('IDM', '堡垒机、CA认证、访问控制', '身份管理');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('IDS', '入侵检测系统', '入侵检测系统');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('IM', '即时通讯', '即时通讯');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('IPS', '入侵保护系统', '入侵防御系统');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Mail', '邮件服务器、安全邮件', '邮件服务器');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('NM', '网络管理，网管软件', '网络管理');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Node', '天融信安全系统内部模块', '天融信安全系统内部模块');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('OA', '办公自动化', '办公自动化');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('OM', 'IT服务管理、运维管理', 'IT服务管理');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Other', '其它信息', '其它信息');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('PCServer', 'PC服务器', 'PC服务器');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('POA', '舆情分析', '舆情分析');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Proxy', '代理服务器', '代理服务器');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Router', '路由器、路由管理', '路由器');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('SMP', '安全管理，信息管理，企业安全管理，策略管理', '安全管理');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('SR', '安全加固', '安全加固');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('SUS', '补丁服务器', '补丁服务器');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Switch', '交换机', '交换机');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('TVS', '虚拟化管理', '虚拟化管理');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('UTM', '统一威胁管理', '统一威胁管理');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Virus', '病毒、木马查杀', '病毒、木马查杀');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('VPN', '虚拟专用网', '虚拟专用网');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('VulnScaner', '脆弱性扫描、威胁管理、web漏洞扫描', '脆弱性扫描');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('WAF', 'Web防火墙', 'Web防火墙');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('Web', 'Web服务器', 'Web服务器');
INSERT INTO `dmp_dict_asset_producttype` VALUES ('WireLess', '无线AP、无线AC，无线管理产品', '无线产品');

-- ----------------------------
-- Table structure for `dmp_dict_asset_type`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_dict_asset_type`;
CREATE TABLE `dmp_dict_asset_type` (
  `uuid` varchar(30) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_dict_asset_type
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_dict_asset_update_history`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_dict_asset_update_history`;
CREATE TABLE `dmp_dict_asset_update_history` (
  `uuid` varchar(30) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `assetId` varchar(255) DEFAULT NULL,
  `custom2` varchar(255) DEFAULT NULL,
  `detail` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_dict_asset_update_history
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_dict_industry`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_dict_industry`;
CREATE TABLE `dmp_dict_industry` (
  `uuid` varchar(30) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_dict_industry
-- ----------------------------
INSERT INTO `dmp_dict_industry` VALUES ('1100', '政府', null);
INSERT INTO `dmp_dict_industry` VALUES ('1101', '公安部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1102', '检察院', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1103', '法院', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1104', '国家安全部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1105', '司法部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1106', '人力资源和社会保障部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1107', '水利部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1108', '发改委', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1109', '人大', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1110', '政协', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1111', '外交部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1112', '科技部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1113', '文化部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1114', '监察部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1115', '国家审计署', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1116', '国家民委', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1117', '民政部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1118', '国土资源部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1119', '建设部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1120', '农业部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1121', '商务部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1122', '工业与信息化部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1123', '国资委', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1124', '海关总署', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1125', '国家税务总局-国税', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1126', '国家税务总局-地税', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1127', '国家工商行政管理总局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1128', '国家质量监督检验检疫总局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1129', '国家环境保护部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1130', '国家广播电影电视总局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1131', '国家新闻出版总署', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1132', '国家知识产权局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1133', '国家体育总局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1134', '国家统计局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1135', '国家林业局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1136', '国家安全生产监督管理总局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1137', '国家旅游局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1138', '国家宗教事务局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1139', '国务院参事室', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1140', '国务院机关事务管理局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1141', '国家地震局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1142', '国家气象局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1143', '国家信访局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1144', '国家粮食局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1145', '国家外国专家局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1146', '国家海洋局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1147', '国家测绘局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1148', '国家文物局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1149', '国家档案局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1150', '国家保密局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1151', '中央纪律检查委员会', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1152', '中央军事委员会', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1153', '中央办公厅', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1154', '中央组织部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1155', '中央宣传部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1156', '中央对外联络部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1157', '中央统战部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1158', '中央警卫局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1159', '中共中央编译局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1160', '国务院港澳办', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1161', '国务院新闻办', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1162', '地方政府', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1163', '其他政府机构', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1164', '中央党校', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1165', '政法委', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1166', '财政部', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1167', '总工会', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1168', '政府办公厅', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1169', '党委办公厅', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1170', '中央政法委', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1171', '中央政策研究室', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1172', '其他中直机关', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1173', '国家预防腐败局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1174', '国家公务员局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1175', '国家密码管理局', '1100');
INSERT INTO `dmp_dict_industry` VALUES ('1200', '金融', null);
INSERT INTO `dmp_dict_industry` VALUES ('1201', '中国邮政储蓄银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1202', '中国民生银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1203', '第三方支付机构', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1204', '保监会', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1205', '中国人寿保险', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1206', '中国平安保险', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1207', '中国人保', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1208', '太平洋保险', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1209', '阳光保险', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1210', '新华保险', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1211', '泰康人寿', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1212', '其他保险公司', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1213', '其他金融机构', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1214', '中国人民银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1215', '各地农信、城市信用社系统', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1216', '中国银行业监督管理委员会', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1217', '国家外汇管理局', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1218', '中国建设银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1219', '中国工商银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1220', '中国农业银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1221', '中国银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1222', '中国进出口银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1223', '中国光大银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1224', '华夏银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1225', '国家开发银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1226', '中国农业发展银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1227', '中信实业银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1228', '交通银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1229', '深圳发展银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1230', '广东发展银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1231', '招商银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1232', '上海浦东发展银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1233', '福建兴业银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1234', '证券', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1235', '基金公司', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1236', '中国银联', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1237', '期货', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1238', '其他银行', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1239', '资产管理公司、投资公司、信托公司等', '1200');
INSERT INTO `dmp_dict_industry` VALUES ('1300', '军队', null);
INSERT INTO `dmp_dict_industry` VALUES ('1301', '总参谋部', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1302', '总后勤部', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1303', '总装备部', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1304', '总政治部', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1305', '武警', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1306', '空军', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1307', '海军', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1308', '二炮', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1309', '沈阳军区', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1310', '成都军区', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1311', '济南军区', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1312', '兰州军区', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1313', '北京军区', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1314', '广州军区', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1315', '南京军区', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1316', '国防部', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1317', '军事院校', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1318', '人防', '1300');
INSERT INTO `dmp_dict_industry` VALUES ('1400', '电信', null);
INSERT INTO `dmp_dict_industry` VALUES ('1401', '中国电信', '1400');
INSERT INTO `dmp_dict_industry` VALUES ('1402', '中国网通', '1400');
INSERT INTO `dmp_dict_industry` VALUES ('1403', '中国移动', '1400');
INSERT INTO `dmp_dict_industry` VALUES ('1404', '中国联通', '1400');
INSERT INTO `dmp_dict_industry` VALUES ('1405', '中国铁通', '1400');
INSERT INTO `dmp_dict_industry` VALUES ('1406', '中国卫通', '1400');
INSERT INTO `dmp_dict_industry` VALUES ('1407', '其它ISP、ICP等', '1400');
INSERT INTO `dmp_dict_industry` VALUES ('1500', '能源', null);
INSERT INTO `dmp_dict_industry` VALUES ('1501', '国家电力监管委员会 ', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1502', '核能、核电', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1503', '煤炭', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1504', '中国石油化工集团公司', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1505', '中国石油天然气集团公司', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1506', '中国海洋石油总公司', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1507', '中国航空油料集团公司', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1508', '国家电网', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1509', '南方电网', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1510', '中国华能集团', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1511', '大唐集团', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1512', '华电集团', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1513', '国电集团', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1514', '中国电力投资集团', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1515', '其他发电企业', '1500');
INSERT INTO `dmp_dict_industry` VALUES ('1600', '卫生', null);
INSERT INTO `dmp_dict_industry` VALUES ('1601', '国家卫生与计划生育管理委员会', '1600');
INSERT INTO `dmp_dict_industry` VALUES ('1602', '国家中医药管理局', '1600');
INSERT INTO `dmp_dict_industry` VALUES ('1603', '国家食品药品监督管理局', '1600');
INSERT INTO `dmp_dict_industry` VALUES ('1604', 'CDC（疾病预防控制系统）', '1600');
INSERT INTO `dmp_dict_industry` VALUES ('1605', '医院', '1600');
INSERT INTO `dmp_dict_industry` VALUES ('1700', '交通', null);
INSERT INTO `dmp_dict_industry` VALUES ('1701', '国家铁路局', '1700');
INSERT INTO `dmp_dict_industry` VALUES ('1702', '中国民用航空总局', '1700');
INSERT INTO `dmp_dict_industry` VALUES ('1703', '交通部', '1700');
INSERT INTO `dmp_dict_industry` VALUES ('1704', '公路（含高速）', '1700');
INSERT INTO `dmp_dict_industry` VALUES ('1705', '水运', '1700');
INSERT INTO `dmp_dict_industry` VALUES ('1706', '管道及其它', '1700');
INSERT INTO `dmp_dict_industry` VALUES ('1707', '中国铁路总公司', '1700');
INSERT INTO `dmp_dict_industry` VALUES ('1800', '教育', null);
INSERT INTO `dmp_dict_industry` VALUES ('1801', '职业教育及培训机构', '1800');
INSERT INTO `dmp_dict_industry` VALUES ('1802', '教育部', '1800');
INSERT INTO `dmp_dict_industry` VALUES ('1803', '高等教育', '1800');
INSERT INTO `dmp_dict_industry` VALUES ('1804', '初等、中等教育', '1800');
INSERT INTO `dmp_dict_industry` VALUES ('1805', '国家行政学院', '1800');
INSERT INTO `dmp_dict_industry` VALUES ('1806', '图书馆、档案馆等', '1800');
INSERT INTO `dmp_dict_industry` VALUES ('1900', '科研', null);
INSERT INTO `dmp_dict_industry` VALUES ('1901', '各行业研究所、研究院', '1900');
INSERT INTO `dmp_dict_industry` VALUES ('1902', '中国科学院', '1900');
INSERT INTO `dmp_dict_industry` VALUES ('1903', '中国社会科学院', '1900');
INSERT INTO `dmp_dict_industry` VALUES ('1904', '中国工程院', '1900');
INSERT INTO `dmp_dict_industry` VALUES ('1905', '国务院发展研究中心', '1900');
INSERT INTO `dmp_dict_industry` VALUES ('1906', '国家自然科学基金管理委员会', '1900');
INSERT INTO `dmp_dict_industry` VALUES ('2000', '邮政', null);
INSERT INTO `dmp_dict_industry` VALUES ('2001', '国家邮政局', '2000');
INSERT INTO `dmp_dict_industry` VALUES ('2002', '中国邮政集团', '2000');
INSERT INTO `dmp_dict_industry` VALUES ('2100', '烟草', null);
INSERT INTO `dmp_dict_industry` VALUES ('2101', '国家烟草专卖局', '2100');
INSERT INTO `dmp_dict_industry` VALUES ('2102', '烟草商业企业', '2100');
INSERT INTO `dmp_dict_industry` VALUES ('2103', '烟草工业企业', '2100');
INSERT INTO `dmp_dict_industry` VALUES ('2200', '流通', null);
INSERT INTO `dmp_dict_industry` VALUES ('2201', '流通', '2200');
INSERT INTO `dmp_dict_industry` VALUES ('2300', '媒体', null);
INSERT INTO `dmp_dict_industry` VALUES ('2301', '新华社', '2300');
INSERT INTO `dmp_dict_industry` VALUES ('2302', '人民日报', '2300');
INSERT INTO `dmp_dict_industry` VALUES ('2303', '电视台', '2300');
INSERT INTO `dmp_dict_industry` VALUES ('2304', '广播电台', '2300');
INSERT INTO `dmp_dict_industry` VALUES ('2305', '平面媒体及广告公司', '2300');
INSERT INTO `dmp_dict_industry` VALUES ('2400', '建筑', null);
INSERT INTO `dmp_dict_industry` VALUES ('2401', '建筑', '2400');
INSERT INTO `dmp_dict_industry` VALUES ('2500', '其它', null);
INSERT INTO `dmp_dict_industry` VALUES ('2501', '其它企业或行业', '2500');
INSERT INTO `dmp_dict_industry` VALUES ('2600', '军工', null);
INSERT INTO `dmp_dict_industry` VALUES ('2601', '国家航天局', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2602', '国家原子能机构', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2603', '航天科工集团', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2604', '中国兵器装备集团', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2605', '中国核建设集团', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2606', '中国船舶重工集团', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2607', '中国电子信息产业集团', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2608', '国防科工局', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2609', '航天科技集团', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2610', '中航工业集团', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2611', '中国兵器工业集团', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2612', '中国船舶工业集团', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2613', '中国核工业集团', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2614', '中国电子科技集团', '2600');
INSERT INTO `dmp_dict_industry` VALUES ('2700', '企业集团', null);
INSERT INTO `dmp_dict_industry` VALUES ('2701', '国资委下属企业集团', '2700');
INSERT INTO `dmp_dict_industry` VALUES ('2702', '地方国资委下属企业集团', '2700');
INSERT INTO `dmp_dict_industry` VALUES ('2703', '互联网企业', '2700');
INSERT INTO `dmp_dict_industry` VALUES ('2704', '民营制造业', '2700');
INSERT INTO `dmp_dict_industry` VALUES ('2705', '民营服务业', '2700');
INSERT INTO `dmp_dict_industry` VALUES ('2706', '其他民营企业', '2700');

-- ----------------------------
-- Table structure for `dmp_dict_product_version`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_dict_product_version`;
CREATE TABLE `dmp_dict_product_version` (
  `uuid` varchar(30) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_dict_product_version
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_dict_version`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_dict_version`;
CREATE TABLE `dmp_dict_version` (
  `uuid` varchar(30) NOT NULL,
  `manufacture` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `producttype` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_dict_version
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_nav_item`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_nav_item`;
CREATE TABLE `dmp_nav_item` (
  `uuid` varchar(30) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `RESOURCE_TYPE` int(11) DEFAULT NULL,
  `ICON` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) NOT NULL,
  `LEVEL_` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `NAV_ITEM_TYPE` int(11) NOT NULL,
  `ORDER_NUM` int(11) DEFAULT NULL,
  `PARENT_ID` varchar(22) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `TARGET` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `VERSION_` float NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_d8scyww7fe1h5ufibliev6rti` (`KEY_`) USING BTREE,
  KEY `FK_7dl60oxcmadi67dddap70gxgd` (`PARENT_ID`) USING BTREE,
  CONSTRAINT `dmp_nav_item_ibfk_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `dmp_nav_item` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_nav_item
-- ----------------------------
INSERT INTO `dmp_nav_item` VALUES ('0', '2015-07-30 10:55:40', '2015-07-30 10:55:40', null, null, 'Root', '0', '系统菜单', '0', '0', null, '1', null, '', '0');
INSERT INTO `dmp_nav_item` VALUES ('1', '2015-08-04 15:19:23', '2015-08-04 15:19:25', null, null, 'Index_h', '1', '首页', '1', '1', '0', '1', null, null, '0');
INSERT INTO `dmp_nav_item` VALUES ('10', '2015-08-04 15:23:31', '2015-08-04 15:23:34', null, null, 'Up_p_h', '1', '补丁升级历史', '1', '10', '7', '1', null, null, '0');
INSERT INTO `dmp_nav_item` VALUES ('11', '2015-08-04 15:23:31', '2015-08-04 15:23:34', null, null, 'Up_m_c', '1', '配置升级', '1', '11', '7', '1', null, null, '0');
INSERT INTO `dmp_nav_item` VALUES ('12', '2015-08-04 15:23:31', '2015-08-04 15:23:34', null, null, 'Up_c_h', '1', '配置升级历史', '1', '12', '7', '1', null, null, '0');
INSERT INTO `dmp_nav_item` VALUES ('3', '2015-08-04 15:21:17', '2015-08-04 15:21:20', null, null, 'Device_m', '1', '设备管理', '1', '3', '0', '1', null, null, '0');
INSERT INTO `dmp_nav_item` VALUES ('4', '2015-08-04 15:27:16', '2015-08-04 15:27:18', null, null, 'Device_m_i', '1', '设备摘要', '1', '4', '3', '1', null, null, '0');
INSERT INTO `dmp_nav_item` VALUES ('5', '2015-08-04 15:21:54', '2015-08-04 15:21:57', null, null, 'Device_m_w', '1', '设备维护', '1', '5', '3', '1', null, null, '0');
INSERT INTO `dmp_nav_item` VALUES ('6', '2015-08-04 15:22:58', '2015-08-04 15:22:59', null, null, 'Device_m_q', '1', '上报信息查询', '1', '6', '3', '1', null, null, '0');
INSERT INTO `dmp_nav_item` VALUES ('7', '2015-08-04 15:23:31', '2015-08-04 15:23:34', null, null, 'Up_m', '1', '升级管理', '1', '7', '0', '1', null, null, '0');
INSERT INTO `dmp_nav_item` VALUES ('8', '2015-08-04 15:23:31', '2015-08-04 15:23:34', null, null, 'Up_m_i', '1', '补丁摘要', '1', '8', '7', '1', null, null, '0');
INSERT INTO `dmp_nav_item` VALUES ('9', '2015-08-04 15:23:31', '2015-08-04 15:23:34', null, null, 'Up_m_p', '1', '补丁升级', '1', '9', '7', '1', null, null, '0');

-- ----------------------------
-- Table structure for `dmp_patchupgrade_history`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_patchupgrade_history`;
CREATE TABLE `dmp_patchupgrade_history` (
  `uuid` varchar(32) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `custumername` varchar(128) DEFAULT NULL,
  `devicetype` varchar(10) DEFAULT NULL,
  `deviceuuid` varchar(80) DEFAULT NULL,
  `deviceversion` varchar(5000) NOT NULL,
  `devname` varchar(128) DEFAULT NULL,
  `devphone` varchar(15) DEFAULT NULL,
  `devrmail` varchar(32) DEFAULT NULL,
  `eth0mac` varchar(128) DEFAULT NULL,
  `firstIndustry` varchar(128) DEFAULT NULL,
  `groupid` varchar(32) DEFAULT NULL,
  `hastatus` varchar(10) NOT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `matchversion` varchar(128) DEFAULT NULL,
  `patchdesc` varchar(255) DEFAULT NULL,
  `patchname` varchar(128) DEFAULT NULL,
  `patchtype` varchar(128) DEFAULT NULL,
  `patchurl` varchar(255) DEFAULT NULL,
  `patchuuid` varchar(80) DEFAULT NULL,
  `patchversion` varchar(5000) DEFAULT NULL,
  `physicallocation` varchar(128) DEFAULT NULL,
  `product` varchar(128) DEFAULT NULL,
  `reportfrequency` int(11) DEFAULT NULL,
  `reporttime` varchar(128) DEFAULT NULL,
  `secondeIndustry` varchar(128) DEFAULT NULL,
  `serialnumber` varchar(128) NOT NULL,
  `stepstate` varchar(1) DEFAULT NULL,
  `stermofvalidity` varchar(128) DEFAULT NULL,
  `systemtype` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `upgradedesc` varchar(255) DEFAULT NULL,
  `upgradeversion` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_patchupgrade_history
-- ----------------------------
INSERT INTO `dmp_patchupgrade_history` VALUES ('2iWwiRBg6X7uy7b1HeQRbE', '2016-01-29 15:43:28', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '3333', 'zzzzzfff4', '防火墙', 'E:\\\\upload\\patch20160129154301.txt', 'LLaw46R7baYem3mDxQHmiY', 'zzzzzzzzzzzzzzzzzz2', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-29 15:43:28', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('3bmWdMv6wF3WmSsbvxoHkX', '2016-03-17 10:40:02', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '', '1111', '防火墙', '/nfs-data/dmp/data/patch20160317103948.txt', '2gDxjTWrRf6MMApD9dnEPq', '111', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-17 10:40:06', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('3ouxrFN2F5EB55vniexeQe', '2016-03-16 11:21:33', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '1111', '1111111111', '防火墙', '/nfs-data/dmp/data/patch20160316112107.txt', '2Ty8qz3vZmh2XN1R6p7uqM', 'tos_3.3.017.048.1_D8655_8_haveroot', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-16 11:44:43', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('3YBin8r5YUrMBat9sZVt7H', '2016-03-15 20:08:22', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '1111', '1111111111', '防火墙', '/nfs-data/dmp/data/patch20160315200101.txt', '2Ty8qz3vZmh2XN1R6p7uqM', 'tos_3.3.017.048.1_D8655_8_haveroot', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-16 11:44:43', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('5J2bz2bFPdu21T6zPqm3Tf', '2016-01-29 15:45:00', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '3333', 'zzzzzfff4', '防火墙', 'E:\\\\upload\\patch20160129154356.txt', 'LLaw46R7baYem3mDxQHmiY', 'zzzzzzzzzzzzzzzzzz2', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-29 15:45:01', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('5kpEB2phBeB952o7jhmbLF', '2016-03-17 11:04:56', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '', '补丁', '防火墙', '/nfs-data/dmp/data/patch20160317110449.txt', 'ZDFkR6RJ9UUgiQZdTqyXz', '111', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-17 11:05:06', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('6SrunMu84491cEkSaqFJom', '2016-01-21 16:09:51', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '', 'zzz', '防火墙', 'E:\\\\upload\\patch20160121160947.txt', '8uxNnbrwZEJe4gh6uQ2dTt', 'tos_3.3.017.048.1_D8655_3_haveroot5', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-21 16:09:51', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('6weCPtWSZtDCp7stVUmEcY', '2016-01-23 16:13:54', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '333', 'zzzzzzzzz', '防火墙', 'E:\\\\upload\\patch20160123161348.txt', 'LLaw46R7baYem3mDxQHmiY', 'zzzzzzzzzzzzzzzzzz', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-23 16:13:54', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('7bSBzCFgsmXop3Y7yXP9Zd', '2016-03-17 10:32:27', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '', '补丁', '防火墙', '/nfs-data/dmp/data/patch20160317103220.txt', 'GSbswXH9yeaWt5anvAFEAj', '3.3.017.048.1_D8655_7_haveroot_upt', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-17 10:38:18', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('95F8KGeCyhvfXwJPp1qbiF', '2016-03-17 11:07:45', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '', '补丁111', '防火墙', '/nfs-data/dmp/data/patch20160317110738.txt', 'H8xiTaRTEnVYYzrpdPviSw', '111', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-17 11:43:36', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('9gqCMGWmSTpezK7vJ51C7G', '2016-03-17 10:41:35', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '', '1112', '防火墙', '/nfs-data/dmp/data/patch20160317104128.txt', 'H5amhDGNUGK87K6AjnT7px', '1112', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-17 10:41:40', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('BwawehmdARUpxpF3EUUmbw', '2016-01-23 14:49:10', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '', '', '防火墙', 'E:\\\\upload\\patch20160123144524.txt', 'VatJd3AHkiQgrbjZXtCEdV', '', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-23 14:49:10', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('Cg3FQXhGeiF73FpqLtaJmt', '2016-03-16 11:27:35', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '1111', '1111111111', '防火墙', '/nfs-data/dmp/data/patch20160316112725.txt', '2Ty8qz3vZmh2XN1R6p7uqM', 'tos_3.3.017.048.1_D8655_8_haveroot', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-16 11:44:43', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('EXZZeF5do4RntC8DMykypD', '2016-03-17 11:08:30', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '', '补丁111', '防火墙', '/nfs-data/dmp/data/patch20160317110823.txt', 'H8xiTaRTEnVYYzrpdPviSw', '111', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-17 11:43:36', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('FdCpEHvqn5AP1KP2KjjqCT', '2016-03-17 10:38:12', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '', '补丁', '防火墙', '/nfs-data/dmp/data/patch20160317103803.txt', 'GSbswXH9yeaWt5anvAFEAj', '3.3.017.048.1_D8655_7_haveroot_upt', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-17 10:38:18', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('GG51F9beYBkwbRtCeuFtV9', '2016-01-29 15:25:36', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '3333', 'zzzzzfff4', '防火墙', 'E:\\\\upload\\patch20160129151718.txt', 'LLaw46R7baYem3mDxQHmiY', 'zzzzzzzzzzzzzzzzzz2', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-29 15:25:36', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('GGwYbYBnAr6Chducx6ZzkF', '2016-01-29 16:04:21', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '3333', 'zzzzzfff4', '防火墙', 'E:\\\\upload\\patch20160129154356.txt', 'LLaw46R7baYem3mDxQHmiY', 'zzzzzzzzzzzzzzzzzz2', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-29 16:04:21', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('H1pfrnjXaQLZJshG4Cdzsu', '2016-01-23 14:26:31', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '', 'zzzz', '防火墙', 'E:\\\\upload\\patch20160123142611.txt', 'VatJd3AHkiQgrbjZXtCEdV', 'tos_3.3.017.048.1_D8655_3_haveroo5', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-23 14:26:31', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('HYvqNFzKxDTPhdSYQt77ra', '2016-03-17 17:01:01', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', 'zzzzzzzzzzdd', 'zzz', '防火墙', '/nfs-data/dmp/data/patch20160317170051.txt', 'S3AmvWCY5ga8KEKVXnhDia', 'tos_3.3.017.048.1_D8655_8_haveroot', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '6', null, '0', '2016-03-19 15:45:50', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('J73RB4sNHw2HAhcimkt9nM', '2016-03-17 16:54:55', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650BBB', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', 'adsfadsf', '123', '防火墙', '/nfs-data/dmp/data/patch20160317165304.txt', '8LkHggULrono8gz82wjizK', '123', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-03-17 16:54:55', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('J8JgBxZFhMLRHy2so8ep4T', '2016-01-29 15:52:06', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '3333', 'zzzzzfff4', '防火墙', 'E:\\\\upload\\patch20160129154356.txt', 'LLaw46R7baYem3mDxQHmiY', 'zzzzzzzzzzzzzzzzzz2', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-29 15:52:06', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('LeWDggcKNXA3o4bYLetoUr', '2016-03-17 16:59:24', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', 'zzzzzzzzzzdd', 'zzz', '防火墙', '/nfs-data/dmp/data/patch20160317165916.txt', 'S3AmvWCY5ga8KEKVXnhDia', 'tos_3.3.017.048.1_D8655_8_haveroot', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '6', null, '0', '2016-03-19 15:45:50', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('LmKMVC5Yb1LqDyL3Veki4S', '2016-03-17 10:37:10', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '', '补丁', '防火墙', '/nfs-data/dmp/data/patch20160317103653.txt', 'GSbswXH9yeaWt5anvAFEAj', '3.3.017.048.1_D8655_7_haveroot_upt', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-17 10:38:18', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('M57mZzCGqM3SMFkWhqPqeY', '2016-01-29 16:10:00', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '3333', 'zzzzzfff4', '防火墙', 'E:\\\\upload\\patch20160129154356.txt', 'LLaw46R7baYem3mDxQHmiY', 'zzzzzzzzzzzzzzzzzz2', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-29 16:10:01', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('Mjdv56zJUGWhcdQygbucFy', '2016-01-21 16:04:50', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '', 'zzz', '防火墙', 'E:\\\\upload\\patch20160121155807.txt', 'VS1W6JmPQLeXLejqc7o7Ah', 'tos_3.3.017.048.1_D8655_3_haveroot5', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-21 16:04:50', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('MzwKnyMLgneP5ufEyM1UbY', '2016-01-21 16:05:54', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', 'zzzzzzzzzzzzzzzz', 'zzzz', '防火墙', 'E:\\\\upload\\patch20160121160547.txt', '6Dip7Fqg2XhkCQrwCKY4WF', 'tos_3.3.017.048.1_D8655_3_haveroo5', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-21 16:05:54', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('NPuFamSVN1qeUCeZUtX939', '2016-03-17 10:10:36', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '', '补丁', '防火墙', '/nfs-data/dmp/data/patch20160317101029.txt', 'GSbswXH9yeaWt5anvAFEAj', '3.3.017.048.1_D8655_7_haveroot_upt', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-17 10:38:18', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('QiqCzdcpgJBENtpyC1JnJx', '2015-12-29 15:25:08', '马鞍山医疗集团', '防火墙', '4028c839513e01ae01514165c646007c', '3.3.020.043.1_D8049_2636', 'username', '1380010001', 'admin@client.com.cn', '0013320b00e3', '卫生', '安徽省', '0', '158.90.0.1', '3.3.020.043.1_D8049_2636', '', '补丁升级', '防火墙', 'E:\\\\upload\\patch20151229152454.txt', 'DwZg53M5tTGrg1vxn32wTR', '3.3.020.043.1_D8049_2637', null, 'TopVpn6000(TV-41604-VONE)', null, null, '医院', 'Q1505322774', '1', null, '0', '2015-12-29 15:25:08', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('QJv9jwXYCx7n878Ft6tLa6', '2016-03-17 11:04:16', ' 测试客户', '防火墙', '2c918085537959780153795ab3b30000', 'tos_3.3.017.048.1_D8655_7_haveroot', null, null, null, '0010f3328f94', '金融', '北京市', '0', '172.18.23.52', 'tos_3.3.017.048.1_D8655_7_haveroot', '', '补丁', '防火墙', '/nfs-data/dmp/data/patch20160317110409.txt', 'ZDFkR6RJ9UUgiQZdTqyXz', '111', null, 'NGFW4000-UF(TG-51030)', null, null, '中国民生银行', '0010f3328f94', '5', null, '0', '2016-03-17 11:05:06', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('QxeMH1kvcwWpeDnQqSdpPR', '2016-01-29 16:04:56', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '3333', 'zzzzzfff4', '防火墙', 'E:\\\\upload\\patch20160129154356.txt', 'LLaw46R7baYem3mDxQHmiY', 'zzzzzzzzzzzzzzzzzz2', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-29 16:04:56', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('T8TQym36Z5mzrGqMAg2Rrq', '2016-03-17 16:54:54', ' 测试客户', '防火墙', '2c91808a51a6ba810151a6bb23c20000', 'tos_3.3.017.048.1_D8655_3_haveroot', 'username', '1380010001', 'admin@client.com.cn', '0013320b00e3xxx', '金融', '北京市', '0', '192.168.72.60', 'tos_3.3.017.048.1_D8655_3_haveroot', 'adsfadsf', '123', '防火墙', '/nfs-data/dmp/data/patch20160317165304.txt', '8LkHggULrono8gz82wjizK', '123', null, 'TopVpn6000(TV-41604-VONE)', null, null, '中国民生银行', '00133206e650', '1', null, '0', '2016-03-17 16:54:54', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('TCdxyjiZSUHEfJ88K48o42', '2016-03-17 14:40:12', ' 测试客户', '防火墙', '2c91808a51a6ba810151a6bb23c20000', 'tos_3.3.017.048.1_D8655_3_haveroot', 'username', '1380010001', 'admin@client.com.cn', '0013320b00e3xxx', '金融', '北京市', '0', '192.168.72.60', 'tos_3.3.017.048.1_D8655_3_haveroot', '', '123', '防火墙', '/nfs-data/dmp/data/patch20160317143941.txt', '8LkHggULrono8gz82wjizK', '123', null, 'TopVpn6000(TV-41604-VONE)', null, null, '中国民生银行', '00133206e650', '1', null, '0', '2016-03-17 14:40:12', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('UDWEWktF4iDLA2QoUsYXv9', '2016-01-29 16:01:11', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '3333', 'zzzzzfff4', '防火墙', 'E:\\\\upload\\patch20160129154356.txt', 'LLaw46R7baYem3mDxQHmiY', 'zzzzzzzzzzzzzzzzzz2', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-29 16:01:11', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('VV6oJHmgLFWTY2fH8D5QuZ', '2016-01-29 16:16:23', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '3333', 'zzzzzfff4', '防火墙', 'E:\\\\upload\\patch20160129154356.txt', 'LLaw46R7baYem3mDxQHmiY', 'zzzzzzzzzzzzzzzzzz2', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '0', '2016-01-29 16:16:23', null, '1');
INSERT INTO `dmp_patchupgrade_history` VALUES ('WEuKo8jxaX7J3vQt9nhPSX', '2015-12-28 15:58:08', 'zd2', '防火墙', '4028c839513e01ae01513e52d9f90009', 'tos_3.3.017.048.1_D8655_3_haveroot', 'testdev3', '13800138000', 'admin@client.com.cn', '00133206e650', '金融', '', '0', '192.168.72.11', 'tos_3.3.017.048.1_D8655_3_haveroot', '', '添加组件', '防火墙', 'E:\\\\upload\\patch20151228145458.txt', 'YSZ3UH6NPzkvYt7qea51Vr', 'tos_3.3.017.048.1_D8655_3_haveroot', null, 'TopVPN6000(TV-41604-VONE)', null, null, '中国民生银行', '0013320b00e3.001', '1', null, '1', '2015-12-28 15:58:08', null, '1');

-- ----------------------------
-- Table structure for `dmp_patch_info`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_patch_info`;
CREATE TABLE `dmp_patch_info` (
  `uuid` varchar(32) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `deviceNum` int(11) DEFAULT '0',
  `ext0` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` varchar(255) DEFAULT NULL,
  `isNJ` varchar(255) DEFAULT NULL,
  `matchversion` varchar(255) DEFAULT NULL,
  `patchdesc` varchar(500) DEFAULT NULL,
  `patchname` varchar(255) DEFAULT NULL,
  `patchtype` varchar(255) DEFAULT NULL,
  `patchurl` varchar(255) DEFAULT NULL,
  `patchversion` varchar(255) DEFAULT NULL,
  `pathzj` varchar(255) DEFAULT NULL,
  `remindtime` int(11) DEFAULT NULL,
  `systemtype` varchar(255) DEFAULT NULL,
  `unUpDeviceNum` int(11) DEFAULT '0',
  `upDeviceNum` int(11) DEFAULT '0',
  `updDeviceNum` int(11) DEFAULT '0',
  `upgradedesc` varchar(500) DEFAULT NULL,
  `unSuccDeviceNum` int(11) DEFAULT '0',
  `isComp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_patch_info
-- ----------------------------
INSERT INTO `dmp_patch_info` VALUES ('8LkHggULrono8gz82wjizK', '2016-03-17 14:39:41', '2', null, 'web切图.zip', null, '/nfs-data/dmp/data/web切图20160317165304.zip', null, '86400', 'tos_3.3.017.048.1_D8655_3_haveroot', 'adsfadsf', '123', '防火墙', '/nfs-data/dmp/data/patch20160317165304.txt', '123', '', '86400', '0', '2', '2', '0', null, '0', '0');
INSERT INTO `dmp_patch_info` VALUES ('S3AmvWCY5ga8KEKVXnhDia', '2016-03-17 16:59:17', '1', null, 'web切图.zip', null, '/nfs-data/dmp/data/web切图20160317170051.zip', null, '86400', 'tos_3.3.017.048.1_D8655_7_haveroot', 'zzzzzzzzzzdd', 'zzz', '防火墙', '/nfs-data/dmp/data/patch20160317170051.txt', 'tos_3.3.017.048.1_D8655_8_haveroot', '', '86400', '0', '1', '0', '0', null, '1', '0');

-- ----------------------------
-- Table structure for `dmp_role`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_role`;
CREATE TABLE `dmp_role` (
  `uuid` varchar(30) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `VALID_END` datetime DEFAULT NULL,
  `VALID_START` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_acnlc7jc0ys3yjtikq1fiowts` (`NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_role
-- ----------------------------
INSERT INTO `dmp_role` VALUES ('HXQqftw4QG3R4ZxLHBH4ft', '2015-08-04 15:36:42', '2015-08-04 15:36:42', '普通录入人员', 'uuuuddddd', '1', '2059-08-25 13:17:52', '2015-08-08 13:17:50');
INSERT INTO `dmp_role` VALUES ('KQ5hge95dNvShThnf3LisD', '2015-08-08 14:58:25', '2015-08-08 14:58:25', '用户管理员', 'ss', '1', '2059-08-25 00:00:00', '2015-08-08 00:00:00');
INSERT INTO `dmp_role` VALUES ('LmHfCzMWTTMCsr9GywdrW1', '2015-08-04 15:35:21', '2015-08-04 15:35:21', '高级领导', '9999ddd', '1', '2059-08-25 11:06:29', '2015-08-10 11:06:29');
INSERT INTO `dmp_role` VALUES ('role', '2015-07-21 17:44:52', '2015-07-21 17:44:52', '超级管理员', '系统管理员不允许修改', '1', '1899-12-30 01:00:00', '2030-12-03 01:00:00');

-- ----------------------------
-- Table structure for `dmp_setting`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_setting`;
CREATE TABLE `dmp_setting` (
  `uuid` varchar(30) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `KEY_` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALUE_` varchar(255) NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_r21agr7txr1qfthiimp80txb1` (`KEY_`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_task_cache`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_task_cache`;
CREATE TABLE `dmp_task_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备主键唯一标识',
  `uuid` varchar(32) NOT NULL COMMENT '配置、补丁与设备关联表的主键',
  `deviceid` varchar(32) DEFAULT NULL COMMENT '设备表的UUID',
  `patchandconfigid` varchar(32) DEFAULT NULL COMMENT '配置信息、补丁信息表中的UUID',
  `tasktype` varchar(30) DEFAULT NULL COMMENT '任务类型,patch为补丁升级，config为配置下发',
  `bashpath` varchar(128) DEFAULT NULL COMMENT 'bash任务下放文件的存放地址',
  `patchversion` varchar(5000) DEFAULT NULL COMMENT '设备升级后版本号',
  `deviceversion` varchar(5000) DEFAULT NULL COMMENT '设备当前版本号',
  `serialnumber` varchar(80) DEFAULT NULL COMMENT '设备序列号',
  `remindtime` int(11) DEFAULT NULL COMMENT '下发提醒时长以秒为单位（或者设置次数）',
  `firstremindtime` datetime DEFAULT NULL COMMENT '第一次下发的时间，精确到秒（或者为下发的次数）',
  `systemtype` varchar(1) DEFAULT NULL COMMENT '系统类型：0代表tos,1代表新tos',
  `iscomp` varchar(1) DEFAULT NULL COMMENT '是否为升级组件版本 0 升级设备版本 1升级组件且设备版本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='设备下发任务缓存表';

-- ----------------------------
-- Records of dmp_task_cache
-- ----------------------------

-- ----------------------------
-- Table structure for `dmp_unit`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_unit`;
CREATE TABLE `dmp_unit` (
  `uuid` varchar(30) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `executivesEmail` varchar(255) DEFAULT NULL,
  `executivesFunction` varchar(255) DEFAULT NULL,
  `executivesName` varchar(255) DEFAULT NULL,
  `executivesPhone` varchar(255) DEFAULT NULL,
  `executivesTel` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `securityManageDept` varchar(255) DEFAULT NULL,
  `securityManageEmail` varchar(255) DEFAULT NULL,
  `securityManageFunction` varchar(255) DEFAULT NULL,
  `securityManageName` varchar(255) DEFAULT NULL,
  `securityManagePhone` varchar(255) DEFAULT NULL,
  `securityManageTel` varchar(255) DEFAULT NULL,
  `securityTCEmail` varchar(255) DEFAULT NULL,
  `securityTCFunction` varchar(255) DEFAULT NULL,
  `securityTCName` varchar(255) DEFAULT NULL,
  `securityTCPhone` varchar(255) DEFAULT NULL,
  `securityTCTel` varchar(255) DEFAULT NULL,
  `securityTechnologyDept` varchar(255) DEFAULT NULL,
  `securityTechnologyEmail` varchar(255) DEFAULT NULL,
  `securityTechnologyFunction` varchar(255) DEFAULT NULL,
  `securityTechnologyName` varchar(255) DEFAULT NULL,
  `securityTechnologyPhone` varchar(255) DEFAULT NULL,
  `securityTechnologyTel` varchar(255) DEFAULT NULL,
  `unitAddress` varchar(255) DEFAULT NULL,
  `unitName` varchar(255) DEFAULT NULL,
  `unitParentId` varchar(255) DEFAULT NULL,
  `unitPostalCode` varchar(255) DEFAULT NULL,
  `unitType` varchar(255) DEFAULT NULL,
  `unitZoningCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_unit
-- ----------------------------
INSERT INTO `dmp_unit` VALUES ('G8iwqKHsRyHnNDia21KyPi', '2015-11-04 16:59:19', '2015-11-04 16:59:19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '北京', null, null, '02', null);

-- ----------------------------
-- Table structure for `dmp_unittype`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_unittype`;
CREATE TABLE `dmp_unittype` (
  `uuid` varchar(30) NOT NULL,
  `unitTypeName` varchar(255) DEFAULT NULL,
  `unitTypeNo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_unittype
-- ----------------------------
INSERT INTO `dmp_unittype` VALUES ('1', '超级管理员', '01');
INSERT INTO `dmp_unittype` VALUES ('2', '直属单位', '02');
INSERT INTO `dmp_unittype` VALUES ('3', '省级部门', '03');
INSERT INTO `dmp_unittype` VALUES ('4', '地市部门', '04');
INSERT INTO `dmp_unittype` VALUES ('5', '区县部门', '05');
INSERT INTO `dmp_unittype` VALUES ('8', '其他', '08');

-- ----------------------------
-- Table structure for `dmp_user`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_user`;
CREATE TABLE `dmp_user` (
  `uuid` varchar(30) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `AREAY_CODE` varchar(255) DEFAULT NULL,
  `caAuthentication` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `FIRST_FLAG` varchar(255) DEFAULT NULL,
  `ID_NO` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `TEL` varchar(255) DEFAULT NULL,
  `UNIT_ID` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `VALID_END` datetime DEFAULT NULL,
  `VALID_START` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_pplghff6u1corc1d1b1gt3sea` (`USER_NAME`) USING BTREE,
  UNIQUE KEY `UK_j78dyn7ck56lxqioam5gf9dy4` (`ID_NO`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_user
-- ----------------------------
INSERT INTO `dmp_user` VALUES ('8qbt32SmmuJ6rzCViXTCc4', '2015-11-04 16:59:46', '2015-11-04 16:59:46', 'admin', null, '', 'false', null, 'admin', 'edd3222db0fba6c1ce72b6488f7501aad356ef3e', null, '1', '1', '', 'G8iwqKHsRyHnNDia21KyPi', 'admin', '2015-11-27 16:59:43', '2015-11-04 16:59:40');
INSERT INTO `dmp_user` VALUES ('LnRwU9S8rdFbBxtSfwVfrS', '2015-11-04 11:17:06', '2015-11-04 11:17:11', null, null, null, 'false', null, 'audit2', 'ab578e42137a7906efbf7a6c37283bbd0c303bad', null, null, null, null, null, 'audit2', null, null);
INSERT INTO `dmp_user` VALUES ('NdHDe78hhwCXdiwWJDZKJq', '2015-11-10 14:27:09', '2015-11-10 14:27:09', '000000', null, '', 'false', null, 'audit', 'cae2eb1d7bf44c8b9210c5d8472a946f51ace005', null, '1', '1', '', 'G8iwqKHsRyHnNDia21KyPi', 'audit', '2020-01-28 14:26:30', '2015-10-25 14:26:33');

-- ----------------------------
-- Table structure for `dmp_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `dmp_user_role`;
CREATE TABLE `dmp_user_role` (
  `uuid` varchar(30) NOT NULL,
  `CREATION_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `ROLE_ID` varchar(22) NOT NULL,
  `USER_ID` varchar(22) NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `UK_ste0rliu0iife3kpxjjqvm3gx` (`USER_ID`,`ROLE_ID`) USING BTREE,
  KEY `FK_dqxgff4n6v77gi3kg72ti6nfx` (`ROLE_ID`) USING BTREE,
  CONSTRAINT `dmp_user_role_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `dmp_user` (`uuid`),
  CONSTRAINT `dmp_user_role_ibfk_2` FOREIGN KEY (`ROLE_ID`) REFERENCES `dmp_role` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dmp_user_role
-- ----------------------------
INSERT INTO `dmp_user_role` VALUES ('GD4e4KJXGxJZyRLycCz4st', '2015-11-10 14:27:10', '2015-11-10 14:27:10', 'HXQqftw4QG3R4ZxLHBH4ft', 'NdHDe78hhwCXdiwWJDZKJq');

-- ----------------------------
-- Table structure for `tapr_report_arch`
-- ----------------------------
DROP TABLE IF EXISTS `tapr_report_arch`;
CREATE TABLE `tapr_report_arch` (
  `ARCH_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `RESOURCE_ID` bigint(20) DEFAULT NULL,
  `ARCH_NAME` varchar(200) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `LAST_MODIFY_TIME` datetime NOT NULL,
  `ARCH_CONTENT` longblob,
  `ARCH_STATUE` varchar(1) DEFAULT NULL,
  `CUSTOM01` varchar(128) DEFAULT NULL,
  `CUSTOM02` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ARCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tapr_report_arch
-- ----------------------------

-- ----------------------------
-- Table structure for `tapr_report_def`
-- ----------------------------
DROP TABLE IF EXISTS `tapr_report_def`;
CREATE TABLE `tapr_report_def` (
  `RESOURCE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `RESOURCE_NAME` varchar(200) DEFAULT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `LAST_MODIFYED_TIME` datetime NOT NULL,
  `REPORT_TYPE` varchar(200) DEFAULT NULL,
  `REPORT_TEMPLATE` longblob,
  `CONDITIONS` varchar(4000) DEFAULT NULL,
  `REPORT_SQL` varchar(4000) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `SUBTITLE` varchar(100) DEFAULT NULL,
  `MAX_ROW` int(11) DEFAULT NULL,
  `CHART_TYPE` int(11) DEFAULT NULL,
  `CHART_XAXIS` varchar(30) DEFAULT NULL,
  `CHART_YAXIS` varchar(30) DEFAULT NULL,
  `TIME_PARAM` varchar(20) DEFAULT NULL,
  `CUSTOM01` varchar(128) DEFAULT NULL,
  `CUSTOM02` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`RESOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tapr_report_def
-- ----------------------------
DROP TRIGGER IF EXISTS `dmp_devicegroup_trriger`;
DELIMITER ;;
CREATE TRIGGER `dmp_devicegroup_trriger` BEFORE INSERT ON `dmp_devicegroup` FOR EACH ROW BEGIN
  SET NEW.groupname = '默认组';
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `dmp_config_upnum_u`;
DELIMITER ;;
CREATE TRIGGER `dmp_config_upnum_u` BEFORE INSERT ON `dmp_device_config` FOR EACH ROW begin
/*待升级*/
if new.upgradestatus=1 then
	update dmp_config_info set upDeviceNum = upDeviceNum+1 where uuid = new.configid;
end if;
/*升级完成*/
if new.upgradestatus=2 then
	update dmp_config_info set updDeviceNum = updDeviceNum+1 where uuid = new.configid;
end if;
/*update dmp_patch_info dp set unUpDeviceNum = (dp.deviceNum-dp.upDeviceNum-dp.updDeviceNum) where uuid = new.patchid;*/
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `dmp_config_update_u`;
DELIMITER ;;
CREATE TRIGGER `dmp_config_update_u` BEFORE UPDATE ON `dmp_device_config` FOR EACH ROW begin
/*待升级*/
if old.upgradestatus=1 and new.upgradestatus=2  then
	update dmp_config_info set updDeviceNum = updDeviceNum+1,upDeviceNum = upDeviceNum-1 where uuid = new.configid;

end if;
if old.upgradestatus=1 and new.upgradestatus=4  then
	update dmp_config_info set unSuccDeviceNum = unSuccDeviceNum+1,upDeviceNum = upDeviceNum-1 where uuid = new.configid;

end if;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `dmp_deviceInfo_trriger`;
DELIMITER ;;
CREATE TRIGGER `dmp_deviceInfo_trriger` BEFORE INSERT ON `dmp_device_info` FOR EACH ROW BEGIN
  SET NEW.groupid = '默认组';
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `dmp_device_upnum_u`;
DELIMITER ;;
CREATE TRIGGER `dmp_device_upnum_u` BEFORE INSERT ON `dmp_device_patch` FOR EACH ROW begin
/*待升级*/
if new.upgradestatus=1 then
	update dmp_patch_info set upDeviceNum = upDeviceNum+1 where uuid = new.patchid;
end if;
/*升级完成*/
if new.upgradestatus=2 then
	update dmp_patch_info set updDeviceNum = updDeviceNum+1 where uuid = new.patchid;
end if;
/*update dmp_patch_info dp set unUpDeviceNum = (dp.deviceNum-dp.upDeviceNum-dp.updDeviceNum) where uuid = new.patchid;*/
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `dmp_patch_update_u`;
DELIMITER ;;
CREATE TRIGGER `dmp_patch_update_u` AFTER UPDATE ON `dmp_device_patch` FOR EACH ROW begin
/*已执行*/
if old.upgradestatus=1 and new.upgradestatus=2  then
	update dmp_patch_info set updDeviceNum = updDeviceNum+1,upDeviceNum = upDeviceNum-1 where uuid = new.patchid;

end if;

/*待升级到执行失败*/
if old.upgradestatus=1 and new.upgradestatus=6  then
	update dmp_patch_info set unSuccDeviceNum = unSuccDeviceNum+1,upDeviceNum = upDeviceNum-1 where uuid = new.patchid;
end if;
end
;;
DELIMITER ;
