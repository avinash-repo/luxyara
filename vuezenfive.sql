-- Adminer 4.8.1 MySQL 8.0.30 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `admin_user_otps`;
CREATE TABLE `admin_user_otps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `otp_code` varchar(4) NOT NULL,
  `creation_time` bigint NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `admin_user_otps` (`id`, `user_id`, `otp_code`, `creation_time`, `used`, `created_at`, `updated_at`) VALUES
(1,	1,	'9948',	1715851980953,	1,	'2024-05-16 09:33:17',	'2024-05-16 09:33:17'),
(2,	2,	'9023',	1714470712991,	1,	'2024-04-30 09:52:25',	'2024-04-30 09:52:25'),
(3,	3,	'4527',	1715763306180,	0,	'2024-05-15 08:55:06',	'2024-05-15 08:55:06'),
(4,	5,	'5103',	1714223372059,	1,	'2024-04-27 13:09:52',	'2024-04-27 13:09:52'),
(5,	6,	'1717',	1715673149320,	1,	'2024-05-14 07:52:43',	'2024-05-14 07:52:43'),
(6,	8,	'0230',	1716008170173,	1,	'2024-05-18 04:56:27',	'2024-05-18 04:56:27'),
(7,	9,	'9410',	1715835870406,	1,	'2024-05-16 05:04:57',	'2024-05-16 05:04:57'),
(8,	11,	'3891',	1715253441439,	0,	'2024-05-09 11:17:21',	'2024-05-09 11:17:21'),
(9,	4,	'6777',	1715253488201,	0,	'2024-05-09 11:18:08',	'2024-05-09 11:18:08'),
(10,	13,	'3634',	1715575452587,	1,	'2024-05-13 04:44:35',	'2024-05-13 04:44:35'),
(11,	17,	'4294',	1715942683380,	1,	'2024-05-17 10:44:57',	'2024-05-17 10:44:57'),
(12,	15,	'5628',	1716016001509,	1,	'2024-05-18 07:06:59',	'2024-05-18 07:06:59');

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `country` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IN',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `role` enum('admin','super_admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_verified` tinyint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `admin_users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `country`, `password`, `photo`, `status`, `role`, `remember_token`, `created_at`, `is_verified`, `updated_at`, `deleted_at`) VALUES
(1,	NULL,	'Tanuj Kumar',	'tk923323@gmail.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.N6lDLFL3KtmUbFkuwt54Nie6CaTiLw2',	NULL,	'active',	'super_admin',	NULL,	'2024-04-19 15:10:37',	1,	'2024-04-19 15:10:37',	NULL),
(2,	6,	'Tanuj',	'tanuj@metaspacechain.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.wtXk3NaE9ZqTruDluj3AwQK46JxJgPa',	NULL,	'active',	'admin',	NULL,	'2024-04-25 09:59:11',	1,	'2024-04-25 09:59:11',	'2024-05-09 10:50:16'),
(3,	NULL,	'mehreen sheikh',	'vuezeneye@gmail.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.RpbiDMDA3366fVBSKHvYZGsl/GgYxWC',	NULL,	'active',	'super_admin',	NULL,	'2024-04-27 10:15:06',	1,	'2024-04-27 10:15:06',	NULL),
(4,	6,	'Tanuj',	'tanuj1232@yopmail.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.umFge6.ehR3R8m4Hm57A6fIHUn8RsL6',	NULL,	'active',	'admin',	NULL,	'2024-04-27 12:18:50',	0,	'2024-04-27 12:18:50',	NULL),
(5,	7,	'Mehreen Sheikh',	'mehreen@bastionex.net',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.6vug3m5K3z038t5LxXz0011SLbasEvm',	NULL,	'active',	'admin',	NULL,	'2024-04-27 13:08:21',	1,	'2024-04-27 13:08:21',	NULL),
(6,	NULL,	'akash',	'akash@bastionex.net',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.JxJi.x83phdhZhP7QHVxcIf4agmR2W2',	NULL,	'active',	'super_admin',	NULL,	'2024-05-02 07:39:15',	1,	'2024-05-02 07:39:15',	NULL),
(8,	NULL,	'prabhat',	'prabhat@bastionex.net',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.AipZHe0EnQ7xXM.twUrr80jJtX6p0oK',	NULL,	'active',	'super_admin',	NULL,	'2024-05-02 09:20:02',	1,	'2024-05-02 09:20:02',	NULL),
(9,	9,	'Naveen Bhiwaniya',	'naveen@vuezen.io',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.daa3IGOMwkkFlSfVQvjn3jFhOv3mcIu',	NULL,	'active',	'admin',	NULL,	'2024-05-02 09:33:32',	1,	'2024-05-02 09:33:32',	NULL),
(10,	9,	'Kamlesh',	'kamlesh@sheluxe.io',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.9SbzUkFsTjLHVK58AbXf1jb9Kzjg7L6',	NULL,	'active',	'admin',	NULL,	'2024-05-09 06:03:00',	0,	'2024-05-09 06:03:00',	NULL),
(11,	9,	'Atul Kumar Jha',	'atul@vuezen.io',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.wLlU3Vj6IKGAtraBGr5pIRPblsuKt1.',	NULL,	'active',	'admin',	NULL,	'2024-05-09 06:04:08',	0,	'2024-05-09 06:04:08',	'2024-05-13 06:13:49'),
(12,	7,	'Poonam Singh',	'poonam@metaspacechain.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.jCDvQO0pMVpJobLzOZVFJnLOT/kWNtm',	NULL,	'active',	'admin',	NULL,	'2024-05-09 10:52:19',	0,	'2024-05-09 10:52:19',	NULL),
(13,	NULL,	'ayushi',	'ayushi@bastionex.net',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.Uy.IlGHTEreQj2MJttHyUXMkBwxLC6u',	NULL,	'active',	'super_admin',	NULL,	'2024-05-10 12:13:25',	1,	'2024-05-10 12:13:25',	NULL),
(14,	9,	'test',	'test@yopmail.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.7S3S7Hn0/6ToCX3gwYkmZRV.wwSe59i',	NULL,	'active',	'admin',	NULL,	'2024-05-13 05:42:22',	0,	'2024-05-13 05:42:22',	'2024-05-13 09:15:54'),
(15,	NULL,	'vikash',	'vikas@metaspacechain.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.2P1bKIcwtHm4dRTWERZowr9XmcvC/7i',	NULL,	'active',	'super_admin',	NULL,	'2024-05-13 08:57:54',	1,	'2024-05-13 08:57:54',	NULL),
(16,	10,	'ayushi',	'ayushis270201@gmail.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.OdlnA.AJwy2FWk29eIr3p.SIPzXtNW2',	NULL,	'active',	'admin',	NULL,	'2024-05-13 09:17:51',	0,	'2024-05-13 09:17:51',	NULL),
(17,	NULL,	'subhan',	'subhan@metaspacechain.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.JxMWyB.L7xeu6qBQveRzSyTBWCK1bTe',	NULL,	'active',	'super_admin',	NULL,	'2024-05-02 09:20:02',	1,	'2024-05-02 09:20:02',	NULL);

DROP TABLE IF EXISTS `api_endpoint`;
CREATE TABLE `api_endpoint` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` enum('backend','frontend') NOT NULL DEFAULT 'frontend',
  `module_name` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `api_endpoint` (`id`, `name`, `type`, `module_name`, `status`, `created_at`, `updated_at`) VALUES
(6,	'/api/admin/dashboard_data/get',	'backend',	NULL,	'active',	'2024-04-25 05:08:25',	'2024-04-25 05:08:25'),
(7,	'/api/admin/dashboard_data/get_data',	'backend',	NULL,	'active',	'2024-04-25 05:08:48',	'2024-04-25 05:08:48'),
(8,	'/api/admin/dashboard_data/get_user_data',	'backend',	NULL,	'active',	'2024-04-25 05:09:10',	'2024-04-25 05:09:10'),
(9,	'/api/admin/dashboard_data/get_best_seller_product',	'backend',	NULL,	'active',	'2024-04-25 05:09:32',	'2024-04-25 05:09:32'),
(10,	'/api/admin/dashboard_data/get_profit',	'backend',	NULL,	'active',	'2024-04-25 05:09:55',	'2024-04-25 05:09:55'),
(11,	'/api/admin/dashboard_data/fetch_live_user',	'backend',	NULL,	'active',	'2024-04-25 05:10:17',	'2024-04-25 05:10:17'),
(12,	'/api/admin/dashboard_data/fetch_live_insights_clarity',	'backend',	NULL,	'active',	'2024-04-25 05:10:32',	'2024-04-25 05:10:32'),
(13,	'/api/admin/add_fiter_data/add_category',	'backend',	NULL,	'active',	'2024-04-25 05:19:20',	'2024-04-25 05:19:20'),
(14,	'/api/admin/add_fiter_data/add_only_category',	'backend',	NULL,	'active',	'2024-04-25 05:19:43',	'2024-04-25 05:19:43'),
(15,	'/api/admin/add_fiter_data/add_only_gender',	'backend',	NULL,	'active',	'2024-04-25 05:20:02',	'2024-04-25 05:20:02'),
(16,	'/api/admin/add_fiter_data/edit_category_status',	'backend',	NULL,	'active',	'2024-04-25 05:20:22',	'2024-04-25 05:20:22'),
(17,	'/api/admin/add_fiter_data/get_category_for_admin',	'backend',	NULL,	'active',	'2024-04-25 05:20:44',	'2024-04-25 05:20:44'),
(18,	'/api/admin/add_fiter_data/delete_category_by_id',	'backend',	NULL,	'active',	'2024-04-25 05:20:58',	'2024-04-25 05:20:58'),
(19,	'/api/admin/add_fiter_data/get_category',	'backend',	NULL,	'active',	'2024-04-25 05:21:14',	'2024-04-25 06:22:01'),
(20,	'/api/admin/product/add_product',	'backend',	NULL,	'active',	'2024-04-25 06:24:27',	'2024-04-25 06:24:27'),
(21,	'/api/admin/product/edit_product',	'backend',	NULL,	'active',	'2024-04-25 06:30:57',	'2024-04-25 06:30:57'),
(22,	'/api/admin/product/add_product_variant',	'backend',	NULL,	'active',	'2024-04-25 06:31:18',	'2024-04-25 06:31:18'),
(23,	'/api/admin/product/edit_product_variant',	'backend',	NULL,	'active',	'2024-04-25 06:31:36',	'2024-04-25 06:31:36'),
(24,	'/api/admin/product/add_country_only',	'backend',	NULL,	'active',	'2024-04-25 06:32:00',	'2024-04-25 06:32:00'),
(25,	'/api/admin/product/add_country_data',	'backend',	NULL,	'active',	'2024-04-25 06:32:18',	'2024-04-25 06:32:18'),
(26,	'/api/admin/product/edit_variant_country_status',	'backend',	NULL,	'active',	'2024-04-25 06:33:40',	'2024-04-25 06:33:40'),
(27,	'/api/admin/product/add_product_variant_Images',	'backend',	NULL,	'active',	'2024-04-25 06:34:13',	'2024-04-25 06:34:13'),
(28,	'/api/admin/product/edit_product_variant_Images',	'backend',	NULL,	'active',	'2024-04-25 06:35:30',	'2024-04-25 06:35:30'),
(29,	'/api/admin/product/fetch_all_product',	'backend',	NULL,	'active',	'2024-04-25 06:35:46',	'2024-04-25 06:35:46'),
(30,	'/api/admin/product/fetch_all_product_admin',	'backend',	NULL,	'active',	'2024-04-25 06:36:21',	'2024-04-25 06:36:21'),
(31,	'/api/admin/product/destro_product_by_id',	'backend',	NULL,	'active',	'2024-04-25 06:36:40',	'2024-04-25 06:36:40'),
(32,	'/api/admin/product/destro_product_variant_by_id',	'backend',	NULL,	'active',	'2024-04-25 06:36:57',	'2024-04-25 06:36:57'),
(33,	'/api/admin/product/change_status_product',	'backend',	NULL,	'active',	'2024-04-25 06:37:17',	'2024-04-25 06:37:17'),
(34,	'/api/admin/product/change_status_product_variant',	'backend',	NULL,	'active',	'2024-04-25 06:37:32',	'2024-04-25 06:37:32'),
(35,	'/api/admin/product/fetch_product_by_id',	'backend',	NULL,	'active',	'2024-04-25 06:37:48',	'2024-04-25 06:37:48'),
(36,	'/api/admin/product/fetch_product_variant_by_id',	'backend',	NULL,	'active',	'2024-04-25 06:38:06',	'2024-04-25 06:38:06'),
(37,	'/api/admin/product/add_stock',	'backend',	NULL,	'active',	'2024-04-25 06:38:26',	'2024-04-25 06:38:26'),
(38,	'/api/admin/product/add_seo_data',	'backend',	NULL,	'active',	'2024-04-25 06:38:44',	'2024-04-25 06:38:44'),
(39,	'/api/admin/product/get_seo_data',	'backend',	NULL,	'active',	'2024-04-25 06:39:05',	'2024-04-25 06:39:05'),
(40,	'/api/admin/product/change_status_seo_data',	'backend',	NULL,	'active',	'2024-04-25 06:39:44',	'2024-04-25 06:39:44'),
(41,	'/api/admin/product/seo_get_by_id',	'backend',	NULL,	'active',	'2024-04-25 06:40:05',	'2024-04-25 06:40:05'),
(42,	'/api/admin/zip_code/add_zipcodes',	'backend',	NULL,	'active',	'2024-04-25 08:37:55',	'2024-04-25 08:37:55'),
(43,	'/api/admin/zip_code/edit_status_zipcodes',	'backend',	NULL,	'active',	'2024-04-25 08:38:24',	'2024-04-25 08:38:24'),
(44,	'/api/admin/zip_code/get',	'backend',	NULL,	'active',	'2024-04-25 08:38:54',	'2024-04-25 08:38:54'),
(45,	'/api/admin/zip_code/get_active',	'backend',	NULL,	'active',	'2024-04-25 08:39:12',	'2024-04-25 08:39:12'),
(46,	'/api/admin/order/update_delivery_date',	'backend',	NULL,	'active',	'2024-04-25 08:41:50',	'2024-04-25 08:41:50'),
(47,	'/api/admin/order/update_order_status',	'backend',	NULL,	'active',	'2024-04-25 08:42:30',	'2024-04-25 08:42:30'),
(48,	'/api/admin/order/update_order_payment_status',	'backend',	NULL,	'active',	'2024-04-25 08:42:49',	'2024-04-25 08:42:49'),
(49,	'/api/admin/order/get_all',	'backend',	NULL,	'active',	'2024-04-25 08:43:06',	'2024-04-25 08:43:06'),
(50,	'/api/admin/order/get_filtered_orders',	'backend',	NULL,	'active',	'2024-04-25 08:43:23',	'2024-04-25 08:43:23'),
(51,	'/api/admin/order/get_graph_data_subtotal',	'backend',	NULL,	'active',	'2024-04-25 08:43:47',	'2024-04-25 08:43:47'),
(52,	'/api/admin/order/get_graph_data_order',	'backend',	NULL,	'active',	'2024-04-25 08:44:08',	'2024-04-25 08:44:08'),
(53,	'/api/admin/order/change_delivery_days',	'backend',	NULL,	'active',	'2024-04-25 08:44:35',	'2024-04-25 08:44:35'),
(54,	'/api/admin/order/get_delivery_day_data',	'backend',	NULL,	'active',	'2024-04-25 08:44:52',	'2024-04-25 08:44:52'),
(55,	'/api/admin/order/delete_delivery_day_data',	'backend',	NULL,	'active',	'2024-04-25 08:45:07',	'2024-04-25 08:45:07'),
(56,	'/api/admin/delivery/add',	'backend',	NULL,	'active',	'2024-04-25 08:47:06',	'2024-04-25 08:47:06'),
(57,	'/api/admin/delivery/getData',	'backend',	NULL,	'active',	'2024-04-25 08:47:23',	'2024-04-25 08:47:23'),
(58,	'/api/admin/delivery/delete',	'backend',	NULL,	'active',	'2024-04-25 08:47:39',	'2024-04-25 08:47:39'),
(59,	'/api/admin/coupons/add_coupons',	'backend',	NULL,	'active',	'2024-04-25 08:49:37',	'2024-04-25 08:49:37'),
(60,	'/api/admin/coupons/update_coupons',	'backend',	NULL,	'active',	'2024-04-25 08:49:59',	'2024-04-25 08:49:59'),
(61,	'/api/admin/coupons/get_all_coupons',	'backend',	NULL,	'active',	'2024-04-25 08:50:21',	'2024-04-25 08:50:21'),
(62,	'/api/admin/coupons/get_coupon_by_id',	'backend',	NULL,	'active',	'2024-04-25 08:50:42',	'2024-04-25 08:50:42'),
(63,	'/api/admin/coupons/delete_coupon_by_id',	'backend',	NULL,	'active',	'2024-04-25 08:50:59',	'2024-04-25 08:50:59'),
(64,	'/api/admin/coupons/update_status_by_id',	'backend',	NULL,	'active',	'2024-04-25 08:51:31',	'2024-04-25 08:51:31'),
(65,	'/api/admin/ui_inner_section/get_data',	'backend',	NULL,	'active',	'2024-04-25 08:53:36',	'2024-04-25 08:53:36'),
(66,	'/api/admin/ui_inner_section/add_ui_inner_sections',	'backend',	NULL,	'active',	'2024-04-25 08:53:58',	'2024-04-25 08:53:58'),
(67,	'/api/admin/ui_inner_section/add_ui_frame_config',	'backend',	NULL,	'active',	'2024-04-25 08:54:15',	'2024-04-25 08:54:15'),
(68,	'/api/admin/ui_inner_section/get_ui_frame_config',	'backend',	NULL,	'active',	'2024-04-25 08:54:32',	'2024-04-25 08:54:32'),
(69,	'/api/admin/ui/get_ui_sections',	'backend',	NULL,	'active',	'2024-04-25 08:56:05',	'2024-04-25 08:56:05'),
(70,	'/api/admin/ui/add_ui_sections',	'backend',	NULL,	'active',	'2024-04-25 08:56:24',	'2024-04-25 08:56:24'),
(71,	'/api/admin/collection/add_beautiful_eyewear',	'backend',	NULL,	'active',	'2024-04-25 08:58:01',	'2024-04-25 08:58:01'),
(72,	'/api/admin/collection/delete_beautiful_eyewear',	'backend',	NULL,	'active',	'2024-04-25 08:58:33',	'2024-04-25 08:58:33'),
(73,	'/api/admin/collection/get_beautiful_eyewear',	'backend',	NULL,	'active',	'2024-04-25 08:58:53',	'2024-04-25 08:58:53'),
(74,	'/api/admin/frame_data/add_ui_frame_config',	'backend',	NULL,	'active',	'2024-04-25 09:00:23',	'2024-04-25 09:00:23'),
(75,	'/api/admin/frame_data/get_ui_frame_config',	'backend',	NULL,	'active',	'2024-04-25 09:00:42',	'2024-04-25 09:00:42'),
(76,	'/api/admin/best_seller/add',	'backend',	NULL,	'active',	'2024-04-25 09:02:05',	'2024-04-25 09:02:05'),
(77,	'/api/admin/best_seller/get',	'backend',	NULL,	'active',	'2024-04-25 09:02:28',	'2024-04-25 09:02:28'),
(78,	'/api/admin/best_seller/delete',	'backend',	NULL,	'active',	'2024-04-25 09:02:46',	'2024-04-25 09:02:46'),
(79,	'/api/admin/newsletter/get',	'backend',	NULL,	'active',	'2024-04-25 09:05:15',	'2024-04-25 09:05:15'),
(80,	'/admin/api/currency/add_currency',	'backend',	NULL,	'active',	'2024-04-25 09:07:29',	'2024-04-25 09:07:29'),
(81,	'/admin/api/currency/update_status_for_user_view',	'backend',	NULL,	'active',	'2024-04-25 09:07:44',	'2024-04-25 09:07:44'),
(82,	'/admin/api/currency/get_all_currency',	'backend',	NULL,	'active',	'2024-04-25 09:08:04',	'2024-04-25 09:08:04'),
(83,	'/admin/api/currency/get_currency',	'backend',	NULL,	'active',	'2024-04-25 09:08:18',	'2024-04-25 09:08:18'),
(84,	'/admin/api/currency/get_currency_user',	'backend',	NULL,	'active',	'2024-04-25 09:08:39',	'2024-04-25 09:08:39'),
(85,	'/api/admin/review/get_all',	'backend',	NULL,	'active',	'2024-04-25 09:12:38',	'2024-04-25 09:12:38'),
(86,	'/api/admin/review_status_change',	'backend',	NULL,	'active',	'2024-04-25 09:12:58',	'2024-04-25 09:12:58'),
(87,	'/api/admin/offer/add',	'backend',	NULL,	'active',	'2024-04-25 09:20:45',	'2024-04-25 09:20:45'),
(88,	'/api/admin/offer/get',	'backend',	NULL,	'active',	'2024-04-25 09:21:02',	'2024-04-25 09:21:02'),
(89,	'/api/admin/offer/get_user_data',	'backend',	NULL,	'active',	'2024-04-25 09:21:18',	'2024-04-25 09:21:18'),
(90,	'/api/admin/offer/destroy',	'backend',	NULL,	'active',	'2024-04-25 09:21:35',	'2024-04-25 09:21:35'),
(91,	'/api/admin/education/get_all',	'backend',	NULL,	'active',	'2024-04-25 09:23:23',	'2024-04-25 09:23:23'),
(92,	'/api/admin/education/change_status',	'backend',	NULL,	'active',	'2024-04-25 09:23:38',	'2024-04-25 09:23:38'),
(93,	'/dashboard',	'frontend',	NULL,	'active',	'2024-04-25 09:30:42',	'2024-04-25 09:30:42'),
(94,	'/category',	'frontend',	NULL,	'active',	'2024-04-25 09:30:57',	'2024-04-25 09:30:57'),
(95,	'/allproducts',	'frontend',	NULL,	'active',	'2024-04-25 09:31:22',	'2024-04-25 09:31:22'),
(96,	'/view',	'frontend',	NULL,	'active',	'2024-04-25 09:32:01',	'2024-04-25 09:32:01'),
(97,	'/variant',	'frontend',	NULL,	'active',	'2024-04-25 09:32:16',	'2024-04-25 09:32:16'),
(98,	'/addproducts',	'frontend',	NULL,	'active',	'2024-04-25 09:33:02',	'2024-04-25 09:33:02'),
(99,	'/zipcodes_available',	'frontend',	NULL,	'active',	'2024-04-25 09:33:43',	'2024-04-25 09:33:43'),
(100,	'/order_delivery_day',	'frontend',	NULL,	'active',	'2024-04-25 09:34:25',	'2024-04-25 09:34:25'),
(101,	'/student_delivery_data',	'frontend',	NULL,	'active',	'2024-04-25 09:34:51',	'2024-04-25 09:34:51'),
(102,	'/Coupons_admin',	'frontend',	NULL,	'active',	'2024-04-25 09:35:11',	'2024-04-25 09:35:11'),
(103,	'/orders',	'frontend',	NULL,	'active',	'2024-04-25 09:35:27',	'2024-04-25 09:35:27'),
(104,	'/ui_inner_sections',	'frontend',	NULL,	'active',	'2024-04-25 09:37:21',	'2024-04-25 09:37:21'),
(105,	'/ui_landing_page_section',	'frontend',	NULL,	'active',	'2024-04-25 09:37:43',	'2024-04-25 09:37:43'),
(106,	'/eyewear_collection',	'frontend',	NULL,	'active',	'2024-04-25 09:37:57',	'2024-04-25 09:37:57'),
(107,	'/uiFrameData',	'frontend',	NULL,	'active',	'2024-04-25 09:38:37',	'2024-04-25 09:38:37'),
(108,	'/bestseller',	'frontend',	NULL,	'active',	'2024-04-25 09:43:02',	'2024-04-25 09:43:02'),
(109,	'/seo_products',	'frontend',	NULL,	'active',	'2024-04-25 09:43:21',	'2024-04-25 09:43:21'),
(110,	'/subscribeusers',	'frontend',	NULL,	'active',	'2024-04-25 09:43:45',	'2024-04-25 09:43:45');

DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `banners_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `beautiful_eyewear_collection`;
CREATE TABLE `beautiful_eyewear_collection` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `beautiful_eyewear_collection` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(2,	'Men Sunglasses',	'glasses/Sunglasses/2/Men/1',	'1713795291049-men-sunglasses 200X200.webp',	'2024-04-22 14:18:22',	NULL),
(3,	'Women Sunglasses',	'glasses/Sunglasses/2/Women/2',	'1713795327731-women -sunglasses 200X200.webp',	'2024-04-22 14:40:10',	NULL),
(4,	'Men Eyeglasses',	'glasses/Eyeglasses/1/Men/1',	'1713795374474-men-eyeglasses 200X200.webp',	'2024-04-22 14:40:29',	NULL),
(5,	'Women Eyeglasses',	'glasses/Eyeglasses/1/Women/2',	'1713795432115-women-eyeglasses 200X200.webp',	'2024-04-22 14:20:30',	NULL),
(6,	'Men Computer Glasses',	'ComputerGlasses/3/Men/1',	'1713795608224-men-computer Glasses 200X200.webp',	'2024-04-22 14:20:08',	NULL);

DROP TABLE IF EXISTS `bestseller`;
CREATE TABLE `bestseller` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `position` bigint NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'null',
  `type` enum('best_seller','fashion_trend') NOT NULL DEFAULT 'best_seller',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `bestseller` (`id`, `product_id`, `variant_id`, `position`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(15,	1,	1,	1,	'1713876814115-1.webp',	'best_seller',	'active',	'2024-04-23 12:53:34',	'2024-04-23 12:53:34'),
(16,	1,	1,	2,	'1713880057796-2.webp',	'best_seller',	'active',	'2024-04-23 13:47:37',	'2024-04-23 13:47:37'),
(17,	1,	1,	3,	'1713880076200-3.webp',	'best_seller',	'active',	'2024-04-23 13:47:56',	'2024-04-23 13:47:56'),
(18,	1,	1,	4,	'1713880095842-4.webp',	'best_seller',	'active',	'2024-04-23 13:48:15',	'2024-04-23 13:48:15'),
(19,	1,	1,	5,	'1713880122536-1.webp',	'best_seller',	'active',	'2024-04-23 13:48:42',	'2024-04-23 13:48:42'),
(20,	1,	1,	6,	'1713880140459-2.webp',	'best_seller',	'active',	'2024-04-23 13:49:00',	'2024-04-23 13:49:00'),
(21,	1,	1,	7,	'1713880210097-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:10',	'2024-04-23 13:50:10'),
(22,	1,	1,	8,	'1713880226697-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:26',	'2024-04-23 13:50:26'),
(23,	1,	1,	9,	'1713880234915-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:34',	'2024-04-23 13:50:34'),
(24,	1,	1,	10,	'1713880242035-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:42',	'2024-04-23 13:50:42'),
(25,	1,	1,	11,	'1713880249430-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:49',	'2024-04-23 13:50:49'),
(26,	1,	1,	12,	'1713880257194-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:57',	'2024-04-23 13:50:57');

DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brands_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `product_variant_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_product_id_foreign` (`product_id`),
  KEY `carts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `carts` (`id`, `product_id`, `product_variant_id`, `user_id`, `quantity`, `created_at`, `updated_at`) VALUES
