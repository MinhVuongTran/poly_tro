-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 14, 2022 lúc 10:12 AM
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
(1, 'hanoiadmin', 'admin', 1),
(2, 'haiphongadmin', 'admin', 2),
(3, 'danangadmin', 'admin', 3),
(4, 'tphcmadmin', 'admin', 5),
(5, 'taynguyenadmin', 'admin', 4),
(6, 'canthoadmin', 'admin', 6);

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
(1, 'Phòng trọ'),
(2, 'Nhà trọ'),
(3, 'Căn hộ'),
(4, 'Mặt bằng');

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
(1, 'Hà Nội'),
(2, 'Hải Phòng'),
(3, 'Đà Nẵng'),
(4, 'Tây Nguyên'),
(5, 'Thành phố Hồ Chí Minh'),
(6, 'Cần Thơ');

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
(1, 1),
(2, 5);

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
(1, 1, 1, '2022-12-11 21:20:31'),
(2, 2, 2, '2022-12-11 22:51:51');

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
(1, 'Cho thuê phòng chung cư mini mới tinh, xinh xinh giá chỉ 3 triệu/tháng tại Cầu Diễn', '- Phòng chỉ từ 3tr tại Cầu Diễn, Phường Cầu Diễn, Quận Nam Từ Liêm, Hà Nội\r\n\r\n- phòng full đồ, nhà để xe rộng, oto đỗ tận cổng\r\n\r\n- Khu vực đông dân cư, gần trường CĐ FPT và ĐH CN, ....', 'Cầu Diễn, Phường Cầu Diễn, Quận Nam Từ Liêm, Hà Nội', 'public/uploads/248378057-564532017948726-1389508839070626226-n_1640752393.jpg,public/uploads/252082187-1483799698686763-4619252714499696641-n_1640752385.jpg,public/uploads/253168924-1294380544328793-1696597558498524072-n_1640752386.jpg,public/uploads/255918383-4380454842064852-7421865885360586156-n_1640752385.jpg,public/uploads/267135983-2765927537039204-25469431303965056-n_1640752407.jpg', 3000000, 25, 3, 9, 1, 1, 1, 1, '2022-12-09 20:53:31', '2022-12-09 20:53:31'),
(2, 'Cho thuê phòng trọ chính chủ tại Mỹ Đình, Hà Nội', '- Phòng trọ đã có đầy đủ giường tủ, điều hòa, bình nóng lạnh\r\n\r\n- Nhà đất thổ cư, ở chung với gia chủ\r\n\r\n- Ưu tiên người đi làm, sinh viên ăn ở sạch sẽ, ngăn nắp, gọn gàng', 'ngõ 9 Lê Đức Thọ, Phường Mỹ Đình 2, Quận Nam Từ Liêm, Hà Nội', 'public/uploads/z3698271959113-f178d31895bfa8a1c04570c69f869523_1662385647.jpg,public/uploads/z3698271993796-db935b252ab02f8a7233584bebe99b36_1662385648.jpg,public/uploads/z3698272057168-3a6da9b3ef738304404c67a95b914e9a_1662385649.jpg,public/uploads/,public/uploads/', 2500000, 15, 1, 12, 1, 1, 1, 1, '2022-12-11 15:06:25', '2022-12-13 22:17:55'),
(3, 'Phòng trọ tiện nghi, giá rẻ ở Nguyễn Kiệm, Phường 4, Quận Phú Nhuận', 'Địa chỉ: 744/2 NGUYỄN KIỆM, PHƯỜNG 4, Q. PHÚ NHUẬN, TP. HCM\r\n\r\nFull nội thất: (Nội thất y hình), ngoài ra còn có đủ tiện nghi cho việc sinh hoạt như Tivi, Tủ lạnh, Máy lạnh, Nước nóng, Tủ quần áo, Tủ bếp, Giường (chăn, nệm, gối), Bàn ăn, Lò vi sóng, Bếp hồng ngoại, Nồi cơm điện, Bình siêu tốc, Nồi + Chảo + Chén bát (để nấu ăn), Máy giặt (chung).... Đầy đủ tất cả tiện nghi, chỉ cần đến là ở được ngay.\r\n\r\nCó thang máy, rất tiện cho việc lên xuống, đi lại.\r\n\r\nTrước phòng có khu vực tập GYM, có sân chơi cho em bé vô cùng thoáng, đẹp. (Sử dụng Miễn phí)\r\n\r\nCó nhà xe, camera 24/7, cửa cổng vân tay , môi trường cực kì an ninh, thân thiện, yên tĩnh và giờ giấc tự do.\r\n\r\nXem nhà ngay và liền.', 'Đường Nguyễn Kiệm, Phường 4, Quận Phú Nhuận, Hồ Chí Minh', 'public/uploads/img-1663736767234-1663749574231_1666754384.jpg,public/uploads/img-1663736769103-1663749574916_1666754244.jpg,public/uploads/img-1663736769481-1663749575053_1666754355.jpg,public/uploads/img-1663736770534-1663749575445_1666754274.jpg', 5500000, 25, 3, 0, 1, 1, 2, 5, '2022-12-11 15:11:58', '2022-12-11 15:11:58'),
(4, 'Cho thuê tầng 1 trong nhà nguyên căn tại Tân An, Buôn Ma Thuột, Đắk Lắk', 'Nhà còn dư 1 tầng trên lầu, 1 phòng ngủ và 1 phòng khách có bàn ghế để học bài, có lan can nhìn ra phía trường Chuyên Nguyễn Du, ưu tiên học sinh học tại trường Chuyên Nguyễn Du học xa nhà.', '4/41 Nguyễn Xuân Nguyên, Xã Tân An, Thành Phố Buôn Ma Thuột, Đắk Lắk', 'public/uploads/8dabb9fb-6308-4e23-8ead-1a93fc0d9b31_1664504291.jpg,public/uploads/949ff893-7ebc-4da4-b7f4-b741f56de4df_1664504291.jpg,public/uploads/38511bdb-8327-4073-9a80-dd953e6ee13e_1664504296.jpg,public/uploads/da75faa4-4039-48e4-9cfb-1c6123f58f89_1664504296.jpg,public/uploads/', 2000000, 40, 4, 0, 1, 2, 3, 4, '2022-12-11 15:16:25', '2022-12-11 15:46:41'),
(5, 'Cho Thuê Nhà Trọ Học Sinh , Sinh Viên', '- Cho thuê trọ sinh viên ( Sinh viên nam / 1 người / sinh viên ĐH Y Dược Cần Thơ , ĐH Cần Thơ )\r\n\r\n- Cho thuê trọ sinh viên ( Sinh viên nam / 1 người / sinh viên ĐH Y Dược Cần Thơ , ĐH Cần Thơ )', 'Nguyễn Văn Cừ, Phường An Khánh, Quận Ninh Kiều, Cần Thơ', 'public/uploads/9fef6ee7-8826-4e5d-8d2f-e0919be6a545_1655026355.jpg,public/uploads/bf615036-c46f-454d-85b3-3c7976d1f4c5_1655026355.jpg,public/uploads/ecaeb2b2-b597-4ec6-b8a9-55d138870263_1655026355.jpg', 1300000, 12, 1, 0, 1, 1, 4, 6, '2022-12-11 15:33:49', '2022-12-11 15:33:49'),
(6, 'Cần cho thuê nhà mặt tiền đường Nguyễn Văn Cừ đoạn Hồng Phát.', 'Cần cho thuê nhà mặt tiền đường Nguyễn Văn Cừ đoạn Hồng Phát.\r\n\r\n- Diện tích: 4,5x24m\r\n\r\n- Nhà tiền chế mới xây sạch sẻ rộng rãi\r\n\r\n- Thích hợp kinh doanh mua bán, đẹp dân cư đông.', 'Nguyễn Văn Cừ, Phường An Bình, Quận Ninh Kiều, Cần Thơ', 'public/uploads/z3940353420349-0b11ca3f2f2549bf314e15463d3999ac_1670388522.jpg,public/uploads/z3940353430060-824e742c70397117d9dea9d7f68b2bc6_1670388522.jpg,public/uploads/z3940353430347-d588f4271ce30e48e3987a6489dd04d5_1670388522.jpg', 17000000, 108, 8, 0, 1, 2, 4, 6, '2022-12-11 15:35:45', '2022-12-11 15:35:45'),
(7, 'Chính chủ cho thuê gấp nhà 4 tầng tại Phương Canh - Nam Từ Liêm - Hà Nội', 'CHÍNH CHỦ CHO THUÊ GẤP NHÀ 4 TẦNG TẠI PHƯƠNG CANH - NAM TỪ LIÊM - HÀ NỘI\r\n\r\n- Địa chỉ : tại số 4/21/80 Đường Xuân Phương, Phương Canh , Nam Từ Liêm, Hà Nội (Cách ngã tư Nhổn 500m, gần chung cư Hateco Xuân Phương).\r\n\r\n- Diện tích sử dụng : 160m2 - Giá thuê : 10 tr/tháng ( đặt cọc 1 tháng )\r\n\r\n- Nhà 4 tầng thiết kế hiện đại bao gồm:\r\n\r\n+ Tầng 1: Phòng khách + Bếp + nhà vệ sinh\r\n\r\n+ Tầng 2 & tầng 3: Mỗi tầng 2 phòng ngủ + 01 nhà vệ sinh. + Tầng 4: Phòng thờ + sân phơi\r\n\r\n- Nội thất gồm tủ bếp, tủ rượu, kệ tivi, bình nóng lạnh, điều hòa, giường tủ…\r\n\r\n- Vị trí thuận tiện, ô tô đỗ cổng cách nhà 5m\r\n\r\n- Ưu tiên hộ gia đình thuê\r\n\r\n- Nhà thuộc khu trung tâm , giao thông thuận tiện dân cư đông đúc, dân trí cao , an ninh tốt , không gian sạch sẽ thoáng mát', '4/21/80 Xuân Phương, Phường Phương Canh, Quận Nam Từ Liêm, Hà Nội', 'public/uploads/e43703fc66ca9c94c5db_1665557649.jpg,public/uploads/e570d44eb1784b261269_1665557648.jpg,public/uploads/bbb3b642d374292a7065_1665557648.jpg,public/uploads/453300f265c49f9ac6d5_1665557648.jpg,public/uploads/6886c7c8a2fe58a001ef_1665557647.jpg,public/uploads/14e568e10dd7f789aec6_1665557647.jpg', 10000000, 40, 5, 2, 1, 2, 1, 1, '2022-12-11 15:38:39', '2022-12-11 15:38:39'),
(8, 'CHO THUÊ NHÀ NGUYÊN CĂN PHÚ NHUẬN - VÀO Ở NGAY - GẦN TRUNG TÂM', 'NHÀ CHO THUÊ - PHÚ NHUẬN\r\n\r\n#NhaChoThue #GanTrungTam #TimNhaChoThue #NhaThueQuanPhuNhuan #vaoongay #giahoply\r\n\r\nMình đang cần tìm người cho Thuê nhà Nguyên căn Phú Nhuận “vào ở ngay” \"Giá rẻ\" với các bạn SV ở ghép/ Gia đình nhỏ/ Nhân viên Văn phòng.\r\n\r\nVỊ TRÍ: Nhà nằm ở khu “trung tâm thành phố” - thông ra Nguyễn Kiệm và Thích Quảng Đức\r\n\r\n+ Hướng nhà: Đông - mát mẻ\r\n\r\n+ 5p chạy ra Siêu thị CoopMart Nguyễn Kiệm - CV Cây Xanh hoặc Bách Hoá Xanh ở Thích Quảng Đức\r\n\r\n+ 5p chạy ra khu thiên đường ăn uống - Phan Xích Long\r\n\r\n+ Gần chợ nhỏ/ trường học khu dân cư đông đúc\r\n\r\n+ 10-15p tới trung tâm q1\r\n\r\n+ Vị trí trong hẻm 3m khu dân cư yên tĩnh (thích hợp cho 2 vc có 1-2 con nhỏ/ hoặc nv văn phòng)\r\n\r\n+ Đi bộ 7p ra đường chính Nguyễn Kiệm/ Thích Quảng Đức để bắt đón xe bus tiện lợi.\r\n\r\nDIỆN TÍCH VÀ TIỆN ÍCH??:\r\n\r\n+ Diện tích sử dụng 51m2. Ngang 3.2m* Dài 6m\r\n\r\n+ Nhà đúc 3 tấm hoàn chỉnh\r\n\r\n+ Có 1 phòng khách, 1 bếp, 2 phòng ngủ và 3 toilet ở mỗi tầng\r\n\r\n+ Giao nhà thô vừa mới sửa chữa 100% new\r\n\r\n+ Có sẵn 2 máy lạnh + toilet trệt có máy nc nóng\r\n\r\nGIÁ THUÊ\r\n\r\n+ SV từ trên 5ng giá 9tr/ tháng\r\n\r\n+ Gia đình/ Nhân viên văn phòng từ 4 ng trở xuống giá thương lượng 8.5tr/ tháng\r\n\r\n+ Cọc 9tr ban đầu', '622/6/16A Đường Nguyễn Kiệm, Phường 4, Quận Phú Nhuận, Hồ Chí Minh', 'public/uploads/hem_1616736196.jpg,public/uploads/ban-cong-tang-2_1616736193.jpg,public/uploads/mat-trc-lau-2_1616736200.jpg,public/uploads/tang-2-full_1616736203.jpg,public/uploads/loi-len-tang-2_1616736198.jpg,public/uploads/cau-thang-len-lau-2_1616736193.jpg,public/uploads/tang-1_1616736203.jpg,public/uploads/tang-1-full_1616736202.jpg,public/uploads/lau-1_1616736198.jpg,public/uploads/toilet-tang-tret_1616736205.jpg,public/uploads/bep_1616736192.jpg,public/uploads/cau-thang_1616736196.jpg,public/uploads/tang-tret_1616736204.jpg,public/uploads/phong-khach_1616736201.jpg,public/uploads/mat-trc-nha_1616736200.jpg', 9000000, 50, 6, 2, 1, 2, 2, 5, '2022-12-11 15:42:02', '2022-12-11 15:42:02'),
(9, 'Cho thuê nhà căn hộ mini hẻm Bà Triệu giá 4tr/tháng. Nhà mới, sạch đẹp', 'CHÍNH CHỦ CHO THUÊ\r\n\r\nCòn 1 căn trong 3 căn liền kề\r\n\r\nCho thuê nhà nguyên căn 25/8 bà triệu mới xây ngay trung tâm tp bmt\r\n\r\nNhà 1 tầng 1 phòng cắt thành 2 phòng, 2 wc\r\n\r\n4tr/1 tháng - cọc 3 triệu . 3 tháng 1 lần', '25/8 Phố Bà Triệu, Phường Tự An, Thành Phố Buôn Ma Thuột, Đắk Lắk', 'public/uploads/fbfdbf54-a1f3-491d-b819-a62398f05b3a_1593491566.jpg,public/uploads/d4047e31-2bed-4afb-8f1e-4e77a36091ac_1593491565.jpg,public/uploads/4ad11365-e425-4771-9759-1d38e4bd51db_1593491564.jpg,public/uploads/6a4a696a-89c5-467f-8246-cb276a0c0220_1593491563.jpg,public/uploads/d51be51d-5460-4b96-be65-c728fd1af7a7_1593491562.jpg,public/uploads/9e79bed1-56ff-4d93-9836-992262aa57f2_1593491562.jpg,public/uploads/945e9240-112b-4928-aec9-0e68cafa4ed1_1593491562.jpg,public/uploads/dac96089-3d9a-4254-95e4-81195c06446e_1593491561.jpg,public/uploads/014dfb13-af2d-4bfc-8adc-88d9c8387703_1593491561.jpg,public/uploads/a81a4b51-befe-4216-bb4a-ac37964893e2_1593491560.jpg,public/uploads/be5e13d4-27a1-4210-b584-34c57103d105_1593491560.jpg,public/uploads/bf1c71ee-e150-4e6e-bf08-b2517bcbb52d_1593491560.jpg', 4000000, 40, 5, 0, 1, 2, 3, 4, '2022-12-11 15:45:40', '2022-12-11 15:45:40'),
(10, 'Cho thuê căn hộ chung cư Golden Field, 80m2, 2PN, full nội thất', 'Cho thuê căn hộ chung cư Golden Field.\r\n\r\nĐịa chỉ: 24 Nguyễn Cơ Thạch - Mỹ Đình 2 - Nam Từ Liêm - Hà Nội.\r\n\r\nCăn hộ rộng 80m2. 2 pn, 2 vs, 1 pk, 1 bếp.\r\n\r\nCăn hộ cho thuê full nội thất.\r\n\r\nTủ kệ bếp, nóng lạnh, điều hòa, rèm,dàn phơi, giường tủ, bàn ghế, ti vi, tủ lạnh, máy giặt...\r\n\r\nKhách thuê chỉ cần xách vali về ở.\r\n\r\nCăn hộ cho thuê lâu dài.\r\n\r\nGiá cho thuê 12.5 tr/th.', '24 Đường Nguyễn Cơ Thạch, Phường Mỹ Đình 2, Quận Nam Từ Liêm, Hà Nội', 'public/uploads/298425018-5364442677002574-5854300223232059696-n_1666164467.jpg,public/uploads/298290640-5364443743669134-7062672597065316926-n_1666164466.jpg,public/uploads/298215312-5364443443669164-473789205948617944-n_1666164465.jpg,public/uploads/298100326-5364442733669235-2277782187727558655-n_1666164464.jpg', 12500000, 80, 6, 0, 1, 3, 1, 1, '2022-12-11 15:49:24', '2022-12-11 15:49:24');

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
(1, 5, 'Nguyễn Văn A', '014725836921', 'PH92132', '0123456789');

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
(2, 1, 1, 0, '2023-03-02 00:00:00', '2022-12-02 00:00:00'),
(3, 2, 1, 1, '2023-04-01 00:00:00', '2023-01-01 00:00:00');

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
(1, 1, 'Trần Minh Vương ', '035203004330', 'public/uploads/z3513363462486_0a2b83ef11da15a85c3d80ae44a7d453.jpg', 'Thôn 4 Ngô Khê, Bình Nghĩa, Bình Lục, Hà Nam', '0374374470', 1),
(2, 2, 'Đoàn Thanh Minh', '032612934132', 'public/uploads/cat.jpg', 'Hà Nội', '0384484320', 1),
(3, 3, 'Nguyễn Trí Dũng', '03123421342', 'public/uploads/275302539_2113947498767461_1799123868468649042_n.jpg', 'Tây Nguyên', '0973246615', 1),
(4, 4, 'Phan Huy Hiệp', '032165498725', 'public/uploads/bannerpng.png,public/uploads/FPT_logo.png', 'Hải Dương', '0987654321', 1);

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
(1, 'Trần Minh Vương ', '', '123456', 'vuongtmph26824@fpt.edu.vn', 'Đơn nguyên 3, Ký túc xá Mỹ Đình 2, phường Mỹ Đình 2, quận Nam Từ Liêm, Hà Nội', '0374374470', '/public/uploads/astronaut_ring_neon_156673_3840x2160.jpg', 1, 1, 1, '2022-12-09 20:42:42', '2022-12-11 21:53:41'),
(2, 'Đoàn Thanh Minh', '', '123456', 'thanhminh2003@gmail.com', '', '0384484320', '/public/uploads/astronaut_ring_neon_156673_3840x2160.jpg', 1, 1, 5, '2022-12-11 15:07:27', '2022-12-11 15:09:18'),
(3, 'Nguyễn Trí Dũng', '', '123456', 'tridung2003@gmail.com', '', '0973246615', '/public/uploads/275302539_2113947498767461_1799123868468649042_n.jpg', 1, 1, 4, '2022-12-11 15:12:56', '2022-12-11 15:13:43'),
(4, 'Phan Huy Hiệp', '', '123456', 'huyhiep2003@gmail.com', '', '0987654321', '/public/uploads/cat.jpg', 1, 1, 6, '2022-12-11 15:29:56', '2022-12-11 15:30:18'),
(5, 'Nguyễn Văn A', '', '123456', 'casisitinh123@gmail.com', '', '0123456789', '', 1, 0, 1, '2022-12-11 22:45:57', '2022-12-11 22:45:57');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_fk0` (`facility_id`);

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
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `users_fk0` (`facility_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `favourite_item`
--
ALTER TABLE `favourite_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Các ràng buộc cho bảng `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_fk0` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`);

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

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_fk0` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
