/*
 Navicat Premium Data Transfer

 Source Server         : connect
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : 360security

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 27/10/2018 19:39:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for platformaccount
-- ----------------------------
DROP TABLE IF EXISTS `platformaccount`;
CREATE TABLE `platformaccount`  (
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of platformaccount
-- ----------------------------
INSERT INTO `platformaccount` VALUES ('Adview', 'apiad@mobimagic.com', 'mobi666');
INSERT INTO `platformaccount` VALUES ('AOL', 'apiad@mobimagic.com', 'Flyboost666666*');
INSERT INTO `platformaccount` VALUES ('cm', 'liuyunyun@mobimagic.com', '360Security123');
INSERT INTO `platformaccount` VALUES ('Mobfox', 'apiad@mobimagic.com', '360Security2017');
INSERT INTO `platformaccount` VALUES ('Mopub', 'apiad@mobimagic.com', '360Security@2018');
INSERT INTO `platformaccount` VALUES ('NewCM', 'liuyunyun@mobimagic.com', '360Security');
INSERT INTO `platformaccount` VALUES ('OpenX', 'liuyunyun@mobimagic.com', '360Security123');
INSERT INTO `platformaccount` VALUES ('Pubnative', 'jstagad@mobimagic.com', '360Security2017666');
INSERT INTO `platformaccount` VALUES ('Smaato', 'bonowu@360overseas.com', '360overseas!@#$');
INSERT INTO `platformaccount` VALUES ('Solo', 'liqiu@mobimagic.com', '360Security123');
INSERT INTO `platformaccount` VALUES ('Tappx', 'apiad@mobimagic.com', 'tappx123');

SET FOREIGN_KEY_CHECKS = 1;
