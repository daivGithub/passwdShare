/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : share

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2018-12-09 15:20:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_act_business
-- ----------------------------
DROP TABLE IF EXISTS `t_act_business`;
CREATE TABLE `t_act_business` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `proc_def_id` varchar(255) DEFAULT NULL,
  `proc_inst_id` varchar(255) DEFAULT NULL,
  `result` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `table_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `apply_time` datetime DEFAULT NULL,
  `is_history` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_act_business
-- ----------------------------

-- ----------------------------
-- Table structure for t_act_category
-- ----------------------------
DROP TABLE IF EXISTS `t_act_category`;
CREATE TABLE `t_act_category` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_act_category
-- ----------------------------
INSERT INTO `t_act_category` VALUES ('80540745236221952', 'admin', '2018-11-29 20:12:31', '0', 'admin', '2018-11-29 22:28:09', '', '0', '1.00', '0', '人事相关', '0');
INSERT INTO `t_act_category` VALUES ('80544250063753216', 'admin', '2018-11-29 20:26:27', '0', 'admin', '2018-11-29 22:27:45', '\0', '80540745236221952', '0.00', '0', '请假申请', '1');
INSERT INTO `t_act_category` VALUES ('80574743098429440', 'admin', '2018-11-29 22:27:37', '0', 'admin', '2018-11-29 22:27:37', '\0', '80540745236221952', '0.00', '0', '报销申请', '1');
INSERT INTO `t_act_category` VALUES ('80574860496998400', 'admin', '2018-11-29 22:28:05', '0', 'admin', '2018-11-29 22:29:03', '', '0', '0.00', '0', '工作审核', '0');
INSERT INTO `t_act_category` VALUES ('80575104039260160', 'admin', '2018-11-29 22:29:03', '0', 'admin', '2018-11-29 22:29:03', '\0', '80574860496998400', '0.00', '0', '合同审批', '1');
INSERT INTO `t_act_category` VALUES ('80575163153780736', 'admin', '2018-11-29 22:29:17', '0', 'admin', '2018-11-29 22:29:17', '\0', '80574860496998400', '0.00', '0', '订单审批', '1');

-- ----------------------------
-- Table structure for t_act_model
-- ----------------------------
DROP TABLE IF EXISTS `t_act_model`;
CREATE TABLE `t_act_model` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `model_key` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_act_model
-- ----------------------------

-- ----------------------------
-- Table structure for t_act_node
-- ----------------------------
DROP TABLE IF EXISTS `t_act_node`;
CREATE TABLE `t_act_node` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `node_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `relate_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_act_process
-- ----------------------------
DROP TABLE IF EXISTS `t_act_process`;
CREATE TABLE `t_act_process` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `deployment_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `diagram_name` varchar(255) DEFAULT NULL,
  `latest` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `process_key` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `xml_name` varchar(255) DEFAULT NULL,
  `business_table` varchar(255) DEFAULT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_act_process
-- ----------------------------

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('40327253309001728', '', '2018-08-10 20:58:27', '0', '', '2018-08-11 17:26:38', '40322811096469504', '3.00', '-1', '人工智障', null);
INSERT INTO `t_department` VALUES ('40322777781112832', '', '2018-08-10 20:40:40', '0', '', '2018-08-11 00:03:06', '0', '1.00', '0', '总部', '');
INSERT INTO `t_department` VALUES ('40322811096469504', '', '2018-08-10 20:40:48', '0', '', '2018-08-11 00:27:05', '40322777781112832', '1.00', '0', '技术部', '');
INSERT INTO `t_department` VALUES ('40322852833988608', '', '2018-08-10 20:40:58', '0', '', '2018-08-11 01:29:42', '40322811096469504', '1.00', '0', '研发中心', null);
INSERT INTO `t_department` VALUES ('40327204755738624', '', '2018-08-10 20:58:15', '0', '', '2018-08-10 22:02:15', '40322811096469504', '2.00', '0', '大数据', null);
INSERT INTO `t_department` VALUES ('40343262766043136', '', '2018-08-10 22:02:04', '0', '', '2018-08-11 00:02:53', '0', '2.00', '0', '成都分部', '');
INSERT INTO `t_department` VALUES ('40681289119961088', '', '2018-08-11 20:25:16', '0', '', '2018-08-11 22:47:48', '40652270295060480', '2.00', '0', 'VIP', '\0');
INSERT INTO `t_department` VALUES ('40344005342400512', '', '2018-08-10 22:05:01', '0', '', '2018-08-11 17:48:44', '40343262766043136', '2.00', '0', 'Vue', null);
INSERT INTO `t_department` VALUES ('40652270295060480', '', '2018-08-11 18:29:57', '0', '', '2018-08-12 18:45:01', '0', '3.00', '0', '人事部', '');
INSERT INTO `t_department` VALUES ('40389030113710080', '', '2018-08-11 01:03:56', '0', '', '2018-08-11 17:50:04', '40343262766043136', '1.00', '0', 'JAVA', '\0');
INSERT INTO `t_department` VALUES ('40652338142121984', null, '2018-08-11 18:30:13', '0', null, '2018-08-11 18:30:13', '40652270295060480', '1.00', '0', '游客', '\0');

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('75135930788220928', 'admin', '2018-11-14 22:15:43', 0, 'admin', '2018-11-27 01:39:06', '', '性别', 'sex', 0.00);
INSERT INTO `t_dict` VALUES ('75383353938808832', 'admin', '2018-11-15 14:38:53', 0, 'admin', '2018-11-27 01:39:15', '', '消息类型', 'message_type', 1.00);
INSERT INTO `t_dict` VALUES ('75388696739713024', 'admin', '2018-11-15 15:00:07', 0, 'admin', '2018-11-27 01:39:22', '', '按钮权限类型', 'permission_type', 2.00);
INSERT INTO `t_dict` VALUES ('75392985935646720', 'admin', '2018-11-15 15:17:10', 0, 'admin', '2018-11-27 01:39:29', '', '腾讯云对象存储区域', 'tencent_bucket_region', 3.00);
INSERT INTO `t_dict` VALUES ('79717732567748608', 'admin', '2018-11-27 13:42:10', 0, 'admin', '2018-11-27 13:42:10', '', '流程节点类型', 'process_node_type', 4.00);
INSERT INTO `t_dict` VALUES ('81843858882695168', 'admin', '2018-12-03 10:30:38', 0, 'admin', '2018-12-03 10:30:49', '', '优先级', 'priority', 5.00);
INSERT INTO `t_dict` VALUES ('82236987314016256', 'admin', '2018-12-04 12:32:47', 0, 'admin', '2018-12-04 12:32:47', '', '业务表', 'business_table', 6.00);
INSERT INTO `t_dict` VALUES ('82236987314016257', 'admin', '2018-12-04 12:32:47', 0, 'admin', '2018-12-04 12:32:47', '', '业务表单路由', 'business_form', 7.00);
INSERT INTO `t_dict` VALUES ('99020862912466944', 'admin', '2019-01-19 20:05:54', 0, 'admin', '2019-01-19 20:06:10', '', '请假类型', 'leave_type', 8.00);

