-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 123.1.183.120
-- Generation Time: Jul 11, 2018 at 11:54 AM
-- Server version: 5.5.38
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sq_befitsmeck`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cartID` int(99) NOT NULL AUTO_INCREMENT,
  `sessionID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productID` mediumint(99) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`cartID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `sessionID`, `productID`, `price`, `date`) VALUES
(2, 'sg3x5f1t5ulngudiui0l5dvv', 23, '100.00', '2015-09-12 20:24:20'),
(6, '4l4flelpl1ild210mdjmt1rt', 11, '100.00', '2015-10-21 22:56:39'),
(8, 'gyqfdoaohztv4tka4w3mpr00', 4, '2800.00', '2015-10-26 08:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `catID` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `displayOrder` int(11) NOT NULL,
  PRIMARY KEY (`catID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catID`, `catname`, `displayOrder`) VALUES
(1, 'Meck852 結他', 1),
(2, '訂造', 2),
(3, '背帶鎖', 4),
(4, '效果器', 3),
(5, '連接線', 5),
(6, '旋鈕', 6),
(7, '弦鈕', 7),
(8, '配件', 8);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoiceID` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `trandate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`invoiceID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceID`, `date`, `name`, `email`, `phone`, `location`, `trandate`, `price`) VALUES
(1, '2015-09-12 20:07:16', 'Wing Kam Yuen', 'man0551hk@gmail.com', '60538205', '荃灣', '星期一', '2800.00'),
(2, '2015-09-12 21:02:12', 'Wing Kam Yuen', 'man0551hk@gmail.com', '+85260538205', '??', '???', '268.00'),
(3, '2015-09-12 21:16:51', 'Wing Kam Yuen', 'man0551hk@gmail.com', '60538205', '??', '???', '2800.00'),
(4, '2015-09-12 21:18:04', 'Wong Kam Yuen', 'man0551hk@gmail.com', '60538205', '??', '???', '2800.00'),
(5, '2015-10-21 22:58:38', 'Jerry', 'man0551hk@gmail.com', '+85260538205', '??', '???', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `invoicedetail`
--

CREATE TABLE IF NOT EXISTS `invoicedetail` (
  `invoiceID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoicedetail`
--

INSERT INTO `invoicedetail` (`invoiceID`, `productID`, `price`) VALUES
(1, 4, '2800.00'),
(2, 17, '268.00'),
(3, 10, '2800.00'),
(4, 4, '2800.00'),
(5, 20, '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `catID` int(99) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` decimal(2,1) NOT NULL,
  `createDate` datetime NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `name`, `description`, `catID`, `price`, `discount`, `createDate`) VALUES
