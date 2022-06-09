-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 03 Jun 2022 pada 01.29
-- Versi server: 5.7.33
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_daging`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `NoFaktur` int(6) NOT NULL,
  `id_daging` varchar(15) NOT NULL,
  `nama_daging` varchar(100) NOT NULL,
  `jenis_daging` varchar(100) NOT NULL,
  `bagian_daging` varchar(100) NOT NULL,
  `stock_daging` varchar(100) NOT NULL,
  `harga_jual` varchar(200) NOT NULL,
  `berat_daging` varchar(200) NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_barang`
--

CREATE TABLE `stock_barang` (
  `id_daging` varchar(15) NOT NULL,
  `nama_daging` varchar(100) DEFAULT NULL,
  `jenis_daging` varchar(100) DEFAULT NULL,
  `bagian_daging` varchar(100) DEFAULT NULL,
  `stock_daging` varchar(100) DEFAULT NULL,
  `harga_beli` varchar(200) DEFAULT NULL,
  `harga_jual` varchar(200) DEFAULT NULL,
  `berat_daging` varchar(200) NOT NULL,
  `tanggal_input` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_barang`
--

INSERT INTO `stock_barang` (`id_daging`, `nama_daging`, `jenis_daging`, `bagian_daging`, `stock_daging`, `harga_beli`, `harga_jual`, `berat_daging`, `tanggal_input`) VALUES
('DG001', 'Sapi', 'wagyu', 'usu', 'dsa', 'dasd', 'dsada', '250 gr', NULL),
('DG002', 'Sapi', 'Wagyu', '', '50', '70.000', '100.000', '250 gr', NULL),
('DG005', 'sapi', 'wagyu a5', 'tenderloin', '10', '50000', '75000', '250 gr', NULL),
('DG006', 'dasda', 'dasda', 'dasdad', 'dasda', 'dsadsa', 'dsadsada', '250 gr', '2022-05-13'),
('DG007', 'Wagyu', 'A5', 'Tenderloin', '1', '250000', '350000', '250 gr', '2022-06-01'),
('DG008', 'Wagyu', 'MB6', 'Sirloin', '1', '300000', '400000', '250 gr', '2022-06-01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`NoFaktur`),
  ADD KEY `FK_kasir_stock_barang` (`id_daging`);

--
-- Indeks untuk tabel `stock_barang`
--
ALTER TABLE `stock_barang`
  ADD PRIMARY KEY (`id_daging`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kasir`
--
ALTER TABLE `kasir`
  MODIFY `NoFaktur` int(6) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD CONSTRAINT `FK_kasir_stock_barang` FOREIGN KEY (`id_daging`) REFERENCES `stock_barang` (`id_daging`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
