# Host: localhost  (Version 5.7.23-log)
# Date: 2020-06-01 15:50:23
# Generator: MySQL-Front 6.0  (Build 1.57)


#
# Structure for table "copy_of_tbl_menu"
#

DROP TABLE IF EXISTS `copy_of_tbl_menu`;
CREATE TABLE `copy_of_tbl_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT '' COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1019 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

#
# Data for table "copy_of_tbl_menu"
#

INSERT INTO `copy_of_tbl_menu` VALUES (1,'系统管理',0,1,'#','M','0','','layui-icon-set','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','系统管理目录'),(2,'系统监控',0,2,'#','M','0','','layui-icon-camera-fill','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','系统监控目录'),(100,'用户管理',1,1,'/user/toShowUser','C','0','system:user:view','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','用户管理菜单'),(101,'角色管理',1,2,'/role/toShowRole','C','0','system:role:view','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','角色管理菜单'),(102,'菜单管理',1,3,'/menu/toShowMenu','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','菜单管理菜单'),(103,'部门管理',1,4,'/dept/toShowDept','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','部门管理菜单'),(109,'在线用户',2,1,'/monitor/online','C','0','monitor:online:view','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','在线用户菜单'),(111,'数据监控',2,3,'/monitor/data','C','0','monitor:data:view','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','数据监控菜单'),(112,'服务监控',2,3,'/monitor/server','C','0','monitor:server:view','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','服务监控菜单'),(1000,'用户查询',100,1,'#','F','0','system:user:list','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1001,'用户新增',100,2,'#','F','0','system:user:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1002,'用户修改',100,3,'#','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1003,'用户删除',100,4,'#','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1004,'用户导出',100,5,'#','F','0','system:user:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1005,'重置密码',100,6,'#','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1006,'角色查询',101,1,'#','F','0','system:role:list','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1007,'角色新增',101,2,'#','F','0','system:role:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1008,'角色修改',101,3,'#','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1009,'角色删除',101,4,'#','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1010,'角色导出',101,5,'#','F','0','system:role:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1011,'菜单查询',102,1,'#','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1012,'菜单新增',102,2,'#','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1013,'菜单修改',102,3,'#','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1014,'菜单删除',102,4,'#','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1015,'部门查询',103,1,'#','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1016,'部门新增',103,2,'#','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1017,'部门修改',103,3,'#','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1018,'部门删除',103,4,'#','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','');

#
# Structure for table "login_user"
#

DROP TABLE IF EXISTS `login_user`;
CREATE TABLE `login_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "login_user"
#

INSERT INTO `login_user` VALUES (1,'木头骑士','12345678'),(2,'ggggggg','gggggggg'),(3,'mike','mikemike'),(4,'jack','jackjack'),(5,'DANNY01','danny01'),(6,'zhang','zhang'),(7,'罗老师','bilibililuo'),(8,'jason','jason'),(10,'王五','wangwu'),(11,'李四','lisi'),(12,'李四四','lisisi'),(13,'李小四','lixiaosi'),(14,'张三','zhangsan'),(15,'张三三','zhangsansan'),(17,'zhangsan','zhangsan'),(18,'test01','test01'),(19,'test02','test02'),(22,'test88','test88');

#
# Structure for table "t_user"
#

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

#
# Data for table "t_user"
#

INSERT INTO `t_user` VALUES (2,'ggggggg','广州'),(3,'mike','湖南省长沙'),(4,'jack','广州'),(5,'DANNY01','湖南长沙'),(6,'zhang','广州'),(7,'kkk','深圳'),(8,'jason','gangzhou'),(10,'王五','广东省中山市'),(11,'李四','广东广州'),(12,'李四四','广东广州'),(13,'李小四','广东广州'),(14,'张三','广东广州'),(15,'张三三','广东广州'),(17,'zhangsan','广东省广州'),(18,'test01','广东省'),(19,'test02','广东省'),(20,'旺财','湖南省'),(22,'test88','xxx');

#
# Structure for table "tbl_dept"
#

DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门表';

#
# Data for table "tbl_dept"
#

INSERT INTO `tbl_dept` VALUES (101,'研发部门',1,'0','0','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00'),(102,'市场部门',2,'0','0','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00'),(103,'测试部门',3,'0','0','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00'),(104,'财务部门',4,'0','0','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00'),(105,'运维部门',5,'0','0','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00'),(106,'市场部门',6,'0','0','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00');

#
# Structure for table "tbl_menu"
#

DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT '' COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1019 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

#
# Data for table "tbl_menu"
#

