/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-05-14 23:45:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mm_admin_config
-- ----------------------------
DROP TABLE IF EXISTS `mm_admin_config`;
CREATE TABLE `mm_admin_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `is_language` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否开启多语言版本',
  `is_mobile` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否开启PM数据同步',
  `is_only_mobile` tinyint(5) NOT NULL COMMENT '是否只开启移动站',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_admin_config
-- ----------------------------

-- ----------------------------
-- Table structure for mm_admin_emailcontent
-- ----------------------------
DROP TABLE IF EXISTS `mm_admin_emailcontent`;
CREATE TABLE `mm_admin_emailcontent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `link_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_admin_emailcontent
-- ----------------------------

-- ----------------------------
-- Table structure for mm_admin_language
-- ----------------------------
DROP TABLE IF EXISTS `mm_admin_language`;
CREATE TABLE `mm_admin_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_admin_language
-- ----------------------------

-- ----------------------------
-- Table structure for mm_atm
-- ----------------------------
DROP TABLE IF EXISTS `mm_atm`;
CREATE TABLE `mm_atm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `is_url` tinyint(5) NOT NULL DEFAULT '0',
  `url_controller` varchar(255) DEFAULT NULL,
  `url_action` varchar(255) DEFAULT NULL,
  `url_para` varchar(255) DEFAULT NULL,
  `weburl` varchar(255) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_atm
-- ----------------------------

-- ----------------------------
-- Table structure for mm_atm_class
-- ----------------------------
DROP TABLE IF EXISTS `mm_atm_class`;
CREATE TABLE `mm_atm_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `show_id` varchar(255) DEFAULT NULL COMMENT '展现形式',
  `class_name` varchar(255) DEFAULT NULL,
  `content` text,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  `list_order` int(10) unsigned DEFAULT '1',
  `list_root` int(10) unsigned DEFAULT '0',
  `power` tinyint(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_atm_class
-- ----------------------------

-- ----------------------------
-- Table structure for mm_common
-- ----------------------------
DROP TABLE IF EXISTS `mm_common`;
CREATE TABLE `mm_common` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_childs` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否开启子集',
  `common_id` int(10) NOT NULL DEFAULT '0' COMMENT '从属ID',
  `title` varchar(255) DEFAULT NULL,
  `pc_controller` varchar(255) DEFAULT '',
  `mob_controller` varchar(255) DEFAULT '' COMMENT '控制器',
  `introduce` text,
  `content` mediumtext,
  `pic_path` varchar(255) DEFAULT NULL,
  `editor_used` tinyint(5) unsigned NOT NULL DEFAULT '1',
  `pic_used` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `introduce_used` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_common
-- ----------------------------

-- ----------------------------
-- Table structure for mm_cooper
-- ----------------------------
DROP TABLE IF EXISTS `mm_cooper`;
CREATE TABLE `mm_cooper` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` text,
  `nickname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `webip` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='招商加盟';

-- ----------------------------
-- Records of mm_cooper
-- ----------------------------

-- ----------------------------
-- Table structure for mm_guest_pr
-- ----------------------------
DROP TABLE IF EXISTS `mm_guest_pr`;
CREATE TABLE `mm_guest_pr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_guest_pr
-- ----------------------------

-- ----------------------------
-- Table structure for mm_guest_pv
-- ----------------------------
DROP TABLE IF EXISTS `mm_guest_pv`;
CREATE TABLE `mm_guest_pv` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_guest_pv
-- ----------------------------

-- ----------------------------
-- Table structure for mm_link
-- ----------------------------
DROP TABLE IF EXISTS `mm_link`;
CREATE TABLE `mm_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) DEFAULT NULL,
  `open_style` varchar(255) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_link
-- ----------------------------

-- ----------------------------
-- Table structure for mm_member
-- ----------------------------
DROP TABLE IF EXISTS `mm_member`;
CREATE TABLE `mm_member` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bd_id` varchar(255) NOT NULL DEFAULT '0' COMMENT '百度ID',
  `qq_id` varchar(255) DEFAULT NULL COMMENT 'QQ ID',
  `sina_id` varchar(255) DEFAULT NULL COMMENT '新浪ID',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `logins` int(10) NOT NULL DEFAULT '0',
  `final_login` varchar(255) DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT '1',
  `addtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_member
-- ----------------------------

-- ----------------------------
-- Table structure for mm_member_address
-- ----------------------------
DROP TABLE IF EXISTS `mm_member_address`;
CREATE TABLE `mm_member_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `nickname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_default` tinyint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for mm_member_field
-- ----------------------------
DROP TABLE IF EXISTS `mm_member_field`;
CREATE TABLE `mm_member_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `field_title` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `list_order` int(10) DEFAULT '10',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_member_field
-- ----------------------------

-- ----------------------------
-- Table structure for mm_msg
-- ----------------------------
DROP TABLE IF EXISTS `mm_msg`;
CREATE TABLE `mm_msg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mark` varchar(255) DEFAULT NULL COMMENT '栏目标识',
  `belong_id` int(10) NOT NULL DEFAULT '0' COMMENT '从属ID',
  `title` text,
  `content` text,
  `nickname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `qqno` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `webip` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `replytime` varchar(255) DEFAULT NULL,
  `reply_content` text,
  `is_read` tinyint(5) NOT NULL DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='在线报名表';

-- ----------------------------
-- Records of mm_msg
-- ----------------------------

-- ----------------------------
-- Table structure for mm_msg_field
-- ----------------------------
DROP TABLE IF EXISTS `mm_msg_field`;
CREATE TABLE `mm_msg_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `field_title` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `list_order` int(10) DEFAULT '10',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `is_bt` tinyint(5) NOT NULL DEFAULT '1' COMMENT '是否必填',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_msg_field
-- ----------------------------

-- ----------------------------
-- Table structure for mm_news
-- ----------------------------
DROP TABLE IF EXISTS `mm_news`;
CREATE TABLE `mm_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL DEFAULT '0',
  `class_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `price` int(10) DEFAULT NULL,
  `link_video` text,
  `introduce` text,
  `keywords` text,
  `description` text,
  `pic_path` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `clicks` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `is_home` tinyint(5) DEFAULT '0',
  `is_album` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否多图',
  `is_mobile` tinyint(5) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `overtime` int(10) NOT NULL DEFAULT '0' COMMENT '报名截止时间',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_news
-- ----------------------------

-- ----------------------------
-- Table structure for mm_news_class
-- ----------------------------
DROP TABLE IF EXISTS `mm_news_class`;
CREATE TABLE `mm_news_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL DEFAULT '0',
  `class_name` varchar(255) DEFAULT NULL,
  `content` text,
  `pic_path` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  `list_order` int(10) unsigned DEFAULT '1',
  `status` tinyint(5) NOT NULL DEFAULT '1',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_news_class
-- ----------------------------

-- ----------------------------
-- Table structure for mm_news_config
-- ----------------------------
DROP TABLE IF EXISTS `mm_news_config`;
CREATE TABLE `mm_news_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `is_class` tinyint(5) NOT NULL DEFAULT '0',
  `class_depth` tinyint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `pc_controller` varchar(255) DEFAULT '',
  `mob_controller` varchar(255) DEFAULT '' COMMENT '控制器',
  `show_value` tinyint(5) NOT NULL DEFAULT '1' COMMENT '展示形式0,1,2,3',
  `show_value_line` tinyint(5) NOT NULL DEFAULT '0' COMMENT '底纹效果0,1,2,3',
  `show_value_font` tinyint(5) NOT NULL DEFAULT '0' COMMENT '文字效果0,1',
  `show_value_inflash` tinyint(5) NOT NULL DEFAULT '0' COMMENT '列表入场动画',
  `show_value_textpadding` tinyint(5) NOT NULL DEFAULT '0' COMMENT '列表文字缩进',
  `album_value` varchar(255) DEFAULT NULL,
  `pic_value` varchar(255) DEFAULT NULL,
  `class_pic_value` varchar(255) DEFAULT NULL,
  `video_value` varchar(255) DEFAULT NULL,
  `file_value` varchar(255) DEFAULT NULL,
  `is_class_introduce` tinyint(5) NOT NULL DEFAULT '0',
  `is_title` tinyint(5) NOT NULL DEFAULT '0',
  `is_introduce` tinyint(5) NOT NULL DEFAULT '0',
  `is_link_video` tinyint(5) NOT NULL DEFAULT '0',
  `is_content` tinyint(5) NOT NULL DEFAULT '0',
  `is_pic` tinyint(5) NOT NULL DEFAULT '0',
  `is_class_pic` tinyint(5) NOT NULL DEFAULT '0',
  `is_video` tinyint(5) NOT NULL DEFAULT '0',
  `is_file` tinyint(5) NOT NULL DEFAULT '0',
  `is_seo` tinyint(5) NOT NULL DEFAULT '0',
  `is_album` tinyint(5) NOT NULL DEFAULT '0' COMMENT '相册开关',
  `is_msg` tinyint(5) NOT NULL DEFAULT '0' COMMENT '报名开关0,1',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_news_config
-- ----------------------------

-- ----------------------------
-- Table structure for mm_news_msg
-- ----------------------------
DROP TABLE IF EXISTS `mm_news_msg`;
CREATE TABLE `mm_news_msg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `news_id` int(10) DEFAULT '0',
  `webip` varchar(255) DEFAULT NULL,
  `content` text,
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `addtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_news_msg
-- ----------------------------

-- ----------------------------
-- Table structure for mm_photo
-- ----------------------------
DROP TABLE IF EXISTS `mm_photo`;
CREATE TABLE `mm_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) DEFAULT NULL COMMENT '所属栏目表名',
  `belong_id` int(10) NOT NULL DEFAULT '0' COMMENT '所属信息的ID',
  `title` varchar(255) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `islock` tinyint(5) NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COMMENT='相册';

