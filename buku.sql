-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 07:51 AM
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
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `pdf_icon` varchar(300) NOT NULL,
  `pdf_url` varchar(300) NOT NULL,
  `peringkat` float NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `nama`, `deskripsi`, `author`, `pdf_icon`, `pdf_url`, `peringkat`, `kategori`) VALUES
(3, 'android-developer-fundamentals-course-practicals-idn', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/0001.jpg', 'pdf/android-developer-fundamentals-course-practicals-idn.pdf', 4.1, 'Programming'),
(4, 'Android Programming Language', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/pingu.jpg', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 4.3, 'Programming'),
(5, 'Android Developer', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/pingu.jpg', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 4.6, 'Programming'),
(6, 'CRUD Android Retrofit2', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/pingu.jpg', 'pdf/Tutorial Aplikasi CRUD Android Studio & PHP MySQL.pdf', 4, 'Programming');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
