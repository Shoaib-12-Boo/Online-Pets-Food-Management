-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 07:30 PM
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
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '0e7517141fb53f21ee439b355b5a1d0a', '07-06-2021 03:24:11 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Simple Print Format ', 'Your best option for quick and everyday document printing.\r\n1. Ideal for sales sheets resumes newsletters and menus.\r\n2. Choose from 4 paper types, single- or double-sided, stapled or loose.', '2017-03-28 07:10:55', '2021-06-07 09:58:19'),
(2, 'Professional Print Format ', 'Fully customizable printing for professional-quality documents.\r\n1. Ideal for presentations, business reports, and training manuals.\r\n2. Choose from over 40 paper types, multiple bindings, finishing options, and more.', '2017-06-11 10:54:06', '2021-06-07 09:59:11'),
(3, 'Booklets ', 'Saddle-stitched finish and a choice of premium covers.\r\n1. Perfect for programs, portfolios, catalogs, and comic printing.\r\n2. Print 8 to 80 pages in a variety of sizes, cover styles, and more.', '2021-06-07 09:59:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08'),
(9, 24, 'in process', 'Lets See ', '2021-05-30 14:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(3, 'Letter(8.5\" Ã— 11\") A4', '(8.5\" Ã— 11\")', '2016-10-18 11:35:02', '2021-06-07 17:12:36'),
(4, 'Legal(8.5\" Ã— 14\") A5', '(8.5\" Ã— 14\")', '2016-10-18 11:35:58', '2021-06-07 17:13:16'),
(5, 'Ledger(11\" Ã— 17\") A3', '(11\" Ã— 17\")', '2017-03-28 07:20:36', '2021-06-07 17:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Microsoft Word ', '2017-03-28 07:11:07', '2021-06-07 10:02:02'),
(2, 1, 'JPEG', '2017-03-28 07:11:20', '2021-06-07 10:02:28'),
(5, 1, 'PNG', '2021-06-07 10:03:32', NULL),
(8, 2, 'JPG', '2021-06-07 10:04:23', NULL),
(18, 3, 'Microsoft Publisher', '2021-06-07 10:06:09', NULL),
(19, 3, 'Microsoft Powerpoint', '2021-06-07 10:06:28', NULL),
(20, 2, 'PDF', '2021-06-07 17:15:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(26, 1, 1, '18', 'Black & White', 'Letter(8.5\" Ã— 11\") A4', '4', 'oiriofieodcmeolcml', 'Armaghan Raza(GAMING APP)-AGREEMENT-ASO-converted.pdf', '2021-06-07 17:16:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 14:00:03', '30-05-2021 07:33:08 PM', 1),
(28, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 14:04:58', '', 1),
(29, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 16:35:06', '', 1),
(30, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 12:12:08', '', 1),
(31, 0, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 12:47:42', '', 0),
(32, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 12:47:49', '05-06-2021 06:42:06 PM', 1),
(33, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 13:12:20', '05-06-2021 11:56:00 PM', 1),
(34, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 18:26:35', '06-06-2021 01:00:17 AM', 1),
(35, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-05 19:47:27', '', 0),
(36, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-05 20:08:35', '', 0),
(37, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-05 20:09:27', '', 0),
(38, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-05 20:10:15', '', 0),
(39, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-05 20:13:04', '06-06-2021 02:01:02 AM', 0),
(40, 0, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 20:46:19', '', 0),
(41, 0, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 20:46:30', '', 0),
(42, 0, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 20:49:08', '06-06-2021 02:19:11 AM', 0),
(43, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 20:49:33', '06-06-2021 02:20:28 AM', 1),
(44, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 21:12:00', '06-06-2021 02:51:26 AM', 1),
(45, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 21:21:50', '06-06-2021 02:58:30 AM', 1),
(46, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 21:29:27', '06-06-2021 03:00:29 AM', 1),
(47, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 21:40:42', '', 1),
(48, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 22:41:44', '06-06-2021 04:24:09 AM', 1),
(49, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 07:13:25', '', 1),
(50, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 08:27:38', '', 1),
(51, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 10:24:44', '', 1),
(52, 2, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 16:39:18', '07-06-2021 10:52:23 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(2, 'Muqadas Zohaib ', 'muqadaszohaib@gmail.com', '0c4a2ad2bdd15e2987b19395733fa42d',  3022718477, NULL, NULL, NULL, NULL, NULL, '2021-05-30 13:59:49', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
