-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jul 2021 pada 15.24
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_alumni`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `nama_event` varchar(60) NOT NULL,
  `event_title` varchar(50) NOT NULL,
  `event_slug` varchar(60) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_posting` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id`, `nama_event`, `event_title`, `event_slug`, `deskripsi`, `tanggal_posting`) VALUES
(2, 'Pameran Kampus SMASA', 'LOOP SMASA 2021', 'loop-smasa-2021', 'Kegiatan kampus expo smasa,memberikan informasi seputar perkuliahan.', '2021-07-01 00:51:20'),
(4, 'Undangan Alumni Pembangunan Masjid Fii Sabilillah', 'Pembangunan Masjid Fii Sabilillah', 'pembangunan-masjid-fii-sabilillah', 'Mengundang seluruh alumni,SMAN 1 Lumajang,untuk turut menyaksikan peletakan batu pertama pembangunan Masjid Fiisabilillah.', '2021-07-01 00:51:12');

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
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kritik_saran`
--

CREATE TABLE `kritik_saran` (
  `id_kritiksaran` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `kritik` text NOT NULL,
  `saran` text NOT NULL,
  `tanggal_posting` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kritik_saran`
--

INSERT INTO `kritik_saran` (`id_kritiksaran`, `id_user`, `kritik`, `saran`, `tanggal_posting`) VALUES
(8, 2, 'Sekolah adalah tempat untuk menumbuhkan kecerdasan dan kreativitas anak dan bukan hanya sekedar tempat mengejar nilai tertinggi.', 'Semoga kedepannya para guru lebih memperhatikan potensi anak didiknya selain di bidang akademik', '2021-05-11 12:36:27'),
(11, 9, 'Kebersihan sekolah seharusnya sangat penting untuk dijaga terutama di kamar mandi agar murid – murid merasa nyaman saat menggunakannya.', 'Sebaiknya tempat sampah ditambah lagi, agar kebersihan tetap terjaga', '2021-06-05 01:51:34'),
(12, 14, 'Aliquam convallis magna in vehicula posuere. Duis ornare molestie tincidunt.', 'Proin eget porta lacus, vel scelerisque velit. Nulla facilisi.', '2021-06-30 02:22:03'),
(13, 15, 'Seharusnya perpustakaan sekolah dikelola dengan lebih baik sehingga koleksi buku lebih lengkap dan suasananya membuat siswa nyaman untuk membaca.', 'Kepala Sekolah dapat menganggarkan bantuan BOS untuk kesejahteraan perpustakaan', '2021-07-01 01:19:13'),
(14, 2, 'asabc', 'basbas', '2021-07-01 08:57:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(12, '::1', 'UDMAN', '0000-00-00 00:00:00'),
(25, '::1', 'maudy.ayunda@gmail.com', '0000-00-00 00:00:00'),
(28, '::1', 'user3@gamil.com', '0000-00-00 00:00:00'),
(29, '::1', 'jka@gmail.com', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lowongan`
--

CREATE TABLE `lowongan` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `job_slug` varchar(60) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_posting` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lowongan`
--

INSERT INTO `lowongan` (`id`, `nama_perusahaan`, `job_title`, `job_slug`, `deskripsi`, `tanggal_posting`) VALUES
(8, 'PT Sinarmas', 'Backend Engineering', 'backend-engineering', 'Dibutuhkan posisi backend engineering,untuk membangun website admin.', '2021-07-01 00:50:18'),
(12, 'PT Telkom', 'Loker Data Analyst', 'loker-data-analyst', 'Dibutuhkan segera data analyst ,kirim berkas-berkas di telkom@email.com', '2021-07-01 00:50:10'),
(13, 'BANK MANDIRI', 'Dibutuhkan Teller', 'dibutuhkan-teller', 'Dibutuhkan karyawan ,untuk posisi teller dengan syarat :\r\nberpenampilan menarik,memiliki attitude baik,usia maks 27 thn', '2021-07-01 00:49:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nisn` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(16) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(50) NOT NULL,
  `tahun_masuk` varchar(9) NOT NULL,
  `tahun_lulus` varchar(9) NOT NULL,
  `no_ijazah` varchar(50) NOT NULL,
  `no_skhun` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id`, `id_user`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `nisn`, `alamat`, `no_telp`, `nama_ayah`, `pekerjaan_ayah`, `nama_ibu`, `pekerjaan_ibu`, `tahun_masuk`, `tahun_lulus`, `no_ijazah`, `no_skhun`) VALUES
(1, 2, 'Laki-Laki', 'Lumajang', '1999-07-14', 99102012, 'Perum Bumi Biting Indah Blok C2-04 ,RT 01 / RW 13,Kutorenon ,Kec.Sukodono,Lumajang', '089811218128', 'Suherman', 'PEGAWAI NEGERI SIPIL', 'Aminik Salulah', 'MENGURUS RUMAH TANGGA', '2015', '2018', '2019021995', '2392039206'),
(25, 4, 'Laki-Laki', 'Jember', '2021-05-07', 238293, 'Jl.Merpati No.29', '0120120192', 'AS', 'BELUM/TIDAK BEKERJA', 'OQIW2', 'BELUM/TIDAK BEKERJA', '2015', '2018', 'IW9Q8', '19201'),
(27, 3, 'Perempuan', 'Lumajang', '1998-05-07', 9901201, 'Jl.Pisang Agung No.32 ,RT 04 - RW 13', '08129819281', 'Yayan', 'KEPOLISIAN RI', 'Surti', 'PERANCANG BUSANA', '2014', '2017', '-', '-'),
(29, 5, 'Laki-Laki', 'Malang', '1997-06-14', 976129121, 'Lumajang', '08521219218', 'Yanto', 'BELUM/TIDAK BEKERJA', 'Ratri', 'BELUM/TIDAK BEKERJA', '2013', '2015', '-', '-'),
(32, 7, 'Perempuan', 'Jakarta', '1996-06-24', 998876121, 'Jl.Semanggi No.100', '08323239112', 'Budi', 'KEPOLISIAN RI', 'Rani', 'KEPOLISIAN RI', '2013', '2015', '-', '-'),
(33, 8, 'Perempuan', 'Depok', '1999-06-04', 981271821, 'Jl.Mawar No.98', '0853283183', 'Dadang', 'ANGGOTA DPRD PROVINSI', 'Muaimah', 'AKUNTAN', '2014', '2016', '-', '-'),
(35, 9, 'Laki-Laki', 'Seoul', '1995-06-17', 2147483647, 'Jl.Pegangsaan Timur No.56', '083833674092', 'Dadang', 'DOKTER', 'Irene', 'GURU', '2013', '2016', 'DN-01.Dd 0124038', 'DN-01.Dd 0157382'),
(36, 10, 'Laki-Laki', 'as', '2021-06-16', 99182182, 'aksk', '10920192', 'askajks', 'ANGGOTA DPD', 'as', 'AKUNTAN', '2015', '2018', '-', '-'),
(37, 11, 'Perempuan', 'Lumajang', '2021-06-30', 2147483647, 'Jl.Merpati No.90', '085342512129', 'Yadi', 'ANGGOTA MAHKAMAH KONSTITUSI', 'Mariah', 'BIDAN', '2019', '2021', '-', '-'),
(39, 13, 'Laki-Laki', 'Lumajang', '1990-06-10', 8891212, 'Jl.Mawar 78', '0877471271', 'Puyono', 'KARYAWAN BUMN', 'Wati', 'AKUNTAN', '1999', '2002', '-', '-'),
(40, 14, 'Laki-Laki', 'Konoha', '1995-05-30', 998200121, 'Jl.Konohagakure No.98', '08761781219', 'Minato', 'PENELITI', 'Kushina', 'APOTEKER', '2013', '2015', '-', '-'),
(41, 15, 'Laki-Laki', 'New York', '1994-06-14', 2147483647, 'Jl.Cengger Ayam No.77', '08372661212', 'Zulkhifi', 'SENIMAN', 'Maya Wulandari', 'BIDAN', '1995', '1999', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `referensi_profesi`
--

CREATE TABLE `referensi_profesi` (
  `id_profesi` int(11) NOT NULL,
  `nama_profesi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `referensi_profesi`
--

INSERT INTO `referensi_profesi` (`id_profesi`, `nama_profesi`) VALUES
(1, 'BELUM/TIDAK BEKERJA'),
(2, 'MENGURUS RUMAH TANGGA'),
(3, 'PELAJAR/MAHASISWA'),
(4, 'PENSIUNAN'),
(5, 'PEGAWAI NEGERI SIPIL'),
(6, 'TENTARA NASIONAL INDONESIA'),
(7, 'KEPOLISIAN RI'),
(8, 'PDAGANG PASAR'),
(9, 'PETANI/PEKEBUN'),
(10, 'PETERNAK'),
(11, 'NELAYAN/PERIKANAN'),
(12, 'INDUSTRI'),
(13, 'KONSTRUKSI'),
(14, 'TRANSPORTASI'),
(15, 'KARYAWAN SWASTA'),
(16, 'KARYAWAN BUMN'),
(17, 'KARYAWAN BUMD'),
(18, 'KARYAWAN HONORER'),
(19, 'BURUH HARIAN LEPAS'),
(20, 'BURUH TANI/PERKEBUNAN'),
(21, 'BURUH NELAYAN/PERIKANAN'),
(22, 'BURUH PETERNAKAN'),
(23, 'PEMBANTU RUMAH TANGGA'),
(24, 'TUKANG CUKUR'),
(25, 'TUKANG LISTRIK'),
(26, 'TUKANG BATU'),
(27, 'TUKANG KAYU'),
(28, 'TUKANG SOL SEPATU'),
(29, 'TUKANG LAS/PANDAI BESI'),
(30, 'TUKANG JAHIT'),
(31, 'TUKANG GIGI'),
(32, 'PENATA RIAS'),
(33, 'PENATA BUSANA'),
(34, 'PENATA RAMBUT'),
(35, 'MEKANIK'),
(36, 'SENIMAN'),
(37, 'TABIB'),
(38, 'DESAINER'),
(39, 'PERANCANG BUSANA'),
(40, 'PENTERJEMAH'),
(41, 'IMAM MASJID'),
(42, 'PENDETA'),
(43, 'PASTOR'),
(44, 'WARTAWAN'),
(45, 'USTADZ/MUBALIGH'),
(46, 'JURU MASAK'),
(47, 'PROMOTOR ACARA'),
(48, 'ANGGOTA DPR-RI'),
(49, 'ANGGOTA DPD'),
(50, 'ANGGOTA BPK'),
(51, 'PRESIDEN'),
(52, 'WAKIL PRESIDEN'),
(53, 'ANGGOTA MAHKAMAH KONSTITUSI'),
(54, 'ANGGOTA KABINET/KEMENTERIAN'),
(55, 'DUTA BESAR'),
(56, 'GUBERNUR'),
(57, 'WAKIL GUBERNUR'),
(58, 'BUPATI'),
(59, 'WAKIL BUPATI'),
(60, 'WALIKOTA'),
(61, 'WAKIL WALIKOTA'),
(62, 'ANGGOTA DPRD PROVINSI'),
(63, 'ANGGOTA DPRD KABUPATEN/KOTA'),
(64, 'DOSEN'),
(65, 'GURU'),
(66, 'PILOT'),
(67, 'PENGACARA'),
(68, 'NOTARIS'),
(69, 'ARSITEK'),
(70, 'AKUNTAN'),
(71, 'KONSULTAN'),
(72, 'DOKTER'),
(73, 'BIDAN'),
(74, 'PERAWAT'),
(75, 'APOTEKER'),
(76, 'PSIKIATER/PSIKOLOG'),
(77, 'PENYIAR TELEVISI'),
(78, 'PENYIAR RADIO'),
(79, 'PELAUT'),
(80, 'PENELITI'),
(81, 'SOPIR'),
(82, 'PIALANG'),
(83, 'PARANORMAL'),
(84, 'PEDAGANG KAKI LIMA'),
(85, 'PERANGKAT DESA'),
(86, 'KEPALA DESA'),
(87, 'BIARAWATI'),
(88, 'WIRASWASTA'),
(92, 'YOUTUBER'),
(94, 'KOMIKUS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `referensi_tahun`
--

CREATE TABLE `referensi_tahun` (
  `id` int(11) NOT NULL,
  `ref_tahun` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `referensi_tahun`
--

INSERT INTO `referensi_tahun` (`id`, `ref_tahun`) VALUES
(1, '2015'),
(2, '2016'),
(3, '2017'),
(4, '2018'),
(5, '2019'),
(6, '2020'),
(7, '2021'),
(9, '2014'),
(10, '2013'),
(14, '1999'),
(15, '2002'),
(16, '1995'),
(17, '1996'),
(18, '1997'),
(19, '1998'),
(20, '2000'),
(21, '2001'),
(22, '2003'),
(23, '2004'),
(24, '2006'),
(25, '2007'),
(26, '2008'),
(27, '2009'),
(28, '2010'),
(29, '2011'),
(30, '2012'),
(31, '2005');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_alumni`
--

CREATE TABLE `status_alumni` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `status` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_alumni`
--

INSERT INTO `status_alumni` (`id`, `id_user`, `status`, `deskripsi`) VALUES
(3, 2, 'Bekerja', 'Bekerja di Istana Negara'),
(5, 5, 'Kuliah', 'Masih berkuliah di Universitas Malang'),
(27, 4, 'Bekerja', 'Kerja bos disini'),
(29, 3, 'Kuliah', 'Kuliah Di UGM'),
(35, 7, 'Bekerja', 'Bekerja sebagai artis'),
(36, 8, 'Kuliah', 'Kuliah di Universitas Malang'),
(38, 9, 'Bekerja', 'Bekerja di PT Telkom Indonesia sebagai Content Writer'),
(40, 10, 'Bekerja', 'abc'),
(41, 11, 'Belum / tidak bekerja', 'Masih menganggur'),
(43, 13, 'Bekerja', 'Bekerja di BUMN,sebagai Kepala Direktur'),
(44, 14, 'Bekerja', 'Bekerja sebagai Hokage'),
(45, 15, 'Bekerja', 'Bekerja di Istana Negara Irlandia'),
(46, 28, 'Kuliah', 'Kuliah di Stanford');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `testimoni` text NOT NULL,
  `is_tampil` varchar(5) NOT NULL DEFAULT 'Tidak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `id_user`, `testimoni`, `is_tampil`) VALUES
(1, 2, 'Sekolah yang sangat nyaman,dari segi fasilitas ,pelayanan ,beserta guru-gurunya sangat baik.Saya bangga menjadi keluarga SMASA', 'Ya'),
(2, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Ya'),
(4, 5, 'Loremipsuaskaslakls', 'Ya'),
(14, 9, 'Sekolah yang nyaman untuk belajar ,fasilitasnya juga lengkap', 'Tidak'),
(15, 14, '\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"\r\n\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because  it is pain...\"', 'Ya'),
(16, 15, 'Saya dapa meningatkan indeks belajar saya dengan mudah di sekolah ini', 'Ya'),
(17, 26, 'askjaks', 'Tidak');

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
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$tXgzdrIacZ1OrTByIPY7CuOTFhKjrj7OwpzDG/hYmC8GdJURLPMIe', '', 'admin@admin.com', '', '-N-QzN8O8CuLVErLYKUPYOb87f501b797d0c121a', 1545139776, '8sA.GWqrKDDvNqJnumXJ0e', '2021-06-07 12:52:13', '0000-00-00 00:00:00', 1, 'Admin', 'istrator'),
(2, '::1', 'almaasrozikin@gmail.com', '$2y$08$upAmH3Q6aE8AK0bbCitoMeTeyGJRZlS1WpYsPorc87i2OuF8iGdaO', NULL, 'almaasrozikin@gmail.com', NULL, 'Bvf6-27V9qYqvDLmx6NrU.8fa79c503d00eb60e8', 1615781732, NULL, '2021-07-01 08:56:03', '0000-00-00 00:00:00', 1, 'Almaas', 'Rozikin Herawan'),
(3, '::1', 'user2@user.com', '$2y$08$cjmwxcIhPuhcsORwO0wsJOxb5U0ZH11ds.y3FK61obTd/2lli6oau', NULL, 'user2@user.com', NULL, NULL, NULL, NULL, '2021-05-30 23:08:46', '2021-05-30 23:08:46', 1, 'Rani', 'Maharani'),
(4, '::1', 'budi@gmail.com', '$2y$08$9blsejOpkGhtxqG2wzWb7.hl4dGMo/zvGB7.2aH3G55Fq.meStlDa', NULL, 'budi@gmail.com', NULL, NULL, NULL, NULL, '2021-05-11 23:47:14', '2021-05-11 23:47:14', 1, 'Budie', 'Raharjo'),
(5, '::1', 'rudy29@gmail.com', '$2y$08$5KTy9CrhyLGmvwPFYX9U7OkedqQfQHhrKyna7IrrfTINBDJ9l/KZG', NULL, 'rudy29@gmail.com', NULL, NULL, NULL, NULL, '2021-05-11 22:01:46', '0000-00-00 00:00:00', 1, 'Rudy', 'Haryono'),
(7, '::1', 'maudy@gmail.com', '$2y$08$F.I0XMNdPGXYhPWnHsr3Pe1zqndpSJi73Q73BvMPIjzI6ThZbuSsC', NULL, 'maudy123@gmail.com', NULL, NULL, NULL, NULL, '2021-06-04 23:04:39', '2021-06-04 23:04:39', 1, 'Maudy', 'Ayunda'),
(8, '::1', 'nissa_sbyn@gmail.com', '$2y$08$MUo951TpwWvoIeRqtWfYNOpquNFTGh4eD1w7TeomJAbY6vQd8a5uG', NULL, 'nissa_sbyn@gmail.com', NULL, NULL, NULL, NULL, '2021-06-03 02:41:55', '0000-00-00 00:00:00', 1, 'Nissa', 'Sabyan'),
(9, '::1', 'user@gmail.com', '$2y$08$Or4Lb1k9zwe5vFigXV/b8e.SCTUZAWNRxzxD1Qi.YuUmX6k/thJBy', NULL, 'user@gmail.com', NULL, NULL, NULL, NULL, '2021-06-07 21:36:05', '2021-06-07 21:36:05', 1, 'user', 'cobain'),
(10, '::1', 'kim_shyn@gmail.com.com', '$2y$08$cb5TgWPtQ9ZW3tbVaWHVVuwdvQby4L2vP/hxx63dYInCGbKdDCuoC', NULL, 'kim_soo@gmail.com', NULL, NULL, NULL, NULL, '2021-06-07 01:25:22', '2021-06-07 01:25:22', 1, 'Kim Soo', 'Hyun'),
(11, '::1', 'zahra_il@gmail.com', '$2y$08$JQaCOMfBHah9Ht90U/UOQuyTsK2u8UddywsULII5AokP46YgrVp6W', NULL, 'zahra_il@gmail.com', NULL, NULL, NULL, NULL, '2021-06-07 01:25:18', '2021-06-07 01:25:18', 1, 'Zahra', 'Ilma'),
(13, '::1', 'heru_yono@gmail.com', '$2y$08$XdE8bK9xkWInu1IU.V6XEuLV3ZsMm4ZbzDMA74/tgYOEoyRRyKjty', NULL, 'heru_yono@gmail.com', NULL, NULL, NULL, NULL, '2021-06-08 02:59:30', '0000-00-00 00:00:00', 1, 'Heru', 'Yono'),
(14, '::1', 'naruto@gmail.com', '$2y$08$aG/x0o1opP.kgy.bgJ2Z8.0IMkoBA45EvW2S9xp5r5EEUzgJAoSNO', NULL, 'naruto@gmail.com', NULL, NULL, NULL, NULL, '2021-06-30 01:32:04', '0000-00-00 00:00:00', 1, 'Naruto', 'Uzumaki'),
(15, '::1', 'jh_mayers@gmail.com', '$2y$08$qtuN2pfPXRQBp1APZnqtzOtaL2XWYD/DfgQ3.JSEKBzBRWJ7peULW', NULL, 'jh_mayers@gmail.com', NULL, NULL, NULL, NULL, '2021-07-01 01:11:27', '2021-07-01 01:11:27', 1, 'Jonn Robert', 'Mayers'),
(18, '::1', 'sherlock_holmes@gmail.com', '$2y$08$FR5j5d8y3qDo.igYMJPbTuli8mgG9vQKztKVDNIfGJKpJsMLqMkYq', NULL, 'sherlock_holmes@gmail.com', NULL, NULL, NULL, NULL, '2021-07-01 23:29:56', '0000-00-00 00:00:00', 1, 'Sherlock', 'Holmes'),
(22, '::1', 'arzan@gmail.com', '$2y$08$.71rk9YaHF8ukzQTGWMwp.oCQksi2QEaxBwGHjY3hVUxCazrIl.jG', NULL, 'arzan@gmail.com', NULL, NULL, NULL, NULL, '2021-07-01 23:53:18', '0000-00-00 00:00:00', 1, 'Arzan', 'Prakoso'),
(25, '::1', 'carol_ex@gmail.com', '$2y$08$e//qVTf5H5weg1wxL.58Z.ZkzZlgiCf2erFBPLM5cWnlXLZD35RIC', NULL, 'carol_ex@gmail.com', NULL, NULL, NULL, NULL, '2021-07-02 05:38:48', '0000-00-00 00:00:00', 1, 'Carol', 'Erickssen'),
(26, '::1', 'justin_bieber@gmail.com', '$2y$08$TEYaFys/KqZx957shpeFQ.wLThH0A2k/38eklLOKqs4pw9bcG5f8q', NULL, 'justin_bieber@gmail.com', NULL, NULL, NULL, NULL, '2021-07-03 22:42:01', '0000-00-00 00:00:00', 1, 'Justin', 'Bieiber'),
(27, '::1', 'barry_allen@gmail.com', '$2y$08$Q5kX7l9oz05lyF4KoGAyt.ot.udk5nOVttHnz0Psq1hRqF4qGopzC', NULL, 'barry_allen@gmail.com', NULL, NULL, NULL, NULL, '2021-07-03 22:46:47', '0000-00-00 00:00:00', 1, 'Barry', 'Allen'),
(28, '::1', 'squall_leon@gmail.com', '$2y$08$CWuJ1ZuERIgfMSNr8Y5Nu.2OD5C9zfraN.EMluQxmpoCYADjotxw2', NULL, 'squall_leon@gmail.com', NULL, NULL, NULL, NULL, '2021-07-05 13:00:47', '0000-00-00 00:00:00', 1, 'Squall', 'Leonhart'),
(29, '::1', 'harry_june@gmail.com', '$2y$08$i8NzcfZNyhUaLAHHyIqdN.43YMglh3T8PUS3P8AjAW5KxAGNVH1pK', NULL, 'harry_june@gmail.com', NULL, NULL, NULL, NULL, '2021-07-07 01:45:34', '0000-00-00 00:00:00', 1, 'Harry', 'June');

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
(15, 1, 1),
(16, 2, 2),
(18, 3, 2),
(17, 4, 2),
(19, 5, 2),
(24, 7, 2),
(22, 8, 2),
(29, 9, 2),
(26, 10, 2),
(27, 11, 2),
(30, 13, 2),
(31, 14, 2),
(32, 15, 2),
(35, 18, 2),
(39, 22, 2),
(42, 25, 2),
(43, 26, 2),
(44, 27, 2),
(45, 28, 2),
(46, 29, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kritik_saran`
--
ALTER TABLE `kritik_saran`
  ADD PRIMARY KEY (`id_kritiksaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `referensi_profesi`
--
ALTER TABLE `referensi_profesi`
  ADD PRIMARY KEY (`id_profesi`);

--
-- Indeks untuk tabel `referensi_tahun`
--
ALTER TABLE `referensi_tahun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_alumni`
--
ALTER TABLE `status_alumni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`id_user`);

--
-- Indeks untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`),
  ADD KEY `id_user` (`id_user`);

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
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kritik_saran`
--
ALTER TABLE `kritik_saran`
  MODIFY `id_kritiksaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `referensi_profesi`
--
ALTER TABLE `referensi_profesi`
  MODIFY `id_profesi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `referensi_tahun`
--
ALTER TABLE `referensi_tahun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `status_alumni`
--
ALTER TABLE `status_alumni`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kritik_saran`
--
ALTER TABLE `kritik_saran`
  ADD CONSTRAINT `kritik_saran_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `status_alumni`
--
ALTER TABLE `status_alumni`
  ADD CONSTRAINT `status_alumni_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD CONSTRAINT `testimoni_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
