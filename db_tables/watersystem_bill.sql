-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2023 at 07:52 AM
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
-- Table structure for table `watersystem_bill`
--

CREATE TABLE `watersystem_bill` (
  `id` int(11) NOT NULL,
  `account` varchar(50) NOT NULL,
  `prev` varchar(50) NOT NULL,
  `pres` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `readpres_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `readprev_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_due` varchar(20) NOT NULL,
  `whoran` varchar(20) NOT NULL,
  `processfee` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watersystem_bill`
--

INSERT INTO `watersystem_bill` (`id`, `account`, `prev`, `pres`, `price`, `readpres_date`, `readprev_date`, `date_due`, `whoran`, `processfee`) VALUES
(440, '20DH', '0', '287019', '6.41', '2022-12-11 03:09:59', '2022-11-10 07:00:00', '2023-01-01', '', '1.00'),
(442, '26DH', '1', '162866', '6.41', '2022-12-11 03:09:59', '2022-11-10 07:00:00', '2023-01-01', '', '1.00'),
(444, '28DH', '304200', '1316915', '6.41', '2022-12-11 03:09:59', '2022-11-10 07:00:00', '2023-01-01', '', '1.00'),
(446, '33DH', '0', '18', '6.41', '2022-12-11 03:09:59', '2022-11-10 07:00:00', '2023-01-01', '', '1.00'),
(449, '54DL', '189655', '676525', '6.41', '2022-12-11 03:09:59', '2022-11-10 07:00:00', '2023-01-01', '', '1.00'),
(451, '58DL', '108661', '460016', '6.41', '2022-12-11 03:09:59', '2022-11-10 07:00:00', '2023-01-01', '', '1.00'),
(452, '61DL', '3700', '294866', '6.41', '2022-12-11 03:09:59', '2022-11-10 07:00:00', '2023-01-01', '', '1.00'),
(477, '20DH', '287019', '643029', '6.41', '2023-01-11 01:45:52', '2022-12-11 00:48:29', '2023-02-01', '', '1.00'),
(478, '23DH', '162319', '424394', '6.41', '2023-01-11 01:45:52', '2022-12-11 00:48:29', '2023-02-01', '', '1.00'),
(479, '26DH', '162866', '288618', '6.41', '2023-01-11 01:45:52', '2022-12-11 00:48:29', '2023-02-01', '', '1.00'),
(480, '28DH', '1316915', '2226609', '6.41', '2023-01-11 01:45:52', '2022-12-11 00:48:29', '2023-02-01', '', '1.00'),
(481, '33DH', '18', '565', '6.41', '2023-01-11 01:45:52', '2022-12-11 00:48:29', '2023-02-01', '', '1.00'),
(482, '54DL', '676525', '1242754', '6.41', '2023-01-11 01:45:52', '2022-12-11 00:48:29', '2023-02-01', '', '1.00'),
(483, '58DL', '460016', '887879', '6.41', '2023-01-11 01:45:52', '2022-12-11 00:48:29', '2023-02-01', '', '1.00'),
(484, '61DL', '294866', '692522', '6.41', '2023-01-11 01:45:52', '2022-12-11 00:48:29', '2023-02-01', '', '1.00'),
(501, '20DH', '643029', '900015', '6.41', '2023-02-12 16:02:52', '2023-01-11 01:45:52', '2023-03-01', '', '1.00'),
(502, '23DH', '424394', '580908', '6.41', '2023-02-12 16:02:52', '2023-01-11 01:45:52', '2023-03-01', '', '1.00'),
(503, '26DH', '288618', '426721', '6.41', '2023-02-12 16:02:52', '2023-01-11 01:45:52', '2023-03-01', '', '1.00'),
(504, '28DH', '2226609', '3292848', '6.41', '2023-02-12 16:02:52', '2023-01-11 01:45:52', '2023-03-01', '', '1.00'),
(505, '33DH', '565', '595', '6.41', '2023-02-12 16:02:52', '2023-01-11 01:45:52', '2023-03-01', '', '1.00'),
(506, '54DL', '1242754', '1765646', '6.41', '2023-02-12 16:02:52', '2023-01-11 01:45:52', '2023-03-01', '', '1.00'),
(507, '58DL', '887879', '1250596', '6.41', '2023-02-12 16:02:52', '2023-01-11 01:45:52', '2023-03-01', '', '1.00'),
(508, '61DL', '692522', '1088352', '6.41', '2023-02-12 16:02:52', '2023-01-11 01:45:52', '2023-03-01', '', '1.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `watersystem_bill`
--
ALTER TABLE `watersystem_bill`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `watersystem_bill`
--
ALTER TABLE `watersystem_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
