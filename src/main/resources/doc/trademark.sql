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

 Date: 11/01/2021 14:37:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_attendance
-- ----------------------------
DROP TABLE IF EXISTS `tbl_attendance`;
CREATE TABLE `tbl_attendance`  (
  `attendance_id` int NOT NULL AUTO_INCREMENT COMMENT '签到编号',
  `user_id` int NOT NULL COMMENT '员工编号',
  `attendance_time` datetime NULL DEFAULT NULL COMMENT '打卡时间',
  PRIMARY KEY (`attendance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1135 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_attendance
-- ----------------------------
INSERT INTO `tbl_attendance` VALUES (1, 2, '2020-11-24 16:24:54');
INSERT INTO `tbl_attendance` VALUES (2, 3, '2020-11-24 16:25:10');
INSERT INTO `tbl_attendance` VALUES (3, 1, '2020-11-24 16:25:18');
INSERT INTO `tbl_attendance` VALUES (4, 1, '2020-11-24 16:38:04');
INSERT INTO `tbl_attendance` VALUES (5, 1, '2020-11-24 16:38:33');
INSERT INTO `tbl_attendance` VALUES (6, 1, '2020-11-24 16:38:53');
INSERT INTO `tbl_attendance` VALUES (7, 1, '2020-11-24 16:38:57');
INSERT INTO `tbl_attendance` VALUES (8, 10, '2020-11-24 20:37:48');
INSERT INTO `tbl_attendance` VALUES (9, 26, '2020-11-24 20:37:54');
INSERT INTO `tbl_attendance` VALUES (10, 24, '2020-11-24 20:38:00');
INSERT INTO `tbl_attendance` VALUES (11, 25, '2020-11-24 20:38:22');
INSERT INTO `tbl_attendance` VALUES (12, 3, '2020-11-24 20:39:15');
INSERT INTO `tbl_attendance` VALUES (13, 2, '2020-11-24 20:39:26');
INSERT INTO `tbl_attendance` VALUES (14, 5, '2020-11-24 20:39:34');
INSERT INTO `tbl_attendance` VALUES (15, 5, '2020-11-24 20:39:35');
INSERT INTO `tbl_attendance` VALUES (16, 14, '2020-11-24 20:39:45');
INSERT INTO `tbl_attendance` VALUES (17, 6, '2020-11-24 20:40:05');
INSERT INTO `tbl_attendance` VALUES (18, 4, '2020-11-24 20:40:10');
INSERT INTO `tbl_attendance` VALUES (19, 7, '2020-11-24 20:40:18');
INSERT INTO `tbl_attendance` VALUES (20, 8, '2020-11-24 20:40:30');
INSERT INTO `tbl_attendance` VALUES (21, 8, '2020-11-24 20:40:34');
INSERT INTO `tbl_attendance` VALUES (22, 9, '2020-11-24 20:40:41');
INSERT INTO `tbl_attendance` VALUES (23, 13, '2020-11-24 20:40:47');
INSERT INTO `tbl_attendance` VALUES (24, 13, '2020-11-24 20:40:53');
INSERT INTO `tbl_attendance` VALUES (25, 27, '2020-11-24 20:41:08');
INSERT INTO `tbl_attendance` VALUES (26, 27, '2020-11-24 20:41:16');
INSERT INTO `tbl_attendance` VALUES (27, 16, '2020-11-24 20:41:29');
INSERT INTO `tbl_attendance` VALUES (28, 11, '2020-11-24 20:42:15');
INSERT INTO `tbl_attendance` VALUES (29, 15, '2020-11-24 20:43:46');
INSERT INTO `tbl_attendance` VALUES (30, 15, '2020-11-24 20:43:51');
INSERT INTO `tbl_attendance` VALUES (31, 22, '2020-11-24 20:44:36');
INSERT INTO `tbl_attendance` VALUES (32, 23, '2020-11-24 20:44:42');
INSERT INTO `tbl_attendance` VALUES (33, 23, '2020-11-24 20:44:45');
INSERT INTO `tbl_attendance` VALUES (34, 21, '2020-11-24 20:44:53');
INSERT INTO `tbl_attendance` VALUES (35, 19, '2020-11-24 20:47:24');
INSERT INTO `tbl_attendance` VALUES (36, 20, '2020-11-24 20:47:39');
INSERT INTO `tbl_attendance` VALUES (37, 18, '2020-11-24 20:48:48');
INSERT INTO `tbl_attendance` VALUES (38, 17, '2020-11-24 20:48:53');
INSERT INTO `tbl_attendance` VALUES (39, 11, '2020-11-24 20:49:12');
INSERT INTO `tbl_attendance` VALUES (40, 12, '2020-11-24 20:49:38');
INSERT INTO `tbl_attendance` VALUES (41, 19, '2020-11-24 20:55:01');
INSERT INTO `tbl_attendance` VALUES (42, 4, '2020-11-25 08:27:22');
INSERT INTO `tbl_attendance` VALUES (43, 5, '2020-11-25 08:27:38');
INSERT INTO `tbl_attendance` VALUES (44, 8, '2020-11-25 08:32:07');
INSERT INTO `tbl_attendance` VALUES (45, 7, '2020-11-25 08:39:09');
INSERT INTO `tbl_attendance` VALUES (46, 6, '2020-11-25 08:39:14');
INSERT INTO `tbl_attendance` VALUES (47, 12, '2020-11-25 08:39:33');
INSERT INTO `tbl_attendance` VALUES (48, 23, '2020-11-25 08:40:48');
INSERT INTO `tbl_attendance` VALUES (49, 21, '2020-11-25 08:45:13');
INSERT INTO `tbl_attendance` VALUES (50, 9, '2020-11-25 08:49:53');
INSERT INTO `tbl_attendance` VALUES (51, 11, '2020-11-25 08:49:57');
INSERT INTO `tbl_attendance` VALUES (52, 10, '2020-11-25 08:51:03');
INSERT INTO `tbl_attendance` VALUES (53, 26, '2020-11-25 08:51:33');
INSERT INTO `tbl_attendance` VALUES (54, 24, '2020-11-25 08:51:37');
INSERT INTO `tbl_attendance` VALUES (55, 22, '2020-11-25 08:51:42');
INSERT INTO `tbl_attendance` VALUES (56, 22, '2020-11-25 08:51:43');
INSERT INTO `tbl_attendance` VALUES (57, 25, '2020-11-25 08:51:47');
INSERT INTO `tbl_attendance` VALUES (58, 15, '2020-11-25 08:51:51');
INSERT INTO `tbl_attendance` VALUES (59, 17, '2020-11-25 08:51:55');
INSERT INTO `tbl_attendance` VALUES (60, 16, '2020-11-25 08:51:59');
INSERT INTO `tbl_attendance` VALUES (61, 18, '2020-11-25 08:52:03');
INSERT INTO `tbl_attendance` VALUES (62, 13, '2020-11-25 08:52:15');
INSERT INTO `tbl_attendance` VALUES (63, 14, '2020-11-25 08:52:20');
INSERT INTO `tbl_attendance` VALUES (64, 27, '2020-11-25 08:54:02');
INSERT INTO `tbl_attendance` VALUES (65, 20, '2020-11-25 08:55:42');
INSERT INTO `tbl_attendance` VALUES (66, 19, '2020-11-25 08:55:45');
INSERT INTO `tbl_attendance` VALUES (67, 3, '2020-11-25 08:56:06');
INSERT INTO `tbl_attendance` VALUES (68, 2, '2020-11-25 08:56:13');
INSERT INTO `tbl_attendance` VALUES (69, 22, '2020-11-25 14:26:21');
INSERT INTO `tbl_attendance` VALUES (70, 9, '2020-11-25 20:33:20');
INSERT INTO `tbl_attendance` VALUES (71, 8, '2020-11-25 20:33:24');
INSERT INTO `tbl_attendance` VALUES (72, 4, '2020-11-25 20:33:30');
INSERT INTO `tbl_attendance` VALUES (73, 10, '2020-11-25 20:33:34');
INSERT INTO `tbl_attendance` VALUES (74, 24, '2020-11-25 20:34:51');
INSERT INTO `tbl_attendance` VALUES (75, 25, '2020-11-25 20:34:57');
INSERT INTO `tbl_attendance` VALUES (76, 5, '2020-11-25 20:35:03');
INSERT INTO `tbl_attendance` VALUES (77, 27, '2020-11-25 20:35:08');
INSERT INTO `tbl_attendance` VALUES (78, 13, '2020-11-25 20:35:13');
INSERT INTO `tbl_attendance` VALUES (79, 13, '2020-11-25 20:35:14');
INSERT INTO `tbl_attendance` VALUES (80, 14, '2020-11-25 20:35:18');
INSERT INTO `tbl_attendance` VALUES (81, 6, '2020-11-25 20:35:21');
INSERT INTO `tbl_attendance` VALUES (82, 11, '2020-11-25 20:35:28');
INSERT INTO `tbl_attendance` VALUES (83, 12, '2020-11-25 20:35:42');
INSERT INTO `tbl_attendance` VALUES (84, 12, '2020-11-25 20:35:50');
INSERT INTO `tbl_attendance` VALUES (85, 11, '2020-11-25 20:35:54');
INSERT INTO `tbl_attendance` VALUES (86, 26, '2020-11-25 20:36:09');
INSERT INTO `tbl_attendance` VALUES (87, 7, '2020-11-25 20:36:26');
INSERT INTO `tbl_attendance` VALUES (88, 22, '2020-11-25 20:36:42');
INSERT INTO `tbl_attendance` VALUES (89, 23, '2020-11-25 20:36:46');
INSERT INTO `tbl_attendance` VALUES (90, 18, '2020-11-25 20:37:41');
INSERT INTO `tbl_attendance` VALUES (91, 16, '2020-11-25 20:38:23');
INSERT INTO `tbl_attendance` VALUES (92, 17, '2020-11-25 20:38:32');
INSERT INTO `tbl_attendance` VALUES (93, 20, '2020-11-25 20:39:16');
INSERT INTO `tbl_attendance` VALUES (94, 15, '2020-11-25 20:40:41');
INSERT INTO `tbl_attendance` VALUES (95, 3, '2020-11-25 20:40:51');
INSERT INTO `tbl_attendance` VALUES (96, 19, '2020-11-25 20:41:08');
INSERT INTO `tbl_attendance` VALUES (97, 21, '2020-11-25 20:41:23');
INSERT INTO `tbl_attendance` VALUES (98, 2, '2020-11-25 20:45:38');
INSERT INTO `tbl_attendance` VALUES (99, 26, '2020-11-26 08:25:51');
INSERT INTO `tbl_attendance` VALUES (100, 5, '2020-11-26 08:38:57');
INSERT INTO `tbl_attendance` VALUES (101, 23, '2020-11-26 08:39:08');
INSERT INTO `tbl_attendance` VALUES (102, 6, '2020-11-26 08:44:19');
INSERT INTO `tbl_attendance` VALUES (103, 7, '2020-11-26 08:44:25');
INSERT INTO `tbl_attendance` VALUES (104, 8, '2020-11-26 08:44:31');
INSERT INTO `tbl_attendance` VALUES (105, 12, '2020-11-26 08:47:47');
INSERT INTO `tbl_attendance` VALUES (106, 9, '2020-11-26 08:47:53');
INSERT INTO `tbl_attendance` VALUES (107, 17, '2020-11-26 08:48:24');
INSERT INTO `tbl_attendance` VALUES (108, 10, '2020-11-26 08:48:28');
INSERT INTO `tbl_attendance` VALUES (109, 16, '2020-11-26 08:48:34');
INSERT INTO `tbl_attendance` VALUES (110, 15, '2020-11-26 08:49:42');
INSERT INTO `tbl_attendance` VALUES (111, 24, '2020-11-26 08:50:02');
INSERT INTO `tbl_attendance` VALUES (112, 18, '2020-11-26 08:50:07');
INSERT INTO `tbl_attendance` VALUES (113, 14, '2020-11-26 08:50:11');
INSERT INTO `tbl_attendance` VALUES (114, 22, '2020-11-26 08:50:19');
INSERT INTO `tbl_attendance` VALUES (115, 25, '2020-11-26 08:50:23');
INSERT INTO `tbl_attendance` VALUES (116, 13, '2020-11-26 08:50:28');
INSERT INTO `tbl_attendance` VALUES (117, 27, '2020-11-26 08:51:13');
INSERT INTO `tbl_attendance` VALUES (118, 19, '2020-11-26 08:52:39');
INSERT INTO `tbl_attendance` VALUES (119, 20, '2020-11-26 08:52:50');
INSERT INTO `tbl_attendance` VALUES (120, 21, '2020-11-26 08:53:05');
INSERT INTO `tbl_attendance` VALUES (121, 11, '2020-11-26 08:53:33');
INSERT INTO `tbl_attendance` VALUES (122, 2, '2020-11-26 08:54:46');
INSERT INTO `tbl_attendance` VALUES (123, 3, '2020-11-26 08:54:49');
INSERT INTO `tbl_attendance` VALUES (124, 4, '2020-11-26 08:54:55');
INSERT INTO `tbl_attendance` VALUES (125, 17, '2020-11-26 20:33:49');
INSERT INTO `tbl_attendance` VALUES (126, 16, '2020-11-26 20:33:54');
INSERT INTO `tbl_attendance` VALUES (127, 25, '2020-11-26 20:35:01');
INSERT INTO `tbl_attendance` VALUES (128, 3, '2020-11-26 20:35:24');
INSERT INTO `tbl_attendance` VALUES (129, 2, '2020-11-26 20:35:28');
INSERT INTO `tbl_attendance` VALUES (130, 4, '2020-11-26 20:35:31');
INSERT INTO `tbl_attendance` VALUES (131, 14, '2020-11-26 20:35:36');
INSERT INTO `tbl_attendance` VALUES (132, 9, '2020-11-26 20:35:39');
INSERT INTO `tbl_attendance` VALUES (133, 24, '2020-11-26 20:35:48');
INSERT INTO `tbl_attendance` VALUES (134, 13, '2020-11-26 20:35:58');
INSERT INTO `tbl_attendance` VALUES (135, 15, '2020-11-26 20:36:01');
INSERT INTO `tbl_attendance` VALUES (136, 27, '2020-11-26 20:36:06');
INSERT INTO `tbl_attendance` VALUES (137, 5, '2020-11-26 20:36:17');
INSERT INTO `tbl_attendance` VALUES (138, 8, '2020-11-26 20:36:30');
INSERT INTO `tbl_attendance` VALUES (139, 10, '2020-11-26 20:36:46');
INSERT INTO `tbl_attendance` VALUES (140, 7, '2020-11-26 20:36:53');
INSERT INTO `tbl_attendance` VALUES (141, 6, '2020-11-26 20:37:12');
INSERT INTO `tbl_attendance` VALUES (142, 23, '2020-11-26 20:37:19');
INSERT INTO `tbl_attendance` VALUES (143, 20, '2020-11-26 20:37:59');
INSERT INTO `tbl_attendance` VALUES (144, 22, '2020-11-26 20:39:13');
INSERT INTO `tbl_attendance` VALUES (145, 11, '2020-11-26 20:40:00');
INSERT INTO `tbl_attendance` VALUES (146, 12, '2020-11-26 20:40:05');
INSERT INTO `tbl_attendance` VALUES (147, 19, '2020-11-26 20:41:08');
INSERT INTO `tbl_attendance` VALUES (148, 21, '2020-11-26 20:49:06');
INSERT INTO `tbl_attendance` VALUES (149, 18, '2020-11-26 20:49:20');
INSERT INTO `tbl_attendance` VALUES (150, 26, '2020-11-27 08:14:15');
INSERT INTO `tbl_attendance` VALUES (151, 8, '2020-11-27 08:30:04');
INSERT INTO `tbl_attendance` VALUES (152, 9, '2020-11-27 08:30:12');
INSERT INTO `tbl_attendance` VALUES (153, 5, '2020-11-27 08:36:54');
INSERT INTO `tbl_attendance` VALUES (154, 12, '2020-11-27 08:39:09');
INSERT INTO `tbl_attendance` VALUES (155, 17, '2020-11-27 08:43:56');
INSERT INTO `tbl_attendance` VALUES (156, 13, '2020-11-27 08:48:12');
INSERT INTO `tbl_attendance` VALUES (157, 14, '2020-11-27 08:48:16');
INSERT INTO `tbl_attendance` VALUES (158, 18, '2020-11-27 08:48:39');
INSERT INTO `tbl_attendance` VALUES (159, 16, '2020-11-27 08:48:43');
INSERT INTO `tbl_attendance` VALUES (160, 10, '2020-11-27 08:49:03');
INSERT INTO `tbl_attendance` VALUES (161, 23, '2020-11-27 08:49:10');
INSERT INTO `tbl_attendance` VALUES (162, 27, '2020-11-27 08:49:18');
INSERT INTO `tbl_attendance` VALUES (163, 20, '2020-11-27 08:49:43');
INSERT INTO `tbl_attendance` VALUES (164, 19, '2020-11-27 08:49:50');
INSERT INTO `tbl_attendance` VALUES (165, 24, '2020-11-27 08:51:28');
INSERT INTO `tbl_attendance` VALUES (166, 6, '2020-11-27 08:51:33');
INSERT INTO `tbl_attendance` VALUES (167, 7, '2020-11-27 08:51:37');
INSERT INTO `tbl_attendance` VALUES (168, 15, '2020-11-27 08:52:19');
INSERT INTO `tbl_attendance` VALUES (169, 22, '2020-11-27 08:52:24');
INSERT INTO `tbl_attendance` VALUES (170, 25, '2020-11-27 08:52:33');
INSERT INTO `tbl_attendance` VALUES (171, 11, '2020-11-27 08:53:32');
INSERT INTO `tbl_attendance` VALUES (172, 21, '2020-11-27 08:55:02');
INSERT INTO `tbl_attendance` VALUES (173, 4, '2020-11-27 08:55:06');
INSERT INTO `tbl_attendance` VALUES (174, 2, '2020-11-27 08:55:10');
INSERT INTO `tbl_attendance` VALUES (175, 3, '2020-11-27 08:55:20');
INSERT INTO `tbl_attendance` VALUES (176, 4, '2020-11-27 17:35:47');
INSERT INTO `tbl_attendance` VALUES (177, 3, '2020-11-27 17:36:11');
INSERT INTO `tbl_attendance` VALUES (178, 5, '2020-11-27 17:36:35');
INSERT INTO `tbl_attendance` VALUES (179, 8, '2020-11-27 17:36:40');
INSERT INTO `tbl_attendance` VALUES (180, 9, '2020-11-27 17:36:53');
INSERT INTO `tbl_attendance` VALUES (181, 20, '2020-11-27 17:37:02');
INSERT INTO `tbl_attendance` VALUES (182, 26, '2020-11-27 17:37:05');
INSERT INTO `tbl_attendance` VALUES (183, 27, '2020-11-27 17:37:09');
INSERT INTO `tbl_attendance` VALUES (184, 24, '2020-11-27 17:37:16');
INSERT INTO `tbl_attendance` VALUES (185, 25, '2020-11-27 17:37:21');
INSERT INTO `tbl_attendance` VALUES (186, 12, '2020-11-27 17:37:35');
INSERT INTO `tbl_attendance` VALUES (187, 2, '2020-11-27 17:37:43');
INSERT INTO `tbl_attendance` VALUES (188, 11, '2020-11-27 17:37:54');
INSERT INTO `tbl_attendance` VALUES (189, 11, '2020-11-27 17:37:55');
INSERT INTO `tbl_attendance` VALUES (190, 16, '2020-11-27 17:38:27');
INSERT INTO `tbl_attendance` VALUES (191, 22, '2020-11-27 17:38:39');
INSERT INTO `tbl_attendance` VALUES (192, 23, '2020-11-27 17:38:56');
INSERT INTO `tbl_attendance` VALUES (193, 18, '2020-11-27 17:39:09');
INSERT INTO `tbl_attendance` VALUES (194, 18, '2020-11-27 17:39:20');
INSERT INTO `tbl_attendance` VALUES (195, 17, '2020-11-27 17:39:24');
INSERT INTO `tbl_attendance` VALUES (196, 19, '2020-11-27 17:39:39');
INSERT INTO `tbl_attendance` VALUES (197, 6, '2020-11-27 17:40:10');
INSERT INTO `tbl_attendance` VALUES (198, 7, '2020-11-27 17:40:13');
INSERT INTO `tbl_attendance` VALUES (199, 21, '2020-11-27 17:40:19');
INSERT INTO `tbl_attendance` VALUES (200, 15, '2020-11-27 17:44:04');
INSERT INTO `tbl_attendance` VALUES (201, 15, '2020-11-27 17:44:05');
INSERT INTO `tbl_attendance` VALUES (202, 10, '2020-11-27 18:04:39');
INSERT INTO `tbl_attendance` VALUES (203, 6, '2020-11-30 08:35:59');
INSERT INTO `tbl_attendance` VALUES (204, 7, '2020-11-30 08:36:03');
INSERT INTO `tbl_attendance` VALUES (205, 8, '2020-11-30 08:37:40');
INSERT INTO `tbl_attendance` VALUES (206, 18, '2020-11-30 08:38:25');
INSERT INTO `tbl_attendance` VALUES (207, 26, '2020-11-30 08:39:56');
INSERT INTO `tbl_attendance` VALUES (208, 5, '2020-11-30 08:41:46');
INSERT INTO `tbl_attendance` VALUES (209, 9, '2020-11-30 08:45:01');
INSERT INTO `tbl_attendance` VALUES (210, 23, '2020-11-30 08:45:37');
INSERT INTO `tbl_attendance` VALUES (211, 16, '2020-11-30 08:46:24');
INSERT INTO `tbl_attendance` VALUES (212, 17, '2020-11-30 08:46:31');
INSERT INTO `tbl_attendance` VALUES (213, 20, '2020-11-30 08:46:35');
INSERT INTO `tbl_attendance` VALUES (214, 19, '2020-11-30 08:46:39');
INSERT INTO `tbl_attendance` VALUES (215, 24, '2020-11-30 08:47:17');
INSERT INTO `tbl_attendance` VALUES (216, 25, '2020-11-30 08:47:21');
INSERT INTO `tbl_attendance` VALUES (217, 22, '2020-11-30 08:47:27');
INSERT INTO `tbl_attendance` VALUES (218, 10, '2020-11-30 08:47:55');
INSERT INTO `tbl_attendance` VALUES (219, 12, '2020-11-30 08:49:52');
INSERT INTO `tbl_attendance` VALUES (220, 14, '2020-11-30 08:49:59');
INSERT INTO `tbl_attendance` VALUES (221, 13, '2020-11-30 08:50:03');
INSERT INTO `tbl_attendance` VALUES (222, 15, '2020-11-30 08:50:26');
INSERT INTO `tbl_attendance` VALUES (223, 2, '2020-11-30 08:52:50');
INSERT INTO `tbl_attendance` VALUES (224, 21, '2020-11-30 08:52:57');
INSERT INTO `tbl_attendance` VALUES (225, 21, '2020-11-30 08:52:58');
INSERT INTO `tbl_attendance` VALUES (226, 3, '2020-11-30 08:53:04');
INSERT INTO `tbl_attendance` VALUES (227, 27, '2020-11-30 08:53:08');
INSERT INTO `tbl_attendance` VALUES (228, 11, '2020-11-30 08:55:35');
INSERT INTO `tbl_attendance` VALUES (229, 4, '2020-11-30 08:57:03');
INSERT INTO `tbl_attendance` VALUES (230, 15, '2020-11-30 20:37:30');
INSERT INTO `tbl_attendance` VALUES (231, 26, '2020-11-30 20:39:15');
INSERT INTO `tbl_attendance` VALUES (232, 25, '2020-11-30 20:39:34');
INSERT INTO `tbl_attendance` VALUES (233, 10, '2020-11-30 20:39:40');
INSERT INTO `tbl_attendance` VALUES (234, 9, '2020-11-30 20:39:50');
INSERT INTO `tbl_attendance` VALUES (235, 24, '2020-11-30 20:39:55');
INSERT INTO `tbl_attendance` VALUES (236, 8, '2020-11-30 20:39:59');
INSERT INTO `tbl_attendance` VALUES (237, 7, '2020-11-30 20:41:11');
INSERT INTO `tbl_attendance` VALUES (238, 4, '2020-11-30 20:41:16');
INSERT INTO `tbl_attendance` VALUES (239, 5, '2020-11-30 20:41:30');
INSERT INTO `tbl_attendance` VALUES (240, 2, '2020-11-30 20:41:36');
INSERT INTO `tbl_attendance` VALUES (241, 17, '2020-11-30 20:41:46');
INSERT INTO `tbl_attendance` VALUES (242, 16, '2020-11-30 20:41:50');
INSERT INTO `tbl_attendance` VALUES (243, 3, '2020-11-30 20:42:02');
INSERT INTO `tbl_attendance` VALUES (244, 23, '2020-11-30 20:42:33');
INSERT INTO `tbl_attendance` VALUES (245, 22, '2020-11-30 20:43:09');
INSERT INTO `tbl_attendance` VALUES (246, 19, '2020-11-30 20:43:35');
INSERT INTO `tbl_attendance` VALUES (247, 27, '2020-11-30 20:43:57');
INSERT INTO `tbl_attendance` VALUES (248, 11, '2020-11-30 20:44:10');
INSERT INTO `tbl_attendance` VALUES (249, 20, '2020-11-30 20:44:24');
INSERT INTO `tbl_attendance` VALUES (250, 14, '2020-11-30 20:46:29');
INSERT INTO `tbl_attendance` VALUES (251, 13, '2020-11-30 20:47:20');
INSERT INTO `tbl_attendance` VALUES (252, 12, '2020-11-30 20:47:31');
INSERT INTO `tbl_attendance` VALUES (253, 21, '2020-11-30 20:58:45');
INSERT INTO `tbl_attendance` VALUES (254, 6, '2020-11-30 21:11:10');
INSERT INTO `tbl_attendance` VALUES (255, 18, '2020-11-30 21:22:02');
INSERT INTO `tbl_attendance` VALUES (256, 18, '2020-11-30 21:22:10');
INSERT INTO `tbl_attendance` VALUES (257, 5, '2020-12-01 08:37:46');
INSERT INTO `tbl_attendance` VALUES (258, 8, '2020-12-01 08:40:23');
INSERT INTO `tbl_attendance` VALUES (259, 9, '2020-12-01 08:40:30');
INSERT INTO `tbl_attendance` VALUES (260, 17, '2020-12-01 08:46:38');
INSERT INTO `tbl_attendance` VALUES (261, 23, '2020-12-01 08:46:47');
INSERT INTO `tbl_attendance` VALUES (262, 24, '2020-12-01 08:48:20');
INSERT INTO `tbl_attendance` VALUES (263, 26, '2020-12-01 08:48:23');
INSERT INTO `tbl_attendance` VALUES (264, 18, '2020-12-01 08:48:54');
INSERT INTO `tbl_attendance` VALUES (265, 16, '2020-12-01 08:49:01');
INSERT INTO `tbl_attendance` VALUES (266, 10, '2020-12-01 08:49:23');
INSERT INTO `tbl_attendance` VALUES (267, 25, '2020-12-01 08:49:27');
INSERT INTO `tbl_attendance` VALUES (268, 12, '2020-12-01 08:49:53');
INSERT INTO `tbl_attendance` VALUES (269, 27, '2020-12-01 08:50:08');
INSERT INTO `tbl_attendance` VALUES (270, 13, '2020-12-01 08:51:04');
INSERT INTO `tbl_attendance` VALUES (271, 14, '2020-12-01 08:51:09');
INSERT INTO `tbl_attendance` VALUES (272, 7, '2020-12-01 08:51:13');
INSERT INTO `tbl_attendance` VALUES (273, 6, '2020-12-01 08:51:19');
INSERT INTO `tbl_attendance` VALUES (274, 20, '2020-12-01 08:51:55');
INSERT INTO `tbl_attendance` VALUES (275, 19, '2020-12-01 08:52:06');
INSERT INTO `tbl_attendance` VALUES (276, 11, '2020-12-01 08:52:27');
INSERT INTO `tbl_attendance` VALUES (277, 21, '2020-12-01 08:53:09');
INSERT INTO `tbl_attendance` VALUES (278, 15, '2020-12-01 08:53:26');
INSERT INTO `tbl_attendance` VALUES (279, 4, '2020-12-01 08:54:13');
INSERT INTO `tbl_attendance` VALUES (280, 2, '2020-12-01 08:54:17');
INSERT INTO `tbl_attendance` VALUES (281, 3, '2020-12-01 08:54:21');
INSERT INTO `tbl_attendance` VALUES (282, 18, '2020-12-01 18:59:14');
INSERT INTO `tbl_attendance` VALUES (283, 6, '2020-12-01 20:34:05');
INSERT INTO `tbl_attendance` VALUES (284, 26, '2020-12-01 20:34:30');
INSERT INTO `tbl_attendance` VALUES (285, 24, '2020-12-01 20:34:34');
INSERT INTO `tbl_attendance` VALUES (286, 23, '2020-12-01 20:35:08');
INSERT INTO `tbl_attendance` VALUES (287, 27, '2020-12-01 20:35:15');
INSERT INTO `tbl_attendance` VALUES (288, 25, '2020-12-01 20:36:08');
INSERT INTO `tbl_attendance` VALUES (289, 16, '2020-12-01 20:36:16');
INSERT INTO `tbl_attendance` VALUES (290, 5, '2020-12-01 20:36:20');
INSERT INTO `tbl_attendance` VALUES (291, 14, '2020-12-01 20:36:24');
INSERT INTO `tbl_attendance` VALUES (292, 13, '2020-12-01 20:36:30');
INSERT INTO `tbl_attendance` VALUES (293, 15, '2020-12-01 20:36:50');
INSERT INTO `tbl_attendance` VALUES (294, 10, '2020-12-01 20:36:57');
INSERT INTO `tbl_attendance` VALUES (295, 4, '2020-12-01 20:37:17');
INSERT INTO `tbl_attendance` VALUES (296, 8, '2020-12-01 20:37:46');
INSERT INTO `tbl_attendance` VALUES (297, 17, '2020-12-01 20:37:53');
INSERT INTO `tbl_attendance` VALUES (298, 20, '2020-12-01 20:37:57');
INSERT INTO `tbl_attendance` VALUES (299, 3, '2020-12-01 20:39:22');
INSERT INTO `tbl_attendance` VALUES (300, 2, '2020-12-01 20:39:26');
INSERT INTO `tbl_attendance` VALUES (301, 18, '2020-12-01 20:39:29');
INSERT INTO `tbl_attendance` VALUES (302, 12, '2020-12-01 20:41:04');
INSERT INTO `tbl_attendance` VALUES (303, 11, '2020-12-01 20:41:18');
INSERT INTO `tbl_attendance` VALUES (304, 21, '2020-12-01 20:41:23');
INSERT INTO `tbl_attendance` VALUES (305, 21, '2020-12-01 20:41:24');
INSERT INTO `tbl_attendance` VALUES (306, 19, '2020-12-01 20:42:31');
INSERT INTO `tbl_attendance` VALUES (307, 22, '2020-12-01 20:43:40');
INSERT INTO `tbl_attendance` VALUES (308, 7, '2020-12-01 21:06:28');
INSERT INTO `tbl_attendance` VALUES (309, 9, '2020-12-01 21:06:33');
INSERT INTO `tbl_attendance` VALUES (310, 26, '2020-12-02 08:23:09');
INSERT INTO `tbl_attendance` VALUES (311, 26, '2020-12-02 08:34:07');
INSERT INTO `tbl_attendance` VALUES (312, 5, '2020-12-02 08:34:26');
INSERT INTO `tbl_attendance` VALUES (313, 24, '2020-12-02 08:38:14');
INSERT INTO `tbl_attendance` VALUES (314, 23, '2020-12-02 08:40:19');
INSERT INTO `tbl_attendance` VALUES (315, 7, '2020-12-02 08:40:41');
INSERT INTO `tbl_attendance` VALUES (316, 6, '2020-12-02 08:40:49');
INSERT INTO `tbl_attendance` VALUES (317, 8, '2020-12-02 08:43:52');
INSERT INTO `tbl_attendance` VALUES (318, 12, '2020-12-02 08:44:17');
INSERT INTO `tbl_attendance` VALUES (319, 27, '2020-12-02 08:44:28');
INSERT INTO `tbl_attendance` VALUES (320, 21, '2020-12-02 08:46:00');
INSERT INTO `tbl_attendance` VALUES (321, 21, '2020-12-02 08:49:02');
INSERT INTO `tbl_attendance` VALUES (322, 13, '2020-12-02 08:49:08');
INSERT INTO `tbl_attendance` VALUES (323, 14, '2020-12-02 08:49:11');
INSERT INTO `tbl_attendance` VALUES (324, 17, '2020-12-02 08:49:33');
INSERT INTO `tbl_attendance` VALUES (325, 10, '2020-12-02 08:49:39');
INSERT INTO `tbl_attendance` VALUES (326, 9, '2020-12-02 08:51:50');
INSERT INTO `tbl_attendance` VALUES (327, 16, '2020-12-02 08:51:55');
INSERT INTO `tbl_attendance` VALUES (328, 15, '2020-12-02 08:52:26');
INSERT INTO `tbl_attendance` VALUES (329, 15, '2020-12-02 08:52:27');
INSERT INTO `tbl_attendance` VALUES (330, 3, '2020-12-02 08:52:32');
INSERT INTO `tbl_attendance` VALUES (331, 2, '2020-12-02 08:52:38');
INSERT INTO `tbl_attendance` VALUES (332, 22, '2020-12-02 08:52:42');
INSERT INTO `tbl_attendance` VALUES (333, 4, '2020-12-02 08:52:45');
INSERT INTO `tbl_attendance` VALUES (334, 11, '2020-12-02 08:52:50');
INSERT INTO `tbl_attendance` VALUES (335, 20, '2020-12-02 08:53:06');
INSERT INTO `tbl_attendance` VALUES (336, 19, '2020-12-02 08:53:13');
INSERT INTO `tbl_attendance` VALUES (337, 9, '2020-12-02 20:43:48');
INSERT INTO `tbl_attendance` VALUES (338, 8, '2020-12-02 20:46:53');
INSERT INTO `tbl_attendance` VALUES (339, 20, '2020-12-02 20:52:16');
INSERT INTO `tbl_attendance` VALUES (340, 10, '2020-12-02 20:55:29');
INSERT INTO `tbl_attendance` VALUES (341, 26, '2020-12-02 20:55:41');
INSERT INTO `tbl_attendance` VALUES (342, 27, '2020-12-02 21:00:16');
INSERT INTO `tbl_attendance` VALUES (343, 19, '2020-12-02 21:06:19');
INSERT INTO `tbl_attendance` VALUES (344, 6, '2020-12-02 21:08:38');
INSERT INTO `tbl_attendance` VALUES (345, 9, '2020-12-02 21:08:55');
INSERT INTO `tbl_attendance` VALUES (346, 5, '2020-12-02 21:08:58');
INSERT INTO `tbl_attendance` VALUES (347, 8, '2020-12-02 21:09:04');
INSERT INTO `tbl_attendance` VALUES (348, 11, '2020-12-02 21:10:39');
INSERT INTO `tbl_attendance` VALUES (349, 7, '2020-12-02 21:18:18');
INSERT INTO `tbl_attendance` VALUES (350, 24, '2020-12-02 21:21:11');
INSERT INTO `tbl_attendance` VALUES (351, 21, '2020-12-02 21:21:45');
INSERT INTO `tbl_attendance` VALUES (352, 4, '2020-12-02 21:21:56');
INSERT INTO `tbl_attendance` VALUES (353, 2, '2020-12-02 21:22:02');
INSERT INTO `tbl_attendance` VALUES (354, 3, '2020-12-02 21:22:05');
INSERT INTO `tbl_attendance` VALUES (355, 23, '2020-12-02 21:22:08');
INSERT INTO `tbl_attendance` VALUES (356, 12, '2020-12-02 21:28:17');
INSERT INTO `tbl_attendance` VALUES (357, 25, '2020-12-02 21:28:32');
INSERT INTO `tbl_attendance` VALUES (358, 18, '2020-12-02 21:53:30');
INSERT INTO `tbl_attendance` VALUES (359, 16, '2020-12-02 21:53:34');
INSERT INTO `tbl_attendance` VALUES (360, 22, '2020-12-02 22:06:39');
INSERT INTO `tbl_attendance` VALUES (361, 5, '2020-12-03 08:36:08');
INSERT INTO `tbl_attendance` VALUES (362, 9, '2020-12-03 08:36:50');
INSERT INTO `tbl_attendance` VALUES (363, 17, '2020-12-03 08:37:01');
INSERT INTO `tbl_attendance` VALUES (364, 8, '2020-12-03 08:43:16');
INSERT INTO `tbl_attendance` VALUES (365, 27, '2020-12-03 08:47:03');
INSERT INTO `tbl_attendance` VALUES (366, 26, '2020-12-03 08:47:11');
INSERT INTO `tbl_attendance` VALUES (367, 2, '2020-12-03 08:47:15');
INSERT INTO `tbl_attendance` VALUES (368, 3, '2020-12-03 08:47:50');
INSERT INTO `tbl_attendance` VALUES (369, 22, '2020-12-03 08:48:26');
INSERT INTO `tbl_attendance` VALUES (370, 16, '2020-12-03 08:48:30');
INSERT INTO `tbl_attendance` VALUES (371, 24, '2020-12-03 08:48:34');
INSERT INTO `tbl_attendance` VALUES (372, 25, '2020-12-03 08:48:42');
INSERT INTO `tbl_attendance` VALUES (373, 18, '2020-12-03 08:48:46');
INSERT INTO `tbl_attendance` VALUES (374, 23, '2020-12-03 08:49:00');
INSERT INTO `tbl_attendance` VALUES (375, 19, '2020-12-03 08:49:51');
INSERT INTO `tbl_attendance` VALUES (376, 20, '2020-12-03 08:50:03');
INSERT INTO `tbl_attendance` VALUES (377, 7, '2020-12-03 08:50:23');
INSERT INTO `tbl_attendance` VALUES (378, 10, '2020-12-03 08:50:45');
INSERT INTO `tbl_attendance` VALUES (379, 12, '2020-12-03 08:50:59');
INSERT INTO `tbl_attendance` VALUES (380, 11, '2020-12-03 08:52:56');
INSERT INTO `tbl_attendance` VALUES (381, 21, '2020-12-03 08:53:15');
INSERT INTO `tbl_attendance` VALUES (382, 6, '2020-12-03 08:53:31');
INSERT INTO `tbl_attendance` VALUES (383, 4, '2020-12-03 08:56:38');
INSERT INTO `tbl_attendance` VALUES (384, 26, '2020-12-03 20:31:06');
INSERT INTO `tbl_attendance` VALUES (385, 25, '2020-12-03 20:31:18');
INSERT INTO `tbl_attendance` VALUES (386, 24, '2020-12-03 20:31:22');
INSERT INTO `tbl_attendance` VALUES (387, 10, '2020-12-03 20:32:41');
INSERT INTO `tbl_attendance` VALUES (388, 27, '2020-12-03 20:34:11');
INSERT INTO `tbl_attendance` VALUES (389, 7, '2020-12-03 20:34:21');
INSERT INTO `tbl_attendance` VALUES (390, 23, '2020-12-03 20:34:27');
INSERT INTO `tbl_attendance` VALUES (391, 22, '2020-12-03 20:34:32');
INSERT INTO `tbl_attendance` VALUES (392, 9, '2020-12-03 20:34:42');
INSERT INTO `tbl_attendance` VALUES (393, 2, '2020-12-03 20:34:46');
INSERT INTO `tbl_attendance` VALUES (394, 3, '2020-12-03 20:34:53');
INSERT INTO `tbl_attendance` VALUES (395, 19, '2020-12-03 20:34:57');
INSERT INTO `tbl_attendance` VALUES (396, 6, '2020-12-03 20:35:01');
INSERT INTO `tbl_attendance` VALUES (397, 4, '2020-12-03 20:35:06');
INSERT INTO `tbl_attendance` VALUES (398, 8, '2020-12-03 20:35:13');
INSERT INTO `tbl_attendance` VALUES (399, 8, '2020-12-03 20:35:16');
INSERT INTO `tbl_attendance` VALUES (400, 5, '2020-12-03 20:35:36');
INSERT INTO `tbl_attendance` VALUES (401, 11, '2020-12-03 20:36:23');
INSERT INTO `tbl_attendance` VALUES (402, 12, '2020-12-03 20:36:26');
INSERT INTO `tbl_attendance` VALUES (403, 21, '2020-12-03 20:36:58');
INSERT INTO `tbl_attendance` VALUES (404, 19, '2020-12-04 08:45:12');
INSERT INTO `tbl_attendance` VALUES (405, 27, '2020-12-04 08:45:39');
INSERT INTO `tbl_attendance` VALUES (406, 27, '2020-12-04 08:45:41');
INSERT INTO `tbl_attendance` VALUES (407, 5, '2020-12-04 08:46:03');
INSERT INTO `tbl_attendance` VALUES (408, 8, '2020-12-04 08:46:46');
INSERT INTO `tbl_attendance` VALUES (409, 25, '2020-12-04 08:50:03');
INSERT INTO `tbl_attendance` VALUES (410, 10, '2020-12-04 08:50:09');
INSERT INTO `tbl_attendance` VALUES (411, 9, '2020-12-04 08:50:13');
INSERT INTO `tbl_attendance` VALUES (412, 24, '2020-12-04 08:50:22');
INSERT INTO `tbl_attendance` VALUES (413, 23, '2020-12-04 08:50:32');
INSERT INTO `tbl_attendance` VALUES (414, 23, '2020-12-04 08:50:33');
INSERT INTO `tbl_attendance` VALUES (415, 12, '2020-12-04 08:50:37');
INSERT INTO `tbl_attendance` VALUES (416, 6, '2020-12-04 08:51:32');
INSERT INTO `tbl_attendance` VALUES (417, 7, '2020-12-04 08:51:36');
INSERT INTO `tbl_attendance` VALUES (418, 7, '2020-12-04 08:51:37');
INSERT INTO `tbl_attendance` VALUES (419, 22, '2020-12-04 08:52:54');
INSERT INTO `tbl_attendance` VALUES (420, 26, '2020-12-04 08:52:58');
INSERT INTO `tbl_attendance` VALUES (421, 11, '2020-12-04 08:53:04');
INSERT INTO `tbl_attendance` VALUES (422, 2, '2020-12-04 08:54:44');
INSERT INTO `tbl_attendance` VALUES (423, 3, '2020-12-04 08:54:48');
INSERT INTO `tbl_attendance` VALUES (424, 21, '2020-12-04 08:55:20');
INSERT INTO `tbl_attendance` VALUES (425, 4, '2020-12-04 08:55:33');
INSERT INTO `tbl_attendance` VALUES (426, 7, '2020-12-04 17:32:32');
INSERT INTO `tbl_attendance` VALUES (427, 5, '2020-12-04 17:32:43');
INSERT INTO `tbl_attendance` VALUES (428, 6, '2020-12-04 17:32:48');
INSERT INTO `tbl_attendance` VALUES (429, 10, '2020-12-04 17:33:00');
INSERT INTO `tbl_attendance` VALUES (430, 8, '2020-12-04 17:33:05');
INSERT INTO `tbl_attendance` VALUES (431, 25, '2020-12-04 17:33:16');
INSERT INTO `tbl_attendance` VALUES (432, 26, '2020-12-04 17:33:20');
INSERT INTO `tbl_attendance` VALUES (433, 24, '2020-12-04 17:33:24');
INSERT INTO `tbl_attendance` VALUES (434, 12, '2020-12-04 17:33:28');
INSERT INTO `tbl_attendance` VALUES (435, 11, '2020-12-04 17:33:34');
INSERT INTO `tbl_attendance` VALUES (436, 9, '2020-12-04 17:34:29');
INSERT INTO `tbl_attendance` VALUES (437, 21, '2020-12-04 17:36:58');
INSERT INTO `tbl_attendance` VALUES (438, 19, '2020-12-04 17:37:55');
INSERT INTO `tbl_attendance` VALUES (439, 23, '2020-12-04 17:38:41');
INSERT INTO `tbl_attendance` VALUES (440, 19, '2020-12-04 17:46:21');
INSERT INTO `tbl_attendance` VALUES (441, 26, '2020-12-07 08:24:56');
INSERT INTO `tbl_attendance` VALUES (442, 8, '2020-12-07 08:39:11');
INSERT INTO `tbl_attendance` VALUES (443, 23, '2020-12-07 08:41:11');
INSERT INTO `tbl_attendance` VALUES (444, 5, '2020-12-07 08:41:18');
INSERT INTO `tbl_attendance` VALUES (445, 9, '2020-12-07 08:44:10');
INSERT INTO `tbl_attendance` VALUES (446, 19, '2020-12-07 08:44:15');
INSERT INTO `tbl_attendance` VALUES (447, 7, '2020-12-07 08:45:52');
INSERT INTO `tbl_attendance` VALUES (448, 6, '2020-12-07 08:45:56');
INSERT INTO `tbl_attendance` VALUES (449, 12, '2020-12-07 08:46:46');
INSERT INTO `tbl_attendance` VALUES (450, 24, '2020-12-07 08:48:14');
INSERT INTO `tbl_attendance` VALUES (451, 25, '2020-12-07 08:48:45');
INSERT INTO `tbl_attendance` VALUES (452, 10, '2020-12-07 08:51:23');
INSERT INTO `tbl_attendance` VALUES (453, 3, '2020-12-07 08:53:46');
INSERT INTO `tbl_attendance` VALUES (454, 2, '2020-12-07 08:53:50');
INSERT INTO `tbl_attendance` VALUES (455, 11, '2020-12-07 08:54:02');
INSERT INTO `tbl_attendance` VALUES (456, 4, '2020-12-07 08:55:47');
INSERT INTO `tbl_attendance` VALUES (457, 22, '2020-12-07 08:59:29');
INSERT INTO `tbl_attendance` VALUES (458, 22, '2020-12-07 08:59:34');
INSERT INTO `tbl_attendance` VALUES (459, 26, '2020-12-07 20:36:47');
INSERT INTO `tbl_attendance` VALUES (460, 27, '2020-12-07 20:36:59');
INSERT INTO `tbl_attendance` VALUES (461, 25, '2020-12-07 20:42:43');
INSERT INTO `tbl_attendance` VALUES (462, 10, '2020-12-07 20:43:05');
INSERT INTO `tbl_attendance` VALUES (463, 7, '2020-12-07 20:47:37');
INSERT INTO `tbl_attendance` VALUES (464, 6, '2020-12-07 20:47:43');
INSERT INTO `tbl_attendance` VALUES (465, 2, '2020-12-07 20:52:22');
INSERT INTO `tbl_attendance` VALUES (466, 4, '2020-12-07 20:52:43');
INSERT INTO `tbl_attendance` VALUES (467, 8, '2020-12-07 20:52:46');
INSERT INTO `tbl_attendance` VALUES (468, 3, '2020-12-07 20:53:41');
INSERT INTO `tbl_attendance` VALUES (469, 5, '2020-12-07 20:53:44');
INSERT INTO `tbl_attendance` VALUES (470, 23, '2020-12-07 20:56:59');
INSERT INTO `tbl_attendance` VALUES (471, 9, '2020-12-07 20:57:09');
INSERT INTO `tbl_attendance` VALUES (472, 19, '2020-12-07 20:57:21');
INSERT INTO `tbl_attendance` VALUES (473, 11, '2020-12-07 21:03:58');
INSERT INTO `tbl_attendance` VALUES (474, 12, '2020-12-07 21:04:29');
INSERT INTO `tbl_attendance` VALUES (475, 22, '2020-12-07 21:04:34');
INSERT INTO `tbl_attendance` VALUES (476, 22, '2020-12-07 21:04:37');
INSERT INTO `tbl_attendance` VALUES (477, 24, '2020-12-07 21:04:42');
INSERT INTO `tbl_attendance` VALUES (478, 5, '2020-12-08 08:36:06');
INSERT INTO `tbl_attendance` VALUES (479, 12, '2020-12-08 08:36:23');
INSERT INTO `tbl_attendance` VALUES (480, 27, '2020-12-08 08:42:07');
INSERT INTO `tbl_attendance` VALUES (481, 9, '2020-12-08 08:43:58');
INSERT INTO `tbl_attendance` VALUES (482, 26, '2020-12-08 08:44:09');
INSERT INTO `tbl_attendance` VALUES (483, 8, '2020-12-08 08:45:32');
INSERT INTO `tbl_attendance` VALUES (484, 11, '2020-12-08 08:45:40');
INSERT INTO `tbl_attendance` VALUES (485, 23, '2020-12-08 08:45:44');
INSERT INTO `tbl_attendance` VALUES (486, 24, '2020-12-08 08:47:24');
INSERT INTO `tbl_attendance` VALUES (487, 25, '2020-12-08 08:47:33');
INSERT INTO `tbl_attendance` VALUES (488, 19, '2020-12-08 08:48:28');
INSERT INTO `tbl_attendance` VALUES (489, 7, '2020-12-08 08:48:33');
INSERT INTO `tbl_attendance` VALUES (490, 6, '2020-12-08 08:48:42');
INSERT INTO `tbl_attendance` VALUES (491, 10, '2020-12-08 08:49:46');
INSERT INTO `tbl_attendance` VALUES (492, 2, '2020-12-08 08:54:07');
INSERT INTO `tbl_attendance` VALUES (493, 22, '2020-12-08 08:54:19');
INSERT INTO `tbl_attendance` VALUES (494, 3, '2020-12-08 08:54:25');
INSERT INTO `tbl_attendance` VALUES (495, 4, '2020-12-08 08:55:25');
INSERT INTO `tbl_attendance` VALUES (496, 10, '2020-12-08 20:35:32');
INSERT INTO `tbl_attendance` VALUES (497, 6, '2020-12-08 20:42:53');
INSERT INTO `tbl_attendance` VALUES (498, 7, '2020-12-08 20:43:59');
INSERT INTO `tbl_attendance` VALUES (499, 11, '2020-12-08 20:45:14');
INSERT INTO `tbl_attendance` VALUES (500, 23, '2020-12-08 20:45:17');
INSERT INTO `tbl_attendance` VALUES (501, 25, '2020-12-08 20:50:57');
INSERT INTO `tbl_attendance` VALUES (502, 5, '2020-12-08 20:51:04');
INSERT INTO `tbl_attendance` VALUES (503, 3, '2020-12-08 20:51:14');
INSERT INTO `tbl_attendance` VALUES (504, 2, '2020-12-08 20:51:18');
INSERT INTO `tbl_attendance` VALUES (505, 4, '2020-12-08 20:51:29');
INSERT INTO `tbl_attendance` VALUES (506, 8, '2020-12-08 20:55:45');
INSERT INTO `tbl_attendance` VALUES (507, 19, '2020-12-08 21:00:18');
INSERT INTO `tbl_attendance` VALUES (508, 9, '2020-12-08 21:12:57');
INSERT INTO `tbl_attendance` VALUES (509, 24, '2020-12-08 21:17:16');
INSERT INTO `tbl_attendance` VALUES (510, 26, '2020-12-08 21:17:20');
INSERT INTO `tbl_attendance` VALUES (511, 22, '2020-12-08 22:14:37');
INSERT INTO `tbl_attendance` VALUES (512, 22, '2020-12-08 22:14:41');
INSERT INTO `tbl_attendance` VALUES (513, 12, '2020-12-08 22:15:31');
INSERT INTO `tbl_attendance` VALUES (514, 12, '2020-12-08 22:15:32');
INSERT INTO `tbl_attendance` VALUES (515, 12, '2020-12-09 08:28:29');
INSERT INTO `tbl_attendance` VALUES (516, 5, '2020-12-09 08:41:26');
INSERT INTO `tbl_attendance` VALUES (517, 22, '2020-12-09 08:44:22');
INSERT INTO `tbl_attendance` VALUES (518, 26, '2020-12-09 08:46:16');
INSERT INTO `tbl_attendance` VALUES (519, 25, '2020-12-09 08:46:22');
INSERT INTO `tbl_attendance` VALUES (520, 8, '2020-12-09 08:47:35');
INSERT INTO `tbl_attendance` VALUES (521, 6, '2020-12-09 08:47:45');
INSERT INTO `tbl_attendance` VALUES (522, 7, '2020-12-09 08:47:49');
INSERT INTO `tbl_attendance` VALUES (523, 27, '2020-12-09 08:47:53');
INSERT INTO `tbl_attendance` VALUES (524, 23, '2020-12-09 08:48:42');
INSERT INTO `tbl_attendance` VALUES (525, 9, '2020-12-09 08:48:51');
INSERT INTO `tbl_attendance` VALUES (526, 10, '2020-12-09 08:50:45');
INSERT INTO `tbl_attendance` VALUES (527, 19, '2020-12-09 08:51:43');
INSERT INTO `tbl_attendance` VALUES (528, 11, '2020-12-09 08:53:09');
INSERT INTO `tbl_attendance` VALUES (529, 24, '2020-12-09 08:53:14');
INSERT INTO `tbl_attendance` VALUES (530, 4, '2020-12-09 08:54:55');
INSERT INTO `tbl_attendance` VALUES (531, 2, '2020-12-09 08:55:09');
INSERT INTO `tbl_attendance` VALUES (532, 3, '2020-12-09 08:55:14');
INSERT INTO `tbl_attendance` VALUES (533, 9, '2020-12-09 20:42:28');
INSERT INTO `tbl_attendance` VALUES (534, 10, '2020-12-09 20:42:44');
INSERT INTO `tbl_attendance` VALUES (535, 6, '2020-12-09 20:46:57');
INSERT INTO `tbl_attendance` VALUES (536, 26, '2020-12-09 20:48:28');
INSERT INTO `tbl_attendance` VALUES (537, 8, '2020-12-09 20:48:58');
INSERT INTO `tbl_attendance` VALUES (538, 25, '2020-12-09 20:49:05');
INSERT INTO `tbl_attendance` VALUES (539, 5, '2020-12-09 20:50:23');
INSERT INTO `tbl_attendance` VALUES (540, 4, '2020-12-09 20:51:49');
INSERT INTO `tbl_attendance` VALUES (541, 2, '2020-12-09 20:51:53');
INSERT INTO `tbl_attendance` VALUES (542, 3, '2020-12-09 20:51:57');
INSERT INTO `tbl_attendance` VALUES (543, 27, '2020-12-09 20:52:01');
INSERT INTO `tbl_attendance` VALUES (544, 23, '2020-12-09 20:52:11');
INSERT INTO `tbl_attendance` VALUES (545, 19, '2020-12-09 21:10:16');
INSERT INTO `tbl_attendance` VALUES (546, 11, '2020-12-09 21:10:25');
INSERT INTO `tbl_attendance` VALUES (547, 24, '2020-12-09 21:10:29');
INSERT INTO `tbl_attendance` VALUES (548, 7, '2020-12-09 21:25:17');
INSERT INTO `tbl_attendance` VALUES (549, 8, '2020-12-09 21:29:18');
INSERT INTO `tbl_attendance` VALUES (550, 12, '2020-12-09 21:47:37');
INSERT INTO `tbl_attendance` VALUES (551, 5, '2020-12-10 08:40:23');
INSERT INTO `tbl_attendance` VALUES (552, 23, '2020-12-10 08:40:51');
INSERT INTO `tbl_attendance` VALUES (553, 7, '2020-12-10 08:46:54');
INSERT INTO `tbl_attendance` VALUES (554, 6, '2020-12-10 08:46:59');
INSERT INTO `tbl_attendance` VALUES (555, 26, '2020-12-10 08:47:03');
INSERT INTO `tbl_attendance` VALUES (556, 25, '2020-12-10 08:47:12');
INSERT INTO `tbl_attendance` VALUES (557, 24, '2020-12-10 08:47:23');
INSERT INTO `tbl_attendance` VALUES (558, 12, '2020-12-10 08:48:00');
INSERT INTO `tbl_attendance` VALUES (559, 21, '2020-12-10 08:50:09');
INSERT INTO `tbl_attendance` VALUES (560, 9, '2020-12-10 08:50:25');
INSERT INTO `tbl_attendance` VALUES (561, 10, '2020-12-10 08:50:35');
INSERT INTO `tbl_attendance` VALUES (562, 8, '2020-12-10 08:52:01');
INSERT INTO `tbl_attendance` VALUES (563, 27, '2020-12-10 08:52:31');
INSERT INTO `tbl_attendance` VALUES (564, 22, '2020-12-10 08:53:06');
INSERT INTO `tbl_attendance` VALUES (565, 2, '2020-12-10 08:54:54');
INSERT INTO `tbl_attendance` VALUES (566, 4, '2020-12-10 08:55:02');
INSERT INTO `tbl_attendance` VALUES (567, 3, '2020-12-10 08:55:10');
INSERT INTO `tbl_attendance` VALUES (568, 11, '2020-12-10 08:55:15');
INSERT INTO `tbl_attendance` VALUES (569, 19, '2020-12-10 08:57:12');
INSERT INTO `tbl_attendance` VALUES (570, 24, '2020-12-10 20:32:41');
INSERT INTO `tbl_attendance` VALUES (571, 26, '2020-12-10 20:33:54');
INSERT INTO `tbl_attendance` VALUES (572, 25, '2020-12-10 20:35:17');
INSERT INTO `tbl_attendance` VALUES (573, 27, '2020-12-10 20:36:04');
INSERT INTO `tbl_attendance` VALUES (574, 6, '2020-12-10 20:37:19');
INSERT INTO `tbl_attendance` VALUES (575, 7, '2020-12-10 20:37:22');
INSERT INTO `tbl_attendance` VALUES (576, 23, '2020-12-10 20:41:14');
INSERT INTO `tbl_attendance` VALUES (577, 5, '2020-12-10 20:41:28');
INSERT INTO `tbl_attendance` VALUES (578, 10, '2020-12-10 20:41:34');
INSERT INTO `tbl_attendance` VALUES (579, 8, '2020-12-10 20:41:37');
INSERT INTO `tbl_attendance` VALUES (580, 22, '2020-12-10 20:43:56');
INSERT INTO `tbl_attendance` VALUES (581, 9, '2020-12-10 20:45:42');
INSERT INTO `tbl_attendance` VALUES (582, 11, '2020-12-10 20:47:42');
INSERT INTO `tbl_attendance` VALUES (583, 12, '2020-12-10 20:47:49');
INSERT INTO `tbl_attendance` VALUES (584, 3, '2020-12-10 20:49:00');
INSERT INTO `tbl_attendance` VALUES (585, 2, '2020-12-10 20:49:28');
INSERT INTO `tbl_attendance` VALUES (586, 4, '2020-12-10 20:50:50');
INSERT INTO `tbl_attendance` VALUES (587, 6, '2020-12-11 08:44:10');
INSERT INTO `tbl_attendance` VALUES (588, 7, '2020-12-11 08:44:15');
INSERT INTO `tbl_attendance` VALUES (589, 5, '2020-12-11 08:44:22');
INSERT INTO `tbl_attendance` VALUES (590, 26, '2020-12-11 08:45:38');
INSERT INTO `tbl_attendance` VALUES (591, 10, '2020-12-11 08:45:56');
INSERT INTO `tbl_attendance` VALUES (592, 12, '2020-12-11 08:46:14');
INSERT INTO `tbl_attendance` VALUES (593, 24, '2020-12-11 08:47:13');
INSERT INTO `tbl_attendance` VALUES (594, 23, '2020-12-11 08:47:18');
INSERT INTO `tbl_attendance` VALUES (595, 25, '2020-12-11 08:47:25');
INSERT INTO `tbl_attendance` VALUES (596, 9, '2020-12-11 08:47:29');
INSERT INTO `tbl_attendance` VALUES (597, 19, '2020-12-11 08:48:18');
INSERT INTO `tbl_attendance` VALUES (598, 27, '2020-12-11 08:50:46');
INSERT INTO `tbl_attendance` VALUES (599, 21, '2020-12-11 08:52:06');
INSERT INTO `tbl_attendance` VALUES (600, 3, '2020-12-11 08:52:10');
INSERT INTO `tbl_attendance` VALUES (601, 2, '2020-12-11 08:52:16');
INSERT INTO `tbl_attendance` VALUES (602, 11, '2020-12-11 08:54:56');
INSERT INTO `tbl_attendance` VALUES (603, 4, '2020-12-11 08:56:07');
INSERT INTO `tbl_attendance` VALUES (604, 22, '2020-12-11 08:58:24');
INSERT INTO `tbl_attendance` VALUES (605, 22, '2020-12-11 11:00:23');
INSERT INTO `tbl_attendance` VALUES (606, 26, '2020-12-11 17:46:09');
INSERT INTO `tbl_attendance` VALUES (607, 10, '2020-12-11 17:46:17');
INSERT INTO `tbl_attendance` VALUES (608, 19, '2020-12-11 17:46:21');
INSERT INTO `tbl_attendance` VALUES (609, 25, '2020-12-11 17:46:24');
INSERT INTO `tbl_attendance` VALUES (610, 27, '2020-12-11 17:46:27');
INSERT INTO `tbl_attendance` VALUES (611, 11, '2020-12-11 17:46:35');
INSERT INTO `tbl_attendance` VALUES (612, 2, '2020-12-11 17:48:31');
INSERT INTO `tbl_attendance` VALUES (613, 23, '2020-12-11 17:49:52');
INSERT INTO `tbl_attendance` VALUES (614, 21, '2020-12-11 17:49:56');
INSERT INTO `tbl_attendance` VALUES (615, 3, '2020-12-11 17:54:13');
INSERT INTO `tbl_attendance` VALUES (616, 4, '2020-12-11 17:54:22');
INSERT INTO `tbl_attendance` VALUES (617, 8, '2020-12-14 08:29:01');
INSERT INTO `tbl_attendance` VALUES (618, 5, '2020-12-14 08:41:26');
INSERT INTO `tbl_attendance` VALUES (619, 26, '2020-12-14 08:44:19');
INSERT INTO `tbl_attendance` VALUES (620, 25, '2020-12-14 08:44:54');
INSERT INTO `tbl_attendance` VALUES (621, 9, '2020-12-14 08:47:00');
INSERT INTO `tbl_attendance` VALUES (622, 24, '2020-12-14 08:47:11');
INSERT INTO `tbl_attendance` VALUES (623, 10, '2020-12-14 08:48:03');
INSERT INTO `tbl_attendance` VALUES (624, 27, '2020-12-14 08:48:15');
INSERT INTO `tbl_attendance` VALUES (625, 7, '2020-12-14 08:49:00');
INSERT INTO `tbl_attendance` VALUES (626, 6, '2020-12-14 08:49:03');
INSERT INTO `tbl_attendance` VALUES (627, 19, '2020-12-14 08:49:22');
INSERT INTO `tbl_attendance` VALUES (628, 23, '2020-12-14 08:49:39');
INSERT INTO `tbl_attendance` VALUES (629, 2, '2020-12-14 08:51:23');
INSERT INTO `tbl_attendance` VALUES (630, 3, '2020-12-14 08:51:31');
INSERT INTO `tbl_attendance` VALUES (631, 22, '2020-12-14 08:51:35');
INSERT INTO `tbl_attendance` VALUES (632, 12, '2020-12-14 08:51:57');
INSERT INTO `tbl_attendance` VALUES (633, 21, '2020-12-14 08:53:52');
INSERT INTO `tbl_attendance` VALUES (634, 4, '2020-12-14 08:54:43');
INSERT INTO `tbl_attendance` VALUES (635, 11, '2020-12-14 08:58:03');
INSERT INTO `tbl_attendance` VALUES (636, 3, '2020-12-14 20:44:26');
INSERT INTO `tbl_attendance` VALUES (637, 8, '2020-12-14 20:44:36');
INSERT INTO `tbl_attendance` VALUES (638, 4, '2020-12-14 20:45:27');
INSERT INTO `tbl_attendance` VALUES (639, 2, '2020-12-14 20:45:42');
INSERT INTO `tbl_attendance` VALUES (640, 10, '2020-12-14 20:46:29');
INSERT INTO `tbl_attendance` VALUES (641, 5, '2020-12-14 20:46:49');
INSERT INTO `tbl_attendance` VALUES (642, 27, '2020-12-14 20:53:02');
INSERT INTO `tbl_attendance` VALUES (643, 23, '2020-12-14 20:53:52');
INSERT INTO `tbl_attendance` VALUES (644, 19, '2020-12-14 20:55:04');
INSERT INTO `tbl_attendance` VALUES (645, 6, '2020-12-14 20:56:47');
INSERT INTO `tbl_attendance` VALUES (646, 26, '2020-12-14 20:59:46');
INSERT INTO `tbl_attendance` VALUES (647, 25, '2020-12-14 21:01:07');
INSERT INTO `tbl_attendance` VALUES (648, 11, '2020-12-14 21:04:31');
INSERT INTO `tbl_attendance` VALUES (649, 21, '2020-12-14 21:05:16');
INSERT INTO `tbl_attendance` VALUES (650, 9, '2020-12-14 21:10:32');
INSERT INTO `tbl_attendance` VALUES (651, 7, '2020-12-14 21:15:54');
INSERT INTO `tbl_attendance` VALUES (652, 12, '2020-12-14 21:36:00');
INSERT INTO `tbl_attendance` VALUES (653, 22, '2020-12-14 22:02:19');
INSERT INTO `tbl_attendance` VALUES (654, 24, '2020-12-14 22:02:27');
INSERT INTO `tbl_attendance` VALUES (655, 5, '2020-12-15 08:41:49');
INSERT INTO `tbl_attendance` VALUES (656, 8, '2020-12-15 08:44:12');
INSERT INTO `tbl_attendance` VALUES (657, 19, '2020-12-15 08:44:16');
INSERT INTO `tbl_attendance` VALUES (658, 6, '2020-12-15 08:48:13');
INSERT INTO `tbl_attendance` VALUES (659, 7, '2020-12-15 08:48:16');
INSERT INTO `tbl_attendance` VALUES (660, 9, '2020-12-15 08:48:22');
INSERT INTO `tbl_attendance` VALUES (661, 26, '2020-12-15 08:48:25');
INSERT INTO `tbl_attendance` VALUES (662, 25, '2020-12-15 08:49:12');
INSERT INTO `tbl_attendance` VALUES (663, 27, '2020-12-15 08:49:32');
INSERT INTO `tbl_attendance` VALUES (664, 22, '2020-12-15 08:49:45');
INSERT INTO `tbl_attendance` VALUES (665, 10, '2020-12-15 08:50:14');
INSERT INTO `tbl_attendance` VALUES (666, 24, '2020-12-15 08:50:43');
INSERT INTO `tbl_attendance` VALUES (667, 12, '2020-12-15 08:52:05');
INSERT INTO `tbl_attendance` VALUES (668, 3, '2020-12-15 08:52:34');
INSERT INTO `tbl_attendance` VALUES (669, 2, '2020-12-15 08:52:42');
INSERT INTO `tbl_attendance` VALUES (670, 4, '2020-12-15 08:56:09');
INSERT INTO `tbl_attendance` VALUES (671, 11, '2020-12-15 08:57:10');
INSERT INTO `tbl_attendance` VALUES (672, 21, '2020-12-15 08:57:24');
INSERT INTO `tbl_attendance` VALUES (673, 23, '2020-12-15 08:57:33');
INSERT INTO `tbl_attendance` VALUES (674, 23, '2020-12-15 20:31:52');
INSERT INTO `tbl_attendance` VALUES (675, 23, '2020-12-15 20:31:53');
INSERT INTO `tbl_attendance` VALUES (676, 9, '2020-12-15 20:33:11');
INSERT INTO `tbl_attendance` VALUES (677, 5, '2020-12-15 20:33:22');
INSERT INTO `tbl_attendance` VALUES (678, 24, '2020-12-15 20:33:40');
INSERT INTO `tbl_attendance` VALUES (679, 8, '2020-12-15 20:33:44');
INSERT INTO `tbl_attendance` VALUES (680, 6, '2020-12-15 20:34:10');
INSERT INTO `tbl_attendance` VALUES (681, 7, '2020-12-15 20:34:33');
INSERT INTO `tbl_attendance` VALUES (682, 10, '2020-12-15 20:34:47');
INSERT INTO `tbl_attendance` VALUES (683, 11, '2020-12-15 20:35:06');
INSERT INTO `tbl_attendance` VALUES (684, 4, '2020-12-15 20:35:53');
INSERT INTO `tbl_attendance` VALUES (685, 2, '2020-12-15 20:35:58');
INSERT INTO `tbl_attendance` VALUES (686, 26, '2020-12-15 20:36:00');
INSERT INTO `tbl_attendance` VALUES (687, 25, '2020-12-15 20:36:04');
INSERT INTO `tbl_attendance` VALUES (688, 27, '2020-12-15 20:36:08');
INSERT INTO `tbl_attendance` VALUES (689, 3, '2020-12-15 20:36:36');
INSERT INTO `tbl_attendance` VALUES (690, 22, '2020-12-15 20:36:55');
INSERT INTO `tbl_attendance` VALUES (691, 22, '2020-12-15 20:37:02');
INSERT INTO `tbl_attendance` VALUES (692, 19, '2020-12-15 20:37:21');
INSERT INTO `tbl_attendance` VALUES (693, 12, '2020-12-15 20:38:09');
INSERT INTO `tbl_attendance` VALUES (694, 21, '2020-12-15 20:45:37');
INSERT INTO `tbl_attendance` VALUES (695, 5, '2020-12-16 08:42:14');
INSERT INTO `tbl_attendance` VALUES (696, 9, '2020-12-16 08:42:22');
INSERT INTO `tbl_attendance` VALUES (697, 26, '2020-12-16 08:42:33');
INSERT INTO `tbl_attendance` VALUES (698, 25, '2020-12-16 08:42:38');
INSERT INTO `tbl_attendance` VALUES (699, 12, '2020-12-16 08:45:07');
INSERT INTO `tbl_attendance` VALUES (700, 24, '2020-12-16 08:47:11');
INSERT INTO `tbl_attendance` VALUES (701, 8, '2020-12-16 08:47:46');
INSERT INTO `tbl_attendance` VALUES (702, 10, '2020-12-16 08:49:27');
INSERT INTO `tbl_attendance` VALUES (703, 19, '2020-12-16 08:49:42');
INSERT INTO `tbl_attendance` VALUES (704, 27, '2020-12-16 08:49:54');
INSERT INTO `tbl_attendance` VALUES (705, 23, '2020-12-16 08:52:44');
INSERT INTO `tbl_attendance` VALUES (706, 7, '2020-12-16 08:53:22');
INSERT INTO `tbl_attendance` VALUES (707, 2, '2020-12-16 08:54:26');
INSERT INTO `tbl_attendance` VALUES (708, 3, '2020-12-16 08:54:35');
INSERT INTO `tbl_attendance` VALUES (709, 6, '2020-12-16 08:54:38');
INSERT INTO `tbl_attendance` VALUES (710, 22, '2020-12-16 08:55:32');
INSERT INTO `tbl_attendance` VALUES (711, 11, '2020-12-16 08:56:48');
INSERT INTO `tbl_attendance` VALUES (712, 4, '2020-12-16 08:57:18');
INSERT INTO `tbl_attendance` VALUES (713, 21, '2020-12-16 08:58:13');
INSERT INTO `tbl_attendance` VALUES (714, 6, '2020-12-16 20:36:43');
INSERT INTO `tbl_attendance` VALUES (715, 7, '2020-12-16 20:37:05');
INSERT INTO `tbl_attendance` VALUES (716, 4, '2020-12-16 20:39:20');
INSERT INTO `tbl_attendance` VALUES (717, 2, '2020-12-16 20:39:27');
INSERT INTO `tbl_attendance` VALUES (718, 3, '2020-12-16 20:39:38');
INSERT INTO `tbl_attendance` VALUES (719, 11, '2020-12-16 20:41:12');
INSERT INTO `tbl_attendance` VALUES (720, 10, '2020-12-16 20:41:47');
INSERT INTO `tbl_attendance` VALUES (721, 26, '2020-12-16 20:42:29');
INSERT INTO `tbl_attendance` VALUES (722, 27, '2020-12-16 20:44:10');
INSERT INTO `tbl_attendance` VALUES (723, 12, '2020-12-16 20:44:24');
INSERT INTO `tbl_attendance` VALUES (724, 12, '2020-12-16 20:44:25');
INSERT INTO `tbl_attendance` VALUES (725, 25, '2020-12-16 20:44:46');
INSERT INTO `tbl_attendance` VALUES (726, 24, '2020-12-16 20:44:49');
INSERT INTO `tbl_attendance` VALUES (727, 23, '2020-12-16 20:45:10');
INSERT INTO `tbl_attendance` VALUES (728, 21, '2020-12-16 20:47:43');
INSERT INTO `tbl_attendance` VALUES (729, 22, '2020-12-16 20:48:07');
INSERT INTO `tbl_attendance` VALUES (730, 5, '2020-12-16 20:48:34');
INSERT INTO `tbl_attendance` VALUES (731, 8, '2020-12-16 20:48:43');
INSERT INTO `tbl_attendance` VALUES (732, 9, '2020-12-16 20:48:45');
INSERT INTO `tbl_attendance` VALUES (733, 19, '2020-12-16 20:54:54');
INSERT INTO `tbl_attendance` VALUES (734, 9, '2020-12-17 08:32:24');
INSERT INTO `tbl_attendance` VALUES (735, 19, '2020-12-17 08:34:41');
INSERT INTO `tbl_attendance` VALUES (736, 5, '2020-12-17 08:36:16');
INSERT INTO `tbl_attendance` VALUES (737, 8, '2020-12-17 08:41:12');
INSERT INTO `tbl_attendance` VALUES (738, 8, '2020-12-17 08:41:13');
INSERT INTO `tbl_attendance` VALUES (739, 23, '2020-12-17 08:45:09');
INSERT INTO `tbl_attendance` VALUES (740, 12, '2020-12-17 08:46:54');
INSERT INTO `tbl_attendance` VALUES (741, 7, '2020-12-17 08:47:42');
INSERT INTO `tbl_attendance` VALUES (742, 6, '2020-12-17 08:47:57');
INSERT INTO `tbl_attendance` VALUES (743, 10, '2020-12-17 08:52:11');
INSERT INTO `tbl_attendance` VALUES (744, 27, '2020-12-17 08:52:28');
INSERT INTO `tbl_attendance` VALUES (745, 25, '2020-12-17 08:54:33');
INSERT INTO `tbl_attendance` VALUES (746, 3, '2020-12-17 08:54:45');
INSERT INTO `tbl_attendance` VALUES (747, 2, '2020-12-17 08:54:53');
INSERT INTO `tbl_attendance` VALUES (748, 4, '2020-12-17 08:54:57');
INSERT INTO `tbl_attendance` VALUES (749, 26, '2020-12-17 08:55:38');
INSERT INTO `tbl_attendance` VALUES (750, 24, '2020-12-17 08:55:42');
INSERT INTO `tbl_attendance` VALUES (751, 22, '2020-12-17 08:55:50');
INSERT INTO `tbl_attendance` VALUES (752, 21, '2020-12-17 08:55:54');
INSERT INTO `tbl_attendance` VALUES (753, 11, '2020-12-17 09:00:16');
INSERT INTO `tbl_attendance` VALUES (754, 8, '2020-12-17 20:30:28');
INSERT INTO `tbl_attendance` VALUES (755, 9, '2020-12-17 20:31:04');
INSERT INTO `tbl_attendance` VALUES (756, 26, '2020-12-17 20:31:35');
INSERT INTO `tbl_attendance` VALUES (757, 25, '2020-12-17 20:32:46');
INSERT INTO `tbl_attendance` VALUES (758, 3, '2020-12-17 20:33:24');
INSERT INTO `tbl_attendance` VALUES (759, 2, '2020-12-17 20:33:28');
INSERT INTO `tbl_attendance` VALUES (760, 4, '2020-12-17 20:34:32');
INSERT INTO `tbl_attendance` VALUES (761, 10, '2020-12-17 20:34:42');
INSERT INTO `tbl_attendance` VALUES (762, 11, '2020-12-17 20:37:40');
INSERT INTO `tbl_attendance` VALUES (763, 6, '2020-12-17 20:37:45');
INSERT INTO `tbl_attendance` VALUES (764, 24, '2020-12-17 20:39:37');
INSERT INTO `tbl_attendance` VALUES (765, 23, '2020-12-17 20:39:44');
INSERT INTO `tbl_attendance` VALUES (766, 27, '2020-12-17 20:39:48');
INSERT INTO `tbl_attendance` VALUES (767, 19, '2020-12-17 20:40:43');
INSERT INTO `tbl_attendance` VALUES (768, 5, '2020-12-17 20:41:13');
INSERT INTO `tbl_attendance` VALUES (769, 12, '2020-12-17 20:42:53');
INSERT INTO `tbl_attendance` VALUES (770, 12, '2020-12-17 20:45:59');
INSERT INTO `tbl_attendance` VALUES (771, 7, '2020-12-17 20:46:26');
INSERT INTO `tbl_attendance` VALUES (772, 21, '2020-12-17 20:56:51');
INSERT INTO `tbl_attendance` VALUES (773, 22, '2020-12-17 21:35:21');
INSERT INTO `tbl_attendance` VALUES (774, 5, '2020-12-18 08:40:20');
INSERT INTO `tbl_attendance` VALUES (775, 8, '2020-12-18 08:43:29');
INSERT INTO `tbl_attendance` VALUES (776, 9, '2020-12-18 08:47:04');
INSERT INTO `tbl_attendance` VALUES (777, 10, '2020-12-18 08:51:06');
INSERT INTO `tbl_attendance` VALUES (778, 7, '2020-12-18 08:52:08');
INSERT INTO `tbl_attendance` VALUES (779, 6, '2020-12-18 08:52:27');
INSERT INTO `tbl_attendance` VALUES (780, 27, '2020-12-18 08:52:35');
INSERT INTO `tbl_attendance` VALUES (781, 12, '2020-12-18 08:52:40');
INSERT INTO `tbl_attendance` VALUES (782, 26, '2020-12-18 08:52:44');
INSERT INTO `tbl_attendance` VALUES (783, 23, '2020-12-18 08:52:50');
INSERT INTO `tbl_attendance` VALUES (784, 24, '2020-12-18 08:53:31');
INSERT INTO `tbl_attendance` VALUES (785, 25, '2020-12-18 08:53:43');
INSERT INTO `tbl_attendance` VALUES (786, 2, '2020-12-18 08:54:36');
INSERT INTO `tbl_attendance` VALUES (787, 3, '2020-12-18 08:54:40');
INSERT INTO `tbl_attendance` VALUES (788, 11, '2020-12-18 08:55:04');
INSERT INTO `tbl_attendance` VALUES (789, 19, '2020-12-18 08:56:04');
INSERT INTO `tbl_attendance` VALUES (790, 4, '2020-12-18 08:56:25');
INSERT INTO `tbl_attendance` VALUES (791, 22, '2020-12-18 08:57:38');
INSERT INTO `tbl_attendance` VALUES (792, 21, '2020-12-18 08:58:52');
INSERT INTO `tbl_attendance` VALUES (793, 6, '2020-12-18 17:41:27');
INSERT INTO `tbl_attendance` VALUES (794, 7, '2020-12-18 17:41:52');
INSERT INTO `tbl_attendance` VALUES (795, 3, '2020-12-18 17:42:00');
INSERT INTO `tbl_attendance` VALUES (796, 2, '2020-12-18 17:42:28');
INSERT INTO `tbl_attendance` VALUES (797, 4, '2020-12-18 17:42:46');
INSERT INTO `tbl_attendance` VALUES (798, 23, '2020-12-18 17:44:36');
INSERT INTO `tbl_attendance` VALUES (799, 11, '2020-12-18 17:48:38');
INSERT INTO `tbl_attendance` VALUES (800, 24, '2020-12-18 17:49:10');
INSERT INTO `tbl_attendance` VALUES (801, 25, '2020-12-18 17:49:27');
INSERT INTO `tbl_attendance` VALUES (802, 26, '2020-12-18 17:52:05');
INSERT INTO `tbl_attendance` VALUES (803, 9, '2020-12-18 17:52:26');
INSERT INTO `tbl_attendance` VALUES (804, 5, '2020-12-18 17:52:29');
INSERT INTO `tbl_attendance` VALUES (805, 21, '2020-12-18 18:05:20');
INSERT INTO `tbl_attendance` VALUES (806, 8, '2020-12-18 18:13:16');
INSERT INTO `tbl_attendance` VALUES (807, 10, '2020-12-18 18:13:26');
INSERT INTO `tbl_attendance` VALUES (808, 22, '2020-12-18 18:13:29');
INSERT INTO `tbl_attendance` VALUES (809, 12, '2020-12-21 08:00:35');
INSERT INTO `tbl_attendance` VALUES (810, 12, '2020-12-21 08:00:37');
INSERT INTO `tbl_attendance` VALUES (811, 27, '2020-12-21 08:18:02');
INSERT INTO `tbl_attendance` VALUES (812, 5, '2020-12-21 08:42:46');
INSERT INTO `tbl_attendance` VALUES (813, 23, '2020-12-21 08:47:31');
INSERT INTO `tbl_attendance` VALUES (814, 10, '2020-12-21 08:48:08');
INSERT INTO `tbl_attendance` VALUES (815, 19, '2020-12-21 08:49:02');
INSERT INTO `tbl_attendance` VALUES (816, 9, '2020-12-21 08:49:37');
INSERT INTO `tbl_attendance` VALUES (817, 25, '2020-12-21 08:50:16');
INSERT INTO `tbl_attendance` VALUES (818, 22, '2020-12-21 08:50:30');
INSERT INTO `tbl_attendance` VALUES (819, 22, '2020-12-21 08:50:33');
INSERT INTO `tbl_attendance` VALUES (820, 7, '2020-12-21 08:51:44');
INSERT INTO `tbl_attendance` VALUES (821, 6, '2020-12-21 08:51:50');
INSERT INTO `tbl_attendance` VALUES (822, 8, '2020-12-21 08:53:56');
INSERT INTO `tbl_attendance` VALUES (823, 26, '2020-12-21 08:54:32');
INSERT INTO `tbl_attendance` VALUES (824, 24, '2020-12-21 08:54:39');
INSERT INTO `tbl_attendance` VALUES (825, 2, '2020-12-21 08:54:56');
INSERT INTO `tbl_attendance` VALUES (826, 3, '2020-12-21 08:55:02');
INSERT INTO `tbl_attendance` VALUES (827, 21, '2020-12-21 08:55:16');
INSERT INTO `tbl_attendance` VALUES (828, 4, '2020-12-21 08:57:11');
INSERT INTO `tbl_attendance` VALUES (829, 11, '2020-12-21 09:06:12');
INSERT INTO `tbl_attendance` VALUES (830, 21, '2020-12-21 20:54:44');
INSERT INTO `tbl_attendance` VALUES (831, 10, '2020-12-21 20:58:45');
INSERT INTO `tbl_attendance` VALUES (832, 25, '2020-12-21 20:59:32');
INSERT INTO `tbl_attendance` VALUES (833, 26, '2020-12-21 20:59:34');
INSERT INTO `tbl_attendance` VALUES (834, 27, '2020-12-21 20:59:41');
INSERT INTO `tbl_attendance` VALUES (835, 4, '2020-12-21 21:02:56');
INSERT INTO `tbl_attendance` VALUES (836, 2, '2020-12-21 21:03:00');
INSERT INTO `tbl_attendance` VALUES (837, 3, '2020-12-21 21:03:08');
INSERT INTO `tbl_attendance` VALUES (838, 8, '2020-12-21 21:03:46');
INSERT INTO `tbl_attendance` VALUES (839, 8, '2020-12-21 21:03:56');
INSERT INTO `tbl_attendance` VALUES (840, 23, '2020-12-21 21:04:00');
INSERT INTO `tbl_attendance` VALUES (841, 5, '2020-12-21 21:05:26');
INSERT INTO `tbl_attendance` VALUES (842, 9, '2020-12-21 21:05:29');
INSERT INTO `tbl_attendance` VALUES (843, 6, '2020-12-21 21:08:08');
INSERT INTO `tbl_attendance` VALUES (844, 22, '2020-12-21 21:08:37');
INSERT INTO `tbl_attendance` VALUES (845, 22, '2020-12-21 21:08:38');
INSERT INTO `tbl_attendance` VALUES (846, 24, '2020-12-21 21:08:40');
INSERT INTO `tbl_attendance` VALUES (847, 11, '2020-12-21 21:10:18');
INSERT INTO `tbl_attendance` VALUES (848, 9, '2020-12-21 21:10:26');
INSERT INTO `tbl_attendance` VALUES (849, 12, '2020-12-21 21:46:14');
INSERT INTO `tbl_attendance` VALUES (850, 7, '2020-12-21 21:51:45');
INSERT INTO `tbl_attendance` VALUES (851, 12, '2020-12-22 08:24:05');
INSERT INTO `tbl_attendance` VALUES (852, 5, '2020-12-22 08:37:26');
INSERT INTO `tbl_attendance` VALUES (853, 19, '2020-12-22 08:41:15');
INSERT INTO `tbl_attendance` VALUES (854, 8, '2020-12-22 08:46:58');
INSERT INTO `tbl_attendance` VALUES (855, 26, '2020-12-22 08:50:00');
INSERT INTO `tbl_attendance` VALUES (856, 24, '2020-12-22 08:50:34');
INSERT INTO `tbl_attendance` VALUES (857, 25, '2020-12-22 08:50:39');
INSERT INTO `tbl_attendance` VALUES (858, 23, '2020-12-22 08:52:01');
INSERT INTO `tbl_attendance` VALUES (859, 10, '2020-12-22 08:52:28');
INSERT INTO `tbl_attendance` VALUES (860, 27, '2020-12-22 08:53:11');
INSERT INTO `tbl_attendance` VALUES (861, 2, '2020-12-22 08:53:38');
INSERT INTO `tbl_attendance` VALUES (862, 22, '2020-12-22 08:54:43');
INSERT INTO `tbl_attendance` VALUES (863, 22, '2020-12-22 08:54:44');
INSERT INTO `tbl_attendance` VALUES (864, 3, '2020-12-22 08:54:53');
INSERT INTO `tbl_attendance` VALUES (865, 6, '2020-12-22 08:56:25');
INSERT INTO `tbl_attendance` VALUES (866, 7, '2020-12-22 08:56:33');
INSERT INTO `tbl_attendance` VALUES (867, 9, '2020-12-22 08:56:45');
INSERT INTO `tbl_attendance` VALUES (868, 11, '2020-12-22 08:57:16');
INSERT INTO `tbl_attendance` VALUES (869, 4, '2020-12-22 08:57:43');
INSERT INTO `tbl_attendance` VALUES (870, 21, '2020-12-22 08:58:39');
INSERT INTO `tbl_attendance` VALUES (871, 12, '2020-12-22 20:31:48');
INSERT INTO `tbl_attendance` VALUES (872, 2, '2020-12-22 20:53:15');
INSERT INTO `tbl_attendance` VALUES (873, 4, '2020-12-22 20:53:23');
INSERT INTO `tbl_attendance` VALUES (874, 3, '2020-12-22 20:53:29');
INSERT INTO `tbl_attendance` VALUES (875, 11, '2020-12-22 20:55:22');
INSERT INTO `tbl_attendance` VALUES (876, 9, '2020-12-22 20:55:46');
INSERT INTO `tbl_attendance` VALUES (877, 8, '2020-12-22 20:57:53');
INSERT INTO `tbl_attendance` VALUES (878, 6, '2020-12-22 20:57:59');
INSERT INTO `tbl_attendance` VALUES (879, 5, '2020-12-22 20:58:40');
INSERT INTO `tbl_attendance` VALUES (880, 22, '2020-12-22 20:59:09');
INSERT INTO `tbl_attendance` VALUES (881, 22, '2020-12-22 20:59:10');
INSERT INTO `tbl_attendance` VALUES (882, 24, '2020-12-22 20:59:13');
INSERT INTO `tbl_attendance` VALUES (883, 10, '2020-12-22 20:59:20');
INSERT INTO `tbl_attendance` VALUES (884, 7, '2020-12-22 20:59:25');
INSERT INTO `tbl_attendance` VALUES (885, 27, '2020-12-22 21:01:28');
INSERT INTO `tbl_attendance` VALUES (886, 25, '2020-12-22 21:01:38');
INSERT INTO `tbl_attendance` VALUES (887, 26, '2020-12-22 21:01:41');
INSERT INTO `tbl_attendance` VALUES (888, 19, '2020-12-22 21:02:20');
INSERT INTO `tbl_attendance` VALUES (889, 21, '2020-12-22 21:27:26');
INSERT INTO `tbl_attendance` VALUES (890, 12, '2020-12-23 07:48:50');
INSERT INTO `tbl_attendance` VALUES (891, 19, '2020-12-23 08:40:44');
INSERT INTO `tbl_attendance` VALUES (892, 19, '2020-12-23 08:40:46');
INSERT INTO `tbl_attendance` VALUES (893, 5, '2020-12-23 08:42:02');
INSERT INTO `tbl_attendance` VALUES (894, 27, '2020-12-23 08:50:48');
INSERT INTO `tbl_attendance` VALUES (895, 10, '2020-12-23 08:51:37');
INSERT INTO `tbl_attendance` VALUES (896, 8, '2020-12-23 08:54:08');
INSERT INTO `tbl_attendance` VALUES (897, 26, '2020-12-23 08:54:28');
INSERT INTO `tbl_attendance` VALUES (898, 22, '2020-12-23 08:54:39');
INSERT INTO `tbl_attendance` VALUES (899, 24, '2020-12-23 08:55:56');
INSERT INTO `tbl_attendance` VALUES (900, 25, '2020-12-23 08:56:09');
INSERT INTO `tbl_attendance` VALUES (901, 2, '2020-12-23 08:56:20');
INSERT INTO `tbl_attendance` VALUES (902, 11, '2020-12-23 08:56:59');
INSERT INTO `tbl_attendance` VALUES (903, 9, '2020-12-23 08:57:52');
INSERT INTO `tbl_attendance` VALUES (904, 21, '2020-12-23 09:00:09');
INSERT INTO `tbl_attendance` VALUES (905, 23, '2020-12-23 09:01:40');
INSERT INTO `tbl_attendance` VALUES (906, 6, '2020-12-23 09:05:02');
INSERT INTO `tbl_attendance` VALUES (907, 4, '2020-12-23 09:14:30');
INSERT INTO `tbl_attendance` VALUES (908, 7, '2020-12-23 09:15:51');
INSERT INTO `tbl_attendance` VALUES (909, 19, '2020-12-23 20:43:19');
INSERT INTO `tbl_attendance` VALUES (910, 2, '2020-12-23 20:52:58');
INSERT INTO `tbl_attendance` VALUES (911, 4, '2020-12-23 20:53:00');
INSERT INTO `tbl_attendance` VALUES (912, 3, '2020-12-23 20:53:13');
INSERT INTO `tbl_attendance` VALUES (913, 10, '2020-12-23 21:04:08');
INSERT INTO `tbl_attendance` VALUES (914, 25, '2020-12-23 21:05:44');
INSERT INTO `tbl_attendance` VALUES (915, 27, '2020-12-23 21:07:26');
INSERT INTO `tbl_attendance` VALUES (916, 21, '2020-12-23 21:12:11');
INSERT INTO `tbl_attendance` VALUES (917, 5, '2020-12-23 21:15:51');
INSERT INTO `tbl_attendance` VALUES (918, 9, '2020-12-23 21:16:02');
INSERT INTO `tbl_attendance` VALUES (919, 9, '2020-12-23 21:16:08');
INSERT INTO `tbl_attendance` VALUES (920, 8, '2020-12-23 21:16:50');
INSERT INTO `tbl_attendance` VALUES (921, 12, '2020-12-23 21:23:51');
INSERT INTO `tbl_attendance` VALUES (922, 11, '2020-12-23 21:23:57');
INSERT INTO `tbl_attendance` VALUES (923, 26, '2020-12-23 21:26:23');
INSERT INTO `tbl_attendance` VALUES (924, 23, '2020-12-23 21:31:02');
INSERT INTO `tbl_attendance` VALUES (925, 7, '2020-12-23 21:31:32');
INSERT INTO `tbl_attendance` VALUES (926, 6, '2020-12-23 21:33:30');
INSERT INTO `tbl_attendance` VALUES (927, 22, '2020-12-23 21:33:38');
INSERT INTO `tbl_attendance` VALUES (928, 12, '2020-12-24 08:29:41');
INSERT INTO `tbl_attendance` VALUES (929, 5, '2020-12-24 08:44:11');
INSERT INTO `tbl_attendance` VALUES (930, 23, '2020-12-24 08:49:27');
INSERT INTO `tbl_attendance` VALUES (931, 8, '2020-12-24 08:49:31');
INSERT INTO `tbl_attendance` VALUES (932, 9, '2020-12-24 08:51:10');
INSERT INTO `tbl_attendance` VALUES (933, 26, '2020-12-24 08:51:32');
INSERT INTO `tbl_attendance` VALUES (934, 6, '2020-12-24 08:51:36');
INSERT INTO `tbl_attendance` VALUES (935, 7, '2020-12-24 08:51:42');
INSERT INTO `tbl_attendance` VALUES (936, 27, '2020-12-24 08:51:47');
INSERT INTO `tbl_attendance` VALUES (937, 10, '2020-12-24 08:51:55');
INSERT INTO `tbl_attendance` VALUES (938, 25, '2020-12-24 08:52:21');
INSERT INTO `tbl_attendance` VALUES (939, 24, '2020-12-24 08:53:51');
INSERT INTO `tbl_attendance` VALUES (940, 19, '2020-12-24 08:54:03');
INSERT INTO `tbl_attendance` VALUES (941, 11, '2020-12-24 08:54:30');
INSERT INTO `tbl_attendance` VALUES (942, 2, '2020-12-24 08:54:36');
INSERT INTO `tbl_attendance` VALUES (943, 3, '2020-12-24 08:54:49');
INSERT INTO `tbl_attendance` VALUES (944, 4, '2020-12-24 08:57:42');
INSERT INTO `tbl_attendance` VALUES (945, 22, '2020-12-24 08:59:56');
INSERT INTO `tbl_attendance` VALUES (946, 22, '2020-12-24 08:59:57');
INSERT INTO `tbl_attendance` VALUES (947, 21, '2020-12-24 09:00:02');
INSERT INTO `tbl_attendance` VALUES (948, 26, '2020-12-24 19:24:36');
INSERT INTO `tbl_attendance` VALUES (949, 27, '2020-12-24 19:24:51');
INSERT INTO `tbl_attendance` VALUES (950, 23, '2020-12-24 19:26:26');
INSERT INTO `tbl_attendance` VALUES (951, 24, '2020-12-24 19:28:21');
INSERT INTO `tbl_attendance` VALUES (952, 21, '2020-12-24 19:28:31');
INSERT INTO `tbl_attendance` VALUES (953, 6, '2020-12-24 19:28:34');
INSERT INTO `tbl_attendance` VALUES (954, 26, '2020-12-24 19:30:06');
INSERT INTO `tbl_attendance` VALUES (955, 25, '2020-12-24 19:30:11');
INSERT INTO `tbl_attendance` VALUES (956, 6, '2020-12-24 19:30:49');
INSERT INTO `tbl_attendance` VALUES (957, 7, '2020-12-24 19:31:01');
INSERT INTO `tbl_attendance` VALUES (958, 9, '2020-12-24 19:31:16');
INSERT INTO `tbl_attendance` VALUES (959, 5, '2020-12-24 19:31:21');
INSERT INTO `tbl_attendance` VALUES (960, 22, '2020-12-24 19:31:36');
INSERT INTO `tbl_attendance` VALUES (961, 22, '2020-12-24 19:31:37');
INSERT INTO `tbl_attendance` VALUES (962, 8, '2020-12-24 19:31:45');
INSERT INTO `tbl_attendance` VALUES (963, 10, '2020-12-24 19:31:58');
INSERT INTO `tbl_attendance` VALUES (964, 12, '2020-12-24 19:35:42');
INSERT INTO `tbl_attendance` VALUES (965, 19, '2020-12-24 19:38:35');
INSERT INTO `tbl_attendance` VALUES (966, 11, '2020-12-24 19:39:48');
INSERT INTO `tbl_attendance` VALUES (967, 2, '2020-12-24 20:23:01');
INSERT INTO `tbl_attendance` VALUES (968, 3, '2020-12-24 20:23:10');
INSERT INTO `tbl_attendance` VALUES (969, 4, '2020-12-24 20:23:35');
INSERT INTO `tbl_attendance` VALUES (970, 12, '2020-12-25 08:29:07');
INSERT INTO `tbl_attendance` VALUES (971, 5, '2020-12-25 08:42:27');
INSERT INTO `tbl_attendance` VALUES (972, 23, '2020-12-25 08:42:59');
INSERT INTO `tbl_attendance` VALUES (973, 8, '2020-12-25 08:43:55');
INSERT INTO `tbl_attendance` VALUES (974, 10, '2020-12-25 08:44:24');
INSERT INTO `tbl_attendance` VALUES (975, 10, '2020-12-25 08:52:01');
INSERT INTO `tbl_attendance` VALUES (976, 9, '2020-12-25 08:52:05');
INSERT INTO `tbl_attendance` VALUES (977, 27, '2020-12-25 08:53:20');
INSERT INTO `tbl_attendance` VALUES (978, 19, '2020-12-25 08:58:06');
INSERT INTO `tbl_attendance` VALUES (979, 26, '2020-12-25 08:58:10');
INSERT INTO `tbl_attendance` VALUES (980, 24, '2020-12-25 08:58:16');
INSERT INTO `tbl_attendance` VALUES (981, 2, '2020-12-25 08:58:20');
INSERT INTO `tbl_attendance` VALUES (982, 3, '2020-12-25 08:58:24');
INSERT INTO `tbl_attendance` VALUES (983, 25, '2020-12-25 08:58:32');
INSERT INTO `tbl_attendance` VALUES (984, 4, '2020-12-25 08:58:51');
INSERT INTO `tbl_attendance` VALUES (985, 22, '2020-12-25 09:00:36');
INSERT INTO `tbl_attendance` VALUES (986, 11, '2020-12-25 09:00:47');
INSERT INTO `tbl_attendance` VALUES (987, 6, '2020-12-25 09:01:08');
INSERT INTO `tbl_attendance` VALUES (988, 7, '2020-12-25 09:01:13');
INSERT INTO `tbl_attendance` VALUES (989, 21, '2020-12-25 09:01:19');
INSERT INTO `tbl_attendance` VALUES (990, 4, '2020-12-25 17:30:26');
INSERT INTO `tbl_attendance` VALUES (991, 25, '2020-12-25 17:41:41');
INSERT INTO `tbl_attendance` VALUES (992, 3, '2020-12-25 17:41:52');
INSERT INTO `tbl_attendance` VALUES (993, 19, '2020-12-25 17:42:41');
INSERT INTO `tbl_attendance` VALUES (994, 27, '2020-12-25 17:44:56');
INSERT INTO `tbl_attendance` VALUES (995, 26, '2020-12-25 17:45:04');
INSERT INTO `tbl_attendance` VALUES (996, 6, '2020-12-25 17:46:25');
INSERT INTO `tbl_attendance` VALUES (997, 11, '2020-12-25 17:48:28');
INSERT INTO `tbl_attendance` VALUES (998, 10, '2020-12-25 17:48:32');
INSERT INTO `tbl_attendance` VALUES (999, 23, '2020-12-25 17:49:05');
INSERT INTO `tbl_attendance` VALUES (1000, 5, '2020-12-25 17:49:33');
INSERT INTO `tbl_attendance` VALUES (1001, 9, '2020-12-25 17:49:59');
INSERT INTO `tbl_attendance` VALUES (1002, 22, '2020-12-25 17:50:46');
INSERT INTO `tbl_attendance` VALUES (1003, 21, '2020-12-25 17:53:26');
INSERT INTO `tbl_attendance` VALUES (1004, 7, '2020-12-25 17:53:45');
INSERT INTO `tbl_attendance` VALUES (1005, 27, '2020-12-28 08:25:52');
INSERT INTO `tbl_attendance` VALUES (1006, 23, '2020-12-28 08:44:12');
INSERT INTO `tbl_attendance` VALUES (1007, 8, '2020-12-28 08:45:12');
INSERT INTO `tbl_attendance` VALUES (1008, 10, '2020-12-28 08:45:19');
INSERT INTO `tbl_attendance` VALUES (1009, 5, '2020-12-28 08:45:23');
INSERT INTO `tbl_attendance` VALUES (1010, 26, '2020-12-28 08:46:15');
INSERT INTO `tbl_attendance` VALUES (1011, 9, '2020-12-28 08:46:20');
INSERT INTO `tbl_attendance` VALUES (1012, 6, '2020-12-28 08:51:54');
INSERT INTO `tbl_attendance` VALUES (1013, 19, '2020-12-28 08:51:58');
INSERT INTO `tbl_attendance` VALUES (1014, 25, '2020-12-28 08:52:01');
INSERT INTO `tbl_attendance` VALUES (1015, 7, '2020-12-28 08:52:06');
INSERT INTO `tbl_attendance` VALUES (1016, 24, '2020-12-28 08:56:35');
INSERT INTO `tbl_attendance` VALUES (1017, 2, '2020-12-28 08:57:30');
INSERT INTO `tbl_attendance` VALUES (1018, 4, '2020-12-28 08:57:34');
INSERT INTO `tbl_attendance` VALUES (1019, 3, '2020-12-28 08:57:38');
INSERT INTO `tbl_attendance` VALUES (1020, 21, '2020-12-28 08:58:51');
INSERT INTO `tbl_attendance` VALUES (1021, 11, '2020-12-28 08:59:06');
INSERT INTO `tbl_attendance` VALUES (1022, 22, '2020-12-28 08:59:12');
INSERT INTO `tbl_attendance` VALUES (1023, 10, '2020-12-28 20:38:48');
INSERT INTO `tbl_attendance` VALUES (1024, 11, '2020-12-28 20:39:20');
INSERT INTO `tbl_attendance` VALUES (1025, 26, '2020-12-28 20:39:26');
INSERT INTO `tbl_attendance` VALUES (1026, 25, '2020-12-28 20:40:43');
INSERT INTO `tbl_attendance` VALUES (1027, 3, '2020-12-28 20:41:27');
INSERT INTO `tbl_attendance` VALUES (1028, 6, '2020-12-28 20:41:37');
INSERT INTO `tbl_attendance` VALUES (1029, 21, '2020-12-28 20:41:41');
INSERT INTO `tbl_attendance` VALUES (1030, 23, '2020-12-28 20:43:52');
INSERT INTO `tbl_attendance` VALUES (1031, 24, '2020-12-28 20:43:57');
INSERT INTO `tbl_attendance` VALUES (1032, 22, '2020-12-28 20:44:04');
INSERT INTO `tbl_attendance` VALUES (1033, 8, '2020-12-28 20:44:39');
INSERT INTO `tbl_attendance` VALUES (1034, 27, '2020-12-28 20:46:05');
INSERT INTO `tbl_attendance` VALUES (1035, 2, '2020-12-28 20:46:10');
INSERT INTO `tbl_attendance` VALUES (1036, 4, '2020-12-28 20:46:19');
INSERT INTO `tbl_attendance` VALUES (1037, 12, '2020-12-28 20:46:32');
INSERT INTO `tbl_attendance` VALUES (1038, 19, '2020-12-28 20:49:25');
INSERT INTO `tbl_attendance` VALUES (1039, 9, '2020-12-28 20:49:33');
INSERT INTO `tbl_attendance` VALUES (1040, 5, '2020-12-28 20:54:55');
INSERT INTO `tbl_attendance` VALUES (1041, 7, '2020-12-28 21:35:35');
INSERT INTO `tbl_attendance` VALUES (1042, 12, '2020-12-29 07:11:03');
INSERT INTO `tbl_attendance` VALUES (1043, 8, '2020-12-29 08:43:16');
INSERT INTO `tbl_attendance` VALUES (1044, 5, '2020-12-29 08:43:49');
INSERT INTO `tbl_attendance` VALUES (1045, 10, '2020-12-29 08:44:33');
INSERT INTO `tbl_attendance` VALUES (1046, 11, '2020-12-29 08:46:03');
INSERT INTO `tbl_attendance` VALUES (1047, 26, '2020-12-29 08:51:42');
INSERT INTO `tbl_attendance` VALUES (1048, 25, '2020-12-29 08:53:44');
INSERT INTO `tbl_attendance` VALUES (1049, 6, '2020-12-29 08:54:41');
INSERT INTO `tbl_attendance` VALUES (1050, 7, '2020-12-29 08:54:57');
INSERT INTO `tbl_attendance` VALUES (1051, 27, '2020-12-29 08:55:06');
INSERT INTO `tbl_attendance` VALUES (1052, 9, '2020-12-29 08:55:17');
INSERT INTO `tbl_attendance` VALUES (1053, 3, '2020-12-29 08:55:36');
INSERT INTO `tbl_attendance` VALUES (1054, 2, '2020-12-29 08:55:40');
INSERT INTO `tbl_attendance` VALUES (1055, 19, '2020-12-29 08:56:21');
INSERT INTO `tbl_attendance` VALUES (1056, 23, '2020-12-29 08:57:28');
INSERT INTO `tbl_attendance` VALUES (1057, 4, '2020-12-29 08:58:17');
INSERT INTO `tbl_attendance` VALUES (1058, 21, '2020-12-29 08:58:27');
INSERT INTO `tbl_attendance` VALUES (1059, 24, '2020-12-29 08:59:32');
INSERT INTO `tbl_attendance` VALUES (1060, 22, '2020-12-29 09:00:24');
INSERT INTO `tbl_attendance` VALUES (1061, 22, '2020-12-29 09:00:25');
INSERT INTO `tbl_attendance` VALUES (1062, 25, '2020-12-29 20:38:08');
INSERT INTO `tbl_attendance` VALUES (1063, 4, '2020-12-29 20:40:30');
INSERT INTO `tbl_attendance` VALUES (1064, 3, '2020-12-29 20:40:50');
INSERT INTO `tbl_attendance` VALUES (1065, 2, '2020-12-29 20:42:00');
INSERT INTO `tbl_attendance` VALUES (1066, 10, '2020-12-29 20:44:30');
INSERT INTO `tbl_attendance` VALUES (1067, 26, '2020-12-29 20:47:16');
INSERT INTO `tbl_attendance` VALUES (1068, 27, '2020-12-29 20:47:27');
INSERT INTO `tbl_attendance` VALUES (1069, 12, '2020-12-29 20:47:51');
INSERT INTO `tbl_attendance` VALUES (1070, 11, '2020-12-29 20:49:51');
INSERT INTO `tbl_attendance` VALUES (1071, 23, '2020-12-29 20:49:55');
INSERT INTO `tbl_attendance` VALUES (1072, 24, '2020-12-29 20:52:19');
INSERT INTO `tbl_attendance` VALUES (1073, 22, '2020-12-29 20:52:24');
INSERT INTO `tbl_attendance` VALUES (1074, 6, '2020-12-29 20:52:28');
INSERT INTO `tbl_attendance` VALUES (1075, 19, '2020-12-29 20:55:27');
INSERT INTO `tbl_attendance` VALUES (1076, 9, '2020-12-29 20:55:35');
INSERT INTO `tbl_attendance` VALUES (1077, 8, '2020-12-29 20:55:38');
INSERT INTO `tbl_attendance` VALUES (1078, 5, '2020-12-29 20:55:53');
INSERT INTO `tbl_attendance` VALUES (1079, 8, '2020-12-29 21:38:46');
INSERT INTO `tbl_attendance` VALUES (1080, 7, '2020-12-29 21:38:51');
INSERT INTO `tbl_attendance` VALUES (1081, 9, '2020-12-29 21:39:08');
INSERT INTO `tbl_attendance` VALUES (1082, 12, '2020-12-30 07:31:12');
INSERT INTO `tbl_attendance` VALUES (1083, 8, '2020-12-30 08:47:12');
INSERT INTO `tbl_attendance` VALUES (1084, 5, '2020-12-30 08:49:59');
INSERT INTO `tbl_attendance` VALUES (1085, 19, '2020-12-30 08:51:12');
INSERT INTO `tbl_attendance` VALUES (1086, 9, '2020-12-30 08:51:16');
INSERT INTO `tbl_attendance` VALUES (1087, 10, '2020-12-30 08:51:47');
INSERT INTO `tbl_attendance` VALUES (1088, 11, '2020-12-30 08:53:11');
INSERT INTO `tbl_attendance` VALUES (1089, 26, '2020-12-30 08:54:50');
INSERT INTO `tbl_attendance` VALUES (1090, 6, '2020-12-30 08:55:00');
INSERT INTO `tbl_attendance` VALUES (1091, 7, '2020-12-30 08:55:03');
INSERT INTO `tbl_attendance` VALUES (1092, 27, '2020-12-30 08:55:12');
INSERT INTO `tbl_attendance` VALUES (1093, 25, '2020-12-30 08:55:22');
INSERT INTO `tbl_attendance` VALUES (1094, 25, '2020-12-30 08:55:28');
INSERT INTO `tbl_attendance` VALUES (1095, 23, '2020-12-30 08:56:00');
INSERT INTO `tbl_attendance` VALUES (1096, 2, '2020-12-30 08:56:43');
INSERT INTO `tbl_attendance` VALUES (1097, 4, '2020-12-30 08:56:47');
INSERT INTO `tbl_attendance` VALUES (1098, 3, '2020-12-30 08:56:52');
INSERT INTO `tbl_attendance` VALUES (1099, 24, '2020-12-30 08:58:28');
INSERT INTO `tbl_attendance` VALUES (1100, 22, '2020-12-30 08:59:44');
INSERT INTO `tbl_attendance` VALUES (1101, 22, '2020-12-30 08:59:45');
INSERT INTO `tbl_attendance` VALUES (1102, 10, '2020-12-30 20:37:48');
INSERT INTO `tbl_attendance` VALUES (1103, 8, '2020-12-30 20:38:08');
INSERT INTO `tbl_attendance` VALUES (1104, 4, '2020-12-30 20:38:58');
INSERT INTO `tbl_attendance` VALUES (1105, 25, '2020-12-30 20:39:24');
INSERT INTO `tbl_attendance` VALUES (1106, 26, '2020-12-30 20:39:29');
INSERT INTO `tbl_attendance` VALUES (1107, 2, '2020-12-30 20:39:42');
INSERT INTO `tbl_attendance` VALUES (1108, 27, '2020-12-30 20:39:46');
INSERT INTO `tbl_attendance` VALUES (1109, 3, '2020-12-30 20:40:00');
INSERT INTO `tbl_attendance` VALUES (1110, 11, '2020-12-30 20:41:24');
INSERT INTO `tbl_attendance` VALUES (1111, 23, '2020-12-30 20:42:29');
INSERT INTO `tbl_attendance` VALUES (1112, 22, '2020-12-30 20:43:00');
INSERT INTO `tbl_attendance` VALUES (1113, 22, '2020-12-30 20:43:01');
INSERT INTO `tbl_attendance` VALUES (1114, 5, '2020-12-30 21:20:14');
INSERT INTO `tbl_attendance` VALUES (1115, 9, '2020-12-30 21:20:19');
INSERT INTO `tbl_attendance` VALUES (1116, 19, '2020-12-30 21:20:22');
INSERT INTO `tbl_attendance` VALUES (1117, 7, '2020-12-30 21:23:10');
INSERT INTO `tbl_attendance` VALUES (1118, 6, '2020-12-30 21:26:02');
INSERT INTO `tbl_attendance` VALUES (1119, 5, '2020-12-31 08:35:47');
INSERT INTO `tbl_attendance` VALUES (1120, 27, '2020-12-31 08:47:30');
INSERT INTO `tbl_attendance` VALUES (1121, 9, '2020-12-31 08:47:42');
INSERT INTO `tbl_attendance` VALUES (1122, 10, '2020-12-31 08:48:31');
INSERT INTO `tbl_attendance` VALUES (1123, 8, '2020-12-31 08:51:05');
INSERT INTO `tbl_attendance` VALUES (1124, 19, '2020-12-31 08:51:12');
INSERT INTO `tbl_attendance` VALUES (1125, 3, '2020-12-31 08:55:53');
INSERT INTO `tbl_attendance` VALUES (1126, 2, '2020-12-31 08:56:19');
INSERT INTO `tbl_attendance` VALUES (1127, 26, '2020-12-31 08:56:21');
INSERT INTO `tbl_attendance` VALUES (1128, 25, '2020-12-31 08:56:25');
INSERT INTO `tbl_attendance` VALUES (1129, 7, '2020-12-31 08:56:50');
INSERT INTO `tbl_attendance` VALUES (1130, 24, '2020-12-31 08:58:39');
INSERT INTO `tbl_attendance` VALUES (1131, 6, '2020-12-31 08:58:43');
INSERT INTO `tbl_attendance` VALUES (1132, 11, '2020-12-31 08:58:48');
INSERT INTO `tbl_attendance` VALUES (1133, 22, '2020-12-31 08:59:18');
INSERT INTO `tbl_attendance` VALUES (1134, 4, '2020-12-31 08:59:33');
INSERT INTO `tbl_attendance` VALUES (1135, 1, '2020-12-31 09:06:05');

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
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_business
-- ----------------------------
INSERT INTO `tbl_business` VALUES (14, 116976458, '2020-12-28 13:26:24', '商标', '叫了只鸡', '餐饮住宿、养老托儿、动物食宿', '商标注册申请', '3000', '700', NULL, 'Enzo', '2020-12-28 05:29:04', 'Enzo', '2020-12-28 15:35:39', 81, '叫了只鸡商标注册');
INSERT INTO `tbl_business` VALUES (15, 548431341, '2020-11-28 14:01:42', '版权', '版权申请', '餐饮住宿、养老托儿、动物食宿', '商标专用权质权登记申请', '4000', '800', NULL, 'Enzo', '2020-12-28 06:03:07', 'Enzo', '2020-12-28 15:35:55', 81, '');
INSERT INTO `tbl_business` VALUES (16, 512201228, '2020-12-28 14:54:01', '商标', '商标异议申请', '机械设备、马达、传动', '商标异议申请', '1500', '500', NULL, 'Back', '2020-12-28 14:56:19', 'Back', '2020-12-28 14:56:33', 83, '无');
INSERT INTO `tbl_business` VALUES (17, 522101228, '2020-08-28 15:03:22', '商标', '宋河酒业', '酒、含酒精饮料', '更正商标申请/注册事项申请', '2000', '500', NULL, 'Back', '2020-12-28 15:05:04', 'Back', '2020-12-28 15:17:39', 84, '宋河酒业');
INSERT INTO `tbl_business` VALUES (18, 632102849, '2020-06-28 15:08:52', '商标', '乔氏广告', '广告、商业管理、市场营销', '商标注册申请', '2300', '600', NULL, 'Back', '2020-12-28 15:11:49', 'Enzo', '2020-12-29 08:08:31', 85, '乔氏广告');
INSERT INTO `tbl_business` VALUES (19, 435231223, '2020-10-01 15:21:10', '商标', '安徽瑞蒙科技', '研发质控、IT服务、建筑咨询', '更正商标申请/注册事项申请', '3000', '800', NULL, 'Ivan', '2020-12-28 15:22:31', NULL, NULL, 86, '安徽瑞蒙科技');
INSERT INTO `tbl_business` VALUES (20, 344786552, '2020-07-01 15:26:02', '商标', '亚圣科技', '生鲜、动植物、饲料种子', '商标异议申请', '2500', '550', NULL, 'Ivan', '2020-12-28 15:27:10', NULL, NULL, 87, '亚圣科技');
INSERT INTO `tbl_business` VALUES (21, 332140971, '2020-12-28 15:30:21', '商标', '酷玩童年教育咨询', '玩具、体育健身器材、钓具', '商标使用许可备案', '4000', '1000', NULL, 'Ivan', '2020-12-28 15:31:50', NULL, NULL, 88, '商标使用许可');
INSERT INTO `tbl_business` VALUES (22, 610819201, '2020-09-28 15:37:09', '商标', '长欣道路运输', '运输仓储、能源分配、旅行服务', '变更商标代理人/文件接收人申请', '5000', '1000', NULL, 'Epic', '2020-12-28 15:38:18', NULL, NULL, 89, '长欣道路运输');
INSERT INTO `tbl_business` VALUES (23, 836264026, '2020-06-29 16:04:08', '商标', '嫩牛五方', '餐饮住宿、养老托儿、动物食宿', '商标注册申请', '7000', '3000', NULL, 'Enzo', '2020-12-29 08:05:54', NULL, NULL, 89, '嫩牛五方商标注册');
INSERT INTO `tbl_business` VALUES (24, 234759325, '2020-12-29 16:05:58', '版权', '嫩牛五方', '餐饮住宿、养老托儿、动物食宿', '商标专用权质权登记事项变更申请', '3000', '1000', NULL, 'Enzo', '2020-12-29 08:07:30', NULL, NULL, 89, '版权变更');
INSERT INTO `tbl_business` VALUES (25, 854795159, '2020-04-29 23:46:41', '商标', '全球通用毛线', '纱、线、丝', '商标注册申请', '10000', '8000', NULL, 'Square', '2020-12-29 15:48:48', 'Square', '2020-12-29 15:51:16', 90, '');
INSERT INTO `tbl_business` VALUES (26, 852951753, '2020-04-29 23:54:58', '专利', '通用毛线专利', '纱、线、丝', '商标专用权质权登记申请', '18888', '9000', NULL, 'Square', '2020-12-29 15:57:55', 'Square', '2020-12-29 16:01:10', 90, '通用毛线专利申请');

-- ----------------------------
-- Table structure for tbl_custom
-- ----------------------------
DROP TABLE IF EXISTS `tbl_custom`;
CREATE TABLE `tbl_custom`  (
  `custom_id` int NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '联系人姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applicant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '申请人',
  `custom_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮寄地址',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '当前登录人的loginName，创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `proxy_id` int NOT NULL COMMENT '代理人ID',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`custom_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_custom
-- ----------------------------
INSERT INTO `tbl_custom` VALUES (81, '李丹阳', '13253590568', '', '李丹阳', '河南省郑州市郑州大学', 'Enzo', '2020-12-28 05:25:43', NULL, NULL, 4, '我的第一个正式用户');
INSERT INTO `tbl_custom` VALUES (82, '亢艺涵', '13254689908', '', '亢艺涵', '河南省周口', 'Enzo', '2020-12-28 06:04:36', NULL, NULL, 4, '我的第二个客户');
INSERT INTO `tbl_custom` VALUES (83, '张真', '13585679912', '', '张真', '禹州市瑶飞机械有限公司', 'Back', '2020-12-28 14:53:52', 'Back', '2020-12-28 15:16:52', 3, '禹州市瑶飞机械有限公司');
INSERT INTO `tbl_custom` VALUES (84, '吴鑫', '15936003780', '', '吴鑫', '河南省鹿邑县产业集聚区宋河酒业', 'Back', '2020-12-28 15:03:17', 'Back', '2020-12-28 15:16:47', 3, '河南省鹿邑县产业集聚区宋河酒业');
INSERT INTO `tbl_custom` VALUES (85, '乔永秀', '13523595089', '', '乔永秀', '河南省郑州市市辖区郑东新区平安大道210号中国中原大学生创业孵化园二层S0501号', 'Back', '2020-12-28 15:08:40', NULL, NULL, 3, '中原大学生创业孵化园二层S0501号');
INSERT INTO `tbl_custom` VALUES (86, '邹  雪', '18305606824', '', '邹  雪', '安徽省亳州市蒙城县纬三路与安驰大道交叉口', 'Ivan', '2020-12-28 15:20:59', NULL, NULL, 2, '安徽瑞蒙科技有限公司');
INSERT INTO `tbl_custom` VALUES (87, '张玉生', '15225328578', '', '张玉生', '河南亚圣生物科技有限公司', 'Ivan', '2020-12-28 15:25:57', NULL, NULL, 2, '河南亚圣生物科技有限公司');
INSERT INTO `tbl_custom` VALUES (88, '郭善云', '13939431515', '', '郭善云', '河南酷玩童年教育咨询有限公司', 'Ivan', '2020-12-28 15:30:16', NULL, NULL, 2, '河南酷玩童年教育咨询有限公司');
INSERT INTO `tbl_custom` VALUES (89, '李杰', '15225328578', '', '李杰', '庆阳市长欣道路运输有限公司', 'Epic', '2020-12-28 15:37:05', NULL, NULL, 19, '庆阳市长欣道路运输有限公司');
INSERT INTO `tbl_custom` VALUES (90, '皮皮侯', '13258869966', '', '皮皮侯', '郑州大学', 'Enzo', '2020-12-29 15:43:44', NULL, NULL, 4, '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES (101, '研发部门', 1, '0', '0', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00');
INSERT INTO `tbl_dept` VALUES (102, '市场部门', 2, '0', '0', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00');
INSERT INTO `tbl_dept` VALUES (103, '测试部门', 3, '0', '0', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2020-12-24 10:27:48');
INSERT INTO `tbl_dept` VALUES (104, '财务部门', 4, '0', '0', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00');
INSERT INTO `tbl_dept` VALUES (105, '运维部门', 5, '0', '0', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dictionary_type
-- ----------------------------
INSERT INTO `tbl_dictionary_type` VALUES (1, '商标分类', 'Enzo', '2020-12-23 11:22:36', NULL, NULL, NULL);
INSERT INTO `tbl_dictionary_type` VALUES (2, '一级业务类型', 'Enzo', '2020-12-23 11:22:39', NULL, NULL, NULL);
INSERT INTO `tbl_dictionary_type` VALUES (3, '二级业务类型', 'Enzo', '2020-12-23 11:22:42', NULL, NULL, NULL);
INSERT INTO `tbl_dictionary_type` VALUES (4, '进度类型', 'Enzo', '2020-12-23 11:22:44', NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1024 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES (1, '客户管理', 0, 2, '#', 'M', '0', '', 'layui-icon layui-icon-user', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `tbl_menu` VALUES (2, '统计分析', 0, 5, '#', 'M', '0', '', 'layui-icon layui-icon-chart-screen', 'Enzo', '2020-12-29 11:38:57', NULL, NULL, '统计分析');
INSERT INTO `tbl_menu` VALUES (3, '系统管理', 0, 1, '#', 'M', '0', '', 'layui-icon layui-icon-app', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `tbl_menu` VALUES (4, '业务字典', 0, 4, '#', 'M', '0', '', 'layui-icon layui-icon-read', 'Enzo', '2020-12-23 18:56:38', 'Enzo', NULL, '字典管理');
INSERT INTO `tbl_menu` VALUES (100, '用户管理', 3, 1, '/user/toUser', 'C', '0', 'system:user:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `tbl_menu` VALUES (101, '角色管理', 3, 2, '/role/toRole', 'C', '0', 'system:role:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `tbl_menu` VALUES (102, '菜单管理', 3, 3, '/menu/toMenu', 'C', '0', 'system:menu:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `tbl_menu` VALUES (103, '部门管理', 3, 4, '/dept/toDept', 'C', '0', 'system:dept:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `tbl_menu` VALUES (109, '客户列表', 1, 1, '/custom/toCustom', 'C', '0', 'monitor:online:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `tbl_menu` VALUES (111, '业务列表', 1, 2, '/business/toBusiness', 'C', '0', 'monitor:data:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `tbl_menu` VALUES (112, '进度列表', 1, 3, '/progress/toProgress', 'C', '0', 'monitor:server:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `tbl_menu` VALUES (113, '回访信息', 1, 4, '/visit/toVisit', 'C', '0', '', '#', 'Enzo', '2020-12-24 09:31:13', 'Enzo', NULL, '回访信息');
INSERT INTO `tbl_menu` VALUES (114, '字典类型', 4, 1, '/dictionaryType/toDictionaryType', 'C', '0', '', '#', 'Enzo', '2020-12-23 18:59:34', 'Enzo', NULL, '字典类型');
INSERT INTO `tbl_menu` VALUES (115, '字典种类', 4, 2, '/dictionary/toDictionary', 'C', '0', '', '#', 'Enzo', '2020-12-23 19:00:43', 'Enzo', NULL, '字典种类');
INSERT INTO `tbl_menu` VALUES (1000, '用户查询', 100, 1, '#', 'F', '0', 'system:user:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1001, '用户新增', 100, 2, '#', 'F', '0', 'system:user:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1002, '用户修改', 100, 3, '#', 'F', '0', 'system:user:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1003, '用户删除', 100, 4, '#', 'F', '0', 'system:user:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1004, '用户导出', 100, 5, '#', 'F', '0', 'system:user:export', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1005, '重置密码', 100, 6, '#', 'F', '0', 'system:user:resetPwd', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1006, '角色查询', 101, 1, '#', 'F', '0', 'system:role:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1007, '角色新增', 101, 2, '#', 'F', '0', 'system:role:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1008, '角色修改', 101, 3, '#', 'F', '0', 'system:role:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1009, '角色删除', 101, 4, '#', 'F', '0', 'system:role:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1010, '角色导出', 101, 5, '#', 'F', '0', 'system:role:export', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1011, '菜单查询', 102, 1, '#', 'F', '0', 'system:menu:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1012, '菜单新增', 102, 2, '#', 'F', '0', 'system:menu:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1013, '菜单修改', 102, 3, '#', 'F', '0', 'system:menu:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1014, '菜单删除', 102, 4, '#', 'F', '0', 'system:menu:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1015, '部门查询', 103, 1, '#', 'F', '0', 'system:dept:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1016, '部门新增', 103, 2, '#', 'F', '0', 'system:dept:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1017, '部门修改', 103, 3, '#', 'F', '0', 'system:dept:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1018, '部门删除', 103, 4, '#', 'F', '0', 'system:dept:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1020, '业务分析', 2, 1, '/statistical/toBusinessEchart', 'C', '0', '', '#', 'Enzo', '2020-12-29 11:40:28', NULL, NULL, '业务分析');
INSERT INTO `tbl_menu` VALUES (1021, '进度分析', 2, 2, '/statistical/toProgressEchart', 'C', '0', '', '#', 'Enzo', '2020-12-29 11:41:22', NULL, NULL, '进度分析');
INSERT INTO `tbl_menu` VALUES (1022, '回访分析', 2, 3, '/statistical/toVisitEchart', 'C', '0', '', '#', 'Enzo', '2020-12-29 11:42:04', NULL, NULL, '回访分析');
INSERT INTO `tbl_menu` VALUES (1023, '考勤分析', 2, 4, '/statistical/toAttendance', 'C', '0', '', '#', 'Enzo', '2020-12-29 13:14:11', NULL, NULL, '考勤分析');
INSERT INTO `tbl_menu` VALUES (1024, '考勤列表', 2, 5, '/statistical/toAttendanceTable', 'C', '0', '', '#', 'Enzo', '2020-12-29 20:32:10', NULL, NULL, '考勤列表');

-- ----------------------------
-- Table structure for tbl_potential_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_potential_customer`;
CREATE TABLE `tbl_potential_customer`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '潜在客户id',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_potential_customer
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_progress
-- ----------------------------
DROP TABLE IF EXISTS `tbl_progress`;
CREATE TABLE `tbl_progress`  (
  `progress_id` int NOT NULL AUTO_INCREMENT,
  `progress_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '进度类型下拉字典',
  `upload` int NULL DEFAULT NULL COMMENT '上传文件，关联文件上传表',
  `notice` int NULL DEFAULT NULL COMMENT '通知文件，关联文件上传表',
  `business_id` int NOT NULL COMMENT '业务id，关联业务表',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`progress_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_progress
-- ----------------------------
INSERT INTO `tbl_progress` VALUES (48, '公告', 23, NULL, 14, 'Enzo', '2020-12-29 20:16:23', 'Enzo', '2020-12-29 22:09:38', '叫了只鸡公告');
INSERT INTO `tbl_progress` VALUES (49, '商标申请受通', NULL, 24, 14, 'Enzo', '2020-12-29 20:17:05', NULL, NULL, '商标申请成功通知');
INSERT INTO `tbl_progress` VALUES (50, '商标申请受通', NULL, 25, 14, 'Enzo', '2020-12-29 20:22:04', NULL, NULL, '叫了只鸡通知问件');
INSERT INTO `tbl_progress` VALUES (51, '商标申请受通', NULL, 26, 17, 'Enzo', '2020-12-29 20:23:44', NULL, NULL, '酒业公司');
INSERT INTO `tbl_progress` VALUES (52, '商标申请受通', 27, NULL, 17, 'Enzo', '2020-12-29 20:26:57', NULL, NULL, '酒业公司申请受通');
INSERT INTO `tbl_progress` VALUES (53, '商标申请受通', 28, NULL, 15, 'Enzo', '2020-12-29 20:35:27', NULL, NULL, '版权申请');
INSERT INTO `tbl_progress` VALUES (54, '商标申请受通', NULL, 29, 15, 'Enzo', '2020-12-29 20:36:24', NULL, NULL, '版权申请通知');
INSERT INTO `tbl_progress` VALUES (55, '下证', 30, NULL, 16, 'Enzo', '2020-12-29 22:05:25', NULL, NULL, '商标异议申请成功,下证');
INSERT INTO `tbl_progress` VALUES (56, '领证书', NULL, 31, 14, 'Enzo', '2020-12-29 22:10:32', NULL, NULL, '叫了只鸡领证书');
INSERT INTO `tbl_progress` VALUES (57, '商标申请受通', 32, NULL, 25, 'Square', '2020-12-29 23:49:35', NULL, NULL, '跨国毛线专用商标注册');
INSERT INTO `tbl_progress` VALUES (58, '公告', NULL, 33, 25, 'Square', '2020-12-29 23:50:16', NULL, NULL, '');
INSERT INTO `tbl_progress` VALUES (59, '下证', 34, NULL, 15, 'Enzo', '2020-12-31 10:48:25', NULL, NULL, '成功');
INSERT INTO `tbl_progress` VALUES (60, '公告', 35, NULL, 18, 'Enzo', '2020-12-31 10:53:29', NULL, NULL, '申请不合格');
INSERT INTO `tbl_progress` VALUES (61, '撤三复审', 36, NULL, 17, 'Enzo', '2020-12-31 10:56:04', NULL, NULL, '三审');
INSERT INTO `tbl_progress` VALUES (62, '撤三复审', NULL, 37, 17, 'Enzo', '2020-12-31 10:56:04', NULL, NULL, '三审');
INSERT INTO `tbl_progress` VALUES (63, '驳回复审申请', 38, NULL, 23, 'Enzo', '2020-12-31 11:03:32', NULL, NULL, '驳回复审申请');
INSERT INTO `tbl_progress` VALUES (64, '驳回复审申请', NULL, 39, 23, 'Enzo', '2020-12-31 11:03:32', NULL, NULL, '驳回复审申请');
INSERT INTO `tbl_progress` VALUES (65, '领证书', 40, NULL, 18, 'Enzo', '2020-12-31 11:06:23', 'Enzo', '2020-12-31 15:16:24', '领证书文件上传');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES (1, '管理员', 'admin', 1, '0', '0', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '管理员');
INSERT INTO `tbl_role` VALUES (2, '普通角色', 'common', 2, '0', '0', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2020-12-28 13:21:47', '普通角色');

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
INSERT INTO `tbl_role_menu` VALUES (1, 1020);
INSERT INTO `tbl_role_menu` VALUES (1, 1021);
INSERT INTO `tbl_role_menu` VALUES (1, 1022);
INSERT INTO `tbl_role_menu` VALUES (1, 1023);
INSERT INTO `tbl_role_menu` VALUES (1, 1024);
INSERT INTO `tbl_role_menu` VALUES (2, 1);
INSERT INTO `tbl_role_menu` VALUES (2, 2);
INSERT INTO `tbl_role_menu` VALUES (2, 109);
INSERT INTO `tbl_role_menu` VALUES (2, 111);
INSERT INTO `tbl_role_menu` VALUES (2, 112);
INSERT INTO `tbl_role_menu` VALUES (2, 113);
INSERT INTO `tbl_role_menu` VALUES (2, 1020);
INSERT INTO `tbl_role_menu` VALUES (2, 1021);
INSERT INTO `tbl_role_menu` VALUES (2, 1022);
INSERT INTO `tbl_role_menu` VALUES (2, 1023);
INSERT INTO `tbl_role_menu` VALUES (2, 1024);

-- ----------------------------
-- Table structure for tbl_upload
-- ----------------------------
DROP TABLE IF EXISTS `tbl_upload`;
CREATE TABLE `tbl_upload`  (
  `upload_id` int NOT NULL AUTO_INCREMENT COMMENT '即文件ID，为方便识别命名为表名_id',
  `source_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原文件名',
  `destination_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '服务器文件名',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_upload
-- ----------------------------
INSERT INTO `tbl_upload` VALUES (23, '叫了只鸡公告.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609250967685[I@374cbfe5.rar');
INSERT INTO `tbl_upload` VALUES (24, '商标申请通知.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609244212590[I@21fc55b0.rar');
INSERT INTO `tbl_upload` VALUES (25, '叫了只鸡通知问件.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609244507855[I@4a21ba0f.rar');
INSERT INTO `tbl_upload` VALUES (26, '酒业公司.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609244619741[I@59b418c6.rar');
INSERT INTO `tbl_upload` VALUES (27, '酒业公司申请受通.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609244812618[I@7e930063.rar');
INSERT INTO `tbl_upload` VALUES (28, '版权申请.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609245323646[I@53d4b821.rar');
INSERT INTO `tbl_upload` VALUES (29, '版权申请通知.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609245378610[I@64b31c29.rar');
INSERT INTO `tbl_upload` VALUES (30, '商标异议申请成功.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609250713949[I@63c0674c.rar');
INSERT INTO `tbl_upload` VALUES (31, '叫了只鸡领证书.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609251022756[I@46dc024b.rar');
INSERT INTO `tbl_upload` VALUES (32, '跨国毛线专用商标.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609256965433[I@261f6139.rar');
INSERT INTO `tbl_upload` VALUES (33, '跨国毛线公告通知.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609257013317[I@384ac032.rar');
INSERT INTO `tbl_upload` VALUES (34, '下证.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/31/1609382884303[I@59d9f93.rar');
INSERT INTO `tbl_upload` VALUES (35, '申请不合格.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/31/1609383182647[I@68264fd0.rar');
INSERT INTO `tbl_upload` VALUES (36, '撤三复审上传文件.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/31/1609383332391[I@59deb092.rar');
INSERT INTO `tbl_upload` VALUES (37, '撤三复审通知文件.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/31/1609383353039[I@3c837dfb.rar');
INSERT INTO `tbl_upload` VALUES (38, '驳回复审申请上传文件.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/31/1609383783420[I@4bb7099d.rar');
INSERT INTO `tbl_upload` VALUES (39, '驳回复审申请通知文件.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/31/1609383796816[I@4a682547.rar');
INSERT INTO `tbl_upload` VALUES (40, '领证书.rar', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/31/1609398982907[I@169b80db.rar');

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
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (2, 102, 'ivan', 'Ivan', 'ivanshare@163.com', '13253590389', '0', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/30/1609298785937[I@37443111.jpeg', '8fb6fad441e465ee6d0bfb51dc920a28', '98cc378b-094a-4310-8305-625790edbfba', '0', '0', 'Enzo', '2020-12-28 13:53:27', 'Enzo', '2020-12-30 11:26:30', NULL);
INSERT INTO `tbl_user` VALUES (3, 103, 'back', 'Back', 'backshare@163.com', '13253597890', '0', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/30/1609299460027[I@8e1f273.jpg', 'cc2dff56b3a4c427bfaf22b3aaeb84d5', 'a10ea41d-104a-43a7-8dce-1067e909c9b0', '0', '0', 'Enzo', '2020-12-28 13:54:18', NULL, '2020-12-30 11:37:43', NULL);
INSERT INTO `tbl_user` VALUES (4, 101, 'enzo', 'Enzo', 'enzopowershare@163.com', '13253590339', '0', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/28/1609132705265[I@5eb832eb.jpg', '24134f2d7c3ff8cdfa6d6e2966d56501', '86c9e924-6bd7-46f8-9db4-76c6c6c3862f', '0', '0', 'Enzo', '2020-12-28 12:59:04', 'Enzo', '2020-12-30 11:22:16', '管理员');
INSERT INTO `tbl_user` VALUES (5, 101, 'river', 'River', 'rivershare@163.com', '13253599510', '0', NULL, '0a3195e988709c892401a79cd9f98440', '10088728-b6a2-4861-adf7-e63e401954dc', '0', '0', 'Enzo', '2020-12-28 13:59:28', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (6, 101, 'luka', 'Luka', 'lukashare@163.com', '13568897809', '0', NULL, 'd4ceec85c0ce04ec96c77788208ab046', '6bc4014a-c112-425b-ba7b-412f3d67b854', '0', '0', 'Enzo', '2020-12-30 18:51:05', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (7, 101, 'hoyo', 'Hoyo', 'hoyoshare@163.com', '13836894675', '0', NULL, 'f53d89d11c3277be9c1feff9c02a69ae', '12b295fd-e259-4f0e-a92d-35cf5cf5714e', '0', '0', 'Enzo', '2020-12-30 18:59:33', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (8, 101, 'keeno', 'Keeno', 'keenoshare@163.com', '13258618899', '0', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/29/1609256753494[I@3a2ca901.jpg', '45a3afb75e5763ed74d7268c0e0c0cb9', 'f3f7be61-0fd9-44a3-9b3d-473a44513c72', '0', '0', 'Enzo', '2020-12-29 23:42:02', 'Enzo', '2020-12-30 18:42:28', NULL);
INSERT INTO `tbl_user` VALUES (9, 101, 'bee', 'Bee', 'beeshare@163.com', '13253590999', '0', NULL, '81effb28368e625d87f884123cc845a2', '5c93e817-c1e3-4554-b0a9-aad647504a30', '0', '0', 'Enzo', '2020-12-30 18:43:22', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (10, 105, 'nemo', 'Nemo', 'nemoshare@163.com', '13253598520', '0', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/30/1609299937190[I@2aa30a98.jpg', '4c60c62d8100e39f33146fe3dd91220c', 'f61006be-ad4a-4e75-9e1e-e252dcfb6e94', '0', '0', 'Enzo', '2020-12-28 13:56:13', NULL, '2020-12-30 11:45:38', NULL);
INSERT INTO `tbl_user` VALUES (11, 101, 'myth', 'Myth', 'mythshare@163.com', '13253599630', '0', NULL, '2299392cb89b2084bb24d367b25c4e3d', 'b67fa48d-2e80-4344-99e1-b3fecbe2f880', '0', '0', 'Enzo', '2020-12-28 13:58:46', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (12, 101, 'borna', 'Borna', 'bornashare@163.com', '13253597952', '0', NULL, 'b35baef1655d81d98bae3f8127d1c21c', '06f4dcd6-8b7e-4530-85aa-f496211c8277', '0', '0', 'Enzo', '2020-12-28 14:00:42', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (19, 104, 'epic', 'Epic', 'epicshare@163.com', '13253591230', '0', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/30/1609299713090[I@4c84b705.jpg', '143e361f61b432ebdcccfaa2d254c3c5', '18ad998e-77ef-42bb-b4cd-03d0215149d7', '0', '0', 'Enzo', '2020-12-28 13:55:13', NULL, '2020-12-30 11:41:54', NULL);
INSERT INTO `tbl_user` VALUES (21, 101, 'percy', 'Percy', 'percyshare@163.com', '13256785432', '0', NULL, '7973392ad66dcffb5edff1319ce989a9', 'a13d1ee7-b6e2-4a37-a354-39eef8860adb', '0', '0', 'Enzo', '2020-12-30 18:44:38', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (22, 101, 'hodor', 'Hodor', 'hodorshare@163.com', '13253597410', '0', 'https://enzo-trademark-bucket.oss-cn-beijing.aliyuncs.com/myFile/2020/12/30/1609301344614[I@7b010dbd.jpg', '0cce16583129cf34e034795c75e8dea7', '8884d3f1-d8ea-44c4-b812-ae1bad8f62f0', '0', '0', 'Enzo', '2020-12-28 13:57:36', NULL, '2020-12-30 12:09:09', NULL);
INSERT INTO `tbl_user` VALUES (23, 101, 'eukie', 'Eukie', 'eukieshare@163.com', '13258674585', '0', NULL, 'ea4898662b0addfbf1e7349b41437d40', '9d368768-bef3-410e-a356-01fbeb8db84e', '0', '0', 'Enzo', '2020-12-31 11:14:55', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (24, 101, 'maple', 'Maple', 'mapleshare@163.com', '13269543590', '0', NULL, 'e8840635796a7cb6afb81059de9b41c1', '5c1f506c-f4ab-4a3d-8bcf-61773cca5ad5', '0', '0', 'Enzo', '2020-12-30 18:46:30', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (25, 101, 'hunk', 'Hunk', 'hunkshare@163.com', '13286873495', '0', NULL, '31f1931b6942174900f527017a9d9e12', '6fbe5c73-fd3d-40ef-aec8-3ec039afaf10', '0', '0', 'Enzo', '2020-12-30 18:48:13', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (26, 101, 'falli', 'Falli', 'fallishare@163.com', '13527669055', '0', NULL, '0f8ea2bb56e721094300c5c56415893c', 'fad19c19-465a-4012-9899-c20f92bfc975', '0', '0', 'Enzo', '2020-12-30 18:49:07', NULL, NULL, NULL);
INSERT INTO `tbl_user` VALUES (27, 101, 'george', 'George', 'georgeshare@163.com', '13734688857', '0', NULL, 'baeb1863ca0caffcd4326dbd38f64373', 'afe985aa-b369-41d5-bf77-19616f7accab', '0', '0', 'Enzo', '2020-12-30 18:50:27', NULL, NULL, NULL);

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
INSERT INTO `tbl_user_role` VALUES (2, 1);
INSERT INTO `tbl_user_role` VALUES (3, 1);
INSERT INTO `tbl_user_role` VALUES (4, 1);
INSERT INTO `tbl_user_role` VALUES (5, 2);
INSERT INTO `tbl_user_role` VALUES (6, 2);
INSERT INTO `tbl_user_role` VALUES (7, 2);
INSERT INTO `tbl_user_role` VALUES (8, 2);
INSERT INTO `tbl_user_role` VALUES (9, 2);
INSERT INTO `tbl_user_role` VALUES (10, 2);
INSERT INTO `tbl_user_role` VALUES (11, 2);
INSERT INTO `tbl_user_role` VALUES (12, 2);
INSERT INTO `tbl_user_role` VALUES (19, 1);
INSERT INTO `tbl_user_role` VALUES (21, 2);
INSERT INTO `tbl_user_role` VALUES (22, 2);
INSERT INTO `tbl_user_role` VALUES (24, 2);
INSERT INTO `tbl_user_role` VALUES (25, 2);
INSERT INTO `tbl_user_role` VALUES (26, 2);
INSERT INTO `tbl_user_role` VALUES (27, 2);
INSERT INTO `tbl_user_role` VALUES (28, 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_visit
-- ----------------------------
INSERT INTO `tbl_visit` VALUES (1, '回访的主要目的', 81, 'Enzo', '2020-12-28 05:49:13', NULL, NULL, '主要目的完成情况');
INSERT INTO `tbl_visit` VALUES (2, '客户第一次回访', 83, 'Back', '2020-12-28 15:01:52', NULL, NULL, '第一次回访');
INSERT INTO `tbl_visit` VALUES (3, '客户评价', 83, 'Back', '2020-11-01 15:02:26', 'Back', '2020-12-28 15:02:32', '客户评价');
INSERT INTO `tbl_visit` VALUES (4, '业务评价', 84, 'Back', '2020-10-01 15:14:55', NULL, NULL, '业务评价');
INSERT INTO `tbl_visit` VALUES (5, '业务的第二次回访', 84, 'Back', '2020-10-01 15:15:44', NULL, NULL, '业务的第二次回访');
INSERT INTO `tbl_visit` VALUES (6, '业务评价', 86, 'Ivan', '2020-12-28 15:24:41', NULL, NULL, '业务评价');
INSERT INTO `tbl_visit` VALUES (7, '业务评价', 88, 'Ivan', '2020-12-28 15:33:30', NULL, NULL, '业务评价');
INSERT INTO `tbl_visit` VALUES (8, '业务评价', 85, 'Epic', '2020-12-28 15:39:23', NULL, NULL, '业务评价');
INSERT INTO `tbl_visit` VALUES (9, '询问顾客需要申请新的商标吗', 81, 'Enzo', '2020-12-30 10:26:55', NULL, NULL, '不需要');
INSERT INTO `tbl_visit` VALUES (10, '询问顾客需要申请新的权限吗', 81, 'Enzo', '2020-11-01 10:27:23', NULL, NULL, '需要');
INSERT INTO `tbl_visit` VALUES (11, '询问顾客需要申请新的专利吗', 81, 'Enzo', '2020-10-01 10:27:35', NULL, NULL, '需要');
INSERT INTO `tbl_visit` VALUES (12, '给客户提供专利申请咨询', 81, 'Enzo', '2020-09-01 10:28:18', NULL, NULL, '客户表示很满意');
INSERT INTO `tbl_visit` VALUES (13, '请客户吃饭，边吃饭边谈生意', 81, 'Enzo', '2020-10-01 10:30:03', NULL, NULL, '可以');
INSERT INTO `tbl_visit` VALUES (14, '询问服务是否达到用户满意', 90, 'Enzo', '2020-06-01 13:27:59', NULL, NULL, '十分满意，并表示有业务还来这');
INSERT INTO `tbl_visit` VALUES (15, '询问是否需要新的服务', 90, 'Enzo', '2020-05-01 13:29:18', NULL, NULL, '是，表示想申请毛线的所有专利');
INSERT INTO `tbl_visit` VALUES (16, '再次回访用户满意度', 90, 'Enzo', '2020-04-01 13:30:41', NULL, NULL, '很满意');
INSERT INTO `tbl_visit` VALUES (17, '提供专利申请服务', 90, 'Enzo', '2020-04-01 13:31:10', NULL, NULL, '觉得ok');

SET FOREIGN_KEY_CHECKS = 1;
