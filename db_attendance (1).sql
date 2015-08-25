-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25 Agu 2015 pada 03.52
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_attendance`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_dosen`
--

CREATE TABLE IF NOT EXISTS `m_dosen` (
  `KDDOSEN` char(6) NOT NULL,
  `NAMA` varchar(30) NOT NULL,
  `IDRFID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_jadwalkuliah`
--

CREATE TABLE IF NOT EXISTS `m_jadwalkuliah` (
  `KDJADWAL` char(4) NOT NULL,
  `KELAS` varchar(1) NOT NULL,
  `NMMATAKULIAH` varchar(50) NOT NULL,
  `HARI` varchar(10) NOT NULL,
  `JAMMULAI` time NOT NULL,
  `JAMSELESAI` time NOT NULL,
  `KDDOSEN` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `m_mahasiswa` (
  `NIM` char(7) DEFAULT NULL,
  `NAMA` varchar(50) NOT NULL,
  `ANGKATAN` char(4) DEFAULT NULL,
  `KELAS` char(1) DEFAULT NULL,
  `IDRFID` char(10) NOT NULL,
  `PRODI` varchar(20) DEFAULT NULL,
  `KDDOSEN` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_reader`
--

CREATE TABLE IF NOT EXISTS `m_reader` (
  `KDREADER` char(5) NOT NULL,
  `KDRUANGAN` char(4) DEFAULT NULL,
  `NMREADER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_ruangan`
--

CREATE TABLE IF NOT EXISTS `m_ruangan` (
  `KDRUANGAN` char(4) NOT NULL,
  `KDREADER` char(5) DEFAULT NULL,
  `JNSRUANGAN` char(1) NOT NULL,
  `GEDUNG` varchar(10) NOT NULL,
  `LANTAI` smallint(6) DEFAULT NULL,
  `NORUANGAN` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_attandance`
--

CREATE TABLE IF NOT EXISTS `t_attandance` (
  `IDRFID` char(10) NOT NULL,
  `KDREADER` char(5) NOT NULL,
  `DATA` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jadwalkelas`
--

CREATE TABLE IF NOT EXISTS `t_jadwalkelas` (
  `KDRUANGAN` char(4) NOT NULL,
  `KDJADWAL` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_dosen`
--
ALTER TABLE `m_dosen`
 ADD PRIMARY KEY (`KDDOSEN`);

--
-- Indexes for table `m_jadwalkuliah`
--
ALTER TABLE `m_jadwalkuliah`
 ADD PRIMARY KEY (`KDJADWAL`);

--
-- Indexes for table `m_mahasiswa`
--
ALTER TABLE `m_mahasiswa`
 ADD PRIMARY KEY (`IDRFID`);

--
-- Indexes for table `m_reader`
--
ALTER TABLE `m_reader`
 ADD PRIMARY KEY (`KDREADER`), ADD KEY `FK_RELATIONSHIP_5` (`KDRUANGAN`);

--
-- Indexes for table `m_ruangan`
--
ALTER TABLE `m_ruangan`
 ADD PRIMARY KEY (`KDRUANGAN`), ADD KEY `FK_RELATIONSHIP_4` (`KDREADER`);

--
-- Indexes for table `t_attandance`
--
ALTER TABLE `t_attandance`
 ADD PRIMARY KEY (`IDRFID`,`KDREADER`), ADD KEY `FK_RELATIONSHIP_3` (`KDREADER`);

--
-- Indexes for table `t_jadwalkelas`
--
ALTER TABLE `t_jadwalkelas`
 ADD PRIMARY KEY (`KDRUANGAN`,`KDJADWAL`), ADD KEY `FK_RELATIONSHIP_6` (`KDJADWAL`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `m_reader`
--
ALTER TABLE `m_reader`
ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`KDRUANGAN`) REFERENCES `m_ruangan` (`KDRUANGAN`);

--
-- Ketidakleluasaan untuk tabel `m_ruangan`
--
ALTER TABLE `m_ruangan`
ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`KDREADER`) REFERENCES `m_reader` (`KDREADER`);

--
-- Ketidakleluasaan untuk tabel `t_attandance`
--
ALTER TABLE `t_attandance`
ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`IDRFID`) REFERENCES `m_mahasiswa` (`IDRFID`),
ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`KDREADER`) REFERENCES `m_reader` (`KDREADER`);

--
-- Ketidakleluasaan untuk tabel `t_jadwalkelas`
--
ALTER TABLE `t_jadwalkelas`
ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`KDJADWAL`) REFERENCES `m_jadwalkuliah` (`KDJADWAL`),
ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`KDRUANGAN`) REFERENCES `m_ruangan` (`KDRUANGAN`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
