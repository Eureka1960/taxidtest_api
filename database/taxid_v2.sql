-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 16 mars 2020 à 19:31
-- Version du serveur :  10.3.15-MariaDB
-- Version de PHP :  7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `taxid_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `assujettis`
--

CREATE TABLE `assujettis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rccm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_nat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texid_mat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxe_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `assujettis`
--

INSERT INTO `assujettis` (`id`, `name`, `rccm`, `id_nat`, `tax_number`, `address`, `texid_mat`, `taxe_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Rutherford-Nitzsche', 'RJM1J1ZK', 'Q6K8', 'DXGG9M', '60765 Alyce Row Suite 205', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(2, 'Koss Inc', 'WDNNIICR', 'UXS1', 'ON2Z08', '3099 Gerhard Fork Apt. 401', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(3, 'Hegmann, Mante and Schimmel', 'GU9GPZRA', 'AJ4L', 'AEPMI2', '87857 Cecilia Skyway', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(4, 'Gulgowski, Hartmann and Casper', 'CW67VZMU', 'KOYY', 'NMHHUO', '631 Melany Roads Suite 293', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(5, 'Pagac-Barrows', 'JMDDHZX6', 'NDEG', 'AESBYL', '2071 Raymond Ville Suite 601', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(6, 'Rau, West and Quitzon', 'PSTLLBUY', 'OE4Q', 'RB860N', '6668 Velva River Suite 089', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(7, 'Bednar-Konopelski', 'C5G4AONK', '9XZI', 'VD5NOB', '8409 Bayer Ranch', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(8, 'Schiller-Watsica', 'DNBNL38W', 'EPDX', 'EZ3JLP', '275 Lauriane Ramp Suite 745', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(9, 'Swaniawski-Weissnat', 'JYKQHQVN', 'M1IJ', 'KWXXBE', '98105 Freeda Squares Apt. 304', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(10, 'Jones, Kshlerin and Blanda', 'YXFV9EKZ', 'HPTB', 'JT9JA8', '51401 Carmella Club Apt. 296', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(11, 'Schmitt, Bode and Steuber', '4QHDYUKP', 'MGCH', 'THU6Y8', '78310 Dietrich Falls', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(12, 'Moen, Dooley and Bednar', 'WSHBMT98', '1TAX', 'ORLUHZ', '329 Dina Neck Apt. 922', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(13, 'Kiehn LLC', 'BW5W41AO', 'LXFV', 'BWCEKA', '2241 Douglas Oval Apt. 251', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(14, 'Dooley, VonRueden and Ankunding', '8L6OHEW3', 'PKY9', 'S8LUKK', '213 Weber Flat Suite 161', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(15, 'Macejkovic and Sons', 'LGTGKSUE', '0SEQ', 'VIUVYT', '83706 Judy Turnpike Suite 874', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(16, 'Willms-Windler', 'D68SJAPG', 'XXA2', 'X7EMWK', '97367 Ortiz Falls', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(17, 'Koepp, Schneider and Doyle', 'K8VJAYIU', '3URN', 'NR3TMJ', '33375 Heaney Cliff Apt. 946', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(18, 'Schulist-Jacobi', 'S4SFPS5G', 'MKTO', 'A661QR', '29735 Isaiah Mission', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(19, 'DuBuque Group', 'HPTQEGDP', 'Y6P1', 'YEDM6O', '46915 Goodwin Park', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(20, 'Ryan, Mosciski and Ziemann', 'ZIOEAK4U', 'FWT9', 'MDOKBC', '8991 Ernest Forge Apt. 231', NULL, NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_mat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assujetti_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transport_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(211, '2019_08_19_000000_create_failed_jobs_table', 1),
(212, '2020_03_14_175555_create_taxes_table', 1),
(213, '2020_03_15_170323_create_assujettis_table', 1),
(214, '2020_03_15_170434_create_transports_table', 1),
(215, '2020_03_16_122857_create_roles_table', 1),
(216, '2020_03_16_123033_create_users_table', 1),
(217, '2020_03_16_124803_create_invoices_table', 1),
(218, '2020_03_16_164858_create_user_role_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'User', 'Un utilisateur simple, capable de voir les informations sans pouvoir y apporter les modifier quelconque', '2020-03-16 15:49:04', '2020-03-16 15:49:04'),
(2, 'Editor', 'Un utilisateur editeur, capable de lire et ajouter les informations sans pouvoir les modifier ni les supprimer', '2020-03-16 15:49:04', '2020-03-16 15:49:04'),
(3, 'Admin', 'Un utilisateur administrateur, capable de voir, d\'ajouter, modifier et supprimer. Donc il a tout les droits possible', '2020-03-16 15:49:04', '2020-03-16 15:49:04');

-- --------------------------------------------------------

--
-- Structure de la table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` decimal(9,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `fee`, `created_at`, `updated_at`) VALUES
(1, 'Moto', '2500.00', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(2, 'Voiture', '3500.00', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(3, 'Shop', '1800.00', '2020-03-16 15:49:07', '2020-03-16 15:49:07');

-- --------------------------------------------------------

--
-- Structure de la table `transports`
--

CREATE TABLE `transports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('F','M') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `birthday` datetime DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_number_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chassis_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texid_mat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transpot_type` enum('M','V') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `conductor_state` enum('C','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `taxe_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `transports`
--

INSERT INTO `transports` (`id`, `first_name`, `last_name`, `middle_name`, `avatar`, `gender`, `birthday`, `email`, `phone`, `address`, `card_number_id`, `chassis_number`, `texid_mat`, `transpot_type`, `conductor_state`, `taxe_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Wyatt', 'Mueller', 'Ruben', NULL, 'M', NULL, 'baby36@upton.com', '+15658550056', '59796 Kenton River\nNew Meredith, ME 02287-8343', 'EZB485EOLW5A', 'QNHAM41BMA', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(2, 'Anais', 'Bradtke', 'Shaun', NULL, 'M', NULL, 'ghintz@effertz.com', '1-274-253-3135', '23275 Welch Junctions\nLake Leannaberg, NC 75351', 'S336LXRKKNXG', 'EEDBQKUEHC', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:05', '2020-03-16 15:49:05'),
(3, 'Sarina', 'Jones', 'Milton', NULL, 'M', NULL, 'akeeling@kling.biz', '1-276-334-3620 x1738', '5836 Estevan Streets\nLake Gabriellashire, DE 40667-0600', 'WDDRAIH8HYQU', '1JA1ZXPBTG', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(4, 'Arlo', 'Brown', 'Melisa', NULL, 'M', NULL, 'karina.moen@hotmail.com', '+1.889.561.3818', '9397 Jamar Bridge\nReginaldville, WA 46383', 'EW4ULKXU95GL', 'YWIWXF6RAQ', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(5, 'Guy', 'Macejkovic', 'Haylee', NULL, 'M', NULL, 'abdullah.nader@cronin.com', '(345) 828-7926 x6829', '9817 Keeling Street\nHoegerview, WI 57808-8177', 'TXM0TXTJP3G3', 'JH19GXD8NS', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(6, 'Julianne', 'Steuber', 'Liliana', NULL, 'M', NULL, 'dare.london@predovic.com', '+1-861-300-5751', '378 Heaney Dam Suite 265\nEast Agustin, MA 89352-9083', '3W8OORIOSSIS', '9NL9UCPF5H', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(7, 'Celestino', 'Emard', 'Eduardo', NULL, 'M', NULL, 'terrell.prohaska@hotmail.com', '592.909.5390 x349', '9704 Watsica Meadows Suite 066\nWest Alene, NC 82718-9219', '2NZGB1VORKHD', 'EFTCWEVBCC', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(8, 'Aleen', 'Balistreri', 'Jacinto', NULL, 'M', NULL, 'tatyana69@carroll.biz', '1-586-266-1144', '61627 Renee Groves\nNew Jamir, OR 45045-0736', '0CD0KZAD9NAT', 'RTA7IASSIR', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(9, 'Layla', 'Ryan', 'Madyson', NULL, 'M', NULL, 'omertz@hotmail.com', '278-507-5748 x700', '3047 Gutkowski Key\nLavonneborough, MO 42509', 'H3WBK1NG582H', 'YEV3HES6BQ', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(10, 'Nella', 'Stamm', 'Cassie', NULL, 'M', NULL, 'htoy@langosh.com', '727.288.2088', '1843 Gerlach Crest\nBeckerbury, OH 05828', 'VMAAAZ0KBABB', 'AQXBZEX6R4', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(11, 'Tomasa', 'Prohaska', 'Robyn', NULL, 'M', NULL, 'albert01@mosciski.com', '(623) 838-0319 x820', '77208 Upton Fork Apt. 463\nDallasville, OR 14848', 'HBJLUJKD7D1H', 'NMEXSA6YNI', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(12, 'Savion', 'Ziemann', 'Monty', NULL, 'M', NULL, 'schmitt.keara@corkery.com', '1-560-939-6475 x3394', '33957 Ledner Mill Suite 052\nNew Marilouhaven, TX 78029-2887', 'NVA9OUDHVECK', 'UFBMVMKTQQ', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(13, 'Frank', 'Feeney', 'Jaunita', NULL, 'M', NULL, 'goodwin.jeramy@yahoo.com', '524.765.3350 x76127', '4084 Hickle Mountains\nWest Lillianberg, NE 37808-3677', 'SNLAJXAZ0OT2', 'SOHWJWYETB', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(14, 'Madilyn', 'Crona', 'Vivian', NULL, 'M', NULL, 'jayme46@hotmail.com', '(213) 545-3659', '3340 McKenzie Avenue\nWatsicaport, WI 98856', 'XS5XXOIBHIOF', 'MYWQS70904', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(15, 'Jaquan', 'Howell', 'Orlando', NULL, 'M', NULL, 'kaylah.jacobi@abernathy.com', '1-970-541-7177 x966', '93289 Jimmy Mills Apt. 334\nNovellaberg, DE 01979', 'BIOOSIRTZCXL', 'SNJWNIYC8H', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(16, 'Annie', 'Littel', 'Colleen', NULL, 'M', NULL, 'perry24@hotmail.com', '+1-527-838-2297', '1272 Schmeler Manors Apt. 437\nKundeview, ID 88167', '3T1NLMCT5KSH', 'AYVY8FJALW', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(17, 'Kaylie', 'Lemke', 'Muriel', NULL, 'M', NULL, 'hamill.giovanna@gmail.com', '1-456-892-6486 x9079', '525 Brakus Mews\nErnieton, IL 69687-9485', 'VKT5ISZDGHWW', 'ZG1GAJX9CR', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(18, 'Aisha', 'Morissette', 'Montana', NULL, 'M', NULL, 'lhomenick@waelchi.com', '667-603-3948', '933 Carmen Lakes\nSouth Cecil, AZ 12727', 'LH85NEXUZJFZ', 'QCQRGEYX1X', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(19, 'Elwyn', 'McLaughlin', 'Kathryn', NULL, 'M', NULL, 'magdalen99@thompson.com', '343-219-4513', '99872 Kaci Brook\nWildermanside, NM 39210', 'AHNCHI8UCCSG', 'GCGCSSRMKF', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(20, 'Christ', 'Trantow', 'Erling', NULL, 'M', NULL, 'schaden.audrey@gleason.com', '1-673-308-5242', '62483 Jules Mills\nPort Kelvinstad, NJ 63845', 'WDBWZBMR3HNO', 'AQQ5DDLROX', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(21, 'Kaycee', 'Haag', 'Monique', NULL, 'M', NULL, 'daniella.welch@rolfson.com', '427.210.2261 x88167', '59948 Kautzer Passage\nWatsicamouth, DE 34109-1896', 'C3SP1XPCD6QO', 'BRSTCSEHLJ', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(22, 'Jarvis', 'Hane', 'Rodger', NULL, 'M', NULL, 'adrien60@schneider.com', '(396) 773-3628', '885 Kyra Way Apt. 204\nWest Princesshaven, MS 22542', '6B5O2N3GYMVE', 'VFS4RH1LXG', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(23, 'Finn', 'Prohaska', 'May', NULL, 'M', NULL, 'geraldine51@ledner.com', '+14017846526', '384 Hobart Meadow\nNicklausstad, SD 78327-0182', 'EU92FJAHQEFV', 'WFPIDMOVTI', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(24, 'Gudrun', 'Wintheiser', 'Mabel', NULL, 'M', NULL, 'kennedy.larkin@yahoo.com', '843-670-5462', '462 Hildegard Route Apt. 084\nPfannerstillville, ME 03379', 'VODLD4FOMZKB', '4WRZDOVBJ5', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(25, 'Rafael', 'Jerde', 'Russel', NULL, 'M', NULL, 'trantow.connor@hettinger.com', '1-870-623-3300 x82286', '66336 Marilyne Street\nSouth Deangelo, MT 64664-6403', 'EKLLC8QM6XUE', 'PRMAWHC3EV', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(26, 'Roselyn', 'Gibson', 'Rosamond', NULL, 'M', NULL, 'gwyman@gmail.com', '484-430-5432 x4391', '1187 Brandon Mountain Suite 763\nNew Bernardo, TX 51819-5495', 'T3ULNKRIJBBW', 'ISB3SDJDJJ', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(27, 'Meggie', 'Quigley', 'Chance', NULL, 'M', NULL, 'nick.rohan@gmail.com', '398.243.1341', '982 Stanley Green Suite 217\nEleonoreborough, TX 05413-6100', 'ELCLFS6NBQIF', 'QPSH51QQUW', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(28, 'Graciela', 'Trantow', 'Sandrine', NULL, 'M', NULL, 'rstreich@yahoo.com', '+1.464.486.9722', '986 Shanny River Apt. 251\nPort Dorothea, TX 39807-0111', 'SY2YNDXWJ9Z6', 'FEFVS7I3W5', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(29, 'Nikita', 'Huels', 'Katelyn', NULL, 'M', NULL, 'vbernhard@ziemann.biz', '610.778.2726 x66991', '899 Lynn Streets\nJulioview, NM 56218', 'RCYPMB2B7F0W', 'JVSRQT54FI', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:06', '2020-03-16 15:49:06'),
(30, 'Sabryna', 'Wolf', 'Jayce', NULL, 'M', NULL, 'florine88@wunsch.org', '739.262.5923 x6962', '2791 Hand Isle Suite 523\nEast Libbieview, SC 89555', '1CTJQ6CTE4WC', '61FRPFVOHR', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(31, 'Gaylord', 'Hegmann', 'Elena', NULL, 'M', NULL, 'gregg.morissette@kozey.com', '1-450-494-5846 x2344', '284 Adolfo Ridges\nNorth Sadieborough, PA 72881-6670', 'KT8ESWEYJVRC', 'HQAEK1FETN', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(32, 'Evangeline', 'Hegmann', 'Hobart', NULL, 'M', NULL, 'braxton.lueilwitz@connelly.net', '+1-592-481-7088', '3056 Nedra Throughway Apt. 973\nRolfsonport, NE 72893-1426', 'MHGYD9GN7ZNT', 'MZ1BNKAYOW', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(33, 'Adrain', 'Heathcote', 'Ottilie', NULL, 'M', NULL, 'goodwin.keyshawn@gmail.com', '287-434-2833 x7088', '89731 Lueilwitz Road Apt. 217\nSouth Kraig, ND 37732', 'HMLNOTE6SMCE', '2UXRDBJKT3', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(34, 'Melody', 'Dooley', 'Antonetta', NULL, 'M', NULL, 'irwin.kuhic@spinka.com', '+1.207.823.8916', '98124 Dandre Inlet\nEvertside, NE 47904', 'S5LQU7MIMAQR', 'HXENOY3MSW', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(35, 'Alisha', 'Cartwright', 'Juliana', NULL, 'M', NULL, 'ava96@prosacco.com', '1-515-430-7111', '4282 Rusty Crest Apt. 313\nKiehnside, WI 36716', 'XDARL8WM6RQS', 'I2YCYJPQDD', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(36, 'Lilliana', 'O\'Conner', 'Gregg', NULL, 'M', NULL, 'moshe.labadie@gmail.com', '342.722.0609 x2203', '17716 Kertzmann Mill\nNorth Karen, OR 05072', 'VDAA0SGXMQFI', '5F2W6QLMWC', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(37, 'Kayla', 'Jaskolski', 'Abe', NULL, 'M', NULL, 'ibrahim97@sawayn.com', '1-263-672-7848 x765', '461 Bradtke Crossroad Apt. 290\nTurcottefort, WV 12772', '1OWLX77QCWFQ', '5CZJA13XDF', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(38, 'Deshawn', 'Smith', 'Antoinette', NULL, 'M', NULL, 'emmanuel.tremblay@gmail.com', '(487) 213-8297 x6554', '284 Bettie Squares\nNienowbury, MT 97375-3534', '2L3XATZRFZIV', 'XXWUUAKAHM', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(39, 'Grover', 'Barrows', 'Catherine', NULL, 'M', NULL, 'mathias.quigley@yahoo.com', '1-550-283-0924 x5571', '92306 Alexandro Lake Suite 755\nDawnview, NE 75182', 'CVT407LPUITU', 'SDOUGH0DFB', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(40, 'Quinton', 'Larkin', 'Terrell', NULL, 'M', NULL, 'hbogisich@hotmail.com', '1-842-227-4782 x1259', '7368 Brando Green\nSporerhaven, WY 08810', '4YGKQDNVQM9M', '3LPASK5KOU', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(41, 'Delores', 'Veum', 'Nadia', NULL, 'M', NULL, 'bayer.raquel@hotmail.com', '1-743-880-0646 x4943', '571 Mosciski Haven\nNew Luella, WV 82444-7244', 'XXVPQNJSTSWD', 'YTOLPL8JBR', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(42, 'Genoveva', 'Thiel', 'Kenna', NULL, 'M', NULL, 'fahey.monty@will.com', '1-229-667-4572 x22967', '8764 Wolf Forest Apt. 688\nEast Calistafurt, MI 75585', 'NSOS9V7ZHMEB', 'WXDFACBFLC', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(43, 'Kyle', 'Cassin', 'Delfina', NULL, 'M', NULL, 'epouros@brekke.com', '546.577.5589 x2141', '4676 Kertzmann Knolls\nHaliefurt, VT 24647-3705', 'BPS2MFF9JX21', 'PUE0QCDQLG', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(44, 'Cecilia', 'Wiza', 'Kathleen', NULL, 'M', NULL, 'xankunding@gmail.com', '(387) 254-0931', '1294 Francesco Extensions Apt. 393\nReillyland, NV 30372', 'SVSYATVYJTH1', 'MJFN9PJYKC', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(45, 'Mack', 'Brakus', 'Lyric', NULL, 'M', NULL, 'cartwright.greta@yahoo.com', '528-331-6345 x4762', '171 Brekke Streets Suite 599\nFlossieland, OR 36431', 'IBYZUM4E3ZEC', 'VWQ8OAOTVE', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(46, 'Toy', 'Feest', 'Abelardo', NULL, 'M', NULL, 'rosalia65@hotmail.com', '716.321.1450', '143 Jacobs Glens Suite 242\nJakeshire, MI 41185-3835', 'OATWHYHYFXPF', 'SKBN5FSMHB', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(47, 'Omer', 'Waters', 'Ashly', NULL, 'M', NULL, 'augustus09@yahoo.com', '(582) 203-4623 x30486', '57528 Feil Crossing Apt. 035\nKatherineton, NY 78890', 'NTTWML9GOWJQ', 'KK4R2IWVD9', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(48, 'Watson', 'Carter', 'Wilson', NULL, 'M', NULL, 'gus.kerluke@gmail.com', '(223) 935-7481 x915', '418 Tamara Courts\nKatelynnstad, AR 14157', 'QWOH4MQY050Y', 'GO7PXLBPGY', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(49, 'Chet', 'Gerlach', 'Lilla', NULL, 'M', NULL, 'clark32@franecki.com', '(716) 537-0102', '3014 Hilpert Passage Suite 675\nKlingside, WY 87460', 'B1SVYAVMAUDO', 'KQETS4MOK0', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07'),
(50, 'Frank', 'Gaylord', 'Noemie', NULL, 'M', NULL, 'constantin41@hotmail.com', '1-764-643-3186 x050', '38285 Judson Tunnel Suite 446\nSouth Jaron, NC 81310-6076', 'BFLH9DKED1KT', 'KTC2WUQ7Y3', NULL, 'M', 'C', NULL, '0', '2020-03-16 15:49:07', '2020-03-16 15:49:07');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_mat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('F','M') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'F',
  `birthday` date DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `user_mat`, `first_name`, `last_name`, `middle_name`, `avatar`, `gender`, `birthday`, `username`, `email`, `password`, `email_verified_at`, `remember_token`, `phone_number`, `address`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Jires', 'NZAJI', 'NZAJI', NULL, 'M', NULL, 'newGlass', 'jiresnzaji@gmail.com', '$2y$10$vUspObn2mFq7Tfvuy/4vm.mls9buxFQ3zQTLSl4ofTif0rbwlLJn6', NULL, NULL, '099929288383', NULL, NULL, '2020-03-16 15:49:04', '2020-03-16 15:49:04'),
(2, NULL, 'Huguette', 'BUKASA', 'NZAJI', NULL, 'F', NULL, 'Helena', 'huguettebukasa@gmail.com', '$2y$10$BuJd0j0J8RoShGKzOR5kU.BcyfXi0Ip3t1uP6vXDv/xLeh4Smp1bu', NULL, NULL, '0027783939928', NULL, NULL, '2020-03-16 15:49:04', '2020-03-16 15:49:04'),
(3, NULL, 'Eric', 'MEYI', 'NZAJI', NULL, 'M', NULL, 'Eureka1960', 'meyinzaji@gmail.com', '$2y$10$4lzzXFyfIPTn0bQjobA/nOIff5vBlfr4.engpKYbH/BOniXlA2x4a', NULL, NULL, '0912989689', NULL, NULL, '2020-03-16 15:49:05', '2020-03-16 15:49:05');

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `assujettis`
--
ALTER TABLE `assujettis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assujettis_taxe_id_index` (`taxe_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_index` (`user_id`),
  ADD KEY `invoices_tax_id_index` (`tax_id`),
  ADD KEY `invoices_assujetti_id_index` (`assujetti_id`),
  ADD KEY `invoices_transport_id_index` (`transport_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transports`
--
ALTER TABLE `transports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transports_taxe_id_index` (`taxe_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- Index pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_role_user_id_index` (`user_id`),
  ADD KEY `user_role_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `assujettis`
--
ALTER TABLE `assujettis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `transports`
--
ALTER TABLE `transports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `assujettis`
--
ALTER TABLE `assujettis`
  ADD CONSTRAINT `assujettis_taxe_id_foreign` FOREIGN KEY (`taxe_id`) REFERENCES `taxes` (`id`);

--
-- Contraintes pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_assujetti_id_foreign` FOREIGN KEY (`assujetti_id`) REFERENCES `assujettis` (`id`),
  ADD CONSTRAINT `invoices_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`),
  ADD CONSTRAINT `invoices_transport_id_foreign` FOREIGN KEY (`transport_id`) REFERENCES `transports` (`id`),
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `transports`
--
ALTER TABLE `transports`
  ADD CONSTRAINT `transports_taxe_id_foreign` FOREIGN KEY (`taxe_id`) REFERENCES `taxes` (`id`);

--
-- Contraintes pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
