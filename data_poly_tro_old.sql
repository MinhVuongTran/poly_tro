-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2022 lúc 02:25 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `poly_tro`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `facility_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `facility_id`) VALUES
(1, 'thanhminh', 'thanhminh2003\r\n', 1),
(2, 'minhvuong2003', 'minhvuong2003', 2),
(3, 'minhvuongtran', '123456', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Phòng trọ'),
(2, 'Nhà trọ'),
(3, 'Căn hộ'),
(4, 'Mặt bằng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `facilities`
--

INSERT INTO `facilities` (`id`, `name`) VALUES
(1, 'Hà Nội'),
(2, 'Thành Phố Hồ Chí Minh'),
(3, 'Đà Nẵng'),
(4, 'Tây Nguyên'),
(5, 'Cần Thơ'),
(6, 'Đồng Nai'),
(7, 'Bắc Giang'),
(8, 'Huế'),
(9, 'Hải Phòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favourites`
--

CREATE TABLE `favourites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `favourites`
--

INSERT INTO `favourites` (`id`, `user_id`) VALUES
(47, 3),
(48, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favourite_item`
--

CREATE TABLE `favourite_item` (
  `id` int(11) NOT NULL,
  `new_id` int(11) NOT NULL,
  `favourite_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `favourite_item`
--

INSERT INTO `favourite_item` (`id`, `new_id`, `favourite_id`, `created_at`) VALUES
(62, 3, 47, '2022-12-08 09:02:58'),
(63, 3, 48, '2022-12-08 09:03:12'),
(64, 4, 48, '2022-12-08 09:03:22'),
(65, 4, 47, '2022-12-08 21:33:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` int(255) DEFAULT 0,
  `area` float DEFAULT 0,
  `number_people` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `status` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `address`, `image`, `price`, `area`, `number_people`, `view`, `status`, `category_id`, `user_id`, `facility_id`, `created_at`, `updated_at`) VALUES