-- ----------------------------
-- Records of mm_photo
-- ----------------------------

-- ----------------------------
-- Table structure for mm_shop_config
-- ----------------------------
DROP TABLE IF EXISTS `mm_shop_config`;
CREATE TABLE `mm_shop_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `is_class` tinyint(5) NOT NULL DEFAULT '0',
  `nav_name` varchar(255) DEFAULT NULL COMMENT '内页栏目名称',
  `class_depth` tinyint(5) NOT NULL DEFAULT '0',
  `show_value` tinyint(5) NOT NULL DEFAULT '1' COMMENT '展示形式0,1,2',
  `show_value_frame` tinyint(5) NOT NULL DEFAULT '0' COMMENT '框体样式',
  `album_value` varchar(255) DEFAULT NULL,
  `pic_value` varchar(255) DEFAULT NULL,
  `class_pic_value` varchar(255) DEFAULT NULL,
  `video_value` varchar(255) DEFAULT NULL,
  `file_value` varchar(255) DEFAULT NULL,
  `is_bill` tinyint(5) NOT NULL DEFAULT '0',
  `bill_type` varchar(255) DEFAULT NULL,
  `is_post` tinyint(5) NOT NULL DEFAULT '0' COMMENT '开启邮费',
  `post_cost` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '邮费金额',
  `is_class_introduce` tinyint(5) NOT NULL DEFAULT '0',
  `is_link_video` tinyint(5) NOT NULL DEFAULT '0',
  `is_introduce` tinyint(5) NOT NULL DEFAULT '0',
  `is_content` tinyint(5) NOT NULL DEFAULT '0',
  `is_pic` tinyint(5) NOT NULL DEFAULT '0',
  `is_class_pic` tinyint(5) NOT NULL DEFAULT '0',
  `is_video` tinyint(5) NOT NULL DEFAULT '0',
  `is_file` tinyint(5) NOT NULL DEFAULT '0',
  `is_seo` tinyint(5) NOT NULL DEFAULT '0',
  `is_album` tinyint(5) NOT NULL DEFAULT '0',
  `is_para` tinyint(5) NOT NULL DEFAULT '0',
  `is_msg` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否开启在线报名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_shop_config
-- ----------------------------

-- ----------------------------
-- Table structure for mm_shop_product
-- ----------------------------
DROP TABLE IF EXISTS `mm_shop_product`;
CREATE TABLE `mm_shop_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` varchar(255) DEFAULT NULL,
  `para_ids` varchar(255) DEFAULT NULL COMMENT '属性id',
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sell_count` int(10) NOT NULL DEFAULT '0' COMMENT '销量',
  `attribute` text,
  `content` mediumtext,
  `link_video` text,
  `introduce` text,
  `keywords` text,
  `description` text,
  `pic_path` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `clicks` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `is_home` tinyint(5) NOT NULL DEFAULT '0',
  `is_album` tinyint(5) NOT NULL DEFAULT '0',
  `is_mobile` tinyint(5) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_shop_product
-- ----------------------------

-- ----------------------------
-- Table structure for mm_shop_product_cart
-- ----------------------------
DROP TABLE IF EXISTS `mm_shop_product_cart`;
CREATE TABLE `mm_shop_product_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `pro_id` int(10) NOT NULL DEFAULT '0',
  `content` text,
  `buy_count` int(10) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_shop_product_cart
-- ----------------------------

-- ----------------------------
-- Table structure for mm_shop_product_class
-- ----------------------------
DROP TABLE IF EXISTS `mm_shop_product_class`;
CREATE TABLE `mm_shop_product_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `content` text,
  `para_ids` varchar(255) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  `list_order` int(10) unsigned DEFAULT '1',
  `is_home` tinyint(5) NOT NULL DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '1',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_shop_product_class
-- ----------------------------

-- ----------------------------
-- Table structure for mm_shop_product_like
-- ----------------------------
DROP TABLE IF EXISTS `mm_shop_product_like`;
CREATE TABLE `mm_shop_product_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='收藏';

-- ----------------------------
-- Records of mm_shop_product_like
-- ----------------------------

-- ----------------------------
-- Table structure for mm_shop_product_msg
-- ----------------------------
DROP TABLE IF EXISTS `mm_shop_product_msg`;
CREATE TABLE `mm_shop_product_msg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `order_id` int(10) NOT NULL DEFAULT '0',
  `content` text,
  `re_content` text,
  `re_time` int(10) NOT NULL DEFAULT '0',
  `score` tinyint(5) NOT NULL DEFAULT '0',
  `webip` varchar(255) DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_shop_product_msg
-- ----------------------------

-- ----------------------------
-- Table structure for mm_shop_product_order
-- ----------------------------
DROP TABLE IF EXISTS `mm_shop_product_order`;
CREATE TABLE `mm_shop_product_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pay_type` tinyint(5) NOT NULL DEFAULT '0' COMMENT '0货到付款1在线支付',
  `trade_type` tinyint(5) NOT NULL DEFAULT '0' COMMENT '支付端0支付宝1聚合收银台100关闭订单',
  `mid` int(10) NOT NULL DEFAULT '0',
  `address` text,
  `postcode` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `content` text,
  `content_admin` text,
  `bill_kind` varchar(255) DEFAULT NULL COMMENT '发票种类：个人、公司',
  `bill_title` varchar(255) DEFAULT NULL COMMENT '发票title',
  `bill_type` varchar(255) DEFAULT NULL COMMENT '发票类型：餐饮、酒店……',
  `post_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_no` varchar(255) DEFAULT NULL,
  `trade_no` varchar(255) DEFAULT NULL COMMENT '交易号',
  `status` tinyint(5) NOT NULL DEFAULT '0' COMMENT '0未支付1已支付2已发货3已完成4已关闭',
  `is_msg` tinyint(5) NOT NULL DEFAULT '0',
  `time_add` int(10) NOT NULL DEFAULT '0',
  `time_pay` int(10) NOT NULL DEFAULT '0',
  `time_send` int(10) NOT NULL DEFAULT '0',
  `time_over` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_shop_product_order
-- ----------------------------

-- ----------------------------
-- Table structure for mm_shop_product_order_pros
-- ----------------------------
DROP TABLE IF EXISTS `mm_shop_product_order_pros`;
CREATE TABLE `mm_shop_product_order_pros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `pro_title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `buy_count` int(10) NOT NULL DEFAULT '0',
  `is_msg` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否评价',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_shop_product_order_pros
-- ----------------------------

-- ----------------------------
-- Table structure for mm_shop_product_para
-- ----------------------------
DROP TABLE IF EXISTS `mm_shop_product_para`;
CREATE TABLE `mm_shop_product_para` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  `list_order` int(10) unsigned DEFAULT '1',
  `list_root` int(10) unsigned DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_shop_product_para
-- ----------------------------

-- ----------------------------
-- Table structure for mm_shop_product_paylog
-- ----------------------------
DROP TABLE IF EXISTS `mm_shop_product_paylog`;
CREATE TABLE `mm_shop_product_paylog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `trade_type` tinyint(5) DEFAULT '0' COMMENT '支付端0支付宝1聚合收银台',
  `trade_no` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_shop_product_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for mm_user
-- ----------------------------
DROP TABLE IF EXISTS `mm_user`;
CREATE TABLE `mm_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `group_id` tinyint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_user
-- ----------------------------

