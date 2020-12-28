/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : trademark

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 26/12/2020 14:37:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_business
-- ----------------------------
DROP TABLE IF EXISTS `tbl_business`;
CREATE TABLE `tbl_business`  (
  `business_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `applicant_code` int NULL DEFAULT NULL COMMENT '申请号（专利局反馈）',
  `applicant_time` datetime NULL DEFAULT NULL COMMENT '页面显示系统时间\r\n',
  `business_top_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典下拉\r\n',
  `business_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '业务名称，手输',
  `trademark_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典下拉\r\n',
  `business_second_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典下拉\r\n',
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '成交价格',
  `proxy_money` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '代理费',
  `upload_id` int NULL DEFAULT NULL COMMENT '关联文件上传表，即文件ID',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `custom_id` int NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`business_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_business
-- ----------------------------
INSERT INTO `tbl_business` VALUES (1, 222518, '2020-12-22 21:25:18', '商标', '瑶飞机械', '机械设备、马达、传动', '商标续展注册申请', '1500', '500', NULL, '豆豆', '2020-12-22 21:26:56', '豆豆', '2020-12-23 20:43:37', 70, '测试一');
INSERT INTO `tbl_business` VALUES (2, 224302, '2020-12-22 21:43:02', '商标', '电信', '电信、通讯服务', '商标注册申请', '2000', '500', NULL, '豆豆', '2020-12-22 21:43:25', '豆豆', '2020-12-23 20:43:48', 70, '无');
INSERT INTO `tbl_business` VALUES (3, 224420, '2020-12-22 21:44:20', '商标', '宋河酒业', '酒、含酒精饮料', '撤回变更商标申请人/注册人名义/地址 变更集体商标/证明商标管理规则/集体成员名单申请', '1500', '500', NULL, '豆豆', '2020-12-23 19:47:27', '豆豆', '2020-12-23 20:43:56', 71, '无');
INSERT INTO `tbl_business` VALUES (4, 235726, '2020-12-23 19:57:26', '商标', '业务二', '生鲜、动植物、饲料种子', '商标专用权质权登记期限延期申请', '1500', '500', NULL, '豆豆', '2020-12-23 19:57:33', '豆豆', '2020-12-23 20:44:06', 70, '无');
INSERT INTO `tbl_business` VALUES (5, 235847, '2020-12-23 19:58:47', '商标', '变更商标代理人', '军火、烟火、个人防护喷雾', '变更商标代理人/文件接收人申请', '1500', '500', NULL, '豆豆', '2020-12-23 19:59:57', '豆豆', '2020-12-23 20:45:12', 70, '无');
INSERT INTO `tbl_business` VALUES (6, 2345856, '2020-12-23 19:58:47', '商标', '变更商标代理人', '军火、烟火、个人防护喷雾', '变更商标代理人/文件接收人申请', '1500', '500', NULL, '豆豆', '2020-12-23 20:00:06', '豆豆', '2020-12-23 20:45:41', 71, '无');
INSERT INTO `tbl_business` VALUES (7, 240159, '2020-12-23 20:01:59', '商标', '异议申诉', '军火、烟火、个人防护喷雾', '撤回商标异议申请', '1500', '500', NULL, '豆豆', '2020-12-23 20:02:37', '豆豆', '2020-12-23 20:46:16', 70, '无');
INSERT INTO `tbl_business` VALUES (8, 231123, '2020-12-23 21:11:20', '商标', '务农', '手动器具（小型）、餐具、冷兵器', '商标注册申请', '1500', '500', NULL, '豆豆', '2020-12-23 21:12:13', NULL, NULL, 72, '无');
INSERT INTO `tbl_business` VALUES (9, 231224, '2020-12-23 21:12:24', '商标', '延期申请', '手动器具（小型）、餐具、冷兵器', '商标专用权质权登记期限延期申请', '1500', '500', NULL, '豆豆', '2020-12-23 21:13:30', NULL, NULL, 72, '无');
INSERT INTO `tbl_business` VALUES (10, 231545, '2020-12-23 21:15:45', '商标', '商标变更', '能源、燃料、油脂', '商标专用权质权登记事项变更申请', '1600', '600', NULL, '豆豆', '2020-12-23 21:16:36', NULL, NULL, 73, '无');
INSERT INTO `tbl_business` VALUES (11, 2311647, '2020-12-23 21:16:47', '商标', '撤销', '熟食、肉蛋奶、食用油', '撤销连续三年不使用注册商标提供证据', '1300', '300', NULL, '豆豆', '2020-12-23 21:17:36', NULL, NULL, 73, '无');

-- ----------------------------
-- Table structure for tbl_custom
-- ----------------------------
DROP TABLE IF EXISTS `tbl_custom`;
CREATE TABLE `tbl_custom`  (
  `custom_id` int NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系人姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `applicant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '申请人',
  `custom_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮寄地址',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '当前登录人的loginName，创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `proxy_id` int NOT NULL COMMENT '代理人ID',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`custom_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_custom
-- ----------------------------
INSERT INTO `tbl_custom` VALUES (1, '叶冬青', '12345678911', '叶冬青', '河南省', NULL, '2020-12-23 11:57:23', NULL, NULL, 2, '信息');
INSERT INTO `tbl_custom` VALUES (70, '任清华', '13585679912', '禹州市瑶飞机械有限公司', '禹州市瑶飞机械有限公司', '豆豆', '2020-12-22 21:25:04', NULL, NULL, 2, '');
INSERT INTO `tbl_custom` VALUES (71, '吴鑫', '15936003780', '吴鑫', '河南省鹿邑县产业集聚区宋河酒业', '豆豆', '2020-12-22 21:37:50', '豆豆', '2020-12-23 20:16:00', 3, '数据仅供测试使用');
INSERT INTO `tbl_custom` VALUES (72, '乔永秀', '13523595089', '乔永秀', '河南省郑州市市辖区郑东新区平安大道210号中国中原大学生创业孵化园二层S0501号 乔永秀 13523595089', '豆豆', '2020-12-23 19:50:16', '豆豆', '2020-12-23 20:48:05', 8, '无 ');
INSERT INTO `tbl_custom` VALUES (73, '邹  雪', '18305606824', '邹  雪', '安徽省亳州市蒙城县纬三路与安驰大道交叉口 安徽瑞蒙科技有限公司', '豆豆', '2020-12-23 19:51:24', NULL, NULL, 8, '安徽瑞蒙科技有限公司');
INSERT INTO `tbl_custom` VALUES (74, '张玉生 ', '15225328578', '张玉生 ', '河南亚圣生物科技有限公司', '豆豆', '2020-12-23 19:52:28', '豆豆', '2020-12-23 20:16:11', 4, '河南亚圣生物科技有限公司');
INSERT INTO `tbl_custom` VALUES (75, '郭善云', '13939431515', '郭善云', '河南酷玩童年教育咨询有限公司', '豆豆', '2020-12-23 19:53:59', '豆豆', '2020-12-23 20:16:34', 3, '河南酷玩童年教育咨询有限公司');
INSERT INTO `tbl_custom` VALUES (76, '李杰', '15225328578', '李杰', '庆阳市长欣道路运输有限公司', '豆豆', '2020-12-23 20:07:56', '豆豆', '2020-12-23 20:16:20', 4, '庆阳市长欣道路运输有限公司');
INSERT INTO `tbl_custom` VALUES (77, '王明欲', '13345678765', '王明欲', '罗山县八珍农副产品有限公司', '豆豆', '2020-12-23 20:08:57', NULL, NULL, 8, '罗山县八珍农副产品有限公司');
INSERT INTO `tbl_custom` VALUES (78, '刘阳军', '13522233345', '刘阳军', '南阳鸿图钙业有限公司', '豆豆', '2020-12-23 20:09:54', NULL, NULL, 8, '南阳鸿图钙业有限公司');
INSERT INTO `tbl_custom` VALUES (79, '李四', '19983812476', '李四', '安徽瑞蒙科技有限公司', '豆豆', '2020-12-23 20:11:38', NULL, NULL, 3, '安徽瑞蒙科技有限公司');
INSERT INTO `tbl_custom` VALUES (80, '崔庆伟', '13526754500', '崔庆伟', '武陟县大康医药零售连锁有限公司', '豆豆', '2020-12-23 20:12:34', NULL, NULL, 4, '武陟县大康医药零售连锁有限公司');

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept`  (
  `dept_id` int NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES (101, '研发部门', 1, '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `tbl_dept` VALUES (102, '市场部门', 2, '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `tbl_dept` VALUES (103, '测试部门', 3, '0', '0', 'admin', '2018-03-16 11:33:00', '豆豆', '2020-12-24 10:27:48');
INSERT INTO `tbl_dept` VALUES (104, '财务部门', 4, '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `tbl_dept` VALUES (105, '运维部门', 5, '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');
INSERT INTO `tbl_dept` VALUES (106, '市场部门', 6, '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for tbl_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dictionary`;
CREATE TABLE `tbl_dictionary`  (
  `dictionary_id` int NOT NULL AUTO_INCREMENT,
  `type_id` int NOT NULL COMMENT '字典类型,关联字典类型表',
  `dictionary_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名,展示时使用，保存的时候使用主键值',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` date NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dictionary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dictionary
-- ----------------------------
INSERT INTO `tbl_dictionary` VALUES (1, 1, '化学制剂、肥料', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (2, 1, '颜料油漆、染料、防腐制品', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (3, 1, '日化用品、洗护、香料', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (4, 1, '能源、燃料、油脂', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (5, 1, '药品、卫生用品、营养品', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (6, 1, '金属制品、金属建材、金属材料', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (7, 1, '机械设备、马达、传动', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (8, 1, '手动器具（小型）、餐具、冷兵器', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (9, 1, '科学仪器、电子产品、安防设备', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (10, 1, '医疗器械、医疗用品、成人用品', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (11, 1, '照明洁具、冷热设备、消毒净化', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (12, 1, '运输工具、运载工具零部件', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (13, 1, '军火、烟火、个人防护喷雾', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (14, 1, '珠宝、贵金属、钟表', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (15, 1, '乐器、乐器辅助用品及配件', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (16, 1, '纸品、办公用品、文具教具', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (17, 1, '橡胶制品、绝缘隔热隔音材料', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (18, 1, '箱包、皮革皮具、伞具', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (19, 1, '非金属建筑材料', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (20, 1, '家具、家具部件、软垫', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (21, 1, '厨房器具、家用器皿、洗护用具', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (22, 1, '绳缆、遮蓬、袋子', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (23, 1, '纱、线、丝', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (24, 1, '纺织品、床上用品、毛巾', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (25, 1, '服装、鞋帽、袜子手套', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (26, 1, '饰品、假发、纽扣拉链', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (27, 1, '地毯、席垫、墙纸', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (28, 1, '玩具、体育健身器材、钓具', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (29, 1, '熟食、肉蛋奶、食用油', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (30, 1, '面点、调味品、饮品', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (31, 1, '生鲜、动植物、饲料种子', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (32, 1, '啤酒、不含酒精的饮料', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (33, 1, '酒、含酒精饮料', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (34, 1, '烟草、烟具', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (35, 1, '广告、商业管理、市场营销', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (36, 1, '金融事务、不动产管理、典当担保', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (37, 1, '建筑、室内装修、维修维护', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (38, 1, '电信、通讯服务', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (39, 1, '运输仓储、能源分配、旅行服务', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (40, 1, '材料加工、印刷、污物处理', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (41, 1, '教育培训、文体活动、娱乐服务', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (42, 1, '研发质控、IT服务、建筑咨询', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (43, 1, '餐饮住宿、养老托儿、动物食宿', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (44, 1, '医疗、美容、园艺', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (45, 1, '安保法律、婚礼家政、社会服务', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (46, 2, '商标', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (47, 2, '版权', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (48, 2, '专利', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (49, 2, '项目申报', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (50, 3, '商标注册申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (51, 3, '商标异议申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (52, 3, '商标异议答辩', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (53, 3, '更正商标申请/注册事项申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (54, 3, '变更商标申请人/注册人名义/地址变更集体商标/证明商标管理规则/集体成员名单申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (55, 3, '删减商品/服务项目申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (56, 3, '商标续展注册申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (57, 3, '变更商标代理人/文件接收人申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (58, 3, '转让/移转申请/注册商标申请书', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (59, 3, '商标使用许可备案', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (60, 3, '变更许可人/被许可人名称备案', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (61, 3, '商标使用许可提前终止备案', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (62, 3, '商标专用权质权登记申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (63, 3, '商标专用权质权登记事项变更申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (64, 3, '商标专用权质权登记期限延期申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (65, 3, '商标专用权质权登记证补发申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (66, 3, '商标专用权质权登记注销申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (67, 3, '商标注销申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (68, 3, '撤销连续三年不使用注册商标申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (69, 3, '撤销成为商品/服务通用名称注册商标申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (70, 3, '撤销连续三年不使用注册商标提供证据', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (71, 3, '撤销成为商品/服务通用名称注册商标答辩', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (72, 3, '补发变更/转让/续展证明申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (73, 3, '补发商标注册证申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (74, 3, '出具商标注册证明申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (75, 3, '出具优先权证明文件申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (76, 3, '撤回商标注册申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (77, 3, '撤回商标异议申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (78, 3, '撤回变更商标申请人/注册人名义/地址 变更集体商标/证明商标管理规则/集体成员名单申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (79, 3, '撤回变更商标代理人/文件接收人申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (80, 3, '撤回删减商品/服务项目申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (81, 3, '撤回商标续展注册申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (82, 3, '撤回转让/移转申请/注册商标申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (83, 3, '撤回商标使用许可备案', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (84, 3, '撤回商标注销申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (85, 3, '撤回撤销连续三年不使用注册商标申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (86, 3, '撤回撤销成为商品/服务通用名称注册商标申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (87, 3, '驳回商标注册申请复审案', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (88, 3, '撤销注册商标复审案', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (89, 3, '注册商标无效宣告复审案', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (90, 3, '商标不予注册复审案', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (91, 3, '商标注册无效宣告案', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (92, 3, '一审诉讼', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (93, 3, '二审诉讼', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (94, 4, '商标申请受通', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (95, 4, '公告', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (96, 4, '下证', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (97, 4, '驳回通知书', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (98, 4, '驳回复审申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (99, 4, '领证书', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (100, 4, '驳回复审裁定', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (101, 4, '异议申请', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (102, 4, '异议答辩', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (103, 4, '异议裁定', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (104, 4, '异议复审 ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (105, 4, '无效宣告 ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (106, 4, '无效宣告答辩 ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (107, 4, '无效宣告 裁定', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (108, 4, '提供使用证据通知书', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (109, 4, '撤三答辩', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (110, 4, '撤三复审', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (111, 4, '商标评审案件证据交换通知书', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (112, 4, '撤三裁定', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (113, 4, '异议复审裁定', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (114, 4, '一审诉讼通知', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (115, 4, '二审诉讼', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (116, 4, '补证通知', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (117, 4, '缴费通知', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (118, 4, '不予核准通知', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_dictionary_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dictionary_type`;
CREATE TABLE `tbl_dictionary_type`  (
  `type_id` int NOT NULL AUTO_INCREMENT COMMENT '类型ID，自增',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型名称，非空，唯一',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dictionary_type
-- ----------------------------
INSERT INTO `tbl_dictionary_type` VALUES (1, '商标分类', '豆豆', '2020-12-23 11:22:36', NULL, NULL, NULL);
INSERT INTO `tbl_dictionary_type` VALUES (2, '一级业务类型', '豆豆', '2020-12-23 11:22:39', NULL, NULL, NULL);
INSERT INTO `tbl_dictionary_type` VALUES (3, '二级业务类型', '豆豆', '2020-12-23 11:22:42', NULL, NULL, NULL);
INSERT INTO `tbl_dictionary_type` VALUES (4, '进度类型', '豆豆', '2020-12-23 11:22:44', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu`  (
  `menu_id` int NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` int NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1020 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES (1, '系统管理', 0, 1, '#', 'M', '0', '', 'layui-icon-set', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `tbl_menu` VALUES (2, '客户管理', 0, 2, '#', 'M', '0', '', 'layui-icon-camera-fill', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `tbl_menu` VALUES (3, '业务统计', 0, 3, '#', 'M', '1', '', 'layui-icon-camera-fill', 'admin', '2020-12-22 14:46:14', '', '2020-12-22 14:46:19', '业务统计菜单');
INSERT INTO `tbl_menu` VALUES (4, '字典管理', 0, 4, '#', 'M', '0', '', '#', 'admin', '2020-12-23 18:56:38', '', NULL, '字典管理');
INSERT INTO `tbl_menu` VALUES (100, '用户管理', 1, 1, '/goto/toUser', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `tbl_menu` VALUES (101, '角色管理', 1, 2, '/goto/toRole', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `tbl_menu` VALUES (102, '菜单管理', 1, 3, '/goto/toMenu', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `tbl_menu` VALUES (103, '部门管理', 1, 4, '/goto/toDept', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `tbl_menu` VALUES (109, '客户列表', 2, 1, '/goto/toCustom', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `tbl_menu` VALUES (111, '业务列表', 2, 2, '/goto/toBusiness', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `tbl_menu` VALUES (112, '进度列表', 2, 3, '/goto/toProgress', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `tbl_menu` VALUES (113, '柱状图', 3, 1, '#', 'C', '1', '', '#', 'admin', '2020-12-22 14:51:05', '', NULL, '');
INSERT INTO `tbl_menu` VALUES (114, '折线图', 3, 2, '#', 'C', '1', '', '#', 'admin', '2020-12-22 14:53:01', '', NULL, '');
INSERT INTO `tbl_menu` VALUES (115, '字典类型', 4, 1, '/goto/toDictionary', 'C', '0', '', '#', 'admin', '2020-12-23 18:59:34', '', NULL, '字典类型');
INSERT INTO `tbl_menu` VALUES (116, '字典种类', 4, 2, '/goto/toDictionaryType', 'C', '0', '', '#', 'admin', '2020-12-23 19:00:43', '', NULL, '字典种类');
INSERT INTO `tbl_menu` VALUES (1000, '用户查询', 100, 1, '#', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1001, '用户新增', 100, 2, '#', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1002, '用户修改', 100, 3, '#', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1003, '用户删除', 100, 4, '#', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1004, '用户导出', 100, 5, '#', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1005, '重置密码', 100, 6, '#', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1006, '角色查询', 101, 1, '#', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1007, '角色新增', 101, 2, '#', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1008, '角色修改', 101, 3, '#', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1009, '角色删除', 101, 4, '#', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1010, '角色导出', 101, 5, '#', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1011, '菜单查询', 102, 1, '#', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1012, '菜单新增', 102, 2, '#', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1013, '菜单修改', 102, 3, '#', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1014, '菜单删除', 102, 4, '#', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1015, '部门查询', 103, 1, '#', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1016, '部门新增', 103, 2, '#', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1017, '部门修改', 103, 3, '#', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1018, '部门删除', 103, 4, '#', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1019, '回访信息', 2, 4, '/goto/toVisit', 'C', '0', '', NULL, '豆豆', '2020-12-24 09:31:13', NULL, NULL, '回访信息');

-- ----------------------------
-- Table structure for tbl_progress
-- ----------------------------
DROP TABLE IF EXISTS `tbl_progress`;
CREATE TABLE `tbl_progress`  (
  `progress_id` int NOT NULL AUTO_INCREMENT,
  `progress_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '进度类型下拉字典',
  `upload_id` int NOT NULL COMMENT '上传文件，关联文件上传表',
  `business_id` int NOT NULL COMMENT '业务id，关联业务表',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`progress_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_progress
-- ----------------------------
INSERT INTO `tbl_progress` VALUES (1, '商标申请受通', 3, 4, '豆豆', '2020-12-25 15:35:13', '豆豆', '2020-12-26 14:36:17', '下证上传文件');
INSERT INTO `tbl_progress` VALUES (2, '商标申请受通', 2, 4, '豆豆', '2020-12-23 20:20:40', '豆豆', '2020-12-26 14:36:31', '下证通知文件上传');
INSERT INTO `tbl_progress` VALUES (3, '公告', 4, 2, '豆豆', '2020-12-23 20:20:56', '豆豆', '2020-12-23 20:21:59', '公告上传文件');
INSERT INTO `tbl_progress` VALUES (4, '领证书', 5, 8, '豆豆', '2020-12-23 20:21:05', '豆豆', '2020-12-23 20:22:04', '领证书通知文件');
INSERT INTO `tbl_progress` VALUES (5, '驳回复审申请', 7, 1, '豆豆', '2020-12-23 20:21:41', '豆豆', '2020-12-23 20:22:08', '无');
INSERT INTO `tbl_progress` VALUES (6, '驳回复审申请', 9, 1, '豆豆', '2020-12-23 20:22:14', '豆豆', '2020-12-23 20:22:24', '无');
INSERT INTO `tbl_progress` VALUES (7, '商标申请受通', 11, 2, '豆豆', '2020-12-23 20:23:00', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (8, '公告', 13, 2, '豆豆', '2020-12-23 20:23:07', '豆豆', '2020-12-23 20:23:12', '无');
INSERT INTO `tbl_progress` VALUES (9, '下证', 15, 2, '豆豆', '2020-12-23 20:23:19', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (10, '驳回通知书', 17, 2, '豆豆', '2020-12-23 20:23:28', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (11, '驳回复审申请', 19, 2, '豆豆', '2020-12-23 20:23:40', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (12, '商标申请受通', 21, 3, '豆豆', '2020-12-23 20:24:04', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (13, '商标申请受通', 23, 3, '豆豆', '2020-12-23 20:24:11', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (14, '商标申请受通', 25, 3, '豆豆', '2020-12-23 20:24:18', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (15, '商标申请受通', 27, 6, '豆豆', '2020-12-23 20:24:52', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (16, '公告', 29, 6, '豆豆', '2020-12-23 20:25:03', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (17, '下证', 31, 6, '豆豆', '2020-12-23 20:25:13', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (18, '商标申请受通', 12, 4, '豆豆', '2020-12-23 21:10:10', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (19, '公告', 13, 4, '豆豆', '2020-12-23 21:10:29', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (20, '商标申请受通', 14, 8, '豆豆', '2020-12-23 21:14:09', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (21, '公告', 15, 8, '豆豆', '2020-12-23 21:14:23', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (22, '商标申请受通', 16, 9, '豆豆', '2020-12-23 21:15:07', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (23, '公告', 17, 9, '豆豆', '2020-12-23 21:15:21', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (24, '商标申请受通', 24, 10, '豆豆', '2020-12-23 21:21:04', '豆豆', '2020-12-23 21:21:24', '无');
INSERT INTO `tbl_progress` VALUES (25, '商标申请受通', 35, 10, '豆豆', '2020-12-23 21:21:19', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (26, '商标申请受通', 25, 11, '豆豆', '2020-12-23 21:21:50', NULL, NULL, '无');
INSERT INTO `tbl_progress` VALUES (27, '商标申请受通', 26, 11, '豆豆', '2020-12-23 21:22:00', NULL, NULL, '无');

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role`  (
  `role_id` int NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES (1, '管理员', 'admin', 1, '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', '管理员');
INSERT INTO `tbl_role` VALUES (2, '普通角色', 'common', 2, '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-08-07 16:24:20', '普通角色');
INSERT INTO `tbl_role` VALUES (3, '测试角色', 'ceshi', 3, '0', '0', 'admin', '2019-12-31 15:40:32', 'admin', '2019-12-31 15:42:14', '');

-- ----------------------------
-- Table structure for tbl_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_menu`;
CREATE TABLE `tbl_role_menu`  (
  `role_id` int NOT NULL COMMENT '角色ID',
  `menu_id` int NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_role_menu
-- ----------------------------
INSERT INTO `tbl_role_menu` VALUES (1, 1);
INSERT INTO `tbl_role_menu` VALUES (1, 2);
INSERT INTO `tbl_role_menu` VALUES (1, 3);
INSERT INTO `tbl_role_menu` VALUES (1, 4);
INSERT INTO `tbl_role_menu` VALUES (1, 100);
INSERT INTO `tbl_role_menu` VALUES (1, 101);
INSERT INTO `tbl_role_menu` VALUES (1, 102);
INSERT INTO `tbl_role_menu` VALUES (1, 103);
INSERT INTO `tbl_role_menu` VALUES (1, 109);
INSERT INTO `tbl_role_menu` VALUES (1, 111);
INSERT INTO `tbl_role_menu` VALUES (1, 112);
INSERT INTO `tbl_role_menu` VALUES (1, 113);
INSERT INTO `tbl_role_menu` VALUES (1, 114);
INSERT INTO `tbl_role_menu` VALUES (1, 115);
INSERT INTO `tbl_role_menu` VALUES (1, 116);
INSERT INTO `tbl_role_menu` VALUES (1, 1000);
INSERT INTO `tbl_role_menu` VALUES (1, 1001);
INSERT INTO `tbl_role_menu` VALUES (1, 1002);
INSERT INTO `tbl_role_menu` VALUES (1, 1003);
INSERT INTO `tbl_role_menu` VALUES (1, 1004);
INSERT INTO `tbl_role_menu` VALUES (1, 1005);
INSERT INTO `tbl_role_menu` VALUES (1, 1006);
INSERT INTO `tbl_role_menu` VALUES (1, 1007);
INSERT INTO `tbl_role_menu` VALUES (1, 1008);
INSERT INTO `tbl_role_menu` VALUES (1, 1009);
INSERT INTO `tbl_role_menu` VALUES (1, 1010);
INSERT INTO `tbl_role_menu` VALUES (1, 1011);
INSERT INTO `tbl_role_menu` VALUES (1, 1012);
INSERT INTO `tbl_role_menu` VALUES (1, 1013);
INSERT INTO `tbl_role_menu` VALUES (1, 1014);
INSERT INTO `tbl_role_menu` VALUES (1, 1015);
INSERT INTO `tbl_role_menu` VALUES (1, 1016);
INSERT INTO `tbl_role_menu` VALUES (1, 1017);
INSERT INTO `tbl_role_menu` VALUES (1, 1018);
INSERT INTO `tbl_role_menu` VALUES (1, 1019);
INSERT INTO `tbl_role_menu` VALUES (2, 1);
INSERT INTO `tbl_role_menu` VALUES (2, 100);
INSERT INTO `tbl_role_menu` VALUES (2, 101);
INSERT INTO `tbl_role_menu` VALUES (2, 1001);
INSERT INTO `tbl_role_menu` VALUES (2, 1002);
INSERT INTO `tbl_role_menu` VALUES (2, 1003);
INSERT INTO `tbl_role_menu` VALUES (2, 1019);

-- ----------------------------
-- Table structure for tbl_upload
-- ----------------------------
DROP TABLE IF EXISTS `tbl_upload`;
CREATE TABLE `tbl_upload`  (
  `upload_id` int NOT NULL AUTO_INCREMENT COMMENT '即文件ID，为方便识别命名为表名_id',
  `source_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原文件名',
  `notice_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原通知文件名',
  `destination_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务器文件名',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_upload
-- ----------------------------
INSERT INTO `tbl_upload` VALUES (1, 'test.txt', '', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/25/1608880802241[I@2d2b2ac9.txt');
INSERT INTO `tbl_upload` VALUES (2, '', 'test1.txt', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/26/1608964590148[I@60417be4.txt');
INSERT INTO `tbl_upload` VALUES (3, 'test2.txt', '', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/26/1608964576644[I@78b28f3b.txt');
INSERT INTO `tbl_upload` VALUES (4, 'test3.txt', '', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/26/1608964324219[I@355c0897.txt');
INSERT INTO `tbl_upload` VALUES (5, '', 'test2.txt', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/26/1608964468334[I@bab0af5.txt');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` int NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 101, 'admin', '豆豆', '86521760@qq.com', '18538062907', '0', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/25/1608861521366[I@56389814.jpg', '280111d7f4fa14ff76606fe1ffa4d782', '9ed6610c-6132-4d0c-a8a4-5011080ba754', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-12-25 09:58:44', '管理员');
INSERT INTO `tbl_user` VALUES (3, 101, 'chenjian', '陈建', 'chenjian3822515@163.com', '18538062906', '0', NULL, 'f4a77e1417b03bf32d4b33a137282093', '4bd21f', '0', '0', 'admin', '2019-04-18 11:48:31', '豆豆', '2020-12-24 10:20:01', '');
INSERT INTO `tbl_user` VALUES (4, 101, 'root2', '张三', '86587432@qq.com', '18538062999', '0', NULL, '280111d7f4fa14ff76606fe1ffa4d782', '9ed6610c-6132-4d0c-a8a4-5011080ba754', '0', '0', 'admin', '2019-08-07 15:46:18', 'admin', '2019-08-07 16:24:29', '');
INSERT INTO `tbl_user` VALUES (5, 103, 'lihang', 'lihang', '7987954@qq.com', '17947934435', '0', NULL, '6d70551312e8167cb363020454a3ba03', 'f06b8d', '0', '0', 'admin', '2019-12-31 15:38:14', 'admin', '2020-01-01 21:02:55', '');
INSERT INTO `tbl_user` VALUES (7, 104, 'test111', 'lisi', 'asgghhdgx@qq.com', '1346577745', '0', NULL, '706a9a7f705683ff6cdaeaa064bc5ca0', 'd5bc8bbd-7bd5-4a3f-bbbc-946df11c6648', '1', '1', '豆豆', '2020-12-23 09:38:36', 'lisi', '2020-12-23 09:39:10', NULL);
INSERT INTO `tbl_user` VALUES (8, 101, 'zyh', '赵耀辉', 'z1997yh@163.com', '19903852453', '0', NULL, '86d2cbc0db3edd935fa1b24993ad47a7', '3f9af59a-64bb-492c-a1a1-e278196938fb', '0', '0', '豆豆', '2020-12-22 21:36:13', '豆豆', '2020-12-22 21:36:31', NULL);

-- ----------------------------
-- Table structure for tbl_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role`  (
  `user_id` int NOT NULL COMMENT '用户ID',
  `role_id` int NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES (1, 1);
INSERT INTO `tbl_user_role` VALUES (2, 2);
INSERT INTO `tbl_user_role` VALUES (3, 2);
INSERT INTO `tbl_user_role` VALUES (3, 3);
INSERT INTO `tbl_user_role` VALUES (4, 2);
INSERT INTO `tbl_user_role` VALUES (5, 3);
INSERT INTO `tbl_user_role` VALUES (7, 1);
INSERT INTO `tbl_user_role` VALUES (8, 1);
INSERT INTO `tbl_user_role` VALUES (8, 3);

-- ----------------------------
-- Table structure for tbl_visit
-- ----------------------------
DROP TABLE IF EXISTS `tbl_visit`;
CREATE TABLE `tbl_visit`  (
  `visit_id` int NOT NULL AUTO_INCREMENT,
  `visit_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '回访内容',
  `custom_id` int NOT NULL COMMENT '关联客户表',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`visit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_visit
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
