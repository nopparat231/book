-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2019 at 02:54 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

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
(1, 'admin', 'admin', 'admin', '1/1', '0914232511', 'boingza1@gmail.com', 'admin', '2017-08-30 01:57:41'),
(2, 'staff', 'staff', 'staff', '2/2', '0914232511', 'boingza1@gmail.com', 'staff', '2018-01-25 04:13:06'),
(3, 'manager', 'manager', 'manager', '3/3', '0914232511', 'boingza1@gmail.com', 'superadmin', '2018-08-30 14:54:38'),
(12, 'admin2', '1234', '2', '222 ตำบล บ้าน อำเภอ 2 จังหวัด 2 รหัสไปรษณีย์ 2', '0123456788', 'aaa@aaa.com', 'admin', '2019-01-27 06:12:54');

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
(2, '034-4-68426-7', 'กรุงไทย', 'ออมทรัพย์', 'วันธนะ ล้ำทวีภักดี', 'พระสมุทรเจดีย์', 'imgb87159464020180819_000254.jpg'),
(3, '910-4-63125-7', 'กสิกรไทย', 'ออมทรัพย์', 'วันธนะ ล้ำทวีถักดี', 'พระสมุทรเจดีย์', 'imgb197504342620180818_223441.png'),
(4, '310-4-84532-9', 'ไทยพาณิชย์', 'ออมทรัพย์', 'วันธนะ ล้ำทวีภักดี', 'พระสมุทรเจดีย์', 'imgb133828463220180818_223607.jpg');

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
(4, 'img1129564869720190127_032641.png', '', '', 'logo180913082620190127_195045', '<h1><strong>เกี่ยวกับ</strong></h1>\r\n\r\n<ul>\r\n	<li>ร้านจำหน่ายหนังสือออนไลน์ จัดทำขึ้นเพื่อการศึกษา</li>\r\n</ul>\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3878.1754088795574!2d100.49081781431002!3d13.586093004773467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e2a3f78e425385%3A0x8b05cd92a7dab070!2z4Lin4Lix4LiU4LiE4Lil4Lit4LiH4Lih4Lit4LiN!5e0!3m2!1sth!2sth!4v1548586770819\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '<h2><strong>ติดต่อเรา</strong></h2>\r\n\r\n<p>435/124 หมู่ 2 หมู่บ้านสุขสำราญ ตำบลบ้านคลองสวน อำเภอพระสมุทรเจดีย์ จังหวัดสมุทรปราการ</p>\r\n');

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
(32, 'CUSTOMER1', '1/1 ตำบล บ้านคลองสวน อำเภอ พระสมุทรเจดีย์ จังหวัด สมุทรปราการ รหัสไปรษณีย์ 10290', '0914232511', 'customer1', 'customer1', 'boingza1@gmail.com', 'user', 'dl0b7k6568iclo9i2notr0b205', 'yes', '2019-01-26 19:18:24'),
(33, 'customer2', '2/2 ตำบล บ้านคลองสวน อำเภอ พระสมุทรเจดีย์ จังหวัด สมุทรปราการ รหัสไปรษณีย์ 10290', '0914232511', 'customer2', 'customer2', 'manboing007_za@hotma', 'user', '5teg7crpjhe8v8up54fk3tip15', 'yes', '2019-01-26 22:56:45');

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
(6, '<h2>การแก้ไขไดร์เวอร์ StorAHCI.sys</h2>\r\n\r\n<p><img alt=\"\" src=\"https://www.windowssiam.com/wp-content/uploads/2018/02/Fix-Disk-100Windows-10-5.jpg\" style=\"height:231px; width:481px\" /></p>\r\n\r\n<p>สำหรับใครที่<strong>มีปัญหากับ Disk 100%ในการใช้คอมพิวเตอร์</strong>นั้นเพื่อนๆสามารถทำการแก้ไขเบื้องต้นได้ง่ายๆ โดยเพื่อนๆให้ทำตามที่แอดมินแนะนำก่อนละกันผมว่ามันช่วยได้ ไม่ว่าเพื่อนๆจะใช้ Windows 10 , Windows 8.1 หรือ Windows 7 ซึ่งกำลังมีปัญหากับการใช้คอมพิวเตอร์และเครื่องช้ามากๆ และ Disk 100% เพื่อนๆจะสามารถแก้ไขได้เบื้องต้นนั้นเอง เพราะมีคนหลังไมค์มาหาแอดมินเยอะมากในการแก้ไข Disk 100% ทางแอดมินก็เลยเขียนบทความออกมา ให้เพื่อนๆให้ทำการแก้ไชเบื้องต้นดูก่อนนั่นเอง</p>\r\n', '2019-01-13 04:55:55'),
(7, '<h1>อนาถใจ! ซัดคนมือบอนฉกเล่มหายาก งานหนังสือแห่งชาติ หายนับสิบ</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"à¸­à¸à¸²à¸à¹à¸! à¸à¸±à¸à¸à¸à¸¡à¸·à¸­à¸à¸­à¸à¸à¸à¹à¸¥à¹à¸¡à¸«à¸²à¸¢à¸²à¸ à¸à¸²à¸à¸«à¸à¸±à¸à¸ªà¸·à¸­à¹à¸«à¹à¸à¸à¸²à¸à¸´ à¸«à¸²à¸¢à¸à¸±à¸à¸ªà¸´à¸\" src=\"https://www.thairath.co.th/media/4DQpjUtzLUwmJZZPFhuILCr79eVD3Jt9CQuOAuy5teak.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ให้อ่านฟรีแล้วยังขโมย! โซเชียลซัดคนมือบอนฉกหนังสือหายาก ราคาแพง ที่ตั้งโชว์ในมหกรรมงานหนังสือแห่งชาติหายเป็นช่องโหว่ หลายสิบเล่ม...</p>\r\n\r\n<p>เฟซบุ๊ก&nbsp;<a href=\"https://www.facebook.com/rattanachai.lueangwongngam/posts/10155731816701651\" target=\"_blank\">Rattanachai Lueangwongngam</a>&nbsp;ได้โพสต์ภาพในงานมหกรรมหนังสือระดับชาติ ครั้งที่ 23 ณ ศูนย์การประชุมแห่งชาติสิริกิติ์ โดยระบุว่า ความน่าอนาถในงานหนังสือ หนังสือดีไซน์เก๋ๆ รูปเล่มเริดๆ ที่เขาเอามาโชว์ในมินินิทรรศการ หายไปเป็นสิบเล่ม!</p>\r\n\r\n<p>เข้าใจว่าโดนมือดีฉกไป เขาคงไม่จัดแสดงโดยปล่อยเป็นรูโหว่แบบนี้หรอกมั้ง ผมชอบนะที่เขาไม่ตีตรวนล่ามโซ่หนังสือ แบบนั้นจะดูปวดใจมาก แต่พอปล่อยเป็นอิสระ ก็นั่นละ ถูกแฮ้บไปเรียบร้อย บางเล่มที่หาย หายากและแพงมากด้วยนะ นี่เพิ่งผ่านไปห้าวัน ยังขนาดนี้ หวังว่าจบงานคงเหลือรอดบ้าง.</p>\r\n', '2019-01-26 22:34:16'),
(8, '<h1>สัปดาห์หนังสือแห่งชาติ ได้เวลา &ldquo;อ่าน...อีกครั้ง&rdquo;</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"à¸ªà¸±à¸à¸à¸²à¸«à¹à¸«à¸à¸±à¸à¸ªà¸·à¸­à¹à¸«à¹à¸à¸à¸²à¸à¸´ à¹à¸à¹à¹à¸§à¸¥à¸² âà¸­à¹à¸²à¸...à¸­à¸µà¸à¸à¸£à¸±à¹à¸â\" src=\"https://www.thairath.co.th/media/4DQpjUtzLUwmJZZPEb3fQnlj3pyLivwCM1zTXKwAbK72.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>เป็นที่ทราบกันดีแล้วว่า &ldquo;งานใหญ่&rdquo; สำหรับ คนรักหนังสือในประเทศไทย ซึ่งเป็นงานระดับชาติ มีหนังสือมาออกร้านมากมาย จะมีเพียง 2 งานเท่านั้น</p>\r\n\r\n<p>ได้แก่งาน &ldquo;สัปดาห์หนังสือแห่งชาติ&rdquo; และ งาน &ldquo;มหกรรมหนังสือระดับชาติ&rdquo; ซึ่งมี สมาคมผู้จัดพิมพ์และผู้จำหน่ายหนังสือแห่งประเทศไทย (PUBAT) เป็นโต้โผใหญ่ทั้งคู่</p>\r\n\r\n<p>สัปดาห์หนังสือแห่งชาติ ซึ่งในระยะหลังๆ จะพ่วงงาน &ldquo;สัปดาห์หนังสือนานาชาติ&rdquo; เข้าไปด้วย จะเริ่มขึ้นในช่วงปลายเดือนมีนาคมต่อยาวถึงต้น เดือนเมษายนเป็นประจำทุกปี ในขณะที่ &ldquo;มหกรรมหนังสือระดับชาติ&rdquo; จะเริ่มในช่วงปลายเดือน กันยายนไปจนถึงต้นเดือนตุลาคม</p>\r\n\r\n<p>สถานที่จัดงานนั้นหลังจากที่เร่ร่อนไปจัดที่โน่นที่นี่สลับกันไปมาอยู่หลายปี แต่ในที่สุดก็มาลงตัวที่ ศูนย์การประชุมแห่งชาติสิริกิติ์ ซึ่งได้กลายเป็นสถานที่นัดพบระหว่างสำนักพิมพ์ และคนเขียนหนังสือกับคนอ่านหนังสือทั่วประเทศ ปีละ 2 ครั้ง ตราบเท่าทุกวันนี้</p>\r\n\r\n<p>สำหรับปี 2561 นี้ เมื่อเดือนมีนาคมเวียน มาถึงและกำลังจะผ่านไปในอีกไม่กี่วันข้างหน้าจึงได้เวลาสำหรับงานหนังสืองานแรก &ldquo;สัปดาห์หนังสือแห่งชาติ ครั้งที่ 46&rdquo; กับงาน &ldquo;สัปดาห์ หนังสือนานาชาติ ครั้งที่ 16&rdquo; ที่มีกำหนดการแน่นอนแล้วว่า จะเริ่มขึ้นในวันพฤหัสบดีที่ 29 มีนาคม ไปสิ้นสุดในวันอาทิตย์ที่ 8 เมษายน</p>\r\n\r\n<p>นับเวลาถอยหลังก็เหลือเพียงอีก 5 วันเท่านั้น</p>\r\n\r\n<p>ทีมงานซอกแซกในฐานะคนรักหนังสือและเอาใจช่วยงานใหญ่ทั้ง 2 งานนี้มาตลอด จึง ตัดสินใจที่จะยกคอลัมน์ประจำวันอาทิตย์นี้ให้แก่ สัปดาห์หนังสือแห่งชาติ เพื่อบอกกล่าวเล่าสิบ ว่า งานปีนี้จะมีจุดเด่นอะไรบ้างดังที่เคยปฏิบัติมา</p>\r\n\r\n<p>นายกสมาคมผู้จัดพิมพ์และผู้จำหน่ายหนังสือแห่งประเทศไทย สุชาดา สหัสกุล กล่าวกับทีมงานซอกแซกว่า ปีนี้จะมาในแนวคิดสั้นๆ และค่อนข้างกระชับ ที่มีความหมายลึกซึ้', '2019-01-26 22:36:56');

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
(000018, 32, 'CUSTOMER1', '1/1 ตำบล บ้านคลองสวน อำเภอ พระสมุทรเจดีย์ จังหวัด สมุทรปราการ รหัสไปรษณีย์ 10290', 'boingza1@gmail.com', '0914232511', 3, '155622700620190127_043850.jpg', 'กสิกรไทย', '910-4-63125-7', '2019-01-27', 472.94, '1', '2019-01-27 04:35:03'),
(000019, 32, 'CUSTOMER1', '1/1 ตำบล บ้านคลองสวน อำเภอ พระสมุทรเจดีย์ จังหวัด สมุทรปราการ รหัสไปรษณีย์ 10290', 'boingza1@gmail.com', '0914232511', 4, '', '', '', '0000-00-00', 0.00, '', '2019-01-27 05:53:36'),
(000020, 32, 'CUSTOMER1', '1/1 ตำบล บ้านคลองสวน อำเภอ พระสมุทรเจดีย์ จังหวัด สมุทรปราการ รหัสไปรษณีย์ 10290', 'boingza1@gmail.com', '0914232511', 3, '183481476020190127_131937.jpg', 'กสิกรไทย', '910-4-63125-7', '2019-01-27', 236.47, '123444', '2019-01-27 13:19:16'),
(000021, 32, 'CUSTOMER1', '1/1 ตำบล บ้านคลองสวน อำเภอ พระสมุทรเจดีย์ จังหวัด สมุทรปราการ รหัสไปรษณีย์ 10290', 'boingza1@gmail.com', '0914232511', 3, '22836264320190127_134210.jpg', 'กรุงไทย', '034-4-68426-7', '2019-01-27', 556.40, '123456789', '2019-01-27 13:42:00'),
(000022, 32, 'CUSTOMER1', '1/1 ตำบล บ้านคลองสวน อำเภอ พระสมุทรเจดีย์ จังหวัด สมุทรปราการ รหัสไปรษณีย์ 10290', 'boingza1@gmail.com', '0914232511', 2, '45354675120190127_180915.jpg', 'กสิกรไทย', '910-4-63125-7', '2019-01-27', 792.87, '', '2019-01-27 18:05:03'),
(000023, 32, 'CUSTOMER1', '1/1 ตำบล บ้านคลองสวน อำเภอ พระสมุทรเจดีย์ จังหวัด สมุทรปราการ รหัสไปรษณีย์ 10290', 'boingza1@gmail.com', '0914232511', 2, '84400659520190127_213624.jpg', 'กสิกรไทย', '910-4-63125-7', '2019-01-27', 558.54, '', '2019-01-27 21:36:12'),
(000024, 32, 'CUSTOMER1', '1/1 ตำบล บ้านคลองสวน อำเภอ พระสมุทรเจดีย์ จังหวัด สมุทรปราการ รหัสไปรษณีย์ 10290', 'boingza1@gmail.com', '0914232511', 4, '', '', '', '0000-00-00', 0.00, '', '2019-01-27 21:38:59'),
(000025, 33, 'customer2', '2/2 ตำบล บ้านคลองสวน อำเภอ พระสมุทรเจดีย์ จังหวัด สมุทรปราการ รหัสไปรษณีย์ 10290', 'manboing007_za@hotma', '0914232511', 2, '147433762220190201_082859.jpeg', 'กสิกรไทย', '910-4-63125-7', '2019-02-01', 389.48, '', '2019-02-01 08:28:32');

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
(27, 18, 35, 'วายัง อมฤต', 1, 220.00),
(28, 18, 36, 'ลงทุนแมน 8.0', 1, 220.00),
(29, 19, 36, 'ลงทุนแมน 8.0', 1, 220.00),
(30, 20, 35, 'วายัง อมฤต', 1, 220.00),
(31, 21, 36, 'ลงทุนแมน 8.0', 1, 220.00),
(32, 22, 35, 'วายัง อมฤต', 1, 220.00),
(33, 22, 36, 'ลงทุนแมน 8.0', 1, 220.00),
(34, 23, 64, 'แก้วจอมซน Kaew la joueuse', 1, 232.00),
(35, 24, 63, 'The Ecology of Building Materials 2ED (P)', 1, 3227.00),
(36, 24, 35, 'วายัง อมฤต', 1, 220.00),
(37, 24, 36, 'ลงทุนแมน 8.0', 1, 220.00),
(38, 25, 51, 'Border Economic', 1, 322.00);

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
(47, 16, 28, 'หมู่บ้านเล็กตระกูลเป้า', '<p>หมู่บ้านเล็กตระกูลเป้าของหวังอันอี้...สะท้อนภาพชีวิตในหมู่บ้านชนบทของจีนต้นทศวรรษ 1960 ในระบบคอมมูนประชาชน จนกระทั่งเข้าสู่สังคมนิยมที่ทันสมัยในทศวรรษ 1980 ผู้อ่านจะได้สัมผัสความรักอันบริสุทธิ์ยิ่งใหญ่ของผู้เป็นแม่ ได้เข้าใจความบริสุทธิ์กล้าหาญของเด็กน้อย ผู้กลายเป็นวีรชนของหมู่บ้าน ได้รู้สึกสะเทือนใจกับความรักต้องห้ามของเด็กสาว และความคับแคบขมขื่นของผู้ที่ถูกสังคมลงโทษโดยไม่เป็นธรรม<br />\r\n<br />\r\nหมู่บ้านเล็กตระกูลเป้าเป็น <strong>&quot;คำเชิญชวน&quot;</strong> ให้ผู้อ่านสำรวจตนเองผ่านตัวละคร ซึ่งเป็นตัวแทนของ <strong>&quot;ความงดงาม&quot;</strong> และ <strong>&quot;ความอัปลักษณ์&quot;</strong> อันดูจะดำรงอยู่อย่างกลมกลืนในธรรมชาติของมนุษย์ เป็นความท้าทายให้ผู้อ่านค้นหามิติอันซับซ้อนของตน เพื่อจรรโลงปัญญาให้กระจ่างใส จนสามารถ <strong>&quot;รัก&quot;</strong> และ <strong>&quot;เข้าใจ&quot;</strong> เพื่อนมนุษย์ด้วยกันได้อย่างแท้จริง!</p>\r\n', 'Wang An Yi (หวังอันอี้)', 'นานมีบุ๊คส์พับลิเคชั่นส์', 2147483647, 0.00, '0000-00-00', '0000-00-00', 175.00, 'เล่ม', 'img1201276189520190127_205951.PNG', '', 0, 50, 210, '2019-01-27 13:59:51'),
(44, 16, 25, 'ปลูกผักกินเอง แบ่งได้ ขายด้วย', '<p>คู่มือเล่มนี้ได้รวบรวมเคล็ดลับการปลูกผักสวนครัวกว่า 40 ชนิด ให้คุณ&nbsp;<strong>&quot;ปลูกผักกินเอง&quot;</strong>&nbsp;เเบบง่ายๆ อย่างละเอียดทุกขั้นตอน เริ่มตั้งเเต่การวางเเผนการปลูกอย่างเป็นระบบ เพื่อให้คุณมีผักเก็บกินได้ตลอดปี ประโยชน์เเละวิธีการกางอุโมงค์พลาสติก ซึ่งเป็นองค์ความรู้อันชาญฉลาดของชาวญี่ปุ่น เพื่อควบคุมอุณภูมิให้คงที่เเละป้องกันเเมลงศัตรูพืช รวมถึงสิ่งสำคัญที่ต้องทำ การดูเเลเเละวิธีเเก้ไขเมื่อเกิดปัญหาในการปลูกพืชผักเเต่ละชนิด เพื่อให้คุณเปลี่ยนทุกพื้นที่ว่างในบ้านเป็นสวนผักสีเขียวอย่างง่ายดาย</p>\r\n', 'อังคณา รัตนจันทร์', 'Nosan Gyoson Bunka Kyokai', 2147483647, 0.00, '0000-00-00', '0000-00-00', 213.00, 'เล่ม', 'img175308707320190127_205510.PNG', '', 0, 50, 255, '2019-01-27 13:55:10'),
(45, 16, 26, 'เลี้ยง \"ใจลูก\" ให้ถูกทาง', '<p>ทำไมลูกไม่อยากไปโรงเรียน ทำไมถึงมัวแต่โอ้เอ้ไม่ยอมอาบน้ำ ทำไมทั้งถามมากทั้งขี้บ่น ทำไมช่างรื้อช่างค้น ทำไมถึงขโมยของ! บนเส้นทางการเป็นพ่อแม่ผู้ปกครอง การมีคำถามมากมายนั้นไม่ใช่เรื่องแปลก <strong>&quot;เลี้ยง ใจลูก ให้ถูกทาง&quot;</strong> เล่มนี้ จะตอบข้อสงสัยที่คุณพ่อคุณแม่มีอย่างเต็มอิ่ม ทั้งเรื่องพฤติกรรมของลูก และคำถามต่าง ๆ เรื่องการเลี้ยงดูเด็ก เพื่อให้คุณสามารถประคับประคองพวกเขาให้เติบใหญ่ด้วยการและใจที่แข็งแรง ไม่ว่าจะเป็น การให้ของเล่นลูกบ่อย ๆ เป็นการทำร้ายลูกหรือไม่? เราจะเลี้ยงลูกไปด้วย ทำงานไปด้วยไหวหรือเปล่า? การเลี้ยงลูกคนเดียวน่ากลัว (เหมือนที่คิด) หรือไม่? และเราจะเสริมเพิ่มเสน่ห์ให้ลูกได้อย่างไร? คำตอบทั้งหมดอยู่ในหนังสือเล่มนี้แล้ว!</p>\r\n', 'พ.ญ. อัมพร เบญจพลพิทักษ์', 'สถาพรบุ๊คส์, สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 85.00, 'เล่ม', 'img1134948130520190127_205725.PNG', 'img2134948130520190127_205725.PNG', 0, 50, 145, '2019-01-27 13:57:25'),
(46, 16, 27, 'สร้างบ้านให้คุ้มค่าเงิน', '<p>เป็นหนังสือที่ถูกจัดทำขึ้นหลายครั้งด้วยเนื้อหาที่เป็นประโยชน์ และอ่านเข้าใจง่าย อีกทั้งผู้เขียนยังเป็นวิศวกรที่มีชื่อเสียง ซึ่งได้รวบรวมปัญหาและการแก้ไขจากประสบการณ์จริง อาทิเช่น เลือกชนิดแหวนบานพับให้เหมาะสม ประหยัดเงินเป็น 10 เท่า, ห้องเก็บของไม่เคยพอ ปัญหาโลกแตก บ้านเมืองไทย ทำอย่างไรดีครับ, สร้าง &ldquo;ห้องเก่ง&rdquo; ให้บ้าน เพื่อครอบครัวที่อบอุ่น, ทำทับหลังให้กว้างขึ้นอีกสักนิด และอื่นๆ อีกมากมาย ซึ่งจะช่วยป้องกันและแก้ไขปัญหาต่างๆ เพื่อให้คุณสามารถจัดการกับงบประมาณในการสร้างบ้านได้อย่างคุ้มค่า คุ้มราคา</p>\r\n', 'ยอดเยี่ยม เทพธรานนท์', 'ซีเอ็ดยูเคชั่น, บมจ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 108.00, 'เล่ม', 'img183022662620190127_205834.PNG', '', 0, 0, 106, '2019-01-27 13:58:34'),
(37, 16, 17, 'รู้จักเขา เข้าใจเรา', '<p>หนังสือที่จะช่วยคุณในการปรับ <strong>&quot;</strong><strong>ความคิด&quot;</strong> อีกนิด เพื่อที่จะได้ทราบว่า <strong>&quot;</strong><strong>คน&quot;</strong> เข้าใจไม่ยาก ถ้าเข้าถึง <strong>&quot;</strong><strong>จิตใจและความรู้สึก&quot;</strong> ที่อยู่เบื้องหลังการกระทำของเขา ถ่ายทอดด้วยสำนวนภาษาอ่านง่าย สไตล์สบายๆ เน้นการนำเอาไปใช้จริง และยืนอยู่บนพื้นฐานทางวิชาการที่ถูกต้อง เพียงคุณสนใจพฤติกรรมมนุษย์เท่านั้น ก็จะสามารถอ่านได้อย่างสนุกสนาน ที่สำคัญเนื้อหาแต่ละเรื่องจะจุดประกายความคิดใหม่ๆ ให้กับคุณได้เป็นอย่างดี</p>\r\n', 'รศ.ดร. สิทธิโชค วรานุสันติกุล, น.พ. สุทธิศักดิ์ คณาปราชญ์', 'ซีเอ็ดยูเคชั่น, บมจ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 125.00, 'เล่ม', 'img1165506037220190127_202204.PNG', '', 0, 50, 305, '2019-01-27 13:22:04'),
(38, 16, 18, 'Maple Story ศึกอภินิหารพิชิตคำศัพท์จีน เล่ม 7 (ฉบับการ์ตูน)', '<p>โดโด้กับผองเพื่อนขัดขวางการระเบิดของเกาะกลางอากาศได้สำเร็จ จากนั้นจึงนำไข่สีชมพูที่ยังเป็นปริศนาอยู่ ไปฝากไว้ที่ห้องวิจัย ดร.คิม แต่แล้วครูใหญ่ชิชิอุก็ส่งลูกน้องมาขโมยไข่สีชมพูไป แล้วบังคับให้นักบวชแห่งการลืมกำจัดโดโด้ แลกกับไข่ที่เขามาตามหา กลุ่มของโดโด้ที่กำลังไปเที่ยวชมศูนย์การค้าเคิร์นนิงสแควร์ จึงต้องเจอเหตุการณ์ระทึกขวัญ เมื่อนักบวชแห่งการลืม ใช้มนตร์สะกดเหล่าของเล่นให้ตามไล่ล่าพวกเขา โดโด้กับเพื่อน ๆ จะเอาตัวรอดได้หรือไม่! ติดตามได้ใน ศึกอภินิหารพิชิตคำศัพท์จีน</p>\r\n', 'Yu Gyeong Won (ยูคยองวอน)', 'ซีเอ็ดยูเคชั่น, บมจ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 50.00, 'เล่ม', 'img1155023287020190127_202317.PNG', 'img2155023287020190127_202317.PNG', 1, 50, 235, '2019-01-27 13:23:17'),
(39, 16, 19, 'คู่มือเรียนเขียนโปรแกรมภาษา C ฉบับสมบูรณ์', '<p>หนังสือเล่มนี้เเนะนำให้ผู้อ่านรู้จัก <strong>&quot;</strong><strong>การเขียนโปรเเกรมภาษา </strong><strong>C&quot;</strong> ตั้งเเต่พื้นฐานจนสามารถนำไปใช้เเก้ไขโจทย์ปัญหาได้จริง โดยเนื้อหาจะสอนตั้งเเต่การติดตั้งโปรเเกรม หลักการเขียนโปรเเกรมของภาษา C, การเขียน Flowchart, การใช้งาน Array, Pointer Struct, Union Enum เเละ Linked List, การทำงานร่วมกับไฟล์ เเละการสร้างเเละใช้งานฟังก์ชัน ซึ่งมีตัวอย่างประกอบทุกหัวข้อ พร้อมคำอธิบายอย่างละเอียดเหมาะสำหรับนักเรียน นักศึกษา เเละผู้ที่สนใจทั่วไป</p>\r\n', 'ไกรศร ตั้งโอภากุล,กิตินันท์ พลสวัสดิ์', 'ไอดีซี พรีเมียร์, บจก.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 328.00, 'เล่ม', 'img1157854388620190127_202448.PNG', '', 0, 0, 635, '2019-01-27 13:24:48'),
(40, 16, 20, 'สุดยอดความรู้รอบตัว', '<p>นี่คือคู่มือความรู้สำคัญที่คนไทยควรรู้ เนื้อหาในเล่มเป็นการรวบรวมความรู้หลากหลายสาขาที่สุด ทั้งสำนวนไทย ราชาศัพท์ ลักษณะนาม เครื่องหมายวรรคตอน ลำดับพระมหากษัตริย์ไทย หลักการถอดคำ อังกฤษเป็นไทย-ไทยเป็นอังกฤษ คำที่มักเขียนผิด ชื่อประเทศ ดินแดน เมืองหลวง และหน่วยเงินตรา อักษรย่อภาษาไทย-ภาษาอังกฤษ เว็บไซต์ที่ควรรู้ ศัพท์คอมพิวเตอร์และอินเทอร์เน็ต อักษรย่อทางอินเทอร์เน็ต สัญลักษณ์พื้นฐานทางคณิตศาสตร์ มาตราต่างๆ ชื่อธาตุ สูตรการหาพื้นที่ ปลาน้ำจืด ปลาทะเล สัตว์ป่าสงวน ดอกไม้และพรรณพืช และอีกหลากหลายที่คัดสรรมาอย่างดีแล้ว ในรูปเล่มกะทัดรัด พกพาสะดวก เหมาะสำหรับนักเรียน นักศึกษา และบุคคลทั่วไป</p>\r\n', 'ฝ่ายวิชาการภาษาไทย บริษัท ซีเอ็ดยูเคชั่น จำกัด (มหาชน)', 'ซีเอ็ดยูเคชั่น, บมจ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 50.00, 'เล่ม', 'img1140766599820190127_202559.PNG', 'img2140766599820190127_202559.PNG', 0, 0, 305, '2019-01-27 13:25:59'),
(36, 16, 15, 'ลงทุนแมน 8.0', '<p>หนังสือสร้างแรงบันดาลใจ ที่จะเป็นตัวช่วยให้ผู้อ่านได้เรียนรู้เรื่องราวของสิ่งต่าง ๆ ที่เกิดขึ้น ไม่ว่าจะเป็น วิทยาการ สังคม ประวัติศาสตร์ ความเป็นมาของแบรนด์ต่าง ๆ รวมถึงเส้นทางชีวิตของคนที่ประสบความสำเร็จ ซึ่งผู้อ่านสามารถนำไปใช้เป็นกรณีศึกษาเพื่อเรียนรู้ และปรับใช้ในการดำเนินชีวิตหรือการทำธุรกิจได้เป็นอย่างดี เพราะโลกนี้กำลังเปลี่ยนแปลงไปอย่างรวดเร็ว บุคคลที่อยู่รอดได้อาจจะไม่ใช่บุคคลที่เก่งที่สุด หรือฉลาดที่สุดบนโลกนี้ แต่คือบุคคลที่สามารถรับมือกับการเปลี่ยนแปลงได้ดีที่สุด และการที่เราได้รู้เรื่องราวต่าง ๆ ก็น่าจะเป็นวิธีที่ทำให้เรารับมือกับการเปลี่ยนแปลงอันรวดเร็วได้!</p>\r\n', 'ลงทุนแมน', 'แอลทีแมน, บจก.', 2147483647, 2000.00, '2019-01-27', '2019-01-31', 220.00, 'เล่ม', 'img1162840333220190127_042932.PNG', 'img2162840333220190127_042932.PNG', 20, 0, 300, '2019-01-26 21:29:32'),
(41, 16, 21, 'ป่วย 3 เดือน เกิดสมุดเล่มนี้', '<p>สืบมรดกธรรม มิใช่มรดกใคร เป็นของไกวัลยธรรม ทั้งปวง เป็นการกระทำแก่พระพุทธเจ้าโดยตรง เป็นการกระทำแก่พระพุทธเจ้า ไม่รู้ว่ากี่ล้านๆ พระองค์ หรือว่ากี่ล้านๆ กัปป์ กี่ล้านๆ กัลป์ ความถูกต้องสูงสุดคือความถูกต้องของตัวเอง...</p>\r\n', 'พุทธทาสภิกขุ (พระธรรมโกศาจารย์)', 'พุทธทาสภิกขุ', 2147483647, 0.00, '0000-00-00', '0000-00-00', 67.00, 'เล่ม', 'img197502743220190127_202735.PNG', '', 0, 50, 230, '2019-01-27 13:27:35'),
(42, 16, 22, 'อัลเฟรด โนเบล', '<p>หนังสือเล่มนี้จะพาคุณผู้อ่านไปรู้จักกับ <strong>&quot;อัลเฟรด โนเบล&quot;</strong> ผู้ให้กำเนิด <strong>&quot;รางวัลโนเบล&quot;</strong> และผู้คิดค้นดินระเบิดไดนาไมต์ ถึงแม้การค้นพบไดนาไมต์จะนำมาซึ่งความมั่งคั่งร่ำรวยอย่างล้นเหลือ ทว่าเขาก็รู้สึกเจ็บปวดเมื่อสิ่งที่เขาคิดค้นขึ้นมานั้นถูกนำไปใช้ในการสงคราม โนเบลปรารถนาจะเห็นสันติสุขในโลกและความก้าวหน้าทางวิทยาศาสตร์ได้จากโลกนี้ไปพร้อมกับพินัยกรรมระบุให้จัดการทรัพย์สินของตนเองจัดตั้งเป็นรางวัลขึ้น เพื่อมอบเป็นประจำทุกปีแก่บุคคลที่อุทิศตนทำประโยชน์ต่อมวลมนุษย์ รางวัลซึ่งได้จัดตั้งตามพินัยกรรมนี้มีชื่อว่า <strong>&quot;รางวัลโนเบล&quot;</strong></p>\r\n', 'สิทธา พินิจภูวดล', 'ไทยวัฒนาพานิช, บจก.สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 66.00, 'เล่ม', 'img125129185920190127_202843.PNG', '', 0, 50, 100, '2019-01-27 13:28:43'),
(43, 16, 24, 'เยือนถิ่นอินเดีย', '<p>สารคดีบันทึกการเดินทางของ <strong>&quot;โกวิท ตั้งตรงจิต&quot;</strong> ที่ได้เดินตามรอยพระพุทธเจ้าในแดนพุทธภูมิ โดยมีเพื่อนชาวอินเดียนำทาง เขาเดินทางไปทั่วอินเดียโดยผ่านเมืองและสถานที่สำคัญ อาทิ กัลกัตตา ปาฏลีบุตร นาลันทา พุทธคยา พาราณสี สาวัตถี ลัคเนา อัคระ พร้อมพาคุณไปล่องแม่น้ำคงคาอันศักดิ์สิทธิ์ ชื่นชมความตระการตาของทัชมาฮาล รวมทั้งแวะเที่ยวนครสีชมพูและถ้ำเอลโลรา อชันตา อันอัศจรรย์เป็นการนำเที่ยวอินเดียอย่างละเอียดเสมือนคุณได้ร่วมเดินทางไปด้วยจริงๆ มีข้อมูลประวัติศาสตร์และประวัติของสถานที่อย่างละเอียดลึกซึ้งสอดแทรกอารมณ์ขันมีภาพประกอบไปตลอดการเดินทาง</p>\r\n', 'โกวิท ตั้งตรงจิตร', 'พิมพ์คำ, สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 332.00, 'เล่ม', 'img1155820497420190127_205342.PNG', '', 0, 50, 630, '2019-01-27 13:53:42'),
(35, 16, 14, 'วายัง อมฤต', '<p>โลกของ <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> คือโลกของอุดมคติ เป็นโลกที่อาจแลดูเลื่อนลอยคล้ายเงาดำบนฉากขาวในการแสดง วายัง กุลิต แต่แท้ที่จริงแล้วเมื่อมองลงไปในความจริงมันกลับมีบางสิ่งที่จับต้องได้อยู่ในนั้น อุดมการณ์อันแข็งแกร่ง อุดมคติอันตกผลึก ความมุ่งมั่นที่จะเปลี่ยนแปลงโลกไปสู่สิ่งที่ดีกว่า โลกของผู้ถูกกดขี่ โลกของผู้ถูกเอารัดเอาเปรียบ โลกของผู้คนที่ไม่มีสิทธิแม้จะพูดในสิ่งที่เขาคิด คือศัตรูของโลกแห่ง วายังอมฤต<br />\r\n<br />\r\nเงาสีดำที่ปรากฏให้เห็นอาจเพลิดเพลิน ตื่นตา หรือเร้าใจ แต่นั่นคือการล่อหลอก ตัวหนังและผู้เชิดที่หลบอยู่ด้านหลังสิคือสิ่งที่แท้จริงกว่าเงาสีดำอาจหายไปจากจอสีขาวในบางขณะ แต่ตัวหนังยังคงอยู่ตลอดเวลา เหตุการณ์อาจไม่เกิดขึ้น แต่ผู้มุ่งมั่นที่ต่อสู้เพื่อการเปลี่ยนแปลงยังดำรงอยู่ เป็นเช่นนั้นนับร้อยนับพันปีจากที่หนึ่งสู่อีกที่หนึ่ง จากชนชาติหนึ่งสู่อีกชนชาติหนึ่ง จากจิตสำนึกหนึ่งสู่อีกจิตสำนึกหนึ่ง สิ่งเหล่านี้กินเวลาอันยาวนาน และมันกลืนกินชีวิตทุกคนแม้กระทั่งชีวิตของผมด้วย<br />\r\n<br />\r\n<strong>&quot;</strong><strong>มิสเตอร์ ไฮน์ริช เบิล&quot;</strong> มันเป็นเรื่องยากที่ผู้ที่ไม่ยอมให้อุดมคติกลืนกินเช่นคุณจะเข้าใจ มันเป็นเรื่องยากที่ผู้ที่ไม่เคยสัมผัสโลกแห่ง <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> เช่นคุณจะเข้าใจ เส้นทางเข้าสู่โลกแห่ง <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> เป็นเส้นทางอันมีเกียรติ ศักดิ์สิทธิ์ และเรียกร้องการเสียสละ โลกของ วายัง อมฤตเป็นโลกที่เรียกร้องให้ท้ายที่สุด เราทุกคนต้องละทิ้งตนเองไป หลงเหลือเพียงภาพเงาดำชั่วขณะบนฉากขาวเท่านั้น..</p>\r\n\r\n<p>โลกของ <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> คือโลกของอุดมคติ เป็นโลกที่อาจแลดูเลื่อนลอยคล้ายเงาดำบนฉากขาวในการแสดง วายัง กุลิต แต่แท้ที่จริงแล้วเมื่อมองลงไปในความจริงมันกลับมีบางสิ่งที่จับต้องได้อยู่ในนั้น อุดมการณ์อันแข็งแกร่ง อุดมคติอันตกผลึก ความมุ่งมั่นที่จะเปลี่ยนแปลงโลกไปสู่สิ่งที่ดีกว่า โลกของผู้ถูกกดขี่ โลกของผู้ถูกเอารัดเอาเปรียบ โลกของผู้คนที่ไม่มีสิทธิแม้จะพูดในสิ่งที่เขาคิด คือศัตรูของโลกแห่ง วายังอมฤต<br />\r\n<br />\r\nเงาสีดำที่ปรากฏให้เห็นอาจเพลิดเพลิน ตื่นตา หรือเร้าใจ แต่นั่นคือการล่อหลอก ตัวหนังและผู้เชิดที่หลบอยู่ด้านหลังสิคือสิ่งที่แท้จริงกว่าเงาสีดำอาจหายไปจากจอสีขาวในบางขณะ แต่ตัวหนังยังคงอยู่ตลอดเวลา เหตุการณ์อาจไม่เกิดขึ้น แต่ผู้มุ่งมั่นที่ต่อสู้เพื่อการเปลี่ยนแปลงยังดำรงอยู่ เป็นเช่นนั้นนับร้อยนับพันปีจากที่หนึ่งสู่อีกที่หนึ่ง จากชนชาติหนึ่งสู่อีกชนชาติหนึ่ง จากจิตสำนึกหนึ่งสู่อีกจิตสำนึกหนึ่ง สิ่งเหล่านี้กินเวลาอันยาวนาน และมันกลืนกินชีวิตทุกคนแม้กระทั่งชีวิตของผมด้วย<br />\r\n<br />\r\n<strong>&quot;</strong><strong>มิสเตอร์ ไฮน์ริช เบิล&quot;</strong> มันเป็นเรื่องยากที่ผู้ที่ไม่ยอมให้อุดมคติกลืนกินเช่นคุณจะเข้าใจ มันเป็นเรื่องยากที่ผู้ที่ไม่เคยสัมผัสโลกแห่ง <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> เช่นคุณจะเข้าใจ เส้นทางเข้าสู่โลกแห่ง <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> เป็นเส้นทางอันมีเกียรติ ศักดิ์สิทธิ์ และเรียกร้องการเสียสละ โลกของ วายัง อมฤตเป็นโลกที่เรียกร้องให้ท้ายที่สุด เราทุกคนต้องละทิ้งตนเองไป หลงเหลือเพียงภาพเงาดำชั่วขณะบนฉากขาวเท่านั้น..</p>\r\n', 'อนุสรณ์ ติปยานนท์', 'Din-Dan Book', 2147483647, 0.00, '0000-00-00', '0000-00-00', 220.00, 'เล่ม', 'img1146605488720190127_042738.PNG', 'img2146605488720190127_042738.PNG', 4, 46, 1, '2019-01-26 21:27:38'),
(48, 16, 29, 'หรรษาอาเซียน', '<p><strong>&quot;หรรษาอาเซียน&quot;</strong> อ่านได้เพลินๆ ชวนยิ้มหัวไปกับเรื่องราวแปลกๆ ขำๆ เรียกได้ว่าเป็นประวัติศาสตร์เกี่ยวกับวิถีผู้คน ศิลปะ ภาษา และวัฒนธรรมของชาวอาเซียนที่ถูกถ่ายเทสู่กันและกัน อีกทั้งยังจะช่วยไขข้อข้องใจในสารพันปัญหาที่หลายคนอาจติดใจสงสัย หรือไม่เคยได้ยินได้ฟังจากที่ไหนมาก่อน อาทิ จริงหรือ...คนแต่ง &ldquo;ซินเดอเรลล่า&rdquo; ลอกพล็อตเรื่องมาจาก &ldquo;ปลาบู่ทอง&rdquo;? พระเจ้า! ถ้าโปรตุเกสไม่เอามะละกอกับพริกขี้หนูมาปลูก แล้วสาวๆ จะมี &ldquo;ส้มตำ&rdquo; กินมั้ย? ทำไมคนไทยฟังเพลง &ldquo;พม่าประเทศ&rdquo; แล้วต้องยืนตรงเคารพธงชาติ? เจ้าสาวเวียดนามร่ำไห้ทำไมในงานแต่ง? 7 ประเทศอาเซียนแต่งชุดรามเกียรติ์ต่างกัน แต่ทำไมเล่นเรื่องเดียวกัน? บางเรื่องราวอาจถูกซุกซ่อนอยู่เพียงหลังฉาก ยังไม่ได้แพร่หลายสู่การรับรู้ในวงกว้าง ยิ่งอ่านไปยิ่งจะทำให้เราทึ่งกับที่มาของเรื่องราวต่างๆ ได้รับทั้งสาระความรู้และความเพลิดเพลิน กันเลยทีเดียว</p>\r\n', 'ธีรภาพ โลหิตกุล', 'มติชน, สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 175.00, 'เล่ม', 'img1167578971520190127_210100.PNG', 'img2167578971520190127_210100.PNG', 0, 50, 215, '2019-01-27 14:01:00'),
(49, 16, 30, 'ในลึก', '<p>พบกับนวนิยายเข้ารอบสุดท้ายรางวัลวรรณกรรมสร้างสรรค์แห่งอาเซียน (ซีไรต์) ปี 2543 เรื่อง <strong>&quot;ในลึก&quot;</strong> ผลงานโดย <strong>&quot;จำลอง ฝั่งชลจิตร&quot;</strong> ถ่ายทอดเรื่องราวต่อจากนวนิยายสำหรับเยาวชนดีเด่นเรื่อง <strong>&quot;ขนำน้อยกลางทุ่งนา&quot;</strong> ที่ผู้เขียนให้ความสำคัญกับตัวละครเอกและท้องทุ่งหรือพื้นอย่างมาก เนื้อหาภายในเล่มนี้ เขียนขึ้นหลังเกิดวิกฤตทางเศรษฐกิจปี 2540 ที่ตัวละครได้รับผลกระทบเหมือนคนชั้นกลางอีกนับล้านคน <strong>&quot;ในลึก&quot;</strong> จึงเกือบเป็นนวนิยายเรื่องเดียวที่บันทึกสภาพสังคมช่วงนั้นเอาไว้</p>\r\n', 'จำลอง ฝั่งชลจิตร', 'แมวบ้าน, สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 237.00, 'เล่ม', 'img1182877327620190127_210159.PNG', 'img2182877327620190127_210159.PNG', 0, 50, 215, '2019-01-27 14:01:59'),
(50, 17, 31, 'The Persian Cat Princess', '<p>&quot;A curse that gives her the head and tail of a cat brings great distress to Princess Persia. The quest to find the man, entrusted with the sacred sword, who can remove the curse placed on the princess by five wicked witches, is long and labored. Even harder is the battle to defeat the witches and their envy, vanity, anger, indecision, and cruelty.<br />\r\n<br />\r\nIn the end, however, mercy and forgiveness prove to be the greatest blessings of all. They are the keys that unlock the world of love and happiness ever after.<br />\r\n<br />\r\nThis fantasy adventure introduces young readers to a world of fire-breathing dragons, wicked witches, great white eagles, valiant princes, loving parents, and a sad princess unjustly cursed. The story is a treat for both the heart and the mind &ndash; one that invites you to join in the fun. And finally, who knows? You may discover the secret to lasting happiness inside yourself.</p>\r\n', 'S.REE FREEWALL & 3 Ds', 'S.REE FREEWALL & 3 Ds', 2147483647, 0.00, '0000-00-00', '0000-00-00', 213.00, 'เล่ม', 'img135860553320190127_210303.PNG', '', 0, 50, 125, '2019-01-27 14:03:03'),
(51, 17, 32, 'Border Economic', '<p>Thailand has a great deal of experience in developing special economic areas&nbsp;&nbsp;&nbsp;along its borders, largely because of the important role that subregional cooperation with neighboring countries has played in the country&#39;s overall development strategy. Beginning in the late 1980s, Thailand&#39;s border conflicts with neighboring countries was superseded by region-wide cooperation arrangements that focused on cross-border movements of people and goods. The resulting border development programs were associated with production sharing schemes and supply chain trade along economic corridors in the subregion.&nbsp;&nbsp;&nbsp;</p>\r\n', 'Montague Lord,Pawat Tangtrongita', 'Chulalongkorn University Printing House', 2147483647, 0.00, '0000-00-00', '0000-00-00', 322.00, 'เล่ม', 'img1145681910420190127_210436.PNG', '', 2, 49, 456, '2019-01-27 14:04:36'),
(52, 17, 33, 'Disney School Skills', '<p>Disney School Skills Workbooks are the perfect tools to make a difference in your child&rsquo;s learning. Inside this book, you&rsquo;ll find a developmental progression of activities designed to help your child master essential skills critical for school success. Interactive stickers, puppets, and easy to read mini books motivate your child to read and understand all sorts of stories!<br />\r\n<br />\r\nWhy is learning to understand what you read important? Reading is an active process. Good readers understand what they read, remember what they read, and talk about what they read. Good readers use a variety of strategies to make sense of what they are reading, such as: predicting what might happen next, noting important details, asking and answering questions about what is read, and making connections with their own experiences. Children need to have opportunities every day reading all kinds of books to put their developing comprehension strategies to work!</p>\r\n', 'Disney', 'Scholastic Singapore', 2147483647, 0.00, '0000-00-00', '0000-00-00', 175.00, 'เล่ม', 'img1202236757720190127_210626.PNG', '', 0, 50, 210, '2019-01-27 14:06:26'),
(53, 17, 34, 'Outswimming the Sharks', '<p>From his own hard-earned life lesson, author J.H. Hyun, a 25-year veteran of Fortune 500 companies, reveals the opportunities for personal growth that can emerge when you learn to swim with the tide and eventually outswim these relentless predators.<br />\r\n<br />\r\nOutswimming the Sharks will help you Assess your current situation, Set clear and specific goals, Develop unbreakable focus and motivation, Take ownership and control of your future, Achieve your life goals in the midst of and without succumbing to your <strong>&quot;sharks&quot;</strong> . There will always be sharks in your life to throw you off course. Now you can learn how to outswim them and reach your full life potential.</p>\r\n', 'J.H. Hyun', 'วิช กรุ๊ป (ไทยแลนด์), บจก.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 332.00, 'เล่ม', 'img1161197717820190127_210801.PNG', '', 0, 50, 270, '2019-01-27 14:08:01'),
(54, 17, 35, 'ENR Thermodynamics', '<p>This book brings thermodynamics to life through a simple text supported by examples and case studies. The subject matter in this book is based on a minimum number of laws, and postulates. It is intended for students, practicing engineers, and scientists. The first eight chapters contribute to the basic theories of thermodynamics.<br />\r\n<br />\r\nThe first chapter on Introduction provides a background of the subject that is a fundamental part of science and technology, and serves an essential role in our life and society. The following chapters provide principles or laws in evaluation of energy conversion and applications of these theories. Property tables and diagrams for water and R134a are included in the book.<br />\r\n<br />\r\nThese thermodynamic properties can determine easily with an Internet-based program that is available from the author&#39;s website for the book. Besides the properties of the substances just mentioned, the website can provide the psychrometric chart. The SI system has been used throughout the book.</p>\r\n', 'Wanchai Asvapoositkul', 'จุฬาลงกรณ์มหาวิทยาลัย, สนพ.แห่ง', 2147483647, 0.00, '0000-00-00', '0000-00-00', 218.00, 'เล่ม', 'img1185809238420190127_210916.PNG', 'img2185809238420190127_210916.PNG', 0, 50, 525, '2019-01-27 14:09:16'),
(55, 17, 36, 'My First 100 Animals (H)', '<p><strong>&quot;My First 100 Words&quot;</strong> A bright picture word book to read, A must-have first library to learn with, A small charming world to explore, This first book is perfect for your child!</p>\r\n', 'Dickens Publishing Ltd.', 'Dickens Publishing Ltd.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 185.00, 'เล่ม', 'img148292776020190127_211043.jpg', '', 0, 50, 256, '2019-01-27 14:10:43'),
(56, 17, 37, 'The New Indonesian  House (H)', '<p>The New Indonesian House presents twenty-Seven homes in Jakarta, Bundung, Yogyakarta and Bali that illustrate the remarkable advances that have taken place in residentail design in Indonesia over the last two decades. From the fundamental pre-1990 issue--how to modernize while maintaining a core of cultural indentity--Indonesia&#39;s new generation of architects has moved on, demonstrating not only their absorption of modern influences from the West and the more recent processes of globalization but also their sensitivity to the physical environment, the social context and the aspirations of the urban middle classes. The result in a level of refinement, sophistication, individuality and environmental awareness in their house designs that is comparable with the best in the world. With its stunning color photographs, The New Indonesian House will both delight and inspire the application of its exhilarating architectural expressions in any global setting.</p>\r\n', 'Robert Powell', 'Tuttle Publishing', 804841438, 0.00, '0000-00-00', '0000-00-00', 1558.00, 'เล่ม', 'img1114200119220190127_211156.PNG', '', 1, 50, 1655, '2019-01-27 14:11:56'),
(57, 17, 38, 'Buddhist World', '<p>ABC now stands for Aasin Buddhist Connection, we are interested to help connect active Buddhists from various past of the world and Asia in partiscular. The conference was offered in Thailand for this purpose. Articles collected in this book are from the latest conference in 2016 they should represent some of the ideas we want to get across to the larger audience.</p>\r\n', 'Prof. Amarjiva Lochan', 'ไทยธิเบต, ศูนย์', 2147483647, 0.00, '0000-00-00', '0000-00-00', 247.00, 'เล่ม', 'img1100107357320190127_211259.PNG', 'img2100107357320190127_211259.PNG', 1, 50, 300, '2019-01-27 14:12:59'),
(58, 17, 39, 'Atulo Gifts He Left Behind', '<ol>\r\n	<li>The genuine basis of the Dhamma is the mind, so focus on watching the mind. Get so that you understand your own mind poignantly.<br />\r\n	you understand your mind poignantly, you&rsquo;ve got the basis of the Dhamma right there.Venerable Grandfather Dulya Atulo or Phra Rajvudhacariyd, Wat Buraparam, Surin Province, was an abbot who behaved properly, uniquely taught people of pure truths at the highest level. He was one of the most senior disciples of Venerable Grandfather Mun Bhuridatto, a consummate spiritual warrior.<br />\r\n	<br />\r\n	Venerable Grandfather&rsquo;s teachings were simple but containing a complete dhammic message of the Buddha&rsquo;s noble words in the Canon. This is an example of his teachings&hellip;Should heedlessness remain, the religion&rsquo;s savour remains untapped. They are external things. Their external benefit is for social service, a symbol of religious materialism. The genuine personal benefit is to be free from suffering. <strong>&quot;One can be free from suffering when getting to know the single mind.&quot;</strong><br />\r\n	<br />\r\n	The book <strong>&quot;Gifts He Left Behind&quot;</strong> compiles the Dhamma legacy of Venerable Grandfather Dulya Atulo before he passed away. It has been published for more than one million&hellip;The publication of this &ldquo;Gifts He Left Behind&rdquo; issue aims to distribute to Venerable Grandfather Dul&rsquo;s well-wishers, Thai and foreigners, so that they can absorb the essence of his Dhammic teachings and rely upon them as a protecting shield when their mind is invaded by defilement, sufferings, and dominated by greed, anger, misguidedness. The essence of Dhammic teachings in this book is expected to pave the way for all readers towards happiness, serenity, and enlightenment brought by a merit mind, once they get to know the mind.</li>\r\n</ol>\r\n', 'Bra Bodhinandamuni', 'Bra Bodhinandamuni', 2147483647, 0.00, '0000-00-00', '0000-00-00', 237.00, 'เล่ม', 'img1213840513720190127_211357.PNG', '', 0, 50, 190, '2019-01-27 14:13:57'),
(59, 17, 40, 'Hole s Essentials', '<p>Designed for the one-semester anatomy and physiology course, Hole&#39;s Essentials of Human Anatomy and Physiology assumes no prior science knowledge and supports core topics with clinical applications, making difficult concepts relevant to students pursuing careers in the allied health field. The unparalleled teaching system is highly effective in providing students with a solid understanding of the important concepts in anatomy and physiology. Users who purchase Connect Plus receive access to the full online ebook version of the textbook.</p>\r\n', 'David Shier,Jackie Butler,Ricki Lewis', 'McGraw-Hill Education', 2147483647, 0.00, '0000-00-00', '0000-00-00', 1097.00, 'เล่ม', 'img1213964411320190127_211637.PNG', '', 0, 0, 1230, '2019-01-27 14:16:37'),
(60, 17, 41, 'Exploring Bangkok', '<p>Exploring Bangkok has eight tourssome walkable, others by skytrain, metro and Chao Phraya riverboatwhich make sense of the city&#39;s complexity and reveal its variety of outstanding buildings, from the breathtaking to the bizarre.There are historic gems built by Chakri monarchs, glittering Buddhist temples, glitzy shopping malls, Italianate palazzi, Art Nouveau villas, Chinese shophouses, the Robot Building and modernist and Romanstyle skyscrapers. The book&#39;s lively and authoritative text explains who built them, when and why.<br />\r\n<br />\r\nMore than 300 buildings and structures are illustrated and described, featured for their architectural excellence, historical significance or because they represent design trends, development or social change. Exploring Bangkok is the perfect companion for curious visitors, architectural enthusiasts, designers and residents.</p>\r\n', 'Robin Ward', 'Li-Zenn Publishing Limited', 2147483647, 0.00, '0000-00-00', '0000-00-00', 760.00, 'เล่ม', 'img195249333120190127_211735.PNG', 'img295249333120190127_211735.PNG', 0, 50, 805, '2019-01-27 14:17:35'),
(61, 17, 42, 'Eight Weeks to Modern Eco-Living (P)', '<p>The time to save the planet is now.<br />\r\n<br />\r\nReady? Set? Green! Living green means reversing climate change, but it also means protecting your kids and pets, improving your own health, and saving money. And it doesn&rsquo;t necessarily demand a radical overhaul of your life&ndash;just some simple adjustments, such as switching to healthier cleaning products and driving fewer miles each week.<br />\r\n<br />\r\nWritten by the visionarires at Treehugger.com, the most heavily trafficked site of its kind, Ready, Set, Green is the definitive (and recyclable) guide to modern green living. It offers solutions to make your home, office, car, and vacation more eco-friendly. For example:<br />\r\n<br />\r\n&bull; Using a dishwasher instead of hand washing will save you 5,000 gallons of water annually.<br />\r\n&bull; Eating less beef will save you 250 pounds of CO2 per year.<br />\r\n&bull; Washing your clothes in cold water instead of hot will save 200 pounds of CO2 annually.<br />\r\n&bull; Replacing three of your home&rsquo;s most frequently used lightbulbs with compact fluorescent bulbs will save 300 pounds of CO2 every year.<br />\r\n<br />\r\nIncluding advice on how to properly insulate your house, cancel junk mail, and choose fruits and veggies wisely, Ready, Set, Green will help you change the future of the planet and restore balance to your daily life.</p>\r\n', 'Meaghan O Neill Graham Hill', 'Villard', 2147483647, 0.00, '0000-00-00', '0000-00-00', 513.00, 'เล่ม', 'img154076225620190127_211900.PNG', '', 4, 50, 260, '2019-01-27 14:19:00'),
(62, 17, 43, 'The Best Man That Ever Was (P)', '<p>Given its imaginative risk and experiemental daring, perhaps the most remarkable thing about Annie Frued&#39;s poetry is its effortless success: these wise, funny, sly, erotic and lightning-witted poems all find their marks with unerring accuracy. From the disturbing dramatic monologue of the title poem, through love poems of great worldly tenderness, to a soliloquy from the inventor of the individual fruit pie-the reader is both challenged and entertained from first to last. The Best Man That Ever Was announces one of the most startlingly original poets to have emerged in recent years.</p>\r\n', 'Annie Freud', 'Pan Macmillan', 2147483647, 0.00, '0000-00-00', '0000-00-00', 803.00, 'เล่ม', 'img180492103520190127_212002.PNG', '', 36, 50, 105, '2019-01-27 14:20:02'),
(63, 17, 44, 'The Ecology of Building Materials 2ED (P)', '<p>The Ecology of Building Materials explores key questions surrounding sustainability of building materials. It provides technical data to enable disign and building professionals to choose the most appropriate materials for a project : those that are least polluting, most energy efficient, and from sustainable sources, The book also gives information and guidance on a wide range of issues such as recycling, detailing for increased durability and Life Cycle Analysis.<br />\r\n<br />\r\nBerge&#39;s book, translated by Chris Butters and Filip Henley, offers safe and environmentally friendly material options. It provides an assential and easy-to-use reference guide to this complex subject for the building industry professional.<br />\r\n<br />\r\nNew to this edition:<br />\r\n<br />\r\n- Thorough exploration of building materials in relation to climate change issues<br />\r\n- Extensive updating of basic data, as well as the introduction of a wide ranges of new materials<br />\r\n- Methods for recycling and reuse of materials<br />\r\n- More information on the interaction between materials and the indoor environment, ventilation and energy use<br />\r\n- Full colour text and user-friendly format</p>\r\n', 'Bjorn Berge', 'Architectural Press', 1856175375, 0.00, '0000-00-00', '0000-00-00', 3227.00, 'เล่ม', 'img15466614620190127_212104.PNG', '', 0, 49, 1225, '2019-01-27 14:21:04'),
(64, 17, 45, 'แก้วจอมซน Kaew la joueuse', '<p>เนื่องในวโรกาสสมเด็จพระเทพรัตนราชสุดา ฯ สยามบรมราชกุมารีทรงมีพระชนมายุ 60 พรรษา คณาจารย์ภาควิชาภาษาฝรั่งเศส คณะศิลปศาสตร์ มหาวิทยาลัยธรรมศาสตร์ ร่วมกับนานมีบุ๊คส์ ขอพระราชทานพระราชานุญาตจากสมเด็จพระเทพรัตนราชสุดาฯ สยามบรมราชกุมารี จัดพิมพ์พระราชนิพนธ์วรรณกรรมเยาวชนอันทรงคุณค่า <strong>&quot;แก้วจอมแก่น&quot;</strong> และ <strong>&quot;แก้วจอมซน&quot;</strong> ซึ่งถูกจัดอันดับให้เป็นหนึ่งใน <strong>&quot;หนังสือ 101 เล่มในดวงใจนักเขียนและนักอ่าน&quot;</strong> โดยสมาคมนักเขียนแห่งประเทศไทย เป็นภาษาฝรั่งเศสในชื่อ <strong>&quot;Kaew la joyeuse&quot;</strong> และ <strong>&quot;Kaew la joueuse&quot;</strong><br />\r\n<br />\r\nเรื่องราวของ <strong>&quot;แก้ว&quot;</strong> เป็นเด็กที่มีความร่าเริงแจ่มใส มีความมั่นใจในตัวเองมีความเป็นผู้นำและความคิดสร้างสรรค์ จึงกลายเป็นเด็กแก่นและซนในสายตาของผู้ใหญ่ และมักจะเป็นหัวโจกในหมู่พี่น้องและผองเพื่อนอยู่เสมอ นอกจากนี้แก้วยังเป็นเด็กที่รักสัตว์และชอบเลี้ยงสัตว์ ไม่ว่าจะเป็นหมา แมว ปลา อันแสดงถึงความเมตตาที่มีอยู่ในใจ แต่แก้วก็มักจะสร้างวีรกรรม ทั้งที่เป็นการทำดีบ้างและบางทีก็ทำให้ผู้ใหญ่ถึงกับส่ายหน้า แต่ก็ไม่มีใครโกรธแก้วได้ลงซักที ซึ่งเนื้อเรื่องมักจะแฝงสาระหรือข้อคิดที่ไม่หนักจนเกินไปสำหรับเด็ก ทั้งเรื่องของการเสียสละความมีน้ำใจและเห็นใจผู้อื่น และยังกล่าวถึงวัฒนธรรมที่ดีงามของชาวไทยอีกด้วย แม้เวลาจะผ่านพ้นไปหลายทศวรรษ คุณค่าอันงดงามทางปัญญาและอารมณ์ยังคงเด่นชัด ควรแก่การรับรู้เข้าใจของเยาวชนทั้งในปัจจุบันและในอนาคต</p>\r\n', 'แว่นแก้ว', 'นานมีบุ๊คส์, บจก.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 232.00, 'เล่ม', 'img1209412895920190127_212226.PNG', 'img2209412895920190127_212226.PNG', 3, 0, 290, '2019-01-27 14:22:26');

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
(17, 'หนังสือต่างประเทศ'),
(16, 'หนังสือ');

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
(14, 16, 'วรรณกรรม'),
(15, 16, 'บริหาร'),
(16, 16, 'การศึกษา'),
(17, 16, 'การพัฒนาตนเอง'),
(18, 16, 'หนังสือเด็ก'),
(19, 16, 'วิทยาการ เทคโนโลยี'),
(20, 16, 'ความรู้ทั่วไป'),
(21, 16, 'ประวัติศาสตร์'),
(22, 16, 'อัตชีวประวัติ ชีวประวัติ'),
(23, 16, 'อาหารและสุขภาพ'),
(24, 16, 'บันเทิงและท่องเที่ยว'),
(25, 16, 'การเกษตร ธรรมชาติ'),
(26, 16, 'ครอบครัว'),
(27, 16, 'บ้านและที่อยู่อาศัย'),
(28, 16, 'หนังสือพระราชนิพนธ์'),
(29, 16, 'ประชาคมกิจอาเซี่ยน'),
(30, 16, 'หนังสือได้รับรางวัล'),
(31, 17, 'วรรณกรรม'),
(32, 17, 'บริหารธุรกิจ'),
(33, 17, 'การศึกษา'),
(34, 17, 'จิตวิทยา'),
(35, 17, 'วิทยาการ เทคโนโลยี'),
(36, 17, 'หนังสือเด็ก'),
(37, 17, 'ความรู้ทั่วไป'),
(38, 17, 'ประวัติศาสตร์'),
(39, 17, 'อัตชีวประวัติ ชีวประวัติ'),
(40, 17, 'อาหารและสุขภาพ'),
(41, 17, 'บันเทิงและท่องเที่ยว'),
(42, 17, 'การเกษตร ธรรมชาติ'),
(43, 17, 'ครอบครัว'),
(44, 17, 'บ้านและที่อยู่อาศัย'),
(45, 17, 'หนังสือพระราชนิพนธ์');

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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_new`
--
ALTER TABLE `tbl_new`
  MODIFY `new_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_type1`
--
ALTER TABLE `tbl_type1`
  MODIFY `t1_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
