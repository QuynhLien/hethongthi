/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : hethongthi

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 23/09/2022 16:48:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for core
-- ----------------------------
DROP TABLE IF EXISTS `core`;
CREATE TABLE `core`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp(0) NOT NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of core
-- ----------------------------
INSERT INTO `core` VALUES (1, 'Kaiwa đợt 1', '2022-09-23 14:40:00', 0, '2022-09-23 14:40:00', '2022-09-23 14:40:00', NULL);
INSERT INTO `core` VALUES (2, 'Kaiwa đợt 2', '2021-09-13 15:57:55', 0, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `core` VALUES (3, 'Kaiwa đợt 3', '2021-09-13 15:57:55', 0, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `core` VALUES (4, 'Kaiwa đợt 4', '2021-09-13 15:57:55', 0, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `core` VALUES (5, 'Kaiwa đợt 5', '2021-09-13 15:57:55', 0, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  `time` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES (1, 1, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (2, 1, '記録力', 2, 105, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (3, 1, '聞き取る・反射', 3, 60, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (4, 1, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (5, 2, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (6, 2, '記録力', 2, 105, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (7, 2, '聞き取る・反射', 3, 60, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (8, 2, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (9, 3, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (10, 3, '記録力', 2, 105, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (11, 3, '聞き取る・反射', 3, 60, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (12, 3, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (13, 4, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (14, 4, '記録力', 2, 105, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (15, 4, '聞き取る・反射', 3, 60, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (16, 4, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (17, 5, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `group` VALUES (18, 5, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (19, 5, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (20, 5, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (21, 6, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (22, 6, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (23, 6, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (24, 6, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (25, 7, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (26, 7, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (27, 7, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (28, 7, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (29, 8, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (30, 8, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (31, 8, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (32, 8, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (33, 9, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (34, 9, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (35, 9, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (36, 9, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (37, 10, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (38, 10, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (39, 10, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (40, 10, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (41, 11, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (42, 11, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (43, 11, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (44, 11, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (45, 12, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (46, 12, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (47, 12, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (48, 12, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (49, 13, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (50, 13, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (51, 13, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (52, 13, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (53, 14, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (54, 14, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (55, 14, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (56, 14, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (57, 15, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (58, 15, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (59, 15, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (60, 15, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (61, 16, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (62, 16, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (63, 16, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (64, 16, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (65, 17, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (66, 17, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (67, 17, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (68, 17, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (69, 18, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (70, 18, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (71, 18, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (72, 18, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (73, 19, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (74, 19, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (75, 19, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (76, 19, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (77, 20, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (78, 20, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (79, 20, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (80, 20, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (81, 21, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (82, 21, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (83, 21, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (84, 21, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (85, 22, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (86, 22, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (87, 22, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (88, 22, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (89, 23, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (90, 23, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (91, 23, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (92, 23, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (93, 24, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (94, 24, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (95, 24, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (96, 24, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (97, 25, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (98, 25, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (99, 25, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (100, 25, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (101, 26, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (102, 26, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (103, 26, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (104, 26, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (105, 27, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (106, 27, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (107, 27, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (108, 27, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (109, 28, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (110, 28, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (111, 28, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (112, 28, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (113, 29, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (114, 29, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (115, 29, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (116, 29, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (117, 30, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (118, 30, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (119, 30, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (120, 30, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (121, 31, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (122, 31, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (123, 31, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (124, 31, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (125, 32, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (126, 32, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (127, 32, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (128, 32, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (129, 33, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (130, 33, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (131, 33, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (132, 33, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (133, 34, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (134, 34, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (135, 34, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (136, 34, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (137, 35, '発音・反射・イントネーション', 1, 90, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (138, 35, '記録力', 2, 105, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (139, 35, '聞き取る・反射', 3, 60, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `group` VALUES (140, 35, 'グループの会話を開始すること', 4, 600, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);

-- ----------------------------
-- Table structure for m_users
-- ----------------------------
DROP TABLE IF EXISTS `m_users`;
CREATE TABLE `m_users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL COMMENT '1: admin system, 2: teacher, 3: student',
  `test_id` int(11) NULL DEFAULT NULL,
  `code` int(11) NULL DEFAULT NULL,
  `remember_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_users
-- ----------------------------
INSERT INTO `m_users` VALUES (1, 'quynhlien', '$2y$10$QYYT0.Tp2NEmXJvtGM/sEeiK4hUVlErShIL8iZVXsZXz1l5GnHvlS', 'Quỳnh Liên', 2, 2, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYWpheFwvbG9naW4iLCJpYXQiOjE2NjM5MjYzMzksIm5iZiI6MTY2MzkyNjMzOSwianRpIjoiRmxsRVVXNWNkcjlkUUhKYiIsInN1YiI6MSwicHJ2IjoiMzMzMjI4NmVmZTU3YmExZmQ5YjUzNDE0MDQ2OTYwMDZkNjZmM2EzZCJ9.UBR4SF90Oxiw5N6N0gu6DrSojFgqVUEso9A4oGKHcXs', '2021-09-13 15:57:55', '2022-09-23 16:45:39', NULL);
INSERT INTO `m_users` VALUES (2, 'quynhanh', '$2y$10$w.B3IKr7hvtPgIMZk.gl7.qTg235WxKy44SphTglHT459SOm2sB72', 'Quỳnh Anh', 2, 2, NULL, NULL, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `m_users` VALUES (3, 'quangtay', '$2y$10$TEg5GnOafOurFI6eCJE3eOS3ZIfVw463.qzU0hbO2Edg6WOTPKhSi', 'Lê Quang Tây', 2, 2, NULL, NULL, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `m_users` VALUES (4, 'hoangphuc', '$2y$10$1kwEKxzGvoCTl8yzCBVWkeM3ZgNAjRO6t8cSdVcMpecZDKlW3lLJ.', 'Bùi Hoàng Phúc', 2, 2, NULL, NULL, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `m_users` VALUES (5, 'student', '$2y$10$PM4t.8XBarXUF3ipb9lHrO5qLM2kfYhVNXkjDEaGA4e/poD850/VW', 'Student', 2, 2, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYWpheFwvbG9naW4iLCJpYXQiOjE2NjM4NDQ3MTcsIm5iZiI6MTY2Mzg0NDcxNywianRpIjoiZmtBZnpibk5HVDFKT1hMViIsInN1YiI6NSwicHJ2IjoiMzMzMjI4NmVmZTU3YmExZmQ5YjUzNDE0MDQ2OTYwMDZkNjZmM2EzZCJ9.FXItk-EbeSisb9Zo2vFzfbrZepI8vsFT2iuPeJmqPBQ', '2021-09-13 15:57:55', '2022-09-22 18:05:17', NULL);
INSERT INTO `m_users` VALUES (6, 'hoangkhang', '$2y$10$oRN33UNbQIYsqu2VV/m35O/HgV6kInKGzgHtoGHjSM.oEZwm20MAa', 'Nguyễn Hoàng Khang', 2, 6, NULL, NULL, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `m_users` VALUES (7, 'minhthuan', '$2y$10$By5kFs9tyIyEcv9VclcrxO0aZvyl0q9afwE.CzfaSyO/vvxOjLNDq', 'Nguyễn Huỳnh Minh Thuận', 2, 3, NULL, NULL, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `m_users` VALUES (8, 'huuduy', '$2y$10$EPLeWA4DduJFCYInvfJPn..U4xalP63A1tIB8dQTE82WIsXXINM/W', 'Trần Hữu Duy', 2, 4, NULL, NULL, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `m_users` VALUES (9, 'macly', '$2y$10$bSGNYN8aCu0ksG8H6WzUV.BVkBoeR.ZNN93AC7BZ4NaW0GRdKynOy', 'Thạch Mạc Ly', 2, 1, NULL, NULL, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `m_users` VALUES (10, 'daihiep', '$2y$10$u6CJsoHlomwG0kuBoNU1CeRSiin76RxLroFWaVOHZzywS7dX5zJwy', 'La Đại Hiệp', 2, 7, NULL, NULL, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `m_users` VALUES (11, 'ngocnam', '$2y$10$zPJYiHGF52QbXSY4NhoLHOQOyUhTqFN8rNeZ4xEtt2HMbaGvCcTOu', 'Phạm Ngọc Nam', 2, 2, NULL, NULL, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `m_users` VALUES (12, 'vantai', '$2y$10$pRCd5fMYNzPdC4dqi/KcNOxKleb4WM5P3CIAUOWwcuIARlgovN5aW', 'Nguyễn Văn Tài', 2, 5, NULL, NULL, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 168 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (163, '2020_11_02_083716_create_users_table', 1);
INSERT INTO `migrations` VALUES (164, '2020_11_02_151247_create_core_table', 1);
INSERT INTO `migrations` VALUES (165, '2020_11_02_151247_create_group_table', 1);
INSERT INTO `migrations` VALUES (166, '2020_11_02_151247_create_question_table', 1);
INSERT INTO `migrations` VALUES (167, '2020_11_02_151247_create_test_table', 1);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `time` int(11) NULL DEFAULT NULL,
  `audio` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, 1, 1, 'A: 日本は　はじめてですか。<br>\r\n            B: いや、３回目です。<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (2, 1, 2, 'A: え～どれ？これ？<br>\r\n            B: うん、それ。<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (3, 1, 3, 'A: 日本に来て、どのぐらいですか？<br>\r\n            B: ３年８ヶ月です。<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (4, 1, 4, 'A: 黄色と赤の花をください。 <br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (5, 1, 5, 'A: ゆかちゃん、じゃーね。 <br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (6, 1, 6, 'A:　ごちそうさまでした。とってもおいしかったです。 <br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (7, 1, 7, 'A: Thưa…tôi xin phép về trước ạ! <br>\r\n            B: Ơ, về à? Sau đây chúng tôi định đi uống đấy… <br>\r\n            A: Tôi xin phép được từ chối ạ! <br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (8, 1, 8, 'A: Nè nè nè! Dự định ngày mai của ông là gì?<br>\r\n            B: Hỏi để làm gì? Khó chịu quá đấy!<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (9, 2, 1, 'A: YUKAchan! Hôm nay có gì đó khác khác nhỉ! <br><br>\r\n            B: Hể? Vậy sao? <br><br>\r\n            A: UH. A không. Hoàn toàn khác… <br><br>\r\n            B: Thật ra, hôm nay, có hẹn hò đấy! Mong chờ quá đây nè!!! <br><br>\r\n            A: Ô vậy à! Hay nhỉ! Phải cái anh Giám đốc bên xí nghiệp IT đấy không? <br><br>\r\n            B: Đúng, đúng, đúng! Vừa hào hoa, vừa thông minh… Kiểu người thật tuyệt!!! <br><br>\r\n            A: Hay quá nhỉ! Ghen tỵ quá đi! <br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (10, 3, 1, 'phase1_3_1.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (11, 3, 2, 'phase1_3_2.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (12, 3, 3, 'phase1_3_3.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (13, 4, 1, 'Bạn hãy tự phát họa cuộc đàm thoại giữa bạn và 1 nhân vật nào đó theo chủ đề sau: <br><br>\r\n            “Bạn nhận được kết quả báo đậu trong kỳ thi tiếng Nhật JLPT, bạn hãy KHOE kết quả thi với họ” <br><br>\r\n            (VD: Bạn trò chuyện với bạn thân, người trong gia đình, người yêu, giáo viên chủ nhiệm…) <br><br>\r\n            *Yêu cầu đề bài:  <br><br>\r\n            1/ Cuộc hội thoại giữa 2 nhân vật tối thiểu phải từ 5 câu trở lên.  <br><br>\r\n            2/ Khi trình bày, bạn cần biểu đạt được cảm xúc của nhân vật trong lời thoại. <br><br>\r\n            3/ Tổng thời gian vừa làm vừa ghi âm là 10p. <br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (14, 5, 1, 'A: この店、どうだった？<br>\r\n            B: う～ん、料理はおいしいけど、サービスがちょっとね。。。<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (15, 5, 2, 'A: うわ、おいしそう！それ何ですか？<br>\r\n            B: これ？中国のお菓子。一つどう？<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (16, 5, 3, 'A: この辺に、駅、ありますか？<br>\r\n            B: ええ、すぐそこです。<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (17, 5, 4, 'A: あれ？山田さん、どこ行くの？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (18, 5, 5, 'A: 今年は何年？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (19, 5, 6, 'A: あのー、会社の電話番号は分かりますか？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (20, 5, 7, 'A: Tuần sau, tôi đi Nhật ạ!<br>\r\n            B: Chuyện đó thật mong chờ nhỉ!<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (21, 5, 8, 'A: Sau đây tôi định đi uống đấy…<br>\r\n            B: Ô hay nhỉ! Vậy cùng đi nào!<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (22, 6, 1, 'A: Uống đi, uống đi <br><br>\r\n			    Chết tiệt! Con bồ nó cắm sừng tôi!<br><br>\r\n            B: Hiểu mà..Hiểu mà…Thôi… <br><br>\r\n            A: Hôm nay cùng uống đến sáng luôn!!!<br><br>\r\n            B: Hả ? Vậy kế hoạch ngày mai thì sao?<br><br>\r\n			   Mai chả phải đi sớm hay sao?<br><br>\r\n            A: Đủ rồi đấy! Quên chuyện ngày mai đi!<br><br>\r\n            B: Không sao chứ?!?<br><br>\r\n            A: UH. Chết tiệt! <br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (23, 7, 1, 'phase1_3_1.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (24, 7, 2, 'phase1_3_2.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (25, 7, 3, 'phase1_3_3.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (26, 8, 1, 'Bạn hãy tự phát họa cuộc đàm thoại giữa bạn và 1 nhân vật nào đó theo chủ đề sau: <br><br>\r\n            “Bạn nhận được kết quả báo đậu trong kỳ thi tiếng Nhật JLPT, bạn hãy KHOE kết quả thi với họ” <br><br>\r\n            (VD: Bạn trò chuyện với bạn thân, người trong gia đình, người yêu, giáo viên chủ nhiệm…) <br><br>\r\n            *Yêu cầu đề bài:  <br><br>\r\n            1/ Cuộc hội thoại giữa 2 nhân vật tối thiểu phải từ 5 câu trở lên.  <br><br>\r\n            2/ Khi trình bày, bạn cần biểu đạt được cảm xúc của nhân vật trong lời thoại. <br><br>\r\n            3/ Tổng thời gian vừa làm vừa ghi âm là 10p. <br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (27, 9, 1, 'A: ね、サラさんは字がきれいですね！<br>\r\n            B: どれ？見せて！うわ、本当だ！<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (28, 9, 2, 'A: 今日はすずしいね～！<br>\r\n            B: ええ、本当に！<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (29, 9, 3, 'A: あ、おなかいっぱい！<br>\r\n            B: うん、ぼくも！<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (30, 9, 4, 'A: 豚肉はちょっと…<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (31, 9, 5, 'A: この店、サービスもいいし、料理もいいし…<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (32, 9, 6, 'A: 日本語の授業はどうですか？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (33, 9, 7, 'A: Ngày mai, mong chờ quá đi..!<br>\r\n            B: Cực kỳ mong chờ luôn nhỉ..!<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (34, 9, 8, 'A: Hôm nay anh chị đã vất vả rồi! Dự định ngày mai thế nào?<br>\r\n            B: Vâng, ngày mai buổi chiều em có tiệc sinh nhật ạ!<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (35, 10, 1, 'A: ...Vậy, tôi xin phép về trước ạ!<br><br>\r\n            B: Ơ? Về đó hả?<br><br>\r\n            A: Vâng!<br><br>\r\n            B: Sau đây mọi người cùng đi uống đấy!<br><br>\r\n			A: Vậy à! Hôm nay tình trạng sức khỏe tôi có chút…<br><br>\r\n            B: Chị nói gì thế...?<br><br>\r\n			   Chả phải từ nãy giờ chị toàn nhìn vô điện thoại, và cười suốt hay sao?<br><br>\r\n            A: .........<br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (36, 11, 1, 'phase1_3_1.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (37, 11, 2, 'phase1_3_2.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (38, 11, 3, 'phase1_3_3.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (39, 12, 1, 'Bạn hãy tự phát họa cuộc đàm thoại giữa bạn và 1 nhân vật nào đó theo chủ đề sau: <br><br>\r\n            “Bạn nhận được kết quả báo đậu trong kỳ thi tiếng Nhật JLPT, bạn hãy KHOE kết quả thi với họ” <br><br>\r\n            (VD: Bạn trò chuyện với bạn thân, người trong gia đình, người yêu, giáo viên chủ nhiệm…) <br><br>\r\n            *Yêu cầu đề bài:  <br><br>\r\n            1/ Cuộc hội thoại giữa 2 nhân vật tối thiểu phải từ 5 câu trở lên.  <br><br>\r\n            2/ Khi trình bày, bạn cần biểu đạt được cảm xúc của nhân vật trong lời thoại. <br><br>\r\n            3/ Tổng thời gian vừa làm vừa ghi âm là 10p. <br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (40, 13, 1, 'A: デザート食べましょうか？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (41, 13, 2, 'A: あ～あ！今日は暑いですねー<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (42, 13, 3, 'A: 何歳ですか？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (43, 13, 4, 'A: うわ、そのくつ、かわいいね～。<br>\r\n            B: 本当？ありがとう！<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (44, 13, 5, 'A: 山田さん、趣味は何？<br>\r\n            B: 趣味？うーん、写真かな！<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (45, 13, 6, 'A: これは何ですか？<br>\r\n            B: これ？あー、これ、お好み焼き<br>\r\n            A: え？お好み…？<br>\r\n            B: お好み焼き。おいしいよ！<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (46, 13, 7, 'A: Hôm nay, bầu không khí khác quá nhỉ!<br>\r\n            B: Uhm, Vì có buổi hẹn hò cơ mà. Thật sự mong đợi!<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (47, 14, 1, 'A: ...Vậy, tôi xin phép về trước ạ!<br><br>\r\n            B: Ơ? Về đó hả?<br><br>\r\n            A: Vâng!<br><br>\r\n            B: Sau đây mọi người cùng đi uống đấy!<br><br>\r\n			A: Vậy à! Hôm nay tình trạng sức khỏe tôi có chút…<br><br>\r\n            B: Chị nói gì thế...?<br><br>\r\n			   Chả phải từ nãy giờ chị toàn nhìn vô điện thoại, và cười suốt hay sao?<br><br>\r\n            A: .........<br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (48, 15, 1, 'phase1_3_1.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (49, 15, 2, 'phase1_3_2.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (50, 15, 3, 'phase1_3_3.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (51, 16, 1, 'Bạn hãy tự phát họa cuộc đàm thoại giữa bạn và 1 nhân vật nào đó theo chủ đề sau: <br><br>\r\n            “Bạn nhận được kết quả báo đậu trong kỳ thi tiếng Nhật JLPT, bạn hãy KHOE kết quả thi với họ” <br><br>\r\n            (VD: Bạn trò chuyện với bạn thân, người trong gia đình, người yêu, giáo viên chủ nhiệm…) <br><br>\r\n            *Yêu cầu đề bài:  <br><br>\r\n            1/ Cuộc hội thoại giữa 2 nhân vật tối thiểu phải từ 5 câu trở lên.  <br><br>\r\n            2/ Khi trình bày, bạn cần biểu đạt được cảm xúc của nhân vật trong lời thoại. <br><br>\r\n            3/ Tổng thời gian vừa làm vừa ghi âm là 10p. <br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (52, 17, 1, 'A: 日本語の勉強はどうですか？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (53, 17, 2, 'A: ビデオレンタルはいくらですか？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (54, 17, 3, 'A: これ、おいしいよ。ちょっと食べてみる？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (55, 17, 4, 'A: あ～あ！<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (56, 17, 5, 'A: この写真、みて！ハワイの写真だよ<br>\r\n            B: わー、めっちゃきれいだね！<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (57, 17, 6, 'A: ジョンさん、今日、どこで昼ご飯を食べますか？<br>\r\n            B: ごめーん、もう食べちゃった！<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (58, 17, 7, 'A: あのー、すみません。次の電車は何時に来ましたか？<br>\r\n            B: あ、今の電車は終電です。<br>\r\n            A: 終電？<br>\r\n            B: ええ。電車は明日の朝まで来ません。　<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (59, 18, 1, 'A: YOSHIDA KUN! Hôm nay bầu không khí có gì đó khác khác nhỉ!<br><br>\r\n            B: Hể? Vậy sao? <br><br>\r\n            A: UH. A không. Hoàn toàn khác…<br><br>\r\n            B: Thật ra, hôm nay, có hẹn hò đấy! Mong chờ quá đây nè!!! <br><br>\r\n            A: Ô vậy à! Hay nhỉ!<br><br>\r\n			   A…Phải cô trưởng phòng bên ngân hàng APPURU đấy không?<br><br>\r\n            B: Đúng, đúng, đúng! Vừa dịu dàng, vừa thông minh… Kiểu người thật tuyệt!!!<br><br>\r\n            A: Hay quá nhỉ! Ghen tỵ quá đi!<br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (60, 19, 1, 'phase1_3_1.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (61, 19, 2, 'phase1_3_2.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (62, 19, 3, 'phase1_3_3.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (63, 20, 1, 'Bạn hãy tự phát họa cuộc đàm thoại giữa bạn và 1 nhân vật nào đó theo chủ đề sau: <br><br>\r\n            “Bạn nhận được kết quả báo đậu trong kỳ thi tiếng Nhật JLPT, bạn hãy KHOE kết quả thi với họ” <br><br>\r\n            (VD: Bạn trò chuyện với bạn thân, người trong gia đình, người yêu, giáo viên chủ nhiệm…) <br><br>\r\n            *Yêu cầu đề bài:  <br><br>\r\n            1/ Cuộc hội thoại giữa 2 nhân vật tối thiểu phải từ 5 câu trở lên.  <br><br>\r\n            2/ Khi trình bày, bạn cần biểu đạt được cảm xúc của nhân vật trong lời thoại. <br><br>\r\n            3/ Tổng thời gian vừa làm vừa ghi âm là 10p. <br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (64, 21, 1, 'A: ごちそさまでした。とってもおいしかったです。<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (65, 21, 2, 'A: あれ？鈴木(すずき)さん、どこいくの？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (66, 21, 3, 'A: 和食は大丈夫ですか？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (67, 21, 4, 'A: ノート、３冊ください！<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (68, 21, 5, 'A: 山田さんの部屋はきれいですか？<br>\r\n            B:  いえ、きれいじゃありません。でも、家賃(やちん)が安いです。それに、新しいです。<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (69, 21, 6, 'A: この写真、みて！ニャチャンの写真だよ<br>\r\n            B: わー、めっちゃきれいだね！<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (70, 21, 7, 'A: ねねね！サラさんはガールフレンドがいますよ！<br>\r\n            B: 本当？どんな人？<br>\r\n            A: 優(やさ)しい人だよ！それからピアノもひけますよ！<br>\r\n            B: いいね！うらやましい！　<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (71, 22, 1, 'A: Uống đi, uống đi <br><br>\r\n			    Chết tiệt! Con bồ nó cắm sừng tôi!<br><br>\r\n            B: Hiểu mà..Hiểu mà…Thôi… <br><br>\r\n            A: Hôm nay cùng uống đến sáng luôn!!!<br><br>\r\n            B: Hả ? Vậy kế hoạch ngày mai thì sao?<br><br>\r\n			   Mai chả phải đi sớm hay sao?<br><br>\r\n            A: Đủ rồi đấy! Quên chuyện ngày mai đi!<br><br>\r\n            B: Không sao chứ?!?<br><br>\r\n            A: UH. Chết tiệt! <br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (72, 23, 1, 'phase1_3_1.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (73, 23, 2, 'phase1_3_2.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (74, 23, 3, 'phase1_3_3.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (75, 24, 1, 'Bạn hãy tự phát họa cuộc đàm thoại giữa bạn và 1 nhân vật nào đó theo chủ đề sau: <br><br>\r\n            “Bạn nhận được kết quả báo đậu trong kỳ thi tiếng Nhật JLPT, bạn hãy KHOE kết quả thi với họ” <br><br>\r\n            (VD: Bạn trò chuyện với bạn thân, người trong gia đình, người yêu, giáo viên chủ nhiệm…) <br><br>\r\n            *Yêu cầu đề bài:  <br><br>\r\n            1/ Cuộc hội thoại giữa 2 nhân vật tối thiểu phải từ 5 câu trở lên.  <br><br>\r\n            2/ Khi trình bày, bạn cần biểu đạt được cảm xúc của nhân vật trong lời thoại. <br><br>\r\n            3/ Tổng thời gian vừa làm vừa ghi âm là 10p. <br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (76, 25, 1, 'A: はじめまして！私は加藤(かとう)です。<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (77, 25, 2, 'A: そろそろ失礼します！<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (78, 25, 3, 'A: 日本はー、はじめてですか？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (79, 25, 4, 'A: 今年は何年？<br>\r\n            B: ……………………<br>(Give me your answer!)<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (80, 25, 5, 'A: この服、ちょっと小さいです。<br>\r\n            B: じゃー、これはどうですか？<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (81, 25, 6, 'A: 今度の休み、どこいくの？<br>\r\n            B: ボーイフレンドと田舎に帰ります！<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (82, 25, 7, 'A: わ～おいしそう。それ何ですか？<br>\r\n            B: これ？作ったクッキー！ひとつどうですか？<br>\r\n            A：あっ、どうもすみません。いただきます！<br>\r\n            B：どうでしか？<br>\r\n            A：めっちゃおいしいですよ！<br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (83, 26, 1, 'A: ...Vậy, tôi xin phép về trước ạ!<br><br>\r\n            B: Ơ? Về đó hả?<br><br>\r\n            A: Vâng!<br><br>\r\n            B: Sau đây mọi người cùng đi uống đấy!<br><br>\r\n			A: Vậy à! Hôm nay tình trạng sức khỏe tôi có chút…<br><br>\r\n            B: Chị nói gì thế...?<br><br>\r\n			   Chả phải từ nãy giờ chị toàn nhìn vô điện thoại, và cười suốt hay sao?<br><br>\r\n            A: .........<br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (84, 27, 1, 'phase1_3_1.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (85, 27, 2, 'phase1_3_2.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (86, 27, 3, 'phase1_3_3.ogg', NULL, 1, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);
INSERT INTO `question` VALUES (87, 28, 1, 'Bạn hãy tự phát họa cuộc đàm thoại giữa bạn và 1 nhân vật nào đó theo chủ đề sau: <br><br>\r\n            “Bạn nhận được kết quả báo đậu trong kỳ thi tiếng Nhật JLPT, bạn hãy KHOE kết quả thi với họ” <br><br>\r\n            (VD: Bạn trò chuyện với bạn thân, người trong gia đình, người yêu, giáo viên chủ nhiệm…) <br><br>\r\n            *Yêu cầu đề bài:  <br><br>\r\n            1/ Cuộc hội thoại giữa 2 nhân vật tối thiểu phải từ 5 câu trở lên.  <br><br>\r\n            2/ Khi trình bày, bạn cần biểu đạt được cảm xúc của nhân vật trong lời thoại. <br><br>\r\n            3/ Tổng thời gian vừa làm vừa ghi âm là 10p. <br><br>', NULL, 0, '2021-09-13 15:57:56', '2021-09-13 15:57:56', NULL);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `core_id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, 1, 'M1', 1, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (2, 1, 'M2', 2, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (3, 1, 'M3', 3, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (4, 1, 'M4', 4, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (5, 1, 'M5', 5, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (6, 1, 'M6', 6, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (7, 1, 'M7', 7, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (8, 2, 'M1', 1, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (9, 2, 'M2', 2, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (10, 2, 'M3', 3, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (11, 2, 'M4', 4, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (12, 2, 'M5', 5, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (13, 2, 'M6', 6, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (14, 2, 'M7', 7, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (15, 3, 'M1', 1, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (16, 3, 'M2', 2, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (17, 3, 'M3', 3, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (18, 3, 'M4', 4, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (19, 3, 'M5', 5, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (20, 3, 'M6', 6, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (21, 3, 'M7', 7, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (22, 4, 'M1', 1, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (23, 4, 'M2', 2, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (24, 4, 'M3', 3, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (25, 4, 'M4', 4, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (26, 4, 'M5', 5, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (27, 4, 'M6', 6, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (28, 4, 'M7', 7, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (29, 5, 'M1', 1, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (30, 5, 'M2', 2, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (31, 5, 'M3', 3, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (32, 5, 'M4', 4, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (33, 5, 'M5', 5, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (34, 5, 'M6', 6, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);
INSERT INTO `test` VALUES (35, 5, 'M7', 7, '2021-09-13 15:57:55', '2021-09-13 15:57:55', NULL);

SET FOREIGN_KEY_CHECKS = 1;
