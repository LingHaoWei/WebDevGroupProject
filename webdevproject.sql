-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 03:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdevproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adam Thorn', 'admin@gmail.com', NULL, '$2y$10$TvzZgjmoIxkvVnEjuVPukOq8LMr7ES.daSQzj91IUj9.iLQCu6cHO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `brandID`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'Phone01', 'Available', '2023-01-06 00:50:51', '2023-01-17 18:44:20'),
(2, 'Apple', 'Phone02', 'Available', '2023-01-06 00:52:14', '2023-01-11 00:22:59'),
(3, 'Oneplus', 'B003', 'Available', '2023-01-12 00:30:45', '2023-01-18 04:03:13'),
(4, 'Acer', 'B004', 'Available', '2023-01-12 00:49:52', '2023-01-17 06:12:43'),
(6, 'XiaoMi', 'B005', 'Available', '2023-01-18 03:59:32', '2023-01-18 03:59:32'),
(7, 'Asus', 'B007', 'Available', '2023-01-18 04:03:08', '2023-01-18 04:03:08'),
(8, 'Sony', 'B008', 'Available', '2023-01-18 04:22:18', '2023-01-18 04:22:18'),
(9, 'Lenovo', 'B009', 'Available', '2023-01-18 04:24:44', '2023-01-18 04:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productCartID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `orderID`, `userID`, `productID`, `productCartID`, `quantity`, `created_at`, `updated_at`) VALUES
(10, '', '1', 'P001', 'P001-1', 1, '2023-01-11 18:00:26', '2023-01-11 18:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `categoryID`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Handphone', 'HP01', 'Available', '2023-01-06 00:51:29', '2023-01-06 00:51:29'),
(2, 'Laptop', 'LT01', 'Available', '2023-01-06 00:51:47', '2023-01-17 06:13:48'),
(3, 'Tablet', 'TB001', 'Available', '2023-01-06 23:22:46', '2023-01-11 00:22:48'),
(6, 'Desktop', 'DT01', 'Available', '2023-01-18 04:03:55', '2023-01-18 04:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_23_131506_create_brands_table', 2),
(6, '2021_08_23_131540_create_categories_table', 2),
(7, '2021_08_23_133634_create_products_table', 2),
(8, '2021_09_02_024838_create_suppliers_table', 2),
(9, '2021_11_13_133314_create_admins_table', 2),
(10, '2021_11_26_020830_create_carts_table', 2),
(11, '2021_12_11_073747_create_orders_table', 2),
(12, '2021_12_11_073813_create_order_details_table', 2),
(13, '2022_10_12_000000_create_users_table', 3),
(16, '2023_01_09_084600_create_customer_vouchers_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderID`, `paymentStatus`, `status`, `userID`, `amount`, `address`, `contact`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '684478531', 'Done', 'Fulfilled', '1', 6000.00, '45, Jalan Nibung, Taman Melodies,, 80250, Johor Bahru, Johor, 80250, Johor Bahru, Johor', '167363193', 'Pos Laju - MY340921', '2023-01-06 20:59:11', '2023-01-17 06:16:42'),
(2, '530059616', 'Done', 'Cancelled', '1', 2599.00, '45, Jalan Nibung, Taman Melodies,, 80250, Johor Bahru, Johor, 80250, Johor Bahru, Johor', '167363193', 'Pos Laju - MY340985', '2023-01-06 23:32:55', '2023-01-11 00:25:50'),
(3, '1266424815', 'Done', 'Fulfilled', '1', 5598.00, '45, Jalan Nibung, Taman Melodies,, 80250, Johor Bahru, Johor, 80250, Johor Bahru, Johor', '167363193', 'Pos Laju - MY340985', '2023-01-11 01:10:43', '2023-01-11 18:23:52'),
(4, '1744603384', 'Done', 'Cancelled', '1', 2599.00, '45, Jalan Nibung, Taman Melodies,, 80250, Johor Bahru, Johor, 80250, Johor Bahru, Johor', '167363193', 'Cancel', '2023-01-11 04:45:53', '2023-01-18 06:09:55'),
(8, '1271885896', 'Done', 'Fulfilled', '2', 3199.00, '44, Jalan desa melur, Taman Bandar Connought', '162253421', 'Pos Laju - MY340983', '2023-01-12 00:58:22', '2023-01-18 06:10:49'),
(9, '1982045625', 'Done', 'Fulfilled', '2', 2999.00, '44, Jalan desa melur, Taman Bandar Connought', '162253421', 'Pos Laju - MY3409852', '2023-01-17 18:53:11', '2023-01-18 06:12:18'),
(10, '854793055', 'Done', 'Cancelled', '2', 2999.00, '44, Jalan desa melur, Taman Bandar Connought', '162253421', 'cANCEL', '2023-01-18 06:07:15', '2023-01-18 18:25:18'),
(11, '1786943802', 'Done', 'Fulfilled', '2', 2999.00, '44, Jalan desa melur, Taman Bandar Connought', '162253421', 'Pos Laju - MY340985', '2023-01-18 18:23:10', '2023-01-18 18:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `productID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderID`, `image`, `userID`, `name`, `price`, `quantity`, `productID`, `status`, `created_at`, `updated_at`) VALUES
(18, '684478531', 'galaxyphone.jpg', '1', 'Galaxy S22', 2999.00, 2, 'P001', 'Processing', '2023-01-06 20:59:10', '2023-01-06 20:59:10'),
(20, '530059616', 'ipad air.jpg', '1', 'iPad Air', 2599.00, 1, 'P002', 'Processing', '2023-01-06 23:32:54', '2023-01-06 23:32:54'),
(21, '1266424815', 'galaxyphone.jpg', '1', 'Galaxy S22', 2999.00, 1, 'P001', 'Processing', '2023-01-11 01:10:41', '2023-01-11 01:10:41'),
(22, '1266424815', 'ipad air.jpg', '1', 'iPad Air', 2599.00, 1, 'P002', 'Processing', '2023-01-11 01:10:41', '2023-01-11 01:10:41'),
(23, '1744603384', 'ipad air.jpg', '1', 'iPad Air', 2599.00, 1, 'P002', 'Processing', '2023-01-11 04:45:52', '2023-01-11 04:45:52'),
(24, '1271885896', 'acer-aspire-5-15-6-inches-fhd-ips-fhd-laptop.jpg', '2', 'Aspire 5', 3199.00, 1, 'LT002', 'Processing', '2023-01-12 00:58:21', '2023-01-12 00:58:21'),
(25, '1982045625', 'galaxyphone.jpg', '2', 'Galaxy S22', 2999.00, 1, 'P001', 'Processing', '2023-01-17 18:53:09', '2023-01-17 18:53:09'),
(26, '854793055', 'galaxyphone.jpg', '2', 'Galaxy S10', 2999.00, 1, 'P001', 'Processing', '2023-01-18 06:07:13', '2023-01-18 06:07:13'),
(27, '1786943802', 'galaxyphone.jpg', '2', 'Galaxy S10', 2999.00, 1, 'P001', 'Processing', '2023-01-18 18:23:09', '2023-01-18 18:23:09');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `productID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `unitPrice` double(8,2) NOT NULL,
  `productVariety` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productSKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplierID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productID`, `name`, `description`, `quantity`, `price`, `unitPrice`, `productVariety`, `productSKU`, `image`, `categoryID`, `brandID`, `supplierID`, `status`, `created_at`, `updated_at`) VALUES
(1, 'P001', 'Galaxy S10', 'NONE', 9, 2999.00, 2999.00, 'White', 'SSGS22', 'galaxyphone.jpg', 'HP01', 'Phone01', 'SP001', 'Available', '2023-01-06 00:55:38', '2023-01-18 18:25:18'),
(2, 'P002', 'iPad Air', '64GB, 4RAM', 10, 2599.00, 2599.00, 'Silver', 'A-IP001S', 'ipad air.jpg', 'HP01', 'Phone02', 'SP002', 'Available', '2023-01-06 23:23:58', '2023-01-18 06:11:49'),
(3, 'P003', 'Oneplus 9', '128GB, 8GM Ram', 20, 2499.00, 2499.00, 'Green', 'OP001-G', 'Oneplus.jpg', 'HP01', 'B003', 'SP001', 'Available', '2023-01-12 00:31:49', '2023-01-12 00:31:49'),
(4, 'LT001', 'Aspire 3', 'Intel Processor, Nvidia Graphic card.', 10, 2999.00, 2999.00, 'Black', 'AA3-B', 'acer-aspire-3_a315-57g-74x7_wp_black_01_s.jpg', 'LT01', 'B004', 'Laptop Supplier', 'Available', '2023-01-12 00:53:48', '2023-01-18 05:35:10'),
(5, 'LT002', 'Aspire 5', 'Intel i5, Nvidia graphic card', 10, 3199.00, 3199.00, 'Silver', 'AA5-S', 'acer-aspire-5-15-6-inches-fhd-ips-fhd-laptop.jpg', 'LT01', 'B004', 'Laptop Supplier', 'Available', '2023-01-12 00:54:51', '2023-01-18 05:35:22'),
(7, 'P006', 'Mi10', '128GB, 8GB RAM. Elegant design.', 15, 2199.00, 2199.00, 'Grey', 'XMM10-G', 'mi101.jpg', 'HP01', 'B005', 'SP001', 'Available', '2023-01-18 04:01:30', '2023-01-18 04:01:30'),
(8, 'FBPC2B-12', 'Oneplus 9 Pro', 'Newly designed handphone!', 12, 2999.00, 2999.00, 'White', 'FCCX7', 'Oneplus.jpg', 'HP01', 'B003', 'SP001', 'Available', '2023-01-18 04:02:05', '2023-01-18 04:05:28'),
(9, 'P0079', 'Vivobook S15', 'Intel 11th Processor.', 12, 2999.00, 2999.00, 'Grey', 'AVS15-G', 'Asus Vivobook S15 S533 11th gen intel grey.jpg', 'LT01', 'B007', 'Laptop Supplier', 'Available', '2023-01-18 04:09:37', '2023-01-18 04:09:37'),
(10, 'P008', 'TUF Gaming', 'Gaming Laptop, Window 11, AMD Ryzen 7 6800H, NVIDIA RTX3070 165Hz refresh rate.', 10, 4999.00, 4999.00, 'Black', 'ATUF-B', 'TUF Gaming win11 AMD Ryzen 7 6800H NVIDIA RTX3070 165Hz dis.jpg', 'LT01', 'B007', 'Laptop Supplier', 'Available', '2023-01-18 04:15:56', '2023-01-18 04:15:56'),
(12, 'P009', 'Xperia 5 IV', 'Zeiss Lens, 8+128GB', 15, 3199.00, 3199.00, 'Black', 'SX5IV-B', 'Sony xperia 5 IV black.jpg', 'HP01', 'B008', 'SP001', 'Available', '2023-01-18 04:32:25', '2023-01-18 04:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplierID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplierName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactPerson` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplierID`, `supplierName`, `address`, `state`, `city`, `zipcode`, `companyEmail`, `contactPerson`, `contactNumber`, `emailAddress`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SP001', 'Handphone Supplier', '25, Jalan harimau, Taman dato onn, 80150, Johor Bahru, Johor', 'Johor', 'Johor Bahru', '80150', 'Staff02@gmail.com', 'Jeremy', '0143325433', 'Staff02@gmail.com', 'Available', '2023-01-06 00:54:23', '2023-01-06 00:54:23'),
(2, 'SP002', 'Tablet Supplier', '3, Jalan rimau, Taman Dato, 80000, JB', 'Johor', 'Johor Bahru', '80000', 'Staff03@gmail.com', 'Rina', '0172238763', 'Staff03@gmail.com', 'Available', '2023-01-06 23:19:14', '2023-01-11 00:36:38'),
(3, 'Laptop Supplier', 'Authorized Laptop Supply', '4, Jalan dato onn, taman murni, 83000, JB', 'Johor', 'Johor Bahru', '83000', 'LTA@gmail.com', 'Poulin', '016788695', 'pouling@gmail.com', 'Available', '2023-01-12 00:52:12', '2023-01-12 00:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact`, `address`, `state`, `zipcode`, `city`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Customer01', 'Customer@gmail.com', 162253421, '44, Jalan desa melur, Taman Bandar Connought', 'Johor', '56000', 'Cheras', NULL, '$2y$10$hBGRH0IaVF80950rX1mSfeT0Kp09NEFIc8QqQgvbRqw///IPPDdDS', NULL, '2023-01-12 00:57:34', '2023-01-12 00:57:34');

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
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_contact_unique` (`contact`),
  ADD UNIQUE KEY `users_address_unique` (`address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
