-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 01, 2023 lúc 12:19 PM
-- Phiên bản máy phục vụ: 5.7.41-cll-lve
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ycdcdxmt_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `api_trans_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `seller` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `buyer` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `account` text COLLATE utf8_vietnamese_ci,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT 'LIVE',
  `time_live` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8_vietnamese_ci,
  `description` mediumtext COLLATE utf8_vietnamese_ci,
  `image` mediumtext COLLATE utf8_vietnamese_ci,
  `createdate` datetime NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `purchase_key` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `addons`
--

INSERT INTO `addons` (`id`, `name`, `description`, `image`, `createdate`, `price`, `purchase_key`) VALUES
(1, 'Template 3', 'Giao diện bán sản phẩm #3', 'https://i.imgur.com/929iYyH.png', '2022-04-07 10:02:41', 200000, '0fbe895ab23180ea4eb959d06b40d77f'),
(2, 'Tạo giao dịch ảo', 'Tự động tạo giao dịch nạp tiền, mua sản phẩm ảo để tăng uy tín cho shop', 'https://i.imgur.com/6kNRjfN.png', '2022-04-07 20:52:41', 500000, 'ea5bb27e2a4487846959fa14751b69c6'),
(3, 'Template 4', 'Giao diện bán sản phẩm #4', 'https://i.imgur.com/bXmRtMM.png', '2022-04-09 15:42:41', 200000, '51665bf92dd491c2a400be8e25a4c150'),
(4, 'Bảng Xếp Hạng Nạp Tiền', 'Bảng xếp hàng nạp tiền cho thành viên', 'https://i.imgur.com/ZRIRAaB.png', '2022-04-12 02:42:41', 200000, '1093925d66b5fe3d9a47c0331943d730'),
(24, 'Nạp Tiền Server 2', 'Nạp tiền bằng nội dung + id', 'https://i.imgur.com/CydpsWl.png', '2022-04-19 01:40:11', 500000, '61a9276da53fde94b0969c5d057cfaf7'),
(211, 'Số Lượng Đã Bán Ảo', 'Điều chỉnh số lượng đã bán ảo (số lượng ảo + số lượng thật)', 'https://i.imgur.com/3tOOFDC.png', '2022-04-26 01:40:11', 50000, '5738ac86c8152297377ac2d43c436f56'),
(11412, 'API 1', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, 'fcdb9ce8d8a4446411fd38c674b6a01e'),
(11413, 'API 4', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, '5c137386a3dac90e29fadee8693c72be'),
(11422, 'API 5', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-09-14 00:00:00', 1000000, '293df646b7150086a9ddf6f59257c2d0'),
(11427, 'API 6', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-07-26 00:00:00', 1000000, '87da720210a71c02a637dd05fd7209d2'),
(11469, 'Email Campaigns', 'Gửi Email đến toàn bộ khách hàng của bạn', 'https://i.imgur.com/iQWAKTY.jpg', '2022-11-02 00:00:00', 300000, '899389599170a40f3ffff8c934e3c831'),
(11487, 'API 7', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-03 00:00:00', 1000000, '9868782e6d48bae8400adc6568107d05'),
(11521, 'Bán Like, Follow MXH', 'Tích hợp bán like, follow mạng xã hội vào mã nguồn SHOPCLONE6', 'https://i.imgur.com/gS5RRnm.png', '2022-11-11 00:00:00', 1000000, '3fcb63b618f0ea1bc5668bb4730960a4'),
(11535, 'API 8', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-11 00:00:00', 1000000, '709da60e2cf1d7a6545af2d55bb1d615'),
(11542, 'API 9', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-11-23 00:00:00', 1000000, 'c9b727919db35a06fc48fbe8af1e5edd'),
(11621, 'Tích hợp thuê OTP qua API 1', 'Chức năng thuê SIM tích hợp qua API 1', 'https://i.imgur.com/wQlNAcH.png', '2022-12-13 00:00:00', 1000000, '210c5e416b061478205aea2e6f470541'),
(11634, 'Tích hợp thuê OTP qua API 2', 'Chức năng thuê SIM tích hợp qua API 2', 'https://i.imgur.com/wQlNAcH.png', '2022-12-28 00:00:00', 2000000, 'c484ebdd8acb67fb059fc37613f2f300'),
(11635, 'API 10', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2022-12-19 00:00:00', 1000000, '5082cc41c7f09bf4eda34946347d0d8a'),
(11645, 'API 11', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-01-02 00:00:00', 1000000, '7ce1107e7ea61a5e94bdb138330184c3'),
(11656, 'Tích hợp thuê OTP qua API 3', 'Chức năng thuê SIM tích hợp qua API 3', 'https://i.imgur.com/wQlNAcH.png', '2023-01-10 00:00:00', 1000000, '35d63a235427ec4b0dd83d5039f9044e'),
(11657, 'API 12', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-02-06 00:00:00', 1000000, 'fedeef46618c3ec69feee123da7d5ae8'),
(11678, 'Tích hợp thuê OTP qua API 4', 'Chức năng thuê SIM tích hợp qua API 4', 'https://i.imgur.com/wQlNAcH.png', '2023-02-06 00:00:00', 1000000, 'fdd3d6170921079eedb30815257e659b'),
(11698, 'Tích hợp thuê OTP qua API 5', 'Chức năng thuê SIM tích hợp qua API 5', 'https://i.imgur.com/wQlNAcH.png', '2023-05-09 00:00:00', 1000000, '2256b99108ce099d7c55a538f40ee27a'),
(11724, 'API 13', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-02-08 00:00:00', 1000000, 'd5ad0c07cfe1ebb8c0d241c2e038c857'),
(11735, 'API 14', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-05-10 00:00:00', 1000000, 'e9e9a8237e77cd8f56b9006602142b9f'),
(11872, 'API 15', 'Kết nối API sản phẩm website không dùng API của CMSNT', 'https://i.imgur.com/EFq5tTX.png', '2023-06-28 00:00:00', 1000000, '97bbee1c7278285608f94b29af506f77'),
(14232, 'Bán Fanpage/Group', 'Addon bán Fanpage/Group thủ công', 'https://i.imgur.com/jmIjBfI.png', '2022-05-07 01:59:00', 1000000, '33cf651bb2b8b9fa10d9ea02cece7f0f'),
(112246, 'BOT Telegram', 'Addon thông báo về Telegram', 'https://i.imgur.com/9Ci2geb.png', '2022-06-26 16:00:00', 300000, '05f1b0b8f1aa7aad797440b0ac8f34e5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `short_name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `image` text COLLATE utf8_vietnamese_ci,
  `accountName` text COLLATE utf8_vietnamese_ci,
  `accountNumber` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banned_ips`
--

CREATE TABLE `banned_ips` (
  `id` int(11) NOT NULL,
  `ip` varchar(55) DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `banned` int(11) NOT NULL DEFAULT '0',
  `reason` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banned_ips`
--

