-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 09:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sem_hair_cut`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_register`
--

CREATE TABLE `admin_register` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_register`
--

INSERT INTO `admin_register` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nripesh', 'admin@gmail.com', '$2y$10$wPos8YXgV3HIMnWYVYCraehHpTBd4ERygrB3C5wfyLleleFq3baV2');

-- --------------------------------------------------------

--
-- Table structure for table `agent_register`
--

CREATE TABLE `agent_register` (
  `a_Id` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Email` varchar(55) DEFAULT NULL,
  `Mobile_no` bigint(20) DEFAULT NULL,
  `Password` varchar(65) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent_register`
--

INSERT INTO `agent_register` (`a_Id`, `Name`, `Email`, `Mobile_no`, `Password`, `location`) VALUES
(3, 'hari beckam', 'admin@gmail.com', 9844544445, '$2y$10$wPos8YXgV3HIMnWYVYCraehHpTBd4ERygrB3C5wfyLleleFq3baV2', 'butwal');

-- --------------------------------------------------------

--
-- Table structure for table `booking_test`
--

CREATE TABLE `booking_test` (
  `b_id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `booking_date` datetime(6) DEFAULT NULL,
  `t_price` int(11) NOT NULL,
  `c_name` varchar(20) DEFAULT NULL,
  `c_adddress` varchar(50) DEFAULT NULL,
  `c_insidevalley` smallint(6) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `status` enum('Accepted','rejected','pending','completed') NOT NULL DEFAULT 'pending',
  `a_Id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_test`
--

INSERT INTO `booking_test` (`b_id`, `s_id`, `s_name`, `booking_date`, `t_price`, `c_name`, `c_adddress`, `c_insidevalley`, `id`, `status`, `a_Id`) VALUES
(255, 1, 'Hair cut', '2024-06-26 00:23:06.000000', 400, 'Judah Levy', 'Porro dolorem simili', 0, 39, 'rejected', NULL),
(256, 2, 'Hair color', '2024-06-26 00:34:03.000000', 700, 'Judah Levy', 'Porro dolorem simili', 0, 39, 'rejected', NULL),
(257, 5, 'Haircut and color', '2024-06-26 00:35:03.000000', 900, 'Judah Levy', 'Porro dolorem simili', 0, 39, 'pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_register`
--

CREATE TABLE `customer_register` (
  `Id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile_no` bigint(20) NOT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `location` varchar(55) NOT NULL,
  `Inside_valley` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_register`
--

INSERT INTO `customer_register` (`Id`, `Name`, `Email`, `Mobile_no`, `Password`, `location`, `Inside_valley`) VALUES
(39, 'Judah Levy', 'admin@gmail.com', 1, '$2y$10$wPos8YXgV3HIMnWYVYCraehHpTBd4ERygrB3C5wfyLleleFq3baV2', 'Porro dolorem simili', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `email` varchar(55) NOT NULL,
  `Subject` varchar(34) NOT NULL,
  `message` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(30) DEFAULT NULL,
  `s_price` int(11) DEFAULT NULL,
  `s_time` int(11) NOT NULL,
  `s_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`s_id`, `s_name`, `s_price`, `s_time`, `s_image`) VALUES
(1, 'Hair cut', 300, 40, 'upload/pexels-dmitry-zvolskiy-1570807.jpg'),
(2, 'Hair color', 600, 60, 'upload/pexels-cottonbro-studio-3993289.jpg'),
(3, 'Hair straight', 500, 60, 'upload/hairstraight.jpg'),
(4, 'Hair and beard cut', 450, 40, 'upload/Iphone_os_architecture.jpeg'),
(5, 'Haircut and color', 800, 65, 'upload/Highlighted-Curls-with-Undercut-Taper-Fade.jpg'),
(6, 'Beard cut', 200, 30, 'upload/aleksandar-andreev-XbM0XATexu8-unsplash.jpg'),
(8, 'Facial', 300, 40, 'upload/facial.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_register`
--
ALTER TABLE `admin_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_register`
--
ALTER TABLE `agent_register`
  ADD PRIMARY KEY (`a_Id`);

--
-- Indexes for table `booking_test`
--
ALTER TABLE `booking_test`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `id` (`id`),
  ADD KEY `fk_a_id` (`a_Id`);

--
-- Indexes for table `customer_register`
--
ALTER TABLE `customer_register`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `s_name` (`s_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_register`
--
ALTER TABLE `admin_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `agent_register`
--
ALTER TABLE `agent_register`
  MODIFY `a_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `booking_test`
--
ALTER TABLE `booking_test`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `customer_register`
--
ALTER TABLE `customer_register`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_test`
--
ALTER TABLE `booking_test`
  ADD CONSTRAINT `booking_test_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `services` (`s_id`),
  ADD CONSTRAINT `booking_test_ibfk_2` FOREIGN KEY (`id`) REFERENCES `customer_register` (`Id`),
  ADD CONSTRAINT `fk_a_id` FOREIGN KEY (`a_Id`) REFERENCES `agent_register` (`a_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
