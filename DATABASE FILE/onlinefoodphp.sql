-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2022 pada 08.03
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2022-05-27 13:21:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` varchar(12) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 2, 'Croffle Duo', 'Croffle 2 pcs pas buat porsi sendirian!', '16.000', '62aeb56fd0a8a.png'),
(2, 2, 'Sweet Toast Matcha', 'Toast rasa matcha', '15.000', '62aeb58044d0c.png'),
(3, 2, 'Bundling Single 1', '1 Bara Kopi Aren + 1 Croffle Trio(3pcs) pas buat balikin mood kamu', '42.000', '62aeb59eeec50.png'),
(4, 1, 'Tiramisu Toast', 'Toast rasa tiramisu', '15.000', '62aeb5b0ea053.png'),
(5, 2, 'Bundling Couple 1', 'Croffle Duo (2x) + Bara kopi awan + Kiwi milky yogurt', '72.000', '62aeb5c2b2114.png'),
(6, 1, 'Strawberry Milky Yogurt', 'Strawberry, milk, yogurt', '20.000', '62aeb5d548549.png'),
(7, 2, 'Kopi Susu Gula Aren 1L', '1L Bara Kopi Aren', '94.000', '62aeb528f1480.png'),
(8, 1, 'Croffle Nine', '9 Croffle+1 dip saus cocok buat rame-rame', '68.000', '62aeb2d2477a6.png'),
(18, 2, 'Croffle Nine', '9 Croffle+1 dip saus cocok buat rame-rame', '68.000', '62aeb350dd1a4.png'),
(19, 1, 'Kopi Susu Gula Aren 1L', '1L Bara Kopi Aren', '94.000', '62aeb542192ce.png'),
(20, 1, 'Croffle Duo', 'Croffle 2 pcs pas buat porsi sendirian!', '16.000', '62b02f2747da0.png'),
(21, 1, 'Croffle Trio', '3 croffle porsi pas untuk ', '24.000', '62b02f91f134f.png'),
(22, 2, 'Croffle Trio', '3 croffle porsi pas untuk ', '24.000', '62b02fa8f00f1.png'),
(23, 2, 'Tiramisu Toast', 'Toast rasa tiramisu', '15.000', '62b03028d343c.png'),
(24, 1, 'Sweet Toast Matcha', 'Toast rasa matcha', '15.000', '62b0306f4b983.png'),
(25, 1, 'Bundling Single 1', '1 Bara Kopi Aren + 1 Croffle Trio(3pcs) pas buat balikin mood kamu', '42.000', '62b030b2a8e4a.png'),
(26, 1, 'Bundling Couple 1', 'Croffle Duo (2x) + Bara kopi awan + Kiwi milky yogurt', '72.000', '62b030d6c7caf.png'),
(27, 2, 'Bara Kopi Aren', 'Espresso, milk, brown sugar', '20.000', '62b036ac3c6ef.png'),
(28, 1, 'Bara Kopi Aren', 'Espresso, milk, brown sugar', '20.000', '62b03692f12b5.png'),
(29, 1, 'Bara Kopi Awan', 'Espresso, milk, sweet machiato', '20.000', '62b03656abd80.png'),
(30, 2, 'Bara Kopi Awan', 'Espresso, milk, sweet machiato', '20.000', '62b0366c96825.png'),
(31, 1, 'Kiwi Milky Yogurt', 'Kiwi+susu+yogurt', '20.000', '62b03705a2ef5.png'),
(32, 2, 'Kiwi Milky Yogurt', 'Kiwi+susu+yogurt', '20.000', '62b0371d54bdd.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2022-05-01 05:17:49'),
(2, 3, 'in process', 'none', '2022-05-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'closed', 'none', '2022-05-27 11:42:35'),
(5, 4, 'in process', 'none', '2022-05-27 11:42:55'),
(6, 1, 'rejected', 'none', '2022-05-27 11:43:26'),
(7, 7, 'in process', 'none', '2022-05-27 13:03:24'),
(8, 8, 'in process', 'none', '2022-05-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03'),
(13, 10, 'in process', 'Sausnya sesuai request', '2022-06-17 07:38:30'),
(14, 11, 'closed', 'Terkirim', '2022-06-17 07:40:57'),
(15, 18, 'in process', 'tunggu', '2022-06-20 06:47:24'),
(16, 20, 'in process', 'wait', '2022-06-20 06:48:57'),
(17, 23, 'closed', 'Selamat menikmati', '2022-06-20 07:04:16'),
(18, 26, 'closed', 'Selamat menikmati', '2022-06-20 08:12:26'),
(19, 27, 'closed', 'Selamat menikmati', '2022-06-20 08:17:36'),
(20, 28, 'closed', 'Selamat menikmati', '2022-06-20 08:17:55'),
(21, 29, 'closed', 'Selamat menikmati', '2022-06-20 08:20:41'),
(22, 30, 'closed', 'Selamat menikmati', '2022-06-20 09:04:17'),
(23, 31, 'closed', 'Selamat menikmati', '2022-06-20 09:04:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 3, 'Barabutter Indihiang', 'barabutter@gmail.com', '081646934001', 'barabutter.id', '9am', '8pm', '24hr-x7', '   Jln. Sukarindik No.3b Panyingkiran, Kec. Indihiang, Kab. Tasikmalaya   ', '62aeacc751886.png', '2022-06-19 04:57:43'),
(2, 1, 'Barabutter Siliwangi', 'barabutter@gmail.com', '081646934001', 'barabutter.id', '9am', '8pm', '24hr-x7', '  Jln. Siliwangi (Lampu merah BKR)  ', '62aeac24b5fb9.png', '2022-06-19 04:55:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Barabutter Unsil', '2022-06-18 02:38:24'),
(3, 'Barabutter Indihiang', '2022-06-18 02:38:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'nisrina', 'Nisrina', 'Nurhasna', 'nisrinnnna@gmail.com', '+6283829401548', 'e10adc3949ba59abbe56e057f20f883e', 'Ciamis', 1, '2022-06-20 08:14:51'),
(2, 'Anggi Putri Meriani', 'Anggi Putri', 'Meriani', 'Anggipm09@gmail.com', '082126610709', 'e10adc3949ba59abbe56e057f20f883e', 'Tasikmalaya', 1, '2022-06-20 08:14:51'),
(10, 'sitiannisa', 'Siti', 'Annisa', 'sitiannisa05@gmail.com', '+6283829401548', 'e10adc3949ba59abbe56e057f20f883e', 'Jln. Gunung Roay 1 No.38', 1, '2022-06-20 08:16:25'),
(11, 'fannisaand', 'Fannisa', 'Andari', 'fannisaandari@gmail.com', '+6283829401548', 'e10adc3949ba59abbe56e057f20f883e', 'Jln. Winaya, Tawang no.05 ', 1, '2022-06-20 08:19:41'),
(12, 'aisyawys', 'Aisya', 'WYS', 'aisyawys@gmail.com', '+6283829401548', 'e10adc3949ba59abbe56e057f20f883e', 'Jln. Panyingkiran No.203 (Gerbang rumah warna hijau)', 1, '2022-06-20 09:02:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` varchar(24) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(23, 7, 'Tiramisu Toast', 1, '18.000', 'closed', '2022-06-20 07:04:16'),
(26, 7, 'Croffle Nine', 1, '68.000', 'closed', '2022-06-20 08:12:26'),
(27, 10, 'Croffle Nine', 1, '68.000', 'closed', '2022-06-20 08:17:36'),
(28, 10, 'Tiramisu Toast', 1, '18.000', 'closed', '2022-06-20 08:17:55'),
(29, 11, 'Bundling Couple 1', 1, '72.000', 'closed', '2022-06-20 08:20:41'),
(30, 12, 'Bara Kopi Awan', 1, '20.000', 'closed', '2022-06-20 09:04:17'),
(31, 12, 'Sweet Toast Matcha', 1, '15.000', 'closed', '2022-06-20 09:04:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indeks untuk tabel `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indeks untuk tabel `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indeks untuk tabel `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indeks untuk tabel `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
