-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2011 at 02:51 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quanlibanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `cap_quyen`
--

CREATE TABLE IF NOT EXISTS `cap_quyen` (
  `ma_nhom` varchar(10) NOT NULL,
  `quyen` varchar(20) NOT NULL,
  PRIMARY KEY (`ma_nhom`,`quyen`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cap_quyen`
--

INSERT INTO `cap_quyen` (`ma_nhom`, `quyen`) VALUES
('N001', '1'),
('N001', '2'),
('N001', '3'),
('N001', '4'),
('N001', '5'),
('N001', '6'),
('N002', '1'),
('N002', '2'),
('N002', '3'),
('N002', '4'),
('N003', '1'),
('N004', '2'),
('N005', '1'),
('N005', '2'),
('N005', '3'),
('N005', '4');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hd`
--

CREATE TABLE IF NOT EXISTS `chi_tiet_hd` (
  `ma_hd` varchar(10) NOT NULL,
  `ma_hang` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  PRIMARY KEY (`ma_hd`,`ma_hang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chi_tiet_hd`
--

INSERT INTO `chi_tiet_hd` (`ma_hd`, `ma_hang`, `so_luong`, `don_gia`) VALUES
('9', 17, 10, 0),
('9', 18, 10, 0),
('9', 16, 10, 0),
('9', 11, 100, 0),
('9', 12, 100, 0),
('8', 8, 10, 0),
('7', 17, 10, 0),
('9', 22, 10, 0),
('9', 19, 10, 0),
('9', 20, 10, 0),
('9', 21, 10000, 0),
('9', 9, 10, 0),
('10', 20, 34, 0),
('10', 21, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_phieu_giao`
--

CREATE TABLE IF NOT EXISTS `chi_tiet_phieu_giao` (
  `ma_pg` int(11) NOT NULL,
  `ma_hang` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ngay_dat` date NOT NULL,
  PRIMARY KEY (`ma_pg`,`ma_hang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chi_tiet_phieu_giao`
--

INSERT INTO `chi_tiet_phieu_giao` (`ma_pg`, `ma_hang`, `so_luong`, `ngay_dat`) VALUES
(11, 11, 1, '2011-03-31'),
(11, 18, 2, '2011-03-31'),
(12, 11, 1, '2011-03-31'),
(12, 17, 2, '2011-03-31'),
(13, 11, 1, '2011-03-31'),
(13, 17, 2, '2011-03-31'),
(14, 11, 1, '2011-03-31'),
(14, 17, 2, '2011-03-31'),
(15, 11, 1, '2011-03-31'),
(15, 17, 2, '2011-03-31'),
(17, 11, 60, '2011-03-31'),
(17, 17, 50, '2011-03-31'),
(17, 18, 10, '2011-03-31'),
(18, 11, 1, '2011-04-02'),
(18, 17, 1, '2011-04-02'),
(18, 18, 2, '2011-04-02'),
(19, 11, 1, '2011-04-03'),
(19, 17, 1, '2011-04-03'),
(19, 18, 1, '2011-04-03'),
(19, 19, 1, '2011-04-03'),
(19, 20, 1, '2011-04-03'),
(19, 12, 1, '2011-04-03'),
(22, 19, 1, '2011-04-04'),
(21, 17, 1, '2011-04-04'),
(21, 11, 1, '2011-04-04'),
(21, 18, 1, '2011-04-04'),
(22, 9, 1, '2011-04-04'),
(22, 12, 1, '2011-04-04'),
(23, 17, 345, '2011-04-07'),
(23, 22, 1, '2011-04-07'),
(25, 11, 45, '2011-04-08'),
(34, 11, 1, '2011-04-14'),
(33, 11, 23, '2011-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_phieu_nhap`
--

CREATE TABLE IF NOT EXISTS `chi_tiet_phieu_nhap` (
  `ma_pn` varchar(10) NOT NULL,
  `ma_hang` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  PRIMARY KEY (`ma_pn`,`ma_hang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chi_tiet_phieu_nhap`
--

INSERT INTO `chi_tiet_phieu_nhap` (`ma_pn`, `ma_hang`, `so_luong`, `don_gia`) VALUES
('PN001', 15, 100, 0),
('PN001', 14, 100, 0),
('PN001', 9, 500, 0),
('PN001', 8, 200, 0),
('PN001', 12, 100, 0),
('PN001', 13, 100, 0),
('PN002', 11, 1000, 0),
('PN003', 17, 500, 0),
('PN003', 18, 500, 0),
('PN004', 19, 1000, 0),
('PN004', 20, 1000, 0),
('PN004', 21, 100, 0),
('PN005', 8, 100, 0),
('PN006', 17, 10, 0),
('PN006', 18, 10, 0),
('PN007', 22, 100, 0),
('PN008', 12, 10, 0),
('PN008', 9, 10, 0),
('PN008', 11, 100, 0),
('PN008', 16, 100, 0),
('PN008', 17, 100, 0),
('PN008', 18, 100, 0),
('PN008', 13, 100, 0),
('PN008', 8, 100, 0),
('PN008', 14, 200, 0),
('PN009', 27, 100, 0),
('PN009', 26, 100, 0),
('PN009', 25, 100, 0),
('PN009', 24, 100, 0),
('PN009', 23, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vu`
--

CREATE TABLE IF NOT EXISTS `chuc_vu` (
  `ma_cv` varchar(10) NOT NULL,
  `ten_cv` text NOT NULL,
  PRIMARY KEY (`ma_cv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chuc_vu`
--

INSERT INTO `chuc_vu` (`ma_cv`, `ten_cv`) VALUES
('CB001', 'giam doc'),
('CB002', 'Nhan vien'),
('CB003', 'Truong Phong'),
('TGD01', 'tong giam doc'),
('CB004', 'Káº¿ ToÃ¡n');

-- --------------------------------------------------------

--
-- Table structure for table `dat_hang_ao`
--

CREATE TABLE IF NOT EXISTS `dat_hang_ao` (
  `ma_hang` int(11) NOT NULL,
  `don_gia` double NOT NULL,
  `so_luong` int(11) NOT NULL,
  `dvt` varchar(10) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  PRIMARY KEY (`ma_hang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dat_hang_ao`
--


-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE IF NOT EXISTS `hoa_don` (
  `ma_hd` int(11) NOT NULL AUTO_INCREMENT,
  `ho_ten_kh` varchar(100) NOT NULL,
  `dia_chi_kh` text NOT NULL,
  `sdt_kh` varchar(13) NOT NULL,
  `ngay_lap` date NOT NULL,
  `ma_nv` varchar(10) NOT NULL,
  `tong_tien` double NOT NULL,
  PRIMARY KEY (`ma_hd`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hd`, `ho_ten_kh`, `dia_chi_kh`, `sdt_kh`, `ngay_lap`, `ma_nv`, `tong_tien`) VALUES
(9, 'Nguyen huu chanh', '3/2, ninh kieu, can tho', '01646345235', '2011-04-06', '', 77610000),
(8, 'huynh cong minh', 'ninh kieu, can tho', '01646345235', '2011-04-06', '', 45000),
(7, 'Nguyen thi diem', 'ba ria, vung tau', '017893456', '2011-04-06', '', 230000),
(10, 'nguyen thanh ngoc', 'hon dat - kien giang', '0989306925', '2011-04-07', '', 5555000);

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE IF NOT EXISTS `khach_hang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(50) NOT NULL,
  `dia_chi` text NOT NULL,
  `so_dien_thoai` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `ho_ten`, `dia_chi`, `so_dien_thoai`) VALUES
(24, 'Vo Hoai Son', 'ninh kieu', '01646831814'),
(19, 'huynh cong minh', '3/2, can tho', '23322332334'),
(20, 'nguyen chi tam', 'so nha 12/67 ninh kieu, can tho', '0988345678'),
(21, 'nguyen van bo', 'can tho', '0989306925'),
(23, 'huynh cong minh', 'can trho', '01646831814'),
(25, 'nguyá»…n thá»‹ thÃºy vi', 'ninh kiá»u - cáº§n thÆ¡', '0989353535'),
(27, 'nguyá»…n vÄƒn thá»‘ng ', 'ninh kiá»u - cáº§n thÆ¡', '0988909345'),
(35, 'huynh van cong', 'hon dat -kien giang', '0989305305'),
(36, 'lÃ½ thá»‹ má»¹ xuyÃªn', 'ninh kiá»u - cáº§n thÆ¡', '0988456456');

-- --------------------------------------------------------

--
-- Table structure for table `kho_ao`
--

CREATE TABLE IF NOT EXISTS `kho_ao` (
  `ma_vat_tu` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  PRIMARY KEY (`ma_vat_tu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kho_ao`
--


-- --------------------------------------------------------

--
-- Table structure for table `kho_ao2`
--

CREATE TABLE IF NOT EXISTS `kho_ao2` (
  `ma_vat_tu` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  PRIMARY KEY (`ma_vat_tu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kho_ao2`
--


-- --------------------------------------------------------

--
-- Table structure for table `kho_hang`
--

CREATE TABLE IF NOT EXISTS `kho_hang` (
  `ma_kho` varchar(10) NOT NULL,
  `ten_kho` varchar(100) NOT NULL,
  `dia_chi` varchar(100) NOT NULL,
  `sdt` varchar(13) NOT NULL,
  PRIMARY KEY (`ma_kho`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kho_hang`
--

INSERT INTO `kho_hang` (`ma_kho`, `ten_kho`, `dia_chi`, `sdt`) VALUES
('K01', 'Kho Tap Hoa', '30/4.ninh kieu', '0989306306'),
('K04', 'Kho Gao', 'hon dat -kien giang', '0989306925');

-- --------------------------------------------------------

--
-- Table structure for table `kho_tt`
--

CREATE TABLE IF NOT EXISTS `kho_tt` (
  `ma_kho` varchar(10) NOT NULL,
  `ma_hang` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  PRIMARY KEY (`ma_kho`,`ma_hang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kho_tt`
--

INSERT INTO `kho_tt` (`ma_kho`, `ma_hang`, `so_luong`) VALUES
('K01', 8, 200),
('K01', 12, 108),
('K01', 13, 200),
('K01', 9, 509),
('K01', 14, 300),
('K01', 15, 100),
('K01', 11, 31),
('K01', 17, 212),
('K01', 18, 596),
('K01', 19, 998),
('K01', 20, 999),
('K01', 21, 100),
('K01', 22, 99),
('K01', 16, 100),
('K01', 27, 100),
('K01', 26, 100),
('K01', 25, 100),
('K01', 24, 100),
('K01', 23, 100);

-- --------------------------------------------------------

--
-- Table structure for table `kiemke`
--

CREATE TABLE IF NOT EXISTS `kiemke` (
  `id` int(11) NOT NULL DEFAULT '1',
  `kk` int(11) NOT NULL,
  PRIMARY KEY (`kk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kiemke`
--

INSERT INTO `kiemke` (`id`, `kk`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loai_hang`
--

CREATE TABLE IF NOT EXISTS `loai_hang` (
  `ma_loai` int(11) NOT NULL AUTO_INCREMENT,
  `ten_loai` text NOT NULL,
  PRIMARY KEY (`ma_loai`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `loai_hang`
--

INSERT INTO `loai_hang` (`ma_loai`, `ten_loai`) VALUES
(1, 'thuc pham'),
(3, 'Vat tu'),
(6, 'dien tu'),
(7, 'Sua');

-- --------------------------------------------------------

--
-- Table structure for table `mat_hang`
--

CREATE TABLE IF NOT EXISTS `mat_hang` (
  `ma_hang` int(11) NOT NULL AUTO_INCREMENT,
  `ma_loai` int(11) NOT NULL,
  `ten_hang` text NOT NULL,
  `nhan_hieu` text NOT NULL,
  `han_su_dung` date NOT NULL,
  `quy_cach` text NOT NULL,
  `don_vi_tinh` text NOT NULL,
  `ma_kho` varchar(10) NOT NULL,
  `ma_ncc` int(11) NOT NULL,
  `ngay_nhap` date NOT NULL,
  `don_gia` double NOT NULL,
  `hinh_anh` text NOT NULL,
  PRIMARY KEY (`ma_hang`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `mat_hang`
--

INSERT INTO `mat_hang` (`ma_hang`, `ma_loai`, `ten_hang`, `nhan_hieu`, `han_su_dung`, `quy_cach`, `don_vi_tinh`, `ma_kho`, `ma_ncc`, `ngay_nhap`, `don_gia`, `hinh_anh`) VALUES
(13, 7, 'Dielac 2', 'Vinamilk', '2013-02-12', 'uong lien', 'hop', '', 16, '0000-00-00', 180000, 'Dielac-star-2-400.jpg'),
(12, 7, 'Dielac Alpha', 'Vinamilk', '2011-02-02', 'uong lien', 'hop', '', 16, '0000-00-00', 170000, '456.jpg'),
(8, 7, 'Sua Vinamilk Hop', 'Vinamilk', '0000-00-00', 'uong lien', 'hop', '', 16, '0000-00-00', 4500, 'vinamilk box.jpg'),
(9, 7, 'Sua Vinamilk Goi', 'Vinamilk', '0000-00-00', 'uong lien', 'cai', '', 16, '0000-00-00', 5000, 'vibna.jpg'),
(11, 1, 'Ca hop phu Quoc', 'Ca com', '2013-02-12', 'an lien', 'hop', '', 16, '0000-00-00', 12000, 'Ca trich hop.jpg'),
(14, 7, 'Dielac 3', 'Vinamilk', '2013-02-12', 'uong lien', 'hop', '', 16, '0000-00-00', 190000, 'small_02599221.png'),
(15, 7, 'Dielac 1', 'Vinamilk', '2013-02-12', 'uong lien', 'hop', '', 16, '0000-00-00', 160000, 'small_02485009.png'),
(16, 1, 'Dielac mama', 'Vinamilk', '2013-02-12', 'uong lien', 'hop', '', 16, '0000-00-00', 320000, '761-917-large.jpg'),
(17, 1, 'Mang Dam Ot', 'KIBACO', '2013-12-23', 'Do Dong hop', 'hop', '', 16, '0000-00-00', 23000, '0a9ae5a787146f60d2ab550f3f47f00d.jpg'),
(18, 1, 'Ca Dam Ot', 'KIBACO', '2013-12-23', 'Do Dong hop', 'hop', '', 22, '0000-00-00', 250000, 'c73839cf11bcd42c5c83f0095563d423.jpg'),
(19, 3, 'Xi MÄƒng SG', 'CSG', '2015-02-12', 'Vat lieu xay dung', 'bao', '', 23, '0000-00-00', 150000, 'ximang.jpg'),
(20, 3, 'Xi MÄƒng But Son', 'CSG', '2015-02-12', 'Váº­t Liá»‡u XÃ¢y Dá»±ng', 'bao', '', 23, '0000-00-00', 160000, '336-973-large.jpg'),
(21, 3, 'Thep Viet', 'SMC', '2020-12-23', 'Váº­t Liá»‡u XÃ¢y Dá»±ng', 'kg', '', 23, '0000-00-00', 5000, 'thep124578efe3fw3f3efe.jpg'),
(22, 1, 'CÃ¡ Äá»“ng ÄÃ³ng Há»™p', 'HaLongCamoco', '2013-07-02', 'thuc pham dong hop', 'hop', '', 16, '2011-04-04', 33000, 'DohopHalong_Ha_Long.jpg'),
(23, 7, 'Physiolac sá»‘ 1', 'Gau Con', '2013-10-20', 'iso 9001', 'hop', '', 16, '2011-04-07', 212500, 'small_icl1298445084.jpg'),
(24, 7, ' Physiolac  3', 'Gau Con', '2013-10-20', 'iso 9001', 'hop', '', 16, '2011-04-07', 338000, 'small_pyw1298442207.jpg'),
(25, 7, 'Physiolac  2', 'Gau Con', '2013-10-20', 'iso 9001', 'hop', '', 16, '2011-04-07', 349000, 'small_woi1299146313.jpg'),
(26, 7, 'Similac go-grow', 'Gau Con', '2013-10-20', '9-24 thÃ¡ng', 'hop', '', 16, '2011-04-07', 222000, 'small_wnd1291966584.jpg'),
(27, 7, 'Ensure Gold', 'Gold', '2013-10-20', 'iso 9001', 'hop', '', 16, '2011-04-07', 256000, 'small_uql1211959146.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE IF NOT EXISTS `nhanvien` (
  `ma_nv` varchar(10) NOT NULL,
  `ten_nv` varchar(50) NOT NULL,
  `ma_cv` varchar(10) NOT NULL,
  `tai_khoan` varchar(50) NOT NULL,
  `mat_khau` varchar(20) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `gioi_tinh` text NOT NULL,
  `dia_chi` text NOT NULL,
  `so_dien_thoai` varchar(13) NOT NULL,
  `admin` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ma_nv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`ma_nv`, `ten_nv`, `ma_cv`, `tai_khoan`, `mat_khau`, `ngay_sinh`, `gioi_tinh`, `dia_chi`, `so_dien_thoai`, `admin`) VALUES
('NV001', 'LÃª VÄƒn Tuáº¥n', 'CB002', 'lvtuan', '123', '1989-02-02', 'nam', 'kiÃªn giang', '0988351219', '0'),
('NV002', 'Huá»³nh CÃ´ng Minh', 'CB003', 'hcminh', '123456', '1990-09-08', 'nam', 'cáº§n thÆ¡', '01665676789', '0'),
('NV003', 'Nguyá»…n Thanh Ngá»c', 'TGD01', 'ntngoc', '123456', '1989-04-07', 'nam', 'kiÃªn giang', '0989306925', '0'),
('NV000', 'admin', 'AD000', 'admin', '123456', '0000-00-00', '', '', '0989306306', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `nha_cung_cap`
--

CREATE TABLE IF NOT EXISTS `nha_cung_cap` (
  `ma_ncc` int(11) NOT NULL AUTO_INCREMENT,
  `ten_ncc` varchar(200) NOT NULL,
  `dia_chi_ncc` text NOT NULL,
  `sdt_ncc` varchar(13) NOT NULL,
  `email_ncc` varchar(200) NOT NULL,
  PRIMARY KEY (`ma_ncc`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `nha_cung_cap`
--

INSERT INTO `nha_cung_cap` (`ma_ncc`, `ten_ncc`, `dia_chi_ncc`, `sdt_ncc`, `email_ncc`) VALUES
(16, 'CTY TNHH Son kien', 'Hon Dat, Kien Giang', '07731929297', 'ctyhhsonkien@gmail.com'),
(21, 'CTY TNHH MINH HUY', '30/4 CAN THO', '0989405405', 'ctytnhhminhhuy@yahoo.com'),
(22, 'Co So Che Bien KIBACO', 'CÆ¡ sá»Ÿ cháº¿ biáº¿n thá»±c pháº©m KIBACO, ÄÃ´ng DÆ°, Gia LÃ¢m, HÃ  Ná»™i.', '0422451333', 'www.Kibacofood.com'),
(23, 'CTY Xi Mang POOCLANG HonHop Nam Som', 'XÃ£ SÃ i SÆ¡n, huyá»‡n Quá»‘c Oai, TP Ha noi', '33679 378', '');

-- --------------------------------------------------------

--
-- Table structure for table `nhom_quyen`
--

CREATE TABLE IF NOT EXISTS `nhom_quyen` (
  `ma_nhom` varchar(10) NOT NULL,
  `ma_cv` varchar(10) NOT NULL,
  PRIMARY KEY (`ma_cv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhom_quyen`
--

INSERT INTO `nhom_quyen` (`ma_nhom`, `ma_cv`) VALUES
('N003', 'CB001'),
('N003', 'CB002'),
('N005', 'CB003'),
('N001', 'TGD01'),
('N006', 'CB004');

-- --------------------------------------------------------

--
-- Table structure for table `phieu_giao_hang`
--

CREATE TABLE IF NOT EXISTS `phieu_giao_hang` (
  `id_pn` int(11) NOT NULL AUTO_INCREMENT,
  `id_kh` int(11) NOT NULL,
  `tong_tien` double NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_pn`,`id_kh`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `phieu_giao_hang`
--

INSERT INTO `phieu_giao_hang` (`id_pn`, `id_kh`, `tong_tien`, `trangthai`) VALUES
(22, 24, 325000, 1),
(17, 19, 4370000, 0),
(18, 20, 588500, 0),
(19, 21, 765000, 1),
(21, 23, 285000, 1),
(23, 25, 8764800, 1),
(25, 27, 594000, 1),
(33, 35, 303600, 1),
(34, 36, 13200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phieu_nhap`
--

CREATE TABLE IF NOT EXISTS `phieu_nhap` (
  `ma_pn` varchar(20) NOT NULL,
  `ma_kho` varchar(10) NOT NULL,
  `ma_ncc` int(11) NOT NULL,
  `ma_nv` varchar(10) NOT NULL,
  `ngay_nhap` date NOT NULL,
  `tong_tien` double NOT NULL,
  `ghi_chu` text NOT NULL,
  PRIMARY KEY (`ma_pn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phieu_nhap`
--

INSERT INTO `phieu_nhap` (`ma_pn`, `ma_kho`, `ma_ncc`, `ma_nv`, `ngay_nhap`, `tong_tien`, `ghi_chu`) VALUES
('PN001', 'K01', 16, 'NV004', '0000-00-00', 73400000, ''),
('PN002', 'K01', 16, 'NV001', '2011-03-28', 12000000, ''),
('PN003', 'K01', 16, 'NV001', '2011-03-28', 136500000, ''),
('PN004', 'K01', 23, 'NV003', '2011-03-28', 310500000, ''),
('PN005', 'K01', 16, 'NV001', '2011-04-03', 450000, ''),
('PN006', 'K01', 22, 'NV001', '2011-04-04', 2730000, ''),
('PN007', 'K01', 16, 'NV002', '2011-04-04', 3300000, ''),
('PN008', 'K01', 21, 'NV002', '2011-04-06', 118700000, ''),
('PN009', 'K01', 16, 'NV001', '2011-04-07', 137750000, '');

-- --------------------------------------------------------

--
-- Table structure for table `ten_nhom_quyen`
--

CREATE TABLE IF NOT EXISTS `ten_nhom_quyen` (
  `ma_nhom` varchar(10) NOT NULL,
  `ten_nhom` varchar(30) NOT NULL,
  PRIMARY KEY (`ma_nhom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ten_nhom_quyen`
--

INSERT INTO `ten_nhom_quyen` (`ma_nhom`, `ten_nhom`) VALUES
('N001', 'Nhom Quyen 1'),
('N002', 'Nhom Quyen 2'),
('N003', 'Nhom quyen 3'),
('N004', 'Nhom quyen 4'),
('N005', 'Nhom quyen 5'),
('N006', 'Nhom quyen 6');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
