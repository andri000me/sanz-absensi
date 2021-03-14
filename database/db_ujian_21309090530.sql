-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 01:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ujian_21309090530`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi_karyawan`
--

CREATE TABLE `absensi_karyawan` (
  `id` int(11) NOT NULL,
  `nik` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `absen` int(11) NOT NULL,
  `hadir` int(11) NOT NULL,
  `tidak_hadir` int(11) NOT NULL,
  `izin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `absensi_karyawan`
--

INSERT INTO `absensi_karyawan` (`id`, `nik`, `nama`, `absen`, `hadir`, `tidak_hadir`, `izin`) VALUES
(1, 1747, 'Muhammad Sandy', 7, 4, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `alasan_karyawan`
--

CREATE TABLE `alasan_karyawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alasan` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `alasan_karyawan`
--

INSERT INTO `alasan_karyawan` (`id`, `nama`, `alasan`, `tanggal`) VALUES
(1, 'Muhammad Sandy', 'Sakit', '23/02/2021'),
(3, 'Muhammad Sandy', 'Alpha', '25/02/2021'),
(4, 'Muhammad Sandy', 'Acara Keluarga', '25/02/2021');

-- --------------------------------------------------------

--
-- Table structure for table `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `handphone` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `tentang` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `data_karyawan`
--

INSERT INTO `data_karyawan` (`id`, `name`, `position`, `age`, `start_date`, `salary`, `email`, `handphone`, `nik`, `tentang`, `image_name`) VALUES
(1, 'Muhammad Sandy', 'IT Developer', 18, '23/02/2021', 100000000, 'msandypr@gmail.com', '081383173577', '1747', 'Orang Ganteng', 'msandypr.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `history_karyawan`
--

CREATE TABLE `history_karyawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `history_karyawan`
--

INSERT INTO `history_karyawan` (`id`, `nama`, `info`, `tanggal`) VALUES
(23, 'Admin', 'Admin telah melakukan login', '25/02/2021 23:05:50'),
(24, 'Muhammad Sandy', 'Muhammad Sandy Telah melakukan login', '25/02/2021 23:08:58'),
(25, 'Muhammad Sandy', 'Muhammad Sandy Telah melakukan login', '25/02/2021 23:09:00'),
(26, 'Muhammad Sandy', 'Muhammad Sandy Telah melakukan login', '25/02/2021 23:09:06'),
(27, 'Admin', 'Admin telah melakukan login', '25/02/2021 23:09:21'),
(28, 'Admin', 'Admin telah melakukan login', '25/02/2021 23:09:48'),
(29, 'Admin', 'Admin telah melakukan login', '25/02/2021 23:12:26'),
(30, 'Admin', 'Admin telah melakukan login', '25/02/2021 23:12:39'),
(31, 'Admin', 'Admin telah melakukan login', '25/02/2021 23:14:10'),
(32, 'Admin', 'Admin telah melakukan login', '25/02/2021 23:17:20'),
(33, 'Admin', 'Admin telah melakukan login', '25/02/2021 23:19:14'),
(34, 'Admin', 'Admin telah melakukan login', '25/02/2021 23:19:21'),
(35, 'Muhammad Sandy', 'Muhammad Sandy Telah melakukan login', '26/02/2021 10:56:30'),
(36, 'Muhammad Sandy', 'Muhammad Sandy Telah melakukan login', '26/02/2021 10:56:33'),
(37, 'Muhammad Sandy', 'Muhammad Sandy Telah melakukan login', '26/02/2021 10:56:36'),
(38, 'Muhammad Sandy', 'Muhammad Sandy Telah melakukan login', '26/02/2021 10:56:37'),
(39, 'Admin', 'Admin telah melakukan login', '26/02/2021 10:56:54'),
(40, 'Admin', 'Admin telah melakukan login', '26/02/2021 10:57:15'),
(41, 'Admin', 'Admin telah melakukan login', '26/02/2021 10:57:36'),
(42, 'Admin', 'Admin telah melakukan login', '26/02/2021 10:57:40'),
(43, 'Admin', 'Admin telah melakukan login', '26/02/2021 18:06:09'),
(44, 'Admin', 'Admin telah melakukan login', '26/02/2021 18:06:45'),
(45, 'Admin', 'Admin telah melakukan login', '26/02/2021 18:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `setting_absensi`
--

CREATE TABLE `setting_absensi` (
  `id` int(11) NOT NULL,
  `mulai_absen` varchar(255) NOT NULL,
  `selesai_absen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `setting_absensi`
--

INSERT INTO `setting_absensi` (`id`, `mulai_absen`, `selesai_absen`) VALUES
(1, '06:00', '24:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_absensi`
--

CREATE TABLE `tbl_absensi` (
  `transid` int(11) UNSIGNED NOT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_absensi`
--

INSERT INTO `tbl_absensi` (`transid`, `nik`, `waktu`, `tanggal`) VALUES
(1, '1747', '14:00:05', '2021-02-23 00:00:00'),
(2, '1747', '14:03:40', '2021-02-24 00:00:00'),
(3, '1747', '15:04:19', '2021-02-25 00:00:00'),
(4, '1747', '16:04:19', '2021-02-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_karyawan`
--

CREATE TABLE `users_karyawan` (
  `id` int(11) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_karyawan`
--

INSERT INTO `users_karyawan` (`id`, `nik`, `password`, `level`) VALUES
(1, '21309090530', 'msandypr', 'Admin'),
(3, '1747', 'sandy', 'Karyawan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_karyawan`
--
ALTER TABLE `absensi_karyawan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `alasan_karyawan`
--
ALTER TABLE `alasan_karyawan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `history_karyawan`
--
ALTER TABLE `history_karyawan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `setting_absensi`
--
ALTER TABLE `setting_absensi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_absensi`
--
ALTER TABLE `tbl_absensi`
  ADD PRIMARY KEY (`transid`) USING BTREE;

--
-- Indexes for table `users_karyawan`
--
ALTER TABLE `users_karyawan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi_karyawan`
--
ALTER TABLE `absensi_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `alasan_karyawan`
--
ALTER TABLE `alasan_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history_karyawan`
--
ALTER TABLE `history_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `setting_absensi`
--
ALTER TABLE `setting_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_absensi`
--
ALTER TABLE `tbl_absensi`
  MODIFY `transid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_karyawan`
--
ALTER TABLE `users_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
