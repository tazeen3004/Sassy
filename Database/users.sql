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
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `baddress` varchar(200) NOT NULL,
  `saddress` varchar(200) NOT NULL,
  `contactno` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `email`, `password`, `baddress`, `saddress`, `contactno`) VALUES
(1, 'admin', 'sassysslt@gmail.com', 'ed967e951dc77d53e26d2161a37b5bd2', 'mira road', 'mira road      ', '986513223123'),
(3, 'sailee', 'sailee@gmail.com', 'ed967e951dc77d53e26d2161a37b5bd2', 'jogeshwari      ', 'jogeshwari      ', '84653125213'),
(4, 'lavina', 'akki_lavi@yahoo.in', '6479a5c03cceebec5fb40701abc5e4a5', '      andheri', '      andheri', '5221'),
(5, 'tazeen', 'tazeenfirojkhan@gmail.com', 'ed967e951dc77d53e26d2161a37b5bd2', 'mira road', 'mira road east', '9869137510'),
(6, 'tushar', 'tusharvijaypawar@gmail.com', '9dc4e8e38d4e60fc8b39af40a7a0cf50', 'panvel', 'panvel', '9833588079');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
