-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 09:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_ui_for_admin_and_front_res`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_name_ban` varchar(255) DEFAULT NULL,
  `admin_mobile` varchar(255) NOT NULL,
  `designation_list_id` varchar(255) DEFAULT NULL,
  `branch_id` varchar(255) DEFAULT NULL,
  `admin_sign` varchar(255) DEFAULT NULL,
  `admin_job_start_date` varchar(255) DEFAULT NULL,
  `admin_job_end_date` varchar(255) DEFAULT NULL,
  `admin_job_end_start_date` varchar(255) DEFAULT NULL,
  `admin_image` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `admin_email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `nid_number` varchar(255) DEFAULT NULL,
  `hire_date` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `is_supervisor` varchar(255) DEFAULT NULL,
  `emergency_contact_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `supervisor_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_name`, `admin_name_ban`, `admin_mobile`, `designation_list_id`, `branch_id`, `admin_sign`, `admin_job_start_date`, `admin_job_end_date`, `admin_job_end_start_date`, `admin_image`, `email`, `admin_email_verified_at`, `password`, `remember_token`, `address`, `nid_number`, `hire_date`, `salary`, `is_supervisor`, `emergency_contact_number`, `status`, `supervisor_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'super admin ban', '123456789', '1', '1', NULL, NULL, NULL, NULL, NULL, 'superadmin@gmail.com', NULL, '$2y$10$bmyNG/aeByQikPIT1KrACuJ.4g/HCIQ5UlAuWwHoKlPqhkcf1vSjO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-28 00:54:50', '2024-03-28 00:54:50'),
(2, 'kajol', NULL, '11111111111', '2', '1', NULL, NULL, NULL, NULL, 'public/uploads/adminImage/2024-30-0317117897254244193178.png', 'kkajol428@gmail.com', NULL, '$2y$10$p7NBYKSz06M95YJq452TjOPAGQAp45SoShHhFtxdwl1kNxK6x2cN2', NULL, 'বনানী ,ঢাকা', '111111111111111111111111111111', '2024-03-30', '1111111', 'Yes', '777777777', 'Active', NULL, '2024-03-30 03:08:45', '2024-03-30 03:35:13'),
(3, 'নতুন এনজিও', NULL, '11111111111', '3', '1', NULL, NULL, NULL, NULL, 'public/uploads/adminImage/2024-30-0317117898932939264738.png', 'kajol1122018@gmail.com', NULL, '$2y$10$gZaU5WsONk0a.pgNJ6BE/uOGV2B4b87FCbbrM4PTGITzyUE93X0zS', NULL, 'tyutyu', '111111111111111111111111111111', '2024-03-30', '1111111', 'No', '11111111', 'Active', '2', '2024-03-30 03:11:33', '2024-03-30 03:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_designation_histories`
--

CREATE TABLE `admin_designation_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `designation_list_id` varchar(255) DEFAULT NULL,
  `admin_job_start_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `branch_code` varchar(255) NOT NULL,
  `branch_step` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`, `branch_code`, `branch_step`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'super admin', NULL, '2024-03-28 00:54:50', '2024-03-28 00:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `category_name`, `category_slug`, `status`, `created_at`, `updated_at`) VALUES
(9, 'public/uploads/categoryImage/2024-01-0417119530959617429824.png', 'wertewt', 'wertewt', 'Active', '2024-03-31 23:45:43', '2024-04-01 00:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `designation_lists`
--

CREATE TABLE `designation_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_name` varchar(255) NOT NULL,
  `designation_serial` varchar(255) DEFAULT NULL,
  `designation_detail` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designation_lists`
--

