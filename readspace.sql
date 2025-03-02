-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Mar 2025 pada 03.17
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
-- Database: `readspace`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_anggota`, `jenis_kelamin`, `email`, `no_telp`, `alamat`) VALUES
(5, 'Keisya Novarya R', '1', 'keisya@gmail.com', '081298751278', 'Jl. Meruya No. 58'),
(6, 'Nathaniel Pratama S', '2', 'nathan@gmail.com', '081287653421', 'Jl. Harmoni No. 54'),
(7, 'Andira Septiani', '1', 'andira@gmail.com', '089758235167', 'Jl. Sudirman No. 90'),
(8, 'Andini Maulidiah', '1', 'andini@gmail.com', '081256327865', 'Jl. Anggrek No. 12'),
(9, 'Leonardo Immanuel', '2', 'leo@gmail.com', '081367890213', 'Jl. Flamboyan No.16'),
(11, 'Nicholas Wijaya', '2', 'nicholas@gmail.com', '081243210987', 'Jl. Cemara No. 17'),
(12, 'Alaric Pratama', '2', 'alaric@gmail.com	', '081256784321', 'Jl. Merdeka No. 12'),
(13, 'Freya Maharani', '1', 'freya@gmail.com', '09976548909', 'Jl. Pemuda No. 10'),
(14, 'Ethan Saputra', '2', 'ethan@gmail.com', '085678091252', 'Jl. Raden Saleh No. 14'),
(15, 'Ezra Wijaya', '2', 'ezra@gmail.com', '085643128907', 'Jl. Sisingamangaraja No. 97'),
(16, 'Cyntia Febiola', '1', 'cyntia@gmail.com', '089765431243', 'Jl. Pengantin No. 78'),
(17, 'Kevin Kristiawan', '2', 'kevin@gmail.com', '081278659087', 'Jl. Kebagusan No.75');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `judul`, `pengarang`, `penerbit`, `tahun`) VALUES
(21, 6, 'Laskar Pelangi 2', 'Andrea Hirata', 'Bentang Pustaka', '2005'),
(22, 7, 'The Road to Mecca', 'Muhammad Asad', 'Fons Vitae', '1954'),
(24, 8, 'The Lean Startup', 'Eric Ries', 'Crown Business', '2011'),
(25, 11, 'Rich Dad Poor Dad', 'Robert T. Kiyosaki', 'Plata Publishing', '1997'),
(31, 9, 'Aesthetics and Art Theory', 'Arnold Berleant', 'Ashgate', '2004'),
(34, 7, 'Catatan Najwa: Bilik Hati', 'Najwa Shihab', 'Najwa Publishing', '2020'),
(35, 7, 'La Tahzan (Jangan Bersedih)', 'Dr. Aidh Al-Qarni', 'Qisthi Press', '2001'),
(38, 8, 'Rekayasa Perangkat Lunak', 'Roger S. Pressman', 'Andi Publisher', '2010'),
(39, 11, 'The Intelligent Investor', 'Benjamin Graham', 'HarperBusiness', '1949'),
(40, 10, 'Jejak Langkah', 'Pramoedya Ananta Toer', 'Hasta Mitra', '1985'),
(41, 9, 'Steal Like an Artist', 'Austin Kleon', 'Workman Publishing', '2012'),
(42, 13, 'Zero to One', 'Peter Thiel', 'Crown Business', '2014'),
(43, 6, 'Hujan', 'Tere Liye', 'Gramedia', '2016'),
(44, 6, 'The Alchemist', 'Paulo Coelho', 'HarperOne', '1988'),
(45, 6, 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia', '2009'),
(46, 10, 'MORFOLOGI', 'Cyntia Priliana', 'Gramedia', '2006');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(6, 'Fiksi 1'),
(7, 'Religi'),
(8, 'Teknologi'),
(9, 'Seni'),
(10, 'Sejarah'),
(11, 'Keuangan'),
(12, 'Ekonomi'),
(13, 'Bisnis'),
(15, 'Motivasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_buku`, `id_anggota`, `tgl_peminjaman`, `tgl_pengembalian`, `status`) VALUES
(4, 22, 6, '2025-01-13', '2025-01-15', '2'),
(5, 21, 7, '2025-01-10', '2025-01-15', '1'),
(6, 21, 9, '2025-01-10', '2025-01-17', '2'),
(8, 42, 11, '2025-01-10', '2025-01-13', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', 'admin', '1'),
(3, 'Andira', 'dira', 'dira', '2'),
(4, 'Andini', 'andin', 'andin', '2'),
(6, 'Sekar', 'sekar1', 'sekar', '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
