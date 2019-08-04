-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2019 at 10:05 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

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
(1, 'admin', 'admin', 'อภิมหา สมชาติ', '1/1 ตำบล บ้าน อำเภอ 2 จังหวัด 2 รหัสไปรษณีย์ 2', '0914232511', 'boingza1@gmail.com', 'admin', '2017-08-30 01:57:41'),
(2, 'staff', 'staff', 'staff', '2/2 ตำบล บ้าน อำเภอ 2 จังหวัด 2 รหัสไปรษณีย์ 2', '0914232511', 'boingza1@gmail.com', 'staff', '2018-01-25 04:13:06'),
(3, 'manager', 'manager', 'manager', '3/3 ตำบล บ้าน อำเภอ 2 จังหวัด 2 รหัสไปรษณีย์ 2', '0914232511', 'boingza1@gmail.com', 'superadmin', '2018-08-30 14:54:38'),
(12, 'admin2', '1234', '2', '222 ตำบล บ้าน อำเภอ 2 จังหวัด 2 รหัสไปรษณีย์ 2', '0123456788', 'aaa@aaa.com', 'ex', '2019-01-27 06:12:54'),
(13, 'admin1', '123456', 'ประหยัด ทรัพย์', '666/777 ตำบล บ้านนา อำเภอ บ้านนา จังหวัด นครนายก รหัสไปรษณีย์ 10234', '0976130248', 'bann@gmail.com', 'admin', '2019-03-23 11:15:39'),
(14, 'admin3', '123456', 'ใจรัก สุดใจ', '332/952 ตำบล พระยา อำเภอ พระขโนง จังหวัด กรุงเทพ รหัสไปรษณีย์ 10150', '0612548792', 'rrrr@gmail.com', 'admin', '2019-03-23 11:22:46'),
(15, 'staff6', '123456', 'รักชาติ ยิ่งชีพ', '69/69 ตำบล บ้านดู่ อำเภอ เมืองเชียงราย จังหวัด เชียงราย รหัสไปรษณีย์ 17035', '0154896328', 'rai@hotmail.com', 'staff', '2019-03-23 11:24:54'),
(16, 'staff9', '123456', 'มั่นใจ เกินร้อย', '84/79 แขวง/ตำบลจันจว้า เขต/อำเภอแม่จัน จังหวัดเชียงราย รหัสไปรษณีย์ 13024', '0351987453', 'stst@hotmail.com', 'staff', '2019-03-23 11:30:53'),
(17, 'staff5', '123456', 'นฤมล ธารน้ำใส', '364/852 หมู่2 ซอยประหยัด 60 แขวง/ตำบลท่าศาลา เขต/อำเภอเมืองเชียงใหม่ จังหวัดเชียงใหม่ รหัสไปรษณีย์ 6', '0123518497', 'oooww@gmail.com', 'staff', '2019-03-23 11:33:03'),
(18, 'staff7', '123456', 'ชีวิต เป็นของเรา', '84/96 หมู่2 หมู่บ้านทวีทรัพย์ ซอยบางกะม้ง แขวง/ตำบลธรรมามูล เขต/อำเภอเมืองชัยนาท จังหวัดเมืองชัยนาท ', '0316524987', 'ggez@dota2.com', 'staff', '2019-03-23 11:48:14');

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
  `b_logo` varchar(100) NOT NULL,
  `b_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`b_id`, `b_number`, `b_name`, `b_type`, `b_owner`, `bn_name`, `b_logo`, `b_status`) VALUES
(2, '034-4-68426-7', 'กรุงไทย', 'ออมทรัพย์', 'วันธนะ ล้ำทวีภักดี', 'พระสมุทรเจดีย์', 'imgb87159464020180819_000254.jpg', 0),
(3, '910-4-63125-7', 'กสิกรไทย', 'ออมทรัพย์', 'วันธนะ ล้ำทวีถักดี', 'พระสมุทรเจดีย์', 'imgb197504342620180818_223441.png', 0),
(4, '310-4-84532-9', 'ไทยพาณิชย์', 'ออมทรัพย์', 'วันธนะ ล้ำทวีภักดี', 'พระสมุทรเจดีย์', 'imgb133828463220180818_223607.jpg', 1);

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
(4, 'img1170523915620190323_034520.jpg', '', '', 'logo180913082620190127_195045', '<h1><strong>เกี่ยวกับ</strong></h1>\r\n\r\n<ul>\r\n	<li>ร้านจำหน่ายหนังสือออนไลน์ จัดทำขึ้นเพื่อการศึกษา</li>\r\n</ul>\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3878.1754088795574!2d100.49081781431002!3d13.586093004773467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e2a3f78e425385%3A0x8b05cd92a7dab070!2z4Lin4Lix4LiU4LiE4Lil4Lit4LiH4Lih4Lit4LiN!5e0!3m2!1sth!2sth!4v1548586770819\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '<h2><strong>ติดต่อเรา</strong></h2>\r\n\r\n<p>435/124 หมู่ 2 หมู่บ้านสุขสำราญ ตำบลบ้านคลองสวน อำเภอพระสมุทรเจดีย์ จังหวัดสมุทรปราการ</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `mem_id` int(11) NOT NULL,
  `mem_name` varchar(50) NOT NULL,
  `mem_address` varchar(255) NOT NULL,
  `mem_address2` varchar(200) NOT NULL,
  `mem_address_st` int(1) NOT NULL,
  `mem_tel` varchar(10) NOT NULL,
  `mem_username` varchar(20) NOT NULL,
  `mem_password` varchar(20) NOT NULL,
  `mem_email` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL,
  `sid` varchar(32) NOT NULL,
  `active` varchar(3) NOT NULL,
  `dateinsert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`mem_id`, `mem_name`, `mem_address`, `mem_address2`, `mem_address_st`, `mem_tel`, `mem_username`, `mem_password`, `mem_email`, `status`, `sid`, `active`, `dateinsert`) VALUES
(32, 'CUSTOMER1', 'sdsdกกกกff', 'sdsdsd', 2, '0914232511', 'customer1', 'customer1', 'boingza1@gmail.com', 'user', 'dl0b7k6568iclo9i2notr0b205', 'yes', '2019-01-26 19:18:24'),
(36, 'รวดเร็ว ฉับไว', 'ที่อยู่22', 'test1', 2, '0914232511', 'member1', '123456', 'manboing007_za@hotmail.com', 'user', 's10uenhntbn0mdk5hectj4qas2', 'yes', '2019-03-23 12:07:59'),
(37, 'บุษบา ลาลา', '66/99 แขวง/ตำบลรมณีย์ เขต/อำเภอกะปง จังหวัดพังงา รหัสไปรษณีย์ 82170', '', 0, '0912365481', 'member2', '123456', 'osamble_boling@hotmail.com', 'user', 'u28cstf8f836950guguuc59cb6', 'yes', '2019-03-23 12:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new`
--

CREATE TABLE `tbl_new` (
  `new_id` int(11) NOT NULL,
  `new_title` varchar(200) NOT NULL,
  `new_v` varchar(2000) NOT NULL,
  `new_img` varchar(100) NOT NULL,
  `new_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_new`
--

INSERT INTO `tbl_new` (`new_id`, `new_title`, `new_v`, `new_img`, `new_time`) VALUES
(6, 'การแก้ไขไดร์เวอร์ StorAHCI.sys', '<p>สำหรับใครที่<strong>มีปัญหากับ Disk 100%ในการใช้คอมพิวเตอร์</strong>นั้นเพื่อนๆสามารถทำการแก้ไขเบื้องต้นได้ง่ายๆ โดยเพื่อนๆให้ทำตามที่แอดมินแนะนำก่อนละกันผมว่ามันช่วยได้ ไม่ว่าเพื่อนๆจะใช้ Windows 10 , Windows 8.1 หรือ Windows 7 ซึ่งกำลังมีปัญหากับการใช้คอมพิวเตอร์และเครื่องช้ามากๆ และ Disk 100% เพื่อนๆจะสามารถแก้ไขได้เบื้องต้นนั้นเอง เพราะมีคนหลังไมค์มาหาแอดมินเยอะมากในการแก้ไข Disk 100% ทางแอดมินก็เลยเขียนบทความออกมา ให้เพื่อนๆให้ทำการแก้ไชเบื้องต้นดูก่อนนั่นเอง</p>\r\n', 'https://www.exefiles.com/images/troubleshoot.png', '2019-04-07 09:51:21'),
(7, 'อนาถใจ! ซัดคนมือบอนฉกเล่มหายาก งานหนังสือแห่งชาติ หายนับสิบ', '<p>ให้อ่านฟรีแล้วยังขโมย! โซเชียลซัดคนมือบอนฉกหนังสือหายาก ราคาแพง ที่ตั้งโชว์ในมหกรรมงานหนังสือแห่งชาติหายเป็นช่องโหว่ หลายสิบเล่ม...</p>\r\n<p>\r\nได้โพสต์ภาพในงานมหกรรมหนังสือระดับชาติ ครั้งที่ 23 ณ ศูนย์การประชุมแห่งชาติสิริกิติ์ โดยระบุว่า ความน่าอนาถในงานหนังสือ หนังสือดีไซน์เก๋ๆ รูปเล่มเริดๆ ที่เขาเอามาโชว์ในมินินิทรรศการ หายไปเป็นสิบเล่ม!</p>\r\n\r\n<p>เข้าใจว่าโดนมือดีฉกไป เขาคงไม่จัดแสดงโดยปล่อยเป็นรูโหว่แบบนี้หรอกมั้ง ผมชอบนะที่เขาไม่ตีตรวนล่ามโซ่หนังสือ แบบนั้นจะดูปวดใจมาก แต่พอปล่อยเป็นอิสระ ก็นั่นละ ถูกแฮ้บไปเรียบร้อย บางเล่มที่หาย หายากและแพงมากด้วยนะ นี่เพิ่งผ่านไปห้าวัน ยังขนาดนี้ หวังว่าจบงานคงเหลือรอดบ้าง.</p>\r\n', 'https://www.thairath.co.th/media/4DQpjUtzLUwmJZZPFhuILCr79eVD3Jt9CQuOAuy5teak.jpg', '2019-04-07 10:13:06'),
(8, 'สัปดาห์หนังสือแห่งชาติ', '<p>เป็นที่ทราบกันดีแล้วว่า &ldquo;งานใหญ่&rdquo; สำหรับ คนรักหนังสือในประเทศไทย ซึ่งเป็นงานระดับชาติ มีหนังสือมาออกร้านมากมาย จะมีเพียง 2 งานเท่านั้น</p>\r\n\r\n<p>ได้แก่งาน &ldquo;สัปดาห์หนังสือแห่งชาติ&rdquo; และ งาน &ldquo;มหกรรมหนังสือระดับชาติ&rdquo; ซึ่งมี สมาคมผู้จัดพิมพ์และผู้จำหน่ายหนังสือแห่งประเทศไทย (PUBAT) เป็นโต้โผใหญ่ทั้งคู่</p>\r\n\r\n<p>สัปดาห์หนังสือแห่งชาติ ซึ่งในระยะหลังๆ จะพ่วงงาน &ldquo;สัปดาห์หนังสือนานาชาติ&rdquo; เข้าไปด้วย จะเริ่มขึ้นในช่วงปลายเดือนมีนาคมต่อยาวถึงต้น เดือนเมษายนเป็นประจำทุกปี ในขณะที่ &ldquo;มหกรรมหนังสือระดับชาติ&rdquo; จะเริ่มในช่วงปลายเดือน กันยายนไปจนถึงต้นเดือนตุลาคม</p>\r\n\r\n<p>สถานที่จัดงานนั้นหลังจากที่เร่ร่อนไปจัดที่โน่นที่นี่สลับกันไปมาอยู่หลายปี แต่ในที่สุดก็มาลงตัวที่ ศูนย์การประชุมแห่งชาติสิริกิติ์ ซึ่งได้กลายเป็นสถานที่นัดพบระหว่างสำนักพิมพ์ และคนเขียนหนังสือกับคนอ่านหนังสือทั่วประเทศ ปีละ 2 ครั้ง ตราบเท่าทุกวันนี้</p>\r\n\r\n<p>สำหรับปี 2561 นี้ เมื่อเดือนมีนาคมเวียน มาถึงและกำลังจะผ่านไปในอีกไม่กี่วันข้างหน้าจึงได้เวลาสำหรับงานหนังสืองานแรก &ldquo;สัปดาห์หนังสือแห่งชาติ ครั้งที่ 46&rdquo; กับงาน &ldquo;สัปดาห์ หนังสือนานาชาติ ครั้งที่ 16&rdquo; ที่มีกำหนดการแน่นอนแล้วว่า จะเริ่มขึ้นในวันพฤหัสบดีที่ 29 มีนาคม ไปสิ้นสุดในวันอาทิตย์ที่ 8 เมษายน</p>\r\n\r\n<p>นับเวลาถอยหลังก็เหลือเพียงอีก 5 วันเท่านั้น</p>\r\n\r\n<p>ทีมงานซอกแซกในฐานะคนรักหนังสือและเอาใจช่วยงานใหญ่ทั้ง 2 งานนี้มาตลอด จึง ตัดสินใจที่จะยกคอลัมน์ประจำวันอาทิตย์นี้ให้แก่ สัปดาห์หนังสือแห่งชาติ เพื่อบอกกล่าวเล่าสิบ ว่า งานปีนี้จะมีจุดเด่นอะไรบ้างดังที่เคยปฏิบัติมา</p>\r\n\r\n<p>นายกสมาคมผู้จัดพิมพ์และผู้จำหน่ายหนังสือแห่งประเทศไทย สุชาดา สหัสกุล กล่าวกับทีมงานซอกแซกว่า ปีนี้จะมาในแนวคิดสั้นๆ และค่อนข้างกระชับ ที่มีความหมายลึกซึ้', 'https://www.thairath.co.th/media/4DQpjUtzLUwmJZZPEb3fQnlj3pyLivwCM1zTXKwAbK72.jpg', '2019-04-07 09:52:20'),
(9, 'ทำการ Windows อัพเดตนะ', '<p>เมื่อขั้นตอนสองขั้นแรกยังไม่สามารถแก้ไขปัญหาของคุณได้ อาจเป็นความคิดที่ดีที่จะทำ Windows Update หลายข้อผิดพลาดของ storahci.sys สามารถเกิดจากระบบปฏิบัติการ Windows ที่เก่าเกินไปได้เช่นกัน เพื่อทำการ Windows Update โปรดทำตามขั้นตอนเหล่านี้:</p>\r\n\r\n<ol>\r\n	<li>กดปุ่ม&nbsp;<strong>เริ่มต้น</strong>&nbsp;ของ Windows</li>\r\n	<li>ในกล่องค้นหา พิมพ์ &quot;<strong>ปรับปรุง</strong>&quot; และกด &quot;<strong>ENTER</strong>&quot;</li>\r\n	<li>ในกล่องโต้ตอบ Windows Update คลิก &quot;<strong>เช็คการปรับปรุง</strong>&quot; (หรือปุ่มที่คล้ายคลึงกันขึ้นอยู่กับรุ่น Windows ของคุณ)</li>\r\n	<li>ถ้ามีการปรับปรุงสามารถดาวน์โหลดได้คลิก&nbsp;<strong>&quot;ติดตั้งการปรับปรุง&quot;</strong></li>\r\n	<li>รีสตาร์ท PC ของคุณใหม่อีกครั้งเมื่อการปรับปรุงเสร็จสิ้น</li>\r\n</ol>\r\n\r\n<p>หากปรับปรุง Windows ล้มเหลว เพื่อการแก้ไขข้อผิดพลาด storahci.sys โปรดดำเนินการขั้นตอนต่อไป&nbsp;<strong>โปรดทราบว่าขั้นตอนสุดท้ายนี้ขอแนะนำสำหรับผู้ใช้คอมพิวเตอร์ขั้นสูงเท่านั้น</strong></p>\r\n', 'https://www.exefiles.com/images/Windows-update.png', '2019-04-07 12:56:28');

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
  `pos_ems` float(10,2) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `mem_id`, `name`, `address`, `email`, `phone`, `order_status`, `pay_slip`, `b_name`, `b_number`, `pay_date`, `pay_amount`, `postcode`, `pos_ems`, `order_date`) VALUES
(000109, 32, 'CUSTOMER1', 'sdsdกกกกff', 'boingza1@gmail.com', '0914232511', 4, '', '', '', '0000-00-00', 0.00, '', 52.00, '2019-08-04 14:21:18'),
(000110, 32, 'CUSTOMER1', 'sdsdsd', 'boingza1@gmail.com', '0914232511', 1, '', '', '', '0000-00-00', 0.00, '', 42.00, '2019-08-04 14:52:27'),
(000111, 32, 'CUSTOMER1123', 'sdsdsd', 'boingza1@gmail.com', '0914232555', 1, '', '', '', '0000-00-00', 0.00, '', 52.00, '2019-08-04 14:57:59'),
(000112, 36, 'รวดเร็ว ฉับไว', 'ที่อยู่22', 'manboing007_za@hotmail.com', '0914232511', 1, '', '', '', '0000-00-00', 0.00, '', 42.00, '2019-08-04 15:02:36'),
(000113, 36, 'รวดเร็ว ฉับไว 1', 'test1', 'manboing007_za@hotmail.com', '0914232521', 1, '', '', '', '0000-00-00', 0.00, '', 42.00, '2019-08-04 15:03:36');

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
(153, 109, 90, 'การ์ตูน พระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว (รัชกาลที่ ๕) พระปิยมหาราช', 1, 335.55),
(154, 110, 93, 'การ์ตูนนิทานธรรมะจากพระโอษฐ์ พระเจ้า ๕๐๐ ชาติ เล่ม 2', 1, 223.90),
(155, 111, 90, 'การ์ตูน พระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว (รัชกาลที่ ๕) พระปิยมหาราช', 1, 335.55),
(156, 112, 93, 'การ์ตูนนิทานธรรมะจากพระโอษฐ์ พระเจ้า ๕๐๐ ชาติ เล่ม 2', 1, 223.90),
(157, 113, 90, 'การ์ตูน พระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว (รัชกาลที่ ๕) พระปิยมหาราช', 1, 492.47),
(158, 113, 89, 'ไม่ยากถ้าอยากรู้จักใช้เงิน', 1, 492.47);

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
  `s_id` int(4) NOT NULL,
  `p_status` int(11) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `t_id`, `t1_id`, `p_name`, `p_detial`, `p_at`, `p_pu`, `p_br`, `promo`, `promo_start`, `promo_done`, `p_price`, `p_unit`, `p_img1`, `p_img2`, `p_view`, `p_qty`, `p_ems`, `s_id`, `p_status`, `date_save`) VALUES
