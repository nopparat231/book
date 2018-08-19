-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2018 at 02:59 PM
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
-- Database: `db_std_shop`
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
  `date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user`, `admin_pass`, `admin_name`, `date_save`) VALUES
(1, '1', '1', 'admin', '2017-08-30 01:57:41'),
(2, '55', '555454545', '555555 55555', '2018-01-25 04:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `b_id` int(11) NOT NULL,
  `b_number` int(11) NOT NULL,
  `b_name` varchar(50) NOT NULL,
  `b_type` varchar(50) NOT NULL,
  `b_owner` varchar(50) NOT NULL,
  `bn_name` varchar(11) NOT NULL,
  `b_logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`b_id`, `b_number`, `b_name`, `b_type`, `b_owner`, `bn_name`, `b_logo`) VALUES
(1, 2147483647, 'ทดสอบ', 'ออมทรัพย์', 'nnnnnnn', 'nnn', 'imgb32341972920180812_123502.jpg');

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
  `dateinsert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`mem_id`, `mem_name`, `mem_address`, `mem_tel`, `mem_username`, `mem_password`, `mem_email`, `dateinsert`) VALUES
(4, 'asdasdas', 'asdasdsadsa', '0902020203', 'gggg', '2', 'dd@gg.cc', '2018-08-08 16:08:59'),
(5, 'sdfsdf', 'sdfdsfd1212', '1212121556', 'kkk', '123123123', 'dd@ggg.com', '2018-08-10 12:07:42');

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
(0000000022, 5, 'sdfsdf', 'sdfdsfd1212', 'dd@ggg.com', 1212121556, 3, '148767169020180812_194213.jpg', 'ทดสอบ', '2147483647', '0000-00-00', 656.00, '12121212', '2018-08-12 19:05:28'),
(0000000024, 4, 'asdasdas', 'asdasdsadsa', 'dd@gg.cc', 902020203, 3, '189239941320180813_095829.jpg', 'ทดสอบ', '2147483647', '0000-00-00', 4545.00, '35000333', '2018-08-13 09:58:02'),
(0000000025, 4, 'asdasdas', 'asdasdsadsa', 'dd@gg.cc', 902020203, 2, '208135048020180813_095934.jpg', 'ทดสอบ', '2147483647', '0000-00-00', 89898.00, '', '2018-08-13 09:59:13'),
(0000000026, 4, 'asdasdas', 'asdasdsadsa', 'dd@gg.cc', 902020203, 1, '', '', '', '0000-00-00', 0.00, '', '2018-08-13 10:15:33'),
(0000000027, 4, 'asdasdas', 'asdasdsadsa', 'dd@gg.cc', 902020203, 1, '', '', '', '0000-00-00', 0.00, '', '2018-08-13 10:27:23'),
(0000000028, 4, 'asdasdas', 'asdasdsadsa', 'dd@gg.cc', 902020203, 2, '22611413720180813_114203.jpg', 'ทดสอบ', '2147483647', '2018-08-12', 3232.00, '', '2018-08-13 10:29:37'),
(0000000029, 4, 'asdasdas', 'asdasdsadsa', 'dd@gg.cc', 902020203, 2, '77792154320180813_114108.jpg', 'ทดสอบ', '2147483647', '2018-08-13', 3213.00, '', '2018-08-13 11:40:40');

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
(1, 1, 4, 'macbook', 2, 44),
(2, 3, 2, 'imac', 1, 1111),
(3, 3, 1, 'iphone', 1, 223),
(4, 4, 5, 'pc', 1, 333),
(5, 4, 6, 'Sumsumng', 1, 223),
(6, 6, 6, 'Sumsumng', 1, 223),
(7, 6, 8, 'RAM', 1, 22),
(8, 7, 8, 'RAM', 1, 22),
(9, 7, 11, 'CSS', 1, 1111),
(10, 8, 1, 'iphone', 1, 223),
(11, 8, 5, 'pc', 1, 333),
(12, 9, 2, 'imac', 1, 1111),
(13, 10, 7, 'Nokia', 1, 1111),
(14, 11, 7, 'Nokia', 1, 1111),
(15, 12, 17, 'dfg', 1, 1231),
(16, 12, 19, 'sdfdsfdfsf', 6, 726),
(17, 13, 19, 'sdfdsfdfsf', 1, 121),
(18, 14, 19, 'sdfdsfdfsf', 1, 121),
(19, 16, 17, 'dfg', 1, 1231),
(20, 17, 17, 'dfg', 1, 1231),
(21, 18, 17, 'dfg', 1, 1231),
(22, 19, 17, 'dfg', 1, 1231),
(23, 20, 17, 'dfg', 1, 1231),
(24, 21, 17, 'dfg', 1, 1231),
(25, 22, 19, 'sdfdsfdfsf', 1, 121),
(26, 23, 17, 'dfg', 1, 1231),
(27, 23, 19, 'sdfdsfdfsf', 1, 121),
(28, 24, 19, 'sdfdsfdfsf', 1, 121),
(29, 24, 17, 'dfg', 2, 2462),
(30, 25, 19, 'sdfdsfdfsf', 2, 242),
(31, 25, 17, 'dfg', 2, 2462),
(32, 26, 19, 'sdfdsfdfsf', 1, 121),
(33, 27, 19, 'sdfdsfdfsf', 1, 121),
(34, 27, 17, 'dfg', 1, 1231),
(35, 28, 19, 'sdfdsfdfsf', 1, 121),
(36, 29, 17, 'dfg', 2, 2462),
(37, 29, 19, 'sdfdsfdfsf', 5, 605);

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
(23, 5, 'ADIDAS Adilette Comfort รองเท้าแตะผู้ชาย', '<ul>\r\n	<li>สายคาดรองเท้าทำจากวัสดุสังเคราะห์</li>\r\n	<li>พื้นรองเท้าแบบ&nbsp;EVA&nbsp;มอบความเบาสบาย</li>\r\n	<li>พื้นรองเท้าด้านในมีเทคโนโลยี Cloudfoam Plus</li>\r\n</ul>\r\n', 1300, 'คู่', 'img199176242420180813_141802.jpg', 'img299176242420180813_141802.jpg', 1, 12, '2018-08-13 07:18:02'),
(20, 1, 'NIKE Free RN Flyknit 2018 รองเท้าวิ่งผู้ชาย', '<ul>\r\n	<li>อัปเปอร์ทำจาก Flyknit มีความยืดหยุ่น</li>\r\n	<li>พื้นชั้นกลางรับแรงกระแทกได้ดี</li>\r\n	<li>พื้นชั้นนอกมีความยืดหยุ่น</li>\r\n	<li>ส้นรองเท้าแบบไดนามิก ให้ความฟิตกระชับ</li>\r\n	<li>เทคโนโลยี Flywire โอบรับกับเท้า</li>\r\n</ul>\r\n', 4600, 'คู่', 'img1151097096920180813_135937.jpg', 'img2151097096920180813_135937.jpg', 1, 15, '2018-08-13 06:59:37'),
(22, 3, 'ADIDAS X 18.4 FG รองเท้าฟุตบอล', '<ul>\r\n	<li>อัปเปอร์ทำจากหนังสังเคราะห์ให้ความยืดหยุ่นสูง</li>\r\n	<li>น้ำหนักเบา</li>\r\n	<li>ส้นรองเท้าโอบกระชับเท้าพอดี เพื่อการเคลื่อนไหวที่เป็นธรรมชาติ</li>\r\n	<li>พื้นรองเท้าออกแบบให้ยึดเกาะพื้นสนามได้ดี</li>\r\n</ul>\r\n', 2000, 'คู่', 'img176752202720180813_140907.jpg', 'img276752202720180813_140907.jpg', 0, 13, '2018-08-13 07:09:07'),
(21, 2, 'CROCS Literide Clog รองเท้าลำลอง', '<ul>\r\n	<li>ออกแบบมาเพื่อรองรับการเดินตลอดวัน</li>\r\n	<li>ใช้นวัตกรรมโฟม LiteRide&trade; บริเวณพื้นรองเท้า ทีมีความนุ่มพิเศษ น้ำหนักเบา และมีความยืดหยุ่นต่อทุกก้าวเดินอย่างดี&nbsp;</li>\r\n	<li>ส่วนบนของรองเท้า มีความนุ่มด้วย Matlite&trade; ให้ความรู้สึกนุ่มเบา สบายเท้า และระบายอากาศได้เป็นอย่างดี</li>\r\n	<li>เทคโนโลยี Iconic Crocs Comfort&trade; : พื้นรองทำผลิตจากโฟม Croslite&trade; รองรับแรงกระแทกจากการเดิน</li>\r\n</ul>\r\n', 2590, 'คู่', 'img1208647491520180813_140550.jpg', 'img2208647491520180813_140550.jpg', 1, 32, '2018-08-13 07:05:50');

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
(1, ' รองเท้าวิ่ง'),
(2, 'รองเท้าลำลอง'),
(3, 'รองเท้าฟุตบอล'),
(4, 'รองเท้าเดินป่า'),
(5, 'รองเท้าแตะ'),
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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
