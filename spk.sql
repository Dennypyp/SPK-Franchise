-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 05:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_alternatif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_alternatif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id`, `kode_alternatif`, `nama_alternatif`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'A1', 'KFC', 'Ini KFC', '2020-11-29 09:19:48', '2020-11-29 09:19:48'),
(2, 'A2', 'Janji Jiwa', 'Ini Janji Jiwa', '2020-11-29 09:20:11', '2020-11-29 09:20:11'),
(4, 'A4', 'MCD', 'MCD', '2020-12-15 21:19:02', '2020-12-15 21:21:21'),
(5, 'A5', 'Kedai Kopi Kulo', 'Kedai Kopi Kulo', '2020-12-15 21:21:42', '2020-12-15 21:21:42'),
(6, 'A6', 'Kebab Baba Rafi', 'Kebab Baba Rafi', '2020-12-15 21:22:17', '2020-12-15 21:22:17'),
(7, 'A7', 'Ayam Sabana', 'Ayam Sabana', '2020-12-15 21:22:52', '2020-12-15 21:22:52'),
(8, 'A8', 'Rokea Es the korea', 'Rokea Es the korea', '2020-12-15 21:23:23', '2020-12-15 21:23:23'),
(11, 'A9', 'Lima Detik', 'Lima Detik', '2020-12-15 21:24:16', '2020-12-15 21:24:16'),
(12, 'A10', 'Tigerson Korean Boba', 'Tigerson Korean Boba', '2020-12-15 21:24:41', '2020-12-15 21:24:41'),
(13, 'A11', 'Cetroo Coffee Starter', 'Cetroo Coffee Starter', '2020-12-15 21:25:04', '2020-12-15 21:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `crip`
--

CREATE TABLE `crip` (
  `id` int(10) UNSIGNED NOT NULL,
  `kriteria_id` int(10) UNSIGNED DEFAULT NULL,
  `nama_crip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_crip` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crip`
--