INSERT INTO `designation_lists` (`id`, `branch_id`, `designation_name`, `designation_serial`, `designation_detail`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'super admin', '1', NULL, NULL, '2024-03-28 00:54:50', '2024-03-28 00:54:50'),
(2, NULL, 'SuperViser', NULL, 'All', 'Active', '2024-03-30 01:43:17', '2024-03-30 01:50:12'),
(3, NULL, 'waiter', NULL, 'All', 'Active', '2024-03-30 01:52:43', '2024-03-30 01:52:43'),
(4, NULL, 'cook', NULL, 'All', 'Active', '2024-03-30 03:40:33', '2024-03-30 03:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `designation_steps`
--

CREATE TABLE `designation_steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designation_list_id` bigint(20) UNSIGNED NOT NULL,
  `designation_step` varchar(255) DEFAULT NULL,
  `designation_serial` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designation_steps`
--

INSERT INTO `designation_steps` (`id`, `designation_list_id`, `designation_step`, `designation_serial`, `created_at`, `updated_at`) VALUES
(1, 1, 'super admin', 'super admin', '2024-03-28 00:54:50', '2024-03-28 00:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `note` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `vat_amount` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `add_on` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_ingredients`
--

CREATE TABLE `food_ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` varchar(255) NOT NULL,
  `ingredient_name` varchar(255) NOT NULL,
  `ingredient_quantity` varchar(255) NOT NULL,
  `ingredient_unit` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_histories`
--

CREATE TABLE `job_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `designation_list_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `ip_or_mac` varchar(255) NOT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `activity_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(1, 'Logged In.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:31:29 pm', '2024-03-28 01:31:31', '2024-03-28 01:31:31'),
(2, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:31:32 pm', '2024-03-28 01:31:33', '2024-03-28 01:31:33'),
(3, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:57:49 pm', '2024-03-28 01:57:50', '2024-03-28 01:57:50'),
(4, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:01:07 pm', '2024-03-28 02:01:08', '2024-03-28 02:01:08'),
(5, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:01:14 pm', '2024-03-28 02:01:14', '2024-03-28 02:01:14'),
(6, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:01:16 pm', '2024-03-28 02:01:16', '2024-03-28 02:01:16'),
(7, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:01:45 pm', '2024-03-28 02:01:45', '2024-03-28 02:01:45'),
(8, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:01:46 pm', '2024-03-28 02:01:47', '2024-03-28 02:01:47'),
(9, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:01:48 pm', '2024-03-28 02:01:48', '2024-03-28 02:01:48'),
(10, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:01:50 pm', '2024-03-28 02:01:51', '2024-03-28 02:01:51'),
(11, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:01:53 pm', '2024-03-28 02:01:53', '2024-03-28 02:01:53'),
(12, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:01:54 pm', '2024-03-28 02:01:54', '2024-03-28 02:01:54'),
(13, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:04:07 pm', '2024-03-28 02:04:07', '2024-03-28 02:04:07'),
(14, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:04:10 pm', '2024-03-28 02:04:10', '2024-03-28 02:04:10'),
(15, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:04:11 pm', '2024-03-28 02:04:12', '2024-03-28 02:04:12'),
(16, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:05:55 pm', '2024-03-28 02:05:55', '2024-03-28 02:05:55'),
(17, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:05:58 pm', '2024-03-28 02:05:58', '2024-03-28 02:05:58'),
(18, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:05:59 pm', '2024-03-28 02:06:00', '2024-03-28 02:06:00'),
(19, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:07:16 pm', '2024-03-28 02:07:16', '2024-03-28 02:07:16'),
(20, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:07:18 pm', '2024-03-28 02:07:19', '2024-03-28 02:07:19'),
(21, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:07:20 pm', '2024-03-28 02:07:20', '2024-03-28 02:07:20'),
(22, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:08:21 pm', '2024-03-28 02:08:21', '2024-03-28 02:08:21'),
(23, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:08:24 pm', '2024-03-28 02:08:24', '2024-03-28 02:08:24'),
(24, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:08:25 pm', '2024-03-28 02:08:26', '2024-03-28 02:08:26'),
(25, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:09:19 pm', '2024-03-28 02:09:19', '2024-03-28 02:09:19'),
(26, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:09:21 pm', '2024-03-28 02:09:22', '2024-03-28 02:09:22'),
(27, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:09:23 pm', '2024-03-28 02:09:23', '2024-03-28 02:09:23'),
(28, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:50:46 pm', '2024-03-28 02:50:47', '2024-03-28 02:50:47'),
(29, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:50:57 pm', '2024-03-28 02:50:57', '2024-03-28 02:50:57'),
(30, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:50:58 pm', '2024-03-28 02:50:58', '2024-03-28 02:50:58'),
(31, 'Logged Out.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/logout/submit', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:51:04 pm', '2024-03-28 02:51:05', '2024-03-28 02:51:05'),
(32, 'Logged In.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:03 pm', '2024-03-28 02:53:04', '2024-03-28 02:53:04'),
(33, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:05 pm', '2024-03-28 02:53:05', '2024-03-28 02:53:05'),
(34, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:07 pm', '2024-03-28 02:53:07', '2024-03-28 02:53:07'),
(35, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:08 pm', '2024-03-28 02:53:08', '2024-03-28 02:53:08'),
(36, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:13 pm', '2024-03-28 02:53:13', '2024-03-28 02:53:13'),
(37, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:14 pm', '2024-03-28 02:53:15', '2024-03-28 02:53:15'),
(38, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:19 pm', '2024-03-28 02:53:20', '2024-03-28 02:53:20'),
(39, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:21 pm', '2024-03-28 02:53:21', '2024-03-28 02:53:21'),
(40, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:23 pm', '2024-03-28 02:53:23', '2024-03-28 02:53:23'),
(41, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:24 pm', '2024-03-28 02:53:24', '2024-03-28 02:53:24'),
(42, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:41 pm', '2024-03-28 02:53:41', '2024-03-28 02:53:41'),
(43, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:53:42 pm', '2024-03-28 02:53:42', '2024-03-28 02:53:42'),
(44, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:54:42 pm', '2024-03-28 02:54:42', '2024-03-28 02:54:42'),
(45, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:54:43 pm', '2024-03-28 02:54:43', '2024-03-28 02:54:43'),
(46, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:56:48 pm', '2024-03-28 02:56:48', '2024-03-28 02:56:48'),
(47, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:56:49 pm', '2024-03-28 02:56:50', '2024-03-28 02:56:50'),
(48, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:57:32 pm', '2024-03-28 02:57:32', '2024-03-28 02:57:32'),
(49, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:57:33 pm', '2024-03-28 02:57:33', '2024-03-28 02:57:33'),
(50, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:57:44 pm', '2024-03-28 02:57:45', '2024-03-28 02:57:45'),
(51, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:57:46 pm', '2024-03-28 02:57:46', '2024-03-28 02:57:46'),
(52, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:58:13 pm', '2024-03-28 02:58:13', '2024-03-28 02:58:13'),
(53, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:58:14 pm', '2024-03-28 02:58:14', '2024-03-28 02:58:14'),
(54, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:58:51 pm', '2024-03-28 02:58:52', '2024-03-28 02:58:52'),
(55, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:58:53 pm', '2024-03-28 02:58:54', '2024-03-28 02:58:54'),
(56, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:00:10 pm', '2024-03-28 03:00:10', '2024-03-28 03:00:10'),
(57, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:00:11 pm', '2024-03-28 03:00:11', '2024-03-28 03:00:11'),
(58, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:00:59 pm', '2024-03-28 03:00:59', '2024-03-28 03:00:59'),
(59, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:01:00 pm', '2024-03-28 03:01:00', '2024-03-28 03:01:00'),
(60, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:03:09 pm', '2024-03-28 03:03:09', '2024-03-28 03:03:09'),
(61, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:03:10 pm', '2024-03-28 03:03:10', '2024-03-28 03:03:10'),
(62, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:04:17 pm', '2024-03-28 03:04:17', '2024-03-28 03:04:17'),
(63, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:04:18 pm', '2024-03-28 03:04:19', '2024-03-28 03:04:19'),
(64, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:05:48 pm', '2024-03-28 03:05:48', '2024-03-28 03:05:48'),
(65, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:05:49 pm', '2024-03-28 03:05:49', '2024-03-28 03:05:49'),
(66, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:06:19 pm', '2024-03-28 03:06:19', '2024-03-28 03:06:19'),
(67, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:06:20 pm', '2024-03-28 03:06:21', '2024-03-28 03:06:21'),
(68, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:07:38 pm', '2024-03-28 03:07:38', '2024-03-28 03:07:38'),
(69, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:07:39 pm', '2024-03-28 03:07:40', '2024-03-28 03:07:40'),
(70, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:08:19 pm', '2024-03-28 03:08:19', '2024-03-28 03:08:19'),
(71, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:08:20 pm', '2024-03-28 03:08:20', '2024-03-28 03:08:20'),
(72, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:08:33 pm', '2024-03-28 03:08:33', '2024-03-28 03:08:33'),
(73, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:08:34 pm', '2024-03-28 03:08:34', '2024-03-28 03:08:34'),
(74, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:10:18 pm', '2024-03-28 03:10:19', '2024-03-28 03:10:19'),
(75, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:10:20 pm', '2024-03-28 03:10:20', '2024-03-28 03:10:20'),
(76, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:11:04 pm', '2024-03-28 03:11:04', '2024-03-28 03:11:04'),
(77, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:11:05 pm', '2024-03-28 03:11:05', '2024-03-28 03:11:05'),
(78, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:11:08 pm', '2024-03-28 03:11:08', '2024-03-28 03:11:08'),
(79, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:11:09 pm', '2024-03-28 03:11:09', '2024-03-28 03:11:09'),
(80, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:11:33 pm', '2024-03-28 03:11:33', '2024-03-28 03:11:33'),
(81, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:11:34 pm', '2024-03-28 03:11:34', '2024-03-28 03:11:34'),
(82, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:11:40 pm', '2024-03-28 03:11:40', '2024-03-28 03:11:40'),
(83, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:11:41 pm', '2024-03-28 03:11:41', '2024-03-28 03:11:41'),
(84, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:17:06 am', '2024-03-29 23:17:10', '2024-03-29 23:17:10'),
(85, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:17:12 am', '2024-03-29 23:17:12', '2024-03-29 23:17:12'),
(86, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:17:26 am', '2024-03-29 23:17:27', '2024-03-29 23:17:27'),
(87, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:17:28 am', '2024-03-29 23:17:28', '2024-03-29 23:17:28'),
(88, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:20:37 am', '2024-03-29 23:20:37', '2024-03-29 23:20:37'),
(89, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:20:39 am', '2024-03-29 23:20:39', '2024-03-29 23:20:39'),
(90, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:20:40 am', '2024-03-29 23:20:40', '2024-03-29 23:20:40'),
(91, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:23:45 am', '2024-03-29 23:23:45', '2024-03-29 23:23:45'),
(92, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:23:48 am', '2024-03-29 23:23:48', '2024-03-29 23:23:48'),
(93, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:23:49 am', '2024-03-29 23:23:49', '2024-03-29 23:23:49'),
(94, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:24:19 am', '2024-03-29 23:24:20', '2024-03-29 23:24:20'),
(95, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:27:44 am', '2024-03-29 23:27:45', '2024-03-29 23:27:45'),
(96, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:27:46 am', '2024-03-29 23:27:47', '2024-03-29 23:27:47'),
(97, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:27:48 am', '2024-03-29 23:27:48', '2024-03-29 23:27:48'),
(98, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:31:35 am', '2024-03-29 23:31:35', '2024-03-29 23:31:35'),
(99, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:31:37 am', '2024-03-29 23:31:37', '2024-03-29 23:31:37'),
(100, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:31:38 am', '2024-03-29 23:31:39', '2024-03-29 23:31:39'),
(101, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:31:51 am', '2024-03-29 23:31:51', '2024-03-29 23:31:51'),
(102, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:31:53 am', '2024-03-29 23:31:53', '2024-03-29 23:31:53'),
(103, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:31:54 am', '2024-03-29 23:31:54', '2024-03-29 23:31:54'),
(104, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:32:08 am', '2024-03-29 23:32:08', '2024-03-29 23:32:08'),
(105, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:32:10 am', '2024-03-29 23:32:10', '2024-03-29 23:32:10'),
(106, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:32:11 am', '2024-03-29 23:32:11', '2024-03-29 23:32:11'),
(107, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:33:04 am', '2024-03-29 23:33:04', '2024-03-29 23:33:04'),
(108, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:33:05 am', '2024-03-29 23:33:05', '2024-03-29 23:33:05'),
(109, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:33:06 am', '2024-03-29 23:33:06', '2024-03-29 23:33:06'),
(110, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:34:28 am', '2024-03-29 23:34:28', '2024-03-29 23:34:28'),
(111, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:34:30 am', '2024-03-29 23:34:30', '2024-03-29 23:34:30'),
(112, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:34:31 am', '2024-03-29 23:34:31', '2024-03-29 23:34:31'),
(113, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:34:53 am', '2024-03-29 23:34:53', '2024-03-29 23:34:53'),
(114, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:34:55 am', '2024-03-29 23:34:55', '2024-03-29 23:34:55'),
(115, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:34:56 am', '2024-03-29 23:34:56', '2024-03-29 23:34:56'),
(116, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:36:18 am', '2024-03-29 23:36:19', '2024-03-29 23:36:19'),
(117, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:36:20 am', '2024-03-29 23:36:20', '2024-03-29 23:36:20'),
(118, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:36:21 am', '2024-03-29 23:36:21', '2024-03-29 23:36:21'),
(119, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:36:59 am', '2024-03-29 23:37:00', '2024-03-29 23:37:00'),
(120, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:37:01 am', '2024-03-29 23:37:02', '2024-03-29 23:37:02'),
(121, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:37:02 am', '2024-03-29 23:37:02', '2024-03-29 23:37:02'),
(122, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:39:56 am', '2024-03-29 23:39:56', '2024-03-29 23:39:56'),
(123, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:39:58 am', '2024-03-29 23:39:58', '2024-03-29 23:39:58'),
(124, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:39:59 am', '2024-03-29 23:39:59', '2024-03-29 23:39:59'),
(125, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:40:33 am', '2024-03-29 23:40:34', '2024-03-29 23:40:34'),
(126, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:40:37 am', '2024-03-29 23:40:37', '2024-03-29 23:40:37'),
(127, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:40:38 am', '2024-03-29 23:40:38', '2024-03-29 23:40:38'),
(128, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:42:34 am', '2024-03-29 23:42:34', '2024-03-29 23:42:34'),
(129, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:42:36 am', '2024-03-29 23:42:36', '2024-03-29 23:42:36'),
(130, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:42:37 am', '2024-03-29 23:42:37', '2024-03-29 23:42:37'),
(131, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:45:51 am', '2024-03-29 23:45:52', '2024-03-29 23:45:52'),
(132, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:45:54 am', '2024-03-29 23:45:54', '2024-03-29 23:45:54'),
(133, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:45:54 am', '2024-03-29 23:45:55', '2024-03-29 23:45:55'),
(134, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:46:01 am', '2024-03-29 23:46:02', '2024-03-29 23:46:02'),
(135, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:46:04 am', '2024-03-29 23:46:04', '2024-03-29 23:46:04'),
(136, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:46:05 am', '2024-03-29 23:46:05', '2024-03-29 23:46:05'),
(137, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '11:46:43 am', '2024-03-29 23:46:44', '2024-03-29 23:46:44'),
(138, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '11:46:46 am', '2024-03-29 23:46:46', '2024-03-29 23:46:46'),
(139, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '11:46:47 am', '2024-03-29 23:46:48', '2024-03-29 23:46:48');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(140, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:56:20 am', '2024-03-29 23:56:20', '2024-03-29 23:56:20'),
(141, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:56:22 am', '2024-03-29 23:56:22', '2024-03-29 23:56:22'),
(142, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:56:22 am', '2024-03-29 23:56:23', '2024-03-29 23:56:23'),
(143, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:57:00 am', '2024-03-29 23:57:00', '2024-03-29 23:57:00'),
(144, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:57:02 am', '2024-03-29 23:57:02', '2024-03-29 23:57:02'),
(145, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:57:03 am', '2024-03-29 23:57:03', '2024-03-29 23:57:03'),
(146, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:57:38 am', '2024-03-29 23:57:38', '2024-03-29 23:57:38'),
(147, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:57:40 am', '2024-03-29 23:57:40', '2024-03-29 23:57:40'),
(148, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:57:41 am', '2024-03-29 23:57:41', '2024-03-29 23:57:41'),
(149, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:58:32 am', '2024-03-29 23:58:32', '2024-03-29 23:58:32'),
(150, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:58:33 am', '2024-03-29 23:58:34', '2024-03-29 23:58:34'),
(151, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:58:37 am', '2024-03-29 23:58:37', '2024-03-29 23:58:37'),
(152, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:58:44 am', '2024-03-29 23:58:44', '2024-03-29 23:58:44'),
(153, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:58:46 am', '2024-03-29 23:58:46', '2024-03-29 23:58:46'),
(154, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:58:47 am', '2024-03-29 23:58:47', '2024-03-29 23:58:47'),
(155, 'System  Info Update.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'POST', 'B0-A7-B9-EB-20-D0   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:07:05 pm', '2024-03-30 00:07:05', '2024-03-30 00:07:05'),
(156, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:07:06 pm', '2024-03-30 00:07:07', '2024-03-30 00:07:07'),
(157, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:08:25 pm', '2024-03-30 00:08:26', '2024-03-30 00:08:26'),
(158, 'System  Info Update.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:08:54 pm', '2024-03-30 00:08:54', '2024-03-30 00:08:54'),
(159, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:08:54 pm', '2024-03-30 00:08:55', '2024-03-30 00:08:55'),
(160, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:09:16 pm', '2024-03-30 00:09:17', '2024-03-30 00:09:17'),
(161, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:11:50 pm', '2024-03-30 00:11:50', '2024-03-30 00:11:50'),
(162, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:14:29 pm', '2024-03-30 00:14:30', '2024-03-30 00:14:30'),
(163, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:15:24 pm', '2024-03-30 00:15:24', '2024-03-30 00:15:24'),
(164, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:15:42 pm', '2024-03-30 00:15:42', '2024-03-30 00:15:42'),
(165, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:15:50 pm', '2024-03-30 00:15:50', '2024-03-30 00:15:50'),
(166, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:15:55 pm', '2024-03-30 00:15:55', '2024-03-30 00:15:55'),
(167, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:16:00 pm', '2024-03-30 00:16:01', '2024-03-30 00:16:01'),
(168, 'View Role Edit Page.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:16:18 pm', '2024-03-30 00:16:18', '2024-03-30 00:16:18'),
(169, 'View Role Edit Page.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:16:34 pm', '2024-03-30 00:16:34', '2024-03-30 00:16:34'),
(170, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:17:47 pm', '2024-03-30 00:17:47', '2024-03-30 00:17:47'),
(171, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:18:40 pm', '2024-03-30 00:18:40', '2024-03-30 00:18:40'),
(172, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:20:27 pm', '2024-03-30 00:20:28', '2024-03-30 00:20:28'),
(173, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:21:47 pm', '2024-03-30 00:21:47', '2024-03-30 00:21:47'),
(174, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:22:55 pm', '2024-03-30 00:22:55', '2024-03-30 00:22:55'),
(175, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:23:33 pm', '2024-03-30 00:23:33', '2024-03-30 00:23:33'),
(176, 'Create Role.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:23:36 pm', '2024-03-30 00:23:36', '2024-03-30 00:23:36'),
(177, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:24:38 pm', '2024-03-30 00:24:38', '2024-03-30 00:24:38'),
(178, 'View Role Edit Page.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:24:42 pm', '2024-03-30 00:24:42', '2024-03-30 00:24:42'),
(179, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:24:55 pm', '2024-03-30 00:24:56', '2024-03-30 00:24:56'),
(180, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:25:31 pm', '2024-03-30 00:25:31', '2024-03-30 00:25:31'),
(181, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:29:13 pm', '2024-03-30 00:29:13', '2024-03-30 00:29:13'),
(182, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:32:03 pm', '2024-03-30 00:32:03', '2024-03-30 00:32:03'),
(183, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:32:31 pm', '2024-03-30 00:32:32', '2024-03-30 00:32:32'),
(184, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:33:08 pm', '2024-03-30 00:33:08', '2024-03-30 00:33:08'),
(185, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:35:18 pm', '2024-03-30 00:35:19', '2024-03-30 00:35:19'),
(186, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:36:50 pm', '2024-03-30 00:36:51', '2024-03-30 00:36:51'),
(187, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:37:06 pm', '2024-03-30 00:37:06', '2024-03-30 00:37:06'),
(188, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:38:07 pm', '2024-03-30 00:38:07', '2024-03-30 00:38:07'),
(189, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:46:24 pm', '2024-03-30 00:46:24', '2024-03-30 00:46:24'),
(190, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:46:34 pm', '2024-03-30 00:46:34', '2024-03-30 00:46:34'),
(191, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:51:51 pm', '2024-03-30 00:51:51', '2024-03-30 00:51:51'),
(192, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:51:58 pm', '2024-03-30 00:51:58', '2024-03-30 00:51:58'),
(193, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:58:42 pm', '2024-03-30 00:58:43', '2024-03-30 00:58:43'),
(194, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:02:17 pm', '2024-03-30 01:02:17', '2024-03-30 01:02:17'),
(195, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:02:53 pm', '2024-03-30 01:02:53', '2024-03-30 01:02:53'),
(196, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:05:41 pm', '2024-03-30 01:05:41', '2024-03-30 01:05:41'),
(197, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:08:31 pm', '2024-03-30 01:08:31', '2024-03-30 01:08:31'),
(198, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:27:19 pm', '2024-03-30 01:27:19', '2024-03-30 01:27:19'),
(199, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:34:10 pm', '2024-03-30 01:34:11', '2024-03-30 01:34:11'),
(200, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:35:56 pm', '2024-03-30 01:35:57', '2024-03-30 01:35:57'),
(201, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:37:15 pm', '2024-03-30 01:37:15', '2024-03-30 01:37:15'),
(202, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:37:23 pm', '2024-03-30 01:37:23', '2024-03-30 01:37:23'),
(203, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:37:54 pm', '2024-03-30 01:37:54', '2024-03-30 01:37:54'),
(204, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:38:08 pm', '2024-03-30 01:38:08', '2024-03-30 01:38:08'),
(205, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:38:16 pm', '2024-03-30 01:38:17', '2024-03-30 01:38:17'),
(206, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=S&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:38:27 pm', '2024-03-30 01:38:28', '2024-03-30 01:38:28'),
(207, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=S&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:38:28 pm', '2024-03-30 01:38:28', '2024-03-30 01:38:28'),
(208, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:13 pm', '2024-03-30 01:40:14', '2024-03-30 01:40:14'),
(209, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=S&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:20 pm', '2024-03-30 01:40:20', '2024-03-30 01:40:20'),
(210, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=S&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:20 pm', '2024-03-30 01:40:21', '2024-03-30 01:40:21'),
(211, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=Su&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:20 pm', '2024-03-30 01:40:21', '2024-03-30 01:40:21'),
(212, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=Sup&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:21 pm', '2024-03-30 01:40:22', '2024-03-30 01:40:22'),
(213, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=Supe&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:22 pm', '2024-03-30 01:40:22', '2024-03-30 01:40:22'),
(214, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=Super&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:22 pm', '2024-03-30 01:40:22', '2024-03-30 01:40:22'),
(215, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperV&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:23 pm', '2024-03-30 01:40:24', '2024-03-30 01:40:24'),
(216, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperVi&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:24 pm', '2024-03-30 01:40:25', '2024-03-30 01:40:25'),
(217, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperVis&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:24 pm', '2024-03-30 01:40:25', '2024-03-30 01:40:25'),
(218, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperV&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:24 pm', '2024-03-30 01:40:25', '2024-03-30 01:40:25'),
(219, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperVise&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:24 pm', '2024-03-30 01:40:25', '2024-03-30 01:40:25'),
(220, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperViser&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:25 pm', '2024-03-30 01:40:25', '2024-03-30 01:40:25'),
(221, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperViser&designationSerial=undefined.A', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:27 pm', '2024-03-30 01:40:28', '2024-03-30 01:40:28'),
(222, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperViser&designationSerial=undefined.A', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:28 pm', '2024-03-30 01:40:28', '2024-03-30 01:40:28'),
(223, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperViser&designationSerial=undefined.Al', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:28 pm', '2024-03-30 01:40:29', '2024-03-30 01:40:29'),
(224, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperViser&designationSerial=undefined.All', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:29 pm', '2024-03-30 01:40:29', '2024-03-30 01:40:29'),
(225, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:40:32 pm', '2024-03-30 01:40:33', '2024-03-30 01:40:33'),
(226, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperViser&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:41:50 pm', '2024-03-30 01:41:50', '2024-03-30 01:41:50'),
(227, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperViser&designationSerial=undefined.All', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:41:51 pm', '2024-03-30 01:41:51', '2024-03-30 01:41:51'),
(229, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:41:54 pm', '2024-03-30 01:41:54', '2024-03-30 01:41:54'),
(230, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:42:26 pm', '2024-03-30 01:42:26', '2024-03-30 01:42:26'),
(231, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=werwer&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:42:30 pm', '2024-03-30 01:42:30', '2024-03-30 01:42:30'),
(232, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=werwer&designationSerial=undefined.All', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:42:31 pm', '2024-03-30 01:42:31', '2024-03-30 01:42:31'),
(234, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:42:34 pm', '2024-03-30 01:42:34', '2024-03-30 01:42:34'),
(235, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:43:05 pm', '2024-03-30 01:43:06', '2024-03-30 01:43:06'),
(236, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperViser&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:43:13 pm', '2024-03-30 01:43:14', '2024-03-30 01:43:14'),
(237, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=SuperViser&designationSerial=undefined.All', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:43:14 pm', '2024-03-30 01:43:14', '2024-03-30 01:43:14'),
(238, 'designation store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:43:16 pm', '2024-03-30 01:43:17', '2024-03-30 01:43:17'),
(239, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:43:17 pm', '2024-03-30 01:43:17', '2024-03-30 01:43:17'),
(240, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:43:42 pm', '2024-03-30 01:43:42', '2024-03-30 01:43:42'),
(241, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:44:18 pm', '2024-03-30 01:44:19', '2024-03-30 01:44:19'),
(242, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:44:37 pm', '2024-03-30 01:44:38', '2024-03-30 01:44:38'),
(243, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:45:06 pm', '2024-03-30 01:45:06', '2024-03-30 01:45:06'),
(244, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:45:17 pm', '2024-03-30 01:45:17', '2024-03-30 01:45:17'),
(245, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '01:46:06 pm', '2024-03-30 01:46:07', '2024-03-30 01:46:07'),
(246, 'designation update ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList/2', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:47:25 pm', '2024-03-30 01:47:25', '2024-03-30 01:47:25'),
(247, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:47:25 pm', '2024-03-30 01:47:26', '2024-03-30 01:47:26'),
(248, 'designation update ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList/2', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:47:39 pm', '2024-03-30 01:47:39', '2024-03-30 01:47:39'),
(249, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:47:39 pm', '2024-03-30 01:47:39', '2024-03-30 01:47:39'),
(250, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:48:13 pm', '2024-03-30 01:48:13', '2024-03-30 01:48:13'),
(251, 'designation update ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList/2', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:48:29 pm', '2024-03-30 01:48:29', '2024-03-30 01:48:29'),
(252, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:48:30 pm', '2024-03-30 01:48:30', '2024-03-30 01:48:30'),
(253, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:49:32 pm', '2024-03-30 01:49:33', '2024-03-30 01:49:33'),
(254, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:49:48 pm', '2024-03-30 01:49:49', '2024-03-30 01:49:49'),
(255, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:50:00 pm', '2024-03-30 01:50:00', '2024-03-30 01:50:00'),
(256, 'designation update ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList/2', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:50:12 pm', '2024-03-30 01:50:12', '2024-03-30 01:50:12'),
(257, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:50:13 pm', '2024-03-30 01:50:13', '2024-03-30 01:50:13'),
(258, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:50:42 pm', '2024-03-30 01:50:42', '2024-03-30 01:50:42'),
(259, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:51:24 pm', '2024-03-30 01:51:24', '2024-03-30 01:51:24'),
(260, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:52:28 pm', '2024-03-30 01:52:29', '2024-03-30 01:52:29'),
(261, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=w&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:52:35 pm', '2024-03-30 01:52:35', '2024-03-30 01:52:35'),
(262, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=wa&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:52:36 pm', '2024-03-30 01:52:36', '2024-03-30 01:52:36'),
(263, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=wai&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:52:37 pm', '2024-03-30 01:52:37', '2024-03-30 01:52:37'),
(264, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=wait&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:52:38 pm', '2024-03-30 01:52:38', '2024-03-30 01:52:38'),
(265, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=waiter&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:52:38 pm', '2024-03-30 01:52:38', '2024-03-30 01:52:38'),
(266, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=waiter&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:52:39 pm', '2024-03-30 01:52:39', '2024-03-30 01:52:39'),
(267, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=waiter&designationSerial=undefined.All', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:52:40 pm', '2024-03-30 01:52:40', '2024-03-30 01:52:40'),
(268, 'designation store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:52:43 pm', '2024-03-30 01:52:43', '2024-03-30 01:52:43'),
(269, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:52:43 pm', '2024-03-30 01:52:44', '2024-03-30 01:52:44'),
(270, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:55:39 pm', '2024-03-30 01:55:39', '2024-03-30 01:55:39'),
(271, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:55:49 pm', '2024-03-30 01:55:49', '2024-03-30 01:55:49'),
(272, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:56:06 pm', '2024-03-30 01:56:06', '2024-03-30 01:56:06');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(273, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:56:11 pm', '2024-03-30 01:56:11', '2024-03-30 01:56:11'),
(274, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:56:16 pm', '2024-03-30 01:56:17', '2024-03-30 01:56:17'),
(275, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:57:35 pm', '2024-03-30 01:57:36', '2024-03-30 01:57:36'),
(276, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:00:03 pm', '2024-03-30 02:00:04', '2024-03-30 02:00:04'),
(277, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:08:12 pm', '2024-03-30 02:08:13', '2024-03-30 02:08:13'),
(278, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:09:28 pm', '2024-03-30 02:09:28', '2024-03-30 02:09:28'),
(279, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:11:31 pm', '2024-03-30 02:11:31', '2024-03-30 02:11:31'),
(280, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:11:40 pm', '2024-03-30 02:11:40', '2024-03-30 02:11:40'),
(281, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:11:57 pm', '2024-03-30 02:11:57', '2024-03-30 02:11:57'),
(282, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:13:51 pm', '2024-03-30 02:13:51', '2024-03-30 02:13:51'),
(283, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:14:35 pm', '2024-03-30 02:14:36', '2024-03-30 02:14:36'),
(284, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:15:21 pm', '2024-03-30 02:15:22', '2024-03-30 02:15:22'),
(285, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:16:11 pm', '2024-03-30 02:16:11', '2024-03-30 02:16:11'),
(286, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:23:52 pm', '2024-03-30 02:23:53', '2024-03-30 02:23:53'),
(287, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:24:35 pm', '2024-03-30 02:24:36', '2024-03-30 02:24:36'),
(288, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:33:42 pm', '2024-03-30 02:33:42', '2024-03-30 02:33:42'),
(289, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:33:51 pm', '2024-03-30 02:33:52', '2024-03-30 02:33:52'),
(290, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:36:39 pm', '2024-03-30 02:36:40', '2024-03-30 02:36:40'),
(291, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:36:54 pm', '2024-03-30 02:36:54', '2024-03-30 02:36:54'),
(292, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:39:04 pm', '2024-03-30 02:39:04', '2024-03-30 02:39:04'),
(293, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:41:32 pm', '2024-03-30 02:41:32', '2024-03-30 02:41:32'),
(294, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:41:34 pm', '2024-03-30 02:41:35', '2024-03-30 02:41:35'),
(295, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:46:04 pm', '2024-03-30 02:46:05', '2024-03-30 02:46:05'),
(296, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:55:44 pm', '2024-03-30 02:55:44', '2024-03-30 02:55:44'),
(297, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:56:02 pm', '2024-03-30 02:56:02', '2024-03-30 02:56:02'),
(298, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:56:11 pm', '2024-03-30 02:56:11', '2024-03-30 02:56:11'),
(299, ' employee store', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:06:51 pm', '2024-03-30 03:06:52', '2024-03-30 03:06:52'),
(300, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:06:53 pm', '2024-03-30 03:06:54', '2024-03-30 03:06:54'),
(301, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:08:05 pm', '2024-03-30 03:08:05', '2024-03-30 03:08:05'),
(302, ' employee store', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:08:45 pm', '2024-03-30 03:08:45', '2024-03-30 03:08:45'),
(303, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:08:45 pm', '2024-03-30 03:08:46', '2024-03-30 03:08:46'),
(304, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:10:39 pm', '2024-03-30 03:10:39', '2024-03-30 03:10:39'),
(305, ' employee store', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:11:33 pm', '2024-03-30 03:11:33', '2024-03-30 03:11:33'),
(306, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:11:34 pm', '2024-03-30 03:11:34', '2024-03-30 03:11:34'),
(307, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:16:47 pm', '2024-03-30 03:16:47', '2024-03-30 03:16:47'),
(308, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:17:37 pm', '2024-03-30 03:17:37', '2024-03-30 03:17:37'),
(309, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:20:31 pm', '2024-03-30 03:20:31', '2024-03-30 03:20:31'),
(310, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:20:44 pm', '2024-03-30 03:20:45', '2024-03-30 03:20:45'),
(311, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:22:33 pm', '2024-03-30 03:22:33', '2024-03-30 03:22:33'),
(312, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:23:14 pm', '2024-03-30 03:23:15', '2024-03-30 03:23:15'),
(313, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:23:37 pm', '2024-03-30 03:23:38', '2024-03-30 03:23:38'),
(314, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:23:43 pm', '2024-03-30 03:23:44', '2024-03-30 03:23:44'),
(315, 'edit employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/2/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:24:21 pm', '2024-03-30 03:24:21', '2024-03-30 03:24:21'),
(316, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:24:23 pm', '2024-03-30 03:24:23', '2024-03-30 03:24:23'),
(317, 'edit employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/2/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:27:59 pm', '2024-03-30 03:28:00', '2024-03-30 03:28:00'),
(318, 'edit employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/2/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:34:26 pm', '2024-03-30 03:34:26', '2024-03-30 03:34:26'),
(319, 'edit employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/2/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:34:50 pm', '2024-03-30 03:34:51', '2024-03-30 03:34:51'),
(320, 'update employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/2', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:35:12 pm', '2024-03-30 03:35:13', '2024-03-30 03:35:13'),
(321, 'view employee list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:35:13 pm', '2024-03-30 03:35:14', '2024-03-30 03:35:14'),
(322, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:38:44 pm', '2024-03-30 03:38:45', '2024-03-30 03:38:45'),
(323, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:39:29 pm', '2024-03-30 03:39:29', '2024-03-30 03:39:29'),
(324, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:39:41 pm', '2024-03-30 03:39:41', '2024-03-30 03:39:41'),
(325, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:39:58 pm', '2024-03-30 03:39:58', '2024-03-30 03:39:58'),
(326, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:40:13 pm', '2024-03-30 03:40:14', '2024-03-30 03:40:14'),
(327, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=c&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:40:29 pm', '2024-03-30 03:40:29', '2024-03-30 03:40:29'),
(328, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=co&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:40:29 pm', '2024-03-30 03:40:29', '2024-03-30 03:40:29'),
(329, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=coo&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:40:29 pm', '2024-03-30 03:40:30', '2024-03-30 03:40:30'),
(330, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=cook&designationSerial=', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:40:30 pm', '2024-03-30 03:40:30', '2024-03-30 03:40:30'),
(331, 'designation check ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/checkDesignation?designationName=cook&designationSerial=undefined.All', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:40:31 pm', '2024-03-30 03:40:31', '2024-03-30 03:40:31'),
(332, 'designation store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:40:33 pm', '2024-03-30 03:40:33', '2024-03-30 03:40:33'),
(333, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:40:34 pm', '2024-03-30 03:40:34', '2024-03-30 03:40:34'),
(334, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:04:42 am', '2024-03-30 23:04:43', '2024-03-30 23:04:43'),
(335, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:10:31 am', '2024-03-30 23:10:31', '2024-03-30 23:10:31'),
(336, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:11:19 am', '2024-03-30 23:11:19', '2024-03-30 23:11:19'),
(337, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:13:19 am', '2024-03-30 23:13:20', '2024-03-30 23:13:20'),
(338, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:26:08 am', '2024-03-30 23:26:08', '2024-03-30 23:26:08'),
(339, 'Create Role.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:26:11 am', '2024-03-30 23:26:11', '2024-03-30 23:26:11'),
(340, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:26:18 am', '2024-03-30 23:26:18', '2024-03-30 23:26:18'),
(341, ' create permission ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:26:58 am', '2024-03-30 23:26:58', '2024-03-30 23:26:58'),
(342, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:26:59 am', '2024-03-30 23:26:59', '2024-03-30 23:26:59'),
(343, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:26:59 am', '2024-03-30 23:27:00', '2024-03-30 23:27:00'),
(344, ' create permission ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:27:47 am', '2024-03-30 23:27:48', '2024-03-30 23:27:48'),
(345, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:27:48 am', '2024-03-30 23:27:48', '2024-03-30 23:27:48'),
(346, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:27:49 am', '2024-03-30 23:27:49', '2024-03-30 23:27:49'),
(347, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:28:06 am', '2024-03-30 23:28:06', '2024-03-30 23:28:06'),
(348, 'View Role Edit Page.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:28:09 am', '2024-03-30 23:28:09', '2024-03-30 23:28:09'),
(349, 'Update Role.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:28:14 am', '2024-03-30 23:28:15', '2024-03-30 23:28:15'),
(350, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:28:17 am', '2024-03-30 23:28:18', '2024-03-30 23:28:18'),
(351, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:34:30 am', '2024-03-30 23:34:30', '2024-03-30 23:34:30'),
(352, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:35:39 am', '2024-03-30 23:35:40', '2024-03-30 23:35:40'),
(353, 'View System Information.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:43:25 am', '2024-03-30 23:43:25', '2024-03-30 23:43:25'),
(354, 'create employee ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:43:34 am', '2024-03-30 23:43:34', '2024-03-30 23:43:34'),
(355, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:43:51 am', '2024-03-30 23:43:51', '2024-03-30 23:43:51'),
(356, 'designation  list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:44:20 am', '2024-03-30 23:44:20', '2024-03-30 23:44:20'),
(357, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:10:33 pm', '2024-03-31 00:10:33', '2024-03-31 00:10:33'),
(359, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:10:56 pm', '2024-03-31 00:10:56', '2024-03-31 00:10:56'),
(360, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:11:37 pm', '2024-03-31 00:11:38', '2024-03-31 00:11:38'),
(362, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:12:15 pm', '2024-03-31 00:12:15', '2024-03-31 00:12:15'),
(363, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:13:42 pm', '2024-03-31 00:13:42', '2024-03-31 00:13:42'),
(364, 'Table store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:13:57 pm', '2024-03-31 00:13:57', '2024-03-31 00:13:57'),
(365, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:13:58 pm', '2024-03-31 00:13:58', '2024-03-31 00:13:58'),
(366, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:14:13 pm', '2024-03-31 00:14:13', '2024-03-31 00:14:13'),
(367, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:14:58 pm', '2024-03-31 00:14:59', '2024-03-31 00:14:59'),
(368, 'Table store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:15:07 pm', '2024-03-31 00:15:07', '2024-03-31 00:15:07'),
(369, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:15:08 pm', '2024-03-31 00:15:08', '2024-03-31 00:15:08'),
(370, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:16:51 pm', '2024-03-31 00:16:52', '2024-03-31 00:16:52'),
(371, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:17:01 pm', '2024-03-31 00:17:01', '2024-03-31 00:17:01'),
(372, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:36:48 pm', '2024-03-31 00:36:48', '2024-03-31 00:36:48'),
(373, 'Qr Code list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/qrCodeList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:36:52 pm', '2024-03-31 00:36:52', '2024-03-31 00:36:52'),
(374, 'Qr Code list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/qrCodeList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:37:26 pm', '2024-03-31 00:37:26', '2024-03-31 00:37:26'),
(375, 'Qr Code list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/qrCodeList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:37:43 pm', '2024-03-31 00:37:43', '2024-03-31 00:37:43'),
(376, 'Qr Code list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/qrCodeList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:40:22 pm', '2024-03-31 00:40:22', '2024-03-31 00:40:22'),
(377, 'Qr Code list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/qrCodeList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:53:26 pm', '2024-03-31 00:53:27', '2024-03-31 00:53:27'),
(378, 'Qr Code list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/qrCodeList/2', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:53:29 pm', '2024-03-31 00:53:29', '2024-03-31 00:53:29'),
(379, 'Qr Code list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/qrCodeList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:53:30 pm', '2024-03-31 00:53:30', '2024-03-31 00:53:30'),
(380, 'Qr Code list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/qrCodeList/2', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:53:57 pm', '2024-03-31 00:53:58', '2024-03-31 00:53:58'),
(381, 'Qr Code list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/qrCodeList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:55:57 pm', '2024-03-31 00:55:57', '2024-03-31 00:55:57'),
(382, 'Qr Code list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/qrCodeList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:56:22 pm', '2024-03-31 00:56:22', '2024-03-31 00:56:22'),
(383, 'Qr Code list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/qrCodeList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:56:59 pm', '2024-03-31 00:56:59', '2024-03-31 00:56:59'),
(384, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:27:47 pm', '2024-03-31 01:27:48', '2024-03-31 01:27:48'),
(385, ' create permission ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:28:33 pm', '2024-03-31 01:28:33', '2024-03-31 01:28:33'),
(386, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:28:34 pm', '2024-03-31 01:28:34', '2024-03-31 01:28:34'),
(387, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:28:35 pm', '2024-03-31 01:28:35', '2024-03-31 01:28:35'),
(388, ' create permission ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:29:17 pm', '2024-03-31 01:29:17', '2024-03-31 01:29:17'),
(389, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:29:17 pm', '2024-03-31 01:29:18', '2024-03-31 01:29:18'),
(390, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:29:18 pm', '2024-03-31 01:29:18', '2024-03-31 01:29:18'),
(391, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:29:30 pm', '2024-03-31 01:29:30', '2024-03-31 01:29:30'),
(392, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:29:38 pm', '2024-03-31 01:29:38', '2024-03-31 01:29:38'),
(393, 'View Role Edit Page.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:29:41 pm', '2024-03-31 01:29:41', '2024-03-31 01:29:41'),
(394, 'Update Role.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:29:56 pm', '2024-03-31 01:29:56', '2024-03-31 01:29:56'),
(395, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:29:59 pm', '2024-03-31 01:29:59', '2024-03-31 01:29:59'),
(396, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:03:43 pm', '2024-03-31 02:03:43', '2024-03-31 02:03:43'),
(397, 'table update ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList/2', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:03:49 pm', '2024-03-31 02:03:49', '2024-03-31 02:03:49'),
(398, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:03:50 pm', '2024-03-31 02:03:50', '2024-03-31 02:03:50'),
(399, 'table update ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:03:53 pm', '2024-03-31 02:03:54', '2024-03-31 02:03:54'),
(400, 'Table list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:03:54 pm', '2024-03-31 02:03:54', '2024-03-31 02:03:54'),
(401, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:05:50 pm', '2024-03-31 02:05:50', '2024-03-31 02:05:50'),
(402, ' create permission ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:06:31 pm', '2024-03-31 02:06:31', '2024-03-31 02:06:31'),
(403, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:06:32 pm', '2024-03-31 02:06:32', '2024-03-31 02:06:32'),
(404, 'permission list', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:06:33 pm', '2024-03-31 02:06:33', '2024-03-31 02:06:33'),
(405, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:06:49 pm', '2024-03-31 02:06:50', '2024-03-31 02:06:50'),
(406, 'View Role Edit Page.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:06:53 pm', '2024-03-31 02:06:53', '2024-03-31 02:06:53'),
(407, 'Update Role.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:06:59 pm', '2024-03-31 02:07:00', '2024-03-31 02:07:00'),
(408, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:07:01 pm', '2024-03-31 02:07:02', '2024-03-31 02:07:02'),
(409, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:10:19 pm', '2024-03-31 02:10:19', '2024-03-31 02:10:19');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(410, 'Unit list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/unitList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:18:09 pm', '2024-03-31 02:18:09', '2024-03-31 02:18:09'),
(411, 'Unit list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/unitList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:18:20 pm', '2024-03-31 02:18:20', '2024-03-31 02:18:20'),
(412, 'Unit list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/unitList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:18:45 pm', '2024-03-31 02:18:46', '2024-03-31 02:18:46'),
(413, 'Unit store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/unitList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:18:51 pm', '2024-03-31 02:18:51', '2024-03-31 02:18:51'),
(414, 'Unit list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/unitList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:18:52 pm', '2024-03-31 02:18:52', '2024-03-31 02:18:52'),
(415, 'Unit store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/unitList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:19:01 pm', '2024-03-31 02:19:01', '2024-03-31 02:19:01'),
(416, 'Unit list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/unitList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:19:01 pm', '2024-03-31 02:19:02', '2024-03-31 02:19:02'),
(417, 'Unit store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/unitList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:19:10 pm', '2024-03-31 02:19:11', '2024-03-31 02:19:11'),
(418, 'Unit list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/unitList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:19:11 pm', '2024-03-31 02:19:11', '2024-03-31 02:19:11'),
(419, 'Unit list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/unitList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:21:40 pm', '2024-03-31 02:21:40', '2024-03-31 02:21:40'),
(420, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:21:57 pm', '2024-03-31 02:21:57', '2024-03-31 02:21:57'),
(421, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:26:22 pm', '2024-03-31 02:26:22', '2024-03-31 02:26:22'),
(422, 'Role List.', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:29:38 pm', '2024-03-31 02:29:38', '2024-03-31 02:29:38'),
(423, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:42:08 pm', '2024-03-31 02:42:08', '2024-03-31 02:42:08'),
(424, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:43:03 pm', '2024-03-31 02:43:03', '2024-03-31 02:43:03'),
(425, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:46:01 pm', '2024-03-31 02:46:01', '2024-03-31 02:46:01'),
(426, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '02:58:52 pm', '2024-03-31 02:58:52', '2024-03-31 02:58:52'),
(431, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:02:27 pm', '2024-03-31 03:02:28', '2024-03-31 03:02:28'),
(432, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:03:30 pm', '2024-03-31 03:03:31', '2024-03-31 03:03:31'),
(434, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:03:43 pm', '2024-03-31 03:03:43', '2024-03-31 03:03:43'),
(435, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:07:19 pm', '2024-03-31 03:07:19', '2024-03-31 03:07:19'),
(436, 'Menu store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:07:29 pm', '2024-03-31 03:07:29', '2024-03-31 03:07:29'),
(437, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:07:29 pm', '2024-03-31 03:07:30', '2024-03-31 03:07:30'),
(438, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:08:18 pm', '2024-03-31 03:08:18', '2024-03-31 03:08:18'),
(439, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:11:54 pm', '2024-03-31 03:11:54', '2024-03-31 03:11:54'),
(441, 'Menu store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:13:35 pm', '2024-03-31 03:13:35', '2024-03-31 03:13:35'),
(442, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:13:36 pm', '2024-03-31 03:13:36', '2024-03-31 03:13:36'),
(443, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:19:33 pm', '2024-03-31 03:19:34', '2024-03-31 03:19:34'),
(445, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:19:46 pm', '2024-03-31 03:19:46', '2024-03-31 03:19:46'),
(447, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:20:57 pm', '2024-03-31 03:20:57', '2024-03-31 03:20:57'),
(448, 'Menu store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:21:23 pm', '2024-03-31 03:21:23', '2024-03-31 03:21:23'),
(449, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:21:24 pm', '2024-03-31 03:21:24', '2024-03-31 03:21:24'),
(450, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:23:34 pm', '2024-03-31 03:23:34', '2024-03-31 03:23:34'),
(453, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:29:23 pm', '2024-03-31 03:29:24', '2024-03-31 03:29:24'),
(454, 'Menu store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:30:04 pm', '2024-03-31 03:30:04', '2024-03-31 03:30:04'),
(455, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:30:05 pm', '2024-03-31 03:30:06', '2024-03-31 03:30:06'),
(456, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:35:25 pm', '2024-03-31 03:35:25', '2024-03-31 03:35:25'),
(457, 'Menu store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:35:33 pm', '2024-03-31 03:35:34', '2024-03-31 03:35:34'),
(458, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:35:34 pm', '2024-03-31 03:35:34', '2024-03-31 03:35:34'),
(459, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:37:48 pm', '2024-03-31 03:37:49', '2024-03-31 03:37:49'),
(460, 'Menu store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:37:58 pm', '2024-03-31 03:37:58', '2024-03-31 03:37:58'),
(461, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:37:59 pm', '2024-03-31 03:37:59', '2024-03-31 03:37:59'),
(462, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:38:52 pm', '2024-03-31 03:38:53', '2024-03-31 03:38:53'),
(463, 'Menu store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:39:04 pm', '2024-03-31 03:39:04', '2024-03-31 03:39:04'),
(464, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:39:05 pm', '2024-03-31 03:39:05', '2024-03-31 03:39:05'),
(465, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:40:17 pm', '2024-03-31 03:40:17', '2024-03-31 03:40:17'),
(466, 'Menu store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:40:25 pm', '2024-03-31 03:40:26', '2024-03-31 03:40:26'),
(467, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '03:40:26 pm', '2024-03-31 03:40:26', '2024-03-31 03:40:26'),
(468, 'view dashboard', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:09:29 am', '2024-03-31 23:09:30', '2024-03-31 23:09:30'),
(469, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:09:41 am', '2024-03-31 23:09:42', '2024-03-31 23:09:42'),
(470, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:33:43 am', '2024-03-31 23:33:44', '2024-03-31 23:33:44'),
(471, 'Menu store ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:45:42 am', '2024-03-31 23:45:43', '2024-03-31 23:45:43'),
(472, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:45:43 am', '2024-03-31 23:45:43', '2024-03-31 23:45:43'),
(473, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:49:30 am', '2024-03-31 23:49:31', '2024-03-31 23:49:31'),
(474, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:58:55 am', '2024-03-31 23:58:55', '2024-03-31 23:58:55'),
(475, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '11:59:22 am', '2024-03-31 23:59:22', '2024-03-31 23:59:22'),
(476, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:01:06 pm', '2024-04-01 00:01:06', '2024-04-01 00:01:06'),
(477, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:02:46 pm', '2024-04-01 00:02:46', '2024-04-01 00:02:46'),
(478, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:25:20 pm', '2024-04-01 00:25:20', '2024-04-01 00:25:20'),
(479, 'Menu delete ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/8', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:25:24 pm', '2024-04-01 00:25:24', '2024-04-01 00:25:24'),
(480, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:25:24 pm', '2024-04-01 00:25:25', '2024-04-01 00:25:25'),
(481, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:29:38 pm', '2024-04-01 00:29:38', '2024-04-01 00:29:38'),
(482, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:30:12 pm', '2024-04-01 00:30:12', '2024-04-01 00:30:12'),
(483, 'Menu Edit ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/9/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:30:18 pm', '2024-04-01 00:30:19', '2024-04-01 00:30:19'),
(485, 'Menu Edit ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/9/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:30:40 pm', '2024-04-01 00:30:40', '2024-04-01 00:30:40'),
(486, 'Menu Edit ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/9/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:31:21 pm', '2024-04-01 00:31:21', '2024-04-01 00:31:21'),
(487, 'Menu update', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/9', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:31:34 pm', '2024-04-01 00:31:35', '2024-04-01 00:31:35'),
(488, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:31:35 pm', '2024-04-01 00:31:35', '2024-04-01 00:31:35'),
(489, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:31:56 pm', '2024-04-01 00:31:56', '2024-04-01 00:31:56'),
(490, 'Food Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/foodList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:44:46 pm', '2024-04-01 00:44:46', '2024-04-01 00:44:46'),
(491, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:44:46 pm', '2024-04-01 00:44:47', '2024-04-01 00:44:47'),
(492, 'Food Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/foodList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:44:52 pm', '2024-04-01 00:44:52', '2024-04-01 00:44:52'),
(493, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:44:53 pm', '2024-04-01 00:44:53', '2024-04-01 00:44:53'),
(494, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:45:52 pm', '2024-04-01 00:45:52', '2024-04-01 00:45:52'),
(495, 'Food Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/foodList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:45:55 pm', '2024-04-01 00:45:56', '2024-04-01 00:45:56'),
(496, 'Menu list ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:45:56 pm', '2024-04-01 00:45:56', '2024-04-01 00:45:56'),
(497, 'Food Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/foodList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:46:53 pm', '2024-04-01 00:46:53', '2024-04-01 00:46:53'),
(498, 'Food Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/foodList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '12:52:12 pm', '2024-04-01 00:52:12', '2024-04-01 00:52:12'),
(499, 'Menu Add ', 'http://localhost/res/v5%28new_ui_for_admin_and_front%29/admin/menuList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '1', '01:18:13 pm', '2024-04-01 01:18:13', '2024-04-01 01:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_05_080336_create_permission_tables', 1),
(7, '2023_05_06_060503_create_system_information_table', 1),
(8, '2023_07_15_072135_create_branches_table', 1),
(9, '2023_07_15_072327_create_designation_lists_table', 1),
(10, '2023_07_15_073752_create_designation_steps_table', 1),
(11, '2023_07_15_074320_create_admins_table', 1),
(12, '2023_08_01_054043_create_job_histories_table', 1),
(13, '2023_08_22_112242_create_admin_designation_histories_table', 1),
(14, '2023_10_08_080431_create_log_activities_table', 1),
(15, '2024_03_31_051411_create_tables_table', 2),
(16, '2024_03_31_051501_create_qr_codes_table', 2),
(17, '2024_03_31_070120_create_categories_table', 3),
(18, '2024_03_31_070143_create_food_table', 3),
(19, '2024_03_31_073954_create_food_ingredients_table', 3),
(20, '2024_03_31_075247_create_units_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(3, 'App\\Models\\Admin', 3),
(4, 'App\\Models\\Admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'dashboard', 'admin', '2024-03-28 00:54:46', '2024-03-28 00:54:46'),
(2, 'dashboard.edit', 'dashboard', 'admin', '2024-03-28 00:54:46', '2024-03-28 00:54:46'),
(3, 'systemInformationAdd', 'systemInformation', 'admin', '2024-03-28 00:54:46', '2024-03-28 00:54:46'),
(4, 'systemInformationView', 'systemInformation', 'admin', '2024-03-28 00:54:47', '2024-03-28 00:54:47'),
(5, 'systemInformationDelete', 'systemInformation', 'admin', '2024-03-28 00:54:47', '2024-03-28 00:54:47'),
(6, 'systemInformationUpdate', 'systemInformation', 'admin', '2024-03-28 00:54:47', '2024-03-28 00:54:47'),
(7, 'branchAdd', 'branch', 'admin', '2024-03-28 00:54:47', '2024-03-28 00:54:47'),
(8, 'branchView', 'branch', 'admin', '2024-03-28 00:54:47', '2024-03-28 00:54:47'),
(9, 'branchDelete', 'branch', 'admin', '2024-03-28 00:54:47', '2024-03-28 00:54:47'),
(10, 'branchUpdate', 'branch', 'admin', '2024-03-28 00:54:47', '2024-03-28 00:54:47'),
(11, 'designationAdd', 'designation', 'admin', '2024-03-28 00:54:47', '2024-03-28 00:54:47'),
(12, 'designationView', 'designation', 'admin', '2024-03-28 00:54:47', '2024-03-28 00:54:47'),
(13, 'designationDelete', 'designation', 'admin', '2024-03-28 00:54:47', '2024-03-28 00:54:47'),
(14, 'designationUpdate', 'designation', 'admin', '2024-03-28 00:54:48', '2024-03-28 00:54:48'),
(15, 'designationStepAdd', 'designationStep', 'admin', '2024-03-28 00:54:48', '2024-03-28 00:54:48'),
(16, 'designationStepView', 'designationStep', 'admin', '2024-03-28 00:54:48', '2024-03-28 00:54:48'),
(17, 'designationStepDelete', 'designationStep', 'admin', '2024-03-28 00:54:48', '2024-03-28 00:54:48'),
(18, 'designationStepUpdate', 'designationStep', 'admin', '2024-03-28 00:54:48', '2024-03-28 00:54:48'),
(19, 'userAdd', 'user', 'admin', '2024-03-28 00:54:48', '2024-03-28 00:54:48'),
(20, 'userView', 'user', 'admin', '2024-03-28 00:54:48', '2024-03-28 00:54:48'),
(21, 'userDelete', 'user', 'admin', '2024-03-28 00:54:48', '2024-03-28 00:54:48'),
(22, 'userUpdate', 'user', 'admin', '2024-03-28 00:54:48', '2024-03-28 00:54:48'),
(23, 'roleAdd', 'role', 'admin', '2024-03-28 00:54:49', '2024-03-28 00:54:49'),
(24, 'roleView', 'role', 'admin', '2024-03-28 00:54:49', '2024-03-28 00:54:49'),
(25, 'roleDelete', 'role', 'admin', '2024-03-28 00:54:49', '2024-03-28 00:54:49'),
(26, 'roleUpdate', 'role', 'admin', '2024-03-28 00:54:49', '2024-03-28 00:54:49'),
(27, 'permissionAdd', 'permission', 'admin', '2024-03-28 00:54:49', '2024-03-28 00:54:49'),
(28, 'permissionView', 'permission', 'admin', '2024-03-28 00:54:49', '2024-03-28 00:54:49'),
(29, 'permissionDelete', 'permission', 'admin', '2024-03-28 00:54:49', '2024-03-28 00:54:49'),
(30, 'permissionUpdate', 'permission', 'admin', '2024-03-28 00:54:49', '2024-03-28 00:54:49'),
(31, 'profile.view', 'profile', 'admin', '2024-03-28 00:54:49', '2024-03-28 00:54:49'),
(32, 'profile.edit', 'profile', 'admin', '2024-03-28 00:54:49', '2024-03-28 00:54:49'),
(33, 'tableAdd', 'table', 'admin', NULL, NULL),
(34, 'tableView', 'table', 'admin', NULL, NULL),
(35, 'tableDelete', 'table', 'admin', NULL, NULL),
(36, 'tableUpdate', 'table', 'admin', NULL, NULL),
(37, 'qrAdd', 'QrCode', 'admin', NULL, NULL),
(38, 'qrView', 'QrCode', 'admin', NULL, NULL),
(39, 'qrDelete', 'QrCode', 'admin', NULL, NULL),
(40, 'qrUpdate', 'QrCode', 'admin', NULL, NULL),
(41, 'foodAdd', 'Food', 'admin', NULL, NULL),
(42, 'foodView', 'Food', 'admin', NULL, NULL),
(43, 'foodDelete', 'Food', 'admin', NULL, NULL),
(44, 'foodUpdate', 'Food', 'admin', NULL, NULL),
(45, 'menuAdd', 'Menu', 'admin', NULL, NULL),
(46, 'menuView', 'Menu', 'admin', NULL, NULL),
(47, 'menuDelete', 'Menu', 'admin', NULL, NULL),
(48, 'menuUpdate', 'Menu', 'admin', NULL, NULL),
(49, 'unitAdd', 'Unit', 'admin', NULL, NULL),
(50, 'unitView', 'Unit', 'admin', NULL, NULL),
(51, 'unitDelete', 'Unit', 'admin', NULL, NULL),
(52, 'unitUpdate', 'Unit', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qr_codes`
--

CREATE TABLE `qr_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2024-03-28 00:54:46', '2024-03-28 00:54:46'),
(2, 'admin', 'admin', '2024-03-28 00:54:46', '2024-03-28 00:54:46'),
(3, 'editor', 'admin', '2024-03-28 00:54:46', '2024-03-28 00:54:46'),
(4, 'user', 'admin', '2024-03-28 00:54:46', '2024-03-28 00:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_information`
--

CREATE TABLE `system_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `system_name` varchar(255) NOT NULL,
  `system_phone` varchar(255) NOT NULL,
  `system_email` varchar(255) NOT NULL,
  `system_address` text NOT NULL,
  `system_url` text NOT NULL,
  `system_admin_url` text DEFAULT NULL,
  `system_logo` varchar(255) NOT NULL,
  `system_icon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_information`
--

INSERT INTO `system_information` (`id`, `system_name`, `system_phone`, `system_email`, `system_address`, `system_url`, `system_admin_url`, `system_logo`, `system_icon`, `created_at`, `updated_at`) VALUES
(1, 'FoodieScan', '11111111111', 'farukch50@gmail.com', 'বনানী ,ঢাকা', '#', '#', 'public/uploads/171177893420240330logo-full.png', 'public/uploads/171177882520240330favicon.png', '2024-03-30 00:07:06', '2024-03-30 00:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `table_slug` varchar(255) DEFAULT NULL,
  `admin_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `table_slug`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'tableOne', 'tableone', '3', '2024-03-31 00:13:58', '2024-03-31 02:03:54'),
(2, 'tableTwo', 'tabletwo', '3', '2024-03-31 00:15:07', '2024-03-31 02:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_name`, `created_at`, `updated_at`) VALUES
(1, 'KG', '2024-03-31 02:18:51', '2024-03-31 02:18:51'),
(2, 'gram', '2024-03-31 02:19:01', '2024-03-31 02:19:01'),
(3, 'Liter', '2024-03-31 02:19:11', '2024-03-31 02:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_designation_histories`
--
ALTER TABLE `admin_designation_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_lists`
--
ALTER TABLE `designation_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation_lists_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `designation_steps`
--
ALTER TABLE `designation_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation_steps_designation_list_id_foreign` (`designation_list_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_ingredients`
--
ALTER TABLE `food_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_histories`
--
ALTER TABLE `job_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_histories_admin_id_foreign` (`admin_id`),
  ADD KEY `job_histories_designation_list_id_foreign` (`designation_list_id`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `qr_codes`
--
ALTER TABLE `qr_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `system_information`
--
ALTER TABLE `system_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_designation_histories`
--
ALTER TABLE `admin_designation_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `designation_lists`
--
ALTER TABLE `designation_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designation_steps`
--
ALTER TABLE `designation_steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_ingredients`
--
ALTER TABLE `food_ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_histories`
--
ALTER TABLE `job_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qr_codes`
--
ALTER TABLE `qr_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_information`
--
ALTER TABLE `system_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `designation_lists`
--
ALTER TABLE `designation_lists`
  ADD CONSTRAINT `designation_lists_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `designation_steps`
--
ALTER TABLE `designation_steps`
  ADD CONSTRAINT `designation_steps_designation_list_id_foreign` FOREIGN KEY (`designation_list_id`) REFERENCES `designation_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_histories`
--
ALTER TABLE `job_histories`
  ADD CONSTRAINT `job_histories_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_histories_designation_list_id_foreign` FOREIGN KEY (`designation_list_id`) REFERENCES `designation_lists` (`id`) ON DELETE CASCADE;

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
