-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2021 at 06:35 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dcswebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `supportinput`
--

CREATE TABLE `supportinput` (
  `S.no` int(5) NOT NULL,
  `Name` varchar(26) NOT NULL,
  `university roll no.` int(9) NOT NULL,
  `email ID` varchar(20) NOT NULL,
  `comments` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `supportinput`
--
ALTER TABLE `supportinput`
  ADD PRIMARY KEY (`S.no`),
  ADD UNIQUE KEY `university roll no.` (`university roll no.`),
  ADD UNIQUE KEY `email ID` (`email ID`);
ALTER TABLE `supportinput` ADD FULLTEXT KEY `Name` (`Name`);
ALTER TABLE `supportinput` ADD FULLTEXT KEY `comments` (`comments`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `supportinput`
--
ALTER TABLE `supportinput`
  MODIFY `S.no` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
