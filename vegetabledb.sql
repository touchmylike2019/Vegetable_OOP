-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2019 at 08:51 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vegetabledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Username`, `Password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`ID`, `Name`) VALUES
(1, 'Healthy Market'),
(2, 'Green Thendy'),
(3, 'Natural Corner'),
(4, 'Organic for live'),
(5, 'Green center');

-- --------------------------------------------------------

--
-- Table structure for table `import_info`
--

CREATE TABLE `import_info` (
  `ID` int(11) NOT NULL,
  `Customer` varchar(50) NOT NULL,
  `Vegetable` varchar(50) NOT NULL,
  `Count` int(11) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `import_info`
--

INSERT INTO `import_info` (`ID`, `Customer`, `Vegetable`, `Count`, `Price`) VALUES
(9, 'Healthy Market', 'Healthy Market', 10, 0),
(10, 'Healthy Market', 'Healthy Market', 2, 0),
(11, 'Healthy Market', 'Healthy Market', 2, 0),
(12, 'Natural Corner', 'Natural Corner', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vegetable_info`
--

CREATE TABLE `vegetable_info` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vegetable_info`
--

INSERT INTO `vegetable_info` (`ID`, `Name`, `Price`) VALUES
(1, 'carrot', 20),
(2, 'cabbage', 12),
(3, 'broccoli', 40),
(4, 'potato', 20),
(5, 'onion', 20),
(6, 'garlic', 55),
(7, 'cauliflower', 25),
(8, 'pepper', 80),
(9, 'Slender amaranth', 30),
(10, 'Kale', 24),
(11, 'asparagus', 49),
(12, 'baby corn', 36),
(13, 'eggplant', 20),
(14, 'ginger', 15),
(15, 'enoki mushroom', 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `import_info`
--
ALTER TABLE `import_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vegetable_info`
--
ALTER TABLE `vegetable_info`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `import_info`
--
ALTER TABLE `import_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vegetable_info`
--
ALTER TABLE `vegetable_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
