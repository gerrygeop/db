-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 29 Apr 2024 pada 09.28
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_guru_terbaik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Frengky Santoso, S.Pd.', '2024-04-18 04:10:28', '2024-04-18 04:10:28'),
(2, 'Didi Supriadi, S.Pd.I.', '2024-04-18 04:11:05', '2024-04-18 04:11:05'),
(3, 'Mustika Putri Oktaviani, S.Pd.', '2024-04-18 04:11:43', '2024-04-18 04:11:43'),
(4, 'Mustika Murni, S.Pd.', '2024-04-18 04:12:10', '2024-04-18 04:12:10'),
(5, 'Asdania Dwi Putri, S.S.', '2024-04-18 04:12:42', '2024-04-18 04:12:42'),
(6, 'Dedianto, S.Pd.', '2024-04-18 04:13:09', '2024-04-18 04:13:09'),
(7, 'Arif Rahmatulah, S.Pd.', '2024-04-18 04:13:41', '2024-04-18 04:13:41'),
(8, 'Karunia Dwi F F, S.Pd.', '2024-04-18 04:14:13', '2024-04-18 04:14:13'),
(9, 'M. Farchan Jihad Sani', '2024-04-18 04:14:43', '2024-04-18 04:14:43'),
(10, 'Andi Rahmannul Hakim', '2024-04-18 04:15:18', '2024-04-18 04:15:18'),
(11, 'Masita Muntazah, S.Pd.', '2024-04-18 04:15:58', '2024-04-18 04:15:58'),
(12, 'Nurul Hikma, S.Pd.', '2024-04-18 04:16:29', '2024-04-18 04:16:29'),
(13, 'Sabila Mu\'thia Widra, S.Pd.', '2024-04-18 04:17:05', '2024-04-18 04:17:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif_kriteria`
--

CREATE TABLE `alternatif_kriteria` (
  `id` bigint UNSIGNED NOT NULL,
  `alternatif_id` bigint UNSIGNED NOT NULL,
  `kriteria_id` bigint UNSIGNED NOT NULL,
  `sub_kriteria_id` bigint UNSIGNED NOT NULL,
  `nilai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternatif_kriteria`
--

INSERT INTO `alternatif_kriteria` (`id`, `alternatif_id`, `kriteria_id`, `sub_kriteria_id`, `nilai`) VALUES
(1, 1, 1, 2, 3),
(2, 1, 2, 5, 4),
(3, 1, 3, 10, 3),
(4, 1, 4, 13, 4),
(5, 1, 5, 17, 4),
(6, 2, 1, 2, 3),
(7, 2, 2, 6, 3),
(8, 2, 3, 10, 3),
(9, 2, 4, 14, 3),
(10, 2, 5, 18, 3),
(11, 3, 1, 2, 3),
(12, 3, 2, 5, 4),
(13, 3, 3, 10, 3),
(14, 3, 4, 13, 4),
(15, 3, 5, 17, 4),
(16, 4, 1, 2, 3),
(17, 4, 2, 6, 3),
(18, 4, 3, 9, 4),
(19, 4, 4, 14, 3),
(20, 4, 5, 17, 4),
(21, 5, 1, 2, 3),
(22, 5, 2, 6, 3),
(23, 5, 3, 10, 3),
(24, 5, 4, 14, 3),
(25, 5, 5, 17, 4),
(26, 6, 1, 2, 3),
(27, 6, 2, 6, 3),
(28, 6, 3, 9, 4),
(29, 6, 4, 14, 3),
(30, 6, 5, 18, 3),
(31, 7, 1, 1, 4),
(32, 7, 2, 5, 4),
(33, 7, 3, 9, 4),
(34, 7, 4, 14, 3),
(35, 7, 5, 17, 4),
(36, 8, 1, 1, 4),
(37, 8, 2, 5, 4),
(38, 8, 3, 9, 4),
(39, 8, 4, 13, 1),
(40, 8, 5, 17, 1),
(41, 9, 1, 2, 2),
(42, 9, 2, 5, 1),
(43, 9, 3, 9, 1),
(44, 9, 4, 13, 1),
(45, 9, 5, 18, 2),
(46, 10, 1, 2, 2),
(47, 10, 2, 6, 2),
(48, 10, 3, 10, 2),
(49, 10, 4, 14, 2),
(50, 10, 5, 17, 1),
(51, 11, 1, 2, 2),
(52, 11, 2, 6, 2),
(53, 11, 3, 10, 2),
(54, 11, 4, 14, 2),
(55, 11, 5, 17, 1),
(56, 12, 1, 1, 1),
(57, 12, 2, 6, 2),
(58, 12, 3, 10, 2),
(59, 12, 4, 14, 2),
(60, 12, 5, 17, 1),
(61, 13, 1, 2, 2),
(62, 13, 2, 6, 2),
(63, 13, 3, 11, 3),
(64, 13, 4, 14, 2),
(65, 13, 5, 17, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`, `bobot`, `created_at`, `updated_at`) VALUES
(1, 'Pedagogik', 25.00, NULL, NULL),
(2, 'Kepribadian', 20.00, NULL, NULL),
(3, 'Sosial', 20.00, NULL, NULL),
(4, 'Kedisiplinan', 15.00, NULL, NULL),
(5, 'Profesional', 20.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_01_22_072935_create_kriterias_table', 1),
(5, '2024_01_22_073149_create_sub_kriteria_table', 1),
(6, '2024_01_22_073528_create_alternatifs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id` bigint UNSIGNED NOT NULL,
  `kriteria_id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id`, `kriteria_id`, `nama`, `bobot`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sangat Baik', 4.00, NULL, NULL),
(2, 1, 'Baik', 3.00, NULL, NULL),
(3, 1, 'Cukup Baik', 2.00, NULL, NULL),
(4, 1, 'Kurang Baik', 1.00, NULL, NULL),
(5, 2, 'Sangat Baik', 4.00, NULL, NULL),
(6, 2, 'Baik', 3.00, NULL, NULL),
(7, 2, 'Cukup Baik', 2.00, NULL, NULL),
(8, 2, 'Kurang Baik', 1.00, NULL, NULL),
(9, 3, 'Sangat Baik', 4.00, NULL, NULL),
(10, 3, 'Baik', 3.00, NULL, NULL),
(11, 3, 'Cukup Baik', 2.00, NULL, NULL),
(12, 3, 'Kurang Baik', 1.00, NULL, NULL),
(13, 4, 'Sangat Baik', 4.00, NULL, NULL),
(14, 4, 'Baik', 3.00, NULL, NULL),
(15, 4, 'Cukup Baik', 2.00, NULL, NULL),
(16, 4, 'Kurang Baik', 1.00, NULL, NULL),
(17, 5, 'Sangat Baik', 4.00, NULL, NULL),
(18, 5, 'Baik', 3.00, NULL, NULL),
(19, 5, 'Cukup Baik', 2.00, NULL, NULL),
(20, 5, 'Kurang Baik', 1.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Edgardo', 'edgardo', '$2y$12$FsRwZa/dJKavCcLk.htLDekxlaXX/ktjRaPClBscqK0p2/4nkaFXS', 'user', '2024-01-21 23:55:37', '2024-01-21 23:55:37'),
(2, 'Pansy', 'pansy', '$2y$12$FsRwZa/dJKavCcLk.htLDekxlaXX/ktjRaPClBscqK0p2/4nkaFXS', 'user', '2024-01-21 23:55:37', '2024-01-21 23:55:37'),
(3, 'Mozelle', 'mozelle', '$2y$12$FsRwZa/dJKavCcLk.htLDekxlaXX/ktjRaPClBscqK0p2/4nkaFXS', 'user', '2024-01-21 23:55:37', '2024-01-21 23:55:37'),
(4, 'Arvilla', 'arvilla', '$2y$12$FsRwZa/dJKavCcLk.htLDekxlaXX/ktjRaPClBscqK0p2/4nkaFXS', 'user', '2024-01-21 23:55:37', '2024-01-21 23:55:37'),
(5, 'Lavinia', 'lavinia', '$2y$12$FsRwZa/dJKavCcLk.htLDekxlaXX/ktjRaPClBscqK0p2/4nkaFXS', 'user', '2024-01-21 23:55:37', '2024-01-21 23:55:37'),
(6, 'Godfrey', 'godfrey', '$2y$12$FsRwZa/dJKavCcLk.htLDekxlaXX/ktjRaPClBscqK0p2/4nkaFXS', 'user', '2024-01-21 23:55:37', '2024-01-21 23:55:37'),
(7, 'Rosalyn', 'rosalyn', '$2y$12$FsRwZa/dJKavCcLk.htLDekxlaXX/ktjRaPClBscqK0p2/4nkaFXS', 'user', '2024-01-21 23:55:37', '2024-01-21 23:55:37'),
(8, 'Camren', 'camren', '$2y$12$FsRwZa/dJKavCcLk.htLDekxlaXX/ktjRaPClBscqK0p2/4nkaFXS', 'user', '2024-01-21 23:55:37', '2024-01-21 23:55:37'),
(9, 'Madilyn', 'madilyn', '$2y$12$FsRwZa/dJKavCcLk.htLDekxlaXX/ktjRaPClBscqK0p2/4nkaFXS', 'user', '2024-01-21 23:55:37', '2024-01-21 23:55:37'),
(10, 'Marjorie', 'marjorie', '$2y$12$FsRwZa/dJKavCcLk.htLDekxlaXX/ktjRaPClBscqK0p2/4nkaFXS', 'user', '2024-01-21 23:55:37', '2024-01-21 23:55:37'),
(11, 'Admin', 'admin', '$2y$12$FsRwZa/dJKavCcLk.htLDekxlaXX/ktjRaPClBscqK0p2/4nkaFXS', 'admin', '2024-01-21 23:55:37', '2024-04-18 04:17:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `alternatif_kriteria`
--
ALTER TABLE `alternatif_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternatif_kriteria_alternatif_id_foreign` (`alternatif_id`),
  ADD KEY `alternatif_kriteria_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `alternatif_kriteria_sub_kriteria_id_foreign` (`sub_kriteria_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_kriteria_kriteria_id_foreign` (`kriteria_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `alternatif_kriteria`
--
ALTER TABLE `alternatif_kriteria`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alternatif_kriteria`
--
ALTER TABLE `alternatif_kriteria`
  ADD CONSTRAINT `alternatif_kriteria_alternatif_id_foreign` FOREIGN KEY (`alternatif_id`) REFERENCES `alternatif` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alternatif_kriteria_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alternatif_kriteria_sub_kriteria_id_foreign` FOREIGN KEY (`sub_kriteria_id`) REFERENCES `sub_kriteria` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
