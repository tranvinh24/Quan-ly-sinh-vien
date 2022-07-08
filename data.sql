-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 08, 2022 lúc 10:19 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlsv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `canhcao`
--

CREATE TABLE `canhcao` (
  `SoBanGhi` int(11) NOT NULL,
  `MaSV` int(11) NOT NULL,
  `HocKy` int(11) NOT NULL,
  `LyDo` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `canhcao`
--

INSERT INTO `canhcao` (`SoBanGhi`, `MaSV`, `HocKy`, `LyDo`) VALUES
(1, 2019604014, 4, 'Điểm TBC học kỳ không đạt. '),
(2, 2019604018, 4, 'Điểm TBC học kỳ không đạt. '),
(3, 2019604026, 4, 'Điểm TBC học kỳ không đạt. '),
(4, 2019604009, 4, 'Điểm TBC học kỳ không đạt. '),
(5, 2019604031, 1, 'Điểm TBC học kỳ không đạt. '),
(6, 2019604009, 1, 'Điểm TBC học kỳ không đạt. '),
(7, 2019604007, 1, 'Điểm TBC học kỳ không đạt. '),
(8, 2019604001, 1, 'Điểm TBC học kỳ không đạt. '),
(9, 2019604022, 1, 'Điểm TBC học kỳ không đạt. '),
(10, 2019604021, 1, 'Điểm TBC học kỳ không đạt. '),
(11, 2019604030, 1, 'Điểm TBC học kỳ không đạt. '),
(12, 2019604018, 2, 'Điểm TBC học kỳ không đạt. '),
(13, 2019604010, 2, 'Điểm TBC học kỳ không đạt. '),
(14, 2019604003, 3, 'Điểm TBC học kỳ không đạt. ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diem`
--

CREATE TABLE `diem` (
  `SoBanGhi` int(11) NOT NULL,
  `MaSV` int(11) NOT NULL,
  `TBCHocKy` float NOT NULL,
  `DiemRL` int(11) NOT NULL,
  `TongTCHK` int(11) NOT NULL,
  `HocKy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diem`
--

INSERT INTO `diem` (`SoBanGhi`, `MaSV`, `TBCHocKy`, `DiemRL`, `TongTCHK`, `HocKy`) VALUES
(1, 2019604001, 1.01, 82, 12, 1),
(2, 2019604002, 2.39, 46, 12, 1),
(3, 2019604003, 2.62, 66, 12, 1),
(4, 2019604004, 2.09, 93, 12, 1),
(5, 2019604005, 1.33, 92, 12, 1),
(6, 2019604006, 2.91, 61, 12, 1),
(7, 2019604007, 1.03, 40, 12, 1),
(8, 2019604008, 2.56, 93, 12, 1),
(9, 2019604009, 1.04, 84, 12, 1),
(10, 2019604010, 2.18, 59, 12, 1),
(11, 2019604011, 3.1, 47, 12, 1),
(12, 2019604012, 1.54, 72, 12, 1),
(13, 2019604013, 2.78, 55, 12, 1),
(14, 2019604014, 1.83, 97, 12, 1),
(15, 2019604015, 2.82, 67, 12, 1),
(16, 2019604016, 1.64, 76, 12, 1),
(17, 2019604017, 3.44, 41, 12, 1),
(18, 2019604018, 2.72, 61, 12, 1),
(19, 2019604019, 2.69, 78, 12, 1),
(20, 2019604020, 1.93, 45, 12, 1),
(21, 2019604021, 0.87, 41, 12, 1),
(22, 2019604022, 0.96, 61, 12, 1),
(23, 2019604023, 3, 47, 12, 1),
(24, 2019604024, 1.83, 43, 12, 1),
(25, 2019604025, 1.49, 76, 12, 1),
(26, 2019604026, 3.03, 60, 12, 1),
(27, 2019604027, 2.98, 76, 12, 1),
(28, 2019604028, 3.98, 50, 12, 1),
(29, 2019604029, 3, 45, 12, 1),
(30, 2019604030, 0.85, 77, 12, 1),
(31, 2019604031, 1.14, 83, 12, 1),
(32, 2019604032, 2.05, 73, 12, 1),
(33, 2019604033, 3.82, 94, 12, 1),
(34, 2019604001, 2.21, 49, 19, 2),
(35, 2019604002, 2.46, 64, 19, 2),
(36, 2019604003, 3.59, 70, 19, 2),
(37, 2019604004, 1.94, 74, 19, 2),
(38, 2019604005, 2.01, 95, 19, 2),
(39, 2019604006, 1.97, 69, 19, 2),
(40, 2019604007, 2.44, 65, 19, 2),
(41, 2019604008, 2.05, 90, 19, 2),
(42, 2019604009, 2.41, 61, 19, 2),
(43, 2019604010, 0.97, 84, 19, 2),
(44, 2019604011, 1.27, 56, 19, 2),
(45, 2019604012, 2.15, 79, 19, 2),
(46, 2019604013, 2.24, 58, 19, 2),
(47, 2019604014, 2.36, 71, 19, 2),
(48, 2019604015, 3.03, 88, 19, 2),
(49, 2019604016, 3.38, 85, 19, 2),
(50, 2019604017, 3.93, 66, 19, 2),
(51, 2019604018, 1.13, 45, 19, 2),
(52, 2019604019, 1.28, 71, 19, 2),
(53, 2019604020, 2.18, 60, 19, 2),
(54, 2019604021, 3.91, 64, 19, 2),
(55, 2019604022, 2.56, 49, 19, 2),
(56, 2019604023, 3.23, 45, 19, 2),
(57, 2019604024, 2.09, 90, 19, 2),
(58, 2019604025, 1.52, 78, 19, 2),
(59, 2019604026, 2.05, 95, 19, 2),
(60, 2019604027, 1.72, 59, 19, 2),
(61, 2019604028, 3.28, 95, 19, 2),
(62, 2019604029, 2.62, 56, 19, 2),
(63, 2019604030, 3.85, 56, 19, 2),
(64, 2019604031, 3.89, 77, 19, 2),
(65, 2019604032, 2.81, 49, 19, 2),
(66, 2019604033, 1.32, 72, 19, 2),
(67, 2019604001, 3.07, 58, 14, 3),
(68, 2019604002, 2.05, 85, 14, 3),
(69, 2019604003, 1.04, 68, 14, 3),
(70, 2019604004, 1.3, 99, 14, 3),
(71, 2019604005, 3.66, 77, 14, 3),
(72, 2019604006, 3.22, 45, 14, 3),
(73, 2019604007, 1.31, 55, 14, 3),
(74, 2019604008, 3.54, 49, 14, 3),
(75, 2019604009, 2.59, 42, 14, 3),
(76, 2019604010, 1.9, 58, 14, 3),
(77, 2019604011, 3.27, 62, 14, 3),
(78, 2019604012, 3.84, 97, 14, 3),
(79, 2019604013, 3.4, 42, 14, 3),
(80, 2019604014, 1.4, 83, 14, 3),
(81, 2019604015, 3.07, 71, 14, 3),
(82, 2019604016, 3, 88, 14, 3),
(83, 2019604017, 3.96, 69, 14, 3),
(84, 2019604018, 2.71, 94, 14, 3),
(85, 2019604019, 3.76, 51, 14, 3),
(86, 2019604020, 1.89, 57, 14, 3),
(87, 2019604021, 1.46, 51, 14, 3),
(88, 2019604022, 1.2, 40, 14, 3),
(89, 2019604023, 3.03, 87, 14, 3),
(90, 2019604024, 3.02, 54, 14, 3),
(91, 2019604025, 1.85, 88, 14, 3),
(92, 2019604026, 2.96, 81, 14, 3),
(93, 2019604027, 2.77, 66, 14, 3),
(94, 2019604028, 1.95, 94, 14, 3),
(95, 2019604029, 1.66, 63, 14, 3),
(96, 2019604030, 1.47, 62, 14, 3),
(97, 2019604031, 2.3, 73, 14, 3),
(98, 2019604032, 2.55, 58, 14, 3),
(99, 2019604033, 3.24, 88, 14, 3),
(100, 2019604001, 2.96, 44, 17, 4),
(101, 2019604002, 1.45, 41, 17, 4),
(102, 2019604003, 3.09, 96, 17, 4),
(103, 2019604004, 2, 90, 17, 4),
(104, 2019604005, 1.48, 48, 17, 4),
(105, 2019604006, 1.49, 68, 17, 4),
(106, 2019604007, 1.54, 100, 17, 4),
(107, 2019604008, 3.16, 64, 17, 4),
(108, 2019604009, 0.81, 83, 17, 4),
(109, 2019604010, 3.87, 46, 17, 4),
(110, 2019604011, 2.85, 59, 17, 4),
(111, 2019604012, 2.96, 53, 17, 4),
(112, 2019604013, 3.79, 50, 17, 4),
(113, 2019604014, 1.13, 98, 17, 4),
(114, 2019604015, 1.3, 62, 17, 4),
(115, 2019604016, 3.05, 97, 17, 4),
(116, 2019604017, 1.93, 73, 17, 4),
(117, 2019604018, 1.08, 50, 17, 4),
(118, 2019604019, 2.28, 90, 17, 4),
(119, 2019604020, 3.01, 53, 17, 4),
(120, 2019604021, 3.16, 71, 17, 4),
(121, 2019604022, 1.24, 74, 17, 4),
(122, 2019604023, 1.67, 55, 17, 4),
(123, 2019604024, 2.68, 72, 17, 4),
(124, 2019604025, 1.81, 55, 17, 4),
(125, 2019604026, 0.98, 43, 17, 4),
(126, 2019604027, 3.2, 77, 17, 4),
(127, 2019604028, 3.04, 49, 17, 4),
(128, 2019604029, 2.79, 50, 17, 4),
(129, 2019604030, 1.97, 72, 17, 4),
(130, 2019604031, 3.91, 64, 17, 4),
(131, 2019604032, 1.2, 43, 17, 4),
(132, 2019604033, 1.25, 44, 17, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gvcn`
--

CREATE TABLE `gvcn` (
  `MaGV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenGV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gvcn`
--

INSERT INTO `gvcn` (`MaGV`, `TenGV`, `SDT`, `Email`) VALUES
('GV01', 'Đặng Thị Nhung', '0987654321', 'nhungdang@gmail.com'),
('GV02', 'Đỗ Duy Tuân', '0376541289', 'duytuan21@gmail.com'),
('GV03', 'Nguyễn Thành Đạt', '0379865412', 'thanhdat@gmail.com'),
('GV04', 'Đỗ Đình Đức', '0932145687', 'ducdinhdo@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `MaKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`MaKhoa`, `TenKhoa`, `MoTa`) VALUES
('COKHI', 'Cơ khí', 'Không'),
('DIEN', 'Khoa Điện', 'Không'),
('IT', 'Công nghệ thông tin', 'Không'),
('OTO', 'Công nghệ ô tô', 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `MaLop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenLop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaNganh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaGV` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`MaLop`, `TenLop`, `MaNganh`, `MaGV`) VALUES
('CK01', 'Công nghệ kỹ thuật cơ khí 1', '7510201', 'GV03'),
('CNTT01', 'Công nghệ thông tin 1', 'CNTT', 'GV01'),
('CNTT02', 'Công nghệ thông tin 2', 'CNTT', 'GV01'),
('DIEN01', 'Kỹ thuật điện 1', '7510301', 'GV02'),
('DIEN02', 'Kỹ thuật điện 2', '7510301', 'GV02'),
('HTTT01', 'Hệ thông thông tin 1', 'HTTT', 'GV01'),
('KHMT01', 'Khoa học máy tính 1', 'KHMT', 'GV01'),
('KHMT02', 'Khoa học máy tính 2', 'KHMT', 'GV01'),
('KTPM01', 'Kỹ thuật phần mềm 1', 'KTPM', 'GV01'),
('OTO1', 'Công nghệ ô tô 1', '7510205', 'GV04'),
('OTO2', 'Công nghệ ô tô 2', '7510205', 'GV04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh`
--

CREATE TABLE `nganh` (
  `MaNganh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenNganh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nganh`
--

INSERT INTO `nganh` (`MaNganh`, `TenNganh`, `MaKhoa`) VALUES
('7510201', 'Công nghệ kỹ thuật cơ khí', 'COKHI'),
('7510205', 'Công nghệ kỹ thuật ô tô', 'OTO'),
('7510301', 'Công nghệ kỹ thuật điện, điện tử', 'DIEN'),
('CNTT', 'Công nghệ thông tin', 'IT'),
('HTTT', 'Hệ thống thông tin', 'IT'),
('KHMT', 'Khoa học máy tính', 'IT'),
('KTPM', 'Kỹ thuật phần mềm', 'IT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` int(11) NOT NULL,
  `TenSV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `QueQuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DanToc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TonGiao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoCMT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiCapCMT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Email` text COLLATE utf8_unicode_ci NOT NULL,
  `DoiTuongMG` int(11) NOT NULL,
  `MaLop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaNganh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`MaSV`, `TenSV`, `GioiTinh`, `NgaySinh`, `QueQuan`, `DanToc`, `TonGiao`, `SoCMT`, `NoiCapCMT`, `SDT`, `Email`, `DoiTuongMG`, `MaLop`, `MaNganh`) VALUES
(2019604001, 'Nguyễn Thị Hồng Anh', 'Nữ', '2001-11-21', 'Lạng Sơn', 'Kinh', 'Không', '034201007001', 'Lạng Sơn', '0326760976', 'honganh2001@gmail.com', 0, 'CNTT01', 'CNTT'),
(2019604002, 'Trần Ngọc Anh', 'Nam', '2001-09-21', 'Bắc Ninh', 'Kinh', 'Không', '034201007002', 'Bắc Ninh', '0914817819', 'tranngocanh21092001@gmail.com', 0, 'CNTT01', 'CNTT'),
(2019604003, 'Phạm Bá Chiên', 'Nam', '2001-04-30', 'Hải Dương', 'Kinh', 'Không', '034201007003', 'Hải Dương', '0888736149', 'langtu2k1@gmail.com', 0, 'CNTT01', 'CNTT'),
(2019604004, 'Trịnh Quý Công', 'Nam', '2001-01-03', 'Hà Nội', 'Kinh', 'Không', '034201007004', 'Hà Nội', '0342219200', 'trinhquycong@gmail.com', 0, 'CNTT02', 'CNTT'),
(2019604005, 'Ngô Quốc Đại', 'Nam', '2001-11-03', 'Bắc Ninh', 'Kinh', 'Không', '034201007005', 'Bắc Ninh', '0385898793', 'ngodaibg2001@gmail.com', 1, 'CNTT02', 'CNTT'),
(2019604006, 'Nguyễn Văn Đạt', 'Nam', '2001-07-10', 'Thái Bình', 'Kinh', 'Không', '034201007006', 'Thái Bình', '0333627741', 'dnguyenvan344@gmail.com', 0, 'CNTT02', 'CNTT'),
(2019604007, 'Lương Cao Đức', 'Nam', '2001-04-25', 'Hải Phòng', 'Kinh', 'Không', '034201007007', 'Hải Phòng', '0936644059', 'luongduc0401@gmail.com', 0, 'HTTT01', 'HTTT'),
(2019604008, 'Phí Đức Dũng', 'Nam', '2001-12-17', 'Hà Nội', 'Kinh', 'Không', '034201007008', 'Hà Nội', '0584742620', 'đucung171201@gmail.com', 0, 'HTTT01', 'HTTT'),
(2019604009, 'Đào Xuân Dương', 'Nam', '2001-09-11', 'Bắc Ninh', 'Kinh', 'Không', '034201007009', 'Bắc Ninh', '0977032969', 'dãouanduong2001@gmail.com', 0, 'HTTT01', 'HTTT'),
(2019604010, 'Nguyễn Văn Dương', 'Nam', '2001-06-11', 'Bắc Giang', 'Kinh', 'Không', '034201007010', 'Bắc Giang', '0961179646', 'duongnguyen@gmail.com', 0, 'KHMT01', 'KHMT'),
(2019604011, 'Nguyễn Quốc Duy', 'Nam', '2001-09-25', 'Bắc Ninh', 'Kinh', 'Không', '034201007011', 'Bắc Ninh', '0936872601', 'duytogbbn1234569@gmail.com', 0, 'KHMT01', 'KHMT'),
(2019604012, 'Vũ Ngọc Duyệt', 'Nam', '2001-03-01', 'Hưng Yên', 'Kinh', 'Không', '034201007012', 'Hưng Yên', '0379446167', 'vungocduyet@gmail.com', 0, 'KHMT01', 'KHMT'),
(2019604013, 'Hoàng Tuấn Hà', 'Nam', '2001-11-21', 'Thái Nguyên', 'Kinh', 'Không', '034201007013', 'Thái Nguyên', '0343555370', 'tuanha.211101@gmail.com', 1, 'KHMT02', 'KHMT'),
(2019604014, 'Vũ Thị Ngọc Hà', 'Nữ', '2001-10-05', 'Hải Dương', 'Kinh', 'Không', '034201007014', 'Hải Dương', '0382309012', 'hagauvg@gmail.com', 0, 'KHMT02', 'KHMT'),
(2019604015, 'Phạm Thị Quỳnh Hoa', 'Nữ', '2001-03-02', 'Thái Bình', 'Kinh', 'Không', '034201007015', 'Thái Bình', '0386756326', 'quynhhoa020305@gmail.com', 0, 'KHMT02', 'KHMT'),
(2019604016, 'Nguyễn Văn Hồng', 'Nam', '2001-06-19', 'Quảng Ninh', 'Kinh', 'Không', '034201007016', 'Quảng Ninh', '0344811291', 'nguyenhongpf@gmail.com', 0, 'KTPM01', 'KTPM'),
(2019604017, 'Nguyễn Văn Hùng', 'Nam', '2001-08-28', 'Thái Bình', 'Kinh', 'Không', '034201007017', 'Thái Bình', '0971412322', 'hugdz280801@gmail.com', 0, 'KTPM01', 'KTPM'),
(2019604018, 'Nguyễn Đào Quang Huy', 'Nam', '2001-04-18', 'Hà Nội', 'Kinh', 'Không', '034201007018', 'Hà Nội', '0968921551', 'anhhuytu2001@gmail.com', 0, 'KTPM01', 'KTPM'),
(2019604019, 'Phan Quốc Khánh', 'Nam', '2001-10-24', 'Nghệ An', 'Kinh', 'Không', '034201007019', 'Nghệ An', '0327018337', 'khanhphanquoc@gmail.com', 0, 'DIEN01', '7510301'),
(2019604020, 'Trịnh Hồng Khanh', 'Nam', '2001-11-03', 'Nam Định', 'Kinh', 'Không', '034201007020', 'Nam Định', '0866593103', 'trinhhongkhanh@gmail.com', 0, 'DIEN01', '7510301'),
(2019604021, 'Chu Văn Nam', 'Nam', '2001-10-10', 'Vĩnh Phúc', 'Kinh', 'Không', '034201007021', 'Vĩnh Phúc', '0973361251', 'chunam1339@gmail.com', 0, 'DIEN01', '7510301'),
(2019604022, 'Nguyễn Trọng Ngà', 'Nam', '2001-10-10', 'Vĩnh Phúc', 'Kinh', 'Không', '034201007022', 'Vĩnh Phúc', '0365773435', 'nguyentrongnga1010@gmail.com', 0, 'DIEN02', '7510301'),
(2019604023, 'Nguyễn Dương Trọng Nghĩa', 'Nam', '2001-12-10', 'Hà Nội', 'Kinh', 'Không', '034201007023', 'Hà Nội', '0388743723', 'trongnghia101201@gmail.com', 0, 'DIEN02', '7510301'),
(2019604024, 'Trần Đức Nghĩa', 'Nam', '2001-04-10', 'Hà Nội', 'Kinh', 'Không', '034201007024', 'Hà Nội', '0966983962', 'trannghia1004@gmail.com', 0, 'DIEN02', '7510301'),
(2019604025, 'Trần Văn Nghiệp', 'Nam', '2001-04-10', 'Thái Nguyên', 'Kinh', 'Công giáo', '034201007025', 'Thái Nguyên', '0837841230', 'vannghiepdzl@gmail.com', 1, 'CK01', '7510201'),
(2019604026, 'Hà Quốc Phong', 'Nam', '2001-04-16', 'Hà Nam', 'Kinh', 'Không', '034201007026', 'Hà Nam', '0968661074', 'haphong160401@gmail.com', 0, 'CK01', '7510201'),
(2019604027, 'Lê Hồng Phú', 'Nam', '2001-05-02', 'Hải Dương', 'Kinh', 'Không', '034201007027', 'Hải Dương', '0367769261', 'phuhd2k1@gmail.com', 0, 'CK01', '7510201'),
(2019604028, 'Nguyễn Văn Phước', 'Nam', '2001-12-15', 'Bắc Ninh', 'Kinh', 'Không', '034201007028', 'Bắc Ninh', '0982695445', 'phuocpersie@gmail.com', 0, 'OTO1', '7510205'),
(2019604029, 'Nguyễn Bá Quang', 'Nam', '2001-01-01', 'Thái Nguyên', 'Kinh', 'Không', '034201007029', 'Thái Nguyên', '0356402300', 'quangtn001@gmail.com', 0, 'OTO1', '7510205'),
(2019604030, 'Trần Xuân Quyền', 'Nam', '2001-07-02', 'Nam Định', 'Kinh', 'Không', '034201007030', 'Nam Định', '0898720336', 'tranxuanquyen1@gmail.com', 0, 'OTO1', '7510205'),
(2019604031, 'Mai Quý Tân', 'Nam', '2001-05-21', 'Thái Bình', 'Kinh', 'Không', '034201007031', 'Thái Bình', '0865460129', 'maiquytan123@gmail.com', 0, 'OTO2', '7510205'),
(2019604032, 'Nguyễn Văn Tân', 'Nam', '2001-04-12', 'Nghệ An', 'Kinh', 'Không', '034201007032', 'Nghệ An', '0376737564', 'tannguyen1204@gmail.com', 0, 'OTO2', '7510205'),
(2019604033, 'Nguyễn Đăng Thái', 'Nam', '2001-09-01', 'Bắc Ninh', 'Kinh', 'Không', '034201007033', 'Bắc Ninh', '0947434418', 'thainguyen1901a5@gmail.com', 0, 'OTO2', '7510205'),
(2020604001, 'Lê Ngọc Thức', 'Nam', '2002-02-12', 'Thanh Hóa', 'Kinh', 'Không', '034202007001', 'Thanh Hóa', '0822290980', 'thucstun@gmail.com', 0, NULL, 'CNTT'),
(2020604002, 'Nguyễn Xuân Tình', 'Nam', '2002-07-27', 'Bắc Ninh', 'Kinh', 'Không', '034202007002', 'Bắc Ninh', '0856829972', 'acceptyahoo@gmail.com', 0, NULL, 'CNTT'),
(2020604003, 'Nguyễn Xuân Trường', 'Nam', '2002-09-18', 'Hà Nội', 'Kinh', 'Không', '034202007003', 'Hà Nội', '0988506821', 'ngxuantruong1809@gmail.com', 0, NULL, 'HTTT'),
(2020604004, 'Nguyễn Văn Tú', 'Nam', '2002-05-23', 'Bắc Giang', 'Kinh', 'Không', '034202007004', 'Bắc Giang', '0865756514', 'tudu2305@gmail.com', 0, NULL, 'KHMT'),
(2020604005, 'Vũ Thái Tuấn', 'Nam', '2002-03-23', 'Thái Bình', 'Kinh', 'Không', '034202007005', 'Thái Bình', '0865629845', 'tuanlazy8320@gmail.com', 0, NULL, 'KHMT'),
(2020604006, 'Đoàn Văn Tùng', 'Nam', '2002-12-10', 'Vĩnh Phúc', 'Kinh', 'Không', '034202007006', 'Vĩnh Phúc', '0382134277', 'tungdoanvan1210@gmail.com', 0, 'CK01', '7510201'),
(2020604007, 'Hoàng Minh Tuyến', 'Nam', '2002-07-04', 'Thái Bình', 'Kinh', 'Công giáo', '034202007007', 'Thái Bình', '0969650089', 'tuyenminh0407@gmail.com', 0, NULL, '7510205'),
(2020604008, 'Mai Đình Vinh', 'Nam', '2002-10-02', 'Thanh Hóa', 'Kinh', 'Không', '034202007008', 'Thanh Hóa', '0353680281', 'vinhtdinht@gmail.com', 0, NULL, '7510301');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thesv`
--

CREATE TABLE `thesv` (
  `MaSo` int(11) NOT NULL,
  `MaSV` int(11) NOT NULL,
  `TrangThai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayCap` date DEFAULT NULL,
  `GhiChu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thesv`
--

INSERT INTO `thesv` (`MaSo`, `MaSV`, `TrangThai`, `NgayCap`, `GhiChu`) VALUES
(1, 2019604001, 'Đã cấp', '2019-11-01', 'Không'),
(2, 2019604002, 'Đã cấp', '2019-11-01', 'Không'),
(3, 2019604003, 'Đã cấp', '2019-11-01', 'Không'),
(4, 2019604004, 'Đã cấp', '2019-11-01', 'Không'),
(5, 2019604005, 'Đã cấp', '2019-11-01', 'Không'),
(6, 2019604006, 'Chờ cấp lại', NULL, 'Mất thẻ'),
(7, 2019604007, 'Đã cấp', '2019-11-01', 'Không'),
(8, 2019604008, 'Đã cấp', '2019-11-01', 'Không'),
(9, 2019604009, 'Đã cấp', '2019-11-01', 'Không'),
(10, 2019604010, 'Chờ cấp lại', NULL, 'Mất thẻ'),
(11, 2019604011, 'Chờ cấp lại', NULL, 'Mất thẻ'),
(12, 2019604012, 'Chờ cấp lại', NULL, 'Mất thẻ'),
(13, 2019604013, 'Đã cấp', '2019-11-01', 'Không'),
(14, 2019604014, 'Đã cấp', '2019-11-01', 'Không'),
(15, 2019604015, 'Đã cấp', '2019-11-01', 'Không'),
(16, 2019604016, 'Đã cấp', '2019-11-01', 'Không'),
(17, 2019604017, 'Đã cấp', '2019-11-01', 'Không'),
(18, 2019604018, 'Đã cấp', '2019-11-01', 'Không'),
(19, 2019604019, 'Đã cấp', '2019-11-01', 'Không'),
(20, 2019604020, 'Đã cấp', '2019-11-01', 'Không'),
(21, 2019604021, 'Đã cấp', '2019-11-01', 'Không'),
(22, 2019604022, 'Đã cấp', '2019-11-01', 'Không'),
(23, 2019604023, 'Đã cấp', '2019-11-01', 'Không'),
(24, 2019604024, 'Chờ cấp lại', NULL, 'Mất thẻ'),
(25, 2019604025, 'Đã cấp', '2019-11-01', 'Không'),
(26, 2019604026, 'Đã cấp', '2019-11-01', 'Không'),
(27, 2019604027, 'Đã cấp', '2019-11-01', 'Không'),
(28, 2019604028, 'Chờ cấp lại', NULL, 'Mất thẻ'),
(29, 2019604029, 'Đã cấp', '2019-11-01', 'Không'),
(30, 2019604030, 'Đã cấp', '2019-11-01', 'Không'),
(31, 2019604031, 'Đã cấp', '2019-11-01', 'Không'),
(32, 2019604032, 'Chờ cấp lại', NULL, 'Mất thẻ'),
(33, 2019604033, 'Đã cấp', '2019-11-01', 'Không'),
(34, 2020604001, 'Chờ cấp thẻ', NULL, 'Sinh viên mới nhập học'),
(35, 2020604002, 'Chờ cấp thẻ', NULL, 'Sinh viên mới nhập học'),
(36, 2020604003, 'Chờ cấp thẻ', NULL, 'Sinh viên mới nhập học'),
(37, 2020604004, 'Chờ cấp thẻ', NULL, 'Sinh viên mới nhập học'),
(38, 2020604005, 'Chờ cấp thẻ', NULL, 'Sinh viên mới nhập học'),
(39, 2020604006, 'Chờ cấp thẻ', NULL, 'Sinh viên mới nhập học'),
(40, 2020604007, 'Chờ cấp thẻ', NULL, 'Sinh viên mới nhập học'),
(41, 2020604008, 'Chờ cấp thẻ', NULL, 'Sinh viên mới nhập học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `pass`, `full_name`) VALUES
(1, 'nguyenmanhtoan2001', 'Toan12345', 'Nguyễn Mạnh Toàn'),
(2, 'nguyenvantien0024', 'Nvtien2001', 'Nguyễn Văn Tiến'),
(3, 'lvtuyen2001', 'Lvtuyen123', 'Lê Văn Tuyến');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `canhcao`
--
ALTER TABLE `canhcao`
  ADD PRIMARY KEY (`SoBanGhi`),
  ADD KEY `MaSV` (`MaSV`);

--
-- Chỉ mục cho bảng `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`SoBanGhi`),
  ADD KEY `MaSV` (`MaSV`);

--
-- Chỉ mục cho bảng `gvcn`
--
ALTER TABLE `gvcn`
  ADD PRIMARY KEY (`MaGV`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`MaKhoa`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaLop`),
  ADD KEY `MaGV` (`MaGV`),
  ADD KEY `MaNganh` (`MaNganh`);

--
-- Chỉ mục cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`MaNganh`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MaSV`),
  ADD KEY `MaNganh` (`MaNganh`),
  ADD KEY `MaLop` (`MaLop`);

--
-- Chỉ mục cho bảng `thesv`
--
ALTER TABLE `thesv`
  ADD PRIMARY KEY (`MaSo`),
  ADD KEY `MaSV` (`MaSV`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `canhcao`
--
ALTER TABLE `canhcao`
  MODIFY `SoBanGhi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `canhcao`
--
ALTER TABLE `canhcao`
  ADD CONSTRAINT `canhcao_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`);

--
-- Các ràng buộc cho bảng `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `diem_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`);

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`MaGV`) REFERENCES `gvcn` (`MaGV`),
  ADD CONSTRAINT `lop_ibfk_2` FOREIGN KEY (`MaNganh`) REFERENCES `nganh` (`MaNganh`);

--
-- Các ràng buộc cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD CONSTRAINT `nganh_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`MaNganh`) REFERENCES `nganh` (`MaNganh`),
  ADD CONSTRAINT `sinhvien_ibfk_2` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`);

--
-- Các ràng buộc cho bảng `thesv`
--
ALTER TABLE `thesv`
  ADD CONSTRAINT `thesv_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