-- ----------------------------
-- Table structure for mm_user_group
-- ----------------------------
DROP TABLE IF EXISTS `mm_user_group`;
CREATE TABLE `mm_user_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `group_keys` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_user_group
-- ----------------------------

-- ----------------------------
-- Table structure for mm_web_mobile_color
-- ----------------------------
DROP TABLE IF EXISTS `mm_web_mobile_color`;
CREATE TABLE `mm_web_mobile_color` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `top` varchar(255) DEFAULT NULL,
  `nav` varchar(255) DEFAULT NULL,
  `foot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_web_mobile_color
-- ----------------------------

-- ----------------------------
-- Table structure for mm_web_mobile_foot
-- ----------------------------
DROP TABLE IF EXISTS `mm_web_mobile_foot`;
CREATE TABLE `mm_web_mobile_foot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `module_key` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `status` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_web_mobile_foot
-- ----------------------------

-- ----------------------------
-- Table structure for mm_web_mobile_index
-- ----------------------------
DROP TABLE IF EXISTS `mm_web_mobile_index`;
CREATE TABLE `mm_web_mobile_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `module_key` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `status` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_web_mobile_index
-- ----------------------------

-- ----------------------------
-- Table structure for mm_web_nav
-- ----------------------------
DROP TABLE IF EXISTS `mm_web_nav`;
CREATE TABLE `mm_web_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `class_name_en` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL COMMENT '导航别名',
  `pc_controller` varchar(255) DEFAULT NULL,
  `pc_action` varchar(255) DEFAULT NULL,
  `pc_para` varchar(255) DEFAULT NULL,
  `mob_controller` varchar(255) DEFAULT NULL,
  `mob_action` varchar(255) DEFAULT NULL,
  `mob_para` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  `list_order` int(10) unsigned DEFAULT '1',
  `list_root` int(10) unsigned DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '1',
  `is_top` tinyint(5) NOT NULL DEFAULT '0',
  `is_btm` tinyint(5) NOT NULL DEFAULT '0',
  `is_mob_top` tinyint(5) NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mm_web_nav
-- ----------------------------

-- ----------------------------
-- Table structure for pg_admin_config
-- ----------------------------
DROP TABLE IF EXISTS `pg_admin_config`;
CREATE TABLE `pg_admin_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `is_language` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否开启多语言版本',
  `is_mobile` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否开启PM数据同步',
  `is_only_mobile` tinyint(5) NOT NULL COMMENT '是否只开启移动站',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_admin_config
-- ----------------------------

-- ----------------------------
-- Table structure for pg_admin_emailcontent
-- ----------------------------
DROP TABLE IF EXISTS `pg_admin_emailcontent`;
CREATE TABLE `pg_admin_emailcontent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `link_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_admin_emailcontent
-- ----------------------------

-- ----------------------------
-- Table structure for pg_admin_language
-- ----------------------------
DROP TABLE IF EXISTS `pg_admin_language`;
CREATE TABLE `pg_admin_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_admin_language
-- ----------------------------

-- ----------------------------
-- Table structure for pg_atm
-- ----------------------------
DROP TABLE IF EXISTS `pg_atm`;
CREATE TABLE `pg_atm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `is_url` tinyint(5) NOT NULL DEFAULT '0',
  `url_controller` varchar(255) DEFAULT NULL,
  `url_action` varchar(255) DEFAULT NULL,
  `url_para` varchar(255) DEFAULT NULL,
  `weburl` varchar(255) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_atm
-- ----------------------------

-- ----------------------------
-- Table structure for pg_atm_class
-- ----------------------------
DROP TABLE IF EXISTS `pg_atm_class`;
CREATE TABLE `pg_atm_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `show_id` varchar(255) DEFAULT NULL COMMENT '展现形式',
  `class_name` varchar(255) DEFAULT NULL,
  `content` text,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  `list_order` int(10) unsigned DEFAULT '1',
  `list_root` int(10) unsigned DEFAULT '0',
  `power` tinyint(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_atm_class
-- ----------------------------

-- ----------------------------
-- Table structure for pg_common
-- ----------------------------
DROP TABLE IF EXISTS `pg_common`;
CREATE TABLE `pg_common` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_childs` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否开启子集',
  `common_id` int(10) NOT NULL DEFAULT '0' COMMENT '从属ID',
  `title` varchar(255) DEFAULT NULL,
  `introduce` text,
  `content` mediumtext,
  `pic_path` varchar(255) DEFAULT NULL,
  `editor_used` tinyint(5) unsigned NOT NULL DEFAULT '1',
  `pic_used` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `introduce_used` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_common
-- ----------------------------

-- ----------------------------
-- Table structure for pg_cooper
-- ----------------------------
DROP TABLE IF EXISTS `pg_cooper`;
CREATE TABLE `pg_cooper` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` text,
  `nickname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `webip` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='招商加盟';

-- ----------------------------
-- Records of pg_cooper
-- ----------------------------

-- ----------------------------
-- Table structure for pg_guest_pr
-- ----------------------------
DROP TABLE IF EXISTS `pg_guest_pr`;
CREATE TABLE `pg_guest_pr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_guest_pr
-- ----------------------------

-- ----------------------------
-- Table structure for pg_guest_pv
-- ----------------------------
DROP TABLE IF EXISTS `pg_guest_pv`;
CREATE TABLE `pg_guest_pv` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_guest_pv
-- ----------------------------

-- ----------------------------
-- Table structure for pg_link
-- ----------------------------
DROP TABLE IF EXISTS `pg_link`;
CREATE TABLE `pg_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) DEFAULT NULL,
  `open_style` varchar(255) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_link
-- ----------------------------

-- ----------------------------
-- Table structure for pg_member
-- ----------------------------
DROP TABLE IF EXISTS `pg_member`;
CREATE TABLE `pg_member` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bd_id` varchar(255) NOT NULL DEFAULT '0' COMMENT '百度ID',
  `qq_id` varchar(255) DEFAULT NULL COMMENT 'QQ ID',
  `sina_id` varchar(255) DEFAULT NULL COMMENT '新浪ID',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `logins` int(10) NOT NULL DEFAULT '0',
  `final_login` varchar(255) DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT '1',
  `addtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_member
-- ----------------------------

-- ----------------------------
-- Table structure for pg_member_address
-- ----------------------------
DROP TABLE IF EXISTS `pg_member_address`;
CREATE TABLE `pg_member_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `nickname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_default` tinyint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for pg_member_field
-- ----------------------------
DROP TABLE IF EXISTS `pg_member_field`;
CREATE TABLE `pg_member_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `field_title` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `list_order` int(10) DEFAULT '10',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_member_field
-- ----------------------------

-- ----------------------------
-- Table structure for pg_msg
-- ----------------------------
DROP TABLE IF EXISTS `pg_msg`;
CREATE TABLE `pg_msg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` text,
  `nickname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `qqno` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `webip` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `replytime` varchar(255) DEFAULT NULL,
  `reply_content` text,
  `is_read` tinyint(5) NOT NULL DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='在线报名表';

-- ----------------------------
-- Records of pg_msg
-- ----------------------------

-- ----------------------------
-- Table structure for pg_msg_field
-- ----------------------------
DROP TABLE IF EXISTS `pg_msg_field`;
CREATE TABLE `pg_msg_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `field_title` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `list_order` int(10) DEFAULT '10',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `is_bt` tinyint(5) NOT NULL DEFAULT '1' COMMENT '是否必填',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_msg_field
-- ----------------------------