INSERT INTO `tbl_menu` VALUES (1,'系统管理',0,1,'#','M','0','','layui-icon-set','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','系统管理目录'),(100,'用户管理',1,1,'/user/toShowUser','C','0','system:user:view','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','用户管理菜单'),(101,'角色管理',1,2,'/role/toShowRole','C','0','system:role:view','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','角色管理菜单'),(102,'菜单管理',1,3,'/menu/toShowMenu','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','菜单管理菜单'),(103,'部门管理',1,4,'/dept/toShowDept','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','部门管理菜单'),(1000,'用户查询',100,1,'#','F','0','system:user:list','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1001,'用户新增',100,2,'#','F','0','system:user:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1002,'用户修改',100,3,'#','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1003,'用户删除',100,4,'#','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1004,'用户导出',100,5,'#','F','0','system:user:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1005,'重置密码',100,6,'#','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1006,'角色查询',101,1,'#','F','0','system:role:list','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1007,'角色新增',101,2,'#','F','0','system:role:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1008,'角色修改',101,3,'#','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1009,'角色删除',101,4,'#','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1010,'角色导出',101,5,'#','F','0','system:role:export','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1011,'菜单查询',102,1,'#','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1012,'菜单新增',102,2,'#','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1013,'菜单修改',102,3,'#','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1014,'菜单删除',102,4,'#','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1015,'部门查询',103,1,'#','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1016,'部门新增',103,2,'#','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1017,'部门修改',103,3,'#','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00',''),(1018,'部门删除',103,4,'#','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','');

#
# Structure for table "tbl_role"
#

DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

#
# Data for table "tbl_role"
#

INSERT INTO `tbl_role` VALUES (1,'管理员','admin',1,'0','0','admin','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','管理员'),(2,'普通角色','common',2,'0','0','admin','2018-03-16 11:33:00','admin','2019-08-07 16:24:20','普通角色'),(3,'测试角色','ceshi',3,'0','0','admin','2019-12-31 15:40:32','admin','2019-12-31 15:42:14','');

#
# Structure for table "tbl_role_menu"
#

DROP TABLE IF EXISTS `tbl_role_menu`;
CREATE TABLE `tbl_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

#
# Data for table "tbl_role_menu"
#

INSERT INTO `tbl_role_menu` VALUES (1,1),(1,2),(1,100),(1,101),(1,102),(1,103),(1,109),(1,111),(1,112),(1,1000),(1,1001),(1,1002),(1,1003),(1,1004),(1,1005),(1,1006),(1,1007),(1,1008),(1,1009),(1,1010),(1,1011),(1,1012),(1,1013),(1,1014),(1,1015),(1,1016),(1,1017),(1,1018),(2,1),(2,100),(2,101),(2,1001),(2,1002),(2,1003);

#
# Structure for table "tbl_user"
#

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(50) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

#
# Data for table "tbl_user"
#

INSERT INTO `tbl_user` VALUES (1,101,'admin','豆豆','86521760@qq.com','18538062907','0',NULL,'280111d7f4fa14ff76606fe1ffa4d782','9ed6610c-6132-4d0c-a8a4-5011080ba754','0','0','admin','2018-03-16 11:33:00','admin','2020-01-01 21:15:13','管理员'),(3,101,'chenjian','陈建','chenjian3822515@163.com','18538062906','0',NULL,'f4a77e1417b03bf32d4b33a137282093','4bd21f','0','0','admin','2019-04-18 11:48:31','admin','2019-08-07 12:31:29',''),(4,101,'root2','张三','86587432@qq.com','18538062999','0',NULL,'3512abbc9c7c8daa4c3560e79f8d1858','568629be-6ca4-46eb-baaf-f6fea4c23d74','0','0','admin','2019-08-07 15:46:18','admin','2019-08-07 16:24:29',''),(5,103,'lihang','lihang','7987954@qq.com','17947934435','0',NULL,'6d70551312e8167cb363020454a3ba03','f06b8d','0','0','admin','2019-12-31 15:38:14','admin','2020-01-01 21:02:55',''),(6,1,'mike','mike','1792779566@qq.com','12345678912','0',NULL,'352d6a427674be99c0ad3fbaa781d178','47563ca2-482e-4224-8604-a7e64468b71e','0','0','',NULL,'',NULL,'');

#
# Structure for table "tbl_user_role"
#

DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

#
# Data for table "tbl_user_role"
#

INSERT INTO `tbl_user_role` VALUES (1,1),(2,2),(3,2),(3,3),(4,2),(5,3);

#
# Structure for table "userinfo"
#

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "userinfo"
#

INSERT INTO `userinfo` VALUES (17,'root2','3512abbc9c7c8daa4c3560e79f8d1858','568629be-6ca4-46eb-baaf-f6fea4c23d74'),(18,'admin','280111d7f4fa14ff76606fe1ffa4d782','9ed6610c-6132-4d0c-a8a4-5011080ba754'),(21,'5432','2f43a00422c65488fac39c80a30f187f','7defb525-dd24-4c36-861c-67cdfbae0051');
