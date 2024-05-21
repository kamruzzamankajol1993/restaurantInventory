-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 01:10 PM
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
  `admin_name_ban` varchar(255) DEFAULT NULL,
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
(1, 'super admin1', 'super admin ban', '123456789', '1', NULL, NULL, NULL, NULL, NULL, 'public/uploads/1714371684202404292024-26-0417141156753614081457.png', 'superadmin@gmail.com', NULL, '$2y$10$.URaGgaWW5DvbE0VzQ65neMENJKRmENkirMYdCFhCvDcjdfiaNX/W', NULL, '2024-04-28 23:11:45', '2024-04-29 00:21:24'),
(2, 'waiter', NULL, '11111111111', '4', NULL, 'বনানী ,ঢাকা', '121212121212121', 'public/uploads/adminImage/2024-21-0517162690755682074053.png', 'বনানী ,ঢাকা', 'public/uploads/adminImage/2024-21-0517162690754949896140.png', 'waiter@gmail.com', NULL, '$2y$10$qkyzIKBd3iiM9xcWlqpexesSUO16eqckvdo7K7WS063X0KoTZafIW', NULL, '2024-05-20 23:24:35', '2024-05-20 23:24:35'),
(3, 'chef', NULL, '11111111111', '5', NULL, 'বনানী ,ঢাকা', '121212121212121', 'public/uploads/adminImage/2024-21-0517162771441358365672.png', 'বনানী ,ঢাকা', 'public/uploads/adminImage/2024-21-0517162771447765411719.png', 'chef@gmail.com', NULL, '$2y$10$SO7xj29hUS.FVaAeIBKu4ebfn4q2tCIEPgLMwG.SwGUQku6dChx7m', NULL, '2024-05-20 23:25:38', '2024-05-21 01:39:04');

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
(4, 'public/uploads/categoryImage/2024-19-0517160979459100032290.jpg', '1', 'public/uploads/categoryImage/2024-19-0517160979469202225802.png', 'pizza', 'pizza', '1', '2024-05-18 23:52:26', '2024-05-18 23:55:42'),
(6, 'public/uploads/categoryImage/2024-19-0517160979902667885936.png', '2', 'public/uploads/categoryImage/2024-19-0517160979904949928449.png', 'Burgers', 'burgers', '1', '2024-05-18 23:53:10', '2024-05-18 23:53:40'),
(7, 'public/uploads/categoryImage/2024-19-0517160980454967486376.png', '3', 'public/uploads/categoryImage/2024-19-0517160980465498787443.png', 'Drinks', 'drinks', '1', '2024-05-18 23:54:06', '2024-05-18 23:54:06'),
(8, 'public/uploads/categoryImage/2024-19-0517160981339042882949.png', '4', 'public/uploads/categoryImage/2024-19-0517160981331187429872.png', 'Set Menu', 'set-menu', '1', '2024-05-18 23:55:33', '2024-05-18 23:55:33');

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
  `admin_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone_number`, `email`, `address`, `type`, `reward_point`, `image`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'ewewqe', '11111111111', 'dg@gmail.com', 'বনানী ,ঢাকা', 'Regular', 'No', NULL, '1', '1', '2024-05-21 03:44:43', '2024-05-21 03:44:43'),
