-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2024 at 12:41 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xuong-oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(5, 'Headphone'),
(2, 'Phone'),
(3, 'Tablet'),
(1, 'Watch');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_thumbnail` varchar(255) DEFAULT NULL,
  `overview` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `price_sale` int DEFAULT NULL,
  `price_regular` int DEFAULT NULL,
  `view` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `img_thumbnail`, `overview`, `content`, `created_at`, `updated_at`, `price_sale`, `price_regular`, `view`) VALUES
(16, 2, 'Iphone 11 Pro 128GB', 'assets/uploads/171783709704.jpg', '- Mới, đầy đủ phụ kiện từ nhà sản xuất\r\n- Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C\r\n1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'iPhone 11 sở hữu hiệu năng khá mạnh mẽ, ổn định trong thời gian dài nhờ được trang bị chipset A13 Bionic. Màn hình LCD 6.1 inch sắc nét cùng chất lượng hiển thị Full HD của máy cho trải nghiệm hình ảnh mượt mà và có độ tương phản cao. Hệ thống camera hiện đại được tích hợp những tính năng công nghệ mới kết hợp với viên Pin dung lượng 3110mAh, giúp nâng cao trải nghiệm của người dùng.', '2024-06-06 13:50:17', '2024-06-08 01:58:17', 230, 260, 1),
(17, 2, 'Iphone 14 Plus 128GB', 'assets/uploads/171783702403.jpg', '- Máy mới 100% , chính hãng Apple Việt Nam.\r\n- Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C\r\n1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'iPhone 14 Plus sở hữu màn hình Super Retina XDR OLED thiết kế tai thỏ, kích thước 6.7 inch, kết hợp công nghệ True Tone, HDR, Haptic Touch, Không chỉ vậy, sản phẩm còn trang bị chip A15 Bionic mạnh mẽ, RAM 6GB, bộ nhớ trong 128GB và chạy trên hệ điều hành iOS 16. Camera kép 12MP cải thiện khả năng chụp thiếu sáng, camera trước True Depth 12MP tự động lấy nét. Xem thêm chi tiết với thông tin sau đây!', '2024-06-06 13:51:57', '2024-06-08 01:57:04', 430, 450, 1),
(18, 2, 'Iphone 15 Pro 128GB', 'assets/uploads/171783707302.jpg', '- Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Type C\r\n- 1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'iPhone 15 Pro Max sở hữu màn hình Super Retina XDR OLED 6.7 inches với độ phân giải 2796 x 1290 pixels, cung cấp trải nghiệm hình ảnh sắc nét, chân thực. So với các phiên bản tiền nhiệm, thế hệ iPhone 15 bản Pro Max đảm bảo mang tới hiệu năng mạnh mẽ với sự hỗ trợ của chipset Apple A17 Pro, cùng bộ nhớ ấn tượng. Đặc biệt hơn, điện thoại iPhone 15 ProMax mới này còn được đánh giá cao với camera sau 48MP và camera trước 12MP, hỗ trợ chụp ảnh với độ rõ nét cực đỉnh.', '2024-06-06 13:53:33', '2024-06-08 01:57:53', 500, 540, 1),
(19, 2, 'Iphone 13 Pro 128GB', 'assets/uploads/171783704901.jpg', '- Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C\r\n- 1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'Điện thoại iPhone 13 sẽ được sử dụng tấm nền OLED chất lượng cao và có kích thước 6.1 inch, lớn hơn iPhone 13 mini (5.4 inch). Với tấm nền này với công nghệ ProMotion giúp iPhone 13 tiết kiệm pin đến tối đa khi sử dụng. Người dùng cũng có thể dễ dàng điều chỉnh tốc độ làm tươi tùy theo ý thích.', '2024-06-06 13:54:26', '2024-06-08 01:57:29', 400, 430, 2),
(20, 3, 'iPad Pro 11 2021 M1 WiFi', 'assets/uploads/171783436605.jpg', '- Máy mới 100%, đầy đủ phụ kiện từ nhà sản xuất. Sản phẩm có mã ZA/A (được Apple Việt Nam phân phối chính thức).\r\n- Máy, Sách hướng dẫn, Cáp Type C - Type C, Củ sạc nhanh rời đầu Type C', 'iPad Pro 11 inch 2021 sở hữu ngoại hình mang nhiều điểm tương tự về ngoại hình với chiếc iPad Pro trước đó. Apple iPad Pro 2021 sử dụng màn hình kích thước 11 inch và sử dụng màn hình LCD truyền thống.  Màn hình trên iPad Pro 2021 này với công nghệ màu ProMotion cùng độ phân giải cao 264 pixel mỗi inch. Màn hình này cũng được trang bị lớp phủ chống bám vân tay và chống phản xạ, nâng cao trải nghiệm cho người dùng.', '2024-06-06 13:56:45', '2024-06-08 01:12:46', 450, 480, 0),
(21, 3, 'iPad Pro 12.9 inch 2022', 'assets/uploads/171772162506.jpg', '- Hàng chính hãng Apple Việt Nam, Mới\r\n- 1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', '- Thiết kế phẳng mạnh mẽ - Gia công từ kim loại bền bỉ, phong cách hiện đại, sang trọng\r\n- Hiệu năng mạnh mẽ với CPU thế hệ mới - chip Apple M2 trong đó có 8 lõi cùng RAM 8 GB\r\n- Màn hình sáng hơn, hỗ trợ nội dung HDR tốt hơn - 12.9 inch LCD, Tần số quét 120 Hz\r\n- Thoải mái sáng tạo và thiết kế - Nhận diện bút Apple Pencil 2 ở khoảng cách 12 mm\r\n- Kết nối nhanh chóng mọi lúc mọi nơi - Hỗ trợ 5G thuận lợi', '2024-06-06 13:58:41', '2024-06-06 17:53:45', 1200, 1300, 0),
(22, 3, 'iPad Gen 10 10.9 inch', 'assets/uploads/171783434907.jpg', '- Máy mới 100%, đầy đủ phụ kiện từ nhà sản xuất. Sản phẩm có mã ZA/A (được Apple Việt Nam phân phối chính thức).\r\n- iPad, Cáp sạc USB-C (1 mét), Sạc USB-C 20W', 'iPad gen 10 2022 (iPad 10.9 inch) là chiếc máy tính bảng mới nhất sở hữu sức mạnh vô song từ con chip A14 Bionic chạy trên hệ điều hành iPadOS 16. Với thiết kế tối giản đã cải thiện các đường nét để hình ảnh luôn hợp thời trang, chiếc iPad này sẽ cho bạn quãng thời gian trải nghiệm tuyệt vời nhất. Cùng xem ưu thế mạnh mẽ của iPad 10.9 inch 2022 này đến từ đâu nhé!', '2024-06-06 14:00:07', '2024-06-08 01:12:29', 400, 450, 8),
(23, 3, 'iPad 10.2 2021 WiFi 64GB', 'assets/uploads/171783118408.jpg', '- Máy mới 100%, đầy đủ phụ kiện từ nhà sản xuất. Sản phẩm có mã ZA/A (được Apple Việt Nam phân phối chính thức).\r\n- iPad, Cáp USB-C sang Lightning, Sạc USB-C 20W', 'iPad 10.2 inch 2021 vẫn mang thiết kế đặc trưng bởi sự mỏng và nhẹ, giúp người dùng dễ thao tác, cầm nắm trong hàng giờ liền mà không hề cảm thấy bị mỏi hay khó chịu. Thiết kế nguyên khối đã là nét đặc trưng của dòng sản phẩm iPad giúp mang lại vẻ sang trọng khi sử dụng tên tay.', '2024-06-06 14:00:48', '2024-06-08 00:19:44', 200, 250, 1),
(24, 1, 'Apple Watch Series 9', 'assets/uploads/171783432510.jpg', '1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'Apple Watch Series 9 41mm 4G sở hữu khả năng xử lý mượt mà nhờ được trang bị chip S9 SiP mạnh mẽ cùng chất lượng hiển thị sắc nét trên màn hình 1.6 inch. Bên cạnh đó, dòng Apple Watch mới này cũng được tích hợp eSIM riêng, giúp nghe gọi, nhắn tin mà không còn phụ thuộc vào điện thoại. Đồng thời, dòng smartwatch này còn hỗ trợ nhiều tính năng theo dõi sức khoẻ, luyện tập khác nhau giúp nâng cao chất lượng sống của người dùng.', '2024-06-06 14:02:16', '2024-06-08 01:12:05', 700, 780, 22),
(25, 1, 'Apple Watch SE 2 2023', 'assets/uploads/171772120412.jpg', '- Mới, đầy đủ phụ kiện từ nhà sản xuất\r\n- 1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'Apple Watch SE 2023 40mm (GPS) với trang bị màn hình Retina cho hiển thị vô cùng sắc nét cùng kính cường lực vô cùng chắc chắn, sang trọng và cực kỳ đẹp mắt. Kích thước đồng hồ là 44mm nhỏ gọn cùng dây đeo cao su êm ái. Sản phẩm Apple Watch SE 2023 được tích hợp chip S8 SiP mạnh mẽ, thời gian sử dụng lên đến 18 giờ.', '2024-06-06 14:02:57', '2024-06-06 17:46:44', 600, 650, 1),
(27, 1, 'Apple Watch Series 9', 'assets/uploads/171783427311.jpg', '1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'Đồng hồ Apple Watch Series 9 45mm sở hữu on chip S9 SiP - CPU với 5,6 tỷ bóng bán dẫn giúp mang lại hiệu năng cải thiện hơn 60% so với thế hệ S8. Màn hình thiết bị với kích thước 45mm cùng độ sáng tối đa lên 2000 nit mang lại trải nghiệm hiển thị vượt trội. Cùng với đó, đồng hồ Apple Watch s9 này còn được trang bị nhiều tính năng hỗ trợ theo dõi sức khỏe và tập luyện thông minh.', '2024-06-06 14:04:55', '2024-06-08 01:11:13', 700, 800, 1),
(28, 5, 'Apple AirPods Max Space Gray', 'assets/uploads/171783696914.jpg', '- Hàng chính hãng Apple Việt Nam, Mới\r\n- Tai nghe AirPods Max, Smart case, Cáp Lightning to USB-C, Sách hướng dẫn', 'Từ trước đến nay Apple chỉ cho ra mắt dòng tai nghe kích thước nhỏ duy nhất là dòng Airpods. Nắm bắt được nhu cầu người dùng Apple đã cho ra mắt một sản phẩm mới đó là  Airpods Max với nhiều tính năng tiện lợi như chống ồn kèm theo đó là chất lượng âm thanh rất tuyệt vời.', '2024-06-08 08:05:14', '2024-06-08 01:56:09', 230, 250, 3),
(29, 5, 'Apple AirPods Pro 2', 'assets/uploads/171783450813.jpg', '- Hàng chính hãng Apple Việt Nam, Mới\r\n- Tai nghe, Hộp sạc, Nút tai, Cáp USB-C, Sách hướng dẫn', 'Airpods Pro 2 Type-C với công nghệ khử tiếng ồn chủ động mang lại khả năng khử ồn lên gấp 2 lần mang lại trải nghiệm nghe - gọi và trải nghiệm âm nhạc ấn tượng. Cùng với đó, điện thoại còn được trang bị công nghệ âm thanh không gian giúp trải nghiệm âm nhạc thêm phần sống động. Airpods Pro 2 Type-C với cổng sạc Type C tiện lợi cùng viên pin mang lại thời gian trải nghiệm lên đến 6 giờ tiện lợi.', '2024-06-08 08:15:08', '2024-06-08 08:15:08', 130, 150, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`, `created_at`, `updated_at`, `role`, `active`) VALUES
(36, 'Nguyễn Văn 32', NULL, 'a32@gmail.com', '$2y$10$AB.VK1NfWJeZtWUG4.NP6Owrd2jh.N5tM4tKCB.4pBWhDhz8aYLrK', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(37, 'Nguyễn Văn 33', NULL, 'a33@gmail.com', '$2y$10$kSIitLQiTEqGHUQnvfhKsO2GrY4n.Bswo.atMbMrTG1If0LIbzwBi', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(38, 'Nguyễn Văn 34', NULL, 'a34@gmail.com', '$2y$10$NQaJPZ5wAScEp2r0szz5v.F26x2HMobOAAQXbHjuSHqtqM79XqRGe', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(39, 'Nguyễn Văn 35', NULL, 'a35@gmail.com', '$2y$10$LwNSRlO1PwL/a771wAUfUOnN/VwSSq1NoWNk4vJTQ2bvj5Zc/hAVW', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(40, 'Nguyễn Văn 36', NULL, 'a36@gmail.com', '$2y$10$53kBmU4GER7sfH6HXwFSRO3HbOLBcF54OGNaNyPtgXhs33C65hoKm', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(41, 'Nguyễn Văn 37', NULL, 'a37@gmail.com', '$2y$10$/u.QISfm.Ei4zdV2va2Sm.aHsOumKiwKMcT/haHIidwOHXg5p8Msq', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(43, 'Nguyễn Văn 39', NULL, 'a39@gmail.com', '$2y$10$xONlhPaHsEsT5wEwdL2q0eICr5GlKKk9/5duFDG0Q0tjMvgKjQVDK', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(44, 'Nguyễn Văn 40', NULL, 'a40@gmail.com', '$2y$10$kfF7Mxn.3sQn8OPrxNu5x.hDv7G/L4tVXKi6hHCsPZrdVVvPFJ34.', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(45, 'Nguyễn Văn 41', NULL, 'a41@gmail.com', '$2y$10$L.2l0r4p2S2Cu7zBNEf.kexUVU76vNP91AeT00A9JgNF6dwAg7HQa', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(46, 'Nguyễn Văn 42', NULL, 'a42@gmail.com', '$2y$10$MLMxcTR7nEfjQ0WEpqSJB.UAnt5c0LHxzAuAaviKYKJmiwBMaCbLa', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(47, 'Nguyễn Văn 43', NULL, 'a43@gmail.com', '$2y$10$zmxFLPz7.svZu4t62fQuW.ya9Dr52XZDSyrOQOH6JGU3I5PY24/.i', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(48, 'Nguyễn Văn 44', NULL, 'a44@gmail.com', '$2y$10$9nc.D6BX4R0O.X8p2u04KedPsz6xswKVk6YpmkJDV3l/kTsA5K7qO', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(49, 'Nguyễn Văn 45', NULL, 'a45@gmail.com', '$2y$10$eFyJ2bQVZOI/svcH4Pg31uCRp0PS3DxM7Y/sheVup0bkqvLSS5kUu', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(50, 'Nguyễn Văn 46', NULL, 'a46@gmail.com', '$2y$10$27wCJH6mZz31EzukvIi.4uFqDdWpXIC/upyIc8I9g0D7Hw3vfiU1G', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(51, 'Nguyễn Văn 47', NULL, 'a47@gmail.com', '$2y$10$nw8gCRC5FOrWZ8WtxCrwvup5xwXjWqCw11j/uZeZItmeF4E59LHJW', '2024-05-30 13:48:58', '2024-05-30 13:48:58', 'user', 1),
(52, 'Nguyễn Văn 48', NULL, 'a48@gmail.com', '$2y$10$tSd.Vvw2mPzVKwcma2JC2uYKQR7hxpR3pj45IHIiaU.qooSnvVjnm', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(53, 'Nguyễn Văn 49', NULL, 'a49@gmail.com', '$2y$10$dKziMNbKBQmFZtOp0N6IqOf6ylJjrA5/t/19gA870NlWYAF7KJJ2.', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(54, 'Nguyễn Văn 50', NULL, 'a50@gmail.com', '$2y$10$x7fBwgLsBK1VIJrlK5Xig.pj3CvxyCkR.X9/lrxrn2L6WcR17WmaS', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(55, 'Nguyễn Văn 51', NULL, 'a51@gmail.com', '$2y$10$JKAZbwJn5KDORXPt8Wd9weMHffY17eD6W.s5VnYCQjdcw7GE4jNUW', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(56, 'Nguyễn Văn 52', NULL, 'a52@gmail.com', '$2y$10$VQCAZdBnM1xAigO2E5v67.wy0RA/QjIIp5U5yDVsn3AXQOZtmGzDi', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(57, 'Nguyễn Văn 53', NULL, 'a53@gmail.com', '$2y$10$qqyZD/vL.yZtBZW9HeHSv.M3E6RDacsDumuuaJHocim/M48vzaf7e', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(58, 'Nguyễn Văn 54', NULL, 'a54@gmail.com', '$2y$10$aBIZp.iFyJQtKY7DknJ.gu84RN3dedDC173BSSLuc32KhjISasbAy', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(59, 'Nguyễn Văn 55', NULL, 'a55@gmail.com', '$2y$10$WASh9E0GhNK2dQscivsLf.GvtazQMtDyyD1LrxwN3nEVJiPGLQa1e', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(60, 'Nguyễn Văn 56', NULL, 'a56@gmail.com', '$2y$10$PIUEsB9hkhkQSo98M4Gj0OZi1YyedtLYC0Atx8x2CO6IwLzVCIcYK', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(61, 'Nguyễn Văn 57', NULL, 'a57@gmail.com', '$2y$10$JcThAnOT0ZpspwkLwI619OySvok.oJJ.kIQPBYPn1y6Qy4xtxMMRS', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(62, 'Nguyễn Văn 58', NULL, 'a58@gmail.com', '$2y$10$UW.D8PWrBFOmWFHJFq5uJeCxfqxYAWjfy11mVNHzfeatd801BkyTu', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(63, 'Nguyễn Văn 59', NULL, 'a59@gmail.com', '$2y$10$3bsw9n4eFtg5v8KzxjGxyOcf0Cu.UN1HfzRYzaKBUZZDVUbkOUy/m', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(64, 'Nguyễn Văn 60', NULL, 'a60@gmail.com', '$2y$10$38XOYyxTZw6MBhXbaEYq5ePZ3N4h6D2f5ve4ToHUHhDV9cLkdIijO', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(65, 'Nguyễn Văn 61', NULL, 'a61@gmail.com', '$2y$10$D80wDapoMj.E.jUA.z9jw.W0BQ7sEL9xgXPNkCdMigjP8.8MfB0by', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(66, 'Nguyễn Văn 62', NULL, 'a62@gmail.com', '$2y$10$s0Y9WLzNMVHHFDGkiEYHzOrDyiONbTUZT5qUvKLmR1N3SQNeFHGpa', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(67, 'Nguyễn Văn 63', NULL, 'a63@gmail.com', '$2y$10$tbl2f7ng6Winlhin0cGDw.rRKTUbJ4YRMX/vs88NEGLHawJo3c52W', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(68, 'Nguyễn Văn 64', NULL, 'a64@gmail.com', '$2y$10$ScsZSnkEUvblGbjHC0Elw.a1jVyvBww06K2Ennf5sIwVIPLrFvf76', '2024-05-30 13:48:59', '2024-05-30 13:48:59', 'user', 1),
(69, 'Nguyễn Văn 65', NULL, 'a65@gmail.com', '$2y$10$PfEvrWsCLASbuHJYHPSVfOfl5tKjPd/ko6OojCUgLsr/y3vg9VAIq', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(70, 'Nguyễn Văn 66', NULL, 'a66@gmail.com', '$2y$10$3AEJDQFkH45tWB77vVFpNu7vEIOHsE.fqMA08BIxb3FLnELcR9OnS', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(71, 'Nguyễn Văn 67', NULL, 'a67@gmail.com', '$2y$10$4vrXrSFYHFhGJpe9Db1xXOwrzsherjr1SpP/qpCSXz/MKmuKNnN2C', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(72, 'Nguyễn Văn 68', NULL, 'a68@gmail.com', '$2y$10$KURi7rY3kZwobOvwgVMpgu53jyqMWPS1XatDATBKEPQ1RMQQX5Tiu', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(73, 'Nguyễn Văn 69', NULL, 'a69@gmail.com', '$2y$10$XhQueq7HWStFjGVsn0dPw.ggjMsQElaB0m8Ey3BvTCZvrh0K.uF.y', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(74, 'Nguyễn Văn 70', NULL, 'a70@gmail.com', '$2y$10$yCfd.5OgpddoJaa5IOkTCeWiW1B22L0jDGXhIRS/AZgUEc5rjHahO', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(75, 'Nguyễn Văn 71', NULL, 'a71@gmail.com', '$2y$10$f2fnnw68lpKzjWJIYxKyk./7rswuUTBUAIumdg2Epa5wCGLWI6XAy', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(77, 'Nguyễn Văn 73', NULL, 'a73@gmail.com', '$2y$10$0l9GIM3ZmQnwOedqkRmtiO7CkRifk9o6DShaL269wMHnt7xfvAnWi', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(78, 'Nguyễn Văn 74', NULL, 'a74@gmail.com', '$2y$10$LD6jZWcu692lQY3k0v58Tea6XYOWNi8q.URBPDAS7Z4Zs4VYJub9m', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(79, 'Nguyễn Văn 75', NULL, 'a75@gmail.com', '$2y$10$t9a6Jf0lR3xvvJ5mUX2v6.EOkpRHbxmYVqYsvr1xqpVKeUFbTVjTe', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(80, 'Nguyễn Văn 76', NULL, 'a76@gmail.com', '$2y$10$ld8zjsKPHpSHduJ9.yJE9eOwxHJgPFAKt6Ua/ODhLrkD5PgwJKzdC', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(82, 'Nguyễn Văn 78', NULL, 'a78@gmail.com', '$2y$10$T5M3ulSWWR9tYV.oEkP0LuTIh7x8zIUC6rhe/1WHDpahWTGn4vS.y', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(83, 'Nguyễn Văn 79', NULL, 'a79@gmail.com', '$2y$10$cFZPoVmUdd5l8UZlk76uBui9YtWl1Bjt8HSqbERt2Z5nqjxjZpcfq', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(84, 'Nguyễn Văn 80', NULL, 'a80@gmail.com', '$2y$10$XGe0b31Hj.Org3gpSRSnB.8xDl6LOyGA0Of1UlLXZzScZCGnFDMvO', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(85, 'Nguyễn Văn 81', NULL, 'a81@gmail.com', '$2y$10$ZuXDF7eYbR5QaAyRly/32eSjOFCK18mQQ..IzFqa6hd1mLg7ioNjq', '2024-05-30 13:49:00', '2024-05-30 13:49:00', 'user', 1),
(86, 'Nguyễn Văn 82', NULL, 'a82@gmail.com', '$2y$10$QpP01maEXmnyLTLEN6HHouVnkFBSBRhT3ZGJ4vDjKOcDrJhGLP2oW', '2024-05-30 13:49:01', '2024-05-30 13:49:01', 'user', 1),
(87, 'Nguyễn Văn 83', NULL, 'a83@gmail.com', '$2y$10$eckdzBiteD/oJGejsvxdke3ojlqndBEHPnxzzKrr90nGe2hjLAzt2', '2024-05-30 13:49:01', '2024-05-30 13:49:01', 'user', 1),
(88, 'Nguyễn Văn 84', NULL, 'a84@gmail.com', '$2y$10$6lSU16OR2pUK8AnFCeXDuOlbdzurTBl3bYPPBrHKDUq6SVqWgT/FO', '2024-05-30 13:49:01', '2024-05-30 13:49:01', 'user', 1),
(89, 'Nguyễn Văn 85', NULL, 'a85@gmail.com', '$2y$10$6XASiG5D1HZtDZtxUrI9XeFt6eUwyF/WCyreYqYrldQWQfX3HZoTG', '2024-05-30 13:49:01', '2024-05-30 13:49:01', 'user', 1),
(90, 'Nguyễn Văn 86', NULL, 'a86@gmail.com', '$2y$10$gJwucVIzDdtLsP9kTrYvMuFsdwkgAxiTddwp.4J44kDWAebvkZKii', '2024-05-30 13:49:01', '2024-05-30 13:49:01', 'user', 1),
(91, 'Nguyễn Văn 87', NULL, 'a87@gmail.com', '$2y$10$SsgktcAVr6ifz8f02UITwO2KKn0PSQatc9FY3JZvP9GTnXGlaL0qW', '2024-05-30 13:49:01', '2024-05-30 13:49:01', 'user', 1),
(94, 'Nguyễn Văn 90', NULL, 'a90@gmail.com', '$2y$10$eRG3LjaWNmV4jjzVPdYJ6eA2EO7J0HZpofurwM7Aln7cnKO1HUSWq', '2024-05-30 13:49:01', '2024-05-30 13:49:01', 'user', 1),
(96, 'Nguyễn Văn 92', NULL, 'a92@gmail.com', '$2y$10$MzbL3MfnLmxP7J3mjqgN7.O2l2SDOQBtFzqw/MMyr8zZqfLCYb3t2', '2024-05-30 13:49:01', '2024-05-30 13:49:01', 'user', 1),
(111, 'Anh Tú', 'assets/uploads/1717509435quang.jpg', 'tunaph44948@fpt.edu.vn', '$2y$10$UfHE5FoJy3Gvh1cGUy.js.Y3/1FphmVViqgrzU4nwZZE8UkHSTt8y', '2024-06-04 13:36:03', '2024-06-04 13:36:03', 'admin', 1),
(113, 'DEMO', 'assets/uploads/17178950264.png', 'demo@gmail.com', '$2y$10$.vqVdvzcz.PiJs3dO8hHredDvGPA4YLpkmobU5zk2rlaJJcHnOB0e', '2024-06-09 01:03:46', '2024-06-09 01:03:46', 'user', 1),
(114, 'No Active', 'assets/uploads/17179005193.png', 'noactive@gmail.com', '$2y$10$BGNwzaZ1KN/HlnFZCx6Jb.oeJwLhyZNlskfmZDvR9G.R8xf51JW0a', '2024-06-09 02:35:08', '2024-06-09 02:35:08', 'user', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
