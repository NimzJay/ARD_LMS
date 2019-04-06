-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2019 at 02:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ard_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(255) NOT NULL,
  `bTitle` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `edition` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `copies` int(255) NOT NULL,
  `addedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `bTitle`, `isbn`, `author`, `category`, `publisher`, `edition`, `language`, `copies`, `addedDate`) VALUES
(3, 'Othello', '12345', 'William Shakespeare', 'Romance', 'Penguin', '2.0', 'English', 10, '2019-03-17'),
(4, 'Jane Eyre', '1235', 'Charlet Bronte', 'Romance', 'Penguin', '2.0', 'English', 5, '2019-03-18'),
(5, 'Sherlock Holmes', '12345', 'Arthur Conan Doyle', 'Detective', 'blah', '3.0', 'English', 15, '2019-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `nic` varchar(10) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(254) DEFAULT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `username`, `password`, `fname`, `lname`, `dob`, `nic`, `phone`, `email`, `address`, `type`) VALUES
(1, 'admin', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin'),
(2, 'mimi', 'mimi', 'mimi', 'mimi', '2019-03-17', '9089', 8989, 'mimi', 'mimi', 'admin'),
(3, 'nim', 'nim', 'nim', 'nim', '2019-03-02', '890', 809, 'nim', 'nim', 'admin'),
(4, 'binu', 'binu', 'binu', 'binu', '2019-03-03', '789', 789, 'binu', 'binu', 'member'),
(5, 'kk', 'kk', 'kk', 'kk', '2019-03-11', '90', 90, 'kk', 'kk', 'member'),
(6, 'Mimi', '123', 'mimia', 'sam', '2019-03-21', '967845367V', 98765432, 'nmkqw@gmail.com', 'Colombo', 'admin'),
(7, 'it17146094', 'nim', 'mimi', 'binu', '2019-03-15', '9089', 809, 'nimzjayaweera@gmail.com', 'binu', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
