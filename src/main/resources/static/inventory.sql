/*
Navicat MySQL Data Transfer

Source Server         : xzzc
Source Server Version : 80013
Source Host           : 127.0.0.1:3306
Source Database       : inventory

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-12-15 15:51:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_datautils
-- ----------------------------
DROP TABLE IF EXISTS `sys_datautils`;
CREATE TABLE `sys_datautils` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sequence` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Records of sys_datautils
-- ----------------------------
INSERT INTO `sys_datautils` VALUES ('143', '1', 'month');
INSERT INTO `sys_datautils` VALUES ('144', '2', 'month');
INSERT INTO `sys_datautils` VALUES ('145', '3', 'month');
INSERT INTO `sys_datautils` VALUES ('146', '4', 'month');
INSERT INTO `sys_datautils` VALUES ('147', '5', 'month');
INSERT INTO `sys_datautils` VALUES ('148', '6', 'month');
INSERT INTO `sys_datautils` VALUES ('149', '7', 'month');
INSERT INTO `sys_datautils` VALUES ('150', '8', 'month');
INSERT INTO `sys_datautils` VALUES ('151', '9', 'month');
INSERT INTO `sys_datautils` VALUES ('152', '10', 'month');
INSERT INTO `sys_datautils` VALUES ('153', '11', 'month');
INSERT INTO `sys_datautils` VALUES ('154', '12', 'month');
INSERT INTO `sys_datautils` VALUES ('155', '1', 'week');
INSERT INTO `sys_datautils` VALUES ('156', '2', 'week');
INSERT INTO `sys_datautils` VALUES ('157', '3', 'week');
INSERT INTO `sys_datautils` VALUES ('158', '4', 'week');
INSERT INTO `sys_datautils` VALUES ('159', '5', 'week');
INSERT INTO `sys_datautils` VALUES ('160', '6', 'week');
INSERT INTO `sys_datautils` VALUES ('161', '7', 'week');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ClientId` char(36) DEFAULT NULL COMMENT '客户端Id',
  `Code` varchar(50) DEFAULT NULL COMMENT '编码',
  `Name` varchar(50) DEFAULT NULL COMMENT '名称',
  `ParentCode` varchar(50) DEFAULT NULL COMMENT '父级编码',
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CreatedById` char(36) DEFAULT NULL COMMENT '创建操作人',
  `UpdateAt` datetime DEFAULT NULL COMMENT '更新时间',
  `UpdateById` char(36) DEFAULT NULL COMMENT '更新操作人',
  `Deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除(0否1是)',
  `DeletedAt` datetime DEFAULT NULL COMMENT '删除时间',
  `DeletedById` char(36) DEFAULT NULL COMMENT '删除操作人',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('142', null, '10000', '首页', null, '2019-12-03 10:00:31', 'system', null, null, '0', null, null);
INSERT INTO `sys_menu` VALUES ('143', null, '20000', '购入', null, '2019-12-03 10:00:51', 'system', null, null, '0', null, null);
INSERT INTO `sys_menu` VALUES ('144', null, '30000', '销售', null, '2019-12-03 10:01:04', 'system', null, null, '0', null, null);
INSERT INTO `sys_menu` VALUES ('145', null, '1', '表单录入', '20000', '2019-12-03 10:01:47', 'system', null, null, '0', null, null);
INSERT INTO `sys_menu` VALUES ('146', null, '2', '历史查看', '20000', '2019-12-03 10:02:05', 'system', null, null, '0', null, null);
INSERT INTO `sys_menu` VALUES ('147', null, '1', '表单录入', '30000', '2019-12-03 10:02:20', 'system', null, null, '0', null, null);
INSERT INTO `sys_menu` VALUES ('148', null, '2', '历史查看', '30000', '2019-12-03 10:02:29', 'system', null, null, '0', null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ClientId` char(36) DEFAULT NULL COMMENT '客户端Id',
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '编码',
  `Name` varchar(50) DEFAULT NULL COMMENT '名称',
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父级编码',
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CreatedById` char(36) DEFAULT NULL COMMENT '创建操作人',
  `UpdateAt` datetime DEFAULT NULL COMMENT '更新时间',
  `UpdateById` char(36) DEFAULT NULL COMMENT '更新操作人',
  `Deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除(0否1是)',
  `DeletedAt` datetime DEFAULT NULL COMMENT '删除时间',
  `DeletedById` char(36) DEFAULT NULL COMMENT '删除操作人',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('142', null, '111111', 'admin', null, '451520737@qq.com', '2019-12-03 10:06:49', 'system', null, null, '0', null, null);

-- ----------------------------
-- Table structure for tb_buyrecord
-- ----------------------------
DROP TABLE IF EXISTS `tb_buyrecord`;
CREATE TABLE `tb_buyrecord` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ClientId` char(36) DEFAULT NULL COMMENT '客户端Id',
  `ProductName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出售产品名称',
  `SellUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出售人姓名',
  `SellCount` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出售总数量（斤）',
  `SellPrice` decimal(10,2) DEFAULT NULL COMMENT '出售总价格',
  `BuyUserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '购买人姓名',
  `BuyUserPhoneNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出售人手机号码',
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CreatedById` char(36) DEFAULT NULL COMMENT '创建操作人',
  `UpdateAt` datetime DEFAULT NULL COMMENT '更新时间',
  `UpdateById` char(36) DEFAULT NULL COMMENT '更新操作人',
  `Deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除(0否1是)',
  `DeletedAt` datetime DEFAULT NULL COMMENT '删除时间',
  `DeletedById` char(36) DEFAULT NULL COMMENT '删除操作人',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Records of tb_buyrecord
-- ----------------------------
INSERT INTO `tb_buyrecord` VALUES ('143', null, '地瓜干地瓜干地瓜干地瓜干地瓜干地瓜干地瓜干地瓜干地瓜干地瓜干地瓜干地瓜干地瓜干地瓜干地瓜干地瓜干', '测试人员up', '100', '10000.00', '测试up', '15621405987', '2019-12-04 15:23:25', null, '2019-12-04 15:56:29', null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('144', null, '地瓜干', '测试人员1', '100', '1000.00', '测试', '15621405987', '2019-12-04 15:23:37', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('145', '', '地瓜干', '测试人员2', '100', '1000.00', '测试', '15621405987', '2019-12-04 15:23:37', '', '2019-12-10 09:19:06', '', '0', '2019-12-10 09:18:36', '');
INSERT INTO `tb_buyrecord` VALUES ('146', null, '地瓜干', '测试人员3', '100', '1000.00', '测试', '15621405987', '2019-12-04 15:23:37', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('147', null, '地瓜干', '测试人员4', '100', '1000.00', '测试', '15621405987', '2019-12-04 15:23:37', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('148', null, '地瓜干', '测试人员5', '100', '1000.00', '测试', '15621405987', '2019-12-04 15:23:37', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('149', null, '地瓜干', '测试人员6', '100', '1000.00', '测试', '15621405987', '2019-12-04 15:23:37', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('150', null, '地瓜干', '测试人员7', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:37', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('151', null, '地瓜干', '测试人员8', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:38', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('152', null, '地瓜干', '测试人员9', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:38', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('153', null, '地瓜干', '测试人员10', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:38', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('154', null, '地瓜干', '测试人员11', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:38', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('155', null, '地瓜干', '测试人员12', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:38', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('156', null, '地瓜干', '测试人员13', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:39', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('157', null, '地瓜干', '测试人员14', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:39', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('158', null, '地瓜干', '测试人员15', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:39', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('159', null, '地瓜干', '测试人员16', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:57', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('160', null, '地瓜干', '测试人员17', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:57', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('161', null, '地瓜干', '测试人员18', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:57', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('162', null, '地瓜干', '测试人员19', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:58', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('163', null, '地瓜干', '测试人员20', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:58', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('164', null, '地瓜干', '测试人员21', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:58', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('165', null, '地瓜干', '测试人员22', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:58', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('166', null, '地瓜干', '测试人员23', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:59', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('167', null, '地瓜干', '测试人员24', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:59', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('168', null, '地瓜干', '测试人员25', '100', '1000.00', '测试', '15621405987', '2019-12-10 09:19:59', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('169', null, '地瓜干', '测试人员14', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:47', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('170', null, '地瓜干', '测试人员15', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:47', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('171', null, '地瓜干', '测试人员16', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:47', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('172', null, '地瓜干', '测试人员17', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:48', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('173', null, '地瓜干', '测试人员18', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:48', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('174', null, '地瓜干', '测试人员19', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:48', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('175', null, '地瓜干', '测试人员20', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:48', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('176', null, '地瓜干', '测试人员21', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:49', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('177', null, '地瓜干', '测试人员22', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:49', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('178', null, '地瓜干', '测试人员23', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:49', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('179', null, '地瓜干', '测试人员24', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:49', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('180', null, '地瓜干', '测试人员25', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:50', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('181', null, '地瓜干', '测试人员14', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:50', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('182', null, '地瓜干', '测试人员15', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:50', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('183', null, '地瓜干', '测试人员16', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:13:50', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('185', null, '地瓜干', '测试人员25', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:14:09', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('187', null, '地瓜干', '测试人员15', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:14:09', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('188', null, '地瓜干', '测试人员16', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:14:09', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('189', null, '地瓜干', '测试人员17', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:14:10', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('190', null, '地瓜干', '测试人员18', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:14:10', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('191', null, '地瓜干', '测试人员19', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:14:10', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('192', null, '地瓜干', '测试人员20', '100', '1000.00', '测试', '15621405987', '2019-12-10 10:14:10', null, null, null, '0', null, null);
INSERT INTO `tb_buyrecord` VALUES ('196', null, '地瓜干1号112123434', '隔壁老王', '100', '200.00', '丁锐1', '15621405987', '2019-12-11 10:26:55', null, '2019-12-13 16:59:56', null, '0', null, null);

-- ----------------------------
-- Table structure for tb_salerecord
-- ----------------------------
DROP TABLE IF EXISTS `tb_salerecord`;
CREATE TABLE `tb_salerecord` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ClientId` char(36) DEFAULT NULL COMMENT '客户端Id',
  `ProductName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出售产品名称',
  `SellUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出售人姓名',
  `SellCount` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出售总数量（斤）',
  `SellPrice` decimal(10,2) DEFAULT NULL COMMENT '出售总价格',
  `BuyUserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '购买人姓名',
  `BuyUserPhoneNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出售人手机号码',
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CreatedById` char(36) DEFAULT NULL COMMENT '创建操作人',
  `UpdateAt` datetime DEFAULT NULL COMMENT '更新时间',
  `UpdateById` char(36) DEFAULT NULL COMMENT '更新操作人',
  `Deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除(0否1是)',
  `DeletedAt` datetime DEFAULT NULL COMMENT '删除时间',
  `DeletedById` char(36) DEFAULT NULL COMMENT '删除操作人',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Records of tb_salerecord
-- ----------------------------
