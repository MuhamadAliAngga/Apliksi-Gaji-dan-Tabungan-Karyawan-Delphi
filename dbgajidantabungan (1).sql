-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 01:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbgajidantabungan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tgaji`
--

CREATE TABLE `tgaji` (
  `id_gaji` varchar(25) NOT NULL,
  `Nama_Karyawan` varchar(20) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `bulan` varchar(25) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nik` varchar(5) NOT NULL,
  `id_jabatan` varchar(5) NOT NULL,
  `Tunjangan_Jabatan` int(11) NOT NULL,
  `Gaji_Pokok` int(11) NOT NULL,
  `Tunjangan_Anak` int(11) NOT NULL,
  `Tunjangan_Masa_Kerja` int(11) NOT NULL,
  `Potongan_Tabungan` int(11) NOT NULL,
  `Total_Gaji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tgaji`
--

INSERT INTO `tgaji` (`id_gaji`, `Nama_Karyawan`, `tanggal`, `bulan`, `tahun`, `nik`, `id_jabatan`, `Tunjangan_Jabatan`, `Gaji_Pokok`, `Tunjangan_Anak`, `Tunjangan_Masa_Kerja`, `Potongan_Tabungan`, `Total_Gaji`) VALUES
('N01-Juni-2023', 'Haryadi ', '2023-06-10', 'Juni', 2023, 'N01', 'J01', 7000000, 10000000, 300000, 800000, 100000, 18000000),
('N01-Mei-2023', 'Haryadi ', '2023-05-10', 'Mei', 2023, 'N01', 'J01', 7000000, 10000000, 300000, 800000, 200000, 17900000),
('N02-Mei-2023', 'Megawati ', '2023-05-10', 'Mei', 2023, 'N02', 'J05', 1000000, 4300000, 150000, 700000, 100000, 6050000),
('N03-Mei-2023', 'Hasrun ', '2023-05-10', 'Mei', 2023, 'N03', 'J02', 6000000, 8000000, 150000, 500000, 500000, 14150000),
('N04-Mei-2023', 'Arman ', '2023-05-10', 'Mei', 2023, 'N04', 'J05', 1000000, 4300000, 0, 500000, 200000, 5600000);

-- --------------------------------------------------------

--
-- Table structure for table `tjabatan`
--

CREATE TABLE `tjabatan` (
  `id_jabatan` varchar(5) NOT NULL,
  `nama_jabatan` varchar(15) NOT NULL,
  `Gaji_Pokok` int(11) NOT NULL,
  `Tunjangan_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tjabatan`
--

INSERT INTO `tjabatan` (`id_jabatan`, `nama_jabatan`, `Gaji_Pokok`, `Tunjangan_jabatan`) VALUES
('J01', 'DIREKTUR', 10000000, 7000000),
('J02', 'WAKIL DIREKTUR', 8000000, 6000000),
('J03', 'MANAJER', 7000000, 3000000),
('J04', 'ADMIN GUDANG', 5750000, 2000000),
('J05', 'OPERATOR', 4300000, 1000000),
('J06', 'CLEANING SERVIS', 43000000, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `tkaryawaan`
--

CREATE TABLE `tkaryawaan` (
  `nik` varchar(5) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jumlah_anak` int(11) NOT NULL,
  `tmt` date NOT NULL,
  `saldo_tabungan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tkaryawaan`
--

INSERT INTO `tkaryawaan` (`nik`, `nama`, `alamat`, `jumlah_anak`, `tmt`, `saldo_tabungan`) VALUES
('N01', 'Haryadi', 'Tigaraksa', 4, '2015-05-12', 150000),
('N02', 'Megawati', 'Balaraja', 2, '2016-06-12', 0),
('N03', 'Hasrun', 'Mekarbaru', 2, '2017-10-09', 500000),
('N04', 'Arman', 'Cikupa', 0, '2017-12-11', 100000),
('N06', 'imam', 'balaraja', 2, '2017-02-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `toperator`
--

CREATE TABLE `toperator` (
  `usser_name` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toperator`
--

INSERT INTO `toperator` (`usser_name`, `password`) VALUES
('angga', '12345678'),
('firgus', '12345678'),
('sekar', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tpenarikan`
--

CREATE TABLE `tpenarikan` (
  `id_penarikan` varchar(5) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nik` varchar(5) NOT NULL,
  `jumlah_penarikan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tpenarikan`
--

INSERT INTO `tpenarikan` (`id_penarikan`, `tanggal`, `nik`, `jumlah_penarikan`) VALUES
('P01', '2023-05-12', 'N01', 150000),
('P02', '2023-06-10', 'N02', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tgaji`
--
ALTER TABLE `tgaji`
  ADD PRIMARY KEY (`id_gaji`);

--
-- Indexes for table `tjabatan`
--
ALTER TABLE `tjabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tkaryawaan`
--
ALTER TABLE `tkaryawaan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `toperator`
--
ALTER TABLE `toperator`
  ADD PRIMARY KEY (`usser_name`);

--
-- Indexes for table `tpenarikan`
--
ALTER TABLE `tpenarikan`
  ADD PRIMARY KEY (`id_penarikan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
