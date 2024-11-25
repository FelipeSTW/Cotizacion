-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.40 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para yute_dba
CREATE DATABASE IF NOT EXISTS `yute_dba` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `yute_dba`;

-- Volcando estructura para tabla yute_dba.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clientes_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla yute_dba.clientes: ~16 rows (aproximadamente)
INSERT IGNORE INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `created_at`, `updated_at`) VALUES
	(1, 'Felipe', 'FAHUMADA87@GMAIL.COM', '963754405', '2024-11-24 02:25:24', '2024-11-24 02:25:24'),
	(2, 'Juan Moraga', 'juan_m@gmail.com', '963754485', '2024-11-24 02:41:35', '2024-11-24 02:41:35'),
	(3, 'Luis Andres Rojas', 'luisandres@gmail.com', '965874405', '2024-11-24 02:58:36', '2024-11-24 02:58:36'),
	(4, 'juan Perez', 'hperez@gmail.com', '990101053', '2024-11-25 00:21:34', '2024-11-25 00:21:34'),
	(5, 'Nombre del Cliente', 'email@ejemplo.com', '123456789', '2024-11-25 00:27:12', '2024-11-25 00:27:12'),
	(6, 'Andrez Ahumada', 'aahumada@gmail.com', '9906352', '2024-11-25 00:31:11', '2024-11-25 00:31:11'),
	(7, 'Alejandro Vera', 'ale_vera@gmail.com', '986524405', '2024-11-25 01:02:05', '2024-11-25 01:02:05'),
	(8, 'Alejandrogonzalez', 'ale_gonzalez@gmail.com', '986524406', '2024-11-25 01:02:43', '2024-11-25 01:02:43'),
	(9, 'alejandro Chandia', 'ale_chandia@gmail.com', '950101052', '2024-11-25 01:05:23', '2024-11-25 01:05:23'),
	(10, 'Ignacio Rodriguez', 'nacho@gmail.com', '963758545', '2024-11-25 01:07:56', '2024-11-25 01:07:56'),
	(11, 'Julio bRITO', 'julio@gmail.com', '990101052', '2024-11-25 01:10:39', '2024-11-25 01:10:39'),
	(12, 'Juanl Vera', 'Juan@vera.com', '963785525', '2024-11-25 01:12:00', '2024-11-25 01:12:00'),
	(13, 'Felipe Perez', 'pipe@gmail.com', '963754408', '2024-11-25 01:13:52', '2024-11-25 01:13:52'),
	(14, 'Juan Pereira', 'jpereira@gmail.com', '963578805', '2024-11-25 01:40:34', '2024-11-25 01:40:34'),
	(15, 'Patricio Perez', 'pato@gmail.com', '988787874', '2024-11-25 03:10:41', '2024-11-25 03:10:41'),
	(16, 'Benito Perez', 'bperez@gmail.com', '5457485858', '2024-11-25 03:53:34', '2024-11-25 03:53:34');

-- Volcando estructura para tabla yute_dba.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla yute_dba.failed_jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla yute_dba.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla yute_dba.migrations: ~6 rows (aproximadamente)
INSERT IGNORE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_11_23_180244_create_clientes_table', 1),
	(6, '2024_11_24_185206_create_productos_table', 2);

-- Volcando estructura para tabla yute_dba.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla yute_dba.password_reset_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla yute_dba.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla yute_dba.personal_access_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla yute_dba.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `stock` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla yute_dba.productos: ~50 rows (aproximadamente)
INSERT IGNORE INTO `productos` (`id`, `nombre`, `precio`, `stock`, `created_at`, `updated_at`) VALUES
	(1, 'temporibus', 446.07, 94, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(2, 'eaque', 834.17, 82, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(3, 'ea', 206.46, 50, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(4, 'et', 795.66, 13, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(5, 'qui', 535.39, 19, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(6, 'beatae', 844.46, 27, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(7, 'consequuntur', 448.28, 0, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(8, 'similique', 231.59, 8, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(9, 'repudiandae', 174.49, 92, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(10, 'ipsa', 108.83, 95, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(11, 'est', 388.06, 39, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(12, 'maxime', 790.90, 39, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(13, 'ullam', 221.12, 80, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(14, 'fugiat', 446.62, 66, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(15, 'repellat', 56.11, 17, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(16, 'sit', 751.24, 44, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(17, 'excepturi', 740.77, 22, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(18, 'voluptatem', 867.98, 71, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(19, 'adipisci', 135.82, 14, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(20, 'labore', 638.45, 93, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(21, 'corrupti', 527.58, 66, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(22, 'possimus', 148.73, 70, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(23, 'in', 386.79, 28, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(24, 'quasi', 850.45, 52, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(25, 'ea', 652.41, 69, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(26, 'officiis', 432.13, 99, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(27, 'dolorem', 929.84, 100, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(28, 'doloremque', 893.98, 44, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(29, 'voluptatem', 121.12, 66, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(30, 'est', 414.80, 90, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(31, 'ut', 514.16, 24, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(32, 'sit', 348.50, 41, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(33, 'consequatur', 23.96, 0, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(34, 'aut', 397.46, 90, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(35, 'sit', 615.05, 61, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(36, 'enim', 844.34, 88, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(37, 'ex', 81.15, 4, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(38, 'qui', 397.21, 1, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(39, 'aut', 532.36, 12, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(40, 'sed', 593.97, 36, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(41, 'est', 816.82, 23, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(42, 'animi', 505.56, 18, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(43, 'iste', 133.74, 95, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(44, 'dolore', 968.52, 51, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(45, 'omnis', 243.29, 62, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(46, 'distinctio', 665.79, 47, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(47, 'ipsam', 71.71, 21, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(48, 'illo', 227.31, 16, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(49, 'consectetur', 79.38, 62, '2024-11-24 21:56:13', '2024-11-24 21:56:13'),
	(50, 'veritatis', 767.13, 11, '2024-11-24 21:56:13', '2024-11-24 21:56:13');

-- Volcando estructura para tabla yute_dba.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla yute_dba.users: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
