/*
Navicat MySQL Data Transfer

Source Server         : ubuntu16
Source Server Version : 50724
Source Host           : 192.168.230.138:3306
Source Database       : cloud_disk

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2018-12-25 09:49:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `md5` varchar(200) NOT NULL,
  `file_id` varchar(256) NOT NULL,
  `url` varchar(512) NOT NULL,
  `size` bigint(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_info
-- ----------------------------
INSERT INTO `file_info` VALUES ('bc1408802dcefcf8436725b45438e646', 'group1/M00/00/00/wKjmilwdqJmASrpyAADEj8zByEg379.txt', 'http://192.168.230.138:80/group1/M00/00/00/wKjmilwdqJmASrpyAADEj8zByEg379.txt', '50319', 'txt', '1');
INSERT INTO `file_info` VALUES ('c319a9d4ce7c9f76d2a17a3d5d93c02b', 'group1/M00/00/00/wKjmilwdqtKAcOo5AABU8Itwcro6720927', 'http://192.168.230.138:80/group1/M00/00/00/wKjmilwdqtKAcOo5AABU8Itwcro6720927', '21744', 'null', '1');

-- ----------------------------
-- Table structure for share_file_list
-- ----------------------------
DROP TABLE IF EXISTS `share_file_list`;
CREATE TABLE `share_file_list` (
  `user` varchar(128) NOT NULL,
  `md5` varchar(200) NOT NULL,
  `createtime` varchar(128) DEFAULT NULL,
  `filename` varchar(128) DEFAULT NULL,
  `pv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of share_file_list
-- ----------------------------
INSERT INTO `share_file_list` VALUES ('Mario', 'c319a9d4ce7c9f76d2a17a3d5d93c02b', '2018-12-21 19:29:22', 'Makefile', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `nickname` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `createtime` varchar(128) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_nickname` (`nickname`),
  UNIQUE KEY `uq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'mike', 'sb', '123456', '110', '2017-01-11 17:47:30', '110@qq.com');
INSERT INTO `user` VALUES ('2', 'kevin', 'kevin', 'e10adc3949ba59abbe56e057f20f883e', '11111111111', '2018-12-21 05:54:02', 'abc@qq.com');
INSERT INTO `user` VALUES ('3', 'Mario', 'Mario', 'e10adc3949ba59abbe56e057f20f883e', '11111111111', '2018-12-21 19:08:42', 'abc@qq.com');
INSERT INTO `user` VALUES ('4', 'MarioHo', 'MarioHo', 'e10adc3949ba59abbe56e057f20f883e', '17875306401', '2018-12-21 19:10:14', '577423282@qq.com');

-- ----------------------------
-- Table structure for user_file_count
-- ----------------------------
DROP TABLE IF EXISTS `user_file_count`;
CREATE TABLE `user_file_count` (
  `user` varchar(128) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_file_count
-- ----------------------------
INSERT INTO `user_file_count` VALUES ('kevin', '1');
INSERT INTO `user_file_count` VALUES ('Mario', '1');
INSERT INTO `user_file_count` VALUES ('xxx_share_xxx_file_xxx_list_xxx_count_xxx', '1');

-- ----------------------------
-- Table structure for user_file_list
-- ----------------------------
DROP TABLE IF EXISTS `user_file_list`;
CREATE TABLE `user_file_list` (
  `user` varchar(128) NOT NULL,
  `md5` varchar(200) NOT NULL,
  `createtime` varchar(128) DEFAULT NULL,
  `filename` varchar(128) DEFAULT NULL,
  `shared_status` int(11) DEFAULT NULL,
  `pv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_file_list
-- ----------------------------
INSERT INTO `user_file_list` VALUES ('kevin', 'bc1408802dcefcf8436725b45438e646', '2018-12-21 18:59:37', '传智黑马c++24期链接分享.txt', '0', '1');
INSERT INTO `user_file_list` VALUES ('Mario', 'c319a9d4ce7c9f76d2a17a3d5d93c02b', '2018-12-21 19:09:07', 'Makefile', '1', '0');