-- ----------------------------
-- Table structure for pg_news
-- ----------------------------
DROP TABLE IF EXISTS `pg_news`;
CREATE TABLE `pg_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL DEFAULT '0',
  `class_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price_base` decimal(10,2) NOT NULL DEFAULT '0.00',
  `content` mediumtext,
  `link_video` text,
  `introduce` text,
  `keywords` text,
  `description` text,
  `pic_path` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `clicks` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `is_home` tinyint(5) DEFAULT '0',
  `is_album` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否多图',
  `is_mobile` tinyint(5) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `overtime` int(10) NOT NULL DEFAULT '0' COMMENT '报名截止时间',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=484 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_news
-- ----------------------------
INSERT INTO `pg_news` VALUES ('1', '1', '', '新闻标题1', '0.00', '0.00', '新闻的内容1', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('2', '1', '', '新闻标题2', '0.00', '0.00', '新闻的内容2', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('3', '1', '', '新闻标题3', '0.00', '0.00', '新闻的内容3', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('4', '1', '', '新闻标题4', '0.00', '0.00', '新闻的内容4', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('5', '1', '', '新闻标题5', '0.00', '0.00', '新闻的内容5', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('6', '1', '', '新闻标题6', '0.00', '0.00', '新闻的内容6', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('7', '1', '', '新闻标题7', '0.00', '0.00', '新闻的内容7', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('8', '1', '', '新闻标题8', '0.00', '0.00', '新闻的内容8', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('9', '1', '', '新闻标题9', '0.00', '0.00', '新闻的内容9', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('10', '1', '', '新闻标题10', '0.00', '0.00', '新闻的内容10', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('11', '1', '', '新闻标题11', '0.00', '0.00', '新闻的内容11', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('12', '1', '', '新闻标题12', '0.00', '0.00', '新闻的内容12', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('13', '1', '', '新闻标题13', '0.00', '0.00', '新闻的内容13', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('14', '1', '', '新闻标题14', '0.00', '0.00', '新闻的内容14', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('15', '1', '', '新闻标题15', '0.00', '0.00', '新闻的内容15', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('16', '1', '', '新闻标题16', '0.00', '0.00', '新闻的内容16', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('17', '1', '', '新闻标题17', '0.00', '0.00', '新闻的内容17', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('18', '1', '', '新闻标题18', '0.00', '0.00', '新闻的内容18', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('19', '1', '', '新闻标题19', '0.00', '0.00', '新闻的内容19', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('20', '1', '', '新闻标题20', '0.00', '0.00', '新闻的内容20', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('21', '1', '', '新闻标题21', '0.00', '0.00', '新闻的内容21', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('22', '1', '', '新闻标题22', '0.00', '0.00', '新闻的内容22', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('23', '1', '', '新闻标题23', '0.00', '0.00', '新闻的内容23', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('24', '1', '', '新闻标题24', '0.00', '0.00', '新闻的内容24', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('25', '1', '', '新闻标题25', '0.00', '0.00', '新闻的内容25', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('26', '1', '', '新闻标题26', '0.00', '0.00', '新闻的内容26', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('27', '1', '', '新闻标题27', '0.00', '0.00', '新闻的内容27', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('28', '1', '', '新闻标题28', '0.00', '0.00', '新闻的内容28', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('29', '1', '', '新闻标题29', '0.00', '0.00', '新闻的内容29', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('30', '2', '', '新闻标题30', '0.00', '0.00', '新闻的内容30', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('31', '2', '', '新闻标题31', '0.00', '0.00', '新闻的内容31', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('32', '2', '', '新闻标题32', '0.00', '0.00', '新闻的内容32', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('33', '2', '', '新闻标题33', '0.00', '0.00', '新闻的内容33', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('34', '2', '', '新闻标题34', '0.00', '0.00', '新闻的内容34', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('35', '2', '', '新闻标题35', '0.00', '0.00', '新闻的内容35', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('36', '2', '', '新闻标题36', '0.00', '0.00', '新闻的内容36', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('37', '2', '', '新闻标题37', '0.00', '0.00', '新闻的内容37', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('38', '2', '', '新闻标题38', '0.00', '0.00', '新闻的内容38', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('39', '2', '', '新闻标题39', '0.00', '0.00', '新闻的内容39', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('40', '2', '', '新闻标题40', '0.00', '0.00', '新闻的内容40', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('41', '2', '', '新闻标题41', '0.00', '0.00', '新闻的内容41', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('42', '2', '', '新闻标题42', '0.00', '0.00', '新闻的内容42', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('43', '2', '', '新闻标题43', '0.00', '0.00', '新闻的内容43', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('44', '2', '', '新闻标题44', '0.00', '0.00', '新闻的内容44', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('45', '2', '', '新闻标题45', '0.00', '0.00', '新闻的内容45', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('46', '2', '', '新闻标题46', '0.00', '0.00', '新闻的内容46', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('47', '2', '', '新闻标题47', '0.00', '0.00', '新闻的内容47', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('48', '2', '', '新闻标题48', '0.00', '0.00', '新闻的内容48', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('49', '2', '', '新闻标题49', '0.00', '0.00', '新闻的内容49', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('50', '2', '', '新闻标题50', '0.00', '0.00', '新闻的内容50', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('51', '2', '', '新闻标题51', '0.00', '0.00', '新闻的内容51', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('52', '2', '', '新闻标题52', '0.00', '0.00', '新闻的内容52', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('53', '2', '', '新闻标题53', '0.00', '0.00', '新闻的内容53', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('54', '2', '', '新闻标题54', '0.00', '0.00', '新闻的内容54', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('55', '2', '', '新闻标题55', '0.00', '0.00', '新闻的内容55', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('56', '2', '', '新闻标题56', '0.00', '0.00', '新闻的内容56', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('57', '2', '', '新闻标题57', '0.00', '0.00', '新闻的内容57', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('58', '2', '', '新闻标题58', '0.00', '0.00', '新闻的内容58', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('59', '2', '', '新闻标题59', '0.00', '0.00', '新闻的内容59', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('60', '2', '', '新闻标题60', '0.00', '0.00', '新闻的内容60', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('61', '2', '', '新闻标题61', '0.00', '0.00', '新闻的内容61', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('62', '2', '', '新闻标题62', '0.00', '0.00', '新闻的内容62', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('63', '2', '', '新闻标题63', '0.00', '0.00', '新闻的内容63', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('64', '2', '', '新闻标题64', '0.00', '0.00', '新闻的内容64', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('65', '2', '', '新闻标题65', '0.00', '0.00', '新闻的内容65', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('66', '2', '', '新闻标题66', '0.00', '0.00', '新闻的内容66', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('67', '2', '', '新闻标题67', '0.00', '0.00', '新闻的内容67', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('68', '2', '', '新闻标题68', '0.00', '0.00', '新闻的内容68', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('69', '2', '', '新闻标题69', '0.00', '0.00', '新闻的内容69', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('70', '2', '', '新闻标题70', '0.00', '0.00', '新闻的内容70', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('71', '2', '', '新闻标题71', '0.00', '0.00', '新闻的内容71', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('72', '2', '', '新闻标题72', '0.00', '0.00', '新闻的内容72', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('73', '2', '', '新闻标题73', '0.00', '0.00', '新闻的内容73', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('74', '2', '', '新闻标题74', '0.00', '0.00', '新闻的内容74', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('75', '2', '', '新闻标题75', '0.00', '0.00', '新闻的内容75', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('76', '2', '', '新闻标题76', '0.00', '0.00', '新闻的内容76', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('77', '2', '', '新闻标题77', '0.00', '0.00', '新闻的内容77', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('78', '2', '', '新闻标题78', '0.00', '0.00', '新闻的内容78', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('79', '2', '', '新闻标题79', '0.00', '0.00', '新闻的内容79', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('80', '2', '', '新闻标题80', '0.00', '0.00', '新闻的内容80', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('81', '2', '', '新闻标题81', '0.00', '0.00', '新闻的内容81', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('82', '2', '', '新闻标题82', '0.00', '0.00', '新闻的内容82', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('83', '2', '', '新闻标题83', '0.00', '0.00', '新闻的内容83', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('84', '2', '', '新闻标题84', '0.00', '0.00', '新闻的内容84', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('85', '2', '', '新闻标题85', '0.00', '0.00', '新闻的内容85', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('86', '2', '', '新闻标题86', '0.00', '0.00', '新闻的内容86', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('87', '2', '', '新闻标题87', '0.00', '0.00', '新闻的内容87', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('88', '2', '', '新闻标题88', '0.00', '0.00', '新闻的内容88', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('89', '2', '', '新闻标题89', '0.00', '0.00', '新闻的内容89', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('90', '2', '', '新闻标题90', '0.00', '0.00', '新闻的内容90', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('91', '2', '', '新闻标题91', '0.00', '0.00', '新闻的内容91', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('92', '2', '', '新闻标题92', '0.00', '0.00', '新闻的内容92', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('93', '2', '', '新闻标题93', '0.00', '0.00', '新闻的内容93', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('94', '2', '', '新闻标题94', '0.00', '0.00', '新闻的内容94', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('95', '2', '', '新闻标题95', '0.00', '0.00', '新闻的内容95', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('96', '2', '', '新闻标题96', '0.00', '0.00', '新闻的内容96', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('97', '2', '', '新闻标题97', '0.00', '0.00', '新闻的内容97', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('98', '2', '', '新闻标题98', '0.00', '0.00', '新闻的内容98', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('99', '2', '', '新闻标题99', '0.00', '0.00', '新闻的内容99', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('100', '2', '', '新闻标题100', '0.00', '0.00', '新闻的内容100', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('101', '2', '', '新闻标题101', '0.00', '0.00', '新闻的内容101', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('102', '2', '', '新闻标题102', '0.00', '0.00', '新闻的内容102', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('103', '2', '', '新闻标题103', '0.00', '0.00', '新闻的内容103', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('104', '2', '', '新闻标题104', '0.00', '0.00', '新闻的内容104', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('105', '2', '', '新闻标题105', '0.00', '0.00', '新闻的内容105', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('106', '2', '', '新闻标题106', '0.00', '0.00', '新闻的内容106', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('107', '2', '', '新闻标题107', '0.00', '0.00', '新闻的内容107', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('108', '2', '', '新闻标题108', '0.00', '0.00', '新闻的内容108', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('109', '2', '', '新闻标题109', '0.00', '0.00', '新闻的内容109', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('110', '2', '', '新闻标题110', '0.00', '0.00', '新闻的内容110', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('111', '2', '', '新闻标题111', '0.00', '0.00', '新闻的内容111', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('112', '2', '', '新闻标题112', '0.00', '0.00', '新闻的内容112', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('113', '2', '', '新闻标题113', '0.00', '0.00', '新闻的内容113', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('114', '2', '', '新闻标题114', '0.00', '0.00', '新闻的内容114', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('115', '2', '', '新闻标题115', '0.00', '0.00', '新闻的内容115', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('116', '2', '', '新闻标题116', '0.00', '0.00', '新闻的内容116', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('117', '2', '', '新闻标题117', '0.00', '0.00', '新闻的内容117', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('118', '2', '', '新闻标题118', '0.00', '0.00', '新闻的内容118', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('119', '2', '', '新闻标题119', '0.00', '0.00', '新闻的内容119', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('120', '2', '', '新闻标题120', '0.00', '0.00', '新闻的内容120', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('121', '2', '', '新闻标题121', '0.00', '0.00', '新闻的内容121', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('122', '2', '', '新闻标题122', '0.00', '0.00', '新闻的内容122', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('123', '2', '', '新闻标题123', '0.00', '0.00', '新闻的内容123', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('124', '2', '', '新闻标题124', '0.00', '0.00', '新闻的内容124', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('125', '2', '', '新闻标题125', '0.00', '0.00', '新闻的内容125', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('126', '2', '', '新闻标题126', '0.00', '0.00', '新闻的内容126', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('127', '2', '', '新闻标题127', '0.00', '0.00', '新闻的内容127', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('128', '2', '', '新闻标题128', '0.00', '0.00', '新闻的内容128', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('129', '2', '', '新闻标题129', '0.00', '0.00', '新闻的内容129', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('130', '2', '', '新闻标题130', '0.00', '0.00', '新闻的内容130', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('131', '2', '', '新闻标题131', '0.00', '0.00', '新闻的内容131', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('132', '2', '', '新闻标题132', '0.00', '0.00', '新闻的内容132', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('133', '2', '', '新闻标题133', '0.00', '0.00', '新闻的内容133', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('134', '2', '', '新闻标题134', '0.00', '0.00', '新闻的内容134', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('135', '2', '', '新闻标题135', '0.00', '0.00', '新闻的内容135', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('136', '2', '', '新闻标题136', '0.00', '0.00', '新闻的内容136', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('137', '2', '', '新闻标题137', '0.00', '0.00', '新闻的内容137', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('138', '2', '', '新闻标题138', '0.00', '0.00', '新闻的内容138', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('139', '2', '', '新闻标题139', '0.00', '0.00', '新闻的内容139', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('140', '2', '', '新闻标题140', '0.00', '0.00', '新闻的内容140', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('141', '2', '', '新闻标题141', '0.00', '0.00', '新闻的内容141', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('142', '2', '', '新闻标题142', '0.00', '0.00', '新闻的内容142', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('143', '2', '', '新闻标题143', '0.00', '0.00', '新闻的内容143', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('144', '2', '', '新闻标题144', '0.00', '0.00', '新闻的内容144', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('145', '2', '', '新闻标题145', '0.00', '0.00', '新闻的内容145', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('146', '2', '', '新闻标题146', '0.00', '0.00', '新闻的内容146', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('147', '2', '', '新闻标题147', '0.00', '0.00', '新闻的内容147', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('148', '2', '', '新闻标题148', '0.00', '0.00', '新闻的内容148', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('149', '2', '', '新闻标题149', '0.00', '0.00', '新闻的内容149', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('150', '2', '', '新闻标题150', '0.00', '0.00', '新闻的内容150', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('151', '2', '', '新闻标题151', '0.00', '0.00', '新闻的内容151', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('152', '2', '', '新闻标题152', '0.00', '0.00', '新闻的内容152', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('153', '2', '', '新闻标题153', '0.00', '0.00', '新闻的内容153', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('154', '2', '', '新闻标题154', '0.00', '0.00', '新闻的内容154', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('155', '2', '', '新闻标题155', '0.00', '0.00', '新闻的内容155', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('156', '2', '', '新闻标题156', '0.00', '0.00', '新闻的内容156', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('157', '2', '', '新闻标题157', '0.00', '0.00', '新闻的内容157', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('158', '3', '', '新闻标题158', '0.00', '0.00', '新闻的内容158', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('159', '3', '', '新闻标题159', '0.00', '0.00', '新闻的内容159', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('160', '3', '', '新闻标题160', '0.00', '0.00', '新闻的内容160', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('161', '3', '', '新闻标题161', '0.00', '0.00', '新闻的内容161', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('162', '3', '', '新闻标题162', '0.00', '0.00', '新闻的内容162', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('163', '3', '', '新闻标题163', '0.00', '0.00', '新闻的内容163', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('164', '3', '', '新闻标题164', '0.00', '0.00', '新闻的内容164', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('165', '3', '', '新闻标题165', '0.00', '0.00', '新闻的内容165', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('166', '3', '', '新闻标题166', '0.00', '0.00', '新闻的内容166', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('167', '3', '', '新闻标题167', '0.00', '0.00', '新闻的内容167', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('168', '3', '', '新闻标题168', '0.00', '0.00', '新闻的内容168', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('169', '3', '', '新闻标题169', '0.00', '0.00', '新闻的内容169', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('170', '3', '', '新闻标题170', '0.00', '0.00', '新闻的内容170', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('171', '3', '', '新闻标题171', '0.00', '0.00', '新闻的内容171', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('172', '3', '', '新闻标题172', '0.00', '0.00', '新闻的内容172', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('173', '3', '', '新闻标题173', '0.00', '0.00', '新闻的内容173', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('174', '3', '', '新闻标题174', '0.00', '0.00', '新闻的内容174', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('175', '3', '', '新闻标题175', '0.00', '0.00', '新闻的内容175', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('176', '3', '', '新闻标题176', '0.00', '0.00', '新闻的内容176', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('177', '3', '', '新闻标题177', '0.00', '0.00', '新闻的内容177', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('178', '3', '', '新闻标题178', '0.00', '0.00', '新闻的内容178', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('179', '3', '', '新闻标题179', '0.00', '0.00', '新闻的内容179', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('180', '3', '', '新闻标题180', '0.00', '0.00', '新闻的内容180', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('181', '3', '', '新闻标题181', '0.00', '0.00', '新闻的内容181', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('182', '4', '', '新闻标题182', '0.00', '0.00', '新闻的内容182', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('183', '4', '', '新闻标题183', '0.00', '0.00', '新闻的内容183', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('184', '4', '', '新闻标题184', '0.00', '0.00', '新闻的内容184', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('185', '4', '', '新闻标题185', '0.00', '0.00', '新闻的内容185', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('186', '4', '', '新闻标题186', '0.00', '0.00', '新闻的内容186', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('187', '4', '', '新闻标题187', '0.00', '0.00', '新闻的内容187', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('188', '4', '', '新闻标题188', '0.00', '0.00', '新闻的内容188', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('189', '4', '', '新闻标题189', '0.00', '0.00', '新闻的内容189', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('190', '4', '', '新闻标题190', '0.00', '0.00', '新闻的内容190', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('191', '4', '', '新闻标题191', '0.00', '0.00', '新闻的内容191', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('192', '4', '', '新闻标题192', '0.00', '0.00', '新闻的内容192', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('193', '4', '', '新闻标题193', '0.00', '0.00', '新闻的内容193', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('194', '4', '', '新闻标题194', '0.00', '0.00', '新闻的内容194', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('195', '4', '', '新闻标题195', '0.00', '0.00', '新闻的内容195', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('196', '4', '', '新闻标题196', '0.00', '0.00', '新闻的内容196', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('197', '4', '', '新闻标题197', '0.00', '0.00', '新闻的内容197', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('198', '4', '', '新闻标题198', '0.00', '0.00', '新闻的内容198', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('199', '4', '', '新闻标题199', '0.00', '0.00', '新闻的内容199', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('200', '4', '', '新闻标题200', '0.00', '0.00', '新闻的内容200', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('201', '4', '', '新闻标题201', '0.00', '0.00', '新闻的内容201', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('202', '4', '', '新闻标题202', '0.00', '0.00', '新闻的内容202', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('203', '4', '', '新闻标题203', '0.00', '0.00', '新闻的内容203', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('204', '4', '', '新闻标题204', '0.00', '0.00', '新闻的内容204', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('205', '4', '', '新闻标题205', '0.00', '0.00', '新闻的内容205', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('206', '4', '', '新闻标题206', '0.00', '0.00', '新闻的内容206', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('207', '4', '', '新闻标题207', '0.00', '0.00', '新闻的内容207', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('208', '4', '', '新闻标题208', '0.00', '0.00', '新闻的内容208', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('209', '4', '', '新闻标题209', '0.00', '0.00', '新闻的内容209', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('210', '4', '', '新闻标题210', '0.00', '0.00', '新闻的内容210', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('211', '4', '', '新闻标题211', '0.00', '0.00', '新闻的内容211', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('212', '4', '', '新闻标题212', '0.00', '0.00', '新闻的内容212', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('213', '4', '', '新闻标题213', '0.00', '0.00', '新闻的内容213', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('214', '4', '', '新闻标题214', '0.00', '0.00', '新闻的内容214', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('215', '4', '', '新闻标题215', '0.00', '0.00', '新闻的内容215', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('216', '4', '', '新闻标题216', '0.00', '0.00', '新闻的内容216', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('217', '4', '', '新闻标题217', '0.00', '0.00', '新闻的内容217', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('218', '4', '', '新闻标题218', '0.00', '0.00', '新闻的内容218', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('219', '4', '', '新闻标题219', '0.00', '0.00', '新闻的内容219', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('220', '4', '', '新闻标题220', '0.00', '0.00', '新闻的内容220', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('221', '4', '', '新闻标题221', '0.00', '0.00', '新闻的内容221', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('222', '4', '', '新闻标题222', '0.00', '0.00', '新闻的内容222', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('223', '4', '', '新闻标题223', '0.00', '0.00', '新闻的内容223', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('224', '4', '', '新闻标题224', '0.00', '0.00', '新闻的内容224', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('225', '4', '', '新闻标题225', '0.00', '0.00', '新闻的内容225', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('226', '4', '', '新闻标题226', '0.00', '0.00', '新闻的内容226', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('227', '4', '', '新闻标题227', '0.00', '0.00', '新闻的内容227', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('228', '4', '', '新闻标题228', '0.00', '0.00', '新闻的内容228', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('229', '4', '', '新闻标题229', '0.00', '0.00', '新闻的内容229', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('230', '4', '', '新闻标题230', '0.00', '0.00', '新闻的内容230', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('231', '4', '', '新闻标题231', '0.00', '0.00', '新闻的内容231', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('232', '4', '', '新闻标题232', '0.00', '0.00', '新闻的内容232', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('233', '4', '', '新闻标题233', '0.00', '0.00', '新闻的内容233', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('234', '4', '', '新闻标题234', '0.00', '0.00', '新闻的内容234', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('235', '4', '', '新闻标题235', '0.00', '0.00', '新闻的内容235', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('236', '4', '', '新闻标题236', '0.00', '0.00', '新闻的内容236', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('237', '4', '', '新闻标题237', '0.00', '0.00', '新闻的内容237', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('238', '4', '', '新闻标题238', '0.00', '0.00', '新闻的内容238', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('239', '4', '', '新闻标题239', '0.00', '0.00', '新闻的内容239', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('240', '4', '', '新闻标题240', '0.00', '0.00', '新闻的内容240', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('241', '4', '', '新闻标题241', '0.00', '0.00', '新闻的内容241', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('242', '4', '', '新闻标题242', '0.00', '0.00', '新闻的内容242', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('243', '4', '', '新闻标题243', '0.00', '0.00', '新闻的内容243', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('244', '4', '', '新闻标题244', '0.00', '0.00', '新闻的内容244', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('245', '4', '', '新闻标题245', '0.00', '0.00', '新闻的内容245', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('246', '4', '', '新闻标题246', '0.00', '0.00', '新闻的内容246', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('247', '4', '', '新闻标题247', '0.00', '0.00', '新闻的内容247', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('248', '4', '', '新闻标题248', '0.00', '0.00', '新闻的内容248', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('249', '4', '', '新闻标题249', '0.00', '0.00', '新闻的内容249', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('250', '4', '', '新闻标题250', '0.00', '0.00', '新闻的内容250', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('251', '4', '', '新闻标题251', '0.00', '0.00', '新闻的内容251', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('252', '4', '', '新闻标题252', '0.00', '0.00', '新闻的内容252', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('253', '4', '', '新闻标题253', '0.00', '0.00', '新闻的内容253', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('254', '4', '', '新闻标题254', '0.00', '0.00', '新闻的内容254', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('255', '4', '', '新闻标题255', '0.00', '0.00', '新闻的内容255', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('256', '4', '', '新闻标题256', '0.00', '0.00', '新闻的内容256', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('257', '4', '', '新闻标题257', '0.00', '0.00', '新闻的内容257', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('258', '4', '', '新闻标题258', '0.00', '0.00', '新闻的内容258', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('259', '4', '', '新闻标题259', '0.00', '0.00', '新闻的内容259', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('260', '4', '', '新闻标题260', '0.00', '0.00', '新闻的内容260', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('261', '4', '', '新闻标题261', '0.00', '0.00', '新闻的内容261', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('262', '4', '', '新闻标题262', '0.00', '0.00', '新闻的内容262', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('263', '4', '', '新闻标题263', '0.00', '0.00', '新闻的内容263', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('264', '4', '', '新闻标题264', '0.00', '0.00', '新闻的内容264', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('265', '4', '', '新闻标题265', '0.00', '0.00', '新闻的内容265', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('266', '4', '', '新闻标题266', '0.00', '0.00', '新闻的内容266', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('267', '4', '', '新闻标题267', '0.00', '0.00', '新闻的内容267', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('268', '4', '', '新闻标题268', '0.00', '0.00', '新闻的内容268', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('269', '4', '', '新闻标题269', '0.00', '0.00', '新闻的内容269', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('270', '4', '', '新闻标题270', '0.00', '0.00', '新闻的内容270', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('271', '5', '', '新闻标题271', '0.00', '0.00', '新闻的内容271', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('272', '5', '', '新闻标题272', '0.00', '0.00', '新闻的内容272', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('273', '5', '', '新闻标题273', '0.00', '0.00', '新闻的内容273', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('274', '5', '', '新闻标题274', '0.00', '0.00', '新闻的内容274', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('275', '5', '', '新闻标题275', '0.00', '0.00', '新闻的内容275', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('276', '5', '', '新闻标题276', '0.00', '0.00', '新闻的内容276', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('277', '5', '', '新闻标题277', '0.00', '0.00', '新闻的内容277', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('278', '5', '', '新闻标题278', '0.00', '0.00', '新闻的内容278', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('279', '5', '', '新闻标题279', '0.00', '0.00', '新闻的内容279', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('280', '5', '', '新闻标题280', '0.00', '0.00', '新闻的内容280', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('281', '5', '', '新闻标题281', '0.00', '0.00', '新闻的内容281', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('282', '5', '', '新闻标题282', '0.00', '0.00', '新闻的内容282', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('283', '5', '', '新闻标题283', '0.00', '0.00', '新闻的内容283', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('284', '5', '', '新闻标题284', '0.00', '0.00', '新闻的内容284', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('285', '5', '', '新闻标题285', '0.00', '0.00', '新闻的内容285', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('286', '5', '', '新闻标题286', '0.00', '0.00', '新闻的内容286', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('287', '5', '', '新闻标题287', '0.00', '0.00', '新闻的内容287', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('288', '5', '', '新闻标题288', '0.00', '0.00', '新闻的内容288', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('289', '5', '', '新闻标题289', '0.00', '0.00', '新闻的内容289', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('290', '6', '', '新闻标题290', '0.00', '0.00', '新闻的内容290', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('291', '6', '', '新闻标题291', '0.00', '0.00', '新闻的内容291', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('292', '6', '', '新闻标题292', '0.00', '0.00', '新闻的内容292', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('293', '6', '', '新闻标题293', '0.00', '0.00', '新闻的内容293', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('294', '6', '', '新闻标题294', '0.00', '0.00', '新闻的内容294', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('295', '6', '', '新闻标题295', '0.00', '0.00', '新闻的内容295', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('296', '6', '', '新闻标题296', '0.00', '0.00', '新闻的内容296', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('297', '6', '', '新闻标题297', '0.00', '0.00', '新闻的内容297', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('298', '6', '', '新闻标题298', '0.00', '0.00', '新闻的内容298', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('299', '6', '', '新闻标题299', '0.00', '0.00', '新闻的内容299', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('300', '6', '', '新闻标题300', '0.00', '0.00', '新闻的内容300', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('301', '6', '', '新闻标题301', '0.00', '0.00', '新闻的内容301', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('302', '6', '', '新闻标题302', '0.00', '0.00', '新闻的内容302', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('303', '6', '', '新闻标题303', '0.00', '0.00', '新闻的内容303', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('304', '6', '', '新闻标题304', '0.00', '0.00', '新闻的内容304', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('305', '6', '', '新闻标题305', '0.00', '0.00', '新闻的内容305', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('306', '6', '', '新闻标题306', '0.00', '0.00', '新闻的内容306', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('307', '6', '', '新闻标题307', '0.00', '0.00', '新闻的内容307', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('308', '6', '', '新闻标题308', '0.00', '0.00', '新闻的内容308', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('309', '7', '', '新闻标题309', '0.00', '0.00', '新闻的内容309', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('310', '7', '', '新闻标题310', '0.00', '0.00', '新闻的内容310', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('311', '7', '', '新闻标题311', '0.00', '0.00', '新闻的内容311', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('312', '7', '', '新闻标题312', '0.00', '0.00', '新闻的内容312', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('313', '7', '', '新闻标题313', '0.00', '0.00', '新闻的内容313', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('314', '7', '', '新闻标题314', '0.00', '0.00', '新闻的内容314', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('315', '7', '', '新闻标题315', '0.00', '0.00', '新闻的内容315', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('316', '7', '', '新闻标题316', '0.00', '0.00', '新闻的内容316', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('317', '7', '', '新闻标题317', '0.00', '0.00', '新闻的内容317', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('318', '7', '', '新闻标题318', '0.00', '0.00', '新闻的内容318', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('319', '7', '', '新闻标题319', '0.00', '0.00', '新闻的内容319', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('320', '7', '', '新闻标题320', '0.00', '0.00', '新闻的内容320', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('321', '7', '', '新闻标题321', '0.00', '0.00', '新闻的内容321', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('322', '7', '', '新闻标题322', '0.00', '0.00', '新闻的内容322', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('323', '7', '', '新闻标题323', '0.00', '0.00', '新闻的内容323', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('324', '7', '', '新闻标题324', '0.00', '0.00', '新闻的内容324', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('325', '7', '', '新闻标题325', '0.00', '0.00', '新闻的内容325', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('326', '7', '', '新闻标题326', '0.00', '0.00', '新闻的内容326', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('327', '7', '', '新闻标题327', '0.00', '0.00', '新闻的内容327', null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('473', '0', null, null, '0.00', '0.00', null, null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('474', '0', null, null, '0.00', '0.00', null, null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('475', '0', null, null, '0.00', '0.00', null, null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('476', '0', null, null, '0.00', '0.00', null, null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('477', '0', null, null, '0.00', '0.00', null, null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('478', '0', null, null, '0.00', '0.00', null, null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('479', '0', null, null, '0.00', '0.00', null, null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('480', '0', null, null, '0.00', '0.00', null, null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('481', '0', null, null, '0.00', '0.00', null, null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('482', '0', null, null, '0.00', '0.00', null, null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `pg_news` VALUES ('483', '0', null, null, '0.00', '0.00', null, null, null, null, null, null, null, null, '10', '0', '0', '0', '0', '0', '0', '0', null);

-- ----------------------------
-- Table structure for pg_news_class
-- ----------------------------
DROP TABLE IF EXISTS `pg_news_class`;
CREATE TABLE `pg_news_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL DEFAULT '0',
  `class_name` varchar(255) DEFAULT NULL,
  `content` text,
  `pic_path` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  `list_order` int(10) unsigned DEFAULT '1',
  `status` tinyint(5) NOT NULL DEFAULT '1',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_news_class
