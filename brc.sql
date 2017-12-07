-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 Des 2017 pada 18.12
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'yayan irfan', 'yayanif', 'yayanif'),
(2, 'bagus', 'bagus', 'sugab');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `tanggal_pemesanan` varchar(21) NOT NULL,
  `id_sepatu` int(11) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `nama_pemesan` varchar(20) NOT NULL,
  `nomor_pemesan` varchar(20) NOT NULL,
  `alamat_pemesan` text NOT NULL,
  `email_pemesan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`tanggal_pemesanan`, `id_sepatu`, `jumlah_pesanan`, `nama_pemesan`, `nomor_pemesan`, `alamat_pemesan`, `email_pemesan`) VALUES
('13-05-2017_10:12:51', 235, 9090, '909090', '9090', '90', '9090@9090.com'),
('13-05-2017_11:45:25', 112, 12, 'putra', '085204178922', 'jkt', 'putra@mail.com'),
('13-05-2017_12:27:53', 112, 12, '1', '12', '12', '123@123.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sepatu`
--

CREATE TABLE `sepatu` (
  `id_sepatu` int(10) NOT NULL,
  `nama_sepatu` varchar(20) NOT NULL,
  `jumlah_sepatu` int(11) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `produk_baru` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sepatu`
--

INSERT INTO `sepatu` (`id_sepatu`, `nama_sepatu`, `jumlah_sepatu`, `harga`, `gambar`, `produk_baru`) VALUES
(111, 'brown casual', 5, '400000', 'assets/images/sepatu/111.jpg', 1),
(112, 'purple casual', 5, '400000', 'assets/images/sepatu/112.jpg', 1),
(113, 'black sperry', 5, '350000', 'assets/images/sepatu/113.png', 1),
(114, 'timberland black', 5, '500000', 'assets/images/sepatu/114.jpg', 0),
(115, 'timberland brown', 5, '600000', 'assets/images/sepatu/115.jpg', 0),
(116, 'unstructured', 5, '400000', 'assets/images/sepatu/116.jpg', 0),
(221, 'sperry black', 5, '450000', 'assets/images/sepatu/221.png', 1),
(222, 'sperry casual', 5, '350000', 'assets/images/sepatu/222.jpg', 1),
(223, 'heels sperry', 5, '400000', 'assets/images/sepatu/223.jpg', 0),
(225, 'heels red', 5, '500000', 'assets/images/sepatu/225.jpg', 1),
(226, 'silver nerine', 5, '650000', 'assets/images/sepatu/226.jpg', 0),
(227, 'fitflop white', 5, '300000', 'assets/images/sepatu/227.jpg', 0),
(228, 'brown clark', 5, '350000', 'assets/images/sepatu/228.jpg', 0),
(229, 'fitflop grey', 5, '300000', 'assets/images/sepatu/229.jpg', 0),
(230, 'brown boot sperry', 5, '500000', 'assets/images/sepatu/230.png', 0),
(231, 'black boot sperry', 5, '500000', 'assets/images/sepatu/231.png', 0),
(232, 'casual black clark', 5, '350000', 'assets/images/sepatu/232.png', 0),
(233, 'work clark', 5, '350000', 'assets/images/sepatu/233.png', 0),
(234, 'play clark', 5, '400000', 'assets/images/sepatu/234.png', 0),
(235, 'women clark', 5, '400000', 'assets/images/sepatu/235.jpg\r\n', 0),
(236, 'brown work sperry', 5, '450000', 'assets/images/sepatu/236.jpg', 0),
(237, 'blue jeans', 5, '550000', 'assets/images/sepatu/237.jpg', 1),
(238, 'amazing heels', 5, '650000', 'assets/images/sepatu/238.jpg', 0),
(239, 'brown quints', 5, '500000', 'assets/images/sepatu/239.jpg', 0),
(240, 'pink mambo fit', 5, '550000', 'assets/images/sepatu/240.jpg', 0),
(241, 'red mambo', 5, '500000', 'assets/images/sepatu/241.jpg', 0),
(242, 'blue mambo', 5, '500000', 'assets/images/sepatu/242.jpg', 0),
(243, 'brown mambo fit', 5, '550000', 'assets/images/sepatu/243.jpg', 0),
(244, 'pink mambo', 5, '500000', 'assets/images/sepatu/244.jpg', 0),
(245, 'silver star', 5, '600000', 'assets/images/sepatu/245.png', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id_user` int(11) NOT NULL,
  `Email` text NOT NULL,
  `Username` text NOT NULL,
  `Pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id_user`, `Email`, `Username`, `Pass`) VALUES
(1, 'yayanif123@gmail.com', 'yayan', 'yayan1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`tanggal_pemesanan`),
  ADD KEY `id_sepatu` (`id_sepatu`);

--
-- Indexes for table `sepatu`
--
ALTER TABLE `sepatu`
  ADD PRIMARY KEY (`id_sepatu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_sepatu`) REFERENCES `sepatu` (`id_sepatu`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
