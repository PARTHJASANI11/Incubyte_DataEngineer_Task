-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2021 at 10:58 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `incubyte_dataengineer_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `au`
--

CREATE TABLE `au` (
  `Customer_Id` varchar(18) NOT NULL,
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `Post_Code` int(6) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Default_Customer` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `au`
--

INSERT INTO `au` (`Customer_Id`, `Customer_Name`, `Customer_Open_Date`, `Last_Consulted_Date`, `Vaccination_Type`, `Doctor_Consulted`, `State`, `Country`, `Post_Code`, `Date_of_Birth`, `Default_Customer`) VALUES
('1256', 'Jacob', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'VIC', 'AU', 10002, '1985-01-01', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `ind`
--

CREATE TABLE `ind` (
  `Customer_Id` varchar(18) NOT NULL,
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `Post_Code` int(6) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Default_Customer` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ind`
--

INSERT INTO `ind` (`Customer_Id`, `Customer_Name`, `Customer_Open_Date`, `Last_Consulted_Date`, `Vaccination_Type`, `Doctor_Consulted`, `State`, `Country`, `Post_Code`, `Date_of_Birth`, `Default_Customer`) VALUES
('123458', 'John', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'TN', 'IND', 362630, '1980-02-21', 'A'),
('1246', 'Jimmy', '2011-11-10', '2012-12-12', 'MVD', 'Paul', 'GJ', 'IND', 362632, '1984-04-02', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `nyc`
--

CREATE TABLE `nyc` (
  `Customer_Id` varchar(18) NOT NULL,
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `Post_Code` int(6) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Default_Customer` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nyc`
--

INSERT INTO `nyc` (`Customer_Id`, `Customer_Name`, `Customer_Open_Date`, `Last_Consulted_Date`, `Vaccination_Type`, `Doctor_Consulted`, `State`, `Country`, `Post_Code`, `Date_of_Birth`, `Default_Customer`) VALUES
('12345', 'Matt', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'BOS', 'NYC', 10008, '0000-00-00', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `phil`
--

CREATE TABLE `phil` (
  `Customer_Id` varchar(18) NOT NULL,
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `Post_Code` int(6) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Default_Customer` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phil`
--

INSERT INTO `phil` (`Customer_Id`, `Customer_Name`, `Customer_Open_Date`, `Last_Consulted_Date`, `Vaccination_Type`, `Doctor_Consulted`, `State`, `Country`, `Post_Code`, `Date_of_Birth`, `Default_Customer`) VALUES
('123459', 'Mathew', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'WAS', 'PHIL', 10014, '2000-06-11', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `uae`
--

CREATE TABLE `uae` (
  `Customer_Id` varchar(18) NOT NULL,
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `Post_Code` int(6) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Default_Customer` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uae`
--

INSERT INTO `uae` (`Customer_Id`, `Customer_Name`, `Customer_Open_Date`, `Last_Consulted_Date`, `Vaccination_Type`, `Doctor_Consulted`, `State`, `Country`, `Post_Code`, `Date_of_Birth`, `Default_Customer`) VALUES
('1278', 'Bob', '2014-10-03', '2016-12-12', 'MVD', 'Paul', 'ABD', 'UAE', 10009, '1990-09-15', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `usa`
--

CREATE TABLE `usa` (
  `Customer_Id` varchar(18) NOT NULL,
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Open_Date` date NOT NULL,
  `Last_Consulted_Date` date DEFAULT NULL,
  `Vaccination_Type` char(5) DEFAULT NULL,
  `Doctor_Consulted` char(255) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `Country` char(5) DEFAULT NULL,
  `Post_Code` int(6) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Default_Customer` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usa`
--

INSERT INTO `usa` (`Customer_Id`, `Customer_Name`, `Customer_Open_Date`, `Last_Consulted_Date`, `Vaccination_Type`, `Doctor_Consulted`, `State`, `Country`, `Post_Code`, `Date_of_Birth`, `Default_Customer`) VALUES
('123457', 'Alex', '2010-10-12', '2012-10-13', 'MVD', 'Paul', 'SA', 'USA', 10001, '1987-06-03', 'A'),
('12789', 'Bunny', '2014-03-14', '2015-11-10', 'MVD', 'Paul', 'CH', 'USA', 10010, '1992-05-01', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `au`
--
ALTER TABLE `au`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `ind`
--
ALTER TABLE `ind`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `nyc`
--
ALTER TABLE `nyc`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `phil`
--
ALTER TABLE `phil`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `uae`
--
ALTER TABLE `uae`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `usa`
--
ALTER TABLE `usa`
  ADD PRIMARY KEY (`Customer_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
