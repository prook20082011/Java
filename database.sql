-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 06:15 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `bacluong`
--

CREATE TABLE `bacluong` (
  `mabl` int(11) NOT NULL,
  `bacluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bacluong`
--

INSERT INTO `bacluong` (`mabl`, `bacluong`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `macv` varchar(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `chucvu` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chucvu`
--

INSERT INTO `chucvu` (`macv`, `chucvu`) VALUES
('GD', 'Giám đốc'),
('NV', 'Nhân viên'),
('PP', 'Phó phòng'),
('TP', 'Trưởng phòng');

-- --------------------------------------------------------

--
-- Table structure for table `chuyenmon`
--

CREATE TABLE `chuyenmon` (
  `macm` char(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `chuyenmon` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chuyenmon`
--

INSERT INTO `chuyenmon` (`macm`, `chuyenmon`) VALUES
('CNTT', 'Công nghệ thông tin'),
('KT', 'Kế toán');

-- --------------------------------------------------------

--
-- Table structure for table `dantoc`
--

CREATE TABLE `dantoc` (
  `madt` int(5) NOT NULL,
  `dantoc` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dantoc`
--

INSERT INTO `dantoc` (`madt`, `dantoc`) VALUES
(1, 'Mông'),
(2, 'Mèo');

-- --------------------------------------------------------

--
-- Table structure for table `giadinh`
--

CREATE TABLE `giadinh` (
  `magd` int(5) NOT NULL,
  `giadinh` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `giadinh`
--

INSERT INTO `giadinh` (`magd`, `giadinh`) VALUES
(1, 'Thương binh'),
(2, 'Liệt sĩ');

-- --------------------------------------------------------

--
-- Table structure for table `hopdong`
--

CREATE TABLE `hopdong` (
  `mahd` char(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `loaihd` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hopdong`
--

INSERT INTO `hopdong` (`mahd`, `loaihd`) VALUES
('DH', 'Dài hạn'),
('NH', 'Ngắn hạn');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` char(15) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `maphong` char(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `macv` char(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `matd` char(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `macm` char(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `noisinh` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `cmnd` varchar(12) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `magd` int(5) NOT NULL,
  `madt` int(5) NOT NULL,
  `matg` int(5) NOT NULL,
  `quequan` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `choo` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `dt` char(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `phucap` double NOT NULL,
  `ngayhd` date NOT NULL,
  `ngaybd` date NOT NULL,
  `ngaykt` date NOT NULL,
  `gioitinh` varchar(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `mahd` char(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `mabl` int(11) NOT NULL,
  `hinhanh` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `hoten`, `maphong`, `macv`, `matd`, `macm`, `noisinh`, `ngaysinh`, `cmnd`, `magd`, `madt`, `matg`, `quequan`, `choo`, `dt`, `phucap`, `ngayhd`, `ngaybd`, `ngaykt`, `gioitinh`, `mahd`, `mabl`, `hinhanh`) VALUES
('111', '1111', 'KT', 'PP', 'DH', 'KT', 'd?dd', '2010-01-01', 'd?a', 1, 1, 1, '??', 'dad', 'dâd', 123, '2010-01-01', '2010-01-01', '2010-01-01', 'N?', 'NH', 2, NULL),
('12345', '1234', 'KD', 'PP', 'DH', 'KT', '2131313', '2010-01-01', '312312313', 1, 1, 1, '311313', '1313131', '123131', 23131312, '2010-01-01', '2010-01-01', '2010-01-01', '1', 'DH', 2, NULL),
('2222', '2222', 'KD', 'NV', 'CD', 'KT', '?â', '2010-01-01', 'dâdad', 1, 1, 1, 'd?dd', '?ad', '??', 111, '2010-01-01', '2010-01-01', '2010-01-01', 'N?', 'NH', 2, NULL),
('bbbbb', 'bbbbbb', 'KT', 'NV', 'CD', 'CNTT', 'dâda', '2010-01-01', '23131', 1, 1, 1, '131', '321321', '3131', 123, '2010-01-01', '2010-01-01', '2010-01-01', 'N?', 'DH', 2, NULL),
('dawadw', 'wda', 'KT', 'NV', 'DH', 'KT', 'dwa', '2010-01-01', 'dadwa', 1, 1, 1, 'dwadadwa', 'daw', 'dwaadada', 3213, '2010-01-01', '2010-01-01', '2010-01-01', 'Nam ', 'NH', 2, NULL),
('gggggg', 'gggg', 'KT', 'NV', 'CD', 'KT', 'ggggg', '2010-01-01', '12313', 1, 1, 1, '3131', '31313', '1313313', 31313, '2010-01-01', '2010-01-01', '2010-01-01', 'N?', 'NH', 2, NULL),
('hhhh', 'hhhh', 'KT', 'GD', 'DH', 'KT', 'daddad', '2010-01-01', '133131', 1, 1, 1, '213', '313131', '1313131', 312313, '2010-01-01', '2010-01-01', '2010-01-01', 'Nam ', 'NH', 2, NULL),
('jjjjjjjjjjj', 'jjjjjjj', 'KT', 'GD', 'DH', 'KT', '31313131', '2010-01-01', '3131313131', 1, 1, 1, '3131313', '13131', '32131313', 31231, '2010-01-01', '2010-01-01', '2010-01-01', 'Nam ', 'NH', 2, NULL),
('kkkkk', 'kkk', 'KT', 'NV', 'DH', 'KT', '31211', '2010-01-01', '3123131313', 1, 1, 1, '3312313', '1311', '23131', 313131, '2010-01-01', '2010-01-01', '2010-01-01', 'Nam ', 'NH', 2, NULL),
('NV001', '', 'KD', 'TP', 'DH', 'CNTT', 'abc,xyz', '2019-01-01', '1111111111', 1, 1, 1, '24/21 lê văn lương, q7 tphcm', '24/21 lê văn lương, q7 tphcm', '000000000', 1111111, '2019-01-01', '2019-01-01', '2019-01-01', '1', 'DH', 1, NULL),
('NV002', '', 'KD', 'NV', 'CD', 'CNTT', 'abc,xyz', '2019-01-02', '1111111111', 1, 2, 2, 'đuawdwdưadadawdwa', 'dădawdwadadadawdwdadw', '2222222222', 1111111, '2019-01-02', '2019-01-10', '2019-01-08', '3', 'NH', 2, NULL),
('nv003', 'dwadwad daawa', 'KD', 'PP', 'DH', 'KT', 'addadaaa', '2010-01-01', '213113', 1, 1, 1, 'dadadadaw', '2dadada', '131232131', 23313213, '2010-01-01', '2010-01-01', '2010-01-01', '1', 'DH', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phongban`
--

CREATE TABLE `phongban` (
  `maphong` char(3) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `tenphong` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`maphong`, `tenphong`) VALUES
('KD', 'Kinh doanh'),
('KT', 'Kế toán');

-- --------------------------------------------------------

--
-- Table structure for table `tongiao`
--

CREATE TABLE `tongiao` (
  `matg` int(5) NOT NULL,
  `tongiao` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tongiao`
--

INSERT INTO `tongiao` (`matg`, `tongiao`) VALUES
(1, 'Phật'),
(2, 'Cao đài');

-- --------------------------------------------------------

--
-- Table structure for table `trinhdo`
--

CREATE TABLE `trinhdo` (
  `matd` char(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `trinhdo` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trinhdo`
--

INSERT INTO `trinhdo` (`matd`, `trinhdo`) VALUES
('CD', 'Cao đẳng'),
('DH', 'Đại học');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bacluong`
--
ALTER TABLE `bacluong`
  ADD PRIMARY KEY (`mabl`);

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`macv`);

--
-- Indexes for table `chuyenmon`
--
ALTER TABLE `chuyenmon`
  ADD PRIMARY KEY (`macm`);

--
-- Indexes for table `dantoc`
--
ALTER TABLE `dantoc`
  ADD PRIMARY KEY (`madt`);

--
-- Indexes for table `giadinh`
--
ALTER TABLE `giadinh`
  ADD PRIMARY KEY (`magd`);

--
-- Indexes for table `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`mahd`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`),
  ADD KEY `madt` (`madt`),
  ADD KEY `magt` (`gioitinh`),
  ADD KEY `macv` (`macv`),
  ADD KEY `macm` (`macm`),
  ADD KEY `magd` (`magd`),
  ADD KEY `mahd` (`mahd`),
  ADD KEY `maphong` (`maphong`),
  ADD KEY `matd` (`matd`),
  ADD KEY `matg` (`matg`),
  ADD KEY `mabl` (`mabl`);

--
-- Indexes for table `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`maphong`);

--
-- Indexes for table `tongiao`
--
ALTER TABLE `tongiao`
  ADD PRIMARY KEY (`matg`);

--
-- Indexes for table `trinhdo`
--
ALTER TABLE `trinhdo`
  ADD PRIMARY KEY (`matd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bacluong`
--
ALTER TABLE `bacluong`
  MODIFY `mabl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dantoc`
--
ALTER TABLE `dantoc`
  MODIFY `madt` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `giadinh`
--
ALTER TABLE `giadinh`
  MODIFY `magd` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tongiao`
--
ALTER TABLE `tongiao`
  MODIFY `matg` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`madt`) REFERENCES `dantoc` (`madt`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvien_ibfk_10` FOREIGN KEY (`mabl`) REFERENCES `bacluong` (`mabl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`macv`) REFERENCES `chucvu` (`macv`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvien_ibfk_4` FOREIGN KEY (`macm`) REFERENCES `chuyenmon` (`macm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvien_ibfk_5` FOREIGN KEY (`magd`) REFERENCES `giadinh` (`magd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvien_ibfk_6` FOREIGN KEY (`mahd`) REFERENCES `hopdong` (`mahd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvien_ibfk_7` FOREIGN KEY (`maphong`) REFERENCES `phongban` (`maphong`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvien_ibfk_8` FOREIGN KEY (`matd`) REFERENCES `trinhdo` (`matd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nhanvien_ibfk_9` FOREIGN KEY (`matg`) REFERENCES `tongiao` (`matg`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
