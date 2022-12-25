-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 21, 2022 at 11:33 AM
-- Server version: 8.0.31-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `COFFEE`
--

-- --------------------------------------------------------

--
-- Table structure for table `LOAICAPHE`
--

CREATE TABLE `LOAICAPHE` (
  `id` int NOT NULL,
  `tencaphe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `gia` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `LOAICAPHE`
--

INSERT INTO `LOAICAPHE` (`id`, `tencaphe`, `hinhanh`, `gia`) VALUES
(1, 'Cà phê sữa đá', 'caphesua.png', 20000),
(2, 'Cà Phê Rang Xay Original 1 250g', 'capherangxay.jpg', 60000),
(3, 'Cà phê sữa nóng', 'caphesuannong.jpg', 35000),
(4, 'Caramel Macchiato Đá', 'caramel.jpg', 49000),
(5, 'Cà Phê Đen Đá', 'caphedenda.jpg', 29000),
(6, 'Cold Brew Sữa Tươi', 'coldbrewsuatuoi.jpg', 45000),
(7, 'Latte Đá', 'latteda.jpg', 49000),
(8, 'CloudFee Caramel', 'cloudfeecaramel.jpg', 49000),
(9, 'CloudTea Very Berry Mochi', 'chococloudmochi.jpg', 69000),
(10, 'CloudTea S’more Choco Marshmallow', 'chococloudtea.jpg', 69000),
(11, 'The Coffee House Sữa Đá', 'tchsuada.jpg', 39000);

-- --------------------------------------------------------

--
-- Table structure for table `NGUOIDUNG`
--

CREATE TABLE `NGUOIDUNG` (
  `id` int NOT NULL,
  `tendangnhap` varchar(255) DEFAULT NULL,
  `matkhau` varchar(255) DEFAULT NULL,
  `loaiquyen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `NGUOIDUNG`
--

INSERT INTO `NGUOIDUNG` (`id`, `tendangnhap`, `matkhau`, `loaiquyen`) VALUES
(1, 'tien', '827ccb0eea8a706c4c34a16891f84e7b', 'ADMIN'),
(2, 'vy', '827ccb0eea8a706c4c34a16891f84e7b', 'KHACH'),
(3, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'KHACH');

-- --------------------------------------------------------

--
-- Table structure for table `ORDER`
--

CREATE TABLE `ORDER` (
  `id` int NOT NULL,
  `idnguoidung` int DEFAULT NULL,
  `idloaicaphe` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `gia` int DEFAULT NULL,
  `thanhtien` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ORDER`
--

INSERT INTO `ORDER` (`id`, `idnguoidung`, `idloaicaphe`, `soluong`, `gia`, `thanhtien`) VALUES
(1, 1, 1, 1, 300000, 300000),
(2, 2, 7, 1, 49000, 49000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `LOAICAPHE`
--
ALTER TABLE `LOAICAPHE`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `NGUOIDUNG`
--
ALTER TABLE `NGUOIDUNG`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ORDER`
--
ALTER TABLE `ORDER`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idloaicaphe` (`idloaicaphe`) USING BTREE,
  ADD KEY `idnguoidung` (`idnguoidung`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `LOAICAPHE`
--
ALTER TABLE `LOAICAPHE`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `NGUOIDUNG`
--
ALTER TABLE `NGUOIDUNG`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ORDER`
--
ALTER TABLE `ORDER`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ORDER`
--
ALTER TABLE `ORDER`
  ADD CONSTRAINT `idcaphe_fk_1` FOREIGN KEY (`idloaicaphe`) REFERENCES `LOAICAPHE` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idnguoidung_fk_1` FOREIGN KEY (`idnguoidung`) REFERENCES `NGUOIDUNG` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
