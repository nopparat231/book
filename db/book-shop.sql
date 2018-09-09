-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2018 at 06:37 AM
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
(2, 'staff', '2', 'staff', 'test staff', '1123456789', 'e-mail@staff.com', 'staff', '2018-01-25 04:13:06'),
(10, 'adad', 'adad', 'adad', 'adad', '902020202', 'dsasaf@hotmail.com', 'admin', '2018-08-30 14:54:38'),
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
(20, 'ssd', 'ssd', '0902020202', 'ssd', 'ssd', '23.noop@gmail.com', 'user', '5lsigemf6b9jvsqdolmm45hfl1', 'yes', '2018-08-30 15:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new`
--

CREATE TABLE `tbl_new` (
  `new_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `mem_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL,
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
(0000000006, 18, 'ooo', 'ooo', '23.noop@gmail.com', 2147483647, 1, '', '', '', '0000-00-00', 0.00, '', '2018-08-27 20:59:19'),
(0000000007, 17, 'ddd', 'ddd', '23.noop@gmail.com', 2147483647, 3, '10576391820180829_202534.jpg', 'ไทยพาณิชย์', '445', '2018-08-29', 230.00, 'TT12121212', '2018-08-29 20:25:04'),
(0000000008, 17, 'ddd', 'ddd', '23.noop@gmail.com', 2147483647, 3, '', '', '', '0000-00-00', 0.00, 'tr21212544545', '2018-08-29 20:27:24'),
(0000000009, 20, 'ssd', 'ssd', '23.noop@gmail.com', 902020202, 3, '210719718620180830_220641.jpg', 'กสิกรไทย', '543', '2018-08-30', 35415.00, 'gg4144', '2018-08-30 22:01:52'),
(0000000010, 20, 'ssd', 'ssd', '23.noop@gmail.com', 902020202, 2, '93588791420180902_112859.jpg', 'ไทยพาณิชย์', '445', '2018-09-02', 674.00, '', '2018-09-02 11:27:22'),
(0000000011, 20, 'ssd', 'ssd', '23.noop@gmail.com', 902020202, 1, '', '', '', '0000-00-00', 0.00, '', '2018-09-02 11:29:55');

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
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`d_id`, `order_id`, `p_id`, `p_name`, `p_c_qty`, `total`) VALUES
(12, 7, 31, 'ช่างร้ายเหลือ เล่ม 3', 1, 230),
(13, 8, 24, 'Lofficiel Hommes (ปก เป๊ก ผลิตโชค)', 1, 120),
(14, 9, 29, 'คุมะมิโกะ คนทรงหมี ล.8 ฉ.การ์ตูน', 1, 59),
(15, 9, 28, 'มนุษย์สุดมโน', 4, 748),
(16, 10, 31, 'ช่างร้ายเหลือ เล่ม 3', 2, 460),
(17, 10, 28, 'มนุษย์สุดมโน', 1, 187),
(18, 11, 28, 'มนุษย์สุดมโน', 1, 187);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detial` text NOT NULL,
  `p_price` float NOT NULL,
  `p_unit` varchar(20) NOT NULL,
  `p_img1` varchar(200) NOT NULL,
  `p_img2` varchar(100) DEFAULT NULL,
  `p_view` int(11) NOT NULL,
  `p_qty` int(11) DEFAULT NULL,
  `date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `t_id`, `p_name`, `p_detial`, `p_price`, `p_unit`, `p_img1`, `p_img2`, `p_view`, `p_qty`, `date_save`) VALUES
