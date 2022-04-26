-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 26, 2022 lúc 10:38 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_product`
--

CREATE TABLE `img_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `img_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `img_product`
--

INSERT INTO `img_product` (`id`, `id_product`, `img_product`) VALUES
(220, 43, '60640_laptop_asus_vivobook_a515ep_bq498t_bac_1.png'),
(221, 43, '60640_laptop_asus_vivobook_a515ep_bq498t_bac_2.png'),
(222, 43, '60640_laptop_asus_vivobook_a515ep_bq498t_bac_3.png'),
(224, 43, '60640_laptop_asus_vivobook_a515ep_bq498t_bac_5.png'),
(239, 43, '60640_laptop_asus_vivobook_a515ep_bq498t_bac_4.png'),
(240, 54, '58922_keyboard_gigabyte_aorus_k1_rgb_usb_red_sw_0000_1.jpg'),
(241, 54, '58922_keyboard_gigabyte_aorus_k1_rgb_usb_red_sw_0001_2.jpg'),
(242, 54, '58922_keyboard_gigabyte_aorus_k1_rgb_usb_red_sw_0002_3.jpg'),
(243, 54, '58922_keyboard_gigabyte_aorus_k1_rgb_usb_red_sw_0003_4.jpg'),
(244, 55, '27422_tai_nghe_kingston_hyperx_cloud_2_gaming_red_0001_2.jpg'),
(245, 55, '27422_tai_nghe_kingston_hyperx_cloud_2_gaming_red_0002_3.jpg'),
(246, 55, '27422_tai_nghe_kingston_hyperx_cloud_2_gaming_red_0003_4.jpg'),
(247, 55, '27422_tai_nghe_kingston_hyperx_cloud_2_gaming_red_0004_5.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_cmt`
--