(1, '彩花 Strat', 'Alder Body<br/>\r\nMaple Neck<br/>\r\nNeck Shape: "C" profile<br/> \r\nScale Length: 25.5" (648 mm)<br/>\r\nFingerboard: Maple<br/>\r\nFingerboard Radius: 9.5<br/>\r\nNumber of Frets: 21<br/>\r\nFret Size: Vintage-Style<br/>\r\nNut Width: 1.650" (42 mm)<br/>\r\nPosition Inlays: Dot<br/>', 1, '2800.00', '0.0', '2015-09-04 22:21:59'),
(2, '日式拼花和布 Tele', 'Alder Body<br/>\r\nMaple Neck<br/>\r\nNeck Shape: "C" profile<br/> \r\nScale Length: 25.5" (648 mm)<br/>\r\nFingerboard: Maple<br/>\r\nFingerboard Radius: 9.5<br/>\r\nNumber of Frets: 21<br/>\r\nFret Size: Vintage-Style<br/>\r\nNut Width: 1.650" (42 mm)<br/>\r\nPosition Inlays: Dot<br/>', 1, '2800.00', '0.0', '2015-09-04 22:21:59'),
(3, '日式和布 Tele', 'Alder Body<br/>\r\nMaple Neck<br/>\r\nNeck Shape: "C" profile<br/> \r\nScale Length: 25.5" (648 mm)<br/>\r\nFingerboard: Maple<br/>\r\nFingerboard Radius: 9.5<br/>\r\nNumber of Frets: 21<br/>\r\nFret Size: Vintage-Style<br/>\r\nNut Width: 1.650" (42 mm)<br/>\r\nPosition Inlays: Dot<br/>', 1, '2800.00', '0.0', '2015-09-04 22:21:59'),
(4, '彩花 Strat', 'Alder Body<br/>\r\nMaple Neck<br/>\r\nNeck Shape: "C" profile<br/> \r\nScale Length: 25.5" (648 mm)<br/>\r\nFingerboard: Maple<br/>\r\nFingerboard Radius: 9.5<br/>\r\nNumber of Frets: 21<br/>\r\nFret Size: Vintage-Style<br/>\r\nNut Width: 1.650" (42 mm)<br/>\r\nPosition Inlays: Dot<br/>', 1, '2800.00', '0.0', '2015-09-04 22:21:59'),
(5, '彩花 Strat', 'Alder Body<br/>\r\nMaple Neck<br/>\r\nNeck Shape: "C" profile<br/> \r\nScale Length: 25.5" (648 mm)<br/>\r\nFingerboard: Maple<br/>\r\nFingerboard Radius: 9.5<br/>\r\nNumber of Frets: 21<br/>\r\nFret Size: Vintage-Style<br/>\r\nNut Width: 1.650" (42 mm)<br/>\r\nPosition Inlays: Dot<br/>', 1, '2800.00', '0.0', '2015-09-04 22:21:59'),
(6, '五辮花日式和布 Tele', 'Alder Body<br/>\r\nMaple Neck<br/>\r\nNeck Shape: "C" profile<br/> \r\nScale Length: 25.5" (648 mm)<br/>\r\nFingerboard: Maple<br/>\r\nFingerboard Radius: 9.5<br/>\r\nNumber of Frets: 21<br/>\r\nFret Size: Vintage-Style<br/>\r\nNut Width: 1.650" (42 mm)<br/>\r\nPosition Inlays: Dot<br/>', 1, '2800.00', '0.0', '2015-09-04 22:21:59'),
(7, '鯉魚日式和布 Tele', 'Alder Body<br/>\r\nMaple Neck<br/>\r\nNeck Shape: "C" profile<br/> \r\nScale Length: 25.5" (648 mm)<br/>\r\nFingerboard: Maple<br/>\r\nFingerboard Radius: 9.5<br/>\r\nNumber of Frets: 21<br/>\r\nFret Size: Vintage-Style<br/>\r\nNut Width: 1.650" (42 mm)<br/>\r\nPosition Inlays: Dot<br/>', 1, '2800.00', '0.0', '2015-09-04 22:21:59'),
(8, '腰果花和布 Tele', 'Alder Body<br/>\r\nMaple Neck<br/>\r\nNeck Shape: "C" profile<br/> \r\nScale Length: 25.5" (648 mm)<br/>\r\nFingerboard: Maple<br/>\r\nFingerboard Radius: 9.5<br/>\r\nNumber of Frets: 21<br/>\r\nFret Size: Vintage-Style<br/>\r\nNut Width: 1.650" (42 mm)<br/>\r\nPosition Inlays: Dot<br/>', 1, '2800.00', '0.0', '2015-09-04 22:21:59'),
(9, '千鳥和布 Tele', 'Alder Body<br/>\r\nMaple Neck<br/>\r\nNeck Shape: "C" profile<br/> \r\nScale Length: 25.5" (648 mm)<br/>\r\nFingerboard: Maple<br/>\r\nFingerboard Radius: 9.5<br/>\r\nNumber of Frets: 21<br/>\r\nFret Size: Vintage-Style<br/>\r\nNut Width: 1.650" (42 mm)<br/>\r\nPosition Inlays: Dot<br/>', 1, '2800.00', '0.0', '2015-09-04 22:21:59'),
(10, '樹藤和布 Tele', 'Alder Body<br/>\r\nMaple Neck<br/>\r\nNeck Shape: "C" profile<br/> \r\nScale Length: 25.5" (648 mm)<br/>\r\nFingerboard: Maple<br/>\r\nFingerboard Radius: 9.5<br/>\r\nNumber of Frets: 21<br/>\r\nFret Size: Vintage-Style<br/>\r\nNut Width: 1.650" (42 mm)<br/>\r\nPosition Inlays: Dot<br/>', 1, '2800.00', '0.0', '2015-09-04 22:21:59'),
(11, '訂造導線', '請聯絡以得到最佳價錢', 2, '100.00', '0.0', '2015-09-04 22:21:59'),
(12, '黑色自製拔片器', '黑色自製拔片器', 8, '100.00', '0.0', '2015-09-04 22:21:59'),
(13, '銀色自製拔片器', '銀色自製拔片器', 8, '100.00', '0.0', '2015-09-04 22:21:59'),
(14, '3米 連接線', '3米 連接線<br/>可選L字接頭或直頭', 5, '150.00', '0.0', '2015-09-04 22:21:59'),
(15, '5米 連接線', '5米 連接線<br/>可選L字接頭或直頭', 5, '268.00', '0.0', '2015-09-04 22:21:59'),
(16, 'Floyd Rose 下弦鎖方塊', '一套六粒', 8, '50.00', '0.0', '2015-09-04 22:21:59'),
(17, 'Floyd Rose 弦鎖', '各色80<br/>銀色長43mm<br/>黑色長42.2mm<br/>金色42.2mm', 8, '268.00', '0.0', '2015-09-04 22:21:59'),
(18, '黑色背帶鎖', '黑色', 3, '100.00', '0.0', '2015-09-04 22:21:59'),
(19, '銀色背帶鎖', '銀色', 3, '100.00', '0.0', '2015-09-04 22:21:59'),
(20, '金色背帶鎖', '金色', 3, '100.00', '0.0', '2015-09-04 22:21:59'),
(21, '咖啡色弦鈕', '咖啡色', 7, '60.00', '0.0', '2015-09-04 22:21:59'),
(22, '木紋色弦鈕', '木紋', 7, '60.00', '0.0', '2015-09-04 22:21:59'),
(23, '銀色音量/音色旋鈕', '銀色\r\n一套4粒', 6, '100.00', '0.0', '2015-09-04 22:21:59'),
(24, '黑色音量/音色旋鈕', '彷Marshall黑色\r\n一套4粒', 6, '100.00', '0.0', '2015-09-04 22:21:59'),
(25, '黑圈音量/音色旋鈕', '銀色黑膠圈\r\n一套4粒', 6, '100.00', '0.0', '2015-09-04 22:21:59'),
(26, 'AR Perfume Bass Preamp Effect', 'Perfume preamp 以Filter為設計中心，經由操作Filter可以適度地讓您得到到清楚的Bass輪廓與厚度。\r\n透過High&Low兩個EQ控制，對於Filter的高低頻雨端延伸、補償與衰減。\r\n此外，他們也可以讓您適用在補償既On-board preamp，以降低影響原Bass有音色但可以得到聲音延伸感的滿足感。\r\n<div class="embed-responsive embed-responsive-4by3">\r\n  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/8v_UAoJn2jE"></iframe>\r\n</div>', 4, '1368.00', '0.0', '2015-09-04 22:21:59'),
(27, 'AR Effect Cable', '', 5, '138.00', '0.0', '2015-09-04 22:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `productimage`
--

CREATE TABLE IF NOT EXISTS `productimage` (
  `imageID` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productID` int(11) NOT NULL,
  `displayOrder` mediumint(9) NOT NULL,
  PRIMARY KEY (`imageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=75 ;

--
-- Dumping data for table `productimage`
--

INSERT INTO `productimage` (`imageID`, `image`, `productID`, `displayOrder`) VALUES
(1, 'productImages/1/1.jpg', 1, 1),
(59, 'productImages/20/m20.jpg', 20, 2),
(2, 'productImages/2/2.jpg', 2, 1),
(3, 'productImages/3/3.jpg', 3, 1),
(58, 'productImages/19/m19.jpg', 19, 2),
(4, 'productImages/4/4.jpg', 4, 1),
(5, 'productImages/5/5.jpg', 5, 1),
(57, 'productImages/18/m18.jpg', 18, 2),
(6, 'productImages/6/6.jpg', 6, 1),
(7, 'productImages/7/7.jpg', 7, 1),
(56, 'productImages/17/m17.jpg', 17, 2),
(8, 'productImages/8/8.jpg', 8, 1),
(9, 'productImages/9/9.jpg', 9, 1),
(55, 'productImages/16/m16.jpg', 16, 2),
(10, 'productImages/10/10.jpg', 10, 1),
(11, 'productImages/11/11.jpg', 11, 1),
(12, 'productImages/12/12.jpg', 12, 1),
(13, 'productImages/13/13.jpg', 13, 1),
(14, 'productImages/14/14.jpg', 14, 1),
(54, 'productImages/15/m15.jpg', 15, 2),
(15, 'productImages/15/15.jpg', 15, 1),
(16, 'productImages/16/16.jpg', 16, 1),
(17, 'productImages/17/17.jpg', 17, 1),
(53, 'productImages/14/m14.jpg', 14, 2),
(18, 'productImages/18/18.jpg', 18, 1),
(19, 'productImages/19/19.jpg', 19, 1),
(20, 'productImages/20/20.jpg', 20, 1),
(21, 'productImages/21/21.jpg', 21, 1),
(52, 'productImages/13/m13_2.jpg', 13, 3),
(22, 'productImages/22/22.jpg', 22, 1),
(23, 'productImages/23/23.jpg', 23, 1),
(24, 'productImages/24/24.jpg', 24, 1),
(51, 'productImages/13/m13_1.jpg', 13, 2),
(25, 'productImages/25/25.jpg', 25, 1),
(26, 'productImages/26/26.jpg', 26, 1),
(27, 'productImages/27/27.jpg', 27, 1),
(50, 'productImages/12/m12_2.jpg', 12, 3),
(43, 'productImages/6/m6.jpg', 6, 2),
(41, 'productImages/4/m4.jpg', 4, 2),
(42, 'productImages/5/m5.jpg', 5, 2),
(38, 'productImages/1/m1.jpg', 1, 2),
(39, 'productImages/2/m2.jpg', 2, 2),
(40, 'productImages/3/m3.jpg', 3, 2),
(49, 'productImages/12/m12_1.jpg', 12, 2),
(48, 'productImages/11/m11.jpg', 11, 2),
(47, 'productImages/10/m10.jpg', 10, 2),
(46, 'productImages/9/m9.jpg', 9, 2),
(44, 'productImages/7/m7.jpg', 7, 2),
(45, 'productImages/8/m8.jpg', 8, 2),
(60, 'productImages/21/m21.jpg', 21, 2),
(61, 'productImages/22/m22.jpg', 22, 2),
(62, 'productImages/23/m23_1.jpg', 23, 2),
(63, 'productImages/23/m23_2.jpg', 23, 2),
(64, 'productImages/24/m24_1.jpg', 24, 2),
(65, 'productImages/24/m24_2.jpg', 24, 3),
(66, 'productImages/25/m25_1.jpg', 25, 2),
(67, 'productImages/25/m25_2.jpg', 25, 3),
(68, 'productImages/26/m26_1.jpg', 26, 2),
(70, 'productImages/26/m26_3.jpg', 26, 4),
(71, 'productImages/26/m26_4.png', 26, 5),
(72, 'productImages/26/m26_5.png', 26, 6),
(73, 'productImages/26/m26_6.jpg', 26, 7),
(74, 'productImages/27/m27.jpg', 27, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
