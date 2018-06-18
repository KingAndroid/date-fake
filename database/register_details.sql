-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2018 at 03:47 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seriousd_dating_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `register_details`
--

CREATE TABLE `register_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type_of_relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `want_children` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smoking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `drink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ethnicities` text COLLATE utf8_unicode_ci,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interests` text COLLATE utf8_unicode_ci,
  `looking_something_specific` text COLLATE utf8_unicode_ci,
  `bio` text COLLATE utf8_unicode_ci,
  `bonus_chances_to_find_match` tinyint(1) NOT NULL DEFAULT '0',
  `member_spotlight` tinyint(1) NOT NULL DEFAULT '0',
  `sounds_most_like` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register_details`
--
ALTER TABLE `register_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register_details`
--
ALTER TABLE `register_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
