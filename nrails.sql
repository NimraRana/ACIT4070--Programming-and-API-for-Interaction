-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 02:41 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nrails`
--

-- --------------------------------------------------------

--
-- Table structure for table `rseats`
--

CREATE TABLE `rseats` (
  `id` int(11) NOT NULL,
  `seat` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rseats`
--

INSERT INTO `rseats` (`id`, `seat`) VALUES
(1, 3),
(2, 5),
(3, 9),
(4, 1),
(5, 6),
(6, 12),
(7, 41),
(8, 16),
(9, 4),
(10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `trip` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `dest` varchar(30) NOT NULL,
  `passengers` int(3) NOT NULL,
  `name1` varchar(30) NOT NULL,
  `seat1` int(3) NOT NULL,
  `name2` varchar(30) NOT NULL,
  `seat2` int(3) NOT NULL,
  `name3` varchar(30) NOT NULL,
  `seat3` int(3) NOT NULL,
  `name4` varchar(30) NOT NULL,
  `seat4` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `date`, `trip`, `source`, `dest`, `passengers`, `name1`, `seat1`, `name2`, `seat2`, `name3`, `seat3`, `name4`, `seat4`) VALUES
(58, '2021-11-14', 'One Way Trip', 'Bergen', 'Stockholm', 3, 'Ibtehaj', 4, 'Zarnab', 2, 'Nimra', 5, 'Rana', 7),
(59, '2021-11-14', 'One Way Trip', 'Bergen', 'Flam', 2, 'ABC', 3, 'DEF', 5, 'GHI', 9, '', 0),
(61, '2021-11-18', 'One Way Trip', 'Stockholm', 'Gothenburg', 2, 'FYY', 1, 'KHIL', 6, '', 0, '', 0),
(62, '2021-11-14', 'Round Trip', 'Bergen', 'Oslo', 2, 'AUI', 12, 'hkhkl', 41, '', 0, '', 0),
(63, '2021-11-18', 'One Way Trip', 'Stockholm', 'Oslo', 3, 'Ibtehaj', 16, 'Zarnab', 4, 'Nimra', 11, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rseats`
--
ALTER TABLE `rseats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rseats`
--
ALTER TABLE `rseats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
