-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 01:32 PM
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
-- Database: `ctgresv1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_name_ban` varchar(255) NOT NULL,
  `admin_mobile` varchar(255) NOT NULL,
  `designation_list_id` varchar(255) DEFAULT NULL,
  `admin_sign` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `nid_number` varchar(255) DEFAULT NULL,
  `nid_image` text DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `admin_image` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `admin_email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_name`, `admin_name_ban`, `admin_mobile`, `designation_list_id`, `admin_sign`, `address`, `nid_number`, `nid_image`, `present_address`, `admin_image`, `email`, `admin_email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super admin1', 'super admin ban', '123456789', '1', NULL, NULL, NULL, NULL, NULL, 'public/uploads/1714371684202404292024-26-0417141156753614081457.png', 'superadmin@gmail.com', NULL, '$2y$10$.URaGgaWW5DvbE0VzQ65neMENJKRmENkirMYdCFhCvDcjdfiaNX/W', NULL, '2024-04-28 23:11:45', '2024-04-29 00:21:24');

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
(1, 'super admin', 'super admin', NULL, '2024-04-28 23:11:45', '2024-04-28 23:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `priority` text NOT NULL,
  `web_image` text NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `priority`, `web_image`, `category_name`, `category_slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'public/uploads/categoryImage/2024-29-0417143775602981785789.jpg', '2', 'public/uploads/categoryImage/2024-29-0417143775607862158458.png', 'cat1', 'cat1', '1', '2024-04-29 01:33:30', '2024-04-29 04:35:27'),
