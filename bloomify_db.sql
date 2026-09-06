-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2026 at 09:54 PM
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
-- Database: `bloomify_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `quantity` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `event_date` varchar(255) DEFAULT NULL,
  `flower_name` varchar(255) DEFAULT NULL,
  `order_type` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `venue_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`quantity`, `total_price`, `id`, `address`, `city`, `customer_name`, `event_date`, `flower_name`, `order_type`, `state`, `status`, `venue_type`) VALUES
(502, 2128480, 1, 'wqr,xyz', 'Lahore', 'Maham', '2026-09-26', 'Sunflower', 'Event', 'Punjab', 'Accepted', 'Weddings'),
(15, 75000, 2, 'jrh,krf', 'Islamabad', 'Zoha', '2026-09-24', 'Lily', 'Delivery', 'Punjab', 'Accepted', ''),
(7, 35000, 3, 'wsa,block 6,gulshan', 'karachi', 'Rida', '2026-10-01', 'Lily', 'Delivery', 'Sindh', 'Accepted', ''),
(10, 25000, 4, 'abc road', 'Karachi', 'Fatima', '2026-09-07', 'Jasmine', 'Delivery', 'Sindh', 'Accepted', ''),
(6, 15000, 5, 'sko ,xyz', 'Karachi East', 'Kanza', '2026-09-12', 'Rose', 'Delivery', 'Sindh', 'Accepted', ''),
(310, 1314400, 6, 'krf road', 'karachi', 'Kanza', '2026-10-01', 'Sunflower', 'Event', 'Sindh', 'Accepted', 'Birthday Party'),
(185, 1017500, 7, 'erj road,xyz', 'Lahore', 'Syeda Kanza Ozair', '2026-09-21', 'Hydrangea', 'Event', 'Punjab', 'Accepted', 'Outdoor events'),
(72, 489600, 8, 'EKE road,xyz', 'KARACHI', 'Syeda Kanza', '2026-10-08', 'Lavender', 'Event', 'Sindh', 'Accepted', 'Indoor Events'),
(10, 50000, 9, 'block 4,Nazimabad', 'KARACHI', 'Kanza Ali', '2026-09-08', 'Lily', 'Delivery', 'Sindh', 'Accepted', ''),
(176, 440000, 10, 'near wsd reoad ,in xte park', 'Lahore', 'Kanza Ozair', '2026-09-28', 'Jasmine', 'Event', 'Punjab', 'Accepted', 'Outdoor events'),
(15, 37500, 11, 'SHAH  FAISAL,BLOCK1', 'Karachi', 'FATIMA MUSKAN', '2026-11-04', 'Rose', 'Delivery', 'Sindh', 'Accepted', ''),
(10, 30000, 12, 'BLOCK 2 ,exy', 'Lahore', 'Fatima Muskan', '2026-11-02', 'Tulip', 'Delivery', 'Punjab', 'Accepted', '');

-- --------------------------------------------------------

--
-- Table structure for table `flowers`
--

CREATE TABLE `flowers` (
  `price` double NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flowers`
--

INSERT INTO `flowers` (`price`, `stock_quantity`, `id`, `image_url`, `name`) VALUES
(2500, 8979, 1, 'https://images.unsplash.com/photo-1556712691-5c39e0e32a8e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Rose'),
(3000, 1990, 2, 'https://images.unsplash.com/photo-1488928741225-2aaf732c96cc?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Tulip'),
(5000, 4968, 3, 'https://images.unsplash.com/photo-1716335024740-5fec88af5a05?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Lily'),
(4240, 188, 4, 'https://images.unsplash.com/photo-1552160793-cbaf3ebcba72?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Sunflower'),
(6500, 900, 5, 'https://images.unsplash.com/photo-1571677179476-ab32559a6c7c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fE9yY2hpZHMlMjBmb3IlMjBhJTIwd2Vic2l0ZXxlbnwwfHwwfHx8MA%3D%3D', 'Orchid'),
(2499, 4000, 6, 'https://images.pexels.com/photos/34210766/pexels-photo-34210766.jpeg', 'Daisy'),
(3500, 5000, 7, 'https://images.unsplash.com/photo-1750851716187-9666c97b6d3c?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Carnation'),
(6800, 928, 8, 'https://plus.unsplash.com/premium_photo-1688045685821-4958c1e28322?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Lavender'),
(11500, 1000, 9, 'https://images.unsplash.com/photo-1511201173873-c327e63eb6c4?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Peony'),
(1950, 7000, 10, 'https://images.unsplash.com/photo-1722867713971-630f5d9b9bbb?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Marigold'),
(2500, 7814, 11, 'https://plus.unsplash.com/premium_photo-1695751301992-c5c6e9cd9d20?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Jasmine'),
(5500, 5815, 12, 'https://images.unsplash.com/photo-1651240691792-9054fc8c9652?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Hydrangea');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'maham12@gmail.com', '456', 'Maham'),
(2, 'zoha@gmail.com', '123', 'Zoha'),
(3, 'ridzz@gmail.com', '111', 'Rida'),
(4, 'kanzali154@gmail.com', '123', 'Kanza'),
(5, 'kanzali154@gmail.com', '234', 'Kanza'),
(6, 'kanza12@gmail.com', '345', 'Syeda Kanza Ozair'),
(7, 'kanza13@gmail.com', '234', 'Syeda Kanza'),
(8, 'kanzali154@gmail.com', '567', 'Kanza'),
(9, 'kanzali154@gmail.com', '234', 'Syeda Kanza'),
(10, 'kanza44@gmail.com', '768', 'Kanza Ali'),
(11, 'kanza45@gmail.com', '546', 'Kanza Ozair'),
(12, 'Faima@gmail.com', '3456', 'FATIMA MUSKAN'),
(13, 'fatima123@gmail.com', '12345', 'Fatima Muskan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flowers`
--
ALTER TABLE `flowers`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `flowers`
--
ALTER TABLE `flowers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
