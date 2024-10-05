-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 20, 2024 at 02:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `no` int(11) NOT NULL,
  `c_date` varchar(15) DEFAULT NULL,
  `c_time` varchar(15) DEFAULT NULL,
  `n_pro` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `pay_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`no`, `c_date`, `c_time`, `n_pro`, `amount`, `pay_type`) VALUES
(1, '2024-02-01', '09:54:55 pm', 0, 0, 'Cash'),
(2, '2024-02-01', '09:57:33 pm', 1, 2000, 'Cash'),
(3, '2024-02-01', '09:57:49 pm', 1, 2200, 'Cash'),
(4, '2024-02-04', '09:16:48 pm', 3, 8100, 'Cash'),
(5, '2024-02-08', '10:21:56 PM', 2, 6000, 'Cash'),
(6, '2024-02-09', '08:24:39 AM', 2, 4900, 'Cash'),
(7, '2024-02-10', '02:42:02 PM', 2, 6500, 'Cash'),
(8, '2024-02-11', '01:03:08 PM', 3, 13300, 'Cash'),
(9, '2024-02-11', '01:03:39 PM', 3, 6900, 'Cash'),
(10, '2024-02-12', '09:19:17 AM', 2, 3200, 'Cash'),
(11, '2024-02-15', '12:04:01 PM', 3, 4099, 'Cash'),
(12, '2024-02-21', '10:50:13 AM', 2, 7300, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `no` int(10) NOT NULL,
  `userName` varchar(10) NOT NULL,
  `passWord` varchar(10) NOT NULL,
  `staff_name` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`no`, `userName`, `passWord`, `staff_name`, `contact`) VALUES
(5, 'staff1', 'staff01', 'Rosan', '9047893533'),
(6, 'staff', '101', 'Miceal', '9566450209'),
(7, '22sri102', '102', 'Hari', '96465505'),
(8, 'sarathi', '103', 'Miss Sarathi', '90432796');

-- --------------------------------------------------------

--
-- Table structure for table `proList`
--

CREATE TABLE `proList` (
  `pId` int(11) NOT NULL,
  `pName` varchar(20) DEFAULT NULL,
  `pQty` int(11) DEFAULT NULL,
  `pPrice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proList`
--

INSERT INTO `proList` (`pId`, `pName`, `pQty`, `pPrice`) VALUES
(101, 'Kurta', 24, 2000),
(102, 'Denim Jeans', 3, 3300),
(103, 'Canvas Shoes', -1, 2600),
(104, 'Nehru Jacket', -2, 5300),
(105, 'Cotton T-shirt', 60, 1400),
(106, 'Leather Formal Shoes', 22, 4000),
(107, 'Cotton Chinos', 39, 1800),
(108, 'Woolen Sweater', 17, 2300),
(109, 'Leather Belt', 75, 700),
(110, 'Traditional Turban', 0, 600),
(111, 'Polo Kurta', 45, 899),
(112, 'Cotton Shorts', 35, 2000),
(113, 'Sherwani', 10, 4800),
(114, 'Cotton Socks', 18, 499),
(115, 'Ethnic Jutis', 30, 3800),
(116, 'Silk Tie', 50, 960),
(117, 'Hooded Sweatshirt', 24, 1800),
(118, 'Luxury Watch', 15, 6400),
(119, 'Travel Backpack', 0, 2600),
(120, 'Winter Gloves', 80, 480),
(121, 'Kurta-Pajama Set', 39, 2500),
(122, 'Khadi Shirt', 6, 1800),
(123, 'Dhoti Pants', 25, 1200),
(124, 'Handloom Shawl', 15, 3500),
(125, 'Traditional Sandals', 30, 1200),
(126, 'Silk Sherwani', 10, 5500),
(127, 'Cotton Lungi', 70, 800),
(128, 'Ethnic Waistcoat', 0, 3000),
(129, 'Jodhpuri Mojris', 32, 1800),
(130, 'Linen Kurta', 44, 2200),
(131, 'Bandhani Tie', 23, 1200),
(132, 'Handcrafted Potli Ba', 50, 900),
(133, 'Kolhapuri Chappals', 60, 1000),
(134, 'Jamdani Kurta', 15, 2800),
(135, 'Traditional Pagdi', 80, 600),
(136, 'Banarasi Silk Dhoti', 18, 4000),
(137, 'Embroidered Sherwani', 12, 6000),
(138, 'Art Silk Kurta', 40, 1500),
(139, 'Rajasthani Turban', 90, 750),
(140, 'Cotton Pathani Suit', 1, 3200),
(141, 'Ethnic Jutis', 30, 3800),
(186, 'Cotton Chinos', 40, 1800),
(187, 'Kurta', 25, 2000),
(188, 'Kurta', 25, 2000),
(190, 'Leather Formal Shoes', 25, 4000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `proList`
--
ALTER TABLE `proList`
  ADD PRIMARY KEY (`pId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `proList`
--
ALTER TABLE `proList`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