INSERT INTO `crip` (`id`, `kriteria_id`, `nama_crip`, `nilai_crip`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sangat Mahal (>=Rp50.000.000)', 4, '2020-11-29 08:37:54', '2020-11-29 08:37:54'),
(2, 1, 'Mahal (Rp10.100.000 - Rp50.000.000)', 3, '2020-11-29 08:38:07', '2020-11-29 08:38:07'),
(3, 1, 'Murah (Rp5.100.000 - Rp10.000.000)', 2, '2020-11-29 08:38:29', '2020-11-29 08:38:29'),
(4, 1, 'Sangat Murah (<Rp5.000.000)', 1, '2020-11-29 08:39:50', '2020-11-29 08:39:50'),
(5, 2, 'Fast Food', 5, '2020-11-29 09:15:05', '2020-11-29 09:15:05'),
(6, 2, 'Toko Retail', 4, '2020-11-29 09:15:26', '2020-11-29 09:15:26'),
(7, 2, 'Laundry', 3, '2020-11-29 09:15:35', '2020-11-29 09:15:35'),
(8, 2, 'Snack Kekinian', 2, '2020-11-29 09:15:51', '2020-11-29 09:15:51'),
(9, 2, 'Minuman Kekinian', 1, '2020-11-29 09:16:00', '2020-11-29 09:16:00'),
(10, 3, 'Bangunan Besar (>= 200 m2)', 6, '2020-11-29 09:16:13', '2020-11-29 09:16:13'),
(11, 3, 'Bangunan Sedang (30 - 100 m2)', 5, '2020-11-29 09:16:29', '2020-11-29 09:16:29'),
(12, 3, 'Bangunan Kecil (4 - 20 m2)', 4, '2020-11-29 09:16:49', '2020-11-29 09:16:49'),
(13, 3, 'Food Truck', 3, '2020-11-29 09:17:10', '2020-11-29 09:17:10'),
(14, 3, 'Stand Besar (5 m2)', 2, '2020-11-29 09:17:22', '2020-11-29 09:17:22'),
(15, 3, 'Stand Kecil (2 m2)', 1, '2020-11-29 09:17:40', '2020-11-29 09:17:40'),
(16, 4, 'Kombinasi (Online Offline)', 3, '2020-11-29 09:17:50', '2020-11-29 09:17:50'),
(17, 4, 'Online', 2, '2020-11-29 09:18:10', '2020-11-29 09:18:10'),
(18, 4, 'Offline', 1, '2020-11-29 09:18:22', '2020-11-29 09:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `franchises`
--

CREATE TABLE `franchises` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ukuran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `franchises`
--

INSERT INTO `franchises` (`id`, `nama`, `kategori`, `modal`, `ukuran`, `metode`, `deskripsi`, `image`, `created_at`, `updated_at`) VALUES
(3, 'KFC', 'Fast Food', 'Rp7.500.000.000', 'Bangunan Besar (>= 200 m2)', 'Offline', 'KFC, adalah jaringan restoran cepat saji Amerika yang berkantor pusat di Louisville, Kentucky, yang berspesialisasi dalam ayam goreng. Ini adalah jaringan restoran terbesar kedua di dunia setelah McDonald\'s, dengan 22.621 lokasi secara global di 150 negara pada Desember 2019.', '1606665776.jpg', '2020-11-29 07:16:43', '2020-11-29 09:02:56'),
(4, 'MCD', 'Fast Food', '8000000000', 'Bangunan Besar (>= 200 m2)', 'Kombinasi (Online Offline)', 'McDonald\'s Corporation adalah perusahaan makanan cepat saji Amerika, yang didirikan pada tahun 1940 sebagai restoran yang dioperasikan oleh Richard dan Maurice McDonald, di San Bernardino, California, Amerika Serikat. Mereka mengisi ulang bisnis mereka sebagai kios hamburger, dan kemudian mengubah perusahaan menjadi waralaba, dengan logo Golden Arches diperkenalkan pada tahun 1953 di sebuah lokasi di Phoenix, Arizona. Pada tahun 1955, Ray Kroc, seorang pengusaha, bergabung dengan perusahaan sebagai agen waralaba dan mulai membeli rantai dari McDonald bersaudara. McDonald\'s memiliki kantor pusat aslinya di Oak Brook, Illinois, tetapi memindahkan kantor pusat dunianya ke Chicago pada Juni 2018.', '1606826259.png', '2020-12-01 05:37:40', '2020-12-01 05:37:40'),
(5, 'Khun Thai Tea', 'Minuman Kekinian', '15000000', 'Stand Kecil (2 m2)', 'Kombinasi (Online Offline)', 'Khun Thai Tea’s signature ice black tea recipe first began life at a humble push cart on the streets of Bangkok. Named “Cha-yen” in Thai, the recipe was first created in 1955 and was then later bought over by Mr Jeremy Lee. Mr Jeremy Lee has brought this recipe to the Philippines and handed over the recipe to Ms Nancy who opened the first shop out of Thailand under the hospice of Khun Thai Tea Shop Philippines in 2016.', '1606826440.jpg', '2020-12-01 05:40:40', '2020-12-01 05:40:40'),
(6, 'Indomaret', 'Toko Retail', '400000000', 'Bangunan Sedang (30 - 100 m2)', 'Kombinasi (Online Offline)', 'PT. Indomarco Prismatama or Indomaret is a chain of retail convenience stores from Indonesia, with over 11,000 stores [2] across Indonesia. It is the first and largest chain of this kind of store in Indonesia. Indomaret is a subsidiary of Salim Group. Its headquarters are in Jakarta.', '1606826588.png', '2020-12-01 05:43:08', '2020-12-01 05:43:08'),
(7, 'Alfamart', 'Toko Retail', '350000000', 'Bangunan Sedang (30 - 100 m2)', 'Online', 'Alfamart adalah jaringan minimarket terbaik dengan member terbanyak di Indonesia nikmati beragam promo menarik JSM alfamart.', '1606826711.png', '2020-12-01 05:45:11', '2020-12-01 05:45:11'),
(8, 'Kedai Kopi Kulo', 'Minuman Kekinian', '140000000', 'Stand Besar (5 m2)', 'Kombinasi (Online Offline)', 'Kopi Kulo sudah memiliki lebih dari 300 gerai di seluruh Indonesia dengan rata-rata penjualan sekitar 250—300 cup per hari.', '1608089442.png', '2020-12-15 20:30:43', '2020-12-15 20:30:43'),
(9, 'Kebab Baba Rafi', 'Snack Kekinian', '75000000', 'Food Truck', 'Kombinasi (Online Offline)', 'Tujuan kami dalam beberapa tahun kedepan\r\nadalah menjadi salah satu pemain terbesar di\r\ndunia dalam kategori pasar makanan cepat saji\r\ndan diakui sebagai makanan sehat dan segar.', '1608089928.jpg', '2020-12-15 20:38:48', '2020-12-15 20:38:48'),
(10, 'Ayam Sabana', 'Fast Food', '17000000', 'Stand Kecil (2 m2)', 'Kombinasi (Online Offline)', 'Bermula dari kecintaannya mengonsumsi ayam goreng Sabana sejak tahun 2008, dan dirinya mulai tertarik untuk menjalankan usaha', '1608090689.png', '2020-12-15 20:51:29', '2020-12-15 20:51:29'),
(11, 'Rokea Es the korea', 'Minuman Kekinian', '6000000', 'Stand Kecil (2 m2)', 'Kombinasi (Online Offline)', 'Rokea Indonesia: Franchise Minuman Es Teh Korea', '1608091060.jpg', '2020-12-15 20:57:40', '2020-12-15 20:57:40'),
(12, 'Lima Detik', 'Minuman Kekinian', '5000000', 'Stand Kecil (2 m2)', 'Kombinasi (Online Offline)', 'Lima Detik Minuman Kekinian', '1608091119.jpg', '2020-12-15 20:58:39', '2020-12-15 20:58:39'),
(13, 'Tigerson Korean Boba', 'Minuman Kekinian', '8000000', 'Stand Kecil (2 m2)', 'Kombinasi (Online Offline)', 'Tigerson Minuman Boba Korea', '1608091175.jpg', '2020-12-15 20:59:35', '2020-12-15 20:59:35'),
(14, 'Cetroo Coffee Starter', 'Minuman Kekinian', '5000000', 'Stand Kecil (2 m2)', 'Kombinasi (Online Offline)', 'Cetroo Coffee Starter', '1608091217.jpg', '2020-12-15 21:00:17', '2020-12-15 21:00:17'),
(15, 'Samwon House – Virtual Waralaba', 'Fast Food', '2000000', 'Stand Kecil (2 m2)', 'Offline', 'Samwon House – Virtual Waralaba', '1608091306.jpg', '2020-12-15 21:01:46', '2020-12-15 21:01:46'),
(16, 'Clothes Laundry', 'Laundry', '17000000', 'Bangunan Kecil (4 - 20 m2)', 'Offline', 'Clothes Laundry', '1608091373.jpg', '2020-12-15 21:02:53', '2020-12-15 21:02:53'),
(17, 'Wano Boba Tea', 'Minuman Kekinian', '6000000', 'Stand Kecil (2 m2)', 'Kombinasi (Online Offline)', 'Wano Boba Tea', '1608091413.jpg', '2020-12-15 21:03:33', '2020-12-15 21:03:33'),
(18, 'K-Drink', 'Minuman Kekinian', '1000000', 'Stand Kecil (2 m2)', 'Kombinasi (Online Offline)', 'K-Drink', '1608091448.jpg', '2020-12-15 21:04:08', '2020-12-15 21:04:08'),
(19, 'Kini Cheese Tea', 'Minuman Kekinian', '6000000', 'Stand Kecil (2 m2)', 'Kombinasi (Online Offline)', 'Kini Cheese Tea', '1608091529.jpg', '2020-12-15 21:05:29', '2020-12-15 21:05:29'),
(20, 'Aku Tahu Jos', 'Snack Kekinian', '8000000', 'Stand Kecil (2 m2)', 'Kombinasi (Online Offline)', 'Aku Tahu Jos', '1608091595.jpg', '2020-12-15 21:06:35', '2020-12-15 21:06:35'),
(21, 'Yago Ayam Geprek Kimchi', 'Fast Food', '1000000', 'Bangunan Kecil (4 - 20 m2)', 'Kombinasi (Online Offline)', 'Yago Ayam Geprek Kimchi', '1608091665.jpg', '2020-12-15 21:07:45', '2020-12-15 21:07:45'),
(22, 'Mom Milk Express', 'Minuman Kekinian', '19000000', 'Stand Kecil (2 m2)', 'Kombinasi (Online Offline)', 'Mom Milk Express', '1608091713.jpg', '2020-12-15 21:08:34', '2020-12-15 21:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atribut` enum('cost','benefit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `kode`, `nama`, `atribut`, `bobot`, `created_at`, `updated_at`) VALUES
(1, 'F1', 'Modal', 'cost', 30, '2020-11-29 07:36:16', '2020-11-29 07:36:16'),
(2, 'F2', 'Kategori', 'benefit', 25, '2020-11-29 08:34:50', '2020-11-29 08:34:50'),
(3, 'F3', 'Ukuran Bangunan', 'cost', 25, '2020-11-29 08:35:16', '2020-11-29 08:35:16'),
(4, 'F4', 'Metode', 'benefit', 20, '2020-11-29 08:36:04', '2020-11-29 08:36:04');

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
(3, '2018_05_27_174332_create_kriteria_table', 1),
(4, '2018_05_27_174938_create_crip_table', 1),
(5, '2018_05_27_175955_create_alternatif_table', 1),
(6, '2018_05_27_180046_create_nilai_alternatif_table', 1),
(7, '2020_11_29_103741_create_franchises_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_alternatif`
--

CREATE TABLE `nilai_alternatif` (
  `id` int(10) UNSIGNED NOT NULL,
  `alternatif_id` int(10) UNSIGNED DEFAULT NULL,
  `crip_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai_alternatif`
--

INSERT INTO `nilai_alternatif` (`id`, `alternatif_id`, `crip_id`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 1, 10),
(4, 1, 18),
(5, 2, 2),
(6, 2, 9),
(7, 2, 12),
(8, 2, 16),
(13, 4, 1),
(14, 4, 5),
(15, 4, 10),
(16, 4, 16),
(17, 5, 1),
(18, 5, 9),
(19, 5, 10),
(20, 5, 16),
(21, 6, 1),
(22, 6, 8),
(23, 6, 13),
(24, 6, 16),
(25, 7, 2),
(26, 7, 5),
(27, 7, 12),
(28, 7, 16),
(29, 8, 3),
(30, 8, 9),
(31, 8, 15),
(32, 8, 16),
(33, 11, 4),
(34, 11, 9),
(35, 11, 15),
(36, 11, 16),
(37, 12, 3),
(38, 12, 9),
(39, 12, 15),
(40, 12, 16),
(41, 13, 4),
(42, 13, 9),
(43, 13, 15),
(44, 13, 16);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '$2y$10$JOfMUtR/ZDlqUNXedRXOgOmXhgISxrW49zD0uWHMbaih8FLsGeAq2', 'Er76DjcoFXrWBuKummkuGyHslEV8XpdRNis8RQbMGEfLbziw2XugRELREA5p', NULL, NULL),
(2, 'Denny Putra', 'customer', 'denny.pyp11@gmail.com', '$2y$10$Em2nLUM2QXpSmXaVAbpSWecdMC2K0qniJq1ZVkFKr2ZWmc8GuCBka', 'nOTtj7lvQuXdYWWITE52yU5VaDx5Uggp6QQCoSHpPV0To0HA30eJS5pj7ZgJ', '2020-11-29 05:48:02', '2020-11-29 05:48:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alternatif_kode_alternatif_unique` (`kode_alternatif`);

--
-- Indexes for table `crip`
--
ALTER TABLE `crip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crip_kriteria_id_index` (`kriteria_id`);

--
-- Indexes for table `franchises`
--
ALTER TABLE `franchises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kriteria_kode_unique` (`kode`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_alternatif_alternatif_id_index` (`alternatif_id`),
  ADD KEY `nilai_alternatif_crip_id_index` (`crip_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `crip`
--
ALTER TABLE `crip`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `franchises`
--
ALTER TABLE `franchises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crip`
--
ALTER TABLE `crip`
  ADD CONSTRAINT `crip_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  ADD CONSTRAINT `nilai_alternatif_alternatif_id_foreign` FOREIGN KEY (`alternatif_id`) REFERENCES `alternatif` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_alternatif_crip_id_foreign` FOREIGN KEY (`crip_id`) REFERENCES `crip` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
