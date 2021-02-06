-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2021 at 01:12 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
CREATE TABLE IF NOT EXISTS `customer_details` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `address` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `name`, `address`, `date`) VALUES
(1, 'rahul', 'no:10, gandhi st, dubai', '2021-02-01'),
(2, 'rohan', 'no:2, Suki apts, 8th St, dubai', '2021-02-03'),
(3, 'ronit', 'no:4,bakers street, paris corver,dxb', '2021-01-30'),
(4, 'riya', 'no:2, st.Mary apts, 12th avenue, dxb', '2021-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cust_id` int(4) NOT NULL,
  `order_id` int(4) NOT NULL,
  `order_num` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `cust_id`, `order_id`, `order_num`) VALUES
(1, 1, 1, 463782173),
(2, 1, 2, 652732182),
(3, 2, 3, 726372839),
(4, 3, 4, 624872892),
(5, 4, 5, 367128939);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE IF NOT EXISTS `order_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `variant_id`) VALUES
(1, 1, 2, 12),
(2, 1, 1, 13),
(3, 1, 1, 3),
(4, 2, 1, 4),
(5, 2, 2, 4),
(6, 3, 1, 5),
(7, 4, 2, 8),
(8, 4, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `avg rating` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `type`, `avg rating`) VALUES
(1, 'nike tee', 'T-shirt', 4),
(2, 'puma shorts', 'Shorts', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant`
--

DROP TABLE IF EXISTS `product_variant`;
CREATE TABLE IF NOT EXISTS `product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variant`
--

INSERT INTO `product_variant` (`id`, `product_id`, `variant_id`, `sale`) VALUES
(1, 1, 1, 10),
(2, 1, 2, 20),
(3, 1, 3, 20),
(4, 1, 4, 15),
(5, 1, 5, 15),
(6, 1, 6, 25),
(7, 1, 7, 20),
(8, 1, 8, 10),
(9, 1, 9, 15),
(10, 1, 10, 0),
(11, 1, 11, 20),
(12, 1, 12, 13),
(13, 1, 13, 12),
(14, 1, 14, 0),
(15, 1, 15, 22),
(16, 1, 16, 23),
(17, 1, 17, 0),
(18, 1, 18, 8),
(19, 1, 19, 11),
(20, 1, 20, 0),
(21, 2, 1, 7),
(22, 2, 2, 18),
(23, 2, 3, 7),
(24, 2, 4, 0),
(25, 2, 5, 6),
(26, 2, 6, 9),
(27, 2, 7, 0),
(28, 2, 8, 12),
(29, 2, 9, 0),
(30, 2, 10, 10),
(31, 2, 11, 10),
(32, 2, 12, 15),
(33, 2, 13, 13),
(34, 2, 14, 0),
(35, 2, 15, 20),
(36, 2, 16, 0),
(37, 2, 17, 10),
(38, 2, 18, 10),
(39, 2, 19, 14),
(40, 2, 20, 15);

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
CREATE TABLE IF NOT EXISTS `variant` (
  `id` int(4) NOT NULL,
  `size` varchar(4) NOT NULL,
  `color` varchar(50) NOT NULL,
  `material` varchar(10) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` int(4) NOT NULL,
  `media` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`id`, `size`, `color`, `material`, `quantity`, `price`, `media`) VALUES
(1, 'xs', 'red', 'nylon', 20, 200, 'dsjck'),
(2, 'xs', 'red', 'poly', 20, 210, 'dsjck'),
(3, 'xs', 'blue', 'nylon', 25, 200, ''),
(4, 'xs', 'blue', 'poly', 25, 210, ''),
(5, 's', 'red', 'nylon', 25, 200, ''),
(6, 's', 'red', 'poly', 25, 210, ''),
(7, 's', 'blue', 'nylon', 30, 200, ''),
(8, 's', 'blue', 'poly', 30, 210, ''),
(9, 'm', 'red', 'nylon', 25, 210, ''),
(10, 'm', 'red', 'poly', 25, 220, ''),
(11, 'm', 'blue', 'nylon', 30, 210, ''),
(12, 'm', 'blue', 'poly', 30, 220, ''),
(13, 'l', 'red', 'nylon', 25, 210, ''),
(14, 'l', 'red', 'poly', 25, 220, ''),
(15, 'l', 'blue', 'nylon', 30, 210, ''),
(16, 'l', 'blue', 'poly', 30, 220, ''),
(17, 'xl', 'red', 'nylon', 20, 210, ''),
(18, 'xl', 'red', 'poly', 20, 220, ''),
(19, 'xl', 'blue', 'nylon', 25, 210, ''),
(20, 'xl', 'blue', 'poly', 25, 220, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
