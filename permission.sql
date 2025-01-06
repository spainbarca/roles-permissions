/*
 Navicat Premium Dump SQL

 Source Server         : MySQLi
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : permission

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 05/01/2025 20:48:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2024_11_01_230749_create_role', 2);
INSERT INTO `migrations` VALUES (5, '2024_11_02_022834_create_permission', 3);
INSERT INTO `migrations` VALUES (6, '2024_11_02_171208_create_permission_role', 4);
INSERT INTO `migrations` VALUES (7, '2024_11_03_154703_add_role_id_to_users_table', 5);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `groupby` int NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 'Dashboard', 'dashboard', 0, NULL, NULL);
INSERT INTO `permission` VALUES (2, 'User', 'user', 1, NULL, NULL);
INSERT INTO `permission` VALUES (3, 'Add User', 'add-user', 1, NULL, NULL);
INSERT INTO `permission` VALUES (4, 'Edit User', 'edit-user', 1, NULL, NULL);
INSERT INTO `permission` VALUES (5, 'Delete User', 'delete-user', 1, NULL, NULL);
INSERT INTO `permission` VALUES (6, 'Role', 'role', 2, NULL, NULL);
INSERT INTO `permission` VALUES (7, 'Add Role', 'add-role', 2, NULL, NULL);
INSERT INTO `permission` VALUES (8, 'Edit Role', 'edit-role', 2, NULL, NULL);
INSERT INTO `permission` VALUES (9, 'Delete Role', 'delete-role', 2, NULL, NULL);
INSERT INTO `permission` VALUES (10, 'Category', 'category', 3, NULL, NULL);
INSERT INTO `permission` VALUES (11, 'Add Category', 'add-category', 3, NULL, NULL);
INSERT INTO `permission` VALUES (12, 'Edit Category', 'edit-category', 3, NULL, NULL);
INSERT INTO `permission` VALUES (13, 'Delete Category', 'delete-category', 3, NULL, NULL);
INSERT INTO `permission` VALUES (14, 'Sub Category', 'subcategory', 4, NULL, NULL);
INSERT INTO `permission` VALUES (15, 'Add Sub Category', 'add-subcategory', 4, NULL, NULL);
INSERT INTO `permission` VALUES (16, 'Edit Sub Category', 'edit-subcategory', 4, NULL, NULL);
INSERT INTO `permission` VALUES (17, 'Delete Sub Category', 'delete-subcategory', 4, NULL, NULL);
INSERT INTO `permission` VALUES (18, 'Product', 'product', 5, NULL, NULL);
INSERT INTO `permission` VALUES (19, 'Add Product', 'add-product', 5, NULL, NULL);
INSERT INTO `permission` VALUES (20, 'Edit Product', 'edit-product', 5, NULL, NULL);
INSERT INTO `permission` VALUES (21, 'Delete Product', 'delete-product', 5, NULL, NULL);
INSERT INTO `permission` VALUES (22, 'Setting', 'setting', 6, NULL, NULL);

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permission_role_role_id_foreign`(`role_id` ASC) USING BTREE,
  INDEX `permission_role_permission_id_foreign`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (49, 3, 1, '2024-11-04 02:15:49', '2024-11-04 02:15:49');
INSERT INTO `permission_role` VALUES (50, 3, 2, '2024-11-04 02:15:49', '2024-11-04 02:15:49');
INSERT INTO `permission_role` VALUES (51, 3, 6, '2024-11-04 02:15:49', '2024-11-04 02:15:49');
INSERT INTO `permission_role` VALUES (52, 3, 10, '2024-11-04 02:15:49', '2024-11-04 02:15:49');
INSERT INTO `permission_role` VALUES (53, 3, 14, '2024-11-04 02:15:49', '2024-11-04 02:15:49');
INSERT INTO `permission_role` VALUES (54, 3, 18, '2024-11-04 02:15:49', '2024-11-04 02:15:49');
INSERT INTO `permission_role` VALUES (55, 3, 22, '2024-11-04 02:15:49', '2024-11-04 02:15:49');
INSERT INTO `permission_role` VALUES (56, 4, 1, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (57, 4, 2, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (58, 4, 3, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (59, 4, 4, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (60, 4, 5, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (61, 4, 6, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (62, 4, 7, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (63, 4, 8, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (64, 4, 9, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (65, 4, 10, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (66, 4, 11, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (67, 4, 12, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (68, 4, 13, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (69, 4, 14, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (70, 4, 15, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (71, 4, 16, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (72, 4, 17, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (73, 4, 18, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (74, 4, 19, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (75, 4, 20, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (76, 4, 21, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (77, 4, 22, '2024-11-04 02:16:00', '2024-11-04 02:16:00');
INSERT INTO `permission_role` VALUES (95, 1, 1, '2024-11-04 02:16:36', '2024-11-04 02:16:36');
INSERT INTO `permission_role` VALUES (139, 2, 1, '2024-11-04 02:36:37', '2024-11-04 02:36:37');
INSERT INTO `permission_role` VALUES (140, 2, 2, '2024-11-04 02:36:37', '2024-11-04 02:36:37');
INSERT INTO `permission_role` VALUES (141, 2, 3, '2024-11-04 02:36:37', '2024-11-04 02:36:37');
INSERT INTO `permission_role` VALUES (142, 2, 4, '2024-11-04 02:36:37', '2024-11-04 02:36:37');
INSERT INTO `permission_role` VALUES (143, 2, 5, '2024-11-04 02:36:37', '2024-11-04 02:36:37');
INSERT INTO `permission_role` VALUES (144, 2, 6, '2024-11-04 02:36:37', '2024-11-04 02:36:37');
INSERT INTO `permission_role` VALUES (145, 2, 7, '2024-11-04 02:36:37', '2024-11-04 02:36:37');
INSERT INTO `permission_role` VALUES (146, 2, 8, '2024-11-04 02:36:37', '2024-11-04 02:36:37');
INSERT INTO `permission_role` VALUES (147, 2, 9, '2024-11-04 02:36:37', '2024-11-04 02:36:37');
INSERT INTO `permission_role` VALUES (148, 10, 1, '2024-11-04 02:36:44', '2024-11-04 02:36:44');
INSERT INTO `permission_role` VALUES (149, 10, 2, '2024-11-04 02:36:44', '2024-11-04 02:36:44');
INSERT INTO `permission_role` VALUES (150, 10, 6, '2024-11-04 02:36:44', '2024-11-04 02:36:44');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'Basic', '2024-11-01 18:08:33', '2024-11-01 23:38:39');
INSERT INTO `role` VALUES (2, 'Editor', '2024-11-01 18:08:33', '2024-11-01 18:08:33');
INSERT INTO `role` VALUES (3, 'Admin', '2024-11-01 18:08:33', '2024-11-01 18:08:33');
INSERT INTO `role` VALUES (4, 'SuperAdmin', '2024-11-01 23:33:26', '2024-11-01 23:33:26');
INSERT INTO `role` VALUES (10, 'Normal', '2024-11-02 23:42:03', '2024-11-02 23:42:03');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('iB1LvSl3PfZc17NvIeTIJASAg2tX93rkilS2PG3z', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOW5pRXRBMXZOMmZmZW9TWjFwNEhTY2UwSnBxRGpxUVJQRzBhOXE4VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNDoiaHR0cHM6Ly9wZXJtaXNzaW9uLnRlc3QvcGFuZWwvcm9sZSI7fX0=', 1730688569);
INSERT INTO `sessions` VALUES ('qOxnSOUfXmtgsVZYQ9CC3NRPDCS6bZVqYkWvsznv', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVXY5eXlEY2ZxSnFpNWFrRjlTM3Z6Rnowcmk5bEc4aGZKZ2d2bEp0MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vcGVybWlzc2lvbi50ZXN0L3BhbmVsL3JvbGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O30=', 1730687752);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL DEFAULT 1,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE,
  INDEX `users_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Noah', 'admin@test.com', '2024-10-12 21:35:10', '$2y$12$P5A1k8nHFiFlOvuRPnP4Le1tRNhE5X3mYlhp/N/bwp3kzQl5RdUna', 4, NULL, '2024-10-12 21:34:58', '2024-11-03 23:25:02');
INSERT INTO `users` VALUES (5, 'User', 'user@test.com', NULL, '$2y$12$cSh2aMhN7BOR3kjZbHro3e5MQbw22SKXddKwLt9XKNO8qALb8s4rC', 2, NULL, '2024-11-04 02:17:45', '2024-11-04 02:29:29');

SET FOREIGN_KEY_CHECKS = 1;