-- ----------------------------
-- Table structure for t_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `t_dict_data`;
CREATE TABLE `t_dict_data` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dict_id` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict_data
-- ----------------------------
INSERT INTO `t_dict_data` VALUES ('75158227712479232', 'admin', '2018-11-14 23:44:19', 0, 'admin', '2019-04-01 23:53:13', '', '75135930788220928', 0.00, 0, '男', '男');
INSERT INTO `t_dict_data` VALUES ('75159254272577536', 'admin', '2018-11-14 23:48:24', 0, 'admin', '2019-04-01 23:53:17', '', '75135930788220928', 1.00, 0, '女', '女');
INSERT INTO `t_dict_data` VALUES ('75159898425397248', 'admin', '2018-11-14 23:50:57', 0, 'admin', '2019-04-01 23:53:22', '', '75135930788220928', 2.00, -1, '保密', '保密');
INSERT INTO `t_dict_data` VALUES ('75385648017575936', 'admin', '2018-11-15 14:48:00', 0, 'admin', '2019-04-02 00:10:36', '', '75383353938808832', 0.00, 0, '系统公告', '系统公告');
INSERT INTO `t_dict_data` VALUES ('75385706913992704', 'admin', '2018-11-15 14:48:14', 0, 'admin', '2019-04-02 00:10:32', '', '75383353938808832', 1.00, 0, '提醒', '提醒');
INSERT INTO `t_dict_data` VALUES ('75385774274514944', 'admin', '2018-11-15 14:48:30', 0, 'admin', '2019-04-02 00:10:28', '', '75383353938808832', 2.00, 0, '私信', '私信');
INSERT INTO `t_dict_data` VALUES ('75390787835138048', 'admin', '2018-11-15 15:08:26', 0, 'admin', '2018-11-15 15:08:26', '', '75388696739713024', 0.00, 0, '查看操作(view)', 'view');
INSERT INTO `t_dict_data` VALUES ('75390886501945344', 'admin', '2018-11-15 15:08:49', 0, 'admin', '2018-11-15 15:08:57', '', '75388696739713024', 1.00, 0, '添加操作(add)', 'add');
INSERT INTO `t_dict_data` VALUES ('75390993939042304', 'admin', '2018-11-15 15:09:15', 0, 'admin', '2018-11-15 15:09:15', '', '75388696739713024', 2.00, 0, '编辑操作(edit)', 'edit');
INSERT INTO `t_dict_data` VALUES ('75391067532300288', 'admin', '2018-11-15 15:09:32', 0, 'admin', '2018-11-15 15:09:32', '', '75388696739713024', 3.00, 0, '删除操作(delete)', 'delete');
INSERT INTO `t_dict_data` VALUES ('75391126902673408', 'admin', '2018-11-15 15:09:46', 0, 'admin', '2018-11-15 15:09:46', '', '75388696739713024', 4.00, 0, '清空操作(clear)', 'clear');
INSERT INTO `t_dict_data` VALUES ('75391192883269632', 'admin', '2018-11-15 15:10:02', 0, 'admin', '2018-11-15 15:10:02', '', '75388696739713024', 5.00, 0, '启用操作(enable)', 'enable');
INSERT INTO `t_dict_data` VALUES ('75391251024711680', 'admin', '2018-11-15 15:10:16', 0, 'admin', '2018-11-15 15:10:16', '', '75388696739713024', 6.00, 0, '禁用操作(disable)', 'disable');
INSERT INTO `t_dict_data` VALUES ('75391297124306944', 'admin', '2018-11-15 15:10:27', 0, 'admin', '2018-11-15 15:10:27', '', '75388696739713024', 7.00, 0, '搜索操作(search)', 'search');
INSERT INTO `t_dict_data` VALUES ('75391343379091456', 'admin', '2018-11-15 15:10:38', 0, 'admin', '2018-11-15 15:10:38', '', '75388696739713024', 8.00, 0, '上传文件(upload)', 'upload');
INSERT INTO `t_dict_data` VALUES ('75391407526776832', 'admin', '2018-11-15 15:10:53', 0, 'admin', '2018-11-15 15:10:53', '', '75388696739713024', 9.00, 0, '导出操作(output)', 'output');
INSERT INTO `t_dict_data` VALUES ('75391475042488320', 'admin', '2018-11-15 15:11:09', 0, 'admin', '2018-11-15 15:11:09', '', '75388696739713024', 10.00, 0, '导入操作(input)', 'input');
INSERT INTO `t_dict_data` VALUES ('75391522182270976', 'admin', '2018-11-15 15:11:21', 0, 'admin', '2018-11-15 15:11:21', '', '75388696739713024', 11.00, 0, '分配权限(editPerm)', 'editPerm');
INSERT INTO `t_dict_data` VALUES ('75391576364290048', 'admin', '2018-11-15 15:11:34', 0, 'admin', '2018-11-15 15:11:34', '', '75388696739713024', 12.00, 0, '设为默认(setDefault)', 'setDefault');
INSERT INTO `t_dict_data` VALUES ('75391798033256448', 'admin', '2018-11-15 15:12:26', 0, 'admin', '2018-11-15 15:12:26', '', '75388696739713024', 13.00, 0, '其他操作(other)', 'other');
INSERT INTO `t_dict_data` VALUES ('75393605291741184', 'admin', '2018-11-15 15:19:37', 0, 'admin', '2018-11-15 15:19:37', '', '75392985935646720', 0.00, 0, '北京一区（华北）', 'ap-beijing-1');
INSERT INTO `t_dict_data` VALUES ('75393681254780928', 'admin', '2018-11-15 15:19:55', 0, 'admin', '2018-11-15 15:19:55', '', '75392985935646720', 1.00, 0, '北京', 'ap-beijing');
INSERT INTO `t_dict_data` VALUES ('75393767619694592', 'admin', '2018-11-15 15:20:16', 0, 'admin', '2018-11-15 15:20:16', '', '75392985935646720', 2.00, 0, '上海（华东）', 'ap-shanghai');
INSERT INTO `t_dict_data` VALUES ('75393851484803072', 'admin', '2018-11-15 15:20:36', 0, 'admin', '2018-11-15 15:20:36', '', '75392985935646720', 3.00, 0, '广州（华南）', 'ap-guangzhou');
INSERT INTO `t_dict_data` VALUES ('75393961887272960', 'admin', '2018-11-15 15:21:02', 0, 'admin', '2018-11-15 15:21:02', '', '75392985935646720', 4.00, 0, '成都（西南）', 'ap-chengdu');
INSERT INTO `t_dict_data` VALUES ('75394053969022976', 'admin', '2018-11-15 15:21:24', 0, 'admin', '2018-11-15 15:21:24', '', '75392985935646720', 5.00, 0, '重庆', 'ap-chongqing');
INSERT INTO `t_dict_data` VALUES ('75394122474590208', 'admin', '2018-11-15 15:21:41', 0, 'admin', '2018-11-15 15:21:41', '', '75392985935646720', 6.00, 0, '新加坡', 'ap-singapore');
INSERT INTO `t_dict_data` VALUES ('75394186202845184', 'admin', '2018-11-15 15:21:56', 0, 'admin', '2018-11-15 15:21:56', '', '75392985935646720', 7.00, 0, '香港', 'ap-hongkong');
INSERT INTO `t_dict_data` VALUES ('75394254255427584', 'admin', '2018-11-15 15:22:12', 0, 'admin', '2018-11-15 15:22:12', '', '75392985935646720', 8.00, 0, '多伦多', 'na-toronto');
INSERT INTO `t_dict_data` VALUES ('75394309125312512', 'admin', '2018-11-15 15:22:25', 0, 'admin', '2018-11-15 15:22:25', '', '75392985935646720', 9.00, 0, '法兰克福', 'eu-frankfurt');
INSERT INTO `t_dict_data` VALUES ('75394367044456448', 'admin', '2018-11-15 15:22:39', 0, 'admin', '2018-11-15 15:22:39', '', '75392985935646720', 10.00, 0, '孟买', 'ap-mumbai');
INSERT INTO `t_dict_data` VALUES ('75394448523005952', 'admin', '2018-11-15 15:22:58', 0, 'admin', '2018-11-15 15:22:58', '', '75392985935646720', 11.00, 0, '首尔', 'ap-seoul');
INSERT INTO `t_dict_data` VALUES ('75394604765024256', 'admin', '2018-11-15 15:23:36', 0, 'admin', '2018-11-15 15:23:36', '', '75392985935646720', 12.00, 0, '硅谷', 'na-siliconvalley');
INSERT INTO `t_dict_data` VALUES ('75394659299364864', 'admin', '2018-11-15 15:23:49', 0, 'admin', '2018-11-15 15:23:49', '', '75392985935646720', 13.00, 0, '弗吉尼亚', 'na-ashburn');
INSERT INTO `t_dict_data` VALUES ('75394705700950016', 'admin', '2018-11-15 15:24:00', 0, 'admin', '2018-11-15 15:24:00', '', '75392985935646720', 14.00, 0, '曼谷', 'ap-bangkok');
INSERT INTO `t_dict_data` VALUES ('75394759287377920', 'admin', '2018-11-15 15:24:12', 0, 'admin', '2018-11-15 15:24:12', '', '75392985935646720', 15.00, 0, '莫斯科', 'eu-moscow');
INSERT INTO `t_dict_data` VALUES ('79717808262352896', 'admin', '2018-11-27 13:42:28', 0, 'admin', '2018-11-27 13:42:28', '', '79717732567748608', 0.00, 0, '开始节点', '0');
INSERT INTO `t_dict_data` VALUES ('79717858308788224', 'admin', '2018-11-27 13:42:40', 0, 'admin', '2018-11-27 13:42:40', '', '79717732567748608', 1.00, 0, '审批节点', '1');
INSERT INTO `t_dict_data` VALUES ('79717920061526016', 'admin', '2018-11-27 13:42:54', 0, 'admin', '2018-12-08 20:35:39', '', '79717732567748608', 2.00, 0, '结束节点', '2');
INSERT INTO `t_dict_data` VALUES ('81843987719131136', 'admin', '2018-12-03 10:31:08', 0, 'admin', '2018-12-03 10:31:08', '', '81843858882695168', 0.00, 0, '普通', '0');
INSERT INTO `t_dict_data` VALUES ('81844044015079424', 'admin', '2018-12-03 10:31:22', 0, 'admin', '2018-12-03 10:31:22', '', '81843858882695168', 1.00, 0, '重要', '1');
INSERT INTO `t_dict_data` VALUES ('81844100705292288', 'admin', '2018-12-03 10:31:35', 0, 'admin', '2018-12-03 10:31:35', '', '81843858882695168', 2.00, 0, '紧急', '2');
INSERT INTO `t_dict_data` VALUES ('82237106587439104', 'admin', '2018-12-04 12:33:15', 0, 'admin', '2018-12-04 12:33:15', '', '82236987314016256', 0.00, 0, '请假申请表', 't_leave');
INSERT INTO `t_dict_data` VALUES ('82237106587439105', 'admin', '2018-12-04 12:33:15', 0, 'admin', '2018-12-04 12:33:15', '', '82236987314016257', 0.00, 0, '请假申请表', 'leave');
INSERT INTO `t_dict_data` VALUES ('99020985985929216', 'admin', '2019-01-19 20:06:23', 0, 'admin', '2019-04-01 23:55:48', '', '99020862912466944', 0.00, 0, '年假', '年假');
INSERT INTO `t_dict_data` VALUES ('99021020739932160', 'admin', '2019-01-19 20:06:32', 0, 'admin', '2019-04-01 23:55:52', '', '99020862912466944', 1.00, 0, '事假', '事假');
INSERT INTO `t_dict_data` VALUES ('99021195566911488', 'admin', '2019-01-19 20:07:13', 0, 'admin', '2019-04-01 23:55:56', '', '99020862912466944', 2.00, 0, '病假', '病假');
INSERT INTO `t_dict_data` VALUES ('99021242476007424', 'admin', '2019-01-19 20:07:24', 0, 'admin', '2019-04-01 23:56:01', '', '99020862912466944', 3.00, 0, '调休', '调休');
INSERT INTO `t_dict_data` VALUES ('99021300730695680', 'admin', '2019-01-19 20:07:38', 0, 'admin', '2019-04-01 23:56:05', '', '99020862912466944', 4.00, 0, '产假', '产假');
INSERT INTO `t_dict_data` VALUES ('99021341889400832', 'admin', '2019-01-19 20:07:48', 0, 'admin', '2019-04-01 23:56:10', '', '99020862912466944', 5.00, 0, '陪产假', '陪产假');
INSERT INTO `t_dict_data` VALUES ('99021382393794560', 'admin', '2019-01-19 20:07:58', 0, 'admin', '2019-04-01 23:56:14', '', '99020862912466944', 6.00, 0, '婚假', '婚假');
INSERT INTO `t_dict_data` VALUES ('99021437171404800', 'admin', '2019-01-19 20:08:11', 0, 'admin', '2019-04-01 23:56:18', '', '99020862912466944', 7.00, 0, '例假', '例假');
INSERT INTO `t_dict_data` VALUES ('99021497724571648', 'admin', '2019-01-19 20:08:25', 0, 'admin', '2019-04-01 23:56:23', '', '99020862912466944', 8.00, 0, '丧假', '丧假');
INSERT INTO `t_dict_data` VALUES ('99021556704874496', 'admin', '2019-01-19 20:08:39', 0, 'admin', '2019-04-01 23:56:27', '', '99020862912466944', 9.00, 0, '哺乳假', '哺乳假');
INSERT INTO `t_dict_data` VALUES ('125170157323554816', 'admin', '2019-04-01 23:53:52', 0, 'admin', '2019-04-01 23:53:52', '', '75383353938808832', 3.00, 0, '工作流', '工作流');

-- ----------------------------
-- Table structure for t_file
-- ----------------------------
DROP TABLE IF EXISTS `t_file`;
CREATE TABLE `t_file` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `f_key` varchar(255) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_file
-- ----------------------------

-- ----------------------------
-- Table structure for t_github
-- ----------------------------
DROP TABLE IF EXISTS `t_github`;
CREATE TABLE `t_github` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_related` bit(1) DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `relate_username` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_github
-- ----------------------------