CREATE TABLE `shop_cmt` (
  `id_comment_shop` int(11) NOT NULL,
  `id_comment_user` int(11) NOT NULL,
  `noidung` text NOT NULL,
  `time_comment` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `shop_cmt`
--

INSERT INTO `shop_cmt` (`id_comment_shop`, `id_comment_user`, `noidung`, `time_comment`) VALUES
(8, 54, 'Oke bạn , shop sẽ liên hệ qua zalo hoặc gmail của bạn', '2022-03-23 22:35:53'),
(9, 8, 'Còn Nhiều lắm bạn ạ', '2022-03-23 22:38:13'),
(10, 9, 'được chứ', '2022-04-06 22:25:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'quan', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`, `time`) VALUES
(5, 'Đối mặt nguy cơ không trả nợ được, Nga dọa kiện phương Tây 2', '<p>(NLĐO) - Bộ trưởng T&agrave;i ch&iacute;nh Nga Anton Siluanov ng&agrave;y 11-4 tuy&ecirc;n bố Moscow sẽ h&agrave;nh động ph&aacute;p l&yacute; nếu bị phương T&acirc;y ch&egrave;n &eacute;p vỡ nợ.</p>\r\n', '<p>&quot;Tất nhi&ecirc;n, ch&uacute;ng t&ocirc;i sẽ kiện v&igrave; ch&uacute;ng t&ocirc;i đ&atilde; triển khai mọi bước đi cần thiết để đảm bảo c&aacute;c nh&agrave; đầu tư nhận được c&aacute;c khoản thanh to&aacute;n. Ch&uacute;ng t&ocirc;i sẽ tr&igrave;nh l&ecirc;n t&ograve;a &aacute;n h&oacute;a đơn x&aacute;c nhận nỗ lực chi trả bằng đơn vị tiền tệ nước ngo&agrave;i lẫn đồng r&uacute;p. Đ&acirc;y kh&ocirc;ng phải l&agrave; một quy tr&igrave;nh dễ d&agrave;ng. Ch&uacute;ng t&ocirc;i sẽ phải nỗ lực để chứng minh, bất chấp mọi kh&oacute; khăn&quot; - Bộ trưởng Siluanov nhấn mạnh nhưng kh&ocirc;ng th&ocirc;ng tin chi tiết về lựa chọn ph&aacute;p l&yacute; của Moscow.</p>\r\n\r\n<p>Tuy&ecirc;n bố tr&ecirc;n thể hiện lập trường cứng rắn của Moscow trong cuộc chiến t&agrave;i ch&iacute;nh với phương T&acirc;y.</p>\r\n\r\n<p>&quot;Nga đ&atilde; cố gắng thanh to&aacute;n cho c&aacute;c chủ nợ nước ngo&agrave;i một c&aacute;ch thiện ch&iacute;. Tuy nhi&ecirc;n, c&aacute;c nước phương T&acirc;y đang cố t&igrave;nh triển khai những ch&iacute;nh s&aacute;ch để tạo ra một sự kiện vỡ nợ nh&acirc;n tạo bằng mọi gi&aacute;&quot; - Bộ trưởng Siluanov n&oacute;i th&ecirc;m, theo&nbsp;<em>Reuters</em>.</p>\r\n\r\n<p>Theo &ocirc;ng Siluanov, c&aacute;c khoản nợ nước ngo&agrave;i của Nga hiện chiếm khoảng 20% tổng nợ c&ocirc;ng, vốn đang ở ngưỡng 21.000 tỉ r&uacute;p (261,7 tỉ USD). Trong số n&agrave;y, khoảng 4.500-4.700 tỉ r&uacute;p l&agrave; nợ nước ngo&agrave;i.</p>\r\n\r\n<p><img alt=\"Đối mặt nguy cơ không trả nợ được, Nga dọa kiện phương Tây - Ảnh 1.\" src=\"https://nld.mediacdn.vn/thumb_w/684/291774122806476800/2022/4/11/photo-1-16496409071271927891321.jpg\" /></p>\r\n\r\n<p>Bộ trưởng T&agrave;i ch&iacute;nh Nga Anton Siluanov. Ảnh: Reuters</p>\r\n\r\n<p>&quot;Một cuộc chiến t&agrave;i ch&iacute;nh v&agrave; kinh tế được ph&aacute;t động chống lại đất nước của ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i buộc phải h&agrave;nh động trong khi nỗ lực ho&agrave;n th&agrave;nh mọi nghĩa vụ của m&igrave;nh. Nếu ch&uacute;ng t&ocirc;i kh&ocirc;ng được ph&eacute;p trả nợ bằng đơn vị tiền tệ nước ngo&agrave;i, ch&uacute;ng t&ocirc;i sẽ l&agrave;m điều n&agrave;y bằng đồng r&uacute;p&quot; - Bộ trưởng Siluanov tuy&ecirc;n bố.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nga lần đầu ti&ecirc;n đối mặt sức &eacute;p vỡ nợ trong hơn 100 năm, sau khi thực hiện c&aacute;c thỏa thuận để ho&agrave;n trả tr&aacute;i phiếu quốc tế bằng đồng r&uacute;p, thay v&igrave; USD, hồi đầu tuần n&agrave;y.</p>\r\n\r\n<p>Nga vỡ nợ vốn l&agrave; kịch bản kh&ocirc;ng tưởng cho đến khi Moscow bị Mỹ v&agrave; đồng minh đồng loạt &aacute;p lệnh trừng phạt để phản ứng với chiến dịch qu&acirc;n sự đặc biệt của Điện Kremlin ở Ukraine.</p>\r\n\r\n<p>Cơ quan xếp hạng t&iacute;n dụng Standard &amp; Poor&rsquo;s (Mỹ) mới đ&acirc;y hạ cấp khả năng thanh to&aacute;n nợ nước ngo&agrave;i của Nga, ph&aacute;t t&iacute;n hiệu cho thấy Moscow đang đối mặt với nguy cơ vỡ nợ gia tăng.</p>\r\n\r\n<p>Theo h&atilde;ng tin&nbsp;<em>AP</em>, động th&aacute;i tr&ecirc;n được Standard &amp; Poor&rsquo;s thực hiện với lập luận rằng c&aacute;c biện ph&aacute;p trừng phạt nhằm v&agrave;o Moscow v&igrave; cuộc chiến ở Ukraine &quot;nhiều khả năng được &aacute;p bổ sung trong những tuần tới, cản trở khả năng v&agrave; &yacute; ch&iacute; của Nga trong việc tu&acirc;n thủ điều khoản v&agrave; nghĩa vụ đối với chủ nợ nước ngo&agrave;i&quot;.</p>\r\n', 2, 1, '1649668047_tivi-8k-la-gi-3.jpg', '2022-04-12 18:23:20'),
(7, 'Thượng Hải nới phong tỏa, thành phố Mỹ bắt buộc đeo khẩu trang phòng Covid-19', '<p>Th&agrave;nh phố đ&ocirc;ng d&acirc;n nhất của Trung Quốc cho ph&eacute;p tiến h&agrave;nh một số hoạt động th&iacute;ch hợp ở c&aacute;c khu vực nơi kh&ocirc;ng c&oacute; ca nhiễm n&agrave;o trong &iacute;t nhất hai tuần.</p>\r\n', '<p><img src=\"https://static-images.vnncdn.net/files/publish/nguoi-dan-trung-quoc-xep-hang-cho-xet-nghiem-covid-19-06be5db029764ff8abd5fb173c995d94.jpg\" /></p>\r\n\r\n<p>Người d&acirc;n Trung Quốc xếp h&agrave;ng chờ x&eacute;t nghiệm Covid-19</p>\r\n\r\n<p>Theo b&aacute;o The Guardian, từ ng&agrave;y 11/4 giới chức Thượng Hải bắt đầu nới lỏng phong tỏa tại một số khu vực bất chấp số ca mắc Covid-19 tăng kỷ lục, hơn 25.000 trường hợp.</p>\r\n\r\n<p>Gu Honghui, một quan chức của đ&ocirc; thị 26 triệu d&acirc;n n&agrave;y cho biết, người d&acirc;n được ph&eacute;p tiến h&agrave;nh một số hoạt động th&iacute;ch hợp ở những khu vực kh&ocirc;ng c&oacute; ca mắc Covid-19 n&agrave;o trong &iacute;t nhất hai tuần. Cư d&acirc;n của những khu vực sạch Covid-19 n&agrave;y kh&ocirc;ng được ph&eacute;p tới những nơi đang bị phong tỏa chặt chẽ.&nbsp;</p>\r\n\r\n<p>Ph&aacute;t biểu tại một cuộc họp b&aacute;o, &ocirc;ng Gu cho biết, mỗi quận sẽ c&ocirc;ng bố t&ecirc;n những cộng đồng đầu ti&ecirc;n được nới lỏng phong tỏa.</p>\r\n\r\n<p>H&ocirc;m qua (11/4), Thượng Hải ghi nhận 914 ca nhiễm virus corona c&oacute; triệu chứng v&agrave; 25.173 ca kh&ocirc;ng triệu chứng.&nbsp;</p>\r\n\r\n<p><strong>Th&agrave;nh phố Mỹ t&aacute;i bắt buộc đeo khẩu trang b&ecirc;n trong nh&agrave;</strong></p>\r\n\r\n<p><img src=\"https://static-images.vnncdn.net/files/publish/anh-ap-04fe4212569343b3a15f31fadfd65f55.jpg\" /></p>\r\n\r\n<p>Ảnh: AP</p>\r\n\r\n<p>Ng&agrave;y 11/4, Philadelphia đ&atilde; trở th&agrave;nh th&agrave;nh phố lớn đầu ti&ecirc;n của Mỹ t&aacute;i kh&ocirc;i phục việc bắt buộc đeo khẩu trong nh&agrave; sau khi số ca nhiễm virus corona tăng mạnh. Quan chức y tế h&agrave;ng đầu của th&agrave;nh phố n&agrave;y cho biết, b&agrave; muốn chặn trước l&agrave;n s&oacute;ng l&acirc;y nhiễm mới do c&aacute;c biến thể phụ của biến thể Omicron g&acirc;y ra.&nbsp;</p>\r\n\r\n<p>H&atilde;ng tin AP dẫn lời Tiến sĩ Cheryl Bettigole, một ủy vi&ecirc;n y tế của Philadelphia cho biết, trong v&ograve;ng 10 ng&agrave;y, số ca mắc Covid-19 tại th&agrave;nh phố n&agrave;y đ&atilde; tăng hơn 50%, đ&acirc;y l&agrave; mức m&agrave; theo hướng dẫn của th&agrave;nh phố l&agrave; người d&acirc;n cần đeo khẩu trang.&nbsp;</p>\r\n\r\n<p>Giới chức y tế tại đ&acirc;y cho biết, số ca nhiễm gần đ&acirc;y tăng cao l&agrave; do biến thể phụ dễ l&acirc;y nhiễm BA.2 của biến thể Omicron, loại đ&atilde; lan truyền rất nhanh ở khắp ch&acirc;u &Acirc;u v&agrave; ch&acirc;u &Aacute; v&agrave; trở th&agrave;nh biến thể trội ở Mỹ trong v&agrave;i tuần gần đ&acirc;y.&nbsp;</p>\r\n\r\n<p><strong>Đức sắp vứt bỏ 3 triệu liều vắc xin ngừa Covid-19</strong></p>\r\n\r\n<p>H&atilde;ng AP đưa tin, Bộ Y tế Đức ng&agrave;y 11/4 cho biết, nước n&agrave;y c&oacute; thể phải vứt bỏ 3 triệu liều vắc xin ngừa Covid-19 hết hạn v&agrave;o cuối th&aacute;ng 6. Ph&aacute;t ng&ocirc;n vi&ecirc;n bộ n&agrave;y l&agrave; Hanno Kautz n&oacute;i, cho tới giờ Berlin chưa phải ti&ecirc;u hủy nhiều liều vắc xin nhưng kh&ocirc;ng đưa ra con số ch&iacute;nh x&aacute;c. &quot;Ch&uacute;ng t&ocirc;i hiện c&oacute; nhiều vắc xin hơn số lượng cần d&ugrave;ng v&agrave; số lượng c&oacute; thể hiến tặng&quot;.</p>\r\n\r\n<p>Quan chức n&agrave;y cho biết, chương tr&igrave;nh ph&acirc;n phối vắc xin tới c&aacute;c quốc gia ngh&egrave;o hơn COVAX hiện kh&ocirc;ng nhận quy&ecirc;n g&oacute;p vắc xin. &quot;C&oacute; nguy cơ số vắc xin n&agrave;y sẽ bị vứt bỏ&quot;, &ocirc;ng Kautz n&oacute;i v&agrave; cho biết th&ecirc;m, do gần đ&acirc;y xuất hiện th&ocirc;ng tin vắc xin BioNTech-Pfizer c&oacute; thể lưu trữ l&acirc;u hơn, n&ecirc;n tới cuối th&aacute;ng 6, chỉ c&oacute; 3 triệu liệu bị vứt bỏ hoặc ti&ecirc;u hủy thay v&igrave; 10 triệu liều như ước t&iacute;nh trước đ&oacute;. &nbsp;</p>\r\n\r\n<p>Chương tr&igrave;nh ti&ecirc;m chủng của Đức đang bị chậm đ&aacute;ng kể, trung b&igrave;nh mỗi ng&agrave;y nước n&agrave;y chỉ ti&ecirc;m 33.000 mũi vắc xin ngừa Covid-19 v&agrave;o tuần trước. Trong khi đ&oacute;, v&agrave;o thời điểm Đức đẩy mạnh ti&ecirc;m chủng, mỗi ng&agrave;y c&oacute; hơn 1 triệu liều vắc xin được sử dụng.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 3, 1, '1649753870_tải xuống (1).jpg', '2022-04-12 18:23:20'),
(8, 'Tên Lửa siêu vượt âm của Nga sẵn sàng tiêu diệt căn cứ quân sự trong lãnh thổ Ukarina', '<p>Qu&acirc;n đội Nga lần thứ 3 khai hỏa t&ecirc;n lửa si&ecirc;u vượt &acirc;m Kinzhal ở Ukraine, nhắm mục ti&ecirc;u v&agrave;o một sở chỉ huy lực lượng Ukraine ở v&ugrave;ng Donbass.</p>\r\n', '<p>Interfax dẫn lời Thiếu tướng Igor Konashenkov, ph&aacute;t ng&ocirc;n vi&ecirc;n Bộ Quốc ph&ograve;ng&nbsp;<a href=\"https://www.24h.com.vn/tin-tuc-nga-c415e3808.html\">Nga</a>, ng&agrave;y 11/4 x&aacute;c nhận một t&ecirc;n lửa Kinzhal được khai hỏa từ đường kh&ocirc;ng đ&atilde; ph&aacute; hủy sở chỉ huy ngầm được bảo vệ ki&ecirc;n cố của một đơn vị qu&acirc;n đội Ukraine gần l&agrave;ng Chasov Yar tại v&ugrave;ng Donbass.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; lần thứ 3 t&ecirc;n lửa Kinzhal được sử dụng ở Ukraine. Bộ Quốc ph&ograve;ng Nga ng&agrave;y 19/3 x&aacute;c nhận lần đầu ti&ecirc;n sử dụng Kinzhal tấn c&ocirc;ng một căn cứ ở v&ugrave;ng Ivano-Frankivsk ở miền Đ&ocirc;ng Ukraine. Một ng&agrave;y sau, một quả Kinzhal kh&aacute;c được khai hỏa v&agrave;o kho nhi&ecirc;n liệu ở tỉnh Mykolaiv.</p>\r\n\r\n<p>Kinzhal c&oacute; tốc độ tối đa khoảng Mach 10-12 (gấp 10-12 lần vận tốc &acirc;m thanh). Tổng thống Mỹ Joe Biden h&ocirc;m 21/3 cho rằng Kinzhal l&agrave; &quot;vũ kh&iacute; c&oacute; t&aacute;c động lớn nhưng kh&ocirc;ng tạo ra nhiều kh&aacute;c biệt ngoại trừ việc gần như kh&ocirc;ng thể bị đ&aacute;nh chặn&quot;.</p>\r\n\r\n<p>Tại họp b&aacute;o c&ugrave;ng ng&agrave;y, Tướng Konashenko th&ocirc;ng b&aacute;o th&ecirc;m, qu&acirc;n đội Nga đ&atilde; bắn hạ một m&aacute;y bay chiến đấu Su-27 của Ukraine gần l&agrave;ng Sinelnikovo, tỉnh&nbsp;Dnepropetrovsk, gần nơi Moscow trước đ&oacute; v&agrave;i giờ x&aacute;c nhận ph&aacute; hủy tổ hợp t&ecirc;n lửa ph&ograve;ng kh&ocirc;ng S-300 do một quốc gia ch&acirc;u &Acirc;u gửi sang Ukraine.</p>\r\n\r\n<p><img alt=\"Tên lửa siêu vượt âm Nga san phẳng sở chỉ huy Ukraine - 1\" src=\"https://cdn.24h.com.vn/upload/2-2022/images/2022-04-12/1649738268-cover_5b640ac1193f65_31461794-1649728740489-width600height337.png\" style=\"width:660px\" /></p>\r\n\r\n<p>M&aacute;y bay Nga mang theo t&ecirc;n lửa Kinzhal. Ảnh: Getty Images</p>\r\n\r\n<p>&quot;C&aacute;c t&ecirc;n lửa ph&oacute;ng từ tr&ecirc;n kh&ocirc;ng c&oacute; độ ch&iacute;nh x&aacute;c cao đ&atilde; ph&aacute; hủy một bệ ph&oacute;ng Tochka-U, 2 bệ ph&oacute;ng t&ecirc;n lửa trong hầm ngầm ở khu vực Selidovo, tỉnh&nbsp;Donetsk&quot;, quan chức Nga tiết lộ, cho biết khoảng 40 qu&acirc;n nh&acirc;n Ukraine đ&atilde; thiệt mạng.</p>\r\n\r\n<p>&Ocirc;ng Konashenkov cũng tuy&ecirc;n bố, &quot;trong qu&aacute; tr&igrave;nh trinh s&aacute;t v&agrave; t&igrave;m kiếm c&aacute;ch th&agrave;nh phố Izyum khoảng 5 km về ph&iacute;a Nam, một nh&oacute;m đặc nhiệm Nga đ&atilde; ti&ecirc;u diệt Taras Bobanich, một trong những thủ lĩnh cộm c&aacute;n của nh&oacute;m cực hữu Right Sector&quot;.</p>\r\n\r\n<p>Ph&iacute;a Nga m&ocirc; tả Bobanich l&agrave; người đứng đầu &quot;nh&oacute;m t&acirc;n ph&aacute;t x&iacute;t Lvov&quot;. Từ năm 2014, Bobanich tham gia chiến dịch của Kiev tại khu vực Donbass, miền Đ&ocirc;ng Ukraine v&agrave; &quot;chịu tr&aacute;ch nhiệm ra lệnh ph&aacute;o k&iacute;ch c&aacute;c khu d&acirc;n cư ở Donetsk v&agrave; Luhansk&quot;. Qu&acirc;n đội Nga khẳng định sẽ tiếp tục t&igrave;m kiếm v&agrave; loại bỏ &quot;thủ lĩnh của những tổ chức theo chủ nghĩa t&acirc;n ph&aacute;t x&iacute;t ở Ukraine&quot;.</p>\r\n', 2, 1, '1649753960_tải xuống (2).jpg', '2022-04-12 18:23:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id_banner` int(11) NOT NULL,
  `anh_banner` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_banner`
--

INSERT INTO `tbl_banner` (`id_banner`, `anh_banner`, `thutu`) VALUES
(4, '1647134355_ROG-Falchion-1.jpg', 1),
(5, '1647134644_banner-bo-luu-dien.jpg', 2),
(6, '1649770949_tải xuống (3).jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id_brand` int(11) NOT NULL,
  `tenbrand` varchar(255) NOT NULL,
  `hinhanhbrand` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`id_brand`, `tenbrand`, `hinhanhbrand`, `thutu`) VALUES
(11, 'Gigabytes', '1646909705_logo2.png', 2),
(14, 'Kingston', '1648649025_Kingston-HyperX-logo-edit-removebg-preview.png', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`) VALUES
(100, 138, '4815', 0, '2022-03-31 23:56:06'),
(101, 138, '2197', 0, '2022-04-01 00:24:46'),
(103, 138, '2714', 0, '2022-04-01 22:40:38'),
(104, 138, '5811', 0, '2022-04-02 21:13:26'),
(105, 138, '753', 0, '2022-04-02 21:56:56'),
(106, 138, '671', 0, '2022-04-03 20:23:56'),
(107, 138, '6502', 0, '2022-04-03 20:25:33'),
(108, 138, '6539', 0, '2022-04-04 15:30:21'),
(110, 138, '1721', 0, '2022-04-06 10:11:54'),
(111, 138, '755', 0, '2022-04-06 10:12:37'),
(112, 138, '6023', 0, '2022-04-06 22:01:23'),
(113, 138, '920', 0, '2022-04-06 22:04:53'),
(114, 138, '290', 0, '2022-04-06 22:05:17'),
(115, 138, '4295', 0, '2022-04-07 23:49:22'),
(116, 138, '2332', 0, '2022-04-07 23:50:00'),
(118, 141, '4337', 0, '2022-04-12 21:01:29'),
(119, 141, '7481', 1, '2022-04-13 09:56:33'),
(120, 141, '2787', 1, '2022-04-13 09:57:46'),
(121, 138, '5822', 1, '2022-04-14 16:14:31'),
(122, 138, '7892', 1, '2022-04-14 21:24:36'),
(123, 138, '302', 1, '2022-04-16 20:57:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(103, '4273', 54, 1),
(104, '2274', 55, 1),
(105, '4815', 55, 1),
(106, '2197', 43, 3),
(107, '2197', 54, 1),
(108, '5741', 43, 5),
(109, '2714', 43, 1),
(110, '5811', 43, 1),
(111, '753', 54, 1),
(112, '671', 54, 1),
(113, '6502', 43, 1),
(114, '6539', 54, 1),
(115, '9119', 43, 1),
(116, '1721', 43, 1),
(117, '755', 43, 1),
(118, '755', 54, 1),
(119, '6023', 54, 2),
(120, '920', 54, 1),
(121, '290', 54, 1),
(122, '4295', 55, 1),
(123, '2332', 55, 3),
(124, '7127', 54, 2),
(125, '4337', 54, 1),
(126, '7481', 43, 1),
(127, '2787', 43, 1),
(128, '5822', 54, 1),
(129, '7892', 55, 1),
(130, '302', 55, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `id_comment` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `noidungcmt` text NOT NULL,
  `time_cmt` datetime NOT NULL DEFAULT current_timestamp(),
  `tinhtrang` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_comments`
--

INSERT INTO `tbl_comments` (`id_comment`, `id_user`, `id_sp`, `noidungcmt`, `time_cmt`, `tinhtrang`) VALUES
(8, 126, 54, 'Mình Muốn nhận tư vấn', '2022-03-23 22:35:25', 1),
(9, 138, 54, 'Tôi muốn mua cái này ,được không\r\n', '2022-04-06 22:24:15', 1),
(10, 138, 54, '', '2022-04-16 22:00:33', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbv`
--

CREATE TABLE `tbl_danhmucbv` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc_bv` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbv`
--

INSERT INTO `tbl_danhmucbv` (`id_danhmuc`, `tendanhmuc_bv`, `thutu`) VALUES
(2, 'Tin tức quốc tế', 1),
(3, 'Tin Tức Covid 19', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucsp`
--

CREATE TABLE `tbl_danhmucsp` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(255) NOT NULL,
  `id_loaisp` int(11) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucsp`
--

INSERT INTO `tbl_danhmucsp` (`id_danhmuc`, `tendanhmuc`, `id_loaisp`, `thutu`) VALUES
(18, 'Bàn Phím Cơ', 18, 1),
(20, 'Laptop', 18, 1),
(21, 'Tai Nghe Gaming', 18, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_loaisp`
--

CREATE TABLE `tbl_loaisp` (
  `id_loaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_loaisp`
--

INSERT INTO `tbl_loaisp` (`id_loaisp`, `tenloaisp`, `thutu`) VALUES
(16, 'Phụ Kiện Máy Tính', 1),
(18, 'Laptop & PC', 2),
(19, 'SmartPhone', 3),
(20, 'Phụ Kiện', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `masp` varchar(255) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `sanxuat` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `thongso` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `add_sale` int(11) NOT NULL DEFAULT 0,
  `add_hot` int(11) NOT NULL DEFAULT 0,
  `luongmua` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `sale`, `sanxuat`, `hinhanh`, `tomtat`, `noidung`, `thongso`, `tinhtrang`, `id_danhmuc`, `id_brand`, `add_sale`, `add_hot`, `luongmua`) VALUES
(43, 'Laptop Asus VivoBook A515EP-BQ498T (i5 1135G7/8GB RAM/512GB SSD/15.6 FHD/MX330 2GB/Win10/Bạc)', ' LTAU599', '18599000', 11, 12, 'Viêt Nam', '1647965406_60640_laptop_asus_vivobook_a515ep_bq498t_bac_6-removebg-preview.png', '<ul>\r\n	<li>CPU: Intel Core i5 1135G7</li>\r\n	<li>RAM: 8GB (trống 1 khe ram)</li>\r\n	<li>Ổ cứng: 512GB SSD (c&oacute; thể lắp th&ecirc;m ổ 2.5)</li>\r\n	<li>VGA: Nvidia MX330 2GB</li>\r\n	<li>M&agrave;n h&igrave;nh: 15.6 inch FHD</li>\r\n	<li>HĐH: Win 10</li>\r\n</ul>\r\n', '<h3>Cấu h&igrave;nh xịn</h3>\r\n\r\n<p><a href=\"https://www.hanoicomputer.vn/laptop-asus-vivobook?cpu-laptop=intel-core-i5-1-1-1-1\">Laptop Asus VivoBook core I5</a>&nbsp;trang bị vi xử l&yacute; Intel&reg; Core&trade; i thế hệ 11 c&ugrave;ng với bộ nhớ trong 4 hoặc 8GB RAM cung cấp khả năng hỗ trợ tốt mọi ứng dụng về văn ph&ograve;ng như Word, Excel, PowerPoint. B&ecirc;n cạnh đ&oacute; m&aacute;y c&oacute; thể xử l&iacute; Photoshop với nhu cầu cắt gh&eacute;p đơn giản, kh&ocirc;ng chuy&ecirc;n. Ngo&agrave;i ra m&aacute;y c&ograve;n được trang bị ổ ssd tăng tốc độ xử l&yacute; file v&agrave; boot win cực nhanh.</p>\r\n\r\n<p><img alt=\"Laptop Asus VivoBook A515EP-1\" src=\"https://hanoicomputercdn.com/media/product/60640_laptop_asus_vivobook_a515ep_bq498t_bac_3.png\" style=\"height:850px; width:850px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh NanoEdge viền si&ecirc;u mỏng mang lại trải nghiệm h&igrave;nh ảnh đắm ch&igrave;m, kh&ocirc;ng gian h&igrave;nh ảnh được mở rộng bằng c&aacute;ch mang đến m&agrave;n h&igrave;nh lớn hơn trong một khung m&aacute;y nhỏ hơn. M&agrave;n h&igrave;nh Full HD với g&oacute;c nh&igrave;n rộng v&agrave; khả năng t&aacute;i tạo m&agrave;u sắc vượt trội đem lại h&igrave;nh ảnh ch&acirc;n thực, sống động</p>\r\n\r\n<p><img alt=\"Laptop Asus VivoBook A515EP-2\" src=\"https://hanoicomputercdn.com/media/product/60640_laptop_asus_vivobook_a515ep_bq498t_bac_6.png\" style=\"height:850px; width:850px\" /></p>\r\n\r\n<h3>Bảo mật&nbsp;</h3>\r\n\r\n<p>Truy cập ASUS VivoBook 15 chưa bao giờ dễ hơn v&agrave; bảo mật hơn. Với cảm biến v&acirc;n tay t&iacute;ch hợp tại b&agrave;n di chuột v&agrave; Windows Hello, bạn kh&ocirc;ng cần phải g&otilde; mật khẩu cho mỗi lần đăng nhập &ndash; chỉ cần một chạm để mở m&aacute;y t&iacute;nh!</p>\r\n\r\n<p>B&agrave;n ph&iacute;m fullsize được thiết kế nguy&ecirc;n khối v&agrave; h&agrave;nh tr&igrave;nh ph&iacute;m 1.4mm cho trải nghiệm đ&aacute;nh m&aacute;y thoải m&aacute;i, ph&ugrave; hợp cho mọi t&aacute;c vụ văn ph&ograve;ng.</p>\r\n\r\n<p><img alt=\"Laptop Asus VivoBook A515EP-3\" src=\"https://hanoicomputercdn.com/media/product/60640_laptop_asus_vivobook_a515ep_bq498t_bac_5.png\" style=\"height:850px; width:850px\" /></p>\r\n\r\n<h3>Cổng cắm đa dạng</h3>\r\n\r\n<p>VivoBook 15 được trang bị cổng USB 3.2 Gen 1 Type-C&trade; đảo chiều cho việc kết nối c&aacute;c thiết bị dễ d&agrave;ng hơn. M&aacute;y cũng c&oacute; cổng USB 3.2 Gen 1, USB 2.0, HDMI v&agrave; khe đọc thẻ microSD &ndash; để việc kết nối với c&aacute;c thiết bị ngoại vi, m&agrave;n h&igrave;nh, m&aacute;y chiếu thuận tiện hơn.</p>\r\n\r\n<p><img alt=\"Laptop Asus VivoBook A515EP-4\" src=\"https://hanoicomputercdn.com/media/product/60640_laptop_asus_vivobook_a515ep_bq498t_bac_1.png\" style=\"height:850px; width:850px\" /></p>\r\n', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng Sản xuất</td>\r\n			<td>ASUS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chủng Loại&nbsp;</td>\r\n			<td>M3401QA-KM040W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Part-number</td>\r\n			<td>Quiet-blue</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>M&agrave;u Sắc</td>\r\n			<td>Blue &amp;&nbsp; Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chipset</td>\r\n			<td>AMD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ Nhớ Trong</td>\r\n			<td>8GB DDR4 on board</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 20, 11, 1, 1, 2),
(54, 'Keyboard Gigabyte Aorus K1 RGB - Red switch', 'KBGI033', '2179000', 4, 10, 'Trung Quốc', '1647965500_58922_keyboard_gigabyte_aorus_k1_rgb_usb_red_sw_0004_5-removebg-preview.png', '<ul>\r\n	<li>Keyboard Gigabyte Aorus K1 RGB</li>\r\n	<li>Thiết kế layout Fullsize 104 ph&iacute;m</li>\r\n	<li>Sử dụng switch Cherry MX cao cấp</li>\r\n	<li>T&iacute;ch hợp ph&iacute;m Media tiện lợi</li>\r\n	<li>Led RGB Fusion 2.0, đồng bộ led với c&aacute;c thiết bị linh kiện Aorus kh&aacute;c</li>\r\n</ul>\r\n', '<h3>Switch Cherry MX cao cấp</h3>\r\n\r\n<p>Cherry Red Switch mang lại cảm gi&aacute;c phản hồi của ph&iacute;m vượt trội v&agrave; lực nhấn tối ưu. H&agrave;nh tr&igrave;nh ph&iacute;m 2mm, kh&ocirc;ng c&oacute; khấc cản gi&uacute;p cải thiện thời gian phản hồi cũng như giảm thiểu tiếng ồn</p>\r\n\r\n<p><img alt=\"Keyboard Gigabyte Aorus K1 RGB (USB/Red sw) sử dụng switch Cherry MX cao cấp\" src=\"https://hanoicomputercdn.com/media/lib/05-05-2021/switch-cua-keyboard-gigabyte-aorus-k1-rgb-usb-red-sw.png\" style=\"width:100%\" /></p>\r\n\r\n<h3>Led RGB Fusion</h3>\r\n\r\n<p>Với dải led 16.7 triệu m&agrave;u v&agrave; đi k&egrave;m nhiều hiệu ứng &aacute;nh s&aacute;ng, c&oacute; thể c&agrave;i đặt cho từng ph&iacute;m hoặc đồng bộ hiệu ứng với c&aacute;c thiết bị Aorus kh&aacute;c</p>\r\n\r\n<p><img alt=\"Keyboard Gigabyte Aorus K1 RGB (USB/Red sw) tích hợp led RGB Fusion 2.0\" src=\"https://hanoicomputercdn.com/media/lib/05-05-2021/led-cua-keyboard-gigabyte-aorus-k1-rgb-usb-red-sw.png\" style=\"width:100%\" /></p>\r\n\r\n<h3>C&aacute;c ph&iacute;m c&oacute; thể lập tr&igrave;nh</h3>\r\n\r\n<p>C&agrave;i đặt chức năng cho ph&iacute;m hoặc g&aacute;n Macro, tổ hợp ph&iacute;m bất kỳ m&agrave; bạn muốn. Với bộ nhớ được t&iacute;ch hợp b&ecirc;n trong, bạn c&oacute; thể thiết lập c&aacute;c cấu h&igrave;nh gần như kh&ocirc;ng giới hạn.</p>\r\n\r\n<p><img alt=\"Keyboard Gigabyte Aorus K1 RGB (USB/Red sw) có thể gán macro dễ dàng\" src=\"https://hanoicomputercdn.com/media/lib/05-05-2021/macro-cua-keyboard-gigabyte-aorus-k1-rgb-usb-red-sw.png\" style=\"width:100%\" /></p>\r\n\r\n<h3>Anti-Ghosting</h3>\r\n\r\n<p>Aorus K1 cung cấp t&iacute;nh năng Anti-Ghosting cực k&igrave; hữu dụng, đảm bảo cho c&aacute;c tổ hợp ph&iacute;m bấm nhiều v&agrave; phức tạp được thực hiện 1 c&aacute;ch ch&iacute;nh x&aacute;c nhất. Hỗ trợ đồng thời 64 ph&iacute;m c&ugrave;ng l&uacute;c với kết nối USB</p>\r\n\r\n<p><img alt=\"Keyboard Gigabyte Aorus K1 RGB (USB/Red sw) trang bị tính năng anti-ghosting hữu ích\" src=\"https://hanoicomputercdn.com/media/lib/05-05-2021/tinh-nang-anti-ghosting-cua-keyboard-gigabyte-aorus-k1-rgb-usb-red-sw.png\" style=\"width:100%\" /></p>\r\n\r\n<h3>On-The-Fly</h3>\r\n\r\n<p>C&aacute;c ph&iacute;m chức năng được t&iacute;ch hợp thuận tiện cung cấp khả năng điều khiển đa phương tiện dễ d&agrave;ng v&agrave; cho ph&eacute;p bạn tinh chỉnh đ&egrave;n led một c&aacute;ch thoải m&aacute;i</p>\r\n\r\n<p><img alt=\"Keyboard Gigabyte Aorus K1 RGB (USB/Red sw) tích hợp phím chức năng tiện lợi\" src=\"https://hanoicomputercdn.com/media/lib/05-05-2021/phim-media-cua-keyboard-gigabyte-aorus-k1-rgb-usb-red-sw.png\" style=\"width:100%\" /></p>\r\n', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Switch</td>\r\n			<td>Red Switch</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu</td>\r\n			<td>Sắt Fe56</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Led</td>\r\n			<td>RGB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Số Ph&iacute;m</td>\r\n			<td>Fullsize 104 ph&iacute;m</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 18, 11, 1, 1, 5),
(55, 'Tai nghe Kingston HyperX Cloud II Gaming  Red (KHX-HSCP-RD)', 'TNKT003', '2529000', 6, 10, 'Nhật Bản', '1648649839_27422_tai_nghe_kingston_hyperx_cloud_2_gaming_red_0000_1-removebg-preview.png', '<ul>\r\n	<li>Phi&ecirc;n bản Cloud 2 II với c&ocirc;ng nghệ giả lập &acirc;m thanh v&ograve;m 7.1</li>\r\n	<li>Sử dụng chiếc Soundcard 7.1, chỉ cần cắm v&agrave; sử dụng</li>\r\n	<li>Kh&ocirc;ng cần Driver điều chỉnh</li>\r\n	<li>Thiết kế cứng c&aacute;p, cảm gi&aacute;c đeo thoải m&aacute;i trong nhiều giờ</li>\r\n	<li>Chất &acirc;m thi&ecirc;n s&aacute;ng, chi tiết tốt, ph&ugrave; hợp với c&aacute;c game thi đấu ESPORTS</li>\r\n	<li>Microphone c&oacute; thể được th&aacute;o rời thuận tiện</li>\r\n	<li>Được khuy&ecirc;n d&ugrave;ng bởi c&aacute;c game thủ CS:GO chuy&ecirc;n nghiệp</li>\r\n</ul>\r\n', '<p>Trong một v&agrave;i năm gần đ&acirc;y, d&ograve;ng sản phẩm HyperX của Kingston đang l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n thị trường gaming gear Việt Nam. Vốn chỉ l&agrave; một thương hiệu chuy&ecirc;n về thiết bị lưu trữ như thẻ nhớ,&nbsp;<a href=\"https://www.hanoicomputer.vn/ram-bo-nho-trong/c32.html\" target=\"_blank\">SSD</a>,&nbsp;<a href=\"https://www.hanoicomputer.vn/ram-bo-nho-trong/c32.html\" target=\"_blank\">RAM</a>.. những tưởng khi lấn s&acirc;n sang mảng phụ kiện gaming n&agrave;y, Kingston sẽ gặp phải kh&ocirc;ng &iacute;t kh&oacute; khăn. Nhưng với chất lượng của m&igrave;nh, d&ograve;ng sản phẩm n&agrave;y của Kingston nhanh ch&oacute;ng tạo dựng được thương hiệu trong cộng đồng game thủ đặc biệt l&agrave; mảng tai nghe. Mới đ&acirc;y, sản phẩm&nbsp;<strong>Tai nghe Kingston HyperX Cloud II Gaming Red</strong>&nbsp;đ&atilde; được ra mắt. Đ&acirc;y l&agrave; một mẫu tai nghe chuy&ecirc;n dụng cho game thủ, v&agrave; được đ&aacute;nh gi&aacute; l&agrave; xứng đ&aacute;ng đồng tiền b&aacute;t gạo.</p>\r\n\r\n<h3>Thiết kế giữ nguy&ecirc;n so với phi&ecirc;n bản cũ</h3>\r\n\r\n<p>Nếu&nbsp;c&oacute; theo d&otilde;i về tin tức của d&ograve;ng tai nghe Kingston, anh em c&oacute; thể thấy rằng&nbsp;<a href=\"https://www.hanoicomputer.vn/tai-nghe-kingston-hyperx-cloud-2-gaming-red/p27422.html\">Kingston HyperX Cloud II Gaming</a>&nbsp;c&oacute; thiết kế kh&ocirc;ng kh&aacute;c mấy so với người anh tiền nhiệm HyperX Cloud. Vốn dĩ thiết kế ban đầu được người d&ugrave;ng đ&oacute;n nhận nhiệt t&igrave;nh, do vậy ở phi&ecirc;n bản n&agrave;y Kingston cũng chả tội g&igrave; m&agrave; phải thay đổi thiết kế cũ cả. Về mặt cơ bản,&nbsp;Kingston HyperX Cloud II vẫn c&oacute; Micro c&oacute; thể th&aacute;o rời để tăng t&iacute;nh khả dụng cho từng mục đ&iacute;ch của bạn.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.hanoicomputer.vn/media/lib/tainghekingstonhyperxcloudiigamingred_1.jpg\" style=\"height:478px; width:850px\" /></p>\r\n\r\n<p><strong>Cloud II</strong>&nbsp;được trang bị c&aacute;p kết nối d&agrave;i 1m với đầu jack 3.5mm. Nếu cảm thấy chiều d&agrave;i của d&acirc;y hơi ngắn, bạn c&oacute; thể cắm tai nghe qua Sound Card 7.1 được trang bị sẵn k&egrave;m với sản phẩm. Với chiếc Sound card USB được Kingston ưu &aacute;i cho chiều d&agrave;i l&ecirc;n tới 2m bạn cộng với 1m c&aacute;p từ tai nghe bạn đ&atilde; c&oacute; tổng chiều d&agrave;i sử dụng l&ecirc;n tới 3m, thoải m&aacute;i cho bạn sử dụng trong kh&ocirc;ng gian chơi game của m&igrave;nh.</p>\r\n\r\n<p><strong>HyperX Cloud II</strong>&nbsp;c&oacute; thiết kế over-ear mang lại cảm gi&aacute;c thoải m&aacute;i cho người sử dụng khi đ&ocirc;i tai của bạn sẽ nằm gọn b&ecirc;n trong ốp l&oacute;t tai cũng như hạn chế tối đa ảnh hưởng của tiếng ồn b&ecirc;n ngo&agrave;i. Với thiết kế khung nh&ocirc;m v&agrave; c&aacute;c ốp đệm bằng da kh&ocirc;ng chỉ đem lại cảm gi&aacute;c cứng c&aacute;p m&agrave; lại v&ocirc; c&ugrave;ng sang trọng cho sản phẩm n&agrave;y. V&agrave; một điểm cộng nữa l&agrave; việc microphone c&oacute; thể th&aacute;o rời tr&aacute;nh vướng v&iacute;u khi kh&ocirc;ng phải sử dụng đến mic.</p>\r\n\r\n<p>Trong hộp, tai nghe&nbsp;<strong>Kingston HyperX Cloud II Gaming</strong>&nbsp;c&ograve;n được khuyến m&atilde;i th&ecirc;m một cặp đệm tai nghe dự ph&ograve;ng với chất liệu giả da si&ecirc;u mềm. Theo m&igrave;nh đ&aacute;nh gi&aacute; th&igrave; phần ốp tai n&agrave;y của&nbsp;HyperX Cloud II&nbsp;tốt hơn nhiều so với c&aacute;c loại đệm nhung đi k&egrave;m với mẫu HyperX Cloud trước đ&acirc;y. Phần đệm trong tai được l&agrave;m với dạng m&uacute;t bọt rất thoải m&aacute;i&nbsp;kể cả khi sử dụng&nbsp;trong thời gian d&agrave;i. N&oacute;i t&oacute;m lại, HyperX Cloud II c&oacute; thiết kế v&ocirc; c&ugrave;ng đơn giản nhưng v&ocirc; c&ugrave;ng ph&ugrave; hợp với mọi đối tượng game thủ. Ngo&agrave;i đệm tai chất lượng, HyperX Cloud II vẫn giữ nguy&ecirc;n thiết kế với phần vỏ bằng nhựa cao cấp v&agrave; khung kim loại b&ecirc;n trong.&nbsp;Sound card&nbsp;USB cũng được l&agrave;m bằng nhựa. N&oacute; c&oacute; một n&uacute;t để k&iacute;ch hoạt &acirc;m thanh 7.1 v&agrave; c&aacute;c n&uacute;t điều chỉnh &acirc;m lượng ri&ecirc;ng cho tai nghe v&agrave; micr&ocirc;.</p>\r\n\r\n<h3>&Acirc;m thanh v&ograve;m Virtual 7.1</h3>\r\n\r\n<p>Soundcard 7.1 ch&iacute;nh l&agrave; điểm kh&aacute;c biệt giữa Cloud v&agrave; Cloud II. Ở phi&ecirc;n bản Cloud II khi sử dụng k&egrave;m chiếc soundcard n&agrave;y sẽ đem lại một trải nghiệm &ldquo;đ&atilde; hay lại c&ograve;n hay hơn&rdquo; so với việc sử dụng cổng cắm 3.5mm b&igrave;nh thường. Theo như Kingston th&igrave; chiếc soundcard 7.1 của h&atilde;ng tạo ra được tối ưu cho c&aacute;c d&ograve;ng game đặc biệt l&agrave; d&ograve;ng game FPS. Với c&aacute;c tựa game bắn s&uacute;ng cơ bản như PUBG, CS-GO hay&nbsp;Battlefield 4, &acirc;m thanh v&ograve;m được xử l&yacute; qua Sound card n&agrave;y sẽ gi&uacute;p bạn x&aacute;c định ch&iacute;nh x&aacute;c vị tr&iacute; của kẻ th&ugrave;. &Acirc;m thanh của tiếng s&uacute;ng được tạo ra từ&nbsp;HyperX Cloud II nghe rất đanh v&agrave; chắc chắn nhờ &acirc;m bass mạnh mẽ. C&aacute;c vụ nổ từ bom, hay lựu đạn th&igrave; sống động như bạn đang chứng kiến ch&uacute;ng trong thực tế vậy.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.hanoicomputer.vn/media/lib/tainghekingstonhyperxcloudiigamingred_2.jpg\" style=\"height:397px; width:850px\" /></p>\r\n\r\n<p>&Acirc;m thanh v&ograve;m 7.1 của&nbsp;Kingston HyperX Cloud II cho trải nghiệm v&ocirc; c&ugrave;ng th&uacute; vị khi xem phim , đặc biệt l&agrave; những phim chứa đầy c&aacute;c cảnh h&agrave;nh động hard core. M&ocirc; phỏng &acirc;m thanh v&ograve;m kh&ocirc;ng c&oacute; nghĩa l&agrave; cho &acirc;m nhạc stereo. Điều đ&oacute; đồng nghĩa&nbsp;&nbsp;rằng, khả năng&nbsp;nghe&nbsp;nhạc của&nbsp;Cloud II cũng kh&ocirc;ng tệ.&nbsp;Về trải nghiệm nghe nhạc, m&igrave;nh&nbsp;thực sự th&iacute;ch mids punchy, những &acirc;m thanh trong dải tần số cao hơn l&agrave; hơi thiếu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Tai nghe Kingston HyperX Cloud 2 Gaming  Red (KHX-HSCP-RD) trang bị âm thanh vòm 7.1\" src=\"https://hanoicomputercdn.com/media/lib/27422_am-thanh-vom-cua-tai-nghe-kingston-hyperx-cloud-2-gaming-red.jpg\" style=\"width:800px\" /></p>\r\n', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất</td>\r\n			<td>Kingston</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chủng Loại</td>\r\n			<td>HyperX Cloud2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chuẩn cắm hỗ trợ</td>\r\n			<td>3.5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MicroPhone</td>\r\n			<td>C&oacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trở Kh&aacute;ng</td>\r\n			<td>60&Omega;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tần Số</td>\r\n			<td>15-25kKhz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch cỡ mảng loa</td>\r\n			<td>53mm bằng nam ch&acirc;m Neodymium</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng Lượng</td>\r\n			<td>320 &ndash; 350g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh Năng Đặc Biệt</td>\r\n			<td>\r\n			<p>Đi k&egrave;m soundcard giả lập &acirc;m th&agrave;nh v&ograve;m 7.1.Chất lượng &acirc;m thanh tuyệt vời cho game v&agrave; nghe nhạc.C&oacute; thể sử dụng với PS4, Tablet v&agrave; Smartphone&Acirc;m treble s&aacute;ng, &acirc;m mid trong, bass vừa phải, th&iacute;ch hợp với nghe nhạc Pop, Trance, Dance, Metal</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 21, 14, 1, 0, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(50) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(5, '2022-04-01', 3, '41906000', 4),
(6, '2022-04-02', 1, '2179000', 1),
(7, '2022-04-04', 3, '22957000', 1),
(8, '2022-04-06', 6, '64513000', 1),
(9, '2022-04-10', 3, '7237000', 2),
(10, '2022-04-12', 1, '2179000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `diachicuthe` text NOT NULL,
  `tinh` varchar(100) NOT NULL,
  `tp` varchar(255) NOT NULL,
  `donhangdamua` int(11) NOT NULL DEFAULT 0,
  `tongtien` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `fullname`, `sdt`, `email`, `hinhanh`, `diachicuthe`, `tinh`, `tp`, `donhangdamua`, `tongtien`) VALUES
(138, 'quan7', '202cb962ac59075b964b07152d234b70', 'Quân Nguyễn 1', '+84853001127', 'qquannguyentrong123@gmail.com', '1649571928_tải xuống.jpg', '09 , Phúc Trung , Phúc thanh 1', 'Ninh Bình', 'Thành phố Ninh Bình', 12, 10435500),
(139, 'quan8', '202cb962ac59075b964b07152d234b70', 'Nguyễn Trọng Quân', '0853001127', 'qquannguyentrong123@gmail.com', '1649773041_tải xuống (3).jpg', '09 , Phúc Trung , Phúc thanh', 'Ninh Bình', 'Thành phố Ninh Bình', 0, 0),
(140, 'quan9', '202cb962ac59075b964b07152d234b70', 'Quân Nguyễn', '+84853001127', 'qquannguyentrong123@gmail.com', '1649521865_tải xuống.jpg', '09 , Phúc Trung , Phúc thành', 'Ninh Bình', 'Thành phố Ninh Bình', 0, 0),
(141, 'quan10', '202cb962ac59075b964b07152d234b70', 'Quân Nguyễn', '+84853001127', 'qquannguyentrong123@gmail.com', '1649562828_tải xuống.jpg', '09 , Phúc Trung , Phúc thanh', 'Ninh Bình', 'Thành phố Ninh Bình', 3, 34695340),
(142, 'quan11', '202cb962ac59075b964b07152d234b70', 'Quân Nguyễn 2', '+84853001127', 'qquannguyentrong123@gmail.com', '1649564038_tivi-Sharp-AQUOS-8K-6.jpg', '09 , Phúc Trung , Phúc thanh', 'Hà Nội', 'Huyện Mỹ Đức', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `time_sale`
--

CREATE TABLE `time_sale` (
  `id` int(11) NOT NULL,
  `time1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `time_sale`
--

INSERT INTO `time_sale` (`id`, `time1`) VALUES
(1, '2022-05-08');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_cmt`
--
ALTER TABLE `shop_cmt`
  ADD PRIMARY KEY (`id_comment_shop`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Chỉ mục cho bảng `tbl_danhmucbv`
--
ALTER TABLE `tbl_danhmucbv`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucsp`
--
ALTER TABLE `tbl_danhmucsp`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_loaisp`
--
ALTER TABLE `tbl_loaisp`
  ADD PRIMARY KEY (`id_loaisp`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Chỉ mục cho bảng `time_sale`
--
ALTER TABLE `time_sale`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT cho bảng `shop_cmt`
--
ALTER TABLE `shop_cmt`
  MODIFY `id_comment_shop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbv`
--
ALTER TABLE `tbl_danhmucbv`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucsp`
--
ALTER TABLE `tbl_danhmucsp`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_loaisp`
--
ALTER TABLE `tbl_loaisp`
  MODIFY `id_loaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT cho bảng `time_sale`
--
ALTER TABLE `time_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
