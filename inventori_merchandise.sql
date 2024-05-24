-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 24 Bulan Mei 2024 pada 05.18
-- Versi server: 8.0.30
-- Versi PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori_merchandise`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `contact`, `address`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Budi Setiawan', '08123456789', 'Jl. A. Yani No. 123, Samarinda, Kalimantan Timur', NULL, '2024-05-15 15:29:41', '2024-05-15 16:07:24'),
(2, 'Siti Rahayu', '08765432100', 'Perumahan Flamboyan Blok C2 No. 45, Samarinda, Kalimantan Timur', NULL, '2024-05-15 15:29:41', '2024-05-15 16:08:01'),
(3, 'Joko Prasetyo', '08987654321', 'Jl. Gatot Subroto No. 17, Samarinda, Kalimantan Timur', NULL, '2024-05-15 16:08:22', '2024-05-15 16:08:22'),
(4, 'Putri Indah', '08111223344', 'Komplek Citra Garden No. 10, Samarinda, Kalimantan Timur', NULL, '2024-05-15 16:08:40', '2024-05-15 16:08:40'),
(5, 'Rini Cahyani', '08567891234', 'Jl. Veteran No. 27, Samarinda, Kalimantan Timur', NULL, '2024-05-15 16:08:55', '2024-05-15 16:08:55'),
(6, 'Bambang Surya', '08139876543', 'Jl. Mawar No. 32, Samarinda, Kalimantan Timur', NULL, '2024-05-15 16:09:10', '2024-05-15 16:09:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `exports`
--

CREATE TABLE `exports` (
  `id` bigint UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exporter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `exports`
--

INSERT INTO `exports` (`id`, `completed_at`, `file_disk`, `file_name`, `exporter`, `processed_rows`, `total_rows`, `successful_rows`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2024-05-18 16:42:48', 'public', 'export-1-orders', 'App\\Filament\\Exports\\OrderExporter', 4, 4, 4, 1, '2024-05-18 16:42:45', '2024-05-18 16:42:48'),
(2, '2024-05-18 16:58:06', 'public', 'export-2-orders', 'App\\Filament\\Exports\\OrderExporter', 4, 4, 4, 1, '2024-05-18 16:58:06', '2024-05-18 16:58:06'),
(3, '2024-05-18 17:01:37', 'public', 'export-3-orders', 'App\\Filament\\Exports\\OrderExporter', 4, 4, 4, 1, '2024-05-18 17:01:37', '2024-05-18 17:01:37'),
(4, NULL, 's3', 'export-4-orders', 'App\\Filament\\Exports\\OrderExporter', 0, 4, 0, 1, '2024-05-18 17:17:43', '2024-05-18 17:17:43'),
(5, '2024-05-18 17:18:04', 'local', 'export-5-orders', 'App\\Filament\\Exports\\OrderExporter', 4, 4, 4, 1, '2024-05-18 17:18:04', '2024-05-18 17:18:04'),
(6, '2024-05-18 17:19:11', 'public', 'export-6-orders', 'App\\Filament\\Exports\\OrderExporter', 4, 4, 4, 1, '2024-05-18 17:19:11', '2024-05-18 17:19:11'),
(7, '2024-05-18 17:24:51', 'public', 'products-7.xlsx', 'App\\Filament\\Exports\\OrderExporter', 4, 4, 4, 1, '2024-05-18 17:24:51', '2024-05-18 17:24:51'),
(8, '2024-05-18 17:27:50', 'public', 'products-8.xlsx', 'App\\Filament\\Exports\\OrderExporter', 4, 4, 4, 1, '2024-05-18 17:27:50', '2024-05-18 17:27:50'),
(9, '2024-05-19 14:57:52', 'public', 'export-9-orders', 'App\\Filament\\Exports\\OrderExporter', 4, 4, 4, 1, '2024-05-19 14:57:48', '2024-05-19 14:57:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_import_rows`
--

