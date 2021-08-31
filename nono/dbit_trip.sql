-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2021 at 06:16 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbit_trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `sno` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(22) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `other` text NOT NULL,
  `dateT` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`sno`, `name`, `email`, `phone`, `other`, `dateT`) VALUES
(1, 'test name', 'this@this.com', '9836547158', 'this is a test entry', '2021-08-02 15:28:30'),
(2, 'test2', 'test2@this.com', '9836547158', 'it is my second test', '2021-08-31 16:10:53'),
(3, 'guti', 'abc@gnail.com', '7894561230', ',kjl;sajmjc', '2021-08-31 16:58:07'),
(4, 'guti', 'abc@gnail.com', '123456789', 'asdfgjh', '2021-08-31 16:58:38'),
(5, 'guti', 'abc@gnail.com', '123456789', 'asdfgjh', '2021-08-31 17:05:46'),
(6, 'test3', 'test3@this.com', '78945', 'hello', '2021-08-31 21:37:43'),
(7, 'test3', 'test3@this.com', '78945', 'hello', '2021-08-31 21:41:24'),
(8, 'test4', 'test4@gmail.com', '4561234512', 'hey', '2021-08-31 21:41:48'),
(9, 'rohan', 'rohan53@gmail.com', '8569741236', 'i will go', '2021-08-31 21:44:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
