-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 15, 2023 at 10:53 AM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wsacres`
--

-- --------------------------------------------------------

--
-- Table structure for table `member_resident`
--

CREATE TABLE `member_resident` (
  `id` int(11) NOT NULL,
  `account` varchar(20) NOT NULL DEFAULT 'unassigned',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL,
  `terms_accepted_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_logged_in` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_resident`
--

INSERT INTO `member_resident` (`id`, `account`, `first_name`, `last_name`, `email`, `password`, `code`, `status`, `terms_accepted_date`, `last_logged_in`) VALUES
(1, '54DL', 'Richard', 'Niles', 'richard.niles@outlook.com', '$2y$10$xu1.Ad8rhoItWfmdQtCoZuULngV/0PkW4DmUAPLiBnZN4AdQAM2a.', 0, 'verified', '0000-00-00 00:00:00', '2023-02-14 18:45:58'),
(22, 'AS', 'Erin', 'Leach', 'secretary-assistant@wsacres.com', '$2y$10$1VCHzJgY2LfKxX883NFK..LkKcu1AN6zIYIbBeB5j3a6njT.57fTC', 0, 'verified', '0000-00-00 00:00:00', '2023-02-02 21:38:44'),
(25, '58DL', 'Michelle', 'Reid', 'FIVE_REIDS@YAHOO.COM', '', 0, '', '0000-00-00 00:00:00', NULL),
(27, '33DH', 'Bill', 'Mackie', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(28, '34DH', 'Steven', 'Inza', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(29, '30DH', 'Anne', 'Lavigne', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(32, '24DH', 'Sid', 'Spreadbury', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(33, '19DH', 'Patty', 'Dausch', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(34, '17DH', 'Rebekah', 'Ellsworth', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(35, '15DH', 'Linda', 'Clay', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(36, '13DH', 'Bernard', 'Rodier', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(38, '27DH', 'Allison', 'Bennett', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(39, '57DL', 'Charles', 'Cosgrove', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(40, '9DH', 'Heriberto Lobata', 'Segura', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(41, '18DH', 'Leo', 'Gagne SR', '', '', 0, '', '0000-00-00 00:00:00', NULL),
(44, '61DL', 'Erin', 'Leach', 'lovinklnnl@gmail.com', '$2y$10$UYUwzpN9l.5EEIJ1/BtMke80ip2ppZWs83Pa/KYtqIZ7bKIXYcm.q', 0, 'verified', '2023-01-10 18:40:22', '2023-02-12 09:02:39'),
(46, '28DH', 'Marie ', 'Altobelli ', 'johnrb1960@yahoo.com', '$2y$10$VGyrpREYjOV38h1cEod5Ze9LKfvlhmf1XC4zGOTV90vr4GAnrGcsS', 0, 'verified', '2023-01-12 07:42:39', '2023-02-15 06:14:09'),
(48, 'OM', 'Rich', 'Niles', 'operationsmanager@wsacres.com', '$2y$10$y3hYdzE7sk8YsrcqalDy.u0VdABZ5fgoGKpqi188l/uS.bhq8FP6y', 0, 'verified', '2023-01-16 19:43:25', '2023-02-15 08:03:06'),
(51, '136DH', 'Tony', 'Singer', 'bi.enjoyinglife@gmail.com', '$2y$10$WboM89ucMedANdkhHdR1JOiM7QrKnIVYPm5aSPOxbd6IDd2kuxN9u', 671757, 'notverified', '2023-01-25 09:34:30', NULL),
(52, '38DL', 'Aaron ', 'Bonti', 'bontiaaron@gmail.com', '$2y$10$PhPJMFMGJlr8yfp3PjLfC.is9GpYXqmLnwSUH7B9cIUp.goejM6Lm', 0, 'verified', '2023-01-25 16:23:07', NULL),
(53, 'AS', 'Erin', 'Leach', 'asst.sec.wsac@gmail.com', '$2y$10$yA.yy5JBtBzuoPuyZQ5W.eVNz.HP10Jwz9jRgnEex/q0jg.Xcdaya', 0, 'verified', '2023-01-25 18:19:22', '2023-01-29 08:12:08'),
(54, '34DH', 'Steven', 'Inza', 'Steve_inza@yahoo.com', '$2y$10$OoNa2mOnv7ay6vknmEm8s.yNxLoXn9KqK4atlaF/Oit4KwUaGZvU6', 0, 'verified', '2023-01-25 18:54:31', NULL),
(55, '23DL', 'Diane', 'Rabideau', 'wtrhzd1@metrocast.net', '$2y$10$NDsGMBLYpK3gemavAdDZguU6S1OIr2RNYcyMSm0m3ptrwM4ARzTSO', 0, 'verified', '2023-01-25 19:19:41', NULL),
(56, 'unassigned', 'Richard', 'Niles', 'person-1@wsacres.com', '$2y$10$yWCWywgEh/KXRNkCM38/JeZb.NY8PKeg5I79oOdzZfVSah39.oTMu', 0, 'verified', '2023-01-25 19:38:23', '2023-02-15 04:27:51'),
(57, 'unassigned', 'Anne', 'Thomas', 'anneg5@hotmail.com', '$2y$10$VV75rgFki0M7gdfW2k10h.CPTL3s/3oEZN/kDeGMRcnGnBk0k.eMi', 257791, 'notverified', '2023-01-26 08:17:55', NULL),
(58, '73DH', 'Chelsea', 'Niles', 'niles24@gmail.com', '$2y$10$mFBc4fy3dg46o4EDXutXku/W2pndswT5m7h.Ve5XCXJupEoVVTVCW', 0, 'verified', '2023-01-26 16:54:12', '2023-01-26 16:56:16'),
(59, '109DH', 'Sherry', 'Sweitzer', 'sweitzersl4@gmail.com', '$2y$10$by.cA04IcSE6yTriRU07V.b9K1oOO94E7mKKyBsgRP9.MetayiHKq', 0, 'verified', '2023-01-26 18:48:32', '2023-01-26 18:54:05'),
(60, '35DL', 'Nicole', 'Fallon', 'Nmrizan@hotmail.com', '$2y$10$drKJveHcrNHba9w8scgoi.2StekPf1V5j9ZJfc4tBaIe04mgGxUFq', 0, 'verified', '2023-01-26 19:14:45', '2023-01-26 19:18:52'),
(61, '53DL', 'Samantha', 'Hodgkins', 'hodgkinssamantha@yahoo.com', '$2y$10$4da5TBtHfDGD5P8WmexdsOMDYINHfTAkI.acp.QF87e4HUlbkrFYO', 0, 'verified', '2023-01-26 19:49:05', '2023-01-30 12:50:25'),
(62, '23DH', 'Austen ', 'Smith ', 'teeitupausten@yahoo.com', '$2y$10$C5GNGoABw/EmhwwGXPvAo.mTVzlRFzcBbnOH88x3xQdwjA8hunVxO', 0, 'verified', '2023-01-26 19:58:51', '2023-01-26 20:01:08'),
(63, '26DH', 'Sidney', 'Taylor', 'staylor600@aol.com', '$2y$10$NejzOT00Wu5mprOwkT5CPO8gmop4HE9fI9lblltRhwmZ.qeXtwOiO', 403595, 'verified', '2023-01-27 08:24:56', '2023-02-15 08:45:01'),
(64, '100DH', 'Catherine', 'Fitzpatrick', 'LIMEYCAT@ATLANTICBB.NET', '$2y$10$6./0Jl/Ot6m.TSxHoGfGl.F3EZWOwfiXGpP./AvzLA1jJz56YueKu', 0, 'verified', '2023-01-27 19:52:56', '2023-01-30 18:55:26'),
(66, '148DH', 'Barbara Jean', 'Proof', 'bjproof@yahoo.com', '$2y$10$IBsDsxGmpo4cuKYl76eQxu6qyTarZ9uMbP851kjduSN5Wb7TJcn/K', 0, 'verified', '2023-01-28 08:35:25', '2023-01-28 10:56:52'),
(67, '34DL', 'Norman', 'Duguay', 'airrider5@yahoo.com', '$2y$10$N9PRWItU2OHizej8JDdNWuDTB3VB19CKJ4Ren/nirndnmUdg0S9iG', 0, 'verified', '2023-01-30 14:58:22', '2023-01-30 15:00:09'),
(68, '76DH', 'Paul', 'Estabrook', 'Paulestabrook40@gmail.com', '$2y$10$LioZr9F6sG7kFfGXoxpzNOdQ9imHuZ/3kAv33ApzkdeW66I.rifk6', 0, 'verified', '2023-02-07 05:43:03', '2023-02-12 15:23:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member_resident`
--
ALTER TABLE `member_resident`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member_resident`
--
ALTER TABLE `member_resident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
