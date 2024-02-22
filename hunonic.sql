-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 14, 2024 lúc 03:36 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hunonic`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `thumbnail`) VALUES
(1, 'Lieu Thi Thu Hien', 'lieuhien', '26102001', 'admin.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collect`
--

CREATE TABLE `collect` (
  `id` int(11) NOT NULL,
  `collection_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `collect`
--

INSERT INTO `collect` (`id`, `collection_name`) VALUES
(1, 'Công tắc thông minh'),
(2, 'Thiết bị chống trộm'),
(3, 'Bộ điều khiển'),
(4, 'Rèm tự động'),
(5, 'Cảm biến'),
(6, 'Bộ điều khiển trung tâm'),
(7, 'Ổ cắm thông minh'),
(8, 'Giải pháp trọn gói');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `content`) VALUES
(1, '<p><strong>K&iacute;nh ch&agrave;o to&agrave;n thể qu&yacute; kh&aacute;ch.</strong></p>\r\n\r\n<p>✅ C&ocirc;ng ty cổ phần Hunonic Việt Nam l&agrave; một trong số rất &iacute;t c&aacute;c đơn vị nh&agrave; th&ocirc;ng minh tại Việt Nam tự chủ về nghi&ecirc;n cứu v&agrave; tự sản xuất. L&agrave; đơn vị c&oacute; kinh nghiệm gần 10 năm trong lĩnh vực sản xuất điện tử. Ch&uacute;ng t&ocirc;i tự tin sẽ mang đến những sản phẩm smart home chất lượng tốt nhất v&agrave; đặc biệt gi&aacute; cả hợp l&yacute; nhất cho người d&ugrave;ng Việt.</p>\r\n\r\n<p>✅ Đến thời điểm hiện tại (T7/2023), Hunonic tự h&agrave;o l&agrave; thương hiệu Smarthome của Việt Nam c&oacute; lượng người d&ugrave;ng lớn nhất với gần 180.000 người d&ugrave;ng.&nbsp;</p>\r\n\r\n<p>✅ C&aacute;c sản phẩm của Hunonic hiện đ&atilde; rất đa dạng về mẫu m&atilde;, chủng loại. C&oacute; thể kể đến như l&agrave; c&aacute;c c&ocirc;ng tắc cảm ứng nh&agrave; th&ocirc;ng minh, ổ cắm th&ocirc;ng minh, điều khiển tivi điều h&ograve;a qua điện thoại, c&ocirc;ng tắc điều khiển cửa cuốn qua điện thoại, cổng tự động, r&egrave;m tự động, cầu dao th&ocirc;ng minh, c&aacute;c sản phẩm d&agrave;nh cho n&ocirc;ng nghiệp th&ocirc;ng minh,&hellip;</p>\r\n\r\n<p>✅ C&ocirc;ng ty c&oacute; trụ sở đặt tại th&agrave;nh phố Th&aacute;i Nguy&ecirc;n. Nh&agrave; m&aacute;y sản xuất của c&ocirc;ng ty cũng đặt tại Th&aacute;i Nguy&ecirc;n, nơi c&oacute; rất nhiều c&ocirc;ng ty lớn tr&ecirc;n thế giới đặt nh&agrave; m&aacute;y sản xuất. Nổi bật trong số đ&oacute; c&oacute; Samsung,..</p>\r\n\r\n<p>✅ Hiện nay tr&ecirc;n thị trường cũng c&oacute; kh&aacute; nhiều đơn vị cung cấp c&aacute;c sản phẩm&nbsp;<a href=\"https://hunonic.com/thiet-bi-dien-thong-minh/\">nh&agrave; th&ocirc;ng minh</a>. Nhưng đa số gi&aacute; cả c&ograve;n kh&aacute; cao n&ecirc;n chưa thể phổ cập được c&aacute;c thiết bị nh&agrave; th&ocirc;ng minh. Một số &iacute;t gi&aacute; thấp nhưng lại l&agrave; h&agrave;ng t&agrave;u nhập lậu n&ecirc;n chất lượng rất k&eacute;m, kh&ocirc;ng an to&agrave;n. Mục ti&ecirc;u của Hunonic l&agrave; gi&uacute;p đại đa số người d&acirc;n Việt c&oacute; cơ hội sử dụng thiết bị nh&agrave; th&ocirc;ng minh do người Việt l&agrave;m chủ. Ch&iacute;nh v&igrave; thế m&agrave; mức gi&aacute; c&aacute;c sản phẩm của Hunonic cực kỳ hợp l&yacute;.</p>\r\n\r\n<p>✅ Hunonic l&agrave; tập hợp của một tập thể trẻ, năng động, đo&agrave;n kết v&agrave; kh&aacute;t vọng. Đội ngũ kỹ sư Hunonic c&oacute; kinh nghiệm v&agrave; chuy&ecirc;n m&ocirc;n cao. Khả năng s&aacute;ng tạo v&agrave; nghi&ecirc;n cứu v&ocirc; c&ugrave;ng tốt. Ch&iacute;nh v&igrave; thế m&agrave; tốc độ ra sản phẩm mới của Hunonic cực kỳ nhanh, được kh&aacute;ch h&agrave;ng v&agrave; đối t&aacute;c đ&aacute;nh gi&aacute; rất cao.</p>\r\n\r\n<p>Kh&aacute;t vọng l&agrave;m ra những sản phẩm chất lượng cao mang c&ocirc;ng nghệ Việt, tr&iacute; tuệ Việt dường như đ&atilde; ăn s&acirc;u v&agrave;o m&aacute;u của tất cả người Hunonic.</p>\r\n\r\n<p>✅ Tập thể Hunonic đang từng ng&agrave;y, từng giờ nỗ lực hết m&igrave;nh, để mang đến cho qu&yacute; kh&aacute;ch những sản phẩm th&ocirc;ng minh c&oacute; chất lượng tốt nhất. Những sản phẩm c&oacute; gi&aacute; th&agrave;nh hợp l&yacute; nhất.</p>\r\n\r\n<p>✅ Ch&uacute;ng t&ocirc;i sẽ l&agrave;m việc hết m&igrave;nh v&agrave; cũng rất mong qu&yacute; kh&aacute;ch h&atilde;y lu&ocirc;n d&agrave;nh sự quan t&acirc;m, ủng hộ cho ch&uacute;ng t&ocirc;i nh&eacute;. Hunonic xin hứa sẽ lu&ocirc;n l&agrave;m qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng. Với ch&uacute;ng t&ocirc;i niềm tin của kh&aacute;ch h&agrave;ng l&agrave; v&ocirc; gi&aacute;. Chữ T&iacute;n lu&ocirc;n được đặt l&ecirc;n h&agrave;ng đầu.&nbsp;</p>\r\n\r\n<p><strong>Một lần nữa, xin ch&acirc;n th&agrave;nh cảm ơn!</strong></p>\r\n\r\n<hr />\r\n<h3>✅ Th&ocirc;ng tin li&ecirc;n hệ</h3>\r\n\r\n<ul>\r\n	<li><strong>C&ocirc;ng ty cổ phần Hunonic Việt Nam</strong></li>\r\n	<li><strong>MST:&nbsp;</strong>4601546827</li>\r\n	<li><strong>Địa Chỉ:&nbsp;</strong>HUNONIC CENTER,&nbsp;Đường CMT8, Tổ 2, Phường Cam Gi&aacute;, TP Th&aacute;i Nguy&ecirc;n</li>\r\n	<li><strong>Nh&agrave; m&aacute;y sản xuất:&nbsp;</strong>Ng&otilde; 1261, Tổ 27, phường Ph&uacute; X&aacute;, TP Th&aacute;i Nguy&ecirc;n</li>\r\n	<li><strong>ĐT li&ecirc;n hệ:</strong>&nbsp;0983.988.828</li>\r\n	<li><strong>Email:&nbsp;</strong>contact@hunonic.vn</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `info_footer` text COLLATE utf8_unicode_ci NOT NULL,
  `hotline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marquee` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`id`, `info_footer`, `hotline`, `address`, `email`, `marquee`) VALUES
(1, '<p>&nbsp;C&ocirc;ng ty cổ phần Hunonic Việt Nam l&agrave; một trong số rất &iacute;t c&aacute;c đơn vị nh&agrave; th&ocirc;ng minh tại Việt Nam tự chủ về nghi&ecirc;n cứu v&agrave; tự sản xuất. L&agrave; đơn vị c&oacute; kinh nghiệm gần 10 năm trong lĩnh vực sản xuất điện tử. Ch&uacute;ng t&ocirc;i tự tin sẽ mang đến những sản phẩm smart home chất lượng tốt nhất v&agrave; đặc biệt gi&aacute; cả hợp l&yacute; nhất cho người d&ugrave;ng Việt.</p>\r\n', '0983.988.828', 'HUNONIC CENTER, Đường CMT8, Tổ 2, Phường Cam Giá, TP Thái Nguyên', 'contact@hunonic.vn', 'Chào mừng đến với Hoàng Minh shop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`id`, `logo`) VALUES
(1, 'logo5.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producer`
--

CREATE TABLE `producer` (
  `id` int(11) NOT NULL,
  `producer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_producer` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producer`
--

INSERT INTO `producer` (`id`, `producer_id`, `name_producer`) VALUES
(7, 'HNVN', 'Hunonic');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name_product` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL,
  `name_product_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_producer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `des` text COLLATE utf8_unicode_ci NOT NULL,
  `des_short` text COLLATE utf8_unicode_ci NOT NULL,
  `investment_money` int(200) NOT NULL,
  `price` int(40) NOT NULL,
  `discount` int(40) NOT NULL,
  `total` int(4) NOT NULL,
  `sell` int(11) NOT NULL,
  `image_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `size_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collection_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name_product`, `view`, `name_product_type`, `name_producer`, `des`, `des_short`, `investment_money`, `price`, `discount`, `total`, `sell`, `image_link`, `created`, `size_type`, `collection_name`) VALUES
(88, 'Công Tắc Thông Minh Hunonic Datic Basic', 12, 'Công Nghệ WiFi', 'Hunonic', '<p><strong>***&nbsp;TH&Ocirc;NG TIN SẢN PHẨM:</strong></p>\r\n\r\n<p><strong>Model</strong>: DTBS &ndash; 01<br />\r\n<strong>Wifi:</strong>&nbsp;2.4Ghz &ndash; b/g/n<br />\r\n<strong>Nguồn v&agrave;o:</strong>&nbsp;AC220/ 50Hz<br />\r\n<strong>C&ocirc;ng suất tải:</strong>&nbsp;500W/k&ecirc;nh<br />\r\n<strong>K&iacute;ch thước:</strong>&nbsp;70x45x23 mm</p>\r\n', '<p>C&ocirc;ng tắc th&ocirc;ng minh Hunonic&nbsp; Datic l&agrave; d&ograve;ng sản phẩm được C&ocirc;ng ty Hunonic sản xuất với mong muốn &rdquo; phổ cập&nbsp;<a href=\"https://hunonic.com/thiet-bi-dien-thong-minh/\">thiết bị điện nh&agrave; th&ocirc;ng minh</a>&rdquo; . Mang đến cơ hội dễ d&agrave;ng hơn trong việc tiếp cận v&agrave; sử dụng c&ocirc;ng tắc điều khiển từ xa qua điện thoại d&agrave;nh cho người d&ugrave;ng tại Việt Nam.</p>\r\n\r\n<p>Bởi vậy, Hunonic Datic ra đời với 3 ti&ecirc;u ch&iacute; đảm bảo chất lượng cao m&agrave; gi&aacute; th&agrave;nh l&agrave; thấp nhất.<br />\r\n&ndash; KH&Ocirc;NG lợi nhuận<br />\r\n&ndash; KH&Ocirc;NG lo lắng về chất lượng<br />\r\n&ndash; KH&Ocirc;NG H&agrave;ng Việt đội lốt T&agrave;u</p>\r\n\r\n<p>Một sản phẩm chất lượng cao, gi&aacute; được tối ưu tốt hơn hầu hết c&aacute;c loại c&ocirc;ng tắc hiện c&oacute; tr&ecirc;n thị trường hứa hẹn sẽ mang đến những trải nghiệm th&uacute; vị cho người d&ugrave;ng.</p>\r\n', 50000, 120000, 99000, 100, 2, 'cong-tac-thong-minh-hunonic-datic-5-300x300.webp', '2023-10-28 16:50:54', '70x45x23 mm', 'Công tắc thông minh'),
(89, 'Công tắc Hunonic Mini', 5, 'Công Nghệ WiFi', 'Hunonic', '<p><strong>&ndash; Điện &aacute;p hoạt động:</strong>&nbsp;95-240V/AC/50Hz<br />\r\n<strong>&ndash; C&ocirc;ng suất:</strong><br />\r\n&nbsp; &nbsp; &nbsp;+ Tải thuần trở 500W/ CH<br />\r\n&nbsp; &nbsp; &nbsp;+ Tải thuần led 150W/ CH<br />\r\n<strong>&ndash; Tuổi thọ đ&oacute;ng cắt:</strong>&nbsp;100.000 lần<br />\r\n<strong>&ndash; Năng lượng ti&ecirc;u thụ kh&ocirc;ng tải:</strong>&nbsp;0.5W/h<br />\r\n<strong>&ndash; Kết nối:</strong>&nbsp;WiFi 2.4Ghz<br />\r\n<strong>&ndash; K&iacute;ch thước:</strong>&nbsp;41x41x20mm<br />\r\n<strong>&ndash; Vật liệu vỏ</strong>: Nhựa ABS chống ch&aacute;y<br />\r\n<strong>&ndash; Bảo h&agrave;nh:</strong>&nbsp;12 th&aacute;ng</p>\r\n', '<p>***&nbsp;<strong>Hunonic Wifi Mini</strong>&nbsp;l&agrave; một loại c&ocirc;ng tắc th&ocirc;ng minh nhỏ gọn, nhỏ tới mức người ta gọi đ&oacute; l&agrave; c&ocirc;ng tắc Mini. T&aacute;c dụng ch&iacute;nh của n&oacute; l&agrave; biến c&ocirc;ng tắc thường th&agrave;nh c&ocirc;ng tắc th&ocirc;ng minh, tức l&agrave; lắp đặt trực tiếp v&agrave; giữ lại c&ocirc;ng tắc cũ.</p>\r\n\r\n<p>Hunonic đ&atilde; nghi&ecirc;n cứu v&agrave; sản xuất ra c&ocirc;ng tắc Wifi Mini, gắn trực tiếp v&agrave;o c&ocirc;ng tắc cũ để điều khiển c&aacute;c thiết bị trong nh&agrave; từ xa qua điện thoại m&agrave; kh&ocirc;ng cần thay thế.</p>\r\n\r\n<p>Hi vọng rằng, việc ph&aacute;t h&agrave;nh ra sản phẩm mới n&agrave;y sẽ gi&uacute;p c&aacute;c b&aacute;c kh&ocirc;ng chỉ giữ lại những chiếc c&ocirc;ng tắc c&oacute; sẵn , tiết kiệm chi ph&iacute; m&agrave; c&ograve;n gi&uacute;p c&aacute;c b&aacute;c đến nhanh hơn với nh&agrave; th&ocirc;ng minh &ndash; kiểm so&aacute;t mọi thiết bị điện trong nh&agrave; từ xa chỉ bằng một chiếc điện thoại trong thời gian gần nhất.</p>\r\n', 150000, 300000, 248000, 50, 1, 'cong-tac-thong-minh-hunonic-wifi-mini-10-300x300.jpg', '2023-11-17 05:11:15', ' 41x41x20mm', 'Công tắc thông minh'),
(90, 'Công Tắc Cảm Ứng Datic 1 Nút Màu Đen', 3, 'Công Nghệ WiFi', 'Hunonic', '<h3><strong>Th&ocirc;ng số kỹ thuật</strong></h3>\r\n\r\n<p>&nbsp;M&atilde; sản phẩm:&nbsp;<strong>DTSW01D</strong><br />\r\n&nbsp;Điều khiển 1 n&uacute;t độc lập<br />\r\n&nbsp;Điện &aacute;p: 90-250V, tần số 50-60hz<br />\r\n&nbsp;C&ocirc;ng suất tải: đ&egrave;n sợi đốt 500W, đ&egrave;n led: 150W<br />\r\n&nbsp;Giao tiếp: Wifi 2.4Ghz. Kh&ocirc;ng cần bộ trung t&acirc;m<br />\r\n&nbsp;K&iacute;ch thước: 120x72x32mm<br />\r\n&nbsp;Mặt k&iacute;nh cường lực cao cấp<br />\r\n&nbsp;Bảo h&agrave;nh: 12 Th&aacute;ng</p>\r\n', '<p><em><strong>C&ocirc;ng tắc th&ocirc;ng minh l&agrave; d&agrave;nh cho tất cả mọi người bởi:</strong></em></p>\r\n\r\n<p>&ndash; T&iacute;nh thiết thực, hữu &iacute;ch với cuộc sống của mỗi người.</p>\r\n\r\n<p>&ndash; Đ&aacute;p ứng được nhiều nhu cầu, bởi nhu cầu của mỗi người l&agrave; kh&aacute;c nhau.</p>\r\n\r\n<p>&ndash; Gần gũi với người d&ugrave;ng: Dễ lắp đặt, dễ sử dụng, ng&ocirc;n ngữ tiếng Việt</p>\r\n\r\n<p>Mỗi người sẽ c&oacute; c&aacute;c mức quan t&acirc;m về chất lượng, t&iacute;nh năng sản phẩm, độ bền, &hellip; kh&aacute;c nhau nhưng chắc chắn gi&aacute; sản phẩm l&agrave; điều m&agrave; tất cả ch&uacute;ng ta kh&ocirc;ng thể bỏ qua.</p>\r\n\r\n<p>Một sản phẩm tốt m&agrave; gi&aacute; kh&ocirc;ng ph&ugrave; hợp th&igrave; thật kh&oacute; để c&oacute; thể sở hữu nh&agrave; th&ocirc;ng minh.</p>\r\n', 230000, 412000, 330000, 100, 1, 'cong-tac-cam-ung-wifi-datic-1-300x300.jpg', '2023-11-17 05:17:11', '120x72x32mm', 'Công tắc thông minh'),
(91, 'Công Tắc Cảm Ứng Datic 2 Nút Màu Đen', 1, 'Công Nghệ WiFi', 'Hunonic', '<h3><strong>Th&ocirc;ng số kỹ thuật</strong></h3>\r\n\r\n<p>➖ M&atilde; sản phẩm:&nbsp;<strong>DTSW02D</strong><br />\r\n➖ Điều khiển 2 n&uacute;t độc lập<br />\r\n➖ Điện &aacute;p: 90-250V, tần số 50-60hz<br />\r\n➖ C&ocirc;ng suất tải: đ&egrave;n sợi đốt 500W, đ&egrave;n led: 150W<br />\r\n➖ Giao tiếp: Wifi 2.4Ghz. Kh&ocirc;ng cần bộ trung t&acirc;m<br />\r\n➖ K&iacute;ch thước: 120x72x32mm<br />\r\n➖ Mặt k&iacute;nh cường lực cao cấp<br />\r\n➖ Bảo h&agrave;nh: 12 Th&aacute;ng</p>\r\n', '<p><em><strong>C&ocirc;ng tắc th&ocirc;ng minh l&agrave; d&agrave;nh cho tất cả mọi người bởi:</strong></em></p>\r\n\r\n<p>&ndash; T&iacute;nh thiết thực, hữu &iacute;ch với cuộc sống của mỗi người.</p>\r\n\r\n<p>&ndash; Đ&aacute;p ứng được nhiều nhu cầu, bởi nhu cầu của mỗi người l&agrave; kh&aacute;c nhau.</p>\r\n\r\n<p>&ndash; Gần gũi với người d&ugrave;ng: Dễ lắp đặt, dễ sử dụng, ng&ocirc;n ngữ tiếng Việt</p>\r\n\r\n<p>Mỗi người sẽ c&oacute; c&aacute;c mức quan t&acirc;m về chất lượng, t&iacute;nh năng sản phẩm, độ bền, &hellip; kh&aacute;c nhau nhưng chắc chắn gi&aacute; sản phẩm l&agrave; điều m&agrave; tất cả ch&uacute;ng ta kh&ocirc;ng thể bỏ qua.</p>\r\n\r\n<p>Một sản phẩm tốt m&agrave; gi&aacute; kh&ocirc;ng ph&ugrave; hợp th&igrave; thật kh&oacute; để c&oacute; thể sở hữu nh&agrave; th&ocirc;ng minh.</p>\r\n', 270000, 430000, 343000, 100, 0, 'cong-tac-cam-ung-wifi-datic-9-300x300.jpg', '2023-11-17 05:21:27', 'Kích thước: 120x72x32mm', 'Công tắc thông minh'),
(92, 'Bộ cảm biến cửa Hunonic Door Sensor', 2, 'Công Nghệ Bluetooth Mesh', 'Hunonic', '<p><strong>*** Th&ocirc;ng tin sản phẩm:</strong></p>\r\n\r\n<p><a href=\"https://emojikeyboard.org/copy/Check_Mark_Button_Emoji_%E2%9C%85?utm_source=extlink\" target=\"_blank\">✅</a>&nbsp;C&ocirc;ng nghệ Bluetooth Mesh</p>\r\n\r\n<p><a href=\"https://emojikeyboard.org/copy/Check_Mark_Button_Emoji_%E2%9C%85?utm_source=extlink\" target=\"_blank\">✅</a>&nbsp;Điện &aacute;p: 5 DVC</p>\r\n\r\n<p><a href=\"https://emojikeyboard.org/copy/Check_Mark_Button_Emoji_%E2%9C%85?utm_source=extlink\" target=\"_blank\">✅</a>&nbsp;Pin : AAA</p>\r\n\r\n<p><a href=\"https://emojikeyboard.org/copy/Check_Mark_Button_Emoji_%E2%9C%85?utm_source=extlink\" target=\"_blank\">✅</a>&nbsp;K&iacute;ch thước: 78x32mm</p>\r\n\r\n<p><a href=\"https://emojikeyboard.org/copy/Check_Mark_Button_Emoji_%E2%9C%85?utm_source=extlink\" target=\"_blank\">✅</a>&nbsp;Bảo h&agrave;nh: 12 th&aacute;ng</p>\r\n', '<p>Bộ cảm biến cửa Hunonic Door Sensor được thiết kế bo viền m&agrave;u trắng nhỏ gọn v&agrave; sang trọng, gồm 2 phần sẽ được gắn s&aacute;t nhau thuộc 2 b&ecirc;n của c&aacute;nh cửa. Đ&acirc;y l&agrave; một sản phẩm sử dụng c&ocirc;ng nghệ Bluetooth Mesh ho&agrave;n thiện đầu ti&ecirc;n tại Việt Nam. Th&acirc;n v&agrave; vỏ được l&agrave;m từ nhựa ABS nguy&ecirc;n sinh n&ecirc;n c&oacute; khả năng chịu nhiệt v&agrave; độ bền cao.&nbsp;</p>\r\n', 250000, 565000, 450000, 100, 1, 'cam-bien-cua-300x300.jpg', '2023-12-01 03:08:00', '78x32mm', 'Cảm biến'),
(93, 'Bộ Điều Khiển Trung Tâm Hunonic Home Server', 3, 'Công Nghệ Bluetooth Mesh', 'Hunonic', '<ul>\r\n	<li>Sử dụng c&ocirc;ng nghệ Bluetooth Mesh</li>\r\n	<li>Cấp nguồn: 5V qua cổng Type C</li>\r\n	<li>Kết nối Internet th&ocirc;ng qua mạng LAN</li>\r\n	<li>Hoạt động ngay cả khi mất kết nối Internet</li>\r\n	<li>Kết nối c&aacute;c thiết bị, tạo mạng lưới th&ocirc;ng minh</li>\r\n	<li>Thiết kế nhỏ gọn, c&oacute; thể đặt ở bất cứ đ&acirc;u.</li>\r\n	<li>Bảo h&agrave;nh đổi mới 1 &ndash; 1 trong 12 th&aacute;ng</li>\r\n	<li>Bảo mật tốt, tiết kiệm điện.</li>\r\n</ul>\r\n', '<p>Bộ điều khiển trung t&acirc;m Hunonic Home Server được coi l&agrave; bộ n&atilde;o của ng&ocirc;i nh&agrave; th&ocirc;ng minh. N&oacute; c&oacute; nhiệm vụ kết nối tất cả c&aacute;c thiết bị, nhận v&agrave; truyền th&ocirc;ng tin đến c&aacute;c c&ocirc;ng tắc để thực hiện c&ocirc;ng việc theo y&ecirc;u cầu của chủ nh&agrave;.</p>\r\n\r\n<p>Hunonic Server thực hiện lưu trữ c&aacute;c th&ocirc;ng tin như: c&agrave;i đặt ngữ cảnh, hẹn giờ tự động&hellip;. Nếu kh&ocirc;ng sử dụng bộ điều khiển trung t&acirc;m, c&aacute;c b&aacute;c sẽ kh&ocirc;ng thể điều khiển được c&aacute;c thiết bị c&oacute; gắn c&ocirc;ng tắc Hunonic Luxury hay Hunonic Premium th&ocirc;ng qua điện thoại th&ocirc;ng minh. C&oacute; nghĩa l&agrave; bộ điều khiển trung t&acirc;m n&agrave;y lu&ocirc;n phải đi c&ugrave;ng c&ocirc;ng tắc sử dụng c&ocirc;ng nghệ Bluetooth Mesh như Hunonic Luxury hay Hunonic Premium.</p>\r\n', 350000, 750000, 599000, 100, 1, 'bo-dieu-khien-trung-tam-hunonic-home-server-1-1-600x600.jpg', '2023-12-01 03:11:06', '100x10mm', 'Bộ điều khiển trung tâm'),
(94, 'Công Tắc Chống Giật Bình Nóng Lạnh Thông Minh Premium', 1, 'Công Nghệ Bluetooth Mesh', 'Hunonic', '<h3><strong>Th&ocirc;ng số kỹ thuật</strong></h3>\r\n\r\n<p>➖ Lắp Cho B&igrave;nh N&oacute;ng Lạnh, M&aacute;y Bơm,..<br />\r\n➖ Ph&aacute;t Hiện D&ograve;ng R&ograve; 15 mA<br />\r\n➖ Điện &aacute;p: 90-250V, tần số 50-60hz<br />\r\n➖ C&ocirc;ng suất tải: 3000W<br />\r\n➖ Giao tiếp: Bluetooth Mesh<br />\r\n➖ K&iacute;ch thước: 120x72x32mm<br />\r\n➖ Mặt k&iacute;nh cường lực cao cấp<br />\r\n➖ Bảo h&agrave;nh: 12 Th&aacute;ng</p>\r\n', '<p>Trong qu&aacute; tr&igrave;nh sử dụng điện n&oacute;i chung v&agrave; b&igrave;nh n&oacute;ng lạnh n&oacute;i ri&ecirc;ng, nhiều người đ&atilde; kh&ocirc;ng ch&uacute; &yacute; đến an to&agrave;n về điện v&agrave; xảy ra những việc kh&ocirc;ng mong muốn.</p>\r\n\r\n<p>Hunonic đ&atilde; cho ra đời d&ograve;ng sản phẩm C&ocirc;ng tắc chống giật gi&uacute;p bảo vệ người d&ugrave;ng khỏi nguy cơ giật điện khi tiếp x&uacute;c với c&aacute;c thiết bị điện bị lỗi hoặc hỏng h&oacute;c. Khi c&oacute; sự r&ograve; rỉ d&ograve;ng điện, c&ocirc;ng tắc chống giật sẽ tự động ngắt mạch nguồn điện, ngăn kh&ocirc;ng cho d&ograve;ng điện g&acirc;y hại tiếp tục đi qua cơ thể người.</p>\r\n\r\n<p>Với sản phẩm c&ocirc;ng tắc chống giật b&igrave;nh n&oacute;ng lạnh th&ocirc;ng minh, c&aacute;c bạn sẽ kh&ocirc;ng cần phải lo lắng về việc tắt/bật nguồn điện, c&ocirc;ng tắc chống giật tự động hoạt động khi cần thiết. Bạn c&oacute; thể dễ d&agrave;ng kiểm so&aacute;t c&aacute;c thiết bị điện v&agrave; tiện &iacute;ch gia đ&igrave;nh từ xa th&ocirc;ng qua điện thoại di động hoặc m&aacute;y t&iacute;nh bảng.</p>\r\n\r\n<p>D&ograve;ng c&ocirc;ng tắc chống giật Hunonic c&oacute; mẫu m&atilde; tương tự c&ocirc;ng tắc cảm ứng c&ocirc;ng suất lớn, với mặt k&iacute;nh cường lực v&agrave; viền bo cong kim loại. C&aacute;ch lắp đặt v&agrave; sử dụng tương tự c&aacute;c c&ocirc;ng tắc cảm ứng th&ocirc;ng minh Hunonic</p>\r\n', 900000, 1845000, 1465000, 100, 0, 'hunonic-pre-hcn-dai-dien-300x300.jpg', '2023-12-01 03:54:52', '120x72x32mm', 'Công tắc thông minh'),
(95, 'Trọn gói nhà thông minh Hunonic cho nhà nông thôn 3 phòng ngủ', 2, 'Trọn gói thiết bị nhà thông minh', 'Hunonic', '<h3><strong>Những tiện nghi m&agrave; g&oacute;i nh&agrave; th&ocirc;ng minh Hunonic cho nh&agrave; n&ocirc;ng th&ocirc;n mang lại cho c&aacute;c b&aacute;c:</strong></h3>\r\n\r\n<p>&ndash;&nbsp;<em>Hệ thống chiếu s&aacute;ng th&ocirc;ng minh:</em>&nbsp;C&aacute;c b&aacute;c dễ d&agrave;ng kiểm so&aacute;t, điều khiển to&agrave;n bộ đ&egrave;n điện trong nh&agrave; chỉ với &ldquo;1 chạm&rdquo; qua điện thoại. Từ ph&ograve;ng ngủ đến ph&ograve;ng kh&aacute;ch, h&agrave;nh lang, s&acirc;n vườn. V&agrave; chắc chắn rồi! D&ugrave; bạn c&oacute; đang đi c&ocirc;ng t&aacute;c hay đi du lịch th&igrave; bạn vẫn bật/ tắt được đ&egrave;n điện ở nh&agrave;.</p>\r\n\r\n<p>C&ocirc;ng tắc mặt k&iacute;nh cảm ứng với thiết kế sang trọng, đ&egrave;n Led dịu nhẹ (m&agrave;u xanh l&aacute; l&uacute;c thiết bị tắt v&agrave; m&agrave;u đỏ l&uacute;c thiết bị đang hoạt động) mang lại kh&ocirc;ng gian hiện đại, tinh tế, thiết kế đế &acirc;m tạo kh&ocirc;ng gian rộng hơn cho ng&ocirc;i nh&agrave;.</p>\r\n\r\n<p>&ndash;&nbsp;<em>Hệ thống b&igrave;nh n&oacute;ng lạnh:</em>&nbsp;Với giải ph&aacute;p n&agrave;y, c&aacute;c b&aacute;c c&oacute; thể bật/ tắt b&igrave;nh n&oacute;ng lạnh mọi l&uacute;c, mọi nơi chỉ với một chiếc điện thoại d&ugrave; đang ở c&ocirc;ng ty cũng c&oacute; thể bật/tắt n&oacute;ng lạnh ở nh&agrave; hoặc c&aacute;c b&aacute;c cũng c&oacute; thể hẹn giờ bật, tắt b&igrave;nh n&oacute;ng lạnh theo lịch sinh hoạt thường xuy&ecirc;n của gia đ&igrave;nh m&igrave;nh.<br />\r\nV&iacute; dụ, nếu gia đ&igrave;nh c&oacute; th&oacute;i quen tắm v&agrave;o l&uacute;c 18h30, c&aacute;c b&aacute;c c&oacute; thể c&agrave;i đặt bật b&igrave;nh n&oacute;ng lạnh v&agrave;o 18h00 mỗi ng&agrave;y v&agrave; tự động tắt v&agrave;o l&uacute;c 18h30.</p>\r\n\r\n<p>&ndash;&nbsp;<em>Hệ thống tưới ti&ecirc;u tự động:&nbsp;</em>C&aacute;c b&aacute;c kh&ocirc;ng cần đến tận nơi để bật, tắt hệ thống tưới. Việc điều khiển hệ thống tưới ti&ecirc;u từ xa qua điện thoại gi&uacute;p tiết kiệm thời gian, thuận tiện ngay cả khi c&aacute;c b&aacute;c vắng nh&agrave;, tr&aacute;nh l&atilde;ng ph&iacute; nước hay điện năng do qu&ecirc;n tắt m&aacute;y bơm nhờ t&iacute;nh năng hẹn giờ tự động.</p>\r\n\r\n<p>V&iacute; dụ, nếu c&aacute;c b&aacute;c kh&ocirc;ng thể dậy sớm l&uacute;c 5h30 mỗi s&aacute;ng, c&aacute;c b&aacute;c c&oacute; thể c&agrave;i đặt hệ thống tưới bật l&uacute;c 5h30 mỗi s&aacute;ng v&agrave; tự động tắt v&agrave;o l&uacute;c 6h00.</p>\r\n\r\n<p>&ndash;&nbsp;<em>Hiển thị, nhiệt độ, độ ẩm kh&ocirc;ng kh&iacute; tr&ecirc;n ứng dụng:</em>&nbsp;Với việc cập nhật nhiệt độ, độ ẩm tại nh&agrave;, gi&uacute;p c&aacute;c b&aacute;c c&oacute; giải ph&aacute;p c&acirc;n bằng nhiệt độ, độ ẩm ph&ugrave; hợp. Tạo cảm gi&aacute;c ng&ocirc;i nh&agrave; trở n&ecirc;n thoải m&aacute;i nhất.</p>\r\n', '<h2>Giới thiệu g&oacute;i nh&agrave; th&ocirc;ng minh Hunonic cho nh&agrave; n&ocirc;ng th&ocirc;n 3 ph&ograve;ng ngủ</h2>\r\n\r\n<p>Nh&agrave; th&ocirc;ng minh Hunonic l&agrave; đơn vị sản xuất c&aacute;c thiết bị nh&agrave; th&ocirc;ng minh Việt Nam, chuy&ecirc;n cung cấp c&aacute;c giải ph&aacute;p nh&agrave; th&ocirc;ng minh tối ưu với gi&aacute; th&agrave;nh thấp, chất lượng cao ph&ugrave; hợp với đa dạng y&ecirc;u cầu của người d&ugrave;ng.</p>\r\n\r\n<p>Với g&oacute;i nh&agrave; th&ocirc;ng minh Hunonic sử dụng c&ocirc;ng nghệ WIFI d&agrave;nh cho nh&agrave; n&ocirc;ng th&ocirc;n c&oacute; 3 ph&ograve;ng ngủ, sản phẩm của ch&uacute;ng t&ocirc;i gồm c&oacute; c&aacute;c c&ocirc;ng tắc cảm ứng th&ocirc;ng minh, thay thế to&agrave;n bộ c&ocirc;ng tắc cơ truyền thống.</p>\r\n', 2000000, 4100000, 3100000, 100, 1, 'nha-cap-4-trai-nghiem-300x300.jpg', '2023-12-01 03:58:35', '3p Ngủ', 'Giải pháp trọn gói'),
(96, 'Trọn gói nhà thông minh trải nghiệm cho chung cư 2 phòng ngủ', 2, 'Trọn gói thiết bị nhà thông minh', 'Hunonic', '<h3><strong>Những tiện nghi m&agrave; g&oacute;i nh&agrave; th&ocirc;ng minh Trải nghiệm mang lại cho c&aacute;c b&aacute;c:</strong></h3>\r\n\r\n<p>&ndash;&nbsp;<em>Hệ thống chiếu s&aacute;ng th&ocirc;ng minh:</em>&nbsp;C&aacute;c b&aacute;c dễ d&agrave;ng kiểm so&aacute;t, điều khiển to&agrave;n bộ đ&egrave;n điện trong nh&agrave; từ xa qua điện thoại. Từ ph&ograve;ng ngủ đến ph&ograve;ng kh&aacute;ch, h&agrave;nh lang, s&acirc;n vườn. V&agrave; chắc chắn rồi! D&ugrave; bạn c&oacute; đang đi c&ocirc;ng t&aacute;c hay đi du lịch th&igrave; bạn vẫn bật/ tắt được đ&egrave;n điện ở nh&agrave;.</p>\r\n\r\n<p>C&ocirc;ng tắc mặt k&iacute;nh cảm ứng với thiết kế sang trọng, đ&egrave;n Led dịu nhẹ (m&agrave;u xanh l&aacute; l&uacute;c thiết bị tắt v&agrave; m&agrave;u đỏ l&uacute;c thiết bị đang hoạt động) mang lại kh&ocirc;ng gian hiện đại, tinh tế, thiết kế đế &acirc;m tạo kh&ocirc;ng gian rộng hơn cho ng&ocirc;i nh&agrave;.</p>\r\n\r\n<p>&ndash;&nbsp;<em>Hệ thống b&igrave;nh n&oacute;ng lạnh:</em>&nbsp;Với giải ph&aacute;p n&agrave;y, c&aacute;c b&aacute;c c&oacute; thể bật/ tắt b&igrave;nh n&oacute;ng lạnh mọi l&uacute;c, mọi nơi chỉ với một chiếc điện thoại d&ugrave; đang ở c&ocirc;ng ty cũng c&oacute; thể bật/tắt n&oacute;ng lạnh ở nh&agrave; hoặc c&aacute;c b&aacute;c cũng c&oacute; thể hẹn giờ bật, tắt b&igrave;nh n&oacute;ng lạnh theo lịch sinh hoạt thường xuy&ecirc;n của gia đ&igrave;nh m&igrave;nh.<br />\r\nV&iacute; dụ, nếu gia đ&igrave;nh c&oacute; th&oacute;i quen tắm v&agrave;o l&uacute;c 18h30, c&aacute;c b&aacute;c c&oacute; thể c&agrave;i đặt bật b&igrave;nh n&oacute;ng lạnh v&agrave;o 18h00 mỗi ng&agrave;y v&agrave; tự động tắt v&agrave;o l&uacute;c 18h30.</p>\r\n\r\n<p>&ndash;&nbsp;<em>Hệ thống tưới ti&ecirc;u tự động:&nbsp;</em>C&aacute;c b&aacute;c kh&ocirc;ng cần đến tận nơi để bật, tắt hệ thống tưới. Việc điều khiển hệ thống tưới ti&ecirc;u từ xa qua điện thoại gi&uacute;p tiết kiệm thời gian, thuận tiện ngay cả khi c&aacute;c b&aacute;c vắng nh&agrave;, tr&aacute;nh l&atilde;ng ph&iacute; nước hay điện năng do qu&ecirc;n tắt m&aacute;y bơm nhờ t&iacute;nh năng hẹn giờ tự động.</p>\r\n', '<h2>Giới thiệu trọn g&oacute;i nh&agrave; th&ocirc;ng minh trải nghiệm cho chung cư 2 ph&ograve;ng ngủ</h2>\r\n\r\n<p>Nh&agrave; th&ocirc;ng minh Hunonic l&agrave; đơn vị sản xuất c&aacute;c thiết bị nh&agrave; th&ocirc;ng minh Việt Nam, chuy&ecirc;n cung cấp c&aacute;c giải ph&aacute;p nh&agrave; th&ocirc;ng minh tối ưu với gi&aacute; th&agrave;nh thấp, chất lượng cao ph&ugrave; hợp với đa dạng y&ecirc;u cầu của người d&ugrave;ng.</p>\r\n\r\n<p>Với g&oacute;i nh&agrave; th&ocirc;ng minh trải nghiệm sử dụng c&ocirc;ng nghệ WIFI d&agrave;nh cho Chung cư 2 ph&ograve;ng ngủ, sản phẩm của ch&uacute;ng t&ocirc;i gồm c&oacute; c&aacute;c c&ocirc;ng tắc cảm ứng th&ocirc;ng minh viền v&agrave;ng bo cong, sang trọng, thay thế to&agrave;n bộ c&ocirc;ng tắc cơ truyền thống.</p>\r\n', 2300000, 4300000, 3367000, 100, 1, 'chung-cu-trai-nghiem-1-300x300.jpg', '2023-12-01 04:35:58', 'Chung cư 2 phòng ngủ', 'Giải pháp trọn gói'),
(97, 'Trọn gói Nhà phố cơ bản có 2 tầng 3 phòng ngủ', 0, 'Trọn gói thiết bị nhà thông minh', 'Hunonic', '<h3><strong>Những tiện nghi m&agrave; g&oacute;i nh&agrave; phố cơ bản mang lại cho c&aacute;c b&aacute;c:</strong></h3>\r\n\r\n<p>&ndash;&nbsp;<em>Hệ thống chiếu s&aacute;ng th&ocirc;ng minh:</em>&nbsp;C&aacute;c b&aacute;c dễ d&agrave;ng kiểm so&aacute;t, điều khiển to&agrave;n bộ đ&egrave;n điện trong nh&agrave; chỉ với &ldquo;1 chạm&rdquo; qua điện thoại. Từ ph&ograve;ng ngủ đến ph&ograve;ng kh&aacute;ch, h&agrave;nh lang, s&acirc;n vườn. V&agrave; chắc chắn rồi! D&ugrave; bạn c&oacute; đang đi c&ocirc;ng t&aacute;c hay đi du lịch th&igrave; bạn vẫn bật/ tắt được đ&egrave;n điện ở nh&agrave;.</p>\r\n\r\n<p>C&ocirc;ng tắc mặt k&iacute;nh cảm ứng với thiết kế sang trọng, đ&egrave;n Led dịu nhẹ (m&agrave;u xanh l&aacute; l&uacute;c thiết bị tắt v&agrave; m&agrave;u đỏ l&uacute;c thiết bị đang hoạt động) mang lại kh&ocirc;ng gian hiện đại, tinh tế, thiết kế đế &acirc;m tạo kh&ocirc;ng gian rộng hơn cho ng&ocirc;i nh&agrave;.</p>\r\n\r\n<p>&ndash;&nbsp;<em>Hệ thống b&igrave;nh n&oacute;ng lạnh:</em>&nbsp;Với giải ph&aacute;p n&agrave;y, c&aacute;c b&aacute;c c&oacute; thể bật/ tắt b&igrave;nh n&oacute;ng lạnh mọi l&uacute;c, mọi nơi chỉ với một chiếc điện thoại d&ugrave; đang ở c&ocirc;ng ty cũng c&oacute; thể bật/tắt n&oacute;ng lạnh ở nh&agrave; hoặc c&aacute;c b&aacute;c cũng c&oacute; thể hẹn giờ bật, tắt b&igrave;nh n&oacute;ng lạnh theo lịch sinh hoạt thường xuy&ecirc;n của gia đ&igrave;nh m&igrave;nh.<br />\r\nV&iacute; dụ, nếu gia đ&igrave;nh c&oacute; th&oacute;i quen tắm v&agrave;o l&uacute;c 18h30, c&aacute;c b&aacute;c c&oacute; thể c&agrave;i đặt bật b&igrave;nh n&oacute;ng lạnh v&agrave;o 18h00 mỗi ng&agrave;y v&agrave; tự động tắt v&agrave;o l&uacute;c 18h30.</p>\r\n\r\n<p>&ndash;&nbsp;<em>Hệ thống tưới ti&ecirc;u tự động:&nbsp;</em>C&aacute;c b&aacute;c kh&ocirc;ng cần đến tận nơi để bật, tắt hệ thống tưới. Việc điều khiển hệ thống tưới ti&ecirc;u từ xa qua điện thoại gi&uacute;p tiết kiệm thời gian, thuận tiện ngay cả khi c&aacute;c b&aacute;c vắng nh&agrave;, tr&aacute;nh l&atilde;ng ph&iacute; nước hay điện năng do qu&ecirc;n tắt m&aacute;y bơm nhờ t&iacute;nh năng hẹn giờ tự động.</p>\r\n', '<p>Nh&agrave; th&ocirc;ng minh Hunonic l&agrave; đơn vị sản xuất c&aacute;c thiết bị nh&agrave; th&ocirc;ng minh Việt Nam, chuy&ecirc;n cung cấp c&aacute;c giải ph&aacute;p nh&agrave; th&ocirc;ng minh tối ưu với gi&aacute; th&agrave;nh thấp, chất lượng cao ph&ugrave; hợp với đa dạng y&ecirc;u cầu của người d&ugrave;ng.</p>\r\n\r\n<p>Với g&oacute;i Nh&agrave; phố cơ bản c&oacute; sử dụng c&ocirc;ng nghệ Wifi d&agrave;nh cho nh&agrave; c&oacute; 2 tầng 3 ph&ograve;ng ngủ, sản phẩm của ch&uacute;ng t&ocirc;i gồm c&oacute; c&aacute;c c&ocirc;ng tắc cảm ứng th&ocirc;ng minh, thay thế to&agrave;n bộ c&ocirc;ng tắc cơ truyền thống, giải ph&aacute;p an ninh, cảm biến, camera, điều khiển điều h&ograve;a, m&aacute;y bơm tự động,&hellip;</p>\r\n', 5000000, 9084000, 8084000, 100, 0, 'Nha-pho-Hunonic-Wifi-8tr-300x300.jpg', '2023-12-01 04:38:29', 'Nhà phố cơ bản 2 tầng 3p ngủ', 'Giải pháp trọn gói'),
(98, 'Trọn gói Biệt thự sân vườn Luxury cho nhà 3 tầng 4 phòng ngủ', 4, 'Trọn gói thiết bị nhà thông minh', 'Hunonic', '<h3><strong>Những tiện nghi m&agrave; g&oacute;i&nbsp;Biệt thự s&acirc;n vườn Luxury mang lại cho c&aacute;c b&aacute;c:</strong></h3>\r\n\r\n<p><strong>&ndash;</strong><strong>&nbsp;<em>Hệ thống chiếu s&aacute;ng th&ocirc;ng minh:</em></strong>&nbsp;C&aacute;c b&aacute;c dễ d&agrave;ng kiểm so&aacute;t, điều khiển to&agrave;n bộ đ&egrave;n điện trong nh&agrave; từ xa qua điện thoại. Từ ph&ograve;ng ngủ đến ph&ograve;ng kh&aacute;ch, h&agrave;nh lang, s&acirc;n vườn. V&agrave; chắc chắn rồi! D&ugrave; bạn c&oacute; đang đi c&ocirc;ng t&aacute;c hay đi du lịch th&igrave; bạn vẫn bật/ tắt được đ&egrave;n điện ở nh&agrave;.</p>\r\n\r\n<p>C&ocirc;ng tắc mặt k&iacute;nh cảm ứng với thiết kế sang trọng, đ&egrave;n Led dịu nhẹ (m&agrave;u xanh l&aacute; l&uacute;c thiết bị tắt v&agrave; m&agrave;u đỏ l&uacute;c thiết bị đang hoạt động) mang lại kh&ocirc;ng gian hiện đại, tinh tế, thiết kế đế &acirc;m tạo kh&ocirc;ng gian rộng hơn cho ng&ocirc;i nh&agrave;.</p>\r\n\r\n<p><strong><em>&ndash;&nbsp;Hệ thống b&igrave;nh n&oacute;ng lạnh:&nbsp;</em></strong>Với giải ph&aacute;p n&agrave;y, c&aacute;c b&aacute;c c&oacute; thể bật/ tắt b&igrave;nh n&oacute;ng lạnh mọi l&uacute;c, mọi nơi chỉ với một chiếc điện thoại d&ugrave; đang ở c&ocirc;ng ty cũng c&oacute; thể bật/tắt n&oacute;ng lạnh ở nh&agrave; hoặc c&aacute;c b&aacute;c cũng c&oacute; thể hẹn giờ bật, tắt b&igrave;nh n&oacute;ng lạnh theo lịch sinh hoạt thường xuy&ecirc;n của gia đ&igrave;nh m&igrave;nh.<br />\r\nV&iacute; dụ, nếu gia đ&igrave;nh c&oacute; th&oacute;i quen tắm v&agrave;o l&uacute;c 18h30, c&aacute;c b&aacute;c c&oacute; thể c&agrave;i đặt bật b&igrave;nh n&oacute;ng lạnh v&agrave;o 18h00 mỗi ng&agrave;y v&agrave; tự động tắt v&agrave;o l&uacute;c 18h30.</p>\r\n\r\n<p><strong>&ndash;&nbsp;<em>Hệ thống tưới ti&ecirc;u tự động:&nbsp;</em></strong>C&aacute;c b&aacute;c kh&ocirc;ng cần đến tận nơi để bật, tắt hệ thống tưới. Việc điều khiển hệ thống tưới ti&ecirc;u từ xa qua điện thoại gi&uacute;p tiết kiệm thời gian, thuận tiện ngay cả khi c&aacute;c b&aacute;c vắng nh&agrave;, tr&aacute;nh l&atilde;ng ph&iacute; nước hay điện năng do qu&ecirc;n tắt m&aacute;y bơm nhờ t&iacute;nh năng hẹn giờ tự động.</p>\r\n\r\n<p>V&iacute; dụ, nếu c&aacute;c b&aacute;c kh&ocirc;ng thể dậy sớm l&uacute;c 5h30 mỗi s&aacute;ng, c&aacute;c b&aacute;c c&oacute; thể c&agrave;i đặt hệ thống tưới bật l&uacute;c 5h30 mỗi s&aacute;ng v&agrave; tự động tắt v&agrave;o l&uacute;c 6h00.</p>\r\n\r\n<p><strong>&ndash;&nbsp;<em>Hệ thống anh ninh cửa cuốn, camera:&nbsp;</em></strong>Kiểm so&aacute;t an ninh chống trộm th&ocirc;ng minh với cửa cuốn, hệ thống cổng tự động qua camera t&iacute;ch hợp.&nbsp; Khi cửa được mở, bạn sẽ biết v&agrave; nh&igrave;n thấy ai l&agrave; người đang đ&oacute;ng, mở cửa, độ mở l&agrave; bao nhi&ecirc;u phần trăm.</p>\r\n\r\n<p>Khi c&oacute; đột nhập tr&aacute;i ph&eacute;p, điện thoại li&ecirc;n tục b&aacute;o tin nhắn khẩn cấp về m&aacute;y.&nbsp; Việc kiểm so&aacute;t từ xa gi&uacute;p cho ng&ocirc;i nh&agrave; của bạn lu&ocirc;n được bảo vệ 24/7.</p>\r\n\r\n<p><strong>&ndash;&nbsp;</strong><em><strong>Giải ph&aacute;p tivi, điều ho&agrave; th&ocirc;ng minh</strong>:</em>&nbsp;Hunonic Ir Smart l&agrave; thiết bị chủ đạo trong giải ph&aacute;p điều ho&agrave;, tivi, quạt điện,&hellip; th&ocirc;ng minh. C&oacute; t&iacute;nh năng như một chiếc&nbsp;<strong>remote</strong>&nbsp;điều khiển mọi thiết bị như tivi, điều ho&agrave;, quạt, d&agrave;n &acirc;m thanh,.. từ xa qua điện thoại.</p>\r\n\r\n<p>V&iacute; dụ, m&ugrave;a h&egrave; bạn sẽ bật điều ho&agrave; ph&ograve;ng kh&aacute;ch trước khi về nh&agrave;, qu&ecirc;n tắt quạt trước khi đi l&agrave;m, mở APP tr&ecirc;n điện thoại tắt quạt từ xa! Hẹn giờ điều ho&agrave; tắt sau 4h s&aacute;ng đồng thời khởi động quạt. Kh&ocirc;ng c&ograve;n g&igrave; tuyệt vời hơn c&aacute;c b&aacute;c ạ!</p>\r\n\r\n<p><strong>&ndash;&nbsp;</strong><em><strong>Hệ thống điều khiển r&egrave;m tự động</strong>:</em>&nbsp;Giải ph&aacute;p r&egrave;m cửa th&ocirc;ng minh cho ph&eacute;p bạn điều khiển r&egrave;m chỉ bằng một chạm tr&ecirc;n điện thoại Ở tầng 1 vẫn đ&oacute;ng, mở được r&egrave;m tầng 2 , tầng 3. Ở cơ quan, đi c&ocirc;ng t&aacute;c,..vẫn điều khiển được r&egrave;m ở nh&agrave;. Ngo&agrave;i ra, bạn cũng c&oacute; thể hẹn giờ đ&oacute;ng mở r&egrave;m:<br />\r\n6h10 s&aacute;ng, to&agrave;n bộ r&egrave;m đều được mở đ&aacute;nh thức cả nh&agrave;<br />\r\n21h tối, đ&oacute;ng tất cả r&egrave;m.</p>\r\n\r\n<p><strong>&ndash;&nbsp;<em>Hiển thị, nhiệt độ, độ ẩm kh&ocirc;ng kh&iacute; tr&ecirc;n ứng dụng:</em></strong>&nbsp;Với việc cập nhật nhiệt độ, độ ẩm tại nh&agrave;, gi&uacute;p c&aacute;c b&aacute;c c&oacute; giải ph&aacute;p c&acirc;n bằng nhiệt độ, độ ẩm ph&ugrave; hợp. Tạo cảm gi&aacute;c ng&ocirc;i nh&agrave; trở n&ecirc;n thoải m&aacute;i nhất.</p>\r\n\r\n<p>&nbsp;<strong>Premium</strong>&nbsp;d&ograve;ng sản phẩm cao cấp nhất của nh&agrave; th&ocirc;ng minh Hunonic. Ngo&agrave;i full t&iacute;nh năng của một d&ograve;ng c&ocirc;ng tắc th&ocirc;ng minh ưu việt th&igrave; c&aacute;c b&aacute;c c&ograve;n c&oacute; thể:&nbsp;</p>\r\n\r\n<p>&ndash; Thay đổi m&agrave;u của c&ocirc;ng tắc theo sở th&iacute;ch c&aacute; nh&acirc;n.</p>\r\n\r\n<p>&ndash; C&ocirc;ng tắc tự động thay đổi độ s&aacute;ng của đ&egrave;n nhấn tr&ecirc;n c&ocirc;ng tắc khi trời tối, gi&uacute;p bảo vệ mắt, tr&aacute;nh hiện tượng ch&oacute;i mắt, mỏi mắt.</p>\r\n', '<p>Nh&agrave; th&ocirc;ng minh Hunonic l&agrave; đơn vị sản xuất c&aacute;c thiết bị điện th&ocirc;ng m&igrave;nh, chuy&ecirc;n cung cấp c&aacute;c giải ph&aacute;p nh&agrave; th&ocirc;ng minh tối ưu với gi&aacute; th&agrave;nh thấp, chất lượng cao ph&ugrave; hợp với đa dạng y&ecirc;u cầu của người d&ugrave;ng.</p>\r\n\r\n<p>Với g&oacute;i Biệt thự s&acirc;n vườn Luxury sử dụng c&ocirc;ng nghệ BLUETOOTH MESH d&agrave;nh cho Biệt thự 3 tầng c&oacute; 4 ph&ograve;ng ngủ, sản phẩm của ch&uacute;ng t&ocirc;i gồm c&oacute; c&aacute;c c&ocirc;ng tắc cảm ứng th&ocirc;ng minh&nbsp;<strong>Premium viền v&agrave;ng bo cong, mặt l&otilde;m sang trọng</strong>, thay thế to&agrave;n bộ c&ocirc;ng tắc cơ truyền thống, full giải ph&aacute;p kết hợp hệ thống an ninh cửa cuốn, camera,&hellip;</p>\r\n', 22000000, 36000000, 35000000, 100, 1, 'Biet-thu-luxury-35tr-1-300x300.jpg', '2023-12-01 04:40:38', 'Biệt thự 3 tầng 4p ngủ', 'Giải pháp trọn gói'),
(99, 'Cảm Biến Nhiệt Ẩm Hunonic – Kiểm Soát Môi Trường Qua Điện Thoại', 0, 'Công Nghệ Bluetooth Mesh', 'Hunonic', '<h2>C&aacute;c th&ocirc;ng số chi tiết của cảm biến nhiệt ẩm</h2>\r\n\r\n<p>Nguồn điện: Pin AAA x2 &ndash; 3V</p>\r\n\r\n<p>Kết nối: Bluetooth Mesh</p>\r\n\r\n<p>K&iacute;ch thước: 70x25x20mm</p>\r\n\r\n<p>Dải đo nhiệt độ -10 ~&nbsp; 60 độ ( Sai số 1%)</p>\r\n\r\n<p>Dải đo độ ẩm&nbsp; 20% ~ 98% ( Sai số 3% )</p>\r\n', '<p>Sản phẩm cảm biến nhiệt ẩm Hunonic c&oacute; thiết kế nhỏ gọn, c&oacute; thể được gắn l&ecirc;n tường hoặc đặt tr&ecirc;n bề mặt m&agrave; bạn muốn gi&aacute;m s&aacute;t.N&oacute; bao gồm c&aacute;c cảm biến đo nhiệt độ v&agrave; độ ẩm ch&iacute;nh x&aacute;c, gi&uacute;p bạn theo d&otilde;i v&agrave; kiểm so&aacute;t điều kiện m&ocirc;i trường. Sản phẩm sử dụng pin tiểu 3A, tiết kiệm năng lượng v&agrave; bền bỉ. Để c&agrave;i đặt v&agrave; quản l&yacute; sản phẩm, bạn cần sử dụng bộ trung t&acirc;m Hunonic Home Server. Cảm biến kết nối th&ocirc;ng qua c&ocirc;ng nghệ Bluetooth Mesh, cho ph&eacute;p kết nối nhanh ch&oacute;ng v&agrave; ổn định với ứng dụng Hunonic.</p>\r\n', 200000, 420000, 350000, 100, 0, 'cam-bien-nhiet-am-hunonic-300x300.jpg', '2023-12-01 04:44:00', '70x25x20mm', 'Cảm biến');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `type_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_product_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`id`, `type_id`, `name_product_type`) VALUES
(1, '1', 'Công Nghệ WiFi'),
(2, '2', 'Công Nghệ Bluetooth Mesh'),
(3, '3', 'Trọn gói thiết bị nhà thông minh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(12) NOT NULL,
  `price` int(50) NOT NULL,
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `size` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping`
--

INSERT INTO `shipping` (`id`, `name`, `email`, `address`, `phone`, `price`, `info`, `status`, `created`, `size`) VALUES
(4, 'Liêu Thị Thu Hiền', 'lieuhien21@gmail.com', 'Quyết thắng- tp Thái Nguyên', 337656685, 99000, ' Công Tắc Thông Minh Hunonic Datic Basic x1 70x45x23 mm,', 'Đang chờ', '2023-12-01 15:31:53', NULL),
(5, 'Liêu Thị Thu Hiền', 'lieuhien21@gmail.com', 'Quyết thắng- tp Thái Nguyên', 337656685, 450000, ' Bộ cảm biến cửa Hunonic Door Sensor x1 78x32mm,', 'Đang chờ', '2023-12-01 15:36:14', NULL),
(6, 'Liêu Thị Thu Hiền', 'lieuhien21@gmail.com', 'Quyết thắng- tp Thái Nguyên', 337656685, 41963000, ' Trọn gói nhà thông minh Hunonic cho nhà nông thôn 3 phòng ngủ x1 3p Ngủ, Công tắc Hunonic Mini x2  41x41x20mm, Trọn gói nhà thông minh trải nghiệm cho chung cư 2 phòng ngủ x1 Chung cư 2 phòng ngủ, Trọn gói Biệt thự sân vườn Luxury cho nhà 3 tầng 4 phòng ngủ x1 Biệt thự 3 tầng 4p ngủ,', 'Đã xong', '2023-12-01 15:41:38', NULL),
(7, 'Liêu Thị Thu Hiền', 'lieuhien21@gmail.com', 'Quyết thắng- tp Thái Nguyên', 337656685, 1028000, ' Công Tắc Thông Minh Hunonic Datic Basic x1 70x45x23 mm, Công Tắc Cảm Ứng Datic 1 Nút Màu Đen x1 120x72x32mm, Bộ Điều Khiển Trung Tâm Hunonic Home Server x1 100x10mm,', 'Đã xong', '2023-12-01 15:42:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name_image`, `created`) VALUES
(1, '370986745_1037162940860191_4386737392766629273_n.png', '2020-04-01 19:08:22'),
(2, '369623262_658203489774442_7605300653246126412_n.png', '2020-04-01 19:08:27'),
(3, '368892862_2665016186995925_3021330929682116_n.png', '2020-04-01 19:08:33'),
(4, '370254855_767179075247213_1153067970602487818_n.png', '2020-04-01 19:08:22'),
(5, '369627246_343014688320921_4158470266054567958_n.png', '2020-04-01 19:08:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `password`, `created`) VALUES
(1, 'Nguyen Duc Nhat', 'nhat@gmail.com', 214234234, '123456789', '2020-03-27 15:48:14'),
(3, 'Hoang Quynh Anh', 'quynh-anh@gmail.com', 387192776, '123456789', '2020-03-26 17:38:30'),
(2, 'Tran Tuan Anh', 'anh@gmail.com', 987471299, '11111111', '2020-03-27 03:34:59'),
(24, 'Lieu thi thu hien', 'lieuhien11', 337656252, '26102001', '2023-12-01 14:34:14'),
(25, 'nguyen van A', 'abc@gmail.com', 976668556, '123456', '2023-12-01 14:55:41'),
(26, 'ndduy', 'duyduc123', 976652252, '123456', '2023-12-01 15:17:07');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `collect`
--
ALTER TABLE `collect`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `producer`
--
ALTER TABLE `producer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
