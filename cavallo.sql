/*
Navicat MySQL Data Transfer

Source Server         : php-Mysql
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : cavallo

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2021-03-22 15:23:13
*/

SET FOREIGN_KEY_CHECKS=0;


-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` int(11) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES ('1', 'A. D.', 'admin', '123456', '759071016643', 'admin@gmail.com', '0');
INSERT INTO `administrators` VALUES ('2', 'F. C.', 'admin2', '111111', '759817230120', 'fc@gmail.com', '0');
INSERT INTO `administrators` VALUES ('3', 'B. P.', 'admin3', '123321', '75839127391', 'bp@gmail.com', '1');
INSERT INTO `administrators` VALUES ('15', 'dhiwhdiq', 'qwhduiqwdh', '313123123', '312413241', 'bcjwkbk@qdwwqd', '0');

-- ----------------------------
-- Table structure for drivers
-- ----------------------------
DROP TABLE IF EXISTS `drivers`;
CREATE TABLE `drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of drivers
-- ----------------------------
INSERT INTO `drivers` VALUES ('1', 'Joy Bruno', '1', '1AHJKHHOBJ');
INSERT INTO `drivers` VALUES ('2', 'Cici Lampord', '0', null);
INSERT INTO `drivers` VALUES ('3', 'Frank Collemen', '0', null);