(24, 2, 'Lofficiel Hommes (ปก เป๊ก ผลิตโชค)', '<p>Lofficiel Hommes (ปก เป๊ก ผลิตโชค) ฉบับ สิงหาคม 2018 นี้</p>\r\n\r\n<p>- พบกับ Fashion Set&nbsp;จากเป๊ก ผลิตโชค พร้อมภาพเบื้องหลังแบบที่ไม่เคยเห็นที่ไหนมาก่อนกว่า 20 หน้า</p>\r\n\r\n<p>- บทสัมภาษณ์เป้ อารักษ์กับรสนิยมทางแฟชั่นที่เปลี่ยนไป</p>\r\n\r\n<p>- บทสัมภาษณ์อนันดาเกี่ยวกับ ขุนพันธ์ 2</p>\r\n', 120, 'เล่ม', 'img152454060320180820_202849.jpg', '', 15, 117, '2018-08-20 13:28:49'),
(25, 2, 'ปาฏิหาริย์ร้านชำของคุณนามิยะ ', '<ul>\r\n	<li>\r\n	<h2>ปาฏิหาริย์ร้านชำของคุณนามิยะ โดย ฮิงาชิโนะ เคโงะ</h2>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>ปาฏิหาริย์ร้านชำของคุณนามิยะ หนังสือดี กับเรื่องราวให้แง่คิดดีๆ&nbsp; กับชีวิต โดย&nbsp;</strong><strong>ฮิงาชิโนะ เคโงะ</strong></p>\r\n\r\n<p>ในนาทีนี้ หนังสือที่เป็นที่โจทย์ขานกันเล่มหนึ่ง คือ&nbsp;<strong>ปาฏิหาริย์ร้านชำของคุณนามิยะ</strong>&nbsp;ของผู้แต่งนิยายแนวสืบสวน ฮิงาชิโนะ เคโงะ นอกจากนี้ยังติดอันดับขายดีในร้านหนังสือนายอินทร์อยู่หลายสัปดาห์ และยังขายดีมาเรื่อยๆ ทางนายอินทร์จึงขอแนะนำเรื่องนี้ เนื่องจากมีการดำเนินเรื่องที่ไม่เหมือนใคร อ่านคำโปรยแล้วอาจจะดูธรรมดา แต่หนังสือปาฏิหารย์ร้านชำของคุณนามิยะ เล่มนี้นั้น ไม่ธรรมดาเลยทีเดียว ด้วยยอดขาย กว่า 12 ล้านเล่ม และถูกนำมาสร้างเป็นภาพยนตร์ ทั้งในญี่ปุ่น และจีนอีกด้วย</p>\r\n\r\n<p>หนังสือเล่มนี้บอกเล่าเรื่องราวของหัวขโมย 3 คน ที่หลงเข้ามาใน<strong><em>ร้านชำของคุณนามิยะ</em></strong>&nbsp;ที่ปิดตายไปสามสิบสามปีแล้ว และทั้ง 3 ก็ได้รับจดหมาย ที่ต้องการปรึกษาปัญหา ของหญิงสาวจากอดีต ใช่จากอดีตเมื่อ 40 ปีมาแล้ว จากการเริ่มตอบจดหมายฉบับแรกหัวขโมยทั้ง 3 ก็ได้รับจดหมาย โต้ตอบกลับไปมา พร้อมทั้งให้คำแนะนำจากอนาคต ใช่แต่หญิงสาวคนนี้เพียงคนเดียว ทั้งสามยังตอบคำถาม และให้แรงบันดาลใจ กับหลายๆ คนที่ส่งปัญหามาถึงคุณนามิยะ เรื่องราวความสนุก มันไม่ใช่แค่การตอบคำถามของทั้งสามคน หากแต่อยู่ที่การผูกโยงเรื่องราว ของทั้งสามกับตัวละครที่ส่งจดหมายมาหา นอกจากนี้ ยังเชื่อมโยงให้เห็นถึงผลของคำตอบของชายหนุ่มทั้งสามอีกด้วย</p>\r\n\r\n<p>หนังสือนิยายเล่มนี้ เริ่มต้นเรื่องราวแบบธรรมดาๆ แต่ตอนจบนั้น ลึกซึ้งกินใจนักอ่านหลายๆ คน จนมียอดพิมพ์กว่า 12 ล้านเล่มทั่วโลก ร้านนายอินทร์จึงขอแนะนำนิยายเรื่องนี้ ปาฏิหาริย์ร้านชำของคุณนามิยะ ให้เป็นนิยายที่ห้ามพลาดเลยทีเดียว</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>เนื้อหาปกหลัง</h2>\r\n\r\n<p><strong>ปาฏิหาริย์ร้านชำของคุณนามิยะ</strong></p>\r\n\r\n<p>ในความเงียบสงัดยามวิกาล&nbsp; หัวขโมยสามคนก่อเหตุและเข้าไปซ่อนตัวในร้านชำร้าง<br />\r\nทันใดนั้นก็มีจดหมายลึกลับสอดเข้ามาทางช่องประตู</p>\r\n\r\n<p>ใครบางคนเขียนเล่าปัญหาชีวิตและขอคำแนะนำจากเจ้าของร้านชำ<br />\r\nหัวขโมยทั้งสามจึงนึกสนุกและสวมรอยเขียนตอบเอง</p>\r\n\r\n<p>แต่จู่ ๆ จดหมายที่เขียนก็หายวับไป...แทนที่ด้วยจดหมายฉบับใหม่<br />\r\nปรากฏว่าจดหมายที่ว่านั้นถูกส่งมาจากอดีตเมื่อ 40 ปีก่อน!</p>\r\n\r\n<p>พวกเขาสงสัยว่าร้านชำแห่งนี้น่าจะมีกลไกบางอย่าง<br />\r\nทำให้ติดต่อกับคนในอีกยุคสมัยได้&nbsp; และคนที่น่าจะรู้<br />\r\nความลับนี้ก็คือ&nbsp; คุณนามิยะ&nbsp; เจ้าของร้าน&nbsp;&nbsp;<br />\r\nแต่ปัญหาคือเขาจากโลกนี้ไปหลายสิบปีแล้ว!</p>\r\n\r\n<p>เมื่อมิติแห่งกาลเวลามาบรรจบ...<br />\r\nร้านชำที่เคยช่วยเหลือผู้คนมากมายผ่านจดหมาย<br />\r\nจะทำให้ปาฏิหาริย์เกิดขึ้นอีกครั้งได้หรือไม่</p>\r\n', 285, 'เล่ม', 'img123262548920180820_203621.jpg', 'img223262548920180820_203621.jpg', 1, 21, '2018-08-20 13:36:21'),
(26, 2, 'รัชศกเฉิงฮว่าปีที่สิบสี่ เล่ม 4', '<p><strong>รัชศกเฉิงฮว่าปีที่สิบสี่ เล่ม 4</strong></p>\r\n\r\n<ul>\r\n	<li><strong>ถังฟั่น</strong>&nbsp;มีชื่อรองว่า รุ่นชิง เวลานี้ถูกปลดออกจากตำแหน่งเป็นขุนนางก็แต่เพียงในนาม ทว่าตัวเขากลับไม่เดือดเนื้อ ร้อนใจ ยังคงสมถะเรียบง่าย พอใจในสิ่งที่ตนมี พิถีพิถันก็แค่กับเรื่องอาหารการกิจเท่านั้น</li>\r\n	<li><strong>สุยโจว</strong>&nbsp;มีชื่อรองว่า ก่วงชวน องครักษ์เสื้อแพรแห่งกองปราบฝ่ายเหนือ เงียบขรึมพูดน้อย ไม่ค่อยแสดงอารมณ์พื้นฐานครอบครัวไม่ธรรมดา มีความสัมพันธ์ทางเครือญาติกับพระพันปีองค์ปัจจุบัน</li>\r\n	<li><strong>ถึงอวี๋</strong>&nbsp;พี่สาวของถังฟั่น แต่งกับเฮ่อหลินซึ่งเป็นบุตรคนรองของเฮ่ออิง ทั้งคู่มีบุตรด้วยกันหนึ่งคน ชื่อเฮ่อเฉิง ถังฟั่น เรียกหาว่า เจ้าเจ็ด</li>\r\n	<li><strong>เฮ่ออิง</strong>&nbsp;ท่านผู้เฒ่าสกุลเฮ่อ ผู้นำตระกูลขุนนางท้องถิ่น ในอดีตเคยเป็นถึงขุนนางขั้นสาม และเป็นสหายสนิทของบิดาถังฟั่นกับถังอวี๋ จึงหมั้นหมายให้ทายาทของสองตระกูลแต่งงานเกี่ยวดองเป็นญาติ</li>\r\n</ul>\r\n\r\n<h2>เนื้อหาปกหลัง</h2>\r\n\r\n<p>&#39;อันที่จริงการไม่ต้องทำหน้าที่ขุนนางแล้วก็มีข้อดีมากมาย หนึ่งในนั้นคือมีอิสรเสรี อยากทำอะไรก็ทำ อยากไปที่ใดก็ไป ด้วยเหตุนี้ถังฟั่นจึงถือโอกาสว่างเว้นจากหน้าที่อย่างไม่มีกำหนดเดินทางไปเยี่ยมพี่สาวกับหลานชายที่ออกเรือนไปอยู่ต่างเมืองเพียงเพื่อที่จะพบว่าพวกนางแม่ลูกหาได้มีชีวิตที่อบอุ่นอภิรมย์ ที่แท้หลังถังอวี๋แต่งเข้าสกุลเฮ่อต้องเจอกับเรื่องอะไรบ้างกัน ถังฟั่นซึ่งบัดนี้ไม่มีอำนาจแล้วจะช่วยเหลือนางได้กี่มากน้อย<br />\r\nทว่า...&nbsp; เรื่องในบ้านสกุลเฮ่อยังหาทางออกที่เหมาะสมไม่ได้พวกเขาก็ต้องเข้าไปพัวพันกับคดีฆ่าคนตายในคฤหาสน์คหบดีประจำอำเภอเมื่อผู้ต้องสงสัยว่าสังหารบุตรีคนเล็กของคหบดีผู้นั้นคือหลานชายวัยเพียงเจ็ดขวบของถังฟั่น!</p>\r\n', 265, 'เล่ม', 'img120896831420180820_210825.jpg', 'img220896831420180820_210825.jpg', 21, 50, '2018-08-20 14:08:25'),
(27, 2, 'รัชศกเฉิงฮว่าปีที่สิบสี่ เล่ม 3', '<p><strong>รัชศกเฉิงฮว่าปีที่สิบสี่ เล่ม 3</strong></p>\r\n\r\n<p>&#39;เพราะผลงานไขคดีที่อยู่ใต้พระเนตรพระกรรณองค์จักรพรรดิ ทำให้ในที่สุดถังฟั่นก็ได้เลื่อนขั้น ย้ายเข้ากรมอาญาไปเป็นหัวหน้ากองพลาธิการ แต่การมารับตำแหน่งนี้ของเขาออกจะลัดขั้นตอนและกะทันหันไปสักหน่อย<br />\r\nจึงไปขัดหูขัดตาขัดแข้งขัดขาหลายคนในกรมอาญาเข้า เฮ้อ! ใช่ว่าเขาเลือกอะไรได้เสียที่ไหน ที่เลือกได้คือยืนหยัดในอุดมการณ์ของตนต่อไปนั่นล่ะ! แต่แล้วจุดเปลี่ยนในชีวิตการเป็นขุนนางของเขาก็มาถึง&hellip; เกิดคดีแปลกประหลาดและแสนจะสะเทือนขวัญขึ้นในพื้นที่การดูแลของถังฟั่น ณ ที่ตั้งสุสานอดีตจักรพรรดิมีชาวบ้านสูญหายปริศนาสิบกว่าชีวิตยังมีเสียงร้องไห้โหยหวนที่ไม่รู้ต้นตอ เรื่องทั้งหมดนี้เป็นฝีมือโจรขุดสุสานหรือเป็นอาถรรพ์ของ &lsquo;เทพแม่น้ำ&rsquo; ตามความเชื่อของชาวบ้านกันแน่ถังฟั่นพร้อมด้วยสุยโจวสหายสนิท&nbsp;กำลังจะเดินทางไปไขปริศนาสุสานอดีตจักรพรรดิแล้ว!</p>\r\n', 274, 'เล่ม', 'img1121799462720180820_211055.jpg', 'img2121799462720180820_211055.jpg', 43, 54, '2018-08-20 14:10:55'),
(28, 2, 'มนุษย์สุดมโน', '<ul>\r\n	<li>ผู้เขียน :&nbsp;ท้อฟฟี่ แบรดชอร์</li>\r\n	<li>สำนักพิมพ์ :&nbsp;Her Publishing</li>\r\n	<li>หมวดหมู่ :&nbsp;นิยาย&nbsp;เรื่องสั้นทั่วไป</li>\r\n	<li>ประเภทของสินค้า :&nbsp;Books</li>\r\n	<li>บาร์โค้ด :&nbsp;9786163710147</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;มนุษย์สุดมโน&quot; เป็นหนังสือที่เอ่ยถึงคนคุ้นเคยและคนแปลกหน้าที่เคยพบกันในชีวิต บางคนอาจเป็นคนที่คุณรู้จัก บางคนอาจจะไม่เคยรู้ และบางทีเขาอาจจะเขียนถึงตัวคุณ ประสบการณ์พบปะกับผู้คนที่หลากหลาย เผยให้เห็นความเป็นมนุษย์ในหลายมุมที่ทำเอาเราต้องคิดตาม ขำตาม ไปจนถึงร้องไห้ตาม และที่สุดนำไปสู่ความอยากเป็นมนุษย์ที่ดีขึ้นกว่าเมื่อวันวาน</p>\r\n', 187, 'เล่ม', 'img1139098293220180820_211241.jpg', 'img2139098293220180820_211241.jpg', 29, 42, '2018-08-20 14:12:41'),
(31, 3, 'ช่างร้ายเหลือ เล่ม 3', '<ul>\r\n	<li>ผู้เขียน :&nbsp;ชิงชิงเตอะโย่วหลัน</li>\r\n	<li>สำนักพิมพ์ :&nbsp;ห้องสมุดดอตคอม</li>\r\n	<li>ประเภทของสินค้า :&nbsp;E-Books</li>\r\n	<li>บาร์โค้ด : 9000051418</li>\r\n</ul>\r\n\r\n<p>ช่างแสนดี &ldquo;นางเป็นถึงบุตรสาวที่เกิดจากฮูหยินใหญ่แท้ๆ แต่กลับมีชีวิตไม่ต่างกับสาวใช้ในบ้าน!&rdquo; เพราะไร้มารดาคอยกางปีกปกป้อง แต่ละวันซีเหลียงมั่วจึงต้องทนถูกรังแกจากแม่รองและน้องสาวต่างมารดา นางอาศัยอยู่ในบ้านร่วมกับบิดาที่เก่งเอาหูไปนาเอาตาไปไร่ มีท่านย่าที่เย็นชาและเหี้ยมโหด มีญาติพี่น้องมากมายที่หวังจะเหยียบนางให้จมดิน ชีวิตของคุณหนูใหญ่ผู้นี้จะว่าต่ำต้อย แต่นางก็เป็นถึงบุตรสาวคนโตของแม่ทัพใหญ่ จะว่าสูงส่ง แต่ก็ถูกบ่าวรับใช้ในจวนด่าทอถากถางได้อย่างไม่ยำเกรง ไม่มีใครสนใจ ไร้คนไยดี แม้กระทั่งโดนกลั่นแกล้งจนตายไปตั้งแต่เมื่อใด ยังไม่มีใครในบ้านรู้! ช่างร้ายเหลือ &ldquo;ยืมดาบฆ่าคนเป็นท่าไม้ตายที่เธอใช้ประจำ!&rdquo; ผู้ช่วยสาวตัวร้ายของนักการเมืองอันดับหนึ่ง จู่ๆ ก็ตื่นขึ้นมาในร่างผ่ายผอมใกล้ตายของคุณหนูซึ่งไม่เป็นที่รักของใคร ด้วยความที่อยากเริ่มต้นชีวิตใหม่อย่างเรียบง่าย เธอจึงเก็บตัวเงียบเชียบ แต่คนรอบด้านกลับไม่ยอมให้เธออยู่ดีมีสุข สงสัยคนบ้านนี้ &lsquo;ดอกไม้ไม่ชอบ ชอบก้อนหิน&rsquo; งานนี้สกิลเก่าๆ เลยถูกเอามาใช้! ไม่อยากจะบอกว่าเรื่องยุแยง ซ่องสุม วางเพลิง เธอถนัดนักล่ะ!</p>\r\n', 230, 'เล่ม', 'img110345842620180820_213019.gif', '', 17, 41, '2018-08-20 14:30:19'),
(29, 3, 'คุมะมิโกะ คนทรงหมี ล.8 ฉ.การ์ตูน', '<ul>\r\n	<li>ผู้เขียน :&nbsp;Masume Yoshimoto</li>\r\n	<li>สำนักพิมพ์ :&nbsp;DEXPRESS Publishing</li>\r\n	<li>ประเภทของสินค้า :&nbsp;E-Books</li>\r\n	<li>บาร์โค้ด : 9000052122</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ช่วงปิดเทอมฤดูร้อน ดันมีหนุ่มต่างถิ่นมาอาศัยอยู่ที่หมู่บ้านคุมาเดะซะงั้น มาจิเองก็ออกอาการกลัวคนแปลกหน้าเสียเต็มขั้น แถมเขาคนนั้นยังบังเอิญเห็นนัทสึตอนกำลังพูดอีกต่างหาก แล้วมาจิจะผ่านพ้น &ldquo;ปิดเทอมหน้าร้อนครั้งสุดท้าย&rdquo; ของมัธยมต้นไปอย่างไร!?</p>\r\n', 59, 'เล่ม', 'img1745956620180820_211440.gif', '', 34, 17, '2018-08-20 14:14:40'),
(30, 5, 'สุดสัปดาห์ ฉ.843 (ก.ย. 61 แต้ว/พีช-แพทริเซีย)', '<ul>\r\n	<li>สำนักพิมพ์ :&nbsp;นิตยสาร A-Print</li>\r\n	<li>ประเภทของสินค้า :&nbsp;Magazines</li>\r\n	<li>บาร์โค้ด :&nbsp;9000051960</li>\r\n</ul>\r\n', 90, 'เล่ม', 'img1187494107620180820_212338.jpg', 'img2187494107620180820_212338.jpg', 12, 50, '2018-08-20 14:23:38');

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
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`mem_id`);

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
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
