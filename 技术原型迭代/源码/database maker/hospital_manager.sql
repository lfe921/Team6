/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 80028
Source Host           : localhost:3306
Source Database       : hospital_manager

Target Server Type    : MYSQL
Target Server Version : 80028
File Encoding         : 65001

Date: 2022-05-03 11:44:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `announce`
-- ----------------------------
DROP TABLE IF EXISTS `announce`;
CREATE TABLE `announce` (
  `id` char(8) NOT NULL DEFAULT '' COMMENT 'id',
  `content` varchar(512) NOT NULL DEFAULT '' COMMENT '公告内容',
  `create_time` datetime NOT NULL COMMENT '发布时间',
  `user_id` char(8) NOT NULL DEFAULT '' COMMENT '公告所属用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of announce
-- ----------------------------
INSERT INTO `announce` VALUES ('IbZJWrzp', '欢迎来到思源牙科诊所！', '2022-01-01 12:00:00', 'Zfp4kbNf');

-- ----------------------------
-- Table structure for `appoint`
-- ----------------------------
DROP TABLE IF EXISTS `appoint`;
CREATE TABLE `appoint` (
  `id` char(8) NOT NULL DEFAULT '' COMMENT 'id',
  `time` datetime NOT NULL COMMENT '预约挂号时间',
  `user_id` char(8) NOT NULL DEFAULT '' COMMENT '预约挂号所属用户',
  `doctor_id` char(8) NOT NULL DEFAULT '' COMMENT '预约挂号所属医生',
  `state` int(2) NOT NULL DEFAULT '1' COMMENT '预约状态： 1：待就诊；2：已就诊；3：已取消',
  `info` varchar(256) NOT NULL DEFAULT '' COMMENT '预约挂号备注',
  `reply` varchar(256) NOT NULL DEFAULT '' COMMENT '医生回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appoint
-- ----------------------------
INSERT INTO `appoint` VALUES ('dqoZCzaW', '2022-05-01 13:15:03', 'Zfp4kbNf', 'cmWmPwtF', '2', '牙齿疼的厉害，请尽快', '好的');
INSERT INTO `appoint` VALUES ('N2xeSpho', '2022-05-01 17:14:18', 'dj81iy0L', 'cmWmPwtF', '3', '', '');

-- ----------------------------
-- Table structure for `appoint_item`
-- ----------------------------
DROP TABLE IF EXISTS `appoint_item`;
CREATE TABLE `appoint_item` (
  `id` char(8) NOT NULL DEFAULT '' COMMENT 'id',
  `appoint_id` char(8) NOT NULL DEFAULT '' COMMENT '挂号记录所属挂号id',
  `create_time` datetime NOT NULL COMMENT '挂号记录创建时间',
  `content` varchar(128) NOT NULL DEFAULT '' COMMENT '挂号记录内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appoint_item
-- ----------------------------
INSERT INTO `appoint_item` VALUES ('6sAS3uWq', 'dqoZCzaW', '2022-05-01 13:18:58', '初步诊断为蛀牙');
INSERT INTO `appoint_item` VALUES ('BYvaWkcv', 'dqoZCzaW', '2022-05-01 13:25:48', '确诊为蛀牙，进行补牙');
INSERT INTO `appoint_item` VALUES ('HvXZ1ioR', 'dqoZCzaW', '2022-05-01 13:55:32', '补牙完毕，清洗保养');
INSERT INTO `appoint_item` VALUES ('i1aNdREL', 'dqoZCzaW', '2022-05-01 14:06:37', '诊疗结束');

-- ----------------------------
-- Table structure for `doctor`
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` char(8) NOT NULL DEFAULT '' COMMENT 'id',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '医生名称',
  `office_id` char(8) NOT NULL DEFAULT '' COMMENT '医生所属科室',
  `info` varchar(256) NOT NULL DEFAULT '' COMMENT '个人简介',
  `password` varchar(16) NOT NULL DEFAULT '' COMMENT '医生密码',
  `head_pic` varchar(512) NOT NULL DEFAULT 'common/no_image.jpg' COMMENT '医生头像',
  `position` char(2) NOT NULL DEFAULT '' COMMENT '医生职位',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '医生手机号',
  `sex` int(2) NOT NULL DEFAULT '3' COMMENT '医生性别 1：男 2：女 3：未知',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('cmWmPwtF', '华佗', 'squTefek', '华佗从小就对医学感兴趣，长大之后，医术精湛，行医各地。他精通内外各科，还擅长针灸跟外科，并且发明了麻佛散，开创了中国外科手术第一例。他还曾利用麻佛散成功摘除了肿瘤。', '123456', '20211219/1639890430656.png', '2', '12345678900', '1');
INSERT INTO `doctor` VALUES ('HpdZfIuq', '张仲景', 't5qPN4yP', '张仲景是东汉末年著名的医学家，被称为“医圣”。他一生都在为民医病，老百姓也非常爱戴他。张仲景创出了《伤寒杂病论》，里面记载了大量的方剂，直到现在都是中医学的参考用书。', '123456', '20211219/1639890621388.png', '1', '98765432100', '1');

-- ----------------------------
-- Table structure for `office`
-- ----------------------------
DROP TABLE IF EXISTS `office`;
CREATE TABLE `office` (
  `id` char(8) NOT NULL DEFAULT '' COMMENT 'id',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '科室名称',
  `info` varchar(256) NOT NULL DEFAULT '' COMMENT '科室介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of office
-- ----------------------------
INSERT INTO `office` VALUES ('1fLcW3Jh', '牙体牙髓科', '解决各种牙疼的科室，主要工作范围是补牙洞和根管诊治，树脂补牙、牙齿漂白也是在这。');
INSERT INTO `office` VALUES ('sfEAulBp', '牙周科', '负责洗牙和系统牙周诊治，还有牙周手术、种植也有开展。刷牙出血，牙龈萎缩，牙齿松动先看牙周科。');
INSERT INTO `office` VALUES ('squTefek', '修复科', '镶假牙、种植牙、做烤瓷牙，判断一颗重要的坏牙更能否保留时常也是挂修复科。关于有缺牙、难题多多的中老年病人假如不了解第一次该看什么科就看看修复科，做一个全面的诊治计划。因为修复科一般都是比较好挂号的科室。');
INSERT INTO `office` VALUES ('t5qPN4yP', '正畸科', '戴牙套箍牙的科室，才能助你改变牙齿的排列难题。成年人也能接受正畸诊治，年岁不是难题。');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` char(8) NOT NULL DEFAULT '' COMMENT 'id',
  `username` varchar(8) NOT NULL DEFAULT '' COMMENT '用户姓名',
  `password` varchar(16) NOT NULL DEFAULT '' COMMENT '用户密码',
  `head_pic` varchar(512) NOT NULL DEFAULT 'common/no_image.jpg' COMMENT '用户头像',
  `role_id` char(8) NOT NULL DEFAULT '' COMMENT '用户所属角色id',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '用户手机号',
  `sex` int(2) NOT NULL DEFAULT '3' COMMENT '用户性别 1：男 2：女 3：未知',
  `info` varchar(256) NOT NULL DEFAULT '' COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('dj81iy0L', 'patient1', '123456', '20211211/1639216337294.jpg', '1', '12345654321', '1', '一名普通的患者');
INSERT INTO `user` VALUES ('KNhiLCBB', 'patient2', '123456', 'common/no_image.jpg', '1', '12332112345', '2', '一名普通的患者');
INSERT INTO `user` VALUES ('Zfp4kbNf', 'admin', '123456', '20211210/1639129549714.jpg', '3', '13808183055', '1', '超级管理员');

-- ----------------------------
-- Table structure for `left`
-- ----------------------------
DROP TABLE IF EXISTS `left`;
CREATE TABLE `left` (
  id char(8) NOT NULL DEFAULT '' COMMENT '预约挂号所属医生',
  tim datetime NOT NULL COMMENT '预约挂号时间段',
  cnt int NOT NULL DEFAULT 0 COMMENT '名额余量',
  PRIMARY KEY (id,tim)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `left` VALUES ('cmWmPwtF', '2022-05-04 13', 5);