-- ----------------------------
-- Table structure for t_leave
-- ----------------------------
DROP TABLE IF EXISTS `t_leave`;
CREATE TABLE `t_leave` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_leave
-- ----------------------------

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cost_time` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_param` longtext,
  `request_type` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `log_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_send` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('43615268366192640', '', '2018-08-19 22:43:51', '0', 'admin', '2018-11-15 21:38:52', '', '欢迎您注册账号使用X-Boot 点我查看使用须知', '系统公告', '<p style=\"text-align: center;\">X-Boot是很棒的Web前后端分离开发平台，开源版本请遵循GPL v3.0开源协议，不得闭源，商用需求请联系作者签署授权协议。</p><p style=\"text-align: center;\">捐赠获取完整版：<a href=\"http://xpay.exrick.cn/pay?share\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255);\">立即去捐赠获取</a></p><p style=\"text-align: center;\"><img src=\"https://i.loli.net/2018/08/24/5b801c8652227.png\" style=\"max-width:150px;\"><br></p><p style=\"text-align: center;\">（支持手机扫码支付）</p><p style=\"text-align: center;\">获取商用授权：<a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=1012139570&amp;site=qq&amp;menu=yes\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255);\">立即联系作者获取商用授权</a></p>');
INSERT INTO `t_message` VALUES ('124717033060306944', 'admin', '2019-03-31 17:53:19', 0, 'admin', '2019-03-31 17:53:19', NULL, '您收到了一条新的工作流待办消息，赶快去处理查看吧', '工作流', '<p>您收到了一条新的工作流待办消息，赶快去”工作流程-我的待办“处理查看吧</p>');
INSERT INTO `t_message` VALUES ('124743474544119808', 'admin', '2019-03-31 19:38:23', 0, 'admin', '2019-03-31 19:38:23', NULL, '您有一个工作流申请已审批通过，赶快去处理查看吧', '工作流', '<p>您有一个工作流申请已审批通过，赶快去”工作流程-我的申请“处理查看吧</p>');
INSERT INTO `t_message` VALUES ('124744392996032512', 'admin', '2019-03-31 19:42:02', 0, 'admin', '2019-03-31 19:42:02', NULL, '您有一个工作流申请已被驳回，赶快去处理查看吧', '工作流', '<p>您有一个工作流申请已已被驳回，赶快去”工作流程-我的申请“处理查看吧</p>');
INSERT INTO `t_message` VALUES ('124744706050494464', 'admin', '2019-03-31 19:43:17', 0, 'admin', '2019-03-31 19:43:17', NULL, '您收到了一个新的被委托待办工作流任务，赶快去处理查看吧', '工作流', '<p>您收到了一个新的被委托待办工作流任务，赶快去”工作流程-我的待办“处理查看吧</p>');

-- ----------------------------
-- Table structure for t_message_send
-- ----------------------------
DROP TABLE IF EXISTS `t_message_send`;
CREATE TABLE `t_message_send` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message_send
-- ----------------------------
INSERT INTO `t_message_send` VALUES ('43615268663988224', null, '2018-08-19 22:43:51', '0', null, '2018-08-19 22:43:51', '43615268366192640', '0', '682265633886209');
INSERT INTO `t_message_send` VALUES ('43615268663988225', null, '2018-08-19 22:43:51', '0', null, '2018-08-19 22:43:51', '43615268366192640', '0', '16739222421508096');
INSERT INTO `t_message_send` VALUES ('43615268663988226', '', '2018-08-19 22:43:51', '0', '', '2018-08-24 12:41:24', '43615268366192640', '2', '4363087427670016');
INSERT INTO `t_message_send` VALUES ('43615268663988227', '', '2018-08-19 22:43:51', '0', 'admin', '2018-11-15 23:13:21', '43615268366192640', '2', '682265633886208');

