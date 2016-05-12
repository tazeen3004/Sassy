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
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '20'
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `cid`, `name`, `price`, `qty`) VALUES
(1, 1, 'Chain earcuff - Silver', 159, 15),
(2, 1, 'Dream Catcher', 199, 20),
(3, 1, 'Feather drop earings', 259, 20),
(4, 1, 'Feather earcuff', 199, 20),
(5, 1, 'Cross drop earcuff', 299, 20),
(6, 1, 'Vera wang knot earings', 279, 20),
(7, 1, 'Crystal button studs', 159, 20),
(8, 1, 'Gold earing jacket', 129, 0),
(9, 2, 'Best friend ring', 129, 19),
(10, 2, 'White diamond', 399, 20),
(11, 2, 'Black Diamond', 599, 20),
(12, 2, 'Emerald', 499, 20),
(13, 2, 'Fashion ring', 259, 20),
(14, 2, 'Rose gold ring', 459, 20),
(15, 2, 'leaf ring', 599, 20),
(16, 2, 'Sapphire ring', 799, 20),
(17, 3, 'Anchor & Infinity', 250, 18),
(18, 3, 'Equisite simple neckpiece', 199, 20),
(19, 3, 'loopy necklace', 269, 20),
(20, 3, 'Simple bird necklace', 239, 20),
(21, 3, 'Heart necklace', 249, 20),
(22, 3, 'Heart & key necklace', 269, 20),
(23, 3, 'Wooden dreamcatcher', 269, 20),
(24, 3, 'long pearl necklace', 299, 20),
(25, 4, 'Infinity anklet', 239, 20),
(26, 4, 'Fish anklet', 279, 20),
(27, 4, 'Ellegant pearl anklet', 349, 20),
(28, 4, 'Tiger bracelet', 169, 20),
(29, 4, 'Pearl Bracelet', 349, 20),
(30, 4, 'Heart bracelet', 299, 20),
(31, 4, 'Arrow bacelet', 249, 20),
(32, 4, 'Goodluck anklet', 269, 19),
(33, 5, 'danger-dark grey', 2399, 19),
(34, 5, 'dolce-blue', 3299, 15),
(35, 5, 'inferno-black', 2679, 20),
(36, 5, 'lilliana-black', 2999, 20),
(37, 5, 'manika-chocolate', 1999, 20),
(38, 5, 'slope-taupe', 2499, 20),
(39, 5, 'swag-cream', 3499, 20),
(40, 5, 'valley-whiskey', 2699, 20),
(41, 6, 'Pachanga - coral', 2359, 19),
(42, 6, 'essence nude patent', 2999, 20),
(43, 6, 'jada - nude', 3199, 19),
(44, 6, 'vixen -sage suede', 3299, 19),
(45, 6, 'liliana - red ', 2999, 20),
(46, 6, 'marnie - blue', 3499, 20),
(47, 6, 'skull jane - white', 3999, 20),
(48, 6, 'coppertina - light gold glitter', 3699, 20),
(49, 7, 'czar - black', 2499, 18),
(50, 7, 'douse - natural leather', 1999, 20),
(51, 7, 'garett-white', 2699, 20),
(52, 7, 'mandalye - gold', 2579, 20),
(53, 7, 'manie - pink gold', 3469, 20),
(54, 7, 'midnight widow - whie', 2789, 20),
(55, 7, 'mozza - black', 3199, 17),
(56, 7, 'radient - metallic', 2199, 20),
(57, 8, 'leather backpack', 2499, 3),
(58, 8, 'Addorns - beige', 3199, 20),
(59, 8, 'blue leopard', 2499, 20),
(60, 8, 'lace backpack', 2399, 20),
(61, 8, 'fuschia pink studded backpack', 2999, 20),
(62, 8, 'Moshina silver black backpack', 3199, 20),
(63, 8, 'moschino panda', 2899, 20),
(64, 8, 'moschino chic white', 3299, 20),
(65, 9, 'Addorns blue clutch', 1499, 19),
(66, 9, 'Addorns flower printed', 1999, 20),
(67, 9, 'Craftsman triangular clutch', 2199, 20),
(68, 9, 'hello clutch', 1699, 20),
(69, 9, 'keys clutch', 2299, 20),
(70, 9, 'torche black clutch', 2499, 20),
(71, 9, 'torche light pink wallet', 1499, 20),
(72, 9, 'YSL - red', 2399, 20),
(73, 10, 'Fendi tote bag', 2469, 20),
(74, 10, 'zalora classic black', 2499, 20),
(75, 10, 'SomethingBorrowed Chic Sling', 2999, 20),
(76, 10, 'Torche Black tote', 3499, 13),
(77, 10, 'Zalora Metal', 3199, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
