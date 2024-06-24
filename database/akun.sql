-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2024 pada 14.58
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akun`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bukubesar`
--

CREATE TABLE `tbl_bukubesar` (
  `Tanggal` date NOT NULL,
  `Reff` varchar(10) NOT NULL,
  `Keterangan` varchar(100) NOT NULL,
  `Debit` varchar(20) NOT NULL,
  `Kredit` varchar(20) NOT NULL,
  `Kode` int(11) NOT NULL,
  `Nama Akun` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_coa`
--

CREATE TABLE `tbl_coa` (
  `Kode_Akun` int(10) NOT NULL,
  `Nama_Akun` varchar(50) NOT NULL,
  `Tipe` varchar(50) NOT NULL,
  `Debit` varchar(20) NOT NULL,
  `Kredit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_coa`
--

INSERT INTO `tbl_coa` (`Kode_Akun`, `Nama_Akun`, `Tipe`, `Debit`, `Kredit`) VALUES
(111100, 'Kas di tangan', 'Kas di tangan', '', ''),
(111210, 'Kas di BCA', 'Kas di BCA', '', ''),
(111220, 'Kas di BRI', 'Kas di BRI', '', ''),
(112100, 'Piutang Usaha', 'Piutang Usaha', '', ''),
(112200, 'Piutang Asuransi BPJS', 'Piutang Asuransi BPJS', '', ''),
(112300, 'Piutang Wesel', 'Piutang Wesel', '', ''),
(113000, 'Perlengkapan', 'Perlengkapan', '', ''),
(114100, 'Persediaan Obat Paramex', 'Persediaan Obat Paramex', '', ''),
(114200, 'Persediaan Obat Panadol', 'Persediaan Obat Panadol', '', ''),
(121100, 'Tanah', 'Tanah', '', ''),
(121200, 'Gedung', 'Gedung', '', ''),
(121210, 'Akumulasi Penyusutan Gedung', 'Akumulasi Penyusutan Gedung', '', ''),
(122100, 'Peralatan', 'Peralatan', '', ''),
(211000, 'Utang Usaha', 'Utang Usaha', '', ''),
(212000, 'Utang Wesel', 'Utang Wesel', '', ''),
(221000, 'Utang Bank', 'Utang Bank', '', ''),
(311000, 'Modal', 'Modal', '', ''),
(312000, 'Modal Inventori', 'Modal Inventori', '', ''),
(313000, 'Modal Pemilik', 'Modal Pemilik', '', ''),
(314000, 'Prive', 'Prive', '', ''),
(411000, 'Pendapatan Jasa Dokter', 'Pendapatan Jasa Dokter', '', ''),
(412000, 'Pendapatan Administrasi', 'Pendapatan Administrasi', '', ''),
(413000, 'Pendapatan Cetak Kartu', 'Pendapatan Cetak Kartu', '', ''),
(414000, 'Potongan Jasa', 'Potongan Jasa', '', ''),
(421000, 'Penjualan Obat', 'Penjualan Obat', '', ''),
(422000, 'Potongan Penjualan', 'Potongan Penjualan', '', ''),
(423000, 'Retur Penjualan', 'Retur Penjualan', '', ''),
(511000, 'Pembelian', 'Pembelian', '', ''),
(512000, 'Potongan Pembelian', 'Potongan Pembelian', '', ''),
(513000, 'Retur Pembelian', 'Retur Pembelian', '', ''),
(611000, 'Beban Gaji', 'Beban Gaji', '', ''),
(612000, 'Beban Sewa', 'Beban Sewa', '', ''),
(613000, 'Beban Listrik dan Air', 'Beban Listrik dan Air', '', ''),
(614000, 'Beban Penyusutan Gedung', 'Beban Penyusutan Gedung', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_control`
--

CREATE TABLE `tbl_control` (
  `Nama_Akun` varchar(50) NOT NULL,
  `Saldo_Normal` varchar(50) NOT NULL,
  `Posisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_control`
--

INSERT INTO `tbl_control` (`Nama_Akun`, `Saldo_Normal`, `Posisi`) VALUES
('Kas di tangan', 'DEBIT', 'NERACA'),
('Kas di BCA', 'DEBIT', 'NERACA'),
('Kas di BRI', 'DEBIT', 'NERACA'),
('Piutang Usaha', 'DEBIT', 'NERACA'),
('Piutang Asuransi BPJS', 'DEBIT', 'NERACA'),
('Piutang Wesel', 'DEBIT', 'NERACA'),
('Perlengkapan', 'DEBIT', 'NERACA'),
('Persediaan Obat Paramex', 'DEBIT', 'NERACA'),
('Persediaan Obat Panadol', 'DEBIT', 'NERACA'),
('Tanah', 'DEBIT', 'NERACA'),
('Gedung', 'DEBIT', 'NERACA'),
('Akumulasi Penyusutan Gedung', 'DEBIT', 'NERACA'),
('Peralatan', 'DEBIT', 'NERACA'),
('Utang Usaha', 'KREDIT', 'NERACA'),
('Utang Wesel', 'KREDIT', 'NERACA'),
('Utang Bank', 'KREDIT', 'NERACA'),
('Modal', 'KREDIT', 'NERACA'),
('Modal Inventori', 'KREDIT', 'NERACA'),
('Modal Pemilik', 'KREDIT', 'NERACA'),
('Prive', 'DEBIT', 'NERACA'),
('Pendapatan Jasa Dokter', 'KREDIT', 'LABARUGI'),
('Pendapatan Administrasi', 'KREDIT', 'LABARUGI'),
('Pendapatan Cetak Kartu', 'KREDIT', 'LABARUGI'),
('Potongan Jasa', 'DEBIT', 'LABARUGI'),
('Penjualan Obat', 'KREDIT', 'LABARUGI'),
('Potongan Penjualan', 'DEBIT', 'LABARUGI'),
('Retur Penjualan', 'DEBIT', 'LABARUGI'),
('Pembelian', 'KREDIT', 'LABARUGI'),
('Potongan Pembelian', 'KREDIT', 'LABARUGI'),
('Retur Pembelian', 'KREDIT', 'LABARUGI'),
('Beban Gaji', 'DEBIT', 'LABARUGI'),
('Beban Sewa', 'DEBIT', 'LABARUGI'),
('Beban Listrik dan Air', 'DEBIT', 'LABARUGI'),
('Beban Penyusutan Gedung', 'DEBIT', 'LABARUGI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurnalumum`
--

CREATE TABLE `tbl_jurnalumum` (
  `Tanggal` date NOT NULL,
  `Reff` varchar(10) NOT NULL,
  `Keterangan` varchar(100) NOT NULL,
  `Kode` int(11) NOT NULL,
  `Nama_Akun` varchar(50) NOT NULL,
  `Debit` varchar(20) NOT NULL,
  `Kredit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_jurnalumum`
--

INSERT INTO `tbl_jurnalumum` (`Tanggal`, `Reff`, `Keterangan`, `Kode`, `Nama_Akun`, `Debit`, `Kredit`) VALUES
('2024-06-18', 'gak ada', 'yaa tidak ada pokoknya', 123, 'marchel', '30.000', '30.500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_neracasaldo`
--

CREATE TABLE `tbl_neracasaldo` (
  `No` varchar(3) NOT NULL,
  `Kode Akun` int(11) NOT NULL,
  `Nama Akun` varchar(50) NOT NULL,
  `Debit` varchar(20) NOT NULL,
  `Kredit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'wahyu', 'wahyu'),
(2, 'dianto', 'wahyu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bukubesar`
--
ALTER TABLE `tbl_bukubesar`
  ADD PRIMARY KEY (`Kode`);

--
-- Indeks untuk tabel `tbl_coa`
--
ALTER TABLE `tbl_coa`
  ADD PRIMARY KEY (`Kode_Akun`);

--
-- Indeks untuk tabel `tbl_jurnalumum`
--
ALTER TABLE `tbl_jurnalumum`
  ADD PRIMARY KEY (`Kode`);

--
-- Indeks untuk tabel `tbl_neracasaldo`
--
ALTER TABLE `tbl_neracasaldo`
  ADD PRIMARY KEY (`Kode Akun`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
