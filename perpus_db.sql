-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2019 pada 08.16
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
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
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `nama`, `deskripsi`, `author`, `pdf_icon`, `pdf_url`, `peringkat`, `kategori`) VALUES
(3, 'android-developer-fundamentals-course-practicals-idn', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/0001.jpg', 'pdf/android-developer-fundamentals-course-practicals-idn.pdf', 4.2, 'Programming'),
(4, 'Android Programming Language', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/pingu.jpg', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 4, 'Programming'),
(5, 'Android Developer', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/pingu.jpg', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 4.1, 'Programming'),
(6, 'CRUD Android Retrofit2', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/pingu.jpg', 'pdf/Tutorial Aplikasi CRUD Android Studio & PHP MySQL.pdf', 4.2, 'Programming'),
(7, 'Test Aja', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/0001.jpg', 'pdf/Tutorial Aplikasi CRUD Android Studio & PHP MySQL.pdf', 4.1, 'Pendidikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_buku`
--

INSERT INTO `kategori_buku` (`id`, `kategori`) VALUES
(1, 'Programming'),
(2, 'Pendidikan'),
(3, 'Novel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peringkat`
--

CREATE TABLE `peringkat` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `dPeringkat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peringkat`
--

INSERT INTO `peringkat` (`id`, `id_buku`, `dPeringkat`) VALUES
(6, 4, 4.5),
(7, 4, 4.5),
(8, 4, 4.5),
(10, 4, 3),
(11, 4, 5),
(12, 5, 5),
(13, 5, 5),
(14, 5, 4),
(15, 4, 4),
(20, 4, 4),
(21, 4, 4),
(22, 4, 4),
(23, 4, 5),
(24, 4, 5),
(32, 4, 5),
(33, 4, 5),
(34, 7, 4),
(35, 7, 5),
(42, 3, 4.5),
(43, 3, 5),
(48, 13, 5),
(49, 13, 5),
(50, 13, 5),
(51, 3, 5),
(52, 6, 5),
(53, 7, 0),
(54, 7, 5),
(55, 7, 5),
(56, 7, 5),
(57, 7, 0),
(58, 7, 5),
(59, 7, 5),
(60, 7, 5),
(61, 7, 5),
(62, 7, 5),
(63, 7, 5),
(64, 7, 5),
(65, 7, 5),
(66, 6, 2),
(67, 7, 0),
(68, 7, 5),
(69, 7, 5),
(70, 5, 0),
(71, 6, 5),
(72, 6, 4),
(73, 6, 5),
(74, 5, 5),
(75, 5, 5),
(76, 5, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rakbuku`
--

CREATE TABLE `rakbuku` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `pdf_url` varchar(200) NOT NULL,
  `pdf_icon` varchar(200) NOT NULL,
  `peringkat` float NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rakbuku`
--

INSERT INTO `rakbuku` (`id`, `nama`, `deskripsi`, `author`, `pdf_url`, `pdf_icon`, `peringkat`, `kategori`, `id_user`) VALUES
(13, 'android-devsseloper-fundamentals-course-practicals-idn', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/Tutorial Aplikasi CRUD Android Studio & PHP MySQL.pdf', 'pdf-icons/0001.jpg', 4.5, 'Programming', 45),
(17, 'Android Programming Language', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 'pdf-icons/pingu.jpg', 4.3, 'Programming', 45),
(19, 'Android Developer', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 'pdf-icons/pingu.jpg', 4.6, 'Programming', 73),
(20, 'android-developer-fundamentals-course-practicals-idn', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/android-developer-fundamentals-course-practicals-idn.pdf', 'pdf-icons/0001.jpg', 4.1, 'Programming', 45),
(35, 'Android Programming Language', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 'pdf-icons/pingu.jpg', 4.3, 'Programming', 78);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
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
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `email`, `en_password`, `salt`, `image`) VALUES
(45, 'as', 'sf', 'juliandwi74@gmail.com', 'aWr4v090rgUgs27ChrI502dbzFUyNTEwYzM5YTFi', '2510c39a1b', 'http://192.168.43.236/perpus_db/uploads/45.png'),
(49, 'aaa', 'Zss', 'juliandwiq74@gmail.com', 'L+FQwSWlyzXumCwaFIIhk8EPLkRiMWU2YjYyOGE5', 'b1e6b628a9', 'http://192.168.43.236/perpus_db/uploads/49.png'),
(73, 'Julian', 'Killa', 'juliandwiputra6@gmail.com', 'SMd5TpOQwX1u/hXOM5+eZC/xeothNjczZThhN2Ez', 'a673e8a7a3', ''),
(75, 'Julian', 'qqqqq', 'juliandwip87@gmail.com', 'gxtVWgmzZ9lkY4n3kRqKEC/qxVo5YzgxOGYxYmQ5', '9c818f1bd9', ''),
(76, 'Julian', 'Zirra', 'juliandwi741@gmail.com', 'B3vd1YFCbR7YvO2FD+dNrJfsT2sxNWU1MTE2NjE2', '15e5116616', 'http://192.168.43.236/perpus_db/uploads/76.png'),
(78, 'Julian', 'Zit2ta', 'user@gmail.com', 'eyGEismvNb4N2y1rn8OFGTTbhCA=', '76b5ff04ac', 'http://192.168.43.236/perpus_db/uploads/78.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peringkat`
--
ALTER TABLE `peringkat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rakbuku`
--
ALTER TABLE `rakbuku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `peringkat`
--
ALTER TABLE `peringkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `rakbuku`
--
ALTER TABLE `rakbuku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `rakbuku`
--
ALTER TABLE `rakbuku`
  ADD CONSTRAINT `rakbuku_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
