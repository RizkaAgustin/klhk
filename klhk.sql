-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2020 at 02:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klhk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eselon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_id`, `name`, `eselon`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 6, 'Adminitjen', 'Inspektorat Jenderal', 'adminitjen@gmail.com', NULL, 'adminitjen', NULL, '2020-04-27 22:15:24', '2020-04-27 22:15:24'),
(2, 8, 'User', 'Umum', 'user@gmail.com', NULL, 'user123', NULL, '2020-04-27 23:39:59', '2020-04-27 23:39:59'),
(3, 9, 'AdminPPI', 'PPI', 'adminPPI@gmail.com', NULL, 'adminPPI', NULL, '2020-04-28 00:46:44', '2020-04-28 00:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `eselons`
--

CREATE TABLE `eselons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eselons`
--

INSERT INTO `eselons` (`id`, `name`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sekretariat Jenderal', 1, '2020-04-27 21:15:21', '2020-04-28 00:45:24', '2020-04-28 00:45:24'),
(2, 'Inspektorat Jenderal', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(3, 'Planologi Kehutanan Dan Tata Lingkungan', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(4, 'Konservasi Sumber Daya Alam Dan Ekosistem', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(5, 'Pengendalian DAS Dan Hutan Lindung', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(6, 'Pengelolaan Hutan Dan Produksi Lestari', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(7, 'Pengendalian Pencemaran Dan Kerusakan Lingkungan', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(8, 'Pengelolaan Sampah, Limbah Dan B3', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(9, 'Pengendalian Perubahan Iklim', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(10, 'Perhutanan Sosial Dan Kemitraan Lingkungan', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(11, 'Penegakkan Hukum Lingkungan Hidup Dan Kehutanan', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(12, 'BP2SDM', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(13, 'Badan Litbang Dan Inovasi', 1, '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_03_175421_create_eselons_table', 1),
(5, '2020_04_03_175446_create_web_categories_table', 1),
(6, '2020_04_03_175504_create_webs_table', 1),
(7, '2020_04_05_113455_create_web_monitorings_table', 1),
(8, '2020_04_26_212502_create_admin_table', 1),
(9, '2020_04_28_041404_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', 'Abdurrahman Ramadhan', 'abdmandhan@gmail.com', NULL, '$2y$10$FR9F3kJynB0CAYVIZHBgReyCKnmAsATXalePWO3P1V0WgPlwES11S', NULL, '2020-04-27 21:15:21', '2020-04-27 21:15:21'),
(4, 'admin', 'Adminsetjen', 'adminsetjen@gmail.com', NULL, '$2y$10$EAY2vNqhngvlNczh9MWa5OwhDMSmAmKCNz2dz0Y1ZBYHtSLjV1QBK', NULL, '2020-04-27 22:12:32', '2020-04-27 22:12:32'),
(6, 'admin', 'Adminitjen', 'adminitjen@gmail.com', NULL, '$2y$10$/4ClOM2q2XSpyroR.u.WMumDAFM3PUyYgmyNbTVvP8t1HQVQCzXwS', NULL, '2020-04-27 22:15:24', '2020-04-27 22:15:24'),
(7, 'superadmin', 'Superadmin', 'superadmin@gmail.com', NULL, '$2y$10$0qt68jKrhk0od8Pl4ktG8ePwM2kCOSM9YnulKPQ6vzzxzH7XuwDqe', NULL, '2020-04-27 22:19:56', '2020-04-27 22:19:56'),
(8, 'admin', 'User', 'user@gmail.com', NULL, '$2y$10$0oo25sjOhCzqbGxMcHvfIO4YJU85dcA/rbq0oTYmuLqWzLRFqdgTW', NULL, '2020-04-27 23:39:59', '2020-04-27 23:39:59'),
(9, 'admin', 'AdminPPI', 'adminPPI@gmail.com', NULL, '$2y$10$nEzVdMeJaTVGoPcoR1aNyuL6QP1gxy8Krqt.XWIRTeOu58u5EczQ6', NULL, '2020-04-28 00:46:44', '2020-04-28 00:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `webs`
--

CREATE TABLE `webs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_eselon` int(11) NOT NULL,
  `id_web_category` int(11) NOT NULL,
  `url_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webs`
--

INSERT INTO `webs` (`id`, `name`, `id_eselon`, `id_web_category`, `url_name`, `ip_address`, `description`, `status`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ludwig', 3, 2, 'http://www.mayert.net/et-perspiciatis-dolores-delectus-minus-nisi', '185.38.73.157', 'Eveniet autem voluptate provident consequatur.', 1, 'https://lorempixel.com/100/100/?73968', '2020-04-27 21:15:24', '2020-04-27 22:35:58', '2020-04-27 22:35:58'),
(2, 'Oran', 2, 2, 'http://www.mclaughlin.info/', '238.159.139.252', 'Architecto eveniet omnis ut dignissimos reprehenderit.', 1, 'https://lorempixel.com/100/100/?54796', '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(3, 'Caterina', 11, 1, 'http://ritchie.biz/officia-sequi-non-aliquid-dicta.html', '26.38.80.137', 'Commodi pariatur reprehenderit quas id.', 0, 'https://lorempixel.com/100/100/?25860', '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(4, 'Dorris', 7, 2, 'http://www.kassulke.org/', '206.82.133.126', 'Ducimus veritatis sed maiores delectus cumque.', 0, 'https://lorempixel.com/100/100/?50355', '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(5, 'Glen', 3, 1, 'http://welch.org/quis-et-odio-quia-perspiciatis-voluptatum-laborum', '149.37.127.101', 'Ratione ducimus suscipit excepturi quibusdam.', 1, 'https://lorempixel.com/100/100/?22590', '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(6, 'Arnold', 9, 2, 'http://www.lindgren.org/sit-est-suscipit-alias-facilis.html', '83.187.130.75', 'Inventore est nihil ipsum nostrum ullam deserunt vitae.', 0, 'https://lorempixel.com/100/100/?39432', '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(7, 'Quincy', 10, 2, 'http://www.oconnell.com/itaque-iure-temporibus-eos-ut', '252.103.0.109', 'Et et perspiciatis quod ipsam ducimus aperiam.', 0, 'https://lorempixel.com/100/100/?91947', '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(8, 'Yasmeen', 9, 1, 'http://www.cronin.info/dolorem-repellat-reiciendis-cum-vitae.html', '215.86.195.102', 'Voluptate itaque odio aperiam aliquam sapiente laboriosam.', 0, 'https://lorempixel.com/100/100/?30149', '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(9, 'Prince', 3, 2, 'http://www.bechtelar.com/', '79.70.51.205', 'Est architecto cum et tempora.', 1, 'https://lorempixel.com/100/100/?69791', '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(10, 'Clarissa', 7, 1, 'http://nolan.net/quidem-ut-quis-voluptatibus-qui-sit-ullam-voluptatum-qui', '227.167.91.67', 'Rerum voluptatem voluptas pariatur necessitatibus illum eum.', 0, 'https://lorempixel.com/100/100/?50416', '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(11, 'KSDAE', 4, 2, 'http://ksdae.menlhk.go.id/', '36.86.63.182', 'website utama KSDAE', 1, 'http://ksdae.menlhk.go.id/assets/news/Smart.jpg', '2020-04-27 22:43:50', '2020-04-27 22:45:53', '2020-04-27 22:45:53'),
(12, 'KSDAE', 4, 2, 'http://ksdae.menlhk.go.id/', '36.86.63.182', 'website', 1, 'http://ksdae.menlhk.go.id/assets/news/Smart.jpg', '2020-04-27 22:46:40', '2020-04-28 00:13:00', '2020-04-28 00:13:00'),
(13, 'KSDAE', 4, 2, 'http://ksdae.menlhk.go.id/', '36.86.63.182', 'website', 0, 'http://ksdae.menlhk.go.id/assets/news/wanagama.jpg', '2020-04-28 00:43:02', '2020-04-28 00:44:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_categories`
--

CREATE TABLE `web_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_categories`
--

INSERT INTO `web_categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sistem Informasi', '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL),
(2, 'Umum', '2020-04-27 21:15:21', '2020-04-27 21:15:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_monitorings`
--

CREATE TABLE `web_monitorings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_web` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `visitors` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_monitorings`
--

INSERT INTO `web_monitorings` (`id`, `id_web`, `status`, `visitors`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 0, 560, '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(2, 9, 1, 971, '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(3, 10, 1, 979, '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(4, 4, 1, 285, '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(5, 7, 0, 374, '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(6, 2, 1, 491, '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(7, 8, 0, 118, '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(8, 6, 0, 906, '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(9, 1, 1, 350, '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL),
(10, 5, 0, 279, '2020-04-27 21:15:25', '2020-04-27 21:15:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `eselons`
--
ALTER TABLE `eselons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `webs`
--
ALTER TABLE `webs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_categories`
--
ALTER TABLE `web_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_monitorings`
--
ALTER TABLE `web_monitorings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eselons`
--
ALTER TABLE `eselons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `webs`
--
ALTER TABLE `webs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `web_categories`
--
ALTER TABLE `web_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `web_monitorings`
--
ALTER TABLE `web_monitorings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
