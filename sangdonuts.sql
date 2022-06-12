-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2022 at 08:29 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sangdonuts`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Yeni Q Aini', 'Jember', '2022-06-10 20:54:15', '2022-06-11 20:54:15'),
(2, 'Yeni Q Aini', 'Jember', '2022-06-10 21:04:02', '2022-06-11 21:04:02'),
(3, 'Yeni Q Aini', 'Jember', '2022-06-10 21:05:52', '2022-06-11 21:05:52'),
(4, 'pina', 'Jember', '2022-06-10 21:06:42', '2022-06-11 21:06:42'),
(5, 'yudha', 'Jember', '2022-06-10 21:20:45', '2022-06-11 21:20:45'),
(6, 'yudha', 'Jember', '2022-06-10 22:34:17', '2022-06-11 22:34:17'),
(7, 'yudha', 'Jember', '2022-06-10 22:35:01', '2022-06-11 22:35:01'),
(8, 'yudha', 'Jember', '2022-06-10 23:00:36', '2022-06-11 23:00:36'),
(9, 'Yeni Q Aini', 'Jember', '2022-06-11 14:29:22', '2022-06-12 14:29:22'),
(10, 'pina', 'Jember', '2022-06-11 14:31:41', '2022-06-12 14:31:41'),
(11, 'Yuda ', 'Jember', '2022-06-11 23:17:56', '2022-06-12 23:17:56'),
(12, 'pina', 'Jember', '2022-06-11 23:50:23', '2022-06-12 23:50:23'),
(13, '', '', '2022-06-12 01:12:13', '2022-06-13 01:12:13'),
(14, 'Yeni Q Aini', 'Jember', '2022-06-12 01:20:35', '2022-06-13 01:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `tb_item`
--

CREATE TABLE `tb_item` (
  `id_item` int(11) NOT NULL,
  `nama_item` varchar(150) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_item`
--

INSERT INTO `tb_item` (`id_item`, `nama_item`, `keterangan`, `menu`, `harga`, `gambar`) VALUES
(12, 'Blue Donuts ', 'Donat dengan Topping Vanilla Blue', 'Makanan', 7000, 'a.jpg'),
(13, 'Choco Donuts', 'Donat dengan Topping Full Coklat', 'Makanan', 8000, 'b.jpg'),
(14, 'Pink Donuts', 'Donat Topping Strawbery dan Misis', 'Makanan', 7000, 'c.jpg'),
(15, 'Vanilla Milk Donuts', 'Donat dengan Topping Susu Vanilla', 'Makanan', 8000, 'd.jpg'),
(16, 'Chocolate Donuts', 'Donat Topping Coklat dan Misis', 'Makanan', 7000, 'e.jpg'),
(17, 'Vanilla Donuts', 'Donuts Topping Susu dan Misis', 'Makanan', 7000, 'f.jpg'),
(18, 'Candy Donuts ', 'Donat Topping Cream Strawberry', 'Makanan', 8000, 'g.jpg'),
(19, 'Creamy Donuts', 'Donat dengan Topping Cream ', 'Makanan', 7000, 'h.jpg'),
(20, 'Rainbow Cake', 'Cake Pelangi Topping Cream', 'Makanan', 15000, 'i.jpg'),
(21, 'Strawberry Cake', 'Cake Topping Cream Strawberry', 'Makanan', 12000, 'j.jpg'),
(22, 'Blackforest Cake', 'Cake Coklat Rasa Blackforest ', 'Makanan', 10000, 'k.jpg'),
(23, 'Vanilla Choco Cake', 'Cake Coklat dan Vanilla', 'Makanan', 12000, 'l.jpg'),
(24, 'Matcha Cake', 'Cake dengan Topping Matcha', 'Makanan', 15000, 'm.jpg'),
(25, 'Red Velvet Cake', 'Cake dengan Rasa Cream Red Velvet', 'Makanan', 15000, 'n.jpg'),
(26, 'Choco Milk Cake', 'Cake Rasa Coklat Susu', 'Makanan', 13000, 'o.jpg'),
(27, 'Choco Berry Cake', 'Cake Coklat dengan Cream Strawbery', 'Makanan', 13000, 'p.jpg'),
(28, 'Mango Bubble Ice', 'Ice Bubble Rasa Mangga ', 'Minuman', 6000, 'q.jpg'),
(31, 'Watermelon Bubble Ice', 'Ice Bubble Rasa Semangka ', 'Minuman', 6000, 'r1.jpg'),
(32, 'Choco Bubble Ice', 'Ice Bubble Rasa Coklat ', 'Minuman', 8000, 's.jpg'),
(33, 'Matcha Bubble Ice', 'Ice Bubble Rasa Matcha ', 'Minuman', 7000, 't.jpg'),
(34, 'Taro Bubble Ice', 'Ice Bubble Rasa Taro ', 'Minuman', 6000, 'u.jpg'),
(36, 'Milk Tea Bubble Ice', 'Ice Bubble Rasa Milk Tea ', 'Minuman', 7000, 'v1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 2, 1, 'donut', 2, 5000, ''),
(2, 2, 3, 'pancake', 1, 6000, ''),
(3, 3, 1, 'donut', 2, 5000, ''),
(4, 3, 3, 'pancake', 1, 6000, ''),
(5, 4, 1, 'donut', 3, 5000, ''),
(6, 4, 3, 'pancake', 2, 6000, ''),
(7, 5, 1, 'donut', 1, 5000, ''),
(8, 5, 3, 'pancake', 1, 6000, ''),
(9, 7, 1, 'donut', 2, 5000, ''),
(10, 7, 3, 'pancake', 1, 6000, ''),
(11, 7, 0, 'kue pisang', 1, 7500, ''),
(12, 9, 0, 'Pink Donuts ', 6, 4000, ''),
(13, 10, 5, 'Chocolate Donuts Original ', 1, 4000, ''),
(14, 10, 3, 'Chocolate Donuts', 1, 5000, ''),
(15, 10, 4, 'Blue Donuts', 1, 4000, ''),
(16, 10, 10, 'Ice Chocolate', 1, 5000, ''),
(17, 11, 12, 'Blue Donuts ', 1, 7000, ''),
(18, 11, 20, 'Rainbow Cake', 1, 15000, ''),
(19, 11, 24, 'Matcha Cake', 1, 15000, ''),
(20, 11, 33, 'Matcha Bubble Ice', 1, 7000, ''),
(21, 12, 31, 'Watermelon Bubble Ice', 1, 6000, ''),
(22, 12, 15, 'Vanilla Milk Donuts', 1, 8000, ''),
(23, 12, 36, 'Milk Tea Bubble Ice', 1, 7000, ''),
(24, 13, 12, 'Blue Donuts ', 1, 7000, ''),
(25, 13, 13, 'Choco Donuts', 1, 8000, ''),
(26, 13, 14, 'Pink Donuts', 1, 7000, ''),
(27, 13, 25, 'Red Velvet Cake', 1, 15000, ''),
(28, 13, 32, 'Choco Bubble Ice', 1, 8000, ''),
(29, 14, 12, 'Blue Donuts ', 1, 7000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_item`
--
ALTER TABLE `tb_item`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_item`
--
ALTER TABLE `tb_item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