-- ----------------------------
INSERT INTO `pg_news_class` VALUES ('1', '1', '国内', null, null, '0', '0', '1', '1', null);
INSERT INTO `pg_news_class` VALUES ('2', '2', '国际', null, null, '0', '0', '1', '1', null);
INSERT INTO `pg_news_class` VALUES ('3', '3', '军事', null, null, '0', '0', '1', '1', null);
INSERT INTO `pg_news_class` VALUES ('4', '4', '娱乐', null, null, '0', '0', '1', '1', null);
INSERT INTO `pg_news_class` VALUES ('5', '5', '体育', null, null, '0', '0', '1', '1', null);
INSERT INTO `pg_news_class` VALUES ('6', '6', '游戏', null, null, '0', '0', '1', '1', null);
INSERT INTO `pg_news_class` VALUES ('7', '7', '汽车', null, null, '0', '0', '1', '1', null);

-- ----------------------------
-- Table structure for pg_news_config
-- ----------------------------
DROP TABLE IF EXISTS `pg_news_config`;
CREATE TABLE `pg_news_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `is_class` tinyint(5) NOT NULL DEFAULT '0',
  `class_depth` tinyint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `show_value` tinyint(5) NOT NULL DEFAULT '1' COMMENT '展示形式0,1,2,3',
  `show_value_line` tinyint(5) NOT NULL DEFAULT '0' COMMENT '底纹效果0,1,2,3',
  `show_value_font` tinyint(5) NOT NULL DEFAULT '0' COMMENT '文字效果0,1',
  `show_value_inflash` tinyint(5) NOT NULL DEFAULT '0' COMMENT '列表入场动画',
  `show_value_textpadding` tinyint(5) NOT NULL DEFAULT '0' COMMENT '列表文字缩进',
  `album_value` varchar(255) DEFAULT NULL,
  `pic_value` varchar(255) DEFAULT NULL,
  `class_pic_value` varchar(255) DEFAULT NULL,
  `video_value` varchar(255) DEFAULT NULL,
  `file_value` varchar(255) DEFAULT NULL,
  `is_class_introduce` tinyint(5) NOT NULL DEFAULT '0',
  `is_title` tinyint(5) NOT NULL DEFAULT '0',
  `is_introduce` tinyint(5) NOT NULL DEFAULT '0',
  `is_link_video` tinyint(5) NOT NULL DEFAULT '0',
  `is_content` tinyint(5) NOT NULL DEFAULT '0',
  `is_pic` tinyint(5) NOT NULL DEFAULT '0',
  `is_class_pic` tinyint(5) NOT NULL DEFAULT '0',
  `is_video` tinyint(5) NOT NULL DEFAULT '0',
  `is_file` tinyint(5) NOT NULL DEFAULT '0',
  `is_seo` tinyint(5) NOT NULL DEFAULT '0',
  `is_album` tinyint(5) NOT NULL DEFAULT '0' COMMENT '相册开关',
  `is_msg` tinyint(5) NOT NULL DEFAULT '0' COMMENT '报名开关0,1',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `is_price` tinyint(5) NOT NULL DEFAULT '0' COMMENT '价格开关',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_news_config
-- ----------------------------

-- ----------------------------
-- Table structure for pg_news_msg
-- ----------------------------
DROP TABLE IF EXISTS `pg_news_msg`;
CREATE TABLE `pg_news_msg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `news_id` int(10) DEFAULT '0',
  `webip` varchar(255) DEFAULT NULL,
  `content` text,
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `addtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_news_msg
-- ----------------------------

-- ----------------------------
-- Table structure for pg_photo
-- ----------------------------
DROP TABLE IF EXISTS `pg_photo`;
CREATE TABLE `pg_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) DEFAULT NULL COMMENT '所属栏目表名',
  `belong_id` int(10) NOT NULL DEFAULT '0' COMMENT '所属信息的ID',
  `title` varchar(255) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `islock` tinyint(5) NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COMMENT='相册';

