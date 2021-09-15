-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Sep 2021 pada 08.42
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r_pekerjaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_alumni`
--

CREATE TABLE `galeri_alumni` (
  `id_galeri` varchar(10) NOT NULL,
  `gambar` varchar(20) NOT NULL,
  `tgl_upload` date NOT NULL DEFAULT current_timestamp(),
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_pekerjaan`
--

CREATE TABLE `riwayat_pekerjaan` (
  `id_rpekerjaan` varchar(10) NOT NULL,
  `nama_instansi` varchar(100) NOT NULL,
  `bidang_usaha` varchar(20) NOT NULL,
  `tahun_masuk` date NOT NULL DEFAULT current_timestamp(),
  `alamat` varchar(100) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_pelatihan`
--

CREATE TABLE `riwayat_pelatihan` (
  `id_rpelatihan` varchar(10) NOT NULL,
  `jenis_pelatihan` varchar(20) NOT NULL,
  `sertifikat` varchar(50) NOT NULL,
  `tgl_pelatihan` date NOT NULL DEFAULT current_timestamp(),
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- --------------------------------------------------------

--
-- Table structure for table `portofoliio_alumni`
--

CREATE TABLE `portofoliio_alumni` (
  `id_portofolio_alumni` varchar(10) NOT NULL,
  `gambar` varchar(20) NOT NULL,
  `client` varchar(20) NOT NULL,
  `deskripsi_karya` varchar(100) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `nama` varchar(20) NOT NULL,
  `nis` varchar(12) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `nomor_hp` int(14) NOT NULL,
  `pekerjaan` varchar(12) NOT NULL,
  `id_nis` varchar(12) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_kuliah`
--

CREATE TABLE `riwayat_kuliah` (
  `id_riwayat_kuliah` varchar(10) NOT NULL,
  `nis` varchar(12) NOT NULL,
  `kampus` varchar(100) NOT NULL,
  `tahun_masuk` date NOT NULL DEFAULT current_timestamp(),
  `tahun_lulus` date NOT NULL DEFAULT current_timestamp(),
  `jenjang` enum('Diploma','S1','S2','S3','Gelar Akademik Baru','Bachelor','Master','Doctor') NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_wirausaha`
--

CREATE TABLE `riwayat_wirausaha` (
  `id_riwayat_wirausaha` varchar(10) NOT NULL,
  `nama_usaha` varchar(50) NOT NULL,
  `tahun_didirikan` date NOT NULL DEFAULT current_timestamp(),
  `deskripsi_usaha` varchar(100) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `skill` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nis` varchar(12) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `recovery_pass` varchar(200) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