(2, 'public/uploads/categoryImage/2024-29-0417143776139444493007.png', '1', 'public/uploads/categoryImage/2024-29-0417143776141159745669.png', 'cat2', 'cat2', '1', '2024-04-29 02:00:14', '2024-04-29 03:43:27'),
(3, 'public/uploads/categoryImage/2024-29-0417143776463199055967.png', '3', 'public/uploads/categoryImage/2024-29-0417143776464354395267.png', 'cat3', 'cat3', '1', '2024-04-29 02:00:46', '2024-04-29 02:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `reward_point` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designation_lists`
--

CREATE TABLE `designation_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_name` varchar(255) NOT NULL,
  `designation_serial` varchar(255) DEFAULT NULL,
  `designation_detail` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designation_lists`
--

INSERT INTO `designation_lists` (`id`, `branch_id`, `designation_name`, `designation_serial`, `designation_detail`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'super admin', '1', NULL, NULL, '2024-04-28 23:11:45', '2024-04-28 23:11:45');

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
(1, 1, 'super admin', 'super admin', '2024-04-28 23:11:45', '2024-04-28 23:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_category_name` varchar(255) NOT NULL,
  `expense_category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_type_name` varchar(255) NOT NULL,
  `leave_type_slug` varchar(255) NOT NULL,
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
(1, 'forgetPassword', 'http://localhost/ctgResV1/admin/forgetPassword', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:18:01 am', '2024-04-28 23:18:03', '2024-04-28 23:18:03'),
(2, 'forgetPassword', 'http://localhost/ctgResV1/admin/forgetPassword', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:20:20 am', '2024-04-28 23:20:21', '2024-04-28 23:20:21'),
(3, 'forgetPassword', 'http://localhost/ctgResV1/admin/forgetPassword', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:47:04 am', '2024-04-28 23:47:05', '2024-04-28 23:47:05'),
(4, 'Logged In.', 'http://localhost/ctgResV1/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:02:44 pm', '2024-04-29 00:02:44', '2024-04-29 00:02:44'),
(5, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:02:46 pm', '2024-04-29 00:02:46', '2024-04-29 00:02:46'),
(6, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:02:52 pm', '2024-04-29 00:02:52', '2024-04-29 00:02:52'),
(7, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:02:53 pm', '2024-04-29 00:02:53', '2024-04-29 00:02:53'),
(8, 'designation  list ', 'http://localhost/ctgResV1/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:03:45 pm', '2024-04-29 00:03:45', '2024-04-29 00:03:45'),
(9, 'forgetPassword', 'http://localhost/ctgResV1/admin/forgetPassword', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:03:48 pm', '2024-04-29 00:03:48', '2024-04-29 00:03:48'),
(10, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:03:49 pm', '2024-04-29 00:03:49', '2024-04-29 00:03:49'),
(11, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:03:50 pm', '2024-04-29 00:03:51', '2024-04-29 00:03:51'),
(12, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:03:51 pm', '2024-04-29 00:03:51', '2024-04-29 00:03:51'),
(13, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:03:52 pm', '2024-04-29 00:03:53', '2024-04-29 00:03:53'),
(14, 'designation  list ', 'http://localhost/ctgResV1/admin/designationList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:04:43 pm', '2024-04-29 00:04:43', '2024-04-29 00:04:43'),
(15, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:04:45 pm', '2024-04-29 00:04:45', '2024-04-29 00:04:45'),
(16, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:04:46 pm', '2024-04-29 00:04:47', '2024-04-29 00:04:47'),
(17, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:04:47 pm', '2024-04-29 00:04:48', '2024-04-29 00:04:48'),
(18, 'View System Information.', 'http://localhost/ctgResV1/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:06:04 pm', '2024-04-29 00:06:05', '2024-04-29 00:06:05'),
(19, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:06:07 pm', '2024-04-29 00:06:07', '2024-04-29 00:06:07'),
(20, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:06:09 pm', '2024-04-29 00:06:09', '2024-04-29 00:06:09'),
(21, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:06:10 pm', '2024-04-29 00:06:10', '2024-04-29 00:06:10'),
(22, 'System  Info Update.', 'http://localhost/ctgResV1/admin/systemInformation', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:07:09 pm', '2024-04-29 00:07:09', '2024-04-29 00:07:09'),
(23, 'View System Information.', 'http://localhost/ctgResV1/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:07:10 pm', '2024-04-29 00:07:10', '2024-04-29 00:07:10'),
(24, 'System  Info Update.', 'http://localhost/ctgResV1/admin/systemInformation/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:08:01 pm', '2024-04-29 00:08:02', '2024-04-29 00:08:02'),
(25, 'View System Information.', 'http://localhost/ctgResV1/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:08:02 pm', '2024-04-29 00:08:02', '2024-04-29 00:08:02'),
(32, 'Profile Update.', 'http://localhost/ctgResV1/admin/setting', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:21:13 pm', '2024-04-29 00:21:14', '2024-04-29 00:21:14'),
(33, 'Profile Update.', 'http://localhost/ctgResV1/admin/setting', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:21:23 pm', '2024-04-29 00:21:24', '2024-04-29 00:21:24'),
(34, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:21:47 pm', '2024-04-29 00:21:47', '2024-04-29 00:21:47'),
(35, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:30:13 pm', '2024-04-29 00:30:14', '2024-04-29 00:30:14'),
(36, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:30:48 pm', '2024-04-29 00:30:49', '2024-04-29 00:30:49'),
(37, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:32:16 pm', '2024-04-29 00:32:16', '2024-04-29 00:32:16'),
(38, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:32:34 pm', '2024-04-29 00:32:34', '2024-04-29 00:32:34'),
(39, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:33:06 pm', '2024-04-29 00:33:06', '2024-04-29 00:33:06'),
(40, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:33:34 pm', '2024-04-29 00:33:34', '2024-04-29 00:33:34'),
(41, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:35:34 pm', '2024-04-29 00:35:34', '2024-04-29 00:35:34'),
(42, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:36:25 pm', '2024-04-29 00:36:25', '2024-04-29 00:36:25'),
(43, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:43:44 pm', '2024-04-29 00:43:44', '2024-04-29 00:43:44'),
(44, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:43:51 pm', '2024-04-29 00:43:51', '2024-04-29 00:43:51'),
(45, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:44:15 pm', '2024-04-29 00:44:15', '2024-04-29 00:44:15'),
(46, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:44:38 pm', '2024-04-29 00:44:38', '2024-04-29 00:44:38'),
(47, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:46:45 pm', '2024-04-29 00:46:45', '2024-04-29 00:46:45'),
(48, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:48:01 pm', '2024-04-29 00:48:02', '2024-04-29 00:48:02'),
(49, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:49:15 pm', '2024-04-29 00:49:15', '2024-04-29 00:49:15'),
(50, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:50:56 pm', '2024-04-29 00:50:56', '2024-04-29 00:50:56'),
(51, 'view profile.', 'http://localhost/ctgResV1/admin/profile', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:51:12 pm', '2024-04-29 00:51:12', '2024-04-29 00:51:12'),
(52, 'View System Information.', 'http://localhost/ctgResV1/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:02:50 pm', '2024-04-29 01:02:51', '2024-04-29 01:02:51'),
(53, 'View System Information.', 'http://localhost/ctgResV1/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:02:58 pm', '2024-04-29 01:02:58', '2024-04-29 01:02:58'),
(54, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:03:11 pm', '2024-04-29 01:03:11', '2024-04-29 01:03:11'),
(55, ' create permission ', 'http://localhost/ctgResV1/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:03:58 pm', '2024-04-29 01:03:58', '2024-04-29 01:03:58'),
(56, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:03:59 pm', '2024-04-29 01:03:59', '2024-04-29 01:03:59'),
(57, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:03:59 pm', '2024-04-29 01:04:00', '2024-04-29 01:04:00'),
(58, ' create permission ', 'http://localhost/ctgResV1/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:04:48 pm', '2024-04-29 01:04:48', '2024-04-29 01:04:48'),
(59, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:04:48 pm', '2024-04-29 01:04:49', '2024-04-29 01:04:49'),
(60, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:04:49 pm', '2024-04-29 01:04:49', '2024-04-29 01:04:49'),
(61, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:05:07 pm', '2024-04-29 01:05:07', '2024-04-29 01:05:07'),
(62, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:05:14 pm', '2024-04-29 01:05:14', '2024-04-29 01:05:14'),
(63, 'View Role Edit Page.', 'http://localhost/ctgResV1/admin/role/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:05:19 pm', '2024-04-29 01:05:19', '2024-04-29 01:05:19'),
(64, 'Update Role.', 'http://localhost/ctgResV1/admin/role/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:05:29 pm', '2024-04-29 01:05:29', '2024-04-29 01:05:29'),
(65, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:05:31 pm', '2024-04-29 01:05:32', '2024-04-29 01:05:32'),
(66, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:06:19 pm', '2024-04-29 01:06:19', '2024-04-29 01:06:19'),
(67, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:08:43 pm', '2024-04-29 01:08:43', '2024-04-29 01:08:43'),
(68, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:09:23 pm', '2024-04-29 01:09:24', '2024-04-29 01:09:24'),
(69, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:11:34 pm', '2024-04-29 01:11:35', '2024-04-29 01:11:35'),
(70, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:13:58 pm', '2024-04-29 01:13:59', '2024-04-29 01:13:59'),
(71, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:14:22 pm', '2024-04-29 01:14:22', '2024-04-29 01:14:22'),
(72, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:16:24 pm', '2024-04-29 01:16:25', '2024-04-29 01:16:25'),
(73, 'Create Role.', 'http://localhost/ctgResV1/admin/role/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:16:31 pm', '2024-04-29 01:16:31', '2024-04-29 01:16:31'),
(74, 'Create Role.', 'http://localhost/ctgResV1/admin/role/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:17:40 pm', '2024-04-29 01:17:41', '2024-04-29 01:17:41'),
(75, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:17:47 pm', '2024-04-29 01:17:48', '2024-04-29 01:17:48'),
(76, 'View Role Edit Page.', 'http://localhost/ctgResV1/admin/role/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:17:52 pm', '2024-04-29 01:17:52', '2024-04-29 01:17:52'),
(77, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:18:26 pm', '2024-04-29 01:18:27', '2024-04-29 01:18:27'),
(78, 'Create Role.', 'http://localhost/ctgResV1/admin/role/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:18:31 pm', '2024-04-29 01:18:31', '2024-04-29 01:18:31'),
(79, 'View System Information.', 'http://localhost/ctgResV1/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:18:43 pm', '2024-04-29 01:18:43', '2024-04-29 01:18:43'),
(80, 'View System Information.', 'http://localhost/ctgResV1/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:20:22 pm', '2024-04-29 01:20:22', '2024-04-29 01:20:22'),
(81, 'create employee ', 'http://localhost/ctgResV1/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:20:43 pm', '2024-04-29 01:20:43', '2024-04-29 01:20:43'),
(82, 'view employee list', 'http://localhost/ctgResV1/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:20:52 pm', '2024-04-29 01:20:52', '2024-04-29 01:20:52'),
(83, 'view employee list', 'http://localhost/ctgResV1/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:21:39 pm', '2024-04-29 01:21:40', '2024-04-29 01:21:40'),
(84, 'view employee list', 'http://localhost/ctgResV1/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:22:10 pm', '2024-04-29 01:22:10', '2024-04-29 01:22:10'),
(85, 'create employee ', 'http://localhost/ctgResV1/admin/customer/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:22:18 pm', '2024-04-29 01:22:18', '2024-04-29 01:22:18'),
(86, 'view employee list', 'http://localhost/ctgResV1/admin/customer', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:22:22 pm', '2024-04-29 01:22:22', '2024-04-29 01:22:22'),
(87, 'view employee list', 'http://localhost/ctgResV1/admin/customer', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:22:56 pm', '2024-04-29 01:22:56', '2024-04-29 01:22:56'),
(88, 'create employee ', 'http://localhost/ctgResV1/admin/customer/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:23:01 pm', '2024-04-29 01:23:01', '2024-04-29 01:23:01'),
(89, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:23:31 pm', '2024-04-29 01:23:32', '2024-04-29 01:23:32'),
(90, ' create permission ', 'http://localhost/ctgResV1/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:24:11 pm', '2024-04-29 01:24:12', '2024-04-29 01:24:12'),
(91, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:24:12 pm', '2024-04-29 01:24:12', '2024-04-29 01:24:12'),
(92, ' create permission ', 'http://localhost/ctgResV1/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:25:02 pm', '2024-04-29 01:25:02', '2024-04-29 01:25:02'),
(93, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:25:03 pm', '2024-04-29 01:25:03', '2024-04-29 01:25:03'),
(94, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:25:04 pm', '2024-04-29 01:25:04', '2024-04-29 01:25:04'),
(95, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:25:20 pm', '2024-04-29 01:25:20', '2024-04-29 01:25:20'),
(96, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:25:39 pm', '2024-04-29 01:25:39', '2024-04-29 01:25:39'),
(97, 'View Role Edit Page.', 'http://localhost/ctgResV1/admin/role/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:25:43 pm', '2024-04-29 01:25:43', '2024-04-29 01:25:43'),
(98, 'Update Role.', 'http://localhost/ctgResV1/admin/role/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:25:50 pm', '2024-04-29 01:25:50', '2024-04-29 01:25:50'),
(99, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:25:53 pm', '2024-04-29 01:25:53', '2024-04-29 01:25:53'),
(100, 'Table list ', 'http://localhost/ctgResV1/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:26:01 pm', '2024-04-29 01:26:01', '2024-04-29 01:26:01'),
(101, 'Table list ', 'http://localhost/ctgResV1/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:27:34 pm', '2024-04-29 01:27:35', '2024-04-29 01:27:35'),
(102, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:28:22 pm', '2024-04-29 01:28:22', '2024-04-29 01:28:22'),
(103, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:28:57 pm', '2024-04-29 01:28:57', '2024-04-29 01:28:57'),
(104, ' create permission ', 'http://localhost/ctgResV1/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:29:34 pm', '2024-04-29 01:29:34', '2024-04-29 01:29:34'),
(105, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:29:35 pm', '2024-04-29 01:29:35', '2024-04-29 01:29:35'),
(106, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:29:35 pm', '2024-04-29 01:29:36', '2024-04-29 01:29:36'),
(107, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:29:52 pm', '2024-04-29 01:29:52', '2024-04-29 01:29:52'),
(108, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:29:57 pm', '2024-04-29 01:29:58', '2024-04-29 01:29:58'),
(109, 'View Role Edit Page.', 'http://localhost/ctgResV1/admin/role/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:30:02 pm', '2024-04-29 01:30:02', '2024-04-29 01:30:02'),
(110, 'Update Role.', 'http://localhost/ctgResV1/admin/role/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:30:09 pm', '2024-04-29 01:30:09', '2024-04-29 01:30:09'),
(111, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:30:12 pm', '2024-04-29 01:30:12', '2024-04-29 01:30:12'),
(112, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:30:18 pm', '2024-04-29 01:30:18', '2024-04-29 01:30:18'),
(114, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:31:18 pm', '2024-04-29 01:31:18', '2024-04-29 01:31:18'),
(115, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:33:12 pm', '2024-04-29 01:33:13', '2024-04-29 01:33:13'),
(116, 'Category store ', 'http://localhost/ctgResV1/admin/categoryList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:33:30 pm', '2024-04-29 01:33:30', '2024-04-29 01:33:30'),
(117, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:33:31 pm', '2024-04-29 01:33:31', '2024-04-29 01:33:31'),
(118, 'category Edit ', 'http://localhost/ctgResV1/admin/categoryList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:33:43 pm', '2024-04-29 01:33:44', '2024-04-29 01:33:44'),
(119, 'category Edit ', 'http://localhost/ctgResV1/admin/categoryList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:35:05 pm', '2024-04-29 01:35:05', '2024-04-29 01:35:05'),
(120, 'category Edit ', 'http://localhost/ctgResV1/admin/categoryList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:43:18 pm', '2024-04-29 01:43:18', '2024-04-29 01:43:18'),
(121, 'category Edit ', 'http://localhost/ctgResV1/admin/categoryList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:46:09 pm', '2024-04-29 01:46:09', '2024-04-29 01:46:09'),
(122, 'category Edit ', 'http://localhost/ctgResV1/admin/categoryList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:57:26 pm', '2024-04-29 01:57:26', '2024-04-29 01:57:26'),
(124, 'category Edit ', 'http://localhost/ctgResV1/admin/categoryList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:57:46 pm', '2024-04-29 01:57:46', '2024-04-29 01:57:46'),
(126, 'category Edit ', 'http://localhost/ctgResV1/admin/categoryList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:57:55 pm', '2024-04-29 01:57:55', '2024-04-29 01:57:55'),
(127, 'category Edit ', 'http://localhost/ctgResV1/admin/categoryList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:58:30 pm', '2024-04-29 01:58:30', '2024-04-29 01:58:30'),
(129, 'category Edit ', 'http://localhost/ctgResV1/admin/categoryList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:58:42 pm', '2024-04-29 01:58:43', '2024-04-29 01:58:43'),
(130, 'category Edit ', 'http://localhost/ctgResV1/admin/categoryList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:59:08 pm', '2024-04-29 01:59:08', '2024-04-29 01:59:08'),
(131, 'category update', 'http://localhost/ctgResV1/admin/categoryList/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:59:20 pm', '2024-04-29 01:59:20', '2024-04-29 01:59:20'),
(132, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:59:20 pm', '2024-04-29 01:59:21', '2024-04-29 01:59:21'),
(133, 'Category store ', 'http://localhost/ctgResV1/admin/categoryList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:00:13 pm', '2024-04-29 02:00:13', '2024-04-29 02:00:13'),
(134, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:00:14 pm', '2024-04-29 02:00:14', '2024-04-29 02:00:14'),
(135, 'Category store ', 'http://localhost/ctgResV1/admin/categoryList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:00:46 pm', '2024-04-29 02:00:46', '2024-04-29 02:00:46'),
(136, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:00:46 pm', '2024-04-29 02:00:47', '2024-04-29 02:00:47'),
(137, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:18:45 pm', '2024-04-29 02:18:45', '2024-04-29 02:18:45'),
(138, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:19:16 pm', '2024-04-29 02:19:16', '2024-04-29 02:19:16'),
(139, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:24:38 pm', '2024-04-29 02:24:38', '2024-04-29 02:24:38'),
(140, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '1', '02:25:41 pm', '2024-04-29 02:25:41', '2024-04-29 02:25:41'),
(141, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:28:38 pm', '2024-04-29 02:28:38', '2024-04-29 02:28:38'),
(142, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:31:59 pm', '2024-04-29 02:31:59', '2024-04-29 02:31:59'),
(143, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '1', '02:33:21 pm', '2024-04-29 02:33:21', '2024-04-29 02:33:21'),
(144, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '1', '02:33:52 pm', '2024-04-29 02:33:52', '2024-04-29 02:33:52'),
(145, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:38:38 pm', '2024-04-29 02:38:39', '2024-04-29 02:38:39'),
(146, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:40:05 pm', '2024-04-29 02:40:05', '2024-04-29 02:40:05'),
(147, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:40:10 pm', '2024-04-29 02:40:10', '2024-04-29 02:40:10'),
(148, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:25:51 pm', '2024-04-29 03:25:53', '2024-04-29 03:25:53'),
(149, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:26:43 pm', '2024-04-29 03:26:43', '2024-04-29 03:26:43'),
(150, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:27:16 pm', '2024-04-29 03:27:16', '2024-04-29 03:27:16'),
(151, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:43:04 pm', '2024-04-29 03:43:04', '2024-04-29 03:43:04'),
(152, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:43:23 pm', '2024-04-29 03:43:23', '2024-04-29 03:43:23'),
(153, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:43:27 pm', '2024-04-29 03:43:27', '2024-04-29 03:43:27'),
(154, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '1', '03:47:21 pm', '2024-04-29 03:47:22', '2024-04-29 03:47:22'),
(155, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '1', '03:49:06 pm', '2024-04-29 03:49:06', '2024-04-29 03:49:06'),
(156, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '1', '03:50:37 pm', '2024-04-29 03:50:37', '2024-04-29 03:50:37'),
(157, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '1', '03:50:44 pm', '2024-04-29 03:50:44', '2024-04-29 03:50:44'),
(158, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:00:16 pm', '2024-04-29 04:00:16', '2024-04-29 04:00:16');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(159, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:02:43 pm', '2024-04-29 04:02:44', '2024-04-29 04:02:44'),
(160, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:02:49 pm', '2024-04-29 04:02:49', '2024-04-29 04:02:49'),
(161, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:02:55 pm', '2024-04-29 04:02:55', '2024-04-29 04:02:55'),
(162, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:04:53 pm', '2024-04-29 04:04:53', '2024-04-29 04:04:53'),
(163, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:06:08 pm', '2024-04-29 04:06:08', '2024-04-29 04:06:08'),
(164, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:07:51 pm', '2024-04-29 04:07:52', '2024-04-29 04:07:52'),
(165, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:07:57 pm', '2024-04-29 04:07:57', '2024-04-29 04:07:57'),
(166, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:08:40 pm', '2024-04-29 04:08:40', '2024-04-29 04:08:40'),
(167, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:09:44 pm', '2024-04-29 04:09:44', '2024-04-29 04:09:44'),
(168, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:09:50 pm', '2024-04-29 04:09:50', '2024-04-29 04:09:50'),
(169, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:18:13 pm', '2024-04-29 04:18:13', '2024-04-29 04:18:13'),
(170, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:20:07 pm', '2024-04-29 04:20:08', '2024-04-29 04:20:08'),
(171, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:34:30 pm', '2024-04-29 04:34:30', '2024-04-29 04:34:30'),
(172, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:34:39 pm', '2024-04-29 04:34:39', '2024-04-29 04:34:39'),
(173, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:35:19 pm', '2024-04-29 04:35:19', '2024-04-29 04:35:19'),
(174, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:35:22 pm', '2024-04-29 04:35:23', '2024-04-29 04:35:23'),
(175, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:35:27 pm', '2024-04-29 04:35:28', '2024-04-29 04:35:28'),
(176, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:35:40 pm', '2024-04-29 04:35:40', '2024-04-29 04:35:40'),
(177, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:35:40 pm', '2024-04-29 04:35:40', '2024-04-29 04:35:40'),
(178, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:35:46 pm', '2024-04-29 04:35:47', '2024-04-29 04:35:47'),
(179, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:35:47 pm', '2024-04-29 04:35:47', '2024-04-29 04:35:47'),
(180, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:35:57 pm', '2024-04-29 04:35:58', '2024-04-29 04:35:58'),
(181, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:35:58 pm', '2024-04-29 04:35:58', '2024-04-29 04:35:58'),
(182, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:49:44 pm', '2024-04-29 04:49:45', '2024-04-29 04:49:45'),
(183, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:49:45 pm', '2024-04-29 04:49:45', '2024-04-29 04:49:45'),
(184, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:50:32 pm', '2024-04-29 04:50:32', '2024-04-29 04:50:32'),
(185, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:53:28 pm', '2024-04-29 04:53:29', '2024-04-29 04:53:29'),
(186, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:53:57 pm', '2024-04-29 04:53:58', '2024-04-29 04:53:58'),
(187, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:55:32 pm', '2024-04-29 04:55:33', '2024-04-29 04:55:33'),
(188, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:55:38 pm', '2024-04-29 04:55:39', '2024-04-29 04:55:39'),
(189, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:13:03 pm', '2024-04-29 05:13:04', '2024-04-29 05:13:04'),
(190, 'SubCategory store ', 'http://localhost/ctgResV1/admin/subcategoryList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:13:14 pm', '2024-04-29 05:13:14', '2024-04-29 05:13:14'),
(191, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:13:14 pm', '2024-04-29 05:13:15', '2024-04-29 05:13:15'),
(192, 'SubCategory store ', 'http://localhost/ctgResV1/admin/subcategoryList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:13:37 pm', '2024-04-29 05:13:37', '2024-04-29 05:13:37'),
(193, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:13:37 pm', '2024-04-29 05:13:37', '2024-04-29 05:13:37'),
(194, 'SubCategory store ', 'http://localhost/ctgResV1/admin/subcategoryList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:13:48 pm', '2024-04-29 05:13:48', '2024-04-29 05:13:48'),
(195, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:13:48 pm', '2024-04-29 05:13:48', '2024-04-29 05:13:48'),
(196, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:13:57 pm', '2024-04-29 05:13:57', '2024-04-29 05:13:57'),
(197, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:14:10 pm', '2024-04-29 05:14:11', '2024-04-29 05:14:11'),
(198, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:14:15 pm', '2024-04-29 05:14:16', '2024-04-29 05:14:16'),
(199, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:26:29 pm', '2024-04-29 05:26:29', '2024-04-29 05:26:29'),
(201, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:26:59 pm', '2024-04-29 05:26:59', '2024-04-29 05:26:59');

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
(15, '2024_03_31_051411_create_tables_table', 1),
(16, '2024_03_31_051501_create_qr_codes_table', 1),
(17, '2024_03_31_070120_create_categories_table', 1),
(18, '2024_03_31_070143_create_food_table', 1),
(19, '2024_03_31_073954_create_food_ingredients_table', 1),
(20, '2024_03_31_075247_create_units_table', 1),
(21, '2024_04_02_084200_create_expense_categories_table', 1),
(22, '2024_04_02_084305_create_leave_types_table', 1),
(23, '2024_04_02_084453_create_suppliers_table', 1),
(24, '2024_04_26_063952_create_customers_table', 1),
(26, '2024_04_26_081839_create_sub_categories_table', 2);

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
(1, 'App\\Models\\Admin', 1);

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
(1, 'dashboard.view', 'dashboard', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(2, 'dashboard.edit', 'dashboard', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(3, 'systemInformationAdd', 'systemInformation', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(4, 'systemInformationView', 'systemInformation', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(5, 'systemInformationDelete', 'systemInformation', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(6, 'systemInformationUpdate', 'systemInformation', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(7, 'branchAdd', 'branch', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(8, 'branchView', 'branch', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(9, 'branchDelete', 'branch', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(10, 'branchUpdate', 'branch', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42'),
(11, 'designationAdd', 'designation', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(12, 'designationView', 'designation', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(13, 'designationDelete', 'designation', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(14, 'designationUpdate', 'designation', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(15, 'designationStepAdd', 'designationStep', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(16, 'designationStepView', 'designationStep', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(17, 'designationStepDelete', 'designationStep', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(18, 'designationStepUpdate', 'designationStep', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(19, 'userAdd', 'user', 'admin', '2024-04-28 23:11:43', '2024-04-28 23:11:43'),
(20, 'userView', 'user', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(21, 'userDelete', 'user', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(22, 'userUpdate', 'user', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(23, 'roleAdd', 'role', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(24, 'roleView', 'role', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(25, 'roleDelete', 'role', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(26, 'roleUpdate', 'role', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(27, 'permissionAdd', 'permission', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(28, 'permissionView', 'permission', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(29, 'permissionDelete', 'permission', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(30, 'permissionUpdate', 'permission', 'admin', '2024-04-28 23:11:44', '2024-04-28 23:11:44'),
(31, 'profile.view', 'profile', 'admin', '2024-04-28 23:11:45', '2024-04-28 23:11:45'),
(32, 'profile.edit', 'profile', 'admin', '2024-04-28 23:11:45', '2024-04-28 23:11:45'),
(33, 'customerAdd', 'customer', 'admin', NULL, NULL),
(34, 'customerView', 'customer', 'admin', NULL, NULL),
(35, 'customerDelete', 'customer', 'admin', NULL, NULL),
(36, 'customerUpdate', 'customer', 'admin', NULL, NULL),
(37, 'categoryAdd', 'category', 'admin', NULL, NULL),
(38, 'categoryView', 'category', 'admin', NULL, NULL),
(39, 'categoryDelete', 'category', 'admin', NULL, NULL),
(40, 'categoryUpdate', 'category', 'admin', NULL, NULL),
(41, 'tableAdd', 'table', 'admin', NULL, NULL),
(42, 'tableView', 'table', 'admin', NULL, NULL),
(43, 'tableDelete', 'table', 'admin', NULL, NULL),
(45, 'qrAdd', 'QrCode', 'admin', NULL, NULL),
(46, 'qrView', 'QrCode', 'admin', NULL, NULL),
(47, 'qrDelete', 'QrCode', 'admin', NULL, NULL),
(48, 'qrUpdate', 'QrCode', 'admin', NULL, NULL),
(49, 'subcategoryAdd', 'SubCategory', 'admin', NULL, NULL),
(50, 'subcategoryView', 'SubCategory', 'admin', NULL, NULL),
(51, 'subcategoryDelete', 'SubCategory', 'admin', NULL, NULL),
(52, 'subcategoryUpdate', 'SubCategory', 'admin', NULL, NULL);

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
(1, 'superadmin', 'admin', '2024-04-28 23:11:41', '2024-04-28 23:11:41'),
(2, 'admin', 'admin', '2024-04-28 23:11:41', '2024-04-28 23:11:41'),
(3, 'editor', 'admin', '2024-04-28 23:11:41', '2024-04-28 23:11:41'),
(4, 'user', 'admin', '2024-04-28 23:11:42', '2024-04-28 23:11:42');

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
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'sub1', 'sub1', '1', '2024-04-29 05:13:14', '2024-04-29 05:13:14'),
(2, '2', 'sub 2', 'sub-2', '1', '2024-04-29 05:13:37', '2024-04-29 05:14:10'),
(3, '3', 'sub3', 'sub3', '1', '2024-04-29 05:13:48', '2024-04-29 05:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_number` varchar(255) NOT NULL,
  `supplier_email` varchar(255) NOT NULL,
  `supplier_address` varchar(255) NOT NULL,
  `supplier_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Progga', '11111111111', 'dg@gmail.com', 'বনানী ,ঢাকা', '#', '#', 'public/uploads/171437088220240429171406003420240425logo-dark-text.png', 'public/uploads/171437082920240429171406003420240425logo-dark-text.png', '2024-04-29 00:07:10', '2024-04-29 00:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `table_slug` varchar(255) NOT NULL,
  `admin_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_lists`
--
ALTER TABLE `designation_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_steps`
--
ALTER TABLE `designation_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation_steps_designation_list_id_foreign` (`designation_list_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designation_lists`
--
ALTER TABLE `designation_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `designation_steps`
--
ALTER TABLE `designation_steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_information`
--
ALTER TABLE `system_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
