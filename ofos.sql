-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 20, 2021 at 05:19 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ofos`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`oid`, `name`, `price`, `qty`, `user`, `mid`) VALUES
(1, 'Fresh', 45, 1, 'harikesh@gmail.com', 6),
(2, 'Testy', 55, 3, 'harikesh@gmail.com', 7),
(3, 'Hyderabadi', 175, 1, 'harikesh@gmail.com', 5),
(4, 'Deli', 50, 1, 'harikesh@gmail.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `category`) VALUES
(1, 'Veg'),
(2, 'Non Veg'),
(3, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `image`, `category`, `price`, `description`) VALUES
(1, 'Chiken Curry', '../User/upload/chikenCurry.jpg', 'Non Veg', 150, 'Spicy n Testy'),
(2, 'Burger', '../User/upload/burger.jpg', 'Veg', 59, 'Testy n Delicious'),
(3, 'Fish Curry', '../User/upload/fishCurry.jpg', 'Non Veg', 120, 'Spicy n Testy'),
(4, 'Deli Noodles', '../User/upload/deliNoodles.jpg', 'Veg', 50, 'Hot n Spciy'),
(5, 'Hyderabadi Biryani', '../User/upload/hyderabadiBiryani.jpg', 'Non Veg', 175, 'Spicy n Testy'),
(6, 'Fresh Salad', '../User/upload/freshSalad.jpg', 'Veg', 45, 'Testy'),
(7, 'Testy Rolls', '../User/upload/testyRole.jpg', 'Veg', 55, 'Testy '),
(8, 'Sahi Paneer', '../User/upload/SahiPanir.jpg', 'Veg', 80, 'Hot n Spicy'),
(9, 'Chiken Tandoori', '../User/upload/chickenTandoori.jpg', 'Non Veg', 69, 'Hot n Spicy');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `or_id` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `TXN_AMOUNT` int(11) NOT NULL,
  PRIMARY KEY (`or_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`or_id`, `ORDER_ID`, `EMAIL`, `TXN_AMOUNT`) VALUES
(2, 'ORDS33506885', 'harikesh@gmail.com', 385);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `email`, `mobile`, `address`, `password`) VALUES
(1, 'Harikesh Sahu', 'harikesh@gmail.com', '987654321', 'Airoli,New Mumbai', '827ccb0eea8a706c4c34a16891f84e7b');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
