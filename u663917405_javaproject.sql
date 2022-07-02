-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 02, 2022 at 05:31 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u663917405_javaproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plate_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transmission` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `type`, `price`, `color`, `plate_no`, `transmission`, `capacity`) VALUES
(8, 'honda', 'suv', '1500', 'black', 'xxx-555', 'automatic', 5),
(9, 'toyota', 'van', '1345', 'red', 'xyz-123', 'automatic', 4),
(10, 'rusi', 'truck', '1234', 'yellow', 'zxc-434', 'manual', 3),
(17, 'Hyundai - laravel 2022', 'suv', '2150', 'green', 'tony-6969', 'manual', 3),
(18, 'uncle ben van - 2008', 'camperbun', '1000', 'white-gold', 'ben-0010', 'manual', 8),
(19, 'rusi - raider', 'sports car', '5000', 'black', 'zxc-123', 'manual', 4),
(20, 'Hyundai - rusi', 'suv', '1230', 'black', 'qwe-123', 'manual', 4),
(21, 'Tesla - auto drive', 'micro', '2121', 'white', 'ggg-0102', 'automatic', 4),
(22, 'poison ivy - 2023', 'CABRIOLET', '2550', 'red', 'lucy-666', 'MANUAL', 6);

-- --------------------------------------------------------

--
-- Table structure for table `car_types`
--

CREATE TABLE `car_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_types`
--

INSERT INTO `car_types` (`id`, `type`) VALUES
(1, 'micro'),
(2, 'sedan'),
(3, 'hatchback'),
(4, 'universal'),
(5, 'liftback'),
(6, 'coupe'),
(7, 'cabriolet'),
(8, 'roadster'),
(9, 'targa'),
(10, 'limousine'),
(11, 'muscle car'),
(12, 'sports car'),
(13, 'super car'),
(14, 'suv'),
(15, 'crossover'),
(16, 'pickup'),
(17, 'van'),
(18, 'minivan'),
(19, 'minibus'),
(20, 'campervan');

-- --------------------------------------------------------

--
-- Table structure for table `renters`
--

CREATE TABLE `renters` (
  `id` int(11) NOT NULL,
  `username` varchar(455) COLLATE utf8_unicode_ci DEFAULT NULL,
  `car_rented` varchar(455) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `car_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rental_days` varchar(455) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rent_start` varchar(455) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rent_end` varchar(455) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `renters`
--

INSERT INTO `renters` (`id`, `username`, `car_rented`, `address`, `car_type`, `license`, `price`, `payment_type`, `rental_days`, `rent_start`, `rent_end`, `created_at`) VALUES
(9, 'test', 'Hyundai - laravel 2022', 'mambaling', 'suv', '0101', '81900.0', 'PAYMAYA PAYMENT', '26', '2022-06-29', '2022-06-29', '2022-06-29'),
(10, 'test', 'Hyundai - laravel 2022', 'mambaling', 'suv', '123-123', '69300.0', 'GCASH PAYMENT', '22', '2022-06-29', '2022-07-21', '2022-06-29'),
(11, 'test', 'honda', 'inayawan', 'suv', '123', '45000.0', 'BANK PAYMENT', '30', '2022-06-29', '2022-07-29', '2022-06-29'),
(12, 'test', 'honda', 'salinas', 'suv', '123-1230-~23', '75000.0', 'BANK PAYMENT', '30', '2022-06-30', '2022-07-30', '2022-06-30'),
(13, 'test', 'honda', '123', 'suv', '123', '67500.0', 'GCASH PAYMENT', '27', '2022-06-30', '2022-07-27', '2022-06-30'),
(14, 'tonyyy', 'honda', 'inayawan', 'suv', 'licence-123', '75000.0', 'BANK PAYMENT', '30', '2022-06-30', '2022-07-30', '2022-06-30'),
(15, 'test', 'honda', '123', 'suv', '123', '383250.0', 'BANK PAYMENT', '365', '2022-06-30', '2023-06-30', '2022-06-30'),
(16, 'app', 'Hyundai - laravel 2022', 'inayawan', 'suv', '123-123-434', '32250.0', 'PAYMAYA PAYMENT', '15', '2022-06-30', '2022-07-15', '2022-06-30'),
(17, 'test123', 'honda', 'inyawn', 'suv', '123-123-123', '71250.0', 'PAYMAYA PAYMENT', '30', '2022-06-30', '2022-07-30', '2022-06-30'),
(18, 'test', 'Hyundai - rusi', 'lahug', 'suv', '123123123', '35055.0', 'BANK PAYMENT', '30', '2022-06-30', '2022-07-30', '2022-06-30'),
(19, 'test', 'Hyundai - laravel 2022', 'lahug', 'suv', '0909023423', '66650.0', 'GCASH PAYMENT', '31', '2022-07-02', '2022-08-02', '2022-07-02'),
(20, 'test', 'Hyundai - rusi', 'new york', 'suv', 'license new', '', 'GCASH PAYMENT', '30', '2022-07-02', '2022-08-01', '2022-07-02'),
(21, 'test', 'honda', 'new york city', 'suv', 'new new', '1500.0', 'BANK PAYMENT', '30', '2022-07-02', '2022-08-01', '2022-07-02'),
(22, 'test', 'honda', 'taga inayawan', 'suv', 'bobog', '75000.0', 'PAYMAYA PAYMENT', '30', '2022-07-02', '2022-08-01', '2022-07-02'),
(23, 'test', 'honda', 'oyyy bogo', 'suv', 'samani', '10000.0', 'GCASH PAYMENT', '4', '2022-06-21', '2022-06-25', '2022-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `account_type` int(11) DEFAULT 0,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `account_type`, `username`, `password`, `firstname`, `lastname`, `sex`, `address`, `email`, `contact`, `age`) VALUES
(1, 1, 'admin', '123', 'tony', 'angel', 'MALE', '', '', '', '0'),
(2, 1, 'philadmin', '123', 'phil', 'hanley', 'MALE', NULL, '', '', '21'),
(3, 0, 'test', '123', 'test', 'account', 'MALE', NULL, '', '', '21'),
(4, 0, 'agaw123', '123', 'agaw', 'matibay', 'MALE', 'inayawan', '', '', '19'),
(5, 0, 'benjo123', '123', 'Ben', 'Jo', 'MALE', 'Inayawan', '', '', '19'),
(6, 0, 'custom', '123', 'customer', 'account', 'MALE', 'secret', '', '', '21'),
(7, 0, 'username', 'pw123', 'kem', 'omega', 'MALE', 'hipodromo', 'kem@gmail.com', '123123123', '21'),
(9, 1, 'ynot', '000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 0, 'tonyyy', '123', 'tonyyy', 'tonyyys', 'MALE', 'tonyyys garage', 'tonyyy@gmail.com', '030215285', '52'),
(12, 0, 'tydus01', '123', 'bren', 'jade', 'MALE', 'inyawan mambaling cebu city', 'bren@gmail.com', '09432054454', '21'),
(13, 0, 'app', '123', 'desktop', 'app', 'MALE', 'cebu lahug', 'asdasd@asd.zxc', '1123123123', '21'),
(14, 0, 'benjo', '123', 'ben', 'vitualla', 'MALE', 'inayawan', 'benjo@gmail.com', '09123456789', '19'),
(15, 0, 'test123', '123', 'tester', 'beta', 'MALE', 'testter village', 'tester@gmail.com', '09432054454', '21'),
(16, 0, 'php', '123', 'php', 'admin', 'MALE', 'adress asd as', 'eomerasf@gmail.com', '094312301241', '12'),
(17, 1, 'newads', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 0, 'tester123', '123', 'tesrer', '123', 'MALE', 'tesrer street', 'tesrer@gmail.com', '01239123123', '21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_types`
--
ALTER TABLE `car_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renters`
--
ALTER TABLE `renters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `car_types`
--
ALTER TABLE `car_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `renters`
--
ALTER TABLE `renters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
