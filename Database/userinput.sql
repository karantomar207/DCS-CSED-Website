-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2021 at 07:15 AM
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
-- Table structure for table `userinput`
--

CREATE TABLE `userinput` (
  `S.no` int(5) NOT NULL,
  `Firstname` varchar(20) NOT NULL,
  `Lastname` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `State` varchar(10) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `city` varchar(10) NOT NULL,
  `comments` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userinput`
--
ALTER TABLE `userinput`
  ADD PRIMARY KEY (`S.no`),
  ADD UNIQUE KEY `Username` (`Username`);
ALTER TABLE `userinput` ADD FULLTEXT KEY `Firstname` (`Firstname`);
ALTER TABLE `userinput` ADD FULLTEXT KEY `Lastname` (`Lastname`);
ALTER TABLE `userinput` ADD FULLTEXT KEY `State` (`State`);
ALTER TABLE `userinput` ADD FULLTEXT KEY `zipcode` (`zipcode`);
ALTER TABLE `userinput` ADD FULLTEXT KEY `city` (`city`);
ALTER TABLE `userinput` ADD FULLTEXT KEY `comments` (`comments`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userinput`
--
ALTER TABLE `userinput`
  MODIFY `S.no` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