-- ----------------------------
-- Table structure for ice_order
-- ----------------------------
DROP TABLE IF EXISTS `ice_order`;
CREATE TABLE `ice_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `ispay` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `dispatch` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `dairy_free` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ice_order
-- ----------------------------
INSERT INTO `ice_order` VALUES ('12', 'Strawberry', '2.75', null, 'l', '2021-02-07 10:13:16', '0', 'frank', 'some where', '4123', '7', null, null, null);
INSERT INTO `ice_order` VALUES ('15', 'Chocolate', '2.75', null, 'l', '2021-02-07 14:36:25', '0', 'weblogic', 'some where', '4123', '4', null, null, null);
INSERT INTO `ice_order` VALUES ('16', 'Cherry', '2.75', null, 'l', '2021-02-07 14:37:47', '1', 'frank', 'some where2', '4123', '4', null, null, null);
INSERT INTO `ice_order` VALUES ('22', 'Plain Vanilla', '2.25', null, 'm', '2021-02-26 17:08:10', '0', 'frank', '', '4123', '4', null, null, null);
INSERT INTO `ice_order` VALUES ('21', 'Salted Caramel', '1.75', null, 's', '2021-02-26 17:06:12', '0', 'frank', '', '4123', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('20', 'Mint', '2.75', null, 'l', '2021-02-26 17:05:53', '0', 'frank', '', '4123', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('23', 'Rum and Raisin', '3.5', null, 'xl', '2021-03-21 12:12:17', '1', 'user1', '', '76137812312', '2', null, null, null);
INSERT INTO `ice_order` VALUES ('24', 'Honey Comb', '3.5', null, 'xl', '2021-03-21 12:12:24', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('25', 'Plain Vanilla', '2.75', null, 'l', '2021-03-21 12:13:23', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('26', 'Chocolate', '2.75', null, 'l', '2021-03-21 13:13:15', '1', 'user1', '', '76137812312', '5', null, null, null);
INSERT INTO `ice_order` VALUES ('27', 'Mint', '3.5', null, 'xl', '2021-03-21 13:26:28', '1', 'user1', '', '76137812312', '6', null, null, null);
INSERT INTO `ice_order` VALUES ('28', 'Strawberry', '2.25', null, 'm', '2021-03-21 13:29:47', '1', 'user1', '', '76137812312', '2', null, null, null);
INSERT INTO `ice_order` VALUES ('29', 'Chocolate', '3.5', null, 'xl', '2021-03-21 13:52:02', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('30', 'Salted Caramel', '2.75', null, 'l', '2021-03-21 13:53:01', '1', 'user1', '', '76137812312', '2', null, null, null);
INSERT INTO `ice_order` VALUES ('31', 'Mint', '1.75', null, 's', '2021-03-21 13:53:08', '1', 'user1', '', '76137812312', '3', null, null, null);
INSERT INTO `ice_order` VALUES ('32', 'Mint', '5.75', null, 'xxl', '2021-03-21 13:53:11', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('33', 'Chocolate', '2.75', null, 'l', '2021-03-21 14:07:20', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('34', 'Strawberry', '3.5', null, 'xl', '2021-03-21 14:18:09', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('35', 'Honey Comb', '3.5', null, 'xl', '2021-03-21 14:38:00', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('36', 'Plain Vanilla', '2.25', null, 'm', '2021-03-21 14:42:15', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('37', 'Honey Comb', '1.75', null, 's', '2021-03-21 14:54:36', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('38', 'Strawberry', '3.5', null, 'xl', '2021-03-21 14:54:40', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('39', 'Salted Caramel', '5.75', null, 'xxl', '2021-03-21 14:54:44', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('40', 'Chocolate', '2.25', null, 'm', '2021-03-21 15:02:36', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('41', 'Chocolate', '2.25', null, 'm', '2021-03-21 21:44:07', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('42', 'Honey Comb', '2.75', null, 'l', '2021-03-21 21:44:12', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('43', 'Strawberry', '2.75', null, 'l', '2021-03-21 21:48:35', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('44', 'Plain Vanilla', '2.25', null, 'm', '2021-03-21 21:55:20', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('45', 'Cherry', '2.25', null, 'm', '2021-03-21 21:56:36', '1', 'user1', '', '76137812312', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('46', 'Honey Comb', '2.25', null, 'm', '2021-03-22 14:19:54', '1', 'test1', '', '1234566', '1', null, null, null);
INSERT INTO `ice_order` VALUES ('47', 'Honey Comb', '2.25', null, 'm', '2021-03-22 14:23:47', '0', 'test1', '', '1234566', '1', null, null, null);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `size` varchar(50) DEFAULT NULL,
  `dairy_free` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', 'Rum and Raisin ice cream', '2', '1', null, null);
INSERT INTO `items` VALUES ('2', 'Chocolate ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('3', 'Honey Comb ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('4', 'Plain Vanilla ice cream', '2', '1', null, null);
INSERT INTO `items` VALUES ('5', 'Salted Caramel ice cream', '2.75', '0', null, null);
INSERT INTO `items` VALUES ('6', 'Strawberry ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('7', 'Mint ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('8', 'Cherry ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('1', 'Rum and Raisin ice cream', '2', '1', null, null);
INSERT INTO `items` VALUES ('2', 'Chocolate ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('3', 'Honey Comb ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('4', 'Plain Vanilla ice cream', '2', '1', null, null);
INSERT INTO `items` VALUES ('5', 'Salted Caramel ice cream', '2.75', '0', null, null);
INSERT INTO `items` VALUES ('6', 'Strawberry ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('7', 'Mint ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('8', 'Cherry ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('1', 'Rum and Raisin ice cream', '2', '1', null, null);
INSERT INTO `items` VALUES ('2', 'Chocolate ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('3', 'Honey Comb ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('4', 'Plain Vanilla ice cream', '2', '1', null, null);
INSERT INTO `items` VALUES ('5', 'Salted Caramel ice cream', '2.75', '0', null, null);
INSERT INTO `items` VALUES ('6', 'Strawberry ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('7', 'Mint ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('8', 'Cherry ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('1', 'Rum and Raisin ice cream', '2', '1', null, null);
INSERT INTO `items` VALUES ('2', 'Chocolate ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('3', 'Honey Comb ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('4', 'Plain Vanilla ice cream', '2', '1', null, null);
INSERT INTO `items` VALUES ('5', 'Salted Caramel ice cream', '2.75', '0', null, null);
INSERT INTO `items` VALUES ('6', 'Strawberry ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('7', 'Mint ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('8', 'Cherry ice cream', '2', '0', null, null);
INSERT INTO `items` VALUES ('9', 'Plain Vanilla', '2.75', '0', null, null);
INSERT INTO `items` VALUES ('10', 'Plain Vanilla', '2.75', '0', null, null);
INSERT INTO `items` VALUES ('11', 'Chocolate', '2.75', '0', 'l', null);
INSERT INTO `items` VALUES ('12', 'Mint', '3.5', '0', null, null);
INSERT INTO `items` VALUES ('13', 'Strawberry', '2.25', '0', null, null);
INSERT INTO `items` VALUES ('14', 'Chocolate', '3.5', '0', null, null);
INSERT INTO `items` VALUES ('15', 'Salted Caramel', '2.75', '0', null, null);
INSERT INTO `items` VALUES ('16', 'Mint', '1.75', '0', null, null);
INSERT INTO `items` VALUES ('17', 'Mint', '5.75', '0', null, null);
INSERT INTO `items` VALUES ('18', 'Chocolate', '2.75', '0', 'l', null);
INSERT INTO `items` VALUES ('19', 'Strawberry', '3.5', '0', 'xl', null);
INSERT INTO `items` VALUES ('20', 'Honey Comb', '3.5', '0', 'xl', '1');
INSERT INTO `items` VALUES ('21', 'Plain Vanilla', '2.25', '0', 'm', '1');
INSERT INTO `items` VALUES ('22', 'Honey Comb', '1.75', '0', 's', '1');
INSERT INTO `items` VALUES ('23', 'Strawberry', '3.5', '0', 'xl', '1');
INSERT INTO `items` VALUES ('24', 'Salted Caramel', '5.75', '0', 'xxl', '1');
INSERT INTO `items` VALUES ('25', 'Chocolate', '2.25', '0', 'm', '0');
INSERT INTO `items` VALUES ('26', 'Honey Comb', '2.75', '0', 'l', '0');
INSERT INTO `items` VALUES ('27', 'Chocolate', '2.25', '0', 'm', '0');
INSERT INTO `items` VALUES ('28', 'Strawberry', '2.75', '0', 'l', '0');
INSERT INTO `items` VALUES ('29', 'Plain Vanilla', '2.25', '0', 'm', '1');
INSERT INTO `items` VALUES ('30', 'Cherry', '2.25', '0', 'm', '0');
INSERT INTO `items` VALUES ('31', 'Honey Comb', '2.25', '0', 'm', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `total` double NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Yet to be delivered',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `collection` int(11) DEFAULT NULL,
  `arrive_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', 'NE11 8EF', '4', 'Delivered', '0', null, null);
