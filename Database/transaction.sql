-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2015 at 03:38 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sassy3004`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `tid` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `uid`, `pid`, `tid`, `qty`) VALUES
(1, 3, 34, 'ssltegrffghnhh35345646', 10),
(2, 3, 57, 'sslt5621352987b69', 1),
(3, 3, 57, 'sslt562135822f0f4', 1),
(4, 3, 57, 'sslt5621359664c54', 1),
(5, 3, 57, 'sslt562135b20178c', 1),
(6, 3, 57, 'sslt562136b2c842c', 1),
(7, 3, 34, 'sslt562136b2c842c', 1),
(8, 3, 57, 'sslt562137316700b', 1),
(9, 3, 34, 'sslt562137316700b', 1),
(10, 3, 33, 'sslt562250ec4a12c', 1),
(11, 3, 9, 'sslt56225191e71b5', 1),
(12, 3, 1, 'sslt56225414de489', 2),
(13, 3, 65, 'sslt56225414de489', 1),
(14, 5, 1, 'sslt562f7f1b3de71', 1),
(15, 5, 57, 'sslt562f7f31c836a', 4),
(16, 5, 41, 'sslt562f82bdadc3d', 1),
(17, 5, 49, 'sslt562f84b0220ca', 1),
(18, 5, 17, 'sslt562f84b0220ca', 1),
(19, 5, 57, 'sslt562f84d375a27', 1),
(20, 5, 17, 'sslt562f85284888d', 1),
(21, 5, 49, 'sslt562f858b7d026', 1),
(22, 5, 76, 'sslt562f85f311eb9', 1),
(23, 5, 76, 'sslt562f860c978d4', 1),
(24, 5, 76, 'sslt562f86106e668', 1),
(25, 5, 76, 'sslt562f8610cf633', 1),
(26, 5, 76, 'sslt562f86111ff8b', 1),
(27, 5, 76, 'sslt562f865731a54', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