-- ----------------------------
-- Table structure for t_qq
-- ----------------------------
DROP TABLE IF EXISTS `t_qq`;
CREATE TABLE `t_qq` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_related` bit(1) DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `relate_username` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_qq
-- ----------------------------

-- ----------------------------
-- Table structure for t_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `t_quartz_job`;
CREATE TABLE `t_quartz_job` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `job_class_name` varchar(255) DEFAULT NULL,
  `parameter` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_quartz_job
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `default_role` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('496138616573952', '', '2018-04-22 23:03:49', 'admin', '2018-11-15 23:02:59', 'ROLE_ADMIN', '0', null, '超级管理员 拥有所有权限', '0');
INSERT INTO `t_role` VALUES ('496138616573953', '', '2018-05-02 21:40:03', 'admin', '2018-11-01 22:59:48', 'ROLE_USER', '0', '', '普通注册用户 路过看看', '0');
INSERT INTO `t_role` VALUES ('16457350655250432', '', '2018-06-06 00:08:00', 'admin', '2018-11-02 20:42:24', 'ROLE_TEST', '0', null, '测试权限按钮显示', '1');

-- ----------------------------
-- Table structure for t_role_department
-- ----------------------------
DROP TABLE IF EXISTS `t_role_department`;
CREATE TABLE `t_role_department` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_department
-- ----------------------------
INSERT INTO `t_role_department` VALUES ('70763874256687105', 'admin', '2018-11-02 20:42:43', '0', 'admin', '2018-11-02 20:42:43', '40322777781112832', '16457350655250432');
INSERT INTO `t_role_department` VALUES ('70763874265075712', 'admin', '2018-11-02 20:42:43', '0', 'admin', '2018-11-02 20:42:43', '40322811096469504', '16457350655250432');
INSERT INTO `t_role_department` VALUES ('70763874277658624', 'admin', '2018-11-02 20:42:43', '0', 'admin', '2018-11-02 20:42:43', '40322852833988608', '16457350655250432');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `show_always` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('102235632889237504', 'admin', '2019-01-28 17:00:15', 0, 'admin', '2019-11-22 11:47:14', '', 'vue-generator', '125909152017944576', 0, 3.00, 'Main', '/vue-generator', 'Vue代码生成', 'md-send', 1, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('102237605176807424', 'admin', '2019-01-28 17:08:06', 0, 'admin', '2019-02-01 20:41:31', '', 'table-generator', '102235632889237504', 0, 0.00, 'share-vue-generator/tableGenerator', 'table', '增删改表格生成disposal_disposalplan', 'md-grid', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('102240052523831296', 'admin', '2019-01-28 17:17:49', 0, 'admin', '2019-02-01 20:41:38', '', 'tree-generator', '102235632889237504', 0, 1.00, 'share-vue-generator/treeGenerator', 'tree', '树形结构生成disposal_disposalplan', 'md-git-branch', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('103658022701633536', 'admin', '2019-02-01 15:12:20', 0, 'admin', '2019-02-01 18:38:29', '', 'test', '102235632889237504', 0, 3.00, 'share-vue-generator/test', 'test', '代码生成测试页', 'ios-bug', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('113601631450304512', 'admin', '2019-03-01 01:44:41', 0, 'admin', '2019-03-01 01:44:41', NULL, '', '81716172680073216', 1, 2.00, '', '/share/actTask/backAll/**', '审批驳回至发起人', '', 3, 'disable', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('113602149589454848', 'admin', '2019-03-01 01:46:44', 0, 'admin', '2019-06-26 20:38:55', '', 'components', '125909152017944576', 0, 5.00, 'Main', '/components', 'XBoot业务组件', 'md-cube', 1, '', 0, '', b'0');
INSERT INTO `t_permission` VALUES ('113602342657462272', 'admin', '2019-03-01 01:47:30', 0, 'admin', '2019-03-01 02:03:26', '', 'components', '113602149589454848', 0, 0.00, 'share-components/share-components', 'components', 'XBoot业务组件', 'md-cube', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('113603512293658624', 'admin', '2019-03-01 01:52:09', 0, 'admin', '2019-06-26 20:38:47', '', 'library', '125909152017944576', 0, 6.00, 'Main', '/library', '第三方依赖工具/组件', 'ios-link', 1, '', 0, '', b'0');
INSERT INTO `t_permission` VALUES ('113603617897844736', 'admin', '2019-03-01 01:52:34', 0, 'admin', '2019-03-01 02:03:15', '', 'library', '113603512293658624', 0, 0.00, 'share-library/share-library', 'library', '第三方依赖工具/组件', 'ios-link', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('117806106536841216', 'admin', '2019-03-12 16:11:46', 0, 'admin', '2019-03-12 16:11:46', NULL, 'process-finish-manage', '76606430504816640', 0, 0.80, 'activiti/process-finish-manage/processFinishManage', 'process-finish-manage', '结束的流程disposal_disposalplan', 'md-power', 2, '', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('121426317022334976', 'admin', '2019-03-22 15:57:11', 0, 'admin', '2019-03-22 15:57:11', NULL, 'redis', '39915540965232640', 0, 2.21, 'sys/redis/redis', 'redis', 'Redis缓存管理', 'md-barcode', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('125909152017944576', 'admin', '2019-04-04 00:50:22', 0, 'admin', '2019-07-31 20:24:57', '', 'share', '', -1, 0.00, '', '', 'XBoot管理系统', 'md-home', 0, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('127995258721013760', 'admin', '2019-04-09 18:59:49', 0, 'admin', '2019-04-09 19:03:32', '', 'doc', '', -1, 1.00, '', '', 'XBoot开发文档', 'md-document', 0, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('127996320085446656', 'admin', '2019-04-09 19:04:02', 0, 'admin', '2019-07-08 12:06:33', '', 'app', '', -1, 2.00, '', '', '小程序与Flutter App', 'md-phone-portrait', 0, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('127996726786134016', 'admin', '2019-04-09 19:05:39', 0, 'admin', '2019-04-09 19:05:39', NULL, 'xpay', NULL, -1, 3.00, NULL, NULL, 'XPay支付系统', 'md-cash', 0, NULL, 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('127997001756315648', 'admin', '2019-04-09 19:06:44', 0, 'admin', '2019-10-23 20:23:33', '', 'xmall', '', -1, 4.00, '', '', 'XMall商城', 'md-cart', 0, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('128364633437245440', 'admin', '2019-04-10 19:27:35', 0, 'admin', '2019-04-10 19:27:44', '', 'share-show', '', -1, 2.10, '', '', 'XBoot宣传官网', 'md-paper-plane', 0, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('128366789653434368', 'admin', '2019-04-10 19:36:09', 0, 'admin', '2019-07-08 12:20:51', '', 'flutter', '127996320085446656', 0, 1.00, 'Main', '/flutter', 'XBoot Flutter App', 'md-phone-portrait', 1, '', 0, '', b'0');
INSERT INTO `t_permission` VALUES ('128368112335589376', 'admin', '2019-04-10 19:41:24', 0, 'admin', '2019-04-10 19:41:24', NULL, 'flutter', '128366789653434368', 0, 0.00, 'flutter/flutter', 'flutter', 'XBoot Flutter App', 'md-phone-portrait', 2, '', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('129033675403694080', 'admin', '2019-04-12 15:46:07', 0, 'admin', '2019-11-25 17:33:43', '', 'single-window', '41373430515240960', 0, 1.00, 'share-vue-template/single-window/singleWindow', 'single-window', '动态组件单页操作', 'md-easel', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('149452775095275520', 'admin', '2019-06-08 00:04:19', 0, 'admin', '2019-06-08 00:04:19', NULL, 'admin', '39915540965232640', 0, 2.29, 'sys/monitor/monitor', '/admin', 'Admin监控', 'md-speedometer', 2, '', 0, 'http://127.0.0.1:8888/share/admin', b'1');
INSERT INTO `t_permission` VALUES ('156365156580855808', 'admin', '2019-06-27 01:51:39', 0, 'admin', '2019-06-27 01:51:39', NULL, '', '5129710648430593', 1, 1.18, '', '/share/user/resetPass', '重置密码', '', 3, 'other', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('15701400130424832', '', '2018-06-03 22:04:06', 0, '', '2018-09-19 22:16:44', '', '', '5129710648430593', 1, 1.11, '', '/share/user/admin/add*', '添加用户', '', 3, 'add', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('15701915807518720', '', '2018-06-03 22:06:09', 0, '', '2018-06-06 14:46:51', '', '', '5129710648430593', 1, 1.13, '', '/share/user/admin/disable/**', '禁用用户', '', 3, 'disable', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('15708892205944832', '', '2018-06-03 22:33:52', 0, '', '2018-06-28 16:44:48', '', '', '5129710648430593', 1, 1.14, '', '/share/user/admin/enable/**', '启用用户', '', 3, 'enable', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('160509731956330496', 'admin', '2019-07-08 12:20:43', 0, 'admin', '2019-07-08 12:22:13', '', 'weapp', '127996320085446656', 0, 0.00, 'Main', '/weapp', '微信小程序', 'ios-appstore', 1, '', 0, '', b'0');
INSERT INTO `t_permission` VALUES ('160509918166650881', 'admin', '2019-07-08 12:21:28', 0, 'admin', '2019-07-08 12:21:28', NULL, 'weapp', '160509731956330496', 0, 0.00, 'weapp/weapp', 'weapp', '微信小程序', 'ios-apps', 2, '', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('16392452747300864', '', '2018-06-05 19:50:06', 0, 'admin', '2019-06-26 20:38:41', '', 'access', '125909152017944576', 0, 7.00, 'Main', '/access', '权限按钮测试页', 'md-lock', 1, '', 0, '', b'0');
INSERT INTO `t_permission` VALUES ('16392767785668608', '', '2018-06-05 19:51:21', 0, 'admin', '2018-10-23 12:34:38', '', 'access_index', '16392452747300864', 0, 5.10, 'access/access', 'index', '权限按钮测试页', 'md-lock', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16438800255291392', '', '2018-06-05 22:54:18', 0, 'admin', '2018-10-23 12:34:51', '', '', '16392767785668608', 1, 5.11, '', 'test-add', '添加按钮测试', '', 3, 'add', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16438962738434048', '', '2018-06-05 22:54:55', 0, 'admin', '2018-10-23 12:35:05', '', '', '16392767785668608', 1, 5.12, '', 'test-edit', '编辑按钮测试', '', 3, 'edit', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16439068543946752', '', '2018-06-05 22:55:20', 0, 'admin', '2018-10-23 12:34:54', '', '', '16392767785668608', 1, 5.13, '', 'test-delete', '删除按钮测试', '', 3, 'delete', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16678126574637056', '', '2018-06-06 14:45:16', 0, '', '2018-09-19 22:16:48', '', '', '5129710648430593', 1, 1.12, '', '/share/user/admin/edit*', '编辑用户', '', 3, 'edit', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16678447719911424', '', '2018-06-06 14:46:32', 0, '', '2018-08-10 21:41:16', '', '', '5129710648430593', 1, 1.15, '', '/share/user/delByIds/**', '删除用户', '', 3, 'delete', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16687383932047360', '', '2018-06-06 15:22:03', 0, '', '2018-09-19 22:07:34', '', '', '5129710648430594', 1, 1.21, '', '/share/role/save*', '添加角色', '', 3, 'add', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16689632049631232', '', '2018-06-06 15:30:59', 0, '', '2018-09-19 22:07:37', '', '', '5129710648430594', 1, 1.22, '', '/share/role/edit*', '编辑角色', '', 3, 'edit', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16689745006432256', '', '2018-06-06 15:31:26', 0, '', '2018-08-10 21:41:23', '', '', '5129710648430594', 1, 1.23, '', '/share/role/delAllByIds/**', '删除角色', '', 3, 'delete', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16689883993083904', NULL, '2018-06-06 15:31:59', 0, NULL, '2018-06-06 15:31:59', NULL, NULL, '5129710648430594', 1, 1.24, NULL, '/share/role/editRolePerm**', '分配权限', NULL, 3, 'editPerm', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('16690313745666048', '', '2018-06-06 15:33:41', 0, '', '2018-09-19 22:07:46', '', '', '5129710648430594', 1, 1.25, '', '/share/role/setDefault*', '设为默认角色', '', 3, 'setDefault', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16694861252005888', '', '2018-06-06 15:51:46', 0, '', '2018-09-19 22:07:52', '', '', '5129710648430595', 1, 1.31, '', '/share/permission/add*', '添加菜单', '', 3, 'add', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16695107491205120', '', '2018-06-06 15:52:44', 0, '', '2018-09-19 22:07:57', '', '', '5129710648430595', 1, 1.32, '', '/share/permission/edit*', '编辑菜单', '', 3, 'edit', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('16695243126607872', '', '2018-06-06 15:53:17', 0, '', '2018-08-10 21:41:33', '', '', '5129710648430595', 1, 1.33, '', '/share/permission/delByIds/**', '删除菜单', '', 3, 'delete', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('175808753877127169', 'admin', '2019-08-19 17:33:34', 0, 'admin', '2019-08-19 17:34:41', '', 'sso', '125909152017944576', 0, 8.00, 'Main', '/sso', '单点登录测试站', 'md-log-in', 1, '', 0, '', b'0');
INSERT INTO `t_permission` VALUES ('175808922710446081', 'admin', '2019-08-19 17:34:15', 0, 'admin', '2019-08-19 17:34:15', NULL, 'sso', '175808753877127169', 0, 0.00, 'sso/sso', 'sso', '单点登录测试站', 'md-log-in', 2, '', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('210154306362413056', 'admin', '2019-11-22 12:10:32', 0, 'admin', '2019-11-22 12:10:32', NULL, 'charts', '125909152017944576', 0, 3.10, 'Main', '/charts', '图表数据展示', 'md-analytics', 1, '', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('210155258859491329', 'admin', '2019-11-22 12:14:19', 0, 'admin', '2019-11-22 12:20:50', '', 'dashboard1', '210154306362413056', 0, 0.00, 'share-charts/dashboard1/dashboard1', 'dashboard1', 'Dashboard1disposal_disposalplan', 'md-speedometer', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('210156371755143168', 'admin', '2019-11-22 12:18:45', 0, 'admin', '2019-11-22 12:18:45', NULL, 'dashboard2', '210154306362413056', 0, 1.00, 'share-charts/dashboard2/dashboard2', 'dashboard2', 'Dashboard2disposal_disposalplan', 'ios-speedometer', 2, '', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('211251162815401984', 'admin', '2019-11-25 12:49:03', 0, 'admin', '2019-11-25 12:49:12', '', 'open', '125909152017944576', 0, 1.20, 'Main', '/open', '开放平台', 'ios-apps', 1, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('211251678651879424', 'admin', '2019-11-25 12:51:06', 0, 'admin', '2019-11-25 12:51:06', NULL, 'client', '211251162815401984', 0, 0.00, 'open/client/client', 'client', '接入网站管理', 'md-browsers', 2, '', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('211652331387752448', 'admin', '2019-11-26 15:23:09', 0, 'admin', '2019-11-26 15:23:09', NULL, 'doc', '211251162815401984', 0, 1.00, 'sys/monitor/monitor', 'doc', '开放平台文档', 'md-document', 2, '', 0, 'https://www.kancloud.cn/exrick/share/1399478', b'1');
INSERT INTO `t_permission` VALUES ('25014528525733888', '', '2018-06-29 14:51:09', 0, '', '2018-10-08 11:13:27', '', '', '5129710648430593', 1, 1.16, '', '无', '上传图片', '', 3, 'upload', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('39915540965232640', NULL, '2018-08-09 17:42:28', 0, NULL, '2018-08-09 17:42:28', NULL, 'monitor', '125909152017944576', 0, 2.00, 'Main', '/monitor', '系统监控', 'ios-analytics', 1, NULL, 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('39916171171991552', '', '2018-08-09 17:44:57', 0, 'admin', '2019-01-20 00:37:29', '', 'druid', '39915540965232640', 0, 2.40, 'sys/monitor/monitor', 'druid', 'SQL监控', 'md-analytics', 2, '', 0, 'http://127.0.0.1:8888/druid/login.html', b'1');
INSERT INTO `t_permission` VALUES ('39918482854252544', '', '2018-08-09 17:54:08', 0, 'admin', '2019-01-20 00:37:41', '', 'swagger', '39915540965232640', 0, 2.50, 'sys/monitor/monitor', 'swagger', '接口文档', 'md-document', 2, '', 0, 'http://127.0.0.1:8888/swagger-ui.html', b'1');
INSERT INTO `t_permission` VALUES ('40238597734928384', NULL, '2018-08-10 15:06:10', 0, NULL, '2018-08-10 15:06:10', NULL, 'department-manage', '5129710648430592', 0, 1.20, 'sys/department-manage/departmentManage', 'department-manage', '部门管理', 'md-git-branch', 2, '', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('41363147411427328', '', '2018-08-13 17:34:43', 0, '', '2018-08-20 20:05:21', '', 'log-manage', '39915540965232640', 0, 2.20, 'sys/log-manage/logManage', 'log-manage', '操作日志管理', 'md-list-box', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('41363537456533504', '', '2018-08-13 17:36:16', 0, '', '2018-08-13 17:56:11', '', '', '41363147411427328', 1, 2.11, '', '/share/log/delByIds/**', '删除日志', '', 3, 'delete', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('41364927394353152', '', '2018-08-13 17:41:48', 0, '', '2018-09-19 22:08:57', '', '', '41363147411427328', 1, 2.12, '', '/share/log/delAll*', '清空日志', '', 3, 'undefined', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('41370251991977984', NULL, '2018-08-13 18:02:57', 0, NULL, '2018-08-13 18:02:57', NULL, 'quartz-job', '39915540965232640', 0, 2.10, 'sys/quartz-manage/quartzManage', 'quartz-job', '定时任务', 'md-time', 2, '', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('41371711400054784', '', '2018-08-13 18:08:45', 0, '', '2019-07-07 21:24:26', '', 'actuator', '39915540965232640', 0, 2.30, 'sys/actuator/actuator', 'actuator', 'Actuator监控', 'logo-angular', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('41373430515240960', '', '2018-08-13 18:15:35', 0, 'admin', '2019-11-22 11:47:07', '', 'vue-template', '125909152017944576', 0, 3.10, 'Main', '/vue-template', '后台Vue模版', 'ios-albums', 1, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('41375330996326400', '', '2018-08-13 18:23:08', 0, 'admin', '2018-10-20 22:47:07', '', 'simple-table', '41373430515240960', 0, 3.10, 'share-vue-template/simple-table/simpleTable', 'simple-table', '简单表格', 'ios-grid-outline', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('41376192166629376', '', '2018-08-13 18:26:33', 0, 'admin', '2018-10-20 22:47:26', '', 'search-table', '41373430515240960', 0, 3.40, 'share-vue-template/search-table/searchTable', 'search-table', '搜索表格disposal_disposalplan', 'md-grid', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('41377034236071936', '', '2018-08-13 18:29:54', 0, 'admin', '2018-10-20 22:47:33', '', 'complex-table', '41373430515240960', 0, 3.50, 'share-vue-template/complex-table/complexTable', 'complex-table', '复杂表格disposal_disposalplan', 'ios-grid', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('41378916912336896', '', '2018-08-13 18:37:23', 0, 'admin', '2019-04-12 15:38:08', '', 'tree', '41373430515240960', 0, 3.22, 'share-vue-template/tree/tree', 'tree', '树形结构', 'ios-git-network', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('41469219249852416', NULL, '2018-08-14 00:36:13', 0, NULL, '2018-08-14 00:36:13', NULL, '', '41371711400054784', 1, 2.31, '', '无', '查看数据', '', 3, 'view', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('42082442672082944', '', '2018-08-15 17:12:57', 0, 'admin', '2019-04-12 15:48:50', '', 'new-window', '41373430515240960', 0, 3.21, 'share-vue-template/new-window/newWindow', 'new-window', '新窗口操作', 'ios-browsers', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('43117268627886080', '', '2018-08-18 13:44:58', 0, '', '2018-08-18 20:55:04', '', 'message-manage', '5129710648430592', 0, 1.30, 'sys/message-manage/messageManage', 'message-manage', '消息管理disposal_disposalplan', 'md-mail', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('44986029924421632', '', '2018-08-23 17:30:46', 0, '', '2018-09-23 23:26:53', '', 'social-manage', '5129710648430592', 0, 1.50, 'sys/social-manage/socialManage', 'social-manage', '社交账号绑定disposal_disposalplan', 'md-share', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('45069342940860416', '', '2018-08-23 23:01:49', 0, '', '2018-08-24 10:01:09', '', '', '44986029924421632', 1, 1.42, '', '无', '查看社交账号数据', '', 3, 'view', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('45235228800716800', '', '2018-08-24 10:01:00', 0, '', '2018-09-19 22:07:23', '', '', '44986029924421632', 1, 1.41, '', '/share/relate/delByIds*', '删除解绑', '', 3, 'delete', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('45235621697949696', '', '2018-08-24 10:02:33', 0, '', '2018-09-19 22:06:57', '', '', '40238597734928384', 1, 1.21, '', '/share/department/add*', '添加部门', '', 3, 'add', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('45235787867885568', '', '2018-08-24 10:03:13', 0, '', '2018-09-19 22:07:02', '', '', '40238597734928384', 1, 1.22, '', '/share/department/edit*', '编辑部门', '', 3, 'edit', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('45235939278065664', NULL, '2018-08-24 10:03:49', 0, NULL, '2018-08-24 10:03:49', NULL, '', '40238597734928384', 1, 1.23, '', '/share/department/delByIds/*', '删除部门', '', 3, 'delete', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('45236734832676864', '', '2018-08-24 10:06:59', 0, '', '2018-09-19 22:07:07', '', '', '43117268627886080', 1, 1.31, '', '/share/message/add*', '添加消息', '', 3, 'add', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('45237010692050944', '', '2018-08-24 10:08:04', 0, '', '2018-09-19 22:07:12', '', '', '43117268627886080', 1, 1.32, '', '/share/message/edit*', '编辑消息', '', 3, 'edit', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('45237170029465600', NULL, '2018-08-24 10:08:42', 0, NULL, '2018-08-24 10:08:42', NULL, '', '43117268627886080', 1, 1.33, '', '/share/message/delByIds/*', '删除消息', '', 3, 'delete', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('45264987354042368', '', '2018-08-24 11:59:14', 0, '', '2018-09-19 22:08:11', '', '', '41370251991977984', 1, 2.11, '', '/share/quartzJob/add*', '添加定时任务', '', 3, 'add', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('45265487029866496', '', '2018-08-24 12:01:14', 0, '', '2018-09-19 22:08:17', '', '', '41370251991977984', 1, 2.12, '', '/share/quartzJob/edit*', '编辑定时任务', '', 3, 'edit', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('45265762415284224', '', '2018-08-24 12:02:19', 0, '', '2018-09-19 22:08:24', '', '', '41370251991977984', 1, 2.13, '', '/share/quartzJob/pause*', '暂停定时任务', '', 3, 'disable', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('45265886315024384', '', '2018-08-24 12:02:49', 0, '', '2018-09-19 22:09:13', '', '', '41370251991977984', 1, 2.14, '', '/share/quartzJob/resume*', '恢复定时任务', '', 3, 'enable', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('45266070000373760', NULL, '2018-08-24 12:03:33', 0, NULL, '2018-08-24 12:03:33', NULL, '', '41370251991977984', 1, 2.15, '', '/share/quartzJob/delByIds/*', '删除定时任务', '', 3, 'delete', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('5129710648430592', '', '2018-06-04 19:02:29', 0, '', '2018-09-29 23:11:56', '', 'sys', '125909152017944576', 0, 1.00, 'Main', '/sys', '系统管理', 'ios-settings', 1, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('5129710648430593', '', '2018-06-04 19:02:32', 0, '', '2018-08-13 15:15:33', '', 'user-manage', '5129710648430592', 0, 1.10, 'sys/user-manage/userManage', 'user-manage', '用户管理', 'md-person', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('5129710648430594', '', '2018-06-04 19:02:35', 0, '', '2018-10-13 13:51:36', '', 'role-manage', '5129710648430592', 0, 1.60, 'sys/role-manage/roleManage', 'role-manage', '角色权限管理', 'md-contacts', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('5129710648430595', '', '2018-06-04 19:02:37', 0, '', '2018-09-23 23:32:02', '', 'menu-manage', '5129710648430592', 0, 1.70, 'sys/menu-manage/menuManage', 'menu-manage', '菜单权限管理', 'md-menu', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('56309618086776832', '', '2018-09-23 23:26:40', 0, 'admin', '2018-11-15 15:17:43', '', 'oss-manage', '5129710648430592', 0, 1.40, 'sys/oss-manage/ossManage', 'oss-manage', '文件对象存储disposal_disposalplan', 'ios-folder', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('56898976661639168', '', '2018-09-25 14:28:34', 0, '', '2018-09-25 15:12:46', '', '', '5129710648430593', 1, 1.17, '', '/share/user/importData*', '导入用户', '', 3, 'input', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('56911328312299520', '', '2018-09-25 15:17:39', 0, 'admin', '2018-10-20 22:47:36', '', 'excel', '41373430515240960', 0, 3.60, 'share-vue-template/excel/excel', 'excel', 'Excel导入导出disposal_disposalplan', 'md-exit', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('57009544286441472', NULL, '2018-09-25 21:47:55', 0, NULL, '2018-09-25 21:47:55', NULL, '', '43117268627886080', 1, 1.40, '', '/share/messageSend/save*', '添加已发送消息', '', 3, 'add', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('57009744761589760', NULL, '2018-09-25 21:48:43', 0, NULL, '2018-09-25 21:48:43', NULL, '', '43117268627886080', 1, 1.50, '', '/share/messageSend/update*', '编辑已发送消息', '', 3, 'edit', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('57009981228060672', NULL, '2018-09-25 21:49:39', 0, NULL, '2018-09-25 21:49:39', NULL, '', '43117268627886080', 1, 1.60, '', '/share/messageSend/delByIds/*', '删除已发送消息', '', 3, 'delete', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('57212882168844288', '', '2018-09-26 11:15:55', 0, '', '2018-10-08 11:10:05', '', '', '56309618086776832', 1, 1.41, '', '无', '上传文件', '', 3, 'upload', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('58480609315524608', '', '2018-09-29 23:13:24', 0, 'admin', '2018-11-14 13:24:26', '', 'setting', '5129710648430592', 0, 1.90, 'sys/setting-manage/settingManage', 'setting', '系统配置disposal_disposalplan', 'ios-settings-outline', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('61394706252173312', NULL, '2018-10-08 00:12:59', 0, NULL, '2018-10-08 00:12:59', NULL, '', '58480609315524608', 1, 1.81, '', '/share/setting/seeSecret/**', '查看私密配置', '', 3, 'view', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('61417744146370560', '', '2018-10-08 01:44:32', 0, '', '2018-10-08 01:50:03', '', '', '58480609315524608', 1, 1.82, '', '/share/setting/*/set*', '编辑配置', '', 3, 'edit', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('61560041605435392', NULL, '2018-10-08 11:09:58', 0, NULL, '2018-10-08 11:09:58', NULL, '', '56309618086776832', 1, 1.42, '', '/share/file/rename*', '重命名文件', '', 3, 'edit', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('61560275261722624', NULL, '2018-10-08 11:10:54', 0, NULL, '2018-10-08 11:10:54', NULL, '', '56309618086776832', 1, 1.43, '', '/share/file/copy*', '复制文件', '', 3, 'edit', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('61560480518377472', NULL, '2018-10-08 11:11:43', 0, NULL, '2018-10-08 11:11:43', NULL, '', '56309618086776832', 1, 1.44, '', '/share/file/delete/*', '删除文件', '', 3, 'delete', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('63482475359244288', '', '2018-10-13 18:29:02', 0, 'admin', '2018-10-20 22:47:45', '', 'custom-tree', '41373430515240960', 0, 3.80, 'share-vue-template/custom-tree/customTree', 'custom-tree', '自定义树disposal_disposalplan', 'md-git-network', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('63741744973352960', '', '2018-10-14 11:39:17', 0, 'admin', '2019-02-04 17:03:07', '', 'render', '41373430515240960', 0, 3.30, 'share-vue-template/render/render', 'render', 'Render函数示例disposal_disposalplan', 'md-aperture', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('64290663792906240', '', '2018-10-16 00:00:29', 0, 'admin', '2018-10-20 22:47:49', '', 'tree&table', '41373430515240960', 0, 3.90, 'share-vue-template/tree&table/tree&table', 'tree&table', '树+表格disposal_disposalplan', 'md-list', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('66790433014943744', 'admin', '2018-10-22 21:33:42', 0, 'admin', '2018-10-22 21:37:12', '', 'card-list', '41373430515240960', 0, 3.91, 'share-vue-template/card-list/cardList', 'card-list', '卡片列表disposal_disposalplan', 'md-card', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('67027338952445952', 'admin', '2018-10-23 13:15:03', 0, 'admin', '2018-10-23 14:57:38', '', 'product-template', '125909152017944576', 0, 4.00, 'Main', '/product-template', '前台产品级组件', 'md-ribbon', 1, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('67027909637836800', 'admin', '2018-10-23 13:17:19', 0, 'admin', '2019-11-22 16:19:01', '', 'banner', '67027338952445952', 0, 4.10, 'share-product-template/banner/Banner', 'banner', '轮播组件disposal_disposalplan', 'md-book', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('67042515441684480', 'admin', '2018-10-23 14:15:22', 0, 'admin', '2019-11-22 16:19:24', '', 'product', '67027338952445952', 0, 4.20, 'share-product-template/product/Product', 'product', '产品组件disposal_disposalplan', 'md-pricetags', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('67082402312228864', 'admin', '2018-10-23 16:53:53', 0, 'admin', '2019-11-22 16:19:32', '', 'category', '67027338952445952', 0, 4.30, 'share-product-template/category/Category', 'category', '分类栏组件disposal_disposalplan', 'md-apps', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('75002207560273920', 'admin', '2018-11-14 13:24:21', 0, 'admin', '2018-11-20 20:06:22', '', 'dict', '5129710648430592', 0, 1.80, 'sys/dict-manage/dictManage', 'dict', '数据字典管理', 'md-bookmarks', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('76215889006956544', 'admin', '2018-11-17 21:47:05', 0, 'admin', '2018-11-17 21:47:53', '', '', '75002207560273920', 1, 1.81, '', '/share/dict/add*', '添加字典', '', 3, 'add', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('76216071333351424', 'admin', '2018-11-17 21:47:48', 0, 'admin', '2018-11-17 21:47:48', NULL, '', '75002207560273920', 1, 1.82, '', '/share/dict/edit*', '编辑字典', '', 3, 'edit', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('76216264070008832', 'admin', '2018-11-17 21:48:34', 0, 'admin', '2018-11-17 21:48:34', NULL, '', '75002207560273920', 1, 1.83, '', '/share/dict/delByIds/**', '删除字典', '', 3, 'delete', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('76216459709124608', 'admin', '2018-11-17 21:49:21', 0, 'admin', '2018-11-17 21:49:21', NULL, '', '75002207560273920', 1, 1.84, '', '/share/dictData/add*', '添加字典数据', '', 3, 'add', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('76216594207870976', 'admin', '2018-11-17 21:49:53', 0, 'admin', '2018-11-17 21:49:53', NULL, '', '75002207560273920', 1, 1.85, '', '/share/dictData/edit*', '编辑字典数据', '', 3, 'edit', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('76216702639017984', 'admin', '2018-11-17 21:50:18', 0, 'admin', '2018-11-17 21:50:18', NULL, '', '75002207560273920', 1, 1.86, '', '/share/dictData/delByIds/**', '删除字典数据', '', 3, 'delete', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('76606430504816640', 'admin', '2018-11-18 23:38:57', 0, 'admin', '2018-11-18 23:39:12', '', 'activiti', '125909152017944576', 0, 1.10, 'Main', '/activiti', '工作流程', 'md-git-compare', 1, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('76607201262702592', 'admin', '2018-11-18 23:42:01', 0, 'admin', '2018-11-20 19:41:58', '', 'model-manage', '76606430504816640', 0, 1.00, 'activiti/model-manage/modelManage', 'model-manage', '模型管理disposal_disposalplan', 'md-cube', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('76914082455752704', 'admin', '2018-11-19 20:01:28', 0, 'admin', '2018-11-20 19:41:50', '', 'process-manage', '76606430504816640', 0, 0.90, 'activiti/process-manage/processManage', 'process-manage', '流程管理disposal_disposalplan', 'md-calendar', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('80539147005071360', 'admin', '2018-11-29 20:06:10', 0, 'admin', '2018-12-04 14:14:41', '', 'category-manage', '76606430504816640', 0, 2.00, 'activiti/category-manage/categoryManage', 'category-manage', '流程分类管理disposal_disposalplan', 'md-bookmark', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('81319435670917120', 'admin', '2018-12-01 23:46:45', 0, 'admin', '2018-12-02 15:37:03', '', 'process-ins-manage', '76606430504816640', 0, 0.70, 'activiti/process-ins-manage/processInsManage', 'process-ins-manage', '运行中的流程disposal_disposalplan', 'md-fastforward', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('81558529864896512', 'admin', '2018-12-02 15:36:50', 0, 'admin', '2018-12-08 14:50:38', '', 'apply-manage', '76606430504816640', 0, 0.00, 'activiti/apply-manage/applyManage', 'apply-manage', '我的申请disposal_disposalplan', 'md-clipboard', 2, '', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('81716172680073216', 'admin', '2018-12-03 02:03:15', 0, 'admin', '2018-12-03 02:03:15', NULL, 'todo-manage', '76606430504816640', 0, 0.10, 'activiti/todo-manage/todoManage', 'todo-manage', '我的待办disposal_disposalplan', 'ios-pricetag', 2, '', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('82269650301227008', 'admin', '2018-12-04 14:42:34', 0, 'admin', '2018-12-04 14:42:34', NULL, 'done-manage', '76606430504816640', 0, 0.20, 'activiti/done-manage/doneManage', 'done-manage', '我的已办disposal_disposalplan', 'ios-pricetag-outline', 2, '', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84082369492946944', 'admin', '2018-12-09 14:45:40', 0, 'admin', '2018-12-09 14:46:59', '', '', '81558529864896512', 1, 0.00, '', '/share/leave/add*', '添加请假申请', '', 3, 'add', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('84082920431554560', 'admin', '2018-12-09 14:47:51', 0, 'admin', '2018-12-09 14:47:51', NULL, '', '81558529864896512', 1, 1.00, '', '/share/actBusiness/delByIds/**', '删除草稿申请', '', 3, 'delete', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84083562503999488', 'admin', '2018-12-09 14:50:25', 0, 'admin', '2018-12-09 14:50:25', NULL, '', '81716172680073216', 1, 0.00, '', '/share/actTask/pass**', '审批通过', '', 3, 'enable', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84083641302388736', 'admin', '2018-12-09 14:50:43', 0, 'admin', '2018-12-09 14:50:43', NULL, '', '81716172680073216', 1, 1.00, '', '/share/actTask/back**', '审批驳回', '', 3, 'disable', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84084404707659776', 'admin', '2018-12-09 14:53:45', 0, 'admin', '2018-12-09 14:53:45', NULL, '', '81716172680073216', 1, 3.00, '', '/share/actTask/delegate**', '委托代办', '', 3, 'other', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84084724590448640', 'admin', '2018-12-09 14:55:02', 0, 'admin', '2018-12-09 14:55:02', NULL, '', '82269650301227008', 1, 0.00, '', '/share/actTask/deleteHistoric/**', '删除已办任务', '', 3, 'delete', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84084965817454592', 'admin', '2018-12-09 14:55:59', 0, 'admin', '2018-12-09 14:55:59', NULL, '', '81319435670917120', 1, 0.00, '', '/share/actProcess/delInsByIds/**', '删除运行流程', '', 3, 'delete', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84085542324539392', 'admin', '2018-12-09 14:58:17', 0, 'admin', '2018-12-09 14:58:17', NULL, '', '76914082455752704', 1, 0.00, '', '/share/actProcess/updateInfo/**', '编辑流程信息', '', 3, 'edit', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84085810797744128', 'admin', '2018-12-09 14:59:21', 0, 'admin', '2018-12-09 14:59:21', NULL, '', '76914082455752704', 1, 1.00, '', '/share/actProcess/editNodeUser**', '流程节点设置', '', 3, 'edit', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84085980943880192', 'admin', '2018-12-09 15:00:01', 0, 'admin', '2018-12-09 15:00:01', NULL, '', '76914082455752704', 1, 2.00, '', '/share/actProcess/convertToModel/**', '流程转模型', '', 3, 'other', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84086163001839616', 'admin', '2018-12-09 15:00:45', 0, 'admin', '2018-12-09 15:01:37', '', '', '76914082455752704', 1, 3.00, '', '/share/actProcess/delByIds/**', '删除流程定义', '', 3, 'delete', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('84086362248056832', 'admin', '2018-12-09 15:01:32', 0, 'admin', '2018-12-09 15:01:32', NULL, '', '76914082455752704', 1, 4.00, '', '/share/actModel/deployByFile**', '文件部署流程', '', 3, 'other', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84086882907983872', 'admin', '2018-12-09 15:03:36', 0, 'admin', '2018-12-09 15:03:36', NULL, '', '76607201262702592', 1, 0.00, '', '/share/actModel/add**', '添加模型', '', 3, 'add', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84087009940869120', 'admin', '2018-12-09 15:04:06', 0, 'admin', '2018-12-09 15:04:06', NULL, '', '76607201262702592', 1, 1.00, '', '/share/actModel/delByIds/**', '删除模型', '', 3, 'delete', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84087154040377344', 'admin', '2018-12-09 15:04:41', 0, 'admin', '2018-12-09 15:04:41', NULL, '', '76607201262702592', 1, 2.00, '', '/share/actModel/deploy/**', '部署模型', '', 3, 'other', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84087344352727040', 'admin', '2018-12-09 15:05:26', 0, 'admin', '2018-12-09 15:05:33', '', '', '80539147005071360', 1, 0.00, '', '/share/actCategory/add**', '添加流程分类', '', 3, 'add', 0, '', b'1');
INSERT INTO `t_permission` VALUES ('84087480852156416', 'admin', '2018-12-09 15:05:59', 0, 'admin', '2018-12-09 15:05:59', NULL, '', '80539147005071360', 1, 1.00, '', '/share/actCategory/edit**', '编辑流程分类', '', 3, 'edit', 0, NULL, b'1');
INSERT INTO `t_permission` VALUES ('84087593041399808', 'admin', '2018-12-09 15:06:25', 0, 'admin', '2018-12-09 15:06:25', NULL, '', '80539147005071360', 1, 2.00, '', '/share/actCategory/delByIds/**', '删除流程分类', '', 3, 'delete', 0, NULL, b'1');

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('175877432572645376', NULL, '2019-08-19 22:06:29', 0, NULL, '2019-08-19 22:06:29', '125909152017944576', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('175877432576839680', NULL, '2019-08-19 22:06:29', 0, NULL, '2019-08-19 22:06:29', '5129710648430592', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('175877432581033985', NULL, '2019-08-19 22:06:29', 0, NULL, '2019-08-19 22:06:29', '5129710648430593', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('175877432585228289', NULL, '2019-08-19 22:06:29', 0, NULL, '2019-08-19 22:06:29', '40238597734928384', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('175877432589422593', NULL, '2019-08-19 22:06:29', 0, NULL, '2019-08-19 22:06:29', '57009744761589760', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('175877432593616897', NULL, '2019-08-19 22:06:29', 0, NULL, '2019-08-19 22:06:29', '16392452747300864', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('175877432602005504', NULL, '2019-08-19 22:06:29', 0, NULL, '2019-08-19 22:06:29', '16392767785668608', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('175877432606199808', NULL, '2019-08-19 22:06:29', 0, NULL, '2019-08-19 22:06:29', '16439068543946752', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('175877432610394113', NULL, '2019-08-19 22:06:29', 0, NULL, '2019-08-19 22:06:29', '175808753877127169', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('175877432614588417', NULL, '2019-08-19 22:06:29', 0, NULL, '2019-08-19 22:06:29', '175808922710446081', '16457350655250432');
INSERT INTO `t_role_permission` VALUES ('211652374723301376', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '125909152017944576', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374761050112', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '5129710648430592', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374769438720', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '5129710648430593', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374777827328', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '15701400130424832', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374782021632', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '16678126574637056', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374790410240', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '15701915807518720', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374798798848', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '15708892205944832', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374802993152', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '16678447719911424', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374811381760', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '25014528525733888', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374815576064', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '56898976661639168', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374819770368', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '156365156580855808', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374823964672', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '40238597734928384', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374828158977', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '45235621697949696', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374836547584', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '45235787867885568', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374844936192', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '45235939278065664', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374861713408', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '43117268627886080', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374870102016', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '45236734832676864', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374878490624', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '45237010692050944', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374886879232', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '45237170029465600', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374895267840', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '57009544286441472', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374903656448', 'admin', '2019-11-26 15:23:19', 0, 'admin', '2019-11-26 15:23:19', '57009744761589760', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374907850752', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '57009981228060672', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374912045057', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '56309618086776832', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374920433664', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '57212882168844288', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374924627968', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '61560041605435392', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374933016576', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '61560275261722624', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374937210880', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '61560480518377472', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374941405185', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '44986029924421632', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374949793792', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '45235228800716800', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374953988096', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '45069342940860416', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374958182400', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '5129710648430594', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374962376704', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16687383932047360', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374966571009', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16689632049631232', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374970765313', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16689745006432256', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374979153920', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16689883993083904', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374987542528', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16690313745666048', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652374991736832', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '5129710648430595', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375000125440', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16694861252005888', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375008514048', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16695107491205120', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375016902656', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16695243126607872', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375025291264', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '75002207560273920', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375029485568', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '76215889006956544', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375033679872', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '76216071333351424', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375037874177', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '76216264070008832', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375046262784', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '76216459709124608', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375050457088', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '76216594207870976', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375058845696', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '76216702639017984', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375063040000', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '58480609315524608', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375071428608', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '61394706252173312', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375079817216', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '61417744146370560', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375088205824', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '76606430504816640', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375092400128', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '81558529864896512', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375096594433', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84082369492946944', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375100788737', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84082920431554560', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375109177344', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '81716172680073216', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375113371648', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84083562503999488', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375117565952', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84083641302388736', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375125954560', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '113601631450304512', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375134343168', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84084404707659776', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375138537472', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '82269650301227008', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375142731776', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84084724590448640', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375146926081', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '81319435670917120', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375151120385', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84084965817454592', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375159508992', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '117806106536841216', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375163703296', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '76914082455752704', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375167897600', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84085542324539392', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375172091904', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84085810797744128', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375176286208', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84085980943880192', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375180480512', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84086163001839616', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375184674816', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84086362248056832', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375188869120', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '76607201262702592', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375197257728', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84086882907983872', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375201452032', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84087009940869120', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375209840640', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84087154040377344', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375218229248', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '80539147005071360', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375222423552', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84087344352727040', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375230812160', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84087480852156416', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375235006464', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '84087593041399808', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375239200768', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '211251162815401984', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375243395072', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '211251678651879424', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375247589376', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '211652331387752448', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375251783680', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '39915540965232640', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375255977985', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '41370251991977984', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375264366592', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '45264987354042368', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375272755200', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '45265487029866496', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375281143808', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '45265762415284224', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375289532416', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '45265886315024384', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375293726721', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '45266070000373760', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375297921025', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '41363147411427328', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375302115329', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '41363537456533504', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375306309633', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '41364927394353152', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375310503937', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '121426317022334976', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375318892544', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '149452775095275520', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375323086848', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '41371711400054784', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375327281152', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '41469219249852416', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375335669760', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '39916171171991552', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375344058368', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '39918482854252544', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375352446976', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '102235632889237504', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375356641280', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '102237605176807424', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375365029888', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '102240052523831296', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375369224193', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '103658022701633536', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375373418497', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '41373430515240960', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375377612801', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '129033675403694080', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375381807105', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '41375330996326400', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375386001409', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '42082442672082944', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375390195713', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '41378916912336896', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375398584320', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '63741744973352960', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375402778625', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '41376192166629376', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375411167232', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '41377034236071936', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375419555840', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '56911328312299520', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375427944448', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '63482475359244288', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375436333056', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '64290663792906240', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375440527360', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '66790433014943744', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375444721664', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '210154306362413056', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375448915968', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '210155258859491329', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375453110272', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '210156371755143168', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375457304576', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '67027338952445952', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375461498880', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '67027909637836800', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375469887488', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '67042515441684480', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375474081792', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '67082402312228864', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375482470400', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '113602149589454848', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375490859008', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '113602342657462272', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375499247616', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '113603512293658624', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375507636224', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '113603617897844736', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375511830528', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16392452747300864', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375516024833', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16392767785668608', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375524413440', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16438800255291392', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375528607744', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16438962738434048', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375536996352', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '16439068543946752', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375545384960', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '175808753877127169', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375553773568', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '175808922710446081', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375562162176', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '127995258721013760', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375570550784', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '127996320085446656', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375578939392', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '160509731956330496', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375583133696', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '160509918166650881', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375587328000', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '128366789653434368', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375591522305', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '128368112335589376', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375595716609', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '128364633437245440', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375599910913', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '127996726786134016', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652375608299520', 'admin', '2019-11-26 15:23:20', 0, 'admin', '2019-11-26 15:23:20', '127997001756315648', '496138616573952');
INSERT INTO `t_role_permission` VALUES ('211652402032414720', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '125909152017944576', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402040803328', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '5129710648430592', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402044997632', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '5129710648430593', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402049191937', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '40238597734928384', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402053386241', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '43117268627886080', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402061774848', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '57009744761589760', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402065969152', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '56309618086776832', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402065969154', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '44986029924421632', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402070163457', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '5129710648430594', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402074357761', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '5129710648430595', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402078552065', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '75002207560273920', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402082746369', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '58480609315524608', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402086940672', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '76606430504816640', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402091134976', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '81558529864896512', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402095329280', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '81716172680073216', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402099523584', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '82269650301227008', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402103717888', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '81319435670917120', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402112106496', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '117806106536841216', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402116300800', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '76914082455752704', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402120495104', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '76607201262702592', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402124689409', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '80539147005071360', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402133078016', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '211251162815401984', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402141466624', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '211251678651879424', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402149855232', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '211652331387752448', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402154049536', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '39915540965232640', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402162438144', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '41370251991977984', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402170826752', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '41363147411427328', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402175021056', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '121426317022334976', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402183409664', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '149452775095275520', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402187603968', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '41371711400054784', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402191798272', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '39916171171991552', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402195992576', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '39918482854252544', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402204381184', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '102235632889237504', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402208575488', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '102237605176807424', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402212769792', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '102240052523831296', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402216964096', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '103658022701633536', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402221158400', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '41373430515240960', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402225352704', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '129033675403694080', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402229547008', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '41375330996326400', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402229547010', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '42082442672082944', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402237935616', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '41378916912336896', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402242129920', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '63741744973352960', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402246324225', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '41376192166629376', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402254712832', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '41377034236071936', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402258907136', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '56911328312299520', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402267295744', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '63482475359244288', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402275684352', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '64290663792906240', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402279878657', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '66790433014943744', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402288267264', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '67027338952445952', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402292461568', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '67027909637836800', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402296655872', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '67042515441684480', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402300850177', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '67082402312228864', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402305044481', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '113602149589454848', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402313433088', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '113602342657462272', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402317627393', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '113603512293658624', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402326016000', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '113603617897844736', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402334404608', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '16392452747300864', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402338598913', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '16392767785668608', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402346987520', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '16438800255291392', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402351181825', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '16438962738434048', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402355376129', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '16439068543946752', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402363764736', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '175808753877127169', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402367959040', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '175808922710446081', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402372153344', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '127995258721013760', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402376347648', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '127996320085446656', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402380541952', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '160509731956330496', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402384736257', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '160509918166650881', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402393124864', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '128366789653434368', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402397319168', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '128368112335589376', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402405707776', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '128364633437245440', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402414096384', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '127996726786134016', '496138616573953');
INSERT INTO `t_role_permission` VALUES ('211652402422484992', 'admin', '2019-11-26 15:23:26', 0, 'admin', '2019-11-26 15:23:26', '127997001756315648', '496138616573953');

-- ----------------------------
-- Table structure for t_setting
-- ----------------------------
DROP TABLE IF EXISTS `t_setting`;
CREATE TABLE `t_setting` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_setting
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(1000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `pass_strength` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('682265633886209', '', '2018-04-30 23:28:42', 'admin', '2018-11-20 09:55:49', '', 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', '', '1012@qq.com', '18782059033', '', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '女', '-1', '0', 'Exrick', '0', '40322777781112832', '', '弱');
INSERT INTO `t_user` VALUES ('16739222421508096', '', '2018-06-06 18:48:02', '', '2018-10-08 00:04:32', '', 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', '', '1012139570@qq.com', '18782059033', '', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '男', '0', '0', 'test2', '0', '40652338142121984', '', '弱');
INSERT INTO `t_user` VALUES ('4363087427670016', '', '2018-05-03 15:09:42', '', '2018-10-08 00:04:46', '[\"510000\",\"510100\",\"510114\"]', 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', '', '1012139570@qq.com', '18782059033', '', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '男', '0', '0', 'test', '0', '40652338142121984', '', '弱');
INSERT INTO `t_user` VALUES ('682265633886208', '', '2018-05-01 16:13:51', 'admin', '2018-11-14 21:52:20', '[\"510000\",\"510100\",\"510104\"]', 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', 'test', '2549575805@qq.com', '18782059038', 'Exrick', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '男', '0', '1', 'admin', '0', '40322777781112832', '天府1街', '弱');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('70669807116095488', null, '2018-11-02 14:28:56', '0', null, '2018-11-02 14:28:56', '496138616573952', '682265633886208');
INSERT INTO `t_user_role` VALUES ('61392579396112384', null, '2018-10-08 00:04:32', '0', null, '2018-10-08 00:04:32', '16457350655250432', '16739222421508096');
INSERT INTO `t_user_role` VALUES ('61392637076180992', null, '2018-10-08 00:04:46', '0', null, '2018-10-08 00:04:46', '496138616573953', '4363087427670016');
INSERT INTO `t_user_role` VALUES ('75424516313976832', 'admin', '2018-11-15 17:22:27', '0', 'admin', '2018-11-15 17:22:27', '496138616573952', '682265633886209');
INSERT INTO `t_user_role` VALUES ('75424516414640128', 'admin', '2018-11-15 17:22:27', '0', 'admin', '2018-11-15 17:22:27', '496138616573953', '682265633886209');

-- ----------------------------
-- Table structure for t_weibo
-- ----------------------------
DROP TABLE IF EXISTS `t_weibo`;
CREATE TABLE `t_weibo` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_related` bit(1) DEFAULT NULL,
  `open_id` varchar(255) DEFAULT NULL,
  `relate_username` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_weibo
