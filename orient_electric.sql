-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 15, 2022 at 10:34 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orient_electric`
--

-- --------------------------------------------------------

--
-- Table structure for table `forget_password`
--

CREATE TABLE `forget_password` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mob1` varchar(50) NOT NULL,
  `mob2` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '2',
  `branch` int(11) NOT NULL,
  `branch_value` int(11) NOT NULL,
  `update_rate` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `_a_project`
--

CREATE TABLE `_a_project` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `_b_district`
--

CREATE TABLE `_b_district` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `_c_block`
--

CREATE TABLE `_c_block` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `_d_panchayat`
--

CREATE TABLE `_d_panchayat` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `_e_ward`
--

CREATE TABLE `_e_ward` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `_f_device`
--

CREATE TABLE `_f_device` (
  `id` int(11) NOT NULL,
  `dev_id` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `ward` int(11) DEFAULT NULL,
  `panchayat` int(11) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `project` int(11) DEFAULT NULL,
  `luminary_qr` varchar(50) DEFAULT NULL,
  `battery_qr` varchar(50) DEFAULT NULL,
  `panel_qr` varchar(50) DEFAULT NULL,
  `file` mediumtext,
  `lat` varchar(20) DEFAULT NULL,
  `lng` varchar(20) DEFAULT NULL,
  `remark` varchar(60) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `_g_data`
--

CREATE TABLE `_g_data` (
  `id` bigint(20) NOT NULL,
  `device` varchar(50) NOT NULL,
  `v1` varchar(15) NOT NULL,
  `v2` varchar(15) NOT NULL,
  `v3` varchar(15) NOT NULL,
  `v4` varchar(15) NOT NULL,
  `v5` varchar(15) NOT NULL,
  `v6` varchar(15) NOT NULL,
  `v7` varchar(15) NOT NULL,
  `v8` varchar(15) NOT NULL,
  `v9` varchar(15) NOT NULL,
  `v10` varchar(15) NOT NULL,
  `v11` varchar(15) NOT NULL,
  `v12` varchar(15) NOT NULL,
  `v13` varchar(15) NOT NULL,
  `v14` varchar(15) NOT NULL,
  `v15` varchar(15) NOT NULL,
  `v16` varchar(15) NOT NULL,
  `v17` varchar(15) NOT NULL,
  `v18` varchar(15) NOT NULL,
  `v19` varchar(15) NOT NULL,
  `v20` varchar(15) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forget_password`
--
ALTER TABLE `forget_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_a_project`
--
ALTER TABLE `_a_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_b_district`
--
ALTER TABLE `_b_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_c_block`
--
ALTER TABLE `_c_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_d_panchayat`
--
ALTER TABLE `_d_panchayat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_e_ward`
--
ALTER TABLE `_e_ward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_f_device`
--
ALTER TABLE `_f_device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_g_data`
--
ALTER TABLE `_g_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forget_password`
--
ALTER TABLE `forget_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_a_project`
--
ALTER TABLE `_a_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_b_district`
--
ALTER TABLE `_b_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_c_block`
--
ALTER TABLE `_c_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_d_panchayat`
--
ALTER TABLE `_d_panchayat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_e_ward`
--
ALTER TABLE `_e_ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_f_device`
--
ALTER TABLE `_f_device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_g_data`
--
ALTER TABLE `_g_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