-- ----------------------------
-- Records of pg_photo
-- ----------------------------

-- ----------------------------
-- Table structure for pg_shop_config
-- ----------------------------
DROP TABLE IF EXISTS `pg_shop_config`;
CREATE TABLE `pg_shop_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `is_class` tinyint(5) NOT NULL DEFAULT '0',
  `nav_name` varchar(255) DEFAULT NULL COMMENT '内页栏目名称',
  `class_depth` tinyint(5) NOT NULL DEFAULT '0',
  `show_value` tinyint(5) NOT NULL DEFAULT '1' COMMENT '展示形式0,1,2',
  `show_value_frame` tinyint(5) NOT NULL DEFAULT '0' COMMENT '框体样式',
  `album_value` varchar(255) DEFAULT NULL,
  `pic_value` varchar(255) DEFAULT NULL,
  `class_pic_value` varchar(255) DEFAULT NULL,
  `video_value` varchar(255) DEFAULT NULL,
  `file_value` varchar(255) DEFAULT NULL,
  `is_bill` tinyint(5) NOT NULL DEFAULT '0',
  `bill_type` varchar(255) DEFAULT NULL,
  `is_post` tinyint(5) NOT NULL DEFAULT '0' COMMENT '开启邮费',
  `post_cost` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '邮费金额',
  `is_class_introduce` tinyint(5) NOT NULL DEFAULT '0',
  `is_link_video` tinyint(5) NOT NULL DEFAULT '0',
  `is_introduce` tinyint(5) NOT NULL DEFAULT '0',
  `is_content` tinyint(5) NOT NULL DEFAULT '0',
  `is_pic` tinyint(5) NOT NULL DEFAULT '0',
  `is_class_pic` tinyint(5) NOT NULL DEFAULT '0',
  `is_video` tinyint(5) NOT NULL DEFAULT '0',
  `is_file` tinyint(5) NOT NULL DEFAULT '0',
  `is_seo` tinyint(5) NOT NULL DEFAULT '0',
  `is_album` tinyint(5) NOT NULL DEFAULT '0',
  `is_para` tinyint(5) NOT NULL DEFAULT '0',
  `is_msg` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否开启在线报名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_shop_config
-- ----------------------------

-- ----------------------------
-- Table structure for pg_shop_product
-- ----------------------------
DROP TABLE IF EXISTS `pg_shop_product`;
CREATE TABLE `pg_shop_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` varchar(255) DEFAULT NULL,
  `para_ids` varchar(255) DEFAULT NULL COMMENT '属性id',
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sell_count` int(10) NOT NULL DEFAULT '0' COMMENT '销量',
  `attribute` text,
  `content` mediumtext,
  `link_video` text,
  `introduce` text,
  `keywords` text,
  `description` text,
  `pic_path` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `clicks` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `is_home` tinyint(5) NOT NULL DEFAULT '0',
  `is_album` tinyint(5) NOT NULL DEFAULT '0',
  `is_mobile` tinyint(5) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_shop_product