-- ----------------------------

-- ----------------------------
-- Table structure for t_department_header
-- ----------------------------
DROP TABLE IF EXISTS `t_department_header`;
CREATE TABLE `t_department_header` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS QRTZ_FIRED_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_PAUSED_TRIGGER_GRPS;
DROP TABLE IF EXISTS QRTZ_SCHEDULER_STATE;
DROP TABLE IF EXISTS QRTZ_LOCKS;
DROP TABLE IF EXISTS QRTZ_SIMPLE_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_SIMPROP_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_CRON_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_BLOB_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_TRIGGERS;
DROP TABLE IF EXISTS QRTZ_JOB_DETAILS;
DROP TABLE IF EXISTS QRTZ_CALENDARS;


CREATE TABLE QRTZ_JOB_DETAILS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    JOB_NAME  VARCHAR(200) NOT NULL,
    JOB_GROUP VARCHAR(200) NOT NULL,
    DESCRIPTION VARCHAR(250) NULL,
    JOB_CLASS_NAME   VARCHAR(250) NOT NULL,
    IS_DURABLE VARCHAR(1) NOT NULL,
    IS_NONCONCURRENT VARCHAR(1) NOT NULL,
    IS_UPDATE_DATA VARCHAR(1) NOT NULL,
    REQUESTS_RECOVERY VARCHAR(1) NOT NULL,
    JOB_DATA BLOB NULL,
    PRIMARY KEY (SCHED_NAME,JOB_NAME,JOB_GROUP)
);

