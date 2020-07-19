-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for blog
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `blog`;

-- Dumping structure for table blog.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table blog.categories: ~6 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(5, 'WordPress', '2018-06-06 16:51:29', '2018-06-06 16:51:29'),
	(6, 'Ruby on Rails', '2018-06-06 16:51:55', '2018-06-06 16:51:55'),
	(7, 'Laravel', '2018-06-06 16:52:13', '2018-06-06 16:52:13'),
	(8, 'Tutorials', '2018-06-06 16:52:47', '2018-06-06 16:52:47'),
	(9, 'Carrer', '2018-06-06 17:21:05', '2018-06-06 17:21:05'),
	(10, 'Carrer', '2018-06-06 19:08:15', '2018-06-06 19:08:15');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table blog.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table blog.migrations: ~9 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(72, '2014_10_12_000000_create_users_table', 1),
	(73, '2014_10_12_100000_create_password_resets_table', 1),
	(74, '2018_06_02_104110_create_posts_table', 1),
	(75, '2018_06_02_104632_create_categories_table', 1),
	(76, '2018_06_04_195459_create_tags_table', 1),
	(77, '2018_06_04_203625_create_post_tag_table', 1),
	(78, '2018_06_05_093232_create_profiles_table', 1),
	(79, '2018_06_06_091201_create_settings_table', 2),
	(80, '2018_06_08_085725_insert_user_id_column', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table blog.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table blog.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table blog.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table blog.posts: ~10 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
	(1, 'dfgdg', 'dfgdg', 'erwer', '1', 'uploads/posts/1528268218Tulips.jpg', '2018-06-06 06:57:18', '2018-06-06 06:56:58', '2018-06-06 06:57:18', '1'),
	(2, 'Laravel blogging tutorials', 'laravel-bolling-tutorials', '<p><span style="font-family: "Open Sans", Arial, sans-serif; text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, velit id ullamcorper volutpat, est nunc condimentum mauris, vel consectetur turpis ex vitae nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed ante neque, maximus ac dui sit amet, interdum tincidunt ligula.</span></p><p><span style="font-family: "Open Sans", Arial, sans-serif; text-align: justify;"> Nulla malesuada porttitor semper. Vestibulum non lorem porttitor, interdum quam in, finibus metus. Pellentesque id vulputate odio. Donec diam nulla, laoreet non dui ac, pellentesque convallis felis. Quisque ac purus sit amet arcu rutrum sollicitudin. Vestibulum facilisis egestas efficitur. Vestibulum elementum metus a eros semper pellentesque. Aliquam erat volutpat. Suspendisse luctus lacus orci, sit amet malesuada leo mattis a. Mauris nec quam erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus elementum odio, nec scelerisque risus maximus in. Aenean vel nisl orci.</span><br></p>', '7', 'uploads/posts/15283081823.jpg', NULL, '2018-06-06 18:03:02', '2018-06-06 18:03:48', '1'),
	(3, 'How install wordpress', 'how-install-wordpress', '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Praesent tristique in lacus id gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sed diam vehicula, vehicula sapien nec, sollicitudin nisl. Sed sit amet est lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent pellentesque id turpis tempus pharetra. Suspendisse posuere egestas dictum. Sed quam felis, condimentum in magna sed, imperdiet venenatis mauris. Donec ipsum quam, mattis ultrices tincidunt a, laoreet ac magna. Suspendisse quis pretium risus. Donec ac dictum est.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Vivamus non mauris nec augue gravida iaculis. Nulla urna mi, luctus quis massa et, sagittis tempus mauris. Suspendisse sed rhoncus enim, et lobortis nisl. Fusce sed dapibus purus, vitae interdum purus. Nam viverra est a maximus ullamcorper. Nullam at orci lobortis erat ullamcorper tempor vel et ligula. Maecenas vel nibh ut sem bibendum hendrerit a non nisi. Aliquam ac mi malesuada, fermentum odio quis, pretium nunc. Maecenas mattis sapien eu ante efficitur, vitae porta felis mattis. Nulla nec mattis eros, eget bibendum sem.</p>', '5', 'uploads/posts/15283082974.jpg', NULL, '2018-06-06 18:04:57', '2018-06-06 18:04:57', '1'),
	(4, 'html 5 & css3 latest tutorial', 'html-5-css3-latest-tutorial', '<p><span style="font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, velit id ullamcorper volutpat, est nunc condimentum mauris, vel consectetur turpis ex vitae nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed ante neque, maximus ac dui sit amet, interdum tincidunt ligula. Nulla malesuada porttitor semper. Vestibulum non lorem porttitor, interdum quam in, finibus metus. Pellentesque id vulputate odio. Donec diam nulla, laoreet non dui ac, pellentesque convallis felis. Quisque ac purus sit amet arcu rutrum sollicitudin. Vestibulum facilisis egestas efficitur. Vestibulum elementum metus a eros semper pellentesque. Aliquam erat volutpat. Suspendisse luctus lacus orci, sit amet malesuada leo mattis a. Mauris nec quam erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus elementum odio, nec scelerisque risus maximus in. Aenean vel nisl orci.</span><br></p>', '8', 'uploads/posts/15283101786.jpg', NULL, '2018-06-06 18:36:18', '2018-06-06 18:36:18', '1'),
	(5, 'javascript basic course', 'javascript-basic-course', '<p><span style="font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Vivamus non mauris nec augue gravida iaculis. Nulla urna mi, luctus quis massa et, sagittis tempus mauris. Suspendisse sed rhoncus enim, et lobortis nisl. Fusce sed dapibus purus, vitae interdum purus. Nam viverra est a maximus ullamcorper. Nullam at orci lobortis erat ullamcorper tempor vel et ligula. Maecenas vel nibh ut sem bibendum hendrerit a non nisi. Aliquam ac mi malesuada, fermentum odio quis, pretium nunc. Maecenas mattis sapien eu ante efficitur, vitae porta felis mattis. Nulla nec mattis eros, eget bibendum sem.</span><br></p>', '8', 'uploads/posts/1528312163bg-boxed-blue.jpg', NULL, '2018-06-06 19:09:23', '2018-06-06 19:09:23', '2'),
	(6, 'vuejs basic course', 'vuejs-basic-course', '<p><span style="font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Aliquam turpis nulla, interdum a dictum non, sollicitudin ac purus. Vivamus id erat sem. Suspendisse et libero lacus. Aenean sit amet massa et magna porttitor laoreet. Mauris imperdiet vehicula vestibulum. Integer blandit, sem sed commodo tincidunt, nulla lacus dictum libero, et iaculis urna purus nec felis. Nunc vel venenatis nulla. Donec imperdiet, erat congue condimentum ultricies, massa augue aliquam lorem, sit amet bibendum odio nisl ut enim.</span><br></p>', '5', 'uploads/posts/1528312209bg-boxed-primary.jpg', NULL, '2018-06-06 19:10:09', '2018-06-06 19:10:09', '2'),
	(7, 'machine language details', 'machine-language-details', '<p><span style="font-family: " open="" sans",="" arial,="" sans-serif;="" text-align:="" justify;"="">Aliquam turpis nulla, interdum a dictum non, sollicitudin ac purus. Vivamus id erat sem. Suspendisse et libero lacus. Aenean sit amet massa et magna porttitor laoreet. Mauris imperdiet vehicula vestibulum. Integer blandit, sem sed commodo tincidunt, nulla lacus dictum libero, et iaculis urna purus nec felis. Nunc vel venenatis nulla. Donec imperdiet, erat congue condimentum ultricies, massa augue aliquam lorem, sit amet bibendum odio nisl ut enim.</span></p><p><span style="font-family: " open="" sans",="" arial,="" sans-serif;="" text-align:="" justify;"="">Aliquam turpis nulla, interdum a dictum non, sollicitudin ac purus. Vivamus id erat sem. Suspendisse et libero lacus. Aenean sit amet massa et magna porttitor laoreet. Mauris imperdiet vehicula vestibulum. Integer blandit, sem sed commodo tincidunt, nulla lacus dictum libero, et iaculis urna purus nec felis. Nunc vel venenatis nulla. Donec imperdiet, erat congue condimentum ultricies, massa augue aliquam lorem, sit amet bibendum odio nisl ut enim.<br></span><br></p>', '8', 'uploads/posts/1528312326bg-boxed-black.jpg', NULL, '2018-06-06 19:12:06', '2018-06-08 18:20:27', '2'),
	(8, 'laravel e-commerce  course', 'laravel-e-commerce-course', '<p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Vivamus non mauris nec augue gravida iaculis. Nulla urna mi, luctus quis massa et, sagittis tempus mauris. Suspendisse sed rhoncus enim, et lobortis nisl. Fusce sed dapibus purus, vitae interdum purus. Nam viverra est a maximus ullamcorper. Nullam at orci lobortis erat ullamcorper tempor vel et ligula. Maecenas vel nibh ut sem bibendum hendrerit a non nisi. Aliquam ac mi malesuada, fermentum odio quis, pretium nunc. Maecenas mattis sapien eu ante efficitur, vitae porta felis mattis. Nulla nec mattis eros, eget bibendum sem.</p><p style="margin-bottom: 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Praesent volutpat metus ut tristique ultrices. Aliquam nec ipsum posuere erat malesuada porta sit amet eget ex. Phasellus vestibulum ex quam, ut dapibus lorem egestas nec. Vivamus urna massa, maximus eget velit sit amet, consectetur maximus velit. Morbi laoreet dignissim mi, et fringilla sapien varius quis. Pellentesque neque mauris, vehicula vitae pharetra id, elementum vitae lorem. Nullam commodo lobortis interdum. Curabitur at sodales elit.</p>', '7', 'uploads/posts/15283123901.png', NULL, '2018-06-06 19:13:10', '2018-06-06 19:13:10', '1'),
	(9, 'fgtrt', 'fgtrt', 'sdfsdf', '5', 'uploads/posts/1529559307Penguins.jpg', NULL, '2018-06-21 05:35:07', '2018-06-21 05:35:07', '1'),
	(10, 'fgtrt', 'fgtrt', 'sdfsdf', '5', 'uploads/posts/1529559367Penguins.jpg', '2018-06-21 05:55:33', '2018-06-21 05:36:07', '2018-06-21 05:55:33', '1');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table blog.post_tag
CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table blog.post_tag: ~22 rows (approximately)
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, NULL, NULL),
	(3, 3, 1, NULL, NULL),
	(4, 4, 2, NULL, NULL),
	(5, 2, 4, NULL, NULL),
	(6, 2, 5, NULL, NULL),
	(7, 2, 6, NULL, NULL),
	(8, 2, 8, NULL, NULL),
	(9, 3, 5, NULL, NULL),
	(10, 3, 7, NULL, NULL),
	(11, 4, 5, NULL, NULL),
	(12, 5, 5, NULL, NULL),
	(13, 5, 6, NULL, NULL),
	(14, 6, 4, NULL, NULL),
	(15, 6, 5, NULL, NULL),
	(16, 6, 6, NULL, NULL),
	(17, 7, 5, NULL, NULL),
	(18, 7, 6, NULL, NULL),
	(19, 8, 4, NULL, NULL),
	(20, 8, 5, NULL, NULL),
	(21, 8, 6, NULL, NULL),
	(22, 8, 8, NULL, NULL),
	(23, 7, 4, NULL, NULL);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;

