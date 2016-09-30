-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2016 at 05:34 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcvc-quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `instructor_view`
--

CREATE TABLE `instructor_view` (
  `instructorID` int(10) NOT NULL,
  `courseCode` varchar(10) NOT NULL,
  `courseTitle` text NOT NULL,
  `classCode` varchar(25) NOT NULL,
  `passKey` varchar(25) NOT NULL,
  `quizName` varchar(50) NOT NULL,
  `qName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor_view`
--

INSERT INTO `instructor_view` (`instructorID`, `courseCode`, `courseTitle`, `classCode`, `passKey`, `quizName`, `qName`) VALUES
(2012101631, 'COE70', 'Project Management (Systems Analysis & Design)', 'BSCpE - 5A', 'coe70cpe5a', 'sample', 'coe70-bscpe-5a-sample');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `middleName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `userType` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `password`, `firstName`, `middleName`, `lastName`, `userType`) VALUES
(2012101631, '123', 'James', 'Genandoy', 'Braga', 'instructor'),
(2012101632, '123', 'James', 'Genandoy', 'Braga', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instructor_view`
--
ALTER TABLE `instructor_view`
  ADD UNIQUE KEY `qName` (`qName`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `userID` (`userID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
