/*
Navicat MySQL Data Transfer

Source Server         : ygz
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : db_mblog

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2018-03-02 14:27:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mto_attachs
-- ----------------------------
DROP TABLE IF EXISTS `mto_attachs`;
CREATE TABLE `mto_attachs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `height` int(11) NOT NULL,
  `original` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `screenshot` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `to_id` bigint(20) DEFAULT NULL,
  `width` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_attachs
-- ----------------------------

-- ----------------------------
-- Table structure for mto_auth_menu
-- ----------------------------
DROP TABLE IF EXISTS `mto_auth_menu`;
CREATE TABLE `mto_auth_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_ids` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_auth_menu
-- ----------------------------
INSERT INTO `mto_auth_menu` VALUES ('1', '根目录', '', '', '1', '/', '1', null);
INSERT INTO `mto_auth_menu` VALUES ('2', '后台管理', null, 'admin', '1', 'admin', '1', null);
INSERT INTO `mto_auth_menu` VALUES ('4', '文章管理', null, 'posts:view', '2', 'admin/posts/list', '2', 'fa fa-clone icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('5', '文章修改', null, 'posts:edit', '1', null, '4', null);
INSERT INTO `mto_auth_menu` VALUES ('6', '文章查看', null, 'posts:view', '1', '', '4', null);
INSERT INTO `mto_auth_menu` VALUES ('8', '评论管理', null, 'comments:view', '4', 'admin/comments/list', '2', 'fa fa-comments-o icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('9', '删除评论', null, 'comments:edit', '1', null, '8', null);
INSERT INTO `mto_auth_menu` VALUES ('10', '评论查看', null, 'comments:view', '1', '', '8', null);
INSERT INTO `mto_auth_menu` VALUES ('11', '栏目管理', null, 'group:view', '5', 'admin/channel/list', '2', 'fa fa-tags icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('12', '删除栏目', null, 'group:edit', '1', null, '11', null);
INSERT INTO `mto_auth_menu` VALUES ('13', '修改栏目', null, 'group:edit', '2', null, '11', null);
INSERT INTO `mto_auth_menu` VALUES ('15', '系统配置', null, 'config:view', '6', 'admin/config/', '2', 'fa fa-sun-o icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('16', '修改配置', null, 'config:edit', '1', null, '15', null);
INSERT INTO `mto_auth_menu` VALUES ('17', '用户管理', null, 'users:view', '3', 'admin/users/list', '2', 'fa fa-user icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('18', '禁用用户', null, 'users:edit', '1', '', '17', null);
INSERT INTO `mto_auth_menu` VALUES ('19', '修改密码', null, 'users:edit', '1', null, '17', null);
INSERT INTO `mto_auth_menu` VALUES ('20', '用户查看', null, 'users:view', '1', '', '17', null);
INSERT INTO `mto_auth_menu` VALUES ('35', '角色管理', null, 'roles:view', '7', 'admin/roles/list', '2', 'fa fa fa-registered icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('36', '角色修改', null, 'roles:edit', '0', null, '35', null);
INSERT INTO `mto_auth_menu` VALUES ('37', '角色查看', null, 'roles:view', '1', '', '35', null);
INSERT INTO `mto_auth_menu` VALUES ('41', '菜单管理', null, 'authMenus:view', '8', 'admin/authMenus/list', '2', 'fa fa-reorder icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('42', '菜单修改', null, 'authMenus:edit', '0', '', '41', null);
INSERT INTO `mto_auth_menu` VALUES ('43', '菜单查看', null, 'authMenus:view', '1', '', '41', null);

-- ----------------------------
-- Table structure for mto_channels
-- ----------------------------
DROP TABLE IF EXISTS `mto_channels`;
CREATE TABLE `mto_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_2s863lts1h6m7c30152262cvj` (`key_`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_channels
-- ----------------------------
INSERT INTO `mto_channels` VALUES ('1', 'blog', '博客', '0');
INSERT INTO `mto_channels` VALUES ('2', 'share', '分享', '0');
INSERT INTO `mto_channels` VALUES ('3', 'questions', '问答', '0');
INSERT INTO `mto_channels` VALUES ('4', 'job', '招聘', '0');

-- ----------------------------
-- Table structure for mto_comments
-- ----------------------------
DROP TABLE IF EXISTS `mto_comments`;
CREATE TABLE `mto_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `pid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `to_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_comments
-- ----------------------------
INSERT INTO `mto_comments` VALUES ('1', '4', '这是一条测试评论[微笑]', '2018-02-08 14:42:53', '0', '0', '1');

-- ----------------------------
-- Table structure for mto_config
-- ----------------------------
DROP TABLE IF EXISTS `mto_config`;
CREATE TABLE `mto_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_99vo6d7ci4wlxruo3gd0q2jq8` (`key_`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_config
-- ----------------------------
INSERT INTO `mto_config` VALUES ('1', 'site_name', '0', 'Ygz');
INSERT INTO `mto_config` VALUES ('3', 'site_domain', '0', 'http://ygz.com');
INSERT INTO `mto_config` VALUES ('4', 'site_keywords', '0', '博客,社区,摄影,旅游,艺术,娱乐');
INSERT INTO `mto_config` VALUES ('5', 'site_description', '0', '轻松分享你的兴趣. 便捷的文字、图片发布,扁平化的响应式设计,美观、大气,是您记录生活的最佳选择');
INSERT INTO `mto_config` VALUES ('6', 'site_editor', '1', 'ueditor');
INSERT INTO `mto_config` VALUES ('7', 'site_metas', '0', '');
INSERT INTO `mto_config` VALUES ('8', 'site_copyright', '0', 'Copyright © Ygz');
INSERT INTO `mto_config` VALUES ('9', 'site_icp', '0', '');
INSERT INTO `mto_config` VALUES ('10', 'site_advs_right', '0', '');
INSERT INTO `mto_config` VALUES ('11', 'image_processor', '0', 'Thumbnailator');
INSERT INTO `mto_config` VALUES ('12', 'site_oauth_qq', '0', '');
INSERT INTO `mto_config` VALUES ('13', 'qq_app_id', '0', '');
INSERT INTO `mto_config` VALUES ('14', 'qq_app_key', '0', '');
INSERT INTO `mto_config` VALUES ('15', 'site_oauth_weibo', '0', '');
INSERT INTO `mto_config` VALUES ('16', 'weibo_client_id', '0', '');
INSERT INTO `mto_config` VALUES ('17', 'weibo_client_sercret', '0', '');
INSERT INTO `mto_config` VALUES ('18', 'site_oauth_douban', '0', '');
INSERT INTO `mto_config` VALUES ('19', 'douban_api_key', '0', '');
INSERT INTO `mto_config` VALUES ('20', 'douban_secret_key', '0', '');

-- ----------------------------
-- Table structure for mto_favors
-- ----------------------------
DROP TABLE IF EXISTS `mto_favors`;
CREATE TABLE `mto_favors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `own_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_favors
-- ----------------------------
INSERT INTO `mto_favors` VALUES ('1', '2018-02-08 14:41:44', '4', '1');
INSERT INTO `mto_favors` VALUES ('2', '2018-02-08 14:43:43', '1', '1');

-- ----------------------------
-- Table structure for mto_feeds
-- ----------------------------
DROP TABLE IF EXISTS `mto_feeds`;
CREATE TABLE `mto_feeds` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `own_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_feeds
-- ----------------------------
INSERT INTO `mto_feeds` VALUES ('1', '1', '2018-02-07 17:37:44', '1', '1', '1');

-- ----------------------------
-- Table structure for mto_follows
-- ----------------------------
DROP TABLE IF EXISTS `mto_follows`;
CREATE TABLE `mto_follows` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `follow_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t38um6ivtsbk34xph98levx4x` (`follow_id`),
  KEY `FK_3grh3868ek909r524m0kphmux` (`user_id`),
  CONSTRAINT `FK_3grh3868ek909r524m0kphmux` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`),
  CONSTRAINT `FK_t38um6ivtsbk34xph98levx4x` FOREIGN KEY (`follow_id`) REFERENCES `mto_users` (`id`),
  CONSTRAINT `FKlbcc3hcj1cikyow8cvlk1eupe` FOREIGN KEY (`follow_id`) REFERENCES `mto_users` (`id`),
  CONSTRAINT `FKso66aluvvri4r5a5x3lh31t8s` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_follows
-- ----------------------------

-- ----------------------------
-- Table structure for mto_friend_link
-- ----------------------------
DROP TABLE IF EXISTS `mto_friend_link`;
CREATE TABLE `mto_friend_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_friend_link
-- ----------------------------

-- ----------------------------
-- Table structure for mto_group
-- ----------------------------
DROP TABLE IF EXISTS `mto_group`;
CREATE TABLE `mto_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_2s863lts1h6m7c30152262cvj` (`key_`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_group
-- ----------------------------
INSERT INTO `mto_group` VALUES ('1', 'blog', '博文', '0');
INSERT INTO `mto_group` VALUES ('2', 'web', 'WEB', '0');
INSERT INTO `mto_group` VALUES ('3', 'tutorial', '教程', '0');

-- ----------------------------
-- Table structure for mto_logs
-- ----------------------------
DROP TABLE IF EXISTS `mto_logs`;
CREATE TABLE `mto_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` date DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_logs
-- ----------------------------

-- ----------------------------
-- Table structure for mto_menu
-- ----------------------------
DROP TABLE IF EXISTS `mto_menu`;
CREATE TABLE `mto_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(18) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `target` varchar(18) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_menu
-- ----------------------------

-- ----------------------------
-- Table structure for mto_notify
-- ----------------------------
DROP TABLE IF EXISTS `mto_notify`;
CREATE TABLE `mto_notify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `event` int(11) NOT NULL,
  `from_id` bigint(20) DEFAULT NULL,
  `own_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_notify
-- ----------------------------
INSERT INTO `mto_notify` VALUES ('1', '2018-02-08 14:41:45', '1', '4', '1', '1', '1');
INSERT INTO `mto_notify` VALUES ('2', '2018-02-08 14:42:53', '3', '4', '1', '1', '1');
INSERT INTO `mto_notify` VALUES ('3', '2018-02-08 14:43:43', '1', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for mto_posts
-- ----------------------------
DROP TABLE IF EXISTS `mto_posts`;
CREATE TABLE `mto_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `favors` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `images` int(11) NOT NULL,
  `last_image_id` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `views` int(11) NOT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_posts
-- ----------------------------
INSERT INTO `mto_posts` VALUES ('1', '1', '1', '2018-02-07 17:37:43', 'ueditor', '2', '0', '0', '0', null, '0', '232434342324235fdsddasfadsfasf', '123', '12345678', '2', '2', '0');

-- ----------------------------
-- Table structure for mto_posts_attach
-- ----------------------------
DROP TABLE IF EXISTS `mto_posts_attach`;
CREATE TABLE `mto_posts_attach` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `height` int(11) NOT NULL,
  `original` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `screenshot` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `to_id` bigint(20) DEFAULT NULL,
  `width` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_posts_attach
-- ----------------------------

-- ----------------------------
-- Table structure for mto_posts_attribute
-- ----------------------------
DROP TABLE IF EXISTS `mto_posts_attribute`;
CREATE TABLE `mto_posts_attribute` (
  `id` bigint(20) NOT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_posts_attribute
-- ----------------------------
INSERT INTO `mto_posts_attribute` VALUES ('1', '<p>232434342324235fdsddasfadsfasf</p>');

-- ----------------------------
-- Table structure for mto_role
-- ----------------------------
DROP TABLE IF EXISTS `mto_role`;
CREATE TABLE `mto_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_role
-- ----------------------------
INSERT INTO `mto_role` VALUES ('1', '超级管理员');
INSERT INTO `mto_role` VALUES ('2', '普通用户');
INSERT INTO `mto_role` VALUES ('3', '管理员');

-- ----------------------------
-- Table structure for mto_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `mto_role_menu`;
CREATE TABLE `mto_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  KEY `FK_5o5vaxfyg0d1qa0142dnkruiv` (`role_id`),
  KEY `FK1enh5yen34dpmson36gn7peq2` (`menu_id`),
  CONSTRAINT `FK1enh5yen34dpmson36gn7peq2` FOREIGN KEY (`menu_id`) REFERENCES `mto_auth_menu` (`id`),
  CONSTRAINT `FK4c4m4bpj3t1f4ovq7y36n5dq7` FOREIGN KEY (`role_id`) REFERENCES `mto_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_role_menu
-- ----------------------------
INSERT INTO `mto_role_menu` VALUES ('1', '1');
INSERT INTO `mto_role_menu` VALUES ('1', '2');
INSERT INTO `mto_role_menu` VALUES ('1', '4');
INSERT INTO `mto_role_menu` VALUES ('1', '5');
INSERT INTO `mto_role_menu` VALUES ('1', '6');
INSERT INTO `mto_role_menu` VALUES ('1', '8');
INSERT INTO `mto_role_menu` VALUES ('1', '9');
INSERT INTO `mto_role_menu` VALUES ('1', '10');
INSERT INTO `mto_role_menu` VALUES ('1', '11');
INSERT INTO `mto_role_menu` VALUES ('1', '12');
INSERT INTO `mto_role_menu` VALUES ('1', '13');
INSERT INTO `mto_role_menu` VALUES ('1', '15');
INSERT INTO `mto_role_menu` VALUES ('1', '16');
INSERT INTO `mto_role_menu` VALUES ('1', '17');
INSERT INTO `mto_role_menu` VALUES ('1', '18');
INSERT INTO `mto_role_menu` VALUES ('1', '19');
INSERT INTO `mto_role_menu` VALUES ('1', '20');
INSERT INTO `mto_role_menu` VALUES ('1', '35');
INSERT INTO `mto_role_menu` VALUES ('1', '36');
INSERT INTO `mto_role_menu` VALUES ('1', '37');
INSERT INTO `mto_role_menu` VALUES ('1', '41');
INSERT INTO `mto_role_menu` VALUES ('1', '42');
INSERT INTO `mto_role_menu` VALUES ('1', '43');
INSERT INTO `mto_role_menu` VALUES ('3', '1');
INSERT INTO `mto_role_menu` VALUES ('3', '2');
INSERT INTO `mto_role_menu` VALUES ('3', '4');
INSERT INTO `mto_role_menu` VALUES ('3', '5');
INSERT INTO `mto_role_menu` VALUES ('3', '6');
INSERT INTO `mto_role_menu` VALUES ('3', '8');
INSERT INTO `mto_role_menu` VALUES ('3', '9');
INSERT INTO `mto_role_menu` VALUES ('3', '10');
INSERT INTO `mto_role_menu` VALUES ('3', '11');
INSERT INTO `mto_role_menu` VALUES ('3', '12');
INSERT INTO `mto_role_menu` VALUES ('3', '13');

-- ----------------------------
-- Table structure for mto_users
-- ----------------------------
DROP TABLE IF EXISTS `mto_users`;
CREATE TABLE `mto_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT '/assets/images/ava/default.png',
  `updated` datetime DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `source` int(11) NOT NULL,
  `active_email` int(11) DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `fans` int(11) NOT NULL,
  `favors` int(11) NOT NULL,
  `follows` int(11) NOT NULL,
  `posts` int(11) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_users
-- ----------------------------
INSERT INTO `mto_users` VALUES ('1', '2015-08-06 17:52:41', 'example@mtons.com', '2018-03-02 14:26:09', null, 'UUKHSDDI5KPA43A8VL06V0TU2', '0', 'admin', '小豆丁', '/dist/images/ava/default.png', '2015-07-26 11:08:36', '0', '1', '0', '0', '6', '-2', '0', '-2', '20', '');
INSERT INTO `mto_users` VALUES ('4', '2018-02-08 14:38:11', '1750777402@qq.com', '2018-02-08 15:13:36', null, 'UUKHSDDI5KPA43A8VL06V0TU2', '0', 'zx123456', 'ygz', '/dist/images/ava/default.png', null, '0', null, '0', '1', '1', '0', '0', '0', '0', null);

-- ----------------------------
-- Table structure for mto_users_open_oauth
-- ----------------------------
DROP TABLE IF EXISTS `mto_users_open_oauth`;
CREATE TABLE `mto_users_open_oauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(255) DEFAULT NULL,
  `expire_in` varchar(255) DEFAULT NULL,
  `oauth_code` varchar(255) DEFAULT NULL,
  `oauth_type` int(11) DEFAULT NULL,
  `oauth_user_id` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_users_open_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for mto_user_role
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_role`;
CREATE TABLE `mto_user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FK_fhtla2vc199mv0ru2r2kvakha` (`role_id`),
  KEY `FK_b4m7ef0uvkr4efrscf8r1ehy2` (`user_id`),
  CONSTRAINT `FK_b4m7ef0uvkr4efrscf8r1ehy2` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`),
  CONSTRAINT `FK_fhtla2vc199mv0ru2r2kvakha` FOREIGN KEY (`role_id`) REFERENCES `mto_role` (`id`),
  CONSTRAINT `FKi5bot5saeg7e7fkjleer6cl0q` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`),
  CONSTRAINT `FKklvl5j02s6eorfu88bbvr2e7x` FOREIGN KEY (`role_id`) REFERENCES `mto_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_user_role
-- ----------------------------
INSERT INTO `mto_user_role` VALUES ('1', '1');

-- ----------------------------
-- Table structure for mto_verify
-- ----------------------------
DROP TABLE IF EXISTS `mto_verify`;
CREATE TABLE `mto_verify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) NOT NULL,
  `created` datetime NOT NULL,
  `expired` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `target` varchar(96) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_m7p0b526c4xlgjn787t22om2g` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_verify
-- ----------------------------
INSERT INTO `mto_verify` VALUES ('1', '6775352473', '2018-02-04 14:58:13', '2018-02-04 15:28:13', '0', '1750777402@qq.com', null, '2', '1');
INSERT INTO `mto_verify` VALUES ('2', '5849623224', '2018-02-07 17:48:03', '2018-02-07 18:18:03', '0', '1750777402@qq.com', null, '1', '2');
INSERT INTO `mto_verify` VALUES ('3', '4725454218', '2018-02-08 14:34:15', '2018-02-08 15:04:15', '0', '1750777402@qq.com', null, '1', '3');
INSERT INTO `mto_verify` VALUES ('4', '9820918308', '2018-02-08 14:38:11', '2018-02-08 15:08:11', '1', '1750777402@qq.com', '32237606', '1', '4');
