-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Nov 2019 pada 06.14
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
  `kategori` varchar(100) NOT NULL,
  `pengunjung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `nama`, `deskripsi`, `author`, `pdf_icon`, `pdf_url`, `peringkat`, `kategori`, `pengunjung`) VALUES
(3, 'android-developer-fundamentals-course-practicals-idn', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/pingu.jpg', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 4.3, 'Programming', 8),
(4, 'Android Programming Language', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/pingu.jpg', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 4.7, 'Programming', 3),
(5, 'Android Developer', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/pingu.jpg', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 4.7, 'Programming', 3),
(6, 'CRUD Android Retrofit2', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/pingu.jpg', 'pdf/Tutorial Aplikasi CRUD Android Studio & PHP MySQL.pdf', 4.6, 'Programming', 0),
(7, 'Test Aja', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf-icons/0001.jpg', 'pdf/Tutorial Aplikasi CRUD Android Studio & PHP MySQL.pdf', 4.5, 'Pendidikan', 0);

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
(128, 3, 5),
(129, 3, 5),
(130, 4, 5),
(131, 5, 4.5),
(132, 5, 4.5),
(133, 5, 5),
(134, 6, 5),
(135, 6, 4),
(136, 7, 5),
(137, 7, 4.5),
(138, 7, 4),
(139, 3, 5),
(140, 3, 4.5),
(141, 3, 4),
(142, 3, 3.5),
(143, 3, 4),
(144, 3, 5),
(145, 3, 3),
(146, 3, 2),
(147, 3, 5),
(148, 3, 5),
(149, 4, 4.5),
(150, 4, 4.5),
(151, 4, 5),
(152, 4, 5),
(153, 4, 5),
(154, 4, 0),
(155, 4, 5),
(156, 4, 5),
(157, 4, 5),
(158, 4, 5),
(159, 4, 5),
(160, 4, 5),
(161, 4, 5),
(162, 4, 5),
(163, 4, 5),
(164, 4, 5),
(165, 4, 5),
(166, 4, 4.5),
(167, 4, 5),
(168, 4, 5),
(169, 4, 5),
(170, 6, 4),
(171, 6, 4),
(172, 6, 5),
(173, 6, 5),
(174, 6, 5),
(175, 6, 5);

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
(19, 'Android Developer', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 'pdf-icons/pingu.jpg', 4.6, 'Programming', 73),
(20, 'android-developer-fundamentals-course-practicals-idn', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/android-developer-fundamentals-course-practicals-idn.pdf', 'pdf-icons/0001.jpg', 4.1, 'Programming', 45),
(35, 'Android Programming Language', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 'pdf-icons/pingu.jpg', 4.3, 'Programming', 78),
(40, 'CRUD Android Retrofit2', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/Tutorial Aplikasi CRUD Android Studio & PHP MySQL.pdf', 'pdf-icons/pingu.jpg', 4.4, 'Programming', 85),
(43, 'Android Developer', 'Buku yg mengajarkan semua mengenai pembuatan aplikasi', 'Erlangga', 'pdf/11B - Android Studio - Connect Internet (Praktek).pdf', 'pdf-icons/pingu.jpg', 4.7, 'Programming', 45);

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
(45, 'letnan', 'letnan', 'juliandwi74@gmail.com', 'gTJbn9ws9cARaKXMt1cMkNe4YKM4N2YzYWE0ODZl', '87f3aa486e', 'http://192.168.43.236/perpus_db/uploads/45.png'),
(49, 'aaa', 'Zss', 'juliandwiq74@gmail.com', 'L+FQwSWlyzXumCwaFIIhk8EPLkRiMWU2YjYyOGE5', 'b1e6b628a9', 'http://192.168.43.236/perpus_db/uploads/49.png'),
(73, 'Julian', 'Killa', 'juliandwiputra6@gmail.com', 'SMd5TpOQwX1u/hXOM5+eZC/xeothNjczZThhN2Ez', 'a673e8a7a3', ''),
(75, 'Julian', 'qqqqq', 'juliandwip87@gmail.com', 'gxtVWgmzZ9lkY4n3kRqKEC/qxVo5YzgxOGYxYmQ5', '9c818f1bd9', ''),
(76, 'Julian', 'Zirra', 'juliandwi741@gmail.com', 'B3vd1YFCbR7YvO2FD+dNrJfsT2sxNWU1MTE2NjE2', '15e5116616', 'http://192.168.43.236/perpus_db/uploads/76.png'),
(78, 'Julian', 'Zit2ta', 'user@gmail.com', 'eyGEismvNb4N2y1rn8OFGTTbhCA=', '76b5ff04ac', 'http://192.168.43.236/perpus_db/uploads/78.png'),
(85, 'bana', 'haha', 'haha@gmail.com', '0WBIglztFfMeVuhH4Yxix7e4zCo2MjhmMTA4Mjdl', '628f10827e', 'http://192.168.43.143/perpus_db/uploads/85.png'),
(86, 'happha', 'lololo', 'faruqalll@gmail.com', 'STqRiHUvwFD1MBsj63yh9szh60hmNTVlZTJmMWQw', 'f55ee2f1d0', 'http://192.168.43.143/perpus_db/uploads/86.png'),
(87, 'farras', 'ras', 'jul@gmail.com', 'fGU2pCTDFpCRlRAaKwhtmqzLpwo1MTZlMWIwY2Vh', '516e1b0cea', ''),
(88, 'julian', 'julian', 'juliandwi@gmail.com', 'Ss7+Pk9zJoOmQmlG51NYt4JA/VUzZjQxNDhlOWYx', '3f4148e9f1', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `test_upload`
--

CREATE TABLE `test_upload` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `test_upload`
--

INSERT INTO `test_upload` (`id`, `nama`, `type`, `image`) VALUES
(1, 'pexels-photo-1671324.jpeg', 'image/jpeg', ''),
(2, 'rich-but-always-broke-obooko.pdf', 'application/pdf', ''),
(3, 'http://192.168.43.143/perpus_db/pdf/rich-but-always-broke-obooko.pdf', 'application/pdf', '');

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
-- Indeks untuk tabel `test_upload`
--
ALTER TABLE `test_upload`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `peringkat`
--
ALTER TABLE `peringkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT untuk tabel `rakbuku`
--
ALTER TABLE `rakbuku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `test_upload`
--
ALTER TABLE `test_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
