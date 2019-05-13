-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2019 at 09:53 AM
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
(3, 'Othello', '12348', 'William Shakespeare', 'Romance', 'Penguin', '2.0', 'English', 9, '2019-03-17'),
(10, 'Sherlock Holmes', '890', 'Arthut Conan Doyle', 'Detective', 'Penguin', '2.0', 'English', 2, '2019-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `book_reservation`
--

CREATE TABLE `book_reservation` (
  `Reservation_ID` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `bid` int(255) NOT NULL,
  `bTitle` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `reservationDate` date NOT NULL,
  `expirationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lending`
--

CREATE TABLE `lending` (
  `lnedID` int(11) NOT NULL,
  `Nic` varchar(9) NOT NULL,
  `bookTitele` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `copies` varchar(255) NOT NULL,
  `lendingQty` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `rdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lending`
--

INSERT INTO `lending` (`lnedID`, `Nic`, `bookTitele`, `userName`, `copies`, `lendingQty`, `status`, `rdate`) VALUES
(10, '789', 'Othello', 'binu', '10', '1', 'lended', '2019-05-12');

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
(3, 'nimz', 'nimz', 'nimz', 'nimz', '2019-03-02', '890', 809, 'nimz', 'nimz', 'admin'),
(4, 'binu', 'binu', 'binu', 'binu', '2019-03-03', '789', 789, 'binu', 'binu', 'member'),
(6, 'Mimi', '123', 'mimia', 'sam', '2019-03-21', '967845367V', 98765432, 'nmkqw@gmail.com', 'Colombo', 'admin'),
(7, 'it17146094', 'nim', 'mimi', 'binu', '2019-03-15', '9089', 809, 'nimzjayaweera@gmail.com', 'binu', 'member'),
(8, 'ridmal', '123', 'ridmal', 'eh', '2019-05-02', '13456', 456123, 'xfrkx', 'dytkj', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `book_reservation`
--
ALTER TABLE `book_reservation`
  ADD PRIMARY KEY (`Reservation_ID`);

--
-- Indexes for table `lending`
--
ALTER TABLE `lending`
  ADD PRIMARY KEY (`lnedID`);

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
  MODIFY `bid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book_reservation`
--
ALTER TABLE `book_reservation`
  MODIFY `Reservation_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lending`
--
ALTER TABLE `lending`
  MODIFY `lnedID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