(47, 16, 28, 'หมู่บ้านเล็กตระกูลเป้า', '<p>หมู่บ้านเล็กตระกูลเป้าของหวังอันอี้...สะท้อนภาพชีวิตในหมู่บ้านชนบทของจีนต้นทศวรรษ 1960 ในระบบคอมมูนประชาชน จนกระทั่งเข้าสู่สังคมนิยมที่ทันสมัยในทศวรรษ 1980 ผู้อ่านจะได้สัมผัสความรักอันบริสุทธิ์ยิ่งใหญ่ของผู้เป็นแม่ ได้เข้าใจความบริสุทธิ์กล้าหาญของเด็กน้อย ผู้กลายเป็นวีรชนของหมู่บ้าน ได้รู้สึกสะเทือนใจกับความรักต้องห้ามของเด็กสาว และความคับแคบขมขื่นของผู้ที่ถูกสังคมลงโทษโดยไม่เป็นธรรม<br />\r\n<br />\r\nหมู่บ้านเล็กตระกูลเป้าเป็น <strong>&quot;คำเชิญชวน&quot;</strong> ให้ผู้อ่านสำรวจตนเองผ่านตัวละคร ซึ่งเป็นตัวแทนของ <strong>&quot;ความงดงาม&quot;</strong> และ <strong>&quot;ความอัปลักษณ์&quot;</strong> อันดูจะดำรงอยู่อย่างกลมกลืนในธรรมชาติของมนุษย์ เป็นความท้าทายให้ผู้อ่านค้นหามิติอันซับซ้อนของตน เพื่อจรรโลงปัญญาให้กระจ่างใส จนสามารถ <strong>&quot;รัก&quot;</strong> และ <strong>&quot;เข้าใจ&quot;</strong> เพื่อนมนุษย์ด้วยกันได้อย่างแท้จริง!</p>\r\n', 'Wang An Yi (หวังอันอี้)', 'นานมีบุ๊คส์พับลิเคชั่นส์', 2147483647, 0.00, '0000-00-00', '0000-00-00', 175.00, 'เล่ม', 'img1201276189520190127_205951.PNG', '', 0, 45, 210, 1, 0, '2019-01-27 13:59:51'),
(44, 16, 25, 'ปลูกผักกินเอง แบ่งได้ ขายด้วย', '<p>คู่มือเล่มนี้ได้รวบรวมเคล็ดลับการปลูกผักสวนครัวกว่า 40 ชนิด ให้คุณ&nbsp;<strong>&quot;ปลูกผักกินเอง&quot;</strong>&nbsp;เเบบง่ายๆ อย่างละเอียดทุกขั้นตอน เริ่มตั้งเเต่การวางเเผนการปลูกอย่างเป็นระบบ เพื่อให้คุณมีผักเก็บกินได้ตลอดปี ประโยชน์เเละวิธีการกางอุโมงค์พลาสติก ซึ่งเป็นองค์ความรู้อันชาญฉลาดของชาวญี่ปุ่น เพื่อควบคุมอุณภูมิให้คงที่เเละป้องกันเเมลงศัตรูพืช รวมถึงสิ่งสำคัญที่ต้องทำ การดูเเลเเละวิธีเเก้ไขเมื่อเกิดปัญหาในการปลูกพืชผักเเต่ละชนิด เพื่อให้คุณเปลี่ยนทุกพื้นที่ว่างในบ้านเป็นสวนผักสีเขียวอย่างง่ายดาย</p>\r\n', 'อังคณา รัตนจันทร์', 'Nosan Gyoson Bunka Kyokai', 2147483647, 0.00, '0000-00-00', '0000-00-00', 213.00, 'เล่ม', 'img175308707320190127_205510.PNG', '', 0, 50, 255, 1, 0, '2019-01-27 13:55:10'),
(45, 16, 26, 'เลี้ยง \"ใจลูก\" ให้ถูกทาง', '<p>ทำไมลูกไม่อยากไปโรงเรียน ทำไมถึงมัวแต่โอ้เอ้ไม่ยอมอาบน้ำ ทำไมทั้งถามมากทั้งขี้บ่น ทำไมช่างรื้อช่างค้น ทำไมถึงขโมยของ! บนเส้นทางการเป็นพ่อแม่ผู้ปกครอง การมีคำถามมากมายนั้นไม่ใช่เรื่องแปลก <strong>&quot;เลี้ยง ใจลูก ให้ถูกทาง&quot;</strong> เล่มนี้ จะตอบข้อสงสัยที่คุณพ่อคุณแม่มีอย่างเต็มอิ่ม ทั้งเรื่องพฤติกรรมของลูก และคำถามต่าง ๆ เรื่องการเลี้ยงดูเด็ก เพื่อให้คุณสามารถประคับประคองพวกเขาให้เติบใหญ่ด้วยการและใจที่แข็งแรง ไม่ว่าจะเป็น การให้ของเล่นลูกบ่อย ๆ เป็นการทำร้ายลูกหรือไม่? เราจะเลี้ยงลูกไปด้วย ทำงานไปด้วยไหวหรือเปล่า? การเลี้ยงลูกคนเดียวน่ากลัว (เหมือนที่คิด) หรือไม่? และเราจะเสริมเพิ่มเสน่ห์ให้ลูกได้อย่างไร? คำตอบทั้งหมดอยู่ในหนังสือเล่มนี้แล้ว!</p>\r\n', 'พ.ญ. อัมพร เบญจพลพิทักษ์', 'สถาพรบุ๊คส์, สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 85.00, 'เล่ม', 'img1134948130520190127_205725.PNG', 'img2134948130520190127_205725.PNG', 0, 50, 145, 1, 0, '2019-01-27 13:57:25'),
(46, 16, 27, 'สร้างบ้านให้คุ้มค่าเงิน', '<p>เป็นหนังสือที่ถูกจัดทำขึ้นหลายครั้งด้วยเนื้อหาที่เป็นประโยชน์ และอ่านเข้าใจง่าย อีกทั้งผู้เขียนยังเป็นวิศวกรที่มีชื่อเสียง ซึ่งได้รวบรวมปัญหาและการแก้ไขจากประสบการณ์จริง อาทิเช่น เลือกชนิดแหวนบานพับให้เหมาะสม ประหยัดเงินเป็น 10 เท่า, ห้องเก็บของไม่เคยพอ ปัญหาโลกแตก บ้านเมืองไทย ทำอย่างไรดีครับ, สร้าง &ldquo;ห้องเก่ง&rdquo; ให้บ้าน เพื่อครอบครัวที่อบอุ่น, ทำทับหลังให้กว้างขึ้นอีกสักนิด และอื่นๆ อีกมากมาย ซึ่งจะช่วยป้องกันและแก้ไขปัญหาต่างๆ เพื่อให้คุณสามารถจัดการกับงบประมาณในการสร้างบ้านได้อย่างคุ้มค่า คุ้มราคา</p>\r\n', 'ยอดเยี่ยม เทพธรานนท์', 'ซีเอ็ดยูเคชั่น, บมจ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 108.00, 'เล่ม', 'img183022662620190127_205834.PNG', '', 0, 50, 106, 1, 0, '2019-01-27 13:58:34'),
(37, 16, 17, 'รู้จักเขา เข้าใจเรา', '<p>หนังสือที่จะช่วยคุณในการปรับ <strong>&quot;</strong><strong>ความคิด&quot;</strong> อีกนิด เพื่อที่จะได้ทราบว่า <strong>&quot;</strong><strong>คน&quot;</strong> เข้าใจไม่ยาก ถ้าเข้าถึง <strong>&quot;</strong><strong>จิตใจและความรู้สึก&quot;</strong> ที่อยู่เบื้องหลังการกระทำของเขา ถ่ายทอดด้วยสำนวนภาษาอ่านง่าย สไตล์สบายๆ เน้นการนำเอาไปใช้จริง และยืนอยู่บนพื้นฐานทางวิชาการที่ถูกต้อง เพียงคุณสนใจพฤติกรรมมนุษย์เท่านั้น ก็จะสามารถอ่านได้อย่างสนุกสนาน ที่สำคัญเนื้อหาแต่ละเรื่องจะจุดประกายความคิดใหม่ๆ ให้กับคุณได้เป็นอย่างดี</p>\r\n', 'รศ.ดร. สิทธิโชค วรานุสันติกุล, น.พ. สุทธิศักดิ์ คณาปราชญ์', 'ซีเอ็ดยูเคชั่น, บมจ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 125.00, 'เล่ม', 'img1165506037220190127_202204.PNG', '', 0, 46, 305, 1, 0, '2019-01-27 13:22:04'),
(38, 16, 18, 'Maple Story ศึกอภินิหารพิชิตคำศัพท์จีน เล่ม 7 (ฉบับการ์ตูน)', '<p>โดโด้กับผองเพื่อนขัดขวางการระเบิดของเกาะกลางอากาศได้สำเร็จ จากนั้นจึงนำไข่สีชมพูที่ยังเป็นปริศนาอยู่ ไปฝากไว้ที่ห้องวิจัย ดร.คิม แต่แล้วครูใหญ่ชิชิอุก็ส่งลูกน้องมาขโมยไข่สีชมพูไป แล้วบังคับให้นักบวชแห่งการลืมกำจัดโดโด้ แลกกับไข่ที่เขามาตามหา กลุ่มของโดโด้ที่กำลังไปเที่ยวชมศูนย์การค้าเคิร์นนิงสแควร์ จึงต้องเจอเหตุการณ์ระทึกขวัญ เมื่อนักบวชแห่งการลืม ใช้มนตร์สะกดเหล่าของเล่นให้ตามไล่ล่าพวกเขา โดโด้กับเพื่อน ๆ จะเอาตัวรอดได้หรือไม่! ติดตามได้ใน ศึกอภินิหารพิชิตคำศัพท์จีน</p>\r\n', 'Yu Gyeong Won (ยูคยองวอน)', 'ซีเอ็ดยูเคชั่น, บมจ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 50.00, 'เล่ม', 'img1155023287020190127_202317.PNG', 'img2155023287020190127_202317.PNG', 1, 50, 235, 1, 0, '2019-01-27 13:23:17'),
(39, 16, 19, 'คู่มือเรียนเขียนโปรแกรมภาษา C ฉบับสมบูรณ์', '<p>หนังสือเล่มนี้เเนะนำให้ผู้อ่านรู้จัก <strong>&quot;</strong><strong>การเขียนโปรเเกรมภาษา </strong><strong>C&quot;</strong> ตั้งเเต่พื้นฐานจนสามารถนำไปใช้เเก้ไขโจทย์ปัญหาได้จริง โดยเนื้อหาจะสอนตั้งเเต่การติดตั้งโปรเเกรม หลักการเขียนโปรเเกรมของภาษา C, การเขียน Flowchart, การใช้งาน Array, Pointer Struct, Union Enum เเละ Linked List, การทำงานร่วมกับไฟล์ เเละการสร้างเเละใช้งานฟังก์ชัน ซึ่งมีตัวอย่างประกอบทุกหัวข้อ พร้อมคำอธิบายอย่างละเอียดเหมาะสำหรับนักเรียน นักศึกษา เเละผู้ที่สนใจทั่วไป</p>\r\n', 'ไกรศร ตั้งโอภากุล,กิตินันท์ พลสวัสดิ์', 'ไอดีซี พรีเมียร์, บจก.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 328.00, 'เล่ม', 'img1157854388620190127_202448.PNG', '', 0, 50, 635, 1, 0, '2019-01-27 13:24:48'),
(40, 16, 20, 'สุดยอดความรู้รอบตัว', '<p>นี่คือคู่มือความรู้สำคัญที่คนไทยควรรู้ เนื้อหาในเล่มเป็นการรวบรวมความรู้หลากหลายสาขาที่สุด ทั้งสำนวนไทย ราชาศัพท์ ลักษณะนาม เครื่องหมายวรรคตอน ลำดับพระมหากษัตริย์ไทย หลักการถอดคำ อังกฤษเป็นไทย-ไทยเป็นอังกฤษ คำที่มักเขียนผิด ชื่อประเทศ ดินแดน เมืองหลวง และหน่วยเงินตรา อักษรย่อภาษาไทย-ภาษาอังกฤษ เว็บไซต์ที่ควรรู้ ศัพท์คอมพิวเตอร์และอินเทอร์เน็ต อักษรย่อทางอินเทอร์เน็ต สัญลักษณ์พื้นฐานทางคณิตศาสตร์ มาตราต่างๆ ชื่อธาตุ สูตรการหาพื้นที่ ปลาน้ำจืด ปลาทะเล สัตว์ป่าสงวน ดอกไม้และพรรณพืช และอีกหลากหลายที่คัดสรรมาอย่างดีแล้ว ในรูปเล่มกะทัดรัด พกพาสะดวก เหมาะสำหรับนักเรียน นักศึกษา และบุคคลทั่วไป</p>\r\n', 'ฝ่ายวิชาการภาษาไทย บริษัท ซีเอ็ดยูเคชั่น จำกัด (มหาชน)', 'ซีเอ็ดยูเคชั่น, บมจ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 50.00, 'เล่ม', 'img1140766599820190127_202559.PNG', 'img2140766599820190127_202559.PNG', 0, 50, 305, 1, 0, '2019-01-27 13:25:59'),
(36, 16, 15, 'ลงทุนแมน 8.0', '<p>หนังสือสร้างแรงบันดาลใจ ที่จะเป็นตัวช่วยให้ผู้อ่านได้เรียนรู้เรื่องราวของสิ่งต่าง ๆ ที่เกิดขึ้น ไม่ว่าจะเป็น วิทยาการ สังคม ประวัติศาสตร์ ความเป็นมาของแบรนด์ต่าง ๆ รวมถึงเส้นทางชีวิตของคนที่ประสบความสำเร็จ ซึ่งผู้อ่านสามารถนำไปใช้เป็นกรณีศึกษาเพื่อเรียนรู้ และปรับใช้ในการดำเนินชีวิตหรือการทำธุรกิจได้เป็นอย่างดี เพราะโลกนี้กำลังเปลี่ยนแปลงไปอย่างรวดเร็ว บุคคลที่อยู่รอดได้อาจจะไม่ใช่บุคคลที่เก่งที่สุด หรือฉลาดที่สุดบนโลกนี้ แต่คือบุคคลที่สามารถรับมือกับการเปลี่ยนแปลงได้ดีที่สุด และการที่เราได้รู้เรื่องราวต่าง ๆ ก็น่าจะเป็นวิธีที่ทำให้เรารับมือกับการเปลี่ยนแปลงอันรวดเร็วได้!</p>\r\n', 'ลงทุนแมน', 'แอลทีแมน, บจก.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 220.00, 'เล่ม', 'img1162840333220190127_042932.PNG', 'img2162840333220190127_042932.PNG', 10, 39, 300, 1, 0, '2019-01-26 21:29:32'),
(41, 16, 21, 'ป่วย 3 เดือน เกิดสมุดเล่มนี้', '<p>สืบมรดกธรรม มิใช่มรดกใคร เป็นของไกวัลยธรรม ทั้งปวง เป็นการกระทำแก่พระพุทธเจ้าโดยตรง เป็นการกระทำแก่พระพุทธเจ้า ไม่รู้ว่ากี่ล้านๆ พระองค์ หรือว่ากี่ล้านๆ กัปป์ กี่ล้านๆ กัลป์ ความถูกต้องสูงสุดคือความถูกต้องของตัวเอง...</p>\r\n', 'พุทธทาสภิกขุ (พระธรรมโกศาจารย์)', 'พุทธทาสภิกขุ', 2147483647, 0.00, '0000-00-00', '0000-00-00', 67.00, 'เล่ม', 'img197502743220190127_202735.PNG', '', 0, 50, 230, 1, 0, '2019-01-27 13:27:35'),
(42, 16, 22, 'อัลเฟรด โนเบล', '<p>หนังสือเล่มนี้จะพาคุณผู้อ่านไปรู้จักกับ <strong>&quot;อัลเฟรด โนเบล&quot;</strong> ผู้ให้กำเนิด <strong>&quot;รางวัลโนเบล&quot;</strong> และผู้คิดค้นดินระเบิดไดนาไมต์ ถึงแม้การค้นพบไดนาไมต์จะนำมาซึ่งความมั่งคั่งร่ำรวยอย่างล้นเหลือ ทว่าเขาก็รู้สึกเจ็บปวดเมื่อสิ่งที่เขาคิดค้นขึ้นมานั้นถูกนำไปใช้ในการสงคราม โนเบลปรารถนาจะเห็นสันติสุขในโลกและความก้าวหน้าทางวิทยาศาสตร์ได้จากโลกนี้ไปพร้อมกับพินัยกรรมระบุให้จัดการทรัพย์สินของตนเองจัดตั้งเป็นรางวัลขึ้น เพื่อมอบเป็นประจำทุกปีแก่บุคคลที่อุทิศตนทำประโยชน์ต่อมวลมนุษย์ รางวัลซึ่งได้จัดตั้งตามพินัยกรรมนี้มีชื่อว่า <strong>&quot;รางวัลโนเบล&quot;</strong></p>\r\n', 'สิทธา พินิจภูวดล', 'ไทยวัฒนาพานิช, บจก.สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 66.00, 'เล่ม', 'img125129185920190127_202843.PNG', '', 0, 50, 100, 1, 0, '2019-01-27 13:28:43'),
(43, 16, 24, 'เยือนถิ่นอินเดีย', '<p>สารคดีบันทึกการเดินทางของ <strong>&quot;โกวิท ตั้งตรงจิต&quot;</strong> ที่ได้เดินตามรอยพระพุทธเจ้าในแดนพุทธภูมิ โดยมีเพื่อนชาวอินเดียนำทาง เขาเดินทางไปทั่วอินเดียโดยผ่านเมืองและสถานที่สำคัญ อาทิ กัลกัตตา ปาฏลีบุตร นาลันทา พุทธคยา พาราณสี สาวัตถี ลัคเนา อัคระ พร้อมพาคุณไปล่องแม่น้ำคงคาอันศักดิ์สิทธิ์ ชื่นชมความตระการตาของทัชมาฮาล รวมทั้งแวะเที่ยวนครสีชมพูและถ้ำเอลโลรา อชันตา อันอัศจรรย์เป็นการนำเที่ยวอินเดียอย่างละเอียดเสมือนคุณได้ร่วมเดินทางไปด้วยจริงๆ มีข้อมูลประวัติศาสตร์และประวัติของสถานที่อย่างละเอียดลึกซึ้งสอดแทรกอารมณ์ขันมีภาพประกอบไปตลอดการเดินทาง</p>\r\n', 'โกวิท ตั้งตรงจิตร', 'พิมพ์คำ, สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 332.00, 'เล่ม', 'img1155820497420190127_205342.PNG', '', 0, 50, 630, 1, 0, '2019-01-27 13:53:42'),
(35, 16, 14, 'วายัง อมฤต', '<p>โลกของ <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> คือโลกของอุดมคติ เป็นโลกที่อาจแลดูเลื่อนลอยคล้ายเงาดำบนฉากขาวในการแสดง วายัง กุลิต แต่แท้ที่จริงแล้วเมื่อมองลงไปในความจริงมันกลับมีบางสิ่งที่จับต้องได้อยู่ในนั้น อุดมการณ์อันแข็งแกร่ง อุดมคติอันตกผลึก ความมุ่งมั่นที่จะเปลี่ยนแปลงโลกไปสู่สิ่งที่ดีกว่า โลกของผู้ถูกกดขี่ โลกของผู้ถูกเอารัดเอาเปรียบ โลกของผู้คนที่ไม่มีสิทธิแม้จะพูดในสิ่งที่เขาคิด คือศัตรูของโลกแห่ง วายังอมฤต<br />\r\n<br />\r\nเงาสีดำที่ปรากฏให้เห็นอาจเพลิดเพลิน ตื่นตา หรือเร้าใจ แต่นั่นคือการล่อหลอก ตัวหนังและผู้เชิดที่หลบอยู่ด้านหลังสิคือสิ่งที่แท้จริงกว่าเงาสีดำอาจหายไปจากจอสีขาวในบางขณะ แต่ตัวหนังยังคงอยู่ตลอดเวลา เหตุการณ์อาจไม่เกิดขึ้น แต่ผู้มุ่งมั่นที่ต่อสู้เพื่อการเปลี่ยนแปลงยังดำรงอยู่ เป็นเช่นนั้นนับร้อยนับพันปีจากที่หนึ่งสู่อีกที่หนึ่ง จากชนชาติหนึ่งสู่อีกชนชาติหนึ่ง จากจิตสำนึกหนึ่งสู่อีกจิตสำนึกหนึ่ง สิ่งเหล่านี้กินเวลาอันยาวนาน และมันกลืนกินชีวิตทุกคนแม้กระทั่งชีวิตของผมด้วย<br />\r\n<br />\r\n<strong>&quot;</strong><strong>มิสเตอร์ ไฮน์ริช เบิล&quot;</strong> มันเป็นเรื่องยากที่ผู้ที่ไม่ยอมให้อุดมคติกลืนกินเช่นคุณจะเข้าใจ มันเป็นเรื่องยากที่ผู้ที่ไม่เคยสัมผัสโลกแห่ง <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> เช่นคุณจะเข้าใจ เส้นทางเข้าสู่โลกแห่ง <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> เป็นเส้นทางอันมีเกียรติ ศักดิ์สิทธิ์ และเรียกร้องการเสียสละ โลกของ วายัง อมฤตเป็นโลกที่เรียกร้องให้ท้ายที่สุด เราทุกคนต้องละทิ้งตนเองไป หลงเหลือเพียงภาพเงาดำชั่วขณะบนฉากขาวเท่านั้น..</p>\r\n\r\n<p>โลกของ <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> คือโลกของอุดมคติ เป็นโลกที่อาจแลดูเลื่อนลอยคล้ายเงาดำบนฉากขาวในการแสดง วายัง กุลิต แต่แท้ที่จริงแล้วเมื่อมองลงไปในความจริงมันกลับมีบางสิ่งที่จับต้องได้อยู่ในนั้น อุดมการณ์อันแข็งแกร่ง อุดมคติอันตกผลึก ความมุ่งมั่นที่จะเปลี่ยนแปลงโลกไปสู่สิ่งที่ดีกว่า โลกของผู้ถูกกดขี่ โลกของผู้ถูกเอารัดเอาเปรียบ โลกของผู้คนที่ไม่มีสิทธิแม้จะพูดในสิ่งที่เขาคิด คือศัตรูของโลกแห่ง วายังอมฤต<br />\r\n<br />\r\nเงาสีดำที่ปรากฏให้เห็นอาจเพลิดเพลิน ตื่นตา หรือเร้าใจ แต่นั่นคือการล่อหลอก ตัวหนังและผู้เชิดที่หลบอยู่ด้านหลังสิคือสิ่งที่แท้จริงกว่าเงาสีดำอาจหายไปจากจอสีขาวในบางขณะ แต่ตัวหนังยังคงอยู่ตลอดเวลา เหตุการณ์อาจไม่เกิดขึ้น แต่ผู้มุ่งมั่นที่ต่อสู้เพื่อการเปลี่ยนแปลงยังดำรงอยู่ เป็นเช่นนั้นนับร้อยนับพันปีจากที่หนึ่งสู่อีกที่หนึ่ง จากชนชาติหนึ่งสู่อีกชนชาติหนึ่ง จากจิตสำนึกหนึ่งสู่อีกจิตสำนึกหนึ่ง สิ่งเหล่านี้กินเวลาอันยาวนาน และมันกลืนกินชีวิตทุกคนแม้กระทั่งชีวิตของผมด้วย<br />\r\n<br />\r\n<strong>&quot;</strong><strong>มิสเตอร์ ไฮน์ริช เบิล&quot;</strong> มันเป็นเรื่องยากที่ผู้ที่ไม่ยอมให้อุดมคติกลืนกินเช่นคุณจะเข้าใจ มันเป็นเรื่องยากที่ผู้ที่ไม่เคยสัมผัสโลกแห่ง <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> เช่นคุณจะเข้าใจ เส้นทางเข้าสู่โลกแห่ง <strong>&quot;</strong><strong>วายัง อมฤต&quot;</strong> เป็นเส้นทางอันมีเกียรติ ศักดิ์สิทธิ์ และเรียกร้องการเสียสละ โลกของ วายัง อมฤตเป็นโลกที่เรียกร้องให้ท้ายที่สุด เราทุกคนต้องละทิ้งตนเองไป หลงเหลือเพียงภาพเงาดำชั่วขณะบนฉากขาวเท่านั้น..</p>\r\n', 'อนุสรณ์ ติปยานนท์', 'Din-Dan Book', 2147483647, 0.00, '0000-00-00', '0000-00-00', 220.00, 'เล่ม', 'img1146605488720190127_042738.PNG', 'img2146605488720190127_042738.PNG', 3, 42, 123, 1, 0, '2019-01-26 21:27:38'),
(48, 16, 29, 'หรรษาอาเซียน', '<p><strong>&quot;หรรษาอาเซียน&quot;</strong> อ่านได้เพลินๆ ชวนยิ้มหัวไปกับเรื่องราวแปลกๆ ขำๆ เรียกได้ว่าเป็นประวัติศาสตร์เกี่ยวกับวิถีผู้คน ศิลปะ ภาษา และวัฒนธรรมของชาวอาเซียนที่ถูกถ่ายเทสู่กันและกัน อีกทั้งยังจะช่วยไขข้อข้องใจในสารพันปัญหาที่หลายคนอาจติดใจสงสัย หรือไม่เคยได้ยินได้ฟังจากที่ไหนมาก่อน อาทิ จริงหรือ...คนแต่ง &ldquo;ซินเดอเรลล่า&rdquo; ลอกพล็อตเรื่องมาจาก &ldquo;ปลาบู่ทอง&rdquo;? พระเจ้า! ถ้าโปรตุเกสไม่เอามะละกอกับพริกขี้หนูมาปลูก แล้วสาวๆ จะมี &ldquo;ส้มตำ&rdquo; กินมั้ย? ทำไมคนไทยฟังเพลง &ldquo;พม่าประเทศ&rdquo; แล้วต้องยืนตรงเคารพธงชาติ? เจ้าสาวเวียดนามร่ำไห้ทำไมในงานแต่ง? 7 ประเทศอาเซียนแต่งชุดรามเกียรติ์ต่างกัน แต่ทำไมเล่นเรื่องเดียวกัน? บางเรื่องราวอาจถูกซุกซ่อนอยู่เพียงหลังฉาก ยังไม่ได้แพร่หลายสู่การรับรู้ในวงกว้าง ยิ่งอ่านไปยิ่งจะทำให้เราทึ่งกับที่มาของเรื่องราวต่างๆ ได้รับทั้งสาระความรู้และความเพลิดเพลิน กันเลยทีเดียว</p>\r\n', 'ธีรภาพ โลหิตกุล', 'มติชน, สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 175.00, 'เล่ม', 'img1167578971520190127_210100.PNG', 'img2167578971520190127_210100.PNG', 0, 50, 215, 1, 0, '2019-01-27 14:01:00'),
(49, 16, 30, 'ในลึก', '<p>พบกับนวนิยายเข้ารอบสุดท้ายรางวัลวรรณกรรมสร้างสรรค์แห่งอาเซียน (ซีไรต์) ปี 2543 เรื่อง <strong>&quot;ในลึก&quot;</strong> ผลงานโดย <strong>&quot;จำลอง ฝั่งชลจิตร&quot;</strong> ถ่ายทอดเรื่องราวต่อจากนวนิยายสำหรับเยาวชนดีเด่นเรื่อง <strong>&quot;ขนำน้อยกลางทุ่งนา&quot;</strong> ที่ผู้เขียนให้ความสำคัญกับตัวละครเอกและท้องทุ่งหรือพื้นอย่างมาก เนื้อหาภายในเล่มนี้ เขียนขึ้นหลังเกิดวิกฤตทางเศรษฐกิจปี 2540 ที่ตัวละครได้รับผลกระทบเหมือนคนชั้นกลางอีกนับล้านคน <strong>&quot;ในลึก&quot;</strong> จึงเกือบเป็นนวนิยายเรื่องเดียวที่บันทึกสภาพสังคมช่วงนั้นเอาไว้</p>\r\n', 'จำลอง ฝั่งชลจิตร', 'แมวบ้าน, สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 237.00, 'เล่ม', 'img1182877327620190127_210159.PNG', 'img2182877327620190127_210159.PNG', 0, 50, 215, 1, 0, '2019-01-27 14:01:59'),
(50, 17, 31, 'The Persian Cat Princess', '<p>&quot;A curse that gives her the head and tail of a cat brings great distress to Princess Persia. The quest to find the man, entrusted with the sacred sword, who can remove the curse placed on the princess by five wicked witches, is long and labored. Even harder is the battle to defeat the witches and their envy, vanity, anger, indecision, and cruelty.<br />\r\n<br />\r\nIn the end, however, mercy and forgiveness prove to be the greatest blessings of all. They are the keys that unlock the world of love and happiness ever after.<br />\r\n<br />\r\nThis fantasy adventure introduces young readers to a world of fire-breathing dragons, wicked witches, great white eagles, valiant princes, loving parents, and a sad princess unjustly cursed. The story is a treat for both the heart and the mind &ndash; one that invites you to join in the fun. And finally, who knows? You may discover the secret to lasting happiness inside yourself.</p>\r\n', 'S.REE FREEWALL & 3 Ds', 'S.REE FREEWALL & 3 Ds', 2147483647, 0.00, '0000-00-00', '0000-00-00', 213.00, 'เล่ม', 'img135860553320190127_210303.PNG', '', 0, 1, 125, 1, 0, '2019-01-27 14:03:03'),
(51, 17, 32, 'Border Economic', '<p>Thailand has a great deal of experience in developing special economic areas&nbsp;&nbsp;&nbsp;along its borders, largely because of the important role that subregional cooperation with neighboring countries has played in the country&#39;s overall development strategy. Beginning in the late 1980s, Thailand&#39;s border conflicts with neighboring countries was superseded by region-wide cooperation arrangements that focused on cross-border movements of people and goods. The resulting border development programs were associated with production sharing schemes and supply chain trade along economic corridors in the subregion.&nbsp;&nbsp;&nbsp;</p>\r\n', 'Montague Lord,Pawat Tangtrongita', 'Chulalongkorn University Printing House', 2147483647, 0.00, '0000-00-00', '0000-00-00', 322.00, 'เล่ม', 'img1145681910420190127_210436.PNG', '', 2, 49, 456, 1, 0, '2019-01-27 14:04:36'),
(52, 17, 33, 'Disney School Skills', '<p>Disney School Skills Workbooks are the perfect tools to make a difference in your child&rsquo;s learning. Inside this book, you&rsquo;ll find a developmental progression of activities designed to help your child master essential skills critical for school success. Interactive stickers, puppets, and easy to read mini books motivate your child to read and understand all sorts of stories!<br />\r\n<br />\r\nWhy is learning to understand what you read important? Reading is an active process. Good readers understand what they read, remember what they read, and talk about what they read. Good readers use a variety of strategies to make sense of what they are reading, such as: predicting what might happen next, noting important details, asking and answering questions about what is read, and making connections with their own experiences. Children need to have opportunities every day reading all kinds of books to put their developing comprehension strategies to work!</p>\r\n', 'Disney', 'Scholastic Singapore', 2147483647, 0.00, '0000-00-00', '0000-00-00', 175.00, 'เล่ม', 'img1202236757720190127_210626.PNG', '', 0, 50, 210, 1, 0, '2019-01-27 14:06:26'),
(53, 17, 34, 'The Sharks', '<p>From his own hard-earned life lesson, author J.H. Hyun, a 25-year veteran of Fortune 500 companies, reveals the opportunities for personal growth that can emerge when you learn to swim with the tide and eventually outswim these relentless predators.<br />\r\n<br />\r\nOutswimming the Sharks will help you Assess your current situation, Set clear and specific goals, Develop unbreakable focus and motivation, Take ownership and control of your future, Achieve your life goals in the midst of and without succumbing to your <strong>&quot;sharks&quot;</strong> . There will always be sharks in your life to throw you off course. Now you can learn how to outswim them and reach your full life potential.</p>\r\n', 'J.H. Hyun', 'วิช กรุ๊ป (ไทยแลนด์), บจก.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 332.00, 'เล่ม', 'img1161197717820190127_210801.PNG', '', 0, 50, 270, 1, 0, '2019-01-27 14:08:01'),
(54, 17, 35, 'Thermodynamics', '<p>This book brings thermodynamics to life through a simple text supported by examples and case studies. The subject matter in this book is based on a minimum number of laws, and postulates. It is intended for students, practicing engineers, and scientists. The first eight chapters contribute to the basic theories of thermodynamics.<br />\r\n<br />\r\nThe first chapter on Introduction provides a background of the subject that is a fundamental part of science and technology, and serves an essential role in our life and society. The following chapters provide principles or laws in evaluation of energy conversion and applications of these theories. Property tables and diagrams for water and R134a are included in the book.<br />\r\n<br />\r\nThese thermodynamic properties can determine easily with an Internet-based program that is available from the author&#39;s website for the book. Besides the properties of the substances just mentioned, the website can provide the psychrometric chart. The SI system has been used throughout the book.</p>\r\n', 'Wanchai Asvapoositkul', 'จุฬาลงกรณ์มหาวิทยาลัย, สนพ.แห่ง', 2147483647, 0.00, '0000-00-00', '0000-00-00', 218.00, 'เล่ม', 'img1185809238420190127_210916.PNG', 'img2185809238420190127_210916.PNG', 0, 50, 525, 1, 0, '2019-01-27 14:09:16'),
(55, 17, 36, 'My First 100 Animals (H)', '<p><strong>&quot;My First 100 Words&quot;</strong> A bright picture word book to read, A must-have first library to learn with, A small charming world to explore, This first book is perfect for your child!</p>\r\n', 'Dickens Publishing Ltd.', 'Dickens Publishing Ltd.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 185.00, 'เล่ม', 'img148292776020190127_211043.jpg', '', 0, 50, 256, 2, 0, '2019-01-27 14:10:43'),
(56, 17, 37, 'The New Indonesian  House (H)', '<p>The New Indonesian House presents twenty-Seven homes in Jakarta, Bundung, Yogyakarta and Bali that illustrate the remarkable advances that have taken place in residentail design in Indonesia over the last two decades. From the fundamental pre-1990 issue--how to modernize while maintaining a core of cultural indentity--Indonesia&#39;s new generation of architects has moved on, demonstrating not only their absorption of modern influences from the West and the more recent processes of globalization but also their sensitivity to the physical environment, the social context and the aspirations of the urban middle classes. The result in a level of refinement, sophistication, individuality and environmental awareness in their house designs that is comparable with the best in the world. With its stunning color photographs, The New Indonesian House will both delight and inspire the application of its exhilarating architectural expressions in any global setting.</p>\r\n', 'Robert Powell', 'Tuttle Publishing', 804841438, 0.00, '0000-00-00', '0000-00-00', 1558.00, 'เล่ม', 'img1114200119220190127_211156.PNG', '', 1, 50, 1655, 2, 0, '2019-01-27 14:11:56'),
(57, 17, 38, 'Buddhist World', '<p>ABC now stands for Aasin Buddhist Connection, we are interested to help connect active Buddhists from various past of the world and Asia in partiscular. The conference was offered in Thailand for this purpose. Articles collected in this book are from the latest conference in 2016 they should represent some of the ideas we want to get across to the larger audience.</p>\r\n', 'Prof. Amarjiva Lochan', 'ไทยธิเบต, ศูนย์', 2147483647, 0.00, '0000-00-00', '0000-00-00', 247.00, 'เล่ม', 'img1100107357320190127_211259.PNG', 'img2100107357320190127_211259.PNG', 1, 50, 300, 2, 0, '2019-01-27 14:12:59'),
(58, 17, 39, 'Atulo Gifts He Left Behind', '<ol>\r\n	<li>The genuine basis of the Dhamma is the mind, so focus on watching the mind. Get so that you understand your own mind poignantly.<br />\r\n	you understand your mind poignantly, you&rsquo;ve got the basis of the Dhamma right there.Venerable Grandfather Dulya Atulo or Phra Rajvudhacariyd, Wat Buraparam, Surin Province, was an abbot who behaved properly, uniquely taught people of pure truths at the highest level. He was one of the most senior disciples of Venerable Grandfather Mun Bhuridatto, a consummate spiritual warrior.<br />\r\n	<br />\r\n	Venerable Grandfather&rsquo;s teachings were simple but containing a complete dhammic message of the Buddha&rsquo;s noble words in the Canon. This is an example of his teachings&hellip;Should heedlessness remain, the religion&rsquo;s savour remains untapped. They are external things. Their external benefit is for social service, a symbol of religious materialism. The genuine personal benefit is to be free from suffering. <strong>&quot;One can be free from suffering when getting to know the single mind.&quot;</strong><br />\r\n	<br />\r\n	The book <strong>&quot;Gifts He Left Behind&quot;</strong> compiles the Dhamma legacy of Venerable Grandfather Dulya Atulo before he passed away. It has been published for more than one million&hellip;The publication of this &ldquo;Gifts He Left Behind&rdquo; issue aims to distribute to Venerable Grandfather Dul&rsquo;s well-wishers, Thai and foreigners, so that they can absorb the essence of his Dhammic teachings and rely upon them as a protecting shield when their mind is invaded by defilement, sufferings, and dominated by greed, anger, misguidedness. The essence of Dhammic teachings in this book is expected to pave the way for all readers towards happiness, serenity, and enlightenment brought by a merit mind, once they get to know the mind.</li>\r\n</ol>\r\n', 'Bra Bodhinandamuni', 'Bra Bodhinandamuni', 2147483647, 0.00, '0000-00-00', '0000-00-00', 237.00, 'เล่ม', 'img1213840513720190127_211357.PNG', '', 0, 50, 190, 2, 0, '2019-01-27 14:13:57'),
(59, 17, 40, 'Hole s Essentials', '<p>Designed for the one-semester anatomy and physiology course, Hole&#39;s Essentials of Human Anatomy and Physiology assumes no prior science knowledge and supports core topics with clinical applications, making difficult concepts relevant to students pursuing careers in the allied health field. The unparalleled teaching system is highly effective in providing students with a solid understanding of the important concepts in anatomy and physiology. Users who purchase Connect Plus receive access to the full online ebook version of the textbook.</p>\r\n', 'David Shier,Jackie Butler,Ricki Lewis', 'McGraw-Hill Education', 2147483647, 0.00, '0000-00-00', '0000-00-00', 1097.00, 'เล่ม', 'img1213964411320190127_211637.PNG', '', 0, 50, 1230, 2, 0, '2019-01-27 14:16:37'),
(60, 17, 41, 'Exploring Bangkok', '<p>Exploring Bangkok has eight tourssome walkable, others by skytrain, metro and Chao Phraya riverboatwhich make sense of the city&#39;s complexity and reveal its variety of outstanding buildings, from the breathtaking to the bizarre.There are historic gems built by Chakri monarchs, glittering Buddhist temples, glitzy shopping malls, Italianate palazzi, Art Nouveau villas, Chinese shophouses, the Robot Building and modernist and Romanstyle skyscrapers. The book&#39;s lively and authoritative text explains who built them, when and why.<br />\r\n<br />\r\nMore than 300 buildings and structures are illustrated and described, featured for their architectural excellence, historical significance or because they represent design trends, development or social change. Exploring Bangkok is the perfect companion for curious visitors, architectural enthusiasts, designers and residents.</p>\r\n', 'Robin Ward', 'Li-Zenn Publishing Limited', 2147483647, 0.00, '0000-00-00', '0000-00-00', 760.00, 'เล่ม', 'img195249333120190127_211735.PNG', 'img295249333120190127_211735.PNG', 0, 50, 805, 1, 0, '2019-01-27 14:17:35'),
(61, 17, 42, 'Eight Weeks to Modern Eco-Living (P)', '<p>The time to save the planet is now.<br />\r\n<br />\r\nReady? Set? Green! Living green means reversing climate change, but it also means protecting your kids and pets, improving your own health, and saving money. And it doesn&rsquo;t necessarily demand a radical overhaul of your life&ndash;just some simple adjustments, such as switching to healthier cleaning products and driving fewer miles each week.<br />\r\n<br />\r\nWritten by the visionarires at Treehugger.com, the most heavily trafficked site of its kind, Ready, Set, Green is the definitive (and recyclable) guide to modern green living. It offers solutions to make your home, office, car, and vacation more eco-friendly. For example:<br />\r\n<br />\r\n&bull; Using a dishwasher instead of hand washing will save you 5,000 gallons of water annually.<br />\r\n&bull; Eating less beef will save you 250 pounds of CO2 per year.<br />\r\n&bull; Washing your clothes in cold water instead of hot will save 200 pounds of CO2 annually.<br />\r\n&bull; Replacing three of your home&rsquo;s most frequently used lightbulbs with compact fluorescent bulbs will save 300 pounds of CO2 every year.<br />\r\n<br />\r\nIncluding advice on how to properly insulate your house, cancel junk mail, and choose fruits and veggies wisely, Ready, Set, Green will help you change the future of the planet and restore balance to your daily life.</p>\r\n', 'Meaghan O Neill Graham Hill', 'Villard', 2147483647, 0.00, '0000-00-00', '0000-00-00', 513.00, 'เล่ม', 'img154076225620190127_211900.PNG', '', 0, 50, 260, 1, 0, '2019-01-27 14:19:00'),
(62, 17, 43, 'The Best Man That Ever Was (P)', '<p>Given its imaginative risk and experiemental daring, perhaps the most remarkable thing about Annie Frued&#39;s poetry is its effortless success: these wise, funny, sly, erotic and lightning-witted poems all find their marks with unerring accuracy. From the disturbing dramatic monologue of the title poem, through love poems of great worldly tenderness, to a soliloquy from the inventor of the individual fruit pie-the reader is both challenged and entertained from first to last. The Best Man That Ever Was announces one of the most startlingly original poets to have emerged in recent years.</p>\r\n', 'Annie Freud', 'Pan Macmillan', 2147483647, 0.00, '0000-00-00', '0000-00-00', 803.00, 'เล่ม', 'img180492103520190127_212002.PNG', '', 0, 49, 105, 1, 0, '2019-01-27 14:20:02'),
(63, 17, 44, 'The Ecology of Building Materials 2ED (P)', '<p>The Ecology of Building Materials explores key questions surrounding sustainability of building materials. It provides technical data to enable disign and building professionals to choose the most appropriate materials for a project : those that are least polluting, most energy efficient, and from sustainable sources, The book also gives information and guidance on a wide range of issues such as recycling, detailing for increased durability and Life Cycle Analysis.<br />\r\n<br />\r\nBerge&#39;s book, translated by Chris Butters and Filip Henley, offers safe and environmentally friendly material options. It provides an assential and easy-to-use reference guide to this complex subject for the building industry professional.<br />\r\n<br />\r\nNew to this edition:<br />\r\n<br />\r\n- Thorough exploration of building materials in relation to climate change issues<br />\r\n- Extensive updating of basic data, as well as the introduction of a wide ranges of new materials<br />\r\n- Methods for recycling and reuse of materials<br />\r\n- More information on the interaction between materials and the indoor environment, ventilation and energy use<br />\r\n- Full colour text and user-friendly format</p>\r\n', 'Bjorn Berge', 'Architectural Press', 1856175375, 0.00, '0000-00-00', '0000-00-00', 3227.00, 'เล่ม', 'img15466614620190127_212104.PNG', '', 4, 49, 1225, 1, 0, '2019-01-27 14:21:04'),
(64, 17, 45, 'แก้วจอมซน Kaew la joueuse', '<p>เนื่องในวโรกาสสมเด็จพระเทพรัตนราชสุดา ฯ สยามบรมราชกุมารีทรงมีพระชนมายุ 60 พรรษา คณาจารย์ภาควิชาภาษาฝรั่งเศส คณะศิลปศาสตร์ มหาวิทยาลัยธรรมศาสตร์ ร่วมกับนานมีบุ๊คส์ ขอพระราชทานพระราชานุญาตจากสมเด็จพระเทพรัตนราชสุดาฯ สยามบรมราชกุมารี จัดพิมพ์พระราชนิพนธ์วรรณกรรมเยาวชนอันทรงคุณค่า <strong>&quot;แก้วจอมแก่น&quot;</strong> และ <strong>&quot;แก้วจอมซน&quot;</strong> ซึ่งถูกจัดอันดับให้เป็นหนึ่งใน <strong>&quot;หนังสือ 101 เล่มในดวงใจนักเขียนและนักอ่าน&quot;</strong> โดยสมาคมนักเขียนแห่งประเทศไทย เป็นภาษาฝรั่งเศสในชื่อ <strong>&quot;Kaew la joyeuse&quot;</strong> และ <strong>&quot;Kaew la joueuse&quot;</strong><br />\r\n<br />\r\nเรื่องราวของ <strong>&quot;แก้ว&quot;</strong> เป็นเด็กที่มีความร่าเริงแจ่มใส มีความมั่นใจในตัวเองมีความเป็นผู้นำและความคิดสร้างสรรค์ จึงกลายเป็นเด็กแก่นและซนในสายตาของผู้ใหญ่ และมักจะเป็นหัวโจกในหมู่พี่น้องและผองเพื่อนอยู่เสมอ นอกจากนี้แก้วยังเป็นเด็กที่รักสัตว์และชอบเลี้ยงสัตว์ ไม่ว่าจะเป็นหมา แมว ปลา อันแสดงถึงความเมตตาที่มีอยู่ในใจ แต่แก้วก็มักจะสร้างวีรกรรม ทั้งที่เป็นการทำดีบ้างและบางทีก็ทำให้ผู้ใหญ่ถึงกับส่ายหน้า แต่ก็ไม่มีใครโกรธแก้วได้ลงซักที ซึ่งเนื้อเรื่องมักจะแฝงสาระหรือข้อคิดที่ไม่หนักจนเกินไปสำหรับเด็ก ทั้งเรื่องของการเสียสละความมีน้ำใจและเห็นใจผู้อื่น และยังกล่าวถึงวัฒนธรรมที่ดีงามของชาวไทยอีกด้วย แม้เวลาจะผ่านพ้นไปหลายทศวรรษ คุณค่าอันงดงามทางปัญญาและอารมณ์ยังคงเด่นชัด ควรแก่การรับรู้เข้าใจของเยาวชนทั้งในปัจจุบันและในอนาคต</p>\r\n', 'แว่นแก้ว', 'นานมีบุ๊คส์, บจก.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 232.00, 'เล่ม', 'img1209412895920190127_212226.PNG', 'img2209412895920190127_212226.PNG', 7, -1, 290, 1, 0, '2019-01-27 14:22:26'),
(65, 18, 46, 'นิตยสาร Fashion Style Special Vol.6', '<p>พบกับนิตยสารฉบับพิเศษที่รวมแฟชั่นสวย ๆ ในแบบที่หายากมาเพื่อคุณ สวยงามหลากสไตล์ จากดีไซน์เนอร์ชั้นนำทั้งในประเทศและระดับโลก ไม่ว่าจะเป็นแบบชุดสำหรับใส่ไปทำงาน ชุดสวยสำหรับโอกาสพิเศษ ไปจนถึงชุดหรูสำหรับไปงานเลี้ยงสังสรรค์ยามเย็น ทุกชุดล้วนผ่านการออกแบบตัดเย็บอย่างประณีต ซึ่งแบบเสื้อผ้าเหล่านี้ คงช่วยสร้างแรงบันดาลใจในการเติมแต่งชีวิต ช่วยให้คุณค้นหาแบบเสื้อผ้าที่เหมาะกับตัวคุณ รวมถึงผู้เป็นเจ้าของธุรกิจร้านเสื้อผ้า ผู้ตัดแบบออกเย็บเสื้อผ้า สามารถนำเคล็ดลับจากแบบเสื้อผ้าเหล่านี้ไปปรับแต่งแบบเสื้อผ้าของคุณได้</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'วงศ์สว่างพับลิชชิ่ง แอนด์ พริ้นติ้ง, บจก.', 'วงศ์สว่างพับลิชชิ่ง แอนด์ พริ้นติ้ง, บจก.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 180.00, 'เล่ม', 'img1114774896720190201_195512.PNG', '', 0, 50, 580, 1, 0, '2019-01-31 17:42:31'),
(66, 18, 47, 'นิตยสาร ไฟน์อาร์ท ฉบับน้อมรำลึกถึงพระมหากรุณาธิคุณพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลเดช (ในหลวง ร.9)', '<p><strong>&quot;นิตยสาร ไฟน์อาร์ท ฉบับน้อมรำลึกถึงพระมหากรุณาธิคุณพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลเดช (ในหลวง ร.9)&quot;</strong> เล่มนี้ ได้รวบรวมขึ้นเพื่อน้อมรำลึกถึงพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลยเดช โดยภายในเล่มนอกจากจะมีภาพผลงานอันเกี่ยวเนื่องกับพระองค์ท่าน ของศิลปินทยอาวุโส เช่น จำรัส เกียรติก้อง จักรพันธุ์ โปษยกฤต ศิลปินมีชื่อเสียงและศิลปินรุ่นใหม่กว่า 400 ภาพ แล้วยังมีข้อความถวายความอาลัยจากบุคคลสำคัญในแวดวงศิลปะ รวมทั้งจากศิลปินด้วย</p>\r\n', 'นิตยสาร ไฟน์อาร์ท ฉบับน้อมรำลึกถึงพระมหากรุณาธิคุณพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลเดช (ในหลวง ร.9', 'นิตยสาร ไฟน์อาร์ท ฉบับน้อมรำลึกถึงพระมหากรุณาธิคุณพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลเดช (ในหลวง ร.9', 2147483647, 0.00, '0000-00-00', '0000-00-00', 950.00, 'เล่ม', 'img1203752367620190201_195740.PNG', '', 0, 50, 1720, 1, 0, '2019-01-31 17:43:39'),
(67, 18, 48, 'นิตยสาร Ducati Thailand Magazine', '<p><strong>&quot;นิตยสาร Ducati Thailand Magazine&quot;</strong> เป็นนิตยสารที่บอกเล่าเรื่องราวความเป็นไปและกิจกรรมต่างๆ ในรอบหนึ่งปีของ <strong>&quot;ดูคาติไทยแลนด์&quot;</strong> และนำเสนอมุมมองความชื่นชอบ ความหลงใหลในแบรนด์ดูคาติดตามแบบฉบับของชาวเดสโม หรือชาวดูคาทิสต้า เพื่อให้ลูกค้าและคนส่วนใหญ่ได้รู้ว่าดูคาติไทยแลนด์คือใคร และวัฒนธรรมของดูคาติเป็นเช่นไร ทำไมต้องเป็นดูคาติ ทำไมต้องเป็นดูคาทิสต้า...</p>\r\n', 'ดูคาทิสติ, บจก.', 'ดูคาทิสติ, บจก.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 237.00, 'เล่ม', 'img173744328820190201_195755.PNG', '', 0, 50, 1180, 1, 0, '2019-01-31 17:44:45'),
(68, 18, 49, 'วารสาร เทคโนโลยีวัสดุ ฉบับที่ 83 ตุลาคม-ธันวาคม 2559', '<p>รวมบทความเกี่ยวกับเทคโนโลยีวัสดุและการพัฒนาเทคโนโลยี ไม่ว่าจะเป็นเรื่องของเทคโนโลยีวัสดุ ศาสตร์และศิลป์วัสดุ ผลงานวิจัยที่ตอบโจทย์อุตสาหกรรม ความรู้ใหม่ ๆ เกี่ยวกับเทคโนโลยี และบทความที่น่าสนใจ ซึ่งจะมาช่วยเปิดมุมมองใหม่ ๆ ให้กับคุณได้เป็นอย่างดี</p>\r\n', 'เทคโนโลยีโลหะและวัสดุแห่งชาติ (MTEC), ศูนย์', 'เทคโนโลยีโลหะและวัสดุแห่งชาติ (MTEC), ศูนย์', 2147483647, 0.00, '0000-00-00', '0000-00-00', 52.00, 'เล่ม', 'img150009639320190201_195812.PNG', '', 1, 50, 255, 1, 0, '2019-01-31 17:46:04'),
(69, 18, 50, 'วารสาร Chin Guns จีนกันส์ HIT 20', '<p>วารสาร Chin Guns Magazine จีนกันส์ HIT 20 เล่มนี้ จะพาคุณไปพบกับทาโว่ TAR-21 จาก ARES ไรเฟิลจู่โจม, HK-33 ของ Classic Army, WE F226 Gas Blowback, We Glock17 กับสายลับ 2 หน้า, พ่อไม่เข้าใจตุ้ม ตอนปืนปลอม, ปืนจริง, งาน Defense &amp; Security 2012, Classic Army SVD ไฟฟ้า และอีกหลากหลายเรื่องราวน่าสนใจเกี่ยวกับปืนอัดลมจีนที่คุณไม่ควรพลาด!</p>\r\n', 'วารสาร Chin Guns Magazine จีนกันส์ HIT 20', 'วารสาร Chin Guns Magazine จีนกันส์ HIT 20', 2147483647, 0.00, '0000-00-00', '0000-00-00', 76.00, 'เล่ม', 'img141414583620190201_195827.PNG', '', 0, 50, 255, 1, 0, '2019-01-31 17:47:04'),
(70, 18, 51, 'Tropical Living in Thailand', '<p>เป็นหนังสือรวบรวมแบบบ้านภายในประเทศไทย</p>\r\n', 'Tropical Living in Thailand', 'Tropical Living in Thailand', 2147483647, 0.00, '0000-00-00', '0000-00-00', 120.00, 'เล่ม', 'img145283682320190201_195844.PNG', '', 0, 50, 325, 1, 0, '2019-01-31 17:48:15'),
(71, 18, 52, 'วารสาร เพลงดนตรี ปีที่ 16 ฉบับที่ 12 สิงหาคม 2554', '<p>วารสารเพลงดนตรีที่จัดทำขึ้น เพื่อเป็นสื่อกลางในการเผยเเพร่ความรู้และข้อมูลข่าวสารด้านดนตรีทุกสาขา เปิดกว้างเนื้อหาสาระเกี่ยวเนื่องกับดนตรี...</p>\r\n', 'วิศนี วงศ์วิรุฬห์ ดาวสกาวแสง', 'วิศนี วงศ์วิรุฬห์ ดาวสกาวแสง', 2147483647, 0.00, '0000-00-00', '0000-00-00', 76.00, 'เล่ม', 'img1172036680020190201_195903.PNG', '', 0, 50, 230, 1, 0, '2019-01-31 17:49:21'),
(72, 18, 53, 'วารสาร สยามมาตุภูมิ 2 (ปกแข็ง)', '<p>รวมข้อมูลวัตถุมงคลแห่งเมืองลพบุรี ศรีหริภุญชัย และเวียงกาหลง โดยในเล่มได้ให้รายละเอียดของพระเครื่องและวัตถุมงคลชนิดต่างๆ ไว้อย่างครบครัน พร้อมภาพประกอบสี่สีขนาดใหญ่ ชัดเจน เพื่อให้ผู้ที่สนใจวัตถุมงคลได้ใช้เป็นแหล่งข้อมูลศึกษาหาความรู้เกี่ยวกับวัตถุมงคลยอดนิยมอย่างครบถ้วนสมบูรณ์</p>\r\n', 'ลพบุรี ศรีหริภุญชัย เวียงกาหลง', 'ลพบุรี ศรีหริภุญชัย เวียงกาหลง', 2147483647, 0.00, '0000-00-00', '0000-00-00', 456.00, 'เล่ม', 'img173561635620190201_195917.PNG', '', 0, 50, 800, 1, 0, '2019-01-31 17:50:14'),
(73, 18, 54, 'นิตยสาร ชีวจิต', '<p>Per-Order นิตยสาร ชีวจิต หน้าปก &quot;เป๊ก ผลิตโชค&quot; ฉบับเดือนตุลาคม</p>\r\n', 'นิตยสาร ชีวจิต', 'นิตยสาร ชีวจิต', 2147483647, 0.00, '0000-00-00', '0000-00-00', 60.00, 'เล่ม', 'img1127238447820190201_195931.PNG', '', 0, 50, 210, 1, 0, '2019-01-31 17:51:31'),
(74, 18, 55, 'โอกาสธุรกิจ & แฟรนไชส์ : Business opportunity & Franchise', '<p>อีกหนึ่งทางเลือกสำหรับนักธุรกิจ <strong>&quot;แฟรนไชส์&quot;</strong> ซึ่งสามารถนำมาเป็นอาชีพธุรกิจขนาดเล็ก ๆ หรือขนาดใหญ่ ๆ เป็นธุรกิจหนึ่งที่ทางรัฐสนับสนุนให้ลงทุน</p>\r\n', 'Franchise Focus', 'Franchise Focus', 2147483647, 0.00, '0000-00-00', '0000-00-00', 80.00, 'เล่ม', 'img178673234020190201_195946.PNG', '', 0, 50, 325, 1, 0, '2019-01-31 17:52:25'),
(75, 18, 56, 'คู่มือท่องเที่ยวและผจญภัยในโลกกว้างของคนหนุ่ม (The Exquisite Adventure)', '<p>เป็นการรวบรวมการผจญภัย ไว้ให้คุณเลือกอ่าน ทั้งการผจญภัยในทะเลทราย การไปซาฟารีที่แอฟริกา ดำน้ำลงใต้สมุทร จนกระทั้งปีนป่ายเทือกเขาสูงที่เต็มไปด้วยหิมะ และการให้อาหารปลาฉลาม</p>\r\n', 'โตมร ศุขปรีชา', 'โตมร ศุขปรีชา', 2147483647, 0.00, '0000-00-00', '0000-00-00', 114.00, 'เล่ม', 'img1132785391520190201_200000.PNG', '', 0, 50, 730, 1, 0, '2019-01-31 17:53:17'),
(76, 18, 57, 'ฟ้าเดียวกัน ปีที่ 15 ฉบับที่ 1 มกราคม-มิถุนายน 2560', '<p>หากจะอ่านหนังสือโลกของคนไร้บ้านในปัจจุบัน จำเป็นต้องตระหนักถึงสถานการณ์ที่เปลี่ยนไปจากเรื่องเล่าต่าง ๆ ในหนังสือ แต่มิได้หมายความว่า หนังสือเล่มนี้จะตกยุคสมัย แม้รายละเอียดจะเปลี่ยนไป แต่โดยภาพรวมหนังสือเล่มนี้ยังให้ภาพชีวิตของคนไร้บ้านที่ยังดำรงอยู่ ผู้เขียนมีความยินดีที่ได้ทราบว่า หนังสือเล่มนี้ ถูกนำไปใช้เป็นเอกสารประกอบการเรียนการสอนในหลายสาขาข้ามพ้นพรมแดนของสาขาสังคมวิทยาและและมานุษยวิทยาไม่ว่าจะเป็นรัฐศาสตร์ เศรษฐศาสตร์สังคมสงเคราะห์ศาสตร์ ประวัติศาสตร์ ภาษาไทย โดยเฉพาะบรรดาวิชาที่เกี่ยวข้องกับระเบียบวิธีวิจัย อาจจะด้วยเพราะในแวดวงวิชาการไทย ไม่ใตร่จะมีงานที่ใช้แนวทางการศึกษาแบบที่เรียกว่า การสังเกตการณ์อย่างมีส่วนร่วม (participant observation) จริงจัง โดยเฉพาพะการใช้วิธีการศึกษานี้ในสนามที่ผู้คนมีวิถีชีวิตแตกต่างกับตัวนักวิจัยอย่างมาก ซึ่งเรียกร้องการปรับเปลี่ยนตัวเองสูง</p>\r\n', 'ฟ้าเดียวกัน, สนพ.', 'ฟ้าเดียวกัน, สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 161.00, 'เล่ม', 'img165175051320190201_200017.PNG', 'img265175051320190201_200017.PNG', 0, 50, 255, 1, 0, '2019-01-31 17:54:36'),
(77, 18, 58, 'วารสาร ปากไก่ ฉบับ 5 พฤษภาคม 2558 (100 ปีครูแก้ว)', '<p>ปากไก่ วารสารของสมาคมนักเขียนแห่งประเทศไทย ประจำวันที่ 5 พฤษภาคม 2558 รวมข้อเขียน บทความ ทัศนะ เรื่องสั้น และบทกวีของนักเขียนหลากรุ่น ม.จ. อากาศดำเกิง ถ.สุรางคนางค์ อรวรรณ อ้อยอัจฉริยกร นิตยา นาฎยะสุนทร เสนีย์ เสาวพงศ์ อังคาร กัลยาณพงศ์ อาจินต์ ปัญาพรรค์</p>\r\n', 'นักเขียนแห่งประเทศไทย, สมาคม', 'นักเขียนแห่งประเทศไทย, สมาคม', 2147483647, 0.00, '0000-00-00', '0000-00-00', 145.00, 'เล่ม', 'img159938757620190201_200033.PNG', '', 0, 50, 600, 1, 0, '2019-01-31 17:55:40'),
(78, 18, 59, 'นิตยสาร  เกษตรกรก้าวหน้า รวมเล่ม ปีที่ 6 ชุดที่ 1 เดือนมกราคม-เดือนมิถุนายน 2558', '<p>พบกับการรวมเล่มของนิตสารสร้างสรรค์สาระเพื่อชีวิตที่ดีกว่าของเกษตรกร&nbsp;<strong>&quot;เกษตรกรก้าวหน้า รวมเล่ม ปีที่ 6 ชุดที่ 1 เดือนมกราคม-เดือนมิถุนายน 2558&quot;</strong>&nbsp;เล่มนี้ ได้รวบรวมเรื่องของเกษตรกรแบบก้าวหน้าที่ไม่เคยล้าสมัย ไม่ว่าจะเป็น การปลูกสตรอว์เบอร์รี่อินทรีย์ ต้นแบบการผลิต ที่สวนดอยแก้ว การปลูกกุหลาบ ราชินีดอกไม้ทำเงิน การปลูกหม้อข้าวหม้อแกงลิง พืชกินแมลง มาแรงแห่งยุค การปลูกมะนาว 3,000 ลูก/ต้น/ปี และอื่นๆ อีกมากมาย ให้คุณได้ศึกษาเพื่อนำไปเป็นอาชีพเกษตรกรได้อีกด้วย เหมาะสำหรับผู้ที่สนใจได้ใช้เป็นข้อมูลอ้างอิงในการประกอบอาชีพที่เหมาะสมกับตนเอง</p>\r\n', 'แม่บ้าน, บจก.สนพ.', 'แม่บ้าน, บจก.สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 114.00, 'เล่ม', 'img1180474609420190201_200046.PNG', '', 12, 42, 1040, 1, 0, '2019-01-31 17:56:32'),
(79, 18, 60, 'นิตยสาร สารคดี', '<p>นิตยสาร สารคดี ฉบับที่ 392 เดือน ตุลาคม 2560&nbsp;<strong>&quot;ปก พระเมรุมาศ&quot;</strong></p>\r\n', 'สารคดี, สนพ.', 'สารคดี, สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 120.00, 'เล่ม', 'img165663627920190201_200101.PNG', 'img265663627920190201_200101.PNG', 0, 50, 180, 1, 0, '2019-01-31 17:57:30'),
(80, 18, 61, 'นิตยสาร Monster High ฉบับที่ 19 สวยซ่า มั่นใจ สไตล์มอนเตอร์! +สร้อยคอสุดเท่', '<p>มาแล้ว! นิตยสารที่จะพาน้องๆ ไปพบกับเหล่าผองเพื่อนตัวการ์ตูนผู้มีสไตล์สุดเฉี่ยวไม่ซ้ำใคร พวกเขาและเธอมีแต่ความไม่ธรรมดา เพราะพวกเขาไม่ใช่มนุษย์ แต่เป็นปีศาจ! แต่ก็ไม่น่ากลัวหรอกนะ เพราะสหายกลุ่มนี้ก็เป็นแค่เด็กนักเรียนปีศาจที่จะมาเติมสีสันแปลกใหม่ให้กับชีวิตของน้องๆ จนรู้สึกสะท้านไปทั้งร่าง เพราะความสนุกเร้าใจในแบบที่ไม่เคยเป็นมาก่อน<br />\r\n<br />\r\n- ทำความรู้จักกับเหล่าคาแรกเตอร์ปีศาจสุดเท่ไม่เหมือนใคร<br />\r\n- อ่านการ์ตูนแสนสนุกเร้าใจ<br />\r\n- เรียนรู้เคล็ดลับการแต่งตัวตามแฟชั่นที่เก๋ไก๋<br />\r\n- และดูดวงชะตาในแบบที่ต่างไปจากที่เคยเป็นมา<br />\r\n<br />\r\nพบกับเรื่องราวสุดป่วนพร้อมกิจกรรมแสนสนุกมากมายเช่นนี้ได้ใน <strong>&quot;นิตยสาร Monster High&quot;</strong></p>\r\n', 'บงกช พับลิชชิ่ง, บจก.', 'บงกช พับลิชชิ่ง, บจก.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 71.00, 'เล่ม', 'img165817801820190201_200116.PNG', '', 0, 50, 120, 1, 0, '2019-01-31 17:58:19'),
(81, 18, 62, 'วารสาร Grand Home   ฉบับพิเศษ (ปกแข็ง)', '<p>ครั้งแรกของเมืองไทย กับการรวบรวมตัวอย่างบ้านสร้างเสร็จพร้อมตกแต่งเรียบร้อย ซึ่งมีพื้นที่ใช้สอยตั้งแต่ 1000 ตารางเมตรขึ้นไป มาไว้ในหนังสือเล่มเดียวกันถึง 12 หลัง เพื่อให้ผู้ที่กำลังสนใจอยากจะสร้างบ้านหลังใหญ่ได้ศึกษาเป็นตัวอย่าง ทั้งด้านรูปแบบสถาปัตยกรรม การจัดแบ่งพื้นที่ใช้สอย การตกแต่งภายใน และการจัดสวน ให้เข้ากับบ้านแต่ละสไตล์ที่คุณชื่นชอบ ไม่ว่าจะเป็นแบบคลาสสิก โมเดิร์น คอนเทมโพรารี่ ทรอปิคอล หรือแบบไทยประยุกต์ นำเสนอเนื้อหาอย่างละเอียด พร้อมภาพประกอบขนาดใหญ่ สวยงาม ชัดเจน ที่จะไม่ทำให้คุณผิดหวัง</p>\r\n', 'วารสาร Grand Home ฉบับพิเศษ (ปกแข็ง)', 'วารสาร Grand Home ฉบับพิเศษ (ปกแข็ง)', 2147483647, 0.00, '0000-00-00', '0000-00-00', 456.00, 'เล่ม', 'img179501214520190201_200129.PNG', '', 1, 50, 1250, 1, 0, '2019-01-31 17:59:09'),
(82, 20, 66, 'Teddy Eyes คนเดียวในใจ จะร้ายแค่ไหนก็รักคุณ', '<p><strong>Teddy&#39;s Eyes </strong><strong>คนเดียวในใจ จะร้ายแค่ไหนก็รักคุณ</strong></p>\r\n\r\n<p>ก่อนหน้านี้เรื่อง One night stand ก็เคยเห็นแต่ในนิยาย ไม่นึกเลยว่าแค่ลองดื่มในปาร์ตี้คืนนั้นมันจะทําให้เธอเมามายไม่ได้สติ ตื่นมาอีกทีก็พบว่านอนอยู่บนเตียงกับชายแปลกหน้า นี่ไม่ใช่ความฝัน แต่มันคือความจริงอันแสนโหดร้ายในชีวิตของคําหวาน จะมีวิธีไหนไหมถึงจะสลัดผู้ชายที่ชื่อเท็ดดี้พ้น ใช่ เขาชื่อเท็ดดี้ แต่เขาไม่ใช่หมีน่ารักเหมือนชื่อหรอกนะ เพราะเขาน่ะ หมีหื่น หมีโหด หมีเถื่อน เรียกแบบนี้น่าจะเหมาะกว่า แต่อะไรก็ช่างเถอะ ตอนนี้เรื่องราวมันชักกลับตาลปัตรไปหมดแล้ว นอกจากจะหนีเขาไม่พ้น หัวใจของเธอมันก็เริ่มอ่อนแอไหวหวั่น แต่เธอมันก็แค่ผู้หญิงจืด ๆ ธรรมดา เขาล่ะ จะมองเธอเป็นแค่ของเล่นเหมือนที่คนอื่นว่าหรือเปล่า เฮ้อ...ทําไมแค่คิดว่าจะลองรักใครสักคนมันถึงยากแบบนี้นะ หรือเธอควรจะตัดใจ บางทีมันอาจจะเป็นทางเลือกที่ง่ายกว่า...</p>\r\n', 'มีใจรัก (Meejairak)', 'มีใจรัก (Meejairak)', 2147483647, 0.00, '0000-00-00', '0000-00-00', 285.00, 'เล่ม', 'img1125887158620190202_131247.PNG', 'img2125887158620190202_131247.PNG', 0, 50, 369, 1, 0, '2019-02-02 06:12:47'),
(83, 20, 67, 'Damon Eyes ปีศาจร้ายร่ายรักร้อน', '<p>เมื่อต้องอกหักตั้งแต่ยังไม่ทันได้สารภาพ ทำให้ฉันกลายเป็น &quot;ตัวตลก&quot; ในกลุ่มเพื่อนร่วมคณะ แต่ฉันจะไม่ปล่อยให้มันเป็นแบบนั้นหรอก งานเลี้ยงวันเกิดของสาวฮอตที่แย่งผู้ชายที่ฉันหมายปองไป ต้องไม่ใช่วันที่พวกนั้นจะได้เหยียบฉันสมใจ เพราะ &quot;ยัยเฉิ่ม&quot; คนนี้จะปฏิวัติตัวเอง จริงๆ ก็ไม่ถึงขนาดนั้นหรอก ฉันก็แค่...ใจกล้าบ้าบิ่นจ้างเพลย์บอยรูปหล่อคนหนึ่งมาเป็นแฟนกำมะลอก็เท่านั้น เรื่องราวมันควรจะจบตั้งแต่ฉันเดินออกมาจากงานปาร์ตี้ท่ามกลางความตกตะลึงของทุกคน แต่มันกลับกลายเป็นว่าฉันต้องพลาดท่าเสียค่าจ้างทั้งเงิน...และตัวของฉัน อะไรก็ไม่ช้ำเท่าถูกเขาเหยียบย่ำน้ำใจ สมแล้วกับที่เขามีชื่อว่า &quot;เดมอน&quot; แล้วอย่างนี้ฉันต้องทำอย่างไร ถึงจะหลุดพ้นจากปีศาจร้ายอย่างเขาได้เสียที</p>\r\n', 'มีใจรัก (Meejairak)', 'มีใจรัก (Meejairak)', 2147483647, 0.00, '0000-00-00', '0000-00-00', 285.00, 'เล่ม', 'img1160236495120190202_131404.PNG', 'img2160236495120190202_131404.PNG', 0, 50, 375, 1, 0, '2019-02-02 06:14:04'),
(84, 20, 68, 'สิงสู่', '<p>&quot;จริงๆ แล้ว วิญญาณคืออะไรครับ นายแม่&quot; &quot;วิญญาณก็คือความทรงจำ&quot; นายแม่ตอบช้าๆ หลายครั้งที่นางอธิบายถึงสิ่งนี้ จากศาสตร์ความรู้หลายแห่งที่ได้ร่ำเรียนมา แต่ดูเหมือนขณะนี้นายแม่กำลังบอกเดชถึงความเชื่อส่วนตัวของนาง &quot;ความทรงจำที่ยังหลงเหลืออยู่หลังจากร่างกายสูญสลายไปแล้ว มันคงล่องลอยไปเรื่อยๆ อย่างไร้จุดหมาย เพื่อรอคอยเวลาหวนคืนกลับมา เมื่อไหร่ก็ตามคนที่เคยผูกพันด้วยรำลึกถึงเขา ก็เหมือนความทรงจำของคนตายได้เข้าสิงสู่อยู่ในจิตใจของคนคนนั้น&quot;</p>\r\n', 'สถาพร', 'สถาพรบุ๊คส์, สนพ.', 2147483647, 0.00, '0000-00-00', '0000-00-00', 209.00, 'เล่ม', 'img132543744520190202_131523.PNG', 'img232543744520190202_131523.PNG', 0, 50, 338, 1, 0, '2019-02-02 06:15:23'),
(85, 20, 69, 'ครูพิเศษจอมป่วน รีบอร์น Secret Bullet เล่ม 4 บุปผาอาลัยที่โรยรา (ฉบับนิยาย)', '<p>เมื่อถูก GHOST ช่วงชิงพลังไปทำให้บลูเบลได้ย้อนนึกถึงเรื่องราวในอดีต ทั้งอดีตที่เป็นนักกีฬาว่ายน้ำ การแยกจากพี่ชายอันแสนเศร้าและการได้พบกับเบียคุรัน... นี่คือการเปิดเผยอดีตที่ไม่เคยให้ใครล่วงรู้ของหกบุปผาที่แท้จริง...!! ตัวอักษรมากมายที่ถูกเรียบเรียงเป็นเนื้อหาที่มีความยาวเป็นอย่างมาก จนต้องถูกแบ่งให้ตีพิมพ์ลงในจัมพ์สแควร์ถึงสองเล่ม ได้ถูกรวบรวมเอาไว้ใน Secret bullet 4 เรียบร้อยแล้ว!!</p>\r\n', 'สยามอินเตอร์คอมิกส์', 'สยามอินเตอร์คอมิกส์', 2147483647, 0.00, '0000-00-00', '0000-00-00', 209.00, 'เล่ม', 'img1199194285520190202_131628.PNG', 'img2199194285520190202_131628.PNG', 0, 50, 195, 1, 0, '2019-02-02 06:16:28'),
(86, 20, 70, 'ราชันคืนบัลลังก์ เล่ม 3', '<p>เขานามว่า &ldquo;หวังซาน&rdquo; ไม่มีผู้ใดรู้ว่าเขาเป็นถึงองค์ชายรัชทายาท ต่อมามิเพียงกลายเป็นเด็กรับใช้ของหนึ่งในสี่มือสังหาร แต่ยังได้กลายเป็นลูกศิษย์ของอัครมหาเสนาบดี รสชาติของการถูกสหายที่ไว้ใจสวมรอยแทนที่ เดิมทีควรเป็นสิ่งที่เจ็บปวดอย่างยิ่ง แต่เพราะข้างกายเขายังมีอู่ตู๋ ผู้ที่ทําให้เขาอบอุ่นใจ ผู้ที่พาเขาท่องไพรกว้าง ผู้ที่อยู่ร่วมกันทุกเช้าค่ำ จึงทําให้หัวใจที่สับสนวุ่นวายของเขา...สงบลงในที่สุด ทว่าสําหรับองค์ชายรัชทายาท &ldquo;ตัวปลอม&rdquo; นั้น การดํารงอยู่ของอีกฝ่าย รังแต่จะทําให้องค์ชายรัชทายาทตัวจริงไม่เป็นสุข และแล้ว...เมฆหมอกอันดํามืดก็ค่อยๆ เริ่มแผ่ปกคลุมอย่างช้าๆ</p>\r\n', 'มีดีส์ พับบลิชชิ่ง', 'มีดีส์ พับบลิชชิ่ง', 2147483647, 0.00, '0000-00-00', '0000-00-00', 370.00, 'เล่ม', 'img1198525062920190202_131728.PNG', 'img2198525062920190202_131728.PNG', 0, 49, 586, 1, 0, '2019-02-02 06:17:28'),
(87, 21, 71, 'วิธีปั้นสาวบ้านให้มาเป็นนางเอกของผม เล่ม 6 (Manga)', '<p>เนื้อเรื่องที่อัดแน่นไปด้วยจิตวิญญาณก็เสร็จสมบูรณ์ด้วยฝีมือโทโมยะและอุตาฮะ ทำให้ขั้นตอนการผลิตเข้าสู่ช่วงสุดท้าย! ที่เหลือมีเพียงในส่วนภาพต้นฉบับของเอริริเท่านั้น!!! &quot;จะขยี้ทั้งคาซูมิงาโอกะ อุตาฮะทั้งเฮียวโด มิจิรุให้เละตุ้มเป้ะไปเลย&quot; ท่ามกลางระยะเวลาที่เหลืออยู่อีกเพียงหนึ่งสัปดาห์ เอริริได้ตัดสินใจแก้ปัญหา ด้วยการไปเก็บตัวทำงานในสไตล์ของตัวเอง ที่บ้านพักตากอากาศในต่างจังหวัด...</p>\r\n', 'ZENSHU', 'ZENSHU', 2147483647, 0.00, '0000-00-00', '0000-00-00', 71.00, 'เล่ม', 'img118934785820190202_143308.PNG', 'img218934785820190202_143308.PNG', 0, 50, 145, 1, 0, '2019-02-02 07:33:08'),
(88, 21, 72, 'สุดท้ายคือเธอ เล่มที่ 6 (Mg)', '<p>ในที่สุด ละครเวทีของสภานักเรียนก็เริ่มต้นขึ้น ละครเวทีอันเป็นเป้าหมายของโทโกะ และควรเป็นสถานีปลายทางสุดท้ายที่โทโกะยอมอุทิศตัวเองตลอดมา บทละครซึ่งแฝงความปรารถนาของยู จะนำพาสิ่งใดมาสู่จิตใจของโทโกะกันแน่และแล้วเวลานั้นก็มาถึง...&ldquo;ทั้งฉันเคยเป็นคนพิเศษเพียงคนเดียวของเธอมาตลอด&rdquo;</p>\r\n', 'PHOENIX Magenta', 'PHOENIX Magenta', 2147483647, 0.00, '0000-00-00', '0000-00-00', 128.00, 'เล่ม', 'img1120943413620190202_143643.PNG', 'img2120943413620190202_143643.PNG', 0, 50, 179, 1, 0, '2019-02-02 07:36:43'),
(89, 21, 73, 'ไม่ยากถ้าอยากรู้จักใช้เงิน', '<p>หนังสือการ์ตูน &ldquo;ไม่ยากถ้าอยากรู้จักใช้เงิน&rdquo; จะช่วยให้น้อง ๆ เรียนรู้เศรษฐศาสตร์เบื้องต้นและวิธีใช้จ่ายอย่างชาญฉลาด โดยผ่านเรื่องราวของนิ้ม สาวน้อยจอมตืดที่ประหยัดไปซะทุกเรื่อง และเนยพี่สาวของนิ้ม ที่ชอบใช้จ่ายเกินตัว โบ สาวน้อยผู้ร่ำรวย แซม พ่อบ้านสุดหล่อ และที่ขาดไม่ได้คือ แฮ็ก เพื่อนของนิ้ม โบ แซม และแฮ็กจะช่วยให้สองพี่น้องเป็นคนที่มีจุดมุ่งหมายในชีวิตที่ชัดเจน มากกว่าจะเป็นแค่คนที่สนใจแต่เรื่องวัตถุและเงิน ๆ ทอง ๆ ได้หรือไม่</p>\r\n', 'Kim Kyung-a', 'นานมีบุ๊คส์', 2147483647, 0.00, '0000-00-00', '0000-00-00', 156.00, 'เล่ม', 'img1173896823120190202_143819.PNG', 'img2173896823120190202_143819.PNG', 0, 42, 214, 1, 0, '2019-02-02 07:38:19');
INSERT INTO `tbl_product` (`p_id`, `t_id`, `t1_id`, `p_name`, `p_detial`, `p_at`, `p_pu`, `p_br`, `promo`, `promo_start`, `promo_done`, `p_price`, `p_unit`, `p_img1`, `p_img2`, `p_view`, `p_qty`, `p_ems`, `s_id`, `p_status`, `date_save`) VALUES
(90, 21, 74, 'การ์ตูน พระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว (รัชกาลที่ ๕) พระปิยมหาราช', '<p>วันที่ ๒๓ ตุลาคมของทุกปีเป็นวันปิยมหาราช ที่มีความสำคัญมิใช่เพียง เพราะเป็นวันคล้ายวันสวรรคตของพระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว (รัชกาลที่ ๕) เท่านั้น แต่ยังเป็นวันที่คนไทยจะได้ร่วมรำลึกถึงพระราชกรณียกิจที่พระองค์ทรงทำนุบำรุงสร้างความก้าวหน้ามั่นคงแก่แผ่นดินและคนไทยอย่างเหลือคณานับ ตั้งแต่การเลิกทาส การพัฒนาบ้านเมือง ปรับเปลี่ยนระเบียบการปกครองให้ทันสมัย สร้างสาธารณูปโภค การคมนาคม จนถึงการรักษาเอกราชที่ทำให้สยามไม่ต้องตกไปเป็นเมืองขึ้นของกลุ่มประเทศตะวันตกที่ออกล่าอาณานิคม จึงกล่าวได้ว่า ที่บ้านเมืองเราเจริญรุ่งเรืองมาถึงทุกวันนี้ ทุกอย่างดูเหมือนจะมีจุดเริ่มต้นจากพระองค์แทบทั้งสิ้น</p>\r\n\r\n<p>กระนั้น ก็ยังมีสิ่งที่เราควรรู้อีกมากว่าตลอดรัชสมัยอันยาวนานของพระองค์ท่านนั้นเกิดอะไรขึ้น และพระองค์ท่านทรงผ่านภาวะแห่งความยากลำบากนั้นอย่างไร จนทำให้สยามประเทศมั่นคงและมั่งคั่งมาจนถึงวันนี้ การนำเสนอพระราชประวัติในรูปแบบการ์ตูนช่องก็เพื่อให้ง่ายต่อการเรียนรู้สำหรับเด็กและเยาวชน เพื่อตระหนักถึงพระมหากรุณาธิคุณอย่างเป็นรูปธรรม ว่าที่เรามีชาติมีแผ่นดินถึงวันนี้เพราะพระองค์ท่านโดยแท้จริง</p>\r\n', 'สละ นาคบำรุง', 'อมรินทร์คอมมิกส์', 2147483647, 0.00, '0000-00-00', '0000-00-00', 265.00, 'เล่ม', 'img17663364020190202_143927.PNG', 'img27663364020190202_143927.PNG', 0, 26, 271, 1, 0, '2019-02-02 07:39:27'),
(91, 21, 75, 'Why? ปฐมพยาบาล', '<p>สถานการณ์ฉุกเฉินและอุบัติเหตุจะเกิดขึ้นเมื่อไร ที่ใดก็ได้รอบๆ ตัวเรา โดยเฉพาะกับเด็กๆ ไม่ว่าจะเป็นที่โรงเรียน สนามเด็กเล่น ภูเขา ทะเล หรือ แม้แต่ที่บ้านก็อาจเกิดการหกล้ม บาดเจ็บ ตะปูดตำ งูกัด เป็นไข้ หรือท้องเสียได้ เด็กๆจะทําการปฐมพยาบาลอย่างไรหากไม่มีผู้ใหญ่คอยดูแล และถ้าไม่ทราบวิธีปฐมพยาบาลที่ถูกต้องเลยจะทําอย่างไร Why? ปฐมพยาบาล เล่มนี้มีคําตอบ Why? ปฐมพยาบาล จะพาเด็กๆ ไปรู้จักกับวิธีการปฐมพยาบาลชั้นต้นในสถานการณ์ต่างๆ ว่าควรจะจัดการอย่างไรบ้าง เมื่อเกิดสถานการณ์ฉุกเฉินก็จะทําให้เด็กๆ แก้ไขปัญหาเองได้ แต่ก็อย่าลืมว่าการปฐมพยาบาลที่ผิดวิธี อาจทําให้อาการของคนไข้แย่ลงไปอีกก็ได้ Why? ปฐมพยาบาล ยังมีประโยชน์ต่อการเรียนอีกด้วย เนื่องจากมี เนื้อหาสอดคล้องกับกลุ่มสาระการเรียนรู้สุขศึกษาและพลศึกษา</p>\r\n', 'Papyrus', 'นานมีบุ๊คส์', 2147483647, 0.00, '0000-00-00', '0000-00-00', 159.00, 'เล่ม', 'img1122847023420190202_144046.PNG', 'img2122847023420190202_144046.PNG', 19, 18, 179, 1, 0, '2019-02-02 07:40:46'),
(92, 21, 76, 'คณิตศาสตร์แฟนตาซี   เล่ม 18 (ปกใหม่) ตอน x ตัวแปรเปลี่ยนโลก', '<p>หลังจากผ่านเรื่องราวมากมาย ซีโร่ได้กลับมารวมกลุ่มกับมีนา เคธี ลิซ่า ลีน่า รามู โจ และอัศวินไพตันอีกครั้งเพื่อรับมือกับกองทัพปีศาจโครงกระดูกที่ไม่มีวันตาย ซึ่งร้ายกาจยิ่งขึ้นเมื่อโอเมกาขอพรอินฟินิตี้จากเอปไซลอน เพื่อเปลี่ยนตัวเองเป็นสัตว์ประหลาดที่มีพละกำลังมหาศาล และพ่อมดอินฟินิตี้ส่งชิ้นส่วนอินฟินิตี้หรือชิ้นส่วนอนันต์ที่เพิ่มจำนวนทวีคูณไปเรื่อยๆ เพื่อมาจู่โจมกองทัพเอกกาดและเอลฟ์ ทว่าระหว่างการวางแผนต่อสู้ มีบุรุษลึกลับพาตัวซีโร่ อัศวินเอกซ์ โดยให้เผชิญหน้ากับเหล่าผู้นำกองทัพของพ่อมดอินฟินิตี้ การเผชิญหน้าครั้งนี้บางสิ่งเปลี่ยนไป บุรุษลึกลับเป็นใคร ประสงค์ดีหรือหวังร้ายกันแน่...</p>\r\n\r\n<p>คณิตศาสตร์แฟนตาซี เล่ม 18 ตอน x ตัวแปรเปลี่ยนโลก จะพาไปรู้จักกับ x ตัวแปรสำคัญในสมการ ที่เปลี่ยนมุมมองทั้งด้านคณิตศาสตร์และเหตุการณ์ที่อยู่รอบๆ ตัวเรา ทำให้เมื่อเกิดสิ่งใดสิ่งหนึ่งขึ้นแล้ว เราสามารถคาดเดาเหตุการณ์ที่เป็นสาเหตุได้ และรู้จักกับจำนวนธรรมชาติที่ใหญ่ที่สุดและอนุกรมอนันต์ ถึงเวลาแล้วที่เราจะรวมพลังคณิตศาสตร์และร่วมต่อสู้ไปพร้อมๆ กับซีโร่และผองเพื่อน...</p>\r\n', 'Grimnamu', 'นานมีบุ๊คส์', 2147483647, 0.00, '0000-00-00', '0000-00-00', 159.00, 'เล่ม', 'img190267949920190202_144156.PNG', 'img290267949920190202_144156.PNG', 6, 32, 198, 1, 0, '2019-02-02 07:41:56'),
(93, 21, 77, 'การ์ตูนนิทานธรรมะจากพระโอษฐ์ พระเจ้า ๕๐๐ ชาติ เล่ม 2', '<p>&quot;พระเจ้า ๕๐๐ ชาติ&quot; เป็นเรื่องในอดีตของพระพุทธเจ้า เมื่อครั้งเสวยพระชาติเป็นพระโพธิสัตว์ต่างๆ นกกระจาบ ฯลฯ เพื่อบำเพ็ญบารมีเตรียมพร้อมที่จะตรัสรู้ในชาติของเจ้าชายสิทธัตถะ ในแต่ละชาตินั้นพระองค์ต้องประสพพบเจอกับเหตุการณ์ต่างๆ มากมาย ต้องใช้คติธรรมและสติปัญญาในการแก้ไขปัญหา ซึ่งคติธรรมเหล่านี้เป็นแก่นสำคัญของเรื่อง และไม่เคยล้าสมัยแม้ว่าเวลาจะผ่านเนิ่นนานแล้ว</p>\r\n', 'โอม รัชเวทย์', 'อมรินทร์คอมมิกส์', 2147483647, 0.00, '0000-00-00', '0000-00-00', 170.00, 'เล่ม', 'img1112410484920190202_144316.PNG', 'img2112410484920190202_144316.PNG', 2, 32, 204, 1, 0, '2019-02-02 07:43:16'),
(94, 0, 0, 'ไม่ยากถ้าอยากดูดี (ปกใหม่)', '<p>น้องๆ อาจเคยแอบนึกอิจฉาที่เห็นเพื่อนบางคนดูดี ทั้งเสื้อผ้าที่สวมใส่ ทรงผม บุคลิกภาพ เป็นต้น แต่น้องๆ รู้ไหมว่า สิ่งเหล่านี้ปรับเปลี่ยนตัวเราได้ เหมือนกับฝ้าย ตัวเอกในหนังสือนี้ที่ไม่เคยสนใจเรื่องแฟชั่นเลย แต่ถูกเฟิร์น เพื่อนสนิทปรับเปลี่ยนบุคลิกและการแต่งกายให้ใหม่ ตั้งแต่การดูแลผิวพรรณ การปรับนิสัย การลดน้ำหนัก การเลือกทรงผมที่เหมาะสมกับตัวเอง ฯลฯ จนมีสไตล์เป็นของตัวเอง และเข้าร่วมประกวดซูเปอร์โมเดลเด็กเพื่อลบคำสบประมาทของไนซ์ เด็กที่นำแฟชั่นแต่ชอบดูถูกคนอื่น โดยมีมิวสิค น้องชายฝาแฝดของเฟิร์น นักแสดงเด็กที่มีชื่อเสียง เป็นแรงบนดาลใจที่สำคัญของฝ้าย มาติดตามกันดูว่า ฝ้ายจะปรับเปลี่ยนตัวเองให้ดูดีได้ไหม ผลประกวดซูเปอร์โมเดลเด็กจะเป็นอย่างไร และน้องๆ อย่าลืมนำเคล็ดลับการเปลี่ยนตัวเองให้ดูดีไปใช้กันนะ ไม่แน่อาจทำให้เพื่อนแอบอิจฉาเราก็ได้</p>\r\n', 'Kim Ji-young', 'นานมีบุ๊คส์', 2147483647, 217.00, '2019-05-07', '2019-05-31', 156.00, 'เล่ม', 'img176648105920190202_144418.PNG', 'img276648105920190202_144418.PNG', 17, 43, 217, 1, 0, '2019-02-02 07:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sell`
--

CREATE TABLE `tbl_sell` (
  `s_id` int(11) NOT NULL,
  `s_number` varchar(50) NOT NULL,
  `sn_number` varchar(50) NOT NULL,
  `s_price` varchar(50) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_address` varchar(250) NOT NULL,
  `s_phone` varchar(11) NOT NULL,
  `s_email` varchar(50) NOT NULL,
  `s_date` date NOT NULL,
  `sn_date` date NOT NULL,
  `s_bill` varchar(100) NOT NULL,
  `s_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sell`
--

INSERT INTO `tbl_sell` (`s_id`, `s_number`, `sn_number`, `s_price`, `s_name`, `s_address`, `s_phone`, `s_email`, `s_date`, `sn_date`, `s_bill`, `s_status`) VALUES
(1, 'GG5420', '200', '325', '', '', '', '', '2019-02-20', '2019-02-21', 'imgbill141208030320190222_221447.jpg', 0),
(2, 'BK8453', '25', '5132', '', '', '', '', '2019-02-05', '2019-02-07', 'imgbill195372665420190222_221654.jpg', 1),
(5, '123456789', '50', '20', '5', '6', '7', '8', '2019-03-13', '2019-03-30', 'imgbill13553603220190323_042243.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(100) NOT NULL,
  `t_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`t_id`, `t_name`, `t_status`) VALUES
(17, 'หนังสือต่างประเทศ', 0),
(16, 'หนังสือ', 0),
(18, 'นิตยสาร', 0),
(20, 'นิยาย', 0),
(21, 'การ์ตูน', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type1`
--

CREATE TABLE `tbl_type1` (
  `t1_id` int(10) NOT NULL,
  `t_id` int(10) NOT NULL,
  `t1_name` varchar(50) NOT NULL,
  `t1_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type1`
--

INSERT INTO `tbl_type1` (`t1_id`, `t_id`, `t1_name`, `t1_status`) VALUES
(14, 16, 'วรรณกรรม', 0),
(15, 16, 'บริหาร', 0),
(16, 16, 'การศึกษา', 0),
(17, 16, 'การพัฒนาตนเอง', 0),
(18, 16, 'หนังสือเด็ก', 0),
(19, 16, 'วิทยาการ เทคโนโลยี', 0),
(20, 16, 'ความรู้ทั่วไป', 0),
(21, 16, 'ประวัติศาสตร์', 0),
(22, 16, 'อัตชีวประวัติ ชีวประวัติ', 0),
(23, 16, 'อาหารและสุขภาพ', 0),
(24, 16, 'บันเทิงและท่องเที่ยว', 0),
(25, 16, 'การเกษตร ธรรมชาติ', 0),
(26, 16, 'ครอบครัว', 0),
(27, 16, 'บ้านและที่อยู่อาศัย', 0),
(28, 16, 'หนังสือพระราชนิพนธ์', 0),
(29, 16, 'ประชาคมกิจอาเซี่ยน', 0),
(30, 16, 'หนังสือได้รับรางวัล', 0),
(31, 17, 'วรรณกรรม', 0),
(32, 17, 'บริหารธุรกิจ', 0),
(33, 17, 'การศึกษา', 0),
(34, 17, 'จิตวิทยา', 0),
(35, 17, 'วิทยาการ เทคโนโลยี', 0),
(36, 17, 'หนังสือเด็ก', 0),
(37, 17, 'ความรู้ทั่วไป', 0),
(38, 17, 'ประวัติศาสตร์', 0),
(39, 17, 'อัตชีวประวัติ ชีวประวัติ', 0),
(40, 17, 'อาหารและสุขภาพ', 0),
(41, 17, 'บันเทิงและท่องเที่ยว', 0),
(42, 17, 'การเกษตร ธรรมชาติ', 0),
(43, 17, 'ครอบครัว', 0),
(44, 17, 'บ้านและที่อยู่อาศัย', 0),
(45, 17, 'หนังสือพระราชนิพนธ์', 0),
(46, 18, 'ไลฟ์สไตร์ แฟชั่น', 0),
(47, 18, 'Gossip และบุคคล', 0),
(48, 18, 'ยานพาหนะ เครื่องยนต์', 0),
(49, 18, 'เทคโนโลยี Gadget', 0),
(50, 18, 'กีฬา นันทนาการ', 0),
(51, 18, 'แต่งบ้าน แต่งสวน', 0),
(52, 18, 'บันเทิง', 0),
(53, 18, 'พระเครื่อง เรื่องลี้ลับ', 0),
(54, 18, 'สุขภาพ ความงาม', 0),
(55, 18, 'ธุรกิจ การลงทุน', 0),
(56, 18, 'ท่องเที่ยว โรงแรมที่พัก', 0),
(57, 18, 'การเมือง เรื่องทั่วไป', 0),
(58, 18, 'ความรู้ทั่วไป', 0),
(59, 18, 'การเกษตร', 0),
(60, 18, 'ธรรมชาติ สารคดี', 0),
(61, 18, 'เด็กและเยาวชน', 0),
(62, 18, 'บ้าน ที่ดิน คอนโด', 0),
(66, 20, 'โรแมนติก', 0),
(67, 20, 'วัยรุ่น', 0),
(68, 20, 'สืบสวนสอบสวน ลี้ลับ', 0),
(69, 20, 'ไลท์โนเวล', 0),
(70, 20, 'วาย ยูริ', 0),
(71, 21, 'ญี่ปุ่น มังงะ การ์ตูนไทย', 0),
(72, 21, 'วาย ยูริ', 0),
(73, 21, 'เสริมความรู้', 0),
(74, 21, 'ประวัติศาสตร์', 0),
(75, 21, 'วิทยาศาสตร์', 0),
(76, 21, 'คณิตศาสตร์', 0),
(77, 21, 'ธรรมมะสอนใจ', 0),
(78, 21, 'พัฒนาตนเอง', 0);

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
-- Indexes for table `tbl_sell`
--
ALTER TABLE `tbl_sell`
  ADD PRIMARY KEY (`s_id`);

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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_new`
--
ALTER TABLE `tbl_new`
  MODIFY `new_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tbl_sell`
--
ALTER TABLE `tbl_sell`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_type1`
--
ALTER TABLE `tbl_type1`
  MODIFY `t1_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