CREATE TABLE QRTZ_TRIGGERS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    JOB_NAME  VARCHAR(200) NOT NULL,
    JOB_GROUP VARCHAR(200) NOT NULL,
    DESCRIPTION VARCHAR(250) NULL,
    NEXT_FIRE_TIME BIGINT(13) NULL,
    PREV_FIRE_TIME BIGINT(13) NULL,
    PRIORITY INTEGER NULL,
    TRIGGER_STATE VARCHAR(16) NOT NULL,
    TRIGGER_TYPE VARCHAR(8) NOT NULL,
    START_TIME BIGINT(13) NOT NULL,
    END_TIME BIGINT(13) NULL,
    CALENDAR_NAME VARCHAR(200) NULL,
    MISFIRE_INSTR SMALLINT(2) NULL,
    JOB_DATA BLOB NULL,
    PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (SCHED_NAME,JOB_NAME,JOB_GROUP)
        REFERENCES QRTZ_JOB_DETAILS(SCHED_NAME,JOB_NAME,JOB_GROUP)
);

CREATE TABLE QRTZ_SIMPLE_TRIGGERS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    REPEAT_COUNT BIGINT(7) NOT NULL,
    REPEAT_INTERVAL BIGINT(12) NOT NULL,
    TIMES_TRIGGERED BIGINT(10) NOT NULL,
    PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
        REFERENCES QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);

