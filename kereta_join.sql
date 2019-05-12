-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2019 at 04:45 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kereta_join`
--

-- --------------------------------------------------------

--
-- Table structure for table `gerbong`
--

CREATE TABLE `gerbong` (
  `id_gerbong` int(255) NOT NULL,
  `kd_gerbong` varchar(255) DEFAULT NULL,
  `kd_kereta` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `gerbong`
--

INSERT INTO `gerbong` (`id_gerbong`, `kd_gerbong`, `kd_kereta`, `nama`) VALUES
(1, 'GRB0001', 'KRT0002', 'A01'),
(2, 'GRB0002', 'KRT0002', 'B01'),
(3, 'GRB0003', 'KRT0003', 'C01');

-- --------------------------------------------------------

--
-- Table structure for table `kursi`
--

CREATE TABLE `kursi` (
  `int_kursi` int(255) NOT NULL,
  `kd_kursi` varchar(255) DEFAULT NULL,
  `kd_gerbong` varchar(255) DEFAULT NULL,
  `kd_kereta` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`int_kursi`, `kd_kursi`, `kd_gerbong`, `kd_kereta`) VALUES
(1, 'KRS0001', 'GRB0001', 'KRT0001'),
(2, 'KRS0002', 'GRB0001', 'KRT0001');

-- --------------------------------------------------------

--
-- Table structure for table `lokomotif`
--

CREATE TABLE `lokomotif` (
  `id_lokomotif` int(255) NOT NULL,
  `kd_kereta` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `lokomotif`
--

INSERT INTO `lokomotif` (`id_lokomotif`, `kd_kereta`, `nama`) VALUES
(1, 'KRT0001', 'Argo Wilis'),
(2, 'KRT0002', 'MALABAR'),
(3, 'KRT0003', 'KURTOJOYO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gerbong`
--
ALTER TABLE `gerbong`
  ADD PRIMARY KEY (`id_gerbong`) USING BTREE,
  ADD KEY `fk_1` (`kd_kereta`) USING BTREE,
  ADD KEY `kd_gerbong` (`kd_gerbong`) USING BTREE;

--
-- Indexes for table `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`int_kursi`) USING BTREE,
  ADD KEY `fk_2` (`kd_gerbong`) USING BTREE,
  ADD KEY `fk_3` (`kd_kereta`) USING BTREE;

--
-- Indexes for table `lokomotif`
--
ALTER TABLE `lokomotif`
  ADD PRIMARY KEY (`id_lokomotif`) USING BTREE,
  ADD KEY `kd_kereta` (`kd_kereta`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gerbong`
--
ALTER TABLE `gerbong`
  MODIFY `id_gerbong` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kursi`
--
ALTER TABLE `kursi`
  MODIFY `int_kursi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lokomotif`
--
ALTER TABLE `lokomotif`
  MODIFY `id_lokomotif` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gerbong`
--
ALTER TABLE `gerbong`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`kd_kereta`) REFERENCES `lokomotif` (`kd_kereta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kursi`
--
ALTER TABLE `kursi`
  ADD CONSTRAINT `fk_2` FOREIGN KEY (`kd_gerbong`) REFERENCES `gerbong` (`kd_gerbong`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_3` FOREIGN KEY (`kd_kereta`) REFERENCES `lokomotif` (`kd_kereta`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