-- ----------------------------

-- ----------------------------
-- Table structure for pg_shop_product_cart
-- ----------------------------
DROP TABLE IF EXISTS `pg_shop_product_cart`;
CREATE TABLE `pg_shop_product_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `pro_id` int(10) NOT NULL DEFAULT '0',
  `content` text,
  `buy_count` int(10) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_shop_product_cart
-- ----------------------------

-- ----------------------------
-- Table structure for pg_shop_product_class
-- ----------------------------
DROP TABLE IF EXISTS `pg_shop_product_class`;
CREATE TABLE `pg_shop_product_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `content` text,
  `para_ids` varchar(255) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  `list_order` int(10) unsigned DEFAULT '1',
  `is_home` tinyint(5) NOT NULL DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '1',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_shop_product_class
-- ----------------------------

-- ----------------------------
-- Table structure for pg_shop_product_like
-- ----------------------------
DROP TABLE IF EXISTS `pg_shop_product_like`;
CREATE TABLE `pg_shop_product_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收藏';

-- ----------------------------
-- Records of pg_shop_product_like
-- ----------------------------

-- ----------------------------
-- Table structure for pg_shop_product_msg
-- ----------------------------
DROP TABLE IF EXISTS `pg_shop_product_msg`;
CREATE TABLE `pg_shop_product_msg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `order_id` int(10) NOT NULL DEFAULT '0',
  `content` text,
  `re_content` text,
  `re_time` int(10) NOT NULL DEFAULT '0',
  `score` tinyint(5) NOT NULL DEFAULT '0',
  `webip` varchar(255) DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_shop_product_msg