CREATE TABLE QRTZ_CRON_TRIGGERS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    CRON_EXPRESSION VARCHAR(200) NOT NULL,
    TIME_ZONE_ID VARCHAR(80),
    PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
        REFERENCES QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);

CREATE TABLE QRTZ_SIMPROP_TRIGGERS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    STR_PROP_1 VARCHAR(512) NULL,
    STR_PROP_2 VARCHAR(512) NULL,
    STR_PROP_3 VARCHAR(512) NULL,
    INT_PROP_1 INT NULL,
    INT_PROP_2 INT NULL,
    LONG_PROP_1 BIGINT NULL,
    LONG_PROP_2 BIGINT NULL,
    DEC_PROP_1 NUMERIC(13,4) NULL,
    DEC_PROP_2 NUMERIC(13,4) NULL,
    BOOL_PROP_1 VARCHAR(1) NULL,
    BOOL_PROP_2 VARCHAR(1) NULL,
    PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
    REFERENCES QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);

CREATE TABLE QRTZ_BLOB_TRIGGERS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    BLOB_DATA BLOB NULL,
    PRIMARY KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP),
    FOREIGN KEY (SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
        REFERENCES QRTZ_TRIGGERS(SCHED_NAME,TRIGGER_NAME,TRIGGER_GROUP)
);

