-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2022 lúc 05:42 AM
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
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'thanhminh', 'thanhminh2003\r\n');

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
(4, 'Mặt bằng'),
(5, 'Ở ghép');

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
(3, 'Cho thuê phòng trọ rộng rãi trong chung cư mini tại Ngõ 256, Nguyễn Lân, Trường Chinh, HN', 'Phòng rộng ở được 3 - 4 người\r\n\r\nPhòng rộng khép kín đầy đủ tiện nghi có hai giường tầng rộng bàn, điêu hòa nóng lạnh. \r\n\r\nGiao thông thuận loi ko tắc đường, ngập lụt. \r\n\r\nSinh hoạt giờ giấc tự do. Không chung chủ\r\n\r\nGần đường ô tô có chỗ để ô tô. Giao thông thuận lợi cạnh đường lớn Nguyễn Lân gần chợ, trường đai học lớn Bách Khoa, xây dựng, kinh tế, y, ngân hàng ....\r\n\r\nCó chỗ để xe\r\n\r\nNhà cạnh đường lớn giao thông thuận lơi, ko bị tắc đường như Trường Chinh, Lê trọng tấn......\r\n\r\nĐc: số nhà 06 ngõ 256 Phố Nguyễn Lân đường Trường Chinh Hà Nội.\r\n\r\nĐt liên lạc 0912966199', 'Quận Thanh Xuân, Hà Nội', 'public/uploads/hình nền laptop.jpg,public/uploads/hinh-nen-laptop-cute23.jpg,public/uploads/hinh-nen-may-tinh-11.jpg', 3000000, 25, 3, 1, 1, 1, 1, 1, '2022-11-22 11:26:34', '2022-11-22 11:26:34'),
(4, 'Cho thuê phòng trọ dạng chung cư mini máy lạnh Q.8 gần Đại lộ Đông Tây, Q.5, Q.6', 'Cho thuê phòng trọ dạng chung cư mini P.16, Q.8, gần đại lộ Đông Tây, q5, q6. Phòng thoáng mát, yên tĩnh, có bếp, nhà vệ sinh riêng, cáp quang, wifi miễn phí, có gác đúc, đặt biệt có máy lạnh.\r\n\r\nCó camera quan sát tất cả các tầng và nhà xe.\r\n\r\nDiện tích sử dụng từ 18-22 m2.Giá từ 1.800.000 đến 2.000.000 đồng.\r\n\r\nĐịa chỉ: 154/21-154/23 Hoàng Ngân (Đường 41, Phú Định cũ), P.16, Q.8, gần giao lộ Võ Văn Kiệt (đại lộ Đông Tây) và đường An Dương Vương.', '154/21-154/23 Đường Hoàng Ngân P.16, Quận 8', 'public/uploads/5-16.png,public/uploads/7-8.png,public/uploads/40vesU.jpg,public/uploads/background cho học online copy.jpg', 1800000, 18, 2, 0, 1, 2, 1, 2, '2022-11-22 11:29:04', '2022-11-22 11:29:04'),
(5, 'Phòng, Căn hộ mini mới 100% gần cầu Hoà Xuân giá cả hợp lý', 'Còn 1 phòng thoáng mát đầy đủ tiện ích. Có gác lẩng, Có bảo vệ, chổ để xe, máy giặt, sân phơi, điều hoà, nước nóng ... wifi miễn phí, điện 3000 đ/chữ, nước 50k/ người lớn, cửa ra vào bằng khoá vân tay, camera annin ....gần trục đường Nguyễn Phước Lan, Hoà Xuân ( Mai Chí Thọ & Thanh Lương 27) .Giá cả hợp lý 2tr6/ phòng / tháng ở được 2-3 người.', 'Phường Hòa Xuân, Quận Cẩm Lệ, Đà Nẵng', 'public/uploads/mayanh4.jpg,public/uploads/mayanh5.jpeg,public/uploads/mayanh6.jpg,public/uploads/mâynh1.jpg,public/uploads/nhà trọ.jpg', 3500000, 35, 4, 0, 1, 3, 2, 3, '2022-11-22 11:33:43', '2022-11-22 11:33:43'),
(6, 'Cho thuê phòng cao cấp, đầy đủ tiện nghi, như căn hộ, ngay trung tâm Quận 10', 'ho thuê phòng đẹp trung tâm Quận 10 tiện nghi:\r\n\r\n- Địa chỉ 1: 7A/19/19 Thành Thái, P.14, Q.10.\r\n\r\n- Địa chỉ 2: 128 Thành Thái, P.12, Q. 10\r\n\r\nCho thuê phòng trọ nằm cạnh siêu thị Sài Gòn, ngân hàng, gần ngay ngã tư 3/2- Thành Thái - Nguyễn Tri Phương. Gần đại học Kinh Tế TP HCM, Bách Khoa TP HCM, Y Dược. Giao thông thuận tiện, gần chợ trạm xe bus.\r\n\r\nMặt tiền nhà đẹp, hẻm trước nhà 8m xe hơi quay đầu được\r\n\r\nVị trí trung tâm thành phố giáp ngay Quận 1, Quận 3, Tân Bình, Phú Nhuận. Cho bạn thuận tiện trong công việc.\r\n\r\nNhà có thang máy, chỗ để xe rộng rãi.\r\n\r\nPhòng rộng từ 32m2 - 45m2, được trang bị đủ tiện nghi như: (Máy lạnh, tivi, giường nệm, tủ lạnh... ) thiết bị cao cấp mới mua đem lại sự tiện nghi và thoải mái trong căn phòng của bạn, ban chỉ việc xách quần áo đến và ở.\r\n\r\nGiá thuê chỉ từ 4.5 triệu - 7 triệu/tháng. \r\n\r\nChúng tôi cam kết tuyệt đối với bạn rằng! Hình chụp như thế nào thì phòng của bạn như thế đó. Thậm chí có thể đẹp hơn trong thực tế nếu bạn tới xem trực tiếp.', '128 Đường Thành Thái, Phường 14, Quận 10, Hồ Chí Minh', 'public/uploads/40vesU.jpg,public/uploads/IMG_0411 - Copy.jpg,public/uploads/ip14pro.jpg,public/uploads/mayanh2.jpg', 4500000, 42, 4, 0, 1, 1, 2, 2, '2022-11-22 11:38:11', '2022-11-22 11:38:11'),
(7, 'Penthouse 60m2 KDC An Phú Hưng cạnh Lotte Q7', 'Phòng penthouse decor đẹp không tỳ vết, full nội thất: giường, tủ, bàn làm việc, tủ quần áo siêu rộng, máy lạnh, máy giặt, máy nước nóng, kệ bếp, wc khép kín...\r\n\r\n+ Có ban công view đẹp, có sân trước và sau, khu vực nấu ăn riêng, có khu vực trồng rau, trồng cây.\r\n\r\n+ Cho nuôi thú cưng\r\n\r\n--------\r\n\r\n+ Vị trí: 17 đường số 30, P Tân Phong, Q7, khu vực dậ trí cao, xe hơi vào tận nhà. Cạnh công viên, BHX, Cafe Cộng, cách Lotter chỉ 500m, Đh Tôn Đức Thắng 0,7km, Đh Nguyễn Tất Thành 1km, Đh Marketing 2km. Qua Q1, Q4, Q5... chỉ 5phút.', '17 Đường số 30, Phường Tân Phong, Quận 7, Hồ Chí Minh', 'public/uploads/may tịn.jpg,public/uploads/mayanh2.jpg,public/uploads/mayanh3.jpg,public/uploads/mayanh4.jpg,public/uploads/nhà trọ.jpg', 6800000, 60, 5, 0, 1, 3, 2, 2, '2022-11-22 11:40:33', '2022-11-22 11:40:33');

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
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`, `address`, `phone`, `image`, `status`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Đoàn Thanh Minh', '', 'thanhminh2003', 'minhdtph26770@gmail.com', '', '0399611702', '/public/uploads/leonardo.jpg', 1, 1, '2022-11-22 11:02:21', '2022-11-22 11:14:20'),
(2, 'Trần Minh Vương', '', 'tranminhvuong', 'tranvuong@gmail.com', '', '0123456789', '/public/uploads/dannhap.jpg', 1, 1, '2022-11-22 11:30:26', '2022-11-22 11:30:49');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favourite_item`
--
ALTER TABLE `favourite_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