-- ----------------------------

-- ----------------------------
-- Table structure for pg_shop_product_order
-- ----------------------------
DROP TABLE IF EXISTS `pg_shop_product_order`;
CREATE TABLE `pg_shop_product_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pay_type` tinyint(5) NOT NULL DEFAULT '0' COMMENT '0货到付款1在线支付',
  `trade_type` tinyint(5) NOT NULL DEFAULT '0' COMMENT '支付端0支付宝1聚合收银台100关闭订单',
  `mid` int(10) NOT NULL DEFAULT '0',
  `address` text,
  `postcode` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `content` text,
  `content_admin` text,
  `bill_kind` varchar(255) DEFAULT NULL COMMENT '发票种类：个人、公司',
  `bill_title` varchar(255) DEFAULT NULL COMMENT '发票title',
  `bill_type` varchar(255) DEFAULT NULL COMMENT '发票类型：餐饮、酒店……',
  `post_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_no` varchar(255) DEFAULT NULL,
  `trade_no` varchar(255) DEFAULT NULL COMMENT '交易号',
  `status` tinyint(5) NOT NULL DEFAULT '0' COMMENT '0未支付1已支付2已发货3已完成4已关闭',
  `is_msg` tinyint(5) NOT NULL DEFAULT '0',
  `time_add` int(10) NOT NULL DEFAULT '0',
  `time_pay` int(10) NOT NULL DEFAULT '0',
  `time_send` int(10) NOT NULL DEFAULT '0',
  `time_over` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_shop_product_order
-- ----------------------------

-- ----------------------------
-- Table structure for pg_shop_product_order_pros
-- ----------------------------
DROP TABLE IF EXISTS `pg_shop_product_order_pros`;
CREATE TABLE `pg_shop_product_order_pros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `pro_title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `buy_count` int(10) NOT NULL DEFAULT '0',
  `is_msg` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否评价',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_shop_product_order_pros
-- ----------------------------

-- ----------------------------
-- Table structure for pg_shop_product_para
-- ----------------------------
DROP TABLE IF EXISTS `pg_shop_product_para`;
CREATE TABLE `pg_shop_product_para` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  `list_order` int(10) unsigned DEFAULT '1',
  `list_root` int(10) unsigned DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_shop_product_para
-- ----------------------------

-- ----------------------------
-- Table structure for pg_shop_product_paylog
-- ----------------------------
DROP TABLE IF EXISTS `pg_shop_product_paylog`;
CREATE TABLE `pg_shop_product_paylog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `trade_type` tinyint(5) DEFAULT '0' COMMENT '支付端0支付宝1聚合收银台',
  `trade_no` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_shop_product_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for pg_user
-- ----------------------------
DROP TABLE IF EXISTS `pg_user`;
CREATE TABLE `pg_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `group_id` tinyint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_user
-- ----------------------------

-- ----------------------------
-- Table structure for pg_user_group
-- ----------------------------
DROP TABLE IF EXISTS `pg_user_group`;
CREATE TABLE `pg_user_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `group_keys` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_user_group
-- ----------------------------

-- ----------------------------
-- Table structure for pg_web_mobile_color
-- ----------------------------
DROP TABLE IF EXISTS `pg_web_mobile_color`;
CREATE TABLE `pg_web_mobile_color` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `top` varchar(255) DEFAULT NULL,
  `nav` varchar(255) DEFAULT NULL,
  `foot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_web_mobile_color
-- ----------------------------

-- ----------------------------
-- Table structure for pg_web_mobile_foot
-- ----------------------------
DROP TABLE IF EXISTS `pg_web_mobile_foot`;
CREATE TABLE `pg_web_mobile_foot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `module_key` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `status` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_web_mobile_foot
-- ----------------------------

-- ----------------------------
-- Table structure for pg_web_mobile_index
-- ----------------------------
DROP TABLE IF EXISTS `pg_web_mobile_index`;
CREATE TABLE `pg_web_mobile_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `module_key` varchar(255) DEFAULT NULL,
  `list_order` int(10) unsigned NOT NULL DEFAULT '10',
  `status` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_web_mobile_index
-- ----------------------------

-- ----------------------------
-- Table structure for pg_web_nav
-- ----------------------------
DROP TABLE IF EXISTS `pg_web_nav`;
CREATE TABLE `pg_web_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) DEFAULT NULL,
  `class_name_en` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL COMMENT '导航别名',
  `pc_controller` varchar(255) DEFAULT NULL,
  `pc_action` varchar(255) DEFAULT NULL,
  `pc_para` varchar(255) DEFAULT NULL,
  `mob_controller` varchar(255) DEFAULT NULL,
  `mob_action` varchar(255) DEFAULT NULL,
  `mob_para` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  `list_order` int(10) unsigned DEFAULT '1',
  `list_root` int(10) unsigned DEFAULT '0',
  `status` tinyint(5) NOT NULL DEFAULT '1',
  `is_top` tinyint(5) NOT NULL DEFAULT '0',
  `is_btm` tinyint(5) NOT NULL DEFAULT '0',
  `is_mob_top` tinyint(5) NOT NULL DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pg_web_nav
-- ----------------------------
