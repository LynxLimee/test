-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 06:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ska`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenjang_studi` varchar(50) NOT NULL,
  `tahun_kelulusan` varchar(4) NOT NULL,
  `ska_skk` varchar(30) NOT NULL,
  `grade_ska` varchar(20) NOT NULL,
  `masa_berlaku` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id_pegawai`, `nama`, `jenjang_studi`, `tahun_kelulusan`, `ska_skk`, `grade_ska`, `masa_berlaku`, `status`, `file`) VALUES
(1, 'ABDUL GHOFAR ANSHORI, ST', 'S1- Sipil', '1999', 'MEKANIKAL', 'MADYA', '2027-11-23', 'INTERNAL', ''),
(2, 'ABDUL KADIR,ST', 'S1- Sipil', '1997', 'K3 KONSTRUKSI', 'MADYA', '2023-01-09', 'LUAR', ''),
(4, 'ABDUL MUJIB, MT', 'S2-Sipil', '2020', 'JALAN', 'MADYA', '2027-04-29', 'LUAR', ''),
(5, 'ABI ARBANGI, ST', 'S1-Sipil', '2018', 'JALAN', 'MUDA', '2023-08-12', 'INTERNAL', ''),
(7, 'ACHMAD CHABIB, ST', 'S1-Sipil', '2010', 'JALAN', 'MUDA', '2028-02-14', '-', ''),
(8, 'ACHMAD FAISHAL, ST', 'S1-Sipil', '1996', 'JALAN', 'MUDA', '2023-06-01', 'LUAR', ''),
(9, 'ACHMAD FAISHAL, ST', 'S1-Sipil', '1996', 'LINGKUNGAN', 'MADYA', '2023-12-17', 'LUAR', ''),
(10, 'ACHMAD RIZAL KHARIRI, ST', 'S1-Sipil', '2015', 'K3 KONSTRUKSI', 'MADYA', '2027-12-14', '-', ''),
(11, 'ADHI KURNIAWAN, ST', 'S1-Sipil', '2009', 'JALAN', 'MADYA', '2023-11-29', 'INTERNAL', ''),
(12, 'ADHI KURNIAWAN, ST', 'S1-Sipil', '2009', 'SUMBER DAYA AIR', 'MADYA', '2023-08-02', 'INTERNAL', ''),
(13, 'ADHI KURNIAWAN, ST', 'S1-Sipil', '2009', 'MANAJEMEN KONSTRUKSI', 'MADYA', '2023-03-18', 'INTERNAL', ''),
(14, 'ADHI KURNIAWAN, ST', 'S1-Sipil', '2009', 'JEMBATAN', 'MADYA', '2027-11-02', 'INTERNAL', ''),
(15, 'ADHI KURNIAWAN, ST', 'S1-Sipil', '2009', 'BANGUNAN GEDUNG', 'MADYA', '2027-10-28', 'INTERNAL', ''),
(16, 'AGIT EKA PAMBUDI, ST ,. MT', 'S2-Sipil', '2016', 'JALAN', 'MADYA', '2022-10-15', 'LUAR', ''),
(17, 'AGUNG SETIO BUDI, ST', 'S1-Sipil', '2018', 'JALAN', 'MUDA', '2027-04-01', 'INTERNAL', ''),
(18, 'AGUNG SETIO BUDI, ST', 'S1-Sipil', '2018', 'MANAJEMEN MUTU', 'MUDA', '2028-03-08', 'INTERNAL', ''),
(19, 'AGUS FAISOL, ST', 'S1-Sipil', '1993', 'K3 KONSTRUKSI', 'MADYA', '2024-10-04', '-', ''),
(20, 'AGUSTINUS AFEANPAH, ST', 'S1-Sipil', '2010', 'AIR MINUM', 'MUDA', '2023-06-16', '-', ''),
(21, 'AHMAD ROIS ABID, ST', 'S1-Sipil', '2015', 'JALAN', 'MADYA', '2027-10-30', 'INTERNAL', ''),
(22, 'AHMAD ROIS ABID, ST', 'S1-Sipil', '2015', 'BANGUNAN GEDUNG', 'MADYA', '2022-01-08', 'INTERNAL', ''),
(23, 'AHMAD ROIS ABID, ST', 'S1-Sipil', '2015', 'JEMBATAN', 'MADYA', '2027-11-23', 'INTERNAL', ''),
(24, 'AHMAD SAIFUDDIN SHODIK, ST', 'S1-Sipil', '2020', 'JALAN', 'MUDA', '2023-07-01', 'LUAR', ''),
(25, 'ALFIAN NUR KHOLIQ, ST', 'S1-Sipil', '2001', 'K3 KONSTRUKSI', 'MADYA', '2023-03-30', 'LUAR', ''),
(26, 'ALFIYAN HILMI, ST', 'S1-Arsitek', '2018', 'ARSITEK', 'MUDA', '2023-06-16', 'LUAR', ''),
(27, 'ALIEF BAGUS SETYAWAN, ST', 'S1-Sipil', '2014', 'JALAN', 'MADYA', '2024-09-09', '-', ''),
(28, 'ALIEQ DWI KUSWANTO, ST', 'S1-Sipil', '2005', 'ELEKTRIKAL', 'MADYA', '2024-07-14', '-', ''),
(29, 'ANDI PRASETYO, ST', 'S1-Sipil', '2005', 'SUMBER DAYA AIR', 'MADYA', '2027-02-02', '-', ''),
(30, 'ANDRIE IRKHAM, ST', 'S1-Sipil', '2019', 'JALAN', 'MUDA', '2024-12-23', 'INTERNAL', ''),
(31, 'ANGGA GALUH FREDA UTAMA, ST', 'S1-Sipil', '2011', 'SUMBER DAYA AIR', 'MADYA', '2023-12-20', 'LUAR', ''),
(32, 'ARIEF BUDI SETIAWAN, ST', 'S1-Sipil', '1995', 'JEMBATAN', 'MUDA', '2023-09-23', '-', ''),
(33, 'ARIS MUNANTO, ST', 'S1-Sipil', '1993', 'BANGUNAN GEDUNG', 'MADYA', '2023-09-29', 'INTERNAL', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
