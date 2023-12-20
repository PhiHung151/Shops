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
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `cmt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



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



CREATE TABLE `option` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `option` (`id`, `name`, `value`) VALUES
(1, 'payment', '{\"bankname\":\"Vietcombank\",\"stk\":\"00000000000000000000000000000\",\"ctkbank\":\"TAN CU CHANNNNNNNNNNNNNNNNNNNNNNNNNNNN\",\"sdt\":\"03471942147\",\"ctkmomo\":\"TAN CU CHAN\"}'),
(2, 'menu', '');



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
  `thuonghieu` varchar(100) NOT NULL,
  `xuatxu` varchar(100) NOT NULL,
  `trongluong` varchar(100) NOT NULL,
  `phukien` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




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
INSERT INTO `user` (`id`, `email`, `password`, `name`, `phonenumber`, `address`) VALUES
(0, 'admin@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Táº¨N CÃ™ CHáº¢N', '03471942247', 'xÃ³m SÆ¡n Tiáº¿n - xÃ£ Quyáº¿t Tháº¯ng - tp.ThÃ¡i NguyÃªn - tá»‰nh ThÃ¡i NguyÃªn');
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
