-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 Des 2017 pada 09.56
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.0.24

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
-- Struktur dari tabel `bakpia`
--

CREATE TABLE `bakpia` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bakpia`
--

INSERT INTO `bakpia` (`id`, `nama`, `gambar`) VALUES
(7, 'BAKPIA PATHUK 25', 'file_1512741602.jpg'),
(8, 'BAKPIA PATHUK KURNIA SARI', 'file_1512741661.jpg'),
(9, 'BAKPIA PATHUK KENCANA', 'file_1512741689.jpg'),
(10, 'BAKPIA PATHUK MUTIARA', 'file_1512741724.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coklat`
--

CREATE TABLE `coklat` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `geplak`
--

CREATE TABLE `geplak` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kue`
--

CREATE TABLE `kue` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rasa`
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
-- Dumping data untuk tabel `rasa`
--

INSERT INTO `rasa` (`id`, `id_bakpia`, `rasa`, `harga`, `keterangan`, `gambar`) VALUES
(1, 25, 'coklat', 45000, 'bakpia pathuk 25 dengan cita rasa coklat asli', 'file_1512883980.jpg'),
(2, 25, 'keju', 48000, 'bakpia pathuk 25 dengan cita rasa keju asli', 'file_1512885217.JPG'),
(3, 25, 'kacang ijo', 38000, 'bakpia pathuk 25 dengan cita rasa kacang hijau original asli', 'file_1512885270.jpg'),
(4, 25, 'telo ungu', 44000, 'bakpia pathuk 25 dengan cita rasa ubi ungu asli', 'file_1512885331.jpg'),
(5, 25, 'aneka', 45000, 'pilihan rasa bebas', 'file_1512885392.jpg'),
(6, 25, 'cappucino', 47000, 'bakpia pathuk 25 dengan cita rasa kopi cappucino', 'file_1512885632.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `yangko`
--

CREATE TABLE `yangko` (
  `id` int(20) NOT NULL,
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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `yangko`
--
ALTER TABLE `yangko`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