(3, 'Cho thuê phòng trọ rộng rãi trong chung cư mini tại Ngõ 256, Nguyễn Lân, Trường Chinh, HN', 'Phòng rộng ở được 3 - 4 người\r\n\r\nPhòng rộng khép kín đầy đủ tiện nghi có hai giường tầng rộng bàn, điêu hòa nóng lạnh. \r\n\r\nGiao thông thuận loi ko tắc đường, ngập lụt. \r\n\r\nSinh hoạt giờ giấc tự do. Không chung chủ\r\n\r\nGần đường ô tô có chỗ để ô tô. Giao thông thuận lợi cạnh đường lớn Nguyễn Lân gần chợ, trường đai học lớn Bách Khoa, xây dựng, kinh tế, y, ngân hàng ....\r\n\r\nCó chỗ để xe\r\n\r\nNhà cạnh đường lớn giao thông thuận lơi, ko bị tắc đường như Trường Chinh, Lê trọng tấn......\r\n\r\nĐc: số nhà 06 ngõ 256 Phố Nguyễn Lân đường Trường Chinh Hà Nội.\r\n\r\nĐt liên lạc 0912966199', 'Quận Thanh Xuân, Hà Nội', 'public/uploads/img1.jpg,public/uploads/img2.jpg,public/uploads/img3.jpeg', 3000000, 25, 3, 488, 1, 1, 1, 1, '2022-11-22 11:26:34', '2022-11-24 22:22:27'),
(4, 'Cho thuê phòng trọ dạng chung cư mini máy lạnh Q.8 gần Đại lộ Đông Tây, Q.5, Q.6', 'Cho thuê phòng trọ dạng chung cư mini P.16, Q.8, gần đại lộ Đông Tây, q5, q6. Phòng thoáng mát, yên tĩnh, có bếp, nhà vệ sinh riêng, cáp quang, wifi miễn phí, có gác đúc, đặt biệt có máy lạnh.\r\n\r\nCó camera quan sát tất cả các tầng và nhà xe.\r\n\r\nDiện tích sử dụng từ 18-22 m2.Giá từ 1.800.000 đến 2.000.000 đồng.\r\n\r\nĐịa chỉ: 154/21-154/23 Hoàng Ngân (Đường 41, Phú Định cũ), P.16, Q.8, gần giao lộ Võ Văn Kiệt (đại lộ Đông Tây) và đường An Dương Vương.', '154/21-154/23 Đường Hoàng Ngân P.16, Quận 8', 'public/uploads/img25.jpg,public/uploads/img26.jpg,public/uploads/MVT.png', 1800000, 18, 2, 111, 1, 2, 1, 2, '2022-11-22 11:29:04', '2022-11-24 22:23:16'),
(5, 'Phòng, Căn hộ mini mới 100% gần cầu Hoà Xuân giá cả hợp lý', 'Còn 1 phòng thoáng mát đầy đủ tiện ích. Có gác lẩng, Có bảo vệ, chổ để xe, máy giặt, sân phơi, điều hoà, nước nóng ... wifi miễn phí, điện 3000 đ/chữ, nước 50k/ người lớn, cửa ra vào bằng khoá vân tay, camera annin ....gần trục đường Nguyễn Phước Lan, Hoà Xuân ( Mai Chí Thọ & Thanh Lương 27) .Giá cả hợp lý 2tr6/ phòng / tháng ở được 2-3 người.', 'Phường Hòa Xuân, Quận Cẩm Lệ, Đà Nẵng', 'public/uploads/275302539_2113947498767461_1799123868468649042_n.jpg,public/uploads/astronaut_ring_neon_156673_3840x2160.jpg,public/uploads/bannerpng.png,public/uploads/cat.jpg,public/uploads/FPT_logo.png', 3500000, 35, 4, 55, 1, 3, 2, 3, '2022-11-22 11:33:43', '2022-11-26 16:49:24'),
(6, 'Cho thuê phòng cao cấp, đầy đủ tiện nghi, như căn hộ, ngay trung tâm Quận 10', 'ho thuê phòng đẹp trung tâm Quận 10 tiện nghi:\r\n\r\n- Địa chỉ 1: 7A/19/19 Thành Thái, P.14, Q.10.\r\n\r\n- Địa chỉ 2: 128 Thành Thái, P.12, Q. 10\r\n\r\nCho thuê phòng trọ nằm cạnh siêu thị Sài Gòn, ngân hàng, gần ngay ngã tư 3/2- Thành Thái - Nguyễn Tri Phương. Gần đại học Kinh Tế TP HCM, Bách Khoa TP HCM, Y Dược. Giao thông thuận tiện, gần chợ trạm xe bus.\r\n\r\nMặt tiền nhà đẹp, hẻm trước nhà 8m xe hơi quay đầu được\r\n\r\nVị trí trung tâm thành phố giáp ngay Quận 1, Quận 3, Tân Bình, Phú Nhuận. Cho bạn thuận tiện trong công việc.\r\n\r\nNhà có thang máy, chỗ để xe rộng rãi.\r\n\r\nPhòng rộng từ 32m2 - 45m2, được trang bị đủ tiện nghi như: (Máy lạnh, tivi, giường nệm, tủ lạnh... ) thiết bị cao cấp mới mua đem lại sự tiện nghi và thoải mái trong căn phòng của bạn, ban chỉ việc xách quần áo đến và ở.\r\n\r\nGiá thuê chỉ từ 4.5 triệu - 7 triệu/tháng. \r\n\r\nChúng tôi cam kết tuyệt đối với bạn rằng! Hình chụp như thế nào thì phòng của bạn như thế đó. Thậm chí có thể đẹp hơn trong thực tế nếu bạn tới xem trực tiếp.', '128 Đường Thành Thái, Phường 14, Quận 10, Hồ Chí Minh', 'public/uploads/logo_book.png,public/uploads/mo-hinh-mvc-2-6122e73042b1e282de2261bc3475dde5-edd43.png,public/uploads/MVT.png', 4500000, 42, 4, 20, 1, 1, 2, 2, '2022-11-22 11:38:11', '2022-11-26 16:49:49'),
(7, 'Penthouse 60m2 KDC An Phú Hưng cạnh Lotte Q7', 'Phòng penthouse decor đẹp không tỳ vết, full nội thất: giường, tủ, bàn làm việc, tủ quần áo siêu rộng, máy lạnh, máy giặt, máy nước nóng, kệ bếp, wc khép kín...\r\n\r\n+ Có ban công view đẹp, có sân trước và sau, khu vực nấu ăn riêng, có khu vực trồng rau, trồng cây.\r\n\r\n+ Cho nuôi thú cưng\r\n\r\n--------\r\n\r\n+ Vị trí: 17 đường số 30, P Tân Phong, Q7, khu vực dậ trí cao, xe hơi vào tận nhà. Cạnh công viên, BHX, Cafe Cộng, cách Lotter chỉ 500m, Đh Tôn Đức Thắng 0,7km, Đh Nguyễn Tất Thành 1km, Đh Marketing 2km. Qua Q1, Q4, Q5... chỉ 5phút.', '17 Đường số 30, Phường Tân Phong, Quận 7, Hồ Chí Minh', 'public/uploads/bogia.jpg,public/uploads/i7.jpg,public/uploads/i8.jpg,public/uploads/i9.jpg', 6800000, 60, 5, 35, 1, 3, 2, 2, '2022-11-22 11:40:33', '2022-11-26 16:51:21'),
(8, 'Penthouse 60m2 KDC An Phú Hưng cạnh Lotte Q7', 'Phòng penthouse decor đẹp không tỳ vết, full nội thất: giường, tủ, bàn làm việc, tủ quần áo siêu rộng, máy lạnh, máy giặt, máy nước nóng, kệ bếp, wc khép kín...\r\n\r\n+ Có ban công view đẹp, có sân trước và sau, khu vực nấu ăn riêng, có khu vực trồng rau, trồng cây.\r\n\r\n+ Cho nuôi thú cưng\r\n\r\n--------\r\n\r\n+ Vị trí: 17 đường số 30, P Tân Phong, Q7, khu vực dậ trí cao, xe hơi vào tận nhà. Cạnh công viên, BHX, Cafe Cộng, cách Lotter chỉ 500m, Đh Tôn Đức Thắng 0,7km, Đh Nguyễn Tất Thành 1km, Đh Marketing 2km. Qua Q1, Q4, Q5... chỉ 5phút.', '17 Đường số 30, Phường Tân Phong, Quận 7, Hồ Chí Minh', 'public/uploads/4ea0470c2ff4711fa95286cc44786eea.jfif,public/uploads/7f41cd23bcc630227814529f30527477.jfif,public/uploads/12-cong-thuc-dien-quan-short-ong-rong-vao-mua-thu-cho-chi-em-style-sanh-dieu-081734.jpg,public/uploads/728be845ab309807076e0cc2d3668af0.jfif', 6800000, 60, 5, 23, 1, 3, 2, 2, '2022-10-02 11:40:33', '2022-11-26 16:50:30'),
(9, 'Cho thuê phòng cao cấp, đầy đủ tiện nghi, như căn hộ, ngay trung tâm Quận 10', 'ho thuê phòng đẹp trung tâm Quận 10 tiện nghi:\r\n\r\n- Địa chỉ 1: 7A/19/19 Thành Thái, P.14, Q.10.\r\n\r\n- Địa chỉ 2: 128 Thành Thái, P.12, Q. 10\r\n\r\nCho thuê phòng trọ nằm cạnh siêu thị Sài Gòn, ngân hàng, gần ngay ngã tư 3/2- Thành Thái - Nguyễn Tri Phương. Gần đại học Kinh Tế TP HCM, Bách Khoa TP HCM, Y Dược. Giao thông thuận tiện, gần chợ trạm xe bus.\r\n\r\nMặt tiền nhà đẹp, hẻm trước nhà 8m xe hơi quay đầu được\r\n\r\nVị trí trung tâm thành phố giáp ngay Quận 1, Quận 3, Tân Bình, Phú Nhuận. Cho bạn thuận tiện trong công việc.\r\n\r\nNhà có thang máy, chỗ để xe rộng rãi.\r\n\r\nPhòng rộng từ 32m2 - 45m2, được trang bị đủ tiện nghi như: (Máy lạnh, tivi, giường nệm, tủ lạnh... ) thiết bị cao cấp mới mua đem lại sự tiện nghi và thoải mái trong căn phòng của bạn, ban chỉ việc xách quần áo đến và ở.\r\n\r\nGiá thuê chỉ từ 4.5 triệu - 7 triệu/tháng. \r\n\r\nChúng tôi cam kết tuyệt đối với bạn rằng! Hình chụp như thế nào thì phòng của bạn như thế đó. Thậm chí có thể đẹp hơn trong thực tế nếu bạn tới xem trực tiếp.', '128 Đường Thành Thái, Phường 14, Quận 10, Hồ Chí Minh', 'public/uploads/i1.png,public/uploads/i2.png,public/uploads/i3.jpg', 4500000, 42, 4, 14, 1, 1, 2, 2, '2022-11-12 11:38:11', '2022-11-26 16:50:49'),
(10, 'Chính chủ cho nữ thuê phòng trọ khép kín đầy đủ tiện nghi an ninh tốt ở đường Trịnh Văn Bô, 2.8tr', 'Chính chủ cho nữ thuê phòng tại đường Trịnh Văn Bô gần các trường Đại Học Công Nghệ Đông Á (100m), Cao Đẳng FPT (200m) , Trung cấp giao thông vận tải (500m) , Đại Học Công Nghiệp (700m)... khu dân trí cao an ninh cực tốt (có camera an ninh chung của khu)\r\n\r\nPhòng mới xây đầy đủ tiện nghi: bình nóng lạnh, điều hòa, giường, kệ tivi , đèn ngủ, bàn trang điểm kèm gương đèn, máy giặt sấy quần áo (dùng chung), tủ quần áo, bàn tủ bếp chậu rửa bát khép kín trong phòng.\r\n\r\n- Phòng mới xây sạch sẽ thoáng mát, yên tĩnh, có cửa sổ , Vệ sinh khép kín .Tầng 1 để xe miễn phí có camera an ninh, không chung chủ, giờ giấc thoải mái.\r\n\r\n- Điện 3,5k, nước 60k /1người , Internet 100k/phòng,Vệ sinh 50k/ng, máy giặt sấy 120k/phòng\r\n\r\nGiá phòng : 2,8tr/tháng\r\n\r\nCó thể chuyển đến ở luôn\r\n\r\n- Liên hệ : 0942898688 /0977968688', 'Phường Phương Canh, Quận Nam Từ Liêm, Hà Nội', 'public/uploads/275302539_2113947498767461_1799123868468649042_n.jpg,public/uploads/astronaut_ring_neon_156673_3840x2160.jpg,public/uploads/cat.jpg,public/uploads/,public/uploads/logo-01.png,public/uploads/Summer-Sun.png', 2800000, 20, 2, 18, 1, 4, 3, 1, '2022-11-23 15:41:50', '2022-11-26 20:47:34'),
(11, 'CHO THUÊ PHÒNG TRỌ MỚI XÂY CHÍNH CHỦ, GIẢM GIÁ, QUẬN TÂN PHÚ - GẦN BÊN TRƯỜNG ĐẠI HỌC CÔNG NGHỆ THỰC PHẨM', 'PHÒNG TRỌ 24 SƠN KỲ TÂN PHÚ, GẦN ĐH CÔNG NGHỆ THỰC PHẨM\r\n\r\n- Cách trường Đại Học Công nghệ Thực Phẩm 700m, cách AeOnMall Tân Phú 500m, Gần eTown, PanDoRa Trường Chinh,.... thuận tiện đi lại các quận.\r\n\r\n- Phòng có CỬA SỔ, nhiều phòng có BAN CÔNG, đảm bảo ánh sáng ban ngày rất thoáng mát. (Xem hình thật)\r\n\r\n- Toilet trong phòng đầy đủ các thiết bị vệ sinh, có kệ BẾP nấu ăn, có GÁC LỮNG các phòng được ốp gạch cao sạch sẽ.\r\n\r\n- Trong nhà có Thang máy đi lại, Có Camera an ninh quan sát, có PCCC tự động\r\n\r\n- Internet cáp quang mạnh, nhanh. Có cáp Tivi\r\n\r\n- Bỏ xe dưới tầng trệt có bảo vệ trong coi. Khóa vân tay giờ giấc tự do.\r\n\r\n- Bảo vệ trong coi 24/24 (không chung chủ) giúp Bạn có cảm giác an toàn, được bảo vệ.\r\n\r\n___________________________\r\n\r\n- Địa chỉ: 24 Sơn Kỳ, phường Sơn Kỳ, quận Tân Phú, Tp. Hồ Chí Minh.\r\n\r\n- Diện tích phòng: Từ 20 m2 – 25 m2.\r\n\r\n- Giá Rẻ: 2,8tr – 3tr/tháng.', 'Phường Phương Canh, Quận Nam Từ Liêm, Hà Nội', 'public/uploads/cat.jpg,public/uploads/code.png,public/uploads/FPT_logo.png,public/uploads/img1.jfif,public/uploads/img2.jpg', 3000000, 30, 3, 5, 1, 3, 8, 1, '2022-11-26 20:53:18', '2022-11-26 20:53:18'),
(12, 'Cho thuê phòng trọ mới Đường Lương Thế Vinh, Phường Tân Thới Hòa, Quận Tân Phú (gần Đầm Sen)', 'Giá Phòng từ 1800k đến xem đảm bảo ưng ý, cam kết hình đúng với thực tế\r\n\r\nPhòng mới sửa chữa cuối tháng 7/2022, địa chỉ 48/13 Lương Thế Vinh Phường Tân Thế Hòa, Q.Tân Phú, nhà hẽm xe hơi lộ giới 5m .\r\n\r\nDiện Tích 12m + 8m ( gác lững )\r\n\r\nPhòng có tolet riêng, cửa sổ, ban công, có phòng dưới trệt\r\n\r\nCho nấu ăn trong phòng, Ở được 2-4 người, bạn bè lại chơi thoãi mái.\r\n\r\nMiễn phí internet, wifi, truyền hình cáp, Camera 15 cái ( an ninh quan sát không góc chết )\r\n\r\nĐể xe trong sân nhà thoáng mát có bảo vệ coi 24/24\r\n\r\nVị trí gần Đầm Sen, thuận tiện qua lại Q.6, Q.11, Tân Phú\r\n\r\nĐiện 3,5k/ 1 ký, nước 70k / 1 người, xe 100k/ 1 chiếc .\r\n\r\nXe để sân sau nhà có người quản lý và trông coi ( không chung chủ ) giúp bạn có cảm giác an toàn, thoải mái\r\n\r\nLH : 0938864405 ( Cường )\r\n\r\nLH zalo : 0938864405 ( Cường Phạm )', 'Bình Nghĩa, Bình Lục, Hà Nam', 'public/uploads/7f41cd23bcc630227814529f30527477.jfif,public/uploads/a52a641c419abfb4c12f9abcaad574b6.jfif,public/uploads/af85fa38315b9ddd27af8cd5f7f1f135.jfif', 5000000, 25, 3, 0, 0, 3, 3, 6, '2022-11-28 19:09:05', '2022-11-28 19:09:05'),
(13, 'Khai trương phòng trọ sleepbox 1 người tại gò vấp!', 'Với mức lương 10 – 15tr bạn có đồng ý bỏ ra 5-7tr để thuê một căn phòng chỉ để về ngủ mỗi tối? oh No No\r\n\r\n- Bạn hãy thử mô hình Sleepbox –Ký túc xá tại Qhouse với chi phí tối ưu mà đáp ứng được tất cả nhu cầu cá nhân giành cho người đi làm tại KDC cityland center hill, GV\r\n\r\n- Khu vực sạch sẽ, an ninh, yên tĩnh, nhiều khuôn viên, cây xanh…\r\n\r\n- Box riêng tư từng thành viên, tiện nghi (tích hợp tủ đồ, tủ khóa, bàn làm việc, gương, đèn, điện… bên trong box)\r\n\r\n- Nhà để xe rộng rãi, giờ giấc tự do.\r\n\r\n- Camera 24/24, khóa vân tay.\r\n\r\n- Dịch vụ vệ sinh hàng tuần,\r\n\r\n- Bếp điện từ, tủ lạnh, bình điện siêu tốc, máy lọc nước ozon, phòng sinh hoạt chung tiện nghi luôn sẵn sàng để phục vụ cho bạn.\r\n\r\nLiên hệ để xem thực tế!', 'Bình Nghĩa, Bình Lục, Hà Nam', 'public/uploads/z3721849486749_78c6219415972c4d26f7d954dce6deb0.jpg,public/uploads/z3721849493236_c6c8cad0f3416d3c554816a42a8a4346.jpg,public/uploads/z3721849504129_b43fd3fc4924e2b258b799f9ab328c80.jpg,public/uploads/z3721861889500_a2724033f8b82d4a120c17bd1fc09d32.jpg', 2800000, 25, 2, 8, 1, 2, 8, 1, '2022-12-06 23:17:05', '2022-12-06 23:17:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `cccd` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `phone_number` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `cccd`, `student_id`, `phone_number`) VALUES
(1, 3, 'Trần Minh Vương ', '035203004330', 'PH26824', '0374374470'),
(2, 1, 'Đoàn Thanh Minh', '032612934132', 'PH12345', '0987654321'),
(3, 7, 'Minh Vuong Tran', '03123421342', 'PH54321', '0123456789'),
(6, 8, 'Trần Minh Vương ', '0258147369', 'PH10987', '0973246615');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `new_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `expired_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders_item`
--

INSERT INTO `orders_item` (`id`, `new_id`, `order_id`, `status`, `expired_at`, `created_at`) VALUES
(3, 3, 2, 0, '2023-07-18 16:20:46', '2022-11-24 22:11:16'),
(5, 3, 3, 1, '2023-12-12 16:18:59', '2022-11-24 22:13:23'),
(6, 10, 3, 0, '2023-09-20 00:00:00', '2022-11-24 22:13:50'),
(8, 3, 6, 1, '2023-06-16 00:00:00', '2022-11-26 20:55:06'),
(9, 5, 6, 1, '2023-04-14 00:00:00', '2022-11-26 20:55:45'),
(12, 6, 1, 0, '2023-02-01 09:50:57', '2022-12-01 09:50:57'),
(15, 7, 1, 0, '2023-06-01 15:24:34', '2022-12-01 15:24:34'),
(16, 3, 1, 1, '2023-04-01 15:29:00', '2022-11-01 15:29:00'),
(23, 4, 1, 0, '2023-02-02 09:11:48', '2022-12-02 09:11:48'),
(27, 4, 3, 1, '2023-07-03 00:00:00', '2022-12-03 00:00:00'),
(28, 4, 6, 1, '2023-02-09 00:00:00', '2022-12-09 00:00:00'),
(29, 13, 3, 1, '2023-02-07 00:00:00', '2022-12-07 00:00:00'),
(30, 13, 2, 1, '2022-11-06 00:00:00', '2022-05-06 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `cccd` varchar(255) NOT NULL,
  `image_cccd` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `user_id`, `fullname`, `cccd`, `image_cccd`, `address`, `phone_number`, `status`) VALUES
(1, 3, 'Trần Minh Vương', '035203004330', 'public/uploads/275302539_2113947498767461_1799123868468649042_n.jpg,public/uploads/astronaut_ring_neon_156673_3840x2160.jpg', 'Mỹ Đình 2, Nam Từ Liêm, Hà Nội', '0374374470', 1),
(2, 7, 'Minh Vuong Tran', '03123421342', 'public/uploads/asm_1.PNG,public/uploads/astronaut_ring_neon_156673_3840x2160.jpg', 'ha nam', '0123456789', 0),
(4, 8, 'Trần Minh Vương ', '0123456789', 'public/uploads/275302539_2113947498767461_1799123868468649042_n.jpg,public/uploads/astronaut_ring_neon_156673_3840x2160.jpg', 'Hà Nội', '0374374470', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `role` int(1) NOT NULL,
  `facility_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`, `address`, `phone`, `image`, `status`, `role`, `facility_id`, `created_at`, `updated_at`) VALUES
(1, 'Đoàn Thanh Minh', '', 'thanhminh2003', 'minhdtph26770@gmail.com', '', '0399611702', '/public/uploads/Summer-Sun.png', 1, 1, 1, '2022-11-22 11:02:21', '2022-11-24 22:22:44'),
(2, 'Trần Minh Vương', '', 'tranminhvuong', 'tranvuong@gmail.com', '', '0123456789', '/public/uploads/logo-01.png', 1, 1, 2, '2022-11-22 11:30:26', '2022-11-26 16:59:18'),
(3, 'Trần Minh Vương', '', 'minhvuong2003', 'vuongtmph26824@fpt.edu.vn', 'Bình Nghĩa, Bình Lục, Hà Nam', '0374374470', '/public/uploads/astronaut_ring_neon_156673_3840x2160.jpg', 1, 1, 1, '2022-11-23 08:14:30', '2022-12-08 21:33:44'),
(7, 'Minh Vuong Tran', '', 'minhvuong2003', 'minhvuongtran2003@gmail.com', '', '0973246615', '', 1, 0, 1, '2022-11-24 22:12:33', '2022-11-24 22:12:33'),
(8, 'Trần Minh Vương ', '', '123456', 'duongptph27532@fpt.edu.vn', '', '0384484320', '', 1, 1, 1, '2022-11-26 20:50:17', '2022-11-26 20:50:17');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourites_fk0` (`user_id`);

--
-- Chỉ mục cho bảng `favourite_item`
--
ALTER TABLE `favourite_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourite_item_fk0` (`new_id`),
  ADD KEY `favourite_item_fk1` (`favourite_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_fk0` (`category_id`),
  ADD KEY `news_fk1` (`user_id`),
  ADD KEY `news_fk2` (`facility_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cccd` (`cccd`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD KEY `orders_fk0` (`user_id`);

--
-- Chỉ mục cho bảng `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_item_fk0` (`new_id`),
  ADD KEY `orders_item_fk1` (`order_id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cccd` (`cccd`),
  ADD KEY `permissions_fk0` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `favourite_item`
--
ALTER TABLE `favourite_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `favourite_item`
--
ALTER TABLE `favourite_item`
  ADD CONSTRAINT `favourite_item_fk0` FOREIGN KEY (`new_id`) REFERENCES `news` (`id`),
  ADD CONSTRAINT `favourite_item_fk1` FOREIGN KEY (`favourite_id`) REFERENCES `favourites` (`id`);

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_fk0` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `news_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `news_fk2` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders_item`
--
ALTER TABLE `orders_item`
  ADD CONSTRAINT `orders_item_fk0` FOREIGN KEY (`new_id`) REFERENCES `news` (`id`),
  ADD CONSTRAINT `orders_item_fk1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
