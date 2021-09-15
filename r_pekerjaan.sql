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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
