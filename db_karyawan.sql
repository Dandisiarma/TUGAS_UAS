-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 01:21 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_gaji`
--

CREATE TABLE `tb_gaji` (
  `id_gaji` int(10) NOT NULL,
  `jenis_gaji` varchar(30) NOT NULL,
  `jumlah_gaji` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gaji`
--

INSERT INTO `tb_gaji` (`id_gaji`, `jenis_gaji`, `jumlah_gaji`) VALUES
(1, 'Technical Support', 5000000),
(2, 'Accounting', 10000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `no` int(5) NOT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `nama_karyawan` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `divisi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`no`, `nik`, `nama_karyawan`, `jabatan`, `tgl_masuk`, `divisi`) VALUES
(6, '17300002', 'adam', 'Technical Support', '2019-06-07', 'Umum'),
(9, '17300003', 'Mas Untoro', 'Technical Support', '2019-06-11', 'Staff'),
(10, '17300001', 'buyung', 'Technical Support', '2019-06-10', 'Staff'),
(12, '17300004', 'jalal junior', 'Accounting', '2019-04-01', 'Staff'),
(13, '17300005', 'azra mahendra', 'technical support', '1999-03-28', 'intel');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `no` int(5) NOT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `nama_karyawan` varchar(100) DEFAULT NULL,
  `level` enum('admin','user','superuser') DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`no`, `nik`, `nama_karyawan`, `level`, `password`) VALUES
(1, '17300010', 'Dandi Siarma Wijaya', 'admin', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_gaji`
--
ALTER TABLE `tb_gaji`
  ADD PRIMARY KEY (`id_gaji`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
