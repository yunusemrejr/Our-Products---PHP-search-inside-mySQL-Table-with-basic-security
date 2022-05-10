-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 03:40 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `dda`
--

CREATE TABLE `dda` (
  `s` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_ID` int(100) NOT NULL,
  `Product_Name` varchar(100) NOT NULL,
  `Product_Description` varchar(500) NOT NULL,
  `Product_Stars` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_ID`, `Product_Name`, `Product_Description`, `Product_Stars`) VALUES
(1, 'Chocolate', 'best chocolate ever!', 5),
(2, 'red apple', 'your ordinary red apple', 44),
(3, 'orange', 'just an orange', 32),
(4, 'cereal', 'cheap cereal for cheap breakfasts', 12),
(5, 'unhealthy stuff', 'all the unhealthy stuff you ever needed', 20),
(6, 'plush toy', 'cheap chinese plushies', 42),
(7, 'remote control car toy', 'about to break toy car with a remote control', 35),
(8, 'Coconut Juice', 'out of date coconut juice', 3),
(9, 'Regular milk', 'cow milk nothing fancy', 54),
(10, 'soy milk', 'soy milk thats all', 49),
(11, 'almond', 'almonds almonds almonds', 30),
(12, 'bananas', 'good for monkey health', 55),
(13, 'cheap shoes', 'will cause foot problems', 5),
(2, 'red apple', 'your ordinary red apple', 44),
(3, 'orange', 'just an orange', 32),
(4, 'cereal', 'cheap cereal for cheap breakfasts', 12),
(5, 'unhealthy stuff', 'all the unhealthy stuff you ever needed', 20),
(6, 'plush toy', 'cheap chinese plushies', 42),
(7, 'remote control car toy', 'about to break toy car with a remote control', 35),
(8, 'Coconut Juice', 'out of date coconut juice', 3),
(9, 'Regular milk', 'cow milk nothing fancy', 54),
(10, 'soy milk', 'soy milk thats all', 49),
(11, 'almond', 'almonds almonds almonds', 30),
(12, 'bananas', 'good for monkey health', 55),
(13, 'cheap shoes', 'will cause foot problems', 5),
(14, 'second hand t-shirt', 'torn apart tshirt for my poor friends', 8),
(32, 'Regular milks', 'mooo', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
