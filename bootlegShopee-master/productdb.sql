-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2021 at 08:25 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `producttb`
--

CREATE TABLE `producttb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` float DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `product_desc` varchar(2000) NOT NULL,
  `product_weight` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttb`
--

INSERT INTO `producttb` (`id`, `product_name`, `product_price`, `product_image`, `product_desc`, `product_weight`) VALUES
(10, 'ASUS ROG PHONE 3', 45000, 'upload/rog.jpg', 'ROG Phone 3 is the most powerful gaming phone to use the latest Qualcomm® Snapdragon™ 865 Plus 5G Mobile Platform with advanced 5G1 mobile communications capabilities. Built to satisfy even the most hardcore gamer, it has an amazing new 144 Hz / 1 ms display that leaves the competition standing. Alongside upgraded features like AirTrigger 3, you\'ll find everything you loved about the previous generation, including a monster 6000 mAh battery, the unique side-charging design, dual front-facing speakers, and a full range of modular accessories. ROG Phone 3 sets the new standard for mobile gaming!', 240),
(11, 'APPLE Iphone 13 Pro Max', 99999, 'upload/apol.jpg', 'The iPhone 13\'s chipset is reportedly ahead of schedule, suggesting the phone will be on track for a September launch. Plus, a separate leak suggests the iPhone 13 Pro and iPhone 13 Pro Max may feature a 120Hz screen.', 240),
(12, 'MSI RTX 3090', 99999, 'upload/3090.jpg', 'The GeForce RTX™ 3090 is a big ferocious GPU (BFGPU) with TITAN class performance. It\'s powered by Ampere—NVIDIA\'s 2nd gen RTX architecture—doubling down on ray tracing and AI performance with enhanced RT Cores, Tensor Cores, and new streaming multiprocessors. Plus, it features a staggering 24 GB of G6X memory, all to deliver the ultimate gaming experience.\r\nBoost Clock / Memory Speed\r\n1785 MHz / 19.5 Gbps\r\n24GB GDDR6X\r\nDisplayPort x 3 (v1.4a)\r\nHDMI x 1 (Supports 4K@120Hz as specified in HDMI 2.1)', 2370),
(13, 'Asus ROG Maximus XII Extreme', 46000, 'upload/mb_asus.png', 'CPU support: Intel 10th Gen | Socket: LGA 1200 | Size: Extended ATX | Memory support: 4x DIMM, up to 128GB, DDR4-4700 | Expansion slots: 2x PCIe 3.0 x16 (or x8/x8), 1x PCIe 3.0 x4 | Video ports: 2x Thunderbolt 3 ports on extension card (DP1.4) | Rear USB: 10x USB 3.2, 2x USB 2.0 | Storage: 2x M.2, 2x M.2 (DIMM.2 board), 8x SATA 6Gbps | Network: 1x 10Gb Marvell ethernet, 1x Intel ethernet, Intel Wi-Fi 6 wireless', 1000),
(14, 'PLACEHOLDER 1', 11111, 'upload/placeholder.png', 'just a placeholder', 1111),
(15, 'PLACEHOLDER 2', 22222, 'upload/placeholder.png', 'just a placeholder', 2222),
(16, 'PLACEHOLDER 3', 33333, 'upload/placeholder.png', 'just a placeholder', 3333),
(17, 'PLACEHOLDER 4', 44444, 'upload/placeholder.png', 'just a placeholder', 4444);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `addr1` varchar(250) NOT NULL,
  `addr2` varchar(250) DEFAULT NULL,
  `addr3` varchar(250) DEFAULT NULL,
  `city` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `name`, `addr1`, `addr2`, `addr3`, `city`, `country`) VALUES
(1, 'Adrian Arboleda', 'Purok 5 Reyes St, Calapacuan, Subic', '', '', 'Zambales', 'Philippines'),
(3, 'Niki Kita', '066 Reyes St, Calapacuan, Subic', '', '', 'Zambales', 'Philippines'),
(4, 'Niki Kita', '066 Reyes St, Calapacuan, Subic', '', '', 'Zambales', 'Philippines'),
(5, 'Niki Kita', '066 Reyes St, Calapacuan, Subic', '', '', 'Zambales', 'Philippines'),
(6, 'Adrian Arboleda', 'Purok 5 Reyes St, Calapacuan, Subic', '', '', 'Zambales', 'Philippines'),
(7, 'Adrian Arboleda', 'Purok 5 Reyes St, Calapacuan, Subic', '', '', 'Zambales', 'Philippines'),
(8, 'Adrian Arboleda', 'Purok 5 Reyes St, Calapacuan, Subic', '', '', 'Zambales', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`) VALUES
(1, 'Adrian', 'Arboleda', 'xterminatorh@gmail.com', '$2y$10$22wlm7ts9VkZy7k79ruHquFZLoP3g96UnX5VNTUfL/HPsGMZUyOkS'),
(8, 'Niki', 'Kita', 'asdfg@gmail.com', '$2y$10$GpXY.fAH1EbRwGrg3bvTBervI/2/rmHy6sy4yPBhb8AAH1DTTH2Q2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `producttb`
--
ALTER TABLE `producttb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `producttb`
--
ALTER TABLE `producttb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