CREATE TABLE QRTZ_CALENDARS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    CALENDAR_NAME  VARCHAR(200) NOT NULL,
    CALENDAR BLOB NOT NULL,
    PRIMARY KEY (SCHED_NAME,CALENDAR_NAME)
);

CREATE TABLE QRTZ_PAUSED_TRIGGER_GRPS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    TRIGGER_GROUP  VARCHAR(200) NOT NULL,
    PRIMARY KEY (SCHED_NAME,TRIGGER_GROUP)
);

CREATE TABLE QRTZ_FIRED_TRIGGERS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    ENTRY_ID VARCHAR(95) NOT NULL,
    TRIGGER_NAME VARCHAR(200) NOT NULL,
    TRIGGER_GROUP VARCHAR(200) NOT NULL,
    INSTANCE_NAME VARCHAR(200) NOT NULL,
    FIRED_TIME BIGINT(13) NOT NULL,
    SCHED_TIME BIGINT(13) NOT NULL,
    PRIORITY INTEGER NOT NULL,
    STATE VARCHAR(16) NOT NULL,
    JOB_NAME VARCHAR(200) NULL,
    JOB_GROUP VARCHAR(200) NULL,
    IS_NONCONCURRENT VARCHAR(1) NULL,
    REQUESTS_RECOVERY VARCHAR(1) NULL,
    PRIMARY KEY (SCHED_NAME,ENTRY_ID)
);

CREATE TABLE QRTZ_SCHEDULER_STATE
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    INSTANCE_NAME VARCHAR(200) NOT NULL,
    LAST_CHECKIN_TIME BIGINT(13) NOT NULL,
    CHECKIN_INTERVAL BIGINT(13) NOT NULL,
    PRIMARY KEY (SCHED_NAME,INSTANCE_NAME)
);

CREATE TABLE QRTZ_LOCKS
  (
    SCHED_NAME VARCHAR(120) NOT NULL,
    LOCK_NAME  VARCHAR(40) NOT NULL,
    PRIMARY KEY (SCHED_NAME,LOCK_NAME)
);
