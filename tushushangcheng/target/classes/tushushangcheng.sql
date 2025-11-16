/*
Navicat MySQL Data Transfer

Source Server         : lyy
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : tushushangcheng

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2025-06-18 00:00:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '收货人1', '17703786901', '地址1', '2', '2022-03-12 16:30:28', '2022-03-12 16:52:47', '2022-03-12 16:30:28');
INSERT INTO `address` VALUES ('2', '2', '收货人2', '17703786902', '地址2', '1', '2022-03-12 16:30:28', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `address` VALUES ('3', '1', '收货人3', '17703786903', '地址3', '1', '2022-03-12 16:30:28', '2022-03-12 16:52:42', '2022-03-12 16:30:28');
INSERT INTO `address` VALUES ('4', '2', '收货人4', '17703786904', '地址4', '1', '2022-03-12 16:30:28', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `address` VALUES ('5', '3', '收货人5', '17703786905', '地址5', '1', '2022-03-12 16:30:28', '2022-03-12 16:30:28', '2022-03-12 16:30:28');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '轮播图1', 'http://localhost:8080/tushushangcheng/upload/config1.jpg');
INSERT INTO `config` VALUES ('2', '轮播图2', 'http://localhost:8080/tushushangcheng/upload/config2.jpg');
INSERT INTO `config` VALUES ('3', '轮播图3', 'http://localhost:8080/tushushangcheng/upload/config3.jpg');

-- ----------------------------
-- Table structure for `dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', 'sex_types', '性别类型', '1', '男', null, null, '2022-03-12 16:29:02');
INSERT INTO `dictionary` VALUES ('2', 'sex_types', '性别类型', '2', '女', null, null, '2022-03-12 16:29:02');
INSERT INTO `dictionary` VALUES ('3', 'huiyuandengji_types', '会员等级类型', '1', '青铜会员', null, '0.98', '2022-03-12 16:29:02');
INSERT INTO `dictionary` VALUES ('4', 'huiyuandengji_types', '会员等级类型', '2', '白银会员', null, '0.96', '2022-03-12 16:29:02');
INSERT INTO `dictionary` VALUES ('5', 'huiyuandengji_types', '会员等级类型', '3', '黄金会员', null, '0.94', '2022-03-12 16:29:02');
INSERT INTO `dictionary` VALUES ('6', 'shangxia_types', '上下架', '1', '上架', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('7', 'shangxia_types', '上下架', '2', '下架', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('8', 'tushu_types', '图书类型', '1', '经典著作', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('9', 'tushu_types', '图书类型', '2', '文娱读物', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('10', 'tushu_types', '图书类型', '3', '学术研究', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('11', 'tushu_types', '图书类型', '4', '专业图书', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('12', 'tushu_collection_types', '收藏表类型', '1', '收藏', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('13', 'tushu_order_types', '订单类型', '1', '已评价', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('14', 'tushu_order_types', '订单类型', '2', '退款', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('15', 'tushu_order_types', '订单类型', '3', '已支付', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('16', 'tushu_order_types', '订单类型', '4', '已发货', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('17', 'tushu_order_types', '订单类型', '5', '已收货', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('18', 'tushu_order_payment_types', '订单支付类型', '1', '现金', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('19', 'isdefault_types', '是否默认地址', '1', '否', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('20', 'isdefault_types', '是否默认地址', '2', '是', null, null, '2022-03-12 16:29:03');
INSERT INTO `dictionary` VALUES ('21', 'tushu_types', '图书类型', '5', ' 科普读物', null, '', '2022-03-12 16:54:05');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '6', 'admin', 'users', '管理员', 'i8ajx5apohzn0imlrba7f7q4s7k01g2n', '2022-03-12 16:32:04', '2025-06-17 15:55:57');
INSERT INTO `token` VALUES ('2', '1', 'a1', 'yonghu', '用户', 'k7lxgs4vykmbaggqye1k1nvw1zqgzwsu', '2022-03-12 16:43:17', '2025-06-18 00:49:33');
INSERT INTO `token` VALUES ('3', '2', 'a2', 'yonghu', '用户', 'qi3s6mmuuwr9giuv72669vv5cml0jeps', '2025-06-17 14:56:20', '2025-06-17 16:00:11');
INSERT INTO `token` VALUES ('4', '4', '1', 'yonghu', '用户', 'mbcd56h5uh53ihxsfdv951o81xxhw0rc', '2025-06-17 16:35:31', '2025-06-17 17:35:32');
INSERT INTO `token` VALUES ('5', '5', '111', 'yonghu', '用户', '31ludfegsef3xh3f5wtrvr1slj06ww3y', '2025-06-17 17:11:55', '2025-06-17 18:11:56');

-- ----------------------------
-- Table structure for `tushu`
-- ----------------------------
DROP TABLE IF EXISTS `tushu`;
CREATE TABLE `tushu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tushu_name` varchar(200) DEFAULT NULL COMMENT '图书名称  Search111 ',
  `tushu_photo` varchar(200) DEFAULT NULL COMMENT '图书照片',
  `tushu_types` int(11) DEFAULT NULL COMMENT '图书类型 Search111',
  `tushu_kucun_number` int(11) DEFAULT NULL COMMENT '图书库存',
  `tushu_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `tushu_old_money` decimal(10,2) DEFAULT NULL COMMENT '图书原价 ',
  `tushu_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `tushu_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `tushu_content` text COMMENT '图书简介 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `tushu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='图书';

-- ----------------------------
-- Records of tushu
-- ----------------------------
INSERT INTO `tushu` VALUES ('1', '梅子熟了', 'http://localhost:8080/tushushangcheng/upload/tushu1.jpg', '1', '101', '182', '724.25', '35.94', '105', '图书简介：梅子熟了，栀子花开', '1', '1', '2022-03-12 16:30:28');
INSERT INTO `tushu` VALUES ('2', '月亮与六便士', 'http://localhost:8080/tushushangcheng/upload/tushu2.jpg', '4', '101', '306', '682.60', '175.31', '52', '图书简介：一个关于梦的故事', '1', '1', '2022-03-12 16:30:28');
INSERT INTO `tushu` VALUES ('3', '植物绘本', 'http://localhost:8080/tushushangcheng/upload/tushu3.jpg', '1', '100', '199', '612.97', '159.73', '79', '图书简介：植物的花语，花海的世界', '1', '1', '2022-03-12 16:30:28');
INSERT INTO `tushu` VALUES ('4', '我与地坛', 'http://localhost:8080/tushushangcheng/upload/tushu4.jpg', '2', '102', '178', '617.08', '466.02', '264', '图书简介：从哪里来到哪里去', '1', '1', '2022-03-12 16:30:28');
INSERT INTO `tushu` VALUES ('5', '人生是旷野', 'http://localhost:8080/tushushangcheng/upload/tushu5.jpg', '2', '107', '336', '803.38', '480.31', '480', '图书简介：人生的轨迹真的不可想象', '1', '1', '2022-03-12 16:30:28');

-- ----------------------------
-- Table structure for `tushu_collection`
-- ----------------------------
DROP TABLE IF EXISTS `tushu_collection`;
CREATE TABLE `tushu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tushu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='图书收藏';

-- ----------------------------
-- Records of tushu_collection
-- ----------------------------
INSERT INTO `tushu_collection` VALUES ('1', '1', '3', '1', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `tushu_collection` VALUES ('2', '2', '3', '1', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `tushu_collection` VALUES ('3', '3', '3', '1', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `tushu_collection` VALUES ('4', '4', '3', '1', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `tushu_collection` VALUES ('5', '5', '3', '1', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `tushu_collection` VALUES ('6', '4', '1', '1', '2022-03-12 16:50:35', '2022-03-12 16:50:35');
INSERT INTO `tushu_collection` VALUES ('7', '5', '1', '1', '2022-03-12 16:52:35', '2022-03-12 16:52:35');

-- ----------------------------
-- Table structure for `tushu_commentback`
-- ----------------------------
DROP TABLE IF EXISTS `tushu_commentback`;
CREATE TABLE `tushu_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tushu_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='图书评价';

-- ----------------------------
-- Records of tushu_commentback
-- ----------------------------
INSERT INTO `tushu_commentback` VALUES ('1', '1', '1', '评价内容1', '2022-03-12 16:30:28', '回复信息1', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `tushu_commentback` VALUES ('2', '2', '1', '评价内容2', '2022-03-12 16:30:28', '回复信息2', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `tushu_commentback` VALUES ('3', '3', '3', '评价内容3', '2022-03-12 16:30:28', '回复信息3', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `tushu_commentback` VALUES ('4', '4', '1', '评价内容4', '2022-03-12 16:30:28', '回复信息4', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `tushu_commentback` VALUES ('5', '5', '1', '评价内容5', '2022-03-12 16:30:28', '回复信息5', '2022-03-12 16:30:28', '2022-03-12 16:30:28');
INSERT INTO `tushu_commentback` VALUES ('6', '4', '1', '好得很', '2022-03-12 16:56:44', null, null, '2022-03-12 16:56:44');

-- ----------------------------
-- Table structure for `tushu_order`
-- ----------------------------
DROP TABLE IF EXISTS `tushu_order`;
CREATE TABLE `tushu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收获地址 ',
  `tushu_id` int(11) DEFAULT NULL COMMENT '图书',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `tushu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `tushu_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `tushu_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `tushu_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `tushu_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='图书订单';

-- ----------------------------
-- Records of tushu_order
-- ----------------------------
INSERT INTO `tushu_order` VALUES ('1', '1647075085960', '3', '2', '1', '1', '171.80', null, null, '2', '1', '2022-03-12 16:51:26', '2022-03-12 16:51:26');
INSERT INTO `tushu_order` VALUES ('2', '1647075111994', '1', '2', '1', '1', '171.80', null, null, '3', '1', '2022-03-12 16:51:52', '2022-03-12 16:51:52');
INSERT INTO `tushu_order` VALUES ('3', '1647075111994', '1', '3', '1', '3', '469.61', null, null, '3', '1', '2022-03-12 16:51:52', '2022-03-12 16:51:52');
INSERT INTO `tushu_order` VALUES ('4', '1647075111994', '1', '4', '1', '2', '913.40', '顺丰快递', 'sf5674561', '1', '1', '2022-03-12 16:51:52', '2022-03-12 16:51:52');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('6', 'admin', 'admin', '管理员', '2022-05-02 14:51:13');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', 'a1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/tushushangcheng/upload/yonghu1.jpg', '1', '1@qq.com', '10277.51', '1766.42', '1690.55', '1', '2022-03-12 16:30:28');
INSERT INTO `yonghu` VALUES ('2', 'a2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/tushushangcheng/upload/yonghu2.jpg', '2', '2@qq.com', '192.94', '919.53', '187.07', '1', '2022-03-12 16:30:28');
INSERT INTO `yonghu` VALUES ('3', 'a3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/tushushangcheng/upload/yonghu3.jpg', '2', '3@qq.com', '600.24', '835.99', '428.92', '1', '2022-03-12 16:30:28');
INSERT INTO `yonghu` VALUES ('4', '1', '1', '1', '', '1', null, null, '', '0.00', '0.00', '0.00', '1', '2025-06-17 16:35:26');
INSERT INTO `yonghu` VALUES ('5', '111', '1', '1', '16625663535', '123422781234567801', null, null, '2763423159@qq.com', '0.00', '0.00', '0.00', '1', '2025-06-17 17:11:42');
