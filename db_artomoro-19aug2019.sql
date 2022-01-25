-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 18 Agu 2019 pada 20.49
-- Versi server: 5.6.43
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_artomoro`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'SHOWROOM', 'SHOWROOM', '2019-07-23 10:26:51'),
(9, 'BAN BARU', 'BAN BARU', '2019-07-23 15:21:43'),
(10, 'BAN BEKAS', 'BAN BEKAS', '2019-07-23 15:22:04'),
(11, 'READY', 'READY', '2019-07-23 15:25:26'),
(12, 'JASA AMG', 'JASA AMG', '2019-07-23 15:27:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('om54hnau70epef2jj1kkr82elamdjtpv', '192.168.1.124', 1565920958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353932303935383b),
('dd5c2r57s2hq9pksqnc7a6lss7jvb8fs', '::1', 1565920975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353932303937313b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353635383530303131223b),
('03kj6oak4hq965d00mgf5i12jgs4lb47', '::1', 1565923273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536353932333137343b6964656e746974797c733a353a2261646d696e223b757365726e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353635383530303131223b);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip` int(7) DEFAULT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `address`, `city`, `province`, `country`, `zip`, `users_id`) VALUES
(1, 'BPK. MIKE', 'customer@email.com', '62812346789', 'Manado', 'Manado', '', 'PERORANGAN', 111111, 0),
(2, 'BPK. ASEN', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(3, 'BPK. H. RUKUN', 'customer@email.com', '62812346789', 'Pasuruan', 'Pasuruan', '', 'PERORANGAN', 111111, 0),
(4, 'BPK. H. SULTON', 'customer@email.com', '62812346789', 'Mojosari', 'Mojosari', '', 'PERORANGAN', 111111, 0),
(5, 'BPK. HAMSAH', 'customer@email.com', '62812346789', 'Pasuruan', 'Pasuruan', '', 'PERORANGAN', 111111, 0),
(6, 'BPK. H. SARPAN', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(7, 'BPK. DARMANTO', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(8, 'BPK. H. RIYONO', 'customer@email.com', '62812346789', 'Pasuruan', 'Pasuruan', '', 'PERORANGAN', 111111, 0),
(9, 'BPK. H. JAINURI', 'customer@email.com', '62812346789', 'Pasuruan', 'Pasuruan', '', 'PERORANGAN', 111111, 0),
(10, 'BPK. EDI', 'customer@email.com', '62812346789', 'Kalimantan', 'Kalimantan', '', 'PERORANGAN', 111111, 0),
(11, 'KO SING', 'customer@email.com', '62812346789', 'Sidoarjo', 'Sidoarjo', '', 'PERORANGAN', 111111, 0),
(12, 'BP. BINTORO', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(13, 'BPK. BUDI', 'customer@email.com', '62812346789', 'Jakarta', 'Jakarta', '', 'PERORANGAN', 111111, 0),
(14, 'INTISARI', 'customer@email.com', '62812346789', 'Sidoarjo', 'Sidoarjo', '', 'PERORANGAN', 111111, 0),
(15, 'BPK. VIKTOR', 'customer@email.com', '62812346789', 'Sidoarjo', 'Sidoarjo', '', 'PERORANGAN', 111111, 0),
(16, 'BP. ROFIQ', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(17, 'BP. ISMAIL', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(18, 'BPK. DIDIK TAMBAL BAN', 'customer@email.com', '62812346789', 'Mojosari', 'Mojosari', '', 'PERORANGAN', 111111, 0),
(19, 'SAN MOTOR', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(20, 'BPK. HARIANTO', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(21, 'BPK. ROHMAN', 'customer@email.com', '62812346789', 'Jombang', 'Jombang', '', 'PERORANGAN', 111111, 0),
(22, 'SUMBER REJEKI', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(23, 'BPK. AGUS', 'customer@email.com', '62812346789', 'Sidoarjo', 'Sidoarjo', '', 'PERORANGAN', 111111, 0),
(24, 'BPK. WIYANTO', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERORANGAN', 111111, 0),
(25, 'BPK. TOHIR', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERORANGAN', 111111, 0),
(26, 'IBU TINA', 'customer@email.com', '62812346789', 'Pangkal Bun', 'Pangkal Bun', '', 'PERORANGAN', 111111, 0),
(27, 'BPK. TAKDIR', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(28, 'BPK. BODEK', 'customer@email.com', '62812346789', 'Malang', 'Malang', '', 'PERORANGAN', 111111, 0),
(29, 'BPK. H. MOL', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(30, 'BPK. H. KHOLIK ', 'customer@email.com', '62812346789', 'Tulungagung', 'Tulungagung', '', 'PERORANGAN', 111111, 0),
(31, 'BPK. JAMIL', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERORANGAN', 111111, 0),
(32, 'BPK. ERWIN', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERORANGAN', 111111, 0),
(33, 'BPK. DANIEL', 'customer@email.com', '62812346789', 'Surabyaa', 'Surabyaa', '', 'PERORANGAN', 111111, 0),
(34, 'BPK. SULTON', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERORANGAN', 111111, 0),
(35, 'IBU IKE', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(36, 'IBU SANTI', 'customer@email.com', '62812346789', 'Sidoarjo', 'Sidoarjo', '', 'PERORANGAN', 111111, 0),
(37, 'BPK. AMAR HADI', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(38, 'BPK. SUDIP', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(39, 'BPK, AMIR', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(40, 'BPK. TONI', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(41, 'BPK. JOKO', 'customer@email.com', '62812346789', 'Banjar', 'Banjar', '', 'PERORANGAN', 111111, 0),
(42, 'BPK. RONI', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(43, 'BPK. MARDI', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(44, 'BPK. FAISOL', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(45, 'BPK. CHOIRUL ANAM', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(46, 'BPK. BUDI', 'customer@email.com', '62812346789', 'Sidoarjo', 'Sidoarjo', '', 'PERORANGAN', 111111, 0),
(47, 'BPK. JATMIKO', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(48, 'BPK. TAWI', 'customer@email.com', '62812346789', 'Jombang', 'Jombang', '', 'PERORANGAN', 111111, 0),
(49, 'BPK. WAHYUDI', 'customer@email.com', '62812346789', 'Sidoarjo', 'Sidoarjo', '', 'PERORANGAN', 111111, 0),
(50, 'BPK. KRIS', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(51, 'BPK. YANTO BERLIAN', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(52, 'BPK. BERTY', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(53, 'BPK. TOLE', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(54, 'U TRANS', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(55, 'SURYA USAHA', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(56, 'BPK. JUPRI', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(57, 'BPK. RIPIN', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(58, 'BPK. NANANG', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(59, 'BPK. SAMIRAN', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(60, 'TMS', 'customer@email.com', '62812346789', '', '', '', 'PERORANGAN', 111111, 0),
(61, 'PT. INDORETREADING', 'customer@email.com', '62812346789', 'Jakarta', 'Jakarta', '', 'PERUSAHAAN', 111111, 0),
(62, 'PT. CAHAYA MANDIRI', 'customer@email.com', '62812346789', 'Jakarta', 'Jakarta', '', 'PERUSAHAAN', 111111, 0),
(63, 'PT. ARTA ABADI', 'customer@email.com', '62812346789', 'Jakarta', 'Jakarta', '', 'PERUSAHAAN', 111111, 0),
(64, 'PT. SAE', 'customer@email.com', '62812346789', 'Semarang', 'Semarang', '', 'PERUSAHAAN', 111111, 0),
(65, 'PT. DUTA MERAK RAYA', 'customer@email.com', '62812346789', 'Pasuruan', 'Pasuruan', '', 'PERUSAHAAN', 111111, 0),
(66, 'CV. VULKANINDO', 'customer@email.com', '62812346789', 'Sidoarjo', 'Sidoarjo', '', 'PERUSAHAAN', 111111, 0),
(67, 'PT. ARMADA MIX', 'customer@email.com', '62812346789', 'Sidoarjo', 'Sidoarjo', '', 'PERUSAHAAN', 111111, 0),
(68, 'CV. DARAT', 'customer@email.com', '62812346789', 'Semarang', 'Semarang', '', 'PERUSAHAAN', 111111, 0),
(69, 'PT. KHARISMA JAYA', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERUSAHAAN', 111111, 0),
(70, 'PT. TENTREM', 'customer@email.com', '62812346789', '', '', '', 'PERUSAHAAN', 111111, 0),
(71, 'PT. MKSB', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERUSAHAAN', 111111, 0),
(72, 'PT. SOERYA PAMENANG', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERUSAHAAN', 111111, 0),
(73, 'PT. LUSI', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERUSAHAAN', 111111, 0),
(74, 'PT. SUMBER URIP SEJATI', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERUSAHAAN', 111111, 0),
(75, 'TOKO MAKMUR', 'customer@email.com', '62812346789', 'Jakarta', 'Jakarta', '', 'PERUSAHAAN', 111111, 0),
(76, 'DWI KARYA MANDIRI', 'customer@email.com', '62812346789', 'Sidoarjo', 'Sidoarjo', '', 'PERUSAHAAN', 111111, 0),
(77, 'PT. MITRA ABADI SENTOSA', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERUSAHAAN', 111111, 0),
(78, 'PT. KUSUMA TERPADU', 'customer@email.com', '62812346789', 'Surabaya', 'Surabaya', '', 'PERUSAHAAN', 111111, 0),
(79, 'DELI JAYA PRATAMA', 'customer@email.com', '62812346789', '', '', '', 'PERUSAHAAN', 111111, 0),
(80, 'TIGER', 'customer@email.com', '62812346789', '', '', '', 'PERUSAHAAN', 111111, 0),
(81, 'PT. KARTIKA', 'customer@email.com', '62812346789', 'Malang', 'Malang', '', 'PERUSAHAAN', 111111, 0),
(82, 'PT. M3', 'customer@email.com', '62812346789', '', '', '', 'PERUSAHAAN', 111111, 0),
(83, 'PT. ESKA', 'customer@email.com', '62812346789', '', '', '', 'PERUSAHAAN', 111111, 0),
(84, 'PT. BRN', 'customer@email.com', '62812346789', '', '', '', 'PERUSAHAAN', 111111, 0),
(85, 'CV CITRA BUANA MANDIRI', 'customer@email.com', '62812346789', '', '', '', 'PERUSAHAAN', 111111, 0),
(86, 'SIDO DADI', 'customer@email.com', '62812346789', '', '', '', 'PERUSAHAAN', 111111, 0),
(87, 'CV. SUMBER NIKMAT', 'customer@email.com', '62812346789', '', '', '', 'PERUSAHAAN', 111111, 0),
(88, 'SN CARGO', 'customer@email.com', '62812346789', 'Sidoarjo', 'Sidoarjo', '', 'PERUSAHAAN', 111111, 0),
(89, 'PT AL JAYA', 'customer@email.com', '62812346789', 'Jakarta', 'Jakarta', '', 'PERUSAHAAN', 111111, 0),
(90, 'PT IR (INDORETREADING) JAKARTA', 'EMAIL@GMAIL.COM', '08176001855', 'KOMPLEK HYUNDAI MULTIGUNA II \r\nJL. TANJUNG NO.11 &amp; 12\r\nNO TELP  082124347701 (VINCENT)', 'CIKARANG', 'BEKASI', 'TANJUNG', 17550, 0),
(92, 'Bpk. Jatmiko', '', '081217022930', '', '', '', 'Perorangan', 0, 0),
(93, 'BPK JEREMI', '', '', 'SIDOARJO', '', '', '', 0, 0),
(94, 'TIRTO/JEMBEL', '', '', '', '', '', '', 0, 0),
(95, 'PT MJS', '', '', '', '', '', '', 0, 0),
(96, 'H DORIK', '', '', 'SURABAYA', '', '', 'PERORANGAN', 0, 0),
(97, 'BPK. GUNAWAN (BINTER)', '', '081390108000', 'SURABAYA', '', '', 'PERORANGAN', 0, 0),
(98, 'BPK YADI (SJR)', '', '', 'TUBAN', '', '', 'PERORANGAN', 0, 0),
(99, 'PT ULIN PUTRA VIA RONI', '', '', '', '', '', 'PERUSAHAAN', 0, 0),
(100, 'BPK H DORIK', '', '', 'SURABAYA\r\n', '', '', 'PERORANGAN', 0, 0),
(101, 'BPK. H YANTO', '', '', 'PANDAAN', '', '', 'PERORANGAN', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'purchase', 'purchase group'),
(4, 'sale', 'sale group');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_name`) VALUES
(1, 'CASH'),
(2, 'TRANSFER'),
(3, 'GIRO'),
(4, 'KARTU KREDIT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `sku` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `retail_price` bigint(20) NOT NULL,
  `wholesale_price` bigint(20) NOT NULL,
  `buy_price` bigint(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `sku`, `name`, `brand`, `description`, `retail_price`, `wholesale_price`, `buy_price`, `stock`, `active`, `img`, `created_at`, `category_id`, `supplier_id`) VALUES
(1, 'SHW KBG HLS BS /SET', 'SHOWROOM KEMBANG HLS BS /SET', 'BS /SET', 'SHOWROOM KEMBANG HLS BS /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(2, 'SHW KBG HLS GT /SET', 'SHOWROOM KEMBANG HLS GT /SET', 'GT /SET', 'SHOWROOM KEMBANG HLS GT /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(3, 'SHW KBG HLS GY-HD /SET', 'SHOWROOM KEMBANG HLS GY-HD /SET', 'GY-HD /SET', 'SHOWROOM KEMBANG HLS GY-HD /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(4, 'SHW KBG HLS APOLO (KB;HLS) GT /SET', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) GT /SET', 'APOLO (KB;HLS) GT /SET', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) GT /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(5, 'SHW KBG HLS APOLO (KB;HLS) GY-HD /SET', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) GY-HD /SET', 'APOLO (KB;HLS) GY-HD /SET', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) GY-HD /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(6, 'SHW KBG HLS APOLO (KB;HLS) BS /SET', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) BS /SET', 'APOLO (KB;HLS) BS /SET', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) BS /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(7, 'SHW KBG HLS APOLO (KB;HLS) GT /KOSONGAN', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) GT /KOSONGAN', 'APOLO (KB;HLS) GT /KOSONGAN', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) GT /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(8, 'SHW KBG HLS APOLO (KB;HLS) GY-HD /KSNGAN', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) GY-HD /KOSONGAN', 'APOLO (KB;HLS) GY-HD /KOSONGAN', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) GY-HD /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(9, 'SHW KBG HLS APOLO (KB;HLS) BS /KOSONGAN', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) BS /KOSONGAN', 'APOLO (KB;HLS) BS /KOSONGAN', 'SHOWROOM KEMBANG HLS APOLO (KB;HLS) BS /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(10, 'SHW KBG HLS JK TAYER (KB;HLS) /SET', 'SHOWROOM KEMBANG HLS JK TAYER (KB;HLS) /SET', 'JK TAYER (KB;HLS) /SET', 'SHOWROOM KEMBANG HLS JK TAYER (KB;HLS) /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(11, 'SHW KBG HLS JK TAYER (KB;HLS) /KOSONGAN', 'SHOWROOM KEMBANG HLS JK TAYER (KB;HLS) /KOSONGAN', 'JK TAYER (KB;HLS) /KOSONGAN', 'SHOWROOM KEMBANG HLS JK TAYER (KB;HLS) /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(12, 'SHW KBG HLS NEW / SEREP BS- KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP BS- KOSONGAN', 'NEW / SEREP BS- KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP BS- KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(13, 'SHW KBG HLS NEW / SEREP GT- KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP GT- KOSONGAN', 'NEW / SEREP GT- KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP GT- KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(14, 'SHW KBG HLS NEW / SEREP GY-HD ;KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP GY-HD ;KOSONGAN', 'NEW / SEREP GY-HD ;KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP GY-HD ;KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(18, 'SHW KBG HLS BS /KOSONGAN', 'SHOWROOM KEMBANG HLS BS /KOSONGAN', 'BS /KOSONGAN', 'SHOWROOM KEMBANG HLS BS /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(19, 'SHW KBG HLS GY-HD /KOSONGAN', 'SHOWROOM KEMBANG HLS GY-HD /KOSONGAN', 'GY-HD /KOSONGAN', 'SHOWROOM KEMBANG HLS GY-HD /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(20, 'SHW KBG HLS NEW / SEREP BS- KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP BS- KOSONGAN', 'NEW / SEREP BS- KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP BS- KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(21, 'SHW KBG HLS NEW / SEREP GT- KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP GT- KOSONGAN', 'NEW / SEREP GT- KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP GT- KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(22, 'SHW KBG HLS NEW / SEREP GY-HD ;KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP GY-HD ;KOSONGAN', 'NEW / SEREP GY-HD ;KOSONGAN', 'SHOWROOM KEMBANG HLS NEW / SEREP GY-HD ;KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(23, 'SHW SEMI HLS BS /SET', 'SHOWROOM SEMI HLS BS /SET', 'BS /SET', 'SHOWROOM SEMI HLS BS /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(24, 'SHW SEMI HLS GT /SET', 'SHOWROOM SEMI HLS GT /SET', 'GT /SET', 'SHOWROOM SEMI HLS GT /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(25, 'SHW SEMI HLS GY-HD /SET', 'SHOWROOM SEMI HLS GY-HD /SET', 'GY-HD /SET', 'SHOWROOM SEMI HLS GY-HD /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(26, 'SHW SEMI HLS BS /KOSONGAN', 'SHOWROOM SEMI HLS BS /KOSONGAN', 'BS /KOSONGAN', 'SHOWROOM SEMI HLS BS /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(27, 'SHW SEMI HLS GY-HD /KOSONGAN', 'SHOWROOM SEMI HLS GY-HD /KOSONGAN', 'GY-HD /KOSONGAN', 'SHOWROOM SEMI HLS GY-HD /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(28, 'SHW SEMI HLS NEW / SEREP BS- KOSONGAN', 'SHOWROOM SEMI HLS NEW / SEREP BS- KOSONGAN', 'NEW / SEREP BS- KOSONGAN', 'SHOWROOM SEMI HLS NEW / SEREP BS- KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(29, 'SHW SEMI HLS NEW / SEREP GT- KOSONGAN', 'SHOWROOM SEMI HLS NEW / SEREP GT- KOSONGAN', 'NEW / SEREP GT- KOSONGAN', 'SHOWROOM SEMI HLS NEW / SEREP GT- KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(30, 'SHW SEMI HLS NEW / SEREP GY-HD ;KOSONGAN', 'SHOWROOM SEMI HLS NEW / SEREP GY-HD ;KOSONGAN', 'NEW / SEREP GY-HD ;KOSONGAN', 'SHOWROOM SEMI HLS NEW / SEREP GY-HD ;KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(31, 'SHW KASAR BS /SET', 'SHOWROOM KASAR BS /SET', 'BS /SET', 'SHOWROOM KASAR BS /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(32, 'SHW KASAR GT /SET', 'SHOWROOM KASAR GT /SET', 'GT /SET', 'SHOWROOM KASAR GT /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(33, 'SHW KASAR GY-HD /SET', 'SHOWROOM KASAR GY-HD /SET', 'GY-HD /SET', 'SHOWROOM KASAR GY-HD /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(34, 'SHW KASAR APOLO (KB;KSR) GT /SET ', 'SHOWROOM KASAR APOLO (KB;KSR) GT /SET ', 'APOLO (KB;KSR) GT /SET ', 'SHOWROOM KASAR APOLO (KB;KSR) GT /SET ', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(35, 'SHW KASAR APOLO (KB;KSR) GY-HD /SET ', 'SHOWROOM KASAR APOLO (KB;KSR) GY-HD /SET ', 'APOLO (KB;KSR) GY-HD /SET ', 'SHOWROOM KASAR APOLO (KB;KSR) GY-HD /SET ', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(36, 'SHW KASAR APOLO (KB;KSR) BS /SET', 'SHOWROOM KASAR APOLO (KB;KSR) BS /SET', 'APOLO (KB;KSR) BS /SET', 'SHOWROOM KASAR APOLO (KB;KSR) BS /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(37, 'SHW KASAR APOLO (KB;KSR) GT /KOSONGAN ', 'SHOWROOM KASAR APOLO (KB;KSR) GT /KOSONGAN ', 'APOLO (KB;KSR) GT /KOSONGAN ', 'SHOWROOM KASAR APOLO (KB;KSR) GT /KOSONGAN ', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(38, 'SHW KASAR APOLO (KB;KSR) GY-HD /KOSONGAN', 'SHOWROOM KASAR APOLO (KB;KSR) GY-HD /KOSONGAN', 'APOLO (KB;KSR) GY-HD /KOSONGAN', 'SHOWROOM KASAR APOLO (KB;KSR) GY-HD /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(39, 'SHW KASAR APOLO (KB;KSR) BS /KOSONGAN', 'SHOWROOM KASAR APOLO (KB;KSR) BS /KOSONGAN', 'APOLO (KB;KSR) BS /KOSONGAN', 'SHOWROOM KASAR APOLO (KB;KSR) BS /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(40, 'SHW KASAR JK TAYER (KB;KSR) /SET', 'SHOWROOM KASAR JK TAYER (KB;KSR) /SET', 'JK TAYER (KB;KSR) /SET', 'SHOWROOM KASAR JK TAYER (KB;KSR) /SET', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(41, 'SHW KASAR JK TAYER (KB;KSR) /KOSONGAN ', 'SHOWROOM KASAR JK TAYER (KB;KSR) /KOSONGAN ', 'JK TAYER (KB;KSR) /KOSONGAN ', 'SHOWROOM KASAR JK TAYER (KB;KSR) /KOSONGAN ', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(46, 'SHW KASAR BS /KOSONGAN', 'SHOWROOM KASAR BS /KOSONGAN', 'BS /KOSONGAN', 'SHOWROOM KASAR BS /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(47, 'SHW KASAR GY-HD /KOSONGAN', 'SHOWROOM KASAR GY-HD /KOSONGAN', 'GY-HD /KOSONGAN', 'SHOWROOM KASAR GY-HD /KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(48, 'SHW KASAR NEW / SEREP BS- KOSONGAN', 'SHOWROOM KASAR NEW / SEREP BS- KOSONGAN', 'NEW / SEREP BS- KOSONGAN', 'SHOWROOM KASAR NEW / SEREP BS- KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(49, 'SHW KASAR NEW / SEREP GT- KOSONGAN', 'SHOWROOM KASAR NEW / SEREP GT- KOSONGAN', 'NEW / SEREP GT- KOSONGAN', 'SHOWROOM KASAR NEW / SEREP GT- KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(50, 'SHW KASAR NEW / SEREP GY-HD ;KOSONGAN', 'SHOWROOM KASAR NEW / SEREP GY-HD ;KOSONGAN', 'NEW / SEREP GY-HD ;KOSONGAN', 'SHOWROOM KASAR NEW / SEREP GY-HD ;KOSONGAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 1, 20),
(51, 'BAN BARU BENANG MAXIS', 'BAN BARU BENANG MAXIS', 'MAXIS', 'BAN BARU BENANG MAXIS', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(52, 'BAN BARU BENANG TIRON', 'BAN BARU BENANG TIRON', 'TIRON', 'BAN BARU BENANG TIRON', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(53, 'BAN BARU BENANG BS', 'BAN BARU BENANG BS', 'BS', 'BAN BARU BENANG BS', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(54, 'BAN BARU BENANG GT', 'BAN BARU BENANG GT', 'GT', 'BAN BARU BENANG GT', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(55, 'BAN BARU BENANG SWALLOW', 'BAN BARU BENANG SWALLOW', 'SWALLOW', 'BAN BARU BENANG SWALLOW', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(56, 'BAN BARU BENANG KUNLUN', 'BAN BARU BENANG KUNLUN', 'KUNLUN', 'BAN BARU BENANG KUNLUN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(57, 'BAN BARU BENANG GY-HD', 'BAN BARU BENANG GY-HD', 'GY-HD', 'BAN BARU BENANG GY-HD', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(58, 'BAN BARU BENANG CHEAT', 'BAN BARU BENANG CHEAT', 'CHEAT', 'BAN BARU BENANG CHEAT', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(59, 'BAN BARU KAWAT/RADIAL  MAXIS', 'BAN BARU KAWAT/RADIAL  MAXIS', 'MAXIS', 'BAN BARU KAWAT/RADIAL  MAXIS', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(60, 'BAN BARU KAWAT/RADIAL  YARTU', 'BAN BARU KAWAT/RADIAL  YARTU', 'YARTU', 'BAN BARU KAWAT/RADIAL  YARTU', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(61, 'BAN BARU KAWAT/RADIAL  BLACK LION', 'BAN BARU KAWAT/RADIAL  BLACK LION', 'BLACK LION', 'BAN BARU KAWAT/RADIAL  BLACK LION', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(62, 'BAN BARU KAWAT/RADIAL  ACENDO', 'BAN BARU KAWAT/RADIAL  ACENDO', 'ACENDO', 'BAN BARU KAWAT/RADIAL  ACENDO', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(63, 'BAN BARU KAWAT/RADIAL  GO TREAT', 'BAN BARU KAWAT/RADIAL  GO TREAT', 'GO TREAT', 'BAN BARU KAWAT/RADIAL  GO TREAT', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(64, 'BAN BARU KAWAT/RADIAL  TBB', 'BAN BARU KAWAT/RADIAL  TBB', 'TBB', 'BAN BARU KAWAT/RADIAL  TBB', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(65, 'BAN BARU KD/PERSENAN  ', 'BAN BARU KD/PERSENAN  ', 'VARIATIF', 'BAN BARU KD/PERSENAN  ', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(66, 'BAN BARU DALEM  GRANDPIX', 'BAN BARU DALEM  GRANDPIX', 'GRANDPIX', 'BAN BARU DALEM  GRANDPIX', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(67, 'BAN BARU DALEM  BINTER', 'BAN BARU DALEM  BINTER', 'BINTER', 'BAN BARU DALEM  BINTER', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(68, 'BAN BARU MARSET  GRANDPIX', 'BAN BARU MARSET  GRANDPIX', 'GRANDPIX', 'BAN BARU MARSET  GRANDPIX', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(69, 'BAN BARU MARSET  BINTER', 'BAN BARU MARSET  BINTER', 'BINTER', 'BAN BARU MARSET  BINTER', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 9, 20),
(70, 'BAN BEKAS KD/PERSENAN', 'BAN BEKAS KD/PERSENAN', 'VARIATIF', 'BAN BEKAS KD/PERSENAN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 10, 20),
(71, 'BAN BEKAS BAN DALEM', 'BAN BEKAS BAN DALEM', 'VARIATIF', 'BAN BEKAS BAN DALEM', 0, 0, 0, 1000, 1, 'ban.jpg', '2019-07-20 05:00:00', 10, 20),
(72, 'BAN BEKAS MARSET BEKAS', 'BAN BEKAS MARSET BEKAS', 'VARIATIF', 'BAN BEKAS MARSET BEKAS', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 10, 20),
(73, 'READY VULKANISIR PANAS', 'READY VULKANISIR PANAS', 'READY', 'READY VULKANISIR PANAS', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 11, 20),
(74, 'READY VULKANISIR DINGIN', 'READY VULKANISIR DINGIN', 'READY', 'READY VULKANISIR DINGIN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 11, 20),
(75, 'JASA VULKANISIR PANAS', 'JASA VULKANISIR PANAS', 'JASA AMG', 'JASA VULKANISIR PANAS', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 12, 20),
(76, 'JASA VULKANISIR DINGIN', 'JASA VULKANISIR DINGIN', 'JASA AMG', 'JASA VULKANISIR DINGIN', 0, 0, 0, 50, 1, 'ban.jpg', '2019-07-20 05:00:00', 12, 20),
(77, 'BAN BEKAS', 'BAN BEKAS', 'BAN BEKAS', 'BAN BEKAS', 0, 0, 0, 1000, 1, NULL, '2019-08-01 05:43:40', 10, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `order_no` varchar(20) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `recived` tinyint(1) NOT NULL DEFAULT '0',
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `accepted_date` datetime DEFAULT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `recived_date` datetime DEFAULT NULL,
  `notes` text,
  `payment_method` int(11) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchase`
--

INSERT INTO `purchase` (`id`, `order_no`, `accepted`, `shipped`, `paid`, `recived`, `order_date`, `accepted_date`, `shipped_date`, `paid_date`, `recived_date`, `notes`, `payment_method`, `supplier_id`) VALUES
(1000, 'PB-001000', 0, 0, 0, 0, '2019-08-01 07:33:38', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(1001, 'PB-001001', 0, 0, 0, 0, '2019-08-09 11:24:12', NULL, NULL, NULL, NULL, NULL, NULL, 21),
(1003, 'PB-001002', 0, 0, 0, 0, '2019-08-09 12:27:54', NULL, NULL, NULL, NULL, NULL, NULL, 15),
(1004, 'PB-001004', 0, 0, 0, 0, '2019-08-09 12:32:14', NULL, NULL, NULL, NULL, NULL, NULL, 22),
(1006, 'PB-001005', 0, 0, 0, 0, '2019-08-15 13:40:16', NULL, NULL, NULL, NULL, NULL, NULL, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchase_detail`
--

INSERT INTO `purchase_detail` (`id`, `product_qty`, `product_price`, `product_id`, `purchase_id`) VALUES
(1000, 1, 2500000, 19, 1000),
(1001, 1, 250000, 77, 1001),
(1002, 1, 650000, 77, 1001),
(1011, 3, 600000, 77, 1003),
(1012, 2, 650000, 77, 1003),
(1013, 1, 250000, 77, 1003),
(1014, 1, 550000, 77, 1003),
(1015, 2, 350000, 77, 1003),
(1016, 4, 500000, 77, 1003),
(1017, 1, 450000, 77, 1003),
(1018, 1, 675000, 77, 1003),
(1019, 1, 300000, 77, 1003),
(1020, 1, 400000, 77, 1003),
(1021, 1, 200000, 77, 1003),
(1022, 2, 600000, 77, 1004),
(1023, 9, 450000, 77, 1004),
(1024, 2, 250000, 77, 1004),
(1025, 3, 400000, 77, 1004),
(1026, 2, 500000, 77, 1004),
(1027, 3, 300000, 77, 1004),
(1028, 2, 650000, 77, 1004),
(1031, 2, 500000, 77, 1006),
(1032, 2, 300000, 77, 1006),
(1033, 1, 550000, 77, 1006),
(1034, 2, 450000, 77, 1006),
(1035, 1, 200000, 77, 1006);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `order_no` varchar(20) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `recived` tinyint(1) NOT NULL DEFAULT '0',
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `accepted_date` datetime DEFAULT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `recived_date` datetime DEFAULT NULL,
  `notes` text,
  `payment_method` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `discount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sale`
--

INSERT INTO `sale` (`id`, `order_no`, `accepted`, `shipped`, `paid`, `recived`, `order_date`, `accepted_date`, `shipped_date`, `paid_date`, `recived_date`, `notes`, `payment_method`, `customer_id`, `discount`) VALUES
(1000, 'FK-001000', 1, 0, 0, 0, '2019-07-30 19:35:50', '2019-07-30 00:00:00', NULL, NULL, NULL, '', 3, 6, NULL),
(1002, 'FK-001001', 1, 0, 0, 0, '2019-08-09 11:12:43', '2019-08-09 00:00:00', NULL, NULL, NULL, '', 4, 17, NULL),
(1005, 'FK-001004', 1, 0, 0, 0, '2019-08-10 14:42:58', '2019-10-08 00:00:00', NULL, NULL, NULL, '', 4, 24, NULL),
(1006, 'FK-001006', 1, 0, 0, 0, '2019-08-12 09:35:17', '2019-09-10 00:00:00', NULL, NULL, NULL, '', 4, 94, NULL),
(1010, 'FK-001007', 1, 0, 0, 0, '2019-08-13 11:26:07', '2019-08-27 00:00:00', NULL, NULL, NULL, '', 4, 97, NULL),
(1011, 'FK-001011', 1, 0, 0, 0, '2019-08-13 11:38:20', '2019-08-27 00:00:00', NULL, NULL, NULL, '', 4, 93, NULL),
(1012, 'FK-001012', 1, 0, 0, 0, '2019-08-13 11:52:57', '2019-09-10 00:00:00', NULL, NULL, NULL, '', 4, 7, NULL),
(1013, 'FK-001013', 1, 0, 0, 0, '2019-08-13 11:58:29', '2019-08-30 00:00:00', NULL, NULL, NULL, '', 4, 98, NULL),
(1014, 'FK-001014', 1, 0, 0, 0, '2019-08-13 12:18:46', '2019-08-26 00:00:00', NULL, NULL, NULL, '', 4, 100, NULL),
(1015, 'FK-001015', 1, 0, 0, 0, '2019-08-13 12:22:43', '2019-08-26 00:00:00', NULL, NULL, NULL, '', 4, 18, NULL),
(1016, 'FK-001016', 1, 0, 0, 0, '2019-08-13 12:24:48', '2019-08-26 00:00:00', NULL, NULL, NULL, '', 4, 12, NULL),
(1017, 'FK-001017', 1, 0, 0, 0, '2019-08-13 12:29:26', '2019-08-29 00:00:00', NULL, NULL, NULL, '', 4, 82, NULL),
(1018, 'FK-001018', 1, 0, 0, 0, '2019-08-13 13:50:09', '2019-08-28 00:00:00', NULL, NULL, NULL, '', 4, 98, NULL),
(1019, 'FK-001019', 1, 0, 0, 0, '2019-08-16 09:41:10', '2019-09-16 00:00:00', NULL, NULL, NULL, '', 4, 24, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sale_detail`
--

CREATE TABLE `sale_detail` (
  `id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `remark` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sale_detail`
--

INSERT INTO `sale_detail` (`id`, `product_qty`, `product_price`, `product_id`, `sale_id`, `remark`) VALUES
(1000, 1, 2500000, 6, 1000, '1000-20'),
(1002, 5, 900000, 73, 1002, '1000-20'),
(1006, 2, 1200000, 74, 1005, '1000-20 DMR'),
(1007, 440, 16000, 71, 1006, '1000/1100-20'),
(1016, 86, 400000, 77, 1010, '1000/1100-20 KODE D'),
(1017, 4, 550000, 77, 1010, '1000/1100-20 KODE EE'),
(1018, 4, 500000, 77, 1010, '1000-20'),
(1019, 2, 600000, 77, 1010, '1000-20 KODE F'),
(1020, 3, 1000000, 74, 1011, '1000-20 OT'),
(1021, 6, 225000, 67, 1011, '900-20'),
(1022, 6, 80000, 69, 1011, '20R'),
(1023, 15, 3500000, 20, 1012, '1100-20'),
(1024, 20, 275000, 67, 1012, '1000-20'),
(1025, 20, 95000, 69, 1012, '20R1'),
(1026, 4, 550000, 73, 1013, '750-16'),
(1027, 2, 500000, 73, 1014, '750-16'),
(1028, 11, 800000, 77, 1015, 'BAHAN BY 1000/1100-20'),
(1029, 20, 750000, 77, 1015, 'APOLLO 1000-20'),
(1030, 5, 1000000, 73, 1016, '1000-20'),
(1031, 15, 1350000, 74, 1017, '1000-20'),
(1032, 15, 225000, 67, 1017, '900-20'),
(1033, 15, 120000, 69, 1017, '20R'),
(1034, 2, 1200000, 74, 1018, '1000-20'),
(1035, 20, 1000000, 74, 1019, '1000-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sale_payment_conf`
--

CREATE TABLE `sale_payment_conf` (
  `id` int(11) NOT NULL,
  `merchant_bank` varchar(255) NOT NULL,
  `customer_bank` varchar(255) NOT NULL,
  `customer_bank_account` varchar(255) NOT NULL,
  `total_amount` bigint(20) NOT NULL,
  `payment_date` datetime NOT NULL,
  `sale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `email`, `description`, `created_at`) VALUES
(1, 'JONI MALANG', 'supplier@email.com', 'MALANG', '2019-07-20 05:00:00'),
(2, 'SUBIANTO', 'supplier@email.com', 'MALANG', '2019-07-20 05:00:00'),
(3, 'EKO', 'supplier@email.com', 'MALANG', '2019-07-20 05:00:00'),
(4, 'SUSENO', 'supplier@email.com', '', '2019-07-20 05:00:00'),
(5, 'H. DORIK', 'supplier@email.com', 'Surabaya', '2019-07-20 05:00:00'),
(6, 'H. DASUKI', 'supplier@email.com', '', '2019-07-20 05:00:00'),
(7, 'H. ROSI', 'supplier@email.com', 'SURABAYA', '2019-07-20 05:00:00'),
(8, 'TAKIM', 'supplier@email.com', '', '2019-07-20 05:00:00'),
(9, 'SANTO', 'supplier@email.com', 'KUPANG', '2019-07-20 05:00:00'),
(10, 'AGUNG', 'supplier@email.com', 'KALIMANTAN', '2019-07-20 05:00:00'),
(11, 'MUSTAFIT', 'supplier@email.com', 'MERAUKE', '2019-07-20 05:00:00'),
(12, 'TONI', 'supplier@email.com', 'NABIRE', '2019-07-20 05:00:00'),
(13, 'IBU TINA', 'supplier@email.com', 'PANGKAL BUN', '2019-07-20 05:00:00'),
(14, 'JOKO BANJAR', 'supplier@email.com', 'BANJAR', '2019-07-20 05:00:00'),
(15, 'SULDI/PD AMG', 'supplier@email.com', 'SIDOARJO', '2019-07-20 05:00:00'),
(16, 'YANTO', 'supplier@email.com', 'BALI', '2019-07-20 05:00:00'),
(17, 'MIKE', 'supplier@email.com', 'MANADO', '2019-07-20 05:00:00'),
(18, 'JUMADI', 'supplier@email.com', 'SORONG', '2019-07-20 05:00:00'),
(20, 'UMUM', 'umum@mail.com', 'SUPPLIER UMUM', '2019-07-25 01:41:37'),
(21, 'YAJI', '', 'BUDURAN', '2019-08-09 04:22:25'),
(22, 'HARI AMG', '', 'SIDOARJO', '2019-08-09 04:31:38'),
(23, 'ABAH BAHRI', '', 'SIDOARJO', '2019-08-09 04:33:26'),
(24, 'BODEH MALANG', '', 'MALANG', '2019-08-09 04:33:50'),
(25, 'TIRTO', '', 'MALANG', '2019-08-09 04:34:26'),
(26, 'VINCENT', 'EMAIL@GMAIL.COM', 'VINCENT IR (082124347701)', '2019-08-15 06:44:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'admin', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1565920971, 1, 'Super', 'Admin', 'ADMIN', '0'),
(2, '127.0.0.1', 'purchase', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'purchase@email.com', '', NULL, NULL, NULL, 1268889823, 1482675321, 1, 'Purchase', 'Employee', 'PRISM', '0'),
(3, '127.0.0.1', 'sales', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'sales@email.com', '', NULL, NULL, NULL, 1268889823, 1482664697, 1, 'Sales', 'Employee', 'PRISM', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD UNIQUE KEY `payment_id` (`payment_id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_no` (`order_no`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `purchase_id` (`purchase_id`);

--
-- Indeks untuk tabel `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_no` (`order_no`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indeks untuk tabel `sale_payment_conf`
--
ALTER TABLE `sale_payment_conf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT untuk tabel `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;

--
-- AUTO_INCREMENT untuk tabel `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- AUTO_INCREMENT untuk tabel `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;

--
-- AUTO_INCREMENT untuk tabel `sale_payment_conf`
--
ALTER TABLE `sale_payment_conf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_product_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `product_review_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `fk_purchase_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD CONSTRAINT `fk_purchase_detail_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_purchase_detail_purchase1` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `fk_sale_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD CONSTRAINT `fk_sale_detail_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sale_detail_sale1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sale_payment_conf`
--
ALTER TABLE `sale_payment_conf`
  ADD CONSTRAINT `fk_sale_payment_conf_sale1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
