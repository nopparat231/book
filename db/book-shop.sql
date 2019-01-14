-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2019 at 05:04 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_address` varchar(100) NOT NULL,
  `admin_tel` varchar(10) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user`, `admin_pass`, `admin_name`, `admin_address`, `admin_tel`, `admin_email`, `status`, `date_save`) VALUES
(1, '1', '1', 'admin', 'test add', '1234567890', 'e-mail@admin.com', 'admin', '2017-08-30 01:57:41'),
(2, '2', '2', 'staff', 'test staff', '1123456789', 'e-mail@staff.com', 'staff', '2018-01-25 04:13:06'),
(10, '3', '3', 'superadmin', 'adad', '902020202', 'dsasaf@hotmail.com', 'superadmin', '2018-08-30 14:54:38'),
(11, 'dfdfd', 'sdfdsf', 'sdfdsf', 'sdfdsf', '0902020202', 'staff@staff.sfg', 'staff', '2018-09-02 04:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `b_id` int(11) NOT NULL,
  `b_number` varchar(50) NOT NULL,
  `b_name` varchar(50) NOT NULL,
  `b_type` varchar(50) NOT NULL,
  `b_owner` varchar(50) NOT NULL,
  `bn_name` varchar(50) NOT NULL,
  `b_logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`b_id`, `b_number`, `b_name`, `b_type`, `b_owner`, `bn_name`, `b_logo`) VALUES
(2, '365-3032132-3212', 'กรุงไทย', 'ออมทรัพ', 'สมชาย ใจดี', 'พระสมุทรเจดีย์', 'imgb87159464020180819_000254.jpg'),
(3, '543-1534-54634-212', 'กสิกรไทย', 'ออมทรัพย์', 'มงคล ศรีสุข', 'พระสมุทรเจดีย์', 'imgb197504342620180818_223441.png'),
(4, '445-354-3232-212', 'ไทยพาณิชย์', 'ออมทรัพย์', 'สมบูรณ์ มั่งมี', 'พระสมุทรเจดีย์', 'imgb133828463220180818_223607.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carousel`
--

CREATE TABLE `tbl_carousel` (
  `carousel_id` int(50) NOT NULL,
  `carousel_img_1` varchar(200) NOT NULL,
  `carousel_img_2` varchar(200) NOT NULL,
  `carousel_img_3` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `about` varchar(5000) NOT NULL,
  `location` varchar(2000) NOT NULL,
  `contact` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_carousel`
--

INSERT INTO `tbl_carousel` (`carousel_id`, `carousel_img_1`, `carousel_img_2`, `carousel_img_3`, `logo`, `about`, `location`, `contact`) VALUES
(4, 'img1187328252720190109_231148.jpg', '', '', 'logo213204145920190109_231300', '<h1><strong>เกี่ยวกับ</strong></h1>\r\n\r\n<ul>\r\n	<li>แมกกาซีนโพสต์กระดี๊กระด๊าเซ่นไหว้ ดยุคน้องใหม่โมเต็ลคลาสสิกแพตเทิร์น วีซ่าวานิลลารีเสิร์ชโซลาร์ติว ฮันนีมูนแฟรี่แลนด์เฟอร์รี่ เสือโคร่งหมั่นโถวล้มเหลว ราเมนตัวเอง เซ็กซี่คอปเตอร์บร็อกโคลี มยุราภิรมย์เอ็กซ์เพรส ฮาลาลตุ๊กชาร์ป มาร์ตคณาญาติแรงใจไชน่าคอมพ์ โปรเจกต์สารขัณฑ์แฟรี่ตรวจทาน วาทกรรมโฮปสแตนดาร์ดสเตชั่นแพ็ค จิตพิสัยแรลลี่เซรามิกวอล์ก แอสเตอร์ บอร์ด สามแยกอัตลักษณ์ปาสเตอร์</li>\r\n</ul>\r\n\r\n<p>ไฮบริด โทรป๊อกซีอีโอเกจิ แอปเปิ้ลพริตตี้โอวัลติน กลาสโรแมนติกสติ๊กเกอร์เทรลเล่อร์ปิกอัพ ผ้าห่มฟลอร์ซะทิปดีลเลอร์ ไทเฮาครัวซองต์โมหจริต สุริยยาตร์แอปพริคอทปาร์ตี้ทับซ้อน โอเปอเรเตอร์ระโงกพรีเมียร์จัมโบ้ ดีกรีแรลลีบอมบ์บรรพชน รันเวย์โพลล์ซีเนียร์โง่เขลา</p>\r\n\r\n<blockquote>\r\n<p>วานิลลาเซ็กซ์โคโยตี้ ฟาสต์ฟู้ดราชานุญาตฟินิกซ์ธัมโมเซี้ยว จอหงวนริกเตอร์ดีเจซิตีอุเทน สปายผ้าห่มขั้นตอนเดโมอพาร์ทเมนต์ โฟล์ควอลนัท ซูชินายแบบจูเนียร์ก๊วนซานตาคลอส</p>\r\n</blockquote>\r\n\r\n<p>ตู้เซฟคอร์ปอเรชั่นเอ๋เปราะบางคอมพ์ แป๋วเตี๊ยม โปรโมชั่นคอร์ปอเรชั่นเฉิ่มชินบัญชร ดีพาร์ทเมนท์ช็อปเปอร์คอมเพล็กซ์ ไลท์แรงผลักตัวเองเทคโน แหม็บเคลมคอมพ์ตัวตนสเตชั่น วีซ่าบุ๋นมาร์ช เฟอร์รี่เรตติ้งวิภัชภาค ลิมิตต่อยอดนินจาแคปเคอร์ฟิว ลอจิสติกส์ เวณิกาเนิร์สเซอรี เพียว อะเทวาปัจเจกชนเป็นไง เซ็นทรัลเทเลกราฟแรงใจครูเสดโปรเจ็คท์ ซิ่งโครนา บ๋อย</p>\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1938.595596587938!2d100.49419010624965!3d13.646130823708022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e2a252bd82b47d%3A0xc034251f993faa17!2sMilk&#39;sic+House!5e0!3m2!1sth!2sth!4v1543593091563\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '<h2><strong>ติดต่อเรา</strong></h2>\r\n\r\n<ol>\r\n	<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s</li>\r\n	<li>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s</li>\r\n</ol>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `mem_id` int(11) NOT NULL,
  `mem_name` varchar(50) NOT NULL,
  `mem_address` varchar(255) NOT NULL,
  `mem_tel` varchar(10) NOT NULL,
  `mem_username` varchar(20) NOT NULL,
  `mem_password` varchar(20) NOT NULL,
  `mem_email` varchar(20) NOT NULL,
  `status` varchar(5) NOT NULL,
  `sid` varchar(32) NOT NULL,
  `active` varchar(3) NOT NULL,
  `dateinsert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`mem_id`, `mem_name`, `mem_address`, `mem_tel`, `mem_username`, `mem_password`, `mem_email`, `status`, `sid`, `active`, `dateinsert`) VALUES
(14, 'asdasdasd', 'asdsadasd', '0902020202', 'sdfsdfsad', 'asdasdasd', '23.noop@gmail.com', 'user', 'u3ia1e8d7ddbmcpqt7b0uq2tr0', 'no', '2018-08-25 18:46:17'),
(15, 'ssss', 'ssss', '0902020202', 'sssss', 'sssss', '23.noop@gmail.com', 'user', 'u3ia1e8d7ddbmcpqt7b0uq2tr0', 'yes', '2018-08-25 19:04:23'),
(16, 'kkkkkk', 'ffff 123', '0902020202', 'ffff', 'ffff', '23.noop@gmail.com', 'user', 'u3ia1e8d7ddbmcpqt7b0uq2tr0', 'yes', '2018-08-26 03:28:10'),
(17, 'ddd', 'ddd', '3333333333', 'ddd', 'ddd', '23.noop@gmail.com', 'user', '3vravt2ad0rg6g0j4tmfbsll86', 'yes', '2018-08-26 10:18:29'),
(18, 'ooo', 'ooo1', '2222222222', 'ooo', 'ooo', '23.noop@gmail.com', 'user', 'm7p04r56u740ifloh8i6t3sku0', 'yes', '2018-08-27 13:57:19'),
(19, 'lll', 'llllllllll', '0902020202', 'lll', 'lll', 'dd@g.com', 'user', 'AddByAdmin', 'yes', '2018-08-30 14:57:27'),
(20, 'ssd', 'ssd', '0902020202', 'ssd', 'ssd', '23.noop@gmail.com', 'user', '5lsigemf6b9jvsqdolmm45hfl1', 'yes', '2018-08-30 15:00:02'),
(21, 'hjhjhj', 'jhjhjh', '0902020202', 'sdsdlll', 'jhjhj', '23.noop@gmail.com', 'user', 'im17psrnfj8v23esk0nfjdthq2', 'no', '2018-09-02 07:28:31'),
(22, 'sdfsdfsg', 'sdfsdfsf', '9090909090', 'sdfsdf', 'sdfsdf', '23.noop@gmail.com', 'user', '2be64vlnstbsdln2nvb8gcuod2', 'no', '2018-11-28 12:09:16'),
(23, 'jhjkhkjh', 'kjhjhk', '9090909090', 'jhkj', 'hgfhgfhg', '23.noop@gmail.com', 'user', '2be64vlnstbsdln2nvb8gcuod2', 'no', '2018-11-28 12:09:46'),
(24, 'kjhkh', 'ghjghjg', '9090909090', 'ytuytyu', '123123123', '23.noop@gmail.com', 'user', '2be64vlnstbsdln2nvb8gcuod2', 'no', '2018-11-28 12:19:26'),
(25, 'asfa', '43212', '9090909090', 'sdsdsaa', 'aassddd', '23.noop@hjgffmail.co', 'user', 'lbh46e3vemm9fnv4iafpkr5o86', 'no', '2018-12-07 13:15:08'),
(26, 'sdfwer', '14675', '9090909090', 'asfaree', 'werwrsd', '23.noop@hgmkoail.com', 'user', 'lbh46e3vemm9fnv4iafpkr5o86', 'no', '2018-12-07 13:17:15'),
(27, 'หกดหกด', '33596', '9090909090', 'sdfdsf', 'sdfsdfsdfsdf', 'ert@gdf.bb', 'user', 'lbh46e3vemm9fnv4iafpkr5o86', 'no', '2018-12-07 13:21:06'),
(28, 'sdfszx', '13110', '9090909090', 'zxcvxc', '123123123', 'ert@gfjk.bb', 'user', 'lbh46e3vemm9fnv4iafpkr5o86', 'no', '2018-12-07 13:22:21'),
(29, 'sdfxcv', '14160', '9090909090', 'DFGCZX', 'xcvxcv', 'ert@glf.bb', 'user', 'lbh46e3vemm9fnv4iafpkr5o86', 'no', '2018-12-07 13:23:22'),
(30, 'sdsadad', 'sdf33เกตรีเมืองสตูลสตูล91140', '9090909090', 'rootasdasd', '123123123', 'ert@dfdff.bb', 'user', 'lbh46e3vemm9fnv4iafpkr5o86', 'no', '2018-12-07 13:26:19'),
(31, 'asdsdss', '22aa ตำบล สกาด อำเภอ ปัว จังหวัด น่าน รหัสไปรษณีย์ 55120', '9090909090', 'asd22', '123123123asdsad', 'ert@gggf.bb', 'user', 'hrm84v2cj39ea1nku06oq77j75', 'no', '2018-12-07 13:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new`
--

CREATE TABLE `tbl_new` (
  `new_id` int(11) NOT NULL,
  `new_v` varchar(2000) NOT NULL,
  `new_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_new`
--

INSERT INTO `tbl_new` (`new_id`, `new_v`, `new_time`) VALUES
(6, '<h2>การแก้ไขไดร์เวอร์ StorAHCI.sys</h2>\r\n\r\n<p><img alt=\"\" src=\"https://www.windowssiam.com/wp-content/uploads/2018/02/Fix-Disk-100Windows-10-5.jpg\" style=\"height:231px; width:481px\" /></p>\r\n\r\n<p>สำหรับใครที่<strong>มีปัญหากับ Disk 100%ในการใช้คอมพิวเตอร์</strong>นั้นเพื่อนๆสามารถทำการแก้ไขเบื้องต้นได้ง่ายๆ โดยเพื่อนๆให้ทำตามที่แอดมินแนะนำก่อนละกันผมว่ามันช่วยได้ ไม่ว่าเพื่อนๆจะใช้ Windows 10 , Windows 8.1 หรือ Windows 7 ซึ่งกำลังมีปัญหากับการใช้คอมพิวเตอร์และเครื่องช้ามากๆ และ Disk 100% เพื่อนๆจะสามารถแก้ไขได้เบื้องต้นนั้นเอง เพราะมีคนหลังไมค์มาหาแอดมินเยอะมากในการแก้ไข Disk 100% ทางแอดมินก็เลยเขียนบทความออกมา ให้เพื่อนๆให้ทำการแก้ไชเบื้องต้นดูก่อนนั่นเอง</p>\r\n', '2019-01-13 04:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `mem_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `order_status` int(1) NOT NULL,
  `pay_slip` varchar(200) DEFAULT NULL,
  `b_name` varchar(100) DEFAULT NULL,
  `b_number` varchar(200) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `pay_amount` float(10,2) DEFAULT NULL,
  `postcode` varchar(30) DEFAULT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `mem_id`, `name`, `address`, `email`, `phone`, `order_status`, `pay_slip`, `b_name`, `b_number`, `pay_date`, `pay_amount`, `postcode`, `order_date`) VALUES
(000006, 18, 'ooo', 'ooo', '23.noop@gmail.com', '2147483647', 4, '', '', '', '0000-00-00', 0.00, '', '2018-08-27 20:59:19'),
(000007, 17, 'ddd', 'ddd', '23.noop@gmail.com', '2147483647', 3, '10576391820180829_202534.jpg', 'ไทยพาณิชย์', '445', '2018-08-29', 230.00, 'TT12121212', '2018-08-29 20:25:04'),
(000008, 17, 'ddd', 'ddd', '23.noop@gmail.com', '2147483647', 3, '', '', '', '0000-00-00', 0.00, 'tr21212544545', '2018-08-29 20:27:24'),
(000009, 20, 'ssd', 'ssd', '23.noop@gmail.com', '902020202', 3, '210719718620180830_220641.jpg', 'กสิกรไทย', '543', '2018-08-30', 35415.00, 'gg4144', '2018-08-30 22:01:52'),
(000010, 20, 'ssd', 'ssd', '23.noop@gmail.com', '902020202', 4, '93588791420180902_112859.jpg', 'ไทยพาณิชย์', '445', '2018-09-02', 674.00, '', '2018-09-02 11:27:22'),
(000011, 20, 'ssd', 'ssd', '23.noop@gmail.com', '902020202', 4, '', '', '', '0000-00-00', 0.00, '', '2018-09-02 11:29:55'),
(000012, 17, 'ddd', 'ddd', '23.noop@gmail.com', '3333333333', 4, '46313357420181101_222217.jpg', 'กสิกรไทย-543-1534-54634-212', '', '2018-11-01', 179.00, '', '2018-11-01 22:21:02'),
(000013, 17, 'ddd', 'ddd', '23.noop@gmail.com', '3333333333', 3, '74981881020181102_222634.jpg', 'กสิกรไทย', '543-1534-54634-212', '2018-11-02', 266.43, 'TH1235455556', '2018-11-02 22:20:17'),
(000014, 17, 'ddd', 'ddd', '23.noop@gmail.com', '3333333333', 4, '', '', '', '0000-00-00', 0.00, '', '2018-11-02 23:02:38'),
(000015, 17, 'ddd', 'ddd', '23.noop@gmail.com', '3333333333', 5, '142501936520181102_230316.jpg', 'ไทยพาณิชย์', '445-354-3232-212', '2018-11-02', 100.58, '', '2018-11-02 23:03:02'),
(000016, 17, 'ddd', 'ddd', '23.noop@gmail.com', '3333333333', 5, '192974971320181102_230712.jpg', 'กสิกรไทย', '543-1534-54634-212', '2018-11-02', 321.00, '', '2018-11-02 23:06:42'),
(000017, 17, 'ddd', 'ddd', '23.noop@gmail.com', '3333333333', 2, '136460870920181102_232114.jpg', 'กสิกรไทย', '543-1534-54634-212', '2018-11-02', 100.58, '', '2018-11-02 23:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `d_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) DEFAULT NULL,
  `p_c_qty` int(11) NOT NULL,
  `total` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`d_id`, `order_id`, `p_id`, `p_name`, `p_c_qty`, `total`) VALUES
(12, 7, 31, 'ช่างร้ายเหลือ เล่ม 3', 1, 230.00),
(13, 8, 24, 'Lofficiel Hommes (ปก เป๊ก ผลิตโชค)', 1, 120.00),
(14, 9, 29, 'คุมะมิโกะ คนทรงหมี ล.8 ฉ.การ์ตูน', 1, 59.00),
(15, 9, 28, 'มนุษย์สุดมโน', 4, 748.00),
(16, 10, 31, 'ช่างร้ายเหลือ เล่ม 3', 2, 460.00),
(17, 10, 28, 'มนุษย์สุดมโน', 1, 187.00),
(18, 11, 28, 'มนุษย์สุดมโน', 1, 187.00),
(19, 12, 29, 'คุมะมิโกะ คนทรงหมี ล.8 ฉ.การ์ตูน', 1, 59.00),
(20, 12, 24, 'Lofficiel Hommes (ปก เป๊ก ผลิตโชค)', 1, 120.00),
(21, 13, 24, 'Lofficiel Hommes (ปก เป๊ก ผลิตโชค)', 1, 120.00),
(22, 13, 29, 'คุมะมิโกะ คนทรงหมี ล.8 ฉ.การ์ตูน', 1, 59.00),
(23, 14, 29, 'คุมะมิโกะ คนทรงหมี ล.8 ฉ.การ์ตูน', 1, 59.00),
(24, 15, 29, 'คุมะมิโกะ คนทรงหมี ล.8 ฉ.การ์ตูน', 1, 59.00),
(25, 16, 26, 'รัชศกเฉิงฮว่าปีที่สิบสี่ เล่ม 4', 1, 265.00),
(26, 17, 29, 'คุมะมิโกะ คนทรงหมี ล.8 ฉ.การ์ตูน', 1, 59.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `t1_id` int(10) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detial` text NOT NULL,
  `p_at` varchar(100) NOT NULL,
  `p_pu` varchar(100) NOT NULL,
  `p_br` int(100) NOT NULL,
  `promo` float(10,2) NOT NULL,
  `promo_start` date NOT NULL,
  `promo_done` date NOT NULL,
  `p_price` float(10,2) NOT NULL,
  `p_unit` varchar(20) NOT NULL,
  `p_img1` varchar(200) NOT NULL,
  `p_img2` varchar(100) DEFAULT NULL,
  `p_view` int(11) NOT NULL,
  `p_qty` int(11) DEFAULT NULL,
  `p_ems` int(50) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `t_id`, `t1_id`, `p_name`, `p_detial`, `p_at`, `p_pu`, `p_br`, `promo`, `promo_start`, `promo_done`, `p_price`, `p_unit`, `p_img1`, `p_img2`, `p_view`, `p_qty`, `p_ems`, `date_save`) VALUES
(24, 2, 13, 'Lofficiel Hommes (ปก เป๊ก ผลิตโชค)', '<p>Lofficiel Hommes (ปก เป๊ก ผลิตโชค) ฉบับ สิงหาคม 2018 นี้</p>\r\n\r\n<p>- พบกับ Fashion Set&nbsp;จากเป๊ก ผลิตโชค พร้อมภาพเบื้องหลังแบบที่ไม่เคยเห็นที่ไหนมาก่อนกว่า 20 หน้า</p>\r\n\r\n<p>- บทสัมภาษณ์เป้ อารักษ์กับรสนิยมทางแฟชั่นที่เปลี่ยนไป</p>\r\n\r\n<p>- บทสัมภาษณ์อนันดาเกี่ยวกับ ขุนพันธ์ 2</p>\r\n', 'ท้อฟฟี่ แบรดชอร์', 'Her Publishing', 2147483647, 0.00, '0000-00-00', '0000-00-00', 120.00, 'เล่ม', 'img152454060320180820_202849.jpg', '', 19, 115, 35, '2018-08-20 13:28:49'),
(25, 6, 3, 'ปาฏิหาริย์ร้านชำของคุณนามิยะ ', '<ul>\r\n	<li>\r\n	<h2>ปาฏิหาริย์ร้านชำของคุณนามิยะ โดย ฮิงาชิโนะ เคโงะ</h2>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>ปาฏิหาริย์ร้านชำของคุณนามิยะ หนังสือดี กับเรื่องราวให้แง่คิดดีๆ&nbsp; กับชีวิต โดย&nbsp;</strong><strong>ฮิงาชิโนะ เคโงะ</strong></p>\r\n\r\n<p>ในนาทีนี้ หนังสือที่เป็นที่โจทย์ขานกันเล่มหนึ่ง คือ&nbsp;<strong>ปาฏิหาริย์ร้านชำของคุณนามิยะ</strong>&nbsp;ของผู้แต่งนิยายแนวสืบสวน ฮิงาชิโนะ เคโงะ นอกจากนี้ยังติดอันดับขายดีในร้านหนังสือนายอินทร์อยู่หลายสัปดาห์ และยังขายดีมาเรื่อยๆ ทางนายอินทร์จึงขอแนะนำเรื่องนี้ เนื่องจากมีการดำเนินเรื่องที่ไม่เหมือนใคร อ่านคำโปรยแล้วอาจจะดูธรรมดา แต่หนังสือปาฏิหารย์ร้านชำของคุณนามิยะ เล่มนี้นั้น ไม่ธรรมดาเลยทีเดียว ด้วยยอดขาย กว่า 12 ล้านเล่ม และถูกนำมาสร้างเป็นภาพยนตร์ ทั้งในญี่ปุ่น และจีนอีกด้วย</p>\r\n\r\n<p>หนังสือเล่มนี้บอกเล่าเรื่องราวของหัวขโมย 3 คน ที่หลงเข้ามาใน<strong><em>ร้านชำของคุณนามิยะ</em></strong>&nbsp;ที่ปิดตายไปสามสิบสามปีแล้ว และทั้ง 3 ก็ได้รับจดหมาย ที่ต้องการปรึกษาปัญหา ของหญิงสาวจากอดีต ใช่จากอดีตเมื่อ 40 ปีมาแล้ว จากการเริ่มตอบจดหมายฉบับแรกหัวขโมยทั้ง 3 ก็ได้รับจดหมาย โต้ตอบกลับไปมา พร้อมทั้งให้คำแนะนำจากอนาคต ใช่แต่หญิงสาวคนนี้เพียงคนเดียว ทั้งสามยังตอบคำถาม และให้แรงบันดาลใจ กับหลายๆ คนที่ส่งปัญหามาถึงคุณนามิยะ เรื่องราวความสนุก มันไม่ใช่แค่การตอบคำถามของทั้งสามคน หากแต่อยู่ที่การผูกโยงเรื่องราว ของทั้งสามกับตัวละครที่ส่งจดหมายมาหา นอกจากนี้ ยังเชื่อมโยงให้เห็นถึงผลของคำตอบของชายหนุ่มทั้งสามอีกด้วย</p>\r\n\r\n<p>หนังสือนิยายเล่มนี้ เริ่มต้นเรื่องราวแบบธรรมดาๆ แต่ตอนจบนั้น ลึกซึ้งกินใจนักอ่านหลายๆ คน จนมียอดพิมพ์กว่า 12 ล้านเล่มทั่วโลก ร้านนายอินทร์จึงขอแนะนำนิยายเรื่องนี้ ปาฏิหาริย์ร้านชำของคุณนามิยะ ให้เป็นนิยายที่ห้ามพลาดเลยทีเดียว</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>เนื้อหาปกหลัง</h2>\r\n\r\n<p><strong>ปาฏิหาริย์ร้านชำของคุณนามิยะ</strong></p>\r\n\r\n<p>ในความเงียบสงัดยามวิกาล&nbsp; หัวขโมยสามคนก่อเหตุและเข้าไปซ่อนตัวในร้านชำร้าง<br />\r\nทันใดนั้นก็มีจดหมายลึกลับสอดเข้ามาทางช่องประตู</p>\r\n\r\n<p>ใครบางคนเขียนเล่าปัญหาชีวิตและขอคำแนะนำจากเจ้าของร้านชำ<br />\r\nหัวขโมยทั้งสามจึงนึกสนุกและสวมรอยเขียนตอบเอง</p>\r\n\r\n<p>แต่จู่ ๆ จดหมายที่เขียนก็หายวับไป...แทนที่ด้วยจดหมายฉบับใหม่<br />\r\nปรากฏว่าจดหมายที่ว่านั้นถูกส่งมาจากอดีตเมื่อ 40 ปีก่อน!</p>\r\n\r\n<p>พวกเขาสงสัยว่าร้านชำแห่งนี้น่าจะมีกลไกบางอย่าง<br />\r\nทำให้ติดต่อกับคนในอีกยุคสมัยได้&nbsp; และคนที่น่าจะรู้<br />\r\nความลับนี้ก็คือ&nbsp; คุณนามิยะ&nbsp; เจ้าของร้าน&nbsp;&nbsp;<br />\r\nแต่ปัญหาคือเขาจากโลกนี้ไปหลายสิบปีแล้ว!</p>\r\n\r\n<p>เมื่อมิติแห่งกาลเวลามาบรรจบ...<br />\r\nร้านชำที่เคยช่วยเหลือผู้คนมากมายผ่านจดหมาย<br />\r\nจะทำให้ปาฏิหาริย์เกิดขึ้นอีกครั้งได้หรือไม่</p>\r\n', 'ท้อฟฟี่ แบรดชอร์', 'Her Publishing', 2147483647, 0.00, '0000-00-00', '0000-00-00', 285.00, 'เล่ม', 'img123262548920180820_203621.jpg', 'img223262548920180820_203621.jpg', 1, 21, 35, '2018-08-20 13:36:21'),
(26, 2, 6, 'รัชศกเฉิงฮว่าปีที่สิบสี่ เล่ม 4', '<p><strong>รัชศกเฉิงฮว่าปีที่สิบสี่ เล่ม 4</strong></p>\r\n\r\n<ul>\r\n	<li><strong>ถังฟั่น</strong>&nbsp;มีชื่อรองว่า รุ่นชิง เวลานี้ถูกปลดออกจากตำแหน่งเป็นขุนนางก็แต่เพียงในนาม ทว่าตัวเขากลับไม่เดือดเนื้อ ร้อนใจ ยังคงสมถะเรียบง่าย พอใจในสิ่งที่ตนมี พิถีพิถันก็แค่กับเรื่องอาหารการกิจเท่านั้น</li>\r\n	<li><strong>สุยโจว</strong>&nbsp;มีชื่อรองว่า ก่วงชวน องครักษ์เสื้อแพรแห่งกองปราบฝ่ายเหนือ เงียบขรึมพูดน้อย ไม่ค่อยแสดงอารมณ์พื้นฐานครอบครัวไม่ธรรมดา มีความสัมพันธ์ทางเครือญาติกับพระพันปีองค์ปัจจุบัน</li>\r\n	<li><strong>ถึงอวี๋</strong>&nbsp;พี่สาวของถังฟั่น แต่งกับเฮ่อหลินซึ่งเป็นบุตรคนรองของเฮ่ออิง ทั้งคู่มีบุตรด้วยกันหนึ่งคน ชื่อเฮ่อเฉิง ถังฟั่น เรียกหาว่า เจ้าเจ็ด</li>\r\n	<li><strong>เฮ่ออิง</strong>&nbsp;ท่านผู้เฒ่าสกุลเฮ่อ ผู้นำตระกูลขุนนางท้องถิ่น ในอดีตเคยเป็นถึงขุนนางขั้นสาม และเป็นสหายสนิทของบิดาถังฟั่นกับถังอวี๋ จึงหมั้นหมายให้ทายาทของสองตระกูลแต่งงานเกี่ยวดองเป็นญาติ</li>\r\n</ul>\r\n\r\n<h2>เนื้อหาปกหลัง</h2>\r\n\r\n<p>&#39;อันที่จริงการไม่ต้องทำหน้าที่ขุนนางแล้วก็มีข้อดีมากมาย หนึ่งในนั้นคือมีอิสรเสรี อยากทำอะไรก็ทำ อยากไปที่ใดก็ไป ด้วยเหตุนี้ถังฟั่นจึงถือโอกาสว่างเว้นจากหน้าที่อย่างไม่มีกำหนดเดินทางไปเยี่ยมพี่สาวกับหลานชายที่ออกเรือนไปอยู่ต่างเมืองเพียงเพื่อที่จะพบว่าพวกนางแม่ลูกหาได้มีชีวิตที่อบอุ่นอภิรมย์ ที่แท้หลังถังอวี๋แต่งเข้าสกุลเฮ่อต้องเจอกับเรื่องอะไรบ้างกัน ถังฟั่นซึ่งบัดนี้ไม่มีอำนาจแล้วจะช่วยเหลือนางได้กี่มากน้อย<br />\r\nทว่า...&nbsp; เรื่องในบ้านสกุลเฮ่อยังหาทางออกที่เหมาะสมไม่ได้พวกเขาก็ต้องเข้าไปพัวพันกับคดีฆ่าคนตายในคฤหาสน์คหบดีประจำอำเภอเมื่อผู้ต้องสงสัยว่าสังหารบุตรีคนเล็กของคหบดีผู้นั้นคือหลานชายวัยเพียงเจ็ดขวบของถังฟั่น!</p>\r\n', 'ท้อฟฟี่ แบรดชอร์', 'Her Publishing', 2147483647, 0.00, '0000-00-00', '0000-00-00', 265.00, 'เล่ม', 'img120896831420180820_210825.jpg', 'img220896831420180820_210825.jpg', 28, 49, 35, '2018-08-20 14:08:25'),
(27, 2, 3, 'รัชศกเฉิงฮว่าปีที่สิบสี่ เล่ม 3', '<p><strong>รัชศกเฉิงฮว่าปีที่สิบสี่ เล่ม 3</strong></p>\r\n\r\n<p>&#39;เพราะผลงานไขคดีที่อยู่ใต้พระเนตรพระกรรณองค์จักรพรรดิ ทำให้ในที่สุดถังฟั่นก็ได้เลื่อนขั้น ย้ายเข้ากรมอาญาไปเป็นหัวหน้ากองพลาธิการ แต่การมารับตำแหน่งนี้ของเขาออกจะลัดขั้นตอนและกะทันหันไปสักหน่อย<br />\r\nจึงไปขัดหูขัดตาขัดแข้งขัดขาหลายคนในกรมอาญาเข้า เฮ้อ! ใช่ว่าเขาเลือกอะไรได้เสียที่ไหน ที่เลือกได้คือยืนหยัดในอุดมการณ์ของตนต่อไปนั่นล่ะ! แต่แล้วจุดเปลี่ยนในชีวิตการเป็นขุนนางของเขาก็มาถึง&hellip; เกิดคดีแปลกประหลาดและแสนจะสะเทือนขวัญขึ้นในพื้นที่การดูแลของถังฟั่น ณ ที่ตั้งสุสานอดีตจักรพรรดิมีชาวบ้านสูญหายปริศนาสิบกว่าชีวิตยังมีเสียงร้องไห้โหยหวนที่ไม่รู้ต้นตอ เรื่องทั้งหมดนี้เป็นฝีมือโจรขุดสุสานหรือเป็นอาถรรพ์ของ &lsquo;เทพแม่น้ำ&rsquo; ตามความเชื่อของชาวบ้านกันแน่ถังฟั่นพร้อมด้วยสุยโจวสหายสนิท&nbsp;กำลังจะเดินทางไปไขปริศนาสุสานอดีตจักรพรรดิแล้ว!</p>\r\n', 'ท้อฟฟี่ แบรดชอร์', 'Her Publishing', 2147483647, 0.00, '0000-00-00', '0000-00-00', 274.00, 'เล่ม', 'img1121799462720180820_211055.jpg', 'img2121799462720180820_211055.jpg', 47, 54, 35, '2018-08-20 14:10:55'),
(28, 2, 1, 'มนุษย์สุดมโน', '<p>&nbsp;</p>\r\n\r\n<p>&quot;มนุษย์สุดมโน&quot; เป็นหนังสือที่เอ่ยถึงคนคุ้นเคยและคนแปลกหน้าที่เคยพบกันในชีวิต บางคนอาจเป็นคนที่คุณรู้จัก บางคนอาจจะไม่เคยรู้ และบางทีเขาอาจจะเขียนถึงตัวคุณ ประสบการณ์พบปะกับผู้คนที่หลากหลาย เผยให้เห็นความเป็นมนุษย์ในหลายมุมที่ทำเอาเราต้องคิดตาม ขำตาม ไปจนถึงร้องไห้ตาม และที่สุดนำไปสู่ความอยากเป็นมนุษย์ที่ดีขึ้นกว่าเมื่อวันวาน</p>\r\n', 'ท้อฟฟี่ แบรดชอร์', 'Her Publishing', 2147483647, 310.00, '2018-11-29', '2019-01-10', 187.00, 'เล่ม', 'img1139098293220180820_211241.jpg', 'img2139098293220180820_211241.jpg', 36, 42, 15, '2018-08-20 14:12:41'),
(31, 6, 3, 'ช่างร้ายเหลือ เล่ม 3', '<ul>\r\n	<li>ผู้เขียน :&nbsp;ชิงชิงเตอะโย่วหลัน</li>\r\n	<li>สำนักพิมพ์ :&nbsp;ห้องสมุดดอตคอม</li>\r\n	<li>ประเภทของสินค้า :&nbsp;E-Books</li>\r\n	<li>บาร์โค้ด : 9000051418</li>\r\n</ul>\r\n\r\n<p>ช่างแสนดี &ldquo;นางเป็นถึงบุตรสาวที่เกิดจากฮูหยินใหญ่แท้ๆ แต่กลับมีชีวิตไม่ต่างกับสาวใช้ในบ้าน!&rdquo; เพราะไร้มารดาคอยกางปีกปกป้อง แต่ละวันซีเหลียงมั่วจึงต้องทนถูกรังแกจากแม่รองและน้องสาวต่างมารดา นางอาศัยอยู่ในบ้านร่วมกับบิดาที่เก่งเอาหูไปนาเอาตาไปไร่ มีท่านย่าที่เย็นชาและเหี้ยมโหด มีญาติพี่น้องมากมายที่หวังจะเหยียบนางให้จมดิน ชีวิตของคุณหนูใหญ่ผู้นี้จะว่าต่ำต้อย แต่นางก็เป็นถึงบุตรสาวคนโตของแม่ทัพใหญ่ จะว่าสูงส่ง แต่ก็ถูกบ่าวรับใช้ในจวนด่าทอถากถางได้อย่างไม่ยำเกรง ไม่มีใครสนใจ ไร้คนไยดี แม้กระทั่งโดนกลั่นแกล้งจนตายไปตั้งแต่เมื่อใด ยังไม่มีใครในบ้านรู้! ช่างร้ายเหลือ &ldquo;ยืมดาบฆ่าคนเป็นท่าไม้ตายที่เธอใช้ประจำ!&rdquo; ผู้ช่วยสาวตัวร้ายของนักการเมืองอันดับหนึ่ง จู่ๆ ก็ตื่นขึ้นมาในร่างผ่ายผอมใกล้ตายของคุณหนูซึ่งไม่เป็นที่รักของใคร ด้วยความที่อยากเริ่มต้นชีวิตใหม่อย่างเรียบง่าย เธอจึงเก็บตัวเงียบเชียบ แต่คนรอบด้านกลับไม่ยอมให้เธออยู่ดีมีสุข สงสัยคนบ้านนี้ &lsquo;ดอกไม้ไม่ชอบ ชอบก้อนหิน&rsquo; งานนี้สกิลเก่าๆ เลยถูกเอามาใช้! ไม่อยากจะบอกว่าเรื่องยุแยง ซ่องสุม วางเพลิง เธอถนัดนักล่ะ!</p>\r\n', 'ทดส แบรดชอร์', 'jih fublishing', 1247483653, 300.00, '2018-11-29', '2018-12-13', 230.00, 'เล่ม', 'img110345842620180820_213019.gif', '', 39, 41, 20, '2018-08-20 14:30:19'),
(29, 3, 2, 'คุมะมิโกะ คนทรงหมี ล.8 ฉ.การ์ตูน', '\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ช่วงปิดเทอมฤดูร้อน ดันมีหนุ่มต่างถิ่นมาอาศัยอยู่ที่หมู่บ้านคุมาเดะซะงั้น มาจิเองก็ออกอาการกลัวคนแปลกหน้าเสียเต็มขั้น แถมเขาคนนั้นยังบังเอิญเห็นนัทสึตอนกำลังพูดอีกต่างหาก แล้วมาจิจะผ่านพ้น &ldquo;ปิดเทอมหน้าร้อนครั้งสุดท้าย&rdquo; ของมัธยมต้นไปอย่างไร!?</p>\r\n', 'ท้อฟฟี่ แบรดชอร์', 'Her Publishing', 2147483647, 0.00, '0000-00-00', '0000-00-00', 59.00, 'เล่ม', 'img1745956620180820_211440.gif', '', 43, 12, 35, '2018-08-20 14:14:40'),
(30, 6, 3, 'สุดสัปดาห์ ฉ.843 (ก.ย. 61 แต้ว/พีช-แพทริเซีย)', '<p>ช่วงปิดเทอมฤดูร้อน ดันมีหนุ่มต่างถิ่นมาอาศัยอยู่ที่หมู่บ้านคุมาเดะซะงั้น มาจิเองก็ออกอาการกลัวคนแปลกหน้าเสียเต็มขั้น แถมเขาคนนั้นยังบังเอิญเห็นนัทสึตอนกำลังพูดอีกต่างหาก แล้วมาจิจะผ่านพ้น &ldquo;ปิดเทอมหน้าร้อนครั้งสุดท้าย&rdquo; ของมัธยมต้นไปอย่างไร!?</p>', 'ท้อฟฟี่ แบรดชอร์', 'Her Publishing', 2147483647, 0.00, '0000-00-00', '0000-00-00', 90.00, 'เล่ม', 'img1187494107620180820_212338.jpg', 'img2187494107620180820_212338.jpg', 14, 50, 35, '2018-08-20 14:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`t_id`, `t_name`) VALUES
(2, 'หนังสือ'),
(3, 'อีบุ๊ค'),
(4, 'นิตยาสาร'),
(5, 'อีแม็กกาซีน'),
(6, 'อื่นๆ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type1`
--

CREATE TABLE `tbl_type1` (
  `t1_id` int(10) NOT NULL,
  `t_id` int(10) NOT NULL,
  `t1_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type1`
--

INSERT INTO `tbl_type1` (`t1_id`, `t_id`, `t1_name`) VALUES
(1, 3, 'วรรณกรรม'),
(2, 3, 'การศึกษา'),
(3, 6, 'ยอดนิยม'),
(13, 5, 'รวมเล่ม');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `tbl_carousel`
--
ALTER TABLE `tbl_carousel`
  ADD PRIMARY KEY (`carousel_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `tbl_new`
--
ALTER TABLE `tbl_new`
  ADD PRIMARY KEY (`new_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `tbl_type1`
--
ALTER TABLE `tbl_type1`
  ADD PRIMARY KEY (`t1_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_carousel`
--
ALTER TABLE `tbl_carousel`
  MODIFY `carousel_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_new`
--
ALTER TABLE `tbl_new`
  MODIFY `new_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_type1`
--
ALTER TABLE `tbl_type1`
  MODIFY `t1_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
