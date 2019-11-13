-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2019 at 04:38 AM
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
(6, 'CRUD Android Retrofit2', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/pingu.jpg', 'pdf/Tutorial Aplikasi CRUD Android Studio & PHP MySQL.pdf', 4, 'Programming'),
(7, 'Test Aja', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/0001.jpg', 'pdf/Tutorial Aplikasi CRUD Android Studio & PHP MySQL.pdf', 4.5, 'Pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`id`, `kategori`) VALUES
(1, 'Programming'),
(2, 'Pendidikan'),
(3, 'Novel');

-- --------------------------------------------------------

--
-- Table structure for table `rakbuku`
--

CREATE TABLE `rakbuku` (
  `id` int(11) NOT NULL,
  `Rb_nama` varchar(100) NOT NULL,
  `Rb_deskripsi` text NOT NULL,
  `Rb_author` varchar(100) NOT NULL,
  `Rb_pdf_url` varchar(200) NOT NULL,
  `Rb_pdf_icon` varchar(200) NOT NULL,
  `Rb_peringkat` float NOT NULL,
  `Rb_kategori` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rakbuku`
--

INSERT INTO `rakbuku` (`id`, `Rb_nama`, `Rb_deskripsi`, `Rb_author`, `Rb_pdf_url`, `Rb_pdf_icon`, `Rb_peringkat`, `Rb_kategori`, `id_user`) VALUES
(13, 'android-devsseloper-fundamentals-course-practicals-idn', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/Tutorial Aplikasi CRUD Android Studio & PHP MySQL.pdf', 'pdf-icons/0001.jpg', 4.5, 'Programming', 45),
(15, 'Test Aja', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/Tutorial Aplikasi CRUD Android Studio & PHP MySQL.pdf', 'pdf-icons/0001.jpg', 4.5, 'Programming', 45),
(17, 'Android Programming Language', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 'pdf-icons/pingu.jpg', 4.3, 'Programming', 45),
(19, 'Android Developer', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 'pdf-icons/pingu.jpg', 4.6, 'Programming', 73),
(20, 'android-developer-fundamentals-course-practicals-idn', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/android-developer-fundamentals-course-practicals-idn.pdf', 'pdf-icons/0001.jpg', 4.1, 'Programming', 45);

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
(45, 'julian', 'Panjul', 'juliandwi74@gmail.com', 'aWr4v090rgUgs27ChrI502dbzFUyNTEwYzM5YTFi', '2510c39a1b', 'http://192.168.43.143/perpus_db/uploads/45.png'),
(49, 'aaa', 'Zss', 'juliandwiq74@gmail.com', 'L+FQwSWlyzXumCwaFIIhk8EPLkRiMWU2YjYyOGE5', 'b1e6b628a9', 'http://192.168.43.143/perpus_db/uploads/49.png'),
(73, 'Julian', 'Killa', 'juliandwiputra6@gmail.com', 'SMd5TpOQwX1u/hXOM5+eZC/xeothNjczZThhN2Ez', 'a673e8a7a3', ''),
(75, 'Julian', 'qqqqq', 'juliandwip87@gmail.com', 'gxtVWgmzZ9lkY4n3kRqKEC/qxVo5YzgxOGYxYmQ5', '9c818f1bd9', ''),
(76, 'Julian', 'Zirra', 'juliandwi741@gmail.com', 'B3vd1YFCbR7YvO2FD+dNrJfsT2sxNWU1MTE2NjE2', '15e5116616', 'http://192.168.43.143/perpus_db/uploads/76.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rakbuku`
--
ALTER TABLE `rakbuku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

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
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rakbuku`
--
ALTER TABLE `rakbuku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rakbuku`
--
ALTER TABLE `rakbuku`
  ADD CONSTRAINT `rakbuku_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
