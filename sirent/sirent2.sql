-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2020 at 12:22 PM
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
-- Database: `sirent2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_petugas` char(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` char(30) NOT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_petugas`, `username`, `password`, `foto`) VALUES
('12345', 'Sutrisno', 'plampang', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `costumer`
--

CREATE TABLE `costumer` (
  `No_Ktp` varchar(50) NOT NULL,
  `No_telp` char(12) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `E-mail` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costumer`
--

INSERT INTO `costumer` (`No_Ktp`, `No_telp`, `nama`, `alamat`, `E-mail`, `password`, `gambar`) VALUES
('0897654786', '09876508976', 'doni', 'Mataram', 'yudi@gmail.com', '$2y$10$rXHHSu.pJCJT5aMK0tMlduLsakWuUq.4ACEeYrQSUGxbnKjC6YUHK', ''),
('0987654', '09876543', 'rena', 'Mataram', 'idhamkholidstmik@gmail.com', '$2y$10$EOlhxxIT66jH6HkyZ0uOmuUn9AzWrdpu9yW7Ss08PPI5gDrJ0jjya', ''),
('13415341541', '081898989898', 'eliza', 'jakem', 'eliza@gmail.com', '$2y$10$a95jSSLb4xSjyW29yiFMPuS/KeEYKgn8rBiDPwyWWQLnx1MYFMFI6', ''),
('796547654', '678908756', 'ihkwan', 'Mataram', 'idhamkholidstmik@gmail.com', '$2y$10$QHMff69AVWHt62H107vGMe.oZBYvzKEKkAb4KkQqmBwW9/NL2.z/2', '');

-- --------------------------------------------------------

--
-- Table structure for table `mitra`
--

CREATE TABLE `mitra` (
  `id_mitra` char(25) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` text NOT NULL,
  `No_telp` char(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mitra`
--

INSERT INTO `mitra` (`id_mitra`, `Nama`, `Alamat`, `No_telp`, `email`, `img`) VALUES
('MT5E1924E3B28A2', 'bjksd', 'js', '98', 'rmb032@gmail.com', '5e1924e3b28b5.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `no_pol` char(10) NOT NULL,
  `id_mitra` char(30) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `gambar` text DEFAULT NULL,
  `kapasitas` int(11) NOT NULL,
  `fasilitas` varchar(12) NOT NULL,
  `tarif` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`no_pol`, `id_mitra`, `merk`, `tipe`, `gambar`, `kapasitas`, `fasilitas`, `tarif`, `stok`) VALUES
('EA 232 EA', 'MT5E1924E3B28A2', 'Toyota', 'Sedan', '5e1a94f42c474.jpeg', 4, 'Lepas Kunci', 450000, 3),
('EA 233 EA', 'MT5E1924E3B28A2', 'New Agya', 'Minivan', '5e1a940a7c7d5.jpg', 4, 'Dengan sopir', 500000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `Id_kembali` char(20) NOT NULL,
  `Id_transaksi` varchar(30) NOT NULL,
  `no_pol` char(20) NOT NULL,
  `tgl_kembali` varchar(10) NOT NULL,
  `lama_pengembalian` int(3) NOT NULL,
  `denda` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`Id_kembali`, `Id_transaksi`, `no_pol`, `tgl_kembali`, `lama_pengembalian`, `denda`) VALUES
('5E1BE79A99469', 'SR5E1BE667BE689', 'EA 232 EA', '2020-02-02', 2, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `penyewaan`
--

CREATE TABLE `penyewaan` (
  `id_transaksi` varchar(30) NOT NULL,
  `No_ktp` varchar(50) NOT NULL,
  `tanggal_pinjam` varchar(10) NOT NULL,
  `durasi` int(11) NOT NULL,
  `id_petugas` char(20) NOT NULL,
  `no_pol` char(20) NOT NULL,
  `biaya` double NOT NULL,
  `paid` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyewaan`
--

INSERT INTO `penyewaan` (`id_transaksi`, `No_ktp`, `tanggal_pinjam`, `durasi`, `id_petugas`, `no_pol`, `biaya`, `paid`) VALUES
('SR5E1BE667BE689', '13415341541', '01/02/2020', 1, '12345', 'EA 232 EA', 450000, 'Payred');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`No_Ktp`);

--
-- Indexes for table `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`no_pol`),
  ADD KEY `id_mitra` (`id_mitra`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`Id_kembali`),
  ADD KEY `Id_transaksi` (`Id_transaksi`),
  ADD KEY `no_pol` (`no_pol`);

--
-- Indexes for table `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `no_pol` (`no_pol`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `No_ktp` (`No_ktp`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mobil`
--
ALTER TABLE `mobil`
  ADD CONSTRAINT `mobil_ibfk_1` FOREIGN KEY (`id_mitra`) REFERENCES `mitra` (`id_mitra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_1` FOREIGN KEY (`Id_transaksi`) REFERENCES `penyewaan` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD CONSTRAINT `penyewaan_ibfk_1` FOREIGN KEY (`No_ktp`) REFERENCES `costumer` (`No_Ktp`),
  ADD CONSTRAINT `penyewaan_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `admin` (`id_petugas`),
  ADD CONSTRAINT `penyewaan_ibfk_3` FOREIGN KEY (`no_pol`) REFERENCES `mobil` (`no_pol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