INSERT INTO `banned_ips` (`id`, `ip`, `attempts`, `create_gettime`, `banned`, `reason`) VALUES
(1, '2001:ee0:276:70ac:54e1:97ff:fec4:8de1', 2, '2023-05-09 13:16:24', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` mediumtext COLLATE utf8_vietnamese_ci,
  `slug` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_vietnamese_ci,
  `display` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `telco` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `serial` text COLLATE utf8_vietnamese_ci,
  `pin` text COLLATE utf8_vietnamese_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `stt` int(1) NOT NULL DEFAULT '0',
  `id_api` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_connect_api` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_vietnamese_ci,
  `image` text COLLATE utf8_vietnamese_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_service`
--

CREATE TABLE `category_service` (
  `id` int(11) NOT NULL,
  `name` blob,
  `display` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `connect_api`
--

CREATE TABLE `connect_api` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT 'CMSNT',
  `domain` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` text CHARACTER SET utf8mb4,
  `password` text CHARACTER SET utf8mb4,
  `token` text COLLATE utf8_vietnamese_ci,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `auto_rename_api` int(11) NOT NULL DEFAULT '1',
  `ck_connect_api` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `used` int(11) NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `min` int(11) NOT NULL DEFAULT '1000',
  `max` int(11) NOT NULL DEFAULT '10000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon_used`
--

CREATE TABLE `coupon_used` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `crypto_invoice`
--

CREATE TABLE `crypto_invoice` (
  `id` int(11) NOT NULL,
  `trans_id` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `request_id` text,
  `amount` decimal(18,6) NOT NULL DEFAULT '0.000000',
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` varchar(55) DEFAULT NULL,
  `msg` text,
  `url_payment` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` float NOT NULL DEFAULT '0',
  `symbol_left` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `symbol_right` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `seperator` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `display` int(11) NOT NULL DEFAULT '1',
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `decimal_currency` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `rate`, `symbol_left`, `symbol_right`, `seperator`, `display`, `default_currency`, `decimal_currency`) VALUES
(1, 'Đồng', 'VND', 1, '', 'đ', 'dot', 1, 1, 0),
(2, 'Dollar', 'USD', 23558, '$', '', 'dot', 1, 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `image` mediumtext COLLATE utf8_vietnamese_ci,
  `content` longtext COLLATE utf8_vietnamese_ci,
  `price` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document_categories`
--

CREATE TABLE `document_categories` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `name` mediumtext COLLATE utf8_vietnamese_ci,
  `image` mediumtext COLLATE utf8_vietnamese_ci,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `domain` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `admin_note` text,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sotientruoc` int(11) NOT NULL DEFAULT '0',
  `sotienthaydoi` int(11) NOT NULL DEFAULT '0',
  `sotiensau` int(11) NOT NULL DEFAULT '0',
  `thoigian` datetime NOT NULL,
  `noidung` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_campaigns`
--

CREATE TABLE `email_campaigns` (
  `id` int(11) NOT NULL,
  `name` text,
  `subject` text,
  `cc` text,
  `bcc` text,
  `content` longblob,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_sending`
--

CREATE TABLE `email_sending` (
  `id` int(11) NOT NULL,
  `camp_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `response` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giftbox`
--

CREATE TABLE `giftbox` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `pay` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_vietnamese_ci,
  `description` text CHARACTER SET utf8mb4,
  `tid` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `fake` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `invoices`
--

INSERT INTO `invoices` (`id`, `type`, `user_id`, `trans_id`, `payment_method`, `amount`, `pay`, `status`, `create_date`, `update_date`, `create_time`, `update_time`, `note`, `description`, `tid`, `fake`) VALUES
(1, 'deposit_money', 3, 'CZ9327', 'MBBank', 10000, 10000, 2, '2023-04-15 21:10:27', '2023-04-15 21:10:27', 1681567827, 1681567827, '', NULL, NULL, 0),
(2, 'deposit_money', 3, 'YE6847', 'MOMO', 10000, 10000, 2, '2023-04-15 21:53:30', '2023-04-15 21:53:30', 1681570410, 1681570410, '', NULL, NULL, 0),
(3, 'deposit_money', 3, 'TC2193', 'MOMO', 10000, 10000, 2, '2023-04-15 21:54:09', '2023-04-15 21:54:09', 1681570449, 1681570449, '', NULL, NULL, 0),
(4, 'deposit_money', 3, 'UP7543', 'MBBank', 10000, 10000, 2, '2023-04-15 21:58:51', '2023-04-15 21:58:51', 1681570731, 1681570731, '', NULL, NULL, 0),
(5, 'deposit_money', 3, 'RZ6951', 'MOMO', 10000000, 10000000, 2, '2023-04-15 22:03:07', '2023-04-15 22:03:07', 1681570987, 1681570987, '', NULL, NULL, 0),
(6, 'deposit_money', 19, 'KJ4859', 'MBBank', 10000, 10000, 2, '2023-04-15 22:03:54', '2023-04-15 22:03:54', 1681571034, 1681571034, '', NULL, NULL, 0),
(7, 'deposit_money', 5, 'WV9543', 'MBBank', 30000, 30000, 2, '2023-04-15 22:05:33', '2023-04-15 22:05:33', 1681571133, 1681571133, '', NULL, NULL, 0),
(8, 'deposit_money', 20, 'KC1892', 'MOMO', 6000, 6000, 2, '2023-04-15 22:06:44', '2023-04-15 22:06:44', 1681571204, 1681571204, '', NULL, NULL, 0),
(9, 'deposit_money', 20, 'BF8612', 'MOMO', 1200, 1200, 2, '2023-04-15 22:08:52', '2023-04-15 22:08:52', 1681571332, 1681571332, '', NULL, NULL, 0),
(10, 'deposit_money', 20, 'RK5867', 'MOMO', 12000, 12000, 2, '2023-04-15 22:09:08', '2023-04-15 22:09:08', 1681571348, 1681571348, '', NULL, NULL, 0),
(11, 'deposit_money', 1, 'VC1357', 'MBBank', 10000, 10000, 2, '2023-04-15 22:27:57', '2023-04-15 22:27:57', 1681572477, 1681572477, '', NULL, NULL, 0),
(12, 'deposit_money', 2, 'AL1324', 'MBBank', 30000, 30000, 2, '2023-04-15 22:37:13', '2023-04-15 22:37:13', 1681573033, 1681573033, '', NULL, NULL, 0),
(13, 'deposit_money', 2, 'GR3149', 'MBBank', 45000, 45000, 2, '2023-04-15 22:39:26', '2023-04-15 22:39:26', 1681573166, 1681573166, '', NULL, NULL, 0),
(14, 'deposit_money', 2, 'BX2378', 'MBBank', 15000, 15000, 2, '2023-04-15 22:39:49', '2023-04-15 22:39:49', 1681573189, 1681573189, '', NULL, NULL, 0),
(15, 'deposit_money', 19, 'TV7456', 'MBBank', 10000, 10000, 2, '2023-04-15 22:46:17', '2023-04-15 22:46:17', 1681573577, 1681573577, '', NULL, NULL, 0),
(16, 'deposit_money', 19, 'HI5713', 'MBBank', 10000, 10000, 2, '2023-04-15 22:54:14', '2023-04-15 22:54:14', 1681574054, 1681574054, '', NULL, NULL, 0),
(17, 'deposit_money', 19, 'VG3974', 'MBBank', 10000, 10000, 1, '2023-04-15 22:58:29', '2023-04-16 11:05:46', 1681574309, 1681617946, '', 'CUSTOMER Thanh toan QR-VG3974. TU: HUYNH KHANH DUY', 'FT23107365741146\\\\C59', 0),
(18, 'deposit_money', 1, 'JR6291', 'MOMO', 10000, 10000, 2, '2023-04-15 23:14:33', '2023-04-15 23:14:33', 1681575273, 1681575273, '', NULL, NULL, 0),
(19, 'deposit_money', 22, 'VC8374', 'MOMO', 12000, 12000, 2, '2023-04-16 00:56:07', '2023-04-16 00:56:07', 1681581367, 1681581367, '', NULL, NULL, 0),
(20, 'deposit_money', 25, 'EF4819', 'MBBank', 15000, 15000, 2, '2023-04-16 01:26:41', '2023-04-16 01:26:41', 1681583201, 1681583201, '', NULL, NULL, 0),
(21, 'deposit_money', 25, 'RC5614', 'MOMO', 15000, 15000, 2, '2023-04-16 01:29:07', '2023-04-16 01:29:07', 1681583347, 1681583347, '', NULL, NULL, 0),
(22, 'deposit_money', 27, 'LX4816', 'MOMO', 10000, 10000, 1, '2023-04-16 09:44:06', '2023-04-16 11:05:44', 1681613046, 1681617944, '', 'LX4816', '38756452471', 0),
(23, 'deposit_money', 28, 'MG5824', 'MBBank', 30000, 30000, 1, '2023-04-16 10:18:05', '2023-04-16 11:05:46', 1681615085, 1681617946, '', 'CUSTOMER MG5824. TU: TRAN THI NGOC LAN', 'FT23107433057193\\\\B84', 0),
(24, 'deposit_money', 5, 'BNX3', 'MOMO', 45000, 45000, 1, '2023-04-16 10:53:13', '2023-04-16 10:53:13', 1681617193, 1681617193, '', NULL, NULL, 1),
(25, 'deposit_money', 32, 'DX2361', 'MOMO', 10000, 10000, 1, '2023-04-16 10:57:11', '2023-04-16 11:05:44', 1681617431, 1681617944, '', 'DX2361', '38759167099', 0),
(26, 'deposit_money', 25, '2TGZ', 'MOMO', 400000, 400000, 1, '2023-04-16 11:01:25', '2023-04-16 11:01:25', 1681617685, 1681617685, '', NULL, NULL, 1),
(27, 'deposit_money', 12, 'Z8YD', 'MBBank', 45000, 45000, 1, '2023-04-16 11:07:32', '2023-04-16 11:07:32', 1681618052, 1681618052, '', NULL, NULL, 1),
(28, 'deposit_money', 19, 'CZ2953', 'MBBank', 10000, 10000, 1, '2023-04-16 11:08:03', '2023-04-16 11:19:05', 1681618083, 1681618745, '', 'CUSTOMER Thanh toan QR-CZ2953. TU: HUYNH KHANH DUY', 'FT23107200065108\\\\C59', 0),
(29, 'deposit_money', 31, 'Q9MR', 'MOMO', 10000, 10000, 1, '2023-04-16 12:04:50', '2023-04-16 12:04:50', 1681621490, 1681621490, '', NULL, NULL, 1),
(30, 'deposit_money', 15, 'G8WY', 'MOMO', 10000, 10000, 1, '2023-04-16 12:06:35', '2023-04-16 12:06:35', 1681621595, 1681621595, '', NULL, NULL, 1),
(31, 'deposit_money', 14, 'EA2843', 'MOMO', 10000, 10000, 1, '2023-04-16 13:14:30', '2023-04-16 13:18:05', 1681625670, 1681625885, '', 'EA2843', '38764106353', 0),
(32, 'deposit_money', 33, 'RW1795', 'MOMO', 20000, 20000, 1, '2023-04-16 14:21:22', '2023-04-16 14:22:19', 1681629682, 1681629739, '', 'RW1795', '38766026353', 0),
(33, 'deposit_money', 34, 'HC2174', 'MBBank', 10000, 10000, 1, '2023-04-16 16:33:14', '2023-04-16 16:49:32', 1681637594, 1681637594, '', NULL, NULL, 0),
(34, 'deposit_money', 6, 'Q43X', 'MOMO', 300000, 300000, 1, '2023-04-16 16:46:44', '2023-04-16 16:46:44', 1681638404, 1681638404, '', NULL, NULL, 1),
(35, 'deposit_money', 25, 'M2AQ', 'MBBank', 10000, 10000, 1, '2023-04-16 16:49:23', '2023-04-16 16:49:23', 1681638563, 1681638563, '', NULL, NULL, 1),
(36, 'deposit_money', 15, 'BMG4', 'MOMO', 65000, 65000, 1, '2023-04-16 16:49:59', '2023-04-16 16:49:59', 1681638599, 1681638599, '', NULL, NULL, 1),
(37, 'deposit_money', 9, 'TJ4S', 'MBBank', 2000000, 2000000, 1, '2023-04-16 19:22:32', '2023-04-16 19:22:32', 1681647752, 1681647752, '', NULL, NULL, 1),
(38, 'deposit_money', 11, 'H7QS', 'MBBank', 70000, 70000, 1, '2023-04-16 19:29:42', '2023-04-16 19:29:42', 1681648182, 1681648182, '', NULL, NULL, 1),
(39, 'deposit_money', 10, 'EGXN', 'MBBank', 40000, 40000, 1, '2023-04-16 19:31:45', '2023-04-16 19:31:45', 1681648305, 1681648305, '', NULL, NULL, 1),
(40, 'deposit_money', 30, 'QKS4', 'MOMO', 300000, 300000, 1, '2023-04-16 19:34:00', '2023-04-16 19:34:00', 1681648440, 1681648440, '', NULL, NULL, 1),
(41, 'deposit_money', 33, '8UVP', 'MOMO', 15000, 15000, 1, '2023-04-16 19:34:30', '2023-04-16 19:34:30', 1681648470, 1681648470, '', NULL, NULL, 1),
(42, 'deposit_money', 3, 'XS3641', 'MBBank', 10000, 10000, 2, '2023-04-16 19:51:53', '2023-04-16 19:51:53', 1681649513, 1681649513, '', NULL, NULL, 0),
(43, 'deposit_money', 19, 'KT7432', 'MBBank', 10000, 10000, 2, '2023-04-16 19:53:35', '2023-04-16 19:53:35', 1681649615, 1681649615, '', NULL, NULL, 0),
(44, 'deposit_money', 19, 'ZV2859', 'MBBank', 10000, 10000, 1, '2023-04-16 19:55:54', '2023-04-16 19:59:03', 1681649754, 1681649943, '', 'CUSTOMER Thanh toan QR-ZV2859. TU: HUYNH KHANH DUY', 'FT23107656962019\\\\C59', 0),
(45, 'deposit_money', 7, 'D5SW', 'MBBank', 10000, 10000, 1, '2023-04-16 20:25:18', '2023-04-16 20:25:18', 1681651518, 1681651518, '', NULL, NULL, 1),
(46, 'deposit_money', 37, 'VE8796', 'MOMO', 10000, 10000, 1, '2023-04-16 20:25:25', '2023-04-16 20:26:04', 1681651525, 1681651564, '', 'VE8796', '38778511739', 0),
(47, 'deposit_money', 39, 'DR6712', 'MOMO', 12000, 12000, 1, '2023-04-16 20:37:21', '2023-04-16 20:40:05', 1681652241, 1681652405, '', 'DR6712', '38778867545', 0),
(48, 'deposit_money', 25, '4F6A', 'MBBank', 60000, 60000, 1, '2023-04-16 20:37:43', '2023-04-16 20:37:43', 1681652263, 1681652263, '', NULL, NULL, 1),
(49, 'deposit_money', 11, 'UF3465', 'MBBank', 45000, 45000, 1, '2023-04-16 20:40:06', '2023-04-16 20:42:04', 1681652406, 1681652524, '', 'CUSTOMER UF3465. TU: LE THANH DUC', 'FT23107640916388\\\\C66', 0),
(50, 'deposit_money', 40, 'SB9124', 'MBBank', 30000, 30000, 1, '2023-04-16 20:50:37', '2023-04-16 20:54:05', 1681653037, 1681653245, '', 'CUSTOMER SB9124. TU: NGUYEN DUC TRI', 'FT23107260056573\\\\E31', 0),
(51, 'deposit_money', 2, 'T5QX', 'MOMO', 65000, 65000, 1, '2023-04-16 20:57:33', '2023-04-16 20:57:33', 1681653453, 1681653453, '', NULL, NULL, 1),
(52, 'deposit_money', 14, 'V1B7', 'MOMO', 10000, 10000, 1, '2023-04-16 20:57:48', '2023-04-16 20:57:48', 1681653468, 1681653468, '', NULL, NULL, 1),
(53, 'deposit_money', 37, 'ZR2316', 'MOMO', 27000, 27000, 1, '2023-04-16 20:58:38', '2023-04-16 21:00:06', 1681653518, 1681653606, '', 'ZR2316', '38779738871', 0),
(54, 'deposit_money', 42, 'BM4291', 'MBBank', 20000, 20000, 1, '2023-04-16 20:59:33', '2023-04-16 21:02:06', 1681653573, 1681653726, '', 'CUSTOMER BM4291. TU: NGUYEN THI TRAM', 'FT23107634586466\\\\E24', 0),
(55, 'deposit_money', 15, 'WG3489', 'MOMO', 10000, 10000, 1, '2023-04-16 20:59:45', '2023-04-16 21:01:07', 1681653585, 1681653667, '', 'WG3489', '38779742509', 0),
(56, 'deposit_money', 2, 'BRU4', 'MBBank', 45000, 45000, 1, '2023-04-16 21:00:04', '2023-04-16 21:00:04', 1681653604, 1681653604, '', NULL, NULL, 1),
(57, 'deposit_money', 43, 'OC7416', 'MBBank', 40000, 40000, 2, '2023-04-16 21:03:22', '2023-04-16 21:03:22', 1681653802, 1681653802, '', NULL, NULL, 0),
(58, 'deposit_money', 17, 'KA3965', 'MBBank', 12000, 12000, 1, '2023-04-16 21:04:01', '2023-04-16 21:09:06', 1681653841, 1681654146, '', 'CUSTOMER KA3965. TU: TRIEU VAN DUNG', 'FT23107209707608\\\\B03', 0),
(59, 'deposit_money', 46, 'CKFS', 'MOMO', 300000, 300000, 1, '2023-04-16 21:05:34', '2023-04-16 21:05:34', 1681653934, 1681653934, '', NULL, NULL, 1),
(60, 'deposit_money', 46, 'ER7968', 'MOMO', 10000, 10000, 1, '2023-04-16 21:06:17', '2023-04-16 21:08:06', 1681653977, 1681654086, '', 'ER7968', '38780040459', 0),
(61, 'deposit_money', 43, 'LB2379', 'MBBank', 60000, 60000, 1, '2023-04-16 21:06:29', '2023-04-16 21:09:05', 1681653989, 1681654145, '', 'CUSTOMER LB2379. TU: DANG HOANG ANH', 'FT23107084460780\\\\BNK', 0),
(62, 'deposit_money', 37, 'EM5261', 'MOMO', 600000, 600000, 2, '2023-04-16 21:07:23', '2023-04-16 21:07:23', 1681654043, 1681654043, '', NULL, NULL, 0),
(63, 'deposit_money', 37, 'JP3572', 'MOMO', 59000, 59000, 1, '2023-04-16 21:07:40', '2023-04-16 21:09:04', 1681654060, 1681654144, '', 'JP3572', '38780046065', 0),
(64, 'deposit_money', 48, 'BC5768', 'MBBank', 10000, 10000, 1, '2023-04-16 21:13:01', '2023-04-16 21:18:11', 1681654381, 1681654691, '', 'CUSTOMER BC5768. TU: NGUYEN NGOC TRANG', 'FT23107895696270\\\\E34', 0),
(65, 'deposit_money', 43, 'XV8574', 'MBBank', 150000, 150000, 1, '2023-04-16 21:17:59', '2023-04-16 21:20:08', 1681654679, 1681654808, '', 'CUSTOMER Thanh toan QR-XV8574. TU: DANG HOANG ANH', 'FT23107840056591\\\\BNK', 0),
(66, 'deposit_money', 49, 'OB7591', 'MOMO', 300000, 300000, 2, '2023-04-16 21:23:37', '2023-04-16 21:23:37', 1681655017, 1681655017, '', NULL, NULL, 0),
(67, 'deposit_money', 51, 'TA6741', 'MOMO', 12000, 12000, 1, '2023-04-16 21:33:34', '2023-04-16 21:37:05', 1681655614, 1681655825, '', 'TA6741', '38781078383', 0),
(68, 'deposit_money', 3, 'VQHD', 'MBBank', 70000, 70000, 1, '2023-04-16 21:33:58', '2023-04-16 21:33:58', 1681655638, 1681655638, '', NULL, NULL, 1),
(69, 'deposit_money', 54, 'OS8465', 'MOMO', 120000, 120000, 2, '2023-04-16 21:44:56', '2023-04-16 21:44:56', 1681656296, 1681656296, '', NULL, NULL, 0),
(70, 'deposit_money', 54, 'DN9318', 'MOMO', 12000, 12000, 1, '2023-04-16 21:45:21', '2023-04-16 21:47:06', 1681656321, 1681656426, '', 'DN9318', '38781294846', 0),
(71, 'deposit_money', 17, 'WU3621', 'MBBank', 20000, 20000, 1, '2023-04-16 21:51:37', '2023-04-16 21:53:06', 1681656697, 1681656786, '', 'CUSTOMER WU3621. TU: TRIEU VAN DUNG', 'FT23107035345334\\\\B03', 0),
(72, 'deposit_money', 55, 'AS8192', 'MOMO', 15000, 15000, 1, '2023-04-16 21:51:58', '2023-04-16 21:54:06', 1681656718, 1681656846, '', 'AS8192', '38781611400', 0),
(73, 'deposit_money', 8, 'GZ1694', 'MOMO', 30000, 30000, 1, '2023-04-16 23:28:45', '2023-04-16 23:30:06', 1681662525, 1681662606, '', 'GZ1694', '38784239868', 0),
(74, 'deposit_money', 62, 'DH4532', 'MOMO', 250000, 250000, 2, '2023-04-16 23:32:08', '2023-04-16 23:32:08', 1681662728, 1681662728, '', NULL, NULL, 0),
(75, 'deposit_money', 62, 'KO7461', 'MBBank', 250000, 250000, 1, '2023-04-16 23:32:24', '2023-04-16 23:34:06', 1681662744, 1681662846, '', 'CUSTOMER KO7461. TU: NGUYEN TRONG KHA', 'FT23107737097438\\\\B75', 0),
(76, 'deposit_money', 63, 'JV9537', 'MOMO', 30000, 30000, 1, '2023-04-16 23:37:52', '2023-04-16 23:40:06', 1681663072, 1681663206, '', 'JV9537', '38784392968', 0),
(77, 'deposit_money', 67, 'CE3129', 'MBBank', 12000, 12000, 1, '2023-04-17 09:49:45', '2023-04-17 09:51:02', 1681699785, 1681699862, '', 'CUSTOMER IBFT CE3129 Trace 152947', 'FT23107160604103\\\\BNK', 0),
(78, 'deposit_money', 69, 'XL2185', 'MOMO', 15000, 15000, 2, '2023-04-17 10:45:04', '2023-04-17 10:45:04', 1681703104, 1681703104, '', NULL, NULL, 0),
(79, 'deposit_money', 25, 'SY1672', 'MOMO', 10000, 10000, 1, '2023-04-17 17:35:53', '2023-04-17 17:38:03', 1681727753, 1681727883, '', 'SY1672', '38812051657', 0),
(80, 'deposit_money', 52, 'WK8573', 'MOMO', 30000, 30000, 1, '2023-04-17 18:26:13', '2023-04-17 18:29:12', 1681730773, 1681730952, '', 'WK8573', '38813517775', 0),
(81, 'deposit_money', 75, 'NV6483', 'MOMO', 60000, 60000, 1, '2023-04-17 18:39:16', '2023-04-17 18:40:21', 1681731556, 1681731621, '', 'NV6483', '38814250586', 0),
(82, 'deposit_money', 59, 'GHDF', 'MOMO', 1000000, 1000000, 1, '2023-04-17 18:49:46', '2023-04-17 18:49:46', 1681732186, 1681732186, '', NULL, NULL, 1),
(83, 'deposit_money', 78, 'WZ4816', 'MOMO', 30000, 30000, 1, '2023-04-17 21:02:26', '2023-04-17 21:04:04', 1681740146, 1681740244, '', 'WZ4816', '38819225942', 0),
(84, 'deposit_money', 17, 'LU2879', 'MBBank', 10000, 10000, 1, '2023-04-17 21:04:45', '2023-04-17 21:07:05', 1681740285, 1681740425, '', 'CUSTOMER LU2879. TU: TRIEU VAN DUNG', 'FT23107350768580\\\\B03', 0),
(85, 'deposit_money', 44, 'JF5768', 'MBBank', 60000, 60000, 1, '2023-04-17 21:24:37', '2023-04-17 21:27:08', 1681741477, 1681741628, '', 'CUSTOMER JF5768. TU: PHAM TAN HUNG', 'FT23107225407086\\\\D92', 0),
(86, 'deposit_money', 80, 'TJ3614', 'MBBank', 30000, 30000, 1, '2023-04-17 21:30:54', '2023-04-17 21:34:07', 1681741854, 1681742047, '', 'CUSTOMER TJ3614. TU: NGUYEN VAN THUC', 'FT23107243837706\\\\E13', 0),
(87, 'deposit_money', 81, 'JS1639', 'MOMO', 80000, 80000, 2, '2023-04-17 21:32:24', '2023-04-17 21:32:24', 1681741944, 1681741944, '', NULL, NULL, 0),
(88, 'deposit_money', 42, 'PWB8', 'MBBank', 2000000, 2000000, 1, '2023-04-17 21:33:27', '2023-04-17 21:33:27', 1681742007, 1681742007, '', NULL, NULL, 1),
(89, 'deposit_money', 41, 'BMUR', 'MOMO', 500000, 500000, 1, '2023-04-17 21:37:12', '2023-04-17 21:37:12', 1681742232, 1681742232, '', NULL, NULL, 1),
(90, 'deposit_money', 82, 'QI3256', 'MBBank', 50000, 50000, 1, '2023-04-17 21:38:26', '2023-04-17 21:40:22', 1681742306, 1681742422, '', 'CUSTOMER QI3256. TU: VO MINH DUC', 'FT23107550009893\\\\D62', 0),
(91, 'deposit_money', 11, 'OR3412', 'MBBank', 33000, 33000, 1, '2023-04-17 21:40:56', '2023-04-17 21:44:05', 1681742456, 1681742645, '', 'CUSTOMER OR3412. TU: LE THANH DUC', 'FT23107982072814\\\\C66', 0),
(92, 'deposit_money', 84, 'SY8457', 'MOMO', 10000, 10000, 1, '2023-04-17 21:41:41', '2023-04-17 21:45:11', 1681742501, 1681742711, '', 'SY8457', '38820618754', 0),
(93, 'deposit_money', 81, 'RQ5928', 'MOMO', 90000, 90000, 1, '2023-04-17 21:55:45', '2023-04-17 21:57:03', 1681743345, 1681743423, '', 'RQ5928', '38820892594', 0),
(94, 'deposit_money', 74, 'AP6739', 'MBBank', 30000, 30000, 1, '2023-04-17 22:06:17', '2023-04-17 22:08:05', 1681743977, 1681744085, '', 'CUSTOMER AP6739. TU: PHAN GIA TAM', 'FT23108717507310\\\\D53', 0),
(95, 'deposit_money', 34, 'KL9578', 'MOMO', 30000, 30000, 1, '2023-04-17 22:07:48', '2023-04-17 22:09:04', 1681744068, 1681744144, '', 'KL9578', '38821179764', 0),
(96, 'deposit_money', 87, 'NE4165', 'MBBank', 12000, 12000, 1, '2023-04-17 22:12:25', '2023-04-17 22:14:07', 1681744345, 1681744447, '', 'CUSTOMER NE4165. TU: DOAN VAN THANG', 'FT23108895908004\\\\C65', 0),
(97, 'deposit_money', 22, 'NM4298', 'MBBank', 765000, 765000, 1, '2023-04-17 22:15:57', '2023-04-17 22:17:05', 1681744557, 1681744625, '', 'CUSTOMER NM4298. TU: LE THANH VINH', 'FT23108598247009\\\\B93', 0),
(98, 'deposit_money', 22, 'UO4238', 'MBBank', 550000, 550000, 1, '2023-04-17 22:50:52', '2023-04-17 22:52:04', 1681746652, 1681746724, '', 'CUSTOMER UO4238. TU: LE THANH VINH', 'FT23108066231376\\\\B93', 0),
(99, 'deposit_money', 88, 'QT9126', 'MOMO', 10000, 10000, 2, '2023-04-17 23:12:10', '2023-04-17 23:12:10', 1681747930, 1681747930, '', NULL, NULL, 0),
(100, 'deposit_money', 88, 'AK6954', 'MOMO', 10100, 10100, 1, '2023-04-17 23:12:36', '2023-04-17 23:13:04', 1681747956, 1681747984, '', 'AK6954', '38822924842', 0),
(101, 'deposit_money', 58, 'LI1589', 'MBBank', 19000, 19000, 1, '2023-04-17 23:19:18', '2023-04-17 23:20:07', 1681748358, 1681748407, '', 'CUSTOMER LI1589 Trace 834340', 'FT23108957937022\\\\BNK', 0),
(102, 'deposit_money', 84, 'R3TH', 'MOMO', 35000, 35000, 1, '2023-04-17 23:58:45', '2023-04-17 23:58:45', 1681750725, 1681750725, '', NULL, NULL, 1),
(103, 'deposit_money', 96, 'TB6241', 'MBBank', 30000, 30000, 1, '2023-04-18 12:16:03', '2023-04-18 12:18:03', 1681794963, 1681795083, '', 'CUSTOMER MBVCB 3393721236 053458 TB6241 CT t u 1035650568 DO PHUC THINH toi 1111 122443333 NGUYEN HOAI AN Ngan hang  Quan Doi  MB  Trace 053458', 'FT23108050301081\\\\BNK', 0),
(104, 'deposit_money', 99, 'KN2546', 'MBBank', 10000, 10000, 1, '2023-04-18 12:25:29', '2023-04-18 12:28:03', 1681795529, 1681795683, '', 'CUSTOMER Thanh toan QR-KN2546. TU: TRAN QUOC LINH', 'FT23108838521290\\\\D28', 0),
(105, 'deposit_money', 100, 'WR6142', 'MBBank', 30000, 30000, 1, '2023-04-18 12:34:24', '2023-04-18 12:36:03', 1681796064, 1681796163, '', 'CUSTOMER WR6142. TU: DINH HAI MINH', 'FT23108159406490\\\\D42', 0),
(106, 'deposit_money', 8, 'WF5824', 'MOMO', 30000, 30000, 1, '2023-04-18 12:57:07', '2023-04-18 12:58:03', 1681797427, 1681797483, '', 'WF5824', '38838961428', 0),
(107, 'deposit_money', 28, 'OJ9432', 'MBBank', 14650, 14650, 1, '2023-04-18 12:58:19', '2023-04-18 13:00:05', 1681797499, 1681797605, '', 'CUSTOMER OJ9432. TU: TRAN THI NGOC LAN', 'FT23108251546766\\\\B84', 0),
(108, 'deposit_money', 74, 'UD7642', 'MBBank', 15000, 15000, 2, '2023-04-18 13:05:35', '2023-04-18 13:05:35', 1681797935, 1681797935, '', NULL, NULL, 0),
(109, 'deposit_money', 74, 'ZX6735', 'MBBank', 25000, 25000, 1, '2023-04-18 13:06:09', '2023-04-18 13:08:04', 1681797969, 1681798084, '', 'CUSTOMER ZX6735. TU: PHAN GIA TAM', 'FT23108806130672\\\\D53', 0),
(110, 'deposit_money', 101, 'QP5839', 'MBBank', 20000, 20000, 1, '2023-04-18 13:10:35', '2023-04-18 13:12:04', 1681798235, 1681798324, '', 'CUSTOMER QP5839. TU: PHAM TIEN DUY', 'FT23108603434979\\\\C25', 0),
(111, 'deposit_money', 102, 'KV4789', 'MOMO', 9000, 9000, 1, '2023-04-18 13:10:36', '2023-04-18 13:12:03', 1681798236, 1681798323, '', 'KV4789', '38839447687', 0),
(112, 'deposit_money', 102, 'EK5186', 'MOMO', 10000, 10000, 2, '2023-04-18 13:11:58', '2023-04-18 13:11:58', 1681798318, 1681798318, '', NULL, NULL, 0),
(113, 'deposit_money', 102, 'KI1283', 'MOMO', 18000, 18000, 1, '2023-04-18 13:13:50', '2023-04-18 13:15:05', 1681798430, 1681798505, '', 'KI1283', '38839568144', 0),
(114, 'deposit_money', 102, 'FC3214', 'MOMO', 6000, 6000, 1, '2023-04-18 13:19:50', '2023-04-18 13:21:03', 1681798790, 1681798863, '', 'FC3214', '38839719043', 0),
(115, 'deposit_money', 93, 'IQ6329', 'MOMO', 160000, 160000, 2, '2023-04-18 13:27:24', '2023-04-18 13:27:24', 1681799244, 1681799244, '', NULL, NULL, 0),
(116, 'deposit_money', 93, 'IL9863', 'MOMO', 90000, 90000, 1, '2023-04-18 13:27:38', '2023-04-18 13:30:07', 1681799258, 1681799407, '', 'IL9863', '38839854789', 0),
(117, 'deposit_money', 103, 'NY3854', 'MOMO', 100000, 100000, 1, '2023-04-18 13:29:25', '2023-04-18 13:30:07', 1681799365, 1681799407, '', 'NY3854', '38839960657', 0),
(118, 'deposit_money', 104, 'ZE5462', 'MBBank', 10000, 10000, 2, '2023-04-18 13:30:15', '2023-04-18 13:30:15', 1681799415, 1681799415, '', NULL, NULL, 0),
(119, 'deposit_money', 105, 'EL3954', 'MOMO', 10000, 10000, 1, '2023-04-18 13:31:46', '2023-04-18 13:33:04', 1681799506, 1681799584, '', 'EL3954', '38840059517', 0),
(120, 'deposit_money', 106, 'UD1597', 'MOMO', 20000, 20000, 1, '2023-04-18 14:16:05', '2023-04-18 14:18:05', 1681802165, 1681802285, '', 'UD1597', '38841560816', 0),
(121, 'deposit_money', 74, 'OV4236', 'MBBank', 17000, 17000, 1, '2023-04-18 14:49:26', '2023-04-18 14:51:06', 1681804166, 1681804266, '', 'CUSTOMER OV4236. TU: PHAN GIA TAM', 'FT23108164005410\\\\D53', 0),
(122, 'deposit_money', 22, 'GF7682', 'MBBank', 160000, 160000, 2, '2023-04-18 15:17:27', '2023-04-18 15:17:27', 1681805847, 1681805847, '', NULL, NULL, 0),
(123, 'deposit_money', 22, 'RO7521', 'MBBank', 165000, 165000, 1, '2023-04-18 15:17:37', '2023-04-18 15:19:13', 1681805857, 1681805953, '', 'CUSTOMER RO7521. TU: LE THANH VINH', 'FT23108701908979\\\\B93', 0),
(124, 'deposit_money', 110, 'JM3496', 'MBBank', 10000, 10000, 1, '2023-04-18 18:16:25', '2023-04-18 18:18:02', 1681816585, 1681816682, '', 'CUSTOMER JM3496. TU: NGUYEN PHUOC LOI', 'FT23108799193036\\\\B90', 0),
(125, 'deposit_money', 76, 'QS1863', 'MOMO', 12000, 12000, 1, '2023-04-18 18:40:49', '2023-04-18 18:42:13', 1681818049, 1681818133, '', 'QS1863', '38850335773', 0),
(126, 'deposit_money', 61, 'HU3479', 'MBBank', 50000, 50000, 2, '2023-04-18 19:36:25', '2023-04-18 19:36:25', 1681821385, 1681821385, '', NULL, NULL, 0),
(127, 'deposit_money', 61, 'QK6874', 'MBBank', 48000, 48000, 1, '2023-04-18 19:37:38', '2023-04-18 19:56:19', 1681821458, 1681822579, '', 'CUSTOMER Thanh toan QR-QK6874. TU: VU TIEN NAM', 'FT23108637093445\\\\B77', 0),
(128, 'deposit_money', 2, 'TO6795', 'MBBank', 100000, 100000, 2, '2023-04-18 19:49:09', '2023-04-18 19:49:09', 1681822149, 1681822149, '', NULL, NULL, 0),
(129, 'deposit_money', 74, 'DQ9756', 'MOMO', 45000, 45000, 1, '2023-04-18 20:36:33', '2023-04-18 20:38:04', 1681824993, 1681825084, '', 'DQ9756', '38854297033', 0),
(130, 'deposit_money', 65, 'WI8637', 'MBBank', 35000, 35000, 1, '2023-04-18 20:55:07', '2023-04-18 20:57:03', 1681826107, 1681826223, '', 'CUSTOMER WI8637 Trace 210918', 'FT23108014900002\\\\BNK', 0),
(131, 'deposit_money', 17, 'VZ8164', 'MBBank', 10000, 10000, 1, '2023-04-18 20:55:18', '2023-04-18 20:58:07', 1681826118, 1681826287, '', 'CUSTOMER VZ8164. TU: TRIEU VAN DUNG', 'FT23108890800464\\\\B03', 0),
(132, 'deposit_money', 111, 'ZL6531', 'MOMO', 12000, 12000, 1, '2023-04-18 20:56:38', '2023-04-18 20:58:07', 1681826198, 1681826287, '', 'ZL6531', '38855301709', 0),
(133, 'deposit_money', 80, 'AL8247', 'MBBank', 120000, 120000, 1, '2023-04-18 20:57:20', '2023-04-18 20:59:24', 1681826240, 1681826364, '', 'CUSTOMER AL8247. TU: NGUYEN VAN THUC', 'FT23108982005025\\\\E13', 0),
(134, 'deposit_money', 103, 'GW4235', 'MOMO', 50000, 50000, 1, '2023-04-18 21:19:36', '2023-04-18 21:20:06', 1681827576, 1681827606, '', 'GW4235', '38855777326', 0),
(135, 'deposit_money', 113, 'CN1942', 'MOMO', 5000, 5000, 2, '2023-04-18 21:19:37', '2023-04-18 21:19:37', 1681827577, 1681827577, '', NULL, NULL, 0),
(136, 'deposit_money', 115, 'DK4672', 'MOMO', 70000, 70000, 1, '2023-04-18 21:31:16', '2023-04-18 21:33:03', 1681828276, 1681828383, '', 'DK4672', '38856313930', 0),
(137, 'deposit_money', 36, 'DUMQ', 'MOMO', 1500000, 1500000, 1, '2023-04-18 22:32:31', '2023-04-18 22:32:31', 1681831951, 1681831951, '', NULL, NULL, 1),
(138, 'deposit_money', 68, 'SO8725', 'MBBank', 12000, 12000, 1, '2023-04-18 22:34:56', '2023-04-18 22:36:06', 1681832096, 1681832166, '', 'CUSTOMER SO8725. TU: LA TUAN KHANG', 'FT23109593745752\\\\D74', 0),
(139, 'deposit_money', 94, 'DO4982', 'MOMO', 20000, 20000, 2, '2023-04-18 22:58:57', '2023-04-18 22:58:57', 1681833537, 1681833537, '', NULL, NULL, 0),
(140, 'deposit_money', 94, 'YP5629', 'MOMO', 24000, 24000, 1, '2023-04-18 23:02:31', '2023-04-19 00:56:07', 1681833751, 1681840567, '', 'YP5629', '38858784489', 0),
(141, 'deposit_money', 108, 'XB8476', 'MBBank', 10000, 10000, 2, '2023-04-19 00:16:31', '2023-04-19 00:16:31', 1681838191, 1681838191, '', NULL, NULL, 0),
(142, 'deposit_money', 105, 'SK7124', 'MOMO', 10000, 10000, 1, '2023-04-19 00:28:43', '2023-04-19 00:56:06', 1681838923, 1681840566, '', 'SK7124', '38860328331', 0),
(143, 'deposit_money', 98, 'YZFR', 'MBBank', 15000, 15000, 1, '2023-04-19 00:38:17', '2023-04-19 00:38:17', 1681839497, 1681839497, '', NULL, NULL, 1),
(144, 'deposit_money', 31, '3EYT', 'MBBank', 60000, 60000, 1, '2023-04-19 00:41:06', '2023-04-19 00:41:06', 1681839666, 1681839666, '', NULL, NULL, 1),
(145, 'deposit_money', 53, 'NX7845', 'MBBank', 11000, 11000, 2, '2023-04-19 00:57:29', '2023-04-19 00:57:29', 1681840649, 1681840649, '', NULL, NULL, 0),
(146, 'deposit_money', 119, 'NP1569', 'MOMO', 30000, 30000, 1, '2023-04-19 01:13:43', '2023-04-19 01:15:06', 1681841623, 1681841706, '', 'NP1569', '38860962151', 0),
(147, 'deposit_money', 120, 'HL9732', 'MOMO', 30000, 30000, 1, '2023-04-19 01:46:35', '2023-04-19 01:48:19', 1681843595, 1681843699, '', 'HL9732', '38861248757', 0),
(148, 'deposit_money', 119, 'SP6217', 'MOMO', 50000, 50000, 1, '2023-04-19 02:58:19', '2023-04-19 02:59:04', 1681847899, 1681847944, '', 'SP6217', '38862048931', 0),
(149, 'deposit_money', 91, 'XG4329', 'MBBank', 15000, 15000, 2, '2023-04-19 06:00:53', '2023-04-19 06:00:53', 1681858853, 1681858853, '', NULL, NULL, 0),
(150, 'deposit_money', 91, 'JG7381', 'MOMO', 15000, 15000, 1, '2023-04-19 06:02:45', '2023-04-19 06:06:03', 1681858965, 1681859163, '', 'JG7381', '38863361296', 0),
(151, 'deposit_money', 81, 'DY6749', 'MBBank', 105000, 105000, 2, '2023-04-19 06:09:44', '2023-04-19 06:09:44', 1681859384, 1681859384, '', NULL, NULL, 0),
(152, 'deposit_money', 81, 'OG8137', 'MOMO', 105000, 105000, 2, '2023-04-19 06:13:46', '2023-04-19 06:13:46', 1681859626, 1681859626, '', NULL, NULL, 0),
(153, 'deposit_money', 81, 'QU2875', 'MOMO', 105000, 105000, 2, '2023-04-19 06:14:13', '2023-04-19 06:14:13', 1681859653, 1681859653, '', NULL, NULL, 0),
(154, 'deposit_money', 81, 'AQ2815', 'MOMO', 60000, 60000, 1, '2023-04-19 06:15:46', '2023-04-19 06:17:02', 1681859746, 1681859822, '', 'AQ2815', '38863415899', 0),
(155, 'deposit_money', 32, 'GJ9634', 'MOMO', 20000, 20000, 1, '2023-04-19 11:42:04', '2023-04-19 12:05:04', 1681879324, 1681880704, '', 'GJ9634', '38872208076', 0),
(156, 'deposit_money', 124, 'EU3895', 'MOMO', 30000, 30000, 1, '2023-04-19 13:13:43', '2023-04-19 13:15:05', 1681884823, 1681884905, '', 'EU3895', '38875465801', 0),
(157, 'deposit_money', 131, 'LC2598', 'MBBank', 12000, 12000, 2, '2023-04-21 01:02:31', '2023-04-21 01:02:31', 1682013751, 1682013751, '', NULL, NULL, 0),
(158, 'deposit_money', 135, 'BA2749', 'MBBank', 50000, 50000, 2, '2023-04-22 21:51:05', '2023-04-22 21:51:05', 1682175065, 1682175065, '', NULL, NULL, 0),
(159, 'deposit_money', 135, 'JP7146', 'MBBank', 50000, 50000, 2, '2023-04-22 21:53:31', '2023-04-22 21:53:31', 1682175211, 1682175211, '', NULL, NULL, 0),
(160, 'deposit_money', 119, 'QU9647', 'MOMO', 30000, 30000, 2, '2023-04-23 03:47:08', '2023-04-23 03:47:08', 1682196428, 1682196428, '', NULL, NULL, 0),
(161, 'deposit_money', 134, 'IU6243', 'MOMO', 2147483647, 2147483647, 2, '2023-04-23 15:18:42', '2023-04-23 15:18:42', 1682237922, 1682237922, '', NULL, NULL, 0),
(162, 'deposit_money', 60, 'MW8931', 'MOMO', 30000, 30000, 2, '2023-04-23 17:11:04', '2023-04-23 17:11:04', 1682244664, 1682244664, '', NULL, NULL, 0),
(163, 'deposit_money', 137, 'RB1283', 'MOMO', 1000000, 1000000, 2, '2023-04-23 18:50:26', '2023-04-23 18:50:26', 1682250626, 1682250626, '', NULL, NULL, 0),
(164, 'deposit_money', 15, 'TN4829', 'MOMO', 10000, 10000, 2, '2023-04-23 19:22:30', '2023-04-23 19:22:30', 1682252550, 1682252550, '', NULL, NULL, 0),
(165, 'deposit_money', 15, 'JP1246', 'MOMO', 10000, 10000, 2, '2023-04-23 19:24:25', '2023-04-23 19:24:25', 1682252665, 1682252665, '', NULL, NULL, 0),
(166, 'deposit_money', 138, 'GX9482', 'MBBank', 10000, 10000, 2, '2023-04-23 21:20:51', '2023-04-23 21:20:51', 1682259651, 1682259651, '', NULL, NULL, 0),
(167, 'deposit_money', 140, 'JA3187', 'MOMO', 10000, 10000, 2, '2023-04-24 15:48:05', '2023-04-24 15:48:05', 1682326085, 1682326085, '', NULL, NULL, 0),
(168, 'deposit_money', 142, 'AZ3915', 'MOMO', 10000, 10000, 2, '2023-04-25 22:35:56', '2023-04-25 22:35:56', 1682436956, 1682436956, '', NULL, NULL, 0),
(169, 'deposit_money', 94, 'JUAW', 'MOMO', 45000, 45000, 1, '2023-04-26 15:19:53', '2023-04-26 15:19:53', 1682497193, 1682497193, '', NULL, NULL, 1),
(170, 'deposit_money', 68, 'PF8716', 'MBBank', 10000, 10000, 1, '2023-04-26 15:37:35', '2023-04-26 15:39:02', 1682498255, 1682498342, '', 'CUSTOMER PF8716. TU: LA TUAN KHANG', 'FT23116457718922\\\\D74', 0),
(171, 'deposit_money', 100, 'HF8347', 'MBBank', 30000, 30000, 1, '2023-04-26 16:14:35', '2023-04-26 16:16:02', 1682500475, 1682500562, '', 'CUSTOMER HF8347. TU: DINH HAI MINH', 'FT23116002611494\\\\D42', 0),
(172, 'deposit_money', 15, 'AH7159', 'MOMO', 14000, 14000, 1, '2023-04-26 16:18:22', '2023-04-26 16:20:03', 1682500702, 1682500803, '', 'AH7159', '39149795911', 0),
(173, 'deposit_money', 77, 'CR2547', 'MOMO', 12000, 12000, 2, '2023-04-26 18:15:15', '2023-04-26 18:15:15', 1682507715, 1682507715, '', NULL, NULL, 0),
(174, 'deposit_money', 80, 'CD8541', 'MBBank', 30000, 30000, 1, '2023-04-26 18:15:20', '2023-04-26 18:17:02', 1682507720, 1682507822, '', 'CUSTOMER CD8541. TU: NGUYEN VAN THUC', 'FT23116211254973\\\\E13', 0),
(175, 'deposit_money', 124, 'FK6153', 'MBBank', 60000, 60000, 1, '2023-04-26 18:17:15', '2023-04-26 18:20:10', 1682507835, 1682508010, '', 'CUSTOMER Thanh toan QR-FK6153. TU: LO KHANH HIEU', 'FT23116042389325\\\\D72', 0),
(176, 'deposit_money', 77, 'JP1864', 'MOMO', 12000, 12000, 1, '2023-04-26 18:20:40', '2023-04-26 18:22:02', 1682508040, 1682508122, '', 'JP1864', '39154661449', 0),
(177, 'deposit_money', 105, 'CN6342', 'MOMO', 12000, 12000, 1, '2023-04-26 18:39:10', '2023-04-26 18:40:03', 1682509150, 1682509203, '', 'CN6342', '39155498839', 0),
(178, 'deposit_money', 149, 'AJ1536', 'MBBank', 1000, 1000, 2, '2023-04-26 23:29:13', '2023-04-26 23:29:13', 1682526553, 1682526553, '', NULL, NULL, 0),
(179, 'deposit_money', 10, '2MER', 'MOMO', 100000, 100000, 1, '2023-04-27 21:18:27', '2023-04-27 21:18:27', 1682605107, 1682605107, '', NULL, NULL, 1),
(180, 'deposit_money', 1, 'SUC9', 'MBBank', 20000, 20000, 1, '2023-04-27 21:22:40', '2023-04-27 21:22:40', 1682605360, 1682605360, '', NULL, NULL, 1),
(181, 'deposit_money', 32, 'DI9712', 'MOMO', 12000, 12000, 1, '2023-04-28 11:55:58', '2023-04-28 11:57:01', 1682657758, 1682657821, '', 'DI9712', '39221128342', 0),
(182, 'deposit_money', 151, 'LY2168', 'MOMO', 10000, 10000, 2, '2023-04-29 11:46:38', '2023-04-29 11:46:38', 1682743598, 1682743598, '', NULL, NULL, 0),
(183, 'deposit_money', 154, 'RI1953', 'MOMO', 20000, 20000, 1, '2023-04-30 00:56:24', '2023-04-30 00:57:03', 1682790984, 1682791023, '', 'RI1953', '39284701585', 0),
(184, 'deposit_money', 32, 'EM4197', 'MOMO', 26000, 26000, 1, '2023-04-30 06:31:38', '2023-04-30 06:33:02', 1682811098, 1682811182, '', 'EM4197', '39287851981', 0),
(185, 'deposit_money', 97, 'YH8214', 'MOMO', 10000, 10000, 1, '2023-04-30 09:40:00', '2023-04-30 09:41:09', 1682822400, 1682822469, '', 'YH8214', '39291650600', 0),
(186, 'deposit_money', 116, 'KQ8147', 'MOMO', 30000, 30000, 2, '2023-04-30 10:30:39', '2023-04-30 10:30:39', 1682825439, 1682825439, '', NULL, NULL, 0),
(187, 'deposit_money', 156, 'TH9452', 'MBBank', 6000, 6000, 1, '2023-04-30 15:03:55', '2023-04-30 15:06:33', 1682841835, 1682841993, '', 'CUSTOMER TH9452 Trace 792062', 'FT23121006651723\\\\BNK', 0),
(188, 'deposit_money', 116, 'UN8723', 'MOMO', 30000, 30000, 1, '2023-04-30 15:18:27', '2023-04-30 15:47:21', 1682842707, 1682844441, '', 'UN8723', '39301201365', 0),
(189, 'deposit_money', 116, 'OQ4691', 'MOMO', 30000, 30000, 2, '2023-04-30 15:27:12', '2023-04-30 15:27:12', 1682843232, 1682843232, '', NULL, NULL, 0),
(190, 'deposit_money', 57, 'NP8657', 'MBBank', 6000, 6000, 2, '2023-05-01 08:47:22', '2023-05-01 08:47:22', 1682905642, 1682905642, '', NULL, NULL, 0),
(191, 'deposit_money', 158, 'JD2967', 'MOMO', 20000, 20000, 1, '2023-05-01 10:26:17', '2023-05-01 10:28:09', 1682911577, 1682911689, '', 'JD2967', '39325737203', 0),
(192, 'deposit_money', 159, 'JF7241', 'MBBank', 10000, 10000, 1, '2023-05-01 20:55:01', '2023-05-01 20:58:05', 1682949301, 1682949485, '', 'CUSTOMER JF7241. TU: PHAM GIA MAN', 'FT23123022488846\\\\E24', 0),
(193, 'deposit_money', 131, 'GM9687', 'MOMO', 10000, 10000, 2, '2023-05-03 22:17:28', '2023-05-03 22:17:28', 1683127048, 1683127048, '', NULL, NULL, 0),
(194, 'deposit_money', 161, 'CP5238', 'MBBank', 20000, 20000, 1, '2023-05-03 23:13:41', '2023-05-03 23:15:05', 1683130421, 1683130505, '', 'CUSTOMER Thanh toan QR-CP5238. TU: KIEU MINH CONG', 'FT23124960240610\\\\B71', 0),
(195, 'deposit_money', 163, 'NB7829', 'MOMO', 10000, 10000, 2, '2023-05-04 11:53:43', '2023-05-04 11:53:43', 1683176023, 1683176023, '', NULL, NULL, 0),
(196, 'deposit_money', 166, 'FI6125', 'MOMO', 10000, 10000, 2, '2023-05-06 11:47:46', '2023-05-06 11:47:46', 1683348466, 1683348466, '', NULL, NULL, 0),
(197, 'deposit_money', 167, 'WA3162', 'MOMO', 60000, 60000, 2, '2023-05-06 20:30:48', '2023-05-06 20:30:48', 1683379848, 1683379848, '', NULL, NULL, 0),
(198, 'deposit_money', 167, 'UM9463', 'MOMO', 6000, 6000, 2, '2023-05-06 20:30:59', '2023-05-06 20:30:59', 1683379859, 1683379859, '', NULL, NULL, 0),
(199, 'deposit_money', 21, 'DL7391', 'MOMO', 18000, 18000, 1, '2023-05-07 18:55:32', '2023-05-07 19:09:03', 1683460532, 1683461343, '', 'DL7391', '39580194944', 0),
(200, 'deposit_money', 32, 'DI6351', 'MOMO', 12000, 12000, 1, '2023-05-07 19:05:51', '2023-05-07 19:09:03', 1683461151, 1683461343, '', 'DI6351', '39580364583', 0),
(201, 'deposit_money', 82, 'DY8937', 'MBBank', 13000, 13000, 1, '2023-05-07 22:21:42', '2023-05-07 22:29:41', 1683472902, 1683473381, '', 'CUSTOMER DY8937. TU: VO MINH DUC', 'FT23128026204807\\\\D62', 0),
(202, 'deposit_money', 15, 'QM6837', 'MOMO', 12000, 12000, 1, '2023-05-07 23:15:14', '2023-05-07 23:16:03', 1683476114, 1683476163, '', 'QM6837', '39588686988', 0),
(203, 'deposit_money', 171, 'CM4982', 'MOMO', 35000, 35000, 1, '2023-05-08 10:17:24', '2023-05-08 10:19:01', 1683515844, 1683515941, '', 'CM4982', '39600174716', 0),
(204, 'deposit_money', 173, 'GA5237', 'MOMO', 15000, 15000, 1, '2023-05-08 15:04:20', '2023-05-08 15:07:03', 1683533060, 1683533223, '', 'GA5237', '39610834314', 0),
(205, 'deposit_money', 97, 'GX9187', 'MOMO', 15000, 15000, 1, '2023-05-08 18:21:43', '2023-05-08 18:23:02', 1683544903, 1683544982, '', 'GX9187', '39619102859', 0),
(206, 'deposit_money', 171, 'JR9218', 'MOMO', 10000, 10000, 1, '2023-05-08 19:06:06', '2023-05-08 19:08:03', 1683547566, 1683547683, '', 'JR9218', '39620826260', 0),
(207, 'deposit_money', 174, 'RX4956', 'MOMO', 10000, 10000, 1, '2023-05-09 13:18:02', '2023-05-09 13:20:07', 1683613082, 1683613207, '', 'RX4956', '39648518283', 0),
(208, 'deposit_money', 127, 'HR8924', 'MBBank', 15000, 15000, 2, '2023-05-09 20:25:53', '2023-05-09 20:25:53', 1683638753, 1683638753, '', NULL, NULL, 0),
(209, 'deposit_money', 127, 'WU5728', 'MBBank', 15000, 15000, 1, '2023-05-09 20:29:34', '2023-05-10 11:35:07', 1683638974, 1683693307, '', 'CUSTOMER Thanh toan QR-WU5728. TU: NGUYEN NHAT MINH', 'FT23129505440345\\\\B99', 0),
(210, 'deposit_money', 2, 'RK2549', 'MBBank', 80000, 80000, 1, '2023-05-10 21:34:17', '2023-05-10 21:38:04', 1683729257, 1683729484, '', 'CUSTOMER RK2549. TU: PHAN THI HONG NGOC', 'FT23130197557322\\\\D09', 0),
(211, 'deposit_money', 26, 'UW7529', 'MBBank', 20000, 20000, 1, '2023-05-10 21:54:48', '2023-05-10 21:56:04', 1683730488, 1683730564, '', 'CUSTOMER Thanh toan QR-UW7529. TU: LAI VAN SI', 'FT23130297870001\\\\B81', 0),
(212, 'deposit_money', 21, 'ZM6275', 'MOMO', 20000, 20000, 1, '2023-05-11 10:45:59', '2023-05-11 10:50:05', 1683776759, 1683777005, '', 'ZM6275', '39734792965', 0),
(213, 'deposit_money', 11, 'IS4761', 'MOMO', 20000, 20000, 1, '2023-05-11 12:23:42', '2023-05-11 12:25:07', 1683782622, 1683782707, '', 'IS4761', '39738984621', 0),
(214, 'deposit_money', 180, 'BE4596', 'MOMO', 20000, 20000, 1, '2023-05-11 15:18:57', '2023-05-11 15:20:04', 1683793137, 1683793204, '', 'BE4596', '39745834283', 0),
(215, 'deposit_money', 181, 'GW4579', 'MOMO', 50000, 50000, 1, '2023-05-12 00:11:07', '2023-05-12 00:12:03', 1683825067, 1683825123, '', 'GW4579', '39765675017', 0),
(216, 'deposit_money', 140, 'FR4852', 'MOMO', 10000, 10000, 2, '2023-05-12 20:13:20', '2023-05-12 20:13:20', 1683897200, 1683897200, '', NULL, NULL, 0),
(217, 'deposit_money', 140, 'JA2135', 'MBBank', 30000, 30000, 1, '2023-05-12 23:24:49', '2023-05-13 16:52:06', 1683908689, 1683971526, '', 'CUSTOMER Thanh toan QR-JA2135. TU: NGUYEN DANG KHOI', 'FT23132365312082\\\\B39', 0),
(218, 'deposit_money', 97, 'MR3586', 'MOMO', 10000, 10000, 1, '2023-05-13 00:50:55', '2023-05-13 00:52:03', 1683913855, 1683913923, '', 'MR3586', '39809277144', 0),
(219, 'deposit_money', 126, 'MO1385', 'MOMO', 30000, 30000, 1, '2023-05-13 05:04:11', '2023-05-13 05:07:02', 1683929051, 1683929222, '', 'MO1385', '39811983199', 0),
(220, 'deposit_money', 32, 'TC6321', 'MOMO', 5000, 5000, 2, '2023-05-13 08:24:13', '2023-05-13 08:24:13', 1683941053, 1683941053, '', NULL, NULL, 0),
(221, 'deposit_money', 32, 'ZF7329', 'MOMO', 3000, 3000, 2, '2023-05-13 08:26:28', '2023-05-13 08:26:28', 1683941188, 1683941188, '', NULL, NULL, 0),
(222, 'deposit_money', 183, 'HO2451', 'MOMO', 10000, 10000, 1, '2023-05-13 08:27:33', '2023-05-13 08:30:03', 1683941253, 1683941403, '', 'HO2451', '39815629141', 0),
(223, 'deposit_money', 185, 'OG5741', 'MOMO', 5000, 5000, 2, '2023-05-13 09:33:48', '2023-05-13 09:33:48', 1683945228, 1683945228, '', NULL, NULL, 0),
(224, 'deposit_money', 185, 'HU9738', 'MOMO', 2000, 2000, 2, '2023-05-13 09:34:07', '2023-05-13 09:34:07', 1683945247, 1683945247, '', NULL, NULL, 0),
(225, 'deposit_money', 185, 'RI2751', 'MOMO', 2, 2, 2, '2023-05-13 09:34:24', '2023-05-13 09:34:24', 1683945264, 1683945264, '', NULL, NULL, 0),
(226, 'deposit_money', 186, 'UJ5783', 'MOMO', 6000, 6000, 2, '2023-05-13 09:35:08', '2023-05-13 09:35:08', 1683945308, 1683945308, '', NULL, NULL, 0),
(227, 'deposit_money', 186, 'LD6257', 'MOMO', 11000, 11000, 2, '2023-05-13 09:35:57', '2023-05-13 09:35:57', 1683945357, 1683945357, '', NULL, NULL, 0),
(228, 'deposit_money', 186, 'JY8416', 'MOMO', 11000, 11000, 1, '2023-05-13 09:38:20', '2023-05-13 09:39:02', 1683945500, 1683945542, '', 'JY8416', '39817801973', 0),
(229, 'deposit_money', 188, 'YN2689', 'MOMO', 11111, 11111, 1, '2023-05-13 10:04:54', '2023-05-13 10:07:02', 1683947094, 1683947222, '', 'YN2689', '39818487001', 0),
(230, 'deposit_money', 185, 'YH7964', 'MOMO', 3000, 3000, 2, '2023-05-13 10:06:13', '2023-05-13 10:06:13', 1683947173, 1683947173, '', NULL, NULL, 0),
(231, 'deposit_money', 192, 'SH1829', 'MOMO', 30000, 30000, 2, '2023-05-13 17:44:28', '2023-05-13 17:44:28', 1683974668, 1683974668, '', NULL, NULL, 0),
(232, 'deposit_money', 192, 'YM5234', 'MOMO', 20000, 20000, 1, '2023-05-13 17:45:07', '2023-05-13 17:48:02', 1683974707, 1683974882, '', 'YM5234', '39834957257', 0),
(233, 'deposit_money', 192, 'DY2864', 'MOMO', 10000, 10000, 1, '2023-05-13 19:22:06', '2023-05-13 19:23:02', 1683980526, 1683980582, '', 'DY2864', '39838607347', 0),
(234, 'deposit_money', 32, 'KS4567', 'MOMO', 10000, 10000, 2, '2023-05-13 19:49:14', '2023-05-13 19:49:14', 1683982154, 1683982154, '', NULL, NULL, 0),
(235, 'deposit_money', 196, 'NH3987', 'MOMO', 10000, 10000, 2, '2023-05-13 20:08:45', '2023-05-13 20:08:45', 1683983325, 1683983325, '', NULL, NULL, 0),
(236, 'deposit_money', 197, 'GJ8951', 'MBBank', 10500, 10500, 1, '2023-05-13 20:31:57', '2023-05-13 20:34:03', 1683984717, 1683984843, '', 'CUSTOMER GJ8951. TU: NGUYEN NHAT MINH', 'FT23133068929080\\\\B77', 0),
(237, 'deposit_money', 60, 'HF5921', 'MBBank', 15000, 15000, 1, '2023-05-13 23:33:30', '2023-05-13 23:36:03', 1683995610, 1683995763, '', 'CUSTOMER HF5921 Trace 407238', 'FT23135075013673\\\\BNK', 0),
(238, 'deposit_money', 60, 'EN4893', 'MBBank', 150000, 150000, 2, '2023-05-13 23:34:28', '2023-05-13 23:34:28', 1683995668, 1683995668, '', NULL, NULL, 0),
(239, 'deposit_money', 200, 'JR5291', 'MBBank', 20000, 20000, 1, '2023-05-14 15:28:43', '2023-05-14 15:30:04', 1684052923, 1684053004, '', 'CUSTOMER JR5291. TU: TRAN CONG DUNG', 'FT23135896902683\\\\E10', 0),
(240, 'deposit_money', 171, 'GU2469', 'MOMO', 10500, 10500, 1, '2023-05-14 15:48:13', '2023-05-14 15:49:01', 1684054093, 1684054141, '', 'GU2469', '39870054341', 0),
(241, 'deposit_money', 202, 'ZU1834', 'MBBank', 150000, 150000, 1, '2023-05-14 15:51:24', '2023-05-14 15:53:02', 1684054284, 1684054382, '', 'CUSTOMER Thanh toan QR-ZU1834. TU: HOANG VIET ANH', 'FT23135985080624\\\\C65', 0),
(242, 'deposit_money', 201, 'VA6593', 'MBBank', 10000, 10000, 1, '2023-05-14 15:53:33', '2023-05-14 15:56:03', 1684054413, 1684054563, '', 'CUSTOMER MBVCB 3521587418 060224 VA6593 CT t u 1036650545 NGUYEN THANH HOANG toi  1111122443333 NGUYEN HOAI AN Ngan  hang Quan Doi  MB  Trace 060224', 'FT23135202894208\\\\BNK', 0),
(243, 'deposit_money', 34, 'HK3286', 'MBBank', 10000, 10000, 1, '2023-05-14 16:00:24', '2023-05-14 16:02:04', 1684054824, 1684054924, '', 'CUSTOMER HK3286. TU: LUU VAN SANG', 'FT23135814693171\\\\C54', 0),
(244, 'deposit_money', 203, 'KS7291', 'MOMO', 15000, 15000, 1, '2023-05-14 16:24:57', '2023-05-14 16:27:01', 1684056297, 1684056421, '', 'KS7291', '39871057178', 0),
(245, 'deposit_money', 203, 'LV6984', 'MOMO', 75000, 75000, 1, '2023-05-14 18:02:26', '2023-05-14 18:04:03', 1684062146, 1684062243, '', 'LV6984', '39874544773', 0),
(246, 'deposit_money', 203, 'YG5937', 'MOMO', 63000, 63000, 1, '2023-05-14 18:45:51', '2023-05-14 18:47:01', 1684064751, 1684064821, '', 'YG5937', '39876529709', 0),
(247, 'deposit_money', 176, 'CE8461', 'MBBank', 10000, 10000, 1, '2023-05-14 20:06:43', '2023-05-14 20:09:02', 1684069603, 1684069742, '', 'CUSTOMER CE8461. TU: TRAN HOANG PHUOC DUY', 'FT23135221367400\\\\B81', 0),
(248, 'deposit_money', 138, 'RJ5234', 'MOMO', 11000, 11000, 1, '2023-05-15 16:19:38', '2023-05-15 16:22:04', 1684142378, 1684142524, '', 'RJ5234', '39914246451', 0),
(249, 'deposit_money', 97, 'XK8739', 'MOMO', 10000, 10000, 1, '2023-05-15 17:56:17', '2023-05-15 17:58:06', 1684148177, 1684148286, '', 'XK8739', '39919772138', 0),
(250, 'deposit_money', 8, 'YH7385', 'MOMO', 20000, 20000, 1, '2023-05-15 18:02:34', '2023-05-15 18:18:23', 1684148554, 1684149503, '', 'YH7385', '39920818692', 0),
(251, 'deposit_money', 204, 'GJ4253', 'MOMO', 4000, 4000, 2, '2023-05-15 18:35:19', '2023-05-15 18:35:19', 1684150519, 1684150519, '', NULL, NULL, 0),
(252, 'deposit_money', 57, 'IQ5786', 'MOMO', 9000, 9000, 2, '2023-05-15 18:43:43', '2023-05-15 18:43:43', 1684151023, 1684151023, '', NULL, NULL, 0),
(253, 'deposit_money', 57, 'NQ3297', 'MOMO', 9000, 9000, 1, '2023-05-15 18:44:42', '2023-05-15 18:46:03', 1684151082, 1684151163, '', 'NQ3297', '39921891676', 0),
(254, 'deposit_money', 190, 'JX2196', 'MOMO', 20000, 20000, 2, '2023-05-15 18:46:15', '2023-05-15 18:46:15', 1684151175, 1684151175, '', NULL, NULL, 0),
(255, 'deposit_money', 190, 'QA8561', 'MOMO', 20000, 20000, 2, '2023-05-15 18:50:06', '2023-05-15 18:50:06', 1684151406, 1684151406, '', NULL, NULL, 0),
(256, 'deposit_money', 146, 'MB2783', 'MOMO', 10000, 10000, 1, '2023-05-15 19:17:28', '2023-05-15 19:19:02', 1684153048, 1684153142, '', 'MB2783', '39923502367', 0),
(257, 'deposit_money', 8, 'XZ5984', 'MOMO', 35000, 35000, 1, '2023-05-15 19:21:58', '2023-05-15 19:23:06', 1684153318, 1684153386, '', 'XZ5984', '39923624830', 0),
(258, 'deposit_money', 203, 'JO2358', 'MOMO', 35, 35, 1, '2023-05-15 19:50:27', '2023-05-15 19:52:25', 1684155027, 1684155145, '', 'JO2358', '39924966357', 0),
(259, 'deposit_money', 5, 'SL6732', 'MOMO', 10000, 10000, 2, '2023-05-15 20:14:59', '2023-05-15 20:14:59', 1684156499, 1684156499, '', NULL, NULL, 0),
(260, 'deposit_money', 103, 'JO5918', 'MOMO', 10000, 10000, 1, '2023-05-15 20:17:17', '2023-05-15 20:18:03', 1684156637, 1684156683, '', 'JO5918', '39926236610', 0),
(261, 'deposit_money', 5, 'MU2734', 'MOMO', 10000, 10000, 2, '2023-05-15 21:11:33', '2023-05-15 21:11:33', 1684159893, 1684159893, '', NULL, NULL, 0),
(262, 'deposit_money', 5, 'IQ2786', 'MOMO', 10000, 10000, 1, '2023-05-15 21:16:01', '2023-05-15 21:22:54', 1684160161, 1684160574, '', 'IQ2786', '39929008226', 0),
(263, 'deposit_money', 103, 'FM1856', 'MBBank', 210000, 210000, 1, '2023-05-15 21:29:12', '2023-05-15 21:31:22', 1684160952, 1684161082, '', 'CUSTOMER FM1856 Trace 187424', 'FT23135034110400\\\\BNK', 0),
(264, 'deposit_money', 207, 'ST1364', 'MBBank', 10000, 10000, 2, '2023-05-15 21:36:05', '2023-05-15 21:36:05', 1684161365, 1684161365, '', NULL, NULL, 0),
(265, 'deposit_money', 207, 'AO1925', 'MOMO', 10000, 10000, 1, '2023-05-15 21:37:12', '2023-05-15 21:38:05', 1684161432, 1684161485, '', 'AO1925', '39929803292', 0),
(266, 'deposit_money', 166, 'VH4256', 'MBBank', 10000, 10000, 2, '2023-05-15 22:09:48', '2023-05-15 22:09:48', 1684163388, 1684163388, '', NULL, NULL, 0),
(267, 'deposit_money', 209, 'QB2457', 'MOMO', 10000, 10000, 2, '2023-05-15 22:10:19', '2023-05-15 22:10:19', 1684163419, 1684163419, '', NULL, NULL, 0),
(268, 'deposit_money', 166, 'EX8457', 'MOMO', 10000, 10000, 2, '2023-05-15 22:11:41', '2023-05-15 22:11:41', 1684163501, 1684163501, '', NULL, NULL, 0),
(269, 'deposit_money', 57, 'VH8264', 'MOMO', 700, 700, 2, '2023-05-16 01:51:44', '2023-05-16 01:51:44', 1684176704, 1684176704, '', NULL, NULL, 0),
(270, 'deposit_money', 138, 'BK1253', 'MOMO', 14000, 14000, 2, '2023-05-16 06:23:18', '2023-05-16 06:23:18', 1684192998, 1684192998, '', NULL, NULL, 0),
(271, 'deposit_money', 103, 'ML1679', 'MBBank', 80000, 80000, 2, '2023-05-16 18:38:16', '2023-05-16 18:38:16', 1684237096, 1684237096, '', NULL, NULL, 0),
(272, 'deposit_money', 100, 'NO2671', 'MOMO', 10000, 10000, 2, '2023-05-17 05:25:29', '2023-05-17 05:25:29', 1684275929, 1684275929, '', NULL, NULL, 0),
(273, 'deposit_money', 12, 'DV4235', 'MBBank', 10, 10, 2, '2023-05-18 09:30:29', '2023-05-18 09:30:29', 1684377029, 1684377029, '', NULL, NULL, 0),
(274, 'deposit_money', 12, 'MQ9483', 'MBBank', 10000, 10000, 2, '2023-05-18 09:30:48', '2023-05-18 09:30:48', 1684377048, 1684377048, '', NULL, NULL, 0),
(275, 'deposit_money', 215, 'JP8167', 'MBBank', 20000, 20000, 1, '2023-05-19 12:06:06', '2023-05-19 12:08:03', 1684472766, 1684472883, '', 'CUSTOMER JP8167. TU: TRAN ANH TUAN', 'FT23139605001383\\\\E06', 0),
(276, 'deposit_money', 217, 'CJ2853', 'MOMO', 13000, 13000, 2, '2023-05-21 14:36:08', '2023-05-21 14:36:08', 1684654568, 1684654568, '', NULL, NULL, 0),
(277, 'deposit_money', 217, 'VL7698', 'MOMO', 13000, 13000, 2, '2023-05-21 17:41:51', '2023-05-21 17:41:51', 1684665711, 1684665711, '', NULL, NULL, 0),
(278, 'deposit_money', 217, 'EC5263', 'MBBank', 10000, 10000, 2, '2023-05-27 12:26:51', '2023-05-27 12:26:51', 1685165211, 1685165211, '', NULL, NULL, 0),
(279, 'deposit_money', 217, 'DA7681', 'MOMO', 10000, 10000, 2, '2023-05-27 12:27:18', '2023-05-27 12:27:18', 1685165238, 1685165238, '', NULL, NULL, 0),
(280, 'deposit_money', 191, 'TI5921', 'MBBank', 10000, 10000, 1, '2023-05-29 15:48:01', '2023-05-29 15:50:04', 1685350081, 1685350204, '', 'CUSTOMER TI5921. TU: VU HONG DUC', 'FT23149860780120\\\\D01', 0),
(281, 'deposit_money', 226, 'IH5231', 'MOMO', 2000, 2000, 2, '2023-05-31 18:05:03', '2023-05-31 18:05:03', 1685531103, 1685531103, '', NULL, NULL, 0),
(282, 'deposit_money', 232, 'OL7824', 'MOMO', 5000, 5000, 2, '2023-06-08 13:21:22', '2023-06-08 13:21:22', 1686205282, 1686205282, '', NULL, NULL, 0),
(283, 'deposit_money', 226, 'HO4716', 'MOMO', 700, 700, 2, '2023-06-08 18:44:50', '2023-06-08 18:44:50', 1686224690, 1686224690, '', NULL, NULL, 0),
(284, 'deposit_money', 236, 'JI1926', 'MOMO', 5000, 5000, 2, '2023-06-15 01:37:48', '2023-06-15 01:37:48', 1686767868, 1686767868, '', NULL, NULL, 0),
(285, 'deposit_money', 236, 'OX1738', 'MOMO', 5758, 5758, 2, '2023-06-15 01:38:23', '2023-06-15 01:38:23', 1686767903, 1686767903, '', NULL, NULL, 0),
(286, 'deposit_money', 238, 'QV5279', 'MOMO', 20000, 20000, 2, '2023-06-24 02:26:24', '2023-06-24 02:26:24', 1687548384, 1687548384, '', NULL, NULL, 0),
(287, 'deposit_money', 241, 'AU8593', 'MBBank', 14000, 14000, 2, '2023-06-24 07:04:39', '2023-06-24 07:04:39', 1687565079, 1687565079, '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ip_white`
--

CREATE TABLE `ip_white` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lang` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `icon` text COLLATE utf8_vietnamese_ci,
  `lang_default` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `lang`, `icon`, `lang_default`, `status`) VALUES
(8, 'Vietnamese', 'assets/storage/flags/flag_Vietnamese.png', 1, 1),
(16, 'English', 'assets/storage/flags/flag_English.png', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `action` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `ip`, `device`, `createdate`, `action`) VALUES
(1, 1, '116.97.106.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '2023-07-21 21:40:24', 'Thực hiện tạo tài khoản');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log_ref`
--

CREATE TABLE `log_ref` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `reason` text COLLATE utf8_vietnamese_ci,
  `sotientruoc` float NOT NULL DEFAULT '0',
  `sotienthaydoi` float NOT NULL DEFAULT '0',
  `sotienhientai` float NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `href` text COLLATE utf8_vietnamese_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `target` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_vietnamese_ci,
  `content` longtext COLLATE utf8_vietnamese_ci,
  `createdate` datetime NOT NULL,
  `timeago` text COLLATE utf8_vietnamese_ci,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nowpayments`
--

CREATE TABLE `nowpayments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `payment_id` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `invoice_id` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `payment_status` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `pay_address` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `price_amount` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `price_currency` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `pay_amount` float NOT NULL DEFAULT '0',
  `actually_paid` float NOT NULL DEFAULT '0',
  `pay_currency` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `order_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `outcome_amount` float NOT NULL DEFAULT '0',
  `outcome_currency` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `name` blob,
  `api_trans_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `id_connect_api` int(11) NOT NULL DEFAULT '0',
  `seller` int(11) NOT NULL DEFAULT '0',
  `buyer` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `document_id` int(11) NOT NULL DEFAULT '0',
  `store_fanpage_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `pay` int(11) NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `display` int(11) NOT NULL DEFAULT '1',
  `fake` int(11) NOT NULL DEFAULT '0',
  `refund` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_autofb`
--

CREATE TABLE `order_autofb` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `id_rate_autofb` int(11) NOT NULL DEFAULT '0',
  `insertId` int(11) DEFAULT '0',
  `payment` int(11) NOT NULL DEFAULT '0',
  `payment_api` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `subscribers` int(11) NOT NULL DEFAULT '0',
  `count_success` int(11) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_vietnamese_ci,
  `server` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `update_gettime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_service`
--

CREATE TABLE `order_service` (
  `id` int(11) NOT NULL,
  `buyer` int(11) NOT NULL DEFAULT '0',
  `id_api` varchar(50) DEFAULT NULL,
  `server` text,
  `service_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `remains` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `url` text,
  `note` text,
  `trans_id` varchar(50) DEFAULT NULL,
  `comment` text,
  `task_note` text,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `update_gettime` datetime NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `refund` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `otp_history`
--

CREATE TABLE `otp_history` (
  `id` int(11) NOT NULL,
  `transid` text,
  `id_service_otp` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `number` text,
  `id_order_api` text,
  `app` text,
  `price` float NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `code` text,
  `sms` text,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_flutterwave`
--

CREATE TABLE `payment_flutterwave` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tx_ref` varchar(55) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `currency` text,
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `status` varchar(55) NOT NULL DEFAULT 'pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_paypal`
--

CREATE TABLE `payment_paypal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trans_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_pm`
--

CREATE TABLE `payment_pm` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `payment_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_date` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `payment_pm`
--

INSERT INTO `payment_pm` (`id`, `user_id`, `payment_id`, `amount`, `price`, `create_date`, `create_time`, `update_date`, `update_time`, `status`) VALUES
(1, 3, 'PKHA_1681616180', 0, 0, '2023-04-16 10:36:20', 1681616180, '2023-04-16 10:36:20', 1681616180, 0),
(2, 66, 'LFCH_1681690671', 0, 0, '2023-04-17 07:17:51', 1681690671, '2023-04-17 07:17:51', 1681690671, 0),
(3, 68, 'ZSAU_1681700478', 0, 0, '2023-04-17 10:01:18', 1681700478, '2023-04-17 10:01:18', 1681700478, 0),
(4, 69, 'EGAD_1681702117', 0, 0, '2023-04-17 10:28:37', 1681702117, '2023-04-17 10:28:37', 1681702117, 0),
(5, 90, 'ZLGY_1681751567', 0, 0, '2023-04-18 00:12:47', 1681751567, '2023-04-18 00:12:47', 1681751567, 0),
(6, 88, 'XQAJ_1681826052', 0, 0, '2023-04-18 20:54:12', 1681826052, '2023-04-18 20:54:12', 1681826052, 0),
(7, 53, 'PKYM_1681830797', 0, 0, '2023-04-18 22:13:17', 1681830797, '2023-04-18 22:13:17', 1681830797, 0),
(8, 26, 'ADIE_1682044582', 0, 0, '2023-04-21 09:36:22', 1682044582, '2023-04-21 09:36:22', 1682044582, 0),
(9, 159, 'MEGS_1682950080', 0, 0, '2023-05-01 21:08:00', 1682950080, '2023-05-01 21:08:00', 1682950080, 0),
(10, 127, 'IDBT_1683727587', 0, 0, '2023-05-10 21:06:27', 1683727587, '2023-05-10 21:06:27', 1683727587, 0),
(11, 176, 'UJSB_1683734741', 0, 0, '2023-05-10 23:05:41', 1683734741, '2023-05-10 23:05:41', 1683734741, 0),
(12, 214, 'PBSY_1684230432', 0, 0, '2023-05-16 16:47:12', 1684230432, '2023-05-16 16:47:12', 1684230432, 0),
(13, 222, 'AOZT_1684862737', 0, 0, '2023-05-24 00:25:37', 1684862737, '2023-05-24 00:25:37', 1684862737, 0),
(14, 235, 'ZKDT_1687017498', 0, 0, '2023-06-17 22:58:18', 1687017498, '2023-06-17 22:58:18', 1687017498, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_squadco`
--

CREATE TABLE `payment_squadco` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `transaction_ref` varchar(55) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `paypal`
--

CREATE TABLE `paypal` (
  `id` int(11) NOT NULL,
  `item_number` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_vietnamese_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_vietnamese_ci,
  `flag` text COLLATE utf8_vietnamese_ci,
  `price` float NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `checklive` int(11) NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `preview` text COLLATE utf8_vietnamese_ci,
  `time_delete_account` int(11) NOT NULL DEFAULT '0',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `maximum` int(11) NOT NULL DEFAULT '10000',
  `id_api` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL DEFAULT '0',
  `id_connect_api` int(11) NOT NULL DEFAULT '0',
  `api_stock` float NOT NULL DEFAULT '0',
  `name_api` blob,
  `update_api` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `filter_time_checklive` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` longtext COLLATE utf8_vietnamese_ci,
  `answer` longtext COLLATE utf8_vietnamese_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rate_autofb`
--

CREATE TABLE `rate_autofb` (
  `id` int(11) NOT NULL,
  `type_api` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `name_api` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `loaiseeding` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `price` float NOT NULL DEFAULT '0',
  `name_loaiseeding` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `note` longtext COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `rate_autofb`
--

INSERT INTO `rate_autofb` (`id`, `type_api`, `name_api`, `loaiseeding`, `price`, `name_loaiseeding`, `note`) VALUES
(1, 'buffsub_sale', 'Facebook buff sub sale (sv1)', '1', 20, 'Tăng Sub sale - SV1 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(2, 'buffsub_sale', 'Facebook buff sub sale (sv2)', '2', 30, 'Tăng Sub sale - SV2 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(3, 'buffsub_sale', 'Facebook buff sub sale (sv3)', '3', 10, 'Tăng Sub sale - SV3 (done trong ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(4, 'buffsub_sale', 'Facebook buff sub sale (sv4)', '4', 35, 'Tăng Sub sale - SV4 (tốc độ nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(7, 'buffsub_speed', 'Facebook buff sub speed (sv1)', '1', 50, 'Tăng Sub - SV1 (MAX 50K, bấm tay)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(8, 'buffsub_speed', 'Facebook buff sub speed (sv2)', '2', 50, 'Tăng Sub - SV2 (Lên khá nhanh, Max 1000k, Bảo hành 1 tháng) tốt nhất nên dùng', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(9, 'buffsub_speed', 'Facebook buff sub speed (sv3)', '3', 30, 'Tăng Sub - SV3 (Chạy được cho page pro5, 1k sub / ngày, max 250k sub clone, Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(10, 'buffsub_speed', 'Facebook buff sub speed (sv4)', '4', 30, 'Tăng Sub - SV4 (Lên ổn định, Max 80k, Bảo hành 1 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(11, 'buffsub_speed', 'Facebook buff sub speed (sv5)', '5', 40, 'Tăng Sub - SV5 (Lên nhanh, Max 50k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(12, 'buffsub_speed', 'Facebook buff sub speed (sv6)', '6', 30, 'Tăng Sub - SV6 (Max 15k Hoàn thành trong 1-24H)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(13, 'buffsub_speed', 'Facebook buff sub speed (sv7)', '7', 30, 'Tăng Sub - SV7 (Max 20k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(14, 'buffsub_speed', 'Facebook buff sub speed (sv8)', '8', 60, 'Tăng Sub - SV8 (Lên rất nhanh, Max 600k, Bảo hành 6 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(15, 'buffsub_speed', 'Facebook buff sub speed (sv9)', '9', 20, 'Tăng Sub - SV9 (Max 1000k , bảo hành 15 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(16, 'buffsub_slow', 'Facebook buff sub chậm (basic)', '1', 40, 'Tăng Sub đề xuất - Basic (BH 3 tháng, max 400k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(17, 'buffsub_slow', 'Facebook buff sub chậm (v1)', '3', 30, 'Tăng Sub đề xuất - V1 (BH 1 tháng, max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(18, 'buffsub_slow', 'Facebook buff sub v2 (sv2)', '2', 60, 'Tăng Sub đề xuất - V3 (xịn nhất, nick đang hoạt động 96,69%, max 60k) (sub kết bạn, ẩn kết bạn hoặc qua thẳng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(19, 'buffsub_slow', 'Facebook buff sub chậm (v2)', '4', 30, 'Tăng Sub đề xuất - V2 (Chất lượng cao, ổn định, nên dùng max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(20, 'bufflikefanpagesale', '', '1', 20, 'Tăng Like Fanpage - SV1 (Lên chậm khoảng 1-2k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(21, 'bufflikefanpagesale', NULL, '2', 28, 'Tăng Like Fanpage - SV2 (Lên ổn định khoảng 5-10k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(22, 'bufflikefanpagesale', NULL, '3', 31, 'Tăng Like Fanpage - SV3 (tốc độ rất nhanh (1 ngày mua max 20k, chạy done mai mua tiếp)) (BH 7 ngày )', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(23, 'bufflikefanpage', NULL, '1', 57, 'Tăng Like Fanpage - BASIC (like bấm tay, ít tụt, có 1 vài page ko thể tăng like) (Nên dùng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(24, 'bufflikefanpage', NULL, '2', 28, 'Tăng Like Fanpage - PRO (Like Via, max 200k tốc độ chậm Không bảo hành', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(25, 'bufflikefanpage', NULL, '3', 47, 'Tăng Like Fanpage - SV3 (MAX 40k BH 3 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(26, 'bufflikefanpage', NULL, '4', 46, 'Tăng Like Fanpage - SV4 (MAX 20k BH 1 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(27, 'bufflikefanpage', NULL, '5', 60, 'Tăng Like Fanpage - SV5 (MAX 50K BH 1 tháng) (Like chất lượng tốt) (Like lên nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(28, 'bufflikefanpage', NULL, '6', 67, 'Tăng Like Fanpage - SV6 (Like page Global (Like Tây Lên Nhanh ít tụt, nên sử dụng Bảo hành 45 ngày))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(29, 'bufflikefanpage', NULL, '7', 25, 'Tăng Like Fanpage - SV7 (Like Việt Lên nhanh (max 100k))(BH 60 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(30, 'bufflikefanpage', NULL, '8', 22, 'Tăng Like Fanpage - SV8 (Like việt, rẻ, nhanh (max 100k)) (BH 30 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(32, 'buffsubfanpage', NULL, '2', 42, 'Tăng Sub Fanpage - SV2 (page pro5 chạy sau 12-24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(33, 'buffsubfanpage', NULL, '1', 27, 'Tăng Sub Fanpage - SV1 (page thường, hoàn thành các đơn < 30k trong 24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(34, 'bufflikecommentsharelike', NULL, 'like', 58, 'Tăng Like Bài Viết (Like người việt thật) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(35, 'bufflikecommentsharelike', NULL, 'like_v2', 10, 'Tăng Like Bài Viết V2 (Like việt clone, tốc độ chậm, có tụt like) (max 250k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(36, 'bufflikecommentsharelike', NULL, 'like_v3', 20, 'Tăng Like Bài Viết V3 (Like việt, rẻ, nhanh !) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(37, 'bufflikecommentsharelike', NULL, 'like_v4', 24, 'Tăng Like Bài Viết V4 (Like Việt Lên nhanh (max 80k) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(38, 'bufflikecommentsharelike', NULL, 'like_v5', 27, 'Tăng Like Bài Viết V5 (Like Việt Lên nhanh(1 ngày chạy 15-25k like) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(39, 'bufflikecommentsharelike', NULL, 'like_v6', 16, 'Tăng Like Bài Viết V6 (Like clone nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(40, 'bufflikecommentsharelike', NULL, 'like_v7', 34, 'Tăng Like Bài Viết V7 (Like Việt Lên Max Nhanh,luôn oder được)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(41, 'bufflikecommentshareshare', NULL, 'share', 1000, 'Tăng Share Bài Viết SV1 (share người thật,share việt)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(42, 'bufflikecommentshareshare', NULL, 'share_sv2', 250, 'Tăng Share Bài Viết SV2 (share giá rẻ (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(43, 'bufflikecommentshareshare', NULL, 'share_sv3', 30, 'Tăng Share Bài Viết SV3 (share ảo (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(44, 'bufflikecommentshareshare', NULL, 'share_sv4', 410, 'Tăng Share Bài Viết SV4', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(45, 'bufflikecommentshareshare', NULL, 'share_sv5', 24, 'Tăng Share Bài Viết SV5 (share ảo rẻ)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
(46, 'buffviewstory', NULL, '1', 18, 'Tăng View Story SV1', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `rating` int(1) NOT NULL,
  `review` text COLLATE utf8_vietnamese_ci NOT NULL,
  `datetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `send_email`
--

CREATE TABLE `send_email` (
  `id` int(11) NOT NULL,
  `template` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `receiver` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `name` mediumtext COLLATE utf8_vietnamese_ci,
  `title` mediumtext COLLATE utf8_vietnamese_ci,
  `content` longtext COLLATE utf8_vietnamese_ci,
  `bcc` mediumtext COLLATE utf8_vietnamese_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `response` mediumtext COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `server2_autobank`
--

CREATE TABLE `server2_autobank` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_vietnamese_ci,
  `amount` float NOT NULL DEFAULT '0',
  `received` float NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `server2_autobank`
--

INSERT INTO `server2_autobank` (`id`, `user_id`, `tid`, `description`, `amount`, `received`, `create_gettime`, `create_time`) VALUES
(1, 31, 'FT23107138534601\\\\BNK', 'CUSTOMER MBVCB 3383107739 029669 naptien31 C T tu 9797979716 NGUYEN VIET TAI toi  1111122443333 NGUYEN HOAI AN Ngan  hang Quan Doi  MB  Trace 029669', 100000, 100000, '2023-04-16 11:05:45', 1681617945),
(2, 29, '38784168369', 'naptien29', 20000, 20000, '2023-04-16 23:30:06', 1681662606),
(3, 61, 'FT23107720473752\\\\B77', 'CUSTOMER Thanh toan QR-naptien61. TU: VU TIEN NAM', 15000, 15000, '2023-04-16 23:32:06', 1681662726),
(4, 69, '38795944326', 'naptien69', 15000, 15000, '2023-04-17 10:58:03', 1681703883),
(5, 29, '38820898343', 'naptien29', 20000, 20000, '2023-04-17 21:58:04', 1681743484),
(6, 107, 'FT23108118928218\\\\C94', 'CUSTOMER Thanh toan QR-naptien107. TU: TRAN NGUYEN TRI VI', 90000, 90000, '2023-04-18 15:01:04', 1681804864),
(7, 107, '38860186780', 'naptien107', 30000, 30000, '2023-04-19 00:56:06', 1681840566),
(8, 142, '39154630304', 'naptien142', 20000, 20000, '2023-04-26 18:20:07', 1682508007),
(9, 128, 'FT23116307399400\\\\BNK', 'CUSTOMER QR   naptien128 Trace 660450', 100000, 100000, '2023-04-26 19:38:04', 1682512684),
(10, 177, 'FT23131533566554\\\\BNK', 'CUSTOMER MBVCB 3503158454 020594 naptien177  CT tu 1035348580 BUI VAN TAM toi 11 11122443333 NGUYEN HOAI AN Ngan han g Quan Doi  MB  Trace 020594', 20000, 20000, '2023-05-11 00:34:04', 1683740044),
(11, 184, 'FT23133500080134\\\\D44', 'CUSTOMER Thanh toan QR-naptien184. TU: NGUYEN QUOC HUY', 30000, 30000, '2023-05-13 16:52:05', 1683971525),
(12, 195, '39837208883', 'naptien195', 10000, 10000, '2023-05-13 18:32:03', 1683977523),
(13, 198, 'FT23133613082990\\\\B82', 'CUSTOMER naptien198. TU: KHONG NGOC LAM', 15000, 15000, '2023-05-13 21:04:03', 1683986643),
(14, 190, '39922122239', 'naptien190', 20000, 20000, '2023-05-15 18:51:02', 1684151462),
(15, 206, 'FT23135409216814\\\\BNK', 'CUSTOMER naptien206 FT23135898855078 Trace 8 17311', 10000, 10000, '2023-05-15 20:02:26', 1684155746),
(16, 208, 'FT23135602066621\\\\B24', 'CUSTOMER Thanh toan QR-naptien208. TU: NGUYEN THANH DUNG', 20000, 20000, '2023-05-15 20:32:21', 1684157541),
(17, 206, 'FT23135143998220\\\\BNK', 'CUSTOMER naptien206 FT23135900039392 Trace 8 95118', 70000, 70000, '2023-05-15 20:32:23', 1684157543),
(18, 214, 'FT23136966683820\\\\BNK', 'CUSTOMER naptien214 Trace 665120', 100000, 100000, '2023-05-17 21:42:04', 1684334524),
(19, 212, 'FT23136321134793\\\\BNK', 'CUSTOMER MBVCB 3530025398 081812 naptien212  CT tu 0501000080157 TRAN PHU QUY to i 1111122443333 NGUYEN HOAI AN Ngan  hang Quan Doi  MB  Trace 081812', 329000, 329000, '2023-05-17 21:42:04', 1684334524),
(20, 211, 'FT23136328066000\\\\C11', 'CUSTOMER Thanh toan QR-naptien211. TU: CAO QUAN DONG', 10000, 10000, '2023-05-17 21:42:06', 1684334526),
(21, 12, 'FT23138415220084\\\\BNK', 'CUSTOMER MBVCB 3541511199 073181 naptien12 C T tu 1033259691 TRAN VU QUOC DAI to i 1111122443333 NGUYEN HOAI AN Ngan  hang Quan Doi  MB  Trace 073181', 10000, 10000, '2023-05-18 09:33:02', 1684377182),
(22, 235, 'FT23164180075687\\\\B31', 'CUSTOMER naptien235. TU: NGUYEN THAI DUY', 22000, 22000, '2023-06-13 20:06:04', 1686661564);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` blob,
  `price` float NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_vietnamese_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `id_api` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT '0',
  `type` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `min` int(11) NOT NULL DEFAULT '0',
  `max` int(11) NOT NULL DEFAULT '0',
  `dripfeed` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `refill` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `cancel` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `note` blob,
  `source_api` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT '5gsmm.com',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_order`
--

CREATE TABLE `service_order` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `seller` int(11) NOT NULL DEFAULT '0',
  `buyer` int(11) NOT NULL DEFAULT '0',
  `service_id` int(11) NOT NULL DEFAULT '0',
  `url` text COLLATE utf8_vietnamese_ci,
  `amount` int(11) NOT NULL DEFAULT '0',
  `pay` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 xử lý, 1 hoàn tất, 2 huỷ',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_otp`
--

CREATE TABLE `service_otp` (
  `id` int(11) NOT NULL,
  `server` text,
  `id_api` text,
  `name_api` text,
  `name` text,
  `price_api` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `update_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `value` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'logo', 'assets/img/logo_light.png'),
(2, 'title', 'TAIKHOANAO.STORE | UY TÍN - CHẤT LƯỢNG'),
(3, 'thongbao', ''),
(4, 'logo_light', 'assets/storage/images/logo_light_TLY.png'),
(5, 'logo_dark', 'assets/storage/images/logo_dark_UO3.png'),
(6, 'image', 'assets/storage/images/image_G09.png'),
(7, 'favicon', 'assets/storage/images/favicon_SNJ.png'),
(8, 'description', 'Shop tài nguyên MMO giá rẻ - ở đây chúng tôi bán mọi thứ trên đời'),
(9, 'keywords', 'shopclone, tiktok, code ban clone fb, code ban via fb, traodoisub, tuongtaccheo'),
(10, 'author', 'MINT'),
(11, 'status', '1'),
(12, 'status_bank', '1'),
(13, 'type_bank', 'MBBank'),
(14, 'stk_bank', ''),
(15, 'name_bank', ''),
(16, 'mk_bank', ''),
(17, 'status_momo', '1'),
(18, 'token_momo', ''),
(19, 'sdt_momo', ''),
(20, 'name_momo', ''),
(21, 'timeUpdate', ''),
(27, 'token_bank', 'bgISqxLkBhAlpYTinUwyNeMmfuZCsrHQzPFdWaKvjEoGORVJDcXt'),
(28, 'javascript', ''),
(31, 'email_smtp', ''),
(32, 'pass_email_smtp', 'vzuacycvdbvveiux'),
(34, 'bg_login', 'assets/storage/images/bg_loginAQ6.png'),
(35, 'bg_register', 'assets/storage/images/bg_register3VU.png'),
(36, 'time_cron_24h', '0'),
(37, 'status_demo', '0'),
(39, 'license_key', '46daed6d7b4bd662912e4708d'),
(40, 'email', ''),
(41, 'hotline', '0566255665'),
(42, 'qr_momo', 'https://i.imgur.com/rEAoX7E.png'),
(43, 'recharge_notice', ''),
(44, 'contact_page', ''),
(45, 'gif_loading', 'assets/storage/images/gif_loading1XH.png'),
(46, 'check_time_cron', '1683379930'),
(47, 'check_time_cron_bank', '1660721103'),
(48, 'min_rating', '1000'),
(49, 'orders_notice', ''),
(50, 'type_showProduct', 'BOX3'),
(51, 'clientId_paypal', 'Af2Xwx8_RGPTpdTjMmDl8a1Sv5AL1ru4906Shmsp09vUeLP_qbWKWZQySzw-Jp2bJnIDBeP1fUMkkdWH'),
(52, 'status_paypal', '0'),
(53, 'status_thesieure', '0'),
(54, 'token_thesieure', 'sIlBcnDVWrMqKTkNiRhFPYQUpSAvbzdwHJatXfCxZmgOoGjEeyuL'),
(55, 'check_time_cron_thesieure', '1660721104'),
(56, 'api_napthe', ''),
(57, 'status_napthe', '0'),
(58, 'notice_napthe', '<p>Vui l&ograve;ng chọn đ&uacute;ng mệnh gi&aacute; v&agrave; điền ch&iacute;nh x&aacute;c th&ocirc;ng tin pin v&agrave; serial để được cộng tiền nhanh nhất</p>\r\n'),
(59, 'ck_napthe', '30'),
(60, 'chinh_sach_bao_mat', ''),
(61, 'dieu_khoan_su_dung', ''),
(62, 'status_update', '1'),
(63, 'status_captcha', '0'),
(64, 'session_login', '2592000'),
(65, 'gif_giftbox', 'assets/storage/images/gif_giftbox.png'),
(66, 'display_sold', '1'),
(67, 'status_zalopay', '0'),
(68, 'token_zalopay', 'AczDjGTMKgOmoWvNiIUpkRbhEXeLHZCPFaulYsyBxrqnwdSVQtfJ'),
(69, 'check_time_cron_zalopay', '1660721105'),
(70, 'type_password', 'md5'),
(71, 'theme_color', '#F08F55'),
(72, 'min_recharge', '1'),
(73, 'time_check_live', '300'),
(74, 'currency', 'VND'),
(75, 'usd_rate', '21000'),
(76, 'clientSecret_paypal', 'EChWA1D6um89Aw-stLu0RC9_vvkDkWDh4Pqg4GMawAWfCSlVwJC0KLat7jZlCzIk02FVH5X-MIIEtjPn'),
(77, 'rate_paypal', '21000'),
(78, 'paypal_notice', '<p>Thay đổi ghi ch&uacute; nạp thẻ&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp paypal</strong></p>\r\n'),
(79, 'gif_loader', 'assets/storage/images/gif_loaderPHW.png'),
(80, 'invoice_expiration', '86400'),
(81, 'mouse_click_effect', '0'),
(82, 'notice_spin', ''),
(83, 'status_spin', '0'),
(84, 'condition_spin', '100000'),
(85, 'status_perfectmoney', '0'),
(86, 'perfectmoney_notice', '<p>Thay đổi ghi ch&uacute; nạp perfect money <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp perfect money</strong></p>\r\n'),
(87, 'PAYEE_ACCOUNT_PM', 'sdfsdfds'),
(88, 'PAYMENT_UNITS_PM', 'USD'),
(89, 'perfectmoney_pass_pm', 'dsfsdfs'),
(90, 'rate_pm', '23000'),
(91, 'status_crypto', '0'),
(92, 'notice_crypto', ''),
(93, 'status_giao_dich_gan_day', '1'),
(94, 'check_time_cron_card', '0'),
(95, 'check_time_cron_checklivefb', '1660721110'),
(96, 'partner_id_card', '3518186561'),
(97, 'partner_key_card', '02aa4ffd82d93a1c34e0bd7e301ff6db'),
(98, 'javascript_header', '<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n<link href=\"https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap\" rel=\"stylesheet\">\r\n<!-- Messenger Plugin chat Code -->\r\n    <div id=\"fb-root\"></div>\r\n\r\n    <!-- Your Plugin chat code -->\r\n    <div id=\"fb-customer-chat\" class=\"fb-customerchat\">\r\n    </div>\r\n\r\n    <script>\r\n      var chatbox = document.getElementById(\'fb-customer-chat\');\r\n      chatbox.setAttribute(\"page_id\", \"106521775486359\");\r\n      chatbox.setAttribute(\"attribution\", \"biz_inbox\");\r\n    </script>\r\n\r\n    <!-- Your SDK code -->\r\n    <script>\r\n      window.fbAsyncInit = function() {\r\n        FB.init({\r\n          xfbml            : true,\r\n          version          : \'v14.0\'\r\n        });\r\n      };\r\n\r\n      (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \'script\', \'facebook-jssdk\'));\r\n    </script>'),
(99, 'sign_view_product', '0'),
(100, 'display_box_shop', '0'),
(101, 'type_notice_order', 'Telegram'),
(102, 'font_family', 'font-family: \'Nunito\', sans-serif;'),
(103, 'time_delete_orders', '0'),
(104, 'check_time_cron_cron', '1683379930'),
(105, 'display_show_product', '1'),
(106, 'display_rating', '1'),
(107, 'stt_giaodichao', '1'),
(108, 'theme_color2', '#009292'),
(109, 'stt_topnap', '1'),
(110, 'sv1_autobank', '1'),
(111, 'sv2_autobank', '1'),
(112, 'prefix_autobank', 'naptien'),
(113, 'status_buff_like_sub', '0'),
(114, 'token_autofb', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OTY3NiwidXNlcm5hbWUiOiJtYWlodXliYW8iLCJtb25leSI6MTExNSwidHlwZSI6MTYsImNyZWF0ZV9hdCI6IjE2MzM0OTE3NDQiLCJlbWFpbCI6Im1haWh1eWJhby5jb250YWN0QGdtYWlsLmNvbSIsImZhY2Vib29rX2lkIjoiNCIsInBob25lIjoiMDk0MTU2MzUyMyIsIm5hbWUiOiJtZW1iZXIiLCJwZXJjZW50IjowLCJub3RlcyI6Ik1lbWJlciAoTuG6oXAgNTAwayBsw6puIMSR4bqhaSBsw70pIiwidXBkYXRlX2F0IjpudWxsLCJ0aWVuX25hcCI6ODUwMDAsImlhdCI6MTY1NjQ5MTc4MSwiZXhwIjoxNjg4MDQ4NzA3fQ.SUhsBZ_dyOPNqPWetJSsMNWpNLyyK7y1UUPo359ulNE'),
(115, 'virtual_sold_quantity', '0'),
(116, 'domain_autofb', 'https://cmslike.com/'),
(117, 'status_store_fanpage', '1'),
(118, 'notice_store_fanpage', ''),
(119, 'status_security', '0'),
(120, 'status_active_member', '0'),
(121, 'type_notification', 'telegram'),
(122, 'token_telegram', '5139293561:AAF1Ew5717g0qccncZLBoFkTjpUpxHTrN6Y'),
(123, 'chat_id_telegram', '5267646360'),
(124, 'buy_notification', 'THÔNG BÁO MUA HÀNG\r\n• Tên miền: {domain}\r\n• Tên khách hảng: {username}\r\n• Tên sản phẩm: {product_name}\r\n• Phương thức: {method}\r\n• Số lượng: {amount}\r\n• Số tiền thanh toán: {price}\r\n• Mã đơn hàng: {trans_id}\r\n• Thời gian: {time}\r\n'),
(125, 'naptien_notification', 'THÔNG BÁO MUA HÀNG\r\n• Tên miền: {domain}\r\n• Tên khách hảng: {username}\r\n• Phương thức: {method}\r\n• Số tiền nạp: {amount}\r\n• Thực nhận: {price}\r\n• Thời gian: {time}\r\n'),
(126, 'register_notification', 'THÔNG BÁO TẠO TÀI KHOẢN\r\n• Tên miền: {domain}\r\n• Tên khách hảng: {username}\r\n• Địa chỉ email: {email}\r\n• Địa chỉ IP: {ip}\r\n• Thiết bị: {device}\r\n• Thời gian: {time}\r\n'),
(127, 'max_time_buy', '10'),
(128, 'time_delete_clone_die', '2592000'),
(129, 'check_time_cron1', '1683379930'),
(130, 'check_time_cron_dichvudark', '1687859220'),
(131, 'bg_card', 'resources/images/bg-buy.png'),
(132, 'display_blog', '1'),
(133, 'display_question', '1'),
(134, 'display_contact', '1'),
(135, 'display_api', '0'),
(136, 'display_tool', '0'),
(137, 'status_connect_api', '0'),
(138, 'check_time_cron2', '1660721112'),
(139, 'ck_connect_api', '0'),
(140, 'check_time_cron_mbbank', '1660721103'),
(141, 'status_ref', '0'),
(142, 'ck_ref', '5'),
(143, 'notice_ref', ''),
(144, 'listbank_ref', 'MbBank '),
(145, 'minrut_ref', '100000'),
(146, 'display_preview', '0'),
(147, 'display_country', '1'),
(148, 'apikey_nowpayments', 'T900CJG-63ZMWTW-N63FD4G-YBW9PSF'),
(149, 'status_nowpayments', '0'),
(150, 'status_is_change_password', '0'),
(151, 'auto_rename_api', '1'),
(152, 'ipn_nowpayments', 'JRdTyP32q79yPdSv5rravTdpy0mVTTYQ'),
(153, 'min_crypto', '10'),
(154, 'rate_crypto', '23000'),
(155, 'check_time_cron_crypto', '1660721107'),
(156, 'check_time_cron3', '1660721114'),
(157, 'menu_title', 'Tài Khoản Ảo'),
(158, 'check_time_cron_momo', '1659104220'),
(159, 'default_api_product_status', '1'),
(161, 'mk_momo', '260607'),
(162, 'phash_momo', ''),
(163, 'key_momo', ''),
(164, 'min_gd_ao', '1'),
(165, 'max_gd_ao', '30'),
(166, 'speed_buy_gd_ao', '10'),
(167, 'amount_nap_ao', '10000\r\n20000\r\n40000\r\n50000\r\n60000\r\n70000\r\n100000\r\n200000\r\n300000\r\n500000\r\n400000\r\n40000\r\n15000\r\n25000\r\n35000\r\n45000\r\n55000\r\n65000\r\n45000\r\n1000000\r\n1500000\r\n2000000'),
(168, 'speed_nap_gd_ao', '100'),
(169, 'position_gd_gan_day', '2'),
(170, 'is_account_buy_fake', '0'),
(171, 'hide_product_empty', '0'),
(172, 'email_nowpayments', ''),
(173, 'password_nowpayments', ''),
(174, 'check_time_cron4', '0'),
(175, 'home_page', 'home'),
(176, 'notice_popup', ''),
(177, 'check_time_cron_dongvanfb', '0'),
(178, 'timezone', 'Asia/Ho_Chi_Minh'),
(179, 'status_addfun_seller', '0'),
(180, 'status_store_document', '0'),
(181, 'noti_import_telegram', ''),
(182, 'group_id_import_telegram', ''),
(183, 'max_register_ip', '5'),
(184, 'check_time_cron6', '0'),
(185, 'pin_cron', ''),
(186, 'status_toyyibpay', '0'),
(187, 'notice_toyyibpay', ''),
(188, 'userSecretKey_toyyibpay', ''),
(189, 'min_toyyibpay', '1'),
(190, 'categoryCode_toyyibpay', ''),
(191, 'check_time_cron_toyyibpay', '0'),
(192, 'rate_toyyibpay', '5258'),
(193, 'billChargeToCustomer', ''),
(194, 'check_time_cron_sending_email', '0'),
(195, 'check_time_cron7', '0'),
(196, 'host_smtp', 'smtp.gmail.com'),
(197, 'encryption_smtp', 'tls'),
(198, 'port_smtp', '587'),
(199, 'token_5gsmm', ''),
(200, 'ck_rate_service', '0'),
(201, 'status_updatec_rate_service', 'ON'),
(202, 'rate_vnd_5gsmm', '24867'),
(203, 'check_time_cron_UpdateRate5gsmm', '0'),
(204, 'check_time_cron_UpdateHistory5gsmm', '0'),
(205, 'check_time_cron8', '0'),
(206, 'taohoadonnaptien_notification', ''),
(207, 'copyright_footer', 'Powered By <a target=\"_blank\" href=\"https://www.cmsnt.co/?ref=https://thegioimail.com/\">CMSNT.CO</a>'),
(208, 'check_time_cron9', '0'),
(209, 'status_api_buyproduct', '1'),
(210, 'marquee_notication_shopacc', ''),
(211, 'status_thuesim', '0'),
(212, 'server_thuesim', ''),
(213, 'domain_thuesim', ''),
(214, 'title_thuesim', 'Dịch vụ Thuê OTP, Thuê SIM tự động uy tín'),
(215, 'description_thuesim', 'Dịch vụ Thuê OTP, Thuê SIM tự động uy tín'),
(216, 'keyword_thuesim', 'thue sim, thue otp, thue sms'),
(217, 'token_thuesim', ''),
(218, 'ck_rate_thuesim', '0'),
(219, 'check_time_cron_service_otp_cron', '0'),
(220, 'notice_thuesim', ''),
(221, 'check_time_cron_service_otp_history', '0'),
(222, 'check_time_cron10', '0'),
(223, 'text_create_website', '<ul>\n    <li>Bước 1: Trỏ IP <b style=\"color: red;\">103.14.48.40</b> vào bản ghi Host @ và www trong tên miền của bạn, có thể liên hệ nhà cung cấp tên miền để nhờ trỏ giúp.</li>\n    <li>Bước 2: Nhập tên miền muốn đăng ký đại lý và nhấn Thêm Ngay.</li>\n    <li>Bước 3: Chờ đợi QTV setup website (thanh trạng thái thay đổi thành <b\n            style=\"color: green;\">Hoạt Động</b>).</li>\n    <li>Bước 4: Truy cập Website bạn vừa tạo và nhập thông tin token và đăng ký\n        1 tài khoản quản trị của\n        bạn (tài khoản đầu tiên sẽ là tài khoản admin, lưu ý không để lộ tên\n        miền ra khi chưa setup xong website).</li>\n</ul>'),
(224, 'status_create_website', '0'),
(225, 'stt_create_website', '0'),
(226, 'create_website_notification', ''),
(227, 'check_time_cron11', '0'),
(228, 'check_time_cron12', '0'),
(229, 'crypto_address', ''),
(230, 'crypto_token', ''),
(231, 'crypto_min', '10'),
(232, 'crypto_max', '1000000'),
(233, 'check_time_cron13', '0'),
(234, 'flutterwave_api_key', ''),
(235, 'flutterwave_api_secret', ''),
(236, 'prefix_invoice', 'NT'),
(237, 'logo_login', 'assets/storage/images/logo_light_ODI.png'),
(238, 'domain_smmpanel', 'https://5gsmm.com/'),
(239, 'show_category', 'head'),
(240, 'flutterwave_status', '0'),
(241, 'flutterwave_publicKey', ''),
(242, 'flutterwave_secretKey', ''),
(243, 'flutterwave_rate', '24000'),
(244, 'flutterwave_notice', ''),
(245, 'reCAPTCHA_status', '0'),
(246, 'reCAPTCHA_secret_key', ''),
(247, 'reCAPTCHA_site_key', ''),
(248, 'check_time_cron14', '0'),
(249, 'html_top_product', ''),
(250, 'html_banned', '<p>Vui lòng liên hệ Admin để được hỗ trợ chi tiết</p>'),
(251, 'html_block_ip', '<p>Vui lòng liên hệ Admin để được hỗ trợ chi tiết</p>'),
(252, 'squadco_status', '0'),
(253, 'squadco_Secret_Key', ''),
(254, 'squadco_Public_Key', ''),
(255, 'squadco_rate', '51'),
(256, 'squadco_currency_code', 'NGN'),
(257, 'squadco_notice', ''),
(258, 'check_time_cron15', '0'),
(259, 'buy_fanpage_notification', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `spin_history`
--

CREATE TABLE `spin_history` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_vietnamese_ci,
  `create_date` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `spin_history`
--

INSERT INTO `spin_history` (`id`, `trans_id`, `user_id`, `name`, `create_date`, `create_time`) VALUES
(1, NULL, 43, 'Chúc mừng bạn đã quay được phần thường (1 hot mail)', '2023-04-16 21:40:22', 1681656022),
(2, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (1 hot mail)', '2023-04-17 22:19:03', 1681744743),
(3, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (2 hot mail)', '2023-04-17 22:19:12', 1681744752),
(4, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (1 hot mail)', '2023-04-17 22:19:16', 1681744756),
(5, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (2 hot mail)', '2023-04-17 22:19:21', 1681744761),
(6, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (1 hot mail)', '2023-04-17 22:19:26', 1681744766),
(7, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (2 hot mail)', '2023-04-17 22:19:31', 1681744771),
(8, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (3 hotmail)', '2023-04-17 22:19:42', 1681744782),
(9, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (1 hot mail)', '2023-04-17 22:53:54', 1681746834),
(10, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (1 hot mail)', '2023-04-17 22:53:59', 1681746839),
(11, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (1 hot mail)', '2023-04-17 22:54:03', 1681746843),
(12, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (1 hot mail)', '2023-04-17 22:54:07', 1681746847),
(13, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (2 hot mail)', '2023-04-17 22:56:59', 1681747019),
(14, NULL, 22, 'Chúc mừng bạn đã quay được phần thường (1 hot mail)', '2023-04-18 15:19:44', 1681805984),
(15, NULL, 80, 'Chúc mừng bạn đã quay được phần thường (1 hot mail)', '2023-04-18 21:08:14', 1681826894);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `spin_option`
--

CREATE TABLE `spin_option` (
  `id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8_vietnamese_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `rate` float NOT NULL DEFAULT '0',
  `display` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `spin_option`
--

INSERT INTO `spin_option` (`id`, `name`, `price`, `rate`, `display`) VALUES
(1, '20 Hotmail', 60000, 0.1, 1),
(2, '5 hot mail', 15000, 3, 1),
(3, '1 hot mail', 3000, 70, 1),
(4, '2 hot mail', 6000, 20, 1),
(5, '3 hotmail', 9000, 10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_fanpage`
--

CREATE TABLE `store_fanpage` (
  `id` int(11) NOT NULL,
  `seller` int(11) NOT NULL DEFAULT '0',
  `buyer` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `url` mediumtext COLLATE utf8_vietnamese_ci,
  `new_name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sl_like` int(11) NOT NULL DEFAULT '0',
  `nam_tao_fanpage` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `fb_admin` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `price` float NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_vietnamese_ci,
  `create_gettime` datetime NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_gettime` datetime NOT NULL,
  `update_time` int(11) NOT NULL DEFAULT '0',
  `note` longtext COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `toyyibpay_transactions`
--

CREATE TABLE `toyyibpay_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `trans_id` varchar(50) DEFAULT NULL,
  `billName` text,
  `amount` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `BillCode` varchar(50) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translate`
--

CREATE TABLE `translate` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '0',
  `name` longtext COLLATE utf8_vietnamese_ci,
  `value` longtext COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `translate`
--

INSERT INTO `translate` (`id`, `lang_id`, `name`, `value`) VALUES
(20, 8, 'Đăng Nhập', 'Đăng Nhập'),
(24, 8, 'Đăng Ký', 'Đăng Ký'),
(28, 8, 'Tên đăng nhập', 'Tên đăng nhập'),
(32, 8, 'Mật khẩu', 'Mật khẩu'),
(39, 8, 'Vui lòng nhập mật khẩu', 'Vui lòng nhập mật khẩu'),
(43, 8, 'Bạn không có tài khoản?', 'Bạn không có tài khoản?'),
(47, 8, 'Đăng ký', 'Đăng ký'),
(51, 8, 'Quên mật khẩu', 'Quên mật khẩu'),
(55, 8, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Đăng nhập vào tài khoản của bạn để tiếp tục'),
(59, 8, 'Đăng Nhập', 'Đăng Nhập'),
(63, 8, 'hoặc', 'hoặc'),
(67, 8, 'Đăng Nhập', 'Đăng Nhập'),
(71, 8, 'Đang xử lý...', 'Đang xử lý...'),
(75, 8, 'Đăng Ký', 'Đăng Ký'),
(79, 8, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(83, 8, 'Địa chỉ Email', 'Địa chỉ Email'),
(87, 8, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(91, 8, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(95, 8, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(99, 8, 'Thông tin đăng nhập không chính xác', 'Thông tin đăng nhập không chính xác'),
(104, 8, 'Username không được để trống', 'Username không được để trống'),
(108, 8, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(112, 8, 'Hệ thống đang bảo trì', 'Hệ thống đang bảo trì'),
(116, 8, 'Tài khoản của bạn đã bị khoá truy cập', 'Tài khoản của bạn đã bị khoá truy cập'),
(120, 8, 'Đăng nhập thành công vào hệ thống', 'Đăng nhập thành công vào hệ thống'),
(124, 8, 'Đăng nhập thành công', 'Đăng nhập thành công'),
(128, 8, 'Email không được để trống', 'Email không được để trống'),
(132, 8, 'Nhập lại mật khẩu không đúng', 'Nhập lại mật khẩu không đúng'),
(136, 8, 'Định dạng Email không đúng', 'Định dạng Email không đúng'),
(140, 8, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Tên đăng nhập đã tồn tại trong hệ thống'),
(144, 8, 'Địa chỉ email đã tồn tại trong hệ thống', 'Địa chỉ email đã tồn tại trong hệ thống'),
(148, 8, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép'),
(152, 8, 'Đăng ký thành công', 'Đăng ký thành công'),
(156, 8, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Tạo tài khoản thất bại, vui lòng thử lại'),
(160, 8, 'Thực hiện tạo tài khoản', 'Thực hiện tạo tài khoản'),
(452, 8, 'Trang cá nhân', 'Trang cá nhân'),
(453, 8, 'Thay đổi mật khẩu', 'Thay đổi mật khẩu'),
(454, 8, 'Đăng xuất', 'Đăng xuất'),
(455, 8, 'Trang quản trị', 'Trang quản trị'),
(456, 8, 'Bảo mật', 'Bảo mật'),
(457, 8, 'Cộng tác viên', 'Cộng tác viên'),
(458, 16, 'Đăng Nhập', 'Login'),
(459, 16, 'Đăng Ký', 'Register'),
(460, 16, 'Tên đăng nhập', 'Username'),
(461, 16, 'Mật khẩu', 'Password'),
(462, 16, 'Vui lòng nhập mật khẩu', 'Please enter a password'),
(463, 16, 'Bạn không có tài khoản?', 'You don\\\'t have an account?'),
(464, 16, 'Đăng ký', 'Register'),
(465, 16, 'Quên mật khẩu', 'Forgot password'),
(466, 16, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Log in to your account to continue'),
(467, 16, 'Đăng Nhập', 'Log in'),
(468, 16, 'hoặc', 'or'),
(469, 16, 'Đăng Nhập', 'Log in'),
(470, 16, 'Đang xử lý...', 'Processing...'),
(471, 16, 'Đăng Ký', 'Đăng Ký'),
(472, 16, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản'),
(473, 16, 'Địa chỉ Email', 'Email address'),
(474, 16, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(475, 16, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu'),
(476, 16, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?'),
(477, 16, 'Thông tin đăng nhập không chính xác', 'Login information is incorrect'),
(478, 16, 'Username không được để trống', 'Username không được để trống'),
(479, 16, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống'),
(480, 16, 'Hệ thống đang bảo trì', 'The system is maintenance'),
(481, 16, 'Tài khoản của bạn đã bị khoá truy cập', 'Your account has been locked'),
(482, 16, 'Đăng nhập thành công vào hệ thống', 'Successfully logged into the system'),
(483, 16, 'Đăng nhập thành công', 'Logged in successfully'),
(484, 16, 'Email không được để trống', 'Email cannot be blank'),
(485, 16, 'Nhập lại mật khẩu không đúng', 'Password incorrect, please try again'),
(486, 16, 'Định dạng Email không đúng', 'Email format is not correct'),
(487, 16, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Username already exists in the system'),
(488, 16, 'Địa chỉ email đã tồn tại trong hệ thống', 'Email address already exists in the system'),
(489, 16, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'Your IP has reached the allowable account creation limit'),
(490, 16, 'Đăng ký thành công', 'Sign Up Success'),
(491, 16, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Account creation failed, please try again'),
(492, 16, 'Thực hiện tạo tài khoản', 'Make an account'),
(493, 16, 'Trang cá nhân', 'Profile'),
(494, 16, 'Thay đổi mật khẩu', 'Change password'),
(495, 16, 'Đăng xuất', 'Logout'),
(496, 16, 'Trang quản trị', 'Admin'),
(497, 16, 'Bảo mật', 'Security'),
(498, 16, 'Cộng tác viên', 'CTV'),
(499, 8, 'Bảng Điều Khiển', 'Bảng Điều Khiển'),
(500, 16, 'Bảng Điều Khiển', 'Dashboard'),
(501, 8, 'Nạp Tiền', 'Nạp Tiền'),
(502, 16, 'Nạp Tiền', 'RECHARGE'),
(505, 8, 'Ngân Hàng', 'Ngân Hàng'),
(506, 16, 'Ngân Hàng', 'Bank Transfer'),
(507, 8, 'Ví Điện Tử', 'Ví Điện Tử'),
(508, 16, 'Ví Điện Tử', 'Electronic Wallet'),
(509, 8, 'Cửa Hàng', 'Cửa Hàng'),
(510, 16, 'Cửa Hàng', 'Store'),
(511, 8, 'Lịch Sử Mua Hàng', 'Lịch Sử Mua Hàng'),
(512, 16, 'Lịch Sử Mua Hàng', 'Purchase History'),
(513, 8, 'Liên Hệ', 'Liên Hệ'),
(514, 16, 'Liên Hệ', 'Contact'),
(515, 8, 'Thông tin liên hệ', 'Thông tin liên hệ'),
(516, 16, 'Thông tin liên hệ', 'Contact Info'),
(517, 8, 'Mã giao dịch', 'Mã giao dịch'),
(518, 16, 'Mã giao dịch', 'TransId'),
(519, 8, 'Sản phẩm', 'Sản phẩm'),
(520, 16, 'Sản phẩm', 'Product'),
(521, 8, 'Số lượng', 'Số lượng'),
(522, 16, 'Số lượng', 'Amount'),
(523, 8, 'Thanh toán', 'Thanh toán'),
(524, 16, 'Thanh toán', 'Pay'),
(525, 8, 'Thời gian', 'Thời gian'),
(526, 16, 'Thời gian', 'Time'),
(527, 8, 'Thao tác', 'Thao tác'),
(528, 16, 'Thao tác', 'Action'),
(529, 8, 'Xem Thêm', 'Xem Thêm'),
(530, 16, 'Xem Thêm', 'See More'),
(531, 8, 'Thông Tin Cá Nhân', 'Thông Tin Cá Nhân'),
(532, 16, 'Thông Tin Cá Nhân', 'Profile'),
(533, 8, 'Họ và Tên', 'Họ và Tên'),
(534, 16, 'Họ và Tên', 'First and Last Name'),
(535, 8, 'Nhập họ và tên', 'Nhập họ và tên'),
(536, 16, 'Nhập họ và tên', 'Enter your first and last name'),
(537, 8, 'Số điện thoại', 'Số điện thoại'),
(538, 16, 'Số điện thoại', 'Phone number'),
(539, 8, 'Nhập số điện thoại', 'Nhập số điện thoại'),
(540, 16, 'Nhập số điện thoại', 'Enter your phone number'),
(541, 8, 'Nhập địa chỉ Email', 'Nhập địa chỉ Email'),
(542, 16, 'Nhập địa chỉ Email', 'Enter your email address'),
(543, 8, 'Thời gian đăng ký', 'Thời gian đăng ký'),
(544, 16, 'Thời gian đăng ký', 'Registration time'),
(545, 8, 'Đăng nhập gần đây', 'Đăng nhập gần đây'),
(546, 16, 'Đăng nhập gần đây', 'Login time'),
(547, 8, 'Huỷ', 'Huỷ'),
(548, 16, 'Huỷ', 'Cancel'),
(549, 8, 'Lưu Thay Đổi', 'Lưu Thay Đổi'),
(550, 16, 'Lưu Thay Đổi', 'Save Changes'),
(551, 8, 'Tổng Tiền Nạp', 'Tổng Tiền Nạp'),
(552, 16, 'Tổng Tiền Nạp', 'Total Deposit'),
(553, 8, 'Tổng Tiền Sử Dụng', 'Tổng Tiền Sử Dụng'),
(555, 8, 'Số Dư Hiện Tại', 'Số Dư Hiện Tại'),
(556, 16, 'Số Dư Hiện Tại', 'Current Balance'),
(557, 8, 'Số Dư Sử Dụng', 'Số Dư Sử Dụng'),
(558, 16, 'Số Dư Sử Dụng', 'Usage Balance'),
(559, 8, 'Vui lòng đăng nhập', 'Vui lòng đăng nhập'),
(560, 16, 'Vui lòng đăng nhập', 'Please login'),
(561, 8, 'Vui lòng nhập địa chỉ Email', 'Vui lòng nhập địa chỉ Email'),
(562, 16, 'Vui lòng nhập địa chỉ Email', 'Please enter your email address'),
(563, 8, 'Định dạng Email không hợp lệ', 'Định dạng Email không hợp lệ'),
(564, 16, 'Định dạng Email không hợp lệ', 'Invalid Email Format'),
(565, 8, 'Thay đổi thông tin hồ sơ', 'Thay đổi thông tin hồ sơ'),
(566, 16, 'Thay đổi thông tin hồ sơ', 'Change profile information'),
(567, 8, 'Lưu thành công', 'Lưu thành công'),
(568, 16, 'Lưu thành công', 'Successfully saved'),
(569, 8, 'Lưu thất bại', 'Lưu thất bại'),
(570, 16, 'Lưu thất bại', 'Save failed'),
(571, 8, 'Vui lòng nhập mật khẩu hiện tại', 'Vui lòng nhập mật khẩu hiện tại'),
(572, 16, 'Vui lòng nhập mật khẩu hiện tại', 'Please enter your current password'),
(573, 8, 'Vui lòng nhập mật khẩu mới', 'Vui lòng nhập mật khẩu mới'),
(574, 16, 'Vui lòng nhập mật khẩu mới', 'Please enter a new password'),
(575, 8, 'Mật khẩu hiện tại không chính xác', 'Mật khẩu hiện tại không chính xác'),
(576, 16, 'Mật khẩu hiện tại không chính xác', 'Current password is incorrect'),
(577, 8, 'Đổi mật khẩu thành công', 'Đổi mật khẩu thành công'),
(578, 16, 'Đổi mật khẩu thành công', 'Change password successfully'),
(579, 8, 'Đổi mật khẩu thất bại', 'Đổi mật khẩu thất bại'),
(580, 16, 'Đổi mật khẩu thất bại', 'Change password failed'),
(581, 8, 'Đóng', 'Đóng'),
(582, 16, 'Đóng', 'Close'),
(583, 8, 'Mật khẩu hiện tại', 'Mật khẩu hiện tại'),
(584, 16, 'Mật khẩu hiện tại', 'Current password'),
(585, 8, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới'),
(586, 16, 'Nhập lại mật khẩu mới', 'Enter a new password'),
(587, 8, 'Mật khẩu mới', 'Mật khẩu mới'),
(588, 16, 'Mật khẩu mới', 'New password'),
(589, 8, 'Vui lòng nhập lại mật khẩu mới', 'Vui lòng nhập lại mật khẩu mới'),
(590, 16, 'Vui lòng nhập lại mật khẩu mới', 'Please re-enter new password'),
(591, 8, 'Nhật ký hoạt động', 'Nhật ký hoạt động'),
(592, 16, 'Nhật ký hoạt động', 'Activity Log'),
(593, 8, 'Biến động số dư', 'Biến động số dư'),
(594, 16, 'Biến động số dư', 'Balance log'),
(595, 8, 'Hành động', 'Hành động'),
(596, 16, 'Hành động', 'Action'),
(597, 8, 'Địa chỉ IP', 'Địa chỉ IP'),
(598, 16, 'Địa chỉ IP', 'IP address'),
(599, 8, 'Thiết bị', 'Thiết bị'),
(600, 16, 'Thiết bị', 'Device'),
(601, 8, 'Số tiền trước', 'Số tiền trước'),
(602, 16, 'Số tiền trước', 'Amount in advance'),
(603, 8, 'Số tiền thay đổi', 'Số tiền thay đổi'),
(604, 16, 'Số tiền thay đổi', 'Amount of change'),
(605, 8, 'Số tiền hiện tại', 'Số tiền hiện tại'),
(606, 16, 'Số tiền hiện tại', 'Current amount'),
(607, 8, 'Nội dung', 'Nội dung'),
(608, 16, 'Nội dung', 'Content'),
(609, 8, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán'),
(610, 16, 'Chọn phương thức thanh toán', 'Select a payment method'),
(611, 8, 'Nhập số tiền cần nạp', 'Nhập số tiền cần nạp'),
(612, 16, 'Nhập số tiền cần nạp', 'Enter the amount to deposit'),
(613, 8, 'Tạo hoá đơn', 'Tạo hoá đơn'),
(614, 16, 'Tạo hoá đơn', 'Create invoice'),
(615, 8, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Nhập số tiền bạn cần nạp vào hệ thống'),
(616, 16, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Enter the amount you need to deposit into the system'),
(617, 8, 'Hoá Đơn', 'Hoá Đơn'),
(618, 16, 'Hoá Đơn', 'Invoices'),
(619, 8, 'Trạng thái', 'Trạng thái'),
(620, 16, 'Trạng thái', 'Status'),
(621, 8, 'Phương thức thanh toán', 'Phương thức thanh toán'),
(622, 16, 'Phương thức thanh toán', 'Payment Method'),
(623, 8, 'Huỷ bỏ', 'Huỷ bỏ'),
(624, 16, 'Huỷ bỏ', 'Cancelled'),
(625, 8, 'Đang chờ thanh toán', 'Đang chờ thanh toán'),
(626, 16, 'Đang chờ thanh toán', 'Pending'),
(627, 8, 'Đã thanh toán', 'Đã thanh toán'),
(628, 16, 'Đã thanh toán', 'Paid'),
(629, 8, 'Vui lòng chọn phương thức thanh toán', 'Vui lòng chọn phương thức thanh toán'),
(630, 16, 'Vui lòng chọn phương thức thanh toán', 'Please choose a payment method'),
(631, 8, 'Vui lòng nhập số tiền cần nạp', 'Vui lòng nhập số tiền cần nạp'),
(632, 16, 'Vui lòng nhập số tiền cần nạp', 'Please enter the amount to deposit'),
(633, 8, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Phương thức thanh toán không tồn tại trong hệ thống'),
(634, 16, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Payment method does not exist in the system'),
(635, 8, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'Bạn đang thao tác quá nhanh, vui lòng chờ'),
(636, 16, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'You are working too fast, please wait'),
(637, 8, 'Số tiền nạp tối thiểu là', 'Số tiền nạp tối thiểu là'),
(638, 16, 'Số tiền nạp tối thiểu là', 'Minimum deposit amount is'),
(639, 8, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày'),
(640, 16, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'You have too many pending invoices for the day'),
(641, 8, 'Tạo hoá đơn nạp tiền', 'Tạo hoá đơn nạp tiền'),
(642, 16, 'Tạo hoá đơn nạp tiền', 'Create a recharge invoice'),
(643, 8, 'Tạo hoá đơn thành công', 'Tạo hoá đơn thành công'),
(644, 16, 'Tạo hoá đơn thành công', 'Successful invoice generation'),
(645, 8, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Tạo hoá đơn thất bại, vui lòng thử lại'),
(646, 16, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Invoice generation failed, please try again'),
(647, 8, 'Chi tiết hoá đơn', 'Chi tiết hoá đơn'),
(648, 16, 'Chi tiết hoá đơn', 'Invoice details'),
(649, 8, 'Tải Về', 'Tải Về'),
(650, 16, 'Tải Về', 'Download'),
(651, 8, 'Xoá', 'Xoá'),
(652, 16, 'Xoá', 'Delete'),
(653, 8, 'Xác nhận xoá đơn hàng', 'Xác nhận xoá đơn hàng'),
(654, 16, 'Xác nhận xoá đơn hàng', 'Order deletion confirmation'),
(655, 8, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Bạn có chắc chắn muốn xóa đơn hàng này không ?'),
(656, 16, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Are you sure you want to delete this order?'),
(657, 8, 'Đồng Ý', 'Đồng Ý'),
(658, 16, 'Đồng Ý', 'Agree'),
(659, 8, 'Đơn hàng không tồn tại trong hệ thống', 'Đơn hàng không tồn tại trong hệ thống'),
(660, 16, 'Đơn hàng không tồn tại trong hệ thống', 'The order does not exist in the system'),
(661, 8, 'Xóa đơn hàng thành công', 'Xóa đơn hàng thành công'),
(662, 16, 'Xóa đơn hàng thành công', 'Deleted order successfully'),
(663, 8, 'Dữ liệu không hợp lệ', 'Dữ liệu không hợp lệ'),
(664, 16, 'Dữ liệu không hợp lệ', 'Invalid data'),
(665, 8, 'Xoá đơn hàng', 'Xoá đơn hàng'),
(666, 16, 'Xoá đơn hàng', 'Delete order'),
(667, 8, 'Xóa sản phẩm thất bại', 'Xóa sản phẩm thất bại'),
(668, 16, 'Xóa sản phẩm thất bại', 'Delete failed products'),
(669, 8, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng'),
(670, 16, 'Chi tiết đơn hàng', 'Order details'),
(671, 8, 'Sao Chép', 'Sao Chép'),
(672, 16, 'Sao Chép', 'Copy'),
(673, 8, 'Quay Lại', 'Quay Lại'),
(674, 16, 'Quay Lại', 'Back'),
(675, 8, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm'),
(676, 16, 'Đánh giá sản phẩm', 'Product Reviews'),
(677, 8, 'Đánh giá ngay', 'Đánh giá ngay'),
(678, 16, 'Đánh giá ngay', 'Rate now'),
(679, 8, 'Bạn có thể đánh giá đơn hàng này', 'Bạn có thể đánh giá đơn hàng này'),
(680, 16, 'Bạn có thể đánh giá đơn hàng này', 'You can rate this order'),
(681, 8, 'Đơn hàng lớn hơn', 'Đơn hàng lớn hơn'),
(682, 16, 'Đơn hàng lớn hơn', 'Larger orders'),
(683, 8, 'mới có thể đánh giá', 'mới có thể đánh giá'),
(684, 16, 'mới có thể đánh giá', 'can only evaluate'),
(685, 8, 'Gửi Đánh Giá', 'Gửi Đánh Giá'),
(686, 16, 'Gửi Đánh Giá', 'Submit Review'),
(687, 8, 'Xác Nhận', 'Xác Nhận'),
(688, 16, 'Xác Nhận', 'Confirm'),
(689, 8, 'Nhập nội dung cần đánh giá', 'Nhập nội dung cần đánh giá'),
(690, 16, 'Nhập nội dung cần đánh giá', 'Enter the content to evaluate'),
(691, 8, 'Vui lòng nhập review', 'Vui lòng nhập review'),
(692, 16, 'Vui lòng nhập review', 'Please enter a review'),
(693, 8, 'Đã sao chép vào bộ nhớ tạm', 'Đã sao chép vào bộ nhớ tạm'),
(694, 16, 'Đã sao chép vào bộ nhớ tạm', 'Copied to clipboard'),
(695, 8, 'Bạn đã đánh giá đơn hàng này rồi', 'Bạn đã đánh giá đơn hàng này rồi'),
(696, 16, 'Bạn đã đánh giá đơn hàng này rồi', 'You have already rated this order'),
(697, 8, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'Bạn không đủ điều kiện đánh giá đơn hàng này'),
(698, 16, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'You are not eligible to rate this order'),
(699, 8, 'Gửi đánh giá thành công', 'Gửi đánh giá thành công'),
(700, 16, 'Gửi đánh giá thành công', 'Submit a successful review'),
(701, 8, 'Gửi đánh giá thất bại', 'Gửi đánh giá thất bại'),
(702, 16, 'Gửi đánh giá thất bại', 'Submit a failed review'),
(703, 8, 'Sản phẩm mới', 'Sản phẩm mới'),
(704, 16, 'Sản phẩm mới', 'New products'),
(705, 8, 'Nạp tiền qua PayPal', 'Nạp tiền qua PayPal'),
(706, 16, 'Nạp tiền qua PayPal', 'Recharge via PayPal'),
(707, 8, 'Nhập số tiền cần nạp định dạng VNĐ', 'Nhập số tiền cần nạp định dạng VNĐ'),
(709, 8, 'Nhập số tiền cần nạp bằng USD', 'Nhập số tiền cần nạp bằng USD'),
(710, 16, 'Nhập số tiền cần nạp bằng USD', 'Enter the amount to deposit in USD'),
(711, 8, 'Tạo hoá đơn nạp tiền qua PayPal', 'Tạo hoá đơn nạp tiền qua PayPal'),
(712, 16, 'Tạo hoá đơn nạp tiền qua PayPal', 'Create a bill top up via PayPal'),
(713, 8, 'Số tiền cần nạp', 'Số tiền cần nạp'),
(714, 16, 'Số tiền cần nạp', 'Amount to deposit'),
(715, 8, 'Giá', 'Giá'),
(716, 16, 'Giá', 'Price'),
(717, 8, 'MUA NGAY', 'MUA NGAY'),
(718, 16, 'MUA NGAY', 'BUY NOW'),
(719, 8, 'Đã bán', 'Đã bán'),
(720, 16, 'Đã bán', 'Sold'),
(721, 8, 'Sản phẩm không tồn tại', 'Sản phẩm không tồn tại'),
(722, 16, 'Sản phẩm không tồn tại', 'Product does not exist'),
(723, 8, 'Quốc gia', 'Quốc gia'),
(724, 16, 'Quốc gia', 'Country'),
(725, 8, 'Clone MOMO + Live Ads', 'Clone MOMO + Live Ads'),
(727, 8, 'Tất Cả Sản Phẩm', 'Tất Cả Sản Phẩm'),
(728, 16, 'Tất Cả Sản Phẩm', 'All Product'),
(729, 8, 'Tên sản phẩm', 'Tên sản phẩm'),
(730, 16, 'Tên sản phẩm', 'Product name'),
(731, 8, 'Hiện có', 'Hiện có'),
(732, 16, 'Hiện có', 'Available'),
(733, 8, 'Thanh toán đơn hàng', 'Thanh toán đơn hàng'),
(734, 16, 'Thanh toán đơn hàng', 'Payment Orders'),
(735, 8, 'Nhập số lượng cần mua', 'Nhập số lượng cần mua'),
(736, 16, 'Nhập số lượng cần mua', 'Enter the quantity you want to buy'),
(737, 8, 'Tổng tiền cần thanh toán', 'Tổng tiền cần thanh toán'),
(738, 16, 'Tổng tiền cần thanh toán', 'Total amount to pay'),
(739, 8, 'Bạn có mã giảm giá?', 'Bạn có mã giảm giá?'),
(741, 8, 'Nhập mã giảm giá của bạn', 'Nhập mã giảm giá của bạn'),
(743, 8, 'Nhập mã giảm giá', 'Nhập mã giảm giá'),
(744, 16, 'Nhập mã giảm giá', 'Enter coupon'),
(745, 16, 'Nhập mã giảm giá của bạn', 'Enter your coupon'),
(746, 8, 'Huỷ mã giảm giá', 'Huỷ mã giảm giá'),
(747, 16, 'Huỷ mã giảm giá', 'Cancel coupon'),
(748, 8, 'Số lượng cần mua', 'Số lượng cần mua'),
(749, 16, 'Số lượng cần mua', 'Quantity to buy'),
(750, 8, 'Mã giảm giá', 'Mã giảm giá'),
(751, 16, 'Mã giảm giá', 'Coupon'),
(752, 8, 'Đánh giá', 'Đánh giá'),
(753, 16, 'Đánh giá', 'Evaluate'),
(754, 8, 'Tải Về File Backup VIA', 'Tải Về File Backup VIA'),
(755, 16, 'Tải Về File Backup VIA', 'Download File Backup VIA'),
(756, 8, 'Nhập UID VIA cần tải về file backup', 'Nhập UID VIA cần tải về file backup'),
(757, 16, 'Nhập UID VIA cần tải về file backup', 'Enter the VIA UID to download the backup file'),
(758, 8, 'Vui lòng nhập UID cần tải', 'Vui lòng nhập UID cần tải'),
(759, 16, 'Vui lòng nhập UID cần tải', 'Please enter the UID to download'),
(760, 8, 'FAQ', 'FAQ'),
(761, 16, 'FAQ', 'FAQ'),
(762, 8, 'Xác nhận tải về đơn hàng', 'Xác nhận tải về đơn hàng'),
(763, 16, 'Xác nhận tải về đơn hàng', 'Order download confirmation'),
(764, 8, 'Bạn có chắc chắn muốn tải về hàng này không', 'Bạn có chắc chắn muốn tải về hàng này không'),
(765, 16, 'Bạn có chắc chắn muốn tải về hàng này không', 'Are you sure you want to download this item?'),
(766, 8, 'Tải về đơn hàng', 'Tải về đơn hàng'),
(767, 16, 'Tải về đơn hàng', 'Download order'),
(768, 8, 'Tải về đơn hàng thành công', 'Tải về đơn hàng thành công'),
(769, 16, 'Tải về đơn hàng thành công', 'Download order successfully'),
(770, 8, 'Tải về đơn hàng thất bại', 'Tải về đơn hàng thất bại'),
(771, 16, 'Tải về đơn hàng thất bại', 'Order download failed'),
(772, 8, 'Tài Liệu API', 'Tài Liệu API'),
(773, 16, 'Tài Liệu API', 'API Documentation'),
(774, 8, 'Số Dư', 'Số Dư'),
(775, 16, 'Số Dư', 'Balance'),
(776, 8, 'Sản phẩm không tồn tại trong hệ thống', 'Sản phẩm không tồn tại trong hệ thống'),
(777, 16, 'Sản phẩm không tồn tại trong hệ thống', 'The product does not exist in the system'),
(778, 8, 'Vui lòng nhập số lượng cần mua', 'Vui lòng nhập số lượng cần mua'),
(779, 16, 'Vui lòng nhập số lượng cần mua', 'Please enter the quantity you want to buy'),
(780, 8, 'Số lượng trong hệ thống không đủ', 'Số lượng trong hệ thống không đủ'),
(781, 16, 'Số lượng trong hệ thống không đủ', 'The number in the system is not enough'),
(782, 8, 'Số dư không đủ, vui lòng nạp thêm', 'Số dư không đủ, vui lòng nạp thêm'),
(783, 16, 'Số dư không đủ, vui lòng nạp thêm', 'The balance is not enough, please top up'),
(784, 8, 'Bạn đã bị khoá tài khoản vì gian lận', 'Bạn đã bị khoá tài khoản vì gian lận'),
(785, 16, 'Bạn đã bị khoá tài khoản vì gian lận', 'Your account has been blocked for cheating'),
(786, 8, 'Thanh toán đơn hàng thành công', 'Thanh toán đơn hàng thành công'),
(787, 16, 'Thanh toán đơn hàng thành công', 'Order payment successful'),
(788, 8, 'Không thể thanh toán, vui lòng thử lại', 'Không thể thanh toán, vui lòng thử lại'),
(789, 16, 'Không thể thanh toán, vui lòng thử lại', 'Unable to pay, please try again'),
(790, 8, 'Đang tải xuống đơn hàng...', 'Đang tải xuống đơn hàng...'),
(791, 16, 'Đang tải xuống đơn hàng...', 'Order downloading...'),
(792, 8, 'Xóa sản phẩm thành công', 'Xóa sản phẩm thành công'),
(793, 16, 'Xóa sản phẩm thành công', 'Delete product successfully'),
(794, 8, 'Tài khoản', 'Tài khoản'),
(796, 8, 'Tài khoản:', 'Tài khoản:'),
(797, 16, 'Tài khoản:', 'Account:'),
(798, 8, 'Số lượng mua:', 'Số lượng mua:'),
(800, 8, 'Thông báo', 'Thông báo'),
(801, 16, 'Thông báo', 'Notifications'),
(802, 8, 'Chi tiết thông báo', 'Chi tiết thông báo'),
(803, 16, 'Chi tiết thông báo', 'Notice details'),
(804, 8, 'Nạp Thẻ', 'Nạp Thẻ'),
(805, 16, 'Nạp Thẻ', 'Nạp Thẻ'),
(806, 8, 'Lưu Ý', 'Lưu Ý'),
(807, 16, 'Lưu Ý', 'Note'),
(808, 8, 'Lý do', 'Lý do'),
(809, 16, 'Lý do', 'Reason'),
(810, 8, 'Thực nhận', 'Thực nhận'),
(811, 16, 'Thực nhận', 'Received'),
(812, 8, 'Nhà mạng', 'Nhà mạng'),
(813, 16, 'Nhà mạng', 'Telco'),
(1011, 8, 'Chính sách bảo mật', 'Chính sách bảo mật'),
(1012, 16, 'Chính sách bảo mật', 'Privacy Policy'),
(1013, 8, 'Điều khoản sử dụng', 'Điều khoản sử dụng'),
(1014, 16, 'Điều khoản sử dụng', 'Terms of Use'),
(1015, 8, 'Captcha không chính xác', 'Captcha không chính xác'),
(1016, 16, 'Captcha không chính xác', 'Captcha is incorrect'),
(1017, 8, 'Nhập nội dung bên trái', 'Nhập nội dung bên trái'),
(1018, 16, 'Nhập nội dung bên trái', 'Enter the content on the left'),
(1019, 8, 'Vui lòng nhập mã captcha để xác minh', 'Vui lòng nhập mã captcha để xác minh'),
(1020, 16, 'Vui lòng nhập mã captcha để xác minh', 'Please enter captcha code to verify'),
(1021, 8, 'Bật/Tắt Google 2FA', 'Bật/Tắt Google 2FA'),
(1022, 16, 'Bật/Tắt Google 2FA', 'Enable/Disable Google 2FA'),
(1023, 8, 'Bật', 'Bật'),
(1024, 16, 'Bật', 'Enable'),
(1025, 8, 'Tắt', 'Tắt'),
(1026, 16, 'Tắt', 'Disable'),
(1027, 8, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này'),
(1028, 16, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Please save the information below before Enable this function'),
(1029, 8, 'Vui lòng chọn trạng thái 2FA', 'Vui lòng chọn trạng thái 2FA'),
(1030, 16, 'Vui lòng chọn trạng thái 2FA', 'Please select 2FA status'),
(1031, 8, 'Nhập mã xác minh để lưu thay đổi', 'Nhập mã xác minh để lưu thay đổi'),
(1032, 16, 'Nhập mã xác minh để lưu thay đổi', 'Enter the verification code to save changes'),
(1033, 8, 'Mã Xác Minh', 'Mã Xác Minh'),
(1034, 16, 'Mã Xác Minh', 'Verification Code'),
(1035, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator'),
(1037, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;'),
(1039, 16, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'OTP Verification: Perform verification using Google Authenticator App'),
(1040, 8, 'Xác thực hai yếu tố', 'Xác thực hai yếu tố'),
(1042, 8, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1043, 16, 'Two-Factor Authentication', 'Two-Factor Authentication'),
(1044, 8, 'Vui lòng nhập mã xác minh 2FA', 'Vui lòng nhập mã xác minh 2FA'),
(1045, 16, 'Vui lòng nhập mã xác minh 2FA', 'Please enter 2FA verification code'),
(1046, 8, 'Mã xác minh không chính xác', 'Mã xác minh không chính xác'),
(1047, 16, 'Mã xác minh không chính xác', 'Verification code is incorrect'),
(1048, 8, 'Xác minh 2FA', 'Xác minh 2FA'),
(1049, 16, 'Xác minh 2FA', '2FA Verification'),
(1050, 8, 'Xác minh Google Authenticator', 'Xác minh Google Authenticator'),
(1052, 8, 'Xác Minh OTP', 'Xác Minh OTP'),
(1053, 16, 'Xác Minh OTP', 'OTP Verification'),
(1054, 8, 'Nhập mã xác minh', 'Nhập mã xác minh'),
(1055, 16, 'Nhập mã xác minh', 'Enter verification code'),
(1056, 8, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập'),
(1057, 16, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Please verify 2FA to complete the login process'),
(1058, 8, 'Vui lòng nhập mã xác minh', 'Vui lòng nhập mã xác minh'),
(1059, 16, 'Vui lòng nhập mã xác minh', 'Please enter the verification code'),
(1060, 8, 'Đang bật bảo mật', 'Đang bật bảo mật'),
(1061, 16, 'Đang bật bảo mật', 'Security is on'),
(1062, 8, 'Đang tắt bảo mật', 'Đang tắt bảo mật'),
(1063, 16, 'Đang tắt bảo mật', 'Turning off security'),
(1064, 8, 'Số sao đánh giá không hợp lệ', 'Số sao đánh giá không hợp lệ'),
(1065, 16, 'Số sao đánh giá không hợp lệ', 'Invalid rating stars'),
(1066, 8, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.'),
(1067, 16, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Please enable Google 2FA 2-step verification to protect your account.'),
(1068, 8, 'Số tiền thực nhận', 'Số tiền thực nhận'),
(1069, 16, 'Số tiền thực nhận', 'The amount actually received'),
(1070, 8, 'Bảo Mật Tài Khoản', 'Bảo Mật Tài Khoản'),
(1071, 16, 'Bảo Mật Tài Khoản', 'Account Security'),
(1072, 8, 'Thông tin tài nguyên', 'Thông tin tài nguyên'),
(1073, 16, 'Thông tin tài nguyên', 'Resource Information'),
(1074, 8, 'Mở hộp quà', 'Mở hộp quà'),
(1075, 16, 'Mở hộp quà', 'Open the gift box'),
(1076, 8, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau'),
(1077, 16, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'This gift box has already been received, good luck next time'),
(1078, 8, 'Nhận Quà Thất Bại', 'Nhận Quà Thất Bại'),
(1079, 16, 'Nhận Quà Thất Bại', 'Receive Failure Gift'),
(1080, 8, 'Bạn đã mở hộp quà này rồi', 'Bạn đã mở hộp quà này rồi'),
(1081, 16, 'Bạn đã mở hộp quà này rồi', 'You have already opened this gift box'),
(1084, 8, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Chúc mừng bạn đã nhận được hộp quà trị giá'),
(1085, 16, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Congratulations on receiving a valuable gift box'),
(1086, 8, 'Quay về Trang Chủ', 'Quay về Trang Chủ'),
(1087, 16, 'Quay về Trang Chủ', 'Back to Home'),
(1089, 8, 'Nhận Quà Thành Công', 'Nhận Quà Thành Công'),
(1090, 16, 'Nhận Quà Thành Công', 'Receive Success Gifts');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `ctv` int(11) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL DEFAULT '0',
  `login_attempts` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `time_session` int(11) DEFAULT '0',
  `time_request` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `money` float NOT NULL DEFAULT '0',
  `total_money` float NOT NULL DEFAULT '0',
  `rankings` int(11) NOT NULL DEFAULT '0',
  `icon_ranking` text CHARACTER SET utf8mb4,
  `gender` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL DEFAULT 'Male',
  `device` text COLLATE utf8_vietnamese_ci,
  `avatar` text COLLATE utf8_vietnamese_ci,
  `status_2fa` int(11) NOT NULL DEFAULT '0',
  `SecretKey_2fa` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chietkhau` float NOT NULL DEFAULT '0',
  `spin` int(11) NOT NULL DEFAULT '0',
  `ref_id` int(11) NOT NULL DEFAULT '0',
  `ref_click` int(11) NOT NULL DEFAULT '0',
  `ref_money` float NOT NULL DEFAULT '0',
  `ref_total_money` float NOT NULL DEFAULT '0',
  `ref_amount` float NOT NULL DEFAULT '0',
  `ref_ck` float NOT NULL DEFAULT '0',
  `change_password` int(11) NOT NULL DEFAULT '0',
  `token_forgot_password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time_forgot_password` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `admin`, `ctv`, `banned`, `login_attempts`, `active`, `create_date`, `update_date`, `time_session`, `time_request`, `ip`, `token`, `money`, `total_money`, `rankings`, `icon_ranking`, `gender`, `device`, `avatar`, `status_2fa`, `SecretKey_2fa`, `chietkhau`, `spin`, `ref_id`, `ref_click`, `ref_money`, `ref_total_money`, `ref_amount`, `ref_ck`, `change_password`, `token_forgot_password`, `time_forgot_password`) VALUES
(1, 'tricoder', 'd3750729c391b853617aecd0ad229b91', 'tricoder.net@gmail.com', NULL, NULL, 1, 0, 0, 0, 0, '2023-07-21 21:40:24', '2023-07-21 21:40:24', 1690103583, 0, '116.97.106.244', 'd00e0c8e306f500d799588011ce28454', 0, 0, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, 0, 'VYANR2H4RLQGD3XL', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `withdraw_ref`
--

CREATE TABLE `withdraw_ref` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `bank` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `stk` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `create_gettime` datetime NOT NULL,
  `update_gettime` datetime NOT NULL,
  `reason` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banned_ips`
--
ALTER TABLE `banned_ips`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_service`
--
ALTER TABLE `category_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `connect_api`
--
ALTER TABLE `connect_api`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Chỉ mục cho bảng `coupon_used`
--
ALTER TABLE `coupon_used`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `crypto_invoice`
--
ALTER TABLE `crypto_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `document_categories`
--
ALTER TABLE `document_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`);

--
-- Chỉ mục cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `email_campaigns`
--
ALTER TABLE `email_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `email_sending`
--
ALTER TABLE `email_sending`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giftbox`
--
ALTER TABLE `giftbox`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Chỉ mục cho bảng `ip_white`
--
ALTER TABLE `ip_white`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `log_ref`
--
ALTER TABLE `log_ref`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nowpayments`
--
ALTER TABLE `nowpayments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Chỉ mục cho bảng `order_autofb`
--
ALTER TABLE `order_autofb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_service`
--
ALTER TABLE `order_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `otp_history`
--
ALTER TABLE `otp_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_flutterwave`
--
ALTER TABLE `payment_flutterwave`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_paypal`
--
ALTER TABLE `payment_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_pm`
--
ALTER TABLE `payment_pm`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_squadco`
--
ALTER TABLE `payment_squadco`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `paypal`
--
ALTER TABLE `paypal`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rate_autofb`
--
ALTER TABLE `rate_autofb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `send_email`
--
ALTER TABLE `send_email`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `server2_autobank`
--
ALTER TABLE `server2_autobank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tid` (`tid`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_order`
--
ALTER TABLE `service_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Chỉ mục cho bảng `service_otp`
--
ALTER TABLE `service_otp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `spin_history`
--
ALTER TABLE `spin_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `spin_option`
--
ALTER TABLE `spin_option`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `store_fanpage`
--
ALTER TABLE `store_fanpage`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `toyyibpay_transactions`
--
ALTER TABLE `toyyibpay_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`),
  ADD UNIQUE KEY `BillCode` (`BillCode`);

--
-- Chỉ mục cho bảng `translate`
--
ALTER TABLE `translate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `withdraw_ref`
--
ALTER TABLE `withdraw_ref`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112247;

--
-- AUTO_INCREMENT cho bảng `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banned_ips`
--
ALTER TABLE `banned_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category_service`
--
ALTER TABLE `category_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `connect_api`
--
ALTER TABLE `connect_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `coupon_used`
--
ALTER TABLE `coupon_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `crypto_invoice`
--
ALTER TABLE `crypto_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `document_categories`
--
ALTER TABLE `document_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `email_campaigns`
--
ALTER TABLE `email_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `email_sending`
--
ALTER TABLE `email_sending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giftbox`
--
ALTER TABLE `giftbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT cho bảng `ip_white`
--
ALTER TABLE `ip_white`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `log_ref`
--
ALTER TABLE `log_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nowpayments`
--
ALTER TABLE `nowpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_autofb`
--
ALTER TABLE `order_autofb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_service`
--
ALTER TABLE `order_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `otp_history`
--
ALTER TABLE `otp_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment_flutterwave`
--
ALTER TABLE `payment_flutterwave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment_paypal`
--
ALTER TABLE `payment_paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment_pm`
--
ALTER TABLE `payment_pm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `payment_squadco`
--
ALTER TABLE `payment_squadco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `paypal`
--
ALTER TABLE `paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rate_autofb`
--
ALTER TABLE `rate_autofb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `send_email`
--
ALTER TABLE `send_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `server2_autobank`
--
ALTER TABLE `server2_autobank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service_order`
--
ALTER TABLE `service_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service_otp`
--
ALTER TABLE `service_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT cho bảng `spin_history`
--
ALTER TABLE `spin_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `spin_option`
--
ALTER TABLE `spin_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `store_fanpage`
--
ALTER TABLE `store_fanpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `toyyibpay_transactions`
--
ALTER TABLE `toyyibpay_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `translate`
--
ALTER TABLE `translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1091;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `withdraw_ref`
--
ALTER TABLE `withdraw_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
