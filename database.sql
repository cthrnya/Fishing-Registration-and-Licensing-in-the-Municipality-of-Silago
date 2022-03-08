-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2022 at 06:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fishers_org`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `IdItem` int(11) NOT NULL,
  `ItemName` varchar(100) DEFAULT NULL,
  `YearBuilt` int(11) DEFAULT NULL,
  `ItemType` varchar(45) DEFAULT NULL,
  `ItemClassification` varchar(45) DEFAULT NULL,
  `EngineNumber` varchar(45) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Captain` int(11) DEFAULT NULL,
  `Owner` int(11) DEFAULT NULL,
  `RegisteredDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `RenewDate` date DEFAULT NULL,
  `DateAdded` date DEFAULT current_timestamp(),
  `Status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`IdItem`, `ItemName`, `YearBuilt`, `ItemType`, `ItemClassification`, `EngineNumber`, `Color`, `Captain`, `Owner`, `RegisteredDate`, `ExpiryDate`, `RenewDate`, `DateAdded`, `Status`) VALUES
(1, 'MV Yoyo', 2020, 'private', 'With Engine', '13132141312312', 'red', 4, 3, '2021-12-15', '2025-12-15', NULL, '2021-12-15', 1),
(2, 'MV Ocean Rocket', 2017, 'passenger', 'With Engine', 'sf754564trt453', 'black', 5, 5, '2020-05-15', '2023-12-15', '2021-12-15', '2021-12-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `IdLicense` int(11) NOT NULL,
  `IdMember` int(11) DEFAULT NULL,
  `LicenseNo` varchar(45) DEFAULT NULL,
  `LicenseType` varchar(45) DEFAULT NULL,
  `LicensedDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `RenewDate` date DEFAULT NULL,
  `ContactPerson` varchar(100) DEFAULT NULL,
  `ContactAddress` varchar(100) DEFAULT NULL,
  `ContactPhone` varchar(45) DEFAULT NULL,
  `DateAdded` date DEFAULT current_timestamp(),
  `Status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `license`
--

INSERT INTO `license` (`IdLicense`, `IdMember`, `LicenseNo`, `LicenseType`, `LicensedDate`, `ExpiryDate`, `RenewDate`, `ContactPerson`, `ContactAddress`, `ContactPhone`, `DateAdded`, `Status`) VALUES
(1, 5, 'SIL-0005-20211215', 'No Engine', '2021-12-16', '2022-12-16', '2021-12-16', 'Pedro Pascal', 'Mexico City,Mexico', '0912345678', '2021-12-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `IdMember` int(11) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Purok` varchar(100) DEFAULT NULL,
  `Barangay` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Province` varchar(100) DEFAULT NULL,
  `PostalCode` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `BirthPlace` varchar(100) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `CivilStatus` varchar(45) DEFAULT NULL,
  `Status` int(11) DEFAULT 1,
  `DateAdded` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`IdMember`, `FirstName`, `MiddleName`, `LastName`, `Purok`, `Barangay`, `City`, `Province`, `PostalCode`, `Phone`, `Email`, `BirthDate`, `BirthPlace`, `Gender`, `CivilStatus`, `Status`, `DateAdded`) VALUES
(1, 'qeqq', 'wada', 'adwa', 'dwada', 'awdad', 'wad', 'awda', '3453', '131332242q', 'wdadwwda@gmail.com', '0000-00-00', '', 'male', '', 1, '2021-12-15'),
(3, 'Abie', 'Jhonson', 'Blake', 'purok malunggay', 'poblacion 2', 'silago', 'southern leyte', '6607', '0912345678', 'fsafawdfa@gmail.com', '1997-06-11', 'efwdwad', 'female', 'married', 1, '2021-12-15'),
(4, 'Jane', 'Costa', 'Alison', 'purok cacao', 'poblacion 2', 'silago', 'southern leyte', '6607', '0964332425', 'weffwe@gma', '1998-06-15', 'dwdada', 'female', 'single', 1, '2021-12-15'),
(5, 'Jack', 'Hinter', 'Odison', 'purok ipil-ipil', 'poblacion 2', 'silago', 'southern leyte', '6607', '0934242331', 'efwff@ggsf', '1996-05-12', 'hungary', 'male', 'married', 1, '2021-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `IdUser` int(11) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `UserType` varchar(45) DEFAULT 'user',
  `Email` varchar(100) DEFAULT NULL,
  `Status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`IdUser`, `FirstName`, `MiddleName`, `LastName`, `UserName`, `Password`, `UserType`, `Email`, `Status`) VALUES
(1, 'John', 'Paulson', 'Doe', 'Doe', '1234', 'admin', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`IdItem`);

--
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`IdLicense`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`IdMember`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IdUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `IdItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license`
--
ALTER TABLE `license`
  MODIFY `IdLicense` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `IdMember` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `IdUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
