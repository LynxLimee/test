-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2023 at 06:24 AM
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
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`username`, `password`) VALUES
('petugas', 'petugasmce'),
('root', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenjang_studi` varchar(50) NOT NULL,
  `tahun_kelulusan` varchar(4) DEFAULT NULL,
  `ska_skk` varchar(30) NOT NULL,
  `grade_ska` varchar(20) NOT NULL,
  `masa_berlaku` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `file_img` text NOT NULL,
  `file_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id_pegawai`, `nama`, `jenjang_studi`, `tahun_kelulusan`, `ska_skk`, `grade_ska`, `masa_berlaku`, `status`, `file_img`, `file_file`) VALUES
(1, 'ABDUL GHOFAR ANSHORI, ST', 'S1- Sipil', '1999', 'MEKANIKAL', 'MADYA', '2027-11-23', 'INTERNAL', '', ''),
(2, 'ABDUL KADIR,ST', 'S1- Sipil', '1997', 'K3 KONSTRUKSI', 'MADYA', '2023-01-09', 'LUAR', '', ''),
(4, 'ABDUL MUJIB, MT', 'S2-Sipil', '2020', 'JALAN', 'MADYA', '2027-04-29', 'LUAR', '', ''),
(5, 'ABI ARBANGI, ST', 'S1-Sipil', '2018', 'JALAN', 'MUDA', '2023-08-12', 'INTERNAL', '', ''),
(7, 'ACHMAD CHABIB, ST', 'S1-Sipil', '2010', 'JALAN', 'MUDA', '2028-02-14', '-', '', ''),
(8, 'ACHMAD FAISHAL, ST', 'S1-Sipil', '1996', 'JALAN', 'MUDA', '2023-06-01', 'LUAR', '', ''),
(9, 'ACHMAD FAISHAL, ST', 'S1-Sipil', '1996', 'LINGKUNGAN', 'MADYA', '2023-12-17', 'LUAR', '', ''),
(10, 'ACHMAD RIZAL KHARIRI, ST', 'S1-Sipil', '2015', 'K3 KONSTRUKSI', 'MADYA', '2027-12-14', '-', '', ''),
(11, 'ADHI KURNIAWAN, ST', 'S1-Sipil', '2009', 'JALAN', 'MADYA', '2023-11-29', 'INTERNAL', '', ''),
(12, 'ADHI KURNIAWAN, ST', 'S1-Sipil', '2009', 'SUMBER DAYA AIR', 'MADYA', '2023-08-02', 'INTERNAL', '', ''),
(13, 'ADHI KURNIAWAN, ST', 'S1-Sipil', '2009', 'MANAJEMEN KONSTRUKSI', 'MADYA', '2023-03-18', 'INTERNAL', '', ''),
(14, 'ADHI KURNIAWAN, ST', 'S1-Sipil', '2009', 'JEMBATAN', 'MADYA', '2027-11-02', 'INTERNAL', '', ''),
(15, 'ADHI KURNIAWAN, ST', 'S1-Sipil', '2009', 'BANGUNAN GEDUNG', 'MADYA', '2027-10-28', 'INTERNAL', '', ''),
(16, 'AGIT EKA PAMBUDI, ST ,. MT', 'S2-Sipil', '2016', 'JALAN', 'MADYA', '2022-10-15', 'LUAR', '', ''),
(17, 'AGUNG SETIO BUDI, ST', 'S1-Sipil', '2018', 'JALAN', 'MUDA', '2027-04-01', 'INTERNAL', '', ''),
(18, 'AGUNG SETIO BUDI, ST', 'S1-Sipil', '2018', 'MANAJEMEN MUTU', 'MUDA', '2028-03-08', 'INTERNAL', '', ''),
(19, 'AGUS FAISOL, ST', 'S1-Sipil', '1993', 'K3 KONSTRUKSI', 'MADYA', '2024-10-04', '-', '', ''),
(20, 'AGUSTINUS AFEANPAH, ST', 'S1-Sipil', '2010', 'AIR MINUM', 'MUDA', '2023-06-16', '-', '', ''),
(21, 'AHMAD ROIS ABID, ST', 'S1-Sipil', '2015', 'JALAN', 'MADYA', '2027-10-30', 'INTERNAL', '', ''),
(22, 'AHMAD ROIS ABID, ST', 'S1-Sipil', '2015', 'BANGUNAN GEDUNG', 'MADYA', '2022-01-08', 'INTERNAL', '', ''),
(23, 'AHMAD ROIS ABID, ST', 'S1-Sipil', '2015', 'JEMBATAN', 'MADYA', '2027-11-23', 'INTERNAL', '', ''),
(24, 'AHMAD SAIFUDDIN SHODIK, ST', 'S1-Sipil', '2020', 'JALAN', 'MUDA', '2023-07-01', 'LUAR', '', ''),
(25, 'ALFIAN NUR KHOLIQ, ST', 'S1-Sipil', '2001', 'K3 KONSTRUKSI', 'MADYA', '2023-03-30', 'LUAR', '', ''),
(26, 'ALFIYAN HILMI, ST', 'S1-Arsitek', '2018', 'ARSITEK', 'MUDA', '2023-06-16', 'LUAR', '', ''),
(27, 'ALIEF BAGUS SETYAWAN, ST', 'S1-Sipil', '2014', 'JALAN', 'MADYA', '2024-09-09', '-', '', ''),
(28, 'ALIEQ DWI KUSWANTO, ST', 'S1-Sipil', '2005', 'ELEKTRIKAL', 'MADYA', '2024-07-14', '-', '', ''),
(29, 'ANDI PRASETYO, ST', 'S1-Sipil', '2005', 'SUMBER DAYA AIR', 'MADYA', '2027-02-02', '-', '', ''),
(30, 'ANDRIE IRKHAM, ST', 'S1-Sipil', '2019', 'JALAN', 'MUDA', '2024-12-23', 'INTERNAL', '', ''),
(31, 'ANGGA GALUH FREDA UTAMA, ST', 'S1-Sipil', '2011', 'SUMBER DAYA AIR', 'MADYA', '2023-12-20', 'LUAR', '', ''),
(32, 'ARIEF BUDI SETIAWAN, ST', 'S1-Sipil', '1995', 'JEMBATAN', 'MUDA', '2023-09-23', '-', '', ''),
(33, 'ARIS MUNANTO, ST', 'S1-Sipil', '1993', 'BANGUNAN GEDUNG', 'MADYA', '2023-09-29', 'INTERNAL', '', ''),
(34, 'ARIS MUNANTO, ST', 'S1-Sipil', '1993', 'JALAN', 'MADYA', '2028-02-16', 'INTERNAL', '', ''),
(35, 'ARIS MUNANTO, ST', 'S1-Sipil', '1993', 'K3 KONSTRUKSI', 'MUDA', '2024-08-08', 'INTERNAL', '', ''),
(36, 'ARTISTIKA IRMAPUTRI DHANIO, ST', 'S1-Arsitek', '2007', 'ILUMINASI', 'MADYA', '2024-09-21', 'LUAR', '', ''),
(37, 'ASTRI WANDONO, ST ', 'S1-Sipil', '2011', 'K3 KONSTRUKSI', 'MUDA', '2023-03-17', 'LUAR', '', ''),
(38, 'ATIK WAHYUNI, ST., MT.', 'S2-Sipil', '2002', 'JALAN', 'MADYA', '2023-04-14', 'INTERNAL', '', ''),
(39, 'BAMBANG SUTIARSO, ST', 'S1-Sipil', '1989', 'JALAN', 'MUDA', '2023-06-01', 'LUAR', '', ''),
(40, 'BAYU AJI SANTOSO, ST', 'S1-Sipil', '2020', 'JALAN', 'MUDA', '2028-03-08', 'LUAR', '', ''),
(41, 'BERLIAN WICAKSONO, ST', 'S1-Sipil', '2003', 'JALAN', 'MUDA', '2023-11-08', 'LUAR', '', ''),
(42, 'BLASIUS TOTOK S., ST', 'S1-Sipil', '2001', 'GEODESI', 'MADYA', '2024-11-29', 'LUAR', '', ''),
(43, 'BUDI HARTONO, ST', 'S1-Sipil', '2003', 'JALAN', 'MADYA', '2027-03-17', 'LUAR', '', ''),
(44, 'BUDI SANTOSO, ST', 'S1-Sipil', '2001', 'JEMBATAN', 'MADYA', '2023-03-18', 'LUAR', '', ''),
(45, 'CHAERUL ANWAR, ST', 'S1-Sipil', '2012', 'GEOTEKNIK', 'MADYA', '2023-11-30', 'INTERNAL', '', ''),
(46, 'CHAERUL ANWAR, ST', 'S1-Sipil', '2012', 'SUMBER DAYA AIR', 'MADYA', '2023-10-13', 'INTERNAL', '', ''),
(47, 'CHAERUL ANWAR, ST', 'S1-Sipil', '2012', 'JALAN', 'MADYA', '2021-03-01', 'INTERNAL', '', ''),
(48, 'CHAERUL ANWAR, ST', 'S1-Sipil', '2012', 'BANGUNAN GEDUNG', 'MADYA', '2022-01-08', 'INTERNAL', '', ''),
(49, 'DEDI ARUM WIBOWO, ST', 'S1-Sipil', '2019', 'JEMBATAN', 'MUDA', '2024-12-22', 'INTERNAL', '', ''),
(50, 'DEDI ARUM WIBOWO, ST', 'S1-Sipil', '2019', 'JALAN', 'MUDA', '2028-03-08', 'INTERNAL', '', ''),
(51, 'DENI PRASETYA WIBAWA, ST', 'S1-Sipil', '2008', 'MEKANIKAL', 'MADYA', '2023-12-14', '-', '', ''),
(52, 'DIDI MAHFUDI  ', 'S1-Sipil', '1991', 'JALAN', 'UTAMA', '2024-09-13', '-', '', ''),
(53, 'DIDIK AGUS WAHYUDI, ST', 'S1-Sipil', '2016', 'JALAN', 'MUDA', '2024-12-22', 'INTERNAL', '', ''),
(54, 'DIDIK AGUS WAHYUDI, ST', 'S1-Sipil', '2016', 'SUMBER DAYA AIR', 'MADYA', '2028-03-10', 'INTERNAL', '', ''),
(55, 'DIKY AJI SUSANTO. ST', 'S1-Sipil', '2020', 'JALAN', 'MUDA', '2028-03-01', '-', '', ''),
(56, 'DONA WAHYONO, ST', 'S1-Sipil', '2012', 'K3 KONSTRUKSI', 'MADYA', '2023-07-05', '-', '', ''),
(57, 'DONNY HADI FEBRYANTORO, ST', 'S1-Sipil', '2019', 'JALAN', 'MUDA', '2024-12-26', '-', '', ''),
(58, 'DWI KRISTIANTO, ST', 'S1-Sipil', '2018', 'JALAN', 'MUDA', '2023-08-12', 'INTERNAL', '', ''),
(59, 'DYAN EKA NURHAYATI, ST', 'S1-Sipil', '2015', 'K3 KONSTRUKSI', 'MUDA', '2023-08-16', 'INTERNAL', '', ''),
(60, 'DYAN EKA NURHAYATI, ST', 'S1-Sipil', '2015', 'SUMBER DAYA AIR', 'MADYA', '2023-07-01', 'INTERNAL', '', ''),
(61, 'EDY PURNOMO, ST', 'S1-Sipil', '2009', 'MEKANIKAL', 'MADYA', '2027-11-29', 'INTERNAL', '', ''),
(62, 'ENDY SUNARDY A., ST', 'S1-Sipil', '2003', 'K3 KONSTRUKSI', 'MADYA', '2023-11-05', 'LUAR', '', ''),
(63, 'ENGGAR FIOLENTIN, ST', 'S1-Sipil', '2004', 'JALAN', 'MADYA', '2023-02-25', 'INTERNAL', '', ''),
(64, 'ENGGAR FIOLENTIN, ST', 'S1-Sipil', '2004', 'BANGUNAN GEDUNG', 'MUDA', '2028-03-02', 'INTERNAL', '', ''),
(65, 'EVI ARISANTI,  ST', 'S1-Sipil', '2003', 'ELEKTRIKAL', 'MADYA', '2023-09-27', 'INTERNAL', '', ''),
(66, 'FAHRUDIN SAFI, ST', 'S1-Sipil', '2014', 'BANGUNAN GEDUNG', 'MUDA', '2022-08-19', 'LUAR', '', ''),
(67, 'FAHRUDIN SAFI, ST', 'S1-Sipil', '2014', 'JEMBATAN', 'MADYA', '2021-07-12', 'LUAR', '', ''),
(68, 'FARID TRIANDARTO, ST', 'S1-Sipil', '2005', 'LINGKUNGAN', 'MADYA', '2024-11-11', '-', '', ''),
(69, 'FARID TRIANDARTO, ST', 'S1-Sipil', '2005', 'AIR MINUM', 'MADYA', '2024-10-14', '-', '', ''),
(70, 'FARID TRIANDARTO, ST', 'S1-Sipil', '2005', 'SANITASI DAN LIMBAH', 'MADYA', '2024-11-02', '-', '', ''),
(71, 'FATNO AINUR RIZAL, ST', 'S1-Sipil', '2018', 'JALAN', 'MUDA', '2023-07-07', 'INTERNAL', '', ''),
(72, 'FATNO AINUR RIZAL, ST', 'S1-Sipil', '2018', 'MANAJEMEN MUTU', 'MUDA', '2028-03-07', 'INTERNAL', '', ''),
(73, 'FATONI, ST ', 'S1-Sipil', '1994', 'MANAJEMEN KONSTRUKSI', 'MUDA', '2022-03-10', '-', '', ''),
(74, 'FATONI, ST ', 'S1-Sipil', '1994', 'JALAN', 'MUDA', '2022-09-19', '-', '', ''),
(75, 'FEBRI ADITYA, ST ', 'S1-Sipil', '2015', 'JALAN', 'MUDA', '2021-02-06', '-', '', ''),
(76, 'HADI PANDOYO HS, ST ', 'S1-Sipil', '2009', 'JALAN', 'MADYA', '2024-09-09', '-', '', ''),
(77, 'HADZIQ ROBITH AL HISAN, ST', 'S1-Sipil', '2019', 'JALAN', 'MUDA', '2025-01-02', 'INTERNAL', '', ''),
(78, 'HARY SAPUTRO KURNIAWAN, ST ,. MT', 'S2-Sipil', '2018', 'PERENCANAAN WILAYAH', 'MADYA', '2023-04-06', '-', '', ''),
(79, 'HERI SUBOWO, ST', 'S1-Sipil', '1994', 'SUMBER DAYA AIR', 'MADYA', '2027-09-16', '-', '', ''),
(80, 'HUDI WIARTO,ST', 'S1-Arsitek', '2010', 'ARSITEK', 'MADYA', '2023-03-08', '-', '', ''),
(81, 'I MADE RENDI SAPUTRA', 'S1-Sipil', '2011', 'K3 KONSTRUKSI', 'MUDA', '2023-05-30', 'LUAR', '', ''),
(82, 'IDA BAGUS SETIAWAN, ST', 'S1-Sipil', '2011', 'JALAN', 'MADYA', '2023-06-23', '-', '', ''),
(83, 'IDE CAUSAPRIMA PITOYO, ST', 'S1-Sipil', '2007', 'JALAN', 'UTAMA', '2023-12-07', 'INTERNAL', '', ''),
(84, 'IDE CAUSAPRIMA PITOYO, ST', 'S1-Sipil', '2007', 'MANAJEMEN KONSTRUKSI', 'UTAMA', '2028-01-03', 'INTERNAL', '', ''),
(85, 'IDE CAUSAPRIMA PITOYO, ST', 'S1-Sipil', '2007', 'SUMBER DAYA AIR', 'MADYA', '2023-07-23', 'INTERNAL', '', ''),
(86, 'IDE CAUSAPRIMA PITOYO, ST', 'S1-Sipil', '2007', 'K3 KONSTRUKSI', 'MUDA', '2023-08-10', 'INTERNAL', '', ''),
(87, 'INDANA ELSE WININDA, ST', 'S1-Sipil', '2018', 'K3 KONSTRUKSI', 'MUDA', '2023-07-01', 'INTERNAL', '', ''),
(88, 'INDANA ELSE WININDA, ST', 'S1-Sipil', '2018', 'BANGUNAN GEDUNG', 'MUDA', '2027-11-09', 'INTERNAL', '', ''),
(89, 'INDANA ELSE WININDA, ST', 'S1-Sipil', '2018', 'SUMBER DAYA AIR', 'MUDA', '2022-10-10', 'INTERNAL', '', ''),
(90, 'INDRA HERUDIN, ST', 'S1-Arsitek', '2000', 'ARSITEK', 'MADYA', '2024-11-21', 'LUAR', '', ''),
(91, 'INDRA YUSTIANDI, ST ', 'S1-Elektro', '2012', 'ELEKTRIKAL', 'MUDA', '2022-01-09', '-', '', ''),
(92, 'Ir. ABDUL HARIS H.A., MT', 'S2-Sipil', '2008', 'MANAJEMEN KONSTRUKSI', 'UTAMA', '2023-12-07', 'INTERNAL', '', ''),
(93, 'Ir. ABDUL HARIS H.A., MT', 'S2-Sipil', '2008', 'JALAN', 'UTAMA', '2023-12-07', 'INTERNAL', '', ''),
(94, 'Ir. ABDUL HARIS H.A., MT', 'S2-Sipil', '2008', 'BANGUNAN GEDUNG', 'MADYA', '2023-11-30', 'INTERNAL', '', ''),
(95, 'Ir. ABDUL HARIS H.A., MT', 'S2-Sipil', '2008', 'SUMBER DAYA AIR', 'MADYA', '2027-12-07', 'INTERNAL', '', ''),
(96, 'Ir. ABDUL HARIS H.A., MT', 'S2-Sipil', '2008', 'JEMBATAN', 'UTAMA', '2027-11-22', 'INTERNAL', '', ''),
(97, 'Ir. ABDUL HARIS H.A., MT', 'S2-Sipil', '2008', 'GEOTEKNIK', 'MADYA', '2021-07-24', 'INTERNAL', '', ''),
(98, 'Ir. BROTO WAHYONO S., MT, IAI', 'S2-Arsitek', '2000', 'ARSITEK', 'MADYA', '2023-03-17', 'LUAR', '', ''),
(99, 'Ir. BUDI RAHARDJO', 'S1-Sipil', '1986', 'ILUMINASI', 'MADYA', '2023-09-02', 'LUAR', '', ''),
(100, 'Ir. HARGONO', 'S1-Sipil', '1994', 'JEMBATAN', 'MADYA', '2023-08-12', 'LUAR', '', ''),
(101, 'Ir. HERI PRASETIYO', 'S1-Arsitek', '1991', 'ARSITEK', 'MADYA', '2024-12-26', 'LUAR', '', ''),
(102, 'Ir. HERI SISWANTO', 'S1-Sipil', '1993', 'SUMBER DAYA AIR', 'MADYA', '2027-02-25', 'LUAR', '', ''),
(103, 'Ir. IRIANTO ISKANDAR', 'S1-Arsitek', '1993', 'ARSITEK', 'MADYA', '2024-12-21', 'LUAR', '', ''),
(104, 'Ir. KARWITO, SP.', 'S1-Sipil', '1993', 'SUMBER DAYA AIR', 'UTAMA', '2023-11-29', 'INTERNAL', '', ''),
(105, 'Ir. KARWITO, SP.', 'S1-Sipil', '1993', 'MANAJEMEN KONSTRUKSI', 'UTAMA', '2027-06-01', 'INTERNAL', '', ''),
(106, 'Ir. MULYONO, M.T', 'S2-Sipil', '2011', 'JALAN', 'UTAMA', '2024-03-28', 'LUAR', '', ''),
(107, 'Ir. MULYONO, M.T', 'S2-Sipil', '2011', 'MANAJEMEN KONSTRUKSI', 'MUDA', '2022-07-08', 'LUAR', '', ''),
(108, 'Ir. RUDI PRAMONODIYANTO', 'S1-Sipil', '1991', 'SUMBER DAYA AIR', 'MADYA', '2027-12-01', 'INTERNAL', '', ''),
(109, 'Ir. RUDI PRAMONODIYANTO', 'S1-Sipil', '1991', 'BANGUNAN GEDUNG', 'MADYA', '2023-03-04', 'INTERNAL', '', ''),
(110, 'Ir. RUDI PRAMONODIYANTO', 'S1-Sipil', '1991', 'MANAJEMEN KONSTRUKSI', 'MADYA', '2022-12-09', 'INTERNAL', '', ''),
(111, 'Ir. SUDIYANTO PANDJI W.A', 'S1-Sipil', '1991', 'SUMBER DAYA AIR', 'MADYA', '2027-12-01', 'INTERNAL', '', ''),
(112, 'Ir. SUDIYANTO PANDJI W.A', 'S1-Sipil', '1991', 'MANAJEMEN KONSTRUKSI', 'MADYA', '2027-11-01', 'INTERNAL', '', ''),
(113, 'Ir. SUDIYANTO PANDJI W.A', 'S1-Sipil', '1991', 'JALAN', 'UTAMA', '2027-10-20', 'INTERNAL', '', ''),
(114, 'Ir. SUDIYANTO PANDJI W.A', 'S1-Sipil', '1991', 'BANGUNAN GEDUNG', 'MADYA', '2019-07-30', 'INTERNAL', '', ''),
(115, 'ISMALI, ST', 'S1-Sipil', '1999', 'JALAN', 'MADYA', '2023-07-26', '-', '', ''),
(116, 'ITTOK KASIWI FAJAR SURGAWAN, ST', 'S1-Sipil', '2004', 'SUMBER DAYA AIR', 'MADYA', '2022-10-17', '-', '', ''),
(117, 'JAKA PROPIKA, ST, MT', 'S2-Sipil', '2015', 'BANGUNAN GEDUNG', 'UTAMA', '2027-10-28', 'INTERNAL', '', ''),
(118, 'JAKA PROPIKA, ST, MT', 'S2-Sipil', '2015', 'JEMBATAN', 'MADYA', '2024-11-23', 'INTERNAL', '', ''),
(119, 'JAKA PROPIKA, ST, MT', 'S2-Sipil', '2015', 'K3 KONSTRUKSI', 'MADYA', '2028-02-28', 'INTERNAL', '', ''),
(120, 'JUHAN ANDI PRASETO AJI, ST', 'S1-Elektro', '2012', 'TENAGA LISTRIK', 'MADYA', '2024-12-21', '-', '', ''),
(121, 'KASAN, ST', 'S1-Sipil', '1993', 'JALAN', 'MADYA', '2023-01-28', '-', '', ''),
(122, 'KOMARRUDIN, ST', 'S1-Sipil', '2015', 'JALAN', 'MUDA', '2023-07-07', 'INTERNAL', '', ''),
(123, 'KRISHNA VARIAN KHARISSA, ST', 'S1-Sipil', '2013', 'MANAJEMEN KONSTRUKSI', 'MUDA', '2022-03-10', 'INTERNAL', '', ''),
(124, 'KUKUH CAHYONO, ST', 'S1-Sipil', '1999', 'JALAN', 'MADYA', '2024-12-06', '-', '', ''),
(125, 'KURNIA HADI PUTRA, ST, MT', 'S2-Sipil', '2015', 'JALAN', 'MADYA', '2027-10-28', 'INTERNAL', '', ''),
(126, 'KURNIA HADI PUTRA, ST, MT', 'S2-Sipil', '2015', 'K3 KONSTRUKSI', 'MADYA', '2028-03-02', 'INTERNAL', '', ''),
(127, 'KURNIA HADI PUTRA, ST, MT', 'S2-Sipil', '2015', 'KESELAMATAN JALAN', 'MADYA', '2023-09-30', 'INTERNAL', '', ''),
(128, 'KUSWANTO, ST', 'S1-Sipil', '1999', 'K3 KONSTRUKSI', 'MADYA', '2023-05-19', '-', '', ''),
(129, 'LANTHIKA DWI IKHSANTI, ST', 'S1-Sipil', '2019', 'SUMBER DAYA AIR', 'MUDA', '2023-07-19', 'INTERNAL', '', ''),
(130, 'LANTHIKA DWI IKHSANTI, ST', 'S1-Sipil', '2019', 'K3 KONSTRUKSI', 'MUDA', '2023-07-01', 'INTERNAL', '', ''),
(131, 'LARAS LAILA LESTARI, ST, MT', 'S2-Sipil', '2017', 'GEOTEKNIK', 'MADYA', '2024-11-25', 'INTERNAL', '', ''),
(132, 'LULUS PRASETYO, ST', 'S1-Sipil', '2007', 'SUMBER DAYA AIR', 'MADYA', '2022-12-17', '-', '', ''),
(133, 'M. HERI NASTOTOK, ST ', 'S1-Sipil', '2012', 'JALAN', 'MADYA', '2022-12-15', 'INTERNAL', '', ''),
(134, 'M. ISMUNANDAR, ST', 'S1-Sipil', '1996', 'JEMBATAN', 'MADYA', '2021-07-12', 'INTERNAL', '', ''),
(135, 'M. ISMUNANDAR, ST', 'S1-Sipil', '1996', 'JALAN', 'MADYA', '2024-11-23', 'INTERNAL', '', ''),
(136, 'M. NIZAR ADRIANSYAH, ST', 'S1-Sipil', '2019', 'JEMBATAN', 'MUDA', '2024-12-22', '-', '', ''),
(137, 'M. NUR SALIM GONDO W., ST', 'S1-Sipil', '2020', 'JALAN', 'MUDA', '2028-03-01', '-', '', ''),
(138, 'M. RIDLO ILLAH, ST', 'S1-Sipil', '2020', 'JEMBATAN', 'MUDA', '2024-12-22', 'INTERNAL', '', ''),
(139, 'M. RIDLO ILLAH, ST', 'S1-Sipil', '2020', 'JALAN', 'MUDA', '2028-03-07', 'INTERNAL', '', ''),
(140, 'MAHSUN, ST ', 'S1-Sipil', '1995', 'JALAN', 'MADYA', '2024-08-09', 'LUAR', '', ''),
(141, 'MILA KUSUMA WARDANI, ST., M.T', 'S2-Sipil', '2012', 'GEOTEKNIK', 'MADYA', '2024-11-29', 'INTERNAL', '', ''),
(142, 'MILA KUSUMA WARDANI, ST., M.T', 'S2-Sipil', '2012', 'K3 KONSTRUKSI', 'MADYA', '2028-02-25', 'INTERNAL', '', ''),
(143, 'MIMTA ROKHIM, ST ', 'S1-Sipil', '2006', 'JALAN', 'MADYA', '2023-09-10', 'LUAR', '', ''),
(144, 'MISBAKHUDDIN, ST', 'S1-Sipil', '2005', 'LINGKUNGAN', 'MADYA', '2024-11-11', '-', '', ''),
(145, 'MOCHAMAD REZA RIZKY R.P., ST', 'S1-Sipil', '2015', 'K3 KONSTRUKSI', 'MADYA', '2023-08-31', '-', '', ''),
(146, 'MOH. ERIK ARDIANSYAH, ST', 'S1-Sipil', '1998', 'JALAN', 'MADYA', '2021-04-24', '-', '', ''),
(147, 'MOH. ERIK ARDIANSYAH, ST', 'S1-Sipil', '1998', 'MANAJEMEN KONSTRUKSI', 'MADYA', '2024-11-29', '-', '', ''),
(148, 'MOH. SAIFUL SULUN, ST ', 'S1-Sipil', '2013', 'K3 KONSTRUKSI', 'MUDA', '2023-03-17', '-', '', ''),
(149, 'MOHAMAD ABDUL KADIR ', 'S1-Sipil', '2020', 'SUMBER DAYA AIR', 'MADYA', '2023-08-02', '-', '', ''),
(150, 'MOHAMAD ABDUL KADIR, ST', 'S1-Sipil', '1997', 'K3 KONSTRUKSI', 'MADYA', '2023-01-09', '-', '', ''),
(151, 'MOHAMAD ABI NURQOLIS, ST', 'S1-Sipil', '2016', 'K3 KONSTRUKSI', 'MUDA', '2023-09-02', '-', '', ''),
(152, 'MUCHAMAD FARIDZ HIDAYAT', 'S1-Sipil', '2014', 'JALAN', 'MUDA', '2022-01-22', '-', '', ''),
(153, 'MUCHAMMAD MASYKUR, ST', 'S1-Sipil', '1997', 'GEODESI', 'UTAMA', '2023-07-01', 'LUAR', '', ''),
(154, 'MUH. HADI BUDIYANTO, ST ', 'S1-Sipil', '2005', 'K3 KONSTRUKSI', 'MUDA', '2023-07-22', '-', '', ''),
(155, 'MUHAMMAD LUTHFI ANSHORI, ST', 'S1-Sipil', '2019', 'K3 KONSTRUKSI', 'MUDA', '2024-12-23', 'LUAR', '', ''),
(156, 'MUHAMMAD LUTHFI ANSHORI, ST', 'S1-Sipil', '2019', 'JALAN', 'MUDA', '2028-03-07', 'LUAR', '', ''),
(157, 'NUGROHO EKO PRAPTOMO, ST', 'S1-Arsitek', '2011', 'ARSITEK', 'MADYA', '2025-01-06', 'LUAR', '', ''),
(158, 'NUR KHOLIS, ST', 'S1-Sipil', '2013', 'JALAN', 'MUDA', '2023-07-18', 'LUAR', '', ''),
(159, 'NUR ROCHMAN, ST ', 'S1-Sipil', '2000', 'GEODESI', 'MADYA', '2024-11-23', 'LUAR', '', ''),
(160, 'NURDIYANTO, ST., M.T.', 'S2-Sipil', '2015', 'SUMBER DAYA AIR', 'MADYA', '2027-09-01', '-', '', ''),
(161, 'NURFRIDA NASHIRA R, ST ', 'S1-Sipil', '2012', 'SUMBER DAYA AIR', 'MUDA', '2022-01-22', '-', '', ''),
(162, 'NURHIDAYAT, ST ', 'S1-Sipil', '2005', 'SUMBER DAYA AIR', 'MADYA', '2023-12-03', '-', '', ''),
(163, 'OKTAVIANI DINDA R, ST ', 'S1-Sipil', '2020', 'JALAN', 'MUDA', '2024-06-14', '-', '', ''),
(164, 'OKY DEDY WIJAYA, ST ', 'S2-Sipil', '2021', 'JALAN', 'MADYA', '2027-09-02', '-', '', ''),
(165, 'PRASETYA JUNIANTA, ST', 'S1-Sipil', '2000', 'ARSITEK', 'MADYA', '2024-12-21', 'LUAR', '', ''),
(166, 'PRIHADI UTOMO, ST', 'S1-Arsitek', '1996', 'ARSITEK', 'MADYA', '2023-06-16', 'LUAR', '', ''),
(167, 'PUJO SUMARTONO, ST ', 'S1-Sipil', '1989', 'SUMBER DAYA AIR', 'UTAMA', '2023-10-12', 'LUAR', '', ''),
(168, 'PUTRA ANUGRAH, ST', 'S1-Sipil', '2014', 'SUMBER DAYA AIR', 'MADYA', '2027-02-09', 'INTERNAL', '', ''),
(169, 'PUTRA ANUGRAH, ST', 'S1-Sipil', '2014', 'BANGUNAN GEDUNG', 'MADYA', '2023-11-30', 'INTERNAL', '', ''),
(170, 'PUTRA ANUGRAH, ST', 'S1-Sipil', '2014', 'JALAN', 'MADYA', '2024-11-11', 'INTERNAL', '', ''),
(171, 'PUTRA ANUGRAH, ST', 'S1-Sipil', '2014', 'JEMBATAN', 'MADYA', '2022-01-22', 'INTERNAL', '', ''),
(172, 'RACHMAD RUDIANTO, ST', 'S1-Sipil', '1994', 'BANGUNAN GEDUNG', 'MUDA', '2028-02-04', '-', '', ''),
(173, 'RAHADIAN AISYAH VIRGIANA, ST', 'S1-Arsitek', '2000', 'ARSITEK', 'MADYA', '2023-07-07', 'LUAR', '', ''),
(174, 'RAHMAT SUTOMO, ST', 'S1-Sipil', '2017', 'JALAN', 'MUDA', '2023-07-01', 'INTERNAL', '', ''),
(175, 'RAHMAT SUTOMO, ST', 'S1-Sipil', '2017', 'K3 KONSTRUKSI', 'MUDA', '2023-03-30', 'INTERNAL', '', ''),
(176, 'RAHMAT SUTOMO, ST', 'S1-Sipil', '2017', 'SUMBER DAYA AIR', 'MUDA', '2027-11-05', 'INTERNAL', '', ''),
(177, 'RANDY PRASETYA, ST ', 'S1-Sipil', '2016', 'K3 KONSTRUKSI', 'MUDA', '2023-03-30', 'LUAR', '', ''),
(178, 'RANDY PRASETYA, ST ', 'S1-Sipil', '2016', 'JALAN', 'MUDA', '2024-11-28', 'LUAR', '', ''),
(179, 'RANDY PRASETYA, ST ', 'S1-Sipil', '2016', 'BANGUNAN GEDUNG', 'MUDA', '2027-11-01', 'LUAR', '', ''),
(180, 'RANDY PRASETYA, ST ', 'S1-Sipil', '2016', 'SUMBER DAYA AIR', 'MADYA', '2027-11-05', 'LUAR', '', ''),
(181, 'RANDY PRATAMA S, ST., M. ARS', 'S2-Arsitek', '2011', 'MANAJEMEN KONSTRUKSI', 'MADYA', '2023-04-20', 'INTERNAL', '', ''),
(182, 'RANGGA RISNU NP, ST., M.T', 'S2-Sipil', '2016', 'K3 KONSTRUKSI', 'MADYA', '2024-11-11', 'INTERNAL', '', ''),
(183, 'RANGGA RISNU NP, ST., M.T', 'S2-Sipil', '2016', 'JALAN', 'MADYA', '2023-08-26', 'INTERNAL', '', ''),
(184, 'RANGGA RISNU NP, ST., M.T', 'S2-Sipil', '2016', 'MANAJEMEN MUTU', 'MUDA', '2022-04-10', 'INTERNAL', '', ''),
(185, 'RANNY INDAH OKTAVIANTI, ST ', 'S1-Sipil', '2009', 'JALAN', 'MUDA', '2023-04-26', 'LUAR', '', ''),
(186, 'RATNO TIMUR, ST', 'S1-Sipil', '2009', 'JEMBATAN', 'MADYA', '2023-02-05', 'LUAR', '', ''),
(187, 'RATNO TIMUR, ST', 'S1-Sipil', '2009', 'JALAN', 'MADYA', '2023-02-25', 'LUAR', '', ''),
(188, 'RIONDE JENAIRO, ST', 'S1-Sipil', '2013', 'JALAN', 'MUDA', '2025-01-02', 'LUAR', '', ''),
(189, 'RIZAL MUSTOFA, ST ', 'S1-Sipil', '2018', 'JALAN', 'MUDA', '2028-03-01', '-', '', ''),
(190, 'ROMADHON, ST., M.T', 'S2-Sipil', '2016', 'JALAN', 'UTAMA', '2027-03-07', '-', '', ''),
(191, 'ROMADHON, ST., M.T', 'S2-Sipil', '2016', 'JEMBATAN', 'MADYA', '2021-08-01', '-', '', ''),
(192, 'RYAN ARDHI HILMAWAN, ST ', 'S1-Sipil', '2018', 'K3 KONSTRUKSI', 'MUDA', '2024-12-23', '-', '', ''),
(193, 'RYAN ARDHI HILMAWAN, ST ', 'S1-Sipil', '2018', 'JALAN', 'MUDA', '2028-03-08', '-', '', ''),
(194, 'SAIFUDIN DWI INDARTO, ST', 'S1-Sipil', '2016', 'JALAN', 'MUDA', '2025-01-02', '-', '', ''),
(195, 'SAIFUDIN DWI INDARTO, ST', 'S1-Sipil', '2016', 'K3 KONSTRUKSI', 'MADYA', '2027-12-01', '-', '', ''),
(196, 'SAMSUL, ST', 'S1-Sipil', '2018', 'JALAN', 'MUDA', '2023-06-29', '-', '', ''),
(197, 'SETIO SIXMIHARJO, ST., M. ARS', 'S1-Sipil', '2003', 'K3 KONSTRUKSI', 'MUDA', '2025-01-05', '-', '', ''),
(198, 'SIGIT HADI LAKSONO, ST,. M.ARS', 'S2-Arsitek', '2014', 'DESAIN INTERIOR', 'MUDA', '2022-01-14', '-', '', ''),
(199, 'SIGIT HADI LAKSONO, ST,. M.ARS', 'S2-Arsitek', '2014', 'MANAJEMEN MUTU', 'MADYA', '2023-02-12', '-', '', ''),
(200, 'SISWANTO, ST', 'S1-Sipil', '', 'JALAN', 'MUDA', '2028-07-11', '-', '', ''),
(201, 'SRI DUTO WISNU GROHO, S. Ars.', 'S1-Arsitek', '2020', 'ARSITEK', 'MUDA', '2023-08-11', '-', '', ''),
(202, 'SRI RAHAYU, ST ', 'S1-Sipil', '2006', 'AIR MINUM', 'MADYA', '2023-02-04', '-', '', ''),
(203, 'SRI RAHAYU, ST ', 'S1-Sipil', '2006', 'LINGKUNGAN', 'MADYA', '2023-04-19', '-', '', ''),
(204, 'SUDJATMIKO, ST', 'S1-Sipil', '1999', 'JEMBATAN', 'MADYA', '2022-11-06', '-', '', ''),
(205, 'SUDRAJAT TEGUH PRADANA, ST', 'S1-Sipil', '2019', 'JALAN', 'MUDA', '2024-12-01', '-', '', ''),
(206, 'SURYA WISENA, ST., M.MT', 'S2-Sipil', '2015', 'MANAJEMEN KONSTRUKSI', 'UTAMA', '2024-09-06', '-', '', ''),
(207, 'SURYA WISENA, ST., M.MT', 'S2-Sipil', '2015', 'BANGUNAN GEDUNG', 'MADYA', '2023-11-30', '-', '', ''),
(208, 'SURYA WISENA, ST., M.MT', 'S2-Sipil', '2015', 'GEOTEKNIK', 'MADYA', '2021-11-21', '-', '', ''),
(209, 'SURYA WISENA, ST., M.MT', 'S2-Sipil', '2015', 'JALAN', 'MADYA', '2023-09-27', '-', '', ''),
(210, 'SUTIKNO, ST ', 'S1-Mesin', '2009', 'MEKANIKAL', 'MADYA', '2022-03-21', '-', '', ''),
(211, 'SUWARSONO', 'S1-Sipil', '1999', 'K3 KONSTRUKSI', 'MUDA', '2024-07-12', '-', '', ''),
(212, 'TAUFIK HIDAYAT, ST ., MT', 'S2-Sipil', '2020', 'SUMBER DAYA AIR', 'MADYA', '2024-12-01', '-', '', ''),
(213, 'TONI SUSANTO, ST ', 'S1-Sipil', '2012', 'JALAN', 'MADYA', '2023-07-01', '-', '', ''),
(214, 'TONI SUSANTO, ST ', 'S1-Sipil', '2012', 'MANAJEMEN MUTU', 'MUDA', '2028-03-08', '-', '', ''),
(215, 'WAHYU HIDAYAT, ST ', 'S1-Sipil', '2000', 'JALAN', 'MADYA', '2021-01-23', '-', '', ''),
(216, 'WAHYU PRIYATNO, ST', 'S1-Sipil', '1992', 'K3 KONSTRUKSI', 'MADYA', '2023-07-28', '-', '', ''),
(217, 'WAHYUDI, ST', 'S1-Sipil', '1992', 'JALAN', 'MADYA', '2024-10-25', '-', '', ''),
(218, 'WAHYUDI, ST', 'S1-Arsitek', '2014', 'ARSITEK', 'MADYA', '2024-12-21', '-', '', ''),
(219, 'WARDOMO, ST ', 'S1-Sipil', '2006', 'BANGUNAN GEDUNG', 'UTAMA', '2023-04-21', '-', '', ''),
(220, 'WARJI, ST', 'S1-Sipil', '1999', 'JEMBATAN', 'MADYA', '2023-08-12', '-', '', ''),
(221, 'WASPODO, ST ., MT', 'S2-Mesin', '2007', 'MEKANIKAL', 'MADYA', '2022-09-12', '-', '', ''),
(222, 'WASPODO, ST ., MT', 'S2-Mesin', '2007', 'MANAJEMEN PROYEK', 'MADYA', '2023-04-29', '-', '', ''),
(223, 'WIDHI SASONGKO ', 'S1-Arsitek', '1999', 'ARSITEK', 'MADYA', '2023-08-27', '-', '', ''),
(224, 'WISNU FEBRIANTORO, ST ', 'S1-Sipil', '2015', 'JEMBATAN', 'MUDA', '2022-08-01', '-', '', ''),
(225, 'YAM YAM SUMA NUGRAHA, ST ', 'S1-Sipil', '2012', 'K3 KONSTRUKSI', 'MADYA', '2024-11-11', '-', '', ''),
(226, 'YANOE KUSNARHADI, ST', 'S1-Sipil', '1993', 'K3 KONSTRUKSI', 'MADYA', '2023-12-09', '-', '', ''),
(227, 'YANTI PUJI RAHAYU, ST ', 'S1-Sipil', '2019', 'BANGUNAN GEDUNG', 'MUDA', '2023-07-23', '-', '', ''),
(228, 'YANTI PUJI RAHAYU, ST ', 'S1-Sipil', '2019', 'K3 KONSTRUKSI', 'MUDA', '2023-07-01', '-', '', ''),
(229, 'YOSI KURNIAWAN, ST ', 'S1-Sipil', '2019', 'SUMBER DAYA AIR', 'MUDA', '2027-11-01', '-', '', ''),
(230, 'YOSI KURNIAWAN, ST ', 'S1-Sipil', '2019', 'JALAN', 'MUDA', '2023-07-07', '-', '', ''),
(231, 'YOVI WISASTRA, ST', 'S1-Sipil', '', 'JALAN', 'MUDA', '2025-07-11', '-', '', ''),
(232, 'YUDHY BAGUS PRANATA, ST ', 'S1-Sipil', '2015', 'JALAN', 'MADYA', '2024-11-29', '-', '', ''),
(233, 'YUDO WAHYU WIDODO, ST', 'S1-Sipil', '2013', 'SUMBER DAYA AIR', 'MADYA', '2023-01-07', '-', '', ''),
(234, 'YUSUF MURTI SWANDANA, ST', 'S1-Sipil', '2018', 'JALAN', 'MUDA', '2023-02-09', '-', '', ''),
(235, 'ZUBAIDI, ST', 'S1-Sipil', '2002', 'SUMBER DAYA AIR', 'MADYA', '2023-10-14', '-', '', ''),
(236, 'ZUBAIDI, ST', 'S1-Sipil', '2002', 'K3 KONSTRUKSI', 'MUDA', '2023-11-04', '-', '', ''),
(237, 'AGUS NUR ROCHMAD, ST', 'S1-Arsitek', '1998', 'ARSITEK', 'MADYA', '2024-10-25', '-', '', ''),
(238, 'Ir. SUBAGIO', 'S1-Arsitek', '1986', 'ARSITEK', 'MADYA', '2023-10-27', '-', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`username`);

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
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