CREATE TABLE `failed_import_rows` (
  `id` bigint UNSIGNED NOT NULL,
  `data` json NOT NULL,
  `import_id` bigint UNSIGNED NOT NULL,
  `validation_error` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `imports`
--

CREATE TABLE `imports` (
  `id` bigint UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `importer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `job_batches`
--

INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('9c12ea72-2e5b-4a8c-8d82-79f397f1e5ed', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:8381:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 00:42:45\";s:10:\"created_at\";s:19:\"2024-05-19 00:42:45\";s:2:\"id\";i:1;s:9:\"file_name\";s:15:\"export-1-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 00:42:45\";s:10:\"created_at\";s:19:\"2024-05-19 00:42:45\";s:2:\"id\";i:1;s:9:\"file_name\";s:15:\"export-1-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-1-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:1;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:3913:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 00:42:45\";s:10:\"created_at\";s:19:\"2024-05-19 00:42:45\";s:2:\"id\";i:1;s:9:\"file_name\";s:15:\"export-1-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 00:42:45\";s:10:\"created_at\";s:19:\"2024-05-19 00:42:45\";s:2:\"id\";i:1;s:9:\"file_name\";s:15:\"export-1-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-1-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:1;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000c160000000000000000\";}\";s:4:\"hash\";s:44:\"KWcGrrM08JslnsBLB6Ku4pJuQdGvEYu5dHhWHgxbPPM=\";}}}}', NULL, 1716050567, 1716050568),
('9c12efed-443a-4711-a617-73fa8c96e1ba', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:8381:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 00:58:06\";s:10:\"created_at\";s:19:\"2024-05-19 00:58:06\";s:2:\"id\";i:2;s:9:\"file_name\";s:15:\"export-2-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 00:58:06\";s:10:\"created_at\";s:19:\"2024-05-19 00:58:06\";s:2:\"id\";i:2;s:9:\"file_name\";s:15:\"export-2-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-2-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:2;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:3913:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 00:58:06\";s:10:\"created_at\";s:19:\"2024-05-19 00:58:06\";s:2:\"id\";i:2;s:9:\"file_name\";s:15:\"export-2-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 00:58:06\";s:10:\"created_at\";s:19:\"2024-05-19 00:58:06\";s:2:\"id\";i:2;s:9:\"file_name\";s:15:\"export-2-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-2-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:2;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000c160000000000000000\";}\";s:4:\"hash\";s:44:\"g16Ko/ZooZXyRdJ9DHmySjzCSBw8DY4kPUEz2p+ltKc=\";}}}}', NULL, 1716051486, 1716051486),
('9c12f12f-1f4e-4b91-b7cf-a45da6246ac4', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:8381:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:01:37\";s:10:\"created_at\";s:19:\"2024-05-19 01:01:37\";s:2:\"id\";i:3;s:9:\"file_name\";s:15:\"export-3-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:01:37\";s:10:\"created_at\";s:19:\"2024-05-19 01:01:37\";s:2:\"id\";i:3;s:9:\"file_name\";s:15:\"export-3-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-3-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:3;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:3913:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:01:37\";s:10:\"created_at\";s:19:\"2024-05-19 01:01:37\";s:2:\"id\";i:3;s:9:\"file_name\";s:15:\"export-3-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:01:37\";s:10:\"created_at\";s:19:\"2024-05-19 01:01:37\";s:2:\"id\";i:3;s:9:\"file_name\";s:15:\"export-3-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-3-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:3;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000c160000000000000000\";}\";s:4:\"hash\";s:44:\"ixsOnEbr9rFelCx0F59aXW9Hf+KcrXUFFPpzOStDNtQ=\";}}}}', NULL, 1716051697, 1716051697),
('9c12f710-e091-45f2-8769-189c7703c092', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:8377:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2024-05-19 01:18:04\";s:10:\"created_at\";s:19:\"2024-05-19 01:18:04\";s:2:\"id\";i:5;s:9:\"file_name\";s:15:\"export-5-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2024-05-19 01:18:04\";s:10:\"created_at\";s:19:\"2024-05-19 01:18:04\";s:2:\"id\";i:5;s:9:\"file_name\";s:15:\"export-5-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-5-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:5;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:3911:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2024-05-19 01:18:04\";s:10:\"created_at\";s:19:\"2024-05-19 01:18:04\";s:2:\"id\";i:5;s:9:\"file_name\";s:15:\"export-5-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2024-05-19 01:18:04\";s:10:\"created_at\";s:19:\"2024-05-19 01:18:04\";s:2:\"id\";i:5;s:9:\"file_name\";s:15:\"export-5-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-5-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:5;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000c160000000000000000\";}\";s:4:\"hash\";s:44:\"1rhVrwbzJI+McZf6bJfHeQb3IWOLvBUWEzWcGVK2yhQ=\";}}}}', NULL, 1716052684, 1716052684),
('9c12f777-0ee3-489d-a119-6f0277068af1', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:8381:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:19:11\";s:10:\"created_at\";s:19:\"2024-05-19 01:19:11\";s:2:\"id\";i:6;s:9:\"file_name\";s:15:\"export-6-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:19:11\";s:10:\"created_at\";s:19:\"2024-05-19 01:19:11\";s:2:\"id\";i:6;s:9:\"file_name\";s:15:\"export-6-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-6-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:6;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:3913:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:19:11\";s:10:\"created_at\";s:19:\"2024-05-19 01:19:11\";s:2:\"id\";i:6;s:9:\"file_name\";s:15:\"export-6-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:19:11\";s:10:\"created_at\";s:19:\"2024-05-19 01:19:11\";s:2:\"id\";i:6;s:9:\"file_name\";s:15:\"export-6-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-6-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:6;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000c160000000000000000\";}\";s:4:\"hash\";s:44:\"BVh8aU6FUZjxdvtf9VsOn9FtxD/chFnZH61D3MPcizM=\";}}}}', NULL, 1716052751, 1716052751);
INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('9c12f97d-b9ea-4030-bb42-9525f7469ffd', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:8381:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:24:51\";s:10:\"created_at\";s:19:\"2024-05-19 01:24:51\";s:2:\"id\";i:7;s:9:\"file_name\";s:15:\"products-7.xlsx\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:24:51\";s:10:\"created_at\";s:19:\"2024-05-19 01:24:51\";s:2:\"id\";i:7;s:9:\"file_name\";s:15:\"products-7.xlsx\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"products-7.xlsx\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:7;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:3913:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:24:51\";s:10:\"created_at\";s:19:\"2024-05-19 01:24:51\";s:2:\"id\";i:7;s:9:\"file_name\";s:15:\"products-7.xlsx\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:24:51\";s:10:\"created_at\";s:19:\"2024-05-19 01:24:51\";s:2:\"id\";i:7;s:9:\"file_name\";s:15:\"products-7.xlsx\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"products-7.xlsx\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:7;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000c170000000000000000\";}\";s:4:\"hash\";s:44:\"4T7UZyX6iENZVGMfXF7ReBCD+/qDh/DV6/ua5THpRd8=\";}}}}', NULL, 1716053091, 1716053091),
('9c12fa8f-bb05-4347-b672-ee16637cd31c', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:8381:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:27:50\";s:10:\"created_at\";s:19:\"2024-05-19 01:27:50\";s:2:\"id\";i:8;s:9:\"file_name\";s:15:\"products-8.xlsx\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:27:50\";s:10:\"created_at\";s:19:\"2024-05-19 01:27:50\";s:2:\"id\";i:8;s:9:\"file_name\";s:15:\"products-8.xlsx\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"products-8.xlsx\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:8;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:3913:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:27:50\";s:10:\"created_at\";s:19:\"2024-05-19 01:27:50\";s:2:\"id\";i:8;s:9:\"file_name\";s:15:\"products-8.xlsx\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 01:27:50\";s:10:\"created_at\";s:19:\"2024-05-19 01:27:50\";s:2:\"id\";i:8;s:9:\"file_name\";s:15:\"products-8.xlsx\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"products-8.xlsx\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:8;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000c170000000000000000\";}\";s:4:\"hash\";s:44:\"TvGQjSQntMPe/jPpLfTDCfg7YCw7jZHsAL+Y9epU3Ws=\";}}}}', NULL, 1716053270, 1716053270),
('9c14c7e7-25b2-4773-821d-9725e4715419', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:8381:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":6:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 22:57:48\";s:10:\"created_at\";s:19:\"2024-05-19 22:57:48\";s:2:\"id\";i:9;s:9:\"file_name\";s:15:\"export-9-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 22:57:48\";s:10:\"created_at\";s:19:\"2024-05-19 22:57:48\";s:2:\"id\";i:9;s:9:\"file_name\";s:15:\"export-9-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-9-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:9;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}s:19:\"chainCatchCallbacks\";a:0:{}s:7:\"chained\";a:1:{i:0;s:3913:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\OrderExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 22:57:48\";s:10:\"created_at\";s:19:\"2024-05-19 22:57:48\";s:2:\"id\";i:9;s:9:\"file_name\";s:15:\"export-9-orders\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\OrderExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2024-05-19 22:57:48\";s:10:\"created_at\";s:19:\"2024-05-19 22:57:48\";s:2:\"id\";i:9;s:9:\"file_name\";s:15:\"export-9-orders\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:15:\"export-9-orders\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"user\";O:15:\"App\\Models\\User\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"users\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Admin\";s:5:\"email\";s:25:\"superadmin@superadmin.com\";s:8:\"username\";s:10:\"superadmin\";s:8:\"password\";s:60:\"$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC\";s:10:\"created_at\";s:19:\"2024-05-15 23:29:41\";s:10:\"updated_at\";s:19:\"2024-05-17 15:25:57\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:8:\"password\";s:6:\"hashed\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:1:{i:0;s:8:\"password\";}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:8:\"username\";i:3;s:8:\"password\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:20:\"\0*\0rememberTokenName\";s:14:\"remember_token\";s:14:\"\0*\0accessToken\";N;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:9;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:2:\"id\";s:2:\"ID\";s:10:\"created_at\";s:10:\"Order date\";s:11:\"total_price\";s:11:\"Total price\";s:6:\"status\";s:6:\"Status\";s:5:\"notes\";s:5:\"Notes\";}s:10:\"\0*\0options\";a:0:{}}\";}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000c160000000000000000\";}\";s:4:\"hash\";s:44:\"2MNgM/0eyo5P9DAppI0xUQUwL434mBYHz1v2dCKsCbI=\";}}}}', NULL, 1716130671, 1716130672);

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
(4, '2024_03_29_151956_create_roles_table', 1),
(5, '2024_03_30_135801_create_products_table', 1),
(6, '2024_03_30_145421_create_orders_table', 1),
(7, '2024_05_15_231607_create_customers_table', 1),
(8, '2024_05_15_231823_add_customer_id_column_to_orders_table', 1),
(9, '2024_05_19_003210_create_job_batches_table', 2),
(10, '2024_05_19_003234_create_notifications_table', 2),
(11, '2024_05_19_003305_create_imports_table', 2),
(12, '2024_05_19_003306_create_exports_table', 2),
(13, '2024_05_19_003307_create_failed_import_rows_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total_price`, `status`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 42000.00, 'new', NULL, '2024-05-17 06:22:19', '2024-05-17 06:22:19', NULL),
(2, 3, 87411.00, 'processing', NULL, '2024-05-17 06:24:47', '2024-05-17 06:24:47', NULL),
(3, 4, 60000.00, 'shipped', NULL, '2024-05-17 06:25:11', '2024-05-17 06:25:11', NULL),
(4, 6, 15000.00, 'new', NULL, '2024-05-17 06:25:25', '2024-05-17 06:25:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `unit_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 14000.00, '2024-05-17 06:22:19', '2024-05-17 06:22:19'),
(2, 2, 3, 1, 87411.00, '2024-05-17 06:24:47', '2024-05-17 06:24:47'),
(3, 3, 2, 20, 3000.00, '2024-05-17 06:25:11', '2024-05-17 06:25:11'),
(4, 4, 5, 1, 15000.00, '2024-05-17 06:25:25', '2024-05-17 06:25:25');

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
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `qty` bigint UNSIGNED NOT NULL DEFAULT '0',
  `security_stock` bigint UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(10,2) DEFAULT NULL,
  `photo_url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `qty`, `security_stock`, `price`, `photo_url`, `created_at`, `updated_at`) VALUES
(1, 'Tumbler', 'tumbler', '<p>Wadah minum portabel yang terbuat dari bahan ringan seperti plastik atau stainless steel, seringkali dilengkapi dengan penutup dan sedotan, cocok untuk membawa minuman panas atau dingin saat bepergian.&nbsp;</p>', 77, 80, 14000.00, 'products-images/01HXXBHTEDQ2EG9E5FACQ2472J.jpg', '2024-03-29 22:28:18', '2024-05-15 00:00:27'),
(2, 'Gantungan kunci', 'gantungan-kunci', '<p>&nbsp;Aksesori kecil yang biasanya terbuat dari logam atau plastik, digunakan untuk menggantung kunci atau sebagai hiasan pada tas atau pakaian.&nbsp;</p>', 80, 100, 3000.00, 'products-images/01HXXBKAYEV98WS96NEHH64ANN.jpg', '2024-03-29 22:28:18', '2024-05-17 06:25:11'),
(3, 'Tote bag', 'tote-bag', '<p>&nbsp;Tas serbaguna berbentuk persegi panjang yang terbuat dari kanvas atau bahan kain lainnya, memiliki dua tali yang panjang dan digunakan untuk membawa barang sehari-hari atau belanjaan.&nbsp;</p>', 99, 100, 87411.00, 'products-images/01HXXBQ8AN8VK8ARM6RHJBZS47.jpg', '2024-03-29 22:28:18', '2024-05-17 06:24:47'),
(4, 'Boneka', 'boneka', '<p>&nbsp;Mainan berbentuk manusia, hewan, atau karakter fiksi lainnya yang terbuat dari bahan seperti kain, plastik, atau bahan empuk, seringkali digunakan sebagai hiasan atau teman bermain.&nbsp;</p>', 90, 100, 10000.00, 'products-images/01HXXBRB052QV06637YX52H9H7.jpg', '2024-03-29 22:28:18', '2024-05-14 21:31:48'),
(5, 'Buket bunga', 'buket-bunga', '<p>&nbsp;Kumpulan bunga yang disusun secara artistik dan biasanya diberikan sebagai hadiah atau untuk merayakan acara khusus seperti ulang tahun, pernikahan, atau perayaan lainnya.&nbsp;</p>', 99, 100, 15000.00, 'products-images/01HXXBSKAD9EMZ3Y4E0CTCGZ1Z.jpg', '2024-03-29 22:28:18', '2024-05-17 06:25:25'),
(7, 'Baju', 'baju', '<p>&nbsp;Pakaian yang dikenakan di bagian atas tubuh, terbuat dari berbagai bahan seperti katun, sutra, atau polyester, dan tersedia dalam berbagai gaya dan desain untuk pria, wanita, dan anak-anak.&nbsp;</p>', 18, 100, 95980.00, 'products-images/01HXXBTM9QHA5CHQ1DQXD0EB56.jpg', '2024-03-29 22:28:18', '2024-05-14 21:32:58'),
(8, 'Bantal leher', 'bantal-leher', '<p>&nbsp;Bantal kecil yang didesain khusus untuk mendukung leher dan kepala saat duduk atau tiduran, biasanya digunakan saat bepergian atau untuk kenyamanan tambahan di rumah.&nbsp;</p>', 55, 100, 70000.00, 'products-images/01HXXBVZKKB8G2081Z7RG3D0S8.jpg', '2024-03-29 22:28:18', '2024-05-14 21:33:42'),
(9, 'Goodie bag', 'goodie-bag', '<p>&nbsp;Tas kecil berisi berbagai macam hadiah atau sampel produk yang diberikan kepada tamu dalam acara atau promosi tertentu sebagai tanda terima kasih atau insentif.&nbsp;</p>', 86, 100, 83729.00, 'products-images/01HXXBX1QE1D5MREVP8SEGEEFN.jpg', '2024-03-29 22:28:18', '2024-05-14 21:34:17'),
(10, 'Paper cup', 'paper-cup', '<p>&nbsp;Gelas sekali pakai yang terbuat dari kertas atau karton, sering digunakan untuk menyajikan minuman panas seperti kopi atau teh di kafe atau acara lainnya.&nbsp;</p>', 77, 100, 5000.00, 'products-images/01HXXBYC8YVA940VWRBAMDYCMY.jpg', '2024-03-29 22:28:18', '2024-05-14 21:35:01'),
(11, 'Selempang', 'selempang', '<p>&nbsp;Sabuk atau tali yang dipakai melintang di tubuh dari bahu ke pinggang atau pinggang ke bahu, sering digunakan untuk membawa barang-barang kecil secara praktis dan stylish.&nbsp;</p>', 50, 100, 80000.00, 'products-images/01HXXBZQ6TZS33M9A43Y5ZHGFX.jpg', '2024-04-21 21:18:56', '2024-05-14 21:35:45'),
(12, 'Tumbler Glass', 'tumbler-glass', NULL, 10, 100, 50000.00, 'products-images/01HXXG9FYYC134EWHVTMGQHJNG.jpg', '2024-05-14 22:51:00', '2024-05-17 06:26:03'),
(13, 'Plastik cup', 'plastik-cup', NULL, 21, 100, 2000.00, 'products-images/01HXXGFQNBWAS172YT1GZT02R0.jpg', '2024-05-14 22:54:24', '2024-05-14 22:54:24'),
(17, 'T-shirt putih', 't-shirt-putih', NULL, 40, 100, 50000.00, 'products-images/01HXXH6BTXZFE9JGVE3PZ60D1E.jpg', '2024-05-14 23:06:45', '2024-05-17 06:26:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', NULL, NULL),
(2, 'Supervisor', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'superadmin@superadmin.com', 'superadmin', '$2y$12$LK8E8h8beGlbGVyKzjkJDOuemm5wlcMMCaA9JHKawgv10LALfYDmC', '2024-05-15 15:29:41', '2024-05-17 07:25:57'),
(2, 'Supervisor', 'supervisor@supervisor.com', 'supervisor', '$2y$12$zTO5V6SXkJcR08XzTt0LjepHXwSl.zkJ8bakNquKlK/EBcV3Ryt5i', '2024-05-19 15:01:13', '2024-05-19 15:01:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `failed_import_rows_import_id_foreign` (`import_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imports_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `exports`
--
ALTER TABLE `exports`
  ADD CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
