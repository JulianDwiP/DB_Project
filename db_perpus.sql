-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 06:08 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `en_password` varchar(80) NOT NULL,
  `salt` varchar(10) DEFAULT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `email`, `en_password`, `salt`, `image`) VALUES
(27, 'Ziiqq', 'HAHAHA', 'juliandwi75121@gmail.com', '0uIbfafVhNzBMFnb5TsxWaWFhD02ZWM2MDI1ZGRi', '6ec6025ddb', ''),
(36, 'Kila', 'Xenom', 'juliandwiputra6@gmail.com', '4cAlAx2yMsukIf7Ejn/G+dysOlY2ODExYTMzMzUz', '6811a33353', ''),
(37, 'Juliann', 'zirra', 'juliandwi744@gmail.com', 'YQzCyVWmU4Oo8UyggzsYX4umOI8wNjc4NTFmYzcy', '067851fc72', ''),
(43, 'lala', 'qqq', 'aaaa@gmail.com', 'j5saxvHynA7KJPVt/wk8LPvdo5JjYjE0NGNhMmMx', 'cb144ca2c1', ''),
(44, 'cekcek', '12345', 'juliandwi743@gmail.com', '15vw3bVfN92NaCH/I4wAaQE3oTkzNTJhM2ZmNDJi', '352a3ff42b', ''),
(45, 'hh', 'hhh', 'juliandwi74@gmail.com', 'aWr4v090rgUgs27ChrI502dbzFUyNTEwYzM5YTFi', '2510c39a1b', 'http://192.168.43.143/perpus_db/uploads/49.png'),
(48, 'juliann', 'qqwwee', 'juliandwi73@gmail.com', 'r7DE24X2WZ7LNr0LbEvGktiwewkxYWUwZmRhNjE3', '1ae0fda617', 'http://192.168.43.143/perpus_db/uploads/49.png'),
(49, 'jajaj', 'hahau', 'juliandwiq74@gmail.com', 'L+FQwSWlyzXumCwaFIIhk8EPLkRiMWU2YjYyOGE5', 'b1e6b628a9', 'http://192.168.43.143/perpus_db/uploads/49.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
