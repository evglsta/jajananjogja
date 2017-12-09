-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2017 at 03:52 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jajananjogja`
--

-- --------------------------------------------------------

--
-- Table structure for table `bakpia`
--

CREATE TABLE `bakpia` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bakpia`
--

INSERT INTO `bakpia` (`id`, `nama`, `gambar`) VALUES
(7, 'BAKPIA PATHUK 25', 'file_1512741602.jpg'),
(8, 'BAKPIA PATHUK KURNIA SARI', 'file_1512741661.jpg'),
(9, 'BAKPIA PATHUK KENCANA', 'file_1512741689.jpg'),
(10, 'BAKPIA PATHUK MUTIARA', 'file_1512741724.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coklat`
--

CREATE TABLE `coklat` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `geplak`
--

CREATE TABLE `geplak` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kue`
--

CREATE TABLE `kue` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rasa`
--

CREATE TABLE `rasa` (
  `id` int(11) NOT NULL,
  `id_bakpia` int(11) NOT NULL,
  `rasa` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rasa`
--

INSERT INTO `rasa` (`id`, `id_bakpia`, `rasa`, `harga`, `keterangan`, `gambar`) VALUES
(1, 7, 'Bakpia Kacang Hijau', 40000, 'Bakpia dengan cita rasa Khas Original Kacang Ijo dari Bakpia Pathok 25', 'file_1512829104.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rasa_coklat`
--

CREATE TABLE `rasa_coklat` (
  `id` int(11) NOT NULL,
  `id_coklat` int(11) NOT NULL,
  `rasa` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rasa_geplak`
--

CREATE TABLE `rasa_geplak` (
  `id` int(11) NOT NULL,
  `id_geplak` int(11) NOT NULL,
  `rasa` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rasa_kue`
--

CREATE TABLE `rasa_kue` (
  `id` int(11) NOT NULL,
  `id_kue` int(11) NOT NULL,
  `rasa` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rasa_yangko`
--

CREATE TABLE `rasa_yangko` (
  `id` int(11) NOT NULL,
  `id_yangko` int(11) NOT NULL,
  `rasa` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `yangko`
--

CREATE TABLE `yangko` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bakpia`
--
ALTER TABLE `bakpia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coklat`
--
ALTER TABLE `coklat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geplak`
--
ALTER TABLE `geplak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kue`
--
ALTER TABLE `kue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rasa`
--
ALTER TABLE `rasa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bakpia` (`id_bakpia`);

--
-- Indexes for table `rasa_coklat`
--
ALTER TABLE `rasa_coklat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_coklat` (`id_coklat`);

--
-- Indexes for table `rasa_geplak`
--
ALTER TABLE `rasa_geplak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rasa_kue`
--
ALTER TABLE `rasa_kue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rasa_yangko`
--
ALTER TABLE `rasa_yangko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rasa_yangko_ibfk_1` (`id_yangko`);

--
-- Indexes for table `yangko`
--
ALTER TABLE `yangko`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bakpia`
--
ALTER TABLE `bakpia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `coklat`
--
ALTER TABLE `coklat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `geplak`
--
ALTER TABLE `geplak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kue`
--
ALTER TABLE `kue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rasa`
--
ALTER TABLE `rasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rasa_coklat`
--
ALTER TABLE `rasa_coklat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rasa_geplak`
--
ALTER TABLE `rasa_geplak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rasa_kue`
--
ALTER TABLE `rasa_kue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rasa_yangko`
--
ALTER TABLE `rasa_yangko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yangko`
--
ALTER TABLE `yangko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `rasa`
--
ALTER TABLE `rasa`
  ADD CONSTRAINT `rasa_ibfk_1` FOREIGN KEY (`id_bakpia`) REFERENCES `bakpia` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rasa_coklat`
--
ALTER TABLE `rasa_coklat`
  ADD CONSTRAINT `rasa_coklat_ibfk_1` FOREIGN KEY (`id_coklat`) REFERENCES `coklat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rasa_yangko`
--
ALTER TABLE `rasa_yangko`
  ADD CONSTRAINT `rasa_yangko_ibfk_1` FOREIGN KEY (`id_yangko`) REFERENCES `yangko` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