(2, 'customer One', '11111111111', 'dg@gmail.com', 'বনানী ,ঢাকা', 'Regular', 'No', NULL, '1', '1', '2024-05-21 03:45:07', '2024-05-21 03:45:07');

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
(1, 1, 'super admin', '1', NULL, NULL, '2024-04-28 23:11:45', '2024-04-28 23:11:45'),
(2, NULL, 'Admin', NULL, 'N/A', 'Active', '2024-04-30 21:14:31', '2024-04-30 21:14:31'),
(3, NULL, 'Manager', NULL, 'N/A', 'Active', '2024-04-30 21:14:47', '2024-04-30 21:14:47'),
(4, NULL, 'Waiter', NULL, 'N/A', 'Active', '2024-04-30 21:15:02', '2024-04-30 21:15:02'),
(5, NULL, 'Chef', NULL, 'N/A', 'Active', '2024-04-30 21:15:16', '2024-04-30 21:15:16');

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
(201, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:26:59 pm', '2024-04-29 05:26:59', '2024-04-29 05:26:59'),
(202, 'view dashboard', 'http://localhost/chittagongFront/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:42:40 pm', '2024-04-29 10:42:41', '2024-04-29 10:42:41'),
(203, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:17:01 pm', '2024-04-29 11:17:02', '2024-04-29 11:17:02'),
(204, ' create permission ', 'http://localhost/chittagongFront/admin/permission', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:18:00 pm', '2024-04-29 11:18:00', '2024-04-29 11:18:00'),
(205, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:18:01 pm', '2024-04-29 11:18:01', '2024-04-29 11:18:01'),
(206, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:18:02 pm', '2024-04-29 11:18:02', '2024-04-29 11:18:02'),
(207, ' create permission ', 'http://localhost/chittagongFront/admin/permission', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:19:08 pm', '2024-04-29 11:19:08', '2024-04-29 11:19:08'),
(208, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:19:09 pm', '2024-04-29 11:19:10', '2024-04-29 11:19:10'),
(209, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:19:10 pm', '2024-04-29 11:19:11', '2024-04-29 11:19:11'),
(210, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:19:33 pm', '2024-04-29 11:19:34', '2024-04-29 11:19:34'),
(211, 'View Role Edit Page.', 'http://localhost/chittagongFront/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:19:41 pm', '2024-04-29 11:19:41', '2024-04-29 11:19:41'),
(212, 'Update Role.', 'http://localhost/chittagongFront/admin/role/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:19:48 pm', '2024-04-29 11:19:49', '2024-04-29 11:19:49'),
(213, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:19:55 pm', '2024-04-29 11:19:56', '2024-04-29 11:19:56'),
(214, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:20:14 pm', '2024-04-29 11:20:15', '2024-04-29 11:20:15'),
(215, ' update permission ', 'http://localhost/chittagongFront/admin/permission/ProductAttribute', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:20:34 pm', '2024-04-29 11:20:35', '2024-04-29 11:20:35'),
(216, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:20:36 pm', '2024-04-29 11:20:36', '2024-04-29 11:20:36'),
(217, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:20:36 pm', '2024-04-29 11:20:37', '2024-04-29 11:20:37'),
(218, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:20:42 pm', '2024-04-29 11:20:42', '2024-04-29 11:20:42'),
(219, 'View Role Edit Page.', 'http://localhost/chittagongFront/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:21:18 pm', '2024-04-29 11:21:19', '2024-04-29 11:21:19'),
(220, 'View Role Edit Page.', 'http://localhost/chittagongFront/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:21:44 pm', '2024-04-29 11:21:44', '2024-04-29 11:21:44'),
(221, 'Update Role.', 'http://localhost/chittagongFront/admin/role/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:22:04 pm', '2024-04-29 11:22:05', '2024-04-29 11:22:05'),
(222, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:22:11 pm', '2024-04-29 11:22:12', '2024-04-29 11:22:12'),
(223, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:22:17 pm', '2024-04-29 11:22:18', '2024-04-29 11:22:18'),
(224, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:26:40 pm', '2024-04-29 11:26:40', '2024-04-29 11:26:40'),
(225, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:27:03 pm', '2024-04-29 11:27:03', '2024-04-29 11:27:03'),
(226, ' update permission ', 'http://localhost/chittagongFront/admin/permission/productAddOn', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:27:25 pm', '2024-04-29 11:27:25', '2024-04-29 11:27:25'),
(227, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:27:26 pm', '2024-04-29 11:27:26', '2024-04-29 11:27:26'),
(228, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:27:27 pm', '2024-04-29 11:27:27', '2024-04-29 11:27:27'),
(229, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:27:46 pm', '2024-04-29 11:27:46', '2024-04-29 11:27:46'),
(230, 'View Role Edit Page.', 'http://localhost/chittagongFront/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:27:52 pm', '2024-04-29 11:27:53', '2024-04-29 11:27:53'),
(231, 'Update Role.', 'http://localhost/chittagongFront/admin/role/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:28:01 pm', '2024-04-29 11:28:01', '2024-04-29 11:28:01'),
(232, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:28:10 pm', '2024-04-29 11:28:10', '2024-04-29 11:28:10'),
(233, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:30:48 pm', '2024-04-29 11:30:48', '2024-04-29 11:30:48'),
(234, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:40:32 pm', '2024-04-29 11:40:32', '2024-04-29 11:40:32'),
(235, ' create permission ', 'http://localhost/chittagongFront/admin/permission', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:41:30 pm', '2024-04-29 11:41:30', '2024-04-29 11:41:30'),
(236, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:41:31 pm', '2024-04-29 11:41:31', '2024-04-29 11:41:31'),
(237, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:41:32 pm', '2024-04-29 11:41:32', '2024-04-29 11:41:32'),
(238, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:41:54 pm', '2024-04-29 11:41:55', '2024-04-29 11:41:55'),
(239, 'View Role Edit Page.', 'http://localhost/chittagongFront/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:42:01 pm', '2024-04-29 11:42:02', '2024-04-29 11:42:02'),
(240, 'Update Role.', 'http://localhost/chittagongFront/admin/role/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:42:23 pm', '2024-04-29 11:42:23', '2024-04-29 11:42:23'),
(241, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:42:29 pm', '2024-04-29 11:42:30', '2024-04-29 11:42:30'),
(242, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:50:37 pm', '2024-04-29 11:50:38', '2024-04-29 11:50:38'),
(243, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:13:37 am', '2024-04-29 12:13:37', '2024-04-29 12:13:37'),
(244, ' create permission ', 'http://localhost/chittagongFront/admin/permission', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:15:25 am', '2024-04-29 12:15:26', '2024-04-29 12:15:26'),
(245, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:15:27 am', '2024-04-29 12:15:27', '2024-04-29 12:15:27'),
(246, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:15:27 am', '2024-04-29 12:15:28', '2024-04-29 12:15:28'),
(247, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:15:45 am', '2024-04-29 12:15:45', '2024-04-29 12:15:45'),
(248, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:15:52 am', '2024-04-29 12:15:52', '2024-04-29 12:15:52'),
(249, 'Create Role.', 'http://localhost/chittagongFront/admin/role/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:15:56 am', '2024-04-29 12:15:56', '2024-04-29 12:15:56'),
(250, 'View Role Edit Page.', 'http://localhost/chittagongFront/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:16:06 am', '2024-04-29 12:16:06', '2024-04-29 12:16:06'),
(251, 'Update Role.', 'http://localhost/chittagongFront/admin/role/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:16:17 am', '2024-04-29 12:16:17', '2024-04-29 12:16:17'),
(252, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:16:23 am', '2024-04-29 12:16:23', '2024-04-29 12:16:23'),
(253, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:20:06 am', '2024-04-29 12:20:06', '2024-04-29 12:20:06'),
(254, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:31:51 am', '2024-04-29 22:31:52', '2024-04-29 22:31:52'),
(255, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:32:22 am', '2024-04-29 22:32:23', '2024-04-29 22:32:23'),
(256, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:55:34 am', '2024-04-29 22:55:34', '2024-04-29 22:55:34'),
(257, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:57:05 am', '2024-04-29 22:57:05', '2024-04-29 22:57:05'),
(258, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:58:38 am', '2024-04-29 22:58:39', '2024-04-29 22:58:39'),
(259, 'Product Attribute store', 'http://localhost/ctgResV1/admin/productAttribute', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:58:46 am', '2024-04-29 22:58:46', '2024-04-29 22:58:46'),
(260, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:58:47 am', '2024-04-29 22:58:47', '2024-04-29 22:58:47'),
(261, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:00:05 am', '2024-04-29 23:00:05', '2024-04-29 23:00:05'),
(262, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:07:03 am', '2024-04-29 23:07:03', '2024-04-29 23:07:03'),
(263, 'Product Attribute Update', 'http://localhost/ctgResV1/admin/productAttribute/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:07:17 am', '2024-04-29 23:07:17', '2024-04-29 23:07:17'),
(264, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:07:17 am', '2024-04-29 23:07:18', '2024-04-29 23:07:18'),
(265, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:13:53 am', '2024-04-29 23:13:54', '2024-04-29 23:13:54'),
(266, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:14:21 am', '2024-04-29 23:14:21', '2024-04-29 23:14:21'),
(267, 'Product Attribute store', 'http://localhost/ctgResV1/admin/productAttribute', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:14:29 am', '2024-04-29 23:14:30', '2024-04-29 23:14:30'),
(268, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:14:30 am', '2024-04-29 23:14:30', '2024-04-29 23:14:30'),
(269, 'productAttribute Search', 'http://localhost/ctgResV1/admin/searchProductAttribute?search=l', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:14:40 am', '2024-04-29 23:14:40', '2024-04-29 23:14:40'),
(270, 'productAttribute Search', 'http://localhost/ctgResV1/admin/searchProductAttribute?search=l', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:14:40 am', '2024-04-29 23:14:41', '2024-04-29 23:14:41'),
(271, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:23:02 am', '2024-04-29 23:23:02', '2024-04-29 23:23:02'),
(272, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:25:39 am', '2024-04-29 23:25:40', '2024-04-29 23:25:40'),
(273, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:25:44 am', '2024-04-29 23:25:44', '2024-04-29 23:25:44'),
(274, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:25:47 am', '2024-04-29 23:25:48', '2024-04-29 23:25:48'),
(275, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:29:30 am', '2024-04-29 23:29:30', '2024-04-29 23:29:30'),
(276, 'Product Add On store', 'http://localhost/ctgResV1/admin/productAddOn', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:29:42 am', '2024-04-29 23:29:42', '2024-04-29 23:29:42'),
(277, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:29:43 am', '2024-04-29 23:29:43', '2024-04-29 23:29:43'),
(278, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:30:10 am', '2024-04-29 23:30:10', '2024-04-29 23:30:10'),
(279, 'Product Add On store', 'http://localhost/ctgResV1/admin/productAddOn', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:30:24 am', '2024-04-29 23:30:24', '2024-04-29 23:30:24'),
(280, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:30:25 am', '2024-04-29 23:30:25', '2024-04-29 23:30:25'),
(281, 'Product Add On store', 'http://localhost/ctgResV1/admin/productAddOn', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:30:37 am', '2024-04-29 23:30:37', '2024-04-29 23:30:37'),
(282, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:30:38 am', '2024-04-29 23:30:38', '2024-04-29 23:30:38'),
(283, 'Product Add On Search', 'http://localhost/ctgResV1/admin/searchProductAddOn?search=f', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:31:05 am', '2024-04-29 23:31:06', '2024-04-29 23:31:06'),
(284, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:31:20 am', '2024-04-29 23:31:20', '2024-04-29 23:31:20'),
(285, 'Product Add On Search', 'http://localhost/ctgResV1/admin/searchProductAddOn?search=f', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:31:24 am', '2024-04-29 23:31:24', '2024-04-29 23:31:24'),
(286, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:31:47 am', '2024-04-29 23:31:47', '2024-04-29 23:31:47'),
(287, 'Product Add On Search', 'http://localhost/ctgResV1/admin/searchProductAddOn?search=f', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:31:51 am', '2024-04-29 23:31:52', '2024-04-29 23:31:52'),
(288, 'Product Add On Search', 'http://localhost/ctgResV1/admin/searchProductAddOn?search=foreign%20new%20ngo', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:32:02 am', '2024-04-29 23:32:02', '2024-04-29 23:32:02'),
(289, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:42:24 am', '2024-04-29 23:42:24', '2024-04-29 23:42:24'),
(290, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:50:01 am', '2024-04-29 23:50:02', '2024-04-29 23:50:02'),
(291, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:50:24 am', '2024-04-29 23:50:24', '2024-04-29 23:50:24'),
(292, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '1', '11:53:03 am', '2024-04-29 23:53:03', '2024-04-29 23:53:03'),
(293, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:54:10 am', '2024-04-29 23:54:11', '2024-04-29 23:54:11'),
(294, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:54:22 am', '2024-04-29 23:54:22', '2024-04-29 23:54:22'),
(295, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:55:48 am', '2024-04-29 23:55:49', '2024-04-29 23:55:49'),
(296, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:55:59 am', '2024-04-29 23:55:59', '2024-04-29 23:55:59'),
(297, 'Product Add On Search', 'http://localhost/ctgResV1/admin/searchProductAddOn?search=foreign%20new%20ngo', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:57:57 am', '2024-04-29 23:57:58', '2024-04-29 23:57:58'),
(298, 'Product Add On Search', 'http://localhost/ctgResV1/admin/searchProductAddOn?search=foreign%20new%20ngo', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:58:46 am', '2024-04-29 23:58:47', '2024-04-29 23:58:47'),
(299, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:12:33 pm', '2024-04-30 00:12:34', '2024-04-30 00:12:34'),
(300, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:12:43 pm', '2024-04-30 00:12:43', '2024-04-30 00:12:43'),
(301, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:12:47 pm', '2024-04-30 00:12:47', '2024-04-30 00:12:47'),
(302, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '1', '12:13:55 pm', '2024-04-30 00:13:56', '2024-04-30 00:13:56'),
(303, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '1', '12:15:33 pm', '2024-04-30 00:15:33', '2024-04-30 00:15:33'),
(304, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '1', '12:17:52 pm', '2024-04-30 00:17:53', '2024-04-30 00:17:53'),
(305, 'Product Add On Search', 'http://localhost/ctgResV1/admin/searchProductAddOn?search=foreign%20new%20ngo', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:18:43 pm', '2024-04-30 00:18:44', '2024-04-30 00:18:44'),
(306, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:18:49 pm', '2024-04-30 00:18:49', '2024-04-30 00:18:49'),
(307, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:21:48 pm', '2024-04-30 00:21:49', '2024-04-30 00:21:49'),
(308, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:21:54 pm', '2024-04-30 00:21:54', '2024-04-30 00:21:54'),
(309, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:22:02 pm', '2024-04-30 00:22:03', '2024-04-30 00:22:03');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(310, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:22:08 pm', '2024-04-30 00:22:08', '2024-04-30 00:22:08'),
(311, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:22:12 pm', '2024-04-30 00:22:12', '2024-04-30 00:22:12'),
(312, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:22:21 pm', '2024-04-30 00:22:21', '2024-04-30 00:22:21'),
(313, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:22:42 pm', '2024-04-30 00:22:42', '2024-04-30 00:22:42'),
(314, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:23:05 pm', '2024-04-30 00:23:05', '2024-04-30 00:23:05'),
(315, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:23:17 pm', '2024-04-30 00:23:17', '2024-04-30 00:23:17'),
(316, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:24:22 pm', '2024-04-30 00:24:22', '2024-04-30 00:24:22'),
(317, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:28:51 pm', '2024-04-30 00:28:52', '2024-04-30 00:28:52'),
(318, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:29:52 pm', '2024-04-30 00:29:53', '2024-04-30 00:29:53'),
(319, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:30:01 pm', '2024-04-30 00:30:02', '2024-04-30 00:30:02'),
(320, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:47:23 pm', '2024-04-30 00:47:24', '2024-04-30 00:47:24'),
(321, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:50:20 pm', '2024-04-30 00:50:21', '2024-04-30 00:50:21'),
(322, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:54:27 pm', '2024-04-30 00:54:28', '2024-04-30 00:54:28'),
(323, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:55:07 pm', '2024-04-30 00:55:07', '2024-04-30 00:55:07'),
(324, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:57:10 pm', '2024-04-30 00:57:10', '2024-04-30 00:57:10'),
(325, 'Logged Out.', 'http://localhost/ctgResV1/admin/logout/submit', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:57:42 pm', '2024-04-30 00:57:42', '2024-04-30 00:57:42'),
(326, 'Logged In.', 'http://localhost/ctgResV1/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:10:53 pm', '2024-04-30 01:10:54', '2024-04-30 01:10:54'),
(327, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:10:55 pm', '2024-04-30 01:10:55', '2024-04-30 01:10:55'),
(328, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:11:02 pm', '2024-04-30 01:11:03', '2024-04-30 01:11:03'),
(329, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:11:25 pm', '2024-04-30 01:11:25', '2024-04-30 01:11:25'),
(330, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:13:12 pm', '2024-04-30 01:13:12', '2024-04-30 01:13:12'),
(331, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:17:33 pm', '2024-04-30 01:17:34', '2024-04-30 01:17:34'),
(332, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:24:50 pm', '2024-04-30 01:24:51', '2024-04-30 01:24:51'),
(333, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:27:40 pm', '2024-04-30 01:27:41', '2024-04-30 01:27:41'),
(334, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:29:05 pm', '2024-04-30 01:29:05', '2024-04-30 01:29:05'),
(335, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:29:53 pm', '2024-04-30 01:29:54', '2024-04-30 01:29:54'),
(336, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:32:58 pm', '2024-04-30 01:32:59', '2024-04-30 01:32:59'),
(337, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:34:21 pm', '2024-04-30 01:34:21', '2024-04-30 01:34:21'),
(338, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:36:24 pm', '2024-04-30 01:36:25', '2024-04-30 01:36:25'),
(339, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:38:51 pm', '2024-04-30 01:38:52', '2024-04-30 01:38:52'),
(340, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:40:43 pm', '2024-04-30 01:40:44', '2024-04-30 01:40:44'),
(341, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:44:41 pm', '2024-04-30 01:44:42', '2024-04-30 01:44:42'),
(342, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:45:56 pm', '2024-04-30 01:45:56', '2024-04-30 01:45:56'),
(343, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:47:57 pm', '2024-04-30 01:47:57', '2024-04-30 01:47:57'),
(344, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:48:29 pm', '2024-04-30 01:48:30', '2024-04-30 01:48:30'),
(345, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:49:50 pm', '2024-04-30 01:49:51', '2024-04-30 01:49:51'),
(346, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:50:05 pm', '2024-04-30 01:50:05', '2024-04-30 01:50:05'),
(347, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:50:39 pm', '2024-04-30 01:50:39', '2024-04-30 01:50:39'),
(348, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:51:04 pm', '2024-04-30 01:51:04', '2024-04-30 01:51:04'),
(349, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:51:17 pm', '2024-04-30 01:51:17', '2024-04-30 01:51:17'),
(350, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:51:36 pm', '2024-04-30 01:51:36', '2024-04-30 01:51:36'),
(351, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:53:40 pm', '2024-04-30 01:53:41', '2024-04-30 01:53:41'),
(352, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:13:11 pm', '2024-04-30 02:13:12', '2024-04-30 02:13:12'),
(353, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:14:02 pm', '2024-04-30 02:14:02', '2024-04-30 02:14:02'),
(354, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:15:16 pm', '2024-04-30 02:15:16', '2024-04-30 02:15:16'),
(355, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:16:31 pm', '2024-04-30 02:16:31', '2024-04-30 02:16:31'),
(356, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:16:57 pm', '2024-04-30 02:16:58', '2024-04-30 02:16:58'),
(357, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:18:59 pm', '2024-04-30 02:19:00', '2024-04-30 02:19:00'),
(358, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:20:56 pm', '2024-04-30 02:20:56', '2024-04-30 02:20:56'),
(359, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:22:10 pm', '2024-04-30 02:22:10', '2024-04-30 02:22:10'),
(360, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:23:58 pm', '2024-04-30 02:23:58', '2024-04-30 02:23:58'),
(361, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:24:58 pm', '2024-04-30 02:24:58', '2024-04-30 02:24:58'),
(362, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:25:46 pm', '2024-04-30 02:25:46', '2024-04-30 02:25:46'),
(363, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:31:43 pm', '2024-04-30 02:31:43', '2024-04-30 02:31:43'),
(364, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:32:20 pm', '2024-04-30 02:32:20', '2024-04-30 02:32:20'),
(365, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:33:02 pm', '2024-04-30 02:33:03', '2024-04-30 02:33:03'),
(366, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:34:20 pm', '2024-04-30 02:34:21', '2024-04-30 02:34:21'),
(367, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:35:13 pm', '2024-04-30 02:35:13', '2024-04-30 02:35:13'),
(368, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:36:26 pm', '2024-04-30 02:36:26', '2024-04-30 02:36:26'),
(369, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:37:41 pm', '2024-04-30 02:37:42', '2024-04-30 02:37:42'),
(370, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:39:08 pm', '2024-04-30 02:39:09', '2024-04-30 02:39:09'),
(371, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:39:37 pm', '2024-04-30 02:39:37', '2024-04-30 02:39:37'),
(372, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:42:17 pm', '2024-04-30 02:42:17', '2024-04-30 02:42:17'),
(373, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:48:23 pm', '2024-04-30 02:48:23', '2024-04-30 02:48:23'),
(374, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:48:56 pm', '2024-04-30 02:48:56', '2024-04-30 02:48:56'),
(375, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:51:24 pm', '2024-04-30 02:51:24', '2024-04-30 02:51:24'),
(376, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:51:46 pm', '2024-04-30 02:51:46', '2024-04-30 02:51:46'),
(377, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:52:25 pm', '2024-04-30 02:52:25', '2024-04-30 02:52:25'),
(378, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:56:57 pm', '2024-04-30 02:56:58', '2024-04-30 02:56:58'),
(379, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:57:10 pm', '2024-04-30 02:57:11', '2024-04-30 02:57:11'),
(380, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:11:43 pm', '2024-04-30 03:11:43', '2024-04-30 03:11:43'),
(381, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:13:07 pm', '2024-04-30 03:13:07', '2024-04-30 03:13:07'),
(382, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:16:43 pm', '2024-04-30 03:16:43', '2024-04-30 03:16:43'),
(383, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:17:46 pm', '2024-04-30 03:17:47', '2024-04-30 03:17:47'),
(384, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:18:46 pm', '2024-04-30 03:18:46', '2024-04-30 03:18:46'),
(385, 'Logged Out.', 'http://localhost/ctgResV1/admin/logout/submit', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:19:52 pm', '2024-04-30 03:19:53', '2024-04-30 03:19:53'),
(386, 'Logged In.', 'http://localhost/ctgResV1/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:30:54 pm', '2024-04-30 03:30:55', '2024-04-30 03:30:55'),
(387, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:30:56 pm', '2024-04-30 03:30:56', '2024-04-30 03:30:56'),
(388, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:31:19 pm', '2024-04-30 03:31:19', '2024-04-30 03:31:19'),
(389, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:47:16 pm', '2024-04-30 03:47:17', '2024-04-30 03:47:17'),
(390, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:25:55 pm', '2024-04-30 04:25:56', '2024-04-30 04:25:56'),
(391, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:33:26 pm', '2024-04-30 04:33:27', '2024-04-30 04:33:27'),
(392, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:36:34 pm', '2024-04-30 04:36:35', '2024-04-30 04:36:35'),
(393, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:38:46 pm', '2024-04-30 04:38:46', '2024-04-30 04:38:46'),
(394, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:39:11 pm', '2024-04-30 04:39:12', '2024-04-30 04:39:12'),
(395, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:43:42 pm', '2024-04-30 04:43:43', '2024-04-30 04:43:43'),
(396, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:43:54 pm', '2024-04-30 04:43:54', '2024-04-30 04:43:54'),
(397, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:44:01 pm', '2024-04-30 04:44:02', '2024-04-30 04:44:02'),
(398, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:44:25 pm', '2024-04-30 04:44:25', '2024-04-30 04:44:25'),
(399, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:56:12 pm', '2024-04-30 04:56:12', '2024-04-30 04:56:12'),
(400, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:56:33 pm', '2024-04-30 04:56:34', '2024-04-30 04:56:34'),
(401, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:57:09 pm', '2024-04-30 04:57:09', '2024-04-30 04:57:09'),
(402, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:58:14 pm', '2024-04-30 04:58:15', '2024-04-30 04:58:15'),
(403, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:58:40 pm', '2024-04-30 04:58:40', '2024-04-30 04:58:40'),
(404, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:01:32 pm', '2024-04-30 05:01:32', '2024-04-30 05:01:32'),
(405, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:05:32 pm', '2024-04-30 05:05:33', '2024-04-30 05:05:33'),
(406, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:08:18 pm', '2024-04-30 05:08:18', '2024-04-30 05:08:18'),
(407, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:08:46 pm', '2024-04-30 05:08:46', '2024-04-30 05:08:46'),
(408, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:10:33 pm', '2024-04-30 05:10:33', '2024-04-30 05:10:33'),
(409, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:11:16 pm', '2024-04-30 05:11:17', '2024-04-30 05:11:17'),
(410, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:17:44 pm', '2024-04-30 05:17:45', '2024-04-30 05:17:45'),
(411, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:18:00 pm', '2024-04-30 05:18:01', '2024-04-30 05:18:01'),
(412, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:18:31 pm', '2024-04-30 05:18:32', '2024-04-30 05:18:32'),
(413, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:27:02 pm', '2024-04-30 05:27:02', '2024-04-30 05:27:02'),
(414, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:27:40 pm', '2024-04-30 05:27:40', '2024-04-30 05:27:40'),
(415, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:28:58 pm', '2024-04-30 05:28:58', '2024-04-30 05:28:58'),
(416, 'Product View', 'http://localhost/ctgResV1/admin/productList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:33:11 pm', '2024-04-30 05:33:12', '2024-04-30 05:33:12'),
(417, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:33:16 pm', '2024-04-30 05:33:16', '2024-04-30 05:33:16'),
(418, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:34:01 pm', '2024-04-30 05:34:02', '2024-04-30 05:34:02'),
(419, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:40:14 pm', '2024-04-30 05:40:15', '2024-04-30 05:40:15'),
(420, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:40:45 pm', '2024-04-30 05:40:45', '2024-04-30 05:40:45'),
(421, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:41:11 pm', '2024-04-30 05:41:12', '2024-04-30 05:41:12'),
(422, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:41:47 pm', '2024-04-30 05:41:47', '2024-04-30 05:41:47'),
(423, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:42:19 pm', '2024-04-30 05:42:19', '2024-04-30 05:42:19'),
(424, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:45:45 pm', '2024-04-30 05:45:46', '2024-04-30 05:45:46'),
(425, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:46:37 pm', '2024-04-30 05:46:37', '2024-04-30 05:46:37'),
(426, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:46:50 pm', '2024-04-30 05:46:51', '2024-04-30 05:46:51'),
(427, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:48:03 pm', '2024-04-30 05:48:04', '2024-04-30 05:48:04'),
(428, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:48:17 pm', '2024-04-30 05:48:17', '2024-04-30 05:48:17'),
(429, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:50:09 pm', '2024-04-30 05:50:10', '2024-04-30 05:50:10'),
(430, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:54:30 pm', '2024-04-30 05:54:31', '2024-04-30 05:54:31'),
(431, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:55:35 pm', '2024-04-30 05:55:36', '2024-04-30 05:55:36'),
(432, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:58:01 pm', '2024-04-30 05:58:02', '2024-04-30 05:58:02'),
(433, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '06:01:37 pm', '2024-04-30 06:01:38', '2024-04-30 06:01:38'),
(434, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '06:02:07 pm', '2024-04-30 06:02:07', '2024-04-30 06:02:07'),
(435, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '06:02:22 pm', '2024-04-30 06:02:23', '2024-04-30 06:02:23'),
(436, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '06:03:08 pm', '2024-04-30 06:03:09', '2024-04-30 06:03:09'),
(437, 'Product View', 'http://localhost/ctgResV1/admin/productList/1', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '06:03:54 pm', '2024-04-30 06:03:55', '2024-04-30 06:03:55'),
(438, 'view dashboard', 'http://localhost/chittagongFront/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:14:20 pm', '2024-04-30 10:14:21', '2024-04-30 10:14:21'),
(439, 'view dashboard', 'http://localhost/chittagongFront/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:15:52 pm', '2024-04-30 10:15:53', '2024-04-30 10:15:53'),
(440, 'Product View', 'http://localhost/chittagongFront/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:16:07 pm', '2024-04-30 10:16:07', '2024-04-30 10:16:07'),
(441, 'Product View', 'http://localhost/chittagongFront/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:28:33 pm', '2024-04-30 10:28:33', '2024-04-30 10:28:33'),
(442, 'Product View', 'http://localhost/chittagongFront/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '10:29:42 pm', '2024-04-30 10:29:43', '2024-04-30 10:29:43'),
(443, 'Product View', 'http://localhost/chittagongFront/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '10:31:16 pm', '2024-04-30 10:31:17', '2024-04-30 10:31:17'),
(444, 'Product View', 'http://localhost/chittagongFront/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '10:31:23 pm', '2024-04-30 10:31:23', '2024-04-30 10:31:23'),
(445, 'Product View', 'http://localhost/chittagongFront/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '10:31:28 pm', '2024-04-30 10:31:28', '2024-04-30 10:31:28'),
(446, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:01:26 pm', '2024-04-30 11:01:26', '2024-04-30 11:01:26'),
(447, 'Product Add', 'http://localhost/chittagongFront/admin/productList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:02:19 pm', '2024-04-30 11:02:19', '2024-04-30 11:02:19'),
(448, 'Product View', 'http://localhost/chittagongFront/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:03:21 pm', '2024-04-30 11:03:22', '2024-04-30 11:03:22'),
(449, 'Product View', 'http://localhost/chittagongFront/admin/productList/2/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:03:28 pm', '2024-04-30 11:03:28', '2024-04-30 11:03:28'),
(450, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:03:38 pm', '2024-04-30 11:03:39', '2024-04-30 11:03:39'),
(451, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:05:49 pm', '2024-04-30 11:05:50', '2024-04-30 11:05:50'),
(452, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:14:41 pm', '2024-04-30 11:14:42', '2024-04-30 11:14:42'),
(453, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:15:39 pm', '2024-04-30 11:15:39', '2024-04-30 11:15:39'),
(454, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:17:29 pm', '2024-04-30 11:17:30', '2024-04-30 11:17:30'),
(455, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:17:42 pm', '2024-04-30 11:17:42', '2024-04-30 11:17:42'),
(456, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:21:42 pm', '2024-04-30 11:21:43', '2024-04-30 11:21:43'),
(457, 'view dashboard', 'http://localhost/chittagongFront/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:10:39 am', '2024-04-30 19:10:40', '2024-04-30 19:10:40'),
(458, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:10:49 am', '2024-04-30 19:10:49', '2024-04-30 19:10:49');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(459, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:30:43 am', '2024-04-30 19:30:43', '2024-04-30 19:30:43'),
(460, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:31:47 am', '2024-04-30 19:31:48', '2024-04-30 19:31:48'),
(461, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:32:32 am', '2024-04-30 19:32:32', '2024-04-30 19:32:32'),
(462, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:32:52 am', '2024-04-30 19:32:52', '2024-04-30 19:32:52'),
(463, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:33:05 am', '2024-04-30 19:33:06', '2024-04-30 19:33:06'),
(464, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:33:16 am', '2024-04-30 19:33:17', '2024-04-30 19:33:17'),
(465, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:37:33 am', '2024-04-30 19:37:33', '2024-04-30 19:37:33'),
(466, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:39:37 am', '2024-04-30 19:39:37', '2024-04-30 19:39:37'),
(467, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:42:19 am', '2024-04-30 19:42:19', '2024-04-30 19:42:19'),
(468, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:42:53 am', '2024-04-30 19:42:53', '2024-04-30 19:42:53'),
(469, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:44:11 am', '2024-04-30 19:44:12', '2024-04-30 19:44:12'),
(470, 'Menu List Add', 'http://localhost/chittagongFront/admin/menuList/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:44:20 am', '2024-04-30 19:44:20', '2024-04-30 19:44:20'),
(471, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:44:37 am', '2024-04-30 19:44:37', '2024-04-30 19:44:37'),
(472, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:53:35 am', '2024-04-30 19:53:35', '2024-04-30 19:53:35'),
(473, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:58:20 am', '2024-04-30 19:58:21', '2024-04-30 19:58:21'),
(474, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '07:58:42 am', '2024-04-30 19:58:42', '2024-04-30 19:58:42'),
(475, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:02:56 am', '2024-04-30 20:02:56', '2024-04-30 20:02:56'),
(476, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:03:23 am', '2024-04-30 20:03:23', '2024-04-30 20:03:23'),
(477, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:03:41 am', '2024-04-30 20:03:41', '2024-04-30 20:03:41'),
(478, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:04:10 am', '2024-04-30 20:04:10', '2024-04-30 20:04:10'),
(479, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:07:23 am', '2024-04-30 20:07:24', '2024-04-30 20:07:24'),
(480, 'Menu List Update', 'http://localhost/chittagongFront/admin/menuList/2/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:15:45 am', '2024-04-30 20:15:45', '2024-04-30 20:15:45'),
(481, 'Menu List Update', 'http://localhost/chittagongFront/admin/menuList/2/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:16:07 am', '2024-04-30 20:16:07', '2024-04-30 20:16:07'),
(482, 'Menu List Update', 'http://localhost/chittagongFront/admin/menuList/2/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:16:28 am', '2024-04-30 20:16:29', '2024-04-30 20:16:29'),
(483, 'Menu List Update', 'http://localhost/chittagongFront/admin/menuList/2/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:16:45 am', '2024-04-30 20:16:46', '2024-04-30 20:16:46'),
(484, 'Menu List Update', 'http://localhost/chittagongFront/admin/menuList/2/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:17:01 am', '2024-04-30 20:17:01', '2024-04-30 20:17:01'),
(485, 'view dashboard', 'http://localhost/chittagongFront/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:21:25 am', '2024-04-30 20:21:26', '2024-04-30 20:21:26'),
(486, 'Menu List View', 'http://localhost/chittagongFront/admin/menuList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:21:35 am', '2024-04-30 20:21:36', '2024-04-30 20:21:36'),
(487, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:48:27 am', '2024-04-30 20:48:28', '2024-04-30 20:48:28'),
(488, ' create permission ', 'http://localhost/chittagongFront/admin/permission', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:49:02 am', '2024-04-30 20:49:02', '2024-04-30 20:49:02'),
(489, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:49:03 am', '2024-04-30 20:49:03', '2024-04-30 20:49:03'),
(490, 'permission list', 'http://localhost/chittagongFront/admin/permission', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:49:04 am', '2024-04-30 20:49:04', '2024-04-30 20:49:04'),
(491, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:49:22 am', '2024-04-30 20:49:23', '2024-04-30 20:49:23'),
(492, 'Create Role.', 'http://localhost/chittagongFront/admin/role/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:49:27 am', '2024-04-30 20:49:27', '2024-04-30 20:49:27'),
(493, 'View Role Edit Page.', 'http://localhost/chittagongFront/admin/role/1/edit', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:49:37 am', '2024-04-30 20:49:38', '2024-04-30 20:49:38'),
(494, 'Update Role.', 'http://localhost/chittagongFront/admin/role/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:49:44 am', '2024-04-30 20:49:44', '2024-04-30 20:49:44'),
(495, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:49:52 am', '2024-04-30 20:49:52', '2024-04-30 20:49:52'),
(496, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:55:18 am', '2024-04-30 20:55:19', '2024-04-30 20:55:19'),
(497, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:59:20 am', '2024-04-30 20:59:20', '2024-04-30 20:59:20'),
(498, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '08:59:48 am', '2024-04-30 20:59:48', '2024-04-30 20:59:48'),
(499, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:03:17 am', '2024-04-30 21:03:17', '2024-04-30 21:03:17'),
(500, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:04:15 am', '2024-04-30 21:04:16', '2024-04-30 21:04:16'),
(501, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:04:41 am', '2024-04-30 21:04:42', '2024-04-30 21:04:42'),
(502, 'designation  list ', 'http://localhost/chittagongFront/admin/designationList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:10 am', '2024-04-30 21:14:11', '2024-04-30 21:14:11'),
(503, 'designation  list ', 'http://localhost/chittagongFront/admin/designationList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:11 am', '2024-04-30 21:14:12', '2024-04-30 21:14:12'),
(504, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=A&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:24 am', '2024-04-30 21:14:25', '2024-04-30 21:14:25'),
(505, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Ad&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:25 am', '2024-04-30 21:14:26', '2024-04-30 21:14:26'),
(506, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Admi&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:26 am', '2024-04-30 21:14:26', '2024-04-30 21:14:26'),
(507, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Admin&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:26 am', '2024-04-30 21:14:26', '2024-04-30 21:14:26'),
(508, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Adm&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:26 am', '2024-04-30 21:14:26', '2024-04-30 21:14:26'),
(509, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=A&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:26 am', '2024-04-30 21:14:26', '2024-04-30 21:14:26'),
(510, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Admin&designationSerial=undefined.N%2FA', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:28 am', '2024-04-30 21:14:28', '2024-04-30 21:14:28'),
(511, 'designation store ', 'http://localhost/chittagongFront/admin/designationList', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:30 am', '2024-04-30 21:14:31', '2024-04-30 21:14:31'),
(512, 'designation  list ', 'http://localhost/chittagongFront/admin/designationList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:31 am', '2024-04-30 21:14:31', '2024-04-30 21:14:31'),
(513, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=M&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:39 am', '2024-04-30 21:14:40', '2024-04-30 21:14:40'),
(514, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Ma&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:40 am', '2024-04-30 21:14:40', '2024-04-30 21:14:40'),
(515, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Man&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:40 am', '2024-04-30 21:14:40', '2024-04-30 21:14:40'),
(516, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Mana&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:40 am', '2024-04-30 21:14:41', '2024-04-30 21:14:41'),
(517, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=M&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:40 am', '2024-04-30 21:14:41', '2024-04-30 21:14:41'),
(518, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Manag&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:41 am', '2024-04-30 21:14:41', '2024-04-30 21:14:41'),
(519, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Manage&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:41 am', '2024-04-30 21:14:42', '2024-04-30 21:14:42'),
(520, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Manager&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:42 am', '2024-04-30 21:14:42', '2024-04-30 21:14:42'),
(521, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Manager&designationSerial=undefined.N%2FA', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:44 am', '2024-04-30 21:14:44', '2024-04-30 21:14:44'),
(522, 'designation store ', 'http://localhost/chittagongFront/admin/designationList', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:46 am', '2024-04-30 21:14:47', '2024-04-30 21:14:47'),
(523, 'designation  list ', 'http://localhost/chittagongFront/admin/designationList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:47 am', '2024-04-30 21:14:47', '2024-04-30 21:14:47'),
(524, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=W&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:57 am', '2024-04-30 21:14:57', '2024-04-30 21:14:57'),
(525, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Wa&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:57 am', '2024-04-30 21:14:57', '2024-04-30 21:14:57'),
(526, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=W&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:57 am', '2024-04-30 21:14:58', '2024-04-30 21:14:58'),
(527, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Waiter&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:14:59 am', '2024-04-30 21:14:59', '2024-04-30 21:14:59'),
(528, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Waiter&designationSerial=undefined.N%2FA', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:15:00 am', '2024-04-30 21:15:00', '2024-04-30 21:15:00'),
(529, 'designation store ', 'http://localhost/chittagongFront/admin/designationList', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:15:02 am', '2024-04-30 21:15:02', '2024-04-30 21:15:02'),
(530, 'designation  list ', 'http://localhost/chittagongFront/admin/designationList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:15:02 am', '2024-04-30 21:15:03', '2024-04-30 21:15:03'),
(531, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=C&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:15:10 am', '2024-04-30 21:15:10', '2024-04-30 21:15:10'),
(532, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Ch&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:15:11 am', '2024-04-30 21:15:11', '2024-04-30 21:15:11'),
(533, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Chef&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:15:11 am', '2024-04-30 21:15:11', '2024-04-30 21:15:11'),
(534, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Che&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:15:11 am', '2024-04-30 21:15:11', '2024-04-30 21:15:11'),
(535, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=C&designationSerial=', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:15:11 am', '2024-04-30 21:15:11', '2024-04-30 21:15:11'),
(536, 'designation check ', 'http://localhost/chittagongFront/admin/checkDesignation?designationName=Chef&designationSerial=undefined.N%2FA', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:15:13 am', '2024-04-30 21:15:13', '2024-04-30 21:15:13'),
(537, 'designation store ', 'http://localhost/chittagongFront/admin/designationList', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:15:16 am', '2024-04-30 21:15:16', '2024-04-30 21:15:16'),
(538, 'designation  list ', 'http://localhost/chittagongFront/admin/designationList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:15:17 am', '2024-04-30 21:15:17', '2024-04-30 21:15:17'),
(539, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:17:51 am', '2024-04-30 21:17:51', '2024-04-30 21:17:51'),
(540, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:26:14 am', '2024-04-30 21:26:14', '2024-04-30 21:26:14'),
(541, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:26:30 am', '2024-04-30 21:26:30', '2024-04-30 21:26:30'),
(542, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:30:16 am', '2024-04-30 21:30:16', '2024-04-30 21:30:16'),
(543, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:35:47 am', '2024-04-30 21:35:48', '2024-04-30 21:35:48'),
(544, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:38:38 am', '2024-04-30 21:38:39', '2024-04-30 21:38:39'),
(545, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:53:17 am', '2024-04-30 21:53:17', '2024-04-30 21:53:17'),
(546, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:54:18 am', '2024-04-30 21:54:18', '2024-04-30 21:54:18'),
(547, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:55:58 am', '2024-04-30 21:55:59', '2024-04-30 21:55:59'),
(548, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:56:47 am', '2024-04-30 21:56:48', '2024-04-30 21:56:48'),
(549, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:57:45 am', '2024-04-30 21:57:46', '2024-04-30 21:57:46'),
(550, 'Product View', 'http://localhost/chittagongFront/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:59:19 am', '2024-04-30 21:59:20', '2024-04-30 21:59:20'),
(551, 'Product View', 'http://localhost/chittagongFront/admin/productList/2', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:59:29 am', '2024-04-30 21:59:29', '2024-04-30 21:59:29'),
(552, 'Product View', 'http://localhost/chittagongFront/admin/productList/1', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '09:59:40 am', '2024-04-30 21:59:40', '2024-04-30 21:59:40'),
(553, 'Product View', 'http://localhost/chittagongFront/admin/productList/1', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:05:36 am', '2024-04-30 22:05:36', '2024-04-30 22:05:36'),
(554, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:05:41 am', '2024-04-30 22:05:42', '2024-04-30 22:05:42'),
(555, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:08:42 am', '2024-04-30 22:08:42', '2024-04-30 22:08:42'),
(556, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:08:58 am', '2024-04-30 22:08:58', '2024-04-30 22:08:58'),
(557, 'View System Information.', 'http://localhost/chittagongFront/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:14:54 am', '2024-04-30 22:14:55', '2024-04-30 22:14:55'),
(558, 'System  Info Update.', 'http://localhost/chittagongFront/admin/systemInformation/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:15:07 am', '2024-04-30 22:15:07', '2024-04-30 22:15:07'),
(559, 'View System Information.', 'http://localhost/chittagongFront/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:15:08 am', '2024-04-30 22:15:08', '2024-04-30 22:15:08'),
(560, 'System  Info Update.', 'http://localhost/chittagongFront/admin/systemInformation/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:15:21 am', '2024-04-30 22:15:21', '2024-04-30 22:15:21'),
(561, 'View System Information.', 'http://localhost/chittagongFront/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:15:22 am', '2024-04-30 22:15:22', '2024-04-30 22:15:22'),
(562, 'View System Information.', 'http://localhost/chittagongFront/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:15:57 am', '2024-04-30 22:15:57', '2024-04-30 22:15:57'),
(563, 'System  Info Update.', 'http://localhost/chittagongFront/admin/systemInformation/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:16:07 am', '2024-04-30 22:16:07', '2024-04-30 22:16:07'),
(564, 'View System Information.', 'http://localhost/chittagongFront/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:16:08 am', '2024-04-30 22:16:08', '2024-04-30 22:16:08'),
(565, 'Logged Out.', 'http://localhost/chittagongFront/admin/logout/submit', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:16:22 am', '2024-04-30 22:16:23', '2024-04-30 22:16:23'),
(566, 'Logged In.', 'http://localhost/chittagongFront/admin/login', 'POST', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:16:38 am', '2024-04-30 22:16:39', '2024-04-30 22:16:39'),
(567, 'view dashboard', 'http://localhost/chittagongFront/admin', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:16:40 am', '2024-04-30 22:16:41', '2024-04-30 22:16:41'),
(568, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:16:46 am', '2024-04-30 22:16:47', '2024-04-30 22:16:47'),
(569, 'Role List.', 'http://localhost/chittagongFront/admin/role', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:16:54 am', '2024-04-30 22:16:54', '2024-04-30 22:16:54'),
(570, 'View System Information.', 'http://localhost/chittagongFront/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:16:59 am', '2024-04-30 22:17:00', '2024-04-30 22:17:00'),
(571, 'System  Info Update.', 'http://localhost/chittagongFront/admin/systemInformation/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:17:09 am', '2024-04-30 22:17:09', '2024-04-30 22:17:09'),
(572, 'View System Information.', 'http://localhost/chittagongFront/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:17:10 am', '2024-04-30 22:17:10', '2024-04-30 22:17:10'),
(573, 'View System Information.', 'http://localhost/chittagongFront/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:17:53 am', '2024-04-30 22:17:53', '2024-04-30 22:17:53'),
(574, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:18:00 am', '2024-04-30 22:18:00', '2024-04-30 22:18:00'),
(575, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:22:53 am', '2024-04-30 22:22:53', '2024-04-30 22:22:53'),
(576, 'Product View', 'http://localhost/chittagongFront/admin/productList', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:25:34 am', '2024-04-30 22:25:34', '2024-04-30 22:25:34'),
(577, 'View System Information.', 'http://localhost/chittagongFront/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:36:37 am', '2024-04-30 22:36:37', '2024-04-30 22:36:37'),
(578, 'System  Info Update.', 'http://localhost/chittagongFront/admin/systemInformation/1', 'PUT', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:36:46 am', '2024-04-30 22:36:47', '2024-04-30 22:36:47'),
(579, 'View System Information.', 'http://localhost/chittagongFront/admin/systemInformation', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:36:47 am', '2024-04-30 22:36:48', '2024-04-30 22:36:48'),
(580, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:37:00 am', '2024-04-30 22:37:00', '2024-04-30 22:37:00'),
(581, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:37:40 am', '2024-04-30 22:37:40', '2024-04-30 22:37:40'),
(582, 'Pos Add', 'http://localhost/chittagongFront/admin/pos/create', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:57:43 am', '2024-04-30 22:57:44', '2024-04-30 22:57:44'),
(583, 'Pos Add', 'http://localhost/chittagongFront/admin/waiterDashBoard', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:58:04 am', '2024-04-30 22:58:04', '2024-04-30 22:58:04'),
(584, 'Pos Add', 'http://localhost/chittagongFront/admin/waiterDashBoard', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:58:44 am', '2024-04-30 22:58:45', '2024-04-30 22:58:45'),
(585, 'Pos Add', 'http://localhost/chittagongFront/admin/waiterDashBoard', 'GET', '68-F7-28-0E-12-18   Media disconnected', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:59:18 am', '2024-04-30 22:59:18', '2024-04-30 22:59:18'),
(586, 'Logged In.', 'http://localhost/ctgResV1/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:38:24 am', '2024-05-18 23:38:24', '2024-05-18 23:38:24'),
(587, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:38:26 am', '2024-05-18 23:38:26', '2024-05-18 23:38:26'),
(588, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:39:20 am', '2024-05-18 23:39:20', '2024-05-18 23:39:20'),
(589, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:40:06 am', '2024-05-18 23:40:07', '2024-05-18 23:40:07'),
(590, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:40:33 am', '2024-05-18 23:40:33', '2024-05-18 23:40:33'),
(591, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:40:38 am', '2024-05-18 23:40:38', '2024-05-18 23:40:38'),
(592, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:41:38 am', '2024-05-18 23:41:38', '2024-05-18 23:41:38'),
(593, 'Menu List View', 'http://localhost/ctgResV1/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:41:50 am', '2024-05-18 23:41:50', '2024-05-18 23:41:50'),
(594, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:42:07 am', '2024-05-18 23:42:08', '2024-05-18 23:42:08'),
(595, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:47:08 am', '2024-05-18 23:47:08', '2024-05-18 23:47:08'),
(596, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:48:03 am', '2024-05-18 23:48:03', '2024-05-18 23:48:03'),
(597, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:49:08 am', '2024-05-18 23:49:08', '2024-05-18 23:49:08'),
(598, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:50:10 am', '2024-05-18 23:50:11', '2024-05-18 23:50:11'),
(599, 'Category store ', 'http://localhost/ctgResV1/admin/categoryList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:52:25 am', '2024-05-18 23:52:25', '2024-05-18 23:52:25'),
(600, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:52:26 am', '2024-05-18 23:52:26', '2024-05-18 23:52:26'),
(601, 'Category store ', 'http://localhost/ctgResV1/admin/categoryList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:52:26 am', '2024-05-18 23:52:26', '2024-05-18 23:52:26'),
(602, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:52:27 am', '2024-05-18 23:52:27', '2024-05-18 23:52:27'),
(603, 'category delete ', 'http://localhost/ctgResV1/admin/categoryList/5', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:52:45 am', '2024-05-18 23:52:46', '2024-05-18 23:52:46'),
(604, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:52:46 am', '2024-05-18 23:52:46', '2024-05-18 23:52:46'),
(605, 'Category store ', 'http://localhost/ctgResV1/admin/categoryList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:53:09 am', '2024-05-18 23:53:10', '2024-05-18 23:53:10'),
(606, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:53:10 am', '2024-05-18 23:53:11', '2024-05-18 23:53:11'),
(607, 'category delete ', 'http://localhost/ctgResV1/admin/categoryList/1', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:53:19 am', '2024-05-18 23:53:19', '2024-05-18 23:53:19'),
(608, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:53:20 am', '2024-05-18 23:53:20', '2024-05-18 23:53:20'),
(609, 'category delete ', 'http://localhost/ctgResV1/admin/categoryList/2', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:53:27 am', '2024-05-18 23:53:27', '2024-05-18 23:53:27'),
(610, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:53:28 am', '2024-05-18 23:53:28', '2024-05-18 23:53:28'),
(611, 'category delete ', 'http://localhost/ctgResV1/admin/categoryList/3', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:53:33 am', '2024-05-18 23:53:33', '2024-05-18 23:53:33'),
(612, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:53:34 am', '2024-05-18 23:53:34', '2024-05-18 23:53:34'),
(613, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:53:40 am', '2024-05-18 23:53:41', '2024-05-18 23:53:41');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(614, 'Category store ', 'http://localhost/ctgResV1/admin/categoryList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:54:05 am', '2024-05-18 23:54:05', '2024-05-18 23:54:05'),
(615, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:54:06 am', '2024-05-18 23:54:06', '2024-05-18 23:54:06'),
(616, 'Category store ', 'http://localhost/ctgResV1/admin/categoryList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:55:33 am', '2024-05-18 23:55:33', '2024-05-18 23:55:33'),
(617, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:55:34 am', '2024-05-18 23:55:34', '2024-05-18 23:55:34'),
(618, 'category list ', 'http://localhost/ctgResV1/admin/categoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:55:42 am', '2024-05-18 23:55:43', '2024-05-18 23:55:43'),
(619, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:55:55 am', '2024-05-18 23:55:55', '2024-05-18 23:55:55'),
(620, 'subcategory delete ', 'http://localhost/ctgResV1/admin/subcategoryList/8', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:56:03 am', '2024-05-18 23:56:03', '2024-05-18 23:56:03'),
(621, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:56:03 am', '2024-05-18 23:56:03', '2024-05-18 23:56:03'),
(622, 'subcategory delete ', 'http://localhost/ctgResV1/admin/subcategoryList/8', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:56:09 am', '2024-05-18 23:56:09', '2024-05-18 23:56:09'),
(623, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:56:10 am', '2024-05-18 23:56:10', '2024-05-18 23:56:10'),
(624, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:56:46 am', '2024-05-18 23:56:46', '2024-05-18 23:56:46'),
(625, 'subcategory delete ', 'http://localhost/ctgResV1/admin/subcategoryList/8', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:57:17 am', '2024-05-18 23:57:17', '2024-05-18 23:57:17'),
(626, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:57:18 am', '2024-05-18 23:57:18', '2024-05-18 23:57:18'),
(627, 'subcategory delete ', 'http://localhost/ctgResV1/admin/subcategoryList/8', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:58:01 am', '2024-05-18 23:58:01', '2024-05-18 23:58:01'),
(628, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:58:01 am', '2024-05-18 23:58:01', '2024-05-18 23:58:01'),
(629, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:59:10 am', '2024-05-18 23:59:10', '2024-05-18 23:59:10'),
(630, 'subcategory delete ', 'http://localhost/ctgResV1/admin/subcategoryList/3', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:59:16 am', '2024-05-18 23:59:17', '2024-05-18 23:59:17'),
(631, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:59:17 am', '2024-05-18 23:59:17', '2024-05-18 23:59:17'),
(632, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:59:21 am', '2024-05-18 23:59:22', '2024-05-18 23:59:22'),
(633, 'SubCategory Update', 'http://localhost/ctgResV1/admin/subcategoryList/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:59:38 am', '2024-05-18 23:59:38', '2024-05-18 23:59:38'),
(634, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:59:38 am', '2024-05-18 23:59:39', '2024-05-18 23:59:39'),
(635, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList/2/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:59:45 am', '2024-05-18 23:59:45', '2024-05-18 23:59:45'),
(636, 'SubCategory Update', 'http://localhost/ctgResV1/admin/subcategoryList/2', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:00:04 pm', '2024-05-19 00:00:05', '2024-05-19 00:00:05'),
(637, 'subcategory list ', 'http://localhost/ctgResV1/admin/subcategoryList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:00:05 pm', '2024-05-19 00:00:05', '2024-05-19 00:00:05'),
(638, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:00:10 pm', '2024-05-19 00:00:10', '2024-05-19 00:00:10'),
(639, 'productAttribute delete ', 'http://localhost/ctgResV1/admin/productAttribute/2', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:00:17 pm', '2024-05-19 00:00:17', '2024-05-19 00:00:17'),
(640, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:00:17 pm', '2024-05-19 00:00:18', '2024-05-19 00:00:18'),
(641, 'Product Attribute Update', 'http://localhost/ctgResV1/admin/productAttribute/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:00:33 pm', '2024-05-19 00:00:33', '2024-05-19 00:00:33'),
(642, 'Product Attribute list ', 'http://localhost/ctgResV1/admin/productAttribute', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:00:34 pm', '2024-05-19 00:00:34', '2024-05-19 00:00:34'),
(643, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:00:36 pm', '2024-05-19 00:00:36', '2024-05-19 00:00:36'),
(644, 'Product Add On Update', 'http://localhost/ctgResV1/admin/productAddOn/3', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:01:08 pm', '2024-05-19 00:01:08', '2024-05-19 00:01:08'),
(645, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:01:09 pm', '2024-05-19 00:01:09', '2024-05-19 00:01:09'),
(646, 'Product Add On Update', 'http://localhost/ctgResV1/admin/productAddOn/2', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:01:25 pm', '2024-05-19 00:01:25', '2024-05-19 00:01:25'),
(647, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:01:25 pm', '2024-05-19 00:01:25', '2024-05-19 00:01:25'),
(648, 'product Add On delete ', 'http://localhost/ctgResV1/admin/productAddOn/1', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:01:30 pm', '2024-05-19 00:01:30', '2024-05-19 00:01:30'),
(649, 'product Add Onlist ', 'http://localhost/ctgResV1/admin/productAddOn', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:01:30 pm', '2024-05-19 00:01:31', '2024-05-19 00:01:31'),
(650, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:01:33 pm', '2024-05-19 00:01:33', '2024-05-19 00:01:33'),
(651, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:07:48 pm', '2024-05-19 00:07:49', '2024-05-19 00:07:49'),
(652, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:11:08 pm', '2024-05-19 00:11:09', '2024-05-19 00:11:09'),
(653, 'Product View', 'http://localhost/ctgResV1/admin/productList/2/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:11:19 pm', '2024-05-19 00:11:20', '2024-05-19 00:11:20'),
(654, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:15:07 pm', '2024-05-19 00:15:07', '2024-05-19 00:15:07'),
(655, 'product delete ', 'http://localhost/ctgResV1/admin/productList/1', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:15:17 pm', '2024-05-19 00:15:18', '2024-05-19 00:15:18'),
(656, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:16:09 pm', '2024-05-19 00:16:10', '2024-05-19 00:16:10'),
(657, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:16:16 pm', '2024-05-19 00:16:16', '2024-05-19 00:16:16'),
(658, 'Product Add', 'http://localhost/ctgResV1/admin/productList/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:16:20 pm', '2024-05-19 00:16:21', '2024-05-19 00:16:21'),
(659, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:17:13 pm', '2024-05-19 00:17:14', '2024-05-19 00:17:14'),
(660, 'product delete ', 'http://localhost/ctgResV1/admin/productList/4', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:17:21 pm', '2024-05-19 00:17:21', '2024-05-19 00:17:21'),
(661, 'product delete ', 'http://localhost/ctgResV1/admin/productList/4', 'DELETE', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:17:51 pm', '2024-05-19 00:17:51', '2024-05-19 00:17:51'),
(662, 'Product View', 'http://localhost/ctgResV1/admin/productList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:17:51 pm', '2024-05-19 00:17:51', '2024-05-19 00:17:51'),
(663, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:18:03 pm', '2024-05-19 00:18:03', '2024-05-19 00:18:03'),
(664, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:18:42 pm', '2024-05-19 00:18:42', '2024-05-19 00:18:42'),
(665, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:19:56 pm', '2024-05-19 00:19:57', '2024-05-19 00:19:57'),
(666, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:22:44 pm', '2024-05-19 00:22:45', '2024-05-19 00:22:45'),
(667, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:22:56 pm', '2024-05-19 00:22:56', '2024-05-19 00:22:56'),
(668, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:26:33 pm', '2024-05-19 00:26:34', '2024-05-19 00:26:34'),
(669, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:26:43 pm', '2024-05-19 00:26:43', '2024-05-19 00:26:43'),
(670, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:26:50 pm', '2024-05-19 00:26:50', '2024-05-19 00:26:50'),
(671, 'Logged In.', 'http://localhost/ctgResV1/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:37:49 pm', '2024-05-19 00:37:49', '2024-05-19 00:37:49'),
(672, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:37:51 pm', '2024-05-19 00:37:51', '2024-05-19 00:37:51'),
(673, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:38:04 pm', '2024-05-19 00:38:05', '2024-05-19 00:38:05'),
(674, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:38:24 pm', '2024-05-19 00:38:24', '2024-05-19 00:38:24'),
(675, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:38:36 pm', '2024-05-19 00:38:37', '2024-05-19 00:38:37'),
(676, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:41:23 pm', '2024-05-19 00:41:25', '2024-05-19 00:41:25'),
(677, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:41:39 pm', '2024-05-19 00:41:39', '2024-05-19 00:41:39'),
(678, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:45:25 pm', '2024-05-19 00:45:25', '2024-05-19 00:45:25'),
(679, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:46:03 pm', '2024-05-19 00:46:03', '2024-05-19 00:46:03'),
(680, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:46:09 pm', '2024-05-19 00:46:09', '2024-05-19 00:46:09'),
(681, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:46:43 pm', '2024-05-19 00:46:43', '2024-05-19 00:46:43'),
(682, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:46:55 pm', '2024-05-19 00:46:56', '2024-05-19 00:46:56'),
(683, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:47:27 pm', '2024-05-19 00:47:28', '2024-05-19 00:47:28'),
(684, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:48:09 pm', '2024-05-19 00:48:09', '2024-05-19 00:48:09'),
(685, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:49:25 pm', '2024-05-19 00:49:25', '2024-05-19 00:49:25'),
(686, 'Menu List View', 'http://localhost/ctgResV1/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:50:21 pm', '2024-05-19 00:50:22', '2024-05-19 00:50:22'),
(687, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:52:13 pm', '2024-05-19 00:52:13', '2024-05-19 00:52:13'),
(688, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:02:27 pm', '2024-05-19 01:02:28', '2024-05-19 01:02:28'),
(689, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:02:56 pm', '2024-05-19 01:02:56', '2024-05-19 01:02:56'),
(690, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:04:16 pm', '2024-05-19 01:04:18', '2024-05-19 01:04:18'),
(691, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:04:26 pm', '2024-05-19 01:04:27', '2024-05-19 01:04:27'),
(692, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:04:36 pm', '2024-05-19 01:04:36', '2024-05-19 01:04:36'),
(693, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:28:26 pm', '2024-05-19 01:28:26', '2024-05-19 01:28:26'),
(694, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:29:26 pm', '2024-05-19 01:29:26', '2024-05-19 01:29:26'),
(695, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:29:48 pm', '2024-05-19 01:29:48', '2024-05-19 01:29:48'),
(696, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:30:42 pm', '2024-05-19 01:30:42', '2024-05-19 01:30:42'),
(697, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:34:48 pm', '2024-05-19 01:34:48', '2024-05-19 01:34:48'),
(698, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '01:36:00 pm', '2024-05-19 01:36:00', '2024-05-19 01:36:00'),
(699, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:36:30 pm', '2024-05-19 01:36:30', '2024-05-19 01:36:30'),
(700, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:36:58 pm', '2024-05-19 01:36:58', '2024-05-19 01:36:58'),
(701, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:37:06 pm', '2024-05-19 01:37:07', '2024-05-19 01:37:07'),
(702, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:39:22 pm', '2024-05-19 01:39:22', '2024-05-19 01:39:22'),
(703, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:41:40 pm', '2024-05-19 01:41:40', '2024-05-19 01:41:40'),
(704, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:43:39 pm', '2024-05-19 01:43:40', '2024-05-19 01:43:40'),
(705, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:43:51 pm', '2024-05-19 01:43:51', '2024-05-19 01:43:51'),
(706, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:44:39 pm', '2024-05-19 01:44:40', '2024-05-19 01:44:40'),
(707, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:45:46 pm', '2024-05-19 01:45:46', '2024-05-19 01:45:46'),
(708, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:53:35 pm', '2024-05-19 01:53:36', '2024-05-19 01:53:36'),
(709, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:54:24 pm', '2024-05-19 01:54:25', '2024-05-19 01:54:25'),
(710, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:55:08 pm', '2024-05-19 01:55:08', '2024-05-19 01:55:08'),
(711, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:55:56 pm', '2024-05-19 01:55:56', '2024-05-19 01:55:56'),
(712, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:56:58 pm', '2024-05-19 01:56:58', '2024-05-19 01:56:58'),
(713, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:58:17 pm', '2024-05-19 01:58:17', '2024-05-19 01:58:17'),
(714, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:59:43 pm', '2024-05-19 01:59:43', '2024-05-19 01:59:43'),
(715, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:59:56 pm', '2024-05-19 01:59:56', '2024-05-19 01:59:56'),
(716, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:15:46 pm', '2024-05-19 02:15:47', '2024-05-19 02:15:47'),
(717, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:16:45 pm', '2024-05-19 02:16:45', '2024-05-19 02:16:45'),
(718, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:16:57 pm', '2024-05-19 02:16:58', '2024-05-19 02:16:58'),
(719, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:21:52 pm', '2024-05-19 02:21:52', '2024-05-19 02:21:52'),
(720, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:22:24 pm', '2024-05-19 02:22:25', '2024-05-19 02:22:25'),
(721, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:23:24 pm', '2024-05-19 02:23:24', '2024-05-19 02:23:24'),
(722, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:32:31 pm', '2024-05-19 02:32:31', '2024-05-19 02:32:31'),
(723, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '02:33:32 pm', '2024-05-19 02:33:32', '2024-05-19 02:33:32'),
(724, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:01:35 pm', '2024-05-19 03:01:36', '2024-05-19 03:01:36'),
(725, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:01:52 pm', '2024-05-19 03:01:52', '2024-05-19 03:01:52'),
(726, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:02:24 pm', '2024-05-19 03:02:24', '2024-05-19 03:02:24'),
(727, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:03:57 pm', '2024-05-19 03:03:58', '2024-05-19 03:03:58'),
(728, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:04:16 pm', '2024-05-19 03:04:16', '2024-05-19 03:04:16'),
(729, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:06:45 pm', '2024-05-19 03:06:45', '2024-05-19 03:06:45'),
(730, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:09:56 pm', '2024-05-19 03:09:57', '2024-05-19 03:09:57'),
(731, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:10:53 pm', '2024-05-19 03:10:54', '2024-05-19 03:10:54'),
(732, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:11:11 pm', '2024-05-19 03:11:12', '2024-05-19 03:11:12'),
(733, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:12:07 pm', '2024-05-19 03:12:07', '2024-05-19 03:12:07'),
(734, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:17:19 pm', '2024-05-19 03:17:19', '2024-05-19 03:17:19'),
(735, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:17:38 pm', '2024-05-19 03:17:38', '2024-05-19 03:17:38'),
(736, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:18:17 pm', '2024-05-19 03:18:17', '2024-05-19 03:18:17'),
(737, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:22:02 pm', '2024-05-19 03:22:02', '2024-05-19 03:22:02'),
(738, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:22:46 pm', '2024-05-19 03:22:46', '2024-05-19 03:22:46'),
(739, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:23:21 pm', '2024-05-19 03:23:22', '2024-05-19 03:23:22'),
(740, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:24:10 pm', '2024-05-19 03:24:10', '2024-05-19 03:24:10'),
(741, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:24:23 pm', '2024-05-19 03:24:24', '2024-05-19 03:24:24'),
(742, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:28:22 pm', '2024-05-19 03:28:22', '2024-05-19 03:28:22'),
(743, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:28:30 pm', '2024-05-19 03:28:30', '2024-05-19 03:28:30'),
(744, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:30:11 pm', '2024-05-19 03:30:11', '2024-05-19 03:30:11'),
(745, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:30:56 pm', '2024-05-19 03:30:56', '2024-05-19 03:30:56'),
(746, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:32:17 pm', '2024-05-19 03:32:17', '2024-05-19 03:32:17'),
(747, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:35:21 pm', '2024-05-19 03:35:22', '2024-05-19 03:35:22'),
(748, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:39:17 pm', '2024-05-19 03:39:17', '2024-05-19 03:39:17'),
(749, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:50:47 pm', '2024-05-19 03:50:47', '2024-05-19 03:50:47'),
(750, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:51:08 pm', '2024-05-19 03:51:08', '2024-05-19 03:51:08'),
(751, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:54:53 pm', '2024-05-19 03:54:53', '2024-05-19 03:54:53'),
(752, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:55:56 pm', '2024-05-19 03:55:56', '2024-05-19 03:55:56'),
(753, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:58:41 pm', '2024-05-19 03:58:42', '2024-05-19 03:58:42'),
(754, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:01:34 pm', '2024-05-19 04:01:34', '2024-05-19 04:01:34'),
(755, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:13:24 pm', '2024-05-19 04:13:25', '2024-05-19 04:13:25'),
(756, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:14:49 pm', '2024-05-19 04:14:49', '2024-05-19 04:14:49'),
(757, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:15:17 pm', '2024-05-19 04:15:17', '2024-05-19 04:15:17'),
(758, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:15:25 pm', '2024-05-19 04:15:25', '2024-05-19 04:15:25'),
(759, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:19:03 pm', '2024-05-19 04:19:03', '2024-05-19 04:19:03'),
(760, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:19:54 pm', '2024-05-19 04:19:54', '2024-05-19 04:19:54'),
(761, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:20:33 pm', '2024-05-19 04:20:33', '2024-05-19 04:20:33');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(762, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:20:39 pm', '2024-05-19 04:20:39', '2024-05-19 04:20:39'),
(763, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:22:22 pm', '2024-05-19 04:22:22', '2024-05-19 04:22:22'),
(764, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:26:16 pm', '2024-05-19 04:26:17', '2024-05-19 04:26:17'),
(765, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:41:25 pm', '2024-05-19 04:41:26', '2024-05-19 04:41:26'),
(766, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:45:14 pm', '2024-05-19 04:45:14', '2024-05-19 04:45:14'),
(767, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:45:39 pm', '2024-05-19 04:45:40', '2024-05-19 04:45:40'),
(768, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:51:10 pm', '2024-05-19 04:51:11', '2024-05-19 04:51:11'),
(769, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:54:04 pm', '2024-05-19 04:54:04', '2024-05-19 04:54:04'),
(770, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:54:59 pm', '2024-05-19 04:54:59', '2024-05-19 04:54:59'),
(771, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:55:46 pm', '2024-05-19 04:55:47', '2024-05-19 04:55:47'),
(772, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:57:22 pm', '2024-05-19 04:57:22', '2024-05-19 04:57:22'),
(773, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:58:08 pm', '2024-05-19 04:58:09', '2024-05-19 04:58:09'),
(774, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:01:06 pm', '2024-05-19 05:01:06', '2024-05-19 05:01:06'),
(775, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:01:37 pm', '2024-05-19 05:01:37', '2024-05-19 05:01:37'),
(776, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:03:57 pm', '2024-05-19 05:03:58', '2024-05-19 05:03:58'),
(777, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:06:35 pm', '2024-05-19 05:06:35', '2024-05-19 05:06:35'),
(778, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:08:54 pm', '2024-05-19 05:08:55', '2024-05-19 05:08:55'),
(779, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:09:15 pm', '2024-05-19 05:09:16', '2024-05-19 05:09:16'),
(780, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:10:04 pm', '2024-05-19 05:10:04', '2024-05-19 05:10:04'),
(781, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:10:13 pm', '2024-05-19 05:10:14', '2024-05-19 05:10:14'),
(782, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:12:44 pm', '2024-05-19 05:12:44', '2024-05-19 05:12:44'),
(783, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:14:53 pm', '2024-05-19 05:14:54', '2024-05-19 05:14:54'),
(784, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:15:59 pm', '2024-05-19 05:16:00', '2024-05-19 05:16:00'),
(785, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:21:11 pm', '2024-05-19 05:21:11', '2024-05-19 05:21:11'),
(786, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (X11; Linux aarch64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.188 Safari/537.36 CrKey/1.54.250320', '1', '05:21:41 pm', '2024-05-19 05:21:41', '2024-05-19 05:21:41'),
(787, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:28:17 pm', '2024-05-19 05:28:17', '2024-05-19 05:28:17'),
(788, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:29:48 pm', '2024-05-19 05:29:48', '2024-05-19 05:29:48'),
(789, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:32:46 pm', '2024-05-19 05:32:46', '2024-05-19 05:32:46'),
(790, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:34:01 pm', '2024-05-19 05:34:01', '2024-05-19 05:34:01'),
(791, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:36:08 pm', '2024-05-19 05:36:09', '2024-05-19 05:36:09'),
(792, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:37:09 pm', '2024-05-19 05:37:11', '2024-05-19 05:37:11'),
(793, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:37:59 pm', '2024-05-19 05:38:00', '2024-05-19 05:38:00'),
(794, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:39:31 pm', '2024-05-19 05:39:31', '2024-05-19 05:39:31'),
(795, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:40:02 pm', '2024-05-19 05:40:02', '2024-05-19 05:40:02'),
(796, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:42:25 pm', '2024-05-19 05:42:26', '2024-05-19 05:42:26'),
(797, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:42:33 pm', '2024-05-19 05:42:33', '2024-05-19 05:42:33'),
(798, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:42:46 pm', '2024-05-19 05:42:46', '2024-05-19 05:42:46'),
(799, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:44:36 pm', '2024-05-19 05:44:36', '2024-05-19 05:44:36'),
(800, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:46:46 pm', '2024-05-19 05:46:47', '2024-05-19 05:46:47'),
(801, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:47:24 pm', '2024-05-19 05:47:24', '2024-05-19 05:47:24'),
(802, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:49:54 pm', '2024-05-19 05:49:54', '2024-05-19 05:49:54'),
(803, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:50:10 pm', '2024-05-19 05:50:10', '2024-05-19 05:50:10'),
(804, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:50:56 pm', '2024-05-19 05:50:57', '2024-05-19 05:50:57'),
(805, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:52:15 pm', '2024-05-19 05:52:16', '2024-05-19 05:52:16'),
(806, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:52:29 pm', '2024-05-19 05:52:30', '2024-05-19 05:52:30'),
(807, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:54:15 pm', '2024-05-19 05:54:16', '2024-05-19 05:54:16'),
(808, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:54:55 pm', '2024-05-19 05:54:55', '2024-05-19 05:54:55'),
(809, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:03:02 pm', '2024-05-20 01:03:03', '2024-05-20 01:03:03'),
(810, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:03:20 pm', '2024-05-20 01:03:20', '2024-05-20 01:03:20'),
(811, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:03:29 pm', '2024-05-20 01:03:30', '2024-05-20 01:03:30'),
(812, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:05:07 pm', '2024-05-20 01:05:07', '2024-05-20 01:05:07'),
(813, 'Logged In.', 'http://localhost/ctgResV1/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:52:12 am', '2024-05-20 22:52:14', '2024-05-20 22:52:14'),
(814, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:52:16 am', '2024-05-20 22:52:16', '2024-05-20 22:52:16'),
(815, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '10:52:34 am', '2024-05-20 22:52:35', '2024-05-20 22:52:35'),
(816, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:02:09 am', '2024-05-20 23:02:09', '2024-05-20 23:02:09'),
(817, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:02:44 am', '2024-05-20 23:02:44', '2024-05-20 23:02:44'),
(818, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:03:25 am', '2024-05-20 23:03:26', '2024-05-20 23:03:26'),
(819, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:14:05 am', '2024-05-20 23:14:06', '2024-05-20 23:14:06'),
(820, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:17:19 am', '2024-05-20 23:17:19', '2024-05-20 23:17:19'),
(821, 'Table list ', 'http://localhost/ctgResV1/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:21:52 am', '2024-05-20 23:21:53', '2024-05-20 23:21:53'),
(822, 'create employee ', 'http://localhost/ctgResV1/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:22:09 am', '2024-05-20 23:22:09', '2024-05-20 23:22:09'),
(823, ' employee store', 'http://localhost/ctgResV1/admin/user', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:22:50 am', '2024-05-20 23:22:50', '2024-05-20 23:22:50'),
(824, ' employee store', 'http://localhost/ctgResV1/admin/user', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:24:08 am', '2024-05-20 23:24:09', '2024-05-20 23:24:09'),
(825, ' employee store', 'http://localhost/ctgResV1/admin/user', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:24:34 am', '2024-05-20 23:24:35', '2024-05-20 23:24:35'),
(826, 'view employee list', 'http://localhost/ctgResV1/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:24:35 am', '2024-05-20 23:24:36', '2024-05-20 23:24:36'),
(827, 'create employee ', 'http://localhost/ctgResV1/admin/user/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:25:09 am', '2024-05-20 23:25:09', '2024-05-20 23:25:09'),
(828, ' employee store', 'http://localhost/ctgResV1/admin/user', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:25:38 am', '2024-05-20 23:25:38', '2024-05-20 23:25:38'),
(829, 'view employee list', 'http://localhost/ctgResV1/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:25:39 am', '2024-05-20 23:25:39', '2024-05-20 23:25:39'),
(830, 'Table list ', 'http://localhost/ctgResV1/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:26:03 am', '2024-05-20 23:26:04', '2024-05-20 23:26:04'),
(831, 'Table store ', 'http://localhost/ctgResV1/admin/tableList', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:26:15 am', '2024-05-20 23:26:16', '2024-05-20 23:26:16'),
(832, 'Table list ', 'http://localhost/ctgResV1/admin/tableList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:26:16 am', '2024-05-20 23:26:16', '2024-05-20 23:26:16'),
(833, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:41:38 am', '2024-05-20 23:41:38', '2024-05-20 23:41:38'),
(834, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '11:42:30 am', '2024-05-20 23:42:30', '2024-05-20 23:42:30'),
(835, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:04:30 pm', '2024-05-21 00:04:30', '2024-05-21 00:04:30'),
(836, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:06:21 pm', '2024-05-21 00:06:21', '2024-05-21 00:06:21'),
(837, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:08:39 pm', '2024-05-21 00:08:39', '2024-05-21 00:08:39'),
(838, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:08:56 pm', '2024-05-21 00:08:56', '2024-05-21 00:08:56'),
(839, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '12:10:01 pm', '2024-05-21 00:10:01', '2024-05-21 00:10:01'),
(840, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:04:28 pm', '2024-05-21 01:04:28', '2024-05-21 01:04:28'),
(841, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:08:28 pm', '2024-05-21 01:08:28', '2024-05-21 01:08:28'),
(842, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:10:21 pm', '2024-05-21 01:10:21', '2024-05-21 01:10:21'),
(843, 'View Role Edit Page.', 'http://localhost/ctgResV1/admin/role/3/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:10:26 pm', '2024-05-21 01:10:27', '2024-05-21 01:10:27'),
(844, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:12:28 pm', '2024-05-21 01:12:28', '2024-05-21 01:12:28'),
(845, ' create permission ', 'http://localhost/ctgResV1/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:13:09 pm', '2024-05-21 01:13:09', '2024-05-21 01:13:09'),
(846, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:13:10 pm', '2024-05-21 01:13:10', '2024-05-21 01:13:10'),
(847, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:13:10 pm', '2024-05-21 01:13:10', '2024-05-21 01:13:10'),
(848, ' create permission ', 'http://localhost/ctgResV1/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:14:02 pm', '2024-05-21 01:14:02', '2024-05-21 01:14:02'),
(849, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:14:02 pm', '2024-05-21 01:14:03', '2024-05-21 01:14:03'),
(850, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:14:03 pm', '2024-05-21 01:14:03', '2024-05-21 01:14:03'),
(851, ' create permission ', 'http://localhost/ctgResV1/admin/permission', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:15:12 pm', '2024-05-21 01:15:12', '2024-05-21 01:15:12'),
(852, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:15:13 pm', '2024-05-21 01:15:13', '2024-05-21 01:15:13'),
(853, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:15:13 pm', '2024-05-21 01:15:13', '2024-05-21 01:15:13'),
(854, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:15:40 pm', '2024-05-21 01:15:40', '2024-05-21 01:15:40'),
(855, 'permission list', 'http://localhost/ctgResV1/admin/permission', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:16:26 pm', '2024-05-21 01:16:26', '2024-05-21 01:16:26'),
(856, 'View System Information.', 'http://localhost/ctgResV1/admin/systemInformation', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:16:33 pm', '2024-05-21 01:16:33', '2024-05-21 01:16:33'),
(857, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:16:38 pm', '2024-05-21 01:16:38', '2024-05-21 01:16:38'),
(858, 'View Role Edit Page.', 'http://localhost/ctgResV1/admin/role/3/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:16:42 pm', '2024-05-21 01:16:43', '2024-05-21 01:16:43'),
(859, 'Update Role.', 'http://localhost/ctgResV1/admin/role/3', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:17:12 pm', '2024-05-21 01:17:12', '2024-05-21 01:17:12'),
(860, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:17:13 pm', '2024-05-21 01:17:13', '2024-05-21 01:17:13'),
(861, 'View Role Edit Page.', 'http://localhost/ctgResV1/admin/role/2/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:17:26 pm', '2024-05-21 01:17:26', '2024-05-21 01:17:26'),
(862, 'Update Role.', 'http://localhost/ctgResV1/admin/role/2', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:17:43 pm', '2024-05-21 01:17:44', '2024-05-21 01:17:44'),
(863, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:17:44 pm', '2024-05-21 01:17:45', '2024-05-21 01:17:45'),
(864, 'View Role Edit Page.', 'http://localhost/ctgResV1/admin/role/1/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:17:56 pm', '2024-05-21 01:17:57', '2024-05-21 01:17:57'),
(865, 'Update Role.', 'http://localhost/ctgResV1/admin/role/1', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:18:02 pm', '2024-05-21 01:18:03', '2024-05-21 01:18:03'),
(866, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:18:06 pm', '2024-05-21 01:18:06', '2024-05-21 01:18:06'),
(867, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:19:59 pm', '2024-05-21 01:20:00', '2024-05-21 01:20:00'),
(868, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:30:03 pm', '2024-05-21 01:30:03', '2024-05-21 01:30:03'),
(869, 'Role List.', 'http://localhost/ctgResV1/admin/role', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:30:19 pm', '2024-05-21 01:30:20', '2024-05-21 01:30:20'),
(870, 'create employee ', 'http://localhost/ctgResV1/admin/customer/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:37:50 pm', '2024-05-21 01:37:51', '2024-05-21 01:37:51'),
(871, 'view employee list', 'http://localhost/ctgResV1/admin/customer', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:37:54 pm', '2024-05-21 01:37:54', '2024-05-21 01:37:54'),
(872, 'view employee list', 'http://localhost/ctgResV1/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:38:35 pm', '2024-05-21 01:38:35', '2024-05-21 01:38:35'),
(873, 'edit employee list', 'http://localhost/ctgResV1/admin/user/3/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:38:43 pm', '2024-05-21 01:38:43', '2024-05-21 01:38:43'),
(874, 'update employee list', 'http://localhost/ctgResV1/admin/user/3', 'PUT', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:39:04 pm', '2024-05-21 01:39:04', '2024-05-21 01:39:04'),
(875, 'view employee list', 'http://localhost/ctgResV1/admin/user', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:39:05 pm', '2024-05-21 01:39:05', '2024-05-21 01:39:05'),
(876, 'Logged Out.', 'http://localhost/ctgResV1/admin/logout/submit', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:39:17 pm', '2024-05-21 01:39:17', '2024-05-21 01:39:17'),
(877, 'Logged In.', 'http://localhost/ctgResV1/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:39:29 pm', '2024-05-21 01:39:29', '2024-05-21 01:39:29'),
(878, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:39:30 pm', '2024-05-21 01:39:30', '2024-05-21 01:39:30'),
(879, 'Logged Out.', 'http://localhost/ctgResV1/admin/logout/submit', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:40:00 pm', '2024-05-21 01:40:00', '2024-05-21 01:40:00'),
(880, 'Logged In.', 'http://localhost/ctgResV1/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:40:10 pm', '2024-05-21 01:40:11', '2024-05-21 01:40:11'),
(881, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:40:11 pm', '2024-05-21 01:40:12', '2024-05-21 01:40:12'),
(882, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:40:15 pm', '2024-05-21 01:40:16', '2024-05-21 01:40:16'),
(883, 'Logged Out.', 'http://localhost/ctgResV1/admin/logout/submit', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '01:40:25 pm', '2024-05-21 01:40:26', '2024-05-21 01:40:26'),
(884, 'Logged In.', 'http://localhost/ctgResV1/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:40:36 pm', '2024-05-21 01:40:36', '2024-05-21 01:40:36'),
(885, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:40:37 pm', '2024-05-21 01:40:37', '2024-05-21 01:40:37'),
(886, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:40:43 pm', '2024-05-21 01:40:43', '2024-05-21 01:40:43'),
(887, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:41:18 pm', '2024-05-21 01:41:19', '2024-05-21 01:41:19'),
(888, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:41:41 pm', '2024-05-21 01:41:41', '2024-05-21 01:41:41'),
(889, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:43:03 pm', '2024-05-21 01:43:04', '2024-05-21 01:43:04'),
(890, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:43:07 pm', '2024-05-21 01:43:07', '2024-05-21 01:43:07'),
(891, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:43:15 pm', '2024-05-21 01:43:15', '2024-05-21 01:43:15'),
(892, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:43:30 pm', '2024-05-21 01:43:30', '2024-05-21 01:43:30'),
(893, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:43:36 pm', '2024-05-21 01:43:36', '2024-05-21 01:43:36'),
(894, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:44:27 pm', '2024-05-21 01:44:28', '2024-05-21 01:44:28'),
(895, 'Pos Add', 'http://localhost/ctgResV1/admin/waiterDashBoard', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '01:44:33 pm', '2024-05-21 01:44:33', '2024-05-21 01:44:33'),
(896, 'Logged Out.', 'http://localhost/ctgResV1/admin/logout/submit', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2', '02:07:53 pm', '2024-05-21 02:07:53', '2024-05-21 02:07:53'),
(897, 'Logged Out.', 'http://localhost/ctgResV1/admin/logout/submit', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:35:58 pm', '2024-05-21 02:35:58', '2024-05-21 02:35:58'),
(898, 'Logged In.', 'http://localhost/ctgResV1/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:37:24 pm', '2024-05-21 02:37:25', '2024-05-21 02:37:25'),
(899, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:37:25 pm', '2024-05-21 02:37:26', '2024-05-21 02:37:26'),
(900, 'Menu List View', 'http://localhost/ctgResV1/admin/menuList', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:37:31 pm', '2024-05-21 02:37:31', '2024-05-21 02:37:31'),
(901, 'Menu List Update', 'http://localhost/ctgResV1/admin/menuList/2/edit', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:37:37 pm', '2024-05-21 02:37:38', '2024-05-21 02:37:38'),
(902, 'Logged In.', 'http://localhost/ctgResV1/admin/login', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:49:12 pm', '2024-05-21 02:49:13', '2024-05-21 02:49:13'),
(903, 'view dashboard', 'http://localhost/ctgResV1/admin', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '02:49:13 pm', '2024-05-21 02:49:14', '2024-05-21 02:49:14'),
(904, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:12:20 pm', '2024-05-21 03:12:20', '2024-05-21 03:12:20'),
(905, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:36:26 pm', '2024-05-21 03:36:27', '2024-05-21 03:36:27'),
(906, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:39:33 pm', '2024-05-21 03:39:34', '2024-05-21 03:39:34'),
(907, ' employee store', 'http://localhost/ctgResV1/admin/customer', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:39:45 pm', '2024-05-21 03:39:46', '2024-05-21 03:39:46'),
(908, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:43:19 pm', '2024-05-21 03:43:19', '2024-05-21 03:43:19'),
(909, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:43:37 pm', '2024-05-21 03:43:37', '2024-05-21 03:43:37'),
(910, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:44:43 pm', '2024-05-21 03:44:43', '2024-05-21 03:44:43'),
(911, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:45:08 pm', '2024-05-21 03:45:08', '2024-05-21 03:45:08');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip_or_mac`, `agent`, `admin_id`, `activity_time`, `created_at`, `updated_at`) VALUES
(912, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:46:59 pm', '2024-05-21 03:47:00', '2024-05-21 03:47:00'),
(913, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:47:27 pm', '2024-05-21 03:47:27', '2024-05-21 03:47:27'),
(914, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '03:51:18 pm', '2024-05-21 03:51:19', '2024-05-21 03:51:19'),
(915, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:02:02 pm', '2024-05-21 04:02:02', '2024-05-21 04:02:02'),
(916, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:04:48 pm', '2024-05-21 04:04:48', '2024-05-21 04:04:48'),
(917, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:05:40 pm', '2024-05-21 04:05:41', '2024-05-21 04:05:41'),
(918, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:06:45 pm', '2024-05-21 04:06:45', '2024-05-21 04:06:45'),
(919, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:07:09 pm', '2024-05-21 04:07:09', '2024-05-21 04:07:09'),
(920, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:09:03 pm', '2024-05-21 04:09:04', '2024-05-21 04:09:04'),
(921, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:09:12 pm', '2024-05-21 04:09:12', '2024-05-21 04:09:12'),
(922, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:10:12 pm', '2024-05-21 04:10:12', '2024-05-21 04:10:12'),
(923, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:14:12 pm', '2024-05-21 04:14:12', '2024-05-21 04:14:12'),
(924, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:14:53 pm', '2024-05-21 04:14:54', '2024-05-21 04:14:54'),
(925, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:15:39 pm', '2024-05-21 04:15:39', '2024-05-21 04:15:39'),
(926, 'Pos Add', 'http://localhost/ctgResV1/admin/pos/create', 'GET', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '04:21:42 pm', '2024-05-21 04:21:42', '2024-05-21 04:21:42'),
(927, 'Logged Out.', 'http://localhost/ctgResV1/admin/logout/submit', 'POST', 'B0-A7-B9-EB-20-D0   \\Device\\Tcpip_{BE34F30D-E490-468C-860E-1BA42BCC5542}', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '1', '05:09:23 pm', '2024-05-21 05:09:24', '2024-05-21 05:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `product_id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '[\"2\"]', 'DECK', 'public/uploads/menuImage/2024-01-0517145277713603846225.jpg', '1', '2024-04-30 19:42:52', '2024-04-30 19:42:52'),
(2, '[\"2\",\"1\"]', 'kajol', 'public/uploads/menuImage/2024-01-0517145278763760027479.jpg', '1', '2024-04-30 19:44:36', '2024-04-30 19:44:36');

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
(26, '2024_04_26_081839_create_sub_categories_table', 2),
(27, '2024_04_29_161255_create_product_add_ons_table', 3),
(28, '2024_04_29_161341_create_product_attributes_table', 3),
(29, '2024_04_29_173457_create_products_table', 4),
(30, '2024_04_29_173620_create_product_variations_table', 4),
(31, '2024_04_29_173659_create_product_variation_lists_table', 4),
(32, '2024_04_29_181006_create_menus_table', 5),
(33, '2024_05_01_024540_create_orders_table', 6),
(34, '2024_05_01_024605_create_ship_addresses_table', 6),
(35, '2024_05_21_051921_create_order_details_table', 6);

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
(2, 'App\\Models\\Admin', 3),
(3, 'App\\Models\\Admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `subtotal` varchar(255) NOT NULL,
  `addon` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `extra_discount` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `delivery_charge` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `order_type` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `waiter_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `subtotal`, `addon`, `discount`, `extra_discount`, `vat`, `delivery_charge`, `grand_total`, `status`, `admin_id`, `order_type`, `customer_id`, `branch`, `waiter_id`, `created_at`, `updated_at`) VALUES
(2, '9508353953047525', '1013', '5', '2', '4', '40', NULL, '1052', 'pending', '1', NULL, NULL, NULL, NULL, '2024-05-21 00:10:00', '2024-05-21 00:10:00'),
(5, '8407157078473446', '1000', '0', '10', '0', '50', NULL, '1040', 'pending', '1', NULL, NULL, NULL, NULL, '2024-05-21 01:08:27', '2024-05-21 01:08:27'),
(6, '4945673720282377', '953', '5', '2', '0', '38', NULL, '994', 'pending', '1', 'Home Delivery', 'Walk In Customer', 'Dhaka', '2', '2024-05-21 04:21:41', '2024-05-21 04:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text DEFAULT NULL,
  `product_quantity` varchar(255) DEFAULT NULL,
  `prodcut_price` varchar(255) DEFAULT NULL,
  `addOnPrice` varchar(255) DEFAULT NULL,
  `variationPrice` varchar(255) DEFAULT NULL,
  `addOnLabelList` text DEFAULT NULL,
  `varationLabelList` text DEFAULT NULL,
  `variationPriceList` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_quantity`, `prodcut_price`, `addOnPrice`, `variationPrice`, `addOnLabelList`, `varationLabelList`, `variationPriceList`, `status`, `created_at`, `updated_at`) VALUES
(2, '2', '2', 'Burger', 'public/uploads/ProductImage/2024-19-0517160993062498506786.png', '2', '444', '5', '60', '2', 'variation_basic_checkbox_soft drinks,variation_basic_checkbox_water', '30,30', 'Processing', '2024-05-21 00:10:00', '2024-05-21 00:47:22'),
(3, '5', '3', 'Chicken Pizza', 'public/uploads/ProductImage/2024-19-0517160990684645722605.jpg', '2', '500', '0', '0', NULL, NULL, NULL, 'Pending', '2024-05-21 01:08:27', '2024-05-21 01:08:27'),
(4, '6', '2', 'Burger', 'public/uploads/ProductImage/2024-19-0517160993062498506786.png', '2', '444', '5', '30', NULL, NULL, NULL, 'Pending', '2024-05-21 04:21:41', '2024-05-21 04:21:41');

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
(52, 'subcategoryUpdate', 'SubCategory', 'admin', NULL, NULL),
(61, 'productAttributeAdd', 'ProductAttribute', 'admin', NULL, NULL),
(62, 'productAttributeView', 'ProductAttribute', 'admin', NULL, NULL),
(63, 'productAttributeDelete', 'ProductAttribute', 'admin', NULL, NULL),
(64, 'productAttributeUpdate', 'ProductAttribute', 'admin', NULL, NULL),
(65, 'productAddOnAdd', 'productAddOn', 'admin', NULL, NULL),
(66, 'productAddOnView', 'productAddOn', 'admin', NULL, NULL),
(67, 'productAddOnDelete', 'productAddOn', 'admin', NULL, NULL),
(68, 'productAddOnUpdate', 'productAddOn', 'admin', NULL, NULL),
(69, 'productAdd', 'product', 'admin', NULL, NULL),
(70, 'productView', 'product', 'admin', NULL, NULL),
(71, 'productDelete', 'product', 'admin', NULL, NULL),
(72, 'productUpdate', 'product', 'admin', NULL, NULL),
(73, 'menuListAdd', 'menuList', 'admin', NULL, NULL),
(74, 'menuListView', 'menuList', 'admin', NULL, NULL),
(75, 'menuListDelete', 'menuList', 'admin', NULL, NULL),
(76, 'menuListUpdate', 'menuList', 'admin', NULL, NULL),
(77, 'posAdd', 'pos', 'admin', NULL, NULL),
(78, 'posView', 'pos', 'admin', NULL, NULL),
(79, 'posDelete', 'pos', 'admin', NULL, NULL),
(80, 'posUpdate', 'pos', 'admin', NULL, NULL),
(81, 'orderAdd', 'order', 'admin', NULL, NULL),
(82, 'orderView', 'order', 'admin', NULL, NULL),
(83, 'orderDelete', 'order', 'admin', NULL, NULL),
(84, 'orderUpdate', 'order', 'admin', NULL, NULL),
(85, 'KitchenDashboardAdd', 'KitchenDashboard', 'admin', NULL, NULL),
(86, 'waiterDashboardAdd', 'waiterDashboard', 'admin', NULL, NULL);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `product_short_description` text NOT NULL,
  `product_image` text NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `sub_category_id` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `main_type` varchar(255) DEFAULT NULL,
  `available_status` varchar(255) NOT NULL,
  `available_time` varchar(255) NOT NULL,
  `available_till` varchar(255) NOT NULL,
  `default_price` varchar(255) NOT NULL,
  `discount_type` varchar(255) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `tax_type` varchar(255) NOT NULL,
  `tax_rate` varchar(255) NOT NULL,
  `product_add_on` text DEFAULT NULL,
  `variations` longtext DEFAULT NULL,
  `product_stock_type` varchar(255) NOT NULL,
  `product_stock_quantity` varchar(255) DEFAULT NULL,
  `approximate_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_slug`, `product_short_description`, `product_image`, `category_id`, `sub_category_id`, `item_type`, `product_type`, `main_type`, `available_status`, `available_time`, `available_till`, `default_price`, `discount_type`, `discount_price`, `tax_type`, `tax_rate`, `product_add_on`, `variations`, `product_stock_type`, `product_stock_quantity`, `approximate_time`, `created_at`, `updated_at`) VALUES
(2, 'Burger', 'burger', 'Indulge in layers of flame-grilled flavor · Match the Whopper® sandwiches and win bonus Crowns!', 'public/uploads/ProductImage/2024-19-0517160993062498506786.png', '6', NULL, 'Single', 'Non Vegetable', 'Stater', 'Yes', '11:00 PM', '11:00 PM', '444', 'Amount', '2', 'Percentage', '4', '[\"2\"]', '[{\"name\":\"Extra\",\"type\":\"multi\",\"min\":\"1\",\"max\":\"2\",\"required\":\"off\",\"values\":[{\"label\":\"soft drinks\",\"optionPrice\":\"30\"},{\"label\":\"water\",\"optionPrice\":\"30\"}]}]', 'Unlimited', '444444', '40 Minit', '2024-04-30 11:03:21', '2024-05-19 00:15:06'),
(3, 'Chicken Pizza', 'chicken-pizza', 'Chicken Pizza recipe with step by step pictures. This recipe is a delicious mix of Pizza base, topped with cheese, onion, garlic.', 'public/uploads/ProductImage/2024-19-0517160990684645722605.jpg', '4', NULL, 'Single', 'Non Vegetable', 'MainCourse', 'Yes', '12:00 PM', '12:00 PM', '500', 'Amount', '10', 'Percentage', '5', '[\"3\"]', '[{\"name\":\"Size with Addon\",\"type\":\"multi\",\"min\":\"1\",\"max\":\"2\",\"required\":\"off\",\"values\":[{\"label\":\"12\\\" extra meat\",\"optionPrice\":\"21\"},{\"label\":\"6\\\" extra cheese\",\"optionPrice\":\"12\"}]}]', 'Unlimited', NULL, '40 Minit', '2024-05-19 00:11:08', '2024-05-19 00:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_add_ons`
--

CREATE TABLE `product_add_ons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_add_ons`
--

INSERT INTO `product_add_ons` (`id`, `name`, `slug`, `price`, `tax`, `created_at`, `updated_at`) VALUES
(2, 'Myanose', 'myanose', '5', '0', '2024-04-29 23:30:24', '2024-05-19 00:01:25'),
(3, 'sauce', 'sauce', '5', '0', '2024-04-29 23:30:37', '2024-05-19 00:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Cheese', 'cheese', '2024-04-29 22:58:46', '2024-05-19 00:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `selecting_type` text NOT NULL,
  `min_quantity` text NOT NULL,
  `max_quantity` varchar(255) NOT NULL,
  `required_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variation_lists`
--

CREATE TABLE `product_variation_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` text NOT NULL,
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
(2, 'kitchen', 'admin', '2024-04-28 23:11:41', '2024-05-21 01:17:44'),
(3, 'waiter', 'admin', '2024-04-28 23:11:41', '2024-05-21 01:17:12'),
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
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
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
(52, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(85, 2),
(86, 1),
(86, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ship_addresses`
--

CREATE TABLE `ship_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_addresses`
--

INSERT INTO `ship_addresses` (`id`, `order_id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, '6', 'Walk In Customer', '11111111111', NULL, 'test', '2024-05-21 04:21:41', '2024-05-21 04:21:41');

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
(1, '8', 'veg', 'veg', NULL, '2024-04-29 05:13:14', '2024-05-18 23:59:38'),
(2, '8', 'non-veg', 'non-veg', NULL, '2024-04-29 05:13:37', '2024-05-19 00:00:05');

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
(1, 'Progga', '11111111111', 'dg@gmail.com', 'বনানী ,ঢাকা', '#', '#', 'public/uploads/171453820720240501WhatsApp Image 2024-05-01 at 10.32.57 AM.jpeg', 'public/uploads/171453692120240501WhatsApp Image 2024-05-01 at 10.14.34 AM.jpeg', '2024-04-29 00:07:10', '2024-04-30 22:36:47');

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

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `table_slug`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'tableOne', 'tableone', '2', '2024-05-20 23:26:16', '2024-05-20 23:26:16');

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
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_add_ons`
--
ALTER TABLE `product_add_ons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variation_lists`
--
ALTER TABLE `product_variation_lists`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `ship_addresses`
--
ALTER TABLE `ship_addresses`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designation_lists`
--
ALTER TABLE `designation_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=928;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_add_ons`
--
ALTER TABLE `product_add_ons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variation_lists`
--
ALTER TABLE `product_variation_lists`
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
-- AUTO_INCREMENT for table `ship_addresses`
--
ALTER TABLE `ship_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