INSERT INTO `orders` VALUES ('2', '3', 'Address 3', '6', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('3', '4', 'Address 4', '4', 'Cancelled by Customer', '1', null, null);
INSERT INTO `orders` VALUES ('4', '2', 'NF9 2BD', '4', 'Paused', '0', null, null);
INSERT INTO `orders` VALUES ('5', '2', 'NF9 2BD', '2.75', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('6', '3', 'Address 3', '6', 'Cancelled by Customer', '1', null, null);
INSERT INTO `orders` VALUES ('7', '1', '', '3.5', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('8', '1', '', '2.75', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('9', '1', '', '2.75', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('10', '1', '', '2.75', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('11', '1', '', '2.75', 'Cancelled by Admin', '0', null, null);
INSERT INTO `orders` VALUES ('12', '1', '', '2.75', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('13', '1', '', '13.75', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('14', '1', '', '21', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('15', '1', 'some where2131', '4.5', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('16', '1', 'USA 123 31213', '3.5', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('17', '1', 'USA 123 31213', '5.5', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('18', '1', 'USA 123 31213', '5.25', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('19', '1', 'USA 123 31213', '5.75', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('20', '1', 'some where', '2.75', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('21', '1', 'some where', '3.5', 'Yet to be delivered', '0', null, null);
INSERT INTO `orders` VALUES ('22', '1', 'new where', '2.25', 'Yet to be delivered', '0', '1', null);
INSERT INTO `orders` VALUES ('23', '1', 'some where', '1.75', 'Yet to be delivered', '0', '1', null);
INSERT INTO `orders` VALUES ('24', '1', 'some where', '3.5', 'Yet to be delivered', '0', '1', null);
INSERT INTO `orders` VALUES ('25', '1', 'some where', '5.75', 'Yet to be delivered', '0', '1', null);
INSERT INTO `orders` VALUES ('26', '1', 'new where', '2.25', 'Yet to be delivered', '0', '1', null);
INSERT INTO `orders` VALUES ('27', '1', 'some where', '2.75', 'Yet to be delivered', '0', '0', '2021-03-21 23:48:44');
INSERT INTO `orders` VALUES ('28', '1', '123456', '2.25', 'Yet to be delivered', '0', '1', '2021-03-22 00:57:00');
INSERT INTO `orders` VALUES ('29', '19', 'test where', '2.25', 'Yet to be delivered', '0', '1', '2021-03-22 15:20:11');

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES ('1', '1AHJKHHOBJ', '2', '2', '4');
INSERT INTO `order_details` VALUES ('2', 'HJKJKNKDQW', '3', '3', '6');
INSERT INTO `order_details` VALUES ('3', 'NJKNJKBGIGIY\r\n', '3', '2', '6');
INSERT INTO `order_details` VALUES ('4', 'HIGUYFTYDYJ', '3', '2', '4');
INSERT INTO `order_details` VALUES ('5', 'GKGJDYTXCJBM', '5', '1', '2.75');
INSERT INTO `order_details` VALUES ('6', 'BKJHGKHCDJTXSH', '3', '2', '4');
INSERT INTO `order_details` VALUES ('7', 'BJKJGHKFYJXGJXCFD', '2', '2', '4');
INSERT INTO `order_details` VALUES ('8', 'FTYDSRYFVKBK', '3', '2', '4');
INSERT INTO `order_details` VALUES ('9', 'BKVJFDUJ12', '2', '5', '4');
INSERT INTO `order_details` VALUES ('10', 'BKJGFFVK921', '3', '2', '4');
INSERT INTO `order_details` VALUES ('11', '5HGVHKVBKA', '5', '1', '2.75');
INSERT INTO `order_details` VALUES ('12', 'NHJKGKB6JHKHN', '2', '5', '10');
INSERT INTO `order_details` VALUES ('13', '6BHJGIVHBK971', '3', '3', '6');
INSERT INTO `order_details` VALUES ('14', 'GG916CFHCGUJV', '5', '2', '4');
INSERT INTO `order_details` VALUES ('15', '11', '0', '1', '2.75');
INSERT INTO `order_details` VALUES ('16', '12', '0', '1', '2.75');
INSERT INTO `order_details` VALUES ('17', '13', '0', '5', '2.75');
INSERT INTO `order_details` VALUES ('18', '14', '12', '6', '3.5');
INSERT INTO `order_details` VALUES ('19', '15', '13', '2', '2.25');
INSERT INTO `order_details` VALUES ('20', '16', '14', '1', '3.5');
INSERT INTO `order_details` VALUES ('21', '17', '15', '2', '2.75');
INSERT INTO `order_details` VALUES ('22', '18', '16', '3', '1.75');
INSERT INTO `order_details` VALUES ('23', '19', '17', '1', '5.75');
INSERT INTO `order_details` VALUES ('24', '20', '18', '1', '2.75');
INSERT INTO `order_details` VALUES ('25', '21', '19', '1', '3.5');
INSERT INTO `order_details` VALUES ('26', '0', '20', '1', '3.5');
INSERT INTO `order_details` VALUES ('27', '22', '21', '1', '2.25');
INSERT INTO `order_details` VALUES ('28', '23', '22', '1', '1.75');
INSERT INTO `order_details` VALUES ('29', '24', '23', '1', '3.5');
INSERT INTO `order_details` VALUES ('30', '25', '24', '1', '5.75');
INSERT INTO `order_details` VALUES ('31', '26', '25', '1', '2.25');
INSERT INTO `order_details` VALUES ('32', '0', '26', '1', '2.75');
INSERT INTO `order_details` VALUES ('33', '0', '27', '1', '2.25');
INSERT INTO `order_details` VALUES ('34', '27', '28', '1', '2.75');
INSERT INTO `order_details` VALUES ('35', '0', '29', '1', '2.25');
INSERT INTO `order_details` VALUES ('36', '28', '30', '1', '2.25');
INSERT INTO `order_details` VALUES ('37', '29', '31', '1', '2.25');

-- ----------------------------
-- Table structure for remark
-- ----------------------------
DROP TABLE IF EXISTS `remark`;
CREATE TABLE `remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remark` int(11) DEFAULT NULL,
  `ispay` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of remark
-- ----------------------------
INSERT INTO `remark` VALUES ('1', '1614958614', '0', '2021-03-05 15:36:54', '2021-03-05 15:36:54');
INSERT INTO `remark` VALUES ('2', '1614959783', '1', '2021-03-05 16:00:31', '2021-03-05 15:56:23');


-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `postcode` varchar(300) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'user1', 'NE11 8EF', '76137812312', '0', '0', '123');
INSERT INTO `users` VALUES ('2', 'user2', 'NF9 2BD ', '75812361234', '1', '0', '123');
INSERT INTO `users` VALUES ('3', 'user3', 'Address 3', '9898000002', '1', '0', '123');
INSERT INTO `users` VALUES ('4', 'user4', 'Address 4', '9898000003', '0', '0', '123');
INSERT INTO `users` VALUES ('5', 'user5', 'Address 5', '9898000004', '0', '1', '123');
INSERT INTO `users` VALUES ('6', 'user6', 'Adress 6', '7530817031', '0', '1', '123');
INSERT INTO `users` VALUES ('18', 'hqduihwq', '3ND 8SC', '321312', '0', '0', '123');
INSERT INTO `users` VALUES ('19', 'test1', '', '1234566', '0', '0', '123');