-- Dumping structure for table blog.profiles
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'uploads/avatars/1.jpg',
  `user_id` int(11) NOT NULL,
  `about` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table blog.profiles: ~2 rows (approximately)
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
	(1, 'uploads/avatars/1.jpg', 1, 'use App\\Post;use App\\Post;use App\\Post;use App\\Post;use App\\Post;use App\\Post;use App\\Post;', 'http://facebook.com', 'http://facebook.com', '2018-06-08 10:49:33', '2018-06-08 10:54:57'),
	(4, 'uploads/avatars/1.jpg', 20, NULL, NULL, NULL, '2018-06-21 06:40:56', '2018-06-21 06:40:56');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;

-- Dumping structure for table blog.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table blog.settings: ~1 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
	(5, 'Laravel\'s Blog', '00256258423', 'info@laravel_blog.om', 'Dhak, Bangladesh', '2018-06-08 10:49:05', '2018-06-08 10:49:05');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table blog.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table blog.tags: ~5 rows (approximately)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(4, 'Laravel', '2018-06-06 16:51:38', '2018-06-06 16:51:38'),
	(5, 'coding', '2018-06-06 17:54:50', '2018-06-06 17:55:03'),
	(6, 'programming', '2018-06-06 17:55:16', '2018-06-06 17:55:16'),
	(7, 'wordpress', '2018-06-06 17:55:33', '2018-06-06 17:55:33'),
	(8, 'php framework ', '2018-06-06 17:56:42', '2018-06-06 17:56:42');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Dumping structure for table blog.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table blog.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Tanmay', 'tausif@gmail.com', '1', '$2y$10$XJcHvIx3MKC1/kJJo2n.YOqhRyxbBy5jQd1fAIF5Shpz9iG3cFc.2', 'fP2NebZB6CbttiBUdilpzhwxXIiaeP65W6kTJ0LrMKxo9pOPyfWck2megtaY', '2018-06-08 10:49:33', '2018-06-21 07:05:21'),
	(20, 'taufin', 'taus@gmail.com', '0', '$2y$10$HQ2qU4CL0PwKrjTO27V.FuWkzfxojMI5CHx2o5ZB5wnV8mqfHimNe', '290eqFKaDMJJxicSMeVovutucu3kyOjGooBSxXj5FwfTElJXIj5pkhjNXKnP', '2018-06-21 06:40:56', '2018-06-21 06:49:50'),
	(21, 'html', 'tarik@gmail.com', '0', '$2y$10$Mk4AtihvMHQxmaduRwmVU.gPRBgIVR.Ya6q.RSfdOMtSD8jUAW5xO', NULL, '2018-06-21 06:54:03', '2018-06-21 06:54:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
