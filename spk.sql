-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2020 pada 17.49
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

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
-- Struktur dari tabel `alternatif`
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
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `kode_alternatif`, `nama_alternatif`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'A1', 'Hokben', 'Ini adalah franchise Hokben', '2020-11-22 09:44:40', '2020-11-22 09:44:40'),
(2, 'A2', 'Janji Jiwa', 'Ini adalah Janji Jiwa', '2020-11-22 09:45:52', '2020-11-22 09:45:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `crip`
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
-- Dumping data untuk tabel `crip`
--

INSERT INTO `crip` (`id`, `kriteria_id`, `nama_crip`, `nilai_crip`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sangat Mahal (>=Rp50.000.000)', 4, '2020-11-22 09:35:44', '2020-11-22 09:35:44'),
(2, 1, 'Mahal (Rp10.100.000 - Rp50.000.000)', 3, '2020-11-22 09:36:48', '2020-11-22 09:36:48'),
(3, 1, 'Murah (Rp5.100.000 - Rp10.000.000)', 2, '2020-11-22 09:37:12', '2020-11-22 09:37:12'),
(4, 1, 'Sangat Murah (<Rp5.000.000)', 1, '2020-11-22 09:37:36', '2020-11-22 09:37:36'),
(5, 2, 'Fast Food', 5, '2020-11-22 09:38:46', '2020-11-22 09:38:46'),
(6, 2, 'Toko Retail', 4, '2020-11-22 09:38:57', '2020-11-22 09:38:57'),
(7, 2, 'Laundry', 3, '2020-11-22 09:39:07', '2020-11-22 09:39:07'),
(8, 2, 'Snack Kekinian', 2, '2020-11-22 09:39:22', '2020-11-22 09:39:22'),
(9, 2, 'Minuman Kekinian', 1, '2020-11-22 09:39:44', '2020-11-22 09:39:44'),
(10, 3, 'Bangunan Besar (>= 200 m2)', 6, '2020-11-22 09:39:57', '2020-11-22 09:39:57'),
(11, 3, 'Bangunan Sedang (30 - 100 m2)', 5, '2020-11-22 09:40:09', '2020-11-22 09:40:09'),
(12, 3, 'Bangunan Kecil (4 - 20 m2)', 4, '2020-11-22 09:40:25', '2020-11-22 09:40:25'),
(13, 3, 'Food Truck', 3, '2020-11-22 09:40:37', '2020-11-22 09:40:37'),
(14, 3, 'Stand Besar (5 m2)', 2, '2020-11-22 09:40:51', '2020-11-22 09:40:51'),
(15, 3, 'Stand Kecil (2 m2)', 1, '2020-11-22 09:41:04', '2020-11-22 09:41:04'),
(16, 4, 'Kombinasi (Online Offline)', 3, '2020-11-22 09:41:15', '2020-11-22 09:41:15'),
(17, 4, 'Online', 2, '2020-11-22 09:41:27', '2020-11-22 09:41:27'),
(18, 4, 'Offline', 1, '2020-11-22 09:41:50', '2020-11-22 09:41:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
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
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `kode`, `nama`, `atribut`, `bobot`, `created_at`, `updated_at`) VALUES
(1, 'F1', 'Modal', 'cost', 30, '2020-11-18 09:40:38', '2020-11-18 09:40:38'),
(2, 'F2', 'Kategori', 'benefit', 25, '2020-11-22 09:31:38', '2020-11-22 09:31:38'),
(3, 'F3', 'Ukuran Bangunan', 'cost', 25, '2020-11-22 09:31:56', '2020-11-22 09:31:56'),
(4, 'F4', 'Metode', 'benefit', 20, '2020-11-22 09:32:10', '2020-11-22 09:32:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_27_174332_create_kriteria_table', 1),
(4, '2018_05_27_174938_create_crip_table', 1),
(5, '2018_05_27_175955_create_alternatif_table', 1),
(6, '2018_05_27_180046_create_nilai_alternatif_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_alternatif`
--

CREATE TABLE `nilai_alternatif` (
  `id` int(10) UNSIGNED NOT NULL,
  `alternatif_id` int(10) UNSIGNED DEFAULT NULL,
  `crip_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilai_alternatif`
--

INSERT INTO `nilai_alternatif` (`id`, `alternatif_id`, `crip_id`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 1, 10),
(4, 1, 16),
(5, 2, 2),
(6, 2, 9),
(7, 2, 14),
(8, 2, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '$2y$10$/fFpwylnrD11YDPYUwI5aOZf44sBgpSwOw2b430mz9O9.PROyJe4W', 'kMVjgsF8YA3pSbZzQcqDOA4YtFx56ZjHwSINOqYJrKTb3sfYNMAQQkOvXWrV', NULL, NULL),
(2, 'Denny Putra', 'customer', 'denny.pyp11@gmail.com', '$2y$10$qCu9qT2JwrrqNDu8NA8fxeAHGlFrpfIaF3b/gLc1zXxKqCVJ6/Yym', 'VSpa2IxlNMB14WpvgBuNzVq4bPaUSScqscQyF1zbvWs2fANeb0po0Zx3ULQb', '2020-11-18 08:55:11', '2020-11-18 08:55:11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alternatif_kode_alternatif_unique` (`kode_alternatif`);

--
-- Indeks untuk tabel `crip`
--
ALTER TABLE `crip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crip_kriteria_id_index` (`kriteria_id`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kriteria_kode_unique` (`kode`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_alternatif_alternatif_id_index` (`alternatif_id`),
  ADD KEY `nilai_alternatif_crip_id_index` (`crip_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `crip`
--
ALTER TABLE `crip`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `crip`
--
ALTER TABLE `crip`
  ADD CONSTRAINT `crip_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  ADD CONSTRAINT `nilai_alternatif_alternatif_id_foreign` FOREIGN KEY (`alternatif_id`) REFERENCES `alternatif` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_alternatif_crip_id_foreign` FOREIGN KEY (`crip_id`) REFERENCES `crip` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
