/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : exam

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2017-04-01 14:56:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `clsid` int(11) NOT NULL,
  `clsname` varchar(255) NOT NULL,
  `typeid` int(11) default NULL,
  `tid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `strartdate` date NOT NULL,
  `status` int(11) NOT NULL,
  `studytime` varchar(255) NOT NULL,
  PRIMARY KEY  (`clsid`),
  KEY `class_teacher` (`tid`),
  KEY `class_head` (`hid`),
  KEY `class_type` (`typeid`),
  CONSTRAINT `class_head` FOREIGN KEY (`hid`) REFERENCES `headteacher` (`hid`),
  CONSTRAINT `class_teacher` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`),
  CONSTRAINT `class_type` FOREIGN KEY (`typeid`) REFERENCES `type` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('1', 'java118', '1', '1', '2', '2017-03-16', '0', '3月');
INSERT INTO `classes` VALUES ('2', 'ios111', '2', '2', '2', '2017-04-01', '1', '3月');

-- ----------------------------
-- Table structure for examination
-- ----------------------------
DROP TABLE IF EXISTS `examination`;
CREATE TABLE `examination` (
  `eid` int(11) NOT NULL auto_increment,
  `ename` varchar(255) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `paperid` int(11) NOT NULL,
  `clsid` int(11) NOT NULL,
  PRIMARY KEY  (`eid`),
  KEY `exam_clsid` (`clsid`),
  KEY `exam_paperid` (`paperid`),
  CONSTRAINT `exam_clsid` FOREIGN KEY (`clsid`) REFERENCES `classes` (`clsid`),
  CONSTRAINT `exam_paperid` FOREIGN KEY (`paperid`) REFERENCES `examination_paper` (`paperid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examination
-- ----------------------------
INSERT INTO `examination` VALUES ('1', '100期Java测试', '100期', '2016-11-12 09:00:00', '2016-11-12 11:00:00', '1', '1');
INSERT INTO `examination` VALUES ('2', '101期Java测试', '101期', '2016-11-13 09:00:00', '2016-11-13 11:00:00', '2', '1');

-- ----------------------------
-- Table structure for examination_item
-- ----------------------------
DROP TABLE IF EXISTS `examination_item`;
CREATE TABLE `examination_item` (
  `itemid` int(11) NOT NULL auto_increment,
  `title` varchar(500) NOT NULL,
  `option` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `typeid` int(11) NOT NULL,
  PRIMARY KEY  (`itemid`),
  KEY `item_type` (`typeid`),
  CONSTRAINT `item_type` FOREIGN KEY (`typeid`) REFERENCES `type` (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examination_item
-- ----------------------------
INSERT INTO `examination_item` VALUES ('1', '下列不可作为\r\n\r\njava\r\n\r\n语言修饰符的是', '{A:a1,B:$1,C:_1,D:11}', 'D', '1');
INSERT INTO `examination_item` VALUES ('2', '有一段\r\n\r\njava \r\n\r\n应用程序，它的主类名是\r\n\r\na1\r\n\r\n，那么保存它的源文件名可以是', '{A:a1.java ,B:a1.class ,C:a1,D:c}', 'A', '1');
INSERT INTO `examination_item` VALUES ('3', '整型数据类型中，需要内存空间最少的是', '{A:short,B:long ,C:int,D:byte}', 'D', '1');
INSERT INTO `examination_item` VALUES ('4', 'Java \r\n\r\n类可以作为', '{A:类型定义机制\r\n\r\n  ,B:数据封装机制\r\n\r\n ,C:类型定义机制和数据封装机制\r\n\r\n ,D:上述都不对\r\n\r\n}', 'D', '1');
INSERT INTO `examination_item` VALUES ('5', '在创建对象时必须', '{A:先声明对象，然后才能使用对象 ,B:先声明对象，为对象分配内存空间，然后才能使用对象 ,C:先声明对象，为对象分配内存空间，对对象初始化，然后才能使用对象\r\n\r\n,D:上述说法都对\r\n\r\n}', 'C', '1');
INSERT INTO `examination_item` VALUES ('6', '在调用方法时，若要使方法改变实参的值，可以', '{A:用基本数据类型作为参数 ,B:用对象作为参数\r\n\r\n ,C:A\r\n\r\n和\r\n\r\nB\r\n\r\n都对,D:A\r\n\r\n和\r\n\r\nB\r\n\r\n都不对}', 'B', '1');
INSERT INTO `examination_item` VALUES ('7', 'Java\r\n\r\n中', '{A:一个子类可以有多个父类，一个父类也可以有多个子类\r\n\r\n ,B: 一个子类可以有多个父类，但一个父类只可以有一个子类\r\n\r\n,C:一个子类可以有一个父类，但一个父类可以有多个子类,D:上述说法都不对\r\n\r\n}', 'C', '1');
INSERT INTO `examination_item` VALUES ('8', 'Java\r\n\r\n语言具有许多优点和特点，哪个反映了\r\n\r\nJava\r\n\r\n程序并行机制的特点？', '{A:安全性\r\n\r\n ,B:多线性 ,C:跨平台,D:可移植}', 'B', '1');
INSERT INTO `examination_item` VALUES ('9', ' Character\r\n\r\n流与\r\n\r\nByte\r\n\r\n流的区别是', '{A:每次读入的字节数不同\r\n\r\n ,B:前者带有缓冲，后者没有\r\n\r\n ,C:前者是字符读写，后者是字节读写\r\n\r\n,D:二者没有区别，可以互换使用}', 'C', '1');
INSERT INTO `examination_item` VALUES ('10', '以下声明合法的是', '{A: default \r\n\r\n \r\n\r\nString \r\n\r\n \r\n\r\ns,B:public \r\n\r\n \r\n\r\nfinal \r\n\r\n \r\n\r\nstatic \r\n\r\n \r\n\r\nnative \r\n\r\n \r\n\r\nint \r\n\r\n \r\n\r\nw( )  ,C:abstract \r\n\r\n \r\n\r\ndouble \r\n\r\n \r\n\r\nd\r\n\r\n,D:abstract \r\n\r\n \r\n\r\nfinal \r\n\r\n \r\n\r\ndouble \r\n\r\n \r\n\r\nhyperbolicCosine( ) }', 'D', '1');

-- ----------------------------
-- Table structure for examination_paper
-- ----------------------------
DROP TABLE IF EXISTS `examination_paper`;
CREATE TABLE `examination_paper` (
  `paperid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `typeid` int(11) NOT NULL,
  `qnumber` int(11) NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY  (`paperid`),
  KEY `type_papers` (`typeid`),
  CONSTRAINT `type_papers` FOREIGN KEY (`typeid`) REFERENCES `type` (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examination_paper
-- ----------------------------
INSERT INTO `examination_paper` VALUES ('1', '100期Java测试', '1', '10', '2017-03-29 11:54:55');
INSERT INTO `examination_paper` VALUES ('2', '101期Java测试', '1', '10', '2017-03-29 11:55:35');

-- ----------------------------
-- Table structure for headteacher
-- ----------------------------
DROP TABLE IF EXISTS `headteacher`;
CREATE TABLE `headteacher` (
  `hid` int(11) NOT NULL auto_increment,
  `hname` varchar(255) default NULL,
  `entrytime` date default NULL,
  `experience` varchar(255) default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of headteacher
-- ----------------------------
INSERT INTO `headteacher` VALUES ('1', '许老师', '2014-11-01', '8年', '1');
INSERT INTO `headteacher` VALUES ('2', '王老师', '2013-07-06', '5年', '1');
INSERT INTO `headteacher` VALUES ('3', '徐老师', '2015-07-06', '10年', '1');
INSERT INTO `headteacher` VALUES ('4', '何老师', '2015-07-06', '3年', '0');

-- ----------------------------
-- Table structure for item_paper
-- ----------------------------
DROP TABLE IF EXISTS `item_paper`;
CREATE TABLE `item_paper` (
  `itemid` int(11) NOT NULL,
  `paperid` int(11) NOT NULL,
  KEY `item_itemid` (`itemid`),
  KEY `paper_paperid` (`paperid`),
  CONSTRAINT `item_itemid` FOREIGN KEY (`itemid`) REFERENCES `examination_item` (`itemid`),
  CONSTRAINT `paper_paperid` FOREIGN KEY (`paperid`) REFERENCES `examination_paper` (`paperid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_paper
-- ----------------------------
INSERT INTO `item_paper` VALUES ('2', '2');
INSERT INTO `item_paper` VALUES ('2', '1');
INSERT INTO `item_paper` VALUES ('1', '1');
INSERT INTO `item_paper` VALUES ('1', '2');
INSERT INTO `item_paper` VALUES ('3', '1');
INSERT INTO `item_paper` VALUES ('4', '1');
INSERT INTO `item_paper` VALUES ('5', '1');
INSERT INTO `item_paper` VALUES ('3', '2');
INSERT INTO `item_paper` VALUES ('4', '2');
INSERT INTO `item_paper` VALUES ('5', '2');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `classid` varchar(255) default NULL,
  `sid` varchar(255) default NULL,
  `score` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '', null, null);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stuid` int(11) NOT NULL auto_increment,
  `clsid` int(11) NOT NULL,
  `stuName` varchar(255) default NULL,
  `school` varchar(255) default NULL,
  `birthDay` date default NULL,
  `phone` varchar(11) default NULL,
  `classTime` date default NULL,
  `status` int(1) default NULL,
  `sex` varchar(2) NOT NULL,
  `birthPlace` varchar(255) default NULL,
  PRIMARY KEY  (`stuid`),
  KEY `stu_cls` (`clsid`),
  CONSTRAINT `stu_cls` FOREIGN KEY (`clsid`) REFERENCES `classes` (`clsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '1', '张三', '清华', '1991-01-01', '13812312314', '2017-01-01', '2', '男', '浙江');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL auto_increment,
  `tname` varchar(255) default NULL,
  `typeid` int(11) default NULL,
  `entrytime` date default NULL,
  `experience` varchar(255) default NULL,
  `status` int(11) default NULL,
  `clsid` int(11) default NULL,
  PRIMARY KEY  (`tid`),
  KEY `teacher_type` (`typeid`),
  KEY `clsid_clsid` (`clsid`),
  CONSTRAINT `clsid_clsid` FOREIGN KEY (`clsid`) REFERENCES `classes` (`clsid`),
  CONSTRAINT `teacher_type` FOREIGN KEY (`typeid`) REFERENCES `type` (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '许老师', '1', '2014-11-01', '8年', '1', '1');
INSERT INTO `teacher` VALUES ('2', '王老师', '1', '2013-07-01', '5年', '2', '1');
INSERT INTO `teacher` VALUES ('3', '徐老师', '1', '2015-07-06', '10年', '2', '1');
INSERT INTO `teacher` VALUES ('4', '何老师', '1', '2015-07-06', '3年', '3', '1');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `typeid` int(11) NOT NULL auto_increment,
  `typename` varchar(255) default NULL,
  PRIMARY KEY  (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', 'java');
INSERT INTO `type` VALUES ('2', 'ios');
INSERT INTO `type` VALUES ('3', 'antroid');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL auto_increment,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(2) default NULL,
  `stuid` int(11) default NULL,
  `realName` varchar(255) default NULL,
  PRIMARY KEY  (`uid`),
  KEY `user_stuid` (`stuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangsan', '123', '1', '1', '张三');
INSERT INTO `user` VALUES ('2', 'lisi', '123', '0', null, '李四');
