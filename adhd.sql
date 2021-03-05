-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2021 at 09:56 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adhd`
--

-- --------------------------------------------------------

--
-- Table structure for table `gangguan`
--

CREATE TABLE `gangguan` (
  `id_gangguan` int(11) NOT NULL,
  `nama_gangguan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gangguan`
--

INSERT INTO `gangguan` (`id_gangguan`, `nama_gangguan`) VALUES
(1, 'Inattentive'),
(2, 'Hyperactive-impulsivity'),
(3, 'Kombinasi'),
(4, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jawaban_soal_1` int(11) NOT NULL,
  `jawaban_soal_2` int(11) NOT NULL,
  `jawaban_soal_3` int(11) NOT NULL,
  `jawaban_soal_4` int(11) NOT NULL,
  `jawaban_soal_5` int(11) NOT NULL,
  `jawaban_soal_6` int(11) NOT NULL,
  `jawaban_soal_7` int(11) NOT NULL,
  `jawaban_soal_8` int(11) NOT NULL,
  `jawaban_soal_9` int(11) NOT NULL,
  `jawaban_soal_10` int(11) NOT NULL,
  `jawaban_soal_11` int(11) NOT NULL,
  `jawaban_soal_12` int(11) NOT NULL,
  `jawaban_soal_13` int(11) NOT NULL,
  `jawaban_soal_14` int(11) NOT NULL,
  `jawaban_soal_15` int(11) NOT NULL,
  `jawaban_soal_16` int(11) NOT NULL,
  `jawaban_soal_17` int(11) NOT NULL,
  `jawaban_soal_18` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kasus`
--

CREATE TABLE `kasus` (
  `id_kasus` int(11) NOT NULL,
  `id_gangguan` int(11) NOT NULL,
  `G1` int(11) NOT NULL,
  `G2` int(11) NOT NULL,
  `G3` int(11) NOT NULL,
  `G4` int(11) NOT NULL,
  `G5` int(11) NOT NULL,
  `G6` int(11) NOT NULL,
  `G7` int(11) NOT NULL,
  `G8` int(11) NOT NULL,
  `G9` int(11) NOT NULL,
  `G10` int(11) NOT NULL,
  `G11` int(11) NOT NULL,
  `G12` int(11) NOT NULL,
  `G13` int(11) NOT NULL,
  `G14` int(11) NOT NULL,
  `G15` int(11) NOT NULL,
  `G16` int(11) NOT NULL,
  `G17` int(11) NOT NULL,
  `G18` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kasus`
--

INSERT INTO `kasus` (`id_kasus`, `id_gangguan`, `G1`, `G2`, `G3`, `G4`, `G5`, `G6`, `G7`, `G8`, `G9`, `G10`, `G11`, `G12`, `G13`, `G14`, `G15`, `G16`, `G17`, `G18`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 3, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1),
(4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `soal` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id_pertanyaan`, `soal`) VALUES
(1, 'apakah kamu chika?'),
(2, 'apakah kamu chika?'),
(3, 'apakah kamu ok?'),
(4, 'apakah kamu iya?'),
(5, 'apakah kamu saya?'),
(6, 'apakah kamu ninja?'),
(7, 'apakah kamu chike?'),
(8, 'apakah kamu lala?'),
(9, 'apakah kamu oo?'),
(10, 'apakah kamu chidd'),
(11, 'apakah kamu ppp?'),
(12, 'apakah kamu cddd?'),
(13, 'apakah kamu chssss?'),
(14, 'apakah kamu chsff?'),
(15, 'apakah kamu ch?'),
(16, 'apakah kamu chikdda?'),
(17, 'apakah kamu chikssserff?'),
(18, 'apakah kamu chikdddwww?');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `usia` int(11) NOT NULL,
  `id_gangguan` int(11) NOT NULL,
  `id_kasus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `gender`, `usia`, `id_gangguan`, `id_kasus`) VALUES
(3, 'tes', 'Laki-Laki', 19, 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gangguan`
--
ALTER TABLE `gangguan`
  ADD PRIMARY KEY (`id_gangguan`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `kasus`
--
ALTER TABLE `kasus`
  ADD PRIMARY KEY (`id_kasus`),
  ADD KEY `id_gangguan` (`id_gangguan`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_gangguan` (`id_gangguan`),
  ADD KEY `id_kasus` (`id_kasus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gangguan`
--
ALTER TABLE `gangguan`
  MODIFY `id_gangguan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kasus`
--
ALTER TABLE `kasus`
  MODIFY `id_kasus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `kasus`
--
ALTER TABLE `kasus`
  ADD CONSTRAINT `kasus_ibfk_1` FOREIGN KEY (`id_gangguan`) REFERENCES `gangguan` (`id_gangguan`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_gangguan`) REFERENCES `gangguan` (`id_gangguan`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`id_kasus`) REFERENCES `kasus` (`id_kasus`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
