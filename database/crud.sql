-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 12:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tmpt_Lahir` varchar(50) NOT NULL,
  `tgl_Lahir` date NOT NULL,
  `jekel` enum('Laki - Laki','Perempuan') NOT NULL,
  `jurusan` enum('Teknik Listrik','Teknik Komputer dan Jaringan','Multimedia','Rekayasa Perangkat Lunak','Geomatika','Mesin') NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `tmpt_Lahir`, `tgl_Lahir`, `jekel`, `jurusan`, `email`, `gambar`, `alamat`) VALUES
('9', 'heru', 'kediri', '2001-11-11', 'Laki - Laki', 'Multimedia', 'ckmclkem@gmail.com', '6671cab463304.jpg', 'axaxkclscamxcpamspx'),
('2', 'Sugeng', 'Malang', '2010-10-10', 'Laki - Laki', 'Teknik Listrik', 'asasasas@gmail.com', '6671d1c8c6a98.jpg', 'Malang'),
('3', 'Paijo', 'Subaya', '2007-10-15', 'Laki - Laki', 'Rekayasa Perangkat Lunak', 'ahvgavg@gmail.com', '6671d21e995d3.png', 'Bandung'),
('4', 'Ponijan', 'Kediri', '2009-12-16', 'Laki - Laki', 'Teknik Komputer dan Jaringan', 'hagavgavgv@gmail.com', '6671d2652c8b3.jpg', 'Lamongan'),
('5', 'Ponimen', 'Magelang', '2006-02-22', 'Laki - Laki', 'Mesin', 'abjabbabh@gmail.com', '6671d2ff414fa.jpg', 'Medan'),
('8', 'Sarinem', 'Palembang', '2004-05-10', 'Perempuan', 'Multimedia', 'gfgvyghb@gmail.com', '6671d38a898e1.jpg', 'maluku');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'Admin', 'admin'),
(2, 'abdul', '$2y$10$sEE5r1v2Wcbdsu/VsK.0XuVN9lI4.K.awyB2g4QshqXVy3vkKhCC6'),
(3, '', '$2y$10$3Loxxu6FuNu9TZmaQwz3.uhyqLQE7e2ARqDlGEAVJuBu20.2NlJMy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
