-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 07, 2022 lúc 09:14 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `chuongmobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `cmt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `id_product`, `cmt`) VALUES
(6, 30, 15, 'dsfsd'),
(12, 30, 15, 'ggfdgdf'),
(13, 30, 15, 'gfdgfd'),
(14, 30, 20, 'test commet'),
(15, 30, 21, 'Ä‘Ã¢s'),
(16, 30, 21, 'Ä‘áº¥'),
(17, 30, 21, 'dsadas'),
(18, 30, 21, 'saSa'),
(19, 30, 15, 'hfghf'),
(20, 30, 15, 'TEST COMMMET NÃˆ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsumuahang`
--

CREATE TABLE `lichsumuahang` (
  `id` int(11) NOT NULL,
  `sanpham` varchar(1000) NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtoan` int(11) NOT NULL,
  `hinhthucthanhtoan` int(11) NOT NULL,
  `diachigiaohang` varchar(2000) NOT NULL,
  `ngaydat` varchar(20) NOT NULL,
  `ngaygui` varchar(200) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lichsumuahang`
--

INSERT INTO `lichsumuahang` (`id`, `sanpham`, `soluong`, `thanhtoan`, `hinhthucthanhtoan`, `diachigiaohang`, `ngaydat`, `ngaygui`, `id_user`) VALUES
(6, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', 1, 454900000, 1, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', '02/01/2022', '22/01/2022', 34),
(7, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', 1, 454900000, 2, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', '02/01/2022', '22/01/2022', 34),
(8, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', 1, 454900000, 0, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', '02/01/2022', '07/03/2022', 34),
(9, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', 1, 454900000, 2, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', '02/01/2022', '07/03/2022', 34),
(10, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', 2, 909800000, 0, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', '02/01/2022', '07/03/2022', 34),
(11, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', 1, 454900000, 2, 'Táº©n cÃ¹ cháº£n 0347194217, xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng', '02/01/2022', '07/03/2022', 30),
(12, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', 1, 454900000, 1, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', '02/01/2022', '07/03/2022', 34),
(13, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', 1, 4549000, 1, 'ÃI á» SÃŒ MÃ€ HÃ HÃ HÃ 03471952254, Nhieu Sang - Lang Mo - Lai Chau', '07/03/2022', '07/03/2022', 30),
(14, 'Äiá»‡n thoáº¡i Samsung Galaxy A5', 1, 5000000, 1, 'ÃI á» SÃŒ MÃ€ HÃ HÃ HÃ 03471952254, Nhieu Sang - Lang Mo - Lai Chau', '07/03/2022', '07/03/2022', 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `option`
--

CREATE TABLE `option` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `option`
--

INSERT INTO `option` (`id`, `name`, `value`) VALUES
(1, 'payment', '{\"bankname\":\"Vietcombank\",\"stk\":\"00000000000000000000000000000\",\"ctkbank\":\"TAN CU CHANNNNNNNNNNNNNNNNNNNNNNNNNNNN\",\"sdt\":\"03471942147\",\"ctkmomo\":\"TAN CU CHAN\"}'),
(2, 'menu', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanloai`
--

CREATE TABLE `phanloai` (
  `id` int(11) NOT NULL,
  `tenphanloai` varchar(200) NOT NULL,
  `capdo` int(11) NOT NULL,
  `id_phanloaicha` int(11) NOT NULL,
  `showmenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `phanloai`
--

INSERT INTO `phanloai` (`id`, `tenphanloai`, `capdo`, `id_phanloaicha`, `showmenu`) VALUES
(0, 'ChÆ°a phÃ¢n loáº¡i', 1, 0, 0),
(22, 'SAMSUNG', 2, 27, 0),
(25, 'SAMSUNG CÅ¨', 2, 22, 1),
(27, 'NOKIA', 1, 0, 1),
(28, 'IPHONE', 1, 0, 0),
(30, 'XIAOMI', 1, 0, 1),
(36, 'Má»šI THÃŠM', 2, 28, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `id_phanloai` int(11) NOT NULL,
  `ten` varchar(200) NOT NULL,
  `img` varchar(2000) NOT NULL,
  `giaban` int(11) NOT NULL,
  `tinhtrang` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `posts` text NOT NULL,
  `thuonghieu` varchar(100) NOT NULL,
  `xuatxu` varchar(100) NOT NULL,
  `kichthuocman` varchar(100) NOT NULL,
  `dophangiai` varchar(100) NOT NULL,
  `trongluong` varchar(100) NOT NULL,
  `dungluongpin` varchar(100) NOT NULL,
  `cpu` varchar(100) NOT NULL,
  `tocdocpu` varchar(100) NOT NULL,
  `rom` varchar(100) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `camerasau` varchar(100) NOT NULL,
  `cameratruoc` varchar(100) NOT NULL,
  `loaisim` varchar(100) NOT NULL,
  `wifi` varchar(100) NOT NULL,
  `hotro4g` varchar(100) NOT NULL,
  `gps` varchar(100) NOT NULL,
  `bluetooth` varchar(50) NOT NULL,
  `thenho` varchar(100) NOT NULL,
  `gpu` varchar(50) NOT NULL,
  `phukien` varchar(200) NOT NULL,
  `congsac` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `jacktaynghe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_phanloai`, `ten`, `img`, `giaban`, `tinhtrang`, `soluong`, `posts`, `thuonghieu`, `xuatxu`, `kichthuocman`, `dophangiai`, `trongluong`, `dungluongpin`, `cpu`, `tocdocpu`, `rom`, `ram`, `camerasau`, `cameratruoc`, `loaisim`, `wifi`, `hotro4g`, `gps`, `bluetooth`, `thenho`, `gpu`, `phukien`, `congsac`, `pin`, `jacktaynghe`) VALUES
(15, 28, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', './upload/img/images.jpg', 4549000, 'HÃ ng cÅ©', 7, '<p><strong>iPhone 13 Pro Max sáº½ l&agrave; chiáº¿c Ä‘iá»‡n thoáº¡i th&ocirc;ng minh cao cáº¥p Ä‘Æ°á»£c mong chá» nháº¥t nÄƒm 2021. Cháº¯c háº³n báº¡n cÅ©ng c&oacute; nhiá»u tháº¯c máº¯c vá» d&ograve;ng iPhone 13 series cáº§n Ä‘Æ°á»£c giáº£i Ä‘&aacute;p. B&agrave;i viáº¿t n&agrave;y sáº½ Ä‘Æ°a táº¥t táº§n táº­t nhá»¯ng th&ocirc;ng tin vá» máº«u Ä‘iá»‡n thoáº¡i cao cáº¥p nháº¥t cá»§a Apple nÄƒm nay Ä‘áº¿n c&aacute;c báº¡n.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-2.jpg\"><img alt=\"Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A\" src=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-2.jpg\" style=\"height:450px; width:799px\" title=\"Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A\" /></a></p>\r\n\r\n<h2 dir=\"ltr\"><strong>iPhone 13 Pro Max &ndash; Chiáº¿c Ä‘iá»‡n thoáº¡i hiá»‡u nÄƒng cao h&agrave;ng Ä‘áº§u</strong></h2>\r\n\r\n<p dir=\"ltr\">NÄƒm ngo&aacute;i, sá»± ra máº¯t cá»§a iPhone 12 series Ä‘&atilde; ph&aacute; vá»¡ nhiá»u ká»· lá»¥c cá»§a h&atilde;ng. Ch&iacute;nh v&igrave; váº­y chiáº¿c Ä‘i&ecirc;Ì£n thoaÌ£i iPhone 13 Pro Max Ä‘ang l&agrave; sá»± lá»±a chá»n khi&ecirc;Ìn bao tiÌn Ä‘&ocirc;Ì€ c&ocirc;ng ngh&ecirc;Ì£ mong Ä‘á»£i. Máº«u sáº£n pháº©m má»›i sá»Ÿ há»¯u nhiá»u n&acirc;ng cáº¥p vá» camera, thiáº¿t káº¿ hay sá»± trá»Ÿ láº¡i cá»§a Touch ID Ä‘á»u l&agrave; Ä‘iá»ƒm thu h&uacute;t ngÆ°á»i d&ugrave;ng.</p>\r\n\r\n<h3 dir=\"ltr\"><strong>iPhone 13 Pro Max sá»Ÿ há»¯u thi&ecirc;Ìt k&ecirc;Ì tinh táº¿ v&agrave; nhiá»u maÌ€u sÄƒÌc n&ocirc;Ì‰i b&acirc;Ì£t</strong></h3>\r\n\r\n<p dir=\"ltr\">iPhone 13 Pro Max váº«n giá»¯ ng&ocirc;n ngá»¯ thiáº¿t káº¿ &lsquo;ho&agrave;i cá»•&rsquo; vá»›i c&aacute;c cáº¡nh viá»n vu&ocirc;ng vá»©c nhÆ° iPhone 12 series. Sá»± thay Ä‘á»•i lá»›n nháº¥t á»Ÿ váº» ngo&agrave;i nÄƒm na ch&iacute;nh l&agrave; pháº§n cá»¥m camera: Cá»¥m camera sau lá»“i, to, s&aacute;t viá»n hÆ¡n v&agrave; Ä‘Æ°á»£c báº£o vá»‡ bá»Ÿi má»™t lá»›p k&iacute;nh. Äá»“ng thá»i, sau bao nÄƒm chá» Ä‘á»£i pháº§n tai thá» tr&ecirc;n m&agrave;n h&igrave;nh cuá»‘i c&ugrave;ng cÅ©ng Ä‘Æ°á»£c thu nhá».</p>\r\n\r\n<p dir=\"ltr\">Cháº¥t liá»‡u ho&agrave;n thiá»‡n iPhone 13 Pro Max l&agrave; theÌp kh&ocirc;ng giÌ‰ cuÌ€ng kiÌnh Corning Gorilla Glass Ä‘Æ¡Ì€i mÆ¡Ìi. Äáº·c biá»‡t, pháº§n viá»n th&eacute;p c&ograve;n Ä‘Æ°á»£c phá»§ má»™t lá»›p chá»‘ng b&aacute;m v&acirc;n tay &ndash; tr&aacute;nh b&aacute;m báº©n nhÆ° ngÆ°á»i tiá»n nhiá»‡m. Ngo&agrave;i ra, m&aacute;y cÅ©ng Ä‘Æ°á»£c trang bá»‹ kháº£ nÄƒng ngÄƒn bá»¥i v&agrave; chá»‘ng nÆ°á»›c theo ti&ecirc;u chuáº©n IP68.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-4.jpg\"><img alt=\"Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A\" src=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-4.jpg\" style=\"height:450px; width:799px\" title=\"Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A\" /></a></p>\r\n\r\n<p dir=\"ltr\">Má»™t trong nhá»¯ng Ä‘iá»u Ä‘Æ°á»£c nhiá»u ngÆ°á»i Ä‘á»ƒ &yacute; trÆ°á»›c khi mua thiáº¿t bá»‹ ch&iacute;nh l&agrave; m&agrave;u sáº¯c. NÄƒm nay iPhone 13 Pro Max sáº½ mang Ä‘áº¿n nhá»¯ng m&agrave;u sáº¯c cÆ¡ báº£n l&agrave; Tráº¯ng, Äen nh&aacute;m, Xanh Th&aacute;i B&igrave;nh DÆ°Æ¡ng, Ä‘áº·c biá»‡t l&agrave; c&oacute; th&ecirc;m m&agrave;u V&agrave;ng Ä‘á»“ng v&agrave; Cam láº¡ máº¯t.</p>\r\n\r\n<h3 dir=\"ltr\"><strong>MaÌ€n hiÌ€nh thu nhoÌ‰ tai thá» vÆ¡Ìi t&ocirc;Ìc Ä‘&ocirc;Ì£ laÌ€m má»›i 120Hz</strong></h3>\r\n\r\n<p dir=\"ltr\">Yáº¿u tá»‘ Ä‘Æ°á»£c mong chá» Ä‘Æ°á»£c cáº£i tiáº¿n tá»« l&acirc;u l&agrave; tai thá» cuá»‘i c&ugrave;ng cÅ©ng Ä‘Æ°á»£c Apple thu gá»n. iPhone 13 Pro Max trang bá»‹ m&agrave;n h&igrave;nh Super Retina XDR OLED 6.7 inch, nhá» thu nhá» notch m&agrave; tá»· lá»‡ hiá»ƒn thá»‹ m&agrave;n h&igrave;nh Ä‘Æ°á»£c tá»‘i Æ°u (tÄƒng l&ecirc;n). D&ugrave; k&iacute;ch thÆ°á»›c pháº§n khuyáº¿t nhá» hÆ¡n trÆ°á»›c, nhÆ°ng TrueDepth, FaceID, camera selfie &ndash; nhá»¯ng cáº£m biáº¿n quan trá»ng Ä‘á»u Ä‘Æ°á»£c giá»¯ nguy&ecirc;n.</p>\r\n\r\n<p dir=\"ltr\">D&ugrave; nhiá»u ngÆ°á»i mong Ä‘á»£i Apple sáº½ ho&agrave;n to&agrave;n bá» pháº§n tai thá», nhÆ°ng Ä‘iá»u n&agrave;y l&agrave; ráº¥t kh&oacute; á»Ÿ thá»i Ä‘iá»ƒm hiá»‡n táº¡i. Tuy chÆ°a thá»ƒ giáº¥u cáº£m biáº¿n TrueDepth (Ä‘á»ƒ loáº¡i bá» pháº§n khuyáº¿n ho&agrave;n to&agrave;n) nhÆ°ng h&atilde;ng Ä‘&atilde; thu nhá» diá»‡n t&iacute;ch cá»§a n&oacute;. C&ograve;n pháº§n Touch ID &ndash; sá»± trá»Ÿ láº¡i ráº¥t há»£p vá»›i bá»‘i cáº£nh hiá»‡n táº¡i sáº½ Ä‘Æ°á»£c t&iacute;ch há»£p dÆ°á»›i m&agrave;n h&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\">Tráº£i nghiá»‡m h&igrave;nh áº£nh tr&ecirc;n iPhone 13 Pro Max tÄƒng l&ecirc;n ráº¥t nhiá»u nhá» ProMotion &ndash; t&iacute;nh nÄƒng gi&uacute;p m&agrave;n h&igrave;nh Ä‘áº¡t tá»‘c Ä‘á»™ qu&eacute;t 120Hz. V&acirc;ng, má»™t t&iacute;nh nÄƒng Ä‘Æ°á»£c nhiá»u iFan mong chá» &ndash; tá»‘c Ä‘á»™ l&agrave;m má»›i cao, chuyá»ƒn Ä‘á»™ng h&igrave;nh áº£nh mÆ°á»£t m&agrave; hÆ¡n láº§n Ä‘áº§u xuáº¥t hiá»‡n tr&ecirc;n máº«u iPhone Pro Max 2021.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-6.jpg\"><img alt=\"Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A\" src=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-6.jpg\" style=\"height:450px; width:799px\" title=\"Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A\" /></a></p>\r\n\r\n<p dir=\"ltr\">B&ecirc;n cáº¡nh Ä‘&oacute; iPhone 13 Pro Max váº«n sá»Ÿ há»¯u c&aacute;c t&iacute;nh nÄƒng há»— trá»£ tráº£i nghiá»‡m m&agrave;n h&igrave;nh nhÆ° Dolby Vision, True-tone, HDR10.</p>\r\n\r\n<h3 dir=\"ltr\"><strong>Cáº£m biáº¿n camera n&acirc;ng cáº¥p, tiÌnh nÄƒng chuÌ£p aÌ‰nh tá»‘t hÆ¡n</strong></h3>\r\n\r\n<p dir=\"ltr\">Kháº£ nÄƒng chá»¥p áº£nh l&agrave; má»™t trong nhá»¯ng yáº¿u tá»‘ ngÆ°á»i d&ugrave;ng iPhone quan t&acirc;m h&agrave;ng Ä‘áº§u. Táº¥t nhi&ecirc;n camera iPhone 13 Pro Max má»›i sá»Ÿ há»¯u nhiá»u n&acirc;ng cáº¥p vá» cáº£m biáº¿n v&agrave; kháº£ nÄƒng chá»¥p áº£nh tuyá»‡t vá»i kh&ocirc;ng l&agrave;m ngÆ°á»i d&ugrave;ng tháº¥t vá»ng.</p>\r\n\r\n<p dir=\"ltr\">Ng&ocirc;n ngá»¯ thiáº¿t káº¿ camera kh&oacute; c&oacute; thá»ƒ thay Ä‘á»•i trong thá»i gian ngáº¯n. iPhone Pro Max má»›i váº«n trang bá»‹ cá»¥m camera ba á»‘ng k&iacute;nh Ä‘áº·t trong m&ocirc;-Ä‘un h&igrave;nh vu&ocirc;ng tÆ°Æ¡ng tá»± iPhone 12 Pro Max. Thay Ä‘á»•i náº±m á»Ÿ cáº£m biáº¿n vá»›i camera g&oacute;c rá»™ng 6 tháº¥u k&iacute;nh gi&uacute;p cáº£i thiá»‡n nhá»¯ng bá»©c áº£nh khi chá»¥p trong m&ocirc;i trÆ°á»ng thiáº¿u s&aacute;ng.</p>\r\n\r\n<p dir=\"ltr\"><strong><a href=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-8.jpg\"><img alt=\"Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A\" src=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-8.jpg\" style=\"height:450px; width:799px\" title=\"Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A\" /></a></strong></p>\r\n\r\n<p dir=\"ltr\">Apple sáº½ mang cáº£m biáº¿n LiDar v&agrave; t&iacute;nh nÄƒng ProRAW l&ecirc;n táº¥t cáº£ c&aacute;c máº«u iPhone 13 series, thay v&igrave; Ä‘á»™c quyá»n cho máº«u Pro nhÆ° trÆ°á»›c. Viá»‡c trang bá»‹ LiDar nháº±m tÄƒng tráº£i nghiá»‡m thá»±c táº¿ áº£o (AR) á»Ÿ c&aacute;c d&ograve;ng sáº£n pháº©m cho ngÆ°á»i d&ugrave;ng. C&ograve;n ProRAW l&agrave; gi&uacute;p báº¡n c&oacute; Ä‘Æ°á»£c nhá»¯ng file áº£nh ká»¹ thuáº­t sá»‘ v&agrave; DNG cháº¥t lÆ°á»£ng cao, Ä‘á»ƒ cáº¯t gh&eacute;p chá»‰nh sá»­a á»Ÿ báº¥t ká»³ pháº§n má»m n&agrave;o.</p>\r\n\r\n<p dir=\"ltr\">Tuy nhi&ecirc;n ProRAW Ä‘&ograve;i há»i iPhone pháº£i c&oacute; RAM lá»›n Ä‘á»ƒ Ä‘á»§ dung lÆ°á»£ng lÆ°u trá»¯. Do Ä‘&oacute; iPhone 13 v&agrave; 13 Mini seÌƒ coÌ RAM 6 GB c&ograve;n iPhone 13 Pro v&agrave; 13 Pro Max seÌƒ coÌ tuÌ€y choÌ£n RAM 8 &ndash; 12 GB.</p>\r\n\r\n<p dir=\"ltr\">Camera selfie cá»§a iPhone 13 Pro Max kh&ocirc;ng c&oacute; nhiá»u thay Ä‘á»•i so vá»›i máº«u m&aacute;y tiá»n nhiá»‡m. Thiáº¿t bá»‹ c&oacute; g&oacute;c chá»¥p selfie rá»™ng hÆ¡n v&agrave; sá»Ÿ há»¯u c&aacute;c t&iacute;nh nÄƒng kh&aacute;c nhÆ° Slow-motione, memoji, animoji gi&uacute;p ngÆ°á»i d&ugrave;ng c&oacute; nhiá»u lá»±a chá»n hÆ¡n khi chá»¥p áº£nh.</p>\r\n\r\n<h3 dir=\"ltr\"><strong>Vi xÆ°Ì‰ lyÌ n&acirc;ng c&acirc;Ìp hi&ecirc;Ì£u nÄƒng, loaÌ£i boÌ‰ hoaÌ€n toaÌ€n c&ocirc;Ì‰ng k&ecirc;Ìt n&ocirc;Ìi</strong></h3>\r\n\r\n<p dir=\"ltr\">NhÆ° má»i nÄƒm, tháº¿ há»‡ iPhone 2021 sáº½ sá»Ÿ há»¯u vi xá»­ l&yacute; Ä‘Æ°á»£c n&acirc;ng cáº¥p má»›i gi&uacute;p thiáº¿t bá»‹ cáº£i thiá»‡n hiá»‡u nÄƒng v&agrave; kháº£ nÄƒng há»— trá»£ 5G Ä‘&aacute;ng ká»ƒ. Con chip iPhone 13 Pro Max mang trong m&igrave;nh nÄƒm nay l&agrave; A15 Bionic Ä‘Æ°á»£c cáº£i tiáº¿n v&agrave; n&acirc;ng cáº¥p vá»«a cáº£i thiá»‡n hiá»‡u nÄƒng m&aacute;y vá»«a gi&uacute;p káº¿t ná»‘i internet tá»‘c Ä‘á»™ cao tá»‘t hÆ¡n.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-9.jpg\"><img alt=\"Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A\" src=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-9.jpg\" style=\"height:450px; width:799px\" title=\"Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A\" /></a></p>\r\n\r\n<p dir=\"ltr\">TrÆ°á»›c Ä‘&oacute; c&oacute; nhiá»u tin Ä‘á»“n vá» iPhone 13 Pro Max ho&agrave;n to&agrave;n kh&ocirc;ng c&ograve;n cá»•ng káº¿t ná»‘i. Äiá»u nhiá»u ngÆ°á»i quan t&acirc;m ch&uacute; &yacute; há»£p vá»›i &yacute; tÆ°á»Ÿng / yáº¿u tá»‘ báº£o vá»‡ m&ocirc;i trÆ°á»ng m&agrave; h&atilde;ng Ä‘ang theo Ä‘uá»•i. Äáº·c biá»‡t v&agrave;o nÄƒm ngo&aacute;i, Apple Ä‘&atilde; loáº¡i bá» phá»¥ kiá»‡n sáº¡c khá»i há»™p iPhone.</p>\r\n\r\n<p dir=\"ltr\">N&ecirc;Ìu iPhone 13 Pro Max kh&ocirc;ng coÌ€n c&ocirc;Ì‰ng saÌ£c nhÆ° tin Ä‘á»“n, ngÆ°Æ¡Ì€i duÌ€ng máº«u iPhone cao cáº¥p n&agrave;y seÌƒ phaÌ‰i mua th&ecirc;m phá»¥ kiá»‡n MagSafe Ä‘&ecirc;Ì‰ saÌ£c pin Ä‘i&ecirc;Ì£n thoaÌ£i. Tuy nhi&ecirc;n, Ä‘iá»u n&agrave;y á»Ÿ thá»i Ä‘iá»ƒm hiá»‡n táº¡i l&agrave; hÆ¡i kh&oacute; c&oacute; kháº£ nÄƒng xáº£y ra. MagSafe chÆ°a th&ecirc;Ì‰ thay th&ecirc;Ì hÄƒÌ‰n viÌ£ triÌ cuÌ‰a sáº¡c c&oacute; d&acirc;y, n&ecirc;n háº³n ráº±ng iPhone 13 Pro Max váº«n seÌƒ c&oacute; c&ocirc;Ì‰ng&nbsp;Lightning.</p>', 'Iphone', 'Hoa ká»³', '150 x1960', 'hfghf', 'hfghfgh', 'fghfg', 'hfjghgjf', 'hjgfh', 'fjghfjgh', 'fghfg', 'hgjfhfg', 'hfjgh', 'gjfhfgh', 'fghfjghjgf', 'hjgfh', 'jgfhjgf', '', '', '', '', '', '', ''),
(19, 22, 'Äiá»‡n thoáº¡i Samsung Galaxy A5', './upload/img/images (1).jpg', 5000000, 'CÅ©', 32, '<p><a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham kháº£o Ä‘iá»‡n thoáº¡i chÃ­nh hÃ£ng táº¡i Thegioididong.com \"><strong>Äiá»‡n thoáº¡i th&ocirc;ng minh</strong></a>&nbsp;<strong>Samsung Galaxy A5 ná»•i báº­t vá»›i m&agrave;n h&igrave;nh Super AMOLED c&ugrave;ng thiáº¿t káº¿ nguy&ecirc;n khá»‘i báº±ng kim loáº¡i vu&ocirc;ng vá»©c sang trá»ng v&agrave; tinh táº¿.</strong></p>\r\n\r\n<p><strong>Thiáº¿t káº¿ nguy&ecirc;n khá»‘i Ä‘áº¹p máº¯t</strong></p>\r\n\r\n<p>Galaxy A5 c&oacute; thiáº¿t káº¿ Ä‘áº·c trÆ°ng cá»§a d&ograve;ng A khi c&aacute;c cáº¡nh Ä‘Æ°á»£c cáº¯t kim cÆ°Æ¡ng báº¯t s&aacute;ng v&agrave; l&agrave;m vu&ocirc;ng vá»©c hÆ¡n táº¡o sá»± kh&aacute;c láº¡, tuy nhi&ecirc;n khi cáº§m l&acirc;u m&aacute;y báº¡n sáº½ tháº¥y Ä‘au tay khi bá»‹ cáº¥n.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/70049/samsung-galaxy-a500-1-14.jpg\" onclick=\"return false;\"><img alt=\"Tá»•ng thá»ƒ cá»§a Galaxy A5 khÃ¡ vuÃ´ng vá»©c\" src=\"https://cdn.tgdd.vn/Products/Images/42/70049/samsung-galaxy-a500-1-14.jpg\" title=\"Tá»•ng thá»ƒ cá»§a Galaxy A5 khÃ¡ vuÃ´ng vá»©c\" /></a></p>\r\n\r\n<p><em>M&aacute;y Ä‘Æ°á»£c ho&agrave;n thiá»‡n báº±ng kim loáº¡i, sá»­ dá»¥ng kh&aacute; m&aacute;t tay</em></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/70049/samsung-galaxy-a500-1-11.jpg\" onclick=\"return false;\"><img alt=\"MÃ¡y cÃ³ Ä‘á»™ má»ng chá»‰ 6.7 mm nÃªn pháº§n viá»n camera bá»‹ lá»“i ra ngoÃ i Ä‘Ã´i chÃºt\" src=\"https://cdn.tgdd.vn/Products/Images/42/70049/samsung-galaxy-a500-1-11.jpg\" title=\"MÃ¡y cÃ³ Ä‘á»™ má»ng chá»‰ 6.7 mm nÃªn pháº§n viá»n camera bá»‹ lá»“i ra ngoÃ i Ä‘Ã´i chÃºt\" /></a></p>\r\n\r\n<p><em>M&aacute;y c&oacute; Ä‘á»™ má»ng chá»‰ 6.7 mm n&ecirc;n pháº§n viá»n camera bá»‹ lá»“i ra ngo&agrave;i Ä‘&ocirc;i ch&uacute;t</em></p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh Super AMOLED cho g&oacute;c nh&igrave;n rá»™ng</strong></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/70049/samsung-galaxy-a500-1-15.jpg\" onclick=\"return false;\"><img alt=\"MÃ¡y cÃ³ kÃ­ch thÆ°á»›c mÃ n hÃ¬nh 5 inch khÃ¡ rá»™ng rÃ£i Ä‘á»ƒ báº¡n sá»­ dá»¥ng mÃ¡y hÆ¡n, cÃ¡c phÃ­m Ä‘iá»u hÆ°á»›ng Ä‘Æ°á»£c Ä‘áº·t ngoÃ i mÃ n hÃ¬nh\" src=\"https://cdn.tgdd.vn/Products/Images/42/70049/samsung-galaxy-a500-1-15.jpg\" title=\"MÃ¡y cÃ³ kÃ­ch thÆ°á»›c mÃ n hÃ¬nh 5 inch khÃ¡ rá»™ng rÃ£i Ä‘á»ƒ báº¡n sá»­ dá»¥ng mÃ¡y hÆ¡n, cÃ¡c phÃ­m Ä‘iá»u hÆ°á»›ng Ä‘Æ°á»£c Ä‘áº·t ngoÃ i mÃ n hÃ¬nh\" /></a></p>\r\n\r\n<p><em>M&aacute;y c&oacute; k&iacute;ch thÆ°á»›c m&agrave;n h&igrave;nh 5 inch kh&aacute; rá»™ng r&atilde;i Ä‘á»ƒ báº¡n sá»­ dá»¥ng m&aacute;y hÆ¡n, c&aacute;c ph&iacute;m Ä‘iá»u hÆ°á»›ng Ä‘Æ°á»£c Ä‘áº·t ngo&agrave;i m&agrave;n h&igrave;nh</em></p>\r\n\r\n<p>[gallerycompare img1=&quot;https://cdn.tgdd.vn/Products/Images/42/70049/samsung-galaxy-a500-1-6-2.jpg&quot; img2=&quot;https://cdn.tgdd.vn/Products/Images/42/70049/samsung-galaxy-a500-1-7-2.jpg&quot;]</p>\r\n\r\n<p><em>Äáº·c biá»‡t, m&aacute;y sá»­ dá»¥ng m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#superamoled\" target=\"_blank\" title=\"TÃ¬m hiá»ƒu mÃ n hÃ¬nh Super AMOLED\">Super AMOLED</a>&nbsp;tÄƒng kháº£ nÄƒng hiá»ƒn thá»‹ m&agrave;u sáº¯c ráº¥t tá»‘t, g&oacute;c nh&igrave;n xung quanh rá»™ng hÆ¡n, kh&ocirc;ng bá»‹ máº¥t m&agrave;u</em></p>\r\n\r\n<p>Vá»›i m&agrave;n h&igrave;nh 5 inch, náº¿u báº¡n tháº¥y kh&aacute; kh&oacute; Ä‘á»ƒ d&ugrave;ng báº±ng 1 tay th&igrave; c&oacute; thá»ƒ t&ugrave;y chá»‰nh thu nhá» m&agrave;n h&igrave;nh Ä‘á»ƒ sá»­ dá»¥ng dá»… d&agrave;ng hÆ¡n.</p>\r\n\r\n<p><strong>Cáº¥u h&igrave;nh kh&aacute; á»•n</strong></p>\r\n\r\n<p>M&aacute;y sá»­ dá»¥ng chip&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/vi-xu-ly-di-dong-snapdragon-410-610-801-805-808-81-599368#snapdragon410\" target=\"_blank\" title=\"TÃ¬m hiá»ƒu chip Snapdragon 410\">Snapdragon 410</a>, 4 nh&acirc;n tá»‘c Ä‘á»™ 1.2 GHz, RAM 2 GB, bá»™ nhá»› trong 16 GB v&agrave; kháº£ nÄƒng má»Ÿ rá»™ng tháº» nhá»› l&ecirc;n 64 GB.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"315\" id=\"796067311\" src=\"https://www.youtube.com/embed/ZFV5q_4Q_Nk?rel=0&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fwww.thegioididong.com\" width=\"560\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Kh&ocirc;ng qu&aacute; xuáº¥t sáº¯c nhÆ°ng m&aacute;y váº«n c&oacute; thá»ƒ chÆ¡i Ä‘Æ°á»£c c&aacute;c game náº·ng v&agrave; Ä‘á»“ hoáº¡ hiá»ƒn thá»‹ kh&aacute; Ä‘áº¹p máº¯t</em></p>\r\n\r\n<p><strong>Camera chá»¥p Ä‘áº¹p</strong></p>\r\n\r\n<p>M&aacute;y Ä‘Æ°á»£c trang bá»‹ camera ch&iacute;nh l&ecirc;n Ä‘áº¿n 13 MP c&ugrave;ng kháº£ nÄƒng xá»­ l&yacute; h&igrave;nh áº£nh kh&aacute; Ä‘áº¹p máº¯t, m&aacute;y c&oacute; c&aacute;c chá»©c nÄƒng nhÆ° tá»± Ä‘á»™ng láº¥y n&eacute;t, cháº¡m láº¥y n&eacute;t, nháº­n diá»‡n khu&ocirc;n máº·t,&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cac-che-do-chup-anh-tren-smartphone-tiep-theo--739084#panorama\" target=\"_blank\" title=\"TÃ¬m hiá»ƒu cháº¿ Ä‘á»™ chá»¥p panorama\">panorama</a>.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/70049/samsung-galaxy-a500-1-8-1.jpg\" onclick=\"return false;\"><img alt=\"HÃ¬nh áº£nh chá»¥p báº±ng Galaxy A5 Ä‘áº¹p máº¯t cá»§a má»™t khÃ¡ch hÃ ng\" src=\"https://cdn.tgdd.vn/Products/Images/42/70049/samsung-galaxy-a500-1-8-1.jpg\" title=\"HÃ¬nh áº£nh chá»¥p báº±ng Galaxy A5 Ä‘áº¹p máº¯t cá»§a má»™t khÃ¡ch hÃ ng\" /></a></p>\r\n\r\n<p><em>H&igrave;nh áº£nh chá»¥p báº±ng Galaxy A5 Ä‘áº¹p máº¯t cá»§a má»™t kh&aacute;ch h&agrave;ng (áº¢nh:&nbsp;<a href=\"https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1716671\" target=\"_blank\" title=\"ThÃ´ng tin ngÆ°á»i dÃ¹ng\">Äinh V&otilde; Nam Hiáº¿u</a>)</em></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/70049/samsung-galaxy-a500-1-9-1.jpg\" onclick=\"return false;\"><img alt=\"áº¢nh chá»¥p má»™t con Ä‘Æ°á»ng nhiá»u tuyáº¿t rÆ¡i (áº¢nh: Hanh Chu)\" src=\"https://cdn.tgdd.vn/Products/Images/42/70049/samsung-galaxy-a500-1-9-1.jpg\" title=\"áº¢nh chá»¥p má»™t con Ä‘Æ°á»ng nhiá»u tuyáº¿t rÆ¡i (áº¢nh: Hanh Chu)\" /></a></p>\r\n\r\n<p><em>áº¢nh chá»¥p má»™t con Ä‘Æ°á»ng nhiá»u tuyáº¿t rÆ¡i (áº¢nh:&nbsp;<a href=\"https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1698925\" target=\"_blank\" title=\"ThÃ´ng tin ngÆ°á»i dÃ¹ng\">Hanh Chu</a>)</em></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/70049/samsung-galaxy-a500-1-8000.gif\" onclick=\"return false;\"><img alt=\"Camera phá»¥ cÃ³ Ä‘á»™ phÃ¢n giáº£i 5 MP, báº¡n cÃ³ thá»ƒ chá»¥p áº£nh báº±ng cá»­ chá»‰ tay khÃ¡ Ä‘Æ¡n giáº£n\" src=\"https://cdn.tgdd.vn/Products/Images/42/70049/samsung-galaxy-a500-1-8000.gif\" title=\"Camera phá»¥ cÃ³ Ä‘á»™ phÃ¢n giáº£i 5 MP, báº¡n cÃ³ thá»ƒ chá»¥p áº£nh báº±ng cá»­ chá»‰ tay khÃ¡ Ä‘Æ¡n giáº£n\" /></a></p>\r\n\r\n<p><em>Camera phá»¥ c&oacute; Ä‘á»™ ph&acirc;n giáº£i 5 MP, báº¡n c&oacute; thá»ƒ chá»¥p áº£nh báº±ng cá»­ chá»‰ tay kh&aacute; Ä‘Æ¡n giáº£n</em></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/70049/samsung-galaxy-a500-1-10.jpg\" onclick=\"return false;\"><img alt=\"GÃ³c chá»¥p trÃªn mÃ¡y rá»™ng hÆ¡n, mÃ¡y nháº­n dáº¡ng khuÃ´n máº·t Ä‘á»ƒ lÃ m má»‹n da ráº¥t tá»‘t\" src=\"https://cdn.tgdd.vn/Products/Images/42/70049/samsung-galaxy-a500-1-10.jpg\" title=\"GÃ³c chá»¥p trÃªn mÃ¡y rá»™ng hÆ¡n, mÃ¡y nháº­n dáº¡ng khuÃ´n máº·t Ä‘á»ƒ lÃ m má»‹n da ráº¥t tá»‘t\" /></a></p>\r\n\r\n<p><em>G&oacute;c chá»¥p tr&ecirc;n m&aacute;y rá»™ng hÆ¡n, m&aacute;y nháº­n dáº¡ng khu&ocirc;n máº·t Ä‘á»ƒ l&agrave;m má»‹n da ráº¥t tá»‘t</em></p>\r\n\r\n<p>[gallerycompare img1=&quot;https://cdn.tgdd.vn/Products/Images/42/70049/samsung-galaxy-a500-1-3-1.jpg&quot; img2=&quot;https://cdn.tgdd.vn/Products/Images/42/70049/samsung-galaxy-a500-1-4-1.jpg&quot;]</p>\r\n\r\n<p><em>Trong Ä‘iá»u kiá»‡n &aacute;nh s&aacute;ng Ä‘áº§y Ä‘á»§ hay yáº¿u, m&aacute;y cÅ©ng cho h&igrave;nh áº£nh hiá»ƒn thá»‹ tá»‘t</em></p>\r\n\r\n<p>M&aacute;y c&oacute; dung lÆ°á»£ng pin 2300 mAh, c&oacute; thá»ƒ gáº¯n 2 sim hoáº·c 1 sim 1&nbsp;<a href=\"https://www.thegioididong.com/the-nho-dien-thoai\" target=\"_blank\" title=\"Tháº» nhá»› cho Ä‘iá»‡n thoáº¡i\">tháº» nhá»›</a>&nbsp;t&ugrave;y theo nhu cáº§u sá»­ dá»¥ng cá»§a báº¡n, m&aacute;y c&oacute; c&aacute;c káº¿t ná»‘i cÆ¡ báº£n nháº¥t cho ngÆ°á»i d&ugrave;ng nhÆ° wifi, 3G, Ä‘á»‹nh vá»‹ hay bluetooth.</p>\r\n\r\n<p>Vá»›i thiáº¿t káº¿ Ä‘áº¹p nguy&ecirc;n khá»‘i kim loáº¡i, camera chá»¥p áº£nh Ä‘áº¹p v&agrave; cáº¥u h&igrave;nh m&aacute;y á»•n Ä‘á»‹nh th&igrave; Galaxy A5 sáº½ l&agrave; má»™t sá»± Æ°u ti&ecirc;n lá»±a chá»n cá»§a báº¡n trong ph&acirc;n kh&uacute;c gi&aacute; táº§m trung.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 22, 'Äiá»‡n thoáº¡i Samsung Galaxy S21 5G', './upload/img/images (2).jpg', 18000000, 'Má»›i', 20, '<h3><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s21\" rel=\"noopener\" target=\"_blank\" title=\"Tham kháº£o Ä‘iá»‡n thoáº¡i Galaxy S21 táº¡i thegioididong.com\">Galaxy S21 5G</a>&nbsp;náº±m trong series S21 Ä‘áº¿n tá»«&nbsp;<a href=\"https://www.thegioididong.com/samsung\" rel=\"noopener\" target=\"_blank\" title=\"Tham kháº£o sáº£n pháº©m Samsung kinh doanh táº¡i thegioididong.com\">Samsung</a>&nbsp;ná»•i báº­t vá»›i thiáº¿t káº¿ tr&agrave;n viá»n, cá»¥m camera áº¥n tÆ°á»£ng cho Ä‘áº¿n hiá»‡u nÄƒng máº¡nh máº½ h&agrave;ng Ä‘áº§u.</h3>\r\n\r\n<h3>&ldquo;Bá»™ c&aacute;nh&rdquo; má»›i ná»•i báº­t v&agrave; sang trá»ng</h3>\r\n\r\n<p>Ná»•i báº­t vá»›i cá»¥m camera sau Ä‘Æ°á»£c thiáº¿t káº¿ Ä‘áº§y má»›i láº¡, pháº§n khu&ocirc;n h&igrave;nh chá»¯ nháº­t chá»©a bá»™ 3 camera &ocirc;m trá»n cáº¡nh tr&aacute;i cá»§a chiáº¿c&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" rel=\"noopener\" target=\"_blank\" title=\"Tham kháº£o Ä‘iá»‡n thoáº¡i kinh doanh táº¡i thegioididong.com\">smartphone</a>, viá»n khu&ocirc;n cong uyá»ƒn chuyá»ƒn, háº¡n cháº¿ tá»‘i Ä‘a Ä‘á»™ nh&ocirc; ra so vá»›i máº·t lÆ°ng, mang láº¡i c&aacute;i nh&igrave;n tá»•ng thá»ƒ h&agrave;i h&ograve;a, Ä‘á»™c Ä‘&aacute;o.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/samsung-galaxy-s21-002.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Thiáº¿t káº¿ ná»•i báº­t vá»›i cá»¥m camera chá»¯ nháº­t\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/samsung-galaxy-s21-002.jpg\" title=\"Samsung Galaxy S21 5G | Thiáº¿t káº¿ ná»•i báº­t vá»›i cá»¥m camera chá»¯ nháº­t\" /></a></p>\r\n\r\n<p>Galaxy S21 c&oacute; 3 m&agrave;u sáº¯c ch&iacute;nh l&agrave;: T&iacute;m, tráº¯ng v&agrave; x&aacute;m. Cho ngÆ°á»i d&ugrave;ng thoáº£i m&aacute;i lá»±a chá»n Ä‘á»ƒ ph&ugrave; há»£p vá»›i phong c&aacute;ch cá»§a báº£n th&acirc;n nháº¥t.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/galaxy_s21_5g_20.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Vá»›i 3 mÃ u sáº¯c chÃ­nh lÃ : TÃ­m, tráº¯ng vÃ  xÃ¡m\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/galaxy_s21_5g_20.jpg\" title=\"Samsung Galaxy S21 5G | Vá»›i 3 mÃ u sáº¯c chÃ­nh lÃ : TÃ­m, tráº¯ng vÃ  xÃ¡m\" /></a></p>\r\n\r\n<p>Samsung Galaxy S21 há»— trá»£ Ä‘áº§y Ä‘á»§ t&iacute;nh nÄƒng báº£o máº­t sinh tráº¯c há»c, báº£o máº­t tá»‘i Ä‘a Ä‘iá»‡n thoáº¡i cá»§a báº¡n báº±ng c&ocirc;ng nghá»‡&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" rel=\"noopener\" target=\"_blank\" title=\"Tham kháº£o sáº£n pháº©m Ä‘iá»‡n thoáº¡i báº£o máº­t vÃ¢n tay táº¡i Tháº¿ Giá»›i Di Äá»™ng\">má»Ÿ kh&oacute;a v&acirc;n tay</a>&nbsp;si&ecirc;u &acirc;m Ä‘áº·t dÆ°á»›i m&agrave;n h&igrave;nh&nbsp;v&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-khuon-mat\" rel=\"noopener\" target=\"_blank\" title=\"Tham kháº£o cÃ¡c sáº£n pháº©m Ä‘iá»‡n thoáº¡i báº£o máº­t khuÃ´n máº·t táº¡i Tháº¿ Giá»›i Di Äá»™ng\">báº£o máº­t khu&ocirc;n máº·t</a>.&nbsp;Káº¿t há»£p vá»›i t&iacute;nh nÄƒng cháº¡m 2 láº§n s&aacute;ng m&agrave;n h&igrave;nh giá» Ä‘&acirc;y báº¡n c&oacute; thá»ƒ báº­t, má»Ÿ kh&oacute;a Ä‘iá»‡n thoáº¡i cá»±c k&igrave; nhanh ch&oacute;ng, tiá»‡n lá»£i v&agrave; an to&agrave;n.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/samsung-galaxy-s21-007.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Trang bá»‹ má»Ÿ khÃ³a vÃ¢n tay siÃªu Ã¢m Ä‘áº·t dÆ°á»›i mÃ n hÃ¬nh\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/samsung-galaxy-s21-007.jpg\" title=\"Samsung Galaxy S21 5G | Trang bá»‹ má»Ÿ khÃ³a vÃ¢n tay siÃªu Ã¢m Ä‘áº·t dÆ°á»›i mÃ n hÃ¬nh\" /></a></p>\r\n\r\n<p>Galaxy S21 l&agrave; chiáº¿c&nbsp;<a href=\"https://www.thegioididong.com/dtdd-chong-nuoc-bui\" rel=\"noopener\" target=\"_blank\" title=\"Tham kháº£o Ä‘iá»‡n thoáº¡i khÃ¡ng nÆ°á»›c, bá»¥i kinh doanh táº¡i thegioididong.com\">Ä‘iá»‡n thoáº¡i kh&aacute;ng nÆ°á»›c, bá»¥i</a>&nbsp;Ä‘áº¡t chuáº©n IP68, chuáº©n cao nháº¥t hiá»‡n táº¡i. M&aacute;y c&oacute; thá»ƒ sá»‘ng s&oacute;t á»Ÿ Ä‘á»™ s&acirc;u 1.5m l&ecirc;n Ä‘áº¿n 30 ph&uacute;t, gi&uacute;p háº¡n cháº¿ Ä‘Æ°á»£c kháº£ nÄƒng hÆ° há»ng thiáº¿t bá»‹ khi bá»‹ nÆ°á»›c Ä‘á»• v&agrave;o, trá»i mÆ°a hoáº·c kh&ocirc;ng may l&agrave;m rÆ¡i xuá»‘ng nÆ°á»›c.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/galaxy_s21_5g_17.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | KhÃ¡ng nÆ°á»›c, bá»¥i Ä‘áº¡t chuáº©n IP68\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/galaxy_s21_5g_17.jpg\" title=\"Samsung Galaxy S21 5G | KhÃ¡ng nÆ°á»›c, bá»¥i Ä‘áº¡t chuáº©n IP68\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh v&ocirc; cá»±c Infinity-O si&ecirc;u mÆ°á»£t</h3>\r\n\r\n<p>Galaxy S21 Ä‘Æ°á»£c trang bá»‹ m&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-man-hinh-dynamic-amoled-2x-tren-smartphone-1245213\" rel=\"noopener\" target=\"_blank\" title=\"TÃ¬m hiá»ƒu mÃ n hÃ¬nh Dynamic AMOLED 2X trÃªn smartphone\">Dynamic AMOLED 2X</a>, há»— trá»£ HDR10+ ti&ecirc;n tiáº¿n do Samsung ph&aacute;t triá»ƒn, c&oacute; thá»ƒ Ä‘áº¡t Ä‘Æ°á»£c Ä‘á»™ s&aacute;ng cao nháº¥t l&ecirc;n Ä‘áº¿n&nbsp;1300 nits, ngay cáº£ khi dÆ°á»›i &aacute;nh s&aacute;ng máº·t trá»i Galaxy S21 váº«n cho h&igrave;nh áº£nh sá»‘ng Ä‘á»™ng, r&otilde; r&agrave;ng Ä‘áº¿n kh&ocirc;ng ngá», sáº½ n&acirc;ng tráº£i nghiá»‡m thá»‹ gi&aacute;c cá»§a báº¡n l&ecirc;n má»™t táº§m cao má»›i.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/samsung-galaxy-s21-001.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Trang bá»‹ mÃ n hÃ¬nh Dynamic AMOLED 2X, há»— trá»£ HDR10+ tiÃªn tiáº¿n\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/samsung-galaxy-s21-001.jpg\" title=\"Samsung Galaxy S21 5G | Trang bá»‹ mÃ n hÃ¬nh Dynamic AMOLED 2X, há»— trá»£ HDR10+ tiÃªn tiáº¿n\" /></a></p>\r\n\r\n<p>Galaxy S21 sá»Ÿ há»¯u m&agrave;n h&igrave;nh k&iacute;ch thÆ°á»›c 6.2 inch Ä‘á»™ ph&acirc;n giáº£i&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd\" rel=\"noopener\" target=\"_blank\" title=\"Äá»™ phÃ¢n giáº£i mÃ n hÃ¬nh qHD, HD, FullHD, 2K, 4K lÃ  gÃ¬?\">Full HD+</a>&nbsp;c&oacute; táº§n sá»‘ qu&eacute;t 120 Hz, gáº¥p Ä‘&ocirc;i so vá»›i tháº¿ há»‡ trÆ°á»›c. Kh&ocirc;ng chá»‰ pháº£n há»“i cá»±c nháº¡y, m&agrave; m&agrave;n h&igrave;nh c&ograve;n tá»‘i Æ°u táº§n sá»‘ qu&eacute;t trong má»—i láº§n báº¡n thá»±c hiá»‡n thao t&aacute;c cháº¡m, cho má»i thao t&aacute;c cháº¡m cá»§a báº¡n Ä‘á»u má»‹n m&agrave;ng, nhanh nháº¡y v&agrave; c&oacute; Ä‘á»™ ch&iacute;nh x&aacute;c cao nháº¥t.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/galaxy_s21_5g_11.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | MÃ n hÃ¬nh kÃ­ch thÆ°á»›c 6.2 inch Ä‘á»™ phÃ¢n giáº£i Full HD+ cÃ³ táº§n sá»‘ quÃ©t 120 Hz\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/galaxy_s21_5g_11.jpg\" title=\"Samsung Galaxy S21 5G | MÃ n hÃ¬nh kÃ­ch thÆ°á»›c 6.2 inch Ä‘á»™ phÃ¢n giáº£i Full HD+ cÃ³ táº§n sá»‘ quÃ©t 120 Hz\" /></a></p>\r\n\r\n<p>B&ecirc;n cáº¡nh Ä‘&oacute;, Galaxy S21 Ä‘&atilde; nháº­n Ä‘Æ°á»£c chá»©ng nháº­n cho dáº£i m&agrave;u sáº¯c tr&ecirc;n di Ä‘á»™ng, 100% pháº¡m vi bao phá»§ DCI-P3 (chuáº©n Ä‘iá»‡n áº£nh) cho h&igrave;nh áº£nh kh&ocirc;ng bá»‹ nháº¡t m&agrave;u m&agrave; Ä‘Æ°á»£c hiá»ƒn thá»‹ sá»‘ng Ä‘á»™ng, báº¥t cháº¥p má»i Ä‘iá»u kiá»‡n &aacute;nh s&aacute;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/samsung-galaxy-s21-006.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Dáº£i mÃ u sáº¯c trÃªn di Ä‘á»™ng chuáº©n Ä‘iá»‡n áº£nh\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/samsung-galaxy-s21-006.jpg\" title=\"Samsung Galaxy S21 5G | Dáº£i mÃ u sáº¯c trÃªn di Ä‘á»™ng chuáº©n Ä‘iá»‡n áº£nh\" /></a><br />\r\nHÆ¡n tháº¿ ná»¯a, chiáº¿c Ä‘iá»‡n thoáº¡i n&agrave;y c&oacute; kháº£ nÄƒng giáº£m c&aacute;c t&aacute;c Ä‘á»™ng cá»§a &aacute;nh s&aacute;ng xanh, gi&uacute;p báº£o vá»‡ sá»©c khá»e Ä‘&ocirc;i máº¯t cá»§a báº¡n, háº¡n cháº¿ t&igrave;nh tráº¡ng nhá»©c, má»i máº¯t khi sá»­ dá»¥ng thiáº¿t bá»‹ trong thá»i gian d&agrave;i. Cho báº¡n thá»a sá»©c táº­n hÆ°á»Ÿng nhá»¯ng gi&acirc;y ph&uacute;t giáº£i tr&iacute; Ä‘á»‰nh cao, báº¥t ká»ƒ ng&agrave;y Ä‘&ecirc;m.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/galaxy_s21_5g_9.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Trang bá»‹ kÃ­nh cÆ°á»ng lá»±c Corning Gorilla Glass Victus\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/galaxy_s21_5g_9.jpg\" title=\"Samsung Galaxy S21 5G | Trang bá»‹ kÃ­nh cÆ°á»ng lá»±c Corning Gorilla Glass Victus\" /></a></p>\r\n\r\n<p>Galaxy S21 Ä‘Æ°á»£c báº£o vá»‡ bá»Ÿi&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-kinh-cuong-luc-corning-gorilla-glass-victus-1284586\" rel=\"noopener\" target=\"_blank\" title=\"TÃ¬m hiá»ƒu kÃ­nh cÆ°á»ng lá»±c Corning Gorilla Glass Victus smartphone\">k&iacute;nh cÆ°á»ng lá»±c Corning Gorilla Glass Victus</a>&nbsp;vá»›i kháº£ nÄƒng chá»‹u lá»±c cá»±c ká»³ áº¥n tÆ°á»£ng, háº¡n cháº¿ tá»‘i Ä‘a tráº§y xÆ°á»›c v&agrave; hÆ° há»ng. Ä&acirc;y l&agrave; loáº¡i k&iacute;nh cá»©ng nháº¥t tr&ecirc;n Ä‘iá»‡n thoáº¡i th&ocirc;ng minh&nbsp;Samsung ká»ƒ tá»« Ä‘áº§u nÄƒm 2021.</p>\r\n\r\n<h3>Camera cho h&igrave;nh áº£nh ho&agrave;n háº£o Ä‘áº¿n tá»«ng chi tiáº¿t</h3>\r\n\r\n<p>Th&ocirc;ng sá»‘ m&aacute;y áº£nh lu&ocirc;n l&agrave; niá»m tá»± h&agrave;o cá»§a Samsung. Galaxy S21 chiáº¿c Ä‘iá»‡n thoáº¡i sá»Ÿ há»¯u 3 camera sau trong Ä‘&oacute;&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/camera-goc-rong-goc-sieu-rong-tren-smartphone-la-1172240\" rel=\"noopener\" target=\"_blank\" title=\"Camera gÃ³c rá»™ng, gÃ³c siÃªu rá»™ng trÃªn smartphone lÃ  gÃ¬?\">camera g&oacute;c rá»™ng</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/camera-goc-rong-goc-sieu-rong-tren-smartphone-la-1172240\" rel=\"noopener\" target=\"_blank\" title=\"Camera gÃ³c rá»™ng, gÃ³c siÃªu rá»™ng trÃªn smartphone lÃ  gÃ¬?\">g&oacute;c si&ecirc;u rá»™ng</a>&nbsp;c&oacute; c&ugrave;ng Ä‘á»™ ph&acirc;n giáº£i l&agrave; 12 MP,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-zoom\" rel=\"noopener\" target=\"_blank\" title=\"Tham kháº£o sáº£n pháº©m Ä‘iá»‡n thoáº¡i cÃ³ camera tele táº¡i Tháº¿ Giá»›i Di Äá»™ng\">camera tele</a>&nbsp;c&oacute; Ä‘á»™ ph&acirc;n giáº£i l&ecirc;n Ä‘áº¿n 64 MP. á»ž máº·t trÆ°á»›c, camera selfie c&oacute; Ä‘á»™ ph&acirc;n giáº£i 10 MP.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/samsung-galaxy-s21-003.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Cá»¥m camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/samsung-galaxy-s21-003.jpg\" title=\"Samsung Galaxy S21 5G | Cá»¥m camera sau\" /></a></p>\r\n\r\n<p>Cá»¥m camera n&agrave;y há»— trá»£ Ä‘áº§y Ä‘á»§ c&aacute;c t&iacute;nh nÄƒng m&agrave; má»™t ngÆ°á»i d&ugrave;ng cáº§n. Cháº¿ Ä‘á»™ chá»¥p ch&acirc;n dung, g&oacute;c rá»™ng, AI l&agrave;m Ä‘áº¹p,... lu&ocirc;n sáºµn s&agrave;ng mang Ä‘áº¿n cho ngÆ°á»i d&ugrave;ng nhá»¯ng bá»©c áº£nh xuáº¥t sáº¯c m&agrave; kh&ocirc;ng cáº§n chá»‰nh sá»­a qu&aacute; nhiá»u.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/galaxy_s21_5g_16.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Camera gÃ³c rá»™ng, gÃ³c siÃªu rá»™ng cÃ³ cÃ¹ng Ä‘á»™ phÃ¢n giáº£i lÃ 12 MP\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/galaxy_s21_5g_16.jpg\" title=\"Samsung Galaxy S21 5G | Camera gÃ³c rá»™ng, gÃ³c siÃªu rá»™ng cÃ³ cÃ¹ng Ä‘á»™ phÃ¢n giáº£i lÃ 12 MP\" /></a></p>\r\n\r\n<p>Cháº¿ Ä‘á»™ chá»¥p Ä‘&ecirc;m (<a href=\"https://www.thegioididong.com/hoi-dap/che-do-chup-dem-night-mode-la-gi-907873\" rel=\"noopener\" target=\"_blank\" title=\"Cháº¿ Ä‘á»™ chá»¥p Ä‘Ãªm - Night mode lÃ  gÃ¬?\">Night Mode</a>)&nbsp;sáº½ gi&uacute;p c&aacute;c cuá»™c vui trong Ä‘&ecirc;m cá»§a báº¡n Ä‘Æ°á»£c ghi láº¡i má»™t c&aacute;ch r&otilde; r&agrave;ng.&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/zoom-quang-hoc-va-zoom-ky-thuat-so-la-gi-co-gi-khac-nhau-1296828#zoom-ky-thuat-so\" rel=\"noopener\" target=\"_blank\" title=\"Zoom quang há»c vÃ  zoom ká»¹ thuáº­t sá»‘ lÃ  gÃ¬? CÃ³ gÃ¬ khÃ¡c nhau?\">Zoom ká»¹ thuáº­t sá»‘</a>&nbsp;l&ecirc;n Ä‘áº¿n 30x c&oacute; thá»ƒ gi&uacute;p báº¡n tiáº¿p cáº­n Ä‘Æ°á»£c nhá»¯ng váº­t thá»ƒ á»Ÿ xa vá»›i Ä‘á»™ chi tiáº¿t cao nháº¥t.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/galaxy_s21_5g_18.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Cháº¿ Ä‘á»™ chá»¥p Ä‘Ãªm (Night Mode), Zoom ká»¹ thuáº­t sá»‘ lÃªn Ä‘áº¿n 30x \" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/galaxy_s21_5g_18.jpg\" title=\"Samsung Galaxy S21 5G | Cháº¿ Ä‘á»™ chá»¥p Ä‘Ãªm (Night Mode), Zoom ká»¹ thuáº­t sá»‘ lÃªn Ä‘áº¿n 30x \" /></a></p>\r\n\r\n<p>Samsung Galaxy S21 cho ph&eacute;p quay video cháº¥t lÆ°á»£ng 8K si&ecirc;u cao. Ä&acirc;y l&agrave; Ä‘á»™ ph&acirc;n giáº£i m&agrave; &iacute;t c&oacute; d&ograve;ng smartphone n&agrave;o sá»Ÿ há»¯u Ä‘Æ°á»£c. Nhá» sá»± há»— trá»£ cá»§a c&aacute;c c&ocirc;ng nghá»‡ chá»‘ng rung si&ecirc;u á»•n Ä‘á»‹nh, c&ugrave;ng vá»›i má»™t &iacute;t bá»™ lá»c m&agrave;u ngÆ°á»i d&ugrave;ng c&oacute; thá»ƒ s&aacute;ng táº¡o nhá»¯ng thÆ°á»›c phim h&agrave;ng ng&agrave;y, khi Ä‘i du lá»‹ch hay v&agrave;o dá»‹p Ä‘áº·c biá»‡t,... táº¥t cáº£ Ä‘á»u tr&ocirc;ng nhÆ° nhá»¯ng bá»™ phim cháº¥t lÆ°á»£ng cao ngo&agrave;i ráº¡p.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/samsung-galaxy-s21-008.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Giao diá»‡n chá»¥p áº£nh\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/samsung-galaxy-s21-008.jpg\" title=\"Samsung Galaxy S21 5G | Giao diá»‡n chá»¥p áº£nh\" /></a></p>\r\n\r\n<p>Camera selfie AI 10 MP há»— trá»£ chá»¥p g&oacute;c rá»™ng,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/che-do-chup-anh-hdr-tren-smartphone-la-gi-906400\" rel=\"noopener\" target=\"_blank\" title=\"Cháº¿ Ä‘á»™ chá»¥p áº£nh HDR trÃªn smartphone lÃ  gÃ¬?\">HDR</a>, cháº¿ Ä‘á»™ tá»± Ä‘á»™ng l&agrave;m Ä‘áº¹p k&egrave;m theo&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/ar-stickers-la-gi-vi-sao-hang-nao-cung-ap-dung-ar-1096228\" rel=\"noopener\" target=\"_blank\" title=\"AR Stickers lÃ  gÃ¬? VÃ¬ sao hÃ£ng nÃ o cÅ©ng Ã¡p dá»¥ng AR\">Stickers</a>, ngÆ°á»i d&ugrave;ng thoáº£i m&aacute;i s&aacute;ng táº¡o Ä‘a dáº¡ng kiá»ƒu máº«u áº£nh m&agrave; m&igrave;nh th&iacute;ch. Ngo&agrave;i ra, camera n&agrave;y cÅ©ng sá»Ÿ há»¯u quay video Ä‘á»™ ph&acirc;n giáº£i l&ecirc;n Ä‘áº¿n 4K.&nbsp;</p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/images/42/220833/galaxy_s21_5g_15.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Camera selfie AI 10 MP há»— trá»£ chá»¥p gÃ³c rá»™ng, HDR, lÃ m Ä‘áº¹p thÃ´ng minh\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/galaxy_s21_5g_15.jpg\" title=\"Samsung Galaxy S21 5G | Camera selfie AI 10 MP há»— trá»£ chá»¥p gÃ³c rá»™ng, HDR, lÃ m Ä‘áº¹p thÃ´ng minh\" /></a><br />\r\nVi xá»­ l&yacute; Exynos 2100 má»›i nháº¥t cá»§a Samsung&nbsp;</h3>\r\n\r\n<p>Cho Ä‘áº¿n th&aacute;ng 01/2021 th&igrave; CPU Exynos 2100 8 nh&acirc;n l&agrave; con chip thá»© 2 cá»§a nh&agrave; Samsung Ä‘Æ°á»£c sáº£n xuáº¥t tr&ecirc;n quy tr&igrave;nh 5 nm EUV, Ä‘Æ°á»£c cáº£i tiáº¿n vá»›i tá»‘c Ä‘á»™ nhanh hÆ¡n, th&ocirc;ng minh hÆ¡n v&agrave; tiáº¿t kiá»‡m Ä‘iá»‡n hÆ¡n. Cho báº¡n thá»a sá»©c l&agrave;m viá»‡c v&agrave; giáº£i tr&iacute; hiá»‡u quáº£ vá»›i kháº£ nÄƒng xá»­ l&yacute; máº¡nh máº½ vÆ°á»£t trá»™i.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/samsung-galaxy-s21-009.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Trang bá»‹ vi xá»­ lÃ½ Exynos 2100\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/samsung-galaxy-s21-009.jpg\" title=\"Samsung Galaxy S21 5G | Trang bá»‹ vi xá»­ lÃ½ Exynos 2100\" /></a></p>\r\n\r\n<p>CPU Exynos 2100 Ä‘i k&egrave;m vá»›i GPU Mali-G78 cáº£i thiá»‡n hiá»‡u suáº¥t Ä‘á»“ há»a l&ecirc;n tá»›i 40% so vá»›i tháº¿ há»‡ trÆ°á»›c.&nbsp;Hiá»‡u nÄƒng Ä‘o Ä‘Æ°á»£c tr&ecirc;n á»©ng dá»¥ng AnTuTu cho sá»‘ liá»‡u l&agrave; 460.537 Ä‘iá»ƒm gi&uacute;p Ä‘iá»‡n thoáº¡i chÆ¡i game tá»‘t mÆ°á»£t m&agrave; tr&ecirc;n c&aacute;c d&ograve;ng game phá»• biáº¿n hiá»‡n nay nhÆ° PUBG Mobile, Li&ecirc;n Qu&acirc;n Mobile,...</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/samsung-galaxy-s21-5g-test.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Äiá»ƒm Antutu\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/samsung-galaxy-s21-5g-test.jpg\" title=\"Samsung Galaxy S21 5G | Äiá»ƒm Antutu\" /></a></p>\r\n\r\n<p>Cháº¿ Ä‘á»™ Priority Mode má»›i tá»« Game Booster cá»§a h&atilde;ng sáº½ cháº·n c&aacute;c cuá»™c gá»i, th&ocirc;ng b&aacute;o, AI sáº½ tá»± Ä‘á»™ng Ä‘iá»u chá»‰nh c&aacute;c c&agrave;i Ä‘áº·t Ä‘á»ƒ mang Ä‘áº¿n nhá»¯ng tráº£i nghiá»‡m tá»‘t nháº¥t, Ä‘á»“ng thá»i cáº£i thiá»‡n hiá»‡u suáº¥t cá»§a m&aacute;y l&ecirc;n má»©c tá»‘i Ä‘a.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/220833/galaxy_s21_5g_6.jpg\" onclick=\"return false;\"><img alt=\"Samsung Galaxy S21 5G | Cháº¿ Ä‘á»™ Priority Mode má»›i tá»« Game Booster cháº·n cuá»™c gá»i, thÃ´ng bÃ¡o\" src=\"https://cdn.tgdd.vn/Products/Images/42/220833/galaxy_s21_5g_6.jpg\" title=\"Samsung Galaxy S21 5G | Cháº¿ Ä‘á»™ Priority Mode má»›i tá»« Game Booster cháº·n cuá»™c gá»i, thÃ´ng bÃ¡o\" /></a></p>\r\n\r\n<p>Äi k&egrave;m vá»›i CPU máº¡nh máº½ tr&ecirc;n l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-ram-8gb\" rel=\"noopener\" target=\"_blank\" title=\"Tham kháº£o Ä‘iá»‡n thoáº¡i cÃ³ RAM 8 GB táº¡i Thegioididong.com\">8 GB RAM</a>&nbsp;cho kháº£ nÄƒng Ä‘a nhiá»‡m mÆ°á»£t m&agrave;,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-rom-128gb\" rel=\"noopener\" target=\"_blank\" title=\"Tham kháº£o Ä‘iá»‡n thoáº¡i cÃ³ bá»™ nhá»› 128 GB táº¡i Thegioididong.com\">bá»™ nhá»› trong 128 GB</a>&nbsp;cho ph&eacute;p ngÆ°á»i d&ugrave;ng thoáº£i m&aacute;i lÆ°u trá»¯ dá»¯ liá»‡u cáº§n thiáº¿t. LÆ°u &yacute; ráº±ng chiáº¿c</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 30, 'Xiaomi Poco X3 GT', './upload/img/xiaomi-poco-x3-gt-600x600.jpg', 5063654, 'Má»›i', 15, '<h2><strong>Äiá»‡n Thoáº¡i Xiaomi Poco X3 GT - hiá»‡u nÄƒng máº¡nh máº½, camera cá»±c Ä‘á»‰nh</strong></h2>\r\n\r\n<p>H&atilde;ng Ä‘iá»‡n thoáº¡i POCO Ä‘&atilde; t&aacute;ch th&agrave;nh má»™t d&ograve;ng Ä‘iá»‡n thoáº¡i Ä‘á»™c láº­p. Ngay sau Ä‘&oacute;, POCO cho ra Ä‘á»i nhá»¯ng d&ograve;ng smartphone&nbsp;cháº¥t lÆ°á»£ng cao nhÆ°ng mang t&ecirc;n&nbsp;<strong>Xiaomi Poco X3 GT</strong>. Máº«u&nbsp;<a href=\"https://cellphones.com.vn/mobile/hang-sap-ve/xiaomi.html\" target=\"_self\" title=\"Äiá»‡n thoáº¡i Xiaomi chÃ­nh hÃ£ng\">Ä‘iá»‡n thoáº¡i Xiaomi</a>&nbsp;vá»›i hiá»‡u nÄƒng máº¡nh máº½ v&agrave; camera sá»‘ng Ä‘á»™ng há»©a háº¹n mang láº¡i tráº£i nghiá»‡m th&uacute; vá»‹ cho ngÆ°á»i d&ugrave;ng.</p>\r\n\r\n<h3><strong>Chip Dimensity 1100 hoáº¡t Ä‘á»™ng máº¡nh máº½</strong></h3>\r\n\r\n<p>Äiá»‡n thoáº¡i POCO X3 GT sáº½ Ä‘Æ°á»£c trang bá»‹ con chip Dimensity 1100, há»‡ thá»‘ng con chip n&agrave;y cho ph&eacute;p m&aacute;y hoáº¡t Ä‘á»™ng vá»›i hiá»‡u nÄƒng máº¡nh máº½. Con chip n&agrave;y Ä‘Æ°á»£c sáº£n xuáº¥t vá»›i tiáº¿n tr&igrave;nh 6nm cá»§a h&atilde;ng vá»›i GPU Mali-G77.</p>\r\n\r\n<p><img alt=\"Chip Dimensity 1100 hoáº¡t Ä‘á»™ng máº¡nh máº½\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/xiaomi/Xiaomi-Poco-X3-GT-1.jpg\" /></p>\r\n\r\n<p>K&egrave;m theo Ä‘&oacute; l&agrave; dung lÆ°á»£ng RAM c&ugrave;ng bá»™ nhá»› trong lá»›n mang láº¡i kháº£ nÄƒng Ä‘a nhiá»‡m thoáº£i m&aacute;i hÆ¡n. Äá»“ng thá»i báº¡n c&oacute; thá»ƒ thoáº£i m&aacute;i chá»¥p áº£nh, lÆ°u trá»¯, quay video, chÆ¡i game,&hellip; m&agrave; kh&ocirc;ng lo háº¿t dung lÆ°á»£ng bá»™ nhá»›.</p>\r\n\r\n<p>Má»™t Ä‘iá»u Ä‘áº·c biá»‡t Ä‘á»‘i vá»›i c&aacute;c game thá»§, POCO X3 GT cho ph&eacute;p báº¡n táº£i vá» v&agrave; chiáº¿n tr&ecirc;n c&aacute;c tá»±a game hot hiá»‡n nay. Tuy nhi&ecirc;n Ä‘á»ƒ game c&oacute; thá»ƒ cháº¡y mÆ°á»£t tá»‘t nháº¥t, báº¡n chá»‰ n&ecirc;n thiáº¿t láº­p má»©c Ä‘á»“ há»a ph&ugrave; há»£p.</p>\r\n\r\n<h3><strong>Sá»Ÿ há»¯u thiáº¿t káº¿ sang trá»ng v&agrave; nÄƒng lÆ°á»£ng pin khá»§ng</strong></h3>\r\n\r\n<p>Vá»›i thiáº¿t káº¿ cáº¡nh sang trá»ng, bo g&oacute;c má»m máº¡i gi&uacute;p ngÆ°á»i d&ugrave;ng cáº§m náº¯m thoáº£i m&aacute;i hÆ¡n. Má»™t sá»± káº¿t há»£p ho&agrave;n thiá»‡n tá»« trong ra ngo&agrave;i vá»›i cháº¥t liá»‡u cao cáº¥p táº¡o n&ecirc;n má»™t váº» Ä‘áº¹p ráº¥t cuá»‘n h&uacute;t. Vá» m&agrave;u sáº¯c, Ä‘iá»‡n thoáº¡i cÅ©ng sáº½ Ä‘Æ°á»£c trang bá»‹ nhiá»u phi&ecirc;n báº£n m&agrave;u sáº¯c kh&aacute;c nhau cho ngÆ°á»i d&ugrave;ng lá»±a chá»n nhÆ° xanh, Ä‘en,&hellip;</p>\r\n\r\n<p>Chiáº¿c Ä‘iá»‡n thoáº¡i POCO X3 GT sá»Ÿ há»¯u m&agrave;n h&igrave;nh lá»›n, sá»­ dá»¥ng ná»n IPS v&agrave; k&iacute;ch thÆ°á»›c l&ecirc;n Ä‘áº¿n 6.6 inch k&egrave;m theo l&agrave; Ä‘á»™ ph&acirc;n giáº£i Full HD+ gi&uacute;p cho g&oacute;c nh&igrave;n rá»™ng r&atilde;i v&agrave; ch&ecirc;m ngÆ°á»¡ng m&agrave;u sáº¯c má»™t c&aacute;ch ch&acirc;n thá»±c hÆ¡n. M&aacute;y thiáº¿t káº¿ m&agrave;n h&igrave;nh Ä‘á»¥c lá»— - xu hÆ°á»›ng thiáº¿t káº¿ cá»§a nÄƒm nháº§m Ä‘áº©y nhanh xu tháº¿, tÄƒng Ä‘á»™ Ä‘áº¹p v&agrave; tinh táº¿ cá»§a chiáº¿c smartphone.</p>\r\n\r\n<p><img alt=\"Sá»Ÿ há»¯u thiáº¿t káº¿ sang trá»ng vÃ  nÄƒng lÆ°á»£ng pin khá»§ng\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/xiaomi/Xiaomi-Poco-X3-GT-2.jpg\" /></p>\r\n\r\n<p>K&egrave;m theo Ä‘&oacute; Xiaomi Poco X3 GT c&oacute; thá»ƒ hoáº¡t Ä‘á»™ng máº¡nh máº½ nhá» nguá»“n cung cáº¥p nÄƒng lÆ°á»£ng bÆ¡i pin 5.000 mAh. Tuy kh&ocirc;ng qu&aacute; lá»›n nhÆ°ng dung lÆ°á»£ng pin n&agrave;y cho ph&eacute;p m&aacute;y t&iacute;nh sá»­ dá»¥ng vá»›i nhá»¯ng th&ocirc;ng sá»‘ tÆ°Æ¡ng Ä‘á»‘i khá»§ng v&agrave; Ä‘Æ°á»£c bá»‘ tr&iacute; sáº¡c nhanh c&ocirc;ng suáº¥t lá»›n gi&uacute;p pin sáº¡c nhanh hÆ¡n.</p>\r\n\r\n<h3><strong>Kháº£ nÄƒng nhiáº¿p áº£nh cá»§a smartphone POCO X3 GT cá»±c Ä‘á»‰nh</strong></h3>\r\n\r\n<p>POCO X3 GT sáº½ c&oacute; cá»¥m camera vá»›i th&ocirc;ng sá»‘ cá»¥ thá»ƒ bao gá»“m camera ch&iacute;nh 64 MP; camera Ä‘o chiá»u s&acirc;u 2 MP v&agrave; camera g&oacute;c si&ecirc;u rá»™ng l&ecirc;n Ä‘áº¿n 8 MP. Vá»›i cháº¥t lÆ°á»£ng camera n&agrave;y báº¡n c&oacute; thá»ƒ thá»a sá»©c check in v&agrave; chá»¥p nhá»¯ng táº¥m h&igrave;nh si&ecirc;u n&eacute;t. Ngo&agrave;i ra m&aacute;y c&ograve;n trang bá»‹ má»™t camera selfie vá»›i Ä‘á»™ ph&acirc;n giáº£i 16MP.</p>\r\n\r\n<p><img alt=\"Kháº£ nÄƒng nhiáº¿p áº£nh cá»§a smartphone POCO X3 GT cá»±c Ä‘á»‰nh\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/xiaomi/Xiaomi-Poco-X3-GT-3.jpg\" /></p>\r\n\r\n<h2><strong>Äiá»‡n thoáº¡i&nbsp;</strong><strong>Xiaomi Poco X3 GT&nbsp;</strong><strong>khi n&agrave;o ra máº¯t? Gi&aacute; b&aacute;n bao nhi&ecirc;u?</strong></h2>\r\n\r\n<p>Xiaomi Poco X3 GT sáº½ ra máº¯t thá»‹ trÆ°á»ng trong qu&yacute; 3 nÄƒm 2021. Vá»›i nhá»¯ng t&iacute;nh nÄƒng Ä‘Æ°á»£c káº¿t há»£p ho&agrave;n háº£o nhÆ° tr&ecirc;n Ä‘iá»‡n thoáº¡i Xiaomi Poco X3 GT cháº¯c cháº¯n sáº½ nháº­n Ä‘Æ°á»£c sá»± ch&uacute; &yacute; cá»§a nhiá»u ngÆ°á»i d&ugrave;ng.</p>\r\n\r\n<p>Vá» gi&aacute; b&aacute;n, Ä‘iá»‡n thoáº¡i Xiaomi Poco X3 GT l&agrave; sáº£n pháº©m smartphone thuá»™c ph&acirc;n kh&uacute;c gi&aacute; ráº» n&ecirc;n sáº½ Ä‘Æ°á»£c l&ecirc;n ká»‡ vá»›i má»©c gi&aacute; ph&ugrave; há»£p vá»›i nhiá»u ngÆ°á»i ti&ecirc;u d&ugrave;ng. Cá»¥ thá»ƒ, Xiaomi Poco X3 GT c&oacute; thá»ƒ Ä‘Æ°á»£c l&ecirc; ká»‡ vá»›i má»©c gi&aacute; tá»« 3 &ndash; 6 triá»‡u Ä‘á»“ng t&ugrave;y v&agrave;o tá»«ng phi&ecirc;n báº£n cáº¥u h&igrave;nh.</p>\r\n\r\n<h2><strong>Mua&nbsp;</strong><strong>Ä‘iá»‡n thoáº¡i&nbsp;</strong><strong>POCO X3 GT ch&iacute;nh h&atilde;ng, gi&aacute; ráº» táº¡i&nbsp;</strong><strong>CellphoneS</strong></h2>\r\n\r\n<p>Xiaomi Poco X3 GT l&agrave; má»™t máº«u Ä‘iá»‡n thoáº¡i gi&aacute; ráº» vá»›i hiá»‡u nÄƒng mÆ°á»£t. Náº¿u báº¡n Ä‘ang quan t&acirc;m Ä‘áº¿n máº«u smartphone n&agrave;y, h&atilde;y nhanh tay Ä‘áº¿ vá»›i CellphoneS &ndash; há»‡ thá»‘ng b&aacute;n láº» Ä‘iá»‡n thoáº¡i ch&iacute;nh h&atilde;ng &ndash; Ä‘á»ƒ t&igrave;m hiá»ƒu v&agrave; Ä‘Æ°á»£c c&aacute;c nh&acirc;n vi&ecirc;n tÆ° váº¥n chi tiáº¿t.</p>', 'Xiaomi', 'Trung quá»‘c', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CÃ³'),
(22, 30, 'Äiá»‡n Thoáº¡i Xiaomi Poco X3 Pro ChÃ­nh HÃ£ng', './upload/img/xiaomi-poco-x3-pro-600x600-1-600x600.jpg', 6545000, 'Má»›i', 150, '<h3 dir=\"ltr\">Xiaomi POCO X3 Pro&nbsp;ra máº¯t ná»•i báº­t vá»›i thiáº¿t káº¿ kh&aacute; Ä‘á»™c Ä‘&aacute;o vá»›i cá»¥m camera, m&agrave;n h&igrave;nh mÆ°á»£t m&agrave; nhÆ° lá»¥a, pin khá»§ng, sáº¡c cá»±c nhanh v&agrave; loa cháº¥t lÆ°á»£ng ph&ograve;ng thu há»©a háº¹n sáº½ mang láº¡i tráº£i nghiá»‡m ngÆ°á»i d&ugrave;ng áº¥n tÆ°á»£ng.</h3>\r\n\r\n<h3 dir=\"ltr\">Thiáº¿t káº¿ hiá»‡n Ä‘áº¡i, thá»i trang</h3>\r\n\r\n<p dir=\"ltr\">áº¤n tÆ°á»£ng Ä‘áº§u ti&ecirc;n cá»§a POCO X3 Pro ch&iacute;nh l&agrave; máº·t lÆ°ng m&aacute;y Ä‘Æ°á»£c ho&agrave;n thiá»‡n dáº¡ng trÆ¡n, Ä‘á»• b&oacute;ng, trong khi khu vá»±c hai b&ecirc;n Ä‘&atilde; Ä‘Æ°á»£c l&agrave;m nh&aacute;m Ä‘á»ƒ mang láº¡i cáº£m gi&aacute;c cáº§m tá»‘t hÆ¡n tháº¿ há»‡ tiá»n nhiá»‡m.</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://cdn-img-v2.webbnc.net/uploadv2/web/14/14571/media/2021/06/24/02/38/1624507477_xiaomi-poco-x3-pro-1.jpg\" /></p>\r\n\r\n<p dir=\"ltr\">Vá» tá»•ng thá»ƒ POCO&nbsp;X3 Pro váº«n c&oacute; thiáº¿t káº¿ vá»›i vá» ngo&agrave;i v&agrave; khung l&agrave;m tá»« nhá»±a cáº£i tiáº¿n kh&aacute; nháº¹ m&agrave; váº«n Ä‘áº£m báº£o Ä‘á»™ cháº¯c cháº¯n vá»›i kháº£ nÄƒng chá»‘ng b&aacute;m má»“ h&ocirc;i hay v&acirc;n tay, gi&uacute;p&nbsp;Ä‘iá»‡n thoáº¡i&nbsp;cá»§a báº¡n sáº½ lu&ocirc;n Ä‘áº¹p nhÆ° má»›i d&ugrave; kh&ocirc;ng Ä‘eo á»‘p báº£o vá»‡.</p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"https://cdn-img-v2.webbnc.net/uploadv2/web/14/14571/media/2021/06/24/02/38/1624507494_xiaomi-poco-x3-pro-2.jpg\" /></p>\r\n\r\n<p dir=\"ltr\">M&aacute;y Ä‘i k&egrave;m vá»›i 3 vá»›i phi&ecirc;n báº£n m&agrave;u: Phantom Black, Metal Bronze v&agrave; Frost Blue cho ngÆ°á»i d&ugrave;ng tuá»³ chá»n theo nhu cáº§u sá»Ÿ th&iacute;ch cá»§a báº£n th&acirc;n.</p>\r\n\r\n<h3 dir=\"ltr\">M&agrave;n h&igrave;nh giáº£i tr&iacute; sáº¯c n&eacute;t, táº§n sá»‘ 120 Hz mÆ°á»£t m&agrave;</h3>\r\n\r\n<p dir=\"ltr\">M&agrave;n h&igrave;nh POCO X3 Pro c&oacute; k&iacute;ch thÆ°á»›c 6.67 inch Ä‘á»™ ph&acirc;n giáº£i Full HD+ vá»›i tá»‰ lá»‡ 20:9 c&ugrave;ng khung viá»n má»ng mang láº¡i kh&ocirc;ng gian hiá»ƒn thá»‹ lá»›n.</p>\r\n\r\n<p dir=\"ltr\">&nbsp; &nbsp;<img alt=\"\" src=\"https://cdn-img-v2.webbnc.net/uploadv2/web/14/14571/media/2021/06/24/02/39/1624507506_xiaomi-poco-x3-pro-3.jpg\" /></p>\r\n\r\n<p dir=\"ltr\">HÆ¡n tháº¿ ná»¯a, m&agrave;n h&igrave;nh cá»§a POCO X3 Pro c&ograve;n há»— trá»£ táº§n sá»‘ qu&eacute;t lá»›n l&ecirc;n Ä‘áº¿n 120 Hz mang láº¡i cáº£m gi&aacute;c mÆ°á»£t m&agrave; trong c&aacute;c thao t&aacute;c cháº¡m, vuá»‘t cÅ©ng nhÆ° chuyá»ƒn Ä‘á»•i giá»¯a c&aacute;c á»©ng dá»¥ng.</p>\r\n\r\n<p>&nbsp;&nbsp;<img alt=\"\" src=\"https://cdn-img-v2.webbnc.net/uploadv2/web/14/14571/media/2021/06/24/02/39/1624507547_xiaomi-poco-x3-pro-4.jpg\" /></p>\r\n\r\n<p dir=\"ltr\">Äá»“ng thá»i, tá»‘c Ä‘á»™ láº¥y máº«u cáº£m á»©ng 240 Hz cao gi&uacute;p giáº£m Ä‘á»™ trá»… cáº£m á»©ng v&agrave; gi&uacute;p kiá»ƒm so&aacute;t Ä‘á»™ nháº¡y trong tr&ograve; chÆ¡i tá»‘t hÆ¡n, n&acirc;ng tráº£i nghiá»‡m chÆ¡i game cá»§a báº¡n l&ecirc;n má»™t táº§m cao má»›i.</p>\r\n\r\n<p dir=\"ltr\">Äáº·c biá»‡t, m&agrave;n h&igrave;nh POCO X3 Pro Ä‘Æ°á»£c trang bá»‹ lá»›p k&iacute;nh cÆ°á»ng lá»±c Gorilla Glass 6 bá»n bá»‰ trong qu&aacute; tr&igrave;nh sá»­ dá»¥ng, gi&uacute;p m&aacute;y c&oacute; thá»ƒ sá»‘ng s&oacute;t khi rÆ¡i tá»« Ä‘á»™ cao l&ecirc;n Ä‘áº¿n 1.6 m tr&ecirc;n bá» máº·t cá»©ng, th&ocirc; r&aacute;p.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;&nbsp;<img alt=\"\" src=\"https://cdn-img-v2.webbnc.net/uploadv2/web/14/14571/media/2021/06/24/02/40/1624507561_xiaomi-poco-x3-pro-5.jpg\" /></p>\r\n\r\n<p dir=\"ltr\">Há»‡ thá»‘ng loa k&eacute;p chuáº©n Hi-Res Audio mang Ä‘áº¿n &acirc;m thanh cháº¥t lÆ°á»£ng sá»‘ng Ä‘á»™ng, máº¡nh máº½ cho d&ugrave; báº¡n Ä‘ang chÆ¡i tr&ograve; chÆ¡i hay nghe nháº¡c.</p>\r\n\r\n<h3 dir=\"ltr\">Hiá»‡u nÄƒng máº¡nh máº½ vá»›i chip Snapdragon 860</h3>\r\n\r\n<p dir=\"ltr\">Vá» hiá»‡u nÄƒng sá»­ dá»¥ng, POCO X3 Pro sá»Ÿ há»¯u má»™t hiá»‡u nÄƒng máº¡nh máº½, ti&ecirc;n tiáº¿n vá»›i chip Snapdragon 860 Ä‘Æ°á»£c sáº£n xuáº¥t tr&ecirc;n tiáº¿n tr&igrave;nh 7 nm cho kháº£ nÄƒng xá»­ l&yacute; c&aacute;c t&aacute;c vá»¥ má»™t c&aacute;ch nhanh ch&oacute;ng, mÆ°á»£t m&agrave;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp; &nbsp;<img alt=\"\" src=\"https://cdn-img-v2.webbnc.net/uploadv2/web/14/14571/media/2021/06/24/02/40/1624507573_xiaomi-poco-x3-pro-6.jpg\" /></p>\r\n\r\n<p dir=\"ltr\">Äi k&egrave;m vá»›i Ä‘&oacute; l&agrave; dung lÆ°á»£ng&nbsp;RAM 8 GB&nbsp;Ä‘&aacute;p á»©ng tá»‘t kháº£ nÄƒng Ä‘a nhiá»‡m nhiá»u á»©ng dá»¥ng náº·ng má»™t c&aacute;ch vÆ°á»£t trá»™i.</p>\r\n\r\n<p>&nbsp;&nbsp;</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `sanpham` (`id`, `id_phanloai`, `ten`, `img`, `giaban`, `tinhtrang`, `soluong`, `posts`, `thuonghieu`, `xuatxu`, `kichthuocman`, `dophangiai`, `trongluong`, `dungluongpin`, `cpu`, `tocdocpu`, `rom`, `ram`, `camerasau`, `cameratruoc`, `loaisim`, `wifi`, `hotro4g`, `gps`, `bluetooth`, `thenho`, `gpu`, `phukien`, `congsac`, `pin`, `jacktaynghe`) VALUES
(23, 27, 'Äiá»‡n thoáº¡i Nokia G50', './upload/img/nokia-g50-1-600x600.jpg', 6000000, 'Má»›i', 150, '<h2><strong>Ä&aacute;nh gi&aacute; Nokia G50 - ThoÌ‰a sÆ°Ìc lÆ°Æ¡Ìt maÌ£ng 5G si&ecirc;u tá»‘c</strong></h2>\r\n\r\n<p>HaÌƒng Ä‘i&ecirc;Ì£n thoaÌ£i lÆ°Ì€ng danh Nokia v&acirc;Ìƒn chÆ°a ngÆ°Ì€ng cu&ocirc;Ì£c chÆ¡i trong thiÌ£ ph&acirc;Ì€n smartphone. Báº±ng chá»©ng l&agrave; viá»‡c haÌƒng vá»«a tung ra thiÌ£ trÆ°Æ¡Ì€ng saÌ‰n ph&acirc;Ì‰m mÆ¡Ìi mang t&ecirc;n&nbsp;<strong>Nokia G50</strong>&nbsp;- h&ocirc;Ìƒ trÆ¡Ì£ maÌ£ng 5G vÆ¡Ìi mÆ°Ìc giaÌ ph&ocirc;Ì‰ th&ocirc;ng cho t&acirc;Ìt caÌ‰ ngÆ°Æ¡Ì€i y&ecirc;u c&ocirc;ng ngh&ecirc;Ì£.</p>\r\n\r\n<h3><strong>Phong caÌch Ä‘&ocirc;Ì£c Ä‘aÌo, maÌ€n hiÌ€nh hi&ecirc;Ì‰n thiÌ£ r&ocirc;Ì£ng</strong></h3>\r\n\r\n<p>Äi&ecirc;Ì£n thoaÌ£i Nokia G50 5G ti&ecirc;Ìp tuÌ£c Ä‘i theo ng&ocirc;n ngÆ°Ìƒ thi&ecirc;Ìt k&ecirc;Ì Ä‘aÌƒ laÌ€m n&ecirc;n thaÌ€nh c&ocirc;ng cuÌ‰a doÌ€ng smartphone Nokia G - phong caÌch Ä‘&ocirc;Ì£c Ä‘aÌo. TÆ°Ì€ng Ä‘Æ°Æ¡Ì€ng neÌt tr&ecirc;n chiáº¿c smartphone n&agrave;y mang hiÌ€nh daÌng t&ocirc;Ìi giaÌ‰n, tinh t&ecirc;Ì vaÌ€ thÆ¡Ì€i thÆ°Æ¡Ì£ng, vÆ¡Ìi lÆ°Ì£a choÌ£n maÌ€u&nbsp;Ocean Blue vaÌ€ maÌ€u&nbsp;Midnight Sun&nbsp;bÄƒÌt mÄƒÌt. Ä&ocirc;Ì€ng thÆ¡Ì€i, Ä‘iá»‡n thoáº¡i Nokia cuÌƒng coÌ th&acirc;n maÌy b&ecirc;Ì€n biÌ‰, moÌ‰ng goÌ£n vaÌ€ nheÌ£ nhaÌ€ng tr&ecirc;n tay giuÌp ngÆ°Æ¡Ì€i duÌ€ng sÆ°Ì‰ duÌ£ng thoaÌ‰i maÌi.</p>\r\n\r\n<p><img alt=\"Nokia G50\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/nokia/NOKIAG50-1.jpg\" /></p>\r\n\r\n<p>Nokia G50 seÌƒ mang Ä‘&ecirc;Ìn traÌ‰i nghi&ecirc;Ì£m giaÌ‰i triÌ bÄƒÌt mÄƒÌt qua maÌ€n hiÌ€nh 6.82 inch, coÌ Ä‘&ocirc;Ì£ ph&acirc;n giaÌ‰i HD+ (1560 x 720 pixels). ÄÄƒÌ£c bi&ecirc;Ì£t, Nokia lu&ocirc;n t&ocirc;Ìi Æ°u khaÌ‰ nÄƒng hi&ecirc;Ì‰n thiÌ£ maÌ€n hiÌ€nh Æ¡Ì‰ ngoaÌ€i trÆ¡Ì€i. ViÌ€ th&ecirc;Ì maÌ€ Ä‘i&ecirc;Ì£n thoaÌ£i Nokia n&agrave;y Ä‘Æ°Æ¡Ì£c tÄƒng cÆ°Æ¡Ì€ng Ä‘&ocirc;Ì£ saÌng Ä‘&ecirc;Ì‰ ngÆ°Æ¡Ì€i duÌ€ng d&ecirc;Ìƒ daÌ€ng theo doÌƒi chi ti&ecirc;Ìt n&ocirc;Ì£i dung. Ph&acirc;Ì€n vi&ecirc;Ì€n maÌ€n hiÌ€nh Ä‘Æ°Æ¡Ì£c thu heÌ£p t&ocirc;Ìi Ä‘a giuÌp tÄƒng tyÌ‰ l&ecirc;Ì£ hi&ecirc;Ì‰n thiÌ£ hiÌ€nh aÌ‰nh.</p>\r\n\r\n<h3><strong>Cá»¥m camera bÄƒÌt trá»n moÌ£i khoaÌ‰nh khÄƒÌc</strong></h3>\r\n\r\n<p>Nokia G50 5G coÌ€n mang Ä‘&ecirc;Ìn cuÌ£m camera ba &ocirc;Ìng kiÌnh chuy&ecirc;n nghi&ecirc;Ì£p cho moÌ£i nhu c&acirc;Ì€u chuÌ£p aÌ‰nh cuÌ‰a ngÆ°Æ¡Ì€i duÌ€ng. N&ocirc;Ì‰i b&acirc;Ì£t nh&acirc;Ìt laÌ€ camera chiÌnh 48 MP cho khaÌ‰ nÄƒng chuÌ£p Ä‘&ecirc;m roÌƒ neÌt, chuÌ£p goÌc r&ocirc;Ì£ng l&acirc;Ìy troÌ£n quang caÌ‰nh vaÌ€ ch&acirc;Ìt lÆ°Æ¡Ì£ng aÌ‰nh roÌƒ neÌt. CuÌ€ng vÆ¡Ìi Ä‘oÌ laÌ€ c&aacute;c camera phuÌ£ mang Ä‘&ecirc;Ìn chÆ°Ìc nÄƒng chuÌ£p goÌc si&ecirc;u r&ocirc;Ì£ng, aÌ‰nh chi&ecirc;Ì€u s&acirc;u vaÌ€ th&ecirc;m Ä‘&egrave;n flash náº±m ph&iacute;a sau Ä‘ÄƒÌ£c sÄƒÌc giuÌp ngÆ°Æ¡Ì€i duÌ€ng bÄƒÌt l&acirc;Ìy moÌ£i khoaÌ‰nh khÄƒÌc.</p>\r\n\r\n<p><img alt=\"Nokia G50\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/nokia/NOKIAG50-2.jpg\" /></p>\r\n\r\n<p>PhiÌa trÆ°Æ¡Ìc Ä‘iá»‡n thoáº¡i Nokia G50 coÌ€n hi&ecirc;Ì£n di&ecirc;Ì£n camera selfie coÌ Ä‘&ocirc;Ì£ ph&acirc;n giaÌ‰i 8 MP. Camera naÌ€y coÌ€n Ä‘i keÌ€m vÆ¡Ìi tiÌnh nÄƒng chuÌ£p aÌ‰nh goÌc r&ocirc;Ì£ng, h&ocirc;Ìƒ trÆ¡Ì£ quay video, Ä‘aÌp Æ°Ìng troÌ£n veÌ£n thao taÌc video call li&ecirc;n laÌ£c ngÆ°Æ¡Ì€i th&acirc;n cuÌ‰a r&acirc;Ìt nhi&ecirc;Ì€u ngÆ°Æ¡Ì€i duÌ€ng hi&ecirc;Ì£n nay.</p>\r\n\r\n<h3><strong>Vi xÆ°Ì‰ lyÌ maÌ£nh meÌƒ vaÌ€ h&ocirc;Ìƒ trÆ¡Ì£ maÌ£ng 5G</strong></h3>\r\n\r\n<p><strong>Nokia G50 5G</strong>&nbsp;coÌ€n trÆ¡Ì‰ n&ecirc;n h&acirc;Ìp d&acirc;Ìƒn nhÆ¡Ì€ mang Ä‘&ecirc;Ìn c&ocirc;ng ngh&ecirc;Ì£ maÌ£ng 5G ti&ecirc;n ti&ecirc;Ìn daÌ€nh cho ngÆ°Æ¡Ì€i duÌ€ng ph&ocirc;Ì‰ th&ocirc;ng. Trang biÌ£ b&ocirc;Ì£ vi xÆ°Ì‰ lyÌ maÌ£nh meÌƒ vÆ¡Ìi RAM 6 GB vaÌ€ b&ocirc;Ì£ nhÆ¡Ì lÆ°u trÆ°Ìƒ 128 GB. Äiá»‡n thoáº¡i kh&ocirc;ng chiÌ‰ phuÌ£c vuÌ£ nhu c&acirc;Ì€u Ä‘oÌ£c baÌo, lÆ°Æ¡Ìt web, xem phim thÆ°Æ¡Ì€ng ngaÌ€y, maÌ€ coÌ€n Ä‘aÌp Æ°Ìng caÌ‰ nhu c&acirc;Ì€u giaÌ‰i triÌ vÆ¡Ìi maÌ£ng 5G t&ocirc;Ìc Ä‘&ocirc;Ì£ cao.</p>\r\n\r\n<p><img alt=\"Nokia G50\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/nokia/NOKIAG50-3.jpg\" /></p>\r\n\r\n<p>Nokia G50 5G v&acirc;Ì£n haÌ€nh tr&ecirc;n n&ecirc;Ì€n taÌ‰ng Android 11 vÆ¡Ìi tiÌnh ti&ecirc;Ì£n iÌch cao vaÌ€ h&ocirc;Ìƒ trÆ¡Ì£ Ä‘&ecirc;Ìn 2 nÄƒm c&acirc;Ì£p nh&acirc;Ì£t ph&acirc;Ì€n m&ecirc;Ì€m.</p>\r\n\r\n<h3><strong>ThÆ¡Ì€i lÆ°Æ¡Ì£ng pin l&acirc;u daÌ€i, baÌ‰o v&ecirc;Ì£ dÆ°Ìƒ li&ecirc;Ì£u an toaÌ€n</strong></h3>\r\n\r\n<p>Äi&ecirc;Ì£n thoaÌ£i Nokia G50 coÌ€n chuÌ troÌ£ng vaÌ€o thÆ¡Ì€i gian sÆ°Ì‰ duÌ£ng cuÌ‰a ngÆ°Æ¡Ì€i duÌ€ng. Trang biÌ£ vi&ecirc;n pin dung lÆ°Æ¡Ì£ng 5000mAh cuÌ€ng c&ocirc;ng ngh&ecirc;Ì£ saÌ£c nhanh vaÌ€ ch&ecirc;Ì Ä‘&ocirc;Ì£ Ti&ecirc;Ìt ki&ecirc;Ì£m pin t&ocirc;Ìi Æ°u, chiáº¿c smartphone n&agrave;y seÌƒ duy triÌ€ thÆ¡Ì€i gian sÆ°Ì‰ duÌ£ng maÌy cho ngÆ°Æ¡Ì€i duÌ€ng l&ecirc;n Ä‘&ecirc;Ìn caÌ‰ ngaÌ€y daÌ€i thoaÌ‰i maÌi.</p>\r\n\r\n<p><img alt=\"Nokia G50\" src=\"https://cdn.cellphones.com.vn/media/wysiwyg/mobile/nokia/NOKIAG50-4.jpg\" /></p>\r\n\r\n<p>NgoaÌ€i ra, Nokia coÌ€n bi&ecirc;Ìt Ä‘&ecirc;Ìn laÌ€ nhaÌ€ saÌ‰n xu&acirc;Ìt Ä‘i&ecirc;Ì£n thoaÌ£i chuÌ troÌ£ng vaÌ€o vi&ecirc;Ì£c baÌ‰o v&ecirc;Ì£ dÆ°Ìƒ li&ecirc;Ì£u ngÆ°Æ¡Ì€i duÌ€ng. ViÌ€ th&ecirc;Ì maÌ€ d&ograve;ng Ä‘iá»‡n thoáº¡i G50 n&agrave;y coÌ€n Ä‘Æ°Æ¡Ì£c h&ocirc;Ìƒ trÆ¡Ì£ c&acirc;Ì£p nh&acirc;Ì£t baÌ‰o m&acirc;Ì£t l&ecirc;n Ä‘&ecirc;Ìn 3 nÄƒm li&ecirc;Ì€n, giuÌp cho t&acirc;Ìt caÌ‰ th&ocirc;ng tin caÌ nh&acirc;n, dÆ°Ìƒ li&ecirc;Ì£u, hiÌ€nh aÌ‰nh, video lu&ocirc;n Ä‘Æ°Æ¡Ì£c baÌ‰o v&ecirc;Ì£ an toaÌ€n khoÌ‰i caÌc t&acirc;Ìn c&ocirc;ng tÆ°Ì€ b&ecirc;n ngoaÌ€i.</p>\r\n\r\n<h2><strong>Äiá»‡n thoáº¡i Nokia G50 gi&aacute; bao nhi&ecirc;u? Ra máº¯t khi n&agrave;o?</strong></h2>\r\n\r\n<p>Ä&acirc;y l&agrave; má»™t trong nhá»¯ng d&ograve;ng Ä‘iá»‡n thoáº¡i máº¡nh, bá»n bá»‰ Ä‘Æ°á»£c mong Ä‘á»£i h&agrave;ng Ä‘áº§u trong nÄƒm. Sáº£n pháº©m n&agrave;y Ä‘&atilde; Ä‘Æ°á»£c ra mÄƒÌt v&agrave;o cuá»‘i th&aacute;ng 9 vá»«a qua. Dá»± kiáº¿n, smartphone sáº½ Ä‘Æ°á»£c má»Ÿ b&aacute;n táº¡i CellphoneS v&agrave;o cuá»‘i th&aacute;ng 10 hoáº·c Ä‘áº§u th&aacute;ng 11 vá»›i nhiá»u Æ°u Ä‘&atilde;i háº¥p dáº«n.</p>\r\n\r\n<p>Vá» gi&aacute; b&aacute;n, Nokia G50 5G coÌ giaÌ baÌn dÆ°Ì£ ki&ecirc;Ìn tÆ°Ì€ 6.8 triá»‡u Ä‘á»“ng. Vá»›i má»©c gi&aacute; n&agrave;y, Ä‘iá»‡n thoáº¡i sáº½ cáº¡nh tranh trá»±c tiáº¿p vá»›i Samsung Galaxy A32, Redmi Note 10S, OPPO a74...</p>\r\n\r\n<p>Vá» m&agrave;u sáº¯c, m&aacute;y sáº½ c&oacute;&nbsp;2 tuá»³ chá»n m&agrave;u sáº¯c Ä‘á»ƒ ngÆ°á»i d&ugrave;ng lá»±a chá»n l&agrave; Xanh (Ocean Blue) v&agrave; Há»“ng (Midnight Sun).</p>\r\n\r\n<h2><strong>Mua Nokia G50 (5G) ch&iacute;nh h&atilde;ng gi&aacute; ráº» taÌ£i CellphoneS</strong></h2>\r\n\r\n<p>H&ecirc;Ì£ th&ocirc;Ìng CellphoneS lu&ocirc;n c&acirc;Ì£p nh&acirc;Ì£t vaÌ€ mang Ä‘&ecirc;Ìn cho baÌ£n caÌc saÌ‰n ph&acirc;Ì‰m smartphone mÆ¡Ìi tr&ecirc;n thiÌ£ trÆ°Æ¡Ì€ng hi&ecirc;Ì£n nay. Trong Ä‘oÌ,&nbsp;<strong>Ä‘iá»‡n thoáº¡i&nbsp;Nokia G50&nbsp;</strong>ch&iacute;nh h&atilde;ng hÆ°Ìa heÌ£n seÌƒ laÌ€ saÌ‰n ph&acirc;Ì‰m smartphone cao cáº¥p thiÌch hÆ¡Ì£p cho nhu c&acirc;Ì€u mua sÄƒÌm diÌ£p cu&ocirc;Ìi nÄƒm. GiÆ¡Ì€ Ä‘&acirc;y baÌ£n Ä‘aÌƒ coÌ th&ecirc;Ì‰ Ä‘ÄƒÌ£t trÆ°Æ¡Ìc smartphone Nokia n&agrave;y keÌ€m theo nhi&ecirc;Ì€u chÆ°Æ¡ng triÌ€nh khuy&ecirc;Ìn maÌƒi h&acirc;Ìp d&acirc;Ìƒn Ä‘ang chÆ¡Ì€ Ä‘oÌn baÌ£n.&nbsp;Hi&ecirc;Ì£n nay baÌ£n coÌ th&ecirc;Ì‰ Ä‘ÄƒÌ£t trÆ°Æ¡Ìc si&ecirc;u pháº©m háº¥p dáº«n n&agrave;y taÌ£i CellphoneS qua hotline nhanh 1800.2097. HaÌƒy goÌ£i ngay!</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sodiachi`
--

CREATE TABLE `sodiachi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `address` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sodiachi`
--

INSERT INTO `sodiachi` (`id`, `id_user`, `name`, `phonenumber`, `address`) VALUES
(7, 30, 'Táº©n cÃ¹ cháº£n', '0347194217', 'xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng'),
(8, 30, 'Ã¡i á»‘ sÃ¬ mÃ ', '13244', 'Ã¡i á»‘ sÃ¬ mÃ  - xÃ³m Há»“n Ma- tá»‰nh NghÄ©a Ä‘á»‹a'),
(9, 35, 'gfdgfdg', '543534', '54353'),
(10, 36, 'Tráº§n ThÃ¹y Linh', '0322222', 'xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng - tp.ThÃ¡i NguyÃªn - tá»‰nh ThÃ¡i NguyÃªn'),
(11, 36, 'Táº©n CÃ¹ Cháº£n', '0347194217', 'xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng - tp.ThÃ¡i NguyÃªn - tá»‰nh ThÃ¡i NguyÃªn'),
(12, 34, 'Táº©n CÃ¹ Cháº£n', '0347194217', 'xÃ³m SÆ¡n Tiáº¿n '),
(13, 34, 'Táº©n CÃ¹ Cháº£n', '0347194217', 'Nhiá»u sÃ¡ng 1'),
(14, 30, 'ÃI á» SÃŒ MÃ€ HÃ HÃ HÃ', '03471952254', 'Nhieu Sang - Lang Mo - Lai Chau');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrangdonhang`
--

CREATE TABLE `tinhtrangdonhang` (
  `id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `thanhtoan` int(11) NOT NULL,
  `hinhthucthanhtoan` int(11) NOT NULL,
  `diachigiaohang` varchar(2000) NOT NULL,
  `tinhtrangthanhtoan` int(11) NOT NULL,
  `sanphham` varchar(1000) NOT NULL,
  `ngaymua` varchar(20) NOT NULL,
  `duyet` int(11) NOT NULL,
  `ttgiaohang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `noidungTT` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tinhtrangdonhang`
--

INSERT INTO `tinhtrangdonhang` (`id`, `soluong`, `gia`, `thanhtoan`, `hinhthucthanhtoan`, `diachigiaohang`, `tinhtrangthanhtoan`, `sanphham`, `ngaymua`, `duyet`, `ttgiaohang`, `id_user`, `noidungTT`) VALUES
(9, 1, 454900000, 454900000, 0, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '01/01/2022', 0, 1, 34, ''),
(10, 1, 454900000, 454900000, 0, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '02/01/2022', 0, 1, 34, ''),
(11, 1, 454900000, 454900000, 2, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', 1, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '02/01/2022', 0, 1, 34, ''),
(12, 1, 454900000, 454900000, 0, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '02/01/2022', 0, 1, 34, ''),
(13, 1, 454900000, 454900000, 1, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', 1, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '02/01/2022', 0, 1, 34, ''),
(14, 1, 454900000, 454900000, 1, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', 1, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '02/01/2022', 0, 1, 34, ''),
(15, 1, 454900000, 454900000, 2, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', 1, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '02/01/2022', 0, 1, 34, ''),
(16, 1, 454900000, 454900000, 0, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '02/01/2022', 0, 1, 34, ''),
(17, 1, 454900000, 454900000, 2, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', 1, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '02/01/2022', 0, 1, 34, ''),
(19, 2, 454900000, 909800000, 0, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '02/01/2022', 0, 1, 34, '34909800000'),
(20, 1, 454900000, 454900000, 1, 'Táº©n CÃ¹ Cháº£n 0347194217, xÃ³m SÆ¡n Tiáº¿n', 1, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '02/01/2022', 0, 1, 34, 'THANHTOAN MDH34454900000'),
(27, 1, 454900000, 454900000, 2, 'Táº©n cÃ¹ cháº£n 0347194217, xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng', 1, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '02/01/2022', 0, 1, 30, 'THANHTOAN MHD30454900000'),
(28, 1, 454900000, 454900000, 1, 'Táº©n cÃ¹ cháº£n 13244, gdfgdf', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '03/01/2022', 0, 0, 30, 'THANHTOAN MHD30454900000'),
(29, 1, 454900000, 454900000, 0, 'Táº©n cÃ¹ cháº£n 0347194217, xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '03/01/2022', 0, 1, 30, 'THANHTOAN MHD30454900000'),
(30, 2, 454900000, 909800000, 1, 'Táº©n cÃ¹ cháº£n 0347194217, xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '05/01/2022', 0, 0, 30, 'THANHTOAN MHD30909800000'),
(32, 1, 5000000, 5000000, 2, 'Táº©n cÃ¹ cháº£n 0347194217, xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng', 0, 'Äiá»‡n thoáº¡i Samsung Galaxy A5', '14/01/2022', 0, 0, 30, 'THANHTOAN MHD305000000'),
(33, 1, 4549000, 4549000, 1, 'Táº©n cÃ¹ cháº£n 0347194217, xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '18/01/2022', 0, 0, 30, 'THANHTOAN MHD304549000'),
(34, 1, 4549000, 4549000, 2, 'Táº©n cÃ¹ cháº£n 0347194217, xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '18/01/2022', 0, 0, 30, 'THANHTOAN MHD304549000'),
(37, 1, 4549000, 4549000, 2, 'Táº©n cÃ¹ cháº£n 0347194217, xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '11/02/2022', 0, 0, 30, 'THANHTOAN MHD304549000'),
(38, 1, 4549000, 4549000, 2, 'Táº©n cÃ¹ cháº£n 0347194217, xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '07/03/2022', 0, 0, 30, 'THANHTOAN MHD304549000'),
(39, 1, 18000000, 18000000, 2, 'Táº©n cÃ¹ cháº£n 0347194217, xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng', 0, 'Äiá»‡n thoáº¡i Samsung Galaxy S21 5G', '07/03/2022', 0, 0, 30, 'THANHTOAN MHD3018000000'),
(40, 1, 4549000, 4549000, 1, 'ÃI á» SÃŒ MÃ€ HÃ HÃ HÃ 03471952254, Nhieu Sang - Lang Mo - Lai Chau', 1, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '07/03/2022', 0, 1, 30, 'THANHTOAN MHD304549000'),
(41, 1, 5000000, 5000000, 1, 'ÃI á» SÃŒ MÃ€ HÃ HÃ HÃ 03471952254, Nhieu Sang - Lang Mo - Lai Chau', 1, 'Äiá»‡n thoáº¡i Samsung Galaxy A5', '07/03/2022', 0, 1, 30, 'THANHTOAN MHD305000000'),
(42, 1, 4549000, 4549000, 1, 'Táº©n cÃ¹ cháº£n 0347194217, xÃ³m SÆ¡n tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng', 0, 'Äiá»‡n thoáº¡i iPhone 13 Pro Max 1TB VN/A', '07/03/2022', 0, 0, 30, 'THANHTOAN MHD304549000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(350) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
INSERT INTO user (id, email, password, name, phonenumber, address) VALUES (0, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin', '1231231412', 'ha noi')

--
-- Đang đổ dữ liệu cho bảng `user`
--

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lichsumuahang`
--
ALTER TABLE `lichsumuahang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phanloai`
--
ALTER TABLE `phanloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sodiachi`
--
ALTER TABLE `sodiachi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tinhtrangdonhang`
--
ALTER TABLE `tinhtrangdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `name` (`id`,`email`,`password`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `lichsumuahang`
--
ALTER TABLE `lichsumuahang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `option`
--
ALTER TABLE `option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phanloai`
--
ALTER TABLE `phanloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `sodiachi`
--
ALTER TABLE `sodiachi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tinhtrangdonhang`
--
ALTER TABLE `tinhtrangdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
