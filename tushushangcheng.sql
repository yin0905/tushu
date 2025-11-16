/*
Navicat MySQL Data Transfer

Source Server         : lyy
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : tushushangcheng

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2025-06-24 11:15:18
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
INSERT INTO `address` VALUES ('1', '1', '陈方', '17703786901', '广州航海学院', '2', '2024-12-01 16:30:28', '2025-01-02 16:52:47', '2024-12-01 16:30:28');
INSERT INTO `address` VALUES ('2', '2', '陈世杰', '17703786902', '广东省广州市红山街道110号', '1', '2024-12-05 16:30:28', '2025-01-12 16:30:28', '2024-12-05 16:30:28');
INSERT INTO `address` VALUES ('3', '1', '赵吹吹', '17703786903', '广州航海学院北区', '1', '2024-12-12 16:30:28', '2024-12-13 16:52:42', '2024-12-12 16:30:28');
INSERT INTO `address` VALUES ('4', '2', '陈七', '17703786904', '广州航海学院南区', '1', '2025-01-12 16:30:28', '2025-02-12 16:30:28', '2025-01-12 16:30:28');
INSERT INTO `address` VALUES ('5', '3', '百事', '17703786905', '广东省广州市黄埔区', '1', '2025-03-12 16:30:28', '2025-04-12 16:30:28', '2025-03-12 16:30:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '6', '5', '1', '2025-06-18 23:06:26', null, '2025-06-18 23:06:26');

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '轮播图1', 'http://localhost:8080/tushushangcheng/upload/config1.jpg');
INSERT INTO `config` VALUES ('2', '轮播图2', 'http://localhost:8080/tushushangcheng/upload/config2.jpg');
INSERT INTO `config` VALUES ('3', '轮播图3', 'http://localhost:8080/tushushangcheng/upload/config3.jpg');
INSERT INTO `config` VALUES ('5', '图书1', 'http://localhost:8080/tushushangcheng/upload/1750339387522.jpg');

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
INSERT INTO `dictionary` VALUES ('1', 'sex_types', '性别类型', '1', '男', null, null, '2025-01-12 16:29:02');
INSERT INTO `dictionary` VALUES ('2', 'sex_types', '性别类型', '2', '女', null, null, '2025-01-12 16:29:02');
INSERT INTO `dictionary` VALUES ('3', 'huiyuandengji_types', '会员等级类型', '1', '青铜会员', null, '0.98', '2025-01-12 16:29:02');
INSERT INTO `dictionary` VALUES ('4', 'huiyuandengji_types', '会员等级类型', '2', '白银会员', null, '0.96', '2025-01-12 16:29:02');
INSERT INTO `dictionary` VALUES ('5', 'huiyuandengji_types', '会员等级类型', '3', '黄金会员', null, '0.94', '2025-01-12 16:29:02');
INSERT INTO `dictionary` VALUES ('6', 'shangxia_types', '上下架', '1', '上架', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('7', 'shangxia_types', '上下架', '2', '下架', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('8', 'tushu_types', '图书类型', '1', '经典著作', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('9', 'tushu_types', '图书类型', '2', '文娱读物', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('10', 'tushu_types', '图书类型', '3', '学术研究', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('11', 'tushu_types', '图书类型', '4', '专业图书', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('12', 'tushu_collection_types', '收藏表类型', '1', '收藏', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('13', 'tushu_order_types', '订单类型', '1', '已评价', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('14', 'tushu_order_types', '订单类型', '2', '退款', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('15', 'tushu_order_types', '订单类型', '3', '已支付', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('16', 'tushu_order_types', '订单类型', '4', '已发货', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('17', 'tushu_order_types', '订单类型', '5', '已收货', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('18', 'tushu_order_payment_types', '订单支付类型', '1', '现金', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('19', 'isdefault_types', '是否默认地址', '1', '否', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('20', 'isdefault_types', '是否默认地址', '2', '是', null, null, '2025-01-12 16:29:03');
INSERT INTO `dictionary` VALUES ('21', 'tushu_types', '图书类型', '5', ' 科普读物', null, '', '2025-01-12 16:54:05');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '6', 'admin', 'users', '管理员', 'jcouytiuqq70n9gys307o6aki0cf3abw', '2022-03-12 16:32:04', '2025-06-20 18:49:39');
INSERT INTO `token` VALUES ('2', '1', 'a1', 'yonghu', '用户', 'bmndtqzgonj3wcgmhre1df99rainz0av', '2022-03-12 16:43:17', '2025-06-19 00:44:50');
INSERT INTO `token` VALUES ('3', '2', 'a2', 'yonghu', '用户', 'qi3s6mmuuwr9giuv72669vv5cml0jeps', '2025-06-17 14:56:20', '2025-06-17 16:00:11');
INSERT INTO `token` VALUES ('4', '4', 'chengqi', 'yonghu', '用户', 'mbcd56h5uh53ihxsfdv951o81xxhw0rc', '2025-06-17 16:35:31', '2025-06-17 17:35:32');
INSERT INTO `token` VALUES ('5', '5', 'baishi', 'yonghu', '用户', '31ludfegsef3xh3f5wtrvr1slj06ww3y', '2025-06-17 17:11:55', '2025-06-17 18:11:56');
INSERT INTO `token` VALUES ('6', '6', 'zhangyu', 'yonghu', '用户', 'r8jgxkgkg640rgfe8hy1mxqex7jcu40r', '2025-06-18 21:38:09', '2025-06-19 23:26:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='图书';

-- ----------------------------
-- Records of tushu
-- ----------------------------
INSERT INTO `tushu` VALUES ('1', '梅子熟了', 'http://localhost:8080/tushushangcheng/upload/tushu1.jpg', '1', '101', '182', '724.25', '35.94', '105', '<p><span style=\"color: var(--md-box-samantha-deep-text-color);\">作者</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：星野梅</span></p><p><span style=\"color: var(--md-box-samantha-deep-text-color);\">简介</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：星野梅以细腻笔触，借 “梅子熟了” 这一意象，讲述青春里那些像青梅滋味般酸甜交织、朦胧又难忘的情愫与故事 。</span></p>', '1', '1', '2024-12-12 16:30:28');
INSERT INTO `tushu` VALUES ('2', '月亮与六便士', 'http://localhost:8080/tushushangcheng/upload/tushu2.jpg', '4', '101', '306', '682.60', '175.31', '52', '<p><span style=\"color: var(--md-box-samantha-deep-text-color);\">作者</span>：毛姆</p><p><span style=\"color: var(--md-box-samantha-deep-text-color);\">简介</span>：毛姆化身灵魂观察者，透过《月亮与六便士》，展现一个人抛弃世俗羁绊，奔赴内心艺术月亮、追逐纯粹梦想的挣扎与觉醒之路 。</p>', '1', '1', '2024-12-12 16:30:28');
INSERT INTO `tushu` VALUES ('3', '植物绘本', 'http://localhost:8080/tushushangcheng/upload/tushu3.jpg', '5', '100', '199', '612.97', '159.73', '79', '<p><span style=\"color: var(--md-box-samantha-deep-text-color);\">作者</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：叶语森</span></p><p><span style=\"color: var(--md-box-samantha-deep-text-color);\">简介</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：叶语森用充满童趣与诗意的画和文字，在《植物绘本》里为每种植物赋予独特性格，带读者走进奇妙又治愈的植物小世界 。</span></p>', '1', '1', '2024-12-12 16:30:28');
INSERT INTO `tushu` VALUES ('4', '我与地坛', 'http://localhost:8080/tushushangcheng/upload/tushu4.jpg', '2', '102', '178', '617.08', '466.02', '266', '<p><span style=\"color: var(--md-box-samantha-deep-text-color);\">作者</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：史铁生</span></p><p><span style=\"color: var(--md-box-samantha-deep-text-color);\">简介</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：以深沉且饱含生命哲思的文字，在《我与地坛》中，记录与地坛相伴岁月里对苦难、生死、人生意义的思索与感悟 。</span></p>', '1', '1', '2024-12-12 16:30:28');
INSERT INTO `tushu` VALUES ('5', '人生是旷野', 'http://localhost:8080/tushushangcheng/upload/tushu5.jpg', '5', '107', '336', '803.38', '480.31', '488', '<p><span style=\"color: var(--md-box-samantha-deep-text-color);\">作者</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：风栖</span></p><p><span style=\"color: var(--md-box-samantha-deep-text-color);\">简介</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：风栖借《人生是旷野》，以洒脱又温暖的视角，鼓励人们挣脱 “人生是轨道” 的束缚，勇敢奔赴旷野般广阔、未知又充满可能的人生旅程 。</span></p>', '1', '1', '2024-12-12 16:30:28');
INSERT INTO `tushu` VALUES ('6', '红楼梦', 'http://localhost:8080/tushushangcheng/upload/tushu6.jpg', '1', '10000', '60', '109.90', '69.90', '19', '<p><span style=\"color: var(--md-box-samantha-deep-text-color);\">作者</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：曹雪芹</span></p><p><span style=\"color: var(--md-box-samantha-deep-text-color);\">简介</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：以古典笔触重塑《红楼梦》，在细腻勾勒贾府兴衰、儿女情长间，展现封建社会的人情百态与家族命运的跌宕沉浮&nbsp;</span></p>', '1', '1', '2025-06-19 21:53:32');
INSERT INTO `tushu` VALUES ('7', '老人与海', 'http://localhost:8080/tushushangcheng/upload/tushu7.jpg', '1', '900', '69', '78.99', '63.99', '188', '<p><span style=\"color: var(--md-box-samantha-deep-text-color);\">作者</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：海明威</span></p><p><span style=\"color: var(--md-box-samantha-deep-text-color);\">简介</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：《老人与海》，用简洁却充满力量的文字，刻画老人与大海、与马林鱼博弈的坚韧，诠释永不言败的硬汉精神 。</span></p>', '1', '1', '2025-06-19 21:54:38');
INSERT INTO `tushu` VALUES ('8', '经济学原理', 'http://localhost:8080/tushushangcheng/upload/tushu8.jpg', '4', '80', '70', '120.05', '90.00', '134', '<p><span style=\"color: var(--md-box-samantha-deep-text-color);\">作者</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：数知言</span></p><p><span style=\"color: var(--md-box-samantha-deep-text-color);\">简介</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：数知言以通俗好懂的方式，在《经济学原理》里拆解复杂经济规律，让读者轻松触摸经济学脉搏，看懂生活里的经济逻辑 。</span></p>', '1', '1', '2025-06-19 21:55:23');
INSERT INTO `tushu` VALUES ('9', '认知觉醒', 'http://localhost:8080/tushushangcheng/upload/tushu10.jpg', '3', '903', '78', '109.00', '77.90', '672', '<p><span style=\"color: var(--md-box-samantha-deep-text-color);\">作者</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：思启</span></p><p><span style=\"color: var(--md-box-samantha-deep-text-color);\">简介</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：思启在《认知觉醒》中，用贴合生活的案例与深度思考，助力读者打破思维茧房，开启自我认知升级、成长蜕变的大门 。</span></p>', '1', '1', '2025-06-19 21:56:14');
INSERT INTO `tushu` VALUES ('10', '废话 日记', 'http://localhost:8080/tushushangcheng/upload/tushu9.jpg', '2', '364', '30', '77.99', '55.80', '179', '<p><span style=\"color: var(--md-box-samantha-deep-text-color);\">作者</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：言絮</span></p><p><span style=\"color: var(--md-box-samantha-deep-text-color);\">简介</span><span style=\"color: rgba(0, 0, 0, 0.85);\">：言絮以随性又真实的 “废话” 日常，在《废话日记》里记录平凡生活里的小情绪、小趣味，传递对生活质朴又鲜活的热爱 。</span></p>', '1', '1', '2025-06-19 21:57:05');

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
INSERT INTO `tushu_collection` VALUES ('1', '1', '3', '1', '2025-03-12 16:30:28', '2025-03-12 16:30:28');
INSERT INTO `tushu_collection` VALUES ('2', '2', '3', '1', '2025-03-12 16:30:28', '2025-03-12 16:30:28');
INSERT INTO `tushu_collection` VALUES ('3', '3', '3', '1', '2025-03-12 16:30:28', '2025-03-12 16:30:28');
INSERT INTO `tushu_collection` VALUES ('4', '4', '3', '1', '2025-03-12 16:30:28', '2025-03-12 16:30:28');
INSERT INTO `tushu_collection` VALUES ('5', '5', '3', '1', '2025-03-12 16:30:28', '2025-03-12 16:30:28');
INSERT INTO `tushu_collection` VALUES ('6', '4', '1', '1', '2025-03-12 16:50:35', '2025-03-12 16:50:35');
INSERT INTO `tushu_collection` VALUES ('7', '5', '1', '1', '2025-03-12 16:52:35', '2025-03-12 16:52:35');

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
INSERT INTO `tushu_commentback` VALUES ('1', '1', '1', '值得阅读，内容很', '2022-03-12 16:30:28', '谢谢，合作愉快！', '2025-03-12 16:30:28', '2025-03-12 16:30:28');
INSERT INTO `tushu_commentback` VALUES ('2', '2', '1', '哼不错，值得合作。', '2022-03-12 16:30:28', '合作愉快！', '2025-03-12 16:30:28', '2025-03-12 16:30:28');
INSERT INTO `tushu_commentback` VALUES ('3', '3', '3', '这本书找了好久，终于在这个平台找个资源了', '2022-03-12 16:30:28', '该平台资源丰富喔！', '2025-03-12 16:30:28', '2025-03-12 16:30:28');
INSERT INTO `tushu_commentback` VALUES ('4', '4', '1', '值得信赖的平台', '2022-03-12 16:30:28', '感谢亲亲！！！', '2025-03-12 16:30:28', '2025-03-12 16:30:28');
INSERT INTO `tushu_commentback` VALUES ('5', '5', '1', '书本质量不错，值得回购', '2022-03-12 16:30:28', '谢谢！', '2025-03-12 16:30:28', '2025-03-12 16:30:28');
INSERT INTO `tushu_commentback` VALUES ('6', '4', '1', '书本好得很，不过快递慢了点', '2022-03-12 16:56:44', '好的，下次会尽早发货', null, '2025-03-12 16:56:44');

-- ----------------------------
-- Table structure for `tushu_order`
-- ----------------------------
DROP TABLE IF EXISTS `tushu_order`;
CREATE TABLE `tushu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
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
INSERT INTO `tushu_order` VALUES ('1', '1647075085960', '3', '2', '1', '1', '171.80', '京东快递', null, '2', '1', '2025-03-12 16:51:26', '2025-03-12 16:51:26');
INSERT INTO `tushu_order` VALUES ('2', '1647075111994', '1', '2', '1', '1', '171.80', '顺丰快递', null, '3', '1', '2025-03-12 16:51:52', '2025-03-12 16:51:52');
INSERT INTO `tushu_order` VALUES ('3', '1647075111994', '1', '3', '1', '3', '469.61', '申通快递', null, '3', '1', '2025-03-12 16:51:52', '2025-03-12 16:51:52');
INSERT INTO `tushu_order` VALUES ('4', '1647075111994', '1', '4', '1', '2', '913.40', '顺丰快递', 'sf5674561', '1', '1', '2025-03-12 16:51:52', '2025-03-12 16:51:52');

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
INSERT INTO `users` VALUES ('6', 'admin', 'admin', '管理员', '2024-05-02 14:51:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', 'a1', '123456', '君凡', '17703786901', '410224199610232001', 'http://localhost:8080/tushushangcheng/upload/yonghu1.jpg', '1', '1@qq.com', '10277.51', '1766.42', '1690.55', '1', '2024-12-12 16:30:28');
INSERT INTO `yonghu` VALUES ('2', 'a2', '123456', '赵启流', '17703786902', '410224199610232002', 'http://localhost:8080/tushushangcheng/upload/yonghu2.jpg', '2', '2@qq.com', '192.94', '919.53', '187.07', '1', '2024-12-12 16:30:28');
INSERT INTO `yonghu` VALUES ('3', 'a3', '123456', '陈七', '17703786903', '410224199610232003', 'http://localhost:8080/tushushangcheng/upload/yonghu3.jpg', '2', '3@qq.com', '600.24', '835.99', '428.92', '1', '2024-12-12 16:30:28');
INSERT INTO `yonghu` VALUES ('4', '1', '123456', '百事', '18867554332', '410224199911232003', 'http://localhost:8080/tushushangcheng/upload/1750341533484.jpg', '2', '2678564136@qq.com', '0.00', '0.00', '0.00', '1', '2024-12-17 16:35:26');
INSERT INTO `yonghu` VALUES ('5', '111', '123456', '赵一名', '16625663535', '410224199910232003', 'http://localhost:8080/tushushangcheng/upload/1750341522571.jpg', '2', '2763423159@qq.com', '0.00', '0.00', '0.00', '1', '2024-12-17 17:11:42');
INSERT INTO `yonghu` VALUES ('6', '11', '11', '刘怡', '16657759450', '410224199710232003', 'http://localhost:8080/tushushangcheng/upload/1750341484125.jpg', '2', '2109339857@qq.com', '0.00', '0.00', '0.00', '1', '2025-06-18 21:37:48');