(16,	1,	1,	11,	1,	'2024-04-24 06:42:07',	'2024-04-24 06:42:07'),
(18,	3,	3,	11,	1,	'2024-04-24 12:48:17',	'2024-04-24 12:48:17'),
(25,	2,	2,	10,	1,	'2024-04-25 13:11:45',	'2024-04-25 13:11:45'),
(27,	1,	1,	10,	1,	'2024-04-25 15:24:24',	'2024-04-25 15:24:24'),
(35,	1,	1,	24,	6,	'2024-04-30 16:50:43',	'2024-04-30 16:50:43'),
(47,	5,	5,	25,	1,	'2024-05-07 11:04:04',	'2024-05-07 11:04:04'),
(63,	5,	5,	26,	1,	'2024-05-08 11:43:54',	'2024-05-08 11:43:54'),
(67,	4,	4,	28,	1,	'2024-05-08 12:53:11',	'2024-05-08 12:53:11'),
(69,	9,	11,	28,	1,	'2024-05-08 14:17:10',	'2024-05-08 14:17:10'),
(74,	5,	5,	29,	1,	'2024-05-09 11:04:26',	'2024-05-09 11:04:26'),
(78,	27,	31,	30,	1,	'2024-05-11 06:45:13',	'2024-05-11 06:45:13'),
(79,	18,	22,	30,	1,	'2024-05-11 08:51:43',	'2024-05-11 08:51:43'),
(83,	19,	23,	14,	1,	'2024-05-13 07:30:47',	'2024-05-13 07:30:47'),
(106,	1,	1,	1,	1,	'2024-05-17 11:58:04',	'2024-05-17 11:58:04'),
(126,	10,	12,	36,	1,	'2024-05-18 08:43:24',	'2024-05-18 08:43:24');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint unsigned DEFAULT NULL,
  `added_by` bigint unsigned DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  KEY `categories_added_by_foreign` (`added_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent','buy_get') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `get_product` bigint DEFAULT NULL,
  `buy_product` bigint DEFAULT NULL,
  `value` decimal(20,2) DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `start_date` timestamp NULL DEFAULT NULL,
  `expired_date` timestamp NULL DEFAULT NULL,
  `min_purchase` decimal(20,2) DEFAULT NULL,
  `max_purchase` decimal(20,2) DEFAULT NULL,
  `limit` bigint DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT '0',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IN',
  `used` bigint NOT NULL DEFAULT '0',
  `max_uses_per_user` bigint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `get_product`, `buy_product`, `value`, `status`, `start_date`, `expired_date`, `min_purchase`, `max_purchase`, `limit`, `user_id`, `category_id`, `country`, `used`, `max_uses_per_user`, `created_at`, `updated_at`) VALUES
(1,	'ayu',	'ayu27',	'fixed',	NULL,	NULL,	1000.00,	'active',	'2024-04-22 00:00:00',	'2024-04-27 00:00:00',	1500.00,	2000.00,	3,	1,	0,	'IN',	0,	1,	'2024-04-24 05:33:11',	'2024-04-24 05:33:11'),
(2,	'First Order',	'new',	'fixed',	NULL,	NULL,	5.00,	'active',	'2024-05-11 00:00:00',	'2024-05-12 00:00:00',	999.00,	5000.00,	1,	8,	0,	'IN',	4,	1,	'2024-04-24 05:38:03',	'2024-05-13 07:53:05'),
(3,	'test',	'Test20',	'percent',	NULL,	NULL,	50.00,	'active',	'2024-05-18 00:00:00',	'2024-05-18 00:00:00',	450.00,	700.00,	10,	8,	0,	'IN',	1,	1,	'2024-05-13 05:13:24',	'2024-05-18 08:42:48'),
(6,	'asdf',	'asdf10',	'fixed',	NULL,	NULL,	10.00,	'active',	'2024-05-18 00:00:00',	'2024-05-18 00:00:00',	100.00,	1000.00,	10,	8,	0,	'IN',	1,	1,	'2024-05-18 08:49:35',	'2024-05-18 08:50:46');

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) NOT NULL,
  `tax_value` decimal(10,2) DEFAULT '0.00',
  `tax_name` varchar(40) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'india',
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'IN',
  `delivery_charges` bigint NOT NULL,
  `discount` bigint DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `delivery` (`id`, `country`, `country_code`, `delivery_charges`, `discount`, `created_at`, `updated_at`) VALUES
(1,	'India',	'IN',	200,	98,	'2024-04-24 06:09:33',	'2024-04-24 06:09:33');

DROP TABLE IF EXISTS `filter_products`;
CREATE TABLE `filter_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gender` json DEFAULT NULL,
  `shape` json DEFAULT NULL,
  `frame_type` json DEFAULT NULL,
  `color` json DEFAULT NULL,
  `material` json DEFAULT NULL,
  `size` json DEFAULT NULL,
  `weight_group` json DEFAULT NULL,
  `price_range` json DEFAULT NULL,
  `categories` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `filter_products` (`id`, `gender`, `shape`, `frame_type`, `color`, `material`, `size`, `weight_group`, `price_range`, `categories`, `created_at`, `updated_at`) VALUES
(1,	'[{\"id\": 1, \"image\": \"1713867461235-men-eyeglasses 200X200.webp\", \"value\": \"Men\", \"status\": \"active\"}, {\"id\": 2, \"image\": \"1713867481185-women-eyeglasses 200X200.webp\", \"value\": \"Women\", \"status\": \"active\"}, {\"id\": 3, \"image\": \"1713867852620-kids copy.webp\", \"value\": \"Kids\", \"status\": \"active\"}, {\"id\": 4, \"image\": \"1715598304435-unisex.webp\", \"value\": \"Unisex\", \"status\": \"active\"}, {\"id\": 5, \"image\": \"1715408748384-3.jpg\", \"value\": \"Boy\", \"status\": \"active\"}, {\"id\": 6, \"image\": \"1715408777361-5.jpg\", \"value\": \"Girl \", \"status\": \"active\"}]',	'[{\"id\": 13, \"image\": \"1714026921096-CatEye.webp\", \"value\": \"Cat Eye\", \"status\": \"active\"}, {\"id\": 14, \"image\": \"1714026985989-Round.webp\", \"value\": \"Round\", \"status\": \"active\"}, {\"id\": 15, \"image\": \"1714027024206-Aviator.webp\", \"value\": \"Aviator\", \"status\": \"active\"}, {\"id\": 16, \"image\": \"1714027041295-Sports.webp\", \"value\": \"Sports\", \"status\": \"active\"}, {\"id\": 17, \"image\": \"1714027059736-Octagon.webp\", \"value\": \"Octagon\", \"status\": \"active\"}, {\"id\": 18, \"image\": \"1714027081943-Oval.webp\", \"value\": \"Oval\", \"status\": \"active\"}, {\"id\": 19, \"image\": \"1714027125464-Rectangle.webp\", \"value\": \"Rectangle\", \"status\": \"active\"}, {\"id\": 20, \"image\": \"1714027147331-Square.webp\", \"value\": \"Square\", \"status\": \"active\"}, {\"id\": 21, \"image\": \"1714027165085-Geometric.webp\", \"value\": \"Geometric\", \"status\": \"active\"}, {\"id\": 22, \"image\": \"1714388655663-sunglasses keyhole bridge.jpg\", \"value\": \"Keyhole Bridge \", \"status\": \"inactive\"}]',	'[{\"id\": 1, \"value\": \"full rim\", \"status\": \"active\"}, {\"id\": 2, \"value\": \"half rim\", \"status\": \"active\"}]',	'[{\"id\": 1, \"value\": \"#6d1818\", \"status\": \"active\"}, {\"id\": 3, \"value\": \"#532ed6\", \"status\": \"active\"}, {\"id\": 4, \"value\": \"#fae505\", \"status\": \"active\"}, {\"id\": 5, \"value\": \"#ffffff\", \"status\": \"active\"}, {\"id\": 6, \"value\": \"#db3333\", \"status\": \"inactive\"}, {\"id\": 7, \"value\": \"#b76e79\", \"status\": \"active\"}, {\"id\": 8, \"value\": \"#070503\", \"status\": \"active\"}, {\"id\": 9, \"value\": \"#f4fafc\", \"status\": \"active\"}, {\"id\": 10, \"value\": \"#323232\", \"status\": \"active\"}, {\"id\": 11, \"value\": \"#b87333\", \"status\": \"active\"}]',	'[{\"id\": 1, \"value\": \"Plastic\", \"status\": \"active\"}, {\"id\": 2, \"value\": \"Metal \", \"status\": \"active\"}, {\"id\": 3, \"value\": \"Polycarbonate\", \"status\": \"active\"}, {\"id\": 4, \"value\": \"Acetate\", \"status\": \"active\"}]',	'[{\"id\": 1, \"value\": \" Narrow\", \"status\": \"active\"}, {\"id\": 2, \"value\": \"Medium\", \"status\": \"active\"}, {\"id\": 3, \"value\": \"Wide\", \"status\": \"active\"}]',	'[{\"id\": 1, \"value\": \"10 - 20\", \"status\": \"active\"}, {\"id\": 2, \"value\": \"20 - 30\", \"status\": \"active\"}, {\"id\": 3, \"value\": \"30 - 40\", \"status\": \"active\"}]',	'[{\"id\": 1, \"max\": \"199\", \"min\": \"1\", \"status\": \"active\"}, {\"id\": 2, \"max\": \"999\", \"min\": \"200\", \"status\": \"active\"}, {\"id\": 3, \"max\": \"1999\", \"min\": \"1000\", \"status\": \"active\"}, {\"id\": 4, \"max\": \"2999\", \"min\": \"2000\", \"status\": \"active\"}, {\"id\": 5, \"max\": \"3999\", \"min\": \"3000\", \"status\": \"active\"}, {\"id\": 6, \"max\": \"4999\", \"min\": \"4000\", \"status\": \"active\"}]',	'[{\"id\": 1, \"slug\": \"Eyeglasses\", \"image\": \"1713589670791-orderProductImg.webp\", \"title\": \"Eyeglasses\", \"value\": \"Eyeglasses\", \"status\": \"active\", \"gender_arr\": [\"1\", \"2\", \"3\"], \"is_special_offer\": \"0\"}, {\"id\": 2, \"slug\": \"Sunglasses\", \"image\": \"1713782683920-Try on copy.webp\", \"title\": \"Sunglasses\", \"value\": \"Sunglasses\", \"status\": \"active\", \"gender_arr\": [\"1\", \"2\"], \"is_special_offer\": \"0\"}, {\"id\": 3, \"slug\": \"Computer Glasses\", \"image\": \"1713789780682-1706855859751-1706598199486-photo_2024-01-29_11-32-36.jpg\", \"title\": \"Computer Glasses\", \"value\": \"Computer Glasses\", \"status\": \"active\", \"gender_arr\": [\"1\", \"2\", \"3\"], \"is_special_offer\": \"0\"}, {\"id\": 4, \"slug\": \"Students\", \"image\": \"1713867572846-men-computer Glasses 200X200.webp\", \"title\": \"Students\", \"value\": \"Students\", \"status\": \"active\", \"gender_arr\": [\"3\", \"5\", \"6\"], \"is_special_offer\": \"1\"}]',	'2024-05-16 12:38:36',	'2024-05-16 12:38:36');

DROP TABLE IF EXISTS `footer_data`;
CREATE TABLE `footer_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `h1_image` varchar(900) DEFAULT NULL,
  `h1_description` varchar(2000) DEFAULT NULL,
  `social_media_data` json DEFAULT NULL,
  `footer_email` varchar(50) DEFAULT NULL,
  `footer_phone` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `footer_data` (`id`, `h1_image`, `h1_description`, `social_media_data`, `footer_email`, `footer_phone`, `created_at`, `updated_at`) VALUES
(1,	'1715852034014-vuezen-logo.webp',	' Vuezen Is Where Vision Meets Style. We Pride Ourselves On Crafting Premium Eyewear That Seamlessly Blends Innovation And Fashion. With A Commitment To Quality And A Passion For Design, Vuezen Brings Clarity And Confidence To Your World.',	'[{\"id\": 1, \"url\": \"https://x.com/Vuezeneye?t=eALrvwB8Ck5p_E3YnmjdAQ&s=35\", \"image\": \"1716032457195-twitter.png\"}, {\"id\": 2, \"url\": \"https://www.facebook.com/people/Vuezen/61554449783885/\", \"image\": \"1716032474850-fb.png\"}, {\"id\": 3, \"url\": \"https://www.instagram.com/vuezen/\", \"image\": \"1716032493888-insta.png\"}]',	'Info@Vuezen.Com',	'+1 (302) 990-0619',	'2024-05-16 09:21:59',	'2024-05-18 11:41:33');

DROP TABLE IF EXISTS `frame_sizes_config`;
CREATE TABLE `frame_sizes_config` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `frame_sizes_config` (`id`, `heading`, `description`, `created_at`, `updated_at`) VALUES
(1,	'Frame Width',	'The total width of the eyeglass frame from one end to the other, typically measured horizontally across the front.',	'2024-03-20 10:00:35',	'2024-03-20 10:00:35'),
(2,	'Lens Width',	'The width of one lens, measured horizontally from one side to the other. This measurement is important to ensure that the lenses cover the eyes properly.',	'2024-01-30 10:53:50',	'2024-01-30 10:53:54'),
(3,	'Lens Height',	'The height of one lens, measured vertically from the top to the bottom. This measurement is crucial for determining how much of the eye the lens will cover.',	'2024-01-30 10:53:58',	'2024-01-30 10:54:02'),
(4,	'Bridge Width',	'The distance between the lenses, measured across the bridge of the nose. It determines how well the glasses will sit on the nose.',	'2024-01-30 10:54:10',	'2024-01-30 10:54:14'),
(5,	'Temple Length',	'The length of the temple arms, measured from the hinge to the tip that goes behind the ear. This measurement is important for ensuring that the temples are long enough to reach the ears comfortably.',	'2024-01-30 10:54:31',	'2024-01-30 10:54:35');

DROP TABLE IF EXISTS `logistic_data`;
CREATE TABLE `logistic_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(100) NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `html_message` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `waybill` bigint unsigned DEFAULT NULL,
  `refnum` varchar(255) DEFAULT NULL,
  `logistic_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `logistic_data` (`id`, `status`, `order_id`, `html_message`, `remark`, `waybill`, `refnum`, `logistic_name`, `created_at`, `updated_at`) VALUES
(1,	'success',	1716979535878,	'',	'',	24562011956905,	'1716979535878',	'delhivery',	'2024-05-16 09:10:46',	'2024-05-16 09:10:46'),
(2,	'success',	1717337144907,	'',	'',	24562011956942,	'1717337144907',	'delhivery',	'2024-05-16 09:33:05',	'2024-05-16 09:33:05'),
(3,	'success',	1720740505150,	'',	'',	24562011957944,	'1720740505150',	'delhivery',	'2024-05-16 10:32:20',	'2024-05-16 10:32:20'),
(4,	'success',	1724180251257,	'',	'',	24562011958040,	'1724180251257',	'delhivery',	'2024-05-16 09:01:10',	'2024-05-16 09:01:10'),
(5,	'success',	1716521492070,	'',	'',	24562011966484,	'1716521492070',	'delhivery',	'2024-05-17 07:52:38',	'2024-05-17 07:52:38'),
(6,	'success',	1722461396624,	'',	'',	24562011969122,	'1722461396624',	'delhivery',	'2024-05-17 11:05:28',	'2024-05-17 11:05:28'),
(7,	'success',	1725865299502,	'',	'',	24562011974884,	'1725865299502',	'delhivery',	'2024-05-18 05:24:32',	'2024-05-18 05:24:32'),
(8,	'success',	1722053690207,	'',	'',	24562011976494,	'1722053690207',	'delhivery',	'2024-05-18 05:56:08',	'2024-05-18 05:56:08'),
(9,	'success',	1723324332461,	'',	'',	24562011976542,	'1723324332461',	'delhivery',	'2024-05-18 05:24:32',	'2024-05-18 05:24:32'),
(10,	'success',	1724994693339,	'',	'',	24562011976575,	'1724994693339',	'delhivery',	'2024-05-18 06:22:38',	'2024-05-18 06:22:38'),
(11,	'success',	1718204320747,	'',	'',	24562011976671,	'1718204320747',	'delhivery',	'2024-05-18 06:26:16',	'2024-05-18 06:26:16'),
(12,	'success',	1724736126534,	'',	'',	24562011978896,	'1724736126534',	'delhivery',	'2024-05-18 07:03:33',	'2024-05-18 07:03:33'),
(13,	'success',	1723954715393,	'',	'',	24562011981000,	'1723954715393',	'delhivery',	'2024-05-18 10:32:16',	'2024-05-18 10:32:16'),
(14,	'success',	1718027726605,	'',	'',	24562011981044,	'1718027726605',	'delhivery',	'2024-05-18 10:41:07',	'2024-05-18 10:41:07');

DROP TABLE IF EXISTS `logistic_order_track`;
CREATE TABLE `logistic_order_track` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `awb_number` varchar(255) NOT NULL,
  `latest_scan_time` varchar(255) NOT NULL,
  `live_status` bigint NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `edd_date` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `logistic_order_track` (`id`, `awb_number`, `latest_scan_time`, `live_status`, `status`, `remark`, `location`, `edd_date`, `created_at`, `updated_at`) VALUES
(1,	'AWB001',	'2022-04-04 15:20:25',	2,	'picked up',	'picked up',	'mumbai',	'2022-04-10 15:20:25',	'2024-05-03 14:25:48',	NULL),
(2,	'24562011866841',	'2024-05-06 17:37:54',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-06 12:07:56',	NULL),
(3,	'24562011867390',	'2024-05-07 14:40:18',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-07 09:10:20',	NULL),
(4,	'24562011867202',	'2024-05-07 14:41:18',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-07 09:11:20',	NULL),
(5,	'24562011876991',	'2024-05-09 12:25:28',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 06:55:30',	NULL),
(6,	'24562011839331',	'2024-05-09 12:35:23',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 07:05:26',	NULL),
(7,	'24562011839246',	'2024-05-09 12:35:33',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 07:05:36',	NULL),
(8,	'24562011893290',	'2024-05-09 14:20:11',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 08:50:12',	NULL),
(9,	'24562011895003',	'2024-05-09 15:13:28',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 09:45:29',	NULL),
(10,	'24562011897151',	'2024-05-09 19:30:05',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 14:02:07',	NULL),
(11,	'24562011897195',	'2024-05-09 19:47:29',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 14:19:31',	NULL),
(12,	'24562011897210',	'2024-05-09 19:51:26',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 14:23:28',	NULL),
(13,	'24562011897254',	'2024-05-09 20:19:06',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 14:49:07',	NULL),
(14,	'24562011897276',	'2024-05-09 20:19:03',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 14:51:04',	NULL),
(15,	'24562011897291',	'2024-05-09 20:31:36',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 15:03:38',	NULL),
(16,	'24562011897324',	'2024-05-09 20:43:56',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 15:13:58',	NULL),
(17,	'24562011897302',	'2024-05-09 20:44:00',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 15:14:02',	NULL),
(18,	'24562011919772',	'2024-05-13 11:18:00',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-13 05:48:02',	NULL),
(19,	'24562011921824',	'2024-05-13 12:40:06',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-13 07:10:08',	NULL),
(20,	'24562011921894',	'2024-05-13 12:50:26',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-13 07:20:27',	NULL),
(21,	'24562011924086',	'2024-05-13 17:28:29',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-13 11:58:31',	NULL),
(22,	'24562011927645',	'2024-05-13 19:59:35',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-13 14:29:36',	NULL),
(23,	'24562011935695',	'2024-05-14 14:27:25',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-14 08:59:26',	NULL),
(24,	'24562011947540',	'2024-05-15 15:53:29',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-15 10:25:32',	NULL),
(25,	'24562011947595',	'2024-05-15 15:54:14',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-15 10:26:15',	NULL),
(26,	'24562011947761',	'2024-05-15 16:14:27',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-15 10:46:29',	NULL),
(27,	'24562011947993',	'2024-05-15 16:43:38',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-15 11:15:40',	NULL);

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `message` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'null',
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `newsletters` (`id`, `email`, `status`, `message`, `created_at`, `updated_at`) VALUES
(1,	'durgesh@bastionex.net',	'active',	'null',	'2024-04-23 08:54:28',	'2024-04-23 08:54:28'),
(2,	'ayushi@bastionex.net',	'active',	'null',	'2024-04-24 11:09:32',	'2024-04-24 11:09:32'),
(3,	'test@yopmail.com',	'active',	'null',	'2024-05-13 05:49:05',	'2024-05-13 05:49:05'),
(4,	'asdf@yopmail.com',	'active',	'null',	'2024-05-18 05:39:07',	'2024-05-18 05:39:07'),
(5,	'asdfg@yopmail.com',	'active',	'null',	'2024-05-18 05:51:41',	'2024-05-18 05:51:41'),
(6,	'asdf1@yopmail.com',	'active',	'null',	'2024-05-18 05:53:38',	'2024-05-18 05:53:38');

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `offer_data`;
CREATE TABLE `offer_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `position` tinyint NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `offer_data` (`id`, `title`, `description`, `image`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1,	'flash sale 123',	'Now Live: Cyber Monday Sale Get Up To 40% Off*',	NULL,	1,	'active',	'2024-05-09 12:45:20',	'2024-01-25 09:14:57'),
(2,	'diwali sale for all',	'now live diwali sale get upto 60% off and',	'1706174114251-pic4.jpg',	2,	'inactive',	'2024-02-03 05:29:26',	'2024-01-25 09:19:13'),
(3,	'diwali sale for all',	'now live diwali sale get upto 60% off and',	'',	3,	'active',	'2024-02-03 05:59:41',	'2024-02-03 05:59:41'),
(8,	'diwali sale for all',	NULL,	'',	4,	'inactive',	'2024-02-03 06:02:02',	'2024-02-03 06:02:02'),
(9,	'diwali sale for all1',	NULL,	'',	5,	'inactive',	'2024-02-03 06:13:55',	'2024-02-03 06:13:55'),
(10,	'diwali sale for all12',	NULL,	'',	6,	'active',	'2024-02-03 06:14:34',	'2024-02-03 06:14:34');

DROP TABLE IF EXISTS `online_payment_discount`;
CREATE TABLE `online_payment_discount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `discount` bigint NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `online_payment_discount` (`id`, `country_code`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1,	'IN',	10,	'active',	'2024-04-23 14:55:50',	'2024-04-23 14:55:50');

DROP TABLE IF EXISTS `online_payment_options`;
CREATE TABLE `online_payment_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `payment_name` varchar(500) NOT NULL,
  `is_local` tinyint NOT NULL DEFAULT '1',
  `country_code` varchar(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `order_delivery_day`;
CREATE TABLE `order_delivery_day` (
  `id` int NOT NULL AUTO_INCREMENT,
  `delivery_day` int NOT NULL,
  `shipping_day` int NOT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `country_code` varchar(10) NOT NULL DEFAULT 'IN',
  `out_for_delivery_day` int NOT NULL,
  `normal_delivery_charges` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `order_delivery_day` (`id`, `delivery_day`, `shipping_day`, `country`, `country_code`, `out_for_delivery_day`, `normal_delivery_charges`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	'India',	'IN',	1,	20,	'2024-04-23 11:20:57',	'2024-05-13 09:20:40');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `is_student_info_id` bigint NOT NULL DEFAULT '0',
  `address_id` bigint unsigned NOT NULL,
  `variant_quantity` json NOT NULL,
  `coupon_id` bigint unsigned DEFAULT NULL,
  `sub_total` decimal(8,2) NOT NULL,
  `country_code` varchar(100) NOT NULL DEFAULT 'IN',
  `delivery_charges` decimal(8,2) NOT NULL,
  `payment_mode` varchar(300) DEFAULT NULL,
  `payment_method` enum('Cash on Delivery','Paypal','Debit Card/Credit Card','Razorpay') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Cash on Delivery',
  `payment_status` enum('complete','failed','pending') NOT NULL DEFAULT 'pending',
  `status` enum('new','outfordelivery','processing','cancelled','delivered','return-request','return-failed','return-success') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'new',
  `card_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `card_data` json DEFAULT NULL,
  `ref_id` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `order_date` timestamp NOT NULL,
  `delivery_date` timestamp NOT NULL,
  `shipping_date` timestamp NULL DEFAULT NULL,
  `out_for_delivery_date` timestamp NULL DEFAULT NULL,
  `delivery_instructions` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `payment_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `address_id` (`address_id`),
  KEY `coupon_id` (`coupon_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `user_addresses` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `is_student_info_id`, `address_id`, `variant_quantity`, `coupon_id`, `sub_total`, `country_code`, `delivery_charges`, `payment_mode`, `payment_method`, `payment_status`, `status`, `card_details`, `card_data`, `ref_id`, `txn_id`, `order_date`, `delivery_date`, `shipping_date`, `out_for_delivery_date`, `delivery_instructions`, `created_at`, `updated_at`, `payment_id`) VALUES
(1,	'1721878120582',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	989.01,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-23 14:45:47',	'2024-04-26 14:45:47',	'2024-04-25 14:45:47',	'2024-04-26 14:45:47',	NULL,	'2024-04-23 14:45:47',	'2024-04-23 14:45:47',	NULL),
(2,	'1716847673273',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181826653\\\",\\\"created_at\\\":\\\"2024-04-23T20:26:45+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-23T20:26:45+05:30\\\",\\\"order_id\\\":\\\"e99673ef-1691-42ee-837e-129e6c9c6623\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_o-G_3ovbIhvgITSij1TXa5Op6lYuZ_y1nGqcHKOOFO4kALgaPr7JaB7Z83XAXJsHYT6B2kTfGNP_MCRSQSdS5Zs4igir3bAzIlMbU0im6o1Y\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-23 14:56:40',	'2024-04-26 14:56:40',	'2024-04-25 14:56:40',	'2024-04-26 14:56:40',	NULL,	'2024-04-23 14:56:40',	'2024-04-23 15:30:00',	'e99673ef-1691-42ee-837e-129e6c9c6623'),
(3,	'1719126315696',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181826669\\\",\\\"created_at\\\":\\\"2024-04-23T20:28:44+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-23T20:28:44+05:30\\\",\\\"order_id\\\":\\\"a6e6fe1d-d07d-4066-b72d-5168ef4004bf\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_Uf7Tf1RzMolkunnBNaGO2Wf5IOqDsya_Hs-NpWXY3bkzD4iX39-DCtmKi7b2WpkMVWeoOXyN66IAoGEtChjD8m-4g3ta928KEQ7TgF7bmYRs\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-23 14:58:42',	'2024-04-26 14:58:42',	'2024-04-25 14:58:42',	'2024-04-26 14:58:42',	NULL,	'2024-04-23 14:58:42',	'2024-04-23 15:30:00',	'a6e6fe1d-d07d-4066-b72d-5168ef4004bf'),
(4,	'1721718204341',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181826707\\\",\\\"created_at\\\":\\\"2024-04-23T20:34:34+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-23T20:34:34+05:30\\\",\\\"order_id\\\":\\\"12b26170-a0e6-4e9f-889a-f78ba670d2fc\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_7B_7bmxQW2WqLB6zVVlJ6knztvIAbrFvj-teU0Y-dlr8QnhROlJthZMd6s9ovs-BgumFMiw6nU3V8uuc78KaSzrh9FoDivePkdA_1sWZxUWp\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-23 15:04:29',	'2024-04-26 15:04:29',	'2024-04-25 15:04:29',	'2024-04-26 15:04:29',	NULL,	'2024-04-23 15:04:29',	'2024-04-23 15:05:07',	'12b26170-a0e6-4e9f-889a-f78ba670d2fc'),
(5,	'1722361992853',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181832479\\\",\\\"created_at\\\":\\\"2024-04-24T10:32:10+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-24T10:32:10+05:30\\\",\\\"order_id\\\":\\\"e2c286c2-5040-44b3-905f-d24039832f80\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_5nMYpVizj6DvtOc8EqF_YJ0yAK5teiQfpJoxuofGDIzeNAt9TSDII0bZbthxDn8D6Pe67luoIFV2cu4wcjrG1tHLa0Vgyq2G_iwMSv6E4rnF\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-24 05:02:07',	'2024-04-27 05:02:07',	'2024-04-26 05:02:07',	'2024-04-27 05:02:07',	NULL,	'2024-04-24 05:02:07',	'2024-04-24 05:03:12',	'e2c286c2-5040-44b3-905f-d24039832f80'),
(6,	'1715226477307',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181832537\\\",\\\"created_at\\\":\\\"2024-04-24T10:38:36+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-24T10:38:36+05:30\\\",\\\"order_id\\\":\\\"7dac9f81-76f8-437e-960e-332995d714ef\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_DI0Ema8fuKA9hVDT-i551S0um4fp3wiJlF6Qy0K9Zs4KBWnUwnC808mEDwcIHxJD-rCDjzIwbaoMC64TEfOHbB8DRQJpuRkuA00H34U5wdtu\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-24 05:06:17',	'2024-04-27 05:06:17',	'2024-04-26 05:06:17',	'2024-04-27 05:06:17',	NULL,	'2024-04-24 05:06:17',	'2024-04-24 05:08:55',	'7dac9f81-76f8-437e-960e-332995d714ef'),
(7,	'1721898809315',	1,	0,	1,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	989.01,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-24 05:24:59',	'2024-04-27 05:24:59',	'2024-04-26 05:24:59',	'2024-04-27 05:24:59',	NULL,	'2024-04-24 05:24:59',	'2024-04-24 05:25:50',	NULL),
(8,	'1715626263059',	8,	0,	3,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	989.01,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-24 05:30:11',	'2024-04-27 05:30:11',	'2024-04-26 05:30:11',	'2024-04-27 05:30:11',	NULL,	'2024-04-24 05:30:11',	'2024-04-24 05:30:21',	NULL),
(9,	'1715868090870',	8,	0,	3,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	2,	781.10,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181833716\\\",\\\"created_at\\\":\\\"2024-04-24T11:12:17+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9898989898\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":981,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-24T11:12:17+05:30\\\",\\\"order_id\\\":\\\"8fa650bb-d84f-430f-9ea7-226729096815\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_d9eQxVZA6PgEsp9zbBXZTQ7aROZHlt3A2CPvnyYd5ekfidWutpAIndpnebNRTn8Ntp1zkJ1xU5ga4h1pLxLU3oASROUqei_0y0wRM-X2_9s6\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-24 05:42:14',	'2024-04-27 05:42:14',	'2024-04-26 05:42:14',	'2024-04-27 05:42:14',	NULL,	'2024-04-24 05:42:14',	'2024-04-24 06:30:00',	'8fa650bb-d84f-430f-9ea7-226729096815'),
(10,	'1716850419862',	8,	1,	3,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 2, \"variant_id\": \"2\", \"variant_name\": \"test\", \"product_price\": 475, \"thumbnail_url\": null}]',	2,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-24 06:01:51',	'2024-04-27 06:01:51',	'2024-04-26 06:01:51',	'2024-04-27 06:01:51',	NULL,	'2024-04-24 06:01:51',	'2024-04-24 06:01:51',	NULL),
(11,	'1718505524294',	8,	1,	3,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 2, \"variant_id\": \"2\", \"variant_name\": \"test\", \"product_price\": 475, \"thumbnail_url\": null}]',	NULL,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-24 06:11:52',	'2024-04-27 06:11:52',	'2024-04-26 06:11:52',	'2024-04-27 06:11:52',	NULL,	'2024-04-24 06:11:52',	'2024-04-24 06:11:52',	NULL),
(12,	'1716812523760',	1,	3,	1,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 2, \"variant_id\": \"2\", \"variant_name\": \"test\", \"product_price\": 475, \"thumbnail_url\": \"1713941465413-Try on copy.webp\"}]',	NULL,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 07:21:01',	'2024-04-28 07:21:01',	'2024-04-27 07:21:01',	'2024-04-28 07:21:01',	NULL,	'2024-04-25 07:21:01',	'2024-04-25 07:21:01',	NULL),
(13,	'1723128082969',	10,	0,	5,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181861625\\\",\\\"created_at\\\":\\\"2024-04-25T17:17:01+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T17:17:01+05:30\\\",\\\"order_id\\\":\\\"b6023d35-b947-47f2-a479-287b32bff841\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_Anb1T-Qur_HFYL-GSJITn1Rquk3XOD4Egim58RyoI5OkvX0Okb2hxiB7u6a25sZKL8vTb4uThA2N08czWkgbQX2sgQBrCQLQ0VniCL1LcCdb\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 11:46:55',	'2024-04-28 11:46:55',	'2024-04-27 11:46:55',	'2024-04-28 11:46:55',	NULL,	'2024-04-25 11:46:55',	'2024-04-25 11:47:30',	'b6023d35-b947-47f2-a479-287b32bff841'),
(14,	'1722972980844',	10,	0,	5,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	989.01,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 11:48:25',	'2024-04-28 11:48:25',	'2024-04-27 11:48:25',	'2024-04-28 11:48:25',	NULL,	'2024-04-25 11:48:25',	'2024-04-25 11:48:25',	NULL),
(15,	'1716206851267',	10,	0,	5,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181863945\\\",\\\"created_at\\\":\\\"2024-04-25T18:10:15+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T18:10:15+05:30\\\",\\\"order_id\\\":\\\"81586a1b-6339-4c91-adf7-2fdfe6bd3bcd\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_rf8vRRNI0mbrevDoOfipMZU5iuO-HShu04e_KQQK9jTvhSv-skL2QkbydMD9Fkl5I41rR5VCP_x_ZsaTfilDrQ9I-HEhRBzZ3UQWp2KDWfa0\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 12:40:10',	'2024-04-28 12:40:10',	'2024-04-27 12:40:10',	'2024-04-28 12:40:10',	NULL,	'2024-04-25 12:40:10',	'2024-04-25 13:30:00',	'81586a1b-6339-4c91-adf7-2fdfe6bd3bcd'),
(16,	'1716091895996',	10,	0,	5,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	1760.22,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181863953\\\",\\\"created_at\\\":\\\"2024-04-25T18:11:43+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1960,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T18:11:43+05:30\\\",\\\"order_id\\\":\\\"1ad2060e-e7f6-49d3-b151-22ce3ab900bb\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_hAk8YY7H0D-DsllUIMC2mf89Ep0SqzDuGgykyuBjgFzkoJ2XH44kg3G56nq5ff8_hPxauGzoowYpfmJRQiLqXAALTkPIWfmUZ_bomcb5BGmg\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 12:41:41',	'2024-04-28 12:41:41',	'2024-04-27 12:41:41',	'2024-04-28 12:41:41',	NULL,	'2024-04-25 12:41:41',	'2024-04-25 12:42:33',	'1ad2060e-e7f6-49d3-b151-22ce3ab900bb'),
(17,	'1717159200610',	10,	0,	5,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'delivered',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181863979\\\",\\\"created_at\\\":\\\"2024-04-25T18:13:15+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T18:13:15+05:30\\\",\\\"order_id\\\":\\\"ba0f7876-5bac-43a1-8442-3e8226a90770\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_3EY7Y1-wX9B1oMji4GKb3kJvAtyzi6G96BiIBlKnYN2HU8GCTGe0vwq5QcBNr8_xgw_0WfP_xbyIG9e20qTIGpdPdajO8liupIDRwewpucq-\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 12:43:13',	'2024-04-25 12:45:10',	'2024-04-25 12:44:19',	'2024-04-25 12:44:48',	NULL,	'2024-04-25 12:43:13',	'2024-04-25 12:45:10',	'ba0f7876-5bac-43a1-8442-3e8226a90770'),
(18,	'1714613977347',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	989.01,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 15:12:47',	'2024-04-28 15:12:47',	'2024-04-27 15:12:47',	'2024-04-28 15:12:47',	NULL,	'2024-04-25 15:12:47',	'2024-04-25 15:12:47',	NULL),
(19,	'1720337003360',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181865586\\\",\\\"created_at\\\":\\\"2024-04-25T20:43:17+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T20:43:17+05:30\\\",\\\"order_id\\\":\\\"773bd8a7-0181-43d9-9f69-2032aca169d0\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_lCR7bo-dOhrKQrhu7ZSkS5CdgZU3sSffcnXLZo6XwoOMteuw3wk-WOGvU5u8zHZdVlbriwpNj-R_nr6p84lEqSHGqf5kmRQItrTpS-kyNIZ3\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 15:13:15',	'2024-04-28 15:13:15',	'2024-04-27 15:13:15',	'2024-04-28 15:13:15',	NULL,	'2024-04-25 15:13:15',	'2024-04-25 15:32:23',	'773bd8a7-0181-43d9-9f69-2032aca169d0'),
(20,	'1719072174124',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181865692\\\",\\\"created_at\\\":\\\"2024-04-25T21:10:52+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T21:10:52+05:30\\\",\\\"order_id\\\":\\\"f6facaef-5082-46ee-b9a0-7fd073aeb75a\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_oqf58RdR8IgHz7GSrl3aCWfGNoAInnfDgaPsd79sX5uvaFyDpyg1A9nNFcy-tkejaY9LVFCO7ht51G5IzOA2eVIra9mzcsNwLgCNHTcbduVl\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 15:40:50',	'2024-04-28 15:40:50',	'2024-04-27 15:40:50',	'2024-04-28 15:40:50',	NULL,	'2024-04-25 15:40:50',	'2024-04-25 15:41:09',	'f6facaef-5082-46ee-b9a0-7fd073aeb75a'),
(21,	'1715142201275',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	772.92,	'IN',	200.00,	NULL,	'Debit Card/Credit Card',	'failed',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 16:07:03',	'2024-04-28 16:07:03',	'2024-04-27 16:07:03',	'2024-04-28 16:07:03',	NULL,	'2024-04-25 16:07:03',	'2024-04-25 17:00:00',	NULL),
(22,	'1718265064674',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	772.92,	'IN',	200.00,	NULL,	'Debit Card/Credit Card',	'failed',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 16:07:23',	'2024-04-28 16:07:23',	'2024-04-27 16:07:23',	'2024-04-28 16:07:23',	NULL,	'2024-04-25 16:07:23',	'2024-04-25 17:00:00',	NULL),
(23,	'1714308729412',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	772.92,	'IN',	200.00,	NULL,	'Debit Card/Credit Card',	'failed',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 16:08:10',	'2024-04-28 16:08:10',	'2024-04-27 16:08:10',	'2024-04-28 16:08:10',	NULL,	'2024-04-25 16:08:10',	'2024-04-25 17:00:00',	NULL),
(24,	'1719261601878',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	772.92,	'IN',	200.00,	NULL,	'Debit Card/Credit Card',	'failed',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 16:08:59',	'2024-04-28 16:08:59',	'2024-04-27 16:08:59',	'2024-04-28 16:08:59',	NULL,	'2024-04-25 16:08:59',	'2024-04-25 17:00:00',	NULL),
(25,	'1720346562789',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	881.02,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 16:09:53',	'2024-04-28 16:09:53',	'2024-04-27 16:09:53',	'2024-04-28 16:09:53',	NULL,	'2024-04-25 16:09:53',	'2024-04-25 16:09:53',	NULL),
(26,	'1716803751238',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181880369\\\",\\\"created_at\\\":\\\"2024-04-27T10:01:53+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-27T10:01:53+05:30\\\",\\\"order_id\\\":\\\"7c676511-60db-44a1-9885-cb42fc4fbd12\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_E1Pwa4kXSZj8IWFW1TjZk7GZNpDOddIjm2bEszXHr1QVQCsRSjwad3dimKMFLI6-RyspRNzyIfB3wVUN6ezE_VAcmYZaM154sR4WVi__IPmx\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-27 04:31:52',	'2024-04-30 04:31:52',	'2024-04-29 04:31:52',	'2024-04-30 04:31:52',	NULL,	'2024-04-27 04:31:52',	'2024-04-27 04:32:15',	'7c676511-60db-44a1-9885-cb42fc4fbd12'),
(27,	'1721251792408',	2,	0,	2,	'[{\"quantity\": 10, \"is_student\": 0, \"product_id\": 5, \"variant_id\": \"6\", \"variant_name\": \"Rayban\", \"product_price\": 1054.08, \"thumbnail_url\": \"1714222801094-img1.jpg\"}]',	NULL,	9466.72,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181883350\\\",\\\"created_at\\\":\\\"2024-04-27T18:44:11+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":9667,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-27T18:44:11+05:30\\\",\\\"order_id\\\":\\\"db386582-5842-4252-87d5-740effd9e1ae\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_VmcGldip-T1XRCIY8Zb7CA-HaNSVAKeXEGPw9fmYIxD2OYPYSPh4izEhnlwaopgGBmA_QivgbNEBTbcP0rtvsFqRV17g72xDdM-wIpKPmuda\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-27 13:14:10',	'2024-04-30 13:14:10',	'2024-04-29 13:14:10',	'2024-04-30 13:14:10',	NULL,	'2024-04-27 13:14:10',	'2024-04-27 13:18:38',	'db386582-5842-4252-87d5-740effd9e1ae'),
(28,	'1716059180491',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	NULL,	630.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-07 07:11:50',	'2024-05-10 07:11:50',	'2024-05-09 07:11:50',	'2024-05-10 07:11:50',	NULL,	'2024-05-07 07:11:50',	'2024-05-07 10:21:17',	NULL),
(29,	'1716671806215',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	NULL,	547.00,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182023328\\\",\\\"created_at\\\":\\\"2024-05-07T12:53:30+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":747,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-06T12:53:30+05:30\\\",\\\"order_id\\\":\\\"4de3d40a-bd34-412b-9228-5de7c26225ee\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_AptxYMndkv_1vnWN0kiB7zSSOmOm-438dVEJPrX2KFyf57m46M9ptH_XOThBb68jxgWnNqB4gBXbf-LjnEPWxGUX9jH4GzWKAFiuydNiq2W7\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-07 07:19:21',	'2024-05-10 07:19:21',	'2024-05-09 07:19:21',	'2024-05-10 07:19:21',	NULL,	'2024-05-07 07:19:21',	'2024-05-07 07:24:18',	'4de3d40a-bd34-412b-9228-5de7c26225ee'),
(30,	'1722983537554',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 8, \"variant_id\": \"10\", \"variant_name\": \"Black Full Rim Rectangle Metal Frame Sunglasses\", \"product_price\": 532, \"thumbnail_url\": null}]',	NULL,	1162.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-07 09:09:30',	'2024-05-10 09:09:30',	'2024-05-09 09:09:30',	'2024-05-10 09:09:30',	NULL,	'2024-05-07 09:09:30',	'2024-05-07 09:09:30',	NULL),
(31,	'1717843808983',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182025137\\\",\\\"created_at\\\":\\\"2024-05-07T14:42:45+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-06T14:42:45+05:30\\\",\\\"order_id\\\":\\\"4b78c9ed-b9e7-4e8a-85c0-736b0272e20e\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session__n41dzEfsor7zpMiRFSMpWOUh7NTWcjw5QSVH4oyiN14G-2uAJ1Ozxd6_MkAI6BaGMrtlJrNbSykLwFJ7S0QsxvLHdjm3VS3U5yjJPBaIk56\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-07 09:12:44',	'2024-05-10 09:12:44',	'2024-05-09 09:12:44',	'2024-05-10 09:12:44',	NULL,	'2024-05-07 09:12:44',	'2024-05-07 09:13:24',	'4b78c9ed-b9e7-4e8a-85c0-736b0272e20e'),
(32,	'1715472052951',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	2,	490.30,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182025170\\\",\\\"created_at\\\":\\\"2024-05-07T14:44:50+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":690,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-06T14:44:50+05:30\\\",\\\"order_id\\\":\\\"d954976b-1c1b-4444-8c18-b83de6fa6e07\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_Y8dhrSqMY2VFd-1hnOoIRkoaaPPsYOfJAJklyjB_Ya3zQ0m2PcONuEtb3tH0FLd16HMBH0QNmO0bXcOZMvfJr5dr0YJziKU_0TyOEVPWPJff\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-07 09:14:48',	'2024-05-10 09:14:48',	'2024-05-09 09:14:48',	'2024-05-10 09:14:48',	NULL,	'2024-05-07 09:14:48',	'2024-05-07 09:15:15',	'd954976b-1c1b-4444-8c18-b83de6fa6e07'),
(33,	'1717705023733',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	881.02,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'delivered',	NULL,	NULL,	NULL,	NULL,	'2024-05-07 12:39:32',	'2024-05-11 09:00:28',	'2024-05-09 12:39:32',	'2024-05-10 12:39:32',	NULL,	'2024-05-07 12:39:32',	'2024-05-11 09:00:28',	NULL),
(34,	'1721782295619',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Lens Metal Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1714453750787-30.JPG\"}]',	NULL,	1157.25,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 10:39:20',	'2024-05-11 10:39:20',	'2024-05-10 10:39:20',	'2024-05-11 10:39:20',	NULL,	'2024-05-08 10:39:20',	'2024-05-08 10:39:43',	NULL),
(35,	'1716974054395',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 7, \"variant_id\": \"8\", \"variant_name\": \"Multicolor Full-Rim Frame Sunglasses\", \"product_price\": 569.05, \"thumbnail_url\": \"1714388202016-2.jpg\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	2080.07,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 10:43:17',	'2024-05-11 10:43:17',	'2024-05-10 10:43:17',	'2024-05-11 10:43:17',	NULL,	'2024-05-08 10:43:17',	'2024-05-08 10:43:17',	NULL),
(36,	'1717410385631',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}, {\"quantity\": 3, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 7, \"variant_id\": \"8\", \"variant_name\": \"Multicolor Full-Rim Frame Sunglasses\", \"product_price\": 569.05, \"thumbnail_url\": \"1714388202016-2.jpg\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 3, \"variant_id\": \"3\", \"variant_name\": \"tutle\", \"product_price\": 450, \"thumbnail_url\": null}]',	NULL,	3790.07,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 10:47:09',	'2024-05-11 10:47:09',	'2024-05-10 10:47:09',	'2024-05-11 10:47:09',	NULL,	'2024-05-08 10:47:09',	'2024-05-08 10:47:09',	NULL),
(37,	'1718506040462',	1,	0,	1,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 5, \"variant_id\": \"5\", \"variant_name\": \"Rayban\", \"product_price\": 949.05, \"thumbnail_url\": \"1714222490356-Explore_eyewear_788x380.webp\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	NULL,	3449.08,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'delivered',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 10:59:38',	'2024-05-11 07:29:03',	'2024-05-10 10:59:38',	'2024-05-11 10:59:38',	NULL,	'2024-05-08 10:59:38',	'2024-05-11 07:29:03',	NULL),
(38,	'1717036654142',	18,	4,	8,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 2, \"variant_id\": \"2\", \"variant_name\": \"test\", \"product_price\": 475, \"thumbnail_url\": \"1713941465413-Try on copy.webp\"}]',	NULL,	20.86,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182043107\\\",\\\"created_at\\\":\\\"2024-05-08T17:46:59+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8881825795\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":179,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-07T17:46:59+05:30\\\",\\\"order_id\\\":\\\"0fc9fc38-6ee8-4d0f-989d-e6d6af503283\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_goguZnjV3_HlE9Y1nzaD8U2wnMeC95VUeKl-m7_738FHG9JxiijaXqoi9hxUQ3Jr_7Ts_8DNFMOnOulfVrMkqvDLCCn6jF0vCrblvlds6wKr\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-08 12:16:58',	'2024-05-11 12:16:58',	'2024-05-10 12:16:58',	'2024-05-11 12:16:58',	NULL,	'2024-05-08 12:16:58',	'2024-05-08 13:00:00',	'0fc9fc38-6ee8-4d0f-989d-e6d6af503283'),
(39,	'1715994962337',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	NULL,	630.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 12:51:05',	'2024-05-11 00:00:00',	'2024-05-10 00:00:00',	'2024-05-11 00:00:00',	NULL,	'2024-05-08 12:51:05',	'2024-05-11 07:28:35',	NULL),
(40,	'1716921848833',	27,	0,	10,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 14, \"variant_id\": \"17\", \"variant_name\": \"Men\'s Aviator Metal Sunglass\", \"product_price\": 570, \"thumbnail_url\": null}]',	2,	513.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'complete',	'delivered',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 12:53:03',	'2024-05-11 07:27:25',	'2024-05-10 00:00:00',	'2024-05-11 07:26:59',	NULL,	'2024-05-08 12:53:03',	'2024-05-11 07:27:25',	NULL),
(41,	'1723462030221',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 5, \"variant_id\": \"5\", \"variant_name\": \"Rayban\", \"product_price\": 949.05, \"thumbnail_url\": \"1714222490356-Explore_eyewear_788x380.webp\"}]',	NULL,	949.05,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-09 06:16:36',	'2024-05-14 00:00:00',	'2024-05-12 00:00:00',	'2024-05-14 00:00:00',	NULL,	'2024-05-09 06:16:36',	'2024-05-11 08:59:16',	NULL),
(42,	'1719932935621',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 5, \"variant_id\": \"5\", \"variant_name\": \"Rayban\", \"product_price\": 949.05, \"thumbnail_url\": \"1714222490356-Explore_eyewear_788x380.webp\"}]',	NULL,	834.14,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182050271\\\",\\\"created_at\\\":\\\"2024-05-09T11:50:27+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8881825795\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1034,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-08T11:50:27+05:30\\\",\\\"order_id\\\":\\\"72545694-39c5-4af0-a85c-11d0ac8bb69b\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_XVUvjOW1MYM0Tb0003qYctU5EvAFIQOW9SrmlknMKtCFIxCjGjGBFtBhV7P_YR22lgm3Wod4AbCKJdLZhBm88zXzHpmQOp03NRL1DKcLoSYr\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-09 06:20:25',	'2024-05-12 06:20:25',	'2024-05-11 06:20:25',	'2024-05-12 06:20:25',	NULL,	'2024-05-09 06:20:25',	'2024-05-09 07:00:00',	'72545694-39c5-4af0-a85c-11d0ac8bb69b'),
(43,	'1718905893529',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	NULL,	630.00,	'IN',	80.00,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-13 04:50:27',	'2024-05-18 04:50:27',	'2024-05-18 04:50:27',	'2024-05-18 04:50:27',	NULL,	'2024-05-13 04:50:27',	'2024-05-13 04:53:27',	NULL),
(44,	'1723617322560',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1715421380776-DSC_-29png.png\"}]',	3,	263.63,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'delivered',	NULL,	NULL,	NULL,	NULL,	'2024-05-13 08:51:15',	'2024-05-13 08:53:22',	'2024-05-14 00:00:00',	'2024-05-15 00:00:00',	NULL,	'2024-05-13 08:51:15',	'2024-05-13 08:53:22',	NULL),
(45,	'1716979535878',	31,	0,	13,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 31, \"variant_id\": \"35\", \"variant_name\": \"Blue Light Blocking Glasses\", \"product_price\": 599, \"thumbnail_url\": null}]',	NULL,	530.25,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182141502\\\",\\\"created_at\\\":\\\"2024-05-16T14:58:13+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1716979535878\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8265833386\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":619,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-15T14:58:13+05:30\\\",\\\"order_id\\\":\\\"5f2772eb-8cac-4e45-acd7-451ceebbb26b\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_Mx8e9mXo0Xm4UxUl06RQhj1iq_GqH66WkAqICxzCJNa96AjcOGXIJ_eEkYfPMDdbAYOiJuigq0vBs6fE_GPX0wIBQjSKRALFKEfcFWdqS6ts\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-16 09:28:12',	'2024-05-17 09:28:12',	'2024-05-17 09:28:12',	'2024-05-17 09:28:12',	NULL,	'2024-05-16 09:28:12',	'2024-05-16 10:34:18',	'5f2772eb-8cac-4e45-acd7-451ceebbb26b'),
(46,	'1717337144907',	31,	0,	13,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 40, \"variant_id\": \"46\", \"variant_name\": \"Gray Gradient Lens Sunglasses\", \"product_price\": 499, \"thumbnail_url\": null}]',	NULL,	440.25,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182141573\\\",\\\"created_at\\\":\\\"2024-05-16T15:03:52+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1717337144907\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8265833386\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":529,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-15T15:03:52+05:30\\\",\\\"order_id\\\":\\\"8a204a5d-6daa-46ed-94bb-99b76a19f455\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session__jn1rSiIRs4vcgA5tv7mvIxze2Qsg-ZG6cL-Pn4ULNr-Jb2ex7nVNsouIjcWQa3KfHJvd5W_xwOGDogW0M9A_3KnOEKoPVQuXLdKSLEiBFeH\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-16 09:33:50',	'2024-05-17 09:33:50',	'2024-05-17 09:33:50',	'2024-05-17 09:33:50',	NULL,	'2024-05-16 09:33:50',	'2024-05-16 10:34:16',	'8a204a5d-6daa-46ed-94bb-99b76a19f455'),
(47,	'1720740505150',	31,	0,	14,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	NULL,	465.67,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182143001\\\",\\\"created_at\\\":\\\"2024-05-16T16:19:01+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1720740505150\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8265833386\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":554,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-15T16:19:01+05:30\\\",\\\"order_id\\\":\\\"a1912990-6524-400e-ba91-7c1e08413ee6\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_GtoQn6ghkJS0vQ4YF6OGg0Y-Tf5ZGAl5-ud2-F7FrhbbN5RQdaNRHc2CLoFKQBrREX40MKR82ED_2g4vVY_eUoRD7_No-KamJ95DE50TT6sB\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-16 10:48:59',	'2024-05-17 10:48:59',	'2024-05-17 10:48:59',	'2024-05-17 10:48:59',	NULL,	'2024-05-16 10:48:59',	'2024-05-16 12:59:02',	'a1912990-6524-400e-ba91-7c1e08413ee6'),
(48,	'1724180251257',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"White Full Rim Square Sunglasses\", \"product_price\": 629.1, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}]',	NULL,	629.10,	'IN',	142.78,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-16 10:55:01',	'2024-05-17 10:55:01',	'2024-05-17 10:55:01',	'2024-05-17 10:55:01',	NULL,	'2024-05-16 10:55:01',	'2024-05-16 10:55:01',	NULL),
(58,	'1716521492070',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Yellow Mirror CR Lens Sunglasses\", \"product_price\": 759.05, \"thumbnail_url\": \"1715777476215-JTTH.png\"}]',	NULL,	674.29,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182154698\\\",\\\"created_at\\\":\\\"2024-05-17T13:24:16+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1716521492070\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8787878878\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":763,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-16T13:24:16+05:30\\\",\\\"order_id\\\":\\\"697796da-891a-4b60-8d05-04185ee35f8e\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_Gtjyz3nYxB6YdZHnAwaKI6v6l7vOAPt0BiY2t20M3k3sT-AkPUM8RI7NjgbgOq1bxBX2qK9fR-NESW8LAk0i6i9Iux2w2Js5oFhMWaQZNn3b\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-17 07:54:15',	'2024-05-18 07:54:15',	'2024-05-18 07:54:15',	'2024-05-18 07:54:15',	NULL,	'2024-05-17 07:54:15',	'2024-05-17 07:54:49',	'697796da-891a-4b60-8d05-04185ee35f8e'),
(59,	'1722686143962',	31,	0,	14,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 22, \"variant_id\": \"26\", \"variant_name\": \"Cat Eye Frame Sunglasses\", \"product_price\": 569.05, \"thumbnail_url\": \"1715942836180-1715420611612-DSC_50g.png\"}]',	NULL,	1015.44,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182157623\\\",\\\"created_at\\\":\\\"2024-05-17T15:41:23+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1722686143962\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8265833386\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1104,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-16T15:41:23+05:30\\\",\\\"order_id\\\":\\\"fc99b3d4-fd67-4102-897f-3f9df6b770a8\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_1yhuGWvL38FVwZnYPbf18alo7sDRmW1bHq6m9NlJ9xsA1v7S49WK-cpkABOE2M09KLdm39PmEt1fqrpszlEOTgCiy7H29l4-4G-jRUkpL349\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-17 10:09:43',	'2024-05-18 10:09:43',	'2024-05-18 10:09:43',	'2024-05-18 10:09:43',	NULL,	'2024-05-17 10:09:43',	'2024-05-17 11:00:02',	'fc99b3d4-fd67-4102-897f-3f9df6b770a8'),
(60,	'1717157229432',	1,	0,	1,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 16, \"variant_id\": \"19\", \"variant_name\": \"Polycarbonate Square Lens Full Rim Sunglasses\", \"product_price\": 759.05, \"thumbnail_url\": \"1715592759496-1715420882334-13.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Yellow Mirror CR Lens Sunglasses\", \"product_price\": 759.05, \"thumbnail_url\": \"1715777476215-JTTH.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 13, \"variant_id\": \"16\", \"variant_name\": \"Brown Tortoise Rectangle Sunglasses\", \"product_price\": 719.1, \"thumbnail_url\": \"1715676790028-DSC_31ng.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 26, \"variant_id\": \"30\", \"variant_name\": \"Aviator Full Frame Metal Fashion Sunglasses\", \"product_price\": 628, \"thumbnail_url\": \"1715593365914-1715406472506-14.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 24, \"variant_id\": \"28\", \"variant_name\": \"Dollger Night Vision Sunglasses\", \"product_price\": 854.05, \"thumbnail_url\": null}]',	NULL,	3792.95,	'IN',	289.01,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182158762\\\",\\\"created_at\\\":\\\"2024-05-17T15:49:22+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1717157229432\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999515794\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":4082,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-16T15:49:22+05:30\\\",\\\"order_id\\\":\\\"bfc75fc7-6099-43e9-bbce-d404ecc8e20c\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_0Wc_o5hnqVKXu25_DhDjYgD_I52j8BFFCEoPo1K7hifJr6S-CCZqNAWk6sElxK5QuvLrHu_d-LFDnD0OAaHc857vYiLbH1Fhh-D9mZl7ioik\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-17 10:19:20',	'2024-05-18 10:19:20',	'2024-05-18 10:19:20',	'2024-05-18 10:19:20',	NULL,	'2024-05-17 10:19:20',	'2024-05-17 11:00:02',	'bfc75fc7-6099-43e9-bbce-d404ecc8e20c'),
(61,	'1724839511813',	1,	0,	1,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Yellow Mirror CR Lens Sunglasses\", \"product_price\": 759.05, \"thumbnail_url\": \"1715777476215-JTTH.png\"}]',	NULL,	759.05,	'IN',	116.23,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-17 11:05:29',	'2024-05-18 11:05:29',	'2024-05-18 11:05:29',	'2024-05-18 11:05:29',	NULL,	'2024-05-17 11:05:29',	'2024-05-17 11:05:29',	NULL),
(62,	'1720594517051',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	NULL,	465.67,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182168416\\\",\\\"created_at\\\":\\\"2024-05-17T16:35:47+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1720594517051\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8787878878\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":554,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-16T16:35:47+05:30\\\",\\\"order_id\\\":\\\"d46153a6-d58e-4ed5-8d9e-a05d60b0774e\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_SOxBWbgBlBwRIQCxwM2RNhU0Hw71qvfkdKK54IhVLs5JtnzmTBjqMPmsV-EcelKkZWOP59xpjl3bxQ8-uQ7NF27NG03hgi-kdd31oD1RIyHH\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-17 11:05:47',	'2024-05-18 11:05:47',	'2024-05-18 11:05:47',	'2024-05-18 11:05:47',	NULL,	'2024-05-17 11:05:47',	'2024-05-17 12:00:00',	'd46153a6-d58e-4ed5-8d9e-a05d60b0774e'),
(63,	'1722461396624',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"White Full Rim Square Sunglasses\", \"product_price\": 629.1, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}]',	NULL,	629.10,	'IN',	116.23,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-17 11:20:40',	'2024-05-18 11:20:40',	'2024-05-18 11:20:40',	'2024-05-18 11:20:40',	NULL,	'2024-05-17 11:20:40',	'2024-05-17 11:20:59',	NULL),
(64,	'1719113734722',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Yellow Mirror CR Lens Sunglasses\", \"product_price\": 759.05, \"thumbnail_url\": \"1715777476215-JTTH.png\"}]',	NULL,	674.29,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182172280\\\",\\\"created_at\\\":\\\"2024-05-17T16:51:15+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1719113734722\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8787878878\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":763,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-16T16:51:15+05:30\\\",\\\"order_id\\\":\\\"d5b1aed2-300a-4458-9b12-fd6925964200\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_tXi0uvqfNILJfiglFuGb188olWHqVaoZLkXFmk0QMEESzBzOCSKmqsykpUb00UeQzcyppA6cFg-d9nYee2RV-ADLwxNVF1PrTcFmGSbs1iZR\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-17 11:21:14',	'2024-05-18 11:21:14',	'2024-05-18 11:21:14',	'2024-05-18 11:21:14',	NULL,	'2024-05-17 11:21:14',	'2024-05-17 11:21:47',	'd5b1aed2-300a-4458-9b12-fd6925964200'),
(65,	'1718435531584',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Yellow Mirror CR Lens Sunglasses\", \"product_price\": 759.05, \"thumbnail_url\": \"1715777476215-JTTH.png\"}]',	NULL,	674.29,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182172647\\\",\\\"created_at\\\":\\\"2024-05-17T16:52:18+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1718435531584\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8787878878\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":763,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-16T16:52:18+05:30\\\",\\\"order_id\\\":\\\"47392f13-5589-4d7f-a32a-80a811a5c711\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_VOZQVKSezXeZ962TzsMra1A8VxhUEHk-e0_UwliHQZqhD0M9eKWgIzEo4ii-VK1f-d2fYx8hmcPtsYCemePvPKaplNd3d0UIErGM6DbOPyFx\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-17 11:21:57',	'2024-05-18 11:21:57',	'2024-05-18 11:21:57',	'2024-05-18 11:21:57',	NULL,	'2024-05-17 11:21:57',	'2024-05-17 11:22:53',	'47392f13-5589-4d7f-a32a-80a811a5c711'),
(66,	'1716721657990',	31,	0,	14,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 28, \"variant_id\": \"32\", \"variant_name\": \"Multicolor Full-Rim Cat Eye Glasses\", \"product_price\": 599, \"thumbnail_url\": \"1715682064000-Multicolor Full-Rim Cat Eye Glasses 4.png\"}]',	NULL,	530.25,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182173323\\\",\\\"created_at\\\":\\\"2024-05-17T17:06:53+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1716721657990\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8265833386\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":619,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-16T17:06:53+05:30\\\",\\\"order_id\\\":\\\"c3d9db47-a4e5-4252-89d1-8ac29635015c\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_uuG3QOzUthbZJhcexVCt9fk63UBxi9X1EGmbNRPz2EtVpX38FENJ8ePTjq1Uk9OGxN7yBZl-rutJc9u66Z3uVIVNEY7oZcYq1OnE5vLJzUFG\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-17 11:35:25',	'2024-05-18 11:35:25',	'2024-05-18 11:35:25',	'2024-05-18 11:35:25',	NULL,	'2024-05-17 11:35:25',	'2024-05-17 12:30:00',	'c3d9db47-a4e5-4252-89d1-8ac29635015c'),
(67,	'1725865299502',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Yellow Mirror CR Lens Sunglasses\", \"product_price\": 759.05, \"thumbnail_url\": \"1715777476215-JTTH.png\"}]',	NULL,	759.05,	'IN',	142.78,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-18 05:26:02',	'2024-05-19 05:26:02',	'2024-05-19 05:26:02',	'2024-05-19 05:26:02',	NULL,	'2024-05-18 05:26:02',	'2024-05-18 05:27:02',	NULL),
(68,	'1722053690207',	31,	0,	16,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 31, \"variant_id\": \"35\", \"variant_name\": \"Blue Light Blocking Glasses\", \"product_price\": 599, \"thumbnail_url\": null}]',	NULL,	530.25,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182180687\\\",\\\"created_at\\\":\\\"2024-05-18T11:49:18+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1722053690207\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8265833386\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":619,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-17T11:49:18+05:30\\\",\\\"order_id\\\":\\\"20c3c3d4-a3aa-4507-acdc-6a1365df9a39\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_5jA6vTwKy2nlIuKUmcYbZ3ggDV3LhrTDBOg3Y-BBMNE32OaPUT6gbcXRhHNShWwRIOLE5Bo-9fgKY7sCsp2k5ST7Ix0hP9eX_lVhXQhp7vlv\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-18 06:19:17',	'2024-05-19 06:19:17',	'2024-05-19 06:19:17',	'2024-05-19 06:19:17',	NULL,	'2024-05-18 06:19:17',	'2024-05-18 06:19:46',	'20c3c3d4-a3aa-4507-acdc-6a1365df9a39'),
(69,	'1723324332461',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"White Full Rim Square Sunglasses\", \"product_price\": 629.1, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}]',	NULL,	1156.35,	'IN',	142.78,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-18 06:22:50',	'2024-05-19 06:22:50',	'2024-05-19 06:22:50',	'2024-05-19 06:22:50',	NULL,	'2024-05-18 06:22:50',	'2024-05-18 06:22:55',	NULL),
(70,	'1724994693339',	35,	0,	15,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 42, \"variant_id\": \"48\", \"variant_name\": \"Yellow Full Rim Frame Square Sunglasses\", \"product_price\": 599, \"thumbnail_url\": null}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	NULL,	1126.25,	'IN',	142.78,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-18 06:23:48',	'2024-05-19 06:23:48',	'2024-05-19 06:23:48',	'2024-05-19 06:23:48',	NULL,	'2024-05-18 06:23:48',	'2024-05-18 06:24:16',	NULL),
(71,	'1718204320747',	35,	0,	15,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"White Full Rim Square Sunglasses\", \"product_price\": 629.1, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}]',	NULL,	629.10,	'IN',	116.23,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-18 06:26:32',	'2024-05-19 06:26:32',	'2024-05-19 06:26:32',	'2024-05-19 06:26:32',	NULL,	'2024-05-18 06:26:32',	'2024-05-18 06:27:10',	NULL),
(72,	'1724019473709',	31,	0,	16,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 31, \"variant_id\": \"35\", \"variant_name\": \"Blue Light Blocking Glasses\", \"product_price\": 599, \"thumbnail_url\": null}]',	NULL,	599.00,	'IN',	116.23,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-18 06:30:25',	'2024-05-19 06:30:25',	'2024-05-19 06:30:25',	'2024-05-19 06:30:25',	NULL,	'2024-05-18 06:30:25',	'2024-05-18 06:30:25',	NULL),
(73,	'1718160481647',	35,	0,	15,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	NULL,	527.25,	'IN',	142.78,	NULL,	'Cash on Delivery',	'pending',	'delivered',	NULL,	NULL,	NULL,	NULL,	'2024-05-18 06:30:26',	'2024-05-18 06:46:16',	'2024-05-19 06:30:26',	'2024-05-18 06:35:31',	NULL,	'2024-05-18 06:30:26',	'2024-05-18 06:46:16',	NULL),
(74,	'1723295145525',	35,	0,	15,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"White Full Rim Square Sunglasses\", \"product_price\": 629.1, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}]',	NULL,	629.10,	'IN',	116.23,	NULL,	'Cash on Delivery',	'complete',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-18 06:47:08',	'2024-05-18 06:48:12',	'2024-05-19 06:47:08',	'2024-05-18 06:47:46',	NULL,	'2024-05-18 06:47:08',	'2024-05-18 06:50:50',	NULL),
(75,	'1716739281757',	36,	0,	17,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 2, \"variant_id\": \"2\", \"variant_name\": \"test\", \"product_price\": 392, \"thumbnail_url\": \"1713941465413-Try on copy.webp\"}]',	NULL,	392.00,	'AE',	142.78,	NULL,	'Cash on Delivery',	'pending',	'delivered',	NULL,	NULL,	NULL,	NULL,	'2024-05-18 07:08:40',	'2024-05-18 07:10:48',	'2024-05-19 07:08:40',	'2024-05-18 07:10:15',	NULL,	'2024-05-18 07:08:40',	'2024-05-18 07:10:48',	NULL),
(76,	'1724736126534',	37,	0,	18,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"White Full Rim Square Sunglasses\", \"product_price\": 629.1, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}]',	6,	619.10,	'IN',	142.78,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-18 08:50:43',	'2024-05-19 08:50:43',	'2024-05-19 08:50:43',	'2024-05-19 08:50:43',	NULL,	'2024-05-18 08:50:43',	'2024-05-18 08:50:43',	NULL),
(77,	'1719052759271',	37,	0,	18,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	NULL,	465.67,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182182461\\\",\\\"created_at\\\":\\\"2024-05-18T16:02:41+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1719052759271\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9898898786\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":554,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-17T16:02:41+05:30\\\",\\\"order_id\\\":\\\"a7d9f972-b3ae-4a25-8180-a44a7c083919\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_s4a9-yJOfIIByAwPylPaYfYpgr8gZpyLK2cTWA45VVh1Z0NKvnlTOK9Nl5txExpDweiW_14Kb79a4-RYC3zbt_3o33ZJYj3TAZ7atRI8FuGi\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-18 10:32:40',	'2024-05-19 10:32:40',	'2024-05-19 10:32:40',	'2024-05-19 10:32:40',	NULL,	'2024-05-18 10:32:40',	'2024-05-18 11:30:00',	'a7d9f972-b3ae-4a25-8180-a44a7c083919'),
(78,	'1721341181645',	37,	0,	18,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	NULL,	465.67,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182182492\\\",\\\"created_at\\\":\\\"2024-05-18T16:05:52+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1721341181645\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9898898786\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":554,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-17T16:05:52+05:30\\\",\\\"order_id\\\":\\\"05cd38b5-87cc-4d55-b0e0-d066abc08ab1\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_xzMXULTZKVm_eN-VOvQCDGseysqktMG9gPoxpf87yrdCQudCGSoM-lwIyxfhoK6yPdF01J0QuVWnP8yoBZGqMfnr5w6fra-aTIurC3IcnGuS\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-18 10:35:50',	'2024-05-19 10:35:50',	'2024-05-19 10:35:50',	'2024-05-19 10:35:50',	NULL,	'2024-05-18 10:35:50',	'2024-05-18 11:30:00',	'05cd38b5-87cc-4d55-b0e0-d066abc08ab1'),
(79,	'1723954715393',	37,	0,	18,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"White Full Rim Square Sunglasses\", \"product_price\": 629.1, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}]',	NULL,	557.34,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182182515\\\",\\\"created_at\\\":\\\"2024-05-18T16:08:05+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1723954715393\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9898898786\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":646,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-17T16:08:05+05:30\\\",\\\"order_id\\\":\\\"eacbdd87-3277-4794-a3ea-c91e67646e8b\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_PG00dhyk8jNjLCWQxKppBFPIx_xqXznwOBzICQALAyEx4v6NY6aqDOKr-zTqEZ7djT1x4k0MtEVJ_OQAt4SuenMm2x9WTGlq_nWUO-kmxwOg\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-18 10:38:03',	'2024-05-19 10:38:03',	'2024-05-19 10:38:03',	'2024-05-19 10:38:03',	NULL,	'2024-05-18 10:38:03',	'2024-05-18 10:39:07',	'eacbdd87-3277-4794-a3ea-c91e67646e8b'),
(80,	'1718027726605',	37,	0,	18,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Yellow Mirror CR Lens Sunglasses\", \"product_price\": 759.05, \"thumbnail_url\": \"1715777476215-JTTH.png\"}]',	NULL,	674.29,	'IN',	88.50,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182182539\\\",\\\"created_at\\\":\\\"2024-05-18T16:11:25+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1718027726605\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9898898786\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":763,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-17T16:11:25+05:30\\\",\\\"order_id\\\":\\\"4f30357e-e9af-4fbd-ad34-df0839a66c4a\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_qsz1_VpMJ7WWmVwFf6LpNAyrocHtafsZ3YU8FFvpQ-vnZodAIKRmBOcBX-73DJBu7hhUiy9wI5JoTtoTrko3jDED_o9eDYTqh7VnFGq9uJB2\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-18 10:41:23',	'2024-05-19 10:41:23',	'2024-05-19 10:41:23',	'2024-05-19 10:41:23',	NULL,	'2024-05-18 10:41:23',	'2024-05-18 10:42:22',	'4f30357e-e9af-4fbd-ad34-df0839a66c4a');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_in_menu` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `meta_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `pages_sub_sections`;
CREATE TABLE `pages_sub_sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` int NOT NULL,
  `page_id` int NOT NULL,
  `heading_one` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `heading_two` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `paragraph` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `images` json DEFAULT NULL,
  `button` json DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `payment_options`;
CREATE TABLE `payment_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_options` json NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip_codes` json DEFAULT NULL,
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `payment_options` (`id`, `payment_options`, `country`, `zip_codes`, `created_at`, `updated_at`) VALUES
(1,	'[{\"id\": 1, \"option\": \"Cash on Delivery\", \"description\": \"Pay with cash upon delivery\"}, {\"id\": 2, \"option\": \"Debit Card/Credit Card\", \"description\": \"Pay with Debit Card/Credit Card\"}]',	'IN',	'[\"110053\", \"09876\"]',	'2024-04-23 14:28:52',	'2024-04-23 14:20:50');

DROP TABLE IF EXISTS `permission_modules`;
CREATE TABLE `permission_modules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `frontend_routes` json DEFAULT NULL,
  `backend_routes` json DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `permission_modules` (`id`, `name`, `frontend_routes`, `backend_routes`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'Get Dashboard Data',	'[\"93\"]',	'[\"6\", \"7\", \"8\", \"9\", \"10\", \"11\", \"12\"]',	'active',	'2024-04-25 09:58:05',	'2024-04-25 09:58:05',	'2024-04-25 10:01:08'),
(2,	'Manage Category',	'[94]',	'[13, 14, 15, 16, 17, 18, 19]',	'active',	'2024-04-25 10:01:53',	'2024-04-25 10:01:53',	NULL),
(3,	'Get Category',	'[\"94\"]',	'[\"17\", \"19\"]',	'active',	'2024-04-25 11:13:16',	'2024-04-25 11:13:16',	NULL),
(4,	'Manage Products',	'[95]',	'[20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]',	'active',	'2024-04-25 11:26:23',	'2024-04-25 11:26:23',	NULL),
(5,	'Get Products',	'[\"95\"]',	'[\"29\", \"30\"]',	'active',	'2024-04-25 11:27:17',	'2024-04-25 11:27:17',	NULL),
(6,	'Show DashBoard',	'[93]',	'[6, 7, 8, 9, 10, 11, 12, 52, 51]',	'active',	'2024-04-27 04:43:51',	'2024-04-27 04:43:51',	NULL),
(7,	'Manage Zipcodes',	'[\"99\"]',	'[\"42\", \"43\", \"44\", \"45\"]',	'active',	'2024-04-27 04:47:40',	'2024-04-27 04:47:40',	NULL),
(8,	'Get Zipcodes',	'[\"99\"]',	'[\"44\"]',	'active',	'2024-04-27 04:48:12',	'2024-04-27 04:48:12',	NULL),
(9,	'Manage Orders',	'[\"103\"]',	'[\"46\", \"47\", \"49\", \"50\", \"48\"]',	'active',	'2024-04-27 04:49:42',	'2024-04-27 04:49:42',	NULL),
(10,	'Get Orders',	'[\"103\"]',	'[\"49\", \"50\"]',	'active',	'2024-04-27 04:50:09',	'2024-04-27 04:50:09',	NULL),
(11,	'Manage Order Delivery Data',	'[\"100\"]',	'[\"55\", \"54\", \"53\"]',	'active',	'2024-04-27 04:50:59',	'2024-04-27 04:50:59',	NULL),
(12,	'Get Order Delivery Data',	'[\"100\"]',	'[\"54\"]',	'active',	'2024-04-27 04:51:43',	'2024-04-27 04:51:43',	NULL),
(13,	'Manage Student Delivery Data',	'[\"101\"]',	'[\"56\", \"57\", \"58\"]',	'active',	'2024-04-27 04:52:22',	'2024-04-27 04:52:22',	NULL),
(14,	'Get Student Delivery Data',	'[\"101\"]',	'[\"57\"]',	'active',	'2024-04-27 05:18:01',	'2024-04-27 05:18:01',	NULL),
(15,	'Manage Coupons',	'[\"102\"]',	'[\"17\", \"59\", \"60\", \"61\", \"62\", \"63\", \"64\"]',	'active',	'2024-04-27 05:19:41',	'2024-04-27 05:19:41',	NULL),
(16,	'Get All coupons',	'[\"102\"]',	'[\"17\", \"61\"]',	'active',	'2024-04-27 05:20:38',	'2024-04-27 05:20:38',	NULL),
(17,	'Manage Inner Ui Sections',	'[\"104\"]',	'[\"65\", \"66\", \"67\", \"68\"]',	'active',	'2024-04-27 05:21:45',	'2024-04-27 05:21:45',	NULL),
(18,	'Get Ui inner Sections Data',	'[\"104\"]',	'[\"65\"]',	'active',	'2024-04-27 05:22:33',	'2024-04-27 05:22:33',	NULL),
(19,	'Manage Ui sections',	'[\"105\"]',	'[\"69\", \"70\", \"87\", \"88\"]',	'active',	'2024-04-27 05:23:50',	'2024-04-27 05:23:50',	NULL),
(20,	'Get Ui Section',	'[\"105\"]',	'[\"69\", \"88\"]',	'active',	'2024-04-27 05:25:03',	'2024-04-27 05:25:03',	NULL),
(21,	'Manage Beautiful EyeWear Collection',	'[\"106\"]',	'[\"71\", \"72\", \"73\"]',	'active',	'2024-04-27 05:26:57',	'2024-04-27 05:26:57',	NULL),
(22,	'Get BeautiFull Eyewear Collection',	'[\"106\"]',	'[\"73\"]',	'active',	'2024-04-27 05:28:13',	'2024-04-27 05:28:13',	NULL),
(23,	'Manage Frame Data',	'[\"107\"]',	'[\"74\", \"75\"]',	'active',	'2024-04-27 05:28:48',	'2024-04-27 05:28:48',	NULL),
(24,	'Get Frame Data',	'[\"107\"]',	'[\"75\"]',	'active',	'2024-04-27 05:29:11',	'2024-04-27 05:29:11',	NULL),
(25,	'Manage Best Seller & Fashion trends',	'[\"108\"]',	'[\"30\", \"76\", \"77\", \"78\"]',	'active',	'2024-04-27 05:30:23',	'2024-04-27 05:30:23',	NULL),
(26,	'Get Best Seller & Fashion Trend',	'[\"108\"]',	'[\"77\"]',	'active',	'2024-04-27 05:32:49',	'2024-04-27 05:32:49',	NULL),
(27,	'Manage SEO data',	'[\"109\"]',	'[\"30\", \"38\", \"39\", \"40\", \"41\"]',	'active',	'2024-04-27 05:35:43',	'2024-04-27 05:35:43',	NULL),
(28,	'Get SEO data',	'[\"109\"]',	'[\"39\"]',	'active',	'2024-04-27 05:36:23',	'2024-04-27 05:36:23',	NULL),
(29,	'Get Subscribed Users',	'[\"110\"]',	'[\"79\"]',	'active',	'2024-04-27 05:37:49',	'2024-04-27 05:37:49',	NULL);

DROP TABLE IF EXISTS `product_availability`;
CREATE TABLE `product_availability` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'IN',
  `currency_symbol` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `country` varchar(100) NOT NULL DEFAULT 'india',
  `zipcodes` json DEFAULT NULL,
  `tax_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tax_value` int DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `product_availability` (`id`, `country_code`, `currency_symbol`, `country`, `zipcodes`, `tax_name`, `tax_value`, `status`, `created_at`, `updated_at`) VALUES
(1,	'IN',	'₹',	'India',	'[\"201301\", \"110053\", \"110032\", \"110094\", \"110025\", \"110076\", \"201203\", \"110096\", \"121101\"]',	'GST',	18,	'active',	'2024-05-11 07:08:50',	'2024-04-22 13:26:25'),
(2,	'AE',	'د.إ',	'United Arab Emirates',	'[]',	'5',	5,	'active',	'2024-05-16 09:09:02',	'2024-05-16 09:09:02'),
(3,	'AD',	'₹',	'AndorrA',	'[]',	'',	2,	'active',	'2024-05-16 12:10:40',	'2024-05-16 12:10:40'),
(4,	'AI',	'₹',	'Anguilla',	'[]',	'',	0,	'active',	'2024-05-16 12:11:35',	'2024-05-16 12:11:35'),
(5,	'AX',	'₹',	'Åland Islands',	'[]',	'',	0,	'active',	'2024-05-16 12:12:46',	'2024-05-16 12:12:46'),
(6,	'GT',	'₹',	'Guatemala',	'[]',	'',	0,	'active',	'2024-05-16 12:22:11',	'2024-05-16 12:22:11');

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `variant_id` int NOT NULL,
  `images` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `variant_id` (`variant_id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_images_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `product_images` (`id`, `product_id`, `variant_id`, `images`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	'[\"1715338130028-1.png\", \"1715338130068-3.png\", \"1715777482985-FGFG.png\"]',	'2024-05-15 12:51:23',	'2024-05-15 12:51:23'),
(2,	4,	4,	'[\"1714060839269-1713793573585-1706591994550-spax.webp\", \"1714060839284-1713793573585-1710425198204-pic25.jpg\", \"1714060839502-1713793629433-1705327571877-image9.png\"]',	'2024-04-25 16:00:39',	'2024-04-25 16:00:39'),
(3,	5,	5,	'[\"1714222521372-future.webp\", \"1714222521384-our mission.webp\"]',	'2024-04-27 12:55:21',	'2024-04-27 12:55:21'),
(4,	5,	6,	'[\"1714222810465-img1.jpg\", \"1714222810465-img2.jpg\", \"1714222810477-img3.jpg\", \"1714222810604-img4.jpg\"]',	'2024-04-27 13:00:10',	'2024-04-27 13:00:10'),
(5,	7,	8,	'[\"1715586054373-DSC_-55g.png\"]',	'2024-05-13 07:40:54',	'2024-05-13 07:40:54'),
(6,	8,	10,	'[\"1714389659668-1.jpg\", \"1714389660872-2.jpg\", \"1714389661397-3.jpg\", \"1714389661960-4.jpg\"]',	'2024-04-29 11:21:02',	'2024-04-29 11:21:02'),
(7,	9,	11,	'[\"1714391245110-1.jpg\", \"1714391246453-2.jpg\", \"1714391246909-3.jpg\", \"1714391247502-4.jpg\"]',	'2024-04-29 11:47:28',	'2024-04-29 11:47:28'),
(8,	10,	12,	'[\"1715335776621-DSC_-29png.png\", \"1715680970638-Blue Shade Stylish Square 1.png\", \"1715680970939-Blue Shade Stylish Square 2.png\", \"1715681004186-Blue Shade Stylish Square 4.png\"]',	'2024-05-14 10:03:24',	'2024-05-14 10:03:24'),
(9,	11,	13,	'[\"1715337317330-DSC_41g.png\", \"1715337317371-DSC_42g.png\", \"1715337317392-DSC_43g.png\"]',	'2024-05-10 10:35:21',	'2024-05-10 10:35:21'),
(10,	12,	14,	'[\"1714459594071-frame-you.webp\"]',	'2024-04-30 06:46:34',	'2024-04-30 06:46:34'),
(11,	14,	17,	'[\"1714730880043-DSC_0103.JPG\", \"1714732318684-123.png\", \"1714733368065-DSC_0076-Recovered.png\", \"1714738838744-new image vuzen.png\"]',	'2024-05-03 12:20:38',	'2024-05-03 12:20:38'),
(12,	17,	20,	'[]',	'2024-05-09 11:18:31',	'2024-05-09 11:18:31'),
(13,	18,	22,	'[\"1715251774573-7.png\"]',	'2024-05-11 09:59:57',	'2024-05-11 09:59:57'),
(14,	16,	19,	'[\"1715252793239-13.png\", \"1715339272926-11.png\", \"1715339272941-12.png\"]',	'2024-05-10 11:08:07',	'2024-05-10 11:08:07'),
(15,	19,	23,	'[\"1715253114770-DSC_-19.png\", \"1715339818892-DSC_-18.png\"]',	'2024-05-10 11:17:01',	'2024-05-10 11:17:01'),
(16,	20,	24,	'[\"1715253788795-DSC_-36png.png\", \"1715334630426-DSC_3.png\", \"1715334630448-DSC_-35png.png\"]',	'2024-05-11 09:57:10',	'2024-05-11 09:57:10'),
(17,	6,	7,	'[\"1715340865171-DSC_20png.png\", \"1715340865193-DSC_21png.png\", \"1715340865225-DSC_22ng.png\", \"1715340865246-DSC_23ng.png\"]',	'2024-05-10 11:34:25',	'2024-05-10 11:34:25'),
(18,	21,	25,	'[\"1715341465545-DSC_-39-png.png\", \"1715341465566-DSC_-42-png.png\"]',	'2024-05-11 10:01:55',	'2024-05-11 10:01:55'),
(19,	13,	16,	'[\"1715344166251-DSC_28ng.png\", \"1715344166283-DSC_29ng.png\", \"1715344166302-DSC_30ng.png\", \"1715344166313-DSC_31ng.png\"]',	'2024-05-10 12:29:26',	'2024-05-10 12:29:26'),
(20,	22,	26,	'[\"1715344587254-DSC_49g.png\", \"1715344587291-DSC_50g.png\", \"1715344587312-DSC_51g.png\"]',	'2024-05-10 12:36:27',	'2024-05-10 12:36:27'),
(21,	23,	27,	'[\"1715345342150-11.png\", \"1715345342192-12.png\", \"1715345342207-13.png\"]',	'2024-05-10 12:49:02',	'2024-05-10 12:49:02'),
(22,	24,	28,	'[\"1715345861961-DSC_41g.png\", \"1715345862003-DSC_42g.png\", \"1715345862024-DSC_43g.png\"]',	'2024-05-10 12:57:42',	'2024-05-10 12:57:42'),
(23,	25,	29,	'[\"1715404985194-DSC_35ng.png\", \"1715675975686-DSC_33ng.png\", \"1715675975951-DSC_-58ng.png\"]',	'2024-05-14 08:39:36',	'2024-05-14 08:39:36'),
(24,	26,	30,	'[\"1715406472506-14.png\", \"1715406489827-DSC_-16.png\", \"1715406489850-DSC_-17.png\", \"1715406497851-DSC_-16.png\"]',	'2024-05-11 05:48:17',	'2024-05-11 05:48:17'),
(25,	27,	31,	'[\"1715409381032-DSC_24ng.png\", \"1715409381061-DSC_26ng.png\", \"1715409381068-DSC_27ng.png\"]',	'2024-05-11 06:39:01',	'2024-05-11 06:39:01'),
(26,	28,	32,	'[\"1715418515917-DSC_52g.png\", \"1715676426212-DSC_-53g.png\", \"1715676426435-DSC_-54g.png\"]',	'2024-05-14 10:18:54',	'2024-05-14 10:18:54'),
(27,	30,	34,	'[\"1715584329158-DSC_-92png.png\", \"1715584329180-DSC_-93png.png\", \"1715584329194-DSC_-94png.png\", \"1715584329200-DSC_-95png.png\"]',	'2024-05-13 07:12:09',	'2024-05-13 07:12:09'),
(28,	31,	35,	'[\"1715584593936-DSC_-72png.png\", \"1715584593948-DSC_-73png.png\", \"1715584593967-DSC_-74png.png\", \"1715584593978-DSC_-75png.png\"]',	'2024-05-13 07:16:33',	'2024-05-13 07:16:33'),
(29,	32,	36,	'[\"1715584837827-DSC_-68g.png\", \"1715584837844-DSC_-69.png\", \"1715584837863-DSC_-70png.png\", \"1715584837875-DSC_-71png.png\"]',	'2024-05-13 07:20:37',	'2024-05-13 07:20:37'),
(30,	33,	37,	'[\"1715585138850-DSC_-84png.png\", \"1715585154207-DSC_-85png.png\", \"1715585154229-DSC_-86png.png\", \"1715585154243-DSC_-87png.png\"]',	'2024-05-13 07:25:54',	'2024-05-13 07:25:54'),
(31,	34,	38,	'[\"1715585803477-DSC_-77png.png\", \"1715585803502-DSC_-78png.png\", \"1715585803517-DSC_-79png.png\"]',	'2024-05-13 07:36:43',	'2024-05-13 07:36:43'),
(32,	35,	39,	'[\"1715586382727-DSC_-80png.png\", \"1715586382755-DSC_-81png.png\", \"1715586382764-DSC_-82png.png\", \"1715586382772-DSC_-83png.png\"]',	'2024-05-13 07:46:22',	'2024-05-13 07:46:22'),
(33,	36,	40,	'[\"1715589337911-DSC_36ng.png\", \"1715589337922-DSC_37ng.png\", \"1715589337946-DSC_38ng.png\", \"1715589337958-DSC_39g.png\"]',	'2024-05-13 08:35:37',	'2024-05-13 08:35:37'),
(34,	21,	41,	'[\"1715589698067-DSC_-32.png\", \"1715589698074-DSC_-33.png\", \"1715589698096-DSC_-34png.png\"]',	'2024-05-13 08:41:38',	'2024-05-13 08:41:38'),
(35,	21,	42,	'[\"1715589920924-DSC_-65ng.png\", \"1715589920950-DSC_-66ng.png\", \"1715589920969-DSC_-67ng.png\"]',	'2024-05-13 08:45:20',	'2024-05-13 08:45:20'),
(36,	14,	18,	'[\"1715590381579-DSC_-32.png\", \"1715590381594-DSC_-33.png\", \"1715590381626-DSC_-34png.png\"]',	'2024-05-13 08:53:01',	'2024-05-13 08:53:01'),
(37,	37,	43,	'[\"1715602872204-DSC_-56g.png\", \"1715602872491-DSC_-57g.png\", \"1715602872794-DSC_-58g.png\", \"1715602872984-DSC_-59g.png\"]',	'2024-05-13 12:21:13',	'2024-05-13 12:21:13'),
(38,	38,	44,	'[\"1715603337904-A.png\", \"1715603338068-B.png\", \"1715603338267-C.png\", \"1715603338381-D.png\"]',	'2024-05-13 12:28:58',	'2024-05-13 12:28:58'),
(39,	39,	45,	'[\"1715603637111-1.png\", \"1715603637382-2.png\", \"1715603637634-4.png\"]',	'2024-05-14 10:15:06',	'2024-05-14 10:15:06'),
(40,	40,	46,	'[\"1715603935108-DSC_12.png\", \"1715603935277-DSC_15png.png\", \"1715603935493-DSC_-20.png\", \"1715603935595-DSC_-21.png\"]',	'2024-05-13 12:38:55',	'2024-05-13 12:38:55'),
(41,	41,	47,	'[\"1715604113090-01.png\", \"1715604113689-02.png\", \"1715604113876-03.png\", \"1715604113998-04.png\"]',	'2024-05-13 12:41:54',	'2024-05-13 12:41:54'),
(42,	42,	48,	'[\"1715604535362-1.png\", \"1715604535648-2.png\", \"1715604535789-3.png\", \"1715604535841-4.png\"]',	'2024-05-13 12:48:55',	'2024-05-13 12:48:55'),
(43,	43,	49,	'[\"1715670166910-17.png\", \"1715670166953-18.png\", \"1715670166965-19.png\", \"1715670166980-20.png\"]',	'2024-05-14 07:02:46',	'2024-05-14 07:02:46'),
(44,	44,	50,	'[\"1715670038564-012.png\", \"1715670038598-15.png\", \"1715670038617-15png.png\"]',	'2024-05-14 08:37:37',	'2024-05-14 08:37:37'),
(45,	45,	51,	'[\"1715675001903-19.png\", \"1715675002086-20.png\", \"1715675002234-21.png\", \"1715675002301-22.png\"]',	'2024-05-14 08:23:22',	'2024-05-14 08:23:22'),
(46,	46,	53,	'[\"1715675259183-18.png\", \"1715675259744-19.png\", \"1715675259921-20.png\", \"1715675260035-21.png\"]',	'2024-05-14 08:27:40',	'2024-05-14 08:27:40'),
(47,	29,	33,	'[\"1715680830893-Women Demo Lens Butterfly Sunglasses 1.png\", \"1715680831270-Women Demo Lens Butterfly Sunglasses 2.png\", \"1715680831400-Women Demo Lens Butterfly Sunglasses 3.png\"]',	'2024-05-14 10:00:31',	'2024-05-14 10:00:31'),
(48,	47,	54,	'[\"1715836590924-03.png\", \"1715836590948-04.png\", \"1715836590957-05.png\", \"1715836590970-06.png\", \"1715836590980-07.png\"]',	'2024-05-16 05:16:30',	'2024-05-16 05:16:30');

DROP TABLE IF EXISTS `product_reviews`;
CREATE TABLE `product_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `product_id` bigint unsigned DEFAULT NULL,
  `rate` tinyint NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_reviews_user_id_foreign` (`user_id`),
  KEY `product_reviews_product_id_foreign` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE `product_variants` (
  `variant_id` int NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `variant_price_details` json DEFAULT NULL,
  `thumbnail_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `color_id` bigint unsigned DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`variant_id`),
  KEY `product_id` (`product_id`),
  KEY `color_id` (`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `product_variants` (`variant_id`, `product_id`, `code`, `variant_price_details`, `thumbnail_url`, `color_id`, `status`, `created_at`, `updated_at`) VALUES
(1,	1,	'2413#6d1818',	'[{\"price\": \"799\", \"stock\": 14, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"500\", \"currency_symbol\": \"₹\"}]',	'1715777476215-JTTH.png',	1,	'active',	'2024-04-22 11:01:03',	'2024-05-18 10:42:22'),
(2,	2,	'5#6d1818',	'[{\"price\": \"500\", \"stock\": 1, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"200\", \"currency_symbol\": \"₹\"}, {\"price\": \"600\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"United Arab Emirates\", \"discount\": \"9\", \"country_code\": \"AE\", \"purchase_price\": \"500\", \"currency_symbol\": \"د.إ\"}]',	'1713941465413-Try on copy.webp',	1,	'active',	'2024-04-24 05:53:48',	'2024-05-18 07:26:59'),
(3,	3,	'4582#6d1818',	'[{\"price\": \"500\", \"stock\": 9, \"status\": \"active\", \"country\": \"India\", \"discount\": \"10\", \"country_code\": \"IN\", \"purchase_price\": \"100\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-04-24 06:54:54',	'2024-05-08 10:47:12'),
(4,	4,	'12333#6d1818',	'[{\"price\": \"899\", \"stock\": 1, \"status\": \"active\", \"country\": \"India\", \"discount\": \"2\", \"country_code\": \"IN\", \"purchase_price\": \"399\", \"currency_symbol\": \"₹\"}]',	'1714060846805-1713793573585-1710425198204-pic25.jpg',	1,	'active',	'2024-04-25 16:00:16',	'2024-05-08 10:59:43'),
(5,	5,	'98765#c32222',	'[{\"price\": \"999\", \"stock\": 97, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"599\", \"currency_symbol\": \"₹\"}]',	'1714222490356-Explore_eyewear_788x380.webp',	2,	'active',	'2024-04-27 12:54:15',	'2024-05-09 06:20:25'),
(6,	5,	'98765#6d1818',	'[{\"price\": \"1098\", \"stock\": 30, \"status\": \"active\", \"country\": \"India\", \"discount\": \"4\", \"country_code\": \"IN\", \"purchase_price\": \"789\", \"currency_symbol\": \"₹\"}]',	'1714222801094-img1.jpg',	1,	'active',	'2024-04-27 12:54:22',	'2024-04-27 13:18:38'),
(7,	6,	'657#6d1818',	'[{\"price\": \"700\", \"stock\": 1, \"status\": \"active\", \"country\": \"India\", \"discount\": \"10\", \"country_code\": \"IN\", \"purchase_price\": \"800\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-04-29 10:00:25',	'2024-05-13 04:53:27'),
(8,	7,	'678#c32222',	'[{\"price\": \"599\", \"stock\": 8, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	'1714388202016-2.jpg',	2,	'active',	'2024-04-29 10:53:53',	'2024-05-08 10:47:12'),
(9,	7,	'678#6d1818',	'[{\"status\": \"active\", \"country\": \"india\", \"country_code\": \"IN\", \"currency_symbol\": \"₹\"}, {\"status\": \"active\", \"country\": \"united states\", \"country_code\": \"US\", \"currency_symbol\": \"$\"}, {\"status\": \"active\", \"country\": \"united arab emirates\", \"country_code\": \"UAE\", \"currency_symbol\": \"A\"}]',	NULL,	1,	'active',	'2024-04-29 11:09:13',	'2024-05-16 07:29:39'),
(10,	8,	'4558#fae505',	'[{\"price\": \"560\", \"stock\": 187, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	4,	'active',	'2024-04-29 11:19:09',	'2024-05-07 09:09:32'),
(11,	9,	'677#6d1818',	'[{\"price\": \"599\", \"stock\": \"110\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-04-29 11:46:17',	'2024-04-29 11:47:01'),
(12,	10,	'567#532ed6',	'[{\"price\": \"555\", \"stock\": 4, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715836965836-DSC_-70ng.png',	3,	'active',	'2024-04-29 12:39:33',	'2024-05-18 10:35:50'),
(13,	11,	'478#6d1818',	'[{\"price\": \"460\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"260\", \"currency_symbol\": \"₹\"}]',	'1715337346620-4.jpg',	1,	'active',	'2024-04-30 05:37:52',	'2024-05-10 10:35:46'),
(14,	12,	'510#ffffff',	'[{\"price\": \"666\", \"stock\": \"16\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"450\", \"currency_symbol\": \"₹\"}]',	NULL,	5,	'active',	'2024-04-30 06:46:06',	'2024-04-30 06:54:08'),
(15,	12,	'510#6d1818',	'[{\"price\": \"666\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"450\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-04-30 06:47:57',	'2024-04-30 10:09:51'),
(16,	13,	'222#6d1818',	'[{\"price\": \"799\", \"stock\": 24, \"status\": \"active\", \"country\": \"India\", \"discount\": \"10\", \"country_code\": \"IN\", \"purchase_price\": \"450\", \"currency_symbol\": \"₹\"}]',	'1715676790028-DSC_31ng.png',	1,	'active',	'2024-04-30 10:48:22',	'2024-05-17 10:19:22'),
(17,	14,	'67888#c32222',	'[{\"price\": \"600\", \"stock\": 3, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	2,	'active',	'2024-05-02 06:31:25',	'2024-05-08 12:53:06'),
(18,	14,	'67888#fae505',	'[]',	NULL,	4,	'active',	'2024-05-03 05:17:29',	'2024-05-03 05:17:29'),
(19,	16,	'1#6d1818',	'[{\"price\": \"799\", \"stock\": 14, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"500\", \"currency_symbol\": \"₹\"}]',	'1715592759496-1715420882334-13.png',	1,	'active',	'2024-05-08 13:08:25',	'2024-05-17 10:19:22'),
(20,	17,	'12255#fae505',	'[{\"price\": \"599\", \"stock\": \"30\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	NULL,	4,	'active',	'2024-05-09 08:55:14',	'2024-05-09 11:19:47'),
(21,	1,	'WD-FR-SQR-SUN-01#c32222',	'[]',	NULL,	2,	'active',	'2024-05-09 10:44:50',	'2024-05-09 10:44:50'),
(22,	18,	'100123#6d1818',	'[{\"price\": \"799\", \"stock\": \"20\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"500\", \"currency_symbol\": \"₹\"}]',	'1715421570856-blue lens  (2).png',	1,	'active',	'2024-05-09 10:49:14',	'2024-05-11 09:59:30'),
(23,	19,	'1001234#b76e79',	'[{\"price\": \"699\", \"stock\": \"20\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"10\", \"country_code\": \"IN\", \"purchase_price\": \"599\", \"currency_symbol\": \"₹\"}]',	NULL,	7,	'active',	'2024-05-09 11:10:26',	'2024-05-09 11:24:48'),
(24,	20,	'WH-FR-SSG-01#ffffff',	'[{\"price\": \"699\", \"stock\": 17, \"status\": \"active\", \"country\": \"India\", \"discount\": \"10\", \"country_code\": \"IN\", \"purchase_price\": \"499\", \"currency_symbol\": \"₹\"}]',	'1715836833007-DSC_-35png.png',	5,	'active',	'2024-05-09 11:22:27',	'2024-05-18 10:39:07'),
(25,	21,	'678453#ffffff',	'[{\"price\": \"699\", \"stock\": \"30\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	'1715421728709-DSC_-42-png.png',	5,	'active',	'2024-05-10 11:43:08',	'2024-05-11 10:02:08'),
(26,	22,	'CAT-FRM-SUN-10#070503',	'[{\"price\": \"599\", \"stock\": 28, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	'1715942836180-1715420611612-DSC_50g.png',	8,	'active',	'2024-05-10 12:36:12',	'2024-05-17 10:47:16'),
(27,	23,	'DL-PBT-SUN-21#6d1818',	'[{\"price\": \"799\", \"stock\": \"25\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"450\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-05-10 12:48:40',	'2024-05-10 12:49:29'),
(28,	24,	'DGR-NV-SUN-11#070503',	'[{\"price\": \"899\", \"stock\": 34, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-10 12:57:28',	'2024-05-17 10:19:22'),
(29,	25,	'568766#f4fafc',	'[{\"price\": \"650\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	9,	'active',	'2024-05-11 05:22:48',	'2024-05-11 05:23:58'),
(30,	26,	'786#070503',	'[{\"price\": \"628\", \"stock\": 14, \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1715593365914-1715406472506-14.png',	8,	'active',	'2024-05-11 05:47:17',	'2024-05-17 10:19:22'),
(31,	27,	'6789#070503',	'[{\"price\": \"1199\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-11 06:35:59',	'2024-05-11 06:43:46'),
(32,	28,	'6758564#b76e79',	'[{\"price\": \"599\", \"stock\": 14, \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1715682064000-Multicolor Full-Rim Cat Eye Glasses 4.png',	7,	'active',	'2024-05-11 09:08:29',	'2024-05-17 11:35:25'),
(33,	29,	'345375#6d1818',	'[{\"price\": \"499\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-05-13 07:07:15',	'2024-05-13 07:07:48'),
(34,	30,	'786980#070503',	'[{\"price\": \"499\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-13 07:11:52',	'2024-05-13 07:12:38'),
(35,	31,	'98907#070503',	'[{\"price\": \"599\", \"stock\": 13, \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-13 07:16:23',	'2024-05-18 06:30:29'),
(36,	32,	'45467890#ffffff',	'[{\"price\": \"599\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	5,	'active',	'2024-05-13 07:20:27',	'2024-05-13 07:21:08'),
(37,	33,	'67456889#6d1818',	'[{\"price\": \"650\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-05-13 07:25:29',	'2024-05-13 07:26:35'),
(38,	34,	'78675458#070503',	'[{\"price\": \"499\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-13 07:36:32',	'2024-05-13 07:37:09'),
(39,	35,	'5757960#070503',	'[{\"price\": \"499\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715837222561-DSC_-80png.png',	8,	'active',	'2024-05-13 07:46:09',	'2024-05-16 05:27:02'),
(40,	36,	'789879#070503',	'[{\"price\": \"599\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-13 08:35:24',	'2024-05-13 08:36:08'),
(41,	21,	'BLU-DL-RGL-SUN-22#f4fafc',	'[]',	NULL,	9,	'active',	'2024-05-13 08:40:45',	'2024-05-13 08:40:45'),
(42,	21,	'BLU-DL-RGL-SUN-22#323232',	'[]',	NULL,	10,	'active',	'2024-05-13 08:45:06',	'2024-05-13 08:45:06'),
(43,	37,	'8978678#070503',	'[]',	NULL,	8,	'active',	'2024-05-13 12:20:56',	'2024-05-16 07:43:15'),
(44,	38,	'7234677#f4fafc',	'[{\"price\": \"599\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715682351519-Crystal Clear.png',	9,	'active',	'2024-05-13 12:28:42',	'2024-05-14 10:25:51'),
(45,	39,	'67578768#6d1818',	'[{\"price\": \"499\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715682154309-DSC_-110ng.png',	1,	'active',	'2024-05-13 12:33:38',	'2024-05-14 10:22:34'),
(46,	40,	'677989#323232',	'[{\"price\": \"499\", \"stock\": 12, \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	10,	'active',	'2024-05-13 12:38:35',	'2024-05-16 10:34:16'),
(47,	41,	'47760964#ffffff',	'[{\"price\": \"499\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	5,	'active',	'2024-05-13 12:41:37',	'2024-05-13 12:42:24'),
(48,	42,	'676757#fae505',	'[{\"price\": \"599\", \"stock\": 15, \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	4,	'active',	'2024-05-13 12:48:41',	'2024-05-18 06:24:16'),
(49,	43,	'HR-ML-SUN-38#6d1818',	'[{\"price\": \"499\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-05-14 06:55:14',	'2024-05-14 06:55:56'),
(50,	44,	'34746#b87333',	'[]',	'1715837017306-15.png',	11,	'active',	'2024-05-14 07:00:22',	'2024-05-16 07:53:57'),
(51,	45,	'UVPT-NV-SUN-40#b76e79',	'[{\"price\": \"499\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715839026683-19.png',	7,	'active',	'2024-05-14 07:07:58',	'2024-05-16 05:57:06'),
(52,	45,	'UVPT-NV-SUN-40#532ed6',	'[]',	NULL,	3,	'active',	'2024-05-14 07:53:06',	'2024-05-14 07:53:06'),
(53,	46,	'96688967#b87333',	'[]',	'1715839251808-78.png',	11,	'active',	'2024-05-14 08:27:26',	'2024-05-16 07:43:47'),
(54,	47,	'767789#b76e79',	'[{\"id\": 1, \"status\": \"active\", \"country\": \"India\", \"tax_name\": \"GST\", \"zipcodes\": [\"201301\", \"110053\", \"110032\", \"110094\", \"110025\", \"110076\", \"201203\", \"110096\", \"121101\"], \"tax_value\": 18, \"created_at\": \"2024-05-11T07:08:50.000Z\", \"updated_at\": \"2024-04-22T13:26:25.000Z\", \"country_code\": \"IN\", \"currency_symbol\": \"₹\"}, {\"id\": 2, \"status\": \"active\", \"country\": \"United Arab Emirates\", \"tax_name\": \"5\", \"zipcodes\": [], \"tax_value\": 5, \"created_at\": \"2024-05-16T09:09:02.000Z\", \"updated_at\": \"2024-05-16T09:09:02.000Z\", \"country_code\": \"AE\", \"currency_symbol\": \"د.إ\"}]',	NULL,	7,	'active',	'2024-05-16 05:15:50',	'2024-05-16 13:13:24'),
(55,	47,	'767789#fae505',	'[]',	NULL,	4,	'active',	'2024-05-16 10:43:21',	'2024-05-16 11:39:07');

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `frame_type_id` bigint DEFAULT NULL,
  `sku` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` enum('new','hot') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `gender` json DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `weight_group_id` bigint NOT NULL,
  `is_student` tinyint NOT NULL DEFAULT '0',
  `size_id` bigint NOT NULL,
  `frame_width` bigint DEFAULT NULL,
  `lens_width` bigint DEFAULT NULL,
  `lens_height` bigint DEFAULT NULL,
  `bridge_width` bigint DEFAULT NULL,
  `temple_length` bigint DEFAULT NULL,
  `cat_id` bigint unsigned DEFAULT NULL,
  `thumbnail_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_id` bigint unsigned NOT NULL,
  `shape_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `title`, `model_number`, `frame_type_id`, `sku`, `slug`, `summary`, `description`, `condition`, `gender`, `status`, `weight_group_id`, `is_student`, `size_id`, `frame_width`, `lens_width`, `lens_height`, `bridge_width`, `temple_length`, `cat_id`, `thumbnail_img`, `material_id`, `shape_id`, `created_at`, `updated_at`) VALUES
(1,	'Yellow Mirror CR Lens Sunglasses',	'',	NULL,	'YLW-CR-MRD-SUN-19',	'yellow-mirror-cr-lens-sunglasses',	'The shield design provides maximum coverage and protection for your eyes, while the striking yellow color adds a vibrant and eye-catching element to your ensemble. Whether you\'re soaking up the sun at the beach or hitting the city streets, these sunglasses are sure to turn heads wherever you go.',	'Introducing our bold and contemporary yellow shield demo lens sunglasses, the perfect statement accessory for the modern fashionista. Crafted with attention to detail, these sunglasses offer a unique combination of style and functionality. ',	'new',	'[\"1\"]',	'active',	1,	0,	1,	145,	50,	40,	16,	140,	1,	'1715591557296-1715251212535-3.png',	1,	1,	'2024-04-22 10:59:48',	'2024-05-15 12:41:24'),
(2,	'test',	'',	1,	'klju-0998k',	'test',	'testing so using for dummy',	'testing so using this for dummy',	'new',	'[\"2\", \"5\", \"6\"]',	'active',	1,	1,	1,	2,	2,	2,	2,	1,	4,	'1713937916751-xnpsbe6y.png',	1,	19,	'2024-04-24 05:51:56',	'2024-05-18 07:25:53'),
(3,	'tutle',	'',	NULL,	'4582',	'tutle',	'rdfyguhjfggfhghjk',	'dfghkjsfdgfdhfg',	'new',	'[\"2\"]',	'inactive',	1,	0,	1,	0,	2,	0,	2,	2,	1,	'1714385276206-3.jpg',	1,	2,	'2024-04-24 06:54:07',	'2024-05-09 11:22:49'),
(4,	'Vuezen Plus',	'',	NULL,	'12333',	'vuezen-plus',	'Vuezen Plus Is The Leading E-Commerce Portal For Eyewear In India.',	'Highly Durable PolyCarbonate Lenses',	'new',	'[\"1\", \"2\"]',	'inactive',	1,	0,	2,	3,	2,	2,	12,	13,	2,	'1714060789572-1713793629433-1705327571877-image9.png',	1,	14,	'2024-04-25 15:59:49',	'2024-05-09 11:23:10'),
(5,	'Rayban',	'',	NULL,	'98765',	'rayban',	'Rayban is a good Product.',	'Rayban is a good Product.',	'new',	'[\"1\", \"2\"]',	'inactive',	1,	0,	2,	7,	6,	7,	22,	13,	1,	'1714222404719-Explore_eyewear_788x380.webp',	2,	14,	'2024-04-27 12:53:24',	'2024-05-09 11:23:18'),
(6,	'Black Acetate Sunglasses',	'',	NULL,	'BLK-ACT-SUN-06',	'black-acetate-sunglasses',	'These sunglasses feature frames crafted from black acetate, offering a sleek and timeless look that complements a wide range of styles and outfits.',	'Black acetate sunglasses are a stylish and classic accessory that combines both fashion and function. Acetate is a durable and lightweight material derived from renewable resources, making it an eco-friendly choice for eyewear. ',	'new',	'[\"4\"]',	'active',	1,	0,	2,	152,	52,	44,	16,	147,	2,	'1715421063438-DSC_22ng.png',	3,	20,	'2024-04-29 09:58:44',	'2024-05-11 09:51:03'),
(7,	'Multicolor Full-Rim Frame Sunglasses',	'',	NULL,	'678',	'multicolor-full-rim-frame-sunglasses',	'These multicolor full-rim frame sunglasses are a vibrant and stylish accessory for any sunny day. Crafted with a durable and lightweight material, they offer both fashion and functionality. ',	'These multicolor full-rim frame sunglasses are a vibrant and stylish accessory for any sunny day. Crafted with a durable and lightweight material, they offer both fashion and functionality. The multicolor frame adds a playful and energetic touch to your look, allowing you to express your unique style with ease. The full-rim design provides maximum coverage and protection from the sun\'s rays, while the tinted lenses offer UV protection to keep your eyes safe. Whether you\'re lounging by the pool or strolling through the city streets, these sunglasses are sure to make a statement wherever you go.',	'new',	'[\"2\"]',	'inactive',	1,	0,	2,	10,	1,	1,	5,	6,	2,	'1714387842121-5.jpg',	3,	18,	'2024-04-29 10:50:43',	'2024-05-11 09:04:42'),
(8,	'Black Full Rim Rectangle Metal Frame Sunglasses',	'',	NULL,	'4558',	'black-full-rim-rectangle-metal-frame-sunglasses',	'These black full rim rectangleBlack Full Rim Rectangle Metal Frame Sunglasses metal frame sunglasses exude a classic and timeless appeal, blending sophistication with modern style. Crafted with high-quality metal, the frame offers durability and a sleek aesthetic. ',	'These black full rim rectangle metal frame sunglasses exude a classic and timeless appeal, blending sophistication with modern style. Crafted with high-quality metal, the frame offers durability and a sleek aesthetic. The rectangular lenses provide a balanced look that complements various face shapes, offering both style and functionality. With a black finish, these sunglasses add a touch of understated elegance to any ensemble, making them versatile enough for everyday wear or special occasions.',	'new',	'[\"1\", \"2\"]',	'inactive',	1,	0,	2,	127,	120,	100,	4,	148,	2,	'1714389513114-5.jpg',	2,	20,	'2024-04-29 11:18:34',	'2024-05-09 11:26:41'),
(9,	'Black Rectangle Frame Sunglasses',	'',	NULL,	'677',	'black-rectangle-frame-sunglasses',	'These black rectangle frame sunglasses epitomize effortless cool and contemporary style. ',	'These black rectangle frame sunglasses epitomize effortless cool and contemporary style. Crafted with precision, the sleek black frame offers a minimalist yet bold aesthetic that effortlessly complements any outfit. The rectangular lenses exude a modern vibe while providing ample coverage and protection from the sun\'s glare.',	'new',	'[\"2\", \"1\"]',	'inactive',	1,	0,	2,	130,	120,	109,	3,	155,	2,	'1714391156122-5.jpg',	3,	20,	'2024-04-29 11:45:57',	'2024-05-09 11:26:56'),
(10,	'Blue Shade Stylish Square Frame Sunglasses',	'',	NULL,	'BLU-SQR-FRM-SUN-08',	'blue-shade-stylish-square-frame-sunglasses',	'The blue shade lenses are more than just a fashion statement; they\'re also highly functional. ',	'These stylish square frame sunglasses with blue shade lenses are the epitome of modern sophistication. Crafted with a chic square frame design, they offer a bold yet timeless look that effortlessly complements any outfit. ',	'new',	'[\"1\"]',	'active',	1,	0,	2,	140,	50,	42,	15,	137,	2,	'1715420945107-DSC_-70ng.png',	2,	15,	'2024-04-29 12:36:54',	'2024-05-11 09:49:29'),
(11,	'Brown Rectangle Plastic Sunglass',	'',	NULL,	'DGR-NV-SUN-11',	'brown-rectangle-plastic-sunglass',	'Yellow or amber tints are typically used in lenses to enhance depth perception and clarity in low-light environments.',	'Dollger Night Vision Glasses offer enhanced visibility and reduced glare during nighttime driving or other low-light conditions. The specialized lenses in these glasses are designed to enhance contrast and minimize glare from oncoming headlights and streetlights. ',	'new',	'[\"2\", \"1\"]',	'inactive',	1,	0,	2,	135,	52,	45,	15,	131,	2,	'1715337298565-4.jpg',	1,	19,	'2024-04-30 05:33:15',	'2024-05-13 10:11:49'),
(12,	'Blue Shade Stylish Square Frame Sunglasses',	'',	NULL,	'510',	'blue-shade-stylish-square-frame-sunglasses',	'These stylish square frame sunglasses with blue shade lenses are the epitome of modern sophistication. ',	'These stylish square frame sunglasses with blue shade lenses are the epitome of modern sophistication. Crafted with a chic square frame design, they offer a bold yet timeless look that effortlessly complements any outfit. The blue shade lenses are more than just a fashion statement; they\'re also highly functional. ',	'new',	'[\"2\"]',	'inactive',	1,	0,	2,	138,	64,	45,	20,	67,	2,	'1714459429559-frame-you.webp',	3,	20,	'2024-04-30 06:43:49',	'2024-05-11 09:40:07'),
(13,	'Brown Tortoise Rectangle Sunglasses',	'',	NULL,	'BRN-RGL-SUN-09',	'brown-tortoise-rectangle-sunglasses',	'The rectangular lenses provide a balanced and versatile look that complements various face shapes, while the brown tortoise pattern adds depth and character to the design. ',	'These brown tortoise rectangle sunglasses exude a timeless and sophisticated charm, blending classic design with modern elegance. Crafted with a distinctive tortoise-patterned frame, these sunglasses offer a touch of vintage-inspired style. ',	'new',	'[\"4\"]',	'active',	1,	0,	2,	155,	54,	48,	17,	150,	1,	'1714472772605-q1.JPG',	3,	19,	'2024-04-30 10:26:12',	'2024-05-14 08:35:30'),
(14,	'Men\'s Aviator Metal Sunglass',	'',	NULL,	'798998908vhgygh',	'men\'s-aviator-metal-sunglass',	'UV protect navigator frame sunglasses offer both style and essential protection for your eyes against harmful UV rays.',	'UV protect navigator frame sunglasses offer both style and essential protection for your eyes against harmful UV rays. Crafted with a classic navigator frame design, these sunglasses feature teardrop-shaped lenses and a double or triple bridge detail across the top, providing a timeless and versatile look.',	'new',	'[\"1\"]',	'inactive',	1,	0,	2,	14,	44,	44,	17,	155,	2,	'1714730860629-Vuezen-images-3.jpg',	2,	15,	'2024-05-02 06:31:11',	'2024-05-13 08:53:28'),
(15,	'Vuezen Polarized Sunglasses',	'',	NULL,	'2',	'vuezen-polarized-sunglasses',	'UV protect navigator frame sunglasses offer both style and essential protection for your eyes against harmful UV rays.',	'UV protect navigator frame sunglasses offer both style and essential protection for your eyes against harmful UV rays. Crafted with a classic navigator frame design, these sunglasses feature teardrop-shaped lenses and a double or triple bridge detail across the top, providing a timeless and versatile look.',	'new',	'[\"1\", \"2\"]',	'inactive',	1,	0,	2,	0,	0,	0,	0,	0,	2,	'1715067932121-2.png',	3,	19,	'2024-05-07 07:44:08',	'2024-05-09 11:24:37'),
(16,	'Polycarbonate Square Lens Full Rim Sunglasses',	'',	NULL,	'DL-PBT-SUN-21',	'polycarbonate-square-lens-full-rim-sunglasses',	'Polycarbonate frames are used to make these sunglasses, which offer lightweight comfort and robust construction for long-lasting wear.',	'These demo lens polycarbonate frame sunglasses blend style and durability, making them a versatile and practical accessory for any occasion. ',	'new',	'[\"4\"]',	'active',	1,	0,	2,	145,	55,	42,	17,	140,	1,	'1715420882334-13.png',	2,	15,	'2024-05-08 13:07:30',	'2024-05-11 09:48:02'),
(17,	'Vintage Black Frame Aviator Metal Sunglasses',	'',	NULL,	'BLK-AVR-ML-SUN-05',	'vintage-black-frame-aviator-metal-sunglasses',	'Designed for maximum comfort and functionality, our Vintage Aviator Sunglasses feature adjustable nose pads and lightweight construction for all-day wearability. ',	'Embrace timeless sophistication with our Vintage Black Frame Aviator Metal Sunglasses, a must-have accessory for the modern-day trendsetter. Inspired by classic aviator designs, these sunglasses exude retro charm with a contemporary edge.',	'new',	'[\"1\", \"2\"]',	'inactive',	1,	1,	1,	150,	55,	45,	16,	164,	4,	'1715253496743-14.png',	1,	13,	'2024-05-09 08:50:08',	'2024-05-11 05:46:44'),
(18,	'Blue Shade Lens Metal Frame Sunglasses',	'',	NULL,	'BLU-MT-FRM-SUN-07',	'blue-shade-lens-metal-frame-sunglasses',	'The blue shade lenses are specially designed to reduce the transmission of harmful blue light, making them ideal for those who spend extended periods in front of digital screens.',	'These blue shade lens metal frame sunglasses offer a fusion of style and practicality, making them an essential accessory for modern living. Crafted with a durable metal frame, these sunglasses provide both a sleek aesthetic and long-lasting wear. ',	'new',	'[\"4\"]',	'active',	1,	0,	2,	135,	52,	45,	16,	130,	2,	'1715251625385-5.png',	2,	14,	'2024-05-09 10:47:05',	'2024-05-11 09:35:05'),
(19,	'Women Metal Butterfly Sunglasses',	'',	NULL,	'WMN-MT-BTFY-SUN-17',	'women-metal-butterfly-sunglasses',	'The frames\' cat eye design adds a retro-inspired elegance, with the outer edges sweeping up to accentuate the cheekbones and make a flattering silhouette.',	'Women\'s metal cat eye sunglasses typically feature sleek metal frames that are lightweight yet sturdy, providing both comfort and durability for extended wear. ',	'new',	'[\"2\"]',	'active',	1,	0,	2,	135,	54,	48,	16,	13,	2,	'1715420673871-DSC_-19.png',	2,	13,	'2024-05-09 11:06:34',	'2024-05-15 05:49:11'),
(20,	'White Full Rim Square Sunglasses',	'',	NULL,	'WH-FR-SUN-01',	'white-full-rim-square-sunglasses',	'Perfect for those who appreciate clean lines and contemporary design, these sunglasses are a must-have accessory for every fashion-forward individual.',	'White Full Rim Square Sunglasses, where classic design meets contemporary flair. These sunglasses boast a bold square frame, offering a modern twist on a timeless silhouette. The full rim design exudes durability and style, ensuring these shades are not just a fashion statement but a long-lasting accessory for every occasion.',	'new',	'[\"1\"]',	'active',	1,	0,	2,	145,	56,	40,	15,	150,	2,	'1715253680259-DSC_-75ng.png',	1,	20,	'2024-05-09 11:21:20',	'2024-05-14 08:31:00'),
(21,	'Blue Cut Demo Lens Rectangle Sunglasses',	'',	NULL,	'BLU-DL-RGL-SUN-22',	'blue-cut-demo-lens-rectangle-sunglasses',	'The demo lenses provide a clear view of the world while showcasing the sunglasses\' stylish design. ',	'These blue cut demo lens rectangle sunglasses are the epitome of contemporary style and eye protection. With their sleek rectangle frame and vibrant blue-tinted lenses, they offer a modern twist on a classic design. ',	'new',	'[\"4\"]',	'active',	1,	0,	2,	150,	52,	45,	15,	145,	2,	'1715420642295-DSC_-64ng.png',	3,	19,	'2024-05-10 11:40:34',	'2024-05-13 08:46:12'),
(22,	'Cat Eye Frame Sunglasses',	'',	NULL,	'CAT-FRM-SUN-10',	'cat-eye-frame-sunglasses',	'the cat-eye frame features upswept outer edges that accentuate the cheekbones and add a flattering lift to the face.',	'Our cat-eye sunglasses are the epitome of timeless elegance and feminine charm. Vintage-inspired glamour is exuded by their distinctive cat eye shape, while being effortlessly chic. Crafted with precision.',	'new',	'[\"2\"]',	'active',	1,	0,	3,	156,	55,	47,	17,	152,	2,	'1715420611612-DSC_50g.png',	3,	13,	'2024-05-10 12:34:28',	'2024-05-11 09:43:31'),
(23,	'Demo Lens Polycarbonate Frame Sunglasses',	'',	NULL,	'DL-PBT-SUN-21',	'demo-lens-polycarbonate-frame-sunglasses',	'The frame of these sunglasses is meticulously crafted from high-quality polycarbonate material, offering unparalleled strength and resilience against everyday wear and tear. ',	'These demo lens polycarbonate frame sunglasses blend style and durability, making them a versatile and practical accessory for any occasion. Polycarbonate frames are used to make these sunglasses, which offer lightweight comfort and robust construction for long-lasting wear.',	'new',	'[\"4\"]',	'inactive',	1,	0,	2,	145,	50,	42,	16,	140,	2,	'1715420588370-11.png',	3,	20,	'2024-05-10 12:47:49',	'2024-05-13 12:11:53'),
(24,	'Dollger Night Vision Sunglasses',	'',	NULL,	'DGR-NV-SUN-11',	'dollger-night-vision-sunglasses',	'Yellow or amber tints are typically used in lenses to enhance depth perception and clarity in low-light environments.',	'Dollger Night Vision Glasses offer enhanced visibility and reduced glare during nighttime driving or other low-light conditions. The specialized lenses in these glasses are designed to enhance contrast and minimize glare from oncoming headlights and streetlights. ',	'new',	'[\"1\"]',	'active',	1,	0,	2,	148,	50,	42,	16,	145,	2,	'1715682397655-DSC_43g.png',	3,	20,	'2024-05-10 12:56:58',	'2024-05-14 10:26:37'),
(25,	'Cat Eye Transparent Frame Sunglasses',	'',	NULL,	'CAT-TRP-SUN-13',	'cat-eye-transparent-frame-sunglasses',	'Crafted with high-quality Polycarbonate transparent frames, these sunglasses exude sophistication while adding a touch of whimsy to your look. ',	'Elevate your sunny-day style with our chic Cat Eye Transparent Frame Sunglasses! These sleek shades blend retro elegance with modern flair, making them the perfect accessory for any fashion-forward individual.',	'new',	'[\"2\"]',	'active',	1,	0,	2,	150,	48,	40,	16,	145,	2,	'1715404779770-DSC_-58ng.png',	3,	13,	'2024-05-11 05:19:39',	'2024-05-16 05:55:53'),
(26,	'Aviator Full Frame Metal Fashion Sunglasses',	'',	NULL,	'AV-FR-MT-SUN-23',	'aviator-full-frame-metal-fashion-sunglasses',	' Crafted with precision from high-quality metal, these sunglasses boast a full-frame construction that exudes durability and refinement. ',	'Introducing our Aviator Full Frame Metal Fashion Sunglasses - where classic design meets contemporary style. Inspired by the iconic aviator silhouette, these sunglasses are the epitome of timeless elegance and modern sophistication.',	'new',	'[\"4\"]',	'active',	1,	0,	2,	152,	54,	44,	17,	148,	2,	'1715420532146-DSC_-17.png',	2,	15,	'2024-05-11 05:45:22',	'2024-05-11 09:42:12'),
(27,	'Thick Frame Square Anti Blue Light Glasses',	'',	NULL,	'SQR-BLU-GLS-14',	'thick-frame-square-anti-blue-light-glasses',	'Thick Frame Square Anti Blue Light Glasses, designed to revolutionize your digital experience while safeguarding your eye health. Crafted with meticulous attention to detail, these glasses seamlessly blend style and functionality, ensuring you look sharp while protecting your vision.',	'\r\nIntroducing our latest innovation in eyewear technology.',	'new',	'[\"4\"]',	'active',	1,	0,	2,	152,	50,	44,	16,	148,	3,	'1715409346926-DSC_19png.png',	3,	19,	'2024-05-11 06:35:46',	'2024-05-11 09:29:14'),
(28,	'Multicolor Full-Rim Cat Eye Glasses',	'',	NULL,	'MTC-FR-CAT-GLS-15',	'multicolor-full-rim-cat-eye-glasses',	'Our premium lenses provide 100% UV protection, shielding your eyes from harmful sun rays and reducing the risk of long-term damage. ',	'Multicolor Full-Rim Cat Eye Glasses offer a vibrant and playful twist on traditional eyewear. These glasses feature frames that showcase a spectrum of colors, creating a dynamic and eye-catching look. ',	'new',	'[\"2\"]',	'active',	1,	0,	2,	150,	52,	44,	16,	145,	3,	'1715682045956-Multicolor Full-Rim Cat Eye Glasses 4.png',	3,	13,	'2024-05-11 09:08:12',	'2024-05-14 10:20:45'),
(29,	'Women Demo Lens Butterfly Sunglasses',	'',	NULL,	'345375',	'women-demo-lens-butterfly-sunglasses',	'The butterfly shape of the frames features gracefully curved edges that mimic the delicate wings of a butterfly, creating a flattering and eye-catching silhouette.',	'Women\'s demo lens butterfly sunglasses offer a captivating blend of elegance and modern style. With their butterfly-shaped frames and demo lenses, these sunglasses exude femininity and sophistication. ',	'new',	'[\"4\"]',	'inactive',	1,	0,	1,	147,	48,	42,	16,	145,	2,	'1715680818209-Women Demo Lens Butterfly Sunglasses 1.png',	3,	13,	'2024-05-13 07:06:32',	'2024-05-15 05:46:34'),
(30,	'Aviator Metal Sunglasses',	'',	NULL,	'AV-MT-SUN-24',	'aviator-metal-sunglasses',	'Aviator sunglasses are known for their classic and versatile style, making them suitable for various face shapes and occasions, from casual outings to formal events.',	'Aviator metal sunglasses are iconic eyewear characterized by their teardrop-shaped lenses and thin metal frames. The frames are typically made of lightweight metal. The lenses are often tinted to reduce glare and protect the eyes from harmful UV rays.',	'new',	'[\"4\"]',	'active',	2,	0,	2,	154,	54,	45,	16,	150,	2,	'1715584293502-DSC_-93png.png',	2,	15,	'2024-05-13 07:11:33',	'2024-05-13 09:02:42'),
(31,	'Blue Light Blocking Glasses',	'',	NULL,	'BLU-LB-GLS-25',	'blue-light-blocking-glasses',	'These glasses filter out a significant portion of blue light, helping to reduce eye strain, headaches, and sleep disturbances caused by prolonged exposure to screens.',	'Blue light blocking glasses are designed to shield your eyes from the harmful effects of blue light emitted by digital screens. Crafted with specially formulated lenses, ',	'new',	'[\"2\"]',	'active',	1,	0,	2,	147,	47,	42,	16,	145,	3,	'1715584567311-DSC_-75png.png',	3,	20,	'2024-05-13 07:16:07',	'2024-05-14 08:49:04'),
(32,	'Crystal Clear Lens Transparent Sunglasses',	'',	NULL,	'CSTL-TRP-SUN-26',	'crystal-clear-lens-transparent-sunglasses',	'The clear lenses not only provide UV protection but also offer a crisp and unobstructed view, making them perfect for both outdoor activities and everyday wear.',	'These crystal clear lens transparent sunglasses offer a sleek and modern take on a classic accessory. Crafted with transparent frames and clear lenses, they exude contemporary style while providing a minimalist aesthetic.  Additionally, the transparent design adds a unique and trendy element to the sunglasses, ensuring you stand out from the crowd with your fashion-forward choice.',	'new',	'[\"4\"]',	'active',	1,	0,	2,	149,	52,	41,	16,	145,	2,	'1715584807189-DSC_-71png.png',	3,	20,	'2024-05-13 07:20:07',	'2024-05-13 09:22:23'),
(33,	'Full Rim Square Frame Sunglasses',	'',	NULL,	'FR-SQR-SUN-27',	'full-rim-square-frame-sunglasses',	'The square frame adds a touch of boldness to your look, making a statement without being overpowering. It\'s a versatile choice that complements casual and formal outfits alike, adding a dash of personality to any ensemble.',	'Full rim square frame sunglasses are a bold and stylish accessory that exudes confidence and sophistication. With a sturdy and durable frame that covers the entire perimeter of the lenses, these sunglasses have a fashionable look and robust construction.',	'new',	'[\"4\"]',	'active',	1,	0,	2,	148,	48,	42,	16,	145,	3,	'1715585115530-DSC_-84png.png',	3,	20,	'2024-05-13 07:25:15',	'2024-05-13 09:23:18'),
(34,	'Men\'s Navigator Sunglasses',	'',	NULL,	'MN-NV-SUN-28',	'men\'s-navigator-sunglasses',	' Whether you\'re dressing up for a formal occasion or keeping it casual for a day out with friends, these sunglasses add a touch of sophistication to any ensemble.',	'Men\'s navigator sunglasses are a classic and timeless accessory characterized by their distinctive aviator-inspired design. Navigator sunglasses are highly versatile and can complement a wide range of face shapes and styles.',	'new',	'[\"1\"]',	'active',	1,	0,	2,	147,	49,	42,	16,	145,	2,	'1715585779784-DSC_-79png.png',	3,	15,	'2024-05-13 07:36:19',	'2024-05-13 09:25:20'),
(35,	'Retro Small Oval Yellow Lens Sunglasses',	'',	NULL,	'RTO-YLW-SUN-29',	'retro-small-oval-yellow-lens-sunglasses',	'The oval shape of the lenses adds a unique and distinctive flair to the sunglasses, while the yellow tint provides a warm and nostalgic aesthetic.',	'Retro small oval yellow lens sunglasses offer a nostalgic and stylish accessory that harks back to vintage fashion trends. These sunglasses feature small oval-shaped lenses with a yellow tint, reminiscent of retro styles from past eras. ',	'new',	'[\"1\"]',	'active',	1,	0,	1,	145,	52,	42,	15,	144,	2,	'1715586355800-DSC_-83png.png',	3,	18,	'2024-05-13 07:45:55',	'2024-05-13 09:27:23'),
(36,	'Clubmaster Metal Fashion Sunglasses',	'',	NULL,	'CBMT-MT-SUN-18',	'clubmaster-metal-fashion-sunglasses',	'Our metal frames provide durability and stability, ensuring long-lasting wear and a comfortable fit. Whether you\'re soaking up the sun on a tropical getaway or strolling through the city streets, these sunglasses are designed to keep up with your busy lifestyle.',	'Elevate your style with our chic and sophisticated women metal fashion sunglasses. Crafted with precision and attention to detail, these sunglasses offer the perfect blend of fashion and function for any occasion. ',	'new',	'[\"2\"]',	'active',	1,	0,	2,	148,	50,	42,	16,	145,	2,	'1715589300034-DSC_37ng.png',	2,	20,	'2024-05-13 08:35:00',	'2024-05-15 05:54:32'),
(37,	'Black Full Rim Rectangle Metal Frame Sunglasses',	'',	NULL,	'BLK-FR-MTL-SUN-30',	'black-full-rim-rectangle-metal-frame-sunglasses',	'With a black finish, these sunglasses add a touch of understated elegance to any ensemble, making them versatile enough for everyday wear or special occasions.',	'These black full rim rectangle metal frame sunglasses exude a classic and timeless appeal, blending sophistication with modern style. Crafted with high-quality metal, the frame offers durability and a sleek aesthetic. The rectangular lenses provide a balanced look that complements various face shapes, offering both style and functionality. ',	'new',	'[\"4\"]',	'active',	2,	0,	2,	152,	50,	42,	16,	150,	2,	'1715602830094-DSC_-58g.png',	2,	20,	'2024-05-13 12:20:30',	'2024-05-13 12:23:58'),
(38,	'Crystal Clear Transparent Oval Sunglasses',	'',	NULL,	'CST-CR-TRP-SUN-31',	'crystal-clear-transparent-oval-sunglasses',	'The oval design of the lenses provides a flattering silhouette that suits a range of face shapes, offering both style and functionality. ',	'These crystal clear transparent oval sunglasses offer a fresh and contemporary interpretation of a classic silhouette. Crafted with transparent frames and oval-shaped lenses, they provide a modern and stylish look that\'s perfect for any occasion.',	'new',	'[\"4\"]',	'active',	1,	0,	2,	151,	48,	41,	16,	148,	2,	'1715603312328-D.png',	3,	18,	'2024-05-13 12:28:32',	'2024-05-13 12:29:48'),
(39,	'Demo Lens Rectangular Brown Sunglasses',	'',	NULL,	'DL-RGL-BRN-SUN-32',	'demo-lens-rectangular-brown-sunglasses',	'Their sturdy yet lightweight polycarbonate frame guarantees durability and comfort for everyday wear.',	'These demo rectangular brown sunglasses offer a blend of classic style and modern sophistication. ',	'new',	'[\"1\"]',	'active',	1,	0,	2,	147,	48,	42,	15,	145,	2,	'1715681832818-Demo Lens Rectangular Brown Sunglasses 1.png',	3,	20,	'2024-05-13 12:33:27',	'2024-05-14 10:17:12'),
(40,	'Gray Gradient Lens Sunglasses',	'',	NULL,	'GRY-LNS-SUN-33',	'gray-gradient-lens-sunglasses',	'The gray tint of the lenses provides excellent protection against bright sunlight and glare, making them ideal for outdoor activities such as driving, beach outings, or simply enjoying a sunny day. ',	'Gray gradient lens sunglasses offer a stylish and versatile option for eye protection with a touch of sophistication. These sunglasses feature lenses that transition from a darker shade at the top to a lighter shade at the bottom, creating a gradient effect. ',	'new',	'[\"2\"]',	'active',	1,	0,	2,	149,	52,	44,	16,	147,	2,	'1715603877109-DSC_13png.png',	3,	13,	'2024-05-13 12:37:57',	'2024-05-14 08:40:53'),
(41,	'Crystal Clear Transparent Rectangular Sunglasses',	'',	NULL,	'CSTL-CR-TRP-SUN-36',	'crystal-clear-transparent-rectangular-sunglasses',	'Crafted from high-quality materials like acetate or polycarbonate, these sunglasses boast a lightweight yet durable construction, ensuring comfort and longevity with every wear.',	'These crystal clear transparent rectangular sunglasses offer a contemporary and sophisticated look that\'s sure to turn heads. Crafted with transparent frames and rectangular lenses, they combine modern style with timeless elegance.',	'new',	'[\"4\"]',	'active',	1,	0,	2,	148,	49,	42,	16,	146,	2,	'1715604083309-01.png',	1,	19,	'2024-05-13 12:41:23',	'2024-05-14 08:45:27'),
(42,	'Yellow Full Rim Frame Square Sunglasses',	'',	NULL,	'YLW-FR-SQR-SUN-37',	'yellow-full-rim-frame-square-sunglasses',	'The full rim frame provides stability and support for the lenses, ensuring durability and long-lasting wear. The bold yellow color adds a pop of personality to your ensemble, making these sunglasses a standout accessory in your collection.',	'Introducing our vibrant and stylish yellow full rim frame square sunglasses, designed to brighten up your look and your day. Crafted with high-quality materials, these sunglasses offer both fashion and functionality for any occasion. ',	'new',	'[\"1\"]',	'active',	2,	0,	2,	151,	52,	44,	16,	148,	3,	'1715604511815-2.png',	2,	20,	'2024-05-13 12:48:32',	'2024-05-14 08:46:02'),
(43,	'Half Rim Metal Frame Sunglasses',	'',	NULL,	'HR-ML-SUN-38',	'half-rim-metal-frame-sunglasses',	'Inspired by the iconic Clubmaster design, these sunglasses feature a metal frame construction that exudes durability and style.',	'These Half Rim Metal Frame Sunglasses blend vintage charm with modern sophistication, creating a timeless accessory for any fashion-forward individual. ',	'new',	'[\"1\"]',	'active',	2,	0,	2,	149,	51,	42,	16,	151,	2,	'1715670149285-17.png',	2,	20,	'2024-05-14 06:52:26',	'2024-05-14 07:02:29'),
(44,	'Navigator Metal Frame Sunglasses',	'',	NULL,	'NV-MT-SUN-39',	'navigator-metal-frame-sunglasses',	'The defining feature of navigator sunglasses is their teardrop-shaped lenses, which are slightly convex and often oversized, offering ample coverage and protection from the sun\'s rays. ',	'Navigator metal frame sunglasses are a timeless and iconic accessory known for their sleek and sophisticated design. These sunglasses typically feature a durable metal frame that is lightweight yet sturdy, providing both comfort and durability. ',	'new',	'[\"1\"]',	'active',	2,	0,	2,	147,	47,	40,	16,	149,	2,	'1715669903202-13.png',	2,	20,	'2024-05-14 06:58:23',	'2024-05-14 07:17:46'),
(45,	'UV Protect Navigator Frame Sunglasses',	'',	NULL,	'UVPT-NV-SUN-40',	'uv-protect-navigator-frame-sunglasses',	'These sunglasses feature teardrop-shaped lenses and a double or triple bridge detail across the top, providing a timeless and versatile look.',	'UV protect navigator frame sunglasses offer both style and essential protection for your eyes against harmful UV rays. Crafted with a classic navigator frame design.',	'new',	'[\"2\"]',	'active',	1,	0,	2,	148,	49,	40,	16,	150,	2,	'1715674983259-22.png',	3,	20,	'2024-05-14 07:07:19',	'2024-05-14 08:23:03'),
(46,	'UV Protected Full-Rim Square Sunglasses',	'',	NULL,	'UVPT-FR-SQR-SUN-41',	'uv-protected-full-rim-square-sunglasses',	' The sunglasses\' full-rim design ensures sturdy support and durability for the lenses.',	'UV-protected full-rim square sunglasses combine style with functionality to provide essential eye protection from harmful UV rays while maintaining your fashionable appearance.',	'new',	'[\"1\"]',	'active',	1,	0,	2,	149,	52,	41,	16,	153,	2,	'1715679837085-BANNER.png',	3,	20,	'2024-05-14 08:27:06',	'2024-05-14 09:43:57'),
(47,	'Full Rim Cat Eye Computer Glasses',	'',	NULL,	'767789',	'full-rim-cat-eye-computer-glasses',	'Blue Light Protection: Use our specialty lenses to protect your child\'s eyes from hazardous blue light emitted by displays. These glasses block out blue light to keep your child\'s eyes comfortable and healthy, preventing headaches, eye strain, and exhaustion caused by extended screen usage.',	'We are pleased to present our Full Rim Cat Eye Computer Glasses, the ideal combination of fashion and use to shield your child\'s eyes from digital strain in the modern world. These stylish full-rim cat-eye glasses were created especially for young eyes that spend a lot of time in front of screens.',	'new',	'[\"3\"]',	'active',	1,	0,	1,	120,	46,	34,	14,	126,	3,	'1715836506770-03.png',	4,	13,	'2024-05-16 05:15:06',	'2024-05-16 05:15:06');

DROP TABLE IF EXISTS `query_forms`;
CREATE TABLE `query_forms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text,
  `status` varchar(10) DEFAULT NULL COMMENT 'Read, Unread',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `query_forms` (`id`, `full_name`, `email`, `phone`, `subject`, `message`, `status`, `created_at`) VALUES
(1,	'Tanuj',	'tanuj1123@yopmail.com',	'91-8851791873',	NULL,	'Hii ...I am Tanuj..I have a query',	NULL,	'2024-05-07 06:27:31');

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` json NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `roles` (`id`, `name`, `permissions`, `status`, `created_at`, `updated_at`) VALUES
(3,	'Manage Category',	'[2]',	'active',	'2024-04-25 11:00:45',	'2024-04-25 11:00:45'),
(4,	'Get Category',	'[3]',	'active',	'2024-04-25 11:21:14',	'2024-04-25 11:21:14'),
(5,	'Manage Products',	'[4]',	'active',	'2024-04-25 11:26:38',	'2024-04-25 11:26:38'),
(6,	'Show products',	'[9]',	'active',	'2024-04-25 11:27:34',	'2024-04-25 11:27:34'),
(7,	'CEO',	'[2, 4, 7, 9, 11, 13, 15, 6, 29, 28, 26]',	'active',	'2024-04-27 13:07:21',	'2024-04-27 13:07:21'),
(9,	'Cataloging',	'[2, 4, 7, 15]',	'active',	'2024-05-02 09:29:15',	'2024-05-02 09:29:15'),
(10,	'test dashboard',	'[6]',	'active',	'2024-05-13 09:17:13',	'2024-05-13 09:17:13');

DROP TABLE IF EXISTS `search_parameters`;
CREATE TABLE `search_parameters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `search_params` varchar(255) NOT NULL,
  `search_count` bigint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `search_parameters` (`id`, `search_params`, `search_count`, `created_at`, `updated_at`) VALUES
(1,	'vuezen',	3,	'2024-05-09 10:22:41',	'2024-05-07 09:50:22'),
(2,	'men',	1,	'2024-05-07 10:39:02',	'2024-05-07 10:39:02'),
(3,	'white full rim square sunglasses',	1,	'2024-05-10 09:51:18',	'2024-05-10 09:51:18'),
(4,	'cat eye metal full rim sunglasses',	1,	'2024-05-10 11:13:26',	'2024-05-10 11:13:26'),
(5,	'brown tortoise rectangle sunglasses',	1,	'2024-05-10 12:21:59',	'2024-05-10 12:21:59'),
(6,	'full frame women metal fashion sunglasses',	1,	'2024-05-11 08:39:05',	'2024-05-11 08:39:05'),
(7,	'multicolor full-rim frame sunglasses',	3,	'2024-05-11 09:05:07',	'2024-05-11 09:03:14'),
(8,	'polycarbonate square lens full rim sunglasses',	2,	'2024-05-13 12:10:07',	'2024-05-11 09:45:21'),
(9,	'yellow shield demo lens sunglasses',	1,	'2024-05-11 10:04:36',	'2024-05-11 10:04:36'),
(10,	'blue shade stylish square frame sunglasses',	5,	'2024-05-14 10:01:12',	'2024-05-11 10:04:53'),
(11,	'blue shade lens metal frame sunglasses',	1,	'2024-05-11 10:05:18',	'2024-05-11 10:05:18'),
(12,	'blue cut demo lens rectangle sunglasses',	3,	'2024-05-13 08:48:17',	'2024-05-11 10:05:29'),
(13,	'black',	1,	'2024-05-13 04:49:49',	'2024-05-13 04:49:49'),
(14,	'bla',	1,	'2024-05-13 04:52:39',	'2024-05-13 04:52:39'),
(15,	'men\'s aviator metal sunglass',	1,	'2024-05-13 08:52:21',	'2024-05-13 08:52:21'),
(16,	'brown rectangle plastic sunglass',	2,	'2024-05-13 10:08:01',	'2024-05-13 10:08:01'),
(17,	'demo lens polycarbonate frame sunglasses',	1,	'2024-05-13 12:09:54',	'2024-05-13 12:09:54'),
(18,	'women demo lens butterfly sunglasses',	2,	'2024-05-14 09:58:46',	'2024-05-14 09:44:59'),
(19,	'demo lens rectangular brown sunglasses',	1,	'2024-05-14 10:05:07',	'2024-05-14 10:05:07'),
(20,	'crystal clear transparent oval sunglasses',	1,	'2024-05-14 10:08:51',	'2024-05-14 10:08:51'),
(21,	'dollger night vision sunglasses',	1,	'2024-05-14 10:25:01',	'2024-05-14 10:25:01'),
(22,	'yellow',	1,	'2024-05-15 12:40:38',	'2024-05-15 12:40:38');

DROP TABLE IF EXISTS `seo`;
CREATE TABLE `seo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` varchar(400) NOT NULL,
  `tags` json DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_mode` enum('production','development') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'development',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `shipment_data`;
CREATE TABLE `shipment_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_num` bigint unsigned NOT NULL DEFAULT '1',
  `shipment_length` double unsigned NOT NULL,
  `shipment_width` double unsigned NOT NULL,
  `shipment_height` double unsigned NOT NULL,
  `shipment_weight` double unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `shipment_data` (`id`, `product_num`, `shipment_length`, `shipment_width`, `shipment_height`, `shipment_weight`, `created_at`, `updated_at`) VALUES
(1,	1,	15.24,	6,	3.5,	0.2,	'2024-05-07 02:15:20',	'2024-05-10 01:39:07'),
(2,	2,	30.48,	40.64,	10.16,	0.3,	'2024-05-07 02:15:53',	'2024-04-25 07:21:49');

DROP TABLE IF EXISTS `shippings`;
CREATE TABLE `shippings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) NOT NULL,
  `product_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `ui_inner_sections`;
CREATE TABLE `ui_inner_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(199) NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `sub_category_id` bigint DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '#faebd7',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `ui_inner_sections` (`id`, `slug`, `heading`, `description`, `category_id`, `sub_category_id`, `image`, `color`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(17,	'eyeglasses-men',	'Men Eyeglasses',	'Don\'t forget to use your 2024 vision benefits',	1,	1,	'1713959461197-men_eyeglasses.webp',	'#c0c0c0',	'active',	'',	'2024-04-24 11:51:01',	'2024-04-24 11:51:01'),
(18,	'eyeglasses-women',	'Women Eyeglasses',	'Don\'t forget to use your 2023 vision benefits',	1,	2,	'1713955630160-frame-you.webp',	'#f0f0f5',	'active',	NULL,	'2024-04-24 12:16:33',	'2024-04-24 12:16:33'),
(19,	'eyeglasses-kids',	'Kids Eyeglasses',	'Don\'t forget to use your 2024 vision benefits',	1,	3,	'1713959514903-men_eyeglasses.webp',	'#f8f7f7',	'active',	NULL,	'2024-04-24 12:18:23',	'2024-04-24 12:18:23'),
(20,	'sunglasses-men',	'Men Sunglasses',	'Don\'t forget to use your 2023 vision benefits',	2,	1,	'1713937446776-men-sunglasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 05:44:06',	'2024-04-24 05:44:06'),
(21,	'sunglasses-women',	'Women Sunglasses',	'Don\'t forget to use your 2023 vision benefits',	2,	2,	'1713949397466-women_sunglasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 09:03:17',	'2024-04-24 09:03:17'),
(22,	'Sunglasses-kids',	'Kids Sunglasses',	'Don\'t forget to use your 2023 vision benefits',	2,	3,	'1713943116361-Kids Sunglasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 07:18:36',	'2024-04-24 07:18:36'),
(23,	'men-computer-glasses',	'Men Computer Glasses',	'Don\'t forget to use your 2024 vision benefits',	3,	1,	'1713937584737-Men-Computer-Glasses.webp',	'#d4e3fe',	'active',	NULL,	'2024-05-11 07:36:18',	'2024-05-11 07:36:18'),
(24,	'women-computer-glasses',	'Women Computer Glasses',	'Don\'t forget to use your 2023 vision benefits',	3,	2,	'1713943131419-women-Computer-Glasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 07:18:51',	'2024-04-24 07:18:51'),
(25,	'kids-computer-glasses',	'Kids Computer Glasses',	'Don\'t forget to use your 2023 vision benefits',	3,	3,	'1713943147689-kid-Computer-Glasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 07:19:07',	'2024-04-24 07:19:07'),
(29,	'offer-amzing',	'Student Men',	'Student best offer available here',	5,	1,	'1714198614546-student_men_sunglass.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-27 06:16:54',	'2024-04-27 06:16:54'),
(30,	'offer-amzing',	'Student Women',	'Travel Women',	5,	2,	'1713949025523-student_women_sunglasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 08:57:05',	'2024-04-24 08:57:05'),
(31,	'students',	'Students',	'Travel Kids',	5,	3,	'1713949041804-student_kid_sunglasses.webp',	'#d58400',	'active',	NULL,	'2024-05-11 07:32:51',	'2024-05-11 07:32:51'),
(32,	'offer-amzing',	'Student men',	'Student best offer available here',	4,	1,	'1714200427782-student_men_sunglass.webp',	'#d4d4d4',	'active',	NULL,	'2024-04-27 06:47:07',	'2024-04-27 06:47:07'),
(33,	'offer-amzing',	'Student women',	'Student best offer available here',	4,	2,	'1714200516257-student_women_sunglasses.webp',	'#e6e6e6',	'active',	NULL,	'2024-04-27 06:48:36',	'2024-04-27 06:48:36'),
(34,	'offer-amzing',	'Student kids',	'Student best offer available here',	4,	3,	'1714200558143-student_kid_sunglasses.webp',	'#e6e6e6',	'active',	NULL,	'2024-04-27 06:49:18',	'2024-04-27 06:49:18');

DROP TABLE IF EXISTS `ui_section_cards`;
CREATE TABLE `ui_section_cards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `ui_section_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ui_section_id` (`ui_section_id`),
  CONSTRAINT `ui_section_cards_ibfk_1` FOREIGN KEY (`ui_section_id`) REFERENCES `ui_sections` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `ui_sections`;
CREATE TABLE `ui_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(199) NOT NULL,
  `module_heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `position` int DEFAULT NULL,
  `module_description` varchar(1000) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `ui_sections` (`id`, `slug`, `module_heading`, `title`, `position`, `module_description`, `image`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1,	'glasses/eyeglasses/1/women/2',	'Defining shape while maintaining it.',	'landing page',	1,	'Trendy, Stylish, and a Touch of Elegance',	'1713794822992-hero-img.webp',	'active',	'this is section for top section of landing page',	'2024-04-23 10:06:36',	'2024-04-23 10:06:36'),
(2,	'glasses/sunglasses/2/men/1',	'Frames that Frame You! ',	'landing page',	3,	'Explore our visionary eyewear collection in a world of style beyond sight. Step into the future of eyewear fashion where innovation meets elegance.',	'1713862023051-frame-you.webp',	'active',	'this is section for top section of landing page',	'2024-04-23 08:47:03',	'2024-04-23 08:47:03'),
(3,	'glasses/Students/4/Men/1',	'Hey Students!',	'Vuezen AR Try -on',	4,	'Study smart, save smarter with FREE EYEWEAR GLASSES',	'1715858716186-student.webp',	'active',	'This Section is for Students.',	'2024-05-16 11:25:17',	'2024-05-16 11:25:17'),
(4,	'glasses/eyeglasses/1/men/1',	'Explore Eyewear That Goes Beyond the Ordinary.',	'THE NEXT GENERATION OF SMARTGLASSESS AT 20% OFF update',	6,	'',	'1713958872713-Explore_eyewear_788x380.webp',	'active',	'remarksss update2',	'2024-04-24 11:41:12',	'2024-04-24 11:41:12'),
(6,	'landing-page',	'Behind Every Frame, There’s a Story to Unfold',	'landing-page',	2,	'Discover our eyewear with exquisite craftsmanship and passion that defines us.',	'',	'active',	'This is for the second section of landing page',	'2024-04-23 10:07:40',	'2024-04-23 10:07:40'),
(7,	'glasses/sunglasses/2/women/2',	'Fashion That Speaks',	'landing page',	5,	'Unveil your signature look with Vuezen',	'null',	'active',	'This is heading and subheading for sixth module of landing page',	'2024-04-23 10:11:43',	'2024-04-23 10:11:43');

DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `house_no` varchar(10) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_addresses_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user_addresses` (`id`, `user_id`, `full_name`, `country`, `state`, `city`, `zipcode`, `house_no`, `address`, `landmark`, `mobile`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1,	1,	'Vikas Jain',	'india',	'delhi',	'delhi',	'212222',	'k-22/1',	'street number 7, Bhajanpura',	'Hansraj Dairy',	'+91-9999515794',	1,	'active',	'2024-04-20 05:32:28',	'2024-05-10 05:38:44'),
(2,	2,	'Tanuj Kumar',	'india',	'Delhi',	'Delhi',	'110053',	'333',	'K-000,Street no 11',	'',	'+91-9999999999',	0,	'inactive',	'2024-04-23 14:25:16',	'2024-05-07 10:00:48'),
(3,	8,	'ayushi',	'india',	'up',	'noida',	'110053',	'1212',	'sector 20 A5 noida',	'',	'+91-9898989898',	1,	'active',	'2024-04-24 05:20:14',	'2024-04-24 05:29:46'),
(4,	11,	'laxman',	'india',	'New Delhi',	'New Delhi',	'110096',	'A-2',	'A-85, New Ashok Nagar',	'',	'+91-9576939654',	1,	'active',	'2024-04-24 12:55:03',	'2024-04-24 13:12:59'),
(5,	10,	'Tanuj kumar',	'india',	'Delhi',	'Delhi',	'110053',	'333',	'K-000,Street no 11',	'',	'+91-9999999999',	1,	'active',	'2024-04-25 11:46:36',	'2024-04-25 11:46:36'),
(6,	2,	'Tanuj Kumar',	'india',	'Delhi',	'Delhi',	'110053',	'333jjjjjjj',	'K-000,Street no 11',	'',	'+91-8787878878',	1,	'active',	'2024-05-07 10:02:43',	'2024-05-18 05:53:05'),
(7,	25,	'Tanuj kumar',	'india',	'Delhi',	'Delhi',	'110053',	'333',	'K-000,Street no 11',	'',	'+91-9888888888',	1,	'active',	'2024-05-07 11:04:32',	'2024-05-07 11:04:32'),
(8,	18,	'ayushi',	'india',	'up',	'noida',	'110053',	'6878',	'sector 20 A5 noida',	'Laudantium necessit',	'+1-8881825795',	1,	'active',	'2024-05-07 11:53:10',	'2024-05-08 12:50:59'),
(9,	26,	'naveen kumar',	'india',	'Gautum Budh Nager',	'noida sector 4',	'201301',	' A63 ',	'Basement A-63',	'near HDFC bank',	'+91-9599753891',	1,	'active',	'2024-05-08 11:48:34',	'2024-05-08 11:48:34'),
(10,	27,	'Mehreen',	'india',	'UP',	'Noida',	'201301',	'A 63',	'A 63 Sector 4',	'Near HDFC Bank',	'+91-9210397905',	1,	'active',	'2024-05-08 12:52:44',	'2024-05-08 12:52:44'),
(11,	30,	'Mehreen',	'india',	'UP',	'Noida',	'201303',	'',	'B-2 Sector 4 Noida',	'HDFC Bank',	'+91-9210397905',	1,	'active',	'2024-05-11 06:51:08',	'2024-05-11 07:09:28'),
(12,	31,	'Subhan',	'india',	'Delhi',	'New Delhi',	'110026',	'B-151',	'Thokar No 8, Kalindi Kunj Road',	'',	'+91-8265833386',	0,	'inactive',	'2024-05-16 09:13:16',	'2024-05-16 09:23:41'),
(13,	31,	'Subhan',	'india',	'Delhi',	'New Delhi',	'110025',	'B-151',	'Thokar No 8, Kalindi Kunj Road',	'',	'+91-8265833386',	0,	'inactive',	'2024-05-16 09:27:51',	'2024-05-16 10:36:39'),
(14,	31,	'Subhan',	'india',	'Delhi',	'New Delhi',	'110025',	'B-151',	'Thokar No 8, Kalindi Kunj Road',	'',	'+91-8265833386',	0,	'inactive',	'2024-05-16 10:37:19',	'2024-05-18 06:17:48'),
(15,	35,	'sonu sharman',	'india',	'delhi',	'delhi',	'110045',	'980',	'noida sector 2',	'noida , u.p',	'+91-9876543211',	1,	'active',	'2024-05-18 06:11:23',	'2024-05-18 06:11:23'),
(16,	31,	'Subhan',	'india',	'Delhi',	'New Delhi',	'110025',	'B-151',	'Thokar No 8, Kalindi Kunj Road',	'',	'+91-8265833386',	1,	'active',	'2024-05-18 06:19:09',	'2024-05-18 06:19:09'),
(17,	36,	'hello world',	'india',	'delhi',	'delhi',	'110045',	'0987',	'noida new 2',	'delhig of heart',	'+91-9876543212',	1,	'active',	'2024-05-18 07:08:34',	'2024-05-18 07:08:34'),
(18,	37,	'raman',	'india',	'new delhi',	'delhi',	'110044',	'234',	'as df gh noida',	'near noida ',	'+91-9898898786',	1,	'active',	'2024-05-18 08:50:36',	'2024-05-18 08:50:36');

DROP TABLE IF EXISTS `user_education_info`;
CREATE TABLE `user_education_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `full_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `university_name` varchar(100) NOT NULL,
  `used` tinyint NOT NULL DEFAULT '0',
  `id_card_img` varchar(1000) NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `university_id` bigint NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `approve` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user_education_info` (`id`, `user_id`, `full_name`, `university_name`, `used`, `id_card_img`, `order_id`, `university_id`, `status`, `approve`, `created_at`, `updated_at`) VALUES
(1,	8,	'ayushi',	'rbs fghjkl',	0,	'1713938240215-template 7th.jpg',	NULL,	124567890,	'active',	0,	'2024-04-24 05:57:20',	'2024-04-24 05:57:20'),
(2,	10,	'Tanuj',	'Mewar Institute of management',	0,	'1713938913662-1713797062973-men-computer Glasses 200X200.webp',	NULL,	12345,	'active',	0,	'2024-04-24 06:08:33',	'2024-04-24 06:08:33'),
(3,	1,	'vikas jain',	'metameta',	0,	'1714029648728-Aviator.webp',	NULL,	2154,	'active',	0,	'2024-04-25 07:20:48',	'2024-04-25 07:20:48'),
(4,	18,	'ayush',	'rbsevbnm',	0,	'1715170297245-images (2).jpg',	NULL,	2345678976545678,	'active',	0,	'2024-05-08 12:11:37',	'2024-05-08 12:11:37');

DROP TABLE IF EXISTS `user_otps`;
CREATE TABLE `user_otps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `otp_code` varchar(6) NOT NULL,
  `creation_time` bigint DEFAULT NULL,
  `used` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user_otps` (`id`, `user_id`, `otp_code`, `creation_time`, `used`) VALUES
(1,	2,	'8129',	1715173579135,	0),
(2,	9,	'1587',	1713939013674,	0),
(3,	8,	'9384',	1713940167681,	0),
(4,	14,	'6563',	1713954598959,	0),
(5,	25,	'5099',	1715064432389,	0);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `is_social_login` tinyint unsigned NOT NULL DEFAULT '0',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint DEFAULT '0',
  `country` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IN',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`is_social_login`, `id`, `name`, `email`, `email_verified_at`, `phone`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`, `is_verified`, `country`) VALUES
(0,	1,	'vikas jain',	'vikas@metaspacechain.com',	NULL,	'+91-9999515794',	'$2b$12$QsyQuwwudAA6cUQknxZDY.AFvvm4zZPPkWluubEUs1d6GLr5NRkQq',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-20 05:24:33',	'2024-04-20 05:24:33',	1,	'IN'),
(0,	2,	'Tanuj Kumar',	'tk923323@gmail.com',	NULL,	'+91-8851791874',	'$2b$12$QsyQuwwudAA6cUQknxZDY.utaRzvCqXz7VmXbXFvIpC5t4LVJy7vm',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 08:04:08',	'2024-04-23 08:04:08',	1,	'IN'),
(0,	3,	'Sharjah',	'sharjah@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.az/JvM0LOrL3M9brdoMwJCKH6eoUBV.',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 08:45:42',	'2024-04-23 08:45:42',	0,	'IN'),
(0,	4,	'Tanuj',	'sharjah1@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.az/JvM0LOrL3M9brdoMwJCKH6eoUBV.',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 09:46:35',	'2024-04-23 09:46:35',	0,	'IN'),
(0,	5,	'Tanuj',	'sharjah2@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.az/JvM0LOrL3M9brdoMwJCKH6eoUBV.',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 09:49:05',	'2024-04-23 09:49:05',	0,	'IN'),
(0,	6,	'Tanuj',	'sharjah3@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.az/JvM0LOrL3M9brdoMwJCKH6eoUBV.',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 09:53:52',	'2024-04-23 09:53:52',	0,	'IN'),
(0,	7,	'Tanuj',	'sharjah4@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.az/JvM0LOrL3M9brdoMwJCKH6eoUBV.',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 10:09:22',	'2024-04-23 10:09:22',	0,	'IN'),
(0,	8,	'vueas',	'vueas@yopmail.com',	NULL,	'+91-9898989898',	'$2b$12$QsyQuwwudAA6cUQknxZDY.b.xZ2rb4SLIfcWjj7Gcz/TmSaFBeZ6i',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 05:17:34',	'2024-04-24 05:17:34',	1,	'IN'),
(0,	9,	'Levi floxy',	'levi2floxy@gmail.com',	NULL,	'+91-9576939654',	'$2b$12$QsyQuwwudAA6cUQknxZDY.lfxfVYDBPqFXeYG3T804J4qhNrsGkJK',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 05:28:20',	'2024-04-24 05:28:20',	0,	'IN'),
(1,	10,	'Tanuj Kumar',	'tanuj@metaspacechain.com',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 05:51:06',	'2024-04-24 05:51:06',	1,	'IN'),
(0,	11,	'kancha DMS',	'kanchadms@gmail.com',	NULL,	'+91-9576939654',	'$2b$12$QsyQuwwudAA6cUQknxZDY..3E6vNgGCvs2P73BGB0xGyC8OnRno46',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 06:33:00',	'2024-04-24 06:33:00',	1,	'IN'),
(0,	12,	'Test',	'subhan1111@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.M6Qx9XdNnsEUR4Fy6BKSqz.w5e8kXEC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 08:46:19',	'2024-04-24 08:46:19',	0,	'IN'),
(1,	13,	'Anupam Kumar Singh',	'anupam@bastionex.net',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 09:55:52',	'2024-04-24 09:55:52',	1,	'IN'),
(0,	14,	'durgesh',	'durgesh@bastionex.net',	NULL,	'+91-9557284086',	'$2b$12$QsyQuwwudAA6cUQknxZDY.Zd.wtPVlpo15U5c.GkRiMlBMo0qZJyC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 10:29:07',	'2024-04-24 10:29:07',	1,	'IN'),
(0,	15,	'louise',	'louise@smtp2go.com',	NULL,	'+91-9098765445',	'$2b$12$QsyQuwwudAA6cUQknxZDY.E7cevfRy2EnLI.eAjINQ4wd7ssfa5cC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 10:38:17',	'2024-04-24 10:38:17',	0,	'IN'),
(0,	16,	'testkoaukk',	'test-koaukk97b@srv1.mail-tester.com',	NULL,	'+91-3456789009',	'$2b$12$QsyQuwwudAA6cUQknxZDY.yzMTIw.ysFYTsc8xChJQnf.BWCbTOe2',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 10:44:55',	'2024-04-24 10:44:55',	0,	'IN'),
(1,	17,	'Ayushi Sharma',	'ayushis270201@gmail.com',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 10:55:22',	'2024-04-24 10:55:22',	1,	'IN'),
(1,	18,	'Ayushi Sharma',	'ayushi@bastionex.net',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-25 04:44:13',	'2024-04-25 04:44:13',	1,	'IN'),
(0,	19,	'Subhan',	'subhan11112@yopmail.com',	NULL,	'+91-6888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.M6Qx9XdNnsEUR4Fy6BKSqz.w5e8kXEC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-25 11:32:22',	'2024-04-25 11:32:22',	0,	'IN'),
(0,	20,	'Subhan',	'subhan111122@yopmail.com',	NULL,	'+91-8898989898',	'$2b$12$QsyQuwwudAA6cUQknxZDY.M6Qx9XdNnsEUR4Fy6BKSqz.w5e8kXEC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-25 11:39:22',	'2024-04-25 11:39:22',	0,	'IN'),
(0,	21,	'Tannu',	'subhan1111222@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.M6Qx9XdNnsEUR4Fy6BKSqz.w5e8kXEC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-25 11:42:55',	'2024-04-25 11:42:55',	0,	'IN'),
(0,	22,	'Subhan',	'subhan11112222@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.M6Qx9XdNnsEUR4Fy6BKSqz.w5e8kXEC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-25 15:28:11',	'2024-04-25 15:28:11',	1,	'IN'),
(0,	23,	'dummy',	'dummy@gmail.com',	NULL,	'+91-9878667898',	'$2b$12$QsyQuwwudAA6cUQknxZDY.YSPsp6axh0RhEBIbl//G27dTkLl7mWy',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-30 16:46:50',	'2024-04-30 16:46:50',	0,	'IN'),
(0,	24,	'Ajeet',	'ajeetdesign@gmail.com',	NULL,	'+91-9350887236',	'$2b$12$QsyQuwwudAA6cUQknxZDY.f4AqkznmqXhcIdnZ4rkFaobxc3hYrXe',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-30 16:49:16',	'2024-04-30 16:49:16',	1,	'IN'),
(0,	25,	'Tanuj',	'tanuj1123@yopmail.com',	NULL,	'+91-8851791873',	'$2b$12$QsyQuwwudAA6cUQknxZDY.wtXk3NaE9ZqTruDluj3AwQK46JxJgPa',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-07 06:39:42',	'2024-05-07 06:39:42',	1,	'IN'),
(0,	26,	'Naveen',	'naveen1.kumar1995@gmail.com',	NULL,	'+91-9599753891',	'$2b$12$QsyQuwwudAA6cUQknxZDY.daa3IGOMwkkFlSfVQvjn3jFhOv3mcIu',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-08 11:40:54',	'2024-05-08 11:40:54',	1,	'IN'),
(1,	27,	'mehreen sheikh',	'mehreen@bastionex.net',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-08 12:51:50',	'2024-05-08 12:51:50',	1,	'IN'),
(1,	28,	'Akash Kumar',	'akash@bastionex.net',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-08 12:52:48',	'2024-05-08 12:52:48',	1,	'IN'),
(1,	29,	'poonam Singh',	'poonam@metaspacechain.com',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-09 11:03:07',	'2024-05-09 11:03:07',	1,	'IN'),
(1,	30,	'Mehreen Sheikh',	'mehreen@metaspacechain.com',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-11 06:45:02',	'2024-05-11 06:45:02',	1,	'IN'),
(1,	31,	'Subhan Rehman',	'subhan@metaspacechain.com',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-16 09:11:45',	'2024-05-16 09:11:45',	1,	'IN'),
(0,	32,	'vikas',	'vikasmeta@yopmail.com',	NULL,	'+91-9999515794',	'$2b$12$QsyQuwwudAA6cUQknxZDY.SlyJ.wSYlKm2FAWGfBk4hNblZcKf3.q',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-17 13:19:58',	'2024-05-17 13:19:58',	1,	'IN'),
(0,	33,	'asdf',	'asdf@yopmail.com',	NULL,	'+971-9876543213',	'$2b$12$QsyQuwwudAA6cUQknxZDY.kYEYtcoOLgs047.HeNlii/xq5vKXBve',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-18 05:39:03',	'2024-05-18 05:39:03',	1,	'AE'),
(0,	35,	'asdfone',	'asdf1@yopmail.com',	NULL,	'+91-9876543211',	'$2b$12$QsyQuwwudAA6cUQknxZDY.YDHtqnImkF1pz2AqanxqXckEybI1nKy',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-18 05:57:11',	'2024-05-18 05:57:11',	1,	'IN'),
(0,	36,	'asdf two',	'asdf2@yopmail.com',	NULL,	'+971-987654321123',	'$2b$12$QsyQuwwudAA6cUQknxZDY.vGGKQATXp8nuAAzHkiala98XNzmBBNS',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-18 07:05:14',	'2024-05-18 07:05:14',	1,	'AE'),
(0,	37,	'raja',	'son@yopmail.com',	NULL,	'+91-9876543211',	'$2b$12$QsyQuwwudAA6cUQknxZDY.2teQ16T.Aq3UXNG7l/zlznIWpUvIZt.',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-18 08:47:07',	'2024-05-18 08:47:07',	1,	'IN');

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `remarks` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlists_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wishlists` (`id`, `product_id`, `user_id`, `remarks`, `status`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1,	1,	8,	NULL,	'active',	'2024-04-24 05:30:36',	'2024-04-24 05:30:36',	'2024-04-24 05:30:36'),
(5,	3,	11,	NULL,	'active',	'2024-04-24 06:57:06',	'2024-04-24 06:57:06',	'2024-04-24 06:57:06'),
(9,	6,	2,	NULL,	'active',	'2024-05-07 10:07:26',	'2024-05-07 10:07:26',	'2024-05-07 10:07:26');

-- 2024-05-18 13:03:29
