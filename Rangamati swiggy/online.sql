-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2022 at 04:46 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommerce`
--
CREATE DATABASE IF NOT EXISTS `db_ecommerce` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagein`
--

INSERT INTO `messagein` (`Id`, `SendTime`, `ReceiveTime`, `MessageFrom`, `MessageTo`, `SMSC`, `MessageText`, `MessageType`, `MessageParts`, `MessagePDU`, `Gateway`, `UserId`) VALUES
(1, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL),
(2, '2017-11-02 05:19:34', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0303,54204D4D5300018739060350524F585932000187340603687474703A2F2F31302E3130322E36312E3233383A383030322F00010101', NULL, NULL, NULL, NULL, NULL),
(3, '2017-11-02 05:19:14', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0201,6C062F1F2DB69180923646443032463643313042394231363544354242413143304143413232424334343239453236423600030B6A00C54503312E310001C6560187070603534D41525420494E5445524E4554000101C65501871106034E4150475052535F330001871006AB0187070603534D41525420494E5445524E455400', NULL, NULL, NULL, NULL, NULL),
(4, '2017-11-02 05:19:19', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0202,0187140187080603696E7465726E65740001870906890101C600015501873606037732000187070603534D41525420494E5445524E45540001872206034E4150475052535F330001C65901873A0603687474703A2F2F6D2E736D6172742E636F6D2E7068000187070603484F4D450001871C01010101', NULL, NULL, NULL, NULL, NULL),
(5, '2017-11-02 05:19:24', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0301,6D062F1F2DB69180923432373832413042464145313131463335303137323744303141433530304134373930423843334500030B6A00C54503312E310001C6560187070603534D415254204D4D53000101C65501871106034E4150475052535F320001871006AB0187070603534D415254204D4D530001870806036D6D730001', NULL, NULL, NULL, NULL, NULL),
(6, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(1, '2018-01-27 20:38:08', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2018-01-27 20:39:06', NULL, 300, NULL, '09305235027', 'Hello Poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2018-01-27 20:49:14', NULL, 300, NULL, '09305235027', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2018-01-27 20:50:56', NULL, 300, NULL, '09508767867', 'hi poh', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2018-02-09 17:52:26', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2018-02-09 17:54:27', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2018-02-09 17:55:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2018-02-09 17:59:11', NULL, 300, NULL, '09486457414', 'Test to send', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2018-02-09 18:00:12', NULL, 200, NULL, '+639486457414', 'yes', NULL, NULL, '1:+639486457414:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2018-02-09 18:01:12', NULL, 200, NULL, '+639486457414', 'Test to send', NULL, NULL, '1:+639486457414:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2018-02-09 18:02:58', NULL, 200, NULL, '+639486457414', 'FROM JANNO : Confirmed', NULL, NULL, '1:+639486457414:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2018-02-09 18:05:22', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2018-02-09 18:08:14', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2018-02-09 18:21:41', NULL, 200, NULL, '+639486457414', 'FROM Bachelor of Science and Entrepreneurs : Your order has been .Confirmed', NULL, NULL, '1:+639486457414:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2018-04-01 22:17:34', NULL, 300, NULL, '09123586545', 'Your code is .6048', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2018-04-01 22:18:20', NULL, 300, NULL, '09123586545', 'Your code is .9305', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2018-04-01 22:20:15', NULL, 300, NULL, '09123586545', 'Your code is .2924', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2018-04-01 22:42:36', NULL, 300, NULL, '09123586545', 'Your code is .6938', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2018-04-02 00:40:53', NULL, 300, NULL, '9956112920', 'Your code is .7290', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2018-04-02 00:42:14', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2018-04-02 00:43:46', NULL, 300, NULL, '9956112920', 'Your code is .4506', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2018-04-02 00:45:56', NULL, 300, NULL, '09956112920', 'Your code is .6988', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2018-04-02 00:47:17', NULL, 300, NULL, '09956112920', 'Your code is .4380', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2018-04-02 00:48:53', NULL, 200, NULL, '639956112920', 'Your code is .5936', NULL, NULL, '1:639956112920:129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2018-04-02 00:50:29', NULL, 200, NULL, '639956112920', 'Your code is .5349', NULL, NULL, '1:639956112920:130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2018-04-02 00:53:32', NULL, 200, NULL, '639956112920', 'Your code is', NULL, NULL, '1:639956112920:131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2018-04-02 00:54:43', NULL, 200, NULL, '639956112920', 'Your code is 3407', NULL, NULL, '1:639956112920:132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT '0',
  `IsRead` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2017', 1, 43, 'PROID', 10),
(2, '0', 1, 95, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(5, 'SHOES', 0),
(11, 'BAGS', 0),
(12, 'CLOTHING', 0),
(13, 'INTERIORS', 0),
(14, 'HOUSEHOLDS', 0),
(15, 'FASHION', 0),
(16, 'KIDS', 0),
(17, 'WOMENS', 0),
(18, 'MENS', 0),
(19, 'SPORTSWEAR', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `CUSHOMENUM` varchar(90) NOT NULL,
  `STREETADD` text NOT NULL,
  `BRGYADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `ZIPCODE` int(6) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `CUSHOMENUM`, `STREETADD`, `BRGYADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `ZIPCODE`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `TERMS`, `DATEJOIN`) VALUES
(1, 'janobe', 'Palacios', '', '321', 'Coloso Street', 'brgy. 1', 'Kabankalan City', 'Negros Occidental', 'Philippines', '0000-00-00', 'Male', '+639956112920', '', 6111, 'kenjie@yahoo.com', '1dd4efc811372cd1efe855981a8863d10ddde1ca', 'customer_image/a1157016c5d8272126380b27a59e2e7e.jpg', 1, '2015-11-26'),
(2, 'Mark Anthony', 'Geasin', '', '1234', 'paglaom', 'dancalan', 'ilog', 'negros occ', 'philippines', '0000-00-00', '', '091023333234', '', 6111, 'bboy', '0377588176145a8f0d837ff6e9bf0c1616268387', 'customer_image/10801930_959054964122877_391305007291646162_n.jpg', 1, '2015-11-26'),
(3, 'Jano', 'Palacios', '', '12312', 's', 'brgy 1', 'kabankalan city', 'negross occidental', 'philippines', '0000-00-00', 'Male', '21312312312', '', 6111, 'jan', '53199fa57fdf5676d03d89fbdd26e69a927766fc', 'customer_image/Tropical-Beach-Wallpaper.jpg', 1, '2017-12-08'),
(4, 'Jamei', 'Laveste', '', '', '', '', 'kabankalan city', '', '', '0000-00-00', 'Female', '362656556', '', 0, 'jame', 'f144dcce05af4d40fa0aeba34b05f4472472a4de', 'customer_image/1351064148bpguarhW.jpg', 1, '2018-01-23'),
(5, 'Jeanniebe', 'Palacios', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Female', '+639486457414', '', 0, 'bebe', 'd079a1c06803587ea09bff3f44a567e19169e7b5', '', 1, '2018-02-09'),
(6, 'Janry', 'Tan', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Male', '0234234', '', 0, 'jan', '0271c5467994a9e88e01be5b7e1f5f43d0ab93d2', '', 1, '2018-04-01'),
(7, 'Jake', 'Cuenca', '', '', '', '', 'Kabankalan City', '', '', '0000-00-00', 'Male', '639305235027', '', 0, 'jake', '403ba16f713c8371eef121530a922824be29b68a', '', 1, '2018-04-16'),
(8, 'Jake', 'Tam', '', '', '', '', 'Kab City', '', '', '0000-00-00', 'Male', '021312312', '', 0, 'j', '30e1fe53111f7e583c382596a32885fd27283970', '', 1, '2018-09-23'),
(9, 'Annie', 'Paredes', '', '', '', '', 's', '', '', '0000-00-00', 'Female', '12312312', '', 0, 'an', 'aa46142b604e671794a84129896d4dec508dec81', 'customer_image/shirt2.jpg', 1, '2019-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(1, 201737, 4, 476, 93, 0),
(2, 201740, 3, 447, 93, 0),
(3, 201738, 1, 199, 94, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `INGREDIENTS` varchar(255) NOT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `INGREDIENTS`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `OWNERPHONE`) VALUES
(201737, 'KILY Korean Casual Sleeveless Dress Printed Dress 5a0019                      ', '', 5, 100, 119, 12, 'uploaded_photos/korean.jpeg', 'Available', 'janobe', ''),
(201738, 'terno top and pants korean fashion boho terno summer terno for women  ', '', 3, 150, 199, 12, 'uploaded_photos/terno.jpg', 'Available', 'janobe', ''),
(201739, '4Color Menâ€²S Denim Pants STRETCHABLE Skinny Black/Blue', '', 5, 250, 289, 18, 'uploaded_photos/jeans.jpg', 'Available', 'janobe', ''),
(201740, 'SIMPLE Fashion Men`S Casual T Shirt Short Sleeve Round neck Top', '', 1, 100, 149, 18, 'uploaded_photos/shirt.jpg', 'Available', 'janobe', ''),
(201741, 'ICM #T146 BESTSELLER TOPS TSHIRT FOR MEN', '', 4, 50, 89, 18, 'uploaded_photos/shirt2.jpg', 'Available', 'janobe', ''),
(201742, 'CJY-001 Coat Rack Creative Simple CoatRack Bedroom Wardrobe (Gray)', '', 4, 250, 287, 14, 'uploaded_photos/bed.jpeg', 'Available', 'janobe', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(1, 201737, 0, 119, 0, 0),
(2, 201738, 0, 199, 0, 0),
(3, 201739, 0, 289, 0, 0),
(4, 201740, 0, 149, 0, 0),
(5, 201741, 0, 89, 0, 0),
(6, 201742, 0, 287, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting`
--

CREATE TABLE `tblsetting` (
  `SETTINGID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` varchar(90) NOT NULL,
  `DELPRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsetting`
--

INSERT INTO `tblsetting` (`SETTINGID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(1, 'Kabankalan City', 'Brgy. 1', 50),
(2, 'Himamaylan City', 'Brgy. 1', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tblstockin`
--

CREATE TABLE `tblstockin` (
  `STOCKINID` int(11) NOT NULL,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`) VALUES
(1, '2019-08-21 06:24:24', 9, 93, 0, 0, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 1, 0),
(3, '2019-08-21 06:27:09', 9, 94, 70, 269, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2019-08-21 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(124, 'Kenjie Palacios', 'kenjie', '4752fe635442d048e8e8d2d1d845e6a578f30470', 'Administrator', 'photos/COC-war-base-design.jpg'),
(126, 'Janobe Palacios', 'janobe', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/10329236_874204835938922_6636897990257224477_n.jpg'),
(127, 'Craig Palacios', 'craig', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `id` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwishlist`
--

INSERT INTO `tblwishlist` (`id`, `CUSID`, `PROID`, `WISHDATE`, `WISHSTATS`) VALUES
(2, 9, 201742, '2019-08-21', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Indexes for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Indexes for table `tblsetting`
--
ALTER TABLE `tblsetting`
  ADD PRIMARY KEY (`SETTINGID`);

--
-- Indexes for table `tblstockin`
--
ALTER TABLE `tblstockin`
  ADD PRIMARY KEY (`STOCKINID`),
  ADD KEY `PROID` (`PROID`,`USERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `ecom`
--
CREATE DATABASE IF NOT EXISTS `ecom` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecom`;

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(30) NOT NULL,
  `admin_email` varchar(60) NOT NULL,
  `admin_pass` varchar(72) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlog`
--

INSERT INTO `adminlog` (`id`, `admin_email`, `admin_pass`) VALUES
(3, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ctg_id` int(11) NOT NULL,
  `ctg_name` text NOT NULL,
  `ctg_des` varchar(150) NOT NULL,
  `ctg_status` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ctg_id`, `ctg_name`, `ctg_des`, `ctg_status`) VALUES
(19, 'Fresh Vegetables', '', 1),
(20, 'Juice', '', 1),
(21, 'Fruit', '', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_info_ctg`
-- (See below for the actual view)
--
CREATE TABLE `product_info_ctg` (
`pdt_id` int(255)
,`pdt_name` varchar(200)
,`pdt_price` int(200)
,`pdt_des` varchar(250)
,`pdt_img` varchar(200)
,`pdt_status` tinyint(5)
,`ctg_id` int(11)
,`ctg_name` text
);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pdt_id` int(255) NOT NULL,
  `pdt_name` varchar(200) NOT NULL,
  `pdt_price` int(200) NOT NULL,
  `pdt_des` varchar(250) NOT NULL,
  `pdt_ctg` int(200) NOT NULL,
  `pdt_img` varchar(200) NOT NULL,
  `pdt_status` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pdt_id`, `pdt_name`, `pdt_price`, `pdt_des`, `pdt_ctg`, `pdt_img`, `pdt_status`) VALUES
(8, 'Broccoli', 13, 'Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable.', 19, 'p-03.jpg', 1),
(9, 'Orange', 25, 'The orange is the fruit of various citrus species in the family Rutaceae (see list of plants known as orange); it primarily refers to Citrus × sinensis, which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referre', 21, 'p-07.jpg', 1),
(10, 'Avocado Smoothie', 45, 'Combine the pineapple, spinach, avocado, banana, coconut milk, lime juice, maple syrup, salt, ice, and protein powder, if using, in a blender. Blend until creamy. Taste and adjust the sweetness to your liking.', 20, 'p-25.jpg', 1),
(11, 'Avocado', 8, 'The avocado, a tree likely originating from southcentral Mexico, is classified as a member of the flowering plant family Lauraceae. ', 21, 'p-01.jpg', 1),
(12, 'Apple', 6, 'An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus.', 21, 'p-09.jpg', 1),
(13, 'Carrot', 2, 'The carrot is a root vegetable, usually orange in color, though purple, black, red, white, and yellow cultivars exist. They are a domesticated form of the wild carrot, Daucus carota, native to Europe and Southwestern Asia.', 19, 'p-12.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `user_firstname` text NOT NULL,
  `user_lastname` text NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_mobile` int(11) NOT NULL,
  `user_roles` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_firstname`, `user_lastname`, `user_email`, `user_password`, `user_mobile`, `user_roles`) VALUES
(4, 'asibur', 'asib', 'rahman', 'asibur.rahmanyt@gmail.com', 'f7d8c3ebd872c0ee75b845884b5aa418', 2147483647, 5);

-- --------------------------------------------------------

--
-- Structure for view `product_info_ctg`
--
DROP TABLE IF EXISTS `product_info_ctg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_info_ctg`  AS  select `products`.`pdt_id` AS `pdt_id`,`products`.`pdt_name` AS `pdt_name`,`products`.`pdt_price` AS `pdt_price`,`products`.`pdt_des` AS `pdt_des`,`products`.`pdt_img` AS `pdt_img`,`products`.`pdt_status` AS `pdt_status`,`category`.`ctg_id` AS `ctg_id`,`category`.`ctg_name` AS `ctg_name` from (`products` join `category`) where (`products`.`pdt_ctg` = `category`.`ctg_id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlog`
--
ALTER TABLE `adminlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ctg_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pdt_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlog`
--
ALTER TABLE `adminlog`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ctg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pdt_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `ecomm`
--
CREATE DATABASE IF NOT EXISTS `ecomm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecomm`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 9, 1, 4),
(3, 9, 4, 6),
(4, 9, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptops'),
(2, 'Desktop PC', 'desktop-pc'),
(3, 'Tablets', 'tablets');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p>15-inch laptop ideal for gamers. Featuring the latest Intel&reg; processors for superior gaming performance, and life-like NVIDIA&reg; GeForce&reg; graphics and an advanced thermal cooling design.</p>\r\n', 'dell-inspiron-15-7000-15-6', 899, 'dell-inspiron-15-7000-15-6.jpg', '2018-05-12', 1),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>Surface Pro 4 powers through everything you need to do, while being lighter than ever before</p>\r\n\r\n<p>The 12.3 PixelSense screen has extremely high contrast and low glare so you can work through the day without straining your eyes</p>\r\n\r\n<p>keyboard is not included and needed to be purchased separately</p>\r\n\r\n<p>Features an Intel Core i5 6th Gen (Skylake) Core,Wireless: 802.11ac Wi-Fi wireless networking; IEEE 802.11a/b/g/n compatible Bluetooth 4.0 wireless technology</p>\r\n\r\n<p>Ships in Consumer packaging.</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 799, 'microsoft-surface-pro-4-typecover-128-gb.jpg', '2018-05-10', 3),
(3, 1, 'DELL Inspiron 15 5000 15.6', '<p>Dell&#39;s 15.6-inch, midrange notebook is a bland, chunky block. It has long been the case that the Inspiron lineup lacks any sort of aesthetic muse, and the Inspiron 15 5000 follows this trend. It&#39;s a plastic, silver slab bearing Dell&#39;s logo in a mirror sheen.</p>\r\n\r\n<p>Lifting the lid reveals the 15.6-inch, 1080p screen surrounded by an almost offensively thick bezel and a plastic deck with a faux brushed-metal look. There&#39;s a fingerprint reader on the power button, and the keyboard is a black collection of island-style keys.</p>\r\n', 'dell-inspiron-15-5000-15-6', 599, 'dell-inspiron-15-5000-15-6.jpg', '2018-05-12', 1),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Made for portability with a slim, lightweight chassis design&nbsp;<br />\r\n<br />\r\n- Powerful processing helps you create and produce on the go&nbsp;<br />\r\n<br />\r\n- Full HD screen ensures crisp visuals for movies, web pages, photos and more&nbsp;<br />\r\n<br />\r\n- Enjoy warm, sparkling sound courtesy of two Harman speakers and Dolby Audio&nbsp;<br />\r\n<br />\r\n- Fast data transfer and high-quality video connection with USB-C and HDMI ports&nbsp;<br />\r\n<br />\r\nThe Lenovo&nbsp;<strong>IdeaPad 320s-14IKB 14&quot; Laptop</strong>&nbsp;is part of our Achieve range, which has the latest tech to help you develop your ideas and work at your best. It&#39;s great for editing complex documents, business use, editing photos, and anything else you do throughout the day.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 399, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '2018-05-10', 3),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>9.7 inch Retina Display, 2048 x 1536 Resolution, Wide Color and True Tone Display</p>\r\n\r\n<p>Apple iOS 9, A9X chip with 64bit architecture, M9 coprocessor</p>\r\n\r\n<p>12 MP iSight Camera, True Tone Flash, Panorama (up to 63MP), Four-Speaker Audio</p>\r\n\r\n<p>Up to 10 Hours of Battery Life</p>\r\n\r\n<p>iPad Pro Supports Apple Smart Keyboard and Apple Pencil</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 339, 'apple-9-7-ipad-32-gb-gold.jpg', '2018-05-10', 3),
(6, 1, 'DELL Inspiron 15 5000 15', '<p>15-inch laptop delivering an exceptional viewing experience, a head-turning finish and an array of options designed to elevate your entertainment, wherever you go.</p>\r\n', 'dell-inspiron-15-5000-15', 449.99, 'dell-inspiron-15-5000-15.jpg', '0000-00-00', 0),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>4K video recording at 30 fps</p>\r\n\r\n<p>12-megapixel camera</p>\r\n\r\n<p>Fingerprint resistant coating</p>\r\n\r\n<p>Antireflective coating</p>\r\n\r\n<p>Face Time video calling</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 619, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', '0000-00-00', 0),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Versatile Windows 10 device with keyboard and pen included, 2-in-1 functionality: use as both laptop and tablet.Update Windows periodically to ensure that your applications have the latest security settings.</p>\r\n\r\n<p>All day battery life, rated up to 11 hours of video playback; 128GB Solid State storage. Polymer Battery.With up to 11 hours between charges, you can be sure that Transformer Mini T102HA will be right there whenever you need it. You can charge T102HA via its micro USB port, so you can use a mobile charger or any power bank with a micro USB connector.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 549.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '0000-00-00', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>- Top performance for playing eSports and more&nbsp;<br />\r\n<br />\r\n- NVIDIA GeForce GTX graphics deliver smooth visuals&nbsp;<br />\r\n<br />\r\n- GeForce Experience delivers updates straight to your PC&nbsp;<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Core Lite&nbsp;</strong>is part of our Gaming range, bringing you the most impressive PCs available today. It has spectacular graphics and fast processing performance to suit the most exacting players.</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 599.99, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', '0000-00-00', 0),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', '<p>All-new gaming desktop featuring powerful AMD Ryzen&trade; processors, graphics ready for VR, LED lighting and a meticulous design for optimal cooling.</p>\r\n', 'dell-inspiron-5675-gaming-pc-recon-blue', 599.99, 'dell-inspiron-5675-gaming-pc-recon-blue.jpg', '2018-05-10', 1),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>What&#39;s inside matters.</p>\r\n\r\n<p>Without proper cooling, top tierperformance never reaches its fullpotential.</p>\r\n\r\n<p>Nine lighting zones accentuate theaggressive lines and smooth blackfinish of this unique galvanized steelcase.</p>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 489.98, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', '2018-05-12', 1),
(12, 2, 'ACER Aspire GX-781 Gaming PC', '<p>- GTX 1050 graphics card lets you play huge games in great resolutions&nbsp;<br />\r\n<br />\r\n- Latest generation Core&trade; i5 processor can handle demanding media software&nbsp;<br />\r\n<br />\r\n- Superfast SSD storage lets you load programs in no time&nbsp;<br />\r\n<br />\r\nThe Acer&nbsp;<strong>Aspire&nbsp;GX-781 Gaming PC&nbsp;</strong>is part of our Gaming range, which offers the most powerful PCs available today. It has outstanding graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'acer-aspire-gx-781-gaming-pc', 749.99, 'acer-aspire-gx-781-gaming-pc.jpg', '2018-05-12', 3),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>Features the latest quad core Intel i5 processor and discrete graphics. With this power, you&rsquo;re ready to take on any activity from making digital art to conquering new worlds in VR.</p>\r\n\r\n<p>Choose the performance and storage you need. Boot up in seconds with to 128 GB SSD.</p>\r\n\r\n<p>Ditch the dull grey box, this desktop comes infused with style. A new angular bezel and bold green and black design give your workspace just the right amount of attitude.</p>\r\n\r\n<p>Up to 3 times faster performance - GeForce GTX 10-series graphics cards are powered by Pascal to deliver twice the performance of previous-generation graphics cards.</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 799.99, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '2018-05-12', 1),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>- Multi-task with ease thanks to Intel&reg; i5 processor&nbsp;<br />\r\n<br />\r\n- Prepare for battle with NVIDIA GeForce GTX graphics card&nbsp;<br />\r\n<br />\r\n- VR ready for the next-generation of immersive gaming and entertainment<br />\r\n<br />\r\n- Tool-less upgrade helps you personalise your system to your own demands&nbsp;<br />\r\n<br />\r\nPart of our Gaming range, which features the most powerful PCs available today, the Lenovo&nbsp;<strong>Legion Y520 Gaming PC</strong>&nbsp;has superior graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'lenovo-legion-y520-gaming-pc', 899.99, 'lenovo-legion-y520-gaming-pc.jpg', '2018-05-10', 13),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', '<p>- NVIDIA GeForce GTX graphics for stunning gaming visuals<br />\r\n<br />\r\n- Made for eSports with a speedy 7th generation Intel&reg; Core&trade; i5 processor<br />\r\n<br />\r\n- GeForce technology lets you directly update drivers, record your gaming and more<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Minerva XT-R Gaming PC</strong>&nbsp;is part of our Gaming range, which offers the most powerful PCs available. Its high-performance graphics and processing are made to meet the needs of serious gamers.</p>\r\n', 'pc-specialist-vortex-minerva-xt-r-gaming-pc', 999.99, 'pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', '2018-05-10', 1),
(16, 2, 'PC SPECIALIST Vortex Core II Gaming PC', '<p>Processor: Intel&reg; CoreTM i3-6100 Processor- Dual-core- 3.7 GHz- 3 MB cache</p>\r\n\r\n<p>Memory (RAM): 8 GB DDR4 HyperX, Storage: 1 TB HDD, 7200 rpm</p>\r\n\r\n<p>Graphics card: NVIDIA GeForce GTX 950 (2 GB GDDR5), Motherboard: ASUS H110M-R</p>\r\n\r\n<p>USB: USB 3.0 x 3- USB 2.0 x 5, Video interface: HDMI x 1- DisplayPort x 1- DVI x 2, Audio interface: 3.5 mm jack, Optical disc drive: DVD/RW, Expansion card slot PCIe: (x1) x 2</p>\r\n\r\n<p>Sound: 5.1 Surround Sound support PSU Corsair: VS350, 350W, Colour: Black- Green highlights, Box contents: PC Specialist Vortex Core- AC power cable</p>\r\n', 'pc-specialist-vortex-core-ii-gaming-pc', 649.99, 'pc-specialist-vortex-core-ii-gaming-pc.jpg', '2018-05-10', 2),
(17, 3, 'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black', '<p>The next generation of our best-selling Fire tablet ever - now thinner, lighter, and with longer battery life and an improved display. More durable than the latest iPad</p>\r\n\r\n<p>Beautiful 7&quot; IPS display with higher contrast and sharper text, a 1.3 GHz quad-core processor, and up to 8 hours of battery life. 8 or 16 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 49.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black.jpg', '2018-05-12', 1),
(18, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black', '<p>Take your personal assistant with you wherever you go with this Amazon Fire HD 8 tablet featuring Alexa voice-activated cloud service. The slim design of the tablet is easy to handle, and the ample 8-inch screen is ideal for work or play. This Amazon Fire HD 8 features super-sharp high-definition graphics for immersive streaming.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black', 79.99, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black.jpg', '2018-05-12', 2),
(19, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black', '<p>The next generation of our best-reviewed Fire tablet, with up to 12 hours of battery life, a vibrant 8&quot; HD display, a 1.3 GHz quad-core processor, 1.5 GB of RAM, and Dolby Audio. More durable than the latest iPad.</p>\r\n\r\n<p>16 or 32 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black', 99.99, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black.jpg', '2018-05-10', 1),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', '<p>9.7-inch Retina display, wide color and true tone</p>\r\n\r\n<p>A9 third-generation chip with 64-bit architecture</p>\r\n\r\n<p>M9 motion coprocessor</p>\r\n\r\n<p>1.2MP FaceTime HD camera</p>\r\n\r\n<p>8MP iSight camera</p>\r\n\r\n<p>Touch ID</p>\r\n\r\n<p>Apple Pay</p>\r\n', 'apple-9-7-ipad-32-gb-space-grey', 339, 'apple-9-7-ipad-32-gb-space-grey.jpg', '2018-05-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$8wY63GX/y9Bq780GBMpxCesV9n1H6WyCqcA2hNy2uhC59hEnOpNaS', 1, 'Lyndon', 'Bermoy', '', '', 'profile youtube1.jpg', 1, '', '', '2018-05-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `food-order`
--
CREATE DATABASE IF NOT EXISTS `food-order` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `food-order`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Arsenio Leach', 'toduwaxobi', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(9, 'Sasha Mendez', 'goxemyde', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(10, 'Vijay Thapa', 'vijaythapa', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(12, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Pizza', 'Food_Category_790.jpg', 'Yes', 'Yes'),
(5, 'Burger', 'Food_Category_344.jpg', 'Yes', 'Yes'),
(6, 'MoMo', 'Food_Category_77.jpg', 'Yes', 'Yes'),
(8, 'Quia est ipsum id id', 'Food_Category_929.jpg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(3, 'Dumplings Specials', 'Chicken Dumpling with herbs from Mountains', '5.00', 'Food-Name-3649.jpg', 6, 'Yes', 'Yes'),
(4, 'Best Burger', 'Burger with Ham, Pineapple and lots of Cheese.', '4.00', 'Food-Name-6340.jpg', 5, 'Yes', 'Yes'),
(5, 'Smoky BBQ Pizza', 'Best Firewood Pizza in Town.', '6.00', 'Food-Name-8298.jpg', 4, 'No', 'Yes'),
(6, 'Sadeko Momo', 'Best Spicy Momo for Winter', '6.00', 'Food-Name-7387.jpg', 6, 'Yes', 'Yes'),
(7, 'Mixed Pizza', 'Pizza with chicken, Ham, Buff, Mushroom and Vegetables', '10.00', 'Food-Name-7833.jpg', 4, 'Yes', 'Yes'),
(8, 'Sed ipsum cillum in', 'Sed aut officiis qui', '52.00', '', 5, 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Sadeko Momo', '6.00', 3, '18.00', '2020-11-30 03:49:48', 'Cancelled', 'Bradley Farrell', '+1 (576) 504-4657', 'zuhafiq@mailinator.com', 'Duis aliqua Qui lor'),
(2, 'Best Burger', '4.00', 4, '16.00', '2020-11-30 03:52:43', 'Delivered', 'Kelly Dillard', '+1 (908) 914-3106', 'fexekihor@mailinator.com', 'Incidunt ipsum ad d'),
(3, 'Mixed Pizza', '10.00', 2, '20.00', '2020-11-30 04:07:17', 'Delivered', 'Jana Bush', '+1 (562) 101-2028', 'tydujy@mailinator.com', 'Minima iure ducimus'),
(4, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-12-24 09:49:08', 'Ordered', 'sdfdf', 'sdfdsfsd', 'mahiradnan12@gmail.com', 'sdfsdfsdf'),
(5, 'Best Burger', '4.00', 1, '4.00', '2021-12-26 06:01:19', 'Ordered', 'sujan', '01681788659', 'sujan@gmail.com', 'Rangamati sadar'),
(6, 'Mixed Pizza', '10.00', 3, '30.00', '2021-12-26 06:04:46', 'Ordered', 'Mahir adnan sujan', '01681788659', 'mahiradnan12@gmail.com', 'Rabgamati sadar'),
(7, 'Dumplings Specials', '5.00', 4, '20.00', '2021-12-26 06:05:43', 'Ordered', 'sdfdf', 'dfdsfsdf', 'mahiradnan12@gmail.com', 'sdfsdfsdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;--
-- Database: `food ee`
--
CREATE DATABASE IF NOT EXISTS `food ee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `food ee`;

-- --------------------------------------------------------

--
-- Table structure for table `cr_addons`
--

CREATE TABLE `cr_addons` (
  `addon_id` int(11) NOT NULL,
  `addon_name` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `addon_image` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_addons`
--

INSERT INTO `cr_addons` (`addon_id`, `addon_name`, `price`, `description`, `addon_image`, `status`) VALUES
(42, 'Onions', '10.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_42.jpg', 'Active'),
(43, 'Pepper', '15.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_43.jpg', 'Active'),
(44, 'Salt', '15.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_44.jpg', 'Active'),
(45, 'Souce', '20.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_45.jpg', 'Active'),
(46, 'Lemon', '10.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_46.jpg', 'Active'),
(47, 'Jam', '10.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_47.jpg', 'Active'),
(48, 'Kechups', '15.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_48.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_calendar_timezones`
--

CREATE TABLE `cr_calendar_timezones` (
  `CountryCode` char(2) NOT NULL,
  `Coordinates` char(15) NOT NULL,
  `TimeZone` char(32) NOT NULL,
  `Comments` varchar(85) NOT NULL,
  `UTC_offset` char(8) NOT NULL,
  `UTC_DST_offset` char(8) NOT NULL,
  `Notes` varchar(79) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_calendar_timezones`
--

INSERT INTO `cr_calendar_timezones` (`CountryCode`, `Coordinates`, `TimeZone`, `Comments`, `UTC_offset`, `UTC_DST_offset`, `Notes`) VALUES
('CI', '+0519-00402', 'Africa/Abidjan', '', '+00:00', '+00:00', ''),
('GH', '+0533-00013', 'Africa/Accra', '', '+00:00', '+00:00', ''),
('ET', '+0902+03842', 'Africa/Addis_Ababa', '', '+03:00', '+03:00', ''),
('DZ', '+3647+00303', 'Africa/Algiers', '', '+01:00', '+01:00', ''),
('ER', '+1520+03853', 'Africa/Asmara', '', '+03:00', '+03:00', ''),
('', '', 'Africa/Asmera', '', '+03:00', '+03:00', 'Link to Africa/Asmara'),
('ML', '+1239-00800', 'Africa/Bamako', '', '+00:00', '+00:00', ''),
('CF', '+0422+01835', 'Africa/Bangui', '', '+01:00', '+01:00', ''),
('GM', '+1328-01639', 'Africa/Banjul', '', '+00:00', '+00:00', ''),
('GW', '+1151-01535', 'Africa/Bissau', '', '+00:00', '+00:00', ''),
('MW', '-1547+03500', 'Africa/Blantyre', '', '+02:00', '+02:00', ''),
('CG', '-0416+01517', 'Africa/Brazzaville', '', '+01:00', '+01:00', ''),
('BI', '-0323+02922', 'Africa/Bujumbura', '', '+02:00', '+02:00', ''),
('EG', '+3003+03115', 'Africa/Cairo', '', '+02:00', '+02:00', 'DST has been canceled since 2011'),
('MA', '+3339-00735', 'Africa/Casablanca', '', '+00:00', '+01:00', ''),
('ES', '+3553-00519', 'Africa/Ceuta', 'Ceuta & Melilla', '+01:00', '+02:00', ''),
('GN', '+0931-01343', 'Africa/Conakry', '', '+00:00', '+00:00', ''),
('SN', '+1440-01726', 'Africa/Dakar', '', '+00:00', '+00:00', ''),
('TZ', '-0648+03917', 'Africa/Dar_es_Salaam', '', '+03:00', '+03:00', ''),
('DJ', '+1136+04309', 'Africa/Djibouti', '', '+03:00', '+03:00', ''),
('CM', '+0403+00942', 'Africa/Douala', '', '+01:00', '+01:00', ''),
('EH', '+2709-01312', 'Africa/El_Aaiun', '', '+00:00', '+00:00', ''),
('SL', '+0830-01315', 'Africa/Freetown', '', '+00:00', '+00:00', ''),
('BW', '-2439+02555', 'Africa/Gaborone', '', '+02:00', '+02:00', ''),
('ZW', '-1750+03103', 'Africa/Harare', '', '+02:00', '+02:00', ''),
('ZA', '-2615+02800', 'Africa/Johannesburg', '', '+02:00', '+02:00', ''),
('SS', '+0451+03136', 'Africa/Juba', '', '+03:00', '+03:00', ''),
('UG', '+0019+03225', 'Africa/Kampala', '', '+03:00', '+03:00', ''),
('SD', '+1536+03232', 'Africa/Khartoum', '', '+03:00', '+03:00', ''),
('RW', '-0157+03004', 'Africa/Kigali', '', '+02:00', '+02:00', ''),
('CD', '-0418+01518', 'Africa/Kinshasa', 'west Dem. Rep. of Congo', '+01:00', '+01:00', ''),
('NG', '+0627+00324', 'Africa/Lagos', '', '+01:00', '+01:00', ''),
('GA', '+0023+00927', 'Africa/Libreville', '', '+01:00', '+01:00', ''),
('TG', '+0608+00113', 'Africa/Lome', '', '+00:00', '+00:00', ''),
('AO', '-0848+01314', 'Africa/Luanda', '', '+01:00', '+01:00', ''),
('CD', '-1140+02728', 'Africa/Lubumbashi', 'east Dem. Rep. of Congo', '+02:00', '+02:00', ''),
('ZM', '-1525+02817', 'Africa/Lusaka', '', '+02:00', '+02:00', ''),
('GQ', '+0345+00847', 'Africa/Malabo', '', '+01:00', '+01:00', ''),
('MZ', '-2558+03235', 'Africa/Maputo', '', '+02:00', '+02:00', ''),
('LS', '-2928+02730', 'Africa/Maseru', '', '+02:00', '+02:00', ''),
('SZ', '-2618+03106', 'Africa/Mbabane', '', '+02:00', '+02:00', ''),
('SO', '+0204+04522', 'Africa/Mogadishu', '', '+03:00', '+03:00', ''),
('LR', '+0618-01047', 'Africa/Monrovia', '', '+00:00', '+00:00', ''),
('KE', '-0117+03649', 'Africa/Nairobi', '', '+03:00', '+03:00', ''),
('TD', '+1207+01503', 'Africa/Ndjamena', '', '+01:00', '+01:00', ''),
('NE', '+1331+00207', 'Africa/Niamey', '', '+01:00', '+01:00', ''),
('MR', '+1806-01557', 'Africa/Nouakchott', '', '+00:00', '+00:00', ''),
('BF', '+1222-00131', 'Africa/Ouagadougou', '', '+00:00', '+00:00', ''),
('BJ', '+0629+00237', 'Africa/Porto-Novo', '', '+01:00', '+01:00', ''),
('ST', '+0020+00644', 'Africa/Sao_Tome', '', '+00:00', '+00:00', ''),
('', '', 'Africa/Timbuktu', '', '+00:00', '+00:00', 'Link to Africa/Bamako'),
('LY', '+3254+01311', 'Africa/Tripoli', '', '+01:00', '+02:00', ''),
('TN', '+3648+01011', 'Africa/Tunis', '', '+01:00', '+01:00', ''),
('NA', '-2234+01706', 'Africa/Windhoek', '', '+01:00', '+02:00', ''),
('', '', 'AKST9AKDT', '', '−09:00', '−08:00', 'Link to America/Anchorage'),
('US', '+515248-1763929', 'America/Adak', 'Aleutian Islands', '−10:00', '−09:00', ''),
('US', '+611305-1495401', 'America/Anchorage', 'Alaska Time', '−09:00', '−08:00', ''),
('AI', '+1812-06304', 'America/Anguilla', '', '−04:00', '−04:00', ''),
('AG', '+1703-06148', 'America/Antigua', '', '−04:00', '−04:00', ''),
('BR', '-0712-04812', 'America/Araguaina', 'Tocantins', '−03:00', '−03:00', ''),
('AR', '-3436-05827', 'America/Argentina/Buenos_Aires', 'Buenos Aires (BA, CF)', '−03:00', '−03:00', ''),
('AR', '-2828-06547', 'America/Argentina/Catamarca', 'Catamarca (CT), Chubut (CH)', '−03:00', '−03:00', ''),
('', '', 'America/Argentina/ComodRivadavia', '', '−03:00', '−03:00', 'Link to America/Argentina/Catamarca'),
('AR', '-3124-06411', 'America/Argentina/Cordoba', 'most locations (CB, CC, CN, ER, FM, MN, SE, SF)', '−03:00', '−03:00', ''),
('AR', '-2411-06518', 'America/Argentina/Jujuy', 'Jujuy (JY)', '−03:00', '−03:00', ''),
('AR', '-2926-06651', 'America/Argentina/La_Rioja', 'La Rioja (LR)', '−03:00', '−03:00', ''),
('AR', '-3253-06849', 'America/Argentina/Mendoza', 'Mendoza (MZ)', '−03:00', '−03:00', ''),
('AR', '-5138-06913', 'America/Argentina/Rio_Gallegos', 'Santa Cruz (SC)', '−03:00', '−03:00', ''),
('AR', '-2447-06525', 'America/Argentina/Salta', '(SA, LP, NQ, RN)', '−03:00', '−03:00', ''),
('AR', '-3132-06831', 'America/Argentina/San_Juan', 'San Juan (SJ)', '−03:00', '−03:00', ''),
('AR', '-3319-06621', 'America/Argentina/San_Luis', 'San Luis (SL)', '−03:00', '−03:00', ''),
('AR', '-2649-06513', 'America/Argentina/Tucuman', 'Tucuman (TM)', '−03:00', '−03:00', ''),
('AR', '-5448-06818', 'America/Argentina/Ushuaia', 'Tierra del Fuego (TF)', '−03:00', '−03:00', ''),
('AW', '+1230-06958', 'America/Aruba', '', '−04:00', '−04:00', ''),
('PY', '-2516-05740', 'America/Asuncion', '', '−04:00', '−03:00', ''),
('CA', '+484531-0913718', 'America/Atikokan', 'Eastern Standard Time - Atikokan, Ontario and Southampton I, Nunavut', '−05:00', '−05:00', ''),
('', '', 'America/Atka', '', '−10:00', '−09:00', 'Link to America/Adak'),
('BR', '-1259-03831', 'America/Bahia', 'Bahia', '−03:00', '−03:00', ''),
('MX', '+2048-10515', 'America/Bahia_Banderas', 'Mexican Central Time - Bahia de Banderas', '−06:00', '−05:00', ''),
('BB', '+1306-05937', 'America/Barbados', '', '−04:00', '−04:00', ''),
('BR', '-0127-04829', 'America/Belem', 'Amapa, E Para', '−03:00', '−03:00', ''),
('BZ', '+1730-08812', 'America/Belize', '', '−06:00', '−06:00', ''),
('CA', '+5125-05707', 'America/Blanc-Sablon', 'Atlantic Standard Time - Quebec - Lower North Shore', '−04:00', '−04:00', ''),
('BR', '+0249-06040', 'America/Boa_Vista', 'Roraima', '−04:00', '−04:00', ''),
('CO', '+0436-07405', 'America/Bogota', '', '−05:00', '−05:00', ''),
('US', '+433649-1161209', 'America/Boise', 'Mountain Time - south Idaho & east Oregon', '−07:00', '−06:00', ''),
('', '', 'America/Buenos_Aires', '', '−03:00', '−03:00', 'Link to America/Argentina/Buenos_Aires'),
('CA', '+690650-1050310', 'America/Cambridge_Bay', 'Mountain Time - west Nunavut', '−07:00', '−06:00', ''),
('BR', '-2027-05437', 'America/Campo_Grande', 'Mato Grosso do Sul', '−04:00', '−03:00', ''),
('MX', '+2105-08646', 'America/Cancun', 'Central Time - Quintana Roo', '−06:00', '−05:00', ''),
('VE', '+1030-06656', 'America/Caracas', '', '−04:30', '−04:30', ''),
('', '', 'America/Catamarca', '', '−03:00', '−03:00', 'Link to America/Argentina/Catamarca'),
('GF', '+0456-05220', 'America/Cayenne', '', '−03:00', '−03:00', ''),
('KY', '+1918-08123', 'America/Cayman', '', '−05:00', '−05:00', ''),
('US', '+415100-0873900', 'America/Chicago', 'Central Time', '−06:00', '−05:00', ''),
('MX', '+2838-10605', 'America/Chihuahua', 'Mexican Mountain Time - Chihuahua away from US border', '−07:00', '−06:00', ''),
('', '', 'America/Coral_Harbour', '', '−05:00', '−05:00', 'Link to America/Atikokan'),
('', '', 'America/Cordoba', '', '−03:00', '−03:00', 'Link to America/Argentina/Cordoba'),
('CR', '+0956-08405', 'America/Costa_Rica', '', '−06:00', '−06:00', ''),
('CA', '+4906-11631', 'America/Creston', 'Mountain Standard Time - Creston, British Columbia', '−07:00', '−07:00', ''),
('BR', '-1535-05605', 'America/Cuiaba', 'Mato Grosso', '−04:00', '−03:00', ''),
('CW', '+1211-06900', 'America/Curacao', '', '−04:00', '−04:00', ''),
('GL', '+7646-01840', 'America/Danmarkshavn', 'east coast, north of Scoresbysund', '+00:00', '+00:00', ''),
('CA', '+6404-13925', 'America/Dawson', 'Pacific Time - north Yukon', '−08:00', '−07:00', ''),
('CA', '+5946-12014', 'America/Dawson_Creek', 'Mountain Standard Time - Dawson Creek & Fort Saint John, British Columbia', '−07:00', '−07:00', ''),
('US', '+394421-1045903', 'America/Denver', 'Mountain Time', '−07:00', '−06:00', ''),
('US', '+421953-0830245', 'America/Detroit', 'Eastern Time - Michigan - most locations', '−05:00', '−04:00', ''),
('DM', '+1518-06124', 'America/Dominica', '', '−04:00', '−04:00', ''),
('CA', '+5333-11328', 'America/Edmonton', 'Mountain Time - Alberta, east British Columbia & west Saskatchewan', '−07:00', '−06:00', ''),
('BR', '-0640-06952', 'America/Eirunepe', 'W Amazonas', '−04:00', '−04:00', ''),
('SV', '+1342-08912', 'America/El_Salvador', '', '−06:00', '−06:00', ''),
('', '', 'America/Ensenada', '', '−08:00', '−07:00', 'Link to America/Tijuana'),
('BR', '-0343-03830', 'America/Fortaleza', 'NE Brazil (MA, PI, CE, RN, PB)', '−03:00', '−03:00', ''),
('', '', 'America/Fort_Wayne', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+4612-05957', 'America/Glace_Bay', 'Atlantic Time - Nova Scotia - places that did not observe DST 1966-1971', '−04:00', '−03:00', ''),
('GL', '+6411-05144', 'America/Godthab', 'most locations', '−03:00', '−02:00', ''),
('CA', '+5320-06025', 'America/Goose_Bay', 'Atlantic Time - Labrador - most locations', '−04:00', '−03:00', ''),
('TC', '+2128-07108', 'America/Grand_Turk', '', '−05:00', '−04:00', ''),
('GD', '+1203-06145', 'America/Grenada', '', '−04:00', '−04:00', ''),
('GP', '+1614-06132', 'America/Guadeloupe', '', '−04:00', '−04:00', ''),
('GT', '+1438-09031', 'America/Guatemala', '', '−06:00', '−06:00', ''),
('EC', '-0210-07950', 'America/Guayaquil', 'mainland', '−05:00', '−05:00', ''),
('GY', '+0648-05810', 'America/Guyana', '', '−04:00', '−04:00', ''),
('CA', '+4439-06336', 'America/Halifax', 'Atlantic Time - Nova Scotia (most places), PEI', '−04:00', '−03:00', ''),
('CU', '+2308-08222', 'America/Havana', '', '−05:00', '−04:00', ''),
('MX', '+2904-11058', 'America/Hermosillo', 'Mountain Standard Time - Sonora', '−07:00', '−07:00', ''),
('US', '+394606-0860929', 'America/Indiana/Indianapolis', 'Eastern Time - Indiana - most locations', '−05:00', '−04:00', ''),
('US', '+411745-0863730', 'America/Indiana/Knox', 'Central Time - Indiana - Starke County', '−06:00', '−05:00', ''),
('US', '+382232-0862041', 'America/Indiana/Marengo', 'Eastern Time - Indiana - Crawford County', '−05:00', '−04:00', ''),
('US', '+382931-0871643', 'America/Indiana/Petersburg', 'Eastern Time - Indiana - Pike County', '−05:00', '−04:00', ''),
('US', '+375711-0864541', 'America/Indiana/Tell_City', 'Central Time - Indiana - Perry County', '−06:00', '−05:00', ''),
('US', '+384452-0850402', 'America/Indiana/Vevay', 'Eastern Time - Indiana - Switzerland County', '−05:00', '−04:00', ''),
('US', '+384038-0873143', 'America/Indiana/Vincennes', 'Eastern Time - Indiana - Daviess, Dubois, Knox & Martin Counties', '−05:00', '−04:00', ''),
('US', '+410305-0863611', 'America/Indiana/Winamac', 'Eastern Time - Indiana - Pulaski County', '−05:00', '−04:00', ''),
('', '', 'America/Indianapolis', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+682059-1334300', 'America/Inuvik', 'Mountain Time - west Northwest Territories', '−07:00', '−06:00', ''),
('CA', '+6344-06828', 'America/Iqaluit', 'Eastern Time - east Nunavut - most locations', '−05:00', '−04:00', ''),
('JM', '+1800-07648', 'America/Jamaica', '', '−05:00', '−05:00', ''),
('', '', 'America/Jujuy', '', '−03:00', '−03:00', 'Link to America/Argentina/Jujuy'),
('US', '+581807-1342511', 'America/Juneau', 'Alaska Time - Alaska panhandle', '−09:00', '−08:00', ''),
('US', '+381515-0854534', 'America/Kentucky/Louisville', 'Eastern Time - Kentucky - Louisville area', '−05:00', '−04:00', ''),
('US', '+364947-0845057', 'America/Kentucky/Monticello', 'Eastern Time - Kentucky - Wayne County', '−05:00', '−04:00', ''),
('', '', 'America/Knox_IN', '', '−06:00', '−05:00', 'Link to America/Indiana/Knox'),
('BQ', '+120903-0681636', 'America/Kralendijk', '', '−04:00', '−04:00', 'Link to America/Curacao'),
('BO', '-1630-06809', 'America/La_Paz', '', '−04:00', '−04:00', ''),
('PE', '-1203-07703', 'America/Lima', '', '−05:00', '−05:00', ''),
('US', '+340308-1181434', 'America/Los_Angeles', 'Pacific Time', '−08:00', '−07:00', ''),
('', '', 'America/Louisville', '', '−05:00', '−04:00', 'Link to America/Kentucky/Louisville'),
('SX', '+180305-0630250', 'America/Lower_Princes', '', '−04:00', '−04:00', 'Link to America/Curacao'),
('BR', '-0940-03543', 'America/Maceio', 'Alagoas, Sergipe', '−03:00', '−03:00', ''),
('NI', '+1209-08617', 'America/Managua', '', '−06:00', '−06:00', ''),
('BR', '-0308-06001', 'America/Manaus', 'E Amazonas', '−04:00', '−04:00', ''),
('MF', '+1804-06305', 'America/Marigot', '', '−04:00', '−04:00', 'Link to America/Guadeloupe'),
('MQ', '+1436-06105', 'America/Martinique', '', '−04:00', '−04:00', ''),
('MX', '+2550-09730', 'America/Matamoros', 'US Central Time - Coahuila, Durango, Nuevo León, Tamaulipas near US border', '−06:00', '−05:00', ''),
('MX', '+2313-10625', 'America/Mazatlan', 'Mountain Time - S Baja, Nayarit, Sinaloa', '−07:00', '−06:00', ''),
('', '', 'America/Mendoza', '', '−03:00', '−03:00', 'Link to America/Argentina/Mendoza'),
('US', '+450628-0873651', 'America/Menominee', 'Central Time - Michigan - Dickinson, Gogebic, Iron & Menominee Counties', '−06:00', '−05:00', ''),
('MX', '+2058-08937', 'America/Merida', 'Central Time - Campeche, Yucatán', '−06:00', '−05:00', ''),
('US', '+550737-1313435', 'America/Metlakatla', 'Metlakatla Time - Annette Island', '−08:00', '−08:00', ''),
('MX', '+1924-09909', 'America/Mexico_City', 'Central Time - most locations', '−06:00', '−05:00', ''),
('PM', '+4703-05620', 'America/Miquelon', '', '−03:00', '−02:00', ''),
('CA', '+4606-06447', 'America/Moncton', 'Atlantic Time - New Brunswick', '−04:00', '−03:00', ''),
('MX', '+2540-10019', 'America/Monterrey', 'Mexican Central Time - Coahuila, Durango, Nuevo León, Tamaulipas away from US border', '−06:00', '−05:00', ''),
('UY', '-3453-05611', 'America/Montevideo', '', '−03:00', '−02:00', ''),
('CA', '+4531-07334', 'America/Montreal', 'Eastern Time - Quebec - most locations', '−05:00', '−04:00', ''),
('MS', '+1643-06213', 'America/Montserrat', '', '−04:00', '−04:00', ''),
('BS', '+2505-07721', 'America/Nassau', '', '−05:00', '−04:00', ''),
('US', '+404251-0740023', 'America/New_York', 'Eastern Time', '−05:00', '−04:00', ''),
('CA', '+4901-08816', 'America/Nipigon', 'Eastern Time - Ontario & Quebec - places that did not observe DST 1967-1973', '−05:00', '−04:00', ''),
('US', '+643004-1652423', 'America/Nome', 'Alaska Time - west Alaska', '−09:00', '−08:00', ''),
('BR', '-0351-03225', 'America/Noronha', 'Atlantic islands', '−02:00', '−02:00', ''),
('US', '+471551-1014640', 'America/North_Dakota/Beulah', 'Central Time - North Dakota - Mercer County', '−06:00', '−05:00', ''),
('US', '+470659-1011757', 'America/North_Dakota/Center', 'Central Time - North Dakota - Oliver County', '−06:00', '−05:00', ''),
('US', '+465042-1012439', 'America/North_Dakota/New_Salem', 'Central Time - North Dakota - Morton County (except Mandan area)', '−06:00', '−05:00', ''),
('MX', '+2934-10425', 'America/Ojinaga', 'US Mountain Time - Chihuahua near US border', '−07:00', '−06:00', ''),
('PA', '+0858-07932', 'America/Panama', '', '−05:00', '−05:00', ''),
('CA', '+6608-06544', 'America/Pangnirtung', 'Eastern Time - Pangnirtung, Nunavut', '−05:00', '−04:00', ''),
('SR', '+0550-05510', 'America/Paramaribo', '', '−03:00', '−03:00', ''),
('US', '+332654-1120424', 'America/Phoenix', 'Mountain Standard Time - Arizona', '−07:00', '−07:00', ''),
('HT', '+1832-07220', 'America/Port-au-Prince', '', '−05:00', '−04:00', ''),
('', '', 'America/Porto_Acre', '', '−04:00', '−04:00', 'Link to America/Rio_Branco'),
('BR', '-0846-06354', 'America/Porto_Velho', 'Rondonia', '−04:00', '−04:00', ''),
('TT', '+1039-06131', 'America/Port_of_Spain', '', '−04:00', '−04:00', ''),
('PR', '+182806-0660622', 'America/Puerto_Rico', '', '−04:00', '−04:00', ''),
('CA', '+4843-09434', 'America/Rainy_River', 'Central Time - Rainy River & Fort Frances, Ontario', '−06:00', '−05:00', ''),
('CA', '+624900-0920459', 'America/Rankin_Inlet', 'Central Time - central Nunavut', '−06:00', '−05:00', ''),
('BR', '-0803-03454', 'America/Recife', 'Pernambuco', '−03:00', '−03:00', ''),
('CA', '+5024-10439', 'America/Regina', 'Central Standard Time - Saskatchewan - most locations', '−06:00', '−06:00', ''),
('CA', '+744144-0944945', 'America/Resolute', 'Central Standard Time - Resolute, Nunavut', '−06:00', '−05:00', ''),
('BR', '-0958-06748', 'America/Rio_Branco', 'Acre', '−04:00', '−04:00', ''),
('', '', 'America/Rosario', '', '−03:00', '−03:00', 'Link to America/Argentina/Cordoba'),
('BR', '-0226-05452', 'America/Santarem', 'W Para', '−03:00', '−03:00', ''),
('MX', '+3018-11452', 'America/Santa_Isabel', 'Mexican Pacific Time - Baja California away from US border', '−08:00', '−07:00', ''),
('CL', '-3327-07040', 'America/Santiago', 'most locations', '−04:00', '−03:00', ''),
('DO', '+1828-06954', 'America/Santo_Domingo', '', '−04:00', '−04:00', ''),
('BR', '-2332-04637', 'America/Sao_Paulo', 'S & SE Brazil (GO, DF, MG, ES, RJ, SP, PR, SC, RS)', '−03:00', '−02:00', ''),
('GL', '+7029-02158', 'America/Scoresbysund', 'Scoresbysund / Ittoqqortoormiit', '−01:00', '+00:00', ''),
('US', '+364708-1084111', 'America/Shiprock', 'Mountain Time - Navajo', '−07:00', '−06:00', 'Link to America/Denver'),
('US', '+571035-1351807', 'America/Sitka', 'Alaska Time - southeast Alaska panhandle', '−09:00', '−08:00', ''),
('BL', '+1753-06251', 'America/St_Barthelemy', '', '−04:00', '−04:00', 'Link to America/Guadeloupe'),
('CA', '+4734-05243', 'America/St_Johns', 'Newfoundland Time, including SE Labrador', '−03:30', '−02:30', ''),
('KN', '+1718-06243', 'America/St_Kitts', '', '−04:00', '−04:00', ''),
('LC', '+1401-06100', 'America/St_Lucia', '', '−04:00', '−04:00', ''),
('VI', '+1821-06456', 'America/St_Thomas', '', '−04:00', '−04:00', ''),
('VC', '+1309-06114', 'America/St_Vincent', '', '−04:00', '−04:00', ''),
('CA', '+5017-10750', 'America/Swift_Current', 'Central Standard Time - Saskatchewan - midwest', '−06:00', '−06:00', ''),
('HN', '+1406-08713', 'America/Tegucigalpa', '', '−06:00', '−06:00', ''),
('GL', '+7634-06847', 'America/Thule', 'Thule / Pituffik', '−04:00', '−03:00', ''),
('CA', '+4823-08915', 'America/Thunder_Bay', 'Eastern Time - Thunder Bay, Ontario', '−05:00', '−04:00', ''),
('MX', '+3232-11701', 'America/Tijuana', 'US Pacific Time - Baja California near US border', '−08:00', '−07:00', ''),
('CA', '+4339-07923', 'America/Toronto', 'Eastern Time - Ontario - most locations', '−05:00', '−04:00', ''),
('VG', '+1827-06437', 'America/Tortola', '', '−04:00', '−04:00', ''),
('CA', '+4916-12307', 'America/Vancouver', 'Pacific Time - west British Columbia', '−08:00', '−07:00', ''),
('', '', 'America/Virgin', '', '−04:00', '−04:00', 'Link to America/St_Thomas'),
('CA', '+6043-13503', 'America/Whitehorse', 'Pacific Time - south Yukon', '−08:00', '−07:00', ''),
('CA', '+4953-09709', 'America/Winnipeg', 'Central Time - Manitoba & west Ontario', '−06:00', '−05:00', ''),
('US', '+593249-1394338', 'America/Yakutat', 'Alaska Time - Alaska panhandle neck', '−09:00', '−08:00', ''),
('CA', '+6227-11421', 'America/Yellowknife', 'Mountain Time - central Northwest Territories', '−07:00', '−06:00', ''),
('AQ', '-6617+11031', 'Antarctica/Casey', 'Casey Station, Bailey Peninsula', '+11:00', '+08:00', ''),
('AQ', '-6835+07758', 'Antarctica/Davis', 'Davis Station, Vestfold Hills', '+05:00', '+07:00', ''),
('AQ', '-6640+14001', 'Antarctica/DumontDUrville', 'Dumont-d\'Urville Station, Terre Adelie', '+10:00', '+10:00', ''),
('AQ', '-5430+15857', 'Antarctica/Macquarie', 'Macquarie Island Station, Macquarie Island', '+11:00', '+11:00', ''),
('AQ', '-6736+06253', 'Antarctica/Mawson', 'Mawson Station, Holme Bay', '+05:00', '+05:00', ''),
('AQ', '-7750+16636', 'Antarctica/McMurdo', 'McMurdo Station, Ross Island', '+12:00', '+13:00', ''),
('AQ', '-6448-06406', 'Antarctica/Palmer', 'Palmer Station, Anvers Island', '−04:00', '−03:00', ''),
('AQ', '-6734-06808', 'Antarctica/Rothera', 'Rothera Station, Adelaide Island', '−03:00', '−03:00', ''),
('AQ', '-9000+00000', 'Antarctica/South_Pole', 'Amundsen-Scott Station, South Pole', '+12:00', '+13:00', 'Link to Antarctica/McMurdo'),
('AQ', '-690022+0393524', 'Antarctica/Syowa', 'Syowa Station, E Ongul I', '+03:00', '+03:00', ''),
('AQ', '-7824+10654', 'Antarctica/Vostok', 'Vostok Station, Lake Vostok', '+06:00', '+06:00', ''),
('SJ', '+7800+01600', 'Arctic/Longyearbyen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('YE', '+1245+04512', 'Asia/Aden', '', '+03:00', '+03:00', ''),
('KZ', '+4315+07657', 'Asia/Almaty', 'most locations', '+06:00', '+06:00', ''),
('JO', '+3157+03556', 'Asia/Amman', '', '+03:00', '+03:00', ''),
('RU', '+6445+17729', 'Asia/Anadyr', 'Moscow+08 - Bering Sea', '+12:00', '+12:00', ''),
('KZ', '+4431+05016', 'Asia/Aqtau', 'Atyrau (Atirau, Gur\'yev), Mangghystau (Mankistau)', '+05:00', '+05:00', ''),
('KZ', '+5017+05710', 'Asia/Aqtobe', 'Aqtobe (Aktobe)', '+05:00', '+05:00', ''),
('TM', '+3757+05823', 'Asia/Ashgabat', '', '+05:00', '+05:00', ''),
('', '', 'Asia/Ashkhabad', '', '+05:00', '+05:00', 'Link to Asia/Ashgabat'),
('IQ', '+3321+04425', 'Asia/Baghdad', '', '+03:00', '+03:00', ''),
('BH', '+2623+05035', 'Asia/Bahrain', '', '+03:00', '+03:00', ''),
('AZ', '+4023+04951', 'Asia/Baku', '', '+04:00', '+05:00', ''),
('TH', '+1345+10031', 'Asia/Bangkok', '', '+07:00', '+07:00', ''),
('LB', '+3353+03530', 'Asia/Beirut', '', '+02:00', '+03:00', ''),
('KG', '+4254+07436', 'Asia/Bishkek', '', '+06:00', '+06:00', ''),
('BN', '+0456+11455', 'Asia/Brunei', '', '+08:00', '+08:00', ''),
('', '', 'Asia/Calcutta', '', '+05:30', '+05:30', 'Link to Asia/Kolkata'),
('MN', '+4804+11430', 'Asia/Choibalsan', 'Dornod, Sukhbaatar', '+08:00', '+08:00', ''),
('CN', '+2934+10635', 'Asia/Chongqing', 'central China - Sichuan, Yunnan, Guangxi, Shaanxi, Guizhou, etc.', '+08:00', '+08:00', 'Covering historic Kansu-Szechuan time zone.'),
('', '', 'Asia/Chungking', '', '+08:00', '+08:00', 'Link to Asia/Chongqing'),
('LK', '+0656+07951', 'Asia/Colombo', '', '+05:30', '+05:30', ''),
('', '', 'Asia/Dacca', '', '+06:00', '+06:00', 'Link to Asia/Dhaka'),
('SY', '+3330+03618', 'Asia/Damascus', '', '+02:00', '+03:00', ''),
('BD', '+2343+09025', 'Asia/Dhaka', '', '+06:00', '+06:00', ''),
('TL', '-0833+12535', 'Asia/Dili', '', '+09:00', '+09:00', ''),
('AE', '+2518+05518', 'Asia/Dubai', '', '+04:00', '+04:00', ''),
('TJ', '+3835+06848', 'Asia/Dushanbe', '', '+05:00', '+05:00', ''),
('PS', '+3130+03428', 'Asia/Gaza', 'Gaza Strip', '+02:00', '+03:00', ''),
('CN', '+4545+12641', 'Asia/Harbin', 'Heilongjiang (except Mohe), Jilin', '+08:00', '+08:00', 'Covering historic Changpai time zone.'),
('PS', '+313200+0350542', 'Asia/Hebron', 'West Bank', '+02:00', '+03:00', ''),
('HK', '+2217+11409', 'Asia/Hong_Kong', '', '+08:00', '+08:00', ''),
('MN', '+4801+09139', 'Asia/Hovd', 'Bayan-Olgiy, Govi-Altai, Hovd, Uvs, Zavkhan', '+07:00', '+07:00', ''),
('VN', '+1045+10640', 'Asia/Ho_Chi_Minh', '', '+07:00', '+07:00', ''),
('RU', '+5216+10420', 'Asia/Irkutsk', 'Moscow+05 - Lake Baikal', '+09:00', '+09:00', ''),
('', '', 'Asia/Istanbul', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('ID', '-0610+10648', 'Asia/Jakarta', 'Java & Sumatra', '+07:00', '+07:00', ''),
('ID', '-0232+14042', 'Asia/Jayapura', 'west New Guinea (Irian Jaya) & Malukus (Moluccas)', '+09:00', '+09:00', ''),
('IL', '+3146+03514', 'Asia/Jerusalem', '', '+02:00', '+03:00', ''),
('AF', '+3431+06912', 'Asia/Kabul', '', '+04:30', '+04:30', ''),
('RU', '+5301+15839', 'Asia/Kamchatka', 'Moscow+08 - Kamchatka', '+12:00', '+12:00', ''),
('PK', '+2452+06703', 'Asia/Karachi', '', '+05:00', '+05:00', ''),
('CN', '+3929+07559', 'Asia/Kashgar', 'west Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Kunlun time zone.'),
('NP', '+2743+08519', 'Asia/Kathmandu', '', '+05:45', '+05:45', ''),
('', '', 'Asia/Katmandu', '', '+05:45', '+05:45', 'Link to Asia/Kathmandu'),
('IN', '+2232+08822', 'Asia/Kolkata', '', '+05:30', '+05:30', 'Note: Different zones in history, see Time in India.'),
('RU', '+5601+09250', 'Asia/Krasnoyarsk', 'Moscow+04 - Yenisei River', '+08:00', '+08:00', ''),
('MY', '+0310+10142', 'Asia/Kuala_Lumpur', 'peninsular Malaysia', '+08:00', '+08:00', ''),
('MY', '+0133+11020', 'Asia/Kuching', 'Sabah & Sarawak', '+08:00', '+08:00', ''),
('KW', '+2920+04759', 'Asia/Kuwait', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Macao', '', '+08:00', '+08:00', 'Link to Asia/Macau'),
('MO', '+2214+11335', 'Asia/Macau', '', '+08:00', '+08:00', ''),
('RU', '+5934+15048', 'Asia/Magadan', 'Moscow+08 - Magadan', '+12:00', '+12:00', ''),
('ID', '-0507+11924', 'Asia/Makassar', 'east & south Borneo, Sulawesi (Celebes), Bali, Nusa Tenggara, west Timor', '+08:00', '+08:00', ''),
('PH', '+1435+12100', 'Asia/Manila', '', '+08:00', '+08:00', ''),
('OM', '+2336+05835', 'Asia/Muscat', '', '+04:00', '+04:00', ''),
('CY', '+3510+03322', 'Asia/Nicosia', '', '+02:00', '+03:00', ''),
('RU', '+5345+08707', 'Asia/Novokuznetsk', 'Moscow+03 - Novokuznetsk', '+07:00', '+07:00', ''),
('RU', '+5502+08255', 'Asia/Novosibirsk', 'Moscow+03 - Novosibirsk', '+07:00', '+07:00', ''),
('RU', '+5500+07324', 'Asia/Omsk', 'Moscow+03 - west Siberia', '+07:00', '+07:00', ''),
('KZ', '+5113+05121', 'Asia/Oral', 'West Kazakhstan', '+05:00', '+05:00', ''),
('KH', '+1133+10455', 'Asia/Phnom_Penh', '', '+07:00', '+07:00', ''),
('ID', '-0002+10920', 'Asia/Pontianak', 'west & central Borneo', '+07:00', '+07:00', ''),
('KP', '+3901+12545', 'Asia/Pyongyang', '', '+09:00', '+09:00', ''),
('QA', '+2517+05132', 'Asia/Qatar', '', '+03:00', '+03:00', ''),
('KZ', '+4448+06528', 'Asia/Qyzylorda', 'Qyzylorda (Kyzylorda, Kzyl-Orda)', '+06:00', '+06:00', ''),
('MM', '+1647+09610', 'Asia/Rangoon', '', '+06:30', '+06:30', ''),
('SA', '+2438+04643', 'Asia/Riyadh', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Saigon', '', '+07:00', '+07:00', 'Link to Asia/Ho_Chi_Minh'),
('RU', '+4658+14242', 'Asia/Sakhalin', 'Moscow+07 - Sakhalin Island', '+11:00', '+11:00', ''),
('UZ', '+3940+06648', 'Asia/Samarkand', 'west Uzbekistan', '+05:00', '+05:00', ''),
('KR', '+3733+12658', 'Asia/Seoul', '', '+09:00', '+09:00', ''),
('CN', '+3114+12128', 'Asia/Shanghai', 'east China - Beijing, Guangdong, Shanghai, etc.', '+08:00', '+08:00', 'Covering historic Chungyuan time zone.'),
('SG', '+0117+10351', 'Asia/Singapore', '', '+08:00', '+08:00', ''),
('TW', '+2503+12130', 'Asia/Taipei', '', '+08:00', '+08:00', ''),
('UZ', '+4120+06918', 'Asia/Tashkent', 'east Uzbekistan', '+05:00', '+05:00', ''),
('GE', '+4143+04449', 'Asia/Tbilisi', '', '+04:00', '+04:00', ''),
('IR', '+3540+05126', 'Asia/Tehran', '', '+03:30', '+04:30', ''),
('', '', 'Asia/Tel_Aviv', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Asia/Thimbu', '', '+06:00', '+06:00', 'Link to Asia/Thimphu'),
('BT', '+2728+08939', 'Asia/Thimphu', '', '+06:00', '+06:00', ''),
('JP', '+353916+1394441', 'Asia/Tokyo', '', '+09:00', '+09:00', ''),
('', '', 'Asia/Ujung_Pandang', '', '+08:00', '+08:00', 'Link to Asia/Makassar'),
('MN', '+4755+10653', 'Asia/Ulaanbaatar', 'most locations', '+08:00', '+08:00', ''),
('', '', 'Asia/Ulan_Bator', '', '+08:00', '+08:00', 'Link to Asia/Ulaanbaatar'),
('CN', '+4348+08735', 'Asia/Urumqi', 'most of Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Sinkiang-Tibet time zone.'),
('LA', '+1758+10236', 'Asia/Vientiane', '', '+07:00', '+07:00', ''),
('RU', '+4310+13156', 'Asia/Vladivostok', 'Moscow+07 - Amur River', '+11:00', '+11:00', ''),
('RU', '+6200+12940', 'Asia/Yakutsk', 'Moscow+06 - Lena River', '+10:00', '+10:00', ''),
('RU', '+5651+06036', 'Asia/Yekaterinburg', 'Moscow+02 - Urals', '+06:00', '+06:00', ''),
('AM', '+4011+04430', 'Asia/Yerevan', '', '+04:00', '+04:00', ''),
('PT', '+3744-02540', 'Atlantic/Azores', 'Azores', '−01:00', '+00:00', ''),
('BM', '+3217-06446', 'Atlantic/Bermuda', '', '−04:00', '−03:00', ''),
('ES', '+2806-01524', 'Atlantic/Canary', 'Canary Islands', '+00:00', '+01:00', ''),
('CV', '+1455-02331', 'Atlantic/Cape_Verde', '', '−01:00', '−01:00', ''),
('', '', 'Atlantic/Faeroe', '', '+00:00', '+01:00', 'Link to Atlantic/Faroe'),
('FO', '+6201-00646', 'Atlantic/Faroe', '', '+00:00', '+01:00', ''),
('', '', 'Atlantic/Jan_Mayen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('PT', '+3238-01654', 'Atlantic/Madeira', 'Madeira Islands', '+00:00', '+01:00', ''),
('IS', '+6409-02151', 'Atlantic/Reykjavik', '', '+00:00', '+00:00', ''),
('GS', '-5416-03632', 'Atlantic/South_Georgia', '', '−02:00', '−02:00', ''),
('FK', '-5142-05751', 'Atlantic/Stanley', '', '−03:00', '−03:00', ''),
('SH', '-1555-00542', 'Atlantic/St_Helena', '', '+00:00', '+00:00', ''),
('', '', 'Australia/ACT', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3455+13835', 'Australia/Adelaide', 'South Australia', '+09:30', '+10:30', ''),
('AU', '-2728+15302', 'Australia/Brisbane', 'Queensland - most locations', '+10:00', '+10:00', ''),
('AU', '-3157+14127', 'Australia/Broken_Hill', 'New South Wales - Yancowinna', '+09:30', '+10:30', ''),
('', '', 'Australia/Canberra', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3956+14352', 'Australia/Currie', 'Tasmania - King Island', '+10:00', '+11:00', ''),
('AU', '-1228+13050', 'Australia/Darwin', 'Northern Territory', '+09:30', '+09:30', ''),
('AU', '-3143+12852', 'Australia/Eucla', 'Western Australia - Eucla area', '+08:45', '+08:45', ''),
('AU', '-4253+14719', 'Australia/Hobart', 'Tasmania - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/LHI', '', '+10:30', '+11:00', 'Link to Australia/Lord_Howe'),
('AU', '-2016+14900', 'Australia/Lindeman', 'Queensland - Holiday Islands', '+10:00', '+10:00', ''),
('AU', '-3133+15905', 'Australia/Lord_Howe', 'Lord Howe Island', '+10:30', '+11:00', ''),
('AU', '-3749+14458', 'Australia/Melbourne', 'Victoria', '+10:00', '+11:00', ''),
('', '', 'Australia/North', '', '+09:30', '+09:30', 'Link to Australia/Darwin'),
('', '', 'Australia/NSW', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3157+11551', 'Australia/Perth', 'Western Australia - most locations', '+08:00', '+08:00', ''),
('', '', 'Australia/Queensland', '', '+10:00', '+10:00', 'Link to Australia/Brisbane'),
('', '', 'Australia/South', '', '+09:30', '+10:30', 'Link to Australia/Adelaide'),
('AU', '-3352+15113', 'Australia/Sydney', 'New South Wales - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/Tasmania', '', '+10:00', '+11:00', 'Link to Australia/Hobart'),
('', '', 'Australia/Victoria', '', '+10:00', '+11:00', 'Link to Australia/Melbourne'),
('', '', 'Australia/West', '', '+08:00', '+08:00', 'Link to Australia/Perth'),
('', '', 'Australia/Yancowinna', '', '+09:30', '+10:30', 'Link to Australia/Broken_Hill'),
('', '', 'Brazil/Acre', '', '−04:00', '−04:00', 'Link to America/Rio_Branco'),
('', '', 'Brazil/DeNoronha', '', '−02:00', '−02:00', 'Link to America/Noronha'),
('', '', 'Brazil/East', '', '−03:00', '−02:00', 'Link to America/Sao_Paulo'),
('', '', 'Brazil/West', '', '−04:00', '−04:00', 'Link to America/Manaus'),
('', '', 'Canada/Atlantic', '', '−04:00', '−03:00', 'Link to America/Halifax'),
('', '', 'Canada/Central', '', '−06:00', '−05:00', 'Link to America/Winnipeg'),
('', '', 'Canada/East-Saskatchewan', '', '−06:00', '−06:00', 'Link to America/Regina'),
('', '', 'Canada/Eastern', '', '−05:00', '−04:00', 'Link to America/Toronto'),
('', '', 'Canada/Mountain', '', '−07:00', '−06:00', 'Link to America/Edmonton'),
('', '', 'Canada/Newfoundland', '', '−03:30', '−02:30', 'Link to America/St_Johns'),
('', '', 'Canada/Pacific', '', '−08:00', '−07:00', 'Link to America/Vancouver'),
('', '', 'Canada/Saskatchewan', '', '−06:00', '−06:00', 'Link to America/Regina'),
('', '', 'Canada/Yukon', '', '−08:00', '−07:00', 'Link to America/Whitehorse'),
('', '', 'CET', '', '+01:00', '+02:00', ''),
('', '', 'Chile/Continental', '', '−04:00', '−03:00', 'Link to America/Santiago'),
('', '', 'Chile/EasterIsland', '', '−06:00', '−05:00', 'Link to Pacific/Easter'),
('', '', 'CST6CDT', '', '−06:00', '−05:00', ''),
('', '', 'Cuba', '', '−05:00', '−04:00', 'Link to America/Havana'),
('', '', 'EET', '', '+02:00', '+03:00', ''),
('', '', 'Egypt', '', '+02:00', '+02:00', 'Link to Africa/Cairo'),
('', '', 'Eire', '', '+00:00', '+01:00', 'Link to Europe/Dublin'),
('', '', 'EST', '', '−05:00', '−05:00', ''),
('', '', 'EST5EDT', '', '−05:00', '−04:00', ''),
('', '', 'Etc./GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UTC', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Zulu', '', '+00:00', '+00:00', 'Link to UTC'),
('NL', '+5222+00454', 'Europe/Amsterdam', '', '+01:00', '+02:00', ''),
('AD', '+4230+00131', 'Europe/Andorra', '', '+01:00', '+02:00', ''),
('GR', '+3758+02343', 'Europe/Athens', '', '+02:00', '+03:00', ''),
('', '', 'Europe/Belfast', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RS', '+4450+02030', 'Europe/Belgrade', '', '+01:00', '+02:00', ''),
('DE', '+5230+01322', 'Europe/Berlin', '', '+01:00', '+02:00', 'In 1945, the Trizone did not follow Berlin\'s switch to DST, see Time in Germany'),
('SK', '+4809+01707', 'Europe/Bratislava', '', '+01:00', '+02:00', 'Link to Europe/Prague'),
('BE', '+5050+00420', 'Europe/Brussels', '', '+01:00', '+02:00', ''),
('RO', '+4426+02606', 'Europe/Bucharest', '', '+02:00', '+03:00', ''),
('HU', '+4730+01905', 'Europe/Budapest', '', '+01:00', '+02:00', ''),
('MD', '+4700+02850', 'Europe/Chisinau', '', '+02:00', '+03:00', ''),
('DK', '+5540+01235', 'Europe/Copenhagen', '', '+01:00', '+02:00', ''),
('IE', '+5320-00615', 'Europe/Dublin', '', '+00:00', '+01:00', ''),
('GI', '+3608-00521', 'Europe/Gibraltar', '', '+01:00', '+02:00', ''),
('GG', '+4927-00232', 'Europe/Guernsey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('FI', '+6010+02458', 'Europe/Helsinki', '', '+02:00', '+03:00', ''),
('IM', '+5409-00428', 'Europe/Isle_of_Man', '', '+00:00', '+01:00', 'Link to Europe/London'),
('TR', '+4101+02858', 'Europe/Istanbul', '', '+02:00', '+03:00', ''),
('JE', '+4912-00207', 'Europe/Jersey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RU', '+5443+02030', 'Europe/Kaliningrad', 'Moscow-01 - Kaliningrad', '+03:00', '+03:00', ''),
('UA', '+5026+03031', 'Europe/Kiev', 'most locations', '+02:00', '+03:00', ''),
('PT', '+3843-00908', 'Europe/Lisbon', 'mainland', '+00:00', '+01:00', ''),
('SI', '+4603+01431', 'Europe/Ljubljana', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('GB', '+513030-0000731', 'Europe/London', '', '+00:00', '+01:00', ''),
('LU', '+4936+00609', 'Europe/Luxembourg', '', '+01:00', '+02:00', ''),
('ES', '+4024-00341', 'Europe/Madrid', 'mainland', '+01:00', '+02:00', ''),
('MT', '+3554+01431', 'Europe/Malta', '', '+01:00', '+02:00', ''),
('AX', '+6006+01957', 'Europe/Mariehamn', '', '+02:00', '+03:00', 'Link to Europe/Helsinki'),
('BY', '+5354+02734', 'Europe/Minsk', '', '+03:00', '+03:00', ''),
('MC', '+4342+00723', 'Europe/Monaco', '', '+01:00', '+02:00', ''),
('RU', '+5545+03735', 'Europe/Moscow', 'Moscow+00 - west Russia', '+04:00', '+04:00', ''),
('', '', 'Europe/Nicosia', '', '+02:00', '+03:00', 'Link to Asia/Nicosia'),
('NO', '+5955+01045', 'Europe/Oslo', '', '+01:00', '+02:00', ''),
('FR', '+4852+00220', 'Europe/Paris', '', '+01:00', '+02:00', ''),
('ME', '+4226+01916', 'Europe/Podgorica', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('CZ', '+5005+01426', 'Europe/Prague', '', '+01:00', '+02:00', ''),
('LV', '+5657+02406', 'Europe/Riga', '', '+02:00', '+03:00', ''),
('IT', '+4154+01229', 'Europe/Rome', '', '+01:00', '+02:00', ''),
('RU', '+5312+05009', 'Europe/Samara', 'Moscow+00 - Samara, Udmurtia', '+04:00', '+04:00', ''),
('SM', '+4355+01228', 'Europe/San_Marino', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('BA', '+4352+01825', 'Europe/Sarajevo', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4457+03406', 'Europe/Simferopol', 'central Crimea', '+02:00', '+03:00', ''),
('MK', '+4159+02126', 'Europe/Skopje', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('BG', '+4241+02319', 'Europe/Sofia', '', '+02:00', '+03:00', ''),
('SE', '+5920+01803', 'Europe/Stockholm', '', '+01:00', '+02:00', ''),
('EE', '+5925+02445', 'Europe/Tallinn', '', '+02:00', '+03:00', ''),
('AL', '+4120+01950', 'Europe/Tirane', '', '+01:00', '+02:00', ''),
('', '', 'Europe/Tiraspol', '', '+02:00', '+03:00', 'Link to Europe/Chisinau'),
('UA', '+4837+02218', 'Europe/Uzhgorod', 'Ruthenia', '+02:00', '+03:00', ''),
('LI', '+4709+00931', 'Europe/Vaduz', '', '+01:00', '+02:00', ''),
('VA', '+415408+0122711', 'Europe/Vatican', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('AT', '+4813+01620', 'Europe/Vienna', '', '+01:00', '+02:00', ''),
('LT', '+5441+02519', 'Europe/Vilnius', '', '+02:00', '+03:00', ''),
('RU', '+4844+04425', 'Europe/Volgograd', 'Moscow+00 - Caspian Sea', '+04:00', '+04:00', ''),
('PL', '+5215+02100', 'Europe/Warsaw', '', '+01:00', '+02:00', ''),
('HR', '+4548+01558', 'Europe/Zagreb', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4750+03510', 'Europe/Zaporozhye', 'Zaporozh\'ye, E Lugansk / Zaporizhia, E Luhansk', '+02:00', '+03:00', ''),
('CH', '+4723+00832', 'Europe/Zurich', '', '+01:00', '+02:00', ''),
('', '', 'GB', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GB-Eire', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT-0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Greenwich', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Hong Kong', '', '+08:00', '+08:00', 'Link to Asia/Hong_Kong'),
('', '', 'HST', '', '−10:00', '−10:00', ''),
('', '', 'Iceland', '', '+00:00', '+00:00', 'Link to Atlantic/Reykjavik'),
('MG', '-1855+04731', 'Indian/Antananarivo', '', '+03:00', '+03:00', ''),
('IO', '-0720+07225', 'Indian/Chagos', '', '+06:00', '+06:00', ''),
('CX', '-1025+10543', 'Indian/Christmas', '', '+07:00', '+07:00', ''),
('CC', '-1210+09655', 'Indian/Cocos', '', '+06:30', '+06:30', ''),
('KM', '-1141+04316', 'Indian/Comoro', '', '+03:00', '+03:00', ''),
('TF', '-492110+0701303', 'Indian/Kerguelen', '', '+05:00', '+05:00', ''),
('SC', '-0440+05528', 'Indian/Mahe', '', '+04:00', '+04:00', ''),
('MV', '+0410+07330', 'Indian/Maldives', '', '+05:00', '+05:00', ''),
('MU', '-2010+05730', 'Indian/Mauritius', '', '+04:00', '+04:00', ''),
('YT', '-1247+04514', 'Indian/Mayotte', '', '+03:00', '+03:00', ''),
('RE', '-2052+05528', 'Indian/Reunion', '', '+04:00', '+04:00', ''),
('', '', 'Iran', '', '+03:30', '+04:30', 'Link to Asia/Tehran'),
('', '', 'Israel', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Jamaica', '', '−05:00', '−05:00', 'Link to America/Jamaica'),
('', '', 'Japan', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'JST-9', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'Kwajalein', '', '+12:00', '+12:00', 'Link to Pacific/Kwajalein'),
('', '', 'Libya', '', '+02:00', '+02:00', 'Link to Africa/Tripoli'),
('', '', 'MET', '', '+01:00', '+02:00', ''),
('', '', 'Mexico/BajaNorte', '', '−08:00', '−07:00', 'Link to America/Tijuana'),
('', '', 'Mexico/BajaSur', '', '−07:00', '−06:00', 'Link to America/Mazatlan'),
('', '', 'Mexico/General', '', '−06:00', '−05:00', 'Link to America/Mexico_City'),
('', '', 'MST', '', '−07:00', '−07:00', ''),
('', '', 'MST7MDT', '', '−07:00', '−06:00', ''),
('', '', 'Navajo', '', '−07:00', '−06:00', 'Link to America/Denver'),
('', '', 'NZ', '', '+12:00', '+13:00', 'Link to Pacific/Auckland'),
('', '', 'NZ-CHAT', '', '+12:45', '+13:45', 'Link to Pacific/Chatham'),
('WS', '-1350-17144', 'Pacific/Apia', '', '+13:00', '+14:00', ''),
('NZ', '-3652+17446', 'Pacific/Auckland', 'most locations', '+12:00', '+13:00', ''),
('NZ', '-4357-17633', 'Pacific/Chatham', 'Chatham Islands', '+12:45', '+13:45', ''),
('FM', '+0725+15147', 'Pacific/Chuuk', 'Chuuk (Truk) and Yap', '+10:00', '+10:00', ''),
('CL', '-2709-10926', 'Pacific/Easter', 'Easter Island & Sala y Gomez', '−06:00', '−05:00', ''),
('VU', '-1740+16825', 'Pacific/Efate', '', '+11:00', '+11:00', ''),
('KI', '-0308-17105', 'Pacific/Enderbury', 'Phoenix Islands', '+13:00', '+13:00', ''),
('TK', '-0922-17114', 'Pacific/Fakaofo', '', '+13:00', '+13:00', ''),
('FJ', '-1808+17825', 'Pacific/Fiji', '', '+12:00', '+13:00', ''),
('TV', '-0831+17913', 'Pacific/Funafuti', '', '+12:00', '+12:00', ''),
('EC', '-0054-08936', 'Pacific/Galapagos', 'Galapagos Islands', '−06:00', '−06:00', ''),
('PF', '-2308-13457', 'Pacific/Gambier', 'Gambier Islands', '−09:00', '−09:00', ''),
('SB', '-0932+16012', 'Pacific/Guadalcanal', '', '+11:00', '+11:00', ''),
('GU', '+1328+14445', 'Pacific/Guam', '', '+10:00', '+10:00', ''),
('US', '+211825-1575130', 'Pacific/Honolulu', 'Hawaii', '−10:00', '−10:00', ''),
('UM', '+1645-16931', 'Pacific/Johnston', 'Johnston Atoll', '−10:00', '−10:00', ''),
('KI', '+0152-15720', 'Pacific/Kiritimati', 'Line Islands', '+14:00', '+14:00', ''),
('FM', '+0519+16259', 'Pacific/Kosrae', 'Kosrae', '+11:00', '+11:00', ''),
('MH', '+0905+16720', 'Pacific/Kwajalein', 'Kwajalein', '+12:00', '+12:00', ''),
('MH', '+0709+17112', 'Pacific/Majuro', 'most locations', '+12:00', '+12:00', ''),
('PF', '-0900-13930', 'Pacific/Marquesas', 'Marquesas Islands', '−09:30', '−09:30', ''),
('UM', '+2813-17722', 'Pacific/Midway', 'Midway Islands', '−11:00', '−11:00', ''),
('NR', '-0031+16655', 'Pacific/Nauru', '', '+12:00', '+12:00', ''),
('NU', '-1901-16955', 'Pacific/Niue', '', '−11:00', '−11:00', ''),
('NF', '-2903+16758', 'Pacific/Norfolk', '', '+11:30', '+11:30', ''),
('NC', '-2216+16627', 'Pacific/Noumea', '', '+11:00', '+11:00', ''),
('AS', '-1416-17042', 'Pacific/Pago_Pago', '', '−11:00', '−11:00', ''),
('PW', '+0720+13429', 'Pacific/Palau', '', '+09:00', '+09:00', ''),
('PN', '-2504-13005', 'Pacific/Pitcairn', '', '−08:00', '−08:00', ''),
('FM', '+0658+15813', 'Pacific/Pohnpei', 'Pohnpei (Ponape)', '+11:00', '+11:00', ''),
('', '', 'Pacific/Ponape', '', '+11:00', '+11:00', 'Link to Pacific/Pohnpei'),
('PG', '-0930+14710', 'Pacific/Port_Moresby', '', '+10:00', '+10:00', ''),
('CK', '-2114-15946', 'Pacific/Rarotonga', '', '−10:00', '−10:00', ''),
('MP', '+1512+14545', 'Pacific/Saipan', '', '+10:00', '+10:00', ''),
('', '', 'Pacific/Samoa', '', '−11:00', '−11:00', 'Link to Pacific/Pago_Pago'),
('PF', '-1732-14934', 'Pacific/Tahiti', 'Society Islands', '−10:00', '−10:00', ''),
('KI', '+0125+17300', 'Pacific/Tarawa', 'Gilbert Islands', '+12:00', '+12:00', ''),
('TO', '-2110-17510', 'Pacific/Tongatapu', '', '+13:00', '+13:00', ''),
('', '', 'Pacific/Truk', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('UM', '+1917+16637', 'Pacific/Wake', 'Wake Island', '+12:00', '+12:00', ''),
('WF', '-1318-17610', 'Pacific/Wallis', '', '+12:00', '+12:00', ''),
('', '', 'Pacific/Yap', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('', '', 'Poland', '', '+01:00', '+02:00', 'Link to Europe/Warsaw'),
('', '', 'Portugal', '', '+00:00', '+01:00', 'Link to Europe/Lisbon'),
('', '', 'PRC', '', '+08:00', '+08:00', 'Link to Asia/Shanghai'),
('', '', 'PST8PDT', '', '−08:00', '−07:00', ''),
('', '', 'ROC', '', '+08:00', '+08:00', 'Link to Asia/Taipei'),
('', '', 'ROK', '', '+09:00', '+09:00', 'Link to Asia/Seoul'),
('', '', 'Singapore', '', '+08:00', '+08:00', 'Link to Asia/Singapore'),
('', '', 'Turkey', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('', '', 'UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'US/Alaska', '', '−09:00', '−08:00', 'Link to America/Anchorage'),
('', '', 'US/Aleutian', '', '−10:00', '−09:00', 'Link to America/Adak'),
('', '', 'US/Arizona', '', '−07:00', '−07:00', 'Link to America/Phoenix'),
('', '', 'US/Central', '', '−06:00', '−05:00', 'Link to America/Chicago'),
('', '', 'US/East-Indiana', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('', '', 'US/Eastern', '', '−05:00', '−04:00', 'Link to America/New_York'),
('', '', 'US/Hawaii', '', '−10:00', '−10:00', 'Link to Pacific/Honolulu'),
('', '', 'US/Indiana-Starke', '', '−06:00', '−05:00', 'Link to America/Indiana/Knox'),
('', '', 'US/Michigan', '', '−05:00', '−04:00', 'Link to America/Detroit'),
('', '', 'US/Mountain', '', '−07:00', '−06:00', 'Link to America/Denver'),
('', '', 'US/Pacific', '', '−08:00', '−07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Pacific-New', '', '−08:00', '−07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Samoa', '', '−11:00', '−11:00', 'Link to Pacific/Pago_Pago'),
('', '', 'UTC', '', '+00:00', '+00:00', ''),
('', '', 'W-SU', '', '+04:00', '+04:00', 'Link to Europe/Moscow'),
('', '', 'WET', '', '+00:00', '+01:00', ''),
('', '', 'Zulu', '', '+00:00', '+00:00', 'Link to UTC');

-- --------------------------------------------------------

--
-- Table structure for table `cr_card_images`
--

CREATE TABLE `cr_card_images` (
  `card_image_id` int(11) NOT NULL,
  `image_name` varchar(20) DEFAULT NULL,
  `alt_text` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_card_images`
--

INSERT INTO `cr_card_images` (`card_image_id`, `image_name`, `alt_text`, `status`) VALUES
(2, 'card_226.png', 'hipecard', 'Active'),
(3, 'card_879.png', 'visa', 'Active'),
(4, 'card_941.png', 'Alelo', 'Active'),
(11, 'card_957.png', 'Rupay', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_cities`
--

CREATE TABLE `cr_cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(512) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_cities`
--

INSERT INTO `cr_cities` (`city_id`, `city_name`, `status`) VALUES
(5, 'Delhi', 'Active'),
(6, 'Gurgaon', 'Active'),
(7, 'Noida', 'Active'),
(9, 'Chennai', 'Active'),
(10, 'Bangalore', 'Active'),
(11, 'Shimla', 'Active'),
(12, 'Jaipur', 'Active'),
(13, 'Warangal', 'Active'),
(14, 'Karimnagar', 'Active'),
(15, 'Nizamabad', 'Active'),
(16, 'Nalgonda', 'Active'),
(17, 'Khammam', 'Active'),
(18, 'Adilabad', 'Active'),
(19, 'Mahboobnagar', 'Active'),
(20, 'Medak', 'Active'),
(21, 'Rangareddy', 'Active'),
(22, 'Thirupathi', 'Active'),
(23, 'Vijayawada', 'Active'),
(24, 'Visakhapatnam', 'Active'),
(25, 'Guntur', 'Active'),
(26, 'Nellore', 'Active'),
(27, 'Rajahmundry', 'Active'),
(28, 'Kurnool', 'Active'),
(29, 'Kakinada', 'Active'),
(30, 'Kadapa', 'Inactive'),
(31, 'Anantapur', 'Active'),
(32, 'Eluru', 'Active'),
(33, 'Vizianagara,', 'Active'),
(34, 'Adoni', 'Active'),
(35, 'Ongole', 'Active'),
(36, 'Nandyal', 'Active'),
(37, 'Coimbatore', 'Active'),
(38, 'Madurai', 'Active'),
(39, 'Thiruchirapalli', 'Active'),
(40, 'Tiruppur', 'Active'),
(41, 'Salem', 'Active'),
(42, 'Erode', 'Active'),
(43, 'Tirunelveli', 'Active'),
(44, 'Vellore', 'Active'),
(45, 'Thoothukudi', 'Active'),
(46, 'Thanjavur', 'Active'),
(47, 'Didigul', 'Active'),
(48, 'Kochi', 'Active'),
(49, 'Kozhikode', 'Active'),
(50, 'Thrissur', 'Active'),
(51, 'Malappuram', 'Active'),
(52, 'Thiruvananthapuram', 'Active'),
(53, 'Kannur', 'Active'),
(54, 'Kollam', 'Active'),
(55, 'Cherthala', 'Active'),
(56, 'Kayamkulam', 'Active'),
(57, 'Kottayam', 'Active'),
(58, 'Palakkad', 'Active'),
(59, 'Alappuzha', 'Active'),
(60, 'Ottappalem', 'Active'),
(61, 'Kanhagod', 'Active'),
(62, 'Changanasserry', 'Active'),
(63, 'Chalakkudy', 'Active'),
(64, 'Kothamangalam', 'Active'),
(65, 'Mumbai', 'Active'),
(66, 'Pune', 'Active'),
(67, 'Pimpri Chinchwad', 'Active'),
(68, 'Kalyan-Dombivali', 'Active'),
(69, 'Vasai-Virar', 'Active'),
(70, 'Solapur', 'Active'),
(71, 'Biwandi', 'Active'),
(72, 'Nanded', 'Active'),
(73, 'Kolhapur', 'Active'),
(74, 'Sangli', 'Active'),
(75, 'Jalgaon', 'Active'),
(76, 'Akola', 'Active'),
(77, 'Latur', 'Active'),
(78, 'Dhule', 'Active'),
(79, 'Ahmednagar', 'Active'),
(80, 'Chandrapur', 'Active'),
(81, 'Parbhani', 'Active'),
(82, 'Ujjain', 'Active'),
(83, 'Dewas', 'Active'),
(84, 'Satna', 'Active'),
(85, 'Ratlam', 'Active'),
(86, 'Rewa', 'Active'),
(87, 'Murwara', 'Active'),
(88, 'Singrauli', 'Active'),
(89, 'Burhanpur', 'Active'),
(90, 'Khandwa', 'Active'),
(91, 'Morena', 'Active'),
(92, 'Bhind', 'Active'),
(93, 'Vidisha', 'Active'),
(94, 'Mandsaur', 'Active'),
(95, 'Pithampur', 'Active'),
(96, 'Hoshangabad', 'Active'),
(97, 'Betul', 'Active'),
(98, 'Seoni', 'Active'),
(99, 'Datia', 'Active'),
(100, 'Nagda', 'Active'),
(101, 'Bhubaneshwar', 'Active'),
(102, 'Cuttack', 'Active'),
(103, 'Bramhapur', 'Active'),
(104, 'Puri', 'Active'),
(105, 'Guwahati', 'Active'),
(106, 'Silchar', 'Active'),
(107, 'Dibrugarh', 'Active'),
(108, 'Jorhat', 'Active'),
(109, 'Nagoan', 'Active'),
(110, 'Tinsukia', 'Active'),
(111, 'Bongaigaon', 'Active'),
(112, 'Tezpur', 'Active'),
(113, 'Solan', 'Active'),
(114, 'Dharmsala', 'Active'),
(115, 'Baddi', 'Active'),
(116, 'Nahan', 'Active'),
(117, 'Mandi', 'Active'),
(118, 'Paonta Sahib', 'Active'),
(119, 'Sundar Nagar', 'Active'),
(120, 'Chamba', 'Active'),
(121, 'Kullu', 'Active'),
(122, 'Lucknow', 'Active'),
(123, 'Kanpur', 'Active'),
(124, 'Moradabad', 'Active'),
(125, 'Saharanpur', 'Active'),
(126, 'Muzzaffarnagar', 'Active'),
(127, 'Mathura', 'Active'),
(128, 'Maunath Bhanjan', 'Active'),
(129, 'Hapur', 'Active'),
(130, 'Etawah', 'Active'),
(131, 'Sambhal', 'Active'),
(132, 'Fatehpur', 'Active'),
(133, 'Raebareli', 'Active'),
(134, 'Bahraich', 'Active'),
(135, 'Unnao', 'Active'),
(136, 'Jaunpur', 'Active'),
(137, 'Lalitpur', 'Active'),
(138, 'Deoria', 'Active'),
(139, 'Basti', 'Active'),
(140, 'Chandausi', 'Active'),
(141, 'Akbarpur', 'Active'),
(142, 'Shikohabad', 'Active'),
(143, 'Shamli', 'Active'),
(144, 'Khair', 'Active'),
(145, 'Kasgunj', 'Active'),
(146, 'Bihar Sharif', 'Active'),
(147, 'Arrah', 'Active'),
(148, 'Begusarai', 'Active'),
(149, 'Munger', 'Active'),
(150, 'Saharsa', 'Active'),
(151, 'Sasaram', 'Active'),
(152, 'Hajipur', 'Active'),
(153, 'Dehri', 'Active'),
(154, 'Siwan', 'Active'),
(155, 'Motihari', 'Active'),
(156, 'Bagaha', 'Active'),
(157, 'Kishanganj', 'Active'),
(158, 'Jamalpur', 'Active'),
(159, 'Jehanabad', 'Active'),
(160, 'Aurangabad', 'Active'),
(161, 'Tawang', 'Active'),
(162, 'Ziro', 'Active'),
(163, 'Deomali', 'Active'),
(164, 'Pasighat', 'Active'),
(165, 'Bomdila', 'Active'),
(166, 'Malinithan', 'Active'),
(167, 'Hazaribagh', 'Active'),
(168, 'Jamshedpur', 'Active'),
(169, 'Ghatshila', 'Active'),
(170, 'Bokaro', 'Active'),
(171, 'Deoghar', 'Active'),
(172, 'Dumka', 'Active'),
(173, 'Gomoh', 'Active'),
(174, 'Ghorabandha', 'Active'),
(175, 'Gidi', 'Active'),
(176, 'Rajnandgaon', 'Active'),
(177, 'Raipur', 'Active'),
(178, 'Bhilai', 'Active'),
(179, 'Kawardha', 'Active'),
(180, 'Dongarghar', 'Active'),
(181, 'Ratanpur', 'Active'),
(182, 'Jagdalpur', 'Active'),
(183, 'Dantewada', 'Active'),
(184, 'Bilaspur City', 'Active'),
(185, 'Bade Bachali', 'Active'),
(186, 'Bag Bahara', 'Active'),
(187, 'Basna', 'Active'),
(188, 'Bodri', 'Active'),
(189, 'Dalli Rajhara', 'Active'),
(190, 'Chharchha  ', 'Active'),
(191, 'Chhuikhadan  ', 'Active'),
(192, ' Deori  ', 'Active'),
(193, 'Dongargaon', 'Active'),
(194, 'Jhagrakhand', 'Active'),
(195, 'Kirandul', 'Active'),
(196, 'Margoa', 'Active'),
(197, 'Pernem', 'Active'),
(198, 'Curti', 'Active'),
(199, ' Curchorem Cacora  ', 'Active'),
(200, 'Chicalim  ', 'Active'),
(201, 'Davorlim  ', 'Active'),
(202, 'Guirim  ', 'Active'),
(203, 'Panaji', 'Active'),
(204, 'Marmagao  ', 'Active'),
(205, 'Bishnupur', 'Active'),
(206, 'Churachandpur', 'Active'),
(207, ' Moirang  ', 'Active'),
(208, 'Moreh  ', 'Active'),
(209, ' Ukhrul ', 'Active'),
(210, 'Jiribam ', 'Active'),
(211, 'Mayang Imphal  ', 'Active'),
(212, 'Khongman  ', 'Active'),
(213, 'Naoriya Pakhanglakpa  ', 'Active'),
(214, 'Nambol  ', 'Active'),
(215, ' Ningthoukhong  ', 'Active'),
(216, 'Mamit', 'Active'),
(217, 'Khawzawl  ', 'Active'),
(218, 'Khawhai  ', 'Active'),
(219, 'Lunglei  ', 'Active'),
(220, 'Lawngtlai  ', 'Active'),
(221, 'Barrackpur', 'Active'),
(222, 'Murshidabad ', 'Active'),
(223, ' Cooch Behar ', 'Active'),
(224, ' Asansol', 'Active'),
(225, '  Dakshin Baguan', 'Active'),
(226, '  Bawali ', 'Active'),
(227, '  Jalpaiguri  ', 'Active'),
(228, ' Howrah  ', 'Active'),
(229, 'Mayapur  ', 'Active'),
(230, 'Geonkhali  ', 'Active'),
(231, ' Dakshin Jhapardaha ', 'Active'),
(232, ' Dalkhola ', 'Active'),
(233, 'Dalurband ', 'Active'),
(234, 'Chhora  ', 'Active'),
(235, ' Deuli  ', 'Active'),
(236, 'Dhulian  ', 'Active'),
(237, 'Guskara  ', 'Active'),
(238, 'Junagadh ', 'Active'),
(239, 'Botad  ', 'Active'),
(240, 'Chandkheda  ', 'Active'),
(241, 'Chandlodiya  ', 'Active'),
(242, 'Chanod  ', 'Active'),
(243, ' Dahegam  ', 'Active'),
(244, 'Dahod  ', 'Active'),
(245, 'Damnagar  ', 'Active'),
(246, 'Chhota Udaipur  ', 'Active'),
(247, 'Chikhli  ', 'Active'),
(248, 'Deesa  ', 'Active'),
(249, 'Devgadh Baria  ', 'Active'),
(250, 'Dhola  ', 'Active'),
(251, 'Dholka  ', 'Active'),
(252, 'Dhoraji  ', 'Active'),
(253, 'Dhrol  ', 'Active'),
(254, 'Freelandgunj  ', 'Active'),
(255, ' Gadhada  ', 'Active'),
(256, ' Gandevi  ', 'Active'),
(257, 'Ghatlodiya ', 'Active'),
(258, 'Badrinathpuri ', 'Active'),
(259, 'Almora', 'Active'),
(260, ' Landour', 'Active'),
(261, '  Dharchula  ', 'Active'),
(262, 'Bageshwar ', 'Active'),
(263, 'Champawat  ', 'Active'),
(264, 'Pauri Garhwal', 'Active'),
(265, 'Jyotirmath', 'Active'),
(266, ' Kedarnath  ', 'Active'),
(267, 'Tehri  ', 'Active'),
(268, 'Uttarakashi  ', 'Active'),
(269, '  Askot', 'Active'),
(270, '  Barkot  ', 'Active'),
(271, 'Bugyal  ', 'Active'),
(272, 'Dev Prayag  ', 'Active'),
(273, 'Dineshpur  ', 'Active'),
(274, 'Dogadda  ', 'Active'),
(275, 'Doiwala  ', 'Active'),
(276, 'Dwarahat  ', 'Active'),
(277, 'Gadarpur  ', 'Active'),
(278, 'Gochar  ', 'Active'),
(279, 'Kachnal Gosain  ', 'Active'),
(280, ' Laksar  ', 'Active'),
(281, 'Kela Khera  ', 'Active'),
(282, 'Manglaur  ', 'Active'),
(283, 'Khatima  ', 'Active'),
(284, 'Kashirampur', 'Active'),
(285, '  Kichha  ', 'Active'),
(286, 'Kaladungi  ', 'Active'),
(287, 'Narendra Nagar  ', 'Active'),
(288, 'Ghezing  ', 'Active'),
(289, 'Mangan  ', 'Active'),
(290, 'Namchi  ', 'Active'),
(291, 'Rabdentse', 'Active'),
(292, ' Udaipur', 'Active'),
(293, 'Jaisalmer ', 'Active'),
(294, 'Ajmer ', 'Active'),
(295, '  Chittorgarh City', 'Active'),
(296, 'Jodhpur', 'Active'),
(297, ' Bundi', 'Active'),
(298, 'Alwar ', 'Active'),
(299, 'Bikaner ', 'Active'),
(300, 'Pushkar ', 'Active'),
(301, 'Kota', 'Active'),
(302, 'Nawalgarh ', 'Active'),
(303, 'Mandawa', 'Active'),
(304, ' Osian  ', 'Active'),
(305, 'Sirohi ', 'Active'),
(306, 'Jobner  ', 'Active'),
(307, 'Lakheri  ', 'Active'),
(308, 'Laxmangarh ', 'Active'),
(309, 'Ladnu ', 'Active'),
(310, 'Lalsot  ', 'Active'),
(311, 'Kaithoon  ', 'Active'),
(312, ' Kekri  ', 'Active'),
(313, 'Malpura  ', 'Active'),
(314, 'Mandalgarh  ', 'Active'),
(315, ' Khairthal  ', 'Active'),
(316, 'Manohar Thana  ', 'Active'),
(317, 'Kumbhkot  ', 'Active'),
(318, 'Merta ', 'Active'),
(319, 'Mukandgarh  ', 'Active'),
(320, 'Nainwa  ', 'Active'),
(321, 'Kapasan  ', 'Active'),
(322, 'Kaprain  ', 'Active'),
(323, 'Kiranipura  ', 'Active'),
(324, 'Kishangarh Renwal  ', 'Active'),
(325, 'Kherli  ', 'Active'),
(326, 'Kherwara Chhaoni  ', 'Active'),
(327, 'Kuchaman  ', 'Active'),
(328, 'Kuchera  ', 'Active'),
(329, 'Sriganganagar  ', 'Active'),
(330, 'Sanganer  ', 'Active'),
(331, 'Behror  ', 'Active'),
(332, 'Jamwa Ramgarh  ', 'Active'),
(333, 'Beawar  ', 'Active'),
(334, 'Mysore ', 'Active'),
(335, 'Hampi  ', 'Active'),
(336, 'Chikballapur ', 'Active'),
(337, 'Bijapur ', 'Active'),
(338, ' Madikeri', 'Active'),
(339, 'Ullal', 'Active'),
(340, 'Balligavi  ', 'Active'),
(341, 'Yellapur  ', 'Active'),
(342, 'Somwarpet  ', 'Active'),
(343, 'Virajpet  ', 'Active'),
(344, 'Shimoga  ', 'Active'),
(345, 'Karwar  ', 'Active'),
(346, 'Udupi  ', 'Active'),
(347, 'Vijayanagara  ', 'Active'),
(348, 'Annigeri  ', 'Active'),
(349, 'Hassan  ', 'Active'),
(350, 'Hospet  ', 'Active'),
(351, 'Bidar  ', 'Active'),
(352, 'Gulbarga  ', 'Active'),
(353, 'Belur  ', 'Active'),
(354, 'Belgaum  ', 'Active'),
(355, 'Bagalkot  ', 'Active'),
(356, ' Basavakalyan  ', 'Active'),
(357, 'Basavana Bagevadi ', 'Active'),
(358, 'Devanahalli  ', 'Active'),
(359, 'Dharwad  ', 'Active'),
(360, 'Dod Ballapur  ', 'Active'),
(361, 'Hebbalu  ', 'Active'),
(362, ' Hindalgi  ', 'Active'),
(363, 'Malavalli  ', 'Active'),
(364, ' Kudligi  ', 'Active'),
(365, 'Khanapur  ', 'Active'),
(366, 'Kundgol  ', 'Active'),
(367, 'Kunigal  ', 'Active'),
(368, 'Krishnarajasagara  ', 'Active'),
(369, 'Krishnarajpet  ', 'Active'),
(370, 'Narasimharajapura  ', 'Active'),
(371, 'Naregal  ', 'Active'),
(372, ' Nipani  ', 'Active'),
(373, 'Venur  ', 'Active'),
(374, '  Yamuna Nagar', 'Active'),
(375, ' Barwala  ', 'Active'),
(376, 'Bawani Khera  ', 'Active'),
(377, 'Buria  ', 'Active'),
(378, 'Chhachhrauli  ', 'Active'),
(379, 'Dharuhera  ', 'Active'),
(380, ' Farrukhnagar  ', 'Active'),
(381, 'Ganaur  ', 'Active'),
(382, ' Gharaunda  ', 'Active'),
(383, 'Gohana  ', 'Active'),
(384, 'Haileymandi  ', 'Active'),
(385, 'Hassanpur  ', 'Active'),
(386, 'Ladwa  ', 'Active'),
(387, 'Mandi Dabwali  ', 'Active'),
(388, 'Mustafabad  ', 'Active'),
(389, 'Kardhan  ', 'Active'),
(390, 'Kalan Wali  ', 'Active'),
(391, 'Naraingarh  ', 'Active'),
(392, 'Narnaul  ', 'Active'),
(393, 'Narnaund  ', 'Active'),
(394, 'Agroha  ', 'Active'),
(395, 'Kurukshetra  ', 'Active'),
(397, 'Babiyal ', 'Active'),
(398, ' Ladakh', 'Active'),
(399, 'Kargil ', 'Active'),
(400, 'Basholi  ', 'Active'),
(401, 'Bijbehara  ', 'Active'),
(402, ' Gulmarg  ', 'Active'),
(403, 'Poonch', 'Active'),
(404, 'Dras  ', 'Active'),
(405, 'Katra  ', 'Active'),
(406, '  Pahalgam  ', 'Active'),
(407, ' Sonamarg  ', 'Active'),
(408, 'Akhnoor  ', 'Active'),
(409, 'Badami Bagh  ', 'Active'),
(410, 'Bari Brahmana  ', 'Active'),
(411, 'Charari Sharief  ', 'Active'),
(412, ' Chenani  ', 'Active'),
(413, ' Duru Verinag  ', 'Active'),
(414, 'Ganderbal ', 'Active'),
(415, 'Gho Manhasan  ', 'Active'),
(416, 'Hajan  ', 'Active'),
(417, 'Gorah Salathian  ', 'Active'),
(418, 'Handwara  ', 'Active'),
(419, 'Hiranagar  ', 'Active'),
(420, 'Kukernag  ', 'Active'),
(421, ' Kunzer  ', 'Active'),
(422, 'Kupwara  ', 'Active'),
(423, 'Kishtwar  ', 'Active'),
(424, '  Khour  ', 'Active'),
(425, 'Khrew', 'Active'),
(426, 'Panamik  ', 'Active'),
(427, 'Stok  ', 'Active'),
(428, 'Shey  ', 'Active'),
(429, 'Tikse  ', 'Active'),
(430, 'Matho  ', 'Active'),
(431, 'Hemis  ', 'Active'),
(432, 'Sumtsek  ', 'Active'),
(433, 'Lamayuru  ', 'Active'),
(434, 'Phyang  ', 'Active'),
(435, ' Spitok  ', 'Active'),
(436, 'Kumarghat  ', 'Active'),
(437, 'Unakoti  ', 'Active'),
(438, 'Badharghat  ', 'Active'),
(439, 'Dharmanagar  ', 'Active'),
(440, 'Gakulnagar', 'Active'),
(441, 'Kunjaban  ', 'Active'),
(442, 'Mokokchung', 'Active'),
(443, 'Amarpur  ', 'Active'),
(444, 'Sabroom  ', 'Active'),
(445, 'Mon', 'Active'),
(446, 'Belonia  ', 'Active'),
(447, 'Kailashahar  ', 'Active'),
(448, '  Cherrapunj', 'Active'),
(449, '  Mairang  ', 'Active'),
(450, '  Nongthymmai  ', 'Active'),
(451, 'Wokha', 'Active'),
(452, 'Baghmara  ', 'Active'),
(453, 'Sohra  ', 'Active'),
(454, 'Pathankot', 'Active'),
(455, 'Varanasi ', 'Active'),
(456, 'Ludhiana', 'Active'),
(457, ' Kausambi ', 'Active'),
(458, ' Jhansi  ', 'Active'),
(459, 'Batala', 'Active'),
(460, 'Bansi  ', 'Active'),
(461, ' Itaunja  ', 'Active'),
(462, 'Garhshanker  ', 'Active'),
(463, 'Muktsar  ', 'Active'),
(464, ' Moonak  ', 'Active'),
(465, 'Kot Fatta  ', 'Active'),
(466, 'Gurdaspur', 'Active'),
(467, 'Ghanaur  ', 'Active'),
(468, 'Gidderbaha  ', 'Active'),
(469, 'Moga', 'Active'),
(470, 'Budhlada  ', 'Active'),
(471, 'Ahmedgarh  ', 'Active'),
(472, 'Bariwala  ', 'Active'),
(473, 'Beas  ', 'Active'),
(474, 'Khanna  ', 'Active'),
(475, 'Jandiala Guru  ', 'Active'),
(476, 'Amloh  ', 'Active'),
(477, 'Mukerian  ', 'Active'),
(478, 'Dera Bassi  ', 'Active'),
(479, 'Dharamkot  ', 'Active'),
(480, 'Firozpur ', 'Active'),
(481, ' Majitha  ', 'Active'),
(482, 'Dirba  ', 'Active'),
(483, 'Faridkot  ', 'Active'),
(484, 'Khanauri  ', 'Active'),
(485, 'Jhusi  ', 'Active'),
(486, 'Hargaon  ', 'Active'),
(487, 'Sankasya  ', 'Active'),
(488, 'Maudaha  ', 'Active'),
(489, 'Kailashpur  ', 'Active'),
(490, 'Milak  ', 'Active'),
(491, 'Khaga  ', 'Active'),
(492, '  Indore', 'Active'),
(493, 'Indore', 'Active'),
(494, 'Jabalpur ', 'Active'),
(495, ' Hindoria  ', 'Active'),
(496, 'Joura  ', 'Active'),
(497, 'Anuppur  ', 'Active'),
(498, 'Khetia  ', 'Active'),
(500, 'Marredpally', 'Active'),
(503, 'Secunderabad', 'Active'),
(505, 'Bapatla', 'Active'),
(506, 'repalle', 'Inactive'),
(507, 'Egmore', 'Active'),
(508, 'Nagapatnam', 'Active'),
(511, 'Sidipeta', 'Inactive'),
(514, 'Bengaluru', 'Active'),
(515, 'Surabaya', 'Active'),
(516, 'Update City', 'Active'),
(517, 'Malkajgiri', 'Active'),
(519, 'Jamal', 'Active'),
(520, 'Katre', 'Active'),
(521, 'utarkand', 'Active'),
(522, 'malkarram', 'Active'),
(523, 'test1', 'Active'),
(525, 'Test City ', 'Active'),
(526, 'Boston', 'Active'),
(527, 'Denver', 'Active'),
(528, 'Brisbane', 'Active'),
(529, 'Hyderabad', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_country`
--

CREATE TABLE `cr_country` (
  `id` int(11) UNSIGNED NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_country`
--

INSERT INTO `cr_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263),
(240, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381),
(241, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', 0, 0),
(242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382),
(243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358),
(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(245, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599),
(246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44),
(247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44),
(248, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44),
(249, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381),
(250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590),
(251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590),
(252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1),
(253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211);

-- --------------------------------------------------------

--
-- Table structure for table `cr_currency`
--

CREATE TABLE `cr_currency` (
  `currency_code_alpha` char(3) NOT NULL,
  `currency_code_numeric` varchar(3) DEFAULT NULL,
  `currency_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cr_currency`
--

INSERT INTO `cr_currency` (`currency_code_alpha`, `currency_code_numeric`, `currency_name`) VALUES
('AFN', '971', 'Afghani'),
('DZD', '12', 'Algerian Dinar'),
('ARS', '32', 'Argentine Peso'),
('AMD', '51', 'Armenian Dram'),
('AWG', '533', 'Aruban Guilder'),
('AUD', '36', 'Australian Dollar'),
('AZN', '944', 'Azerbaijanian Manat'),
('BSD', '44', 'Bahamian Dollar'),
('BHD', '48', 'Bahraini Dinar'),
('THB', '764', 'Baht'),
('PAB', '590', 'Balboa'),
('BBD', '52', 'Barbados Dollar'),
('BYR', '974', 'Belarussian Ruble'),
('BZD', '84', 'Belize Dollar'),
('BMD', '60', 'Bermudian Dollar (customarily known as Bermuda Dollar)'),
('VEF', '937', 'Bolivar Fuerte'),
('BOB', '68', 'Boliviano'),
('XBA', '955', 'Bond Markets Units European Composite Unit (EURCO)'),
('BRL', '986', 'Brazilian Real'),
('BND', '96', 'Brunei Dollar'),
('BGN', '975', 'Bulgarian Lev'),
('BIF', '108', 'Burundi Franc'),
('CAD', '124', 'Canadian Dollar'),
('CVE', '132', 'Cape Verde Escudo'),
('KYD', '136', 'Cayman Islands Dollar'),
('GHS', '936', 'Cedi'),
('XOF', '952', 'CFA Franc BCEAO'),
('XAF', '950', 'CFA Franc BEAC'),
('XPF', '953', 'CFP Franc'),
('CLP', '152', 'Chilean Peso'),
('XTS', '963', 'Codes specifically reserved for testing purposes'),
('COP', '170', 'Colombian Peso'),
('KMF', '174', 'Comoro Franc'),
('CDF', '976', 'Congolese Franc'),
('BAM', '977', 'Convertible Marks'),
('NIO', '558', 'Cordoba Oro'),
('CRC', '188', 'Costa Rican Colon'),
('HRK', '191', 'Croatian Kuna'),
('CUP', '192', 'Cuban Peso'),
('CZK', '203', 'Czech Koruna'),
('GMD', '270', 'Dalasi'),
('DKK', '208', 'Danish Krone'),
('MKD', '807', 'Denar'),
('DJF', '262', 'Djibouti Franc'),
('STD', '678', 'Dobra'),
('DOP', '214', 'Dominican Peso'),
('VND', '704', 'Dong'),
('XCD', '951', 'East Caribbean Dollar'),
('EGP', '818', 'Egyptian Pound'),
('SVC', '222', 'El Salvador Colon'),
('ETB', '230', 'Ethiopian Birr'),
('EUR', '978', 'Euro'),
('XBB', '956', 'European Monetary Unit (E.M.U.-6)'),
('XBD', '958', 'European Unit of Account 17 (E.U.A.-17)'),
('XBC', '957', 'European Unit of Account 9 (E.U.A.-9)'),
('FKP', '238', 'Falkland Islands Pound'),
('FJD', '242', 'Fiji Dollar'),
('HUF', '348', 'Forint'),
('GIP', '292', 'Gibraltar Pound'),
('XAU', '959', 'Gold'),
('HTG', '332', 'Gourde'),
('PYG', '600', 'Guarani'),
('GNF', '324', 'Guinea Franc'),
('GWP', '624', 'Guinea-Bissau Peso'),
('GYD', '328', 'Guyana Dollar'),
('HKD', '344', 'Hong Kong Dollar'),
('UAH', '980', 'Hryvnia'),
('ISK', '352', 'Iceland Krona'),
('INR', '356', 'Indian Rupee'),
('IRR', '364', 'Iranian Rial'),
('IQD', '368', 'Iraqi Dinar'),
('JMD', '388', 'Jamaican Dollar'),
('JOD', '400', 'Jordanian Dinar'),
('KES', '404', 'Kenyan Shilling'),
('PGK', '598', 'Kina'),
('LAK', '418', 'Kip'),
('EEK', '233', 'Kroon'),
('KWD', '414', 'Kuwaiti Dinar'),
('MWK', '454', 'Kwacha'),
('AOA', '973', 'Kwanza'),
('MMK', '104', 'Kyat'),
('GEL', '981', 'Lari'),
('LVL', '428', 'Latvian Lats'),
('LBP', '422', 'Lebanese Pound'),
('ALL', '8', 'Lek'),
('HNL', '340', 'Lempira'),
('SLL', '694', 'Leone'),
('LRD', '430', 'Liberian Dollar'),
('LYD', '434', 'Libyan Dinar'),
('SZL', '748', 'Lilangeni'),
('LTL', '440', 'Lithuanian Litas'),
('LSL', '426', 'Loti'),
('MGA', '969', 'Malagasy Ariary'),
('MYR', '458', 'Malaysian Ringgit'),
('TMT', '934', 'Manat'),
('MUR', '480', 'Mauritius Rupee'),
('MZN', '943', 'Metical'),
('MXN', '484', 'Mexican Peso'),
('MXV', '979', 'Mexican Unidad de Inversion (UDI)'),
('MDL', '498', 'Moldovan Leu'),
('MAD', '504', 'Moroccan Dirham'),
('BOV', '984', 'Mvdol'),
('NGN', '566', 'Naira'),
('ERN', '232', 'Nakfa'),
('NAD', '516', 'Namibia Dollar'),
('NPR', '524', 'Nepalese Rupee'),
('ANG', '532', 'Netherlands Antillian Guilder'),
('ILS', '376', 'New Israeli Sheqel'),
('RON', '946', 'New Leu'),
('TWD', '901', 'New Taiwan Dollar'),
('NZD', '554', 'New Zealand Dollar'),
('BTN', '64', 'Ngultrum'),
('KPW', '408', 'North Korean Won'),
('NOK', '578', 'Norwegian Krone'),
('PEN', '604', 'Nuevo Sol'),
('MRO', '478', 'Ouguiya'),
('TOP', '776', 'Pa\'anga'),
('PKR', '586', 'Pakistan Rupee'),
('XPD', '964', 'Palladium'),
('MOP', '446', 'Pataca'),
('CUC', '931', 'Peso Convertible'),
('UYU', '858', 'Peso Uruguayo'),
('PHP', '608', 'Philippine Peso'),
('XPT', '962', 'Platinum'),
('GBP', '826', 'Pound Sterling'),
('BWP', '72', 'Pula'),
('QAR', '634', 'Qatari Rial'),
('GTQ', '320', 'Quetzal'),
('ZAR', '710', 'Rand'),
('OMR', '512', 'Rial Omani'),
('KHR', '116', 'Riel'),
('MVR', '462', 'Rufiyaa'),
('IDR', '360', 'Rupiah'),
('RUB', '643', 'Russian Ruble'),
('RWF', '646', 'Rwanda Franc'),
('SHP', '654', 'Saint Helena Pound'),
('SAR', '682', 'Saudi Riyal'),
('XDR', '960', 'SDR'),
('RSD', '941', 'Serbian Dinar'),
('SCR', '690', 'Seychelles Rupee'),
('XAG', '961', 'Silver'),
('SGD', '702', 'Singapore Dollar'),
('SBD', '90', 'Solomon Islands Dollar'),
('KGS', '417', 'Som'),
('SOS', '706', 'Somali Shilling'),
('TJS', '972', 'Somoni'),
('LKR', '144', 'Sri Lanka Rupee'),
('SDG', '938', 'Sudanese Pound'),
('SRD', '968', 'Surinam Dollar'),
('SEK', '752', 'Swedish Krona'),
('CHF', '756', 'Swiss Franc'),
('SYP', '760', 'Syrian Pound'),
('BDT', '50', 'Taka'),
('WST', '882', 'Tala'),
('TZS', '834', 'Tanzanian Shilling'),
('KZT', '398', 'Tenge'),
('XXX', '999', 'Codes assigned for transactions where no currency is involved'),
('TTD', '780', 'Trinidad and Tobago Dollar'),
('MNT', '496', 'Tugrik'),
('TND', '788', 'Tunisian Dinar'),
('TRY', '949', 'Turkish Lira'),
('AED', '784', 'UAE Dirham'),
('UGX', '800', 'Uganda Shilling'),
('XFU', NULL, 'UIC-Franc'),
('COU', '970', 'Unidad de Valor Real'),
('CLF', '990', 'Unidades de fomento'),
('UYI', '940', 'Uruguay Peso en Unidades Indexadas'),
('USD', '840', 'US Dollar'),
('USN', '997', 'US Dollar (Next day)'),
('USS', '998', 'US Dollar (Same day)'),
('UZS', '860', 'Uzbekistan Sum'),
('VUV', '548', 'Vatu'),
('CHE', '947', 'WIR Euro'),
('CHW', '948', 'WIR Franc'),
('KRW', '410', 'Won'),
('YER', '886', 'Yemeni Rial'),
('JPY', '392', 'Yen'),
('CNY', '156', 'Yuan Renminbi'),
('ZMK', '894', 'Zambian Kwacha'),
('ZWL', '932', 'Zimbabwe Dollar'),
('PLN', '985', 'Zloty');

-- --------------------------------------------------------

--
-- Table structure for table `cr_email_settings`
--

CREATE TABLE `cr_email_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `smtp_host` varchar(512) NOT NULL,
  `smtp_port` int(10) NOT NULL,
  `smtp_user` varchar(512) NOT NULL,
  `smtp_password` varchar(512) NOT NULL,
  `api_key` varchar(512) NOT NULL,
  `mail_config` enum('webmail','mandrill') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_email_settings`
--

INSERT INTO `cr_email_settings` (`id`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_password`, `api_key`, `mail_config`) VALUES
(1, 'your sever smtp host', 587, 'your server smtp user', '123456789', '', 'webmail');

-- --------------------------------------------------------

--
-- Table structure for table `cr_email_templates`
--

CREATE TABLE `cr_email_templates` (
  `id` int(11) UNSIGNED NOT NULL,
  `subject` varchar(512) NOT NULL,
  `email_template` varchar(10000) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_email_templates`
--

INSERT INTO `cr_email_templates` (`id`, `subject`, `email_template`, `status`) VALUES
(7, 'registration', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome to __SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear <strong>__USER__NAME__</strong>,&nbsp;</p>\r\n\r\n<p>You have successfully Registered in&nbsp;<strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>Your credentials</strong></p>\r\n\r\n<p>Email<strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;__EMAIL__</strong></p>\r\n\r\n<p>Password<strong>&nbsp; __PASSWORD__</strong></p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>Please click this link for <strong>__ACCOUNT_ACTIVATOIN_LINK__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__IOS__</strong>&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Active'),
(8, 'fb_google_registration_template', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__SITE_LOGO__</strong> &nbsp; &nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Welcome&nbsp;to&nbsp;__SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dear __USER_NAME__&nbsp;,</strong></p>\r\n\r\n<p>You have Successfully Registered in <strong>__SITE_TITLE__</strong></p>\r\n\r\n<p>Email &nbsp; &nbsp; &nbsp;: &nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p>Password : <strong>__PASSWORD__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; __IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support</p>\r\n\r\n<p><strong>__SITE_TITLE__</strong>&nbsp;| Restaurant System</p>\r\n', 'Active'),
(57, 'when_user_order_booked_template_mail_to_user', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome&nbsp;to&nbsp;__SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear <strong>__USER_NAME__</strong>,&nbsp;</p>\r\n\r\n<p>You have successfully Booked an order in&nbsp;<strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>ORDER DETAILS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No of Items Booked &nbsp; &nbsp;&nbsp;<strong>__NO_OF_ITEMS__</strong></p>\r\n\r\n<p>Order Booked Time &nbsp; &nbsp;&nbsp;<strong>__ORDER_TIME__</strong></p>\r\n\r\n<p>Total Cost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__TOTAL_COST__</strong></p>\r\n\r\n<p>Payment Mode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PAYMENT_MODE__</strong></p>\r\n\r\n<p>Message &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__CUSTOMER_MESSAGE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>For any assistance or questions&nbsp;feel free to contact us at <strong>__CONTACT_US__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong>__IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(58, 'when_user_order_booked_template_mail_to_admin', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome&nbsp;to __SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hello Dear Admin,&nbsp;</p>\r\n\r\n<p><strong>__USER_NAME__&nbsp;</strong>has&nbsp;successfully Booked an order</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>USER DETAILS</strong></p>\r\n\r\n<p>Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__USER_NAME__</strong></p>\r\n\r\n<p>Email &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p>Phone &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PHONE__</strong></p>\r\n\r\n<p>House number&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__HOUSE__NO__</strong></p>\r\n\r\n<p>Street &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__STREET__NAME__</strong></p>\r\n\r\n<p>Landmark &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__LAND_MARK__</strong></p>\r\n\r\n<p>Locality &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__LOCALITY__</strong></p>\r\n\r\n<p>City &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__CITY__</strong></p>\r\n\r\n<p>PINCode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__PIN_CODE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ORDER DETAILS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No of Items Booked &nbsp; &nbsp;&nbsp;<strong>__NO_OF_ITEMS__</strong></p>\r\n\r\n<p>Order Booked Time &nbsp; &nbsp;&nbsp;<strong>__ORDER_TIME__</strong></p>\r\n\r\n<p>Total Cost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__TOTAL_COST__</strong></p>\r\n\r\n<p>Payment Mode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PAYMENT_MODE__</strong></p>\r\n\r\n<p>Customer Message &nbsp; &nbsp;<strong>__CUSTOMER_MESSAGE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>For any assistance or questions&nbsp;feel free to contact us at <strong>__CONTACT_US__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>&nbsp;&nbsp;&nbsp; __IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurent System</p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(59, 'order_status_changed', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong>__SITE_LOGO__</strong>&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Welcome&nbsp;to&nbsp;__SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dear __NAME__</strong><strong> </strong><strong>,</strong></p>\r\n\r\n<p>Your Order No <strong>__ORDER__NO__ &nbsp;</strong>status has changed</p>\r\n\r\n<p><strong>ORDER DETAILS</strong></p>\r\n\r\n<p>No of Items Booked &nbsp; &nbsp;&nbsp;<strong>__NO_OF_ITEMS__</strong></p>\r\n\r\n<p>Order Booked Time &nbsp; &nbsp;&nbsp;<strong>__ORDER_TIME__</strong></p>\r\n\r\n<p>Total Cost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__TOTAL_COST__</strong></p>\r\n\r\n<p>Payment Mode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PAYMENT_MODE__</strong></p>\r\n\r\n<p>Message<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;__MESSAGE__</strong></p>\r\n\r\n<p>Status &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__STATUS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For any assistance or questions, feel free to contact us at <strong>__CONTACT__EMAIL__</strong>&nbsp; or call us at <strong>__CONTACT__NO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support</p>\r\n\r\n<p><strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(60, 'order_cancelled', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__SITE_LOGO__</strong>&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Welcome to __SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dear __NAME__</strong><strong> </strong><strong>,</strong></p>\r\n\r\n<p><strong>__ITEM_NAME__&nbsp;</strong>is deleted form Order <strong>__ORDER_NO__ </strong>, for details please login and check the order history.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For any assistance or questions, feel free to contact us at <strong>__CONTACT__EMAIL__</strong>&nbsp; or call us at <strong>__CONTACT__NO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support</p>\r\n\r\n<p><strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(61, 'forgot_password', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Welcome to __SITE_TITLE__</strong></h2>\r\n\r\n<p>A new password was requested for the user <strong>__EMAIL__</strong>,&nbsp;</p>\r\n\r\n<p>Please click on the link to set your&nbsp;password&nbsp;___RESET_YOUR_PASSWORD___</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n', 'Active'),
(62, 'contact_query', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<h2><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome to __SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hello Admin,</p>\r\n\r\n<p><strong>__USER__</strong>&nbsp;would like to contact you.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>USER DETAILS</strong></p>\r\n\r\n<p><strong>Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong><strong>__USER_NAME__</strong></p>\r\n\r\n<p><strong>Email</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p><strong>Subject</strong>&nbsp; &nbsp; &nbsp;&nbsp;<strong>__SUBJECT__</strong></p>\r\n\r\n<p><strong>Message</strong>&nbsp;&nbsp; &nbsp;&nbsp;<strong>__MESSAGE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_faq_categories`
--

CREATE TABLE `cr_faq_categories` (
  `fc_id` int(11) UNSIGNED NOT NULL,
  `category` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_faq_categories`
--

INSERT INTO `cr_faq_categories` (`fc_id`, `category`, `status`, `created`, `updated`) VALUES
(1, 'General', 'Active', NULL, '2017-10-04 18:45:46'),
(2, 'Trust & Safety', 'Active', '2017-10-04 18:46:38', NULL),
(3, 'Services', 'Active', '2017-10-04 18:46:46', NULL),
(4, 'Billing', 'Active', '2017-10-04 18:46:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cr_faqs`
--

CREATE TABLE `cr_faqs` (
  `id` int(11) UNSIGNED NOT NULL,
  `fc_id` int(11) DEFAULT NULL,
  `question` varchar(500) NOT NULL,
  `answer` varchar(10000) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_faqs`
--

INSERT INTO `cr_faqs` (`id`, `fc_id`, `question`, `answer`, `status`) VALUES
(1, 1, 'What time is breakfast served from?', 'Breakfast is served from gate opening time until 10:45am', 'Active'),
(2, 2, 'Can a coupon code from Coupons by Restaurant.com be used more than one time?', 'Each coupon code offered through Coupons by Restaurant.com has its own unique terms of use.  Therefore, some of the coupon codes can be used multiple times and others could be restricted to one time per customer. Please refer to the terms and conditions', 'Active'),
(3, 2, 'What can I do if a code that I found on Coupons by Restaurant.com does not work?', 'We apologize for this experience. The coupon codes and offers featured on Coupons by Restaurant.com are managed by each individual merchant. Before reporting a coupon code not working, please check to see that your shopping cart meets the terms of use for the coupon code on the merchant’s website. You can contact the merchant if you believe the coupon code should work to rectify.', 'Active'),
(4, 2, 'Can I Order Only using my points', 'Yes.', 'Active'),
(7, 1, 'Test Question', 'Test Question ', 'Active'),
(8, 2, 'How Can I Use Points?', 'You gifted +20 Points for Registration.', 'Active'),
(9, 2, 'Can I Pay with my Credit Card ?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n', 'Active'),
(10, 1, 'How to book an order for my friend ?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took ', 'Active'),
(11, 3, 'How can I Cancel my Order ?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took ', 'Active'),
(12, 1, 'My Delivered food is not good, How to Report?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took ', 'Active'),
(13, 4, 'Demo Bill', 'mgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnA', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_groups`
--

CREATE TABLE `cr_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_groups`
--

INSERT INTO `cr_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'user', 'General User'),
(3, 'kitchen_manager', 'Kitchen Manager'),
(4, 'delivery_manager', 'Delivery Manager');

-- --------------------------------------------------------

--
-- Table structure for table `cr_item_addons`
--

CREATE TABLE `cr_item_addons` (
  `item_addon_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_item_addons`
--

INSERT INTO `cr_item_addons` (`item_addon_id`, `item_id`, `addon_id`) VALUES
(219, 41, 42),
(220, 41, 43),
(221, 41, 44),
(222, 41, 46),
(223, 37, 43),
(224, 37, 44),
(225, 856781, 42),
(226, 856781, 43),
(227, 856781, 45),
(228, 856781, 46),
(229, 856787, 43),
(230, 856787, 45),
(231, 856787, 46),
(232, 135, 46),
(233, 135, 47);

-- --------------------------------------------------------

--
-- Table structure for table `cr_item_options`
--

CREATE TABLE `cr_item_options` (
  `item_option_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_item_options`
--

INSERT INTO `cr_item_options` (`item_option_id`, `item_id`, `option_id`, `price`) VALUES
(4, 152, 4, '300.00'),
(6, 152, 14, '100.00'),
(18, 41, 19, '500.00'),
(19, 41, 4, '200.00'),
(20, 37, 4, '200.00'),
(21, 37, 14, '100.00'),
(31, 856781, 4, '200.00'),
(32, 856781, 19, '350.00'),
(33, 856781, 20, '450.00'),
(34, 856765, 4, '300.00'),
(35, 856765, 37, '100.00'),
(36, 856764, 4, '300.00'),
(37, 856764, 14, '100.00'),
(38, 149, 37, '200.00'),
(39, 149, 9, '300.00'),
(40, 856785, 38, '50.00'),
(41, 856787, 4, '280.00'),
(42, 856787, 9, '270.00'),
(43, 135, 21, '160.00'),
(44, 135, 4, '140.00'),
(45, 135, 37, '80.00');

-- --------------------------------------------------------

--
-- Table structure for table `cr_item_types`
--

CREATE TABLE `cr_item_types` (
  `item_type_id` int(11) NOT NULL,
  `item_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_item_types`
--

INSERT INTO `cr_item_types` (`item_type_id`, `item_type`) VALUES
(1, 'Veg'),
(3, 'Other'),
(41, 'Non-Veg');

-- --------------------------------------------------------

--
-- Table structure for table `cr_items`
--

CREATE TABLE `cr_items` (
  `item_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `item_cost` decimal(10,2) DEFAULT NULL,
  `item_type_id` int(11) DEFAULT NULL,
  `item_image_name` varchar(50) DEFAULT NULL,
  `item_description` varchar(500) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `is_most_selling_item` enum('Yes','No') NOT NULL DEFAULT 'No',
  `product_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_items`
--

INSERT INTO `cr_items` (`item_id`, `menu_id`, `item_name`, `item_cost`, `item_type_id`, `item_image_name`, `item_description`, `status`, `is_most_selling_item`, `product_id`) VALUES
(8, 5, 'Cream Of Tomato Soup', '125.00', 1, 'item_8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', '4chdlezzqBwUdW3T'),
(9, 5, 'Sweet Corn Vegetable Soup', '125.00', 1, 'item_9.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'uFXoNlxfVHIb0Isu'),
(10, 5, 'Hot-N-Sour Vegetable Soup', '125.00', 1, 'item_10.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'lPOMuDCaFyvjLo25'),
(11, 5, 'Clear Chicken Noodle Soup', '134.00', 1, 'item_11.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'tPj70XdLflnVuVGV'),
(12, 5, 'Cream Of Chicken Soup', '124.00', 1, 'item_12.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'lUiVYlwdaiCmN5i7'),
(13, 5, 'Sweet Corn Chicken Soup', '134.00', 1, 'item_13.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'LI4BfXNA81VsMcEy'),
(16, 8, 'Gobi Manchurian', '221.00', 1, 'item_16.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'WzcVY97XmB2T11yQ'),
(18, 8, 'Baby Corn Manchurian', '229.00', 1, 'item_18.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'JBcUwv2OPHuISRXo'),
(24, 8, 'Chicken Drum Sticks', '309.00', 1, 'item_24.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'Hz9gz73b9wv0ojGx'),
(31, 8, 'Chicken Spring Roll', '175.00', 1, 'item_31.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'ljHYUAmkHXtZpGEw'),
(33, 8, 'Apollo Fish', '358.00', 1, 'item_33.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', '6ESwBMNB892mi8ZK'),
(35, 8, 'Chicken 65', '309.00', 1, 'item_35.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'ihi2hKdoiNENTI9Q'),
(37, 6, 'Vegetable Biryani', '200.00', 1, 'item_37.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'VGNjD2OjjeRLT79Q'),
(41, 6, 'Mutton Biryani', '300.00', 1, 'item_41.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'gyse1KZw8E3PwzSI'),
(85, 11, 'Masala Kulcha', '67.00', 1, 'item_85.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'mlYrtjJ2W9Ma5cQJ'),
(86, 11, 'Butter Naan', '67.00', 1, 'item_86.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '8dg5DI0zqcESjauL'),
(89, 11, 'Pineapple Raita', '84.00', 1, 'item_89.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'BI2usCnFBzf7SvGR'),
(91, 11, 'Roasted Papad', '38.00', 3, 'item_91.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'PnMTwDIdfNvFogRp'),
(92, 11, 'Fruit Chat Salad', '75.00', 1, 'item_92.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'oKaWMDcO37MLtTd9'),
(93, 11, 'Russian Salad', '75.00', 1, 'item_93.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '7qSttbNOp8UTfl9J'),
(94, 11, 'Green Salad', '50.00', 1, 'item_94.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'wZg9d8OX6ajqtCpr'),
(95, 11, 'Cucumber Salad', '50.00', 1, 'item_95.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 's8abanqGmAZHmYRY'),
(99, 12, 'Sweet-N-Sour Prawns', '378.00', 1, 'item_99.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'yxYSwmptCOZwQFd9'),
(100, 12, 'Ginger Fish', '350.00', 1, 'item_100.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'E4afhHlKIBSvZjKO'),
(102, 12, 'Chicken Soft Noodles', '184.00', 2, 'item_102.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'XigKKL4MaU9qZcpe'),
(104, 12, 'Chicken Fried Rice', '184.00', 1, 'item_104.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'WGA4OlFWmXIC7SQV'),
(106, 12, 'Egg Fried Rice', '184.00', 1, 'item_106.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '0xfA9aNZuMGKowoB'),
(107, 12, 'Veg Soft Noodles', '184.00', 1, 'item_107.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '3o6HQBe3Zm5W4Msv'),
(108, 12, 'Veg Hakka Noodles', '184.00', 1, 'item_108.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '9Ov9o8YYLei0RM1K'),
(109, 12, 'Veg Fried Rice', '184.00', 1, 'item_109.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '1xRIywBOZ6kTJSEJ'),
(111, 14, 'Qubani Ka Meetha', '125.00', 3, 'item_111.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'yuKC6iEOwFGb8Z2U'),
(113, 14, 'Gajara Ka Halwa', '84.00', 3, 'item_113.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'ej3OvQ0dWXtei0xX'),
(121, 14, 'Pineapple With Vanilla', '150.00', 3, 'item_121.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'k8ZhhdwTj2uhSn2w'),
(122, 14, 'Vainilla Hot Chocolate', '150.00', 3, 'item_122.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'MvB8C1bYOL2xBpKm'),
(127, 14, 'Strawberry Icream', '125.00', 3, 'item_127.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'Yes', 'njKKD6emzPJH2B3F'),
(128, 14, 'Butterscotch', '125.00', 3, 'item_128.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'Yes', 'x4DzweNBqFyrv8UY'),
(129, 14, 'Fruit Salad', '125.00', 3, 'item_129.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'Yes', 'hejlaDNQTXXLYRQL'),
(130, 13, 'Pineapple ', '84.00', 3, 'item_130.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been tkju', 'Active', 'No', 'g0ILzhjACH0TUsdM'),
(132, 13, 'Sweet Lime', '84.00', 1, 'item_132.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'fvUUiVi7SJRbcVk9'),
(133, 13, 'Chocolate Milkshake', '84.00', 3, 'item_133.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'MtKCQtCT13mLmGXI'),
(134, 13, 'Strawberry Milkshake', '84.00', 3, 'item_134.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', '2scaDBXVLoxnAYnN'),
(135, 13, 'Butterscotch Milkshake', '84.00', 3, 'item_135.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'HxPYhSrYLUkyb86T'),
(137, 13, 'Cold Coffee', '84.00', 3, 'item_137.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'qYtuaHGlw3PwS29a'),
(141, 13, 'Fanta', '42.00', 3, 'item_141.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'qPyNhgmt1NhSLdl2'),
(142, 13, 'Maaza', '42.00', 3, 'item_142.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', '2VmTcs5PmKB4DBUu'),
(148, 10, 'Chicken Curry', '90.00', 1, 'item_148.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'u12PIIrYQvNXPMCR'),
(149, 10, 'Paneer', '120.00', 1, 'item_149.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'tj1bkFrzYLXzoMdZ'),
(152, 21, 'Country Special', '200.00', 1, 'item_152.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'BD5cHIsafGm4X2Gj'),
(153, 21, 'Peppy Paneer', '200.00', 1, 'item_153.jpg', 'Chunky paneer with crisp capsicum and spicy red pepper - quite a mouthful!', 'Active', 'No', 'NHiCWhhqVvvHSPbU'),
(154, 21, 'Chicken Mexicana', '250.00', 1, 'item_154.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'SWxafg1Bmd5AWCjj'),
(167, 13, 'Orange', '84.00', 3, 'item_167.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'Yes', 'RI8ypkihxFz9jb1b'),
(856760, 8, 'Paneer Butter Masala', '200.00', 1, 'item_856760.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'MSCOeQQcPIEyGe9o'),
(856761, 6, 'Keema Biryani Recipe', '300.00', 41, 'item_856761.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', '5fs9X6i7b0IuxIAU'),
(856762, 6, 'Chicken Reshmi Biryani Recipe', '250.00', 41, 'item_856762.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', '6syy3Ok1SeGFTZNP'),
(856763, 6, 'Malabar Biriyani', '400.00', 41, 'item_856763.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', '56OS2xQTnZEbhFvd'),
(856764, 6, 'Bombay Biryani', '500.00', 41, 'item_856764.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'xjSrx3jGXpLqFZ6A'),
(856765, 6, 'Sindhi Biryani', '350.00', 41, 'item_856765.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'VLTN8jhm8mDfrz9f'),
(856766, 21, 'Margherita ', '200.00', 1, 'item_856766.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'KHmgpJMA57HONjig'),
(856767, 21, 'Farm House', '300.00', 1, 'item_856767.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', '5W6a2xbfRXfnZENj'),
(856768, 21, 'Fresh Veggie', '250.00', 1, 'item_856768.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'MzG19S24QAIdjr9f'),
(856769, 21, 'Barbeque Chicken', '300.00', 41, 'item_856769.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'D666uYbBv6pLB2vO'),
(856770, 21, 'Cheese Pepperoni', '300.00', 1, 'item_856770.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'r2GrK8lb9u4ib4Ee'),
(856771, 8, ' Hot Chocolate', '100.00', 1, 'item_856771.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'wdvPMqey1gs4iCoz'),
(856772, 13, 'Green Tea', '100.00', 1, 'item_856772.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'Lno1NMYBSNB1o2Tb'),
(856773, 13, 'Beetroot Pomegranate  Juice', '200.00', 1, 'item_856773.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'WEqiuLXlsFgQHLGT'),
(856775, 10, 'Egg Curry', '100.00', 1, 'item_856775.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'ufKUl2K9EhystRHx'),
(856776, 10, 'Potato Stew', '100.00', 1, 'item_856776.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'nv9IHk2OXBlXLQG5'),
(856777, 10, 'Lima Beans Curry', '149.00', 1, 'item_856777.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'wRQXKaWO7L6rdDfH'),
(856778, 10, 'Butter Chicken', '159.00', 41, 'item_856778.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'zeP6EHLcJxzUD6Pz'),
(856779, 10, 'Beetroot Curry', '149.00', 1, 'item_856779.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'NgNX6kl4vimPlHWb'),
(856780, 14, 'Orange Cake', '99.00', 1, 'item_856780.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'MUB8zO9fUxNFwhdT'),
(856781, 6, 'Egg biryani', '159.00', 1, 'item_856781.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'YRMMKvSibeOg3LgO'),
(856782, 5, 'French Fish Soup', '149.00', 41, 'item_856782.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'wmKKO7oofrQsmypx'),
(856783, 5, 'Potato and Corn Soup', '119.00', 1, 'item_856783.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', '6jzb7Dc54yoHQs5D'),
(856784, 10, 'Cheese Balls', '99.00', 1, 'item_856784.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'BhhjsBOQOSdibcyn'),
(856785, 41, 'Red Bull', '100.00', 3, 'item_856785.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'T8L5C2h9TFjYzqsg'),
(856786, 13, 'Sports drink', '300.00', 1, 'item_856786.jpg', 'Find the great collection of 191 beverages recipes and dishes ', 'Active', 'Yes', 'pYawpIPbtfcAIAUK'),
(856787, 13, 'Kiwi Margarita', '260.00', 1, 'item_856787.jpg', 'sfsdfsdfsadfsdfsdff', 'Active', 'Yes', 'raSGg6TZOWvy0AOK'),
(856788, 21, 'Paneer Vegorama', '49.00', 1, 'item_856788.jpg', 'test ', 'Active', 'Yes', 'BT0AOyoC58Ls9M9b'),
(856789, 21, 'Triple Chicken Feast', '57.00', 1, 'item_856789.jpg', 'test', 'Active', 'Yes', 'IrezVOPlCCcqoqNW'),
(856790, 21, 'Chicken Italiano', '57.00', 1, 'item_856790.jpg', 'test', 'Active', 'Yes', 'YVEiJqgTYhPLpZJb'),
(856791, 21, 'Country Feast', '67.00', 1, 'item_856791.jpg', 'test', 'Active', 'Yes', 'du9tZP4PMPHVrdID');

-- --------------------------------------------------------

--
-- Table structure for table `cr_language_codes`
--

CREATE TABLE `cr_language_codes` (
  `code_id` int(11) NOT NULL,
  `language` varchar(20) CHARACTER SET latin1 NOT NULL,
  `code` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_language_codes`
--

INSERT INTO `cr_language_codes` (`code_id`, `language`, `code`) VALUES
(1, 'english', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `cr_languagewords`
--

CREATE TABLE `cr_languagewords` (
  `lang_id` bigint(22) NOT NULL,
  `phrase_for` enum('App','Web') NOT NULL DEFAULT 'Web',
  `lang_key` varchar(512) DEFAULT NULL,
  `english` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_languagewords`
--

INSERT INTO `cr_languagewords` (`lang_id`, `phrase_for`, `lang_key`, `english`) VALUES
(0, 'Web', 'Fast Delivery', 'Fast Delivery'),
(2, 'Web', 'hello', 'Hello'),
(6, 'Web', 'admin_dashboard', 'Admin Dashboard'),
(7, 'Web', 'profile', 'Profile'),
(8, 'Web', 'sign_out', 'Sign Out'),
(9, 'Web', 'home', 'Home'),
(10, 'Web', 'users', 'Users'),
(11, 'Web', 'view_all_users', 'View All Users'),
(15, 'Web', 'create', 'Create'),
(37, 'Web', 'pages', 'Pages'),
(38, 'Web', 'dynamic_pages', 'Dynamic pages'),
(39, 'Web', 'faqs', 'FAQs'),
(41, 'Web', 'email_templates', 'Email Templates'),
(42, 'App', 'language_settings', 'Language Settings'),
(43, 'App', 'view_languages', 'View Languages'),
(44, 'App', 'add_language', 'Add Language'),
(45, 'App', 'view_phrases', 'View Phrases'),
(46, 'App', 'my_profile', 'My Profile'),
(47, 'App', 'change_password', 'Change Password'),
(48, 'Web', 'sign_out', 'Sign Out'),
(49, 'Web', 'total_payments', 'Total Payments'),
(50, 'Web', 'users_information', 'Users Information'),
(51, 'Web', 'any_other_stats', 'Any other stats'),
(52, 'Web', 'add_new_record', 'Add New Record'),
(53, 'Web', 'delete_selected', 'Delete Selected'),
(54, 'Web', 'delete', 'Delete'),
(58, 'Web', 'actions', 'Actions'),
(59, 'Web', 'warning', 'Warning'),
(60, 'Web', 'are_you_sure_to_delete', 'Are you sure to delete'),
(61, 'Web', 'no', 'No'),
(62, 'Web', 'yes', 'Yes'),
(63, 'Web', 'are_you_sure_to_delete_selected_records', 'Are you sure to delete selected records'),
(64, 'Web', 'please_select_records_to_be_deleted', 'Please select records to be deleted'),
(65, 'Web', 'Confirm', 'Confirm'),
(66, 'Web', 'Are_you_sure_to_activate_selected_records', 'Are you sure to activate selected records'),
(67, 'Web', 'Please_select_records_to_be_activated', 'Please select records to be activated'),
(68, 'Web', 'are_you_sure_to_deactivate_selected_records', 'Are you sure to deactivate selected records'),
(69, 'Web', 'please_select_records_to_be_deactivated', 'Please select records to be deactivated'),
(70, 'Web', 'information', 'Information'),
(71, 'Web', 'view_details', 'View Details'),
(72, 'Web', 'edit', 'Edit'),
(73, 'Web', 'go_to_list', 'Go To List'),
(75, 'Web', 'please_upload_only_jpg_or_png_images', 'Please upload only jpg or png images'),
(76, 'Web', 'add', 'Add'),
(78, 'Web', 'cancel', 'Cancel'),
(79, 'Web', 'please_upload_atleast_one_image', 'Please Upload Atleas One Image'),
(80, 'Web', 'all_users', 'All Users'),
(81, 'Web', 'photo', 'Photo'),
(82, 'Web', 'username', 'Username'),
(83, 'Web', 'email', 'Email'),
(84, 'Web', 'phone', 'Phone'),
(85, 'Web', 'date_of_registration', 'Date of registration'),
(86, 'Web', 'address', 'Address'),
(87, 'Web', 'status', 'Status'),
(88, 'Web', 'active', 'Active'),
(92, 'Web', 'record_added_successfully', 'Record Added Successfully'),
(93, 'Web', 'success', 'Success'),
(95, 'Web', 'description', 'Description'),
(97, 'Web', 'inactive', 'Inactive'),
(100, 'Web', 'user', 'User'),
(103, 'Web', 'no_records_available', 'No records available'),
(104, 'Web', 'select_Phone_Code', 'Select Phone Code'),
(105, 'Web', 'Sign_In', 'Sign In'),
(106, 'Web', 'With_Your_Account', 'With Your Account'),
(107, 'Web', 'Password', 'Password'),
(108, 'Web', 'Forgot_your_password', 'Forgot your password?'),
(109, 'Web', 'register', 'Register'),
(111, 'Web', 'Register_As', 'Register As'),
(112, 'Web', 'First_Name', 'First Name'),
(113, 'Web', 'first_name', 'First Name'),
(114, 'Web', 'Last_Name', 'Last Name'),
(115, 'Web', 'last_name', 'Last Name'),
(116, 'Web', 'must_be_at_least', 'Must be at least'),
(117, 'Web', 'characters', 'Characters'),
(118, 'Web', 'Confirm_Password', 'Confirm Password'),
(119, 'Web', 'confirm_password', 'Confirm Password'),
(120, 'Web', 'pin_code', 'Pin code'),
(121, 'Web', 'Phone_Number', 'Phone Number'),
(122, 'Web', 'Create_an_Account', 'Create an Account'),
(123, 'Web', 'logged_in_successfully', 'Logged in successfully'),
(124, 'Web', 'Record_Not_Added', 'Record Not Added'),
(125, 'Web', 'error', 'Error'),
(126, 'Web', 'Record_Deleted_Successfully', 'Record Deleted Successfully'),
(128, 'Web', 'Activate_Selected', 'Activate Selected'),
(129, 'Web', 'activate', 'Activate'),
(130, 'Web', 'Deactivate_Selected', 'Deactivate Selected'),
(131, 'Web', 'deactivate', 'Deactivate'),
(132, 'Web', 'Service_Name', 'Service Name'),
(133, 'Web', 'Cost_Type', 'Cost Type'),
(134, 'Web', 'price', 'Price'),
(141, 'Web', 'the', 'The'),
(143, 'Web', '_already_exists', ' already exists'),
(145, 'Web', 'update', 'Update'),
(147, 'Web', 'Record_Updated_Successfully', 'Record Updated Successfully'),
(149, 'Web', 'Record_Not_Updated', 'Record Not Updated'),
(150, 'Web', 'Selected_Records_Deleted_Successfully', 'Selected Records Deleted Successfully'),
(151, 'Web', 'category', 'Category'),
(152, 'Web', 'type', 'Type'),
(154, 'Web', 'image', 'Image'),
(156, 'Web', 'view_more', 'View More'),
(157, 'Web', 'Record_Already_Added', 'Record Already Added'),
(158, 'Web', 'info', 'Info'),
(159, 'Web', 'Add_Phrase', 'Add Phrase'),
(160, 'Web', 'Lang_Id', 'Lang Id'),
(161, 'Web', 'Lang_Key', 'Lang Key'),
(162, 'Web', 'english', 'English'),
(163, 'Web', 'brazil', 'Brazil'),
(164, 'Web', 'please_enter_language_key', 'Please enter language key'),
(165, 'Web', 'submit', 'Submit'),
(166, 'Web', 'Master_Settings', 'Master Settings'),
(167, 'Web', 'Site_Settings', 'Site Settings'),
(168, 'Web', 'Email_Settings', 'Email Settings'),
(174, 'Web', 'House_Number', 'House Number'),
(175, 'Web', 'Flat_Number', 'Flat Number'),
(177, 'Web', 'Street_Name', 'Street Name'),
(179, 'Web', 'city', 'City'),
(180, 'Web', 'state', 'State'),
(181, 'Web', 'landmark', 'Landmark'),
(182, 'Web', 'zipcode', 'Zipcode'),
(186, 'Web', 'please_Enter_City', 'Please Enter City'),
(187, 'Web', 'please_Enter_State', 'Please Enter State'),
(188, 'Web', 'please_Enter_Landmark', 'Please Enter Landmark'),
(189, 'Web', 'please_Enter_Zip_Code', 'Please Enter Zip Code'),
(190, 'Web', 'You_do_not_have_permission_to_access_this_page', 'You do not have permission to access this page'),
(191, 'Web', 'Group', 'Group'),
(192, 'Web', 'phone_code', 'Phone code'),
(195, 'App', 'view_language', 'View Language'),
(196, 'Web', 'language', 'Language'),
(197, 'Web', 'Add_Language_Words', 'Add Language Words'),
(201, 'Web', 'House_numer', 'House numer'),
(203, 'Web', 'No_Details_Found', 'No Details Found'),
(204, 'Web', 'Selected_Records_Activated_Successfully', 'Selected Records Activated Successfully'),
(205, 'Web', 'Selected_Records_Deactivated_Successfully', 'Selected Records Deactivated Successfully'),
(206, 'Web', 'View_User_Details', 'View User Details'),
(208, 'Web', 'gender', 'Gender'),
(209, 'Web', 'user_belongs_group', 'User belongs group'),
(211, 'Web', 'Create_User', 'Create User'),
(212, 'Web', 'Add_User', 'Add User'),
(213, 'Web', 'Profile_Pic', 'Profile Pic'),
(215, 'Web', 'please_login_to_continue', 'Please login to continue'),
(216, 'Web', 'Phone_Number', 'Phone Number'),
(217, 'Web', 'first__name', 'First  name'),
(218, 'Web', 'mobile_number', 'Mobile number'),
(219, 'Web', 'please_Enter_First_Name', 'Please Enter First Name'),
(220, 'Web', 'please_Enter_Email', 'Please Enter Email'),
(221, 'Web', 'please_Enter_Password', 'Please Enter Password'),
(222, 'Web', 'please_Enter_Phone_Code', 'Please Enter Phone Code'),
(223, 'Web', 'please_Enter_Phone_Number', 'Please Enter Phone Number'),
(224, 'Web', 'Password_must_be_atleast_8_characters', 'Password must be atleast 8 characters'),
(225, 'Web', 'please_Enter_Confirm_Password', 'Please Enter Confirm Password'),
(226, 'Web', 'Confirm_Password_is_not_same_as_password', 'Confirm Password is not same as password'),
(227, 'Web', 'Minimum_8_digits', 'Minimum 8 digits'),
(228, 'Web', 'Maximum_11_digits', 'Maximum 11 digits'),
(229, 'Web', 'Lang_Key', 'Lang Key'),
(230, 'Web', 'test_phrase', 'Test Phrase'),
(231, 'Web', 'add_phrases', 'Add Phrases'),
(232, 'Web', 'please_enter_language_key_in_english', 'Please enter language key in english'),
(233, 'Web', 'Update_Phrase', 'Update Phrase'),
(234, 'Web', 'View_Phrase_Details', 'View Phrase Details'),
(235, 'Web', 'App_Settings', 'App Settings'),
(236, 'Web', 'Paypal_Settings', 'Paypal Settings'),
(237, 'Web', 'SMS_Settings', 'SMS Settings'),
(238, 'Web', 'SMS_Templates', 'SMS Templates'),
(239, 'Web', 'success_phrases_updated_successfuly', 'Success phrases updated successfuly'),
(241, 'Web', 'Update_User', 'Update User'),
(242, 'Web', 'welcome_to_Admin_Dashboard', 'Welcome to Admin Dashboard'),
(244, 'Web', 'Change_Password', 'Change Password'),
(245, 'Web', 'Current_Password', 'Current Password'),
(246, 'Web', 'New_Password', 'New Password'),
(247, 'Web', 'password_changed_successfully', 'Password changed successfully'),
(248, 'Web', 'List_of_All_Users', 'List of All Users'),
(252, 'Web', 'List_of_Users', 'List of Users'),
(253, 'Web', 'User_Group', 'User Group'),
(254, 'Web', 'Phrase_For', 'Phrase For'),
(255, 'App', 'App', 'App'),
(256, 'App', 'Web', 'Web'),
(262, 'Web', 'Update_App_Settings', 'Update App Settings'),
(263, 'Web', 'Site_Title', 'Site Title'),
(264, 'Web', 'Site_Name', 'Site Name'),
(265, 'Web', 'country', 'Country'),
(266, 'Web', 'PIN_Code', 'Pin code'),
(267, 'Web', 'land_line', 'Land line'),
(268, 'Web', 'fax', 'Fax'),
(269, 'Web', 'Portal_Email', 'Portal Email'),
(270, 'Web', 'Site_Language', 'Site Language'),
(271, 'Web', 'Design_By', 'Design By'),
(272, 'Web', 'Rights_reserved_content', 'Rights reserved content'),
(273, 'Web', 'currency', 'Currency'),
(274, 'Web', 'Currency_Symbol', 'Currency Symbol'),
(275, 'Web', 'latitude', 'Latitude'),
(276, 'Web', 'longitude', 'Longitude'),
(277, 'Web', 'Ios_Url', 'Ios Url'),
(278, 'Web', 'Android_Url', 'Android Url'),
(279, 'Web', 'Facebook_Api', 'Facebook Api'),
(280, 'Web', 'Google_Api', 'Google Api'),
(281, 'Web', 'SMS_Notifications', 'SMS Notifications'),
(282, 'Web', 'on', 'On'),
(283, 'Web', 'off', 'Off'),
(284, 'Web', 'Push_Notifications', 'Push Notifications'),
(285, 'Web', 'Site_Logo', 'Site Logo'),
(286, 'Web', 'Add_Etemplates', 'Add Etemplates'),
(287, 'Web', 'View_Etemplates', 'View Etemplates'),
(288, 'Web', 'Add_Email_Templates', 'Add Email Templates'),
(289, 'Web', 'View_Email_Templates', 'View Email Templates'),
(290, 'Web', 'Country_Code', 'Country Code'),
(291, 'Web', 'Please_upload_only_jpg_or_png_or_svg_images', 'Please upload only jpg or png or svg images'),
(292, 'Web', 'please_enter_Site_Title', 'Please enter Site Title'),
(293, 'Web', 'please_enter_Site_Name', 'Please enter Site Name'),
(294, 'Web', 'please_enter_Address', 'Please enter Address'),
(295, 'Web', 'please_enter_Country', 'Please enter Country'),
(296, 'Web', 'please_enter_Country_Code', 'Please enter Country Code'),
(297, 'Web', 'please_enter_Pincode', 'Please enter Pincode'),
(298, 'Web', 'please_enter_Phone', 'Please enter Phone'),
(299, 'Web', 'please_enter_Landline', 'Please enter Landline'),
(300, 'Web', 'please_enter_Fax', 'Please enter Fax'),
(301, 'Web', 'please_Enter_Portal_Email', 'Please Enter Portal Email'),
(302, 'Web', 'please_select_Site_Language', 'Please select Site Language'),
(303, 'Web', 'please_enter_Design_by', 'Please enter Design by'),
(304, 'Web', 'please_enter_Rights_reserved_content', 'Please enter Rights reserved content'),
(305, 'Web', 'please_select_Currency', 'Please select Currency'),
(306, 'Web', 'please_enter_Currency_Symbol', 'Please enter Currency Symbol'),
(307, 'Web', 'please_enter_Latitude', 'Please enter Latitude'),
(308, 'Web', 'please_enter_Longitude', 'Please enter Longitude'),
(309, 'Web', 'please_enter_Ios_Url', 'Please enter Ios Url'),
(310, 'Web', 'please_enter_Android_Url', 'Please enter Android Url'),
(312, 'Web', 'Template_Subject', 'Template Subject'),
(313, 'Web', 'From_Eamil', 'From Eamil'),
(314, 'Web', 'Template_Status', 'Template Status'),
(315, 'Web', 'Template_Content', 'Template Content'),
(316, 'Web', 'From_Name', 'From Name'),
(317, 'Web', 'Update_Email_Templates', 'Update Email Templates'),
(318, 'Web', 'please_Enter_Template_Key', 'Please Enter Template Key'),
(319, 'Web', 'please_Enter_Template_Content', 'Please Enter Template Content'),
(320, 'Web', 'please_Enter_From_Email', 'Please Enter From Email'),
(321, 'Web', 'please_Enter_From_Name', 'Please Enter From Name'),
(322, 'Web', 'Please_Enter_Valid_Email', 'Please Enter Valid Email'),
(323, 'Web', 'Email_Template_Details', 'Email Template Details'),
(324, 'Web', 'Template_created', 'Template created'),
(325, 'Web', 'Template_Updated', 'Template Updated'),
(326, 'Web', 'change_language', 'Change Language'),
(327, 'Web', 'From_Email', 'From Email'),
(328, 'Web', 'Language_successfully_changed_to', 'Language successfully changed to'),
(329, 'Web', 'TextArea', 'TextArea'),
(330, 'Web', 'Add_SMS_Templates', 'Add SMS Templates'),
(331, 'Web', 'View_SMS_Templates', 'View SMS Templates'),
(332, 'Web', 'Update_Email_Settings', 'Update Email Settings'),
(333, 'Web', 'Web_Mail', 'Web Mail'),
(334, 'Web', 'mandrill', 'Mandrill'),
(335, 'Web', 'Host', 'Host'),
(336, 'Web', 'Api_Key', 'Api Key'),
(337, 'Web', 'subject', 'Subject'),
(338, 'Web', 'SMS_Template', 'SMS Template'),
(339, 'Web', 'Port', 'Port'),
(340, 'Web', 'Please_enter_Api_Key', 'Please enter Api Key'),
(341, 'Web', 'please_enter_Host', 'Please enter Host'),
(342, 'Web', 'please_enter_Port', 'Please enter Port'),
(343, 'Web', 'SMS_Template_Details', 'SMS Template Details'),
(344, 'Web', 'sms_template_id', 'Sms template id'),
(345, 'Web', 'Update_SMS_Templates', 'Update SMS Templates'),
(346, 'Web', 'Mail_Config', 'Mail Config'),
(347, 'Web', 'please_Enter_Subject', 'Please Enter Subject'),
(348, 'Web', 'please_Enter_SMS_Template', 'Please Enter SMS Template'),
(349, 'Web', 'Password_must_be_atleast_6_characters', 'Password must be atleast 6 characters'),
(350, 'Web', 'Update_Paypal_Settings', 'Update Paypal Settings'),
(352, 'Web', 'PayPal_Environment_Production', 'PayPal Environment Production'),
(353, 'Web', 'PayPal_Environment_Sandbox', 'PayPal Environment Sandbox'),
(354, 'Web', 'merchantName', 'MerchantName'),
(355, 'Web', 'merchant_PrivacyPolicy_URL', 'Merchant PrivacyPolicy URL'),
(356, 'Web', 'merchant_UserAgreement_URL', 'Merchant UserAgreement URL'),
(357, 'Web', 'account_type', 'Account Type'),
(358, 'Web', 'Please_Enter_PayPal_Environment_Production', 'Please Enter PayPal Environment Production'),
(359, 'Web', 'Please_Enter_PayPal_Environment_Sandbox', 'Please Enter PayPal Environment Sandbox'),
(360, 'Web', 'Please_Enter_Merchant_Name', 'Please Enter Merchant Name'),
(361, 'Web', 'Please_Enter_Merchant_PrivacyPolicy_URL', 'Please Enter Merchant PrivacyPolicy URL'),
(362, 'Web', 'Please_Enter_Merchant_UserAgreement_URL', 'Please Enter Merchant UserAgreement URL'),
(363, 'Web', 'PayPal_Environment_Production', 'PayPal Environment Production'),
(364, 'Web', 'PayPal_Environment_Sandbox', 'PayPal Environment Sandbox'),
(365, 'Web', 'merchant_Name', 'Merchant Name'),
(366, 'Web', 'merchant_Privacy_Policy_URL', 'Merchant Privacy Policy URL'),
(367, 'Web', 'merchant_User_Agreement_URL', 'Merchant User Agreement URL'),
(368, 'Web', 'Sms_Gateways', 'Sms Gateways'),
(369, 'Web', 'Sms_Gateway_Name', 'Sms Gateway Name'),
(370, 'Web', 'is_Default', 'Is Default'),
(371, 'Web', 'Make_Default', 'Make Default'),
(372, 'Web', 'Info_Updated_Successfully', 'Info Updated Successfully'),
(373, 'Web', 'SMS_Gate_Ways', 'SMS Gate Ways'),
(374, 'Web', 'User_Name', 'User Name'),
(375, 'Web', 'From_No', 'From No'),
(376, 'Web', 'API_Id', 'API Id'),
(378, 'Web', 'you_are_not_authorized_to_perform_this_action', 'You are not authorized to perform this action'),
(382, 'Web', 'Add_Pages', 'Add Pages'),
(383, 'Web', 'View_Pages', 'View Pages'),
(384, 'Web', 'Page_Name', 'Page Name'),
(385, 'Web', 'Meta_Tag', 'Meta Tag'),
(386, 'Web', 'Meta_Description', 'Meta Description'),
(387, 'Web', 'Seo_Keywords', 'Seo Keywords'),
(388, 'Web', 'please_Enter_Page_Name', 'Please Enter Page Name'),
(389, 'Web', 'please_Enter_Description', 'Please Enter Description'),
(390, 'Web', 'account_information_successfully_updated', 'Account information successfully updated'),
(391, 'Web', 'View_Page_Details', 'View Page Details'),
(392, 'Web', 'Update_Pages', 'Update Pages'),
(397, 'Web', 'old_password_is_wrong', '##Old password is wrong##'),
(401, 'Web', 'Please_Select_Service', 'Please Select Service'),
(402, 'Web', 'service_id', 'Service id'),
(404, 'Web', 'No_Changes_Done', 'No Changes Done'),
(405, 'Web', 'Reset_your_Password', 'Reset your Password'),
(407, 'Web', 'appartments', 'Appartments'),
(408, 'Web', 'Account_Successfully_Created_and_Activation_Email_Sent', 'Account Successfully Created and Activation Email Sent'),
(409, 'Web', 'your_account_activated_successfully_please_login', 'Your account activated successfully please login'),
(410, 'Web', 'Url_for_Design_By', 'Url for Design By'),
(411, 'Web', 'End_Users', 'End Users'),
(412, 'Web', 'Total_End_Users', 'Total End Users'),
(413, 'Web', 'Total_Users', 'Total Users'),
(414, 'Web', 'Web_Phrases', 'Web Phrases'),
(415, 'Web', 'App_Phrases', 'App Phrases'),
(416, 'Web', 'New_Users_Information', 'New Users Information'),
(417, 'Web', 'ago', 'Ago'),
(418, 'Web', 'View_All', 'View All'),
(421, 'Web', 'one_signal_server_api_key', 'One signal server api key'),
(422, 'Web', 'one_signal_app_id', 'One signal app id'),
(423, 'Web', 'one_signal_server_api_key', 'One signal server api key'),
(424, 'Web', 'one_signal_app_id', 'One signal app id'),
(427, 'App', 'Invalid_Operation', 'Invalid Operation'),
(428, 'App', 'loginSuccess', 'Login Success'),
(429, 'Web', 'Total_Appartments', 'Total Appartments'),
(432, 'Web', 'please_Enter_Street_Name', 'Please Enter Street Name'),
(434, 'Web', 'MSG_NO_ENTRY', 'MSG NO ENTRY'),
(435, 'Web', 'Buy_now', 'Buy now'),
(436, 'Web', 'id', 'Id'),
(437, 'Web', 'PayPal_Email', 'PayPal Email'),
(438, 'Web', 'Please_Enter_Paypal_Email', 'Please Enter Paypal Email'),
(439, 'Web', 'You_have_cancelled_your_transaction', 'You have cancelled your transaction'),
(440, 'Web', 'Payment_success_Transaction_Id_', 'Payment success Transaction Id '),
(441, 'Web', 'Wrong_operation', 'Wrong operation'),
(442, 'Web', 'My_Susbscriptions', 'My Susbscriptions'),
(443, 'Web', 'My_Subscriptions', 'My Subscriptions'),
(445, 'Web', 'Amount_Paid', 'Amount Paid'),
(447, 'Web', 'subscribe_date', 'Subscribe date'),
(449, 'App', 'registration', 'Registration'),
(450, 'App', 'registration_completed_successfully_OTP_sent_to_mobile', 'Registration completed successfully OTP sent to mobile'),
(451, 'App', 'registration_completed_successfully_activation_email_sent', 'Registration completed successfully activation email sent'),
(452, 'Web', 'please_login_to_access_this_page', 'Please login to access this page'),
(453, 'Web', 'category_name', 'Category name'),
(454, 'Web', 'please_enter_Category_Name', 'Please enter Category Name'),
(455, 'Web', 'phrases', 'Phrases'),
(456, 'Web', 'view_menu', 'View Menu'),
(457, 'Web', 'menu_name', 'Menu Name'),
(458, 'Web', 'punch_line', 'Punch Line'),
(459, 'Web', 'menu_image', 'Menu Image'),
(460, 'Web', 'view_items', 'View Items'),
(461, 'Web', 'item_name', 'Item Name'),
(462, 'Web', 'item_cost', 'Item Cost'),
(463, 'Web', 'item_type', 'Item Type'),
(464, 'Web', 'item_image', 'Item Image'),
(465, 'Web', 'dashboard', 'Dashboard'),
(466, 'Web', 'menu', 'Menu'),
(467, 'Web', 'items', 'Items'),
(468, 'Web', 'addon_name', 'Addon Name'),
(469, 'Web', 'addon_image', 'Addon Image'),
(470, 'Web', 'view_addons', 'View Addons'),
(471, 'Web', 'addons', 'Add-ons'),
(472, 'Web', 'view_options', 'View Options'),
(473, 'Web', 'name', 'Name'),
(474, 'Web', 'options', 'Options'),
(475, 'Web', 'view_offers', 'View Offers'),
(476, 'Web', 'offer_name', 'Offer Name'),
(477, 'Web', 'offer_cost', 'Offer Cost'),
(478, 'Web', 'offer_start_date', 'Offer Start Date'),
(479, 'Web', 'offer_valid_date', 'Offer Valid Date'),
(480, 'Web', 'no_of_items', 'No Of Items'),
(481, 'Web', 'serve_no_of_people', 'Serve No Of People'),
(482, 'Web', 'offers', 'Offers'),
(483, 'Web', 'view_cities', 'View Cities'),
(484, 'Web', 'city_name', 'City Name'),
(485, 'Web', 'view_service_provide_locations', 'View Service Provide Locations'),
(486, 'Web', 'locality', 'Locality'),
(487, 'Web', 'languages', 'Languages'),
(488, 'Web', 'location_master', 'Location Master'),
(489, 'Web', 'cities', 'Cities'),
(490, 'Web', 'service_provide_locations', 'Service Provide Locations'),
(491, 'Web', 'contact_email', 'Contact Email'),
(492, 'Web', 'restaurant_timings', 'Restaurant Timings'),
(493, 'Web', 'from', 'From'),
(494, 'Web', 'to', 'To'),
(495, 'Web', 'notifications', 'Notifications'),
(496, 'Web', 'rights_reserved', 'Rights Reserved'),
(497, 'Web', 'site_title_is_required', 'Site title is required'),
(498, 'Web', 'site_name_is_required', 'Site name is required'),
(499, 'Web', 'address_is_required', 'Address is required'),
(500, 'Web', 'city_is_required', 'City is required'),
(501, 'Web', 'state_is_required', 'State is required'),
(502, 'Web', 'country_is_required', 'Country is required'),
(503, 'Web', 'pincode_is_required', 'Pincode is required'),
(504, 'Web', 'latitude_is_required', 'Latitude is required'),
(505, 'Web', 'longitude_is_required', 'Longitude is required'),
(506, 'Web', 'phone_number_is_required', 'Phone number is required'),
(507, 'Web', 'landline_number_is_required', 'Landline number is required'),
(508, 'Web', 'fax_is_required', 'Fax is required'),
(509, 'Web', 'contact_email_is_required', 'Contact email is required'),
(510, 'Web', 'site_language_is_required', 'Site language is required'),
(511, 'Web', 'currency_is_required', 'Currency is required'),
(512, 'Web', 'currency_symbol_is_required', 'Currency symbol is required'),
(513, 'Web', 'restaurant_from_time_is_required', 'Restaurant from time is required'),
(514, 'Web', 'restaurant_to_time_is_required', 'Restaurant to time is required'),
(515, 'Web', 'design_by_is_required', 'Design by is required'),
(516, 'Web', 'rights_reserved_is_required', 'Rights reserved is required'),
(517, 'Web', 'date_format', 'Date Format'),
(518, 'Web', 'site_country', 'Site Country'),
(519, 'Web', 'time_zone', 'Time Zone'),
(520, 'Web', 'site_country_is_required', 'Site Country Is Required'),
(521, 'Web', 'time_zone_is_required', 'Time Zone Is Required'),
(522, 'Web', 'file_is_not_valid', 'File Is Not Valid'),
(523, 'Web', 'from_time', 'From Time'),
(524, 'Web', 'to_time', 'To Time'),
(525, 'Web', 'merchant_name', 'Merchant Name'),
(526, 'Web', 'merchant_privacy_policy_url', 'Merchant Privacy Policy URL'),
(527, 'Web', 'merchant_user_agreement_url', 'Merchant User Agreement URL'),
(528, 'Web', 'select', 'Select'),
(529, 'Web', 'sandbox', 'Sandbox'),
(530, 'Web', 'production', 'Production'),
(531, 'Web', 'paypal_environment_production_required', 'Paypal Environment Production Required'),
(532, 'Web', 'paypal_environment_sandbox_required', 'Paypal Environment Sandbox Required'),
(533, 'Web', 'merchant_name_required', 'Merchant Name Required'),
(534, 'Web', 'merchant_privacy_policy_url_required', 'Merchant Privacy Policy Url Required'),
(535, 'Web', 'merchant_user_agreement_url_required', 'Merchant User Agreement Url Required'),
(536, 'Web', 'currency_required', 'Currency Required'),
(537, 'Web', 'account_type_required', 'Account Type Required'),
(538, 'Web', 'status_required', 'Status Required'),
(539, 'Web', 'details_updated_successfully', 'Details Updated Successfully'),
(540, 'Web', 'payu_settings', 'Payu Settings'),
(541, 'Web', 'merchant_key', 'Merchant Key'),
(542, 'Web', 'salt', 'Salt'),
(543, 'Web', 'live_url', 'Live Url'),
(544, 'Web', 'test_url', 'Test Url'),
(545, 'Web', 'merchant_key_required', 'Merchant Key Required'),
(546, 'Web', 'salt_required', 'Salt Required'),
(547, 'Web', 'live_url_required', 'Live Url Required'),
(548, 'Web', 'test_url_required', 'Test Url Required'),
(549, 'Web', 'smtp_host', 'Smtp Host'),
(550, 'Web', 'smtp_port', 'Smtp Port'),
(551, 'Web', 'smtp_user', 'Smtp User'),
(552, 'Web', 'smtp_password', 'Smtp Password'),
(553, 'Web', 'smtp_host_required', 'Smtp Host Required'),
(554, 'Web', 'smtp_port_required', 'Smtp Port Required'),
(555, 'Web', 'smtp_user_required', 'Smtp User Required'),
(556, 'Web', 'smtp_password_required', 'Smtp Password Required'),
(557, 'Web', 'action', 'Action'),
(558, 'Web', 'updated_successfully', 'Updated Successfully'),
(559, 'Web', 'push_notification_settings', 'Push Notification Settings'),
(560, 'Web', 'one_signal_server_api_key_required', 'One Signal Server Api Key Required'),
(561, 'Web', 'one_signal_app_id_required', 'One Signal App Id Required'),
(562, 'Web', 'email_template', 'Email Template'),
(563, 'Web', 'edit_email_template', 'Edit Email Template'),
(564, 'Web', 'subject_required', 'Subject Required'),
(565, 'Web', 'email_template_required', 'Email Template Required'),
(566, 'Web', 'edit_sms_template', 'Edit Sms Template'),
(567, 'Web', 'sms_template_required', 'Sms Template Required'),
(568, 'Web', 'add_menu', 'Add Menu'),
(569, 'Web', 'records_saved_successfully', 'Records Saved Successfully'),
(570, 'Web', 'edit_menu', 'Edit Menu'),
(571, 'Web', 'save', 'Save'),
(572, 'Web', 'add_multi_records', 'Add Multi Records'),
(573, 'Web', 'add_single_record', 'Add Single Record'),
(574, 'Web', 'menu_name_required', 'Menu Name Required'),
(575, 'Web', 'punch_line_required', 'Punch Line Required'),
(576, 'Web', 'description_required', 'Description Required'),
(577, 'Web', 'menu_image_required', 'Menu Image Required'),
(578, 'Web', 'details_saved_successfully', 'Details Saved Successfully'),
(579, 'Web', 'menu_image_is_not_valid_file', 'Menu Image Is Not Valid File'),
(580, 'Web', 'add_addon', 'Add Addon'),
(581, 'Web', 'addon_name_required', 'Addon Name Required'),
(582, 'Web', 'price_required', 'Price Required'),
(583, 'Web', 'addon_image_is_not_valid_file', 'Addon Image Is Not Valid File'),
(584, 'Web', 'edit_addon', 'Edit Addon'),
(585, 'Web', 'add_option', 'Add Option'),
(586, 'Web', 'option_name', 'Option Name'),
(587, 'Web', 'option_name_required', 'Option Name Required'),
(588, 'Web', 'edit_option', 'Edit Option'),
(589, 'Web', 'language_name_required', 'Language Name Required'),
(590, 'Web', 'MSG_LANGUAGE_ADDED', 'MSG LANGUAGE ADDED'),
(592, 'Web', 'edit_phrase', 'Edit Phrase'),
(593, 'Web', 'test', 'Test'),
(594, 'Web', 'phrase_for_required', 'Phrase For Required'),
(595, 'Web', 'lang_key_required', 'Lang Key Required'),
(596, 'Web', 'add_cities', 'Add Cities'),
(597, 'Web', 'add_city', 'Add City'),
(598, 'Web', 'city_name_required', 'City Name Required'),
(599, 'Web', 'add_service_provide_location', 'Add Service Provide Location'),
(600, 'Web', 'edit_service_provide_location', 'Edit Service Provide Location'),
(601, 'Web', 'city_required', 'City Required'),
(602, 'Web', 'locality_required', 'Locality Required'),
(603, 'Web', 'pincode_required', 'Pincode Required'),
(604, 'Web', 'add_page', 'Add Page'),
(605, 'Web', 'edit_page', 'Edit Page'),
(606, 'Web', 'CRUD_operations_disabled_in_DEMO_version', 'CRUD Operations Disabled In DEMO Version'),
(607, 'Web', 'add_item', 'Add Item'),
(608, 'Web', 'edit_item', 'Edit Item'),
(609, 'Web', 'veg', 'Veg'),
(610, 'Web', 'nonveg', 'Non-veg'),
(611, 'Web', 'other', 'Other'),
(612, 'Web', 'menu_required', 'Menu Required'),
(613, 'Web', 'item_name_required', 'Item Name Required'),
(614, 'Web', 'item_cost_required', 'Item Cost Required'),
(615, 'Web', 'item_type_required', 'Item Type Required'),
(616, 'Web', 'item_description_required', 'Item Description Required'),
(617, 'Web', 'item_image_is_not_valid_file', 'Item Image Is Not Valid File'),
(618, 'Web', 'item_description', 'Item Description'),
(619, 'Web', 'add_items', 'Add Items'),
(620, 'Web', 'cost', 'Cost'),
(621, 'Web', 'item_details', 'Item Details'),
(622, 'Web', 'add_remove', 'Add Remove'),
(623, 'Web', 'select_atleast_one_option', 'Select Atleast One Option'),
(624, 'Web', 'name_required', 'Name Required'),
(625, 'Web', 'please_enter_proper_value_for_price_field', 'Please Enter Proper Value For Price Field'),
(626, 'Web', 'already_existed', 'Already Existed'),
(627, 'Web', 'select_option', 'Select Option'),
(628, 'Web', 'note_to_add_a_record_click_on_plus_button', 'Note: To add a record click on the (+) button'),
(631, 'Web', 'MSG_LANGUAGE_DELETED', 'MSG LANGUAGE DELETED'),
(632, 'Web', 'add_offer', 'Add Offer'),
(633, 'Web', 'offer_end_date', 'Offer End Date'),
(634, 'Web', 'offer_conditions', 'Offer Conditions'),
(635, 'Web', 'offer_image_name', 'Offer Image Name'),
(636, 'Web', 'offer_name_required', 'Offer Name Required'),
(637, 'Web', 'offer_cost_required', 'Offer Cost Required'),
(638, 'Web', 'offer_start_date_required', 'Offer Start Date Required'),
(639, 'Web', 'offer_valid_date_required', 'Offer Valid Date Required'),
(640, 'Web', 'serve_no_of_people_required', 'Serve No Of People Required'),
(641, 'Web', 'offer_image_is_not_valid_file', 'Offer Image Is Not Valid File'),
(642, 'Web', 'offer_conditions_required', 'Offer Conditions Required'),
(643, 'Web', 'gallary', 'Gallery'),
(644, 'Web', 'add_images', 'Add Images'),
(645, 'Web', 'alt_text', 'Alt Text'),
(646, 'Web', 'alternative_text', 'Alternative Text'),
(647, 'Web', 'edit_image', 'Edit Image'),
(648, 'Web', 'alternative_text_required', 'Alternative Text Required'),
(649, 'Web', 'image_is_not_valid_file', 'Image Is Not Valid File'),
(650, 'Web', 'update_profile', 'Update Profile'),
(651, 'Web', 'quantity', 'Quantity'),
(652, 'Web', 'item_required', 'Item Required'),
(653, 'Web', 'quantity_required', 'Quantity Required'),
(654, 'Web', 'please_enter_numbers_only', 'Please Enter Numbers Only'),
(655, 'Web', 'edit_offer', 'Edit Offer'),
(656, 'Web', 'view_faqs', 'View Faqs'),
(657, 'Web', 'question', 'Question'),
(658, 'Web', 'answer', 'Answer'),
(659, 'Web', 'add_faq', 'Add Faq'),
(660, 'Web', 'question_required', 'Question Required'),
(661, 'Web', 'answer_required', 'Answer Required'),
(662, 'Web', 'edit_faq', 'Edit Faq'),
(663, 'Web', 'add_faqs', 'Add Faqs'),
(664, 'Web', 'social_networks', 'Social Networks'),
(665, 'Web', 'facebook', 'Facebook'),
(666, 'Web', 'twitter', 'Twitter'),
(667, 'Web', 'google_plus', 'Google Plus'),
(668, 'Web', 'linked_in', 'Linked In'),
(669, 'Web', 'instagram', 'Instagram'),
(670, 'Web', 'pinterest', 'Pinterest'),
(671, 'Web', 'facebook_url_not_valid', 'Facebook Url Not Valid'),
(672, 'Web', 'twitter_url_not_valid', 'Twitter Url Not Valid'),
(673, 'Web', 'google_plus_url_not_valid', 'Google Plus Url Not Valid'),
(674, 'Web', 'linked_in_url_not_valid', 'Linked In Url Not Valid'),
(675, 'Web', 'instagram_url_not_valid', 'Instagram Url Not Valid'),
(676, 'Web', 'pinterest_url_not_valid', 'Pinterest Url Not Valid'),
(677, 'Web', 'tumblr', 'Tumblr'),
(678, 'Web', 'tumblr_url_not_valid', 'Tumblr Url Not Valid'),
(679, 'Web', 'day', 'Day'),
(680, 'Web', 'opened', 'Opened'),
(681, 'Web', 'closed', 'Closed'),
(682, 'Web', 'opening_hours', 'Opening Hours'),
(683, 'Web', 'login', 'Login'),
(684, 'Web', 'contact_us', 'Contact Us'),
(685, 'Web', 'loyality_points', 'Loyality Points'),
(686, 'Web', 'points_settings', 'Points Settings'),
(687, 'Web', 'user_reward_points', 'User Reward Points'),
(688, 'Web', 'points_logs', 'Points Logs'),
(689, 'Web', 'reports', 'Reports'),
(690, 'Web', 'from_date', 'From Date'),
(691, 'Web', 'to_date', 'To Date'),
(692, 'Web', 'from_date_required', 'From Date Required'),
(693, 'Web', 'to_date_required', 'To Date Required'),
(694, 'Web', 'master_settings', 'Master Settings'),
(695, 'Web', 'app_settings', 'App Settings'),
(696, 'Web', 'points_label_redeem_placeholder', 'Points Label Redeem Placeholder'),
(697, 'Web', 'points_label_earn', 'Points Label Earn'),
(698, 'Web', 'points_label_template', 'Points Label Template'),
(699, 'Web', 'maximum_earning_points_for_customer', 'Maximum Earning Points For Customer'),
(700, 'Web', 'points_earn_apply_only_on_the_following_payment_option', 'Points Earn Apply Only On The Following Payment Option'),
(701, 'Web', 'cash_on_delivery', 'Cash On Delivery'),
(702, 'Web', 'paypal', 'Paypal'),
(703, 'Web', 'stripe', 'Stripe'),
(704, 'Web', 'earning_points_conversion_settings', 'Earning Points Conversion Settings'),
(705, 'Web', 'earning_point', 'Earning Points'),
(706, 'Web', 'earning_point_value_in_R', 'Earning Point Value In R$'),
(707, 'Web', 'redeeming_points_conversion_settings', 'Redeeming Points Conversion Settings'),
(708, 'Web', 'redeeming_point', 'Redeeming Point'),
(709, 'Web', 'redeeming_point_value_in_R', 'Redeeming Point Value In R$'),
(710, 'Web', 'disabled_redeeming', 'Disabled Redeeming'),
(711, 'Web', 'points_earned_for_actions', 'Points Earned For Actions'),
(712, 'Web', 'reward_points_for_account_signup', 'Reward Points For Account Signup'),
(713, 'Web', 'reward_points_for_restaurant_review', 'Reward Points For Restaurant Review'),
(714, 'Web', 'reward_points_for_first_order', 'Reward Points For First Order'),
(715, 'Web', 'reward_points_for_sharing_app', 'Reward Points For Sharing App'),
(716, 'Web', 'points_expiry', 'Points Expiry'),
(717, 'Web', 'points_expire_at_the_end_of_the_next_year_after_you_earned_them', 'Points Expire At The End Of The Next Year After You Earned Them'),
(718, 'Web', 'points_never_expire', 'Points Never Expire'),
(719, 'Web', 'minimum_points_can_be_used', 'Minimum Points Can Be Used'),
(720, 'Web', 'maximum_points_can_be_used', 'Maximum Points Can Be Used'),
(721, 'Web', 'enabled_points_system', 'Enabled Points System'),
(722, 'Web', 'required', 'Required'),
(723, 'Web', 's_no', 'S No'),
(724, 'Web', 'customer_name', 'Customer Name'),
(725, 'Web', 'customer_phone', 'Customer Phone'),
(726, 'Web', 'no_of_items_booked', 'No Of Items Booked'),
(727, 'Web', 'order_cost', 'Order Cost'),
(728, 'Web', 'booked_date_time', 'Booked Date Time'),
(729, 'Web', 'payment', 'Payment'),
(730, 'Web', 'paid_amount', 'Paid Amount'),
(731, 'Web', 'booked_date', 'Booked Date'),
(732, 'Web', 'total_amount', 'Total Amount'),
(733, 'Web', 'no_customers_available', 'No Customers Available'),
(734, 'Web', 'client_wise_reports', 'Client Wise Reports'),
(735, 'Web', 'customer', 'Customer'),
(736, 'Web', 'customer_required', 'Customer Required'),
(737, 'Web', 'location_wise_reports', 'Location Wise Reports'),
(738, 'Web', 'item_wise_reports', 'Item Wise Reports'),
(739, 'Web', 'item', 'Item'),
(740, 'Web', 'date_wise_reports', 'Date Wise Reports'),
(741, 'Web', 'updated_successfully', 'Updated Successfully'),
(742, 'Web', 'calendar', 'Calendar'),
(743, 'Web', 'point_settings', 'Point Settings'),
(744, 'Web', 'points_label_redeem_placeholder', 'Points Label Redeem Placeholder'),
(745, 'Web', 'points_label_earn', 'Points Label Earn'),
(746, 'Web', 'points_label_template', 'Points Label Template'),
(747, 'Web', 'maximum_earning_points_for_customer', 'Maximum Earning Points For Customer'),
(748, 'Web', 'points_earn_apply_only_on_the_following_payment_options', 'Points Earn Apply Only On The Following Payment Options'),
(749, 'Web', 'earning_point', 'Earning Points'),
(750, 'Web', 'earning_point_value_in_', 'Earning Point Value In '),
(751, 'Web', 'redeeming_points_conversion_settings', 'Redeeming Points Conversion Settings'),
(752, 'Web', 'redeeming_point', 'Redeeming Point'),
(754, 'Web', 'disabled_redeeming', 'Disabled Redeeming'),
(755, 'Web', 'redeeming_point_value_in_', 'Redeeming Point Value In'),
(756, 'Web', 'points_earned_for_actions', 'Points Earned For Actions'),
(757, 'Web', 'reward_points_for_restaurant_review', 'Reward Points For Restaurant Review'),
(758, 'Web', 'reward_points_for_first_order', 'Reward Points For First Order'),
(759, 'Web', 'reward_points_for_sharing_app', 'Reward Points For Sharing App'),
(760, 'Web', 'points_expiry', 'Points Expiry'),
(761, 'Web', 'points_expire_at_the_end_of_the_next_year_after_you_earned_them', 'Points Expire At The End Of The Next Year After You Earned Them'),
(762, 'Web', 'points_never_expire', 'Points Never Expire'),
(763, 'Web', 'minimum_points_can_be_used', 'Minimum Points Can Be Used'),
(764, 'Web', 'maximum_points_can_be_used', 'Maximum Points Can Be Used'),
(765, 'Web', 'enabled_points_system', 'Enabled Points System'),
(766, 'Web', 'points_label_redeem_placeholder_required', 'Points Label Redeem Placeholder Required'),
(767, 'Web', 'points_label_earn_required', 'Points Label Earn Required'),
(768, 'Web', 'points_label_template_required', 'Points Label Template Required'),
(769, 'Web', 'maximum_earning_points_for_customer_required', 'Maximum Earning Points For Customer Required'),
(770, 'Web', 'payment_options_required', 'Payment Options Required'),
(771, 'Web', 'earning_point_required', 'Earning Point Required'),
(772, 'Web', 'earning_point_value_required', 'Earning Point Value Required'),
(773, 'Web', 'redeeming_point_required', 'Redeeming Point Required'),
(774, 'Web', 'redeeming_point_value_required', 'Redeeming Point Value Required'),
(775, 'Web', 'points_for_restaurant_review_required', 'Points For Restaurant Review Required'),
(776, 'Web', 'points_for_first_order_required', 'Points For First Order Required'),
(777, 'Web', 'points_for_sharing_app_required', 'Points For Sharing App Required'),
(778, 'Web', 'points_expiry_required', 'Points Expiry Required'),
(779, 'Web', 'minimum_points_can_be_used_required', 'Minimum Points Can Be Used Required'),
(780, 'Web', 'maximum_points_can_be_used_required', 'Maximum Points Can Be Used Required'),
(781, 'Web', 'reward_points_for_account_signup', 'Reward Points For Account Signup'),
(782, 'Web', 'reward_points_for_account_signup_required', 'Reward Points For Account Signup Required'),
(783, 'Web', 'earning_point_value', 'Earning Point Value'),
(784, 'Web', 'redeeming_point_value', 'Redeeming Point Value'),
(785, 'Web', 'points_for_restaurant_review', 'Points For Restaurant Review'),
(786, 'Web', 'points_for_first_order', 'Points For First Order'),
(787, 'Web', 'points_for_sharing_app', 'Points For Sharing App'),
(788, 'Web', 'total_points', 'Total Points'),
(789, 'Web', 'referral_settings', 'Referral Settings'),
(790, 'Web', 'referral_enabled', 'Referral Enabled'),
(791, 'Web', 'points_for_refer_anyone', 'Points For Refer Anyone'),
(792, 'Web', 'points_for_referred_by_anyone', '	Points For Referred By Anyone'),
(793, 'Web', 'points_for_refer_anyone_required', 'Points For Refer Anyone Required'),
(794, 'Web', 'points_for_referred_by_anyone_required', 'Points For Referred By Anyone Required'),
(795, 'Web', 'points_for_refer_anyone', 'Points For Refer Anyone'),
(796, 'Web', 'points_for_referring_person', '	Points For Referring Person'),
(797, 'Web', 'points_for_referred_person', '	points for referred person'),
(798, 'Web', 'fevicon', 'Favicon'),
(799, 'Web', 'view_customers', 'View Customers'),
(800, 'Web', 'designed_by', 'Designed By'),
(801, 'Web', 'orders', 'Orders'),
(802, 'Web', 'refferal_users', 'Refferal Users'),
(803, 'Web', 'order', 'Order'),
(804, 'Web', 'login_register', 'Login Register'),
(805, 'Web', 'loginregister', 'Login-register'),
(806, 'Web', 'email_required', 'Email Required'),
(807, 'Web', 'password_required', 'Password Required'),
(808, 'Web', 'forgot_password', 'Forgot Password'),
(809, 'Web', 'login_through_facebook', 'Login Through Facebook'),
(810, 'Web', 'login_through_google', 'Login Through Google'),
(811, 'Web', 'first_name_required', 'First Name Required'),
(812, 'Web', 'last_name_required', 'Last Name Required'),
(813, 'Web', 'phone_required', 'Phone Required'),
(814, 'Web', 'confirm_password_required', 'Confirm Password Required'),
(815, 'Web', 'password_confirm_password_should_be_same', 'Password Confirm Password Should Be Same'),
(816, 'Web', 'min_length6', 'Min Length6'),
(817, 'Web', 'min_length_6', 'Min Length 6'),
(818, 'Web', 'min_length_should_be_6', 'Min Length Should Be 6'),
(819, 'Web', 'login_signup', 'Login Signup'),
(820, 'Web', 'reset_password', 'Reset Password'),
(821, 'Web', 'follow_us', 'Follow Us'),
(822, 'Web', 'about_us', 'About Us'),
(823, 'Web', 'message', 'Message'),
(824, 'Web', 'message_required', 'Message Required'),
(825, 'Web', 'contact_query', 'Contact Query'),
(826, 'Web', 'your_contact_request_not_sent_due_to_some_technical_issue_please_contact_us_after_some_time_thankyou', 'Your Contact Request Not Sent Due To Some Technical Issue Please Contact Us After Some Time Thankyou'),
(827, 'Web', 'my_orders', 'My Orders'),
(828, 'Web', 'my_points', 'My Points'),
(829, 'Web', 'my_account', 'My Account'),
(830, 'Web', 'logout', 'Logout'),
(831, 'Web', 'logged_out_successfully', 'Logged Out Successfully'),
(832, 'Web', 'profile_updated_successfully', 'Profile Updated Successfully'),
(833, 'Web', 'profile_image', 'Profile Image'),
(834, 'Web', 'old_password', 'Old Password'),
(835, 'Web', 'new_password', 'New Password'),
(836, 'Web', 'new_confirm_password', 'New Confirm Password'),
(837, 'Web', 'old_password_required', 'Old Password Required'),
(838, 'Web', 'new_password_required', 'New Password Required'),
(839, 'Web', 'new_confirm_password_required', 'New Confirm Password Required'),
(840, 'Web', 'current_password', 'Current Password'),
(841, 'Web', 'record_not_found', 'Record Not Found'),
(842, 'Web', 'profile_image_is_not_valid_file', 'Profile Image Is Not Valid File'),
(843, 'Web', 'change', 'Change'),
(844, 'Web', 'signup', 'Signup'),
(845, 'Web', 'referral_code', 'Referral Code'),
(846, 'Web', 'user_points', 'User Points'),
(847, 'Web', 'login_into_facebook', 'Login Into Facebook'),
(848, 'Web', 'login_into_google', 'Login Into Google'),
(849, 'Web', 'customers', 'Customers'),
(850, 'Web', 'Our_Links', 'Our Links'),
(851, 'Web', 'view_card_images', 'View Card Images'),
(852, 'Web', 'card_image', 'Card image'),
(853, 'Web', 'add_card', 'Add Card'),
(854, 'Web', 'card_image_is_not_valid_file', 'Card image is not valid file'),
(855, 'Web', 'edit_card', 'Edit card'),
(856, 'Web', 'street', 'Street'),
(857, 'Web', 'house_no_required', 'House no required'),
(858, 'Web', 'street_required', 'Street required'),
(859, 'Web', 'landmark_required', 'Landmark required'),
(860, 'Web', 'add_address', 'Add address'),
(861, 'Web', 'house_no', 'House no'),
(862, 'Web', 'address_saved_successfully', 'Address saved successfully'),
(863, 'Web', 'address_deleted_successfully', 'Address deleted successfully'),
(864, 'Web', 'addresses', 'Addresses'),
(865, 'Web', 'delivery_fee', 'Delivery Fee'),
(866, 'Web', 'delivery_from_time', 'Delivery From Time'),
(867, 'Web', 'delivery_to_time', 'Delivery to Time'),
(868, 'Web', 'delivery_time_units', 'Delivery Time Units'),
(869, 'Web', 'minutes', 'Minutes'),
(870, 'Web', 'hours', 'Hours'),
(871, 'Web', 'payment_type_required', 'Payment type required'),
(872, 'Web', 'payment_methods', 'Payment Methods'),
(873, 'Web', 'online', 'Online'),
(874, 'Web', 'cash_on_delivery', 'Cash On Delivery'),
(875, 'Web', 'card_on_delivery', 'Card on Delivery'),
(876, 'Web', 'payment_methods_required', 'Payment Methods Required'),
(877, 'Web', 'site_logo_file_is_not_valid', 'Site logo file is not valid'),
(878, 'Web', 'fevicon_file_is_not_valid', 'Fevicon file is not valid'),
(879, 'Web', 'no_payment_methods_available', 'No Payment Methods Available'),
(880, 'Web', 'paypal_email_required', 'Paypal email required'),
(881, 'Web', 'country_code_is_required', 'Country code is required'),
(882, 'Web', 'for_app', 'For app'),
(883, 'Web', 'app_details', 'App details'),
(884, 'Web', 'paypal_details_for_app', 'Paypal details for app'),
(885, 'Web', 'is_most_selling_item', 'Is Most Selling item'),
(886, 'Web', 'order_successfully_saved', 'Order successfully saved'),
(887, 'Web', 'most_selling_items', 'Most Selling Items'),
(888, 'Web', 'view_orders', 'View Orders'),
(889, 'Web', 'order_no', 'Order No'),
(890, 'Web', 'order_date', 'Order Date'),
(891, 'Web', 'order_time', 'Order Time'),
(892, 'Web', 'new_orders', 'New Orders'),
(893, 'Web', 'under_process_orders', 'Under Process Orders'),
(894, 'Web', 'out_to_deliver_orders', 'Out to Deliver Orders'),
(895, 'Web', 'delivered_orders', 'Delivered Orders'),
(896, 'Web', 'cancelled_orders', 'Cancelled Orders'),
(897, 'Web', 'view_order', 'View Order'),
(898, 'Web', 'delivery_cost', 'Delivery Cost'),
(899, 'Web', 'is_points_redeemed', 'Is Points Redeemed'),
(900, 'Web', 'option', 'Option'),
(901, 'Web', 'item_quantity', 'Item Quantity'),
(902, 'Web', 'total_cost', 'Total Cost'),
(903, 'Web', 'is_deleted', 'Is Deleted'),
(904, 'Web', 'order_items', 'Order Items'),
(905, 'Web', 'order_addons', 'Order Addons'),
(906, 'Web', 'order_offers', 'Order Offers'),
(907, 'Web', 'offer_quantity', 'Offer Quantity'),
(908, 'Web', 'no_of_products', 'No of Products'),
(909, 'Web', 'order_update', 'Order update'),
(910, 'Web', 'update_order_status', 'Update order status'),
(911, 'Web', 'processing', 'Processing'),
(912, 'Web', 'out_to_deliver', 'Out to Deliver'),
(913, 'Web', 'delivered', 'Delivered'),
(914, 'Web', 'cancelled', 'Cancelled'),
(915, 'Web', 'please_select_order_status', 'Please select order status'),
(916, 'Web', 'order_status_updated_successfully', 'Order status updated successfully'),
(917, 'Web', 'order_status', 'Order status'),
(918, 'Web', 'email_not_send_to_user', 'Email not send to user'),
(919, 'Web', 'process', 'Process'),
(920, 'Web', 'earning_points_for_customer_for_an_order', 'Earning Points for Customer for an Order'),
(921, 'Web', 'print', 'Print'),
(922, 'Web', 'stripe_cards', 'Stripe Cards'),
(923, 'Web', 'point_logs_of', 'Point Logs of'),
(924, 'Web', 'points', 'Points'),
(925, 'Web', 'transaction_type', 'Transaction Type'),
(926, 'Web', 'referral_users', 'Referral Users'),
(927, 'Web', 'refer_user', 'Refer User'),
(928, 'Web', 'referred_by', 'Referred by'),
(929, 'Web', 'date', 'Date'),
(930, 'Web', 'user_arleady_existed_with_this_email_id', 'User arleady existed with this email id'),
(931, 'Web', 'please_enter_valid_email_id', 'Please enter valid email id'),
(932, 'Web', 'no_user_found_with_this_referral_code', 'No user found with this referral code'),
(933, 'Web', 'orders_overview', 'Orders Overview'),
(934, 'Web', 'no_items_available_please_contact_administration', 'No items available please contact administration'),
(935, 'Web', 'show_all', 'Show all'),
(936, 'Web', 'add_to_cart', 'Add to cart'),
(937, 'Web', 'order_can_not_be_booked_please_follow_restaurant_timings', 'Order can not be booked please follow restaurant timings'),
(938, 'Web', 'get_languageword', 'Get language word'),
(939, 'Web', 'thank_you', 'Thank you'),
(940, 'Web', 'your_order_is_received_we_will_contact_you_soon', 'Your order is received we will contact you soon'),
(941, 'Web', 'sms_sent_to_user', 'Sms sent to user'),
(942, 'Web', 'order_item_deleted_successfully', 'Order item deleted successfully'),
(943, 'Web', 'Activation_Email_Sent', 'Activation Email Sent'),
(944, 'Web', 'arabic', 'Arabic'),
(945, 'Web', 'dutch', 'Dutch'),
(946, 'Web', 'records_not_saved', 'Records not saved'),
(947, 'Web', 'email_sent_to_user', 'Email sent to user'),
(948, 'Web', 'customer_wise_reports', 'Customer Wise Reports'),
(949, 'Web', 'please_enter_valid_value', 'Please enter valid value'),
(950, 'Web', 'facebook_app_id', 'Facebook App id'),
(951, 'Web', 'facebook_app_secret', 'Facebook App Secret'),
(952, 'Web', 'facebook_app_id_required', 'Facebook app id required'),
(953, 'Web', 'facebook_app_secret_required', 'Facebook App Secret Required'),
(954, 'Web', 'order_addon_item_deleted_successfully', 'Order addon item deleted successfully'),
(955, 'Web', 'units', 'Units'),
(956, 'Web', 'profile_image_updated_successfully', 'Profile image updated successfully'),
(957, 'Web', 'language_code', 'Language Code'),
(958, 'Web', 'language_code_required', 'Language code required'),
(959, 'Web', 'title_required', 'Title required'),
(960, 'Web', 'language_required', 'Language required'),
(961, 'Web', 'ios_urlxss_clean', 'Ios url|xss clean'),
(962, 'Web', 'android_urlxss_clean', 'Android url|xss clean'),
(963, 'Web', 'points_for_referred_person', '	points for referred person'),
(964, 'Web', 'view_item_types', 'View Item Types'),
(965, 'Web', 'add_item_type', 'Add Item Type'),
(966, 'Web', 'add_item_types', 'Add Item Types'),
(967, 'Web', 'no_items_available', 'No items available'),
(968, 'Web', 'item_types', 'Item Types'),
(969, 'Web', 'email_sms_not_send_to_user', 'Email sms not send to user'),
(970, 'Web', 'order_offer_item_deleted_successfully', 'Order offer item deleted successfully'),
(971, 'Web', 'edit_item_type', 'Edit item type'),
(972, 'Web', 'total_orders_amount', 'Total orders amount'),
(973, 'Web', 'total_items_amount', 'Total items amount'),
(974, 'Web', 'no_of_points_redeemed', 'No of points redeemed'),
(975, 'Web', 'points_value', 'Points value'),
(976, 'Web', 'google_client_id', 'Google Client id'),
(977, 'Web', 'google_client_secret', 'Google Client Secret'),
(978, 'Web', 'google_client_id_required', 'Google Client Id Required'),
(979, 'Web', 'google_client_secret_required', 'Google Client Secret Required'),
(980, 'Web', 'no_offers_available_please_contact_administration', 'No offers available please contact administration'),
(981, 'Web', 'Account_is_inactive', 'Account is inactive'),
(982, 'Web', 'login_success', 'Login success'),
(983, 'Web', 'Incorrect_Login', 'Incorrect Login'),
(984, 'Web', 'Password_Successfully_Changed', 'Password Successfully Changed'),
(985, 'Web', 'Old_password_is_wrong', '##Old password is wrong##'),
(986, 'Web', 'restaurant_opening_hours', 'Restaurant opening hours'),
(987, 'Web', 'No_Orders', 'No Orders'),
(988, 'Web', 'Order_Details', 'Order Details'),
(989, 'Web', 'admin_panel', 'Admin panel'),
(990, 'Web', 'product_details', 'Product details'),
(991, 'Web', 'sub_total', 'Sub total'),
(992, 'Web', 'grand_total', 'Grand total'),
(993, 'Web', 'points_redeemed', 'Points redeemed'),
(994, 'Web', 'points_discount', 'Points discount'),
(995, 'Web', 'address_details', 'Address details'),
(996, 'Web', 'new_address', 'New address'),
(997, 'Web', 'house_number_required', 'House number required'),
(998, 'Web', 'pincode', 'PIN Code'),
(999, 'Web', 'addons', 'Add-ons'),
(1000, 'Web', 'points_earned_for_buy_an_item_order', 'Points earned for buy an item order'),
(1001, 'Web', 'home_images', 'Home Images'),
(1002, 'Web', 'add_image', 'Add image'),
(1003, 'Web', 'image_uploaded_successfully', 'Image uploaded successfully'),
(1004, 'Web', 'image_status_updated_successfully', 'Image status updated successfully'),
(1005, 'Web', 'back', 'Back'),
(1006, 'Web', 'points_redeemed_for_buy_an_item_order', 'Points redeemed for buy an item order'),
(1007, 'Web', 'please_provide_delivery_address_details', 'Please provide delivery address details'),
(1008, 'Web', 'saved_addresses', 'Saved addresses'),
(1009, 'App', 'referal_code', 'Referal Code'),
(1010, 'App', 'sign_up', 'Sign up'),
(1011, 'App', 'cart_list', 'Cart List'),
(1012, 'App', 'new_user', 'New User'),
(1013, 'App', 'terms_and_conditions', 'Terms and Conditions'),
(1014, 'App', 'version', 'Version'),
(1015, 'App', 'confirm_new_password', 'Confirm New Password'),
(1016, 'App', 'no_orders_found', 'No Orders Found'),
(1017, 'App', 'order_history', 'Order History'),
(1018, 'App', 'order_details', 'Order Details'),
(1019, 'App', 'order_products', 'Order Products'),
(1020, 'App', 'offer_products', 'Offer Products'),
(1021, 'App', 'time', 'Time'),
(1022, 'App', 'payment_type', 'Payment Type'),
(1023, 'App', 'order_address', 'Order Address'),
(1025, 'Web', 'order_address', 'Order Address'),
(1026, 'App', 'home', 'Home'),
(1027, 'App', 'first_name', 'First Name'),
(1028, 'App', 'last_name', 'Last Name'),
(1029, 'App', 'email', 'Email'),
(1030, 'App', 'phone', 'Phone'),
(1031, 'App', 'password', 'Password'),
(1032, 'App', 'confirm_password', 'Confirm Password'),
(1033, 'App', 'logout', 'Logout'),
(1034, 'App', 'login', 'Login'),
(1036, 'App', 'about_us', 'About Us'),
(1037, 'App', 'change_langauage', 'Change Language'),
(1038, 'App', 'forgot_password', 'Forgot Password'),
(1039, 'App', 'address', 'Address');
INSERT INTO `cr_languagewords` (`lang_id`, `phrase_for`, `lang_key`, `english`) VALUES
(1040, 'App', 'fax', 'Fax'),
(1041, 'App', 'current_password', 'Current Password'),
(1042, 'App', 'new_password', 'New Password'),
(1043, 'App', 'change', 'Change'),
(1044, 'App', 'delivered', 'Delivered'),
(1045, 'App', 'cancelled', 'Cancelled'),
(1046, 'App', 'processing', 'Processing'),
(1047, 'App', 'addons', 'Add-ons'),
(1048, 'App', 'offers', 'Offers'),
(1049, 'App', 'cost', 'Cost'),
(1050, 'App', 'order_no', 'Order No'),
(1051, 'App', 'points_redeemed', 'Points redeemed'),
(1052, 'App', 'no_of_points_redeemed', 'No of points redeemed'),
(1053, 'App', 'order_status', 'Order status'),
(1055, 'Web', 'first name', 'First name'),
(1056, 'Web', 'Incorrect Login', 'Incorrect Login'),
(1057, 'Web', 'profile_picture', 'Profile picture'),
(1058, 'Web', 'please_upload_profile_picture', 'Please upload profile picture'),
(1059, 'Web', 'please_upload_valid_profile_picture', 'Please upload valid profile picture'),
(1060, 'Web', 'phone_number_required', 'Phone number required'),
(1061, 'Web', 'min_length_should_be 6', 'Min length should be 6'),
(1062, 'Web', 'Activation Email Sent', 'Activation Email Sent'),
(1063, 'Web', 'points_for_registration', 'Points for registration'),
(1064, 'Web', 'points_for_referred_user', 'Points for referred user'),
(1065, 'Web', 'points_for_referred_by_user', 'Points for referred by user'),
(1066, 'Web', 'earning_points_conversion_settings', 'Earning Points Conversion Settings'),
(1067, 'Web', 'add-ons', 'Add-ons'),
(1068, 'Web', 'points_earned_for_first_order', 'Points earned for first order'),
(1069, 'Web', 'delivery_address', 'Delivery address'),
(1070, 'Web', 'payment_method', 'Payment method'),
(1071, 'Web', 'add_ons', 'Add ons'),
(1072, 'Web', 'points_returned_for_cancelled_an_item_order', 'Points returned for cancelled an item order'),
(1073, 'Web', 'ios_url|xss_clean', 'Ios url|xss clean'),
(1074, 'Web', 'android_url|xss_clean', 'Android url|xss clean'),
(1075, 'Web', '	points_for_referring_person', 'points for referring person'),
(1076, 'Web', '	points_for_referred_person', 'points for referred person'),
(1077, 'Web', 'login success', 'Login success'),
(1078, 'Web', 'No Orders', 'No Orders'),
(1079, 'Web', 'Order Details', 'Order Details'),
(1080, 'Web', 'Address deleted successfully', 'Address deleted successfully'),
(1081, 'Web', 'Address added successfully', 'Address added successfully'),
(1082, 'App', 'add_address', 'Add address'),
(1083, 'App', 'save', 'Save'),
(1084, 'App', 'pincode', 'Pincode'),
(1085, 'App', 'locality', 'Locality'),
(1086, 'App', 'city', 'City'),
(1087, 'App', 'landmark', 'Landmark'),
(1088, 'App', 'street', 'Street'),
(1089, 'App', 'cancel', 'Cancel'),
(1090, 'App', 'delete', 'Delete'),
(1091, 'App', 'do_you_want_to_delete_address', 'Do you want to delete address'),
(1092, 'App', 'order_offers', 'Order Offers'),
(1093, 'App', 'user_profile', 'User Profile'),
(1094, 'App', 'house_no', 'House No'),
(1095, 'App', 'select_language', 'Select Language'),
(1096, 'App', 'change_language', 'Change Language'),
(1097, 'Web', 'Lang Key', 'Lang Key'),
(1098, 'Web', 'max_size', 'Max size'),
(1099, 'Web', 'home_slider_images', 'Home slider images'),
(1100, 'App', 'menu', 'Menu'),
(1101, 'Web', 'greek', 'Greek'),
(1102, 'Web', 'forgot password email not found', 'Forgot password email not found'),
(1103, 'Web', 'your_contact_request_sent_successfully', 'Your contact request sent successfully'),
(1104, 'Web', '	points_for_referred_by_anyone', 'points for referred by anyone'),
(1105, 'Web', 'have_account', 'Have account'),
(1106, 'Web', 'pusher_notification_settings', 'Pusher Notification Settings'),
(1107, 'Web', 'APP_ID', 'APP ID'),
(1108, 'Web', 'KEY', 'KEY'),
(1109, 'Web', 'SECRET', 'SECRET'),
(1110, 'Web', 'pusher_app_id_required', 'Pusher app id required'),
(1111, 'Web', 'pusher_key_required', 'Pusher key required'),
(1112, 'Web', 'pusher_secret_required', 'Pusher secret required'),
(1113, 'Web', 'pusher_notifications', 'Pusher notifications'),
(1114, 'Web', 'new_order', 'New order'),
(1115, 'Web', 'you_have_new_order_would_you_like_to_view', 'You have new order would you like to view'),
(1116, 'Web', 'Offer Products', 'Offer Products'),
(1117, 'Web', 'portuguese', 'Portuguese'),
(1118, 'Web', 'earning points conversion settings', 'Earning points conversion settings'),
(1119, 'Web', 'registration completed successfully activation email sent', 'Registration completed successfully activation email sent'),
(1120, 'Web', 'Account is inactive', 'Account is inactive'),
(1121, 'App', 'no_items_in_cart', 'No items in cart'),
(1122, 'App', 'add_items', 'Add Items'),
(1123, 'App', 'offer_details', 'Offer Details'),
(1124, 'App', 'order', 'Order'),
(1125, 'Web', 'please_select_llanguage', 'Please select llanguage'),
(1126, 'Web', 'please_select_language', 'Please select language'),
(1127, 'Web', 'are_you_sure_to_delete_address', 'Are you sure to delete address'),
(1128, 'App', 'sub_total', 'Sub total'),
(1129, 'App', 'delivery_fee', 'Delivery fee'),
(1130, 'App', 'total', 'Total'),
(1131, 'App', 'payment', 'Payment'),
(1132, 'App', 'online', 'Online'),
(1133, 'App', 'cash', 'Cash'),
(1134, 'App', 'proceed', 'Proceed'),
(1135, 'App', 'cost_details', 'Cost Details'),
(1136, 'App', 'place_order', 'Place Order'),
(1137, 'App', 'phone_number', 'Phone number'),
(1138, 'App', 'date', 'Date'),
(1139, 'App', 'select_address', 'Select Address'),
(1140, 'App', 'no_address_added', 'No address added'),
(1141, 'App', 'redeem_points', 'Redeem Points'),
(1142, 'App', 'add_new_address', 'Add New Address'),
(1143, 'App', 'would_you_like_to_reedeem_points', 'Would you like to redeem points'),
(1144, 'App', 'points_value', 'Points Value'),
(1145, 'Web', 'logged in successfully', 'Logged in successfully'),
(1146, 'Web', 'Service Cities', 'Service Cities'),
(1147, 'Web', 'Thanks for your rating', 'Thanks for your rating'),
(1148, 'Web', 'Thanks for updated rating', 'Thanks for updated rating'),
(1149, 'App', 'loading', 'Loading'),
(1150, 'App', 'item_added_to_cart', 'Item added to cart'),
(1151, 'App', 'already_added_to_cart', 'Already added to cart'),
(1152, 'App', 'specify_date', 'Specify Date'),
(1153, 'App', 'our_location', 'Our Location'),
(1154, 'App', 'points', 'Points'),
(1155, 'App', 'my_points', 'My points'),
(1156, 'App', 'rate_this_order', 'Rate this order'),
(1157, 'Web', 'registration completed successfully password sent to email', 'Registration completed successfully password sent to email'),
(1158, 'App', 'done', 'Done'),
(1159, 'App', 'phone_required', 'Phone required'),
(1160, 'App', 'payment_status', 'Payment status'),
(1161, 'App', 'thanks_for_your_order', 'Thanks for your order'),
(1162, 'App', 'your_order_of', 'Your order of'),
(1163, 'App', 'has_been_successfully_booked', 'has been successfully booked'),
(1164, 'Web', 'kitchen_managers', 'Kitchen Managers'),
(1165, 'Web', 'add_record', 'Add record'),
(1166, 'Web', 'add_kitchen_manager', 'Add Kitchen Manager'),
(1167, 'Web', 'user_already_exists', 'User already exists'),
(1168, 'Web', 'edit_kitchen_manager', 'Edit Kitchen Manager'),
(1169, 'Web', 'delivery_managers', 'Delivery Managers'),
(1170, 'Web', 'add_delivery_manager', 'Add Delivery Manager'),
(1171, 'Web', 'user_record_created_successfully', 'User record created successfully'),
(1172, 'Web', 'edit_delivery_manager', 'Edit Delivery Manager'),
(1173, 'Web', 'assigned_cities', 'Assigned cities'),
(1174, 'Web', 'message_to_customer', 'Message to customer'),
(1175, 'Web', 'kitchen_manager', 'Kitchen Manager'),
(1176, 'Web', 'delivery_manager', 'Delivery Manager'),
(1177, 'Web', 'kitchen_manager_dashboard', 'Kitchen Manager Dashboard'),
(1178, 'Web', 'kitchen_manager_has_been_sent_an_order_to_delivery_manager', 'Kitchen Manager has been sent an Order to Delivery Manager'),
(1179, 'Web', 'would_you_like_to_view', 'Would you like to view'),
(1180, 'Web', 'please_select_delivery_manager', 'Please select delivery manager'),
(1181, 'Web', 'delivery_manager_dashboard', 'Delivery Manager Dashboard'),
(1182, 'Web', 'delivery_manager_has_been_updated_an_order_as_delivered', 'Delivery Manager has been updated an order as delivered'),
(1183, 'Web', 'kitchen_manager_has_been_sent_an_order', 'Kitchen Manager has been sent an order'),
(1184, 'Web', 'contact_details', 'Contact details'),
(1185, 'Web', 'visit_us', 'Visit us'),
(1186, 'Web', 'email_us', 'Email us'),
(1187, 'Web', 'call_us', 'Call us'),
(1188, 'Web', 'links', 'Links'),
(1189, 'Web', 'site_map', 'Site map'),
(1190, 'Web', 'hot_and_spicy', 'Hot & Spicy'),
(1191, 'Web', 'delicious_food', 'DELICIOUS FOOD'),
(1192, 'Web', 'our_menu', 'Our Menu'),
(1193, 'Web', 'get_connected_with_us', 'Get connected with us'),
(1194, 'Web', 'opening_time', 'OPENING TIME'),
(1195, 'Web', 'send', 'Send'),
(1196, 'Web', 'invalid_email', 'Invalid email'),
(1197, 'Web', 'view_menu_categories', 'View menu categories'),
(1198, 'Web', 'add_menu_category', 'Add menu category'),
(1199, 'Web', 'category_name_required', 'Category name required'),
(1200, 'Web', 'edit_menu_category', 'Edit menu category'),
(1201, 'Web', 'menu_categories', 'Menu categories'),
(1202, 'Web', 'select_menu_category', 'Select menu category'),
(1203, 'Web', 'menu_category', 'Menu category'),
(1204, 'Web', 'menu_category_required', 'Menu category required'),
(1205, 'Web', 'your orders', 'Your orders'),
(1206, 'Web', 'my address', 'My address'),
(1207, 'Web', 'No service localities', 'No service localities'),
(1208, 'Web', 'street_name_required', 'Street name required'),
(1209, 'Web', 'how_it_works', 'How it works'),
(1210, 'Web', 'privacy_and_policy', 'Privacy and policy'),
(1211, 'Web', 'terms_conditions', 'Terms conditions'),
(1212, 'Web', 'privacy_policy', 'Privacy policy'),
(1213, 'Web', 'site_url', 'Site url'),
(1214, 'Web', 'menu_image_url', 'Menu image url'),
(1215, 'Web', 'item_image_url', 'Item image url'),
(1216, 'Web', 'addon_image_url', 'Addon image url'),
(1217, 'Web', 'offer_image_url', 'Offer image url'),
(1218, 'Web', 'site_url_required', 'Site url required'),
(1219, 'Web', 'menu_image_url_required', 'Menu image url required'),
(1220, 'Web', 'item_image_url_required', 'Item image url required'),
(1221, 'Web', 'addon_image_url_required', 'Addon image url required'),
(1222, 'Web', 'offer_image_url_required', 'Offer image url required'),
(1223, 'Web', 'service_url', 'Service url'),
(1224, 'Web', 'menu_image_thumb_url', 'Menu image thumb url'),
(1225, 'Web', 'item_image_thumb_url', 'Item image thumb url'),
(1226, 'Web', 'addon_image_thumb_url', 'Addon image thumb url'),
(1227, 'Web', 'offer_image_thumb_url', 'Offer image thumb url'),
(1228, 'Web', 'tinify_settings', 'Tinify settings'),
(1229, 'Web', 'use_tinify', 'Use tinify'),
(1230, 'Web', 'tinify_API_KEY', 'Tinify API KEY'),
(1231, 'Web', 'download_app', 'Download app'),
(1232, 'Web', 'Send message', 'Send message'),
(1233, 'Web', 'enable_redeeming', 'Enable redeeming'),
(1234, 'Web', 'faqs_categories', 'Faqs categories'),
(1235, 'Web', 'add_faq_category', 'Add faq category'),
(1236, 'Web', 'faq_category_required', 'Faq category required'),
(1237, 'Web', 'edit_faq_category', 'Edit faq category'),
(1238, 'Web', 'select_category', 'Select category'),
(1239, 'Web', 'category_required', 'Category required'),
(1240, 'Web', 'no_categories_available', 'No categories available'),
(1241, 'Web', 'search_dish', 'Search dish'),
(1242, 'Web', 'order_online', 'Order online'),
(1243, 'Web', 'home_delivery', 'Home delivery'),
(1244, 'Web', 'get_in_touch', 'Get in touch'),
(1245, 'Web', 'for_enquiries_or_suggestions', 'For enquiries or suggestions'),
(1246, 'Web', 'send_message', 'Send message'),
(1247, 'Web', 'popular_items', 'Popular items'),
(1248, 'Web', 'no_offers_available', 'No offers available'),
(1249, 'Web', 'home_page_site_logo', 'Home page site logo'),
(1250, 'Web', 'other_pages_site_logo', 'Other pages site logo'),
(1251, 'Web', 'home_page_site_logo_file_is_not_valid', 'Home page site logo file is not valid'),
(1252, 'Web', 'inner_pages_site_logo_file_is_not_valid', 'Inner pages site logo file is not valid'),
(1253, 'Web', 'or_signup_with', 'Or signup with'),
(1254, 'Web', 'forgot_password?', 'Forgot password?'),
(1255, 'Web', 'or_login_through', 'Or login through'),
(1256, 'Web', 'or_signup_through', 'Or signup through'),
(1257, 'Web', 'no_faqs_available', 'No faqs available'),
(1258, 'Web', '\n                            language_required ', '\n                            language required '),
(1259, 'Web', '\n                            language_code_required ', '\n                            language code required '),
(1260, 'Web', 'would_you_like_to_use_tinify_settings_for_images?', 'Would you like to use tinify settings for images?'),
(1261, 'Web', 'would_you_like_to_use_tinify_for_image_compression?', 'Would you like to use tinify for image compression?'),
(1262, 'Web', 'would_you_like_to_use_tinify_for_create_image_thumbnails?', 'Would you like to use tinify for create image thumbnails?'),
(1263, 'Web', 'tinify_used_for', 'Tinify used for'),
(1264, 'Web', 'images_in_current_month', 'Images in current month'),
(1265, 'Web', 'is_popular_item', 'Is popular item'),
(1266, 'Web', 'is_it_popular_item', 'Is it popular item'),
(1267, 'Web', 'item_price', 'Item price'),
(1268, 'Web', 'item_price_required', 'Item price required'),
(1269, 'Web', 'my_addresses', 'My addresses'),
(1270, 'Web', 'offer_price', 'Offer price'),
(1271, 'Web', 'default', 'Default'),
(1272, 'Web', 'select_city', 'Select city'),
(1273, 'Web', 'offer_price_required', 'Offer price required'),
(1274, 'Web', 'address_added_successfully', 'Address added successfully'),
(1275, 'Web', 'payment_details', 'Payment details'),
(1276, 'Web', 'items_total', 'Items total'),
(1277, 'Web', 'delivery_charges', 'Delivery charges'),
(1278, 'Web', 'payment_mode', 'Payment mode'),
(1279, 'Web', 'delivery_details', 'Delivery details'),
(1280, 'Web', 'balance', 'Balance'),
(1281, 'Web', 'delete_address', 'Delete address'),
(1282, 'Web', 'default_address', 'Default address'),
(1283, 'Web', 'default_address_updated', 'Default address updated'),
(1284, 'Web', 'home_page_caption', 'Home page caption'),
(1285, 'Web', 'home_page_tagline', 'Home page tagline'),
(1286, 'Web', 'home_page_caption_required', 'Home page caption required'),
(1287, 'Web', 'home_page_image', 'Home page image'),
(1288, 'Web', 'home_page_image_file_is_not_valid', 'Home page image file is not valid'),
(1289, 'Web', 'special_food_items', 'Special food items'),
(1290, 'Web', 'we_have_the_glory_beginning_in_restaurant_business', 'We have the glory beginning in restaurant business'),
(1291, 'Web', 'default_address_set_successfully', 'Default address set successfully'),
(1292, 'Web', 'choose', 'Choose'),
(1293, 'Web', 'home_page_settings', 'Home page settings'),
(1294, 'Web', 'load_more', 'Load more'),
(1295, 'Web', 'available_for_android_and_ios', 'Available for android and ios'),
(1296, 'Web', 'order_faster_with_mobile_app', 'Order faster with mobile app'),
(1297, 'Web', 'clean_and_minimal_interface', 'Clean and minimal interface'),
(1298, 'Web', 'enjoy_the_native_app_experience', 'Enjoy the native app experience'),
(1299, 'Web', 'seo_settings', 'Seo settings'),
(1300, 'Web', 'meta_keyword', 'Meta keyword'),
(1301, 'Web', 'google_analytics', 'Google analytics'),
(1302, 'Web', 'your_cart', 'Your cart'),
(1303, 'Web', 'checkout', 'Checkout'),
(1304, 'Web', 'view', 'View'),
(1305, 'Web', 'customize', 'Customize'),
(1306, 'Web', 'select_delivery_address', 'Select delivery address'),
(1307, 'Web', 'we_are_the_world_class_food_providers_with_the_highest_quality_of_food_services', 'We are the world class food providers with the highest quality of food services'),
(1308, 'Web', 'deliver_to_this_address', 'Deliver to this address'),
(1309, 'Web', 'would_you_like_to_redeem_your_earned_points?', 'Would you like to redeem your earned points?'),
(1310, 'Web', 'you_have_20_points', 'You have 20 points'),
(1311, 'Web', 'you_have_', 'You have '),
(1312, 'Web', 'redeem', 'Redeem'),
(1313, 'Web', 'continue', 'Continue'),
(1314, 'Web', 'no_items_in_your_cart', 'No items in your cart'),
(1315, 'Web', 'please_provide_delivery_address', 'Please provide delivery address'),
(1316, 'Web', 'please_select_payment_method', 'Please select payment method'),
(1317, 'Web', 'details', 'Details'),
(1318, 'Web', 'are_you_sure_to_delete_address?', 'Are you sure to delete address?'),
(1319, 'Web', 'are_you_sure_to_make_this_address_as_your_default_address?', 'Are you sure to make this address as your default address?'),
(1320, 'Web', 'are_you_sure_to_change_this_address_as_your_default_address?', 'Are you sure to change this address as your default address?'),
(1321, 'Web', 'are_you_sure_to_set_this_address_as_your_default_address?', 'Are you sure to set this address as your default address?'),
(1322, 'Web', 'order_successful', 'Order successful'),
(1323, 'Web', 'your_order_no_is', 'Your order no is'),
(1324, 'Web', 'you_will_get', 'You will get'),
(1325, 'Web', 'points_if_this_order_is_delivered_to_you_successfully', 'Points if this order is delivered to you successfully'),
(1326, 'Web', 'admin_has_been_sent_an_order', 'Admin has been sent an order'),
(1327, 'Web', 'delivery_manager_has_been_updated_an_order_status_as_delivered', 'Delivery manager has been updated an order status as delivered'),
(1328, 'Web', 'please_select_valid_dates', 'Please select valid dates'),
(1329, 'Web', 'ordered_online', 'Ordered online'),
(1330, 'Web', 'dishes_served', 'Dishes served'),
(1331, 'Web', 'home_delivered', 'Home delivered'),
(1332, 'Web', 'search', 'Search'),
(1333, 'Web', 'you_can_redeem_maximum_of_', 'You can redeem maximum of '),
(1334, 'Web', 'documentation', 'Documentation'),
(1335, 'Web', 'Activation Email Sent. Please check your inbox or spam', 'Activation Email Sent. Please check your inbox or spam'),
(1336, 'Web', 'delivered_date', 'Delivered date'),
(1337, 'Web', 'Fresh food', 'Fresh food'),
(1338, 'Web', 'experienced chefs', 'Experienced chefs'),
(1339, 'Web', 'Accepted_Payments', 'Accepted Payments'),
(1340, 'Web', 'For Android', 'For Android'),
(1341, 'Web', 'Visit Playstore Store', 'Visit Playstore Store'),
(1342, 'Web', 'For IOS', 'For IOS'),
(1343, 'Web', 'Visit Apple Store', 'Visit Apple Store'),
(1344, 'Web', 'CI_VERSION', 'CI VERSION'),
(1345, 'Web', 'contact_map', 'Contact map'),
(1346, 'Web', 'contact_map_script', 'Contact map script');

-- --------------------------------------------------------

--
-- Table structure for table `cr_login_attempts`
--

CREATE TABLE `cr_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_login_attempts`
--

INSERT INTO `cr_login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '::1', 'admin@gmail.com', 1640068512),
(2, '::1', 'admin@gmail.com', 1640068518);

-- --------------------------------------------------------

--
-- Table structure for table `cr_loyality_points`
--

CREATE TABLE `cr_loyality_points` (
  `lp_id` int(11) NOT NULL,
  `points_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `points_label_redeem_placeholder` varchar(50) NOT NULL,
  `points_label_earn` varchar(50) NOT NULL,
  `points_label_template` varchar(50) NOT NULL,
  `maximum_earning_points_for_customer` varchar(50) NOT NULL,
  `earning_point` varchar(50) NOT NULL,
  `earning_point_value` decimal(10,2) NOT NULL,
  `redeeming_point` varchar(50) NOT NULL,
  `redeeming_point_value` decimal(10,2) NOT NULL,
  `disabled_redeeming` enum('Yes','No') NOT NULL DEFAULT 'No',
  `reward_points_for_account_signup` varchar(20) NOT NULL,
  `points_for_restaurant_review` varchar(20) NOT NULL,
  `points_for_first_order` varchar(20) NOT NULL,
  `points_for_sharing_app` varchar(20) NOT NULL,
  `minimum_points_can_be_used` varchar(20) NOT NULL,
  `maximum_points_can_be_used` varchar(20) NOT NULL,
  `enable_redeeming` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_loyality_points`
--

INSERT INTO `cr_loyality_points` (`lp_id`, `points_enabled`, `points_label_redeem_placeholder`, `points_label_earn`, `points_label_template`, `maximum_earning_points_for_customer`, `earning_point`, `earning_point_value`, `redeeming_point`, `redeeming_point_value`, `disabled_redeeming`, `reward_points_for_account_signup`, `points_for_restaurant_review`, `points_for_first_order`, `points_for_sharing_app`, `minimum_points_can_be_used`, `maximum_points_can_be_used`, `enable_redeeming`) VALUES
(1, 'Yes', 'Hungry Duck', 'Points', 'You earned {points} points', '20', '1', '2.00', '1', '2.00', 'No', '20', '0', '30', '20', '20', '30', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `cr_menu`
--

CREATE TABLE `cr_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(256) DEFAULT NULL,
  `punch_line` varchar(256) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `menu_image_name` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_menu`
--

INSERT INTO `cr_menu` (`menu_id`, `menu_name`, `punch_line`, `description`, `menu_image_name`, `status`) VALUES
(5, 'Soups', 'Favourite Soups', 'Here You  will find all sorts of soups', 'menu_5.jpg', 'Active'),
(6, 'Biryani', 'Specialized Biryanis', 'We have our own taste of biryanis', 'menu_6.jpg', 'Active'),
(8, 'Starters', 'Favourite Crispy Starters', 'There are many Crispy Starters', 'menu_8.jpg', 'Active'),
(10, 'Curries', 'Spicy Curries', 'We are specialised in types of curries', 'menu_10.jpg', 'Active'),
(11, 'Salads', 'Salads', 'All types of Salads', 'menu_11.jpg', 'Active'),
(12, 'Chinese Cuisine', 'Chinese Food', 'This is Chinese Food', 'menu_12.jpg', 'Active'),
(13, 'Beverages', 'Cool Beverages', 'This is Beverages', 'menu_13.jpg', 'Active'),
(14, 'Desserts', 'Cool Desserts', 'This is for Cool Desserts', 'menu_14.jpg', 'Active'),
(18, 'Kebabs', ' Spicy Kebabs', 'kebabs', 'menu_18.jpg', 'Active'),
(21, 'Pizzas', 'Spicy Pizza\'s', 'Pizza\'s', 'menu_21.jpg', 'Active'),
(28, 'Burger', 'Burgers', 'oh! what a tasty', 'menu_28.jpg', 'Active'),
(35, 'Sandwiches', 'Sandwiches', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'menu_35.jpg', 'Active'),
(39, 'Chili\'s American Grill & Bar', 'dfsd', 'fsdfdsf', 'menu_39.jpeg', 'Active'),
(41, 'Soft Drinks', 'Soft Drinks', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'menu_41.jpg', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `cr_offer_products`
--

CREATE TABLE `cr_offer_products` (
  `offer_product_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_offer_products`
--

INSERT INTO `cr_offer_products` (`offer_product_id`, `offer_id`, `menu_id`, `menu_name`, `item_id`, `item_name`, `quantity`) VALUES
(894, 52, 6, 'Biryani', 41, 'Mutton Biryani', 1),
(895, 52, 5, 'Soups', 8, 'Cream Of Tomato Soup', 1),
(896, 52, 8, 'Starters', 16, 'Gobi Manchurian', 1),
(897, 52, 10, 'Curries', 148, 'Chicken Curry', 1),
(902, 54, 5, 'Soups', 9, 'Sweet Corn Vegetable Soup', 1),
(903, 54, 6, 'Biryani', 856761, 'Keema Biryani Recipe', 1),
(904, 54, 8, 'Starters', 24, 'Chicken Drum Sticks', 1),
(905, 54, 10, 'Curries', 856775, 'Egg Curry', 1),
(906, 55, 12, 'Chinese Cuisine', 99, 'Sweet-N-Sour Prawns', 1),
(907, 55, 11, 'Salads', 86, 'Butter Naan', 1),
(908, 55, 13, 'Beverages', 130, 'Pineapple ', 1),
(909, 55, 14, 'Desserts', 121, 'Pineapple With Vanilla', 2),
(931, 66, 41, 'Soft Drinks', 856785, 'Red Bull', 1),
(932, 66, 8, 'Starters', 18, 'Baby Corn Manchurian', 2),
(933, 65, 12, 'Chinese Cuisine', 104, 'Chicken Fried Rice', 2),
(934, 65, 13, 'Beverages', 130, 'Pineapple ', 1),
(940, 63, 11, 'Salads', 89, 'Pineapple Raita', 2),
(941, 63, 5, 'Soups', 8, 'Cream Of Tomato Soup', 1),
(942, 63, 21, 'Pizzas', 856766, 'Margherita ', 1),
(943, 62, 11, 'Salads', 86, 'Butter Naan', 1),
(944, 62, 21, 'Pizzas', 152, 'Country Special', 1),
(945, 62, 11, 'Salads', 92, 'Fruit Chat Salad', 1),
(951, 60, 21, 'Pizzas', 856769, 'Barbeque Chicken', 1),
(952, 60, 21, 'Pizzas', 152, 'Country Special', 1),
(953, 60, 21, 'Pizzas', 856768, 'Fresh Veggie', 1),
(954, 59, 13, 'Beverages', 135, 'Butterscotch Milkshake', 1),
(955, 59, 10, 'Curries', 148, 'Chicken Curry', 1),
(956, 59, 10, 'Curries', 856778, 'Butter Chicken', 1),
(957, 59, 10, 'Curries', 856784, 'Cheese Balls', 1),
(958, 58, 11, 'Salads', 89, 'Pineapple Raita', 1),
(959, 58, 5, 'Soups', 8, 'Cream Of Tomato Soup', 1),
(960, 58, 8, 'Starters', 24, 'Chicken Drum Sticks', 1),
(961, 57, 6, 'Biryani', 41, 'Mutton Biryani', 1),
(962, 57, 8, 'Starters', 16, 'Gobi Manchurian', 1),
(963, 53, 5, 'Soups', 9, 'Sweet Corn Vegetable Soup', 1),
(964, 53, 6, 'Biryani', 41, 'Mutton Biryani', 1),
(965, 53, 8, 'Starters', 18, 'Baby Corn Manchurian', 1),
(966, 53, 10, 'Curries', 149, 'Paneer', 1),
(967, 56, 5, 'Soups', 8, 'Cream Of Tomato Soup', 1),
(968, 56, 12, 'Chinese Cuisine', 100, 'Ginger Fish', 1),
(969, 56, 12, 'Chinese Cuisine', 108, 'Veg Hakka Noodles', 1),
(970, 64, 10, 'Curries', 149, 'Paneer', 2),
(971, 64, 6, 'Biryani', 856764, 'Bombay Biryani', 2),
(972, 61, 14, 'Desserts', 122, 'Vainilla Hot Chocolate', 2),
(973, 61, 14, 'Desserts', 121, 'Pineapple With Vanilla', 1),
(974, 61, 14, 'Desserts', 129, 'Fruit Salad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cr_offers`
--

CREATE TABLE `cr_offers` (
  `offer_id` int(11) NOT NULL,
  `offer_name` varchar(50) DEFAULT NULL,
  `offer_cost` decimal(10,2) DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_valid_date` date DEFAULT NULL,
  `offer_conditions` varchar(500) DEFAULT NULL,
  `no_of_products` int(11) DEFAULT NULL,
  `offer_image_name` varchar(50) DEFAULT NULL,
  `date_of_offer_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `product_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_offers`
--

INSERT INTO `cr_offers` (`offer_id`, `offer_name`, `offer_cost`, `offer_start_date`, `offer_valid_date`, `offer_conditions`, `no_of_products`, `offer_image_name`, `date_of_offer_created`, `status`, `product_id`) VALUES
(52, 'Special Offer', '100.00', '2017-07-26', '2019-01-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 4, 'offer_52.jpg', '2017-07-26 15:27:00', 'Active', 'E7n18A3JWBm33Qin'),
(53, 'Offer  Sale', '99.00', '2017-07-26', '2019-07-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 4, 'offer_53.png', '2017-10-31 12:39:12', 'Active', '1MPeaf92Z1kbBKRG'),
(54, 'Best Buy', '89.00', '2017-07-26', '2019-07-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 4, 'offer_54.jpg', '2017-07-26 15:33:13', 'Active', 'I47G50QR22LwJtZA'),
(55, 'Mega Deal', '129.00', '2017-07-26', '2019-07-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 4, 'offer_55.jpg', '2017-07-26 15:35:39', 'Active', '6pfWLePkVzCXATdI'),
(56, 'Best Offer', '242.00', '2017-09-15', '2018-01-25', 'sfsdfsdfsdfdsf', 3, NULL, '2017-10-31 12:39:34', 'Active', 'OaPKRgbJYn5iXVjT'),
(57, 'Flat Offer', '676.00', '2017-09-15', '2017-12-20', 'sdfsdfdsfdsfdsf', 2, NULL, '2017-10-31 12:38:49', 'Active', 'AEqLi5w4vyRvIu4X'),
(58, 'Big Sale Offer', '56.00', '2017-09-15', '2017-11-30', 'tert fdsfsdfds', 3, NULL, '2017-10-31 12:38:36', 'Active', 'LKhcq9lFmhn92NT2'),
(59, 'Clearance Sale Offer', '330.00', '2017-09-15', '2018-02-21', 'rtre yurtyrt', 4, NULL, '2017-10-31 12:38:15', 'Active', 'S9E150vrpDdyyXL9'),
(60, 'Special Pizzas offer', '454.00', '2017-10-31', '2018-03-21', 'sdf sfsdfd', 3, NULL, '2017-10-31 12:37:50', 'Active', 'hscOrETUl7TdKmWc'),
(61, 'Great Deals', '232.00', '2017-09-15', '2018-02-21', 'sdf asdfsdf asfdsdf', 3, 'offer_61.jpg', '2017-10-31 12:49:27', 'Active', 'maTiRFP7Jsv7G67o'),
(62, 'Best Price Today', '232.00', '2017-09-15', '2017-12-20', 'sdf', 3, 'offer_62.png', '2017-10-31 12:30:20', 'Active', 'pZ2WdLrEIAiTn4wQ'),
(63, 'Promotional Offer', '200.00', '2017-09-15', '2018-02-01', 'sdfsd', 3, 'offer_63.jpg', '2017-10-31 12:28:17', 'Active', 'VGynLEkUwWS3SPh7'),
(64, 'Items feast', '345.00', '2017-09-15', '2018-01-24', 'sdfsdf', 2, 'offer_64.jpg', '2017-10-31 12:40:44', 'Active', 'oZUIlCNtCvDqqz6C'),
(65, 'Stuffed Crust', '343.00', '2017-10-31', '2017-12-01', 'er ewrew', 2, 'offer_65.jpg', '2017-10-31 12:23:48', 'Active', '5vpHzQclmue5AB3o'),
(66, 'Diwali Offer', '90.00', '2017-10-31', '2017-11-30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 2, 'offer_66.png', '2017-10-31 12:22:14', 'Active', 'MRsgtO7aZ2tNIKdZ');

-- --------------------------------------------------------

--
-- Table structure for table `cr_options`
--

CREATE TABLE `cr_options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_options`
--

INSERT INTO `cr_options` (`option_id`, `option_name`, `status`) VALUES
(4, 'Large', 'Active'),
(9, 'Medium', 'Active'),
(14, 'Single', 'Active'),
(19, 'Family Pack', 'Active'),
(20, 'Jumbo Pack', 'Active'),
(21, 'Extra Large', 'Active'),
(37, 'Small', 'Active'),
(38, '500 ml', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_order_addons`
--

CREATE TABLE `cr_order_addons` (
  `oa_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `addon_name` varchar(50) NOT NULL,
  `addon_image` varchar(50) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `final_cost` decimal(10,2) DEFAULT NULL,
  `common_id` int(10) NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_order_addons`
--

INSERT INTO `cr_order_addons` (`oa_id`, `order_id`, `item_id`, `addon_name`, `addon_image`, `price`, `quantity`, `final_cost`, `common_id`, `is_deleted`) VALUES
(1, 232, 135, 'Jam', 'addon_47.jpg', '10.00', 1, '10.00', 35, 0),
(2, 233, 856787, 'Lemon', 'addon_46.jpg', '10.00', 1, '10.00', 61, 0),
(3, 246, 856787, 'Pepper', 'addon_43.jpg', '15.00', 1, '15.00', 2, 0),
(4, 246, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 2, 0),
(5, 258, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 50, 0),
(6, 258, 856787, 'Lemon', 'addon_46.jpg', '10.00', 1, '10.00', 50, 0),
(7, 262, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 38, 0),
(8, 262, 856787, 'Lemon', 'addon_46.jpg', '10.00', 1, '10.00', 38, 0),
(9, 263, 856787, 'Pepper', 'addon_43.jpg', '15.00', 1, '15.00', 67, 0),
(10, 263, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 67, 0),
(11, 264, 856787, 'Pepper', 'addon_43.jpg', '15.00', 1, '15.00', 96, 0),
(12, 264, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 96, 0),
(13, 265, 856787, 'Pepper', 'addon_43.jpg', '15.00', 1, '15.00', 92, 0),
(14, 265, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 92, 0),
(15, 265, 856787, 'Lemon', 'addon_46.jpg', '10.00', 1, '10.00', 92, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cr_order_offer_products`
--

CREATE TABLE `cr_order_offer_products` (
  `order_offer_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_quantity` varchar(10) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `common_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_order_offer_products`
--

INSERT INTO `cr_order_offer_products` (`order_offer_product_id`, `order_id`, `offer_id`, `item_id`, `menu_id`, `item_name`, `item_quantity`, `is_deleted`, `common_id`) VALUES
(1, 257, 66, 856785, 41, 'Red Bull', '1', 0, 27),
(2, 257, 66, 18, 8, 'Baby Corn Manchurian', '2', 0, 27),
(3, 257, 65, 104, 12, 'Chicken Fried Rice', '2', 0, 62),
(4, 257, 65, 130, 13, 'Pineapple ', '1', 0, 62);

-- --------------------------------------------------------

--
-- Table structure for table `cr_order_offers`
--

CREATE TABLE `cr_order_offers` (
  `order_offer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `offer_name` varchar(50) NOT NULL,
  `offer_cost` decimal(10,2) NOT NULL,
  `offer_quantity` int(11) NOT NULL,
  `offer_final_cost` decimal(10,2) NOT NULL,
  `offer_start_date` date NOT NULL,
  `offer_valid_date` date NOT NULL,
  `offer_conditions` varchar(100) NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `offer_image_name` varchar(50) DEFAULT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_order_offers`
--

INSERT INTO `cr_order_offers` (`order_offer_id`, `order_id`, `offer_id`, `offer_name`, `offer_cost`, `offer_quantity`, `offer_final_cost`, `offer_start_date`, `offer_valid_date`, `offer_conditions`, `no_of_products`, `offer_image_name`, `is_deleted`) VALUES
(1, 257, 66, 'Diwali Offer', '90.00', 1, '90.00', '2017-10-31', '2017-11-30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 2, 'offer_66.png', 0),
(2, 257, 65, 'Stuffed Crust', '343.00', 1, '343.00', '2017-10-31', '2017-12-01', 'er ewrew', 2, 'offer_65.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cr_order_products`
--

CREATE TABLE `cr_order_products` (
  `op_id` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_image_name` varchar(50) DEFAULT NULL,
  `size_id` varchar(20) NOT NULL COMMENT 'option_id of options table',
  `size_name` varchar(20) NOT NULL,
  `item_size_id` varchar(20) NOT NULL COMMENT 'item_option_id of item_options table',
  `size_price` varchar(20) DEFAULT NULL,
  `final_cost` decimal(10,2) DEFAULT NULL,
  `item_qty` int(11) NOT NULL,
  `item_cost` decimal(10,2) DEFAULT NULL,
  `common_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_order_products`
--

INSERT INTO `cr_order_products` (`op_id`, `is_deleted`, `order_id`, `item_id`, `menu_id`, `item_name`, `item_image_name`, `size_id`, `size_name`, `item_size_id`, `size_price`, `final_cost`, `item_qty`, `item_cost`, `common_id`) VALUES
(1, 0, 232, 856786, 13, 'Sports drink', 'item_856786.jpg', '', '', '', '', '300.00', 1, '300.00', '96'),
(2, 0, 232, 856772, 13, 'Green Tea', 'item_856772.jpg', '', '', '', '', '100.00', 1, '100.00', '04'),
(3, 0, 232, 135, 13, 'Butterscotch Milkshake', 'item_135.jpg', '4', 'Large', '44', '140.00', '150.00', 1, '140.00', '35'),
(4, 0, 233, 856773, 13, 'Beetroot Pomegranate  Juice', 'item_856773.jpg', '', '', '', '', '200.00', 1, '200.00', '73'),
(5, 0, 233, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '290.00', 1, '280.00', '61'),
(6, 0, 233, 856789, 21, 'Triple Chicken Feast', 'item_856789.jpg', '', '', '', '', '57.00', 1, '57.00', '17'),
(7, 0, 234, 856780, 14, 'Orange Cake', 'item_856780.jpg', '', '', '', '', '99.00', 1, '99.00', '26'),
(8, 0, 234, 129, 14, 'Fruit Salad', 'item_129.jpg', '', '', '', '', '125.00', 1, '125.00', '40'),
(9, 0, 234, 127, 14, 'Strawberry Icream', 'item_127.jpg', '', '', '', '', '125.00', 1, '125.00', '76'),
(10, 0, 234, 128, 14, 'Butterscotch', 'item_128.jpg', '', '', '', '', '125.00', 1, '125.00', '30'),
(11, 0, 235, 856784, 10, 'Cheese Balls', 'item_856784.jpg', '', '', '', '', '99.00', 1, '99.00', '27'),
(12, 0, 235, 856779, 10, 'Beetroot Curry', 'item_856779.jpg', '', '', '', '', '149.00', 1, '149.00', '97'),
(13, 0, 235, 856778, 10, 'Butter Chicken', 'item_856778.jpg', '', '', '', '', '159.00', 1, '159.00', '10'),
(14, 0, 235, 856777, 10, 'Lima Beans Curry', 'item_856777.jpg', '', '', '', '', '149.00', 1, '149.00', '48'),
(15, 0, 236, 109, 12, 'Veg Fried Rice', 'item_109.jpg', '', '', '', '', '184.00', 1, '184.00', '28'),
(16, 0, 236, 108, 12, 'Veg Hakka Noodles', 'item_108.jpg', '', '', '', '', '184.00', 1, '184.00', '19'),
(17, 0, 237, 856783, 5, 'Potato and Corn Soup', 'item_856783.jpg', '', '', '', '', '119.00', 1, '119.00', '49'),
(18, 0, 237, 13, 5, 'Sweet Corn Chicken Soup', 'item_13.jpg', '', '', '', '', '134.00', 1, '134.00', '30'),
(19, 0, 237, 12, 5, 'Cream Of Chicken Soup', 'item_12.jpg', '', '', '', '', '124.00', 1, '124.00', '24'),
(20, 0, 238, 856789, 21, 'Triple Chicken Feast', 'item_856789.jpg', '', '', '', '', '57.00', 1, '57.00', '46'),
(21, 0, 238, 856770, 21, 'Cheese Pepperoni', 'item_856770.jpg', '', '', '', '', '300.00', 1, '300.00', '80'),
(22, 0, 239, 109, 12, 'Veg Fried Rice', 'item_109.jpg', '', '', '', '', '184.00', 1, '184.00', '79'),
(23, 0, 239, 108, 12, 'Veg Hakka Noodles', 'item_108.jpg', '', '', '', '', '184.00', 1, '184.00', '56'),
(24, 0, 239, 106, 12, 'Egg Fried Rice', 'item_106.jpg', '', '', '', '', '184.00', 1, '184.00', '02'),
(25, 0, 240, 856784, 10, 'Cheese Balls', 'item_856784.jpg', '', '', '', '', '99.00', 1, '99.00', '60'),
(26, 0, 240, 856779, 10, 'Beetroot Curry', 'item_856779.jpg', '', '', '', '', '149.00', 1, '149.00', '50'),
(27, 0, 240, 856777, 10, 'Lima Beans Curry', 'item_856777.jpg', '', '', '', '', '149.00', 1, '149.00', '21'),
(28, 0, 241, 856780, 14, 'Orange Cake', 'item_856780.jpg', '', '', '', '', '99.00', 1, '99.00', '75'),
(29, 0, 241, 129, 14, 'Fruit Salad', 'item_129.jpg', '', '', '', '', '125.00', 1, '125.00', '46'),
(30, 0, 241, 128, 14, 'Butterscotch', 'item_128.jpg', '', '', '', '', '125.00', 1, '125.00', '36'),
(31, 0, 242, 856791, 21, 'Country Feast', 'item_856791.jpg', '', '', '', '', '67.00', 1, '67.00', '50'),
(32, 0, 242, 856767, 21, 'Farm House', 'item_856767.jpg', '', '', '', '', '300.00', 1, '300.00', '94'),
(33, 0, 242, 152, 21, 'Country Special', 'item_152.jpg', '14', 'Single', '6', '100.00', '100.00', 1, '100.00', '09'),
(34, 0, 242, 153, 21, 'Peppy Paneer', 'item_153.jpg', '', '', '', '', '200.00', 1, '200.00', '84'),
(35, 0, 243, 856771, 8, ' Hot Chocolate', 'item_856771.jpg', '', '', '', '', '100.00', 1, '100.00', '73'),
(36, 0, 243, 856760, 8, 'Paneer Butter Masala', 'item_856760.jpg', '', '', '', '', '200.00', 1, '200.00', '30'),
(37, 0, 243, 24, 8, 'Chicken Drum Sticks', 'item_24.jpg', '', '', '', '', '309.00', 1, '309.00', '98'),
(38, 0, 244, 856783, 5, 'Potato and Corn Soup', 'item_856783.jpg', '', '', '', '', '119.00', 1, '119.00', '18'),
(39, 0, 244, 10, 5, 'Hot-N-Sour Vegetable Soup', 'item_10.jpg', '', '', '', '', '125.00', 1, '125.00', '26'),
(40, 0, 244, 11, 5, 'Clear Chicken Noodle Soup', 'item_11.jpg', '', '', '', '', '134.00', 1, '134.00', '21'),
(41, 0, 245, 109, 12, 'Veg Fried Rice', 'item_109.jpg', '', '', '', '', '184.00', 1, '184.00', '57'),
(42, 0, 245, 108, 12, 'Veg Hakka Noodles', 'item_108.jpg', '', '', '', '', '184.00', 1, '184.00', '67'),
(43, 0, 245, 99, 12, 'Sweet-N-Sour Prawns', 'item_99.jpg', '', '', '', '', '378.00', 1, '378.00', '30'),
(44, 0, 246, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '315.00', 1, '280.00', '02'),
(45, 0, 246, 856786, 13, 'Sports drink', 'item_856786.jpg', '', '', '', '', '300.00', 1, '300.00', '03'),
(46, 0, 247, 856791, 21, 'Country Feast', 'item_856791.jpg', '', '', '', '', '67.00', 1, '67.00', '12'),
(47, 0, 247, 856790, 21, 'Chicken Italiano', 'item_856790.jpg', '', '', '', '', '57.00', 1, '57.00', '68'),
(48, 0, 247, 856788, 21, 'Paneer Vegorama', 'item_856788.jpg', '', '', '', '', '49.00', 1, '49.00', '61'),
(49, 0, 247, 856789, 21, 'Triple Chicken Feast', 'item_856789.jpg', '', '', '', '', '57.00', 1, '57.00', '43'),
(50, 0, 248, 856784, 10, 'Cheese Balls', 'item_856784.jpg', '', '', '', '', '99.00', 1, '99.00', '02'),
(51, 0, 248, 856779, 10, 'Beetroot Curry', 'item_856779.jpg', '', '', '', '', '149.00', 1, '149.00', '90'),
(52, 0, 248, 856777, 10, 'Lima Beans Curry', 'item_856777.jpg', '', '', '', '', '149.00', 1, '149.00', '65'),
(53, 0, 249, 856771, 8, ' Hot Chocolate', 'item_856771.jpg', '', '', '', '', '100.00', 1, '100.00', '57'),
(54, 0, 249, 856760, 8, 'Paneer Butter Masala', 'item_856760.jpg', '', '', '', '', '400.00', 2, '200.00', '92'),
(55, 0, 250, 856770, 21, 'Cheese Pepperoni', 'item_856770.jpg', '', '', '', '', '300.00', 1, '300.00', '18'),
(56, 0, 250, 856769, 21, 'Barbeque Chicken', 'item_856769.jpg', '', '', '', '', '300.00', 1, '300.00', '29'),
(57, 0, 250, 856767, 21, 'Farm House', 'item_856767.jpg', '', '', '', '', '300.00', 1, '300.00', '86'),
(58, 0, 250, 154, 21, 'Chicken Mexicana', 'item_154.jpg', '', '', '', '', '250.00', 1, '250.00', '73'),
(59, 0, 251, 856780, 14, 'Orange Cake', 'item_856780.jpg', '', '', '', '', '99.00', 1, '99.00', '38'),
(60, 0, 251, 129, 14, 'Fruit Salad', 'item_129.jpg', '', '', '', '', '125.00', 1, '125.00', '54'),
(61, 0, 251, 127, 14, 'Strawberry Icream', 'item_127.jpg', '', '', '', '', '125.00', 1, '125.00', '87'),
(62, 0, 252, 856786, 13, 'Sports drink', 'item_856786.jpg', '', '', '', '', '300.00', 1, '300.00', '90'),
(63, 0, 252, 856772, 13, 'Green Tea', 'item_856772.jpg', '', '', '', '', '100.00', 1, '100.00', '69'),
(64, 0, 252, 137, 13, 'Cold Coffee', 'item_137.jpg', '', '', '', '', '84.00', 1, '84.00', '96'),
(65, 0, 253, 856770, 21, 'Cheese Pepperoni', 'item_856770.jpg', '', '', '', '', '300.00', 1, '300.00', '65'),
(66, 0, 253, 153, 21, 'Peppy Paneer', 'item_153.jpg', '', '', '', '', '200.00', 1, '200.00', '80'),
(67, 0, 253, 152, 21, 'Country Special', 'item_152.jpg', '14', 'Single', '6', '100.00', '100.00', 1, '100.00', '95'),
(68, 0, 254, 856784, 10, 'Cheese Balls', 'item_856784.jpg', '', '', '', '', '99.00', 1, '99.00', '52'),
(69, 0, 254, 856779, 10, 'Beetroot Curry', 'item_856779.jpg', '', '', '', '', '149.00', 1, '149.00', '94'),
(70, 0, 254, 149, 10, 'Paneer', 'item_149.jpg', '9', 'Medium', '39', '300.00', '300.00', 1, '300.00', '45'),
(71, 0, 254, 148, 10, 'Chicken Curry', 'item_148.jpg', '', '', '', '', '90.00', 1, '90.00', '28'),
(72, 0, 255, 91, 11, 'Roasted Papad', 'item_91.jpg', '', '', '', '', '38.00', 1, '38.00', '18'),
(73, 0, 255, 89, 11, 'Pineapple Raita', 'item_89.jpg', '', '', '', '', '84.00', 1, '84.00', '64'),
(74, 0, 255, 85, 11, 'Masala Kulcha', 'item_85.jpg', '', '', '', '', '67.00', 1, '67.00', '78'),
(75, 0, 255, 86, 11, 'Butter Naan', 'item_86.jpg', '', '', '', '', '67.00', 1, '67.00', '46'),
(76, 0, 256, 856771, 8, ' Hot Chocolate', 'item_856771.jpg', '', '', '', '', '100.00', 1, '100.00', '72'),
(77, 0, 256, 856760, 8, 'Paneer Butter Masala', 'item_856760.jpg', '', '', '', '', '200.00', 1, '200.00', '61'),
(78, 0, 258, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '310.00', 1, '280.00', '50'),
(79, 0, 258, 856786, 13, 'Sports drink', 'item_856786.jpg', '', '', '', '', '300.00', 1, '300.00', '41'),
(80, 0, 258, 856772, 13, 'Green Tea', 'item_856772.jpg', '', '', '', '', '100.00', 1, '100.00', '75'),
(81, 0, 259, 856763, 6, 'Malabar Biriyani', 'item_856763.jpg', '', '', '', '', '400.00', 1, '400.00', '57'),
(82, 0, 259, 856761, 6, 'Keema Biryani Recipe', 'item_856761.jpg', '', '', '', '', '300.00', 1, '300.00', '78'),
(83, 0, 260, 107, 12, 'Veg Soft Noodles', 'item_107.jpg', '', '', '', '', '184.00', 1, '184.00', '80'),
(84, 0, 260, 106, 12, 'Egg Fried Rice', 'item_106.jpg', '', '', '', '', '184.00', 1, '184.00', '15'),
(85, 0, 260, 102, 12, 'Chicken Soft Noodles', 'item_102.jpg', '', '', '', '', '184.00', 1, '184.00', '81'),
(86, 0, 261, 856789, 21, 'Triple Chicken Feast', 'item_856789.jpg', '', '', '', '', '57.00', 1, '57.00', '56'),
(87, 0, 261, 856788, 21, 'Paneer Vegorama', 'item_856788.jpg', '', '', '', '', '49.00', 1, '49.00', '13'),
(88, 0, 261, 856770, 21, 'Cheese Pepperoni', 'item_856770.jpg', '', '', '', '', '300.00', 1, '300.00', '06'),
(89, 0, 262, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '310.00', 1, '280.00', '38'),
(90, 0, 262, 13, 5, 'Sweet Corn Chicken Soup', 'item_13.jpg', '', '', '', '', '134.00', 1, '134.00', '09'),
(91, 0, 263, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '315.00', 1, '280.00', '67'),
(92, 0, 263, 109, 12, 'Veg Fried Rice', 'item_109.jpg', '', '', '', '', '184.00', 1, '184.00', '49'),
(93, 0, 264, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '315.00', 1, '280.00', '96'),
(94, 0, 264, 109, 12, 'Veg Fried Rice', 'item_109.jpg', '', '', '', '', '184.00', 1, '184.00', '98'),
(95, 0, 265, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '325.00', 1, '280.00', '92'),
(96, 0, 265, 856786, 13, 'Sports drink', 'item_856786.jpg', '', '', '', '', '300.00', 1, '300.00', '90');

-- --------------------------------------------------------

--
-- Table structure for table `cr_orders`
--

CREATE TABLE `cr_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_time` varchar(20) DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `delivery_fee` float(10,2) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `landmark` varchar(200) DEFAULT NULL,
  `locality` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `is_points_redeemed` enum('Yes','No') NOT NULL DEFAULT 'No',
  `no_of_points_redeemed` int(11) DEFAULT NULL,
  `points_value` float(10,2) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('delivered','process','cancelled','new','out_to_deliver') NOT NULL DEFAULT 'new',
  `payment_type` enum('online','cashCard','cash') DEFAULT NULL,
  `payment_card` varchar(100) DEFAULT NULL,
  `payment_gateway` varchar(20) DEFAULT NULL,
  `no_of_items` int(11) NOT NULL,
  `paid_date` varchar(50) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `payer_id` varchar(50) DEFAULT NULL,
  `payer_email` varchar(50) DEFAULT NULL,
  `payer_name` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `date_updated` date DEFAULT NULL,
  `device_id` varchar(200) DEFAULT NULL,
  `rating_value` int(11) DEFAULT NULL,
  `is_admin_sent_to_km` enum('Yes','No') DEFAULT NULL,
  `km_id` int(11) DEFAULT NULL,
  `km_received_datetime` datetime DEFAULT NULL,
  `is_admin_sent_to_dm` enum('Yes','No') DEFAULT NULL,
  `is_km_sent_to_dm` enum('Yes','No') DEFAULT NULL,
  `sent_km_id` int(11) DEFAULT NULL,
  `dm_id` int(11) DEFAULT NULL,
  `dm_received_datetime` datetime DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `delivered_status` enum('admin','km','dm') DEFAULT NULL COMMENT 'Delivered Status updated by whom',
  `delivered_status_datetime` datetime DEFAULT NULL,
  `cancelled_status` enum('admin','km','dm') DEFAULT NULL COMMENT 'Cancelled Status updated by whom',
  `cancelled_status_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_orders`
--

INSERT INTO `cr_orders` (`order_id`, `user_id`, `order_date`, `order_time`, `total_cost`, `delivery_fee`, `customer_name`, `phone`, `house_no`, `street`, `landmark`, `locality`, `city`, `city_id`, `pincode`, `is_points_redeemed`, `no_of_points_redeemed`, `points_value`, `message`, `date_created`, `status`, `payment_type`, `payment_card`, `payment_gateway`, `no_of_items`, `paid_date`, `paid_amount`, `transaction_id`, `payer_id`, `payer_email`, `payer_name`, `payment_status`, `date_updated`, `device_id`, `rating_value`, `is_admin_sent_to_km`, `km_id`, `km_received_datetime`, `is_admin_sent_to_dm`, `is_km_sent_to_dm`, `sent_km_id`, `dm_id`, `dm_received_datetime`, `last_updated_by`, `last_updated`, `delivered_status`, `delivered_status_datetime`, `cancelled_status`, `cancelled_status_datetime`) VALUES
(232, 101, '2017-10-31', '18:38 PM', '550.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, 'Your order is delivered successfully..enjoy it', '2017-10-31 13:08:15', 'delivered', 'cash', NULL, NULL, 3, '2017-10-31', '550.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:38:28', 'No', 'Yes', 99, 100, '2017-10-31 18:38:51', 1, '2017-10-31 18:39:32', 'admin', '2017-10-31 18:39:32', NULL, NULL),
(233, 101, '2017-10-31', '18:40 PM', '547.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, NULL, '2017-10-31 13:10:17', 'new', 'cashCard', 'hipecard', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 101, '2017-10-31', '18:40 PM', '474.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, '', '2017-10-31 13:10:36', 'delivered', 'cash', NULL, NULL, 4, '2017-10-31', '474.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:42:54', 'admin', '2017-10-31 18:42:54', NULL, NULL),
(235, 101, '2017-10-31', '18:40 PM', '556.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, '', '2017-10-31 13:10:53', 'process', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:50:12', NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:50:12', NULL, NULL, NULL, NULL),
(236, 101, '2017-10-31', '18:41 PM', '368.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, NULL, '2017-10-31 13:11:12', 'new', 'cashCard', 'visa', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 101, '2017-10-31', '18:41 PM', '377.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, '', '2017-10-31 13:11:42', 'out_to_deliver', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:42:36', 'No', 'Yes', 99, 100, '2017-10-31 18:44:31', 99, '2017-10-31 18:44:31', NULL, NULL, NULL, NULL),
(238, 101, '2017-10-31', '18:42 PM', '297.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'Yes', 30, 60.00, '', '2017-10-31 13:12:03', 'out_to_deliver', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, 'Yes', 'No', NULL, 100, '2017-10-31 18:42:47', 1, '2017-10-31 18:42:47', NULL, NULL, NULL, NULL),
(239, 102, '2017-10-31', '18:43 PM', '652.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, '', '2017-10-31 13:13:48', 'delivered', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:44:00', 'No', 'Yes', 99, 100, '2017-10-31 18:44:38', 100, '2017-10-31 18:45:00', 'dm', '2017-10-31 18:45:01', NULL, NULL),
(240, 102, '2017-10-31', '18:45 PM', '497.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, '', '2017-10-31 13:15:22', 'delivered', 'cash', NULL, NULL, 3, '2017-10-31', '497.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:46:56', 'admin', '2017-10-31 18:46:56', NULL, NULL),
(241, 102, '2017-10-31', '18:45 PM', '449.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, NULL, '2017-10-31 13:15:40', 'new', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 102, '2017-10-31', '18:45 PM', '767.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, NULL, '2017-10-31 13:15:59', 'new', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 102, '2017-10-31', '18:46 PM', '709.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, '', '2017-10-31 13:16:14', 'delivered', 'cash', NULL, NULL, 3, '2017-10-31', '709.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:46:49', 'admin', '2017-10-31 18:46:49', NULL, NULL),
(244, 102, '2017-10-31', '18:46 PM', '478.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, '', '2017-10-31 13:16:29', 'out_to_deliver', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, 'Yes', 'No', NULL, 100, '2017-10-31 18:46:42', 1, '2017-10-31 18:46:42', NULL, NULL, NULL, NULL),
(245, 102, '2017-10-31', '18:47 PM', '786.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'Yes', 30, 60.00, '', '2017-10-31 13:17:14', 'delivered', 'cash', NULL, NULL, 3, '2017-10-31', '786.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:49:58', 'admin', '2017-10-31 18:49:58', NULL, NULL),
(246, 103, '2017-10-31', '18:48 PM', '615.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'No', NULL, NULL, '', '2017-10-31 13:18:47', 'process', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:49:01', NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:49:01', NULL, NULL, NULL, NULL),
(247, 103, '2017-10-31', '18:49 PM', '230.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'No', NULL, NULL, '', '2017-10-31 13:19:26', 'delivered', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, 'Yes', 'No', NULL, 100, '2017-10-31 18:49:38', 100, '2017-10-31 18:49:47', 'dm', '2017-10-31 18:49:47', NULL, NULL),
(248, 103, '2017-10-31', '18:50 PM', '337.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'Yes', 30, 60.00, NULL, '2017-10-31 13:20:42', 'new', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 103, '2017-10-31', '18:51 PM', '500.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'No', NULL, NULL, '', '2017-10-31 13:21:02', 'delivered', 'cash', NULL, NULL, 2, '2017-10-31', '500.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:52:06', 'admin', '2017-10-31 18:52:06', NULL, NULL),
(250, 103, '2017-10-31', '18:51 PM', '1150.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'No', NULL, NULL, '', '2017-10-31 13:21:20', 'process', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:51:59', NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:51:59', NULL, NULL, NULL, NULL),
(251, 103, '2017-10-31', '18:51 PM', '349.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'No', NULL, NULL, '', '2017-10-31 13:21:35', 'out_to_deliver', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, 'Yes', 'No', NULL, 100, '2017-10-31 18:51:49', 1, '2017-10-31 18:51:49', NULL, NULL, NULL, NULL),
(252, 104, '2017-10-31', '18:53 PM', '634.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'No', NULL, NULL, '', '2017-10-31 13:23:03', 'delivered', 'cash', NULL, NULL, 3, '2017-10-31', '634.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:54:06', 'admin', '2017-10-31 18:54:06', NULL, NULL),
(253, 104, '2017-10-31', '18:53 PM', '750.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'No', NULL, NULL, '', '2017-10-31 13:23:22', 'out_to_deliver', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, 'Yes', 'No', NULL, 100, '2017-10-31 18:53:59', 1, '2017-10-31 18:53:59', NULL, NULL, NULL, NULL),
(254, 104, '2017-10-31', '18:53 PM', '788.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'No', NULL, NULL, '', '2017-10-31 13:23:38', 'process', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:53:50', NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:53:50', NULL, NULL, NULL, NULL),
(255, 104, '2017-10-31', '18:54 PM', '346.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'Yes', 30, 60.00, NULL, '2017-10-31 13:24:23', 'new', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 104, '2017-10-31', '18:54 PM', '410.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'Yes', 20, 40.00, '', '2017-10-31 13:24:38', 'cancelled', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:54:48', NULL, NULL, 'admin', '2017-10-31 18:54:48'),
(257, 104, '2017-10-31', '18:55 PM', '583.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'No', NULL, NULL, '', '2017-10-31 13:25:01', 'cancelled', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:55:11', NULL, NULL, 'admin', '2017-10-31 18:55:11'),
(258, 105, '2017-10-31', '18:55 PM', '710.00', NULL, 'Sai N', '745632152', '4-67', 'LK STREET', 'NEAR BANK', 'DARKJA', 'Delhi', 5, '7896541', 'No', NULL, NULL, '', '2017-10-31 13:25:55', 'process', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:56:06', NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:56:06', NULL, NULL, NULL, NULL),
(259, 105, '2017-10-31', '18:56 PM', '700.00', NULL, 'Sai N', '745632152', '4-67', 'LK STREET', 'NEAR BANK', 'DARKJA', 'Delhi', 5, '7896541', 'No', NULL, NULL, '', '2017-10-31 13:26:19', 'delivered', 'cash', NULL, NULL, 2, '2017-10-31', '700.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:56:52', 'admin', '2017-10-31 18:56:52', NULL, NULL),
(260, 105, '2017-10-31', '18:56 PM', '552.00', NULL, 'Sai N', '745632152', '4-67', 'LK STREET', 'NEAR BANK', 'DARKJA', 'Delhi', 5, '7896541', 'No', NULL, NULL, '', '2017-10-31 13:26:55', 'cancelled', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:57:11', NULL, NULL, 'admin', '2017-10-31 18:57:11'),
(261, 105, '2017-10-31', '18:57 PM', '346.00', NULL, 'Sai N', '745632152', '4-67', 'LK STREET', 'NEAR BANK', 'DARKJA', 'Delhi', 5, '7896541', 'Yes', 30, 60.00, NULL, '2017-10-31 13:27:24', 'new', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 102, '2018-01-04', '23:03 PM', '544.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, NULL, '2018-01-04 17:33:04', 'new', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 102, '2018-01-04', '23:57 PM', '599.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, NULL, '2018-01-04 18:27:30', 'new', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 102, '2018-01-04', '23:58 PM', '599.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, NULL, '2018-01-04 18:28:53', 'new', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 103, '2019-02-02', '16:53 PM', '675.00', 50.00, 'Michale Dcks', '8585296678', '66-6', 'sdfsdf', 'sdfsdf', 'Adyar', 'Chennai', 9, '518412', 'No', NULL, NULL, NULL, '2019-02-02 11:23:12', 'new', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cr_pages`
--

CREATE TABLE `cr_pages` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(50) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_pages`
--

INSERT INTO `cr_pages` (`id`, `slug`, `name`, `description`, `status`) VALUES
(1, 'about-us', 'About Us', '<p><small>We Have The Glory Begining in Restaurant Business</small></p>\r\n\r\n<p> </p>\r\n\r\n<p>We made it simple. Technologies, originally developed for a clinical application, now used in a smaller, manageable skin care devices which are easy to use. Our new products are an excellent relax and arome atmosphere.</p>\r\n\r\n<p>We believe that from modern point of view \"normal\" aging isnt normal at all. It is choices you make by the way you live your life. Welcome to the world of most advanced anti-aging treatments.</p>\r\n', 'Active'),
(2, 'how-it-works', 'How It Works', '<p><small>We Have The Glory Begining in Restaurant Business</small></p>\r\n\r\n<p>We made it simple. Technologies, originally developed for a clinical application, now used in a smaller, manageable skin care devices which are easy to use. Our new products are an excellent relax and arome atmosphere.</p>\r\n\r\n<p>We believe that from modern point of view \"normal\" aging isnt normal at all. It is choices you make by the way you live your life. Welcome to the world of most advanced anti-aging treatments.</p>\r\n', 'Active'),
(3, 'terms-conditions', 'Terms and Conditions', '<p>The following terms and conditions were put together to help users better understand how their use of this website will be governed.</p>\r\n\r\n<p>UISuMo is owned and operated by UISuMo.</p>\r\n\r\n<p>Your use and access of this website indicates you accept these Terms and Conditions.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>1.Ownership and Property Rights</strong></p>\r\n\r\n<p>Using this website does not grant you any ownership or interest in any content, visual interfaces, graphics, design, compilation, information, computer code, products, software, services and all other elements you may access from the website.</p>\r\n\r\n<p>You are authorized to download a single copy of purchased/Free downloaded content contained on the website for your personal, non-commercial uses, provided that you maintain the copyright and other notices contained in that content. This excludes products available with premium <a href=\"https://uisumo.com/licenses\">licenses</a>. Please consult our licenses page for more information.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>2. User Information</strong></p>\r\n\r\n<p>In the course of your use of the website, you may be asked for personally identifiable information. We uphold rigorous standards to uphold the integrity of this information as outlined in our <a href=\"https://uisumo.com/privacy-policy\">Privacy Policy</a>. You are solely responsible for the accuracy and content of this user information.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>3. Third Party websites</strong></p>\r\n\r\n<p>In the course of your use of the website, you may be re-directed to third party websites. We have no responsibility for the content or information provided by or through third party websites even if they are affiliates of ours.</p>\r\n\r\n<p>Linking to third party websites does not imply our endorsement of that web website. We disclaim any liability for links to another website.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>4. Limitation of Liability</strong></p>\r\n\r\n<p>You agree to indemnify and hold harmless UISuMo and its parent, subsidiaries, affiliates or any related companies, licensors and suppliers, and their respective directors, officers, employees, agents, representatives, and contractors, from all damages, injuries, liabilities, costs, fees and expenses (including, but not limited to, legal and accounting fees) arising from or in any way related to (i) your use or misuse of the website (including your use or misuse of Third Party Content); (ii) your breach or other violation of these Terms including any representations, warranties and covenants herein; (iii) your violation of the rights of any other person or entity, including, but not limited to claims that any User Content infringes or violates any third party intellectual property rights.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>5. Exclusion of Warranties</strong></p>\r\n\r\n<p>The UISuMo content, or any other product, service or information provided by UISuMo, user content, third-party content, and any other software, services or applications made available in conjunction with or through the website, are provided on an \"as is\", \"as available\", \"with all faults\" basis without representations or warranties of any kind, either express, implied, or statutory, including, but not limited to, in terms of correctness, accuracy, reliability, or otherwise.</p>\r\n\r\n<p>To the fullest extent permissible by applicable law, UISuMo hereby disclaims all warranties of any kind, either express or implied, including, any warranty of merchantability, fitness for a particular purpose, non-infringement, or arising from a course of dealing, with respect to the products or services provided by UISuMo.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>7. Notices</strong></p>\r\n\r\n<p>UISuMo may provide you with notices by e-mail. You can opt-out of our newsletter at any time.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>8. Refunds</strong></p>\r\n\r\n<p>Refunds will only be administered if products are deemed to be faulty or not as described on the product page. To request a refund, please <a href=\"mailto:help@uisumo.com\">help@uisumo.com</a> and specify exactly what the issue is with the product. The support team will then investigate to determine whether or not the product was faulty and not as described.</p>\r\n\r\n<p>Unfortunately, due to the nature of digital goods, refunds cannot be processed until it has been determined that the product is faulty.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>9. Governing Law</strong></p>\r\n\r\n<p>This agreement, and any dispute, controversy, proceedings or claim of whatever nature arising out of or in any way relating to these Terms & Conditions or its formation shall be governed by and construed in accordance with Romanian law.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>10. Modification of the Terms</strong></p>\r\n\r\n<p>UISuMo reserves the right to update or modify the Terms & Conditions at any time without prior notice, and such changes will be effective immediately upon being posted on the website. These Terms will identify the date of last update. In the case of material changes to the Terms, UISuMo will make reasonable efforts to notify you of the change, such as through sending an email to any address you may have used to register for an account, through a pop-up window on the website, or other similar mechanism.</p>\r\n\r\n<p>These terms were last updated on August 27, 2017</p>\r\n\r\n<p> </p>\r\n', 'Active'),
(4, 'privacy-policy', 'Privacy and Policys', '<p><span class=\"marker\"><strong>Privacy Policy template for website usage</strong></span></p>\r\n\r\n<p>Welcome to our website. If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern [business name]&#39;s relationship with you in relation to this website. If you disagree with any part of these terms and conditions, please do not use our website.</p>\r\n\r\n<p>The term &#39;[business name]&#39; or &#39;us&#39; or &#39;we&#39; refers to the owner of the website whose registered office is [address]. Our company registration number is [company registration number and place of registration]. The term &#39;you&#39; refers to the user or viewer of our website.</p>\r\n\r\n<p>The use of this website is subject to the following terms of use:</p>\r\n\r\n<ul>\r\n <li>The content of the pages of this website is for your general information and use only. It is subject to change without notice.</li>\r\n <li>This website uses cookies to monitor browsing preferences. If you do allow cookies to be used, the following personal information may be stored by us for use by third parties: [insert list of information].</li>\r\n <li>Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.</li>\r\n <li>Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.</li>\r\n <li>This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.</li>\r\n <li>All trade marks reproduced in this website which are not the property of, or licensed to, the operator are acknowledged on the website.</li>\r\n <li>Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.</li>\r\n <li>From time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).</li>\r\n <li>Your use of this website and any dispute arising out of such use of the website is subject to the laws of England, Northern Ireland, Scotland and Wales.</li>\r\n</ul>\r\n\r\n<p> </p>\r\n', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_paypal_settings`
--

CREATE TABLE `cr_paypal_settings` (
  `id` int(11) NOT NULL,
  `PayPalEnvironmentProduction` varchar(512) NOT NULL,
  `PayPalEnvironmentSandbox` varchar(512) NOT NULL,
  `merchantName` varchar(512) NOT NULL,
  `merchantPrivacyPolicyURL` varchar(512) NOT NULL,
  `merchantUserAgreementURL` varchar(512) NOT NULL,
  `currency` varchar(512) NOT NULL,
  `account_type` enum('sandbox','production') NOT NULL DEFAULT 'sandbox',
  `paypal_email` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_paypal_settings`
--

INSERT INTO `cr_paypal_settings` (`id`, `PayPalEnvironmentProduction`, `PayPalEnvironmentSandbox`, `merchantName`, `merchantPrivacyPolicyURL`, `merchantUserAgreementURL`, `currency`, `account_type`, `paypal_email`, `status`) VALUES
(1, 'PayPal Environment Production', 'PayPal Environment Sandbox', 'Merchant Name', 'Merchant Privacy Policy URL', 'Merchant User Agreement URL', 'USD', 'sandbox', 'restaurant@contact.com', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_referral_settings`
--

CREATE TABLE `cr_referral_settings` (
  `settings_id` int(11) NOT NULL,
  `referral_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `points_for_refer_anyone` int(10) DEFAULT NULL,
  `points_for_referred_by_anyone` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_referral_settings`
--

INSERT INTO `cr_referral_settings` (`settings_id`, `referral_enabled`, `points_for_refer_anyone`, `points_for_referred_by_anyone`) VALUES
(1, 'Yes', 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `cr_referral_users`
--

CREATE TABLE `cr_referral_users` (
  `referral_id` int(11) NOT NULL,
  `refer_user_id` int(11) UNSIGNED NOT NULL,
  `refer_user_points` int(11) DEFAULT NULL,
  `refer_by` int(11) UNSIGNED NOT NULL,
  `refer_by_points` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_referral_users`
--

INSERT INTO `cr_referral_users` (`referral_id`, `refer_user_id`, `refer_user_points`, `refer_by`, `refer_by_points`, `datetime`) VALUES
(15, 102, 20, 101, 10, '2017-12-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cr_restaurant_timings`
--

CREATE TABLE `cr_restaurant_timings` (
  `id` int(11) NOT NULL,
  `day` enum('monday','tuesday','wednesday','thursday','friday','saturday','sunday') DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `from_time` char(34) DEFAULT NULL,
  `to_time` char(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_restaurant_timings`
--

INSERT INTO `cr_restaurant_timings` (`id`, `day`, `status`, `from_time`, `to_time`) VALUES
(1, 'monday', 'closed', '09:00', '16:00'),
(2, 'tuesday', 'opened', '10:00', '17:00'),
(3, 'wednesday', 'opened', '11:00', '18:00'),
(4, 'thursday', 'closed', '12:00', '19:00'),
(5, 'friday', 'opened', '13:00', '20:00'),
(6, 'saturday', 'closed', '14:00', '21:00'),
(7, 'sunday', 'opened', '15:00', '22:00');

-- --------------------------------------------------------

--
-- Table structure for table `cr_seo_settings`
--

CREATE TABLE `cr_seo_settings` (
  `id` int(11) NOT NULL,
  `meta_keyword` varchar(500) NOT NULL,
  `meta_description` varchar(1000) NOT NULL,
  `google_analytics` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_seo_settings`
--

INSERT INTO `cr_seo_settings` (`id`, `meta_keyword`, `meta_description`, `google_analytics`) VALUES
(1, 'Foodcourt', 'The Meta tag is behind-the-scenes in your code, so it isn\'t visible on your website. The Meta tag is for search engines and other bots. Meta tags include your keywords, page title and your page\'s description. ... The Meta title tag is the unique title you give each one of your restaurant website\'s pages.', 'Google Analytics');

-- --------------------------------------------------------

--
-- Table structure for table `cr_service_provide_locations`
--

CREATE TABLE `cr_service_provide_locations` (
  `service_provide_location_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `locality` varchar(600) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `delivery_fee` float(10,2) DEFAULT NULL,
  `delivery_from_time` varchar(10) DEFAULT NULL,
  `delivery_to_time` varchar(10) DEFAULT NULL,
  `delivery_time_units` enum('minutes','hours') DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_service_provide_locations`
--

INSERT INTO `cr_service_provide_locations` (`service_provide_location_id`, `city_id`, `locality`, `pincode`, `delivery_fee`, `delivery_from_time`, `delivery_to_time`, `delivery_time_units`, `status`) VALUES
(3, 9, 'Adyar', '518412', 50.00, '10', '20', 'minutes', 'Active'),
(4, 9, 'Nemilichery', '518423', 35.00, '', '', NULL, 'Active'),
(7, 514, 'Hebbal', '500812', NULL, '', '', NULL, 'Active'),
(8, 514, 'Marathahalli', '514218', NULL, '', '', NULL, 'Active'),
(9, 514, 'Koramangala', '514813', NULL, '', '', NULL, 'Active'),
(11, 5, 'Sanjay Lake', '514213', NULL, '', '', NULL, 'Active'),
(12, 5, 'Pitampura ', '500112', NULL, '', '', NULL, 'Inactive'),
(14, 270, 'Makota', '50002', 50.00, '20', '30', 'minutes', 'Active'),
(15, 226, 'Kol', '8520', 20.00, '10', '20', 'minutes', 'Active'),
(16, 5, 'DARKJA', '7896541', NULL, '', '', NULL, 'Active'),
(19, 13, 'JANGOAN', '500089', 50.00, '1', '4', 'hours', 'Active'),
(21, 10, 'KR Puram', '560036', NULL, '', '', NULL, 'Active'),
(22, 270, 'Makota', '50003', 25.00, '10', '20', 'minutes', 'Active'),
(24, 5, 'test1', '565645', NULL, NULL, NULL, NULL, 'Active'),
(33, 5, 'zfdxvbgfdg', '4653653', NULL, NULL, NULL, NULL, 'Active'),
(35, 5, 'India Gate1', '123456', NULL, NULL, NULL, NULL, 'Active'),
(36, 26, 'Kavali', '524201', 250.00, '2', '5', 'hours', 'Active'),
(37, 5, 'Jai mandir market', '110049', 500.00, '1', '2', 'hours', 'Active'),
(38, 9, 'Villivakkam', '600049', 250.00, '2', '3', 'hours', 'Active'),
(39, 10, 'BTM Layout', '618123', 100.00, '1', '5', 'hours', 'Active'),
(40, 9, 'Perambur', '600011', 300.00, '1', '2', 'hours', 'Active'),
(41, 529, 'Lingampally', '500048', 100.00, '1', '5', 'hours', 'Active'),
(42, 529, 'Sainikpuri', '555432', 200.00, '30', '50', 'minutes', 'Active'),
(43, 529, 'Hitech City', '500045', 100.00, '1', '3', 'hours', 'Active'),
(44, 529, 'Mind Space', '500081', 150.00, '10', '50', 'minutes', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_sessions`
--

CREATE TABLE `cr_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_sessions`
--

INSERT INTO `cr_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0b9597gpgimi79at7cbr7cjqo0lrk18d', '::1', 1509437183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353638333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223266313761373961663663383339636537373661633637393363383933353864223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a313038303b733a31313a22746f74616c5f6974656d73223b643a343b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a323b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3630303b7d733a33323a223064633261316434383830636364663033636365323531623666356134356434223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3238303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223431223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223238302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a33353b733a363a226164646f6e73223b613a323a7b693a303b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a313b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a33353b7d733a353a22726f776964223b733a33323a223064633261316434383830636364663033636365323531623666356134356434223b733a383a22737562746f74616c223b643a3238303b7d733a33323a223966343130316639343937656137343334623932303065613134623034393839223b613a373a7b733a323a226964223b733a363a22383536373831223b733a333a22717479223b643a313b733a353a227072696365223b643a3230303b733a343a226e616d65223b733a31313a224567672062697279616e69223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363738312e6a7067223b733a393a226974656d5f636f7374223b733a363a223135392e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223331223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223230302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a34353b733a363a226164646f6e73223b613a333a7b693a303b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a313b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b693a323b733a32393a2234363d31302e30303d313d4c656d6f6e3d6164646f6e5f34362e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a34353b7d733a353a22726f776964223b733a33323a223966343130316639343937656137343334623932303065613134623034393839223b733a383a22737562746f74616c223b643a3230303b7d7d6c6f67696e75707c623a313b),
('0k7krrs9iss0luefrq7nmhodps03ek2f', '::1', 1509437160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373136303b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226432376466326434656437663861623037616439323233306663643833323265223b),
('0rqdqpvvmr3d7s7qcio5tjaqmq614te3', '::1', 1509437229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373232383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223635643566376530623365623166613363643834326561666636616431336534223b),
('1n2phtl6sbr0g7drv387najh3b44p8rl', '::1', 1509432998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323837383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226533363434636534386235353234356362653065653065396165326336373765223b),
('4ti0fjru5o5a8hq0dtub5q2g6l98mfhb', '::1', 1509435683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353638333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226134376133353135323336356663396633613063326537316661623036666562223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333343739223b),
('70ks4unfbsbvoc3p21r3m9hc0634o5f6', '::1', 1509433591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333537383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226439653933326634616566613265336139633461316539623535393935313664223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b757365726e616d657c733a31343a2241646d696e206973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332333131223b),
('84alb2kvtd0anbth88r0a60l8274amuv', '::1', 1509436376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433363337353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223961336336613663393463643230303038333964323464333934333331633531223b),
('91tu8bt98tsvmq2607t32n4ih34i84bh', '::1', 1509435683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353638333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223266313761373961663663383339636537373661633637393363383933353864223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3538303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d733a33323a223064633261316434383830636364663033636365323531623666356134356434223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3238303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223431223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223238302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a33353b733a363a226164646f6e73223b613a323a7b693a303b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a313b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a33353b7d733a353a22726f776964223b733a33323a223064633261316434383830636364663033636365323531623666356134356434223b733a383a22737562746f74616c223b643a3238303b7d7d6c6f67696e75707c623a313b),
('9882o8vp1ubeif8b0v86u0pums8e00ag', '::1', 1509437869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373836393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226330396238313034376362383838366565376565366164396132636530393635223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('b0bv5h4ob3bc3s2v1lrt3aqkt5ssr8a4', '::1', 1509434917, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343931373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223537633239326165666164666638613538336337326133343562326238393338223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333343739223b),
('b7873ilbni7me1ul3u359u0v9cdjceqr', '::1', 1509438201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433383230313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223532313064343236306463646464613562653664393861633865313837326666223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('cgat1tv49r9qvf1t3i6k7ukp9hpr9bll', '::1', 1509434609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343630393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223865306664383930373837326537363831396430373137303266616434323132223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d),
('dfmpvi2higfjvs0k6fg1g13so08mko7d', '::1', 1509433375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333337353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223363313365336233656130336231653634663232336465613532373631383161223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332313536223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3536303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b733a383a22737562746f74616c223b643a3236303b7d733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('g19qp8p2kbjj64c8jr0e8p818hr5epoa', '::1', 1509433446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333337353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223531396232333366623330326561333030373934316664336161383665616139223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332313536223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3536303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b733a383a22737562746f74616c223b643a3236303b7d733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('ghq1aff1j9u9qr6ureop7fr3t7hack4n', '::1', 1509432024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323032343b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223330333364656663643264636133353335353339336361313233323861363761223b),
('ip41c5htotv6ctt3bn2a37v17iqvrl5r', '::1', 1509434296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343239363b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223862303662616336633864356232376635376266376334386533346430376534223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d),
('lfoklaqp3nnber6niglekccma6rhp34r', '::1', 1509433464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323032333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226239363462373230353937646338366335663963613733633264613234616165223b),
('lq6sjo12112075ueqa1rdkqga93o1hch', '::1', 1509438425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373535373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223737316466323065653863653431613661663062333131353235316537386636223b),
('lva4p1e629m4j13ue73slm30qu1qa5p7', '::1', 1509432878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323837383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223831353637656133333337343030663736656638646136306163353535386235223b),
('pdgibpt4niuho1q1dgusinf8rn5mt7g3', '::1', 1509438668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433383635373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226632313036333932633536316433333531613733666631383336316562316161223b),
('pm6urek23kijiii02pr7l08hc6lgvhqa', '::1', 1509436898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433363739313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226664373134383465383133326432366533633832326233313630643264396666223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343335373133223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3732393b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a223938663861373234613538643732333935623836623463323835313661613333223b613a373a7b733a323a226964223b733a363a22383536373831223b733a333a22717479223b643a313b733a353a227072696365223b643a3230303b733a343a226e616d65223b733a31313a224567672062697279616e69223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363738312e6a7067223b733a393a226974656d5f636f7374223b733a363a223135392e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223331223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223230302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a34353b733a363a226164646f6e73223b613a333a7b693a303b733a33303a2234323d31302e30303d313d4f6e696f6e733d6164646f6e5f34322e6a7067223b693a313b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a323b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a34353b7d733a353a22726f776964223b733a33323a223938663861373234613538643732333935623836623463323835313661613333223b733a383a22737562746f74616c223b643a3230303b7d733a33323a226537336136623230343461356566623436666163363739613865313730353131223b613a373a7b733a323a226964223b733a363a22383536373633223b733a333a22717479223b643a313b733a353a227072696365223b643a3430303b733a343a226e616d65223b733a31363a224d616c61626172204269726979616e69223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736332e6a7067223b733a393a226974656d5f636f7374223b733a363a223430302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226537336136623230343461356566623436666163363739613865313730353131223b733a383a22737562746f74616c223b643a3430303b7d733a33323a223336316264616165633534633132633931383937653437363736383662316538223b613a373a7b733a323a226964223b733a323a223535223b733a333a22717479223b643a313b733a353a227072696365223b643a3132393b733a343a226e616d65223b733a393a224d656761204465616c223b733a373a226f7074696f6e73223b613a343a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31323a226f666665725f35352e6a7067223b733a383a2269735f6f66666572223b693a313b733a363a226f6666657273223b613a343a7b693a303b733a32313a22313d53776565742d4e2d536f757220507261776e73223b693a313b733a31333a22313d427574746572204e61616e223b693a323b733a31323a22313d50696e656170706c6520223b693a333b733a32343a22323d50696e656170706c6520576974682056616e696c6c61223b7d7d733a353a22726f776964223b733a33323a223336316264616165633534633132633931383937653437363736383662316538223b733a383a22737562746f74616c223b643a3132393b7d7d),
('q87nk6f2msum6m3a8hosiol6uodlgfe4', '::1', 1509437178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343636373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223266313761373961663663383339636537373661633637393363383933353864223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d),
('qbd81b3mbq2nptgbe43l7v6omtn89bai', '::1', 1509437180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373136303b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223834393030343831613539376535356532616532356237343962303663306664223b),
('qfirjhjrvr0l76klthhd3a96203jlfts', '::1', 1509433205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333031393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223337623961363265386436356562383861306366386134373933383135363565223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332313536223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3536303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b733a383a22737562746f74616c223b643a3236303b7d733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('rhc15hcmrir1d4vkblopeat59hgf7uv0', '::1', 1509433591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333437333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223766313463623730653532323164306138343063633966353134636662393739223b6d6573736167657c733a3235303a22203c212d2d203c64697620636c6173733d27636f6c2d6d642d3132273e202d2d3e0d0a090909090909090909093c64697620636c6173733d27616c65727420616c6572742d696e666f273e0d0a09090909090909090909093c6120687265663d27232720636c6173733d27636c6f73652720646174612d6469736d6973733d27616c657274273e2674696d65733b3c2f613e0d0a09090909090909090909093c7374726f6e673e496e666f213c2f7374726f6e673e20506c65617365206c6f67696e20746f20636f6e74696e75650d0a090909090909090909093c2f6469763e0d0a0909090909090909093c212d2d203c2f6469763e202d2d3e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('sa8j64ncon2sgfik0sr07sqg0vpvm9i5', '::1', 1509435313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353330353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223232376435636633363738323134393361386138316366383064616434656338223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b757365726e616d657c733a31343a2241646d696e206973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333363039223b),
('soi1hqljhiieqoj6o2nrkhib3enl35p9', '::1', 1509435380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353337393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226462343635633937363066353135373536306531376361336165386561313036223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333343739223b),
('t9ek1bobpmb4lqqdvks7s3844bavticb', '::1', 1509438374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433383230313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223961346364343939376637623835656437613534366339333230343538366464223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `cr_site_settings`
--

CREATE TABLE `cr_site_settings` (
  `id` int(11) NOT NULL,
  `site_title` varchar(512) NOT NULL,
  `site_name` varchar(512) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(512) NOT NULL,
  `state` varchar(512) NOT NULL,
  `country` varchar(512) NOT NULL,
  `zip` varchar(512) NOT NULL,
  `phone` varchar(512) NOT NULL,
  `land_line` varchar(512) NOT NULL,
  `fax` varchar(512) NOT NULL,
  `portal_email` varchar(512) NOT NULL,
  `site_country` varchar(512) NOT NULL,
  `time_zone` varchar(20) NOT NULL,
  `from_time` varchar(50) NOT NULL,
  `to_time` varchar(50) NOT NULL,
  `site_language` varchar(20) NOT NULL,
  `design_by` varchar(512) NOT NULL,
  `rights_reserved_content` varchar(512) NOT NULL,
  `site_logo` varchar(512) NOT NULL,
  `second_site_logo` varchar(50) NOT NULL,
  `fevicon` varchar(20) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `ios_url` varchar(50) NOT NULL,
  `android_url` varchar(50) NOT NULL,
  `facebook_api` varchar(200) NOT NULL,
  `google_api` varchar(200) NOT NULL,
  `one_signal_server_api_key` varchar(100) NOT NULL,
  `one_signal_app_id` varchar(50) NOT NULL,
  `sms_notifications` enum('Yes','No') NOT NULL DEFAULT 'No',
  `fcm_push_notifications` enum('Yes','No') NOT NULL DEFAULT 'No',
  `admin_css` enum('orange','blue') NOT NULL DEFAULT 'orange',
  `date_format` enum('Y-m-d','Y/m/d','Y.m.d','d-m-Y','d/m/Y','d.m.Y','m-d-Y','m/d/Y','m.d.Y') NOT NULL DEFAULT 'Y-m-d',
  `payment_methods` varchar(50) DEFAULT NULL,
  `pusher_app_id` varchar(50) NOT NULL,
  `pusher_secret` varchar(50) NOT NULL,
  `pusher_key` varchar(50) NOT NULL,
  `pusher_status` enum('Yes','No') DEFAULT NULL,
  `facebook_app_id` varchar(100) DEFAULT NULL,
  `facebook_app_secret` varchar(100) DEFAULT NULL,
  `google_client_id` varchar(500) DEFAULT NULL,
  `google_client_secret` varchar(50) DEFAULT NULL,
  `home_page_img` varchar(20) DEFAULT NULL,
  `home_page_caption` varchar(50) DEFAULT NULL,
  `home_page_tagline` varchar(50) DEFAULT NULL,
  `contact_map_script` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_site_settings`
--

INSERT INTO `cr_site_settings` (`id`, `site_title`, `site_name`, `address`, `city`, `state`, `country`, `zip`, `phone`, `land_line`, `fax`, `portal_email`, `site_country`, `time_zone`, `from_time`, `to_time`, `site_language`, `design_by`, `rights_reserved_content`, `site_logo`, `second_site_logo`, `fevicon`, `currency`, `currency_symbol`, `country_code`, `latitude`, `longitude`, `ios_url`, `android_url`, `facebook_api`, `google_api`, `one_signal_server_api_key`, `one_signal_app_id`, `sms_notifications`, `fcm_push_notifications`, `admin_css`, `date_format`, `payment_methods`, `pusher_app_id`, `pusher_secret`, `pusher_key`, `pusher_status`, `facebook_app_id`, `facebook_app_secret`, `google_client_id`, `google_client_secret`, `home_page_img`, `home_page_caption`, `home_page_tagline`, `contact_map_script`) VALUES
(1, 'Menorah Restaurant', 'RESTAURANT', 'Menorah Restaurant', 'Hyderabad', 'Telangana', 'India', '500081', '9876543210', '123456789', '123456789', 'contact@gmail.com', 'IN', 'Asia/Kolkata', '11:00', '23:59', 'english', 'Digital Samaritan', '© Menorah Restaurant 2019. All Rights Reserved.', 'site_logo.png', 'second_site_logo.png', 'fevicon.ico', 'USD', '৳', '91', '17.456294', '78.367759', '', '', '', '', 'M2VmZDBjOGItYWJjYS00NjdhLWExMzktYWEwZjM4ZjZhNjE2', 'da39217b-0184-4b26-8ef2-e5704cda9eb1', 'No', 'No', 'orange', 'd-m-Y', 'online,cash_on_delivery,card_on_delivery', 'APP ID', 'SECRET', 'KEY', 'Yes', 'facebook app id', 'facebook app secret', 'google client id', 'google client secret', 'home_page_img.jpg', 'Best Quality and Tasty Food', '35 min average delivery time', '<div class=\"mapouter\"><div class=\"gmap_canvas\"><iframe width=\"1004\" height=\"500\" id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=Conquerors%20Software%20Technologies&t=&z=13&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\"></iframe><a href=\"https://www.pureblack.de\">pure black</a></div><style>.mapouter{text-align:right;height:500px;width:1004px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:1004px;}</style></div>');

-- --------------------------------------------------------

--
-- Table structure for table `cr_sms_gate_ways`
--

CREATE TABLE `cr_sms_gate_ways` (
  `sms_gateway_id` int(11) NOT NULL,
  `sms_gateway_name` varchar(50) NOT NULL,
  `is_default` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_sms_gate_ways`
--

INSERT INTO `cr_sms_gate_ways` (`sms_gateway_id`, `sms_gateway_name`, `is_default`, `status`) VALUES
(1, 'Cliakatell', 'No', 'Active'),
(2, 'Nexmo', 'No', 'Active'),
(3, 'Plivo', 'No', 'Active'),
(4, 'Solutionsinfini', 'No', 'Active'),
(5, 'Twilio', 'Yes', 'Active'),
(7, 'MSG91', 'No', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `cr_sms_templates`
--

CREATE TABLE `cr_sms_templates` (
  `sms_template_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `sms_template` varchar(1000) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_sms_templates`
--

INSERT INTO `cr_sms_templates` (`sms_template_id`, `subject`, `sms_template`, `status`) VALUES
(1, 'registration_otp', '<p>Your Registration OTP is <strong>__OTP__</strong></p>\r\n', 'Active'),
(2, 'forgot_password_otp', '<p>Your Forgot Password OTP is <strong>__OTP__</strong></p>\n', 'Active'),
(3, 'order_saved', '<p>Thanks for using <strong>__SITE__TITLE__</strong></p>\r\n\r\n<p>Order No <strong>__ORDER__NO__</strong></p>\r\n\r\n<p>Total Cost <strong>__TOTAL__COST__</strong></p>\r\n', 'Active'),
(4, 'order_update', '<p>Your Order No <strong>__ORDER__ID__</strong> Status <strong>__STATUS__</strong> Message <strong>__MESSAGE__</strong></p>\r\n', 'Active'),
(5, 'item_deleted', '<p>Item Deleted from Order Order No <strong>__ORDER__ID__</strong> Item Name <strong>__ITEM__NAME__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_social_networks`
--

CREATE TABLE `cr_social_networks` (
  `id` int(11) NOT NULL,
  `facebook` varchar(500) NOT NULL,
  `twitter` varchar(500) NOT NULL,
  `google_plus` varchar(500) NOT NULL,
  `linked_in` varchar(500) NOT NULL,
  `instagram` varchar(500) NOT NULL,
  `pinterest` varchar(500) NOT NULL,
  `tumblr` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_social_networks`
--

INSERT INTO `cr_social_networks` (`id`, `facebook`, `twitter`, `google_plus`, `linked_in`, `instagram`, `pinterest`, `tumblr`) VALUES
(1, 'https://en-gb.facebook.com/login/', 'https://twitter.com/login', 'https://plus.google.com/', 'https://www.linkedin.com/uas/login', 'https://www.instagram.com/?hl=en', 'https://in.pinterest.com/login/', 'https://www.tumblr.com/login');

-- --------------------------------------------------------

--
-- Table structure for table `cr_system_settings_fields`
--

CREATE TABLE `cr_system_settings_fields` (
  `field_id` int(11) NOT NULL,
  `sms_gateway_id` int(11) DEFAULT NULL,
  `field_name` varchar(256) NOT NULL,
  `field_key` varchar(50) NOT NULL,
  `is_required` char(5) DEFAULT 'No',
  `field_output_value` text,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_system_settings_fields`
--

INSERT INTO `cr_system_settings_fields` (`field_id`, `sms_gateway_id`, `field_name`, `field_key`, `is_required`, `field_output_value`, `created`, `updated`) VALUES
(125, 1, 'User Name', 'User_Name', 'Yes', 'username', '2016-07-25 11:20:38', '2017-10-31 08:39:01'),
(126, 1, 'Password', 'Password', 'Yes', 'password', '2016-07-25 12:29:11', '2017-10-31 08:39:01'),
(127, 1, 'From No', 'From_No', 'Yes', 'from no', '2016-07-25 12:29:47', '2017-10-31 08:39:01'),
(128, 1, 'API Id', 'API_Id', 'Yes', 'api id', '2016-07-25 12:30:10', '2017-10-31 08:39:01'),
(129, 2, 'API KEY', 'API_KEY', 'Yes', 'api key', '2016-07-26 05:51:28', '2017-10-31 08:39:12'),
(130, 2, 'API SECRET', 'API_SECRET', 'Yes', 'api secret', '2016-07-26 06:00:50', '2017-10-31 08:39:12'),
(131, 3, 'AUTH ID', 'AUTH_ID', 'Yes', 'AUTH ID', '2016-07-26 09:26:52', '2017-10-31 08:39:22'),
(132, 3, 'AUTH TOKEN', 'AUTH_TOKEN', 'Yes', 'AUTH TOKEN', '2016-07-26 09:27:16', '2017-10-31 08:39:22'),
(133, 3, 'API VERSION', 'API_VERSION', 'Yes', 'v1', '2016-07-26 09:27:49', '2017-10-31 08:39:22'),
(134, 3, 'END POINT', 'END_POINT', 'Yes', 'https://api.plivo.com', '2016-07-26 09:28:14', '2017-10-31 08:39:22'),
(135, 4, 'Working Key', 'working_key', 'Yes', 'Working key', '2016-07-26 09:29:30', '2017-10-31 08:39:34'),
(136, 4, 'Sender Id', 'sender_id', 'Yes', 'Sender id', '2016-07-26 09:29:53', '2017-10-31 08:39:34'),
(137, 4, 'API URL', 'api', 'Yes', 'http://alerts.solutionsinfini.com/', '2016-07-26 09:30:15', '2017-10-31 08:39:34'),
(138, 5, 'Account SID', 'account_sid', 'Yes', 'Account SID', '2016-07-26 09:31:21', '2017-10-31 08:39:56'),
(139, 5, 'Auth Token', 'auth_token', 'Yes', 'Auth Token', '2016-07-26 09:31:54', '2017-10-31 08:39:56'),
(140, 5, 'API Version', 'api_version', 'Yes', '2010-04-01', '2016-07-26 09:32:20', '2017-10-31 08:39:56'),
(141, 5, 'Twilio Phone Number', 'Twilio_Phone_Number', 'Yes', 'phone number', '2016-07-26 09:32:57', '2017-10-31 08:39:56'),
(142, 7, 'AUTH', 'AUTH', 'Yes', 'AUTH', '2016-11-17 08:03:11', '2017-10-31 08:40:05'),
(143, 7, 'SENDER_ID', 'SENDER_ID', 'Yes', 'SENDER ID', '2016-11-17 08:03:11', '2017-10-31 08:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `cr_tinify_settings`
--

CREATE TABLE `cr_tinify_settings` (
  `id` int(11) NOT NULL,
  `use_tinify` enum('Yes','No') DEFAULT NULL,
  `API_Key` varchar(100) DEFAULT NULL,
  `compress` enum('Yes','No') DEFAULT NULL,
  `thumb` enum('Yes','No') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_tinify_settings`
--

INSERT INTO `cr_tinify_settings` (`id`, `use_tinify`, `API_Key`, `compress`, `thumb`) VALUES
(1, 'No', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cr_user_address`
--

CREATE TABLE `cr_user_address` (
  `ua_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `house_no` varchar(50) NOT NULL,
  `street` varchar(1000) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `is_default` enum('Yes','No') DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_user_address`
--

INSERT INTO `cr_user_address` (`ua_id`, `user_id`, `house_no`, `street`, `landmark`, `pincode`, `locality`, `city`, `is_default`, `location_id`) VALUES
(102, 101, '12-3', 'LK STREET', 'NEAR POST OFFICE', '514213', 'Sanjay Lake', 'Delhi', NULL, 11),
(103, 102, '2-45', 'LK STREET', 'NEAR BANK', '500048', 'Lingampally', 'Hyderabad', NULL, 41),
(105, 104, '75-6', 'LK STREET', 'NEAR BANK', '500081', 'Mind Space', 'Hyderabad', NULL, 44),
(106, 105, '4-67', 'LK STREET', 'NEAR BANK', '7896541', 'DARKJA', 'Delhi', NULL, 16),
(107, 103, '66-6', 'sdfsdf', 'sdfsdf', '518412', 'Adyar', 'Chennai', 'Yes', 3),
(108, 103, '5-098', 'fadsf', 'sdfsdfd', '560036', 'KR Puram', 'Bangalore', NULL, 21);

-- --------------------------------------------------------

--
-- Table structure for table `cr_user_points`
--

CREATE TABLE `cr_user_points` (
  `customer_reward_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `points` int(11) DEFAULT NULL,
  `transaction_type` enum('Earned','Redeem') DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_user_points`
--

INSERT INTO `cr_user_points` (`customer_reward_id`, `user_id`, `points`, `transaction_type`, `order_id`, `description`, `created_on`) VALUES
(150, 101, 30, 'Earned', 232, 'Points earned for first order', '2017-10-31 18:39:33'),
(151, 101, 20, 'Earned', 232, 'Points earned for buy an item order', '2017-10-31 18:39:33'),
(152, 101, 30, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:42:03'),
(153, 101, 20, 'Earned', 234, 'Points earned for buy an item order', '2017-10-31 18:42:54'),
(154, 102, 30, 'Earned', 239, 'Points earned for first order', '2017-10-31 18:45:01'),
(155, 102, 20, 'Earned', 239, 'Points earned for buy an item order', '2017-10-31 18:45:01'),
(156, 102, 20, 'Earned', 243, 'Points earned for buy an item order', '2017-10-31 18:46:49'),
(157, 102, 20, 'Earned', 240, 'Points earned for buy an item order', '2017-10-31 18:46:56'),
(158, 102, 30, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:47:14'),
(159, 103, 30, 'Earned', 247, 'Points earned for first order', '2017-10-31 18:49:47'),
(160, 103, 20, 'Earned', 247, 'Points earned for buy an item order', '2017-10-31 18:49:47'),
(161, 102, 20, 'Earned', 245, 'Points earned for buy an item order', '2017-10-31 18:49:58'),
(162, 103, 30, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:50:42'),
(163, 103, 20, 'Earned', 249, 'Points earned for buy an item order', '2017-10-31 18:52:06'),
(164, 104, 30, 'Earned', 252, 'Points earned for first order', '2017-10-31 18:54:06'),
(165, 104, 20, 'Earned', 252, 'Points earned for buy an item order', '2017-10-31 18:54:06'),
(166, 104, 30, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:54:23'),
(167, 104, 20, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:54:39'),
(168, 104, 20, 'Earned', 256, 'Points returned for cancelled an item order', '2017-10-31 18:54:48'),
(169, 105, 30, 'Earned', 259, 'Points earned for first order', '2017-10-31 18:56:53'),
(170, 105, 20, 'Earned', 259, 'Points earned for buy an item order', '2017-10-31 18:56:53'),
(171, 105, 30, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `cr_users`
--

CREATE TABLE `cr_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(512) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `landmark` varchar(200) DEFAULT NULL,
  `device_id` varchar(200) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `registration_through` enum('portal','mobile') DEFAULT NULL,
  `registration_type` enum('normal','facebook','google') DEFAULT NULL,
  `referral_code` varchar(20) DEFAULT NULL,
  `user_points` int(11) DEFAULT '0',
  `refer_by` int(11) DEFAULT NULL,
  `refer_by_code` varchar(20) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_activated` enum('Yes','No') NOT NULL DEFAULT 'No',
  `assigned_cities` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_users`
--

INSERT INTO `cr_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `photo`, `phone`, `address`, `city`, `pincode`, `landmark`, `device_id`, `platform`, `registration_through`, `registration_type`, `referral_code`, `user_points`, `refer_by`, `refer_by_code`, `created_datetime`, `updated_datetime`, `is_activated`, `assigned_cities`) VALUES
(1, '127.0.0.1', 'Admin istrator', '$2y$08$NQIPakLvpP5ZkiMt0UR8eeJy4kkE9uUztJh50uiz3Qylc40jYX8PC', '', 'admin@admin.com', NULL, 'B0whGSIVG-1Tr4MlqANqk.dcdc780ffa99d0633c', 1498553784, NULL, 1268889823, 1640068525, 1, 'Admin', 'istrator', 'user_1.png', '1234567890', '2009-12-24', '', '123456', '', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2016-06-07 00:00:00', 'No', NULL),
(99, '::1', 'Kitchen Manager', '$2y$08$CHyduLmKL7h31nyWtVFtKOyvHM60mNWaS3WxkR8QXWFNwN6TUnAi2', NULL, 'kitchenmanager@gmail.com', 'e41fa8c5e4525246992a704bfab8c7c9e1c4d084', NULL, NULL, NULL, 1509454519, 1515132680, 1, 'Kitchen', 'Manager', NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', NULL, 0, NULL, NULL, '2017-10-31 18:25:19', NULL, 'No', NULL),
(100, '::1', 'Delivery Manager', '$2y$08$pMAhdEyzUjEVAbzsoWe1g.DHRGzEl6uqHPpsT/1QXi9EUtQO2kS8.', NULL, 'deliverymanager@gmail.com', 'd36dd29cdd3664a9d56541ad4b2716b12905475c', NULL, NULL, NULL, 1509454565, 1515132690, 1, 'Delivery', 'Manager', NULL, '1234567895', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', NULL, 0, NULL, NULL, '2017-10-31 18:26:05', NULL, 'No', '5,529'),
(101, '::1', 'Arun N', '$2y$08$Crc9wm7HsAOq7n/FDR296OjJmRr1aUIM4Qt5It2/8A8M7WYLQaga2', NULL, 'arunayellanuru@gmail.com', '0e4c194eab64d03ebdd2c41373184d14843c8050', NULL, NULL, NULL, 1509454637, 1509455246, 1, 'Arun', 'N', NULL, '9966336699', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', 'NCPX3z2HMK', 40, NULL, NULL, '2017-10-31 18:27:17', NULL, 'No', NULL),
(102, '::1', 'Venkat Siva', '$2y$08$EEsq.KE2l25fg.fVCn/qC.25ZJfUTSD6NLEVscVtrsp/K53AEVfGy', NULL, 'customer@customer.com', 'a35e792cfcbdd3b08ce677e44e408dfcfc1659a3', NULL, NULL, NULL, 1509454715, 1515132700, 1, 'Venkat', 'Siva', NULL, '7788554411', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', '3hWNAxgVsz', 80, 101, 'NCPX3z2HMK', '2017-10-31 18:28:35', NULL, 'No', NULL),
(103, '::1', 'Michale Dcks', '$2y$08$5sWV.hFoz5Aba7Pkz4.wQOhYo/U0zX2lGGo28AprjRd77aEZL3qnW', NULL, 'michale@gmail.com', '27e5cdba8f9885adbf2f7a13a0e33fa71938faeb', NULL, NULL, NULL, 1509454879, 1549106294, 1, 'Michale', 'Dcks', NULL, '8585296678', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', 'MwhsshybZA', 40, NULL, NULL, '2017-10-31 18:31:18', NULL, 'No', NULL),
(104, '::1', 'Stella Blessy', '$2y$08$TAPwnDCsIeMWmZH1Wr6eLutWm9aRGDxpByeqH4IAmZBLrOIsrD7o6', NULL, 'stellablessy4@gmail.com', '9616839d2223331264aca54239fb45d6c5fd68fc', NULL, NULL, NULL, 1509455186, 1509456150, 1, 'Stella', 'Blessy', NULL, '7418529635', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', '3RuYBn6vaY', 20, NULL, NULL, '2017-10-31 18:36:26', NULL, 'No', NULL),
(105, '::1', 'Sai N', '$2y$08$8ERkKVFcnQU7hJ9WCwscLON0umObiFV7Z8KmjAdQWXHMSLEvzmsCi', NULL, 'sai84130@gmail.com', 'dfac756ea847e62683402efe693a8dccffa0e858', NULL, NULL, NULL, 1509455222, 1509456328, 1, 'Sai', 'N', NULL, '745632152', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', 'vbg5OhTn6l', 20, NULL, NULL, '2017-10-31 18:37:02', NULL, 'No', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cr_users_groups`
--

CREATE TABLE `cr_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_users_groups`
--

INSERT INTO `cr_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(99, 99, 3),
(100, 100, 4),
(101, 101, 2),
(102, 102, 2),
(103, 103, 2),
(104, 104, 2),
(105, 105, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cr_addons`
--
ALTER TABLE `cr_addons`
  ADD PRIMARY KEY (`addon_id`);

--
-- Indexes for table `cr_card_images`
--
ALTER TABLE `cr_card_images`
  ADD PRIMARY KEY (`card_image_id`);

--
-- Indexes for table `cr_cities`
--
ALTER TABLE `cr_cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `cr_country`
--
ALTER TABLE `cr_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_email_settings`
--
ALTER TABLE `cr_email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_email_templates`
--
ALTER TABLE `cr_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_faq_categories`
--
ALTER TABLE `cr_faq_categories`
  ADD PRIMARY KEY (`fc_id`);

--
-- Indexes for table `cr_faqs`
--
ALTER TABLE `cr_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_groups`
--
ALTER TABLE `cr_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_item_addons`
--
ALTER TABLE `cr_item_addons`
  ADD PRIMARY KEY (`item_addon_id`),
  ADD KEY `fk_item_addon_id` (`addon_id`),
  ADD KEY `fk_item_item_id` (`item_id`);

--
-- Indexes for table `cr_item_options`
--
ALTER TABLE `cr_item_options`
  ADD PRIMARY KEY (`item_option_id`),
  ADD KEY `fk_item_size_id` (`option_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `cr_item_types`
--
ALTER TABLE `cr_item_types`
  ADD PRIMARY KEY (`item_type_id`);

--
-- Indexes for table `cr_items`
--
ALTER TABLE `cr_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_menu` (`menu_id`);

--
-- Indexes for table `cr_language_codes`
--
ALTER TABLE `cr_language_codes`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `cr_languagewords`
--
ALTER TABLE `cr_languagewords`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `cr_login_attempts`
--
ALTER TABLE `cr_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_loyality_points`
--
ALTER TABLE `cr_loyality_points`
  ADD PRIMARY KEY (`lp_id`);

--
-- Indexes for table `cr_menu`
--
ALTER TABLE `cr_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `cr_offer_products`
--
ALTER TABLE `cr_offer_products`
  ADD PRIMARY KEY (`offer_product_id`),
  ADD KEY `fk_offers` (`offer_id`);

--
-- Indexes for table `cr_offers`
--
ALTER TABLE `cr_offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `cr_options`
--
ALTER TABLE `cr_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `cr_order_addons`
--
ALTER TABLE `cr_order_addons`
  ADD PRIMARY KEY (`oa_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `cr_order_offer_products`
--
ALTER TABLE `cr_order_offer_products`
  ADD PRIMARY KEY (`order_offer_product_id`),
  ADD KEY `op_order_id` (`order_id`) USING BTREE;

--
-- Indexes for table `cr_order_offers`
--
ALTER TABLE `cr_order_offers`
  ADD PRIMARY KEY (`order_offer_id`),
  ADD KEY `of_order_id` (`order_id`) USING BTREE;

--
-- Indexes for table `cr_order_products`
--
ALTER TABLE `cr_order_products`
  ADD PRIMARY KEY (`op_id`),
  ADD KEY `fk_order_id` (`order_id`);

--
-- Indexes for table `cr_orders`
--
ALTER TABLE `cr_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `cr_pages`
--
ALTER TABLE `cr_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_paypal_settings`
--
ALTER TABLE `cr_paypal_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_referral_settings`
--
ALTER TABLE `cr_referral_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `cr_referral_users`
--
ALTER TABLE `cr_referral_users`
  ADD PRIMARY KEY (`referral_id`),
  ADD KEY `refer_user_id` (`refer_user_id`),
  ADD KEY `refer_by` (`refer_by`);

--
-- Indexes for table `cr_restaurant_timings`
--
ALTER TABLE `cr_restaurant_timings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_seo_settings`
--
ALTER TABLE `cr_seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_service_provide_locations`
--
ALTER TABLE `cr_service_provide_locations`
  ADD PRIMARY KEY (`service_provide_location_id`),
  ADD KEY `fk_city_id` (`city_id`);

--
-- Indexes for table `cr_sessions`
--
ALTER TABLE `cr_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `cr_site_settings`
--
ALTER TABLE `cr_site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_sms_gate_ways`
--
ALTER TABLE `cr_sms_gate_ways`
  ADD PRIMARY KEY (`sms_gateway_id`);

--
-- Indexes for table `cr_sms_templates`
--
ALTER TABLE `cr_sms_templates`
  ADD PRIMARY KEY (`sms_template_id`);

--
-- Indexes for table `cr_social_networks`
--
ALTER TABLE `cr_social_networks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_system_settings_fields`
--
ALTER TABLE `cr_system_settings_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `cr_tinify_settings`
--
ALTER TABLE `cr_tinify_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_user_address`
--
ALTER TABLE `cr_user_address`
  ADD PRIMARY KEY (`ua_id`),
  ADD KEY `ua_id` (`ua_id`),
  ADD KEY `fk_ua_id` (`user_id`);

--
-- Indexes for table `cr_user_points`
--
ALTER TABLE `cr_user_points`
  ADD PRIMARY KEY (`customer_reward_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cr_users`
--
ALTER TABLE `cr_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_users_groups`
--
ALTER TABLE `cr_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cr_addons`
--
ALTER TABLE `cr_addons`
  MODIFY `addon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `cr_card_images`
--
ALTER TABLE `cr_card_images`
  MODIFY `card_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cr_cities`
--
ALTER TABLE `cr_cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;
--
-- AUTO_INCREMENT for table `cr_country`
--
ALTER TABLE `cr_country`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `cr_email_settings`
--
ALTER TABLE `cr_email_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_email_templates`
--
ALTER TABLE `cr_email_templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `cr_faq_categories`
--
ALTER TABLE `cr_faq_categories`
  MODIFY `fc_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cr_faqs`
--
ALTER TABLE `cr_faqs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cr_groups`
--
ALTER TABLE `cr_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cr_item_addons`
--
ALTER TABLE `cr_item_addons`
  MODIFY `item_addon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `cr_item_options`
--
ALTER TABLE `cr_item_options`
  MODIFY `item_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `cr_item_types`
--
ALTER TABLE `cr_item_types`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `cr_items`
--
ALTER TABLE `cr_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=856792;
--
-- AUTO_INCREMENT for table `cr_language_codes`
--
ALTER TABLE `cr_language_codes`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_languagewords`
--
ALTER TABLE `cr_languagewords`
  MODIFY `lang_id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1347;
--
-- AUTO_INCREMENT for table `cr_login_attempts`
--
ALTER TABLE `cr_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cr_loyality_points`
--
ALTER TABLE `cr_loyality_points`
  MODIFY `lp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_menu`
--
ALTER TABLE `cr_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `cr_offer_products`
--
ALTER TABLE `cr_offer_products`
  MODIFY `offer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=975;
--
-- AUTO_INCREMENT for table `cr_offers`
--
ALTER TABLE `cr_offers`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `cr_options`
--
ALTER TABLE `cr_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `cr_order_addons`
--
ALTER TABLE `cr_order_addons`
  MODIFY `oa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cr_order_offer_products`
--
ALTER TABLE `cr_order_offer_products`
  MODIFY `order_offer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cr_order_offers`
--
ALTER TABLE `cr_order_offers`
  MODIFY `order_offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cr_order_products`
--
ALTER TABLE `cr_order_products`
  MODIFY `op_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `cr_orders`
--
ALTER TABLE `cr_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT for table `cr_pages`
--
ALTER TABLE `cr_pages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cr_paypal_settings`
--
ALTER TABLE `cr_paypal_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_referral_settings`
--
ALTER TABLE `cr_referral_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_referral_users`
--
ALTER TABLE `cr_referral_users`
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cr_restaurant_timings`
--
ALTER TABLE `cr_restaurant_timings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cr_seo_settings`
--
ALTER TABLE `cr_seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_service_provide_locations`
--
ALTER TABLE `cr_service_provide_locations`
  MODIFY `service_provide_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `cr_site_settings`
--
ALTER TABLE `cr_site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_sms_gate_ways`
--
ALTER TABLE `cr_sms_gate_ways`
  MODIFY `sms_gateway_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cr_sms_templates`
--
ALTER TABLE `cr_sms_templates`
  MODIFY `sms_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cr_social_networks`
--
ALTER TABLE `cr_social_networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_system_settings_fields`
--
ALTER TABLE `cr_system_settings_fields`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `cr_tinify_settings`
--
ALTER TABLE `cr_tinify_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_user_address`
--
ALTER TABLE `cr_user_address`
  MODIFY `ua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `cr_user_points`
--
ALTER TABLE `cr_user_points`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `cr_users`
--
ALTER TABLE `cr_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `cr_users_groups`
--
ALTER TABLE `cr_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cr_item_addons`
--
ALTER TABLE `cr_item_addons`
  ADD CONSTRAINT `fk_item_addon_id` FOREIGN KEY (`addon_id`) REFERENCES `cr_addons` (`addon_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_item_item_id` FOREIGN KEY (`item_id`) REFERENCES `cr_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_item_options`
--
ALTER TABLE `cr_item_options`
  ADD CONSTRAINT `fk_item_size_id` FOREIGN KEY (`option_id`) REFERENCES `cr_options` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_id` FOREIGN KEY (`item_id`) REFERENCES `cr_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_items`
--
ALTER TABLE `cr_items`
  ADD CONSTRAINT `fk_menu` FOREIGN KEY (`menu_id`) REFERENCES `cr_menu` (`menu_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_offer_products`
--
ALTER TABLE `cr_offer_products`
  ADD CONSTRAINT `fk_offers` FOREIGN KEY (`offer_id`) REFERENCES `cr_offers` (`offer_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_order_addons`
--
ALTER TABLE `cr_order_addons`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_order_offer_products`
--
ALTER TABLE `cr_order_offer_products`
  ADD CONSTRAINT `op_order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_order_offers`
--
ALTER TABLE `cr_order_offers`
  ADD CONSTRAINT `of_order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_order_products`
--
ALTER TABLE `cr_order_products`
  ADD CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_referral_users`
--
ALTER TABLE `cr_referral_users`
  ADD CONSTRAINT `refer_by` FOREIGN KEY (`refer_by`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refer_user_id` FOREIGN KEY (`refer_user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_service_provide_locations`
--
ALTER TABLE `cr_service_provide_locations`
  ADD CONSTRAINT `fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `cr_cities` (`city_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_user_address`
--
ALTER TABLE `cr_user_address`
  ADD CONSTRAINT `fk_ua_id` FOREIGN KEY (`user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_user_points`
--
ALTER TABLE `cr_user_points`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_users_groups`
--
ALTER TABLE `cr_users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `cr_groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `fos_db`
--
CREATE DATABASE IF NOT EXISTS `fos_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fos_db`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_ip` varchar(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_ip`, `user_id`, `product_id`, `qty`) VALUES
(1, '::1', 2, 8, 2),
(2, '', 2, 9, 1),
(3, '', 2, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`) VALUES
(1, 'Beverages'),
(3, 'Best Sellers'),
(4, 'Meals'),
(5, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `qty`) VALUES
(1, 1, 3, 1),
(2, 1, 5, 1),
(3, 1, 3, 1),
(4, 1, 6, 3),
(5, 2, 1, 2),
(6, 3, 3, 1),
(7, 4, 7, 2),
(8, 5, 9, 1),
(9, 6, 10, 2),
(10, 6, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `mobile`, `email`, `status`) VALUES
(1, 'James Smith', 'adasdasd asdadasd', '4756463215', 'jsmith@sample.com', 1),
(2, 'James Smith', 'adasdasd asdadasd', '4756463215', 'jsmith@sample.com', 1),
(3, 'Mahir mahiradnan12@gmail.com', 'Rabgamati sadar', '+880175865', 'mahiradnan12@gmail.com', 0),
(4, 'Mahir mahiradnan12@gmail.com', 'Rabgamati sadar', '+880175865', 'mahiradnan12@gmail.com', 1),
(5, 'Mahir mahiradnan12@gmail.com', 'Rabgamati sadar', '+8801758652809', 'mahiradnan12@gmail.com', 0),
(6, 'Mahir mahiradnan12@gmail.com', 'Rabgamati sadar', '+880175865', 'mahiradnan12@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0= unavailable, 2 Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `img_path`, `status`) VALUES
(7, 4, 'Crap Masala fry', 'Sea crap is is delicious\r\n#KGR', 210, '1640238660_257916471_419913896470142_5745499697404484726_n.jpg', 1),
(8, 4, 'Bamboo Chicken', 'Bamboo chicken is an oil free and nutritionally rich dish.\r\n#KGR', 200, '1640239080_241294136_372608097867389_1236115214489449533_n.jpg', 1),
(9, 5, 'Momo', 'Momos are a kind of dumpling popular in Nepal, Sikkim and Tibet, and are similar to Chinese potstickers. Momo are made of a simple flour and water dough. \r\n#KGR', 150, '1640239200_243677077_389071982887667_6803485460119992932_n.jpg', 1),
(10, 4, 'Pajon', 'Pajon ton Jumma mixed vegetables recipes\r\n#KGR', 160, '1640239560_239486786_365069695287896_8911014764631042353_n.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Rangamati Swiggy', 'mahiradnansujan@gmail.com', '01681788659', '1640237760_2020_03_24_90456_1585030352._large.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;&lt;b&gt;We are the first food delivery platfrom in rangamati.Our delivery system is very fast,we serve delicious food or aurganic food.we care of your health.&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h6&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address`) VALUES
(2, 'Mahir', 'mahiradnan12@gmail.com', 'mahiradnan12@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '+880175865', 'Rabgamati sadar');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `hotel_db`
--
CREATE DATABASE IF NOT EXISTS `hotel_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hotel_db`;

-- --------------------------------------------------------

--
-- Table structure for table `checked`
--

CREATE TABLE `checked` (
  `id` int(30) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `room_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `date_in` datetime NOT NULL,
  `date_out` datetime NOT NULL,
  `booked_cid` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = pending, 1=checked in , 2 = checked out',
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checked`
--

INSERT INTO `checked` (`id`, `ref_no`, `room_id`, `name`, `contact_no`, `date_in`, `date_out`, `booked_cid`, `status`, `date_updated`) VALUES
(4, '0000\n', 1, 'John Smith', '+14526-5455-44', '2020-09-19 11:48:09', '2020-09-22 11:48:09', 0, 2, '2020-09-19 13:11:34'),
(5, '9564082520\n', 1, 'John Smith', '+14526-5455-44', '2020-09-19 11:48:33', '2020-09-22 11:48:33', 0, 2, '2020-09-19 13:12:19'),
(6, '2765813481\n', 1, 'asdasd asdas as', '8747808787', '2020-09-19 13:16:00', '2020-09-24 13:16:00', 0, 2, '2020-09-19 13:43:21'),
(7, '4392831400\n', 3, 'Sample', '5205525544', '2020-09-19 13:00:00', '2020-09-23 13:00:00', 0, 2, '2020-09-19 16:00:55'),
(10, '6479004224\n', 1, 'John Smith', '+14526-5455-44', '2020-09-23 10:31:00', '2020-09-29 10:31:00', 3, 1, '2020-09-19 16:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `room_categories`
--

CREATE TABLE `room_categories` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `price` float NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_categories`
--

INSERT INTO `room_categories` (`id`, `name`, `price`, `cover_img`) VALUES
(2, 'Deluxe Room', 500, '1600480260_4.jpg'),
(3, 'Single Room', 120, '1600480680_2.jpg'),
(4, 'Family Room', 350, '1600480680_room-1.jpg'),
(6, 'Twin Bed Room', 200, '1600482780_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(30) NOT NULL,
  `room` varchar(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Available , 1= Unvailables'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room`, `category_id`, `status`) VALUES
(1, 'Room-101', 3, 1),
(3, 'Room-102', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `hotel_name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `hotel_name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Hotel Management System', 'info@sample.com', '+6948 8542 623', '1600478940_hotel-cover.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;ABOUT US&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/b&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;#x2019;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;&lt;h2 style=&quot;font-size:28px;background: transparent; position: relative;&quot;&gt;Where does it come from?&lt;/h2&gt;&lt;p style=&quot;text-align: center; margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400;&quot;&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checked`
--
ALTER TABLE `checked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_categories`
--
ALTER TABLE `room_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checked`
--
ALTER TABLE `checked`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `room_categories`
--
ALTER TABLE `room_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `jummobajar`
--
CREATE DATABASE IF NOT EXISTS `jummobajar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jummobajar`;

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(30) NOT NULL,
  `admin_email` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `admin_pass` varchar(72) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlog`
--

INSERT INTO `adminlog` (`id`, `admin_email`, `admin_pass`) VALUES
(1, 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ctg_id` int(11) NOT NULL,
  `ctg_name` text CHARACTER SET utf8mb4 NOT NULL,
  `ctg_des` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `ctg_status` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ctg_id`, `ctg_name`, `ctg_des`, `ctg_status`) VALUES
(4, 'Men Collection', 'Here we are going to list men products', 1),
(5, 'JummoFood', 'we serve best quality jummo food', 1),
(6, 'Fruits', '', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_info_ctg`
-- (See below for the actual view)
--
CREATE TABLE `product_info_ctg` (
`pdt_id` int(255)
,`pdt_name` varchar(200)
,`pdt_price` int(200)
,`pdt_des` varchar(250)
,`pdt_img` varchar(200)
,`pdt_status` tinyint(5)
,`ctg_id` int(11)
,`ctg_name` text
);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pdt_id` int(255) NOT NULL,
  `pdt_name` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `pdt_price` int(200) NOT NULL,
  `pdt_des` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `pdt_ctg` int(200) NOT NULL,
  `pdt_img` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `pdt_status` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pdt_id`, `pdt_name`, `pdt_price`, `pdt_des`, `pdt_ctg`, `pdt_img`, `pdt_status`) VALUES
(3, 'Mango', 50, 'mango people', 4, 'FB_IMG_1472459038595.jpg', 0),
(4, 'Toy', 200, 'Mahir Toy is the best', 4, 'My pic.jpg', 1),
(5, 'timi', 2000, 'Timis id card', 3, 'Capture.png', 1),
(6, 'TEST', 12, 'djfkdjdlksdd', 3, 'My pic.jpg', 1),
(7, 'food', 2, 'sdsdd', 5, 'FB_IMG_1463628347003.jpg', 1),
(9, 'mah', 233, 'defdf', 4, '190807456_305108891103143_555614095933904034_n.jpg', 1),
(10, 'mimi', 122, 'mimi is good girl', 5, 'trijyoti passport.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `user_name` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `user_firstname` text CHARACTER SET utf8mb4 NOT NULL,
  `user_lastname` text CHARACTER SET utf8mb4 NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `user_mobile` int(11) NOT NULL,
  `user_roles` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_firstname`, `user_lastname`, `user_email`, `user_password`, `user_mobile`, `user_roles`) VALUES
(6, 'sujan', 'mahir', 'adnan', 'test@gmail.com', '202cb962ac59075b964b07152d234b70', 2147483647, 5);

-- --------------------------------------------------------

--
-- Structure for view `product_info_ctg`
--
DROP TABLE IF EXISTS `product_info_ctg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_info_ctg`  AS  select `products`.`pdt_id` AS `pdt_id`,`products`.`pdt_name` AS `pdt_name`,`products`.`pdt_price` AS `pdt_price`,`products`.`pdt_des` AS `pdt_des`,`products`.`pdt_img` AS `pdt_img`,`products`.`pdt_status` AS `pdt_status`,`category`.`ctg_id` AS `ctg_id`,`category`.`ctg_name` AS `ctg_name` from (`products` join `category`) where (`products`.`pdt_ctg` = `category`.`ctg_id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlog`
--
ALTER TABLE `adminlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ctg_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pdt_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlog`
--
ALTER TABLE `adminlog`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ctg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pdt_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;--
-- Database: `online_food`
--
CREATE DATABASE IF NOT EXISTS `online_food` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_food`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `sub_heading` varchar(500) NOT NULL,
  `link` varchar(100) NOT NULL,
  `link_txt` varchar(100) NOT NULL,
  `order_number` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `heading`, `sub_heading`, `link`, `link_txt`, `order_number`, `added_on`, `status`) VALUES
(1, '533799913_banner-4.jpg', 'Drink & Heathy Food', 'Fresh Heathy and Organic', 'shop', 'Order Now', 1, '2020-06-23 03:00:05', 1),
(2, '546847873_banner-4.jpg', 'Drink & Heathy Food', 'Fresh Heathy and Organic', 'shop', 'Order Now', 1, '2020-06-23 03:06:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `order_number` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `order_number`, `status`, `added_on`) VALUES
(1, 'Chaat & Snacks', 1, 1, '2020-06-16 12:06:33'),
(2, 'Chinese', 2, 1, '2020-06-16 12:06:41'),
(3, 'South Indian', 3, 1, '2020-06-16 12:06:59'),
(4, 'Desserts', 4, 1, '2020-06-16 12:07:18'),
(5, 'Murg', 0, 1, '2020-06-27 12:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `added_on`) VALUES
(1, 'Vishal', 'phpvishal@gmail.com', '9999999999', 'Test Subject', 'test message', '2020-06-23 03:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_code`
--

CREATE TABLE `coupon_code` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `coupon_type` enum('P','F') NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `expired_on` date NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_code`
--

INSERT INTO `coupon_code` (`id`, `coupon_code`, `coupon_type`, `coupon_value`, `cart_min_value`, `expired_on`, `status`, `added_on`) VALUES
(1, 'FIRST50', 'P', 10, 50, '2020-08-20', 1, '2020-06-20 05:31:03'),
(2, 'FRIDAY', 'F', 200, 200, '2020-07-15', 1, '2020-07-10 10:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `name`, `mobile`, `password`, `status`, `added_on`) VALUES
(1, 'Vishal', '1234567890', 'vishal', 1, '2020-07-08 08:06:06'),
(2, 'Amit', '1234567891', 'amit', 1, '2020-07-08 08:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `dish` varchar(100) NOT NULL,
  `dish_detail` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` enum('veg','non-veg') NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `category_id`, `dish`, `dish_detail`, `image`, `type`, `status`, `added_on`) VALUES
(1, 4, 'Gulab Jamun', 'Gulab Jamun', '977945963_862169053_gulab-jamun.jpg', 'veg', 1, '2020-06-17 10:43:59'),
(3, 2, 'Chow mein', 'Chow mein', '836724175_Chowmein.jpg', 'non-veg', 1, '2020-06-17 10:47:26'),
(4, 5, 'Butter Chicken', 'Butter chicken or murg makhani is a dish, originating in the Indian subcontinent, of chicken in a mildly spiced tomato sauce.', '348714192_30-Minute-Instant-Pot-Butter-Chicken-7.jpg', 'non-veg', 1, '2020-06-27 12:50:50'),
(5, 2, 'Testing', 'testing', '140977647_404.jpg', 'veg', 0, '2020-07-06 12:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `dish_cart`
--

CREATE TABLE `dish_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_cart`
--

INSERT INTO `dish_cart` (`id`, `user_id`, `dish_detail_id`, `qty`, `added_on`) VALUES
(3, 2, 6, 2, '2020-07-21 09:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `dish_details`
--

CREATE TABLE `dish_details` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `attribute` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_details`
--

INSERT INTO `dish_details` (`id`, `dish_id`, `attribute`, `price`, `status`, `added_on`) VALUES
(1, 3, 'Full', 300, 1, '2020-06-19 10:25:47'),
(2, 3, 'Half', 170, 1, '2020-06-19 10:49:45'),
(6, 1, 'Per Piece', 40, 1, '2020-06-20 00:00:00'),
(8, 4, 'Half', 250, 0, '2020-06-27 12:50:50'),
(9, 4, 'Full', 410, 1, '2020-06-27 12:50:50'),
(11, 5, 'Test1', 100, 1, '2020-07-06 12:00:24'),
(12, 5, 'Test2', 200, 0, '2020-07-06 12:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_details_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `dish_details_id`, `price`, `qty`) VALUES
(1, 1, 6, 40, 6),
(2, 2, 6, 40, 4),
(3, 3, 6, 40, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `total_price` float NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `final_price` float NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `order_status` int(11) NOT NULL,
  `cancel_by` enum('user','admin') NOT NULL,
  `cancel_at` datetime NOT NULL,
  `added_on` datetime NOT NULL,
  `delivered_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `user_id`, `name`, `email`, `mobile`, `address`, `total_price`, `coupon_code`, `final_price`, `zipcode`, `delivery_boy_id`, `payment_status`, `payment_type`, `payment_id`, `order_status`, `cancel_by`, `cancel_at`, `added_on`, `delivered_on`) VALUES
(1, 2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', 'Test', 240, '', 240, '110076', 0, 'pending', 'wallet', '', 5, 'admin', '2020-07-21 08:13:01', '2020-07-18 06:08:19', '0000-00-00 00:00:00'),
(2, 2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', 'test', 160, '', 160, '110076', 0, 'pending', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2020-07-20 06:09:59', '0000-00-00 00:00:00'),
(3, 5, 'Vishal', 'phpvishal@gmail.com', '9999999999', 'Test', 120, '', 120, '110076', 0, 'pending', 'cod', '', 4, 'user', '0000-00-00 00:00:00', '2020-07-23 09:09:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `order_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_status`) VALUES
(1, 'Pending'),
(2, 'Cooking '),
(3, 'On the Way'),
(4, 'Delivered'),
(5, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `order_id`, `dish_detail_id`, `rating`) VALUES
(1, 1, 6, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `cart_min_price` int(11) NOT NULL,
  `cart_min_price_msg` varchar(250) NOT NULL,
  `website_close` int(11) NOT NULL,
  `wallet_amt` int(11) NOT NULL,
  `website_close_msg` varchar(250) NOT NULL,
  `referral_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `cart_min_price`, `cart_min_price_msg`, `website_close`, `wallet_amt`, `website_close_msg`, `referral_amt`) VALUES
(1, 40, 'Cart min price will be 50 rs', 0, 0, 'Website Closed for today', 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `rand_str` varchar(20) NOT NULL,
  `referral_code` varchar(20) NOT NULL,
  `from_referral_code` varchar(20) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `status`, `email_verify`, `rand_str`, `referral_code`, `from_referral_code`, `added_on`) VALUES
(2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', '$2y$10$cZ6sSDVYUINCnynmB3Tbuend7e7bRqgCPeD.RPmxdRucxKhbSo/52', 1, 1, 'lmkaetixyrzqoqy', 'lmkaetixyrzqoqds', '', '2020-07-18 05:11:37'),
(5, 'Vishal', 'phpvishal@gmail.com', '9999999999', '$2y$10$wWBWMJTK37jkyLujN8YQoOVfQQt/3.B9ruoaNkjruQEwz4ZVfvNJa', 1, 1, 'zdoxxhajyeqtgpp', 'lhqtkjofzevfdai', 'lmkaetixyrzqoqds', '2020-07-23 08:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `user_id`, `amt`, `msg`, `type`, `payment_id`, `added_on`) VALUES
(2, 2, 50, 'Registration', 'in', '', '2020-07-18 05:11:38'),
(4, 2, 50, 'Shoping', 'out', '', '0000-00-00 00:00:00'),
(5, 2, 100, 'Added', 'in', '', '0000-00-00 00:00:00'),
(7, 2, 100, 'Added', 'in', '', '2020-07-18 05:58:29'),
(8, 2, 20, 'Added', 'in', '', '2020-07-18 05:59:02'),
(9, 2, 15, 'Added', 'in', '', '2020-07-18 06:00:35'),
(10, 2, 30, 'Added', 'in', '', '2020-07-18 06:01:17'),
(11, 2, 10, 'Added', 'in', '20200718111212800110168602301710786', '2020-07-18 06:04:04'),
(13, 2, 160, 'Order Id-2', 'out', '', '2020-07-18 06:09:59'),
(14, 2, 800, 'Added', 'in', '20200718111212800110168644701732407', '2020-07-18 06:17:19'),
(15, 3, 0, 'Register', 'in', '', '2020-07-18 08:00:53'),
(16, 2, 200, 'Order Id-3', 'out', '', '2020-07-19 04:29:04'),
(17, 2, 200, 'Order Id-4', 'out', '', '2020-07-19 04:30:51'),
(18, 3, 100, 'Test msg', 'in', '', '2020-07-21 08:22:33'),
(19, 2, 200, 'Test Msg', 'in', '', '2020-07-21 08:22:46'),
(22, 2, 50, 'Referral Amt from phpvishal@gmail.com', 'in', '', '2020-07-23 09:12:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_code`
--
ALTER TABLE `coupon_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_cart`
--
ALTER TABLE `dish_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_details`
--
ALTER TABLE `dish_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `coupon_code`
--
ALTER TABLE `coupon_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dish_cart`
--
ALTER TABLE `dish_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dish_details`
--
ALTER TABLE `dish_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;--
-- Database: `online_rest`
--
CREATE DATABASE IF NOT EXISTS `online_rest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_rest`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin@gmail.com', '', '2021-04-07 08:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 6, 'bamboo chicken', 'Good food', '180.00', '61cdb98dc86f0.jpg'),
(18, 7, 'Pizza', 'pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly', '330.00', '61ce01cb0c2e3.jpg'),
(19, 7, 'American pizza', 'Size Medium', '520.00', '61ce051d898b7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'enjoy your meal', '2021-12-28 17:11:55'),
(2, 2, 'closed', 'Enjoy your day', '2021-12-28 17:13:34'),
(3, 15, 'closed', 'Enjoy your meal', '2021-12-30 16:39:52'),
(4, 19, 'closed', 'enjoy your meal thank you sir', '2021-12-31 05:45:15'),
(5, 22, 'closed', 'enjoy your day', '2022-01-12 15:27:35'),
(6, 26, 'in process', 'Enjoy your mreal', '2022-01-17 06:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Indian', '2021-04-07 08:45:20'),
(2, 'Italian', '2021-04-07 08:45:23'),
(3, 'Chinese', '2021-04-07 08:45:25'),
(4, 'American', '2021-04-07 08:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `password`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(7, 3, 'Bargee Lake Valley', 'bargee@gmail.com', '123456', '01707-558552', 'bargee.com', '8am', '10pm', '24hr-x7', 'Dellye Bagan, Manikchori Mukh, Boradam, Rangamati Sadar, Rangamati 4500 4500 Rangamati, Chittagong Division, Bangladesh', '61ce0049d12bd.jpg', '2021-12-30 18:54:01'),
(8, 3, 'Kingdom Garden', 'garden@gmail.com', '123456', '01966355734', 'kingdomgarden.com', '8am', '9pm', 'Mon-Wed', 'Kingdom Garden Restaurant , Matiranga,Rangamati', '61df0771dcd0d.jpg', '2022-01-12 16:53:05'),
(9, 3, 'Hill and high', 'hillandhigh@gmail.com', '123456', '017581728373', 'efrfgthyhjyju', '6am', '--Select your Hours--', 'Mon-Thu', 'aasejekrhjrrj', '61e506cf656bf.jpg', '2022-01-17 06:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(4, 'mahiradnan12@gmail.com', 'Mahir', 'sujan', 'mahiradnan12@gmail.com', '+8801758652809', 'e10adc3949ba59abbe56e057f20f883e', 'Rabgamati sadar', 1, '2021-12-27 05:33:38'),
(5, 'sujan', 'sujan', 'mahir', 'sujan@gmail.com', '+8801758652809', 'e10adc3949ba59abbe56e057f20f883e', 'Rabgamati sadar', 1, '2021-12-28 17:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `rs_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(22, 4, 7, 'Pizza', 2, '330.00', 'closed', '2022-01-12 15:27:35'),
(23, 4, 7, 'American pizza', 4, '520.00', NULL, '2022-01-12 15:15:45'),
(24, 4, 7, 'American pizza', 5, '520.00', NULL, '2022-01-12 15:20:31'),
(25, 4, 7, 'American pizza', 2, '520.00', NULL, '2022-01-12 15:25:29'),
(26, 4, 7, 'Pizza', 4, '330.00', 'in process', '2022-01-17 06:32:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `foreign` (`rs_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD CONSTRAINT `foreign` FOREIGN KEY (`rs_id`) REFERENCES `restaurant` (`rs_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"online_rest\",\"table\":\"restaurant\"},{\"db\":\"online_rest\",\"table\":\"users_orders\"},{\"db\":\"online_rest\",\"table\":\"dishes\"},{\"db\":\"online_rest\",\"table\":\"res_category\"},{\"db\":\"online_rest\",\"table\":\"admin\"},{\"db\":\"online_rest\",\"table\":\"users\"},{\"db\":\"online_rest\",\"table\":\"remark\"},{\"db\":\"food-order\",\"table\":\"tbl_admin\"},{\"db\":\"food-order\",\"table\":\"tbl_category\"},{\"db\":\"food-order\",\"table\":\"tbl_order\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'jummobajar', 'products', '{\"sorted_col\":\"`products`.`pdt_img`  DESC\"}', '2021-05-30 10:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-05-19 04:48:00', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `timidb`
--
CREATE DATABASE IF NOT EXISTS `timidb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `timidb`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-19 09:16:08', '2021-05-19 09:16:08', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/timihill', 'yes'),
(2, 'home', 'http://localhost/timihill', 'yes'),
(3, 'blogname', 'Jummo Products', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mahiradnan12@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'newstore', 'yes'),
(41, 'stylesheet', 'newshop-ecommerce', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1636967768', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '1', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:12:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:26:\"front-page-top-widget-area\";a:0:{}s:19:\"woocommerce-sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:27:\"woocommerce-product-sidebar\";a:0:{}s:31:\"front-page-products-widget-area\";a:0:{}s:29:\"front-page-widget-area-column\";a:0:{}s:24:\"footer-widget-area-col-1\";a:0:{}s:24:\"footer-widget-area-col-2\";a:0:{}s:24:\"footer-widget-area-col-3\";a:0:{}s:24:\"footer-widget-area-col-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:5:{i:1621426569;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621458969;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1621502169;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621502224;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621416282;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:68:\"http://downloads.wordpress.org/release/wordpress-5.7.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.7.1\";}}s:12:\"last_checked\";i:1621416156;s:15:\"version_checked\";s:5:\"5.7.1\";s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1621416166;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:55:\"http://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(124, '_site_transient_timeout_theme_roots', '1621417958', 'no'),
(125, '_site_transient_theme_roots', 'a:5:{s:17:\"newshop-ecommerce\";s:7:\"/themes\";s:8:\"newstore\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(128, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1621459027', 'no'),
(129, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(133, 'finished_updating_comment_type', '1', 'yes'),
(136, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1621416287;s:7:\"checked\";a:5:{s:17:\"newshop-ecommerce\";s:3:\"0.5\";s:8:\"newstore\";s:6:\"1.3.18\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:5:{s:17:\"newshop-ecommerce\";a:6:{s:5:\"theme\";s:17:\"newshop-ecommerce\";s:11:\"new_version\";s:3:\"0.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/newshop-ecommerce/\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/theme/newshop-ecommerce.0.5.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:8:\"newstore\";a:6:{s:5:\"theme\";s:8:\"newstore\";s:11:\"new_version\";s:6:\"1.3.18\";s:3:\"url\";s:38:\"https://wordpress.org/themes/newstore/\";s:7:\"package\";s:56:\"http://downloads.wordpress.org/theme/newstore.1.3.18.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:57:\"http://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(137, 'current_theme', 'NewShop eCommerce', 'yes'),
(138, 'theme_mods_newshop-ecommerce', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(139, 'theme_switched', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-19 09:16:08', '2021-05-19 09:16:08', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-05-19 09:16:08', '2021-05-19 09:16:08', '', 0, 'http://localhost/timihill/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-19 09:16:08', '2021-05-19 09:16:08', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/timihill/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-19 09:16:08', '2021-05-19 09:16:08', '', 0, 'http://localhost/timihill/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-19 09:16:08', '2021-05-19 09:16:08', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/timihill.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-05-19 09:16:08', '2021-05-19 09:16:08', '', 0, 'http://localhost/timihill/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-05-19 09:17:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-19 09:17:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/timihill/?p=4', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin@gmail.com'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"36e8eefda5616d44f10867259a114bf057a98c23276c34c810b35d4559bb86a9\";a:4:{s:10:\"expiration\";i:1621588624;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 Edg/90.0.818.62\";s:5:\"login\";i:1621415824;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin@gmail.com', '$P$Bgi7iYckZ84siJY04nTyssXiHHz5oH1', 'admingmail-com', 'mahiradnan12@gmail.com', 'http://localhost/timihill', '2021-05-19 09:16:08', '', 0, 'admin@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `wt_sp21_f`
--
CREATE DATABASE IF NOT EXISTS `wt_sp21_f` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wt_sp21_f`;

-- --------------------------------------------------------

--
-- Table structure for table `agencydata`
--

CREATE TABLE `agencydata` (
  `sl` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `license` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agencydata`
--

INSERT INTO `agencydata` (`sl`, `name`, `address`, `email`, `license`, `date`, `phone`) VALUES
(1, 'Sajeeb', 'Mirpur,Dhaka', 'jahid@email.com', '4598754567765', '18-Oct-2004', '987655678765'),
(2, ' vhjbj', 'Dhaka', 'jahid@email.com', '2147483647', '16-Nov-2005', '2147483647'),
(3, ' vhjbj', 'Dhaka', 'jahid@email.com', '2147483647', '16-Nov-2005', '2147483647'),
(4, 'Yt', 'Rangpur', 'yt@email.com', '2147483647', '19-Nov-2003', '2147483647'),
(7, 'faqef', 'erfatg', 'abiwer@gmail.com', '21412354252', '16-Mar-2004', '+8802434265236'),
(8, 'faqef', 'erfatg', 'abir@gmail.com', '546546345345', '16-Mar-2004', '+8802434265236'),
(9, 'faqef', 'erfatg', 'aboiuir@gmail.com', '657343535', '16-Mar-2004', '+8802434265236'),
(10, 'faqef', 'erfatg', 'aygjbir@gmail.com', '63634534536', '16-Mar-2004', '+8802434265236'),
(11, 'ABCD', 'kdhnfgudsng', 'ytoiu@gmail.com', '123847545674345', '14-Feb-2006', '1234567843434'),
(12, 'ABCDef', 'kdhnfgudsng', 'ytoiu11@gmail.com', '123847545674345', '14-Mar-2006', '1234567843434');

-- --------------------------------------------------------

--
-- Table structure for table `air_ticket`
--

CREATE TABLE `air_ticket` (
  `sl` int(5) NOT NULL,
  `departure_airport` varchar(30) NOT NULL,
  `arrival_airport` varchar(30) NOT NULL,
  `departure_date` varchar(30) NOT NULL,
  `preffered_airlines` varchar(30) NOT NULL,
  `preffered_seating` varchar(30) NOT NULL,
  `passengers` int(30) NOT NULL,
  `return_date` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `air_ticket`
--

INSERT INTO `air_ticket` (`sl`, `departure_airport`, `arrival_airport`, `departure_date`, `preffered_airlines`, `preffered_seating`, `passengers`, `return_date`, `name`, `phone`, `email`) VALUES
(2, 'khulna', 'coxs bazar', '', 'air india', 'business class', 4, '', '', '2434265236', 'abir@gmail.com'),
(3, 'khulna', 'coxs bazar', '', 'air india', 'business class', 4, '', 'faqef', '2434265236', 'abir@gmail.com'),
(4, 'chittagong', 'chittagong', '', 'novo air', 'economy class', 4, '', 'sfd', '52455125245', 'abir@gmail.com'),
(6, 'khulna', 'rajshahi', '', 'novo air', 'economy class', 1, '', 'daawdewaf', '431241341', 'abir@gmail.com'),
(15, 'coxs bazar', 'khulna', '', 'novo air', 'business class', 8, '', 'adwfg', '54353252', 'abir@gmail.com'),
(23, 'dhaka', 'chittagong', '18-Apr-2007', 'US bangla', 'economy class', 3, '18-Apr-2007', 'faqef', '+8802434265236', 'abir@gmail.com'),
(24, 'coxs bazar', 'chittagong', '19-Dec-2008', 'novo air', 'economy class', 4, '19-Dec-2008', 'faqef', '+8802434265236', 'abir@gmail.com'),
(25, 'khulna', 'chittagong', '4-Jun-2021', 'US bangla', 'economy class', 3, '4-Jun-2021', 'daawdf', '4324235', 'zahid@gmail.com'),
(26, 'rajshahi', 'rajshahi', '5-May-2006', 'US bangla', 'economy class', 5, '5-May-2006', 'daawdf', '4324235', 'zahid@gmail.com'),
(27, 'khulna', 'chittagong', '18-May-2021', 'air india', 'business class', 3, '18-May-2021', 'faqef', '+88024265236', 'asadr@gmail.com'),
(28, 'dhaka', 'khulna', '6-Jul-1995', 'air india', 'business class', 8, '6-Jul-1995', 'ABCDef', '+8801758652809', 'ytoiu11@gmail.com'),
(29, 'khulna', 'chittagong', '4-Jul-2003', 'air india', 'economy class', 5, '4-Jul-2003', 'GG', '+8801681788659', 'thh344@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `create_package`
--

CREATE TABLE `create_package` (
  `sl` int(11) NOT NULL,
  `place_name` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `create_package`
--

INSERT INTO `create_package` (`sl`, `place_name`, `category`, `price`, `description`) VALUES
(1, 'sandara', 'Hotel', 2500, 'nice hiteel'),
(3, 'readison', 'Hotel', 5222, 'nice hotel');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sl` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `messege` text NOT NULL,
  `date` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`sl`, `name`, `email`, `messege`, `date`, `type`) VALUES
(2, 'Radisson', 'radisson@hotel.info', 'kjhgfdertyujbvdertyjhbgfdrtyh', '2/4/2012', 'hotel'),
(3, 'toha', 'toha@email.com', 'asdfghjkmnbvcdsertyujnbvcdrtyujmnbvcftyh', '10/1/2021', 'agency');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_booking`
--

CREATE TABLE `hotel_booking` (
  `sl` int(5) NOT NULL,
  `desire_city` varchar(30) NOT NULL,
  `check_in` varchar(20) NOT NULL,
  `check_out` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_booking`
--

INSERT INTO `hotel_booking` (`sl`, `desire_city`, `check_in`, `check_out`, `name`, `phone`, `email`) VALUES
(1, 'bangkok', '0000-00-00', '0', 'eafr fa', 'dawdr3weer', 'daqrfas'),
(2, 'bangkok', '0000-00-00', '0', 'eafr fa', 'dawdr3weer', 'daqrfas'),
(3, 'bangkok', '0000-00-00', '0', 'eafr fa', 'dawdr3weer', 'daqrfas'),
(4, 'kualalampur', '0000-00-00', '0', 'fese', 'feas', 'abir@gmail.com'),
(5, 'kualalampur', '0000-00-00', '0', 'fese', 'feas', 'abir@gmail.com'),
(6, 'kualalampur', '0000-00-00', '0', 'fese', 'feas', 'abir@gmail.com'),
(7, '$city', '0000-00-00', '0', '$fname', '$phone', '$email'),
(8, 'kualalampur', '0000-00-00', '0', 'fese', 'feas', 'abir@gmail.com'),
(9, 'bangkok', '0000-00-00', '0', 'daawdf', '4324235', 'zahid@gmail.com'),
(16, '$city', '$checkin', '$checkout', '$fname', '$phone', '$email'),
(22, 'singapore', '7-Jul-2000', '7-Jul-2000', 'faqef', '+8802434265236', 'abir@gmail.com'),
(23, 'singapore', '9-Sept-2004', '9-Sept-2004', 'shanto', '54356456747', 'shanto@gmail.com'),
(24, 'dhaka', '18-Aug-2020', '18-Aug-2020', 'wdad aw', '234324525', 'fahim@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `location_info`
--

CREATE TABLE `location_info` (
  `sl` int(11) NOT NULL,
  `place_name` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_info`
--

INSERT INTO `location_info` (`sl`, `place_name`, `category`, `price`, `description`) VALUES
(1, 'naman place', 'resort', 2345, 'very nice place'),
(2, 'emerald maldives', 'resort', 3534, 'Private beach villas and overwater bungalows combine contemporary creature '),
(3, 'redison', 'hotel', 3456, 'nice place'),
(4, 'SINGAPUR', 'RESORT', 80400, 'WONDER FUL PLACE '),
(5, 'SINGAPUR', 'RESORT', 80400, 'WONDER FUL PLACE '),
(6, 'AUSTRALIA', 'HOTEL', 34445, 'LOOKING WOW PLACE'),
(7, 'hunnn', 'resort', 2344, 'ioooljjhj'),
(8, 'polan', 'Resort', 45000, 'very charming'),
(9, 'polan beach', 'Resort', 4500, 'nice place'),
(10, 'Bangkonk dour', 'HOTEL', 5566, 'comfortable rooms and weatther'),
(11, 'thailand', 'tour package', 0, 'jfoajofjop aweoriohrio r0oeijroi'),
(12, 'thailand', 'tour package', 3000, 'jfoajofjop aweoriohrio r0oeijroi'),
(13, 'malaysia', 'tour package', 3500, 'hsuigdju ahhih ief hioarl');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'customer',
  `status` varchar(30) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `status`) VALUES
(0, 'ytoiu@gmail.com', '123qweASD', 'agency', 'active'),
(1, 'abir@gmail.com', '123qweASD', 'admin', 'active'),
(2, 'zahid@gmail.com', '1234qweASD', 'customer', 'active'),
(3, 'shanto@gmail.com', '1234qweASD', 'customer', 'active'),
(4, 'jahid@email.com', 'Ac1rdtf64', 'agency', 'active'),
(5, 'jahid@email.com', 'Ac1rdtf64', 'agency', 'active'),
(6, 'jahid@email.com', 'Ac1rdtf64', 'agency', 'active'),
(7, 'jahid@email.com', 'Hu133Hgh', 'traveller', 'active'),
(8, 'gg@email.com', 'Ks123n32', 'traveller', 'active'),
(9, 'radisson@hotel.info', 'Ks123n32', 'traveller', 'active'),
(10, 'mnn@gmail.com', 'Kg678ghj', 'traveller', 'active'),
(11, 'hjk@email.com', 'Kg678ghj', 'traveller', 'active'),
(23, 'aygjbir@gmail.com', '43535werwraSDDW', 'agency', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `masterbooking`
--

CREATE TABLE `masterbooking` (
  `sl` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `service` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `package_info` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masterbooking`
--

INSERT INTO `masterbooking` (`sl`, `name`, `service`, `email`, `date`, `status`, `package_info`) VALUES
(2, 'abir', 'hotel', 'abir@gmail.com', '17-Apr-2022', 'pending', 'golden'),
(3, 'SANTO', 'hotel', 'abir@gmail.com', '16-Feb-2022', 'pending', 'golden'),
(4, 'kamal', 'hotel', 'kamal@gmail.com', '18-Mar-2023', 'book', 'silver'),
(5, 'robi', 'resort', 'robi@gmail.com', '17-Dec-2024', 'booked', 'silver');

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

CREATE TABLE `meal` (
  `sl` int(11) NOT NULL,
  `package_name` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`sl`, `package_name`, `category`, `price`, `description`) VALUES
(1, '', 'dinner', 450, 'fajskd'),
(3, 'package 2', 'Lunch+Brackfast', 2500, 'Bread, salad,vegetables and Rice ,meat ,fish ,daul'),
(4, 'package 3', 'lunch', 5000, 'rice and meat'),
(5, 'pak4', 'dinnner', 2452, 'rice and vegetables'),
(6, 'package 5', 'Breakfast+Lunch', 2255, 'bread,vagetables and rice,meat,egg and salad');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `sl` int(5) NOT NULL,
  `name` varchar(30) DEFAULT 'null',
  `address` varchar(50) DEFAULT 'null',
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(20) DEFAULT 'null',
  `join_date` varchar(6) NOT NULL,
  `type` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `requestatour`
--

CREATE TABLE `requestatour` (
  `sl` int(5) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_activity`
--

CREATE TABLE `t_activity` (
  `sl` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `service` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_activity`
--

INSERT INTO `t_activity` (`sl`, `name`, `service`, `email`, `date`, `status`) VALUES
(1, 'jahid', 'air ticket', 'jahid@email.com', '10/1/2021', 'Booked(A)'),
(3, 'Goku', 'hotel', 'mnn@gmail.com', '10/1/2021', 'Booked(A)'),
(8, 'shanto', 'package no. 7', 'shanto@gmail.com', '19-Jun-2021', 'pending'),
(10, 'daawdf', 'air_ticket', 'zahid@gmail.com', '5-May-2006', 'pending'),
(11, 'shanto', 'hotel booking', 'shanto@gmail.com', '9-Sept-2004', 'pending'),
(12, 'rahman', 'tour request', 'rahman@gmail.com', '2021-04-26 00:12:41', 'Booked'),
(14, 'faqef', 'package no. 7', 'abir@gmail.com', '18-Dec-2021', 'pending'),
(15, 'daawdf', 'package no. 5', 'zahid@gmail.com', '17-May-2021', 'pending'),
(16, 'wdad aw', 'hotel booking', 'fahim@gmail.com', '18-Aug-2020', 'pending'),
(17, 'faruk', 'tour request', 'faruiyuk@gmail.com', 'CURRENT_TIMESTARP', 'Booked'),
(18, 'rahman', 'tour request', 'rahman@gmail.com', 'CURRENT_TIMESTARP', 'Booked'),
(19, 'jahud hgasan', 'tour request', 'hijdsahg@kjfs.com', 'CURRENT_TIMESTARP', 'Booked'),
(20, 'sjhg sfh', 'tour request', 'dawhfdh@guf.chi', 'CURRENT_TIMESTARP', 'Booked'),
(21, 'jahid hasan', 'tour request', 'jahidali@gmail.com', 'CURRENT_TIMESTARP', 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `temp_registry`
--

CREATE TABLE `temp_registry` (
  `sl` int(11) NOT NULL,
  `name` varchar(30) DEFAULT 'null',
  `address` varchar(30) DEFAULT 'null',
  `email` varchar(30) NOT NULL,
  `join_date` varchar(6) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT 'null',
  `password` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transport_by`
--

CREATE TABLE `transport_by` (
  `sl` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `depature` varchar(30) NOT NULL,
  `passangers` varchar(30) NOT NULL,
  `ticket` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport_by`
--

INSERT INTO `transport_by` (`sl`, `fname`, `dname`, `depature`, `passangers`, `ticket`) VALUES
(1, 'dhaka', 'japan', '15-Jan-2021', '2', 'Buiness Class'),
(2, 'japan', 'pannma', '15-Feb-2022', '2', 'ticket'),
(3, 'japan', 'pannma', '15-Feb-2022', '2', 'ticket'),
(4, 'japan', 'pannma', '15-Feb-2022', '2', 'ticket'),
(5, 'dhaka', 'khulna', '16-Apr-2024', '4', 'Non AC Coach'),
(6, 'dhaka', 'rangpur', '1-Feb-2021', '3', 'ticket'),
(7, 'dhaka', 'rangpur', '1-Feb-2021', '3', 'ticket'),
(8, 'dhaka', 'rangpur', '2-Feb-2022', '6', 'ticket'),
(9, 'dhaka', 'rangpur', '2-Feb-2022', '6', 'ticket'),
(10, 'dhaka', 'rangpur', '2-Feb-2021', '2', 'ticket');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agencydata`
--
ALTER TABLE `agencydata`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `air_ticket`
--
ALTER TABLE `air_ticket`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `create_package`
--
ALTER TABLE `create_package`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `hotel_booking`
--
ALTER TABLE `hotel_booking`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `location_info`
--
ALTER TABLE `location_info`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masterbooking`
--
ALTER TABLE `masterbooking`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `requestatour`
--
ALTER TABLE `requestatour`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `t_activity`
--
ALTER TABLE `t_activity`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `transport_by`
--
ALTER TABLE `transport_by`
  ADD PRIMARY KEY (`sl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agencydata`
--
ALTER TABLE `agencydata`
  MODIFY `sl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `air_ticket`
--
ALTER TABLE `air_ticket`
  MODIFY `sl` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `create_package`
--
ALTER TABLE `create_package`
  MODIFY `sl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `xicia_ecommerce`
--
CREATE DATABASE IF NOT EXISTS `xicia_ecommerce` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `xicia_ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `adv_id` int(11) NOT NULL,
  `adv_location` varchar(255) NOT NULL,
  `adv_type` varchar(100) NOT NULL,
  `adv_photo` varchar(255) NOT NULL,
  `adv_url` varchar(255) NOT NULL,
  `adv_adsense_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_advertisement`
--

INSERT INTO `tbl_advertisement` (`adv_id`, `adv_location`, `adv_type`, `adv_photo`, `adv_url`, `adv_adsense_code`) VALUES
(1, 'Above Welcome Section', 'Image Advertisement', 'ad-1.png', '', ''),
(2, 'Above Featured Product', 'Image Advertisement', 'ad-2.png', '', ''),
(3, 'Above Latest Product', 'Image Advertisement', 'ad-3.png', '', ''),
(4, 'Above Popular Product', 'Image Advertisement', 'ad-4.png', '', ''),
(5, 'Above Testimonial Section', 'Image Advertisement', 'ad-5.png', '', ''),
(6, 'Category Page Sidebar', 'Image Advertisement', 'ad-6.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Commercial', 'commercial', 'Commercial', '', ''),
(2, 'Residential', 'residential', 'Residential', '', ''),
(3, 'Economy', 'economy', 'Economy', '', ''),
(4, 'Tools and Equipment', 'tools-and-equipment', 'Tools and Equipment', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(1, 'John Doe', 'ABC', 'customer@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', 'John Doe', 'ABC', '123-123-1234', 18, 'Test Address', 'Test City', 'N/A', '123456', 'John Doe', 'ABC', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '81dc9bdb52d04dc20036dbd8313ed055', '', '2018-01-17 09:40:25', '', 1),
(2, 'Peter Smith', 'DEF', 'customer2@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '81dc9bdb52d04dc20036dbd8313ed055', '', '2018-01-17 07:11:12', '1516194672', 1),
(3, 'Robert Bent', 'XYZ', 'customer3@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', 'Robert Bent', 'XYZ', '123-123-1234', 18, 'Test Address', 'Test City', 'N/A', '123456', 'Robert Bent', 'XYZ', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '1c0cf8531727fc9b407e5b40ec203338', '', '2018-02-06 11:44:27', '1517895867', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'T-Shirt', 1),
(2, 'Pants', 1),
(3, 'Jeans', 1),
(4, 'Sandals', 2),
(5, 'Boots', 2),
(6, 'Tops', 3),
(7, 'T-Shirt', 3),
(8, 'Necklaces', 4),
(9, 'Rings', 4),
(11, 'Sports Shoes', 2),
(12, 'Flats & Sandals', 6),
(13, 'Heels', 6),
(14, 'Hoodies', 7),
(15, 'Coats & Jackets', 7),
(16, 'Gloves', 8),
(17, 'Coats & Jackets', 8),
(18, 'Digital Watches', 9),
(19, 'Smart Watches', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Lorem ipsum dolor sit amet an labores?', '<p>Explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p><div align=\"left\"><br></div>\r\n'),
(2, 'Vix tale noluisse voluptua ad ne brute?', '<p>Altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n'),
(3, 'Mei ut errem legimus periculis, eos liber epicurei?', '<p>Necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n'),
(4, 'Detracto contentiones te est, brute ipsum?', '<p>Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n\r\n<p>Duo purto pertinax in. Ea noluisse mediocrem qui, nobis melius vis et. Iudico delicatissimi no qui, quando fastidii nam et, ne eum rationibus deseruisse neglegentur. Ei eum populo viderer reprimique, tantas homero abhorreant usu ei, at postulant gloriatur vituperata sit.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', '$'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shipping', 'Continue Shipping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Western Clothing', 1),
(2, 'Men\'s Shoes', 1),
(3, 'Western Clothing', 2),
(4, 'Women\'s Jewellery', 2),
(6, 'Women Shoes', 2),
(7, 'Winter Clothing', 2),
(8, 'Winter Clothing', 1),
(9, 'Men\'s Watches', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(7, 1, 'Star Wars Darth Vader', 'S', 'Red', '2', '20', '1516677123'),
(8, 6, 'Pant 1', 'XS', 'White', '1', '12', '1516677123'),
(9, 1, 'Star Wars Darth Vader', 'S', 'Red', '2', '20', '1516681935'),
(19, 1, 'Star Wars Darth Vader', 'S', 'Red', '3', '20', '1516809013'),
(20, 4, 'Charismatic Red Cotton T-shirt for Men', '', 'Yellow', '2', '10', '1516809013'),
(21, 1, 'Star Wars Darth Vader', 'S', 'Red', '1', '20', '1516875533'),
(22, 1, 'Star Wars Darth Vader', 'S', 'White', '1', '20', '1516876603'),
(23, 1, 'Star Wars Darth Vader', 'S', 'Red', '3', '20', '1516884901'),
(28, 1, 'Star Wars Darth Vader', 'S', 'Yellow', '3', '20', '1516894476'),
(29, 1, 'Star Wars Darth Vader', 'S', 'Red', '1', '20', '1516894578'),
(30, 1, 'Star Wars Darth Vader', 'S', 'Red', '1', '20', '1516894670'),
(31, 6, 'Pant 1', 'XS', 'White', '1', '12', '1516894767'),
(35, 6, 'Pant 1', 'XS', 'White', '2', '12', '1516976438'),
(36, 6, 'Pant 1', 'XS', 'White', '2', '12', '1516981968'),
(39, 1, 'Star Wars Darth Vader', 'S', 'Red', '1', '20', '1517190651'),
(40, 13, 'Tan Denim Chino Pant For Men', '36', 'Tan', '2', '20', '1517190739'),
(41, 1, 'Star Wars Darth Vader', 'S', 'Red', '2', '20', '1517217163'),
(42, 30, 'Le Reve Pink Cotton Top for Women', 'XS', 'Pink', '1', '31', '1517768374'),
(43, 1, 'Star Wars Darth Vader', 'S', 'Red', '1', '20', '1517832576'),
(45, 6, 'Pant 1', 'XS', 'White', '1', '12', '1517921777'),
(46, 15, 'Cotton Double Stripe Jogger', '32', 'Black', '1', '32', '1517921777'),
(47, 32, 'Light Purple Georgette Casual Unstitched Tops', 'Free Size', 'Light Purple', '3', '42', '1518494369'),
(48, 31, 'China Georgette Casual Long Sleeves Tops', '46', 'Mixed', '3', '40', '1518514454');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'About Us', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n\r\n<p>Duo purto pertinax in. Ea noluisse mediocrem qui, nobis melius vis et. Iudico delicatissimi no qui, quando fastidii nam et, ne eum rationibus deseruisse neglegentur. Ei eum populo viderer reprimique, tantas homero abhorreant usu ei, at postulant gloriatur vituperata sit.</p>\r\n', 'about-banner.jpg', 'Ecommerce - About Us', 'about, about us, about team, about company', 'This is a page where we have described details about us.', 'FAQ', 'faq-banner.jpg', 'Ecommerce - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contact Us', 'contact-banner.jpg', 'Ecommerce - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(4, 1, 'John Doe', 'customer@gmail.com', '2018-01-23 09:12:03', '73X439878E771115E', 52, '', '', '', '', '', 'PayPal', 'Completed', 'Pending', '1516677123'),
(5, 1, 'John Doe', 'customer@gmail.com', '2018-01-23 10:32:15', '4TE78222BH314225G', 40, '', '', '', '', '', 'PayPal', 'Completed', 'Pending', '1516681935'),
(15, 1, 'John Doe', 'customer@gmail.com', '2018-01-25 16:18:53', '6L171667FP960111F', 20, '', '', '', '', '', 'PayPal', 'Completed', 'Pending', '1516875533'),
(14, 1, 'John Doe', 'customer@gmail.com', '2018-01-24 21:50:13', '', 80, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1516809013'),
(16, 1, 'John Doe', 'customer@gmail.com', '2018-01-25 16:36:43', '1SG79333BN539131N', 20, '', '', '', '', '', 'PayPal', 'Completed', 'Pending', '1516876603'),
(17, 1, 'John Doe', 'customer@gmail.com', '2018-01-25 18:55:01', '3ER990705B371084T', 60, '', '', '', '', '', 'PayPal', 'Completed', 'Pending', '1516884901'),
(36, 1, 'John Doe', 'customer@gmail.com', '2018-01-29 15:12:43', 'ch_1BpYgxBoKopKik6AoOVp0HzV', 40, '4242424242424242', '235', '10', '2020', '', 'Stripe', 'Completed', 'Pending', '1517217163'),
(23, 1, 'John Doe', 'customer@gmail.com', '2018-01-25 21:34:36', '30570309MG2775450', 60, '', '', '', '', '', 'PayPal', 'Completed', 'Pending', '1516894476'),
(24, 1, 'John Doe', 'customer@gmail.com', '2018-01-25 21:36:18', 'ch_1BoCm0BoKopKik6A5H4hB6zs', 20, '4242424242424242', '444', '12', '2020', '', 'Stripe', 'Completed', 'Pending', '1516894578'),
(25, 1, 'John Doe', 'customer@gmail.com', '2018-01-25 21:37:50', '1LP66520MF618570J', 20, '', '', '', '', '', 'PayPal', 'Completed', 'Pending', '1516894670'),
(26, 1, 'John Doe', 'customer@gmail.com', '2018-01-25 21:39:27', 'ch_1BoCp1BoKopKik6ABJUOukly', 12, '4242424242424242', '567', '12', '2020', '', 'Stripe', 'Completed', 'Pending', '1516894767'),
(35, 1, 'John Doe', 'customer@gmail.com', '2018-01-29 07:52:19', '2BG16002466391915', 40, '', '', '', '', '', 'PayPal', 'Completed', 'Pending', '1517190739'),
(34, 1, 'John Doe', 'customer@gmail.com', '2018-01-29 07:50:51', 'ch_1BpRnMBoKopKik6ADpfcJBNf', 20, '4242424242424242', '234', '10', '2020', '', 'Stripe', 'Completed', 'Pending', '1517190651'),
(31, 1, 'John Doe', 'customer@gmail.com', '2018-01-26 21:52:48', '', 24, '', '', '', '', 'zxczxc', 'Bank Deposit', 'Completed', 'Pending', '1516981968'),
(30, 1, 'John Doe', 'customer@gmail.com', '2018-01-26 20:20:38', 'ch_1BoY4KBoKopKik6Af0quzxHb', 24, '4242424242424242', '234', '11', '2020', '', 'Stripe', 'Completed', 'Completed', '1516976438'),
(37, 1, 'John Doe', 'customer@gmail.com', '2018-02-05 00:19:34', 'ch_1Brs5SBoKopKik6AwQPPFh8h', 31, '4242424242424242', '234', '11', '2018', '', 'Stripe', 'Completed', 'Completed', '1517768374'),
(38, 1, 'John Doe', 'customer@gmail.com', '2018-02-05 18:09:36', 'ch_1Bs8myBoKopKik6A5hdx7uY1', 20, '4242424242424242', '345', '11', '2020', '', 'Stripe', 'Completed', 'Completed', '1517832576'),
(40, 3, 'Robert Bent', 'customer3@gmail.com', '2018-02-06 18:56:17', 'ch_1BsVzhBoKopKik6AIoHGN7s3', 44, '4242424242424242', '2222', '12', '2019', '', 'Stripe', 'Completed', 'Completed', '1517921777'),
(43, 1, 'John Doe', 'customer@gmail.com', '2018-02-13 15:34:14', 'ch_1Bv0B5BoKopKik6A2WhDT8UL', 130, '4242424242424242', '234', '12', '2020', '', 'Stripe', 'Completed', 'Pending', '1518514454'),
(42, 1, 'John Doe', 'customer@gmail.com', '2018-02-13 09:59:29', 'ch_1Buux6BoKopKik6AuGtWxiGG', 136, '4242424242424242', '234', '12', '2020', '', 'Stripe', 'Completed', 'Completed', '1518494369');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(1, 'Star Wars Darth Vader', '30', '20', 2, 'product-featured-1.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.</p>\r\n', '', '', '', 295, 1, 1, 1),
(4, 'Charismatic Red Cotton T-shirt for Men', '', '10', 6, 'product-featured-4.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has. Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad. Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria. Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.</p>\r\n', '<p>Product Type: T-shirt Color: Red Main Material: Cotton Gender: Men</p>\r\n', '', '', 48, 0, 1, 1),
(6, 'Pant 1', '', '12', 3, 'product-featured-6.jpg', '', '', '', '', '', 64, 1, 1, 2),
(7, 'Apara Orange Cotton T-Shirt For Men', '', '20', 40, 'product-featured-7.jpg', '<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu.</p>\r\n', '<ul>\r\n	<li>Duo purto pertinax in.&nbsp;</li>\r\n	<li>Ea noluisse mediocrem qui, nobis melius vis et.&nbsp;</li>\r\n	<li>Iudico delicatissimi no qui, quando fastidii nam et.&nbsp;</li>\r\n	<li>Ne eum rationibus deseruisse neglegentur.&nbsp;</li>\r\n	<li>Ei eum populo viderer reprimique.&nbsp;</li>\r\n	<li>At postulant gloriatur vituperata sit.</li>\r\n</ul>\r\n', '', '', 45, 1, 1, 1),
(8, 'Navy Blue Cotton Round Neck T-Shirt', '', '34', 56, 'product-featured-8.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '<ul>\r\n	<li>Duo purto pertinax in.&nbsp;</li>\r\n	<li>Ea noluisse mediocrem qui, nobis melius vis et.&nbsp;</li>\r\n	<li>Iudico delicatissimi no qui, quando fastidii nam et.&nbsp;</li>\r\n	<li>Ne eum rationibus deseruisse neglegentur.&nbsp;</li>\r\n	<li>Ei eum populo viderer reprimique.&nbsp;</li>\r\n	<li>At postulant gloriatur vituperata sit.</li>\r\n</ul>\r\n', '', '', 0, 1, 1, 1),
(9, 'Justice Print White T Shirt', '', '38', 44, 'product-featured-9.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 8, 1, 1, 1),
(10, 'Teal Cotton T-Shirt for Men', '', '22', 56, 'product-featured-10.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 4, 1, 1, 1),
(11, 'Brown Twill Gabardine Casual Pant', '', '22', 34, 'product-featured-11.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 2),
(12, 'Black Twill Gabardine Casual Pant', '', '20', 40, 'product-featured-12.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 2),
(13, 'Tan Denim Chino Pant For Men', '', '20', 43, 'product-featured-13.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 3, 0, 1, 2),
(14, 'Blue Denim Chino Pant For Men', '', '30', 46, 'product-featured-14.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 2),
(15, 'Cotton Double Stripe Jogger', '', '32', 44, 'product-featured-15.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 3, 0, 1, 2),
(16, 'Apex Leather Casual Sandal', '', '12', 20, 'product-featured-16.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 4),
(17, 'Bata Pata Pata Blue Eva Flip Flop', '', '16', 33, 'product-featured-17.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 1, 0, 1, 4),
(18, 'Apex Venturini Black Leather Sandal', '', '14', 44, 'product-featured-18.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 4),
(19, 'Lotto PVC Sandal - Navy Blue', '', '11', 34, 'product-featured-19.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 4),
(20, 'B & W Chocolate Leather Sandal', '', '11', 34, 'product-featured-20.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 4),
(21, 'Sky Sea Brown Leather Casual Boot', '', '12', 33, 'product-featured-21.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 5),
(22, 'Sky Sea Coffee Leather Boot ', '', '18', 55, 'product-featured-22.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 5),
(23, 'Sky Sea Black Leather Boot', '', '12', 33, 'product-featured-23.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 5),
(24, 'Sky Sea Chocolate Leather Boot', '', '12', 34, 'product-featured-24.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 5),
(25, 'Sky Sea Gray Teal Fabric Sports Shoes', '', '35', 35, 'product-featured-25.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 3, 0, 1, 11),
(26, 'Sky Sea Light Gray and White Fabric Sports Shoes', '', '33', 33, 'product-featured-26.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 11),
(27, 'Sky Sea Gray and Black Fabric Sports Shoes', '', '28', 28, 'product-featured-27.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 11);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(28, 'Sky Sea Light Green Sports Shoes', '', '38', 38, 'product-featured-28.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 11),
(29, 'Sky Sea Black Orange sports Running Keds', '', '30', 30, 'product-featured-29.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 11),
(30, 'Le Reve Pink Cotton Top for Women', '', '31', 30, 'product-featured-30.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 23, 0, 1, 6),
(31, 'China Georgette Casual Long Sleeves Tops', '', '40', 37, 'product-featured-31.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 6, 0, 1, 6),
(32, 'Light Purple Georgette Casual Unstitched Tops', '', '42', 39, 'product-featured-32.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 3, 0, 1, 6),
(33, 'Cotton Casual Long Sleeves Tops Tops', '', '46', 46, 'product-featured-33.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 1, 0, 1, 6),
(34, 'Fashion Express Cotton Short Sleeve T-Shirt', '', '24', 24, 'product-featured-34.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 7),
(35, 'Brand Bangla Red Cotton Casual T-shirt ', '', '24', 24, 'product-featured-35.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 7),
(36, 'Charismatic Purple Cotton T-Shirt', '', '22', 22, 'product-featured-36.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 7),
(37, 'Brand Bangla White Cotton Casual T-shirt', '', '23', 23, 'product-featured-37.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 1, 0, 1, 7),
(38, 'Printed White Cotton Short Sleeves T-Shirt', '', '25', 25, 'product-featured-38.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 7),
(39, 'Yes Buy Stoned Choker Necklace for Women', '', '34', 12, 'product-featured-39.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 8),
(40, 'Opolok Golden Zinc Alloy Necklace', '', '24', 15, 'product-featured-40.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 8),
(41, 'Combo of Ring and Necklace for Women', '', '24', 18, 'product-featured-41.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 8),
(42, 'Zinc Alloy Cubic Zirconia Geometry Strip Rings ', '', '32', 18, 'product-featured-42.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 9),
(43, 'Cubic Zirconia Stainless Steel Rings', '', '23', 12, 'product-featured-43.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 9),
(44, 'Rose Arrow Gold Plated Finger Ring', '', '23', 12, 'product-featured-44.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 9),
(45, 'Chemical Glove - Black', '', '14', 33, 'product-featured-45.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 16),
(46, 'Safa Leather Winter Hand Gloves', '', '18', 33, 'product-featured-46.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 16),
(47, 'Safa Leather Winter Hand Gloves', '', '15', 13, 'product-featured-47.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 16),
(48, 'Safa Leather Winter Hand Gloves', '', '18', 18, 'product-featured-48.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 16),
(49, 'Aynaghor Black Phillies Jacket for Men', '', '30', 30, 'product-featured-49.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 17),
(50, 'Black PU Leather Jacket For Men', '', '32', 23, 'product-featured-50.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 17);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(51, 'Black Cotton Casual Jacket For Men', '', '36', 22, 'product-featured-51.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 17),
(52, 'Black PU Leather Jacket For Men', '', '38', 34, 'product-featured-52.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 17),
(53, 'Sky Blue Denim Casual Jeans For Men', '', '18', 34, 'product-featured-53.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 3),
(54, 'Ash Cotton Straight Jeans pant For Men', '', '14', 33, 'product-featured-54.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 3),
(55, 'Navy Blue Cotton Jeans For Men', '', '15', 34, 'product-featured-55.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 3),
(56, 'Sky Blue Denim Casual Jeans Pant for Men', '', '12', 33, 'product-featured-56.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 3),
(57, '2 Couple Stylish LED Bracelet Watch', '', '12', 34, 'product-featured-57.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 1, 0, 1, 18),
(58, 'Casio AE-1000W-1AV Rubber Digital Watch', '', '40', 34, 'product-featured-58.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 18),
(59, 'Iron Man Digital Wrist Watch', '', '16', 38, 'product-featured-59.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 18),
(60, 'Fitness Tracker Alarm Clock IOS for Health', '', '45', 34, 'product-featured-60.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 19),
(61, 'M.S. Collection A1 SmartWatch', '', '29', 38, 'product-featured-61.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 19),
(62, 'Camera Zone Hidden Camera Watch - Silver', '', '34', 34, 'product-featured-62.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 19),
(63, 'Apex Sandra Rosa Black Leather Sandal', '', '23', 34, 'product-featured-63.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 12),
(64, 'Dark Red Artificial Leather Sandal', '', '24', 34, 'product-featured-64.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 12),
(65, 'Golden Artificial Leather Moccasin For Women', '', '29', 34, 'product-featured-65.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 12),
(66, 'Gold Leather High Heel For Women', '', '21', 34, 'product-featured-66.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 13),
(67, 'Apex Moochie Leather Casual High Heel', '', '23', 34, 'product-featured-67.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 13),
(68, 'Pink Leather Heeled Sandal For Women', '', '30', 34, 'product-featured-68.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 3, 0, 1, 13),
(69, 'Navy Blue Phillies Hoodie For Women', '', '34', 25, 'product-featured-69.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 14),
(70, 'Apara Gray Phillies Hoodie For Women', '', '24', 34, 'product-featured-70.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 14),
(71, 'Apara Pink Phillies Hoodie For Women', '', '21', 34, 'product-featured-71.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 1, 0, 1, 14);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(72, 'Colorant Red Wool Blazer For Women', '', '32', 34, 'product-featured-72.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 2, 0, 1, 15),
(73, 'White Synthetic Jacket for Women', '', '29', 34, 'product-featured-73.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 15),
(74, 'Pink Polyester Long Sleeve Jacket', '', '28', 34, 'product-featured-74.jpg', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis.</p>\r\n', '', '', '', 0, 0, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(74, 1, 1),
(75, 4, 1),
(76, 6, 1),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(104, 15, 33),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(108, 6, 37),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(112, 16, 43),
(113, 16, 44),
(114, 8, 45),
(115, 8, 46),
(116, 2, 47),
(117, 3, 48),
(118, 3, 49),
(119, 2, 50),
(120, 3, 51),
(121, 2, 52),
(122, 3, 53),
(123, 18, 54),
(124, 3, 55),
(125, 3, 56),
(126, 2, 57),
(127, 6, 57),
(128, 2, 58),
(129, 17, 59),
(130, 1, 60),
(131, 2, 60),
(132, 2, 61),
(133, 6, 62),
(134, 2, 63),
(135, 1, 64),
(136, 1, 65),
(137, 8, 65),
(138, 16, 66),
(139, 16, 67),
(140, 10, 68),
(141, 3, 69),
(142, 17, 70),
(143, 10, 71),
(144, 1, 72),
(145, 2, 73),
(146, 6, 73),
(147, 6, 74),
(148, 10, 74),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(8, '8.jpg', 4),
(11, '11.png', 1),
(12, '12.jpg', 1),
(13, '13.jpg', 8),
(14, '14.jpg', 8),
(15, '15.jpg', 9),
(16, '16.jpg', 16),
(17, '17.jpg', 16),
(18, '18.jpg', 16),
(19, '19.jpg', 16),
(20, '20.jpg', 17),
(21, '21.jpg', 17),
(22, '22.jpg', 17),
(23, '23.jpg', 18),
(24, '24.jpg', 18),
(25, '25.jpg', 18),
(26, '26.jpg', 18),
(27, '27.jpg', 19),
(28, '28.jpg', 19),
(29, '29.jpg', 19),
(30, '30.jpg', 20),
(31, '31.jpg', 20),
(32, '32.jpg', 21),
(33, '33.jpg', 21),
(34, '34.jpg', 22),
(35, '35.jpg', 22),
(36, '36.jpg', 23),
(37, '37.jpg', 23),
(38, '38.jpg', 24),
(39, '39.jpg', 24),
(40, '40.jpg', 25),
(41, '41.jpg', 25),
(42, '42.jpg', 26),
(43, '43.jpg', 26),
(44, '44.jpg', 27),
(45, '45.jpg', 27),
(46, '46.jpg', 28),
(47, '47.jpg', 28),
(48, '48.jpg', 29),
(49, '49.jpg', 29),
(50, '50.jpg', 31),
(51, '51.jpg', 31),
(52, '52.jpg', 32),
(53, '53.jpg', 32),
(54, '54.jpg', 33),
(55, '55.jpg', 33),
(56, '56.jpg', 34),
(57, '57.jpg', 35),
(58, '58.jpg', 37),
(59, '59.jpg', 38),
(60, '60.jpg', 38),
(61, '61.jpg', 42),
(62, '62.jpg', 42),
(63, '63.jpg', 42),
(64, '64.jpg', 44),
(65, '65.jpg', 44),
(66, '66.jpg', 46),
(67, '67.jpg', 47),
(68, '68.jpg', 48),
(69, '69.jpg', 50),
(70, '70.jpg', 51),
(71, '71.jpg', 51),
(72, '72.jpg', 53),
(73, '73.jpg', 53),
(74, '74.jpg', 53),
(75, '75.jpg', 55),
(76, '76.jpg', 55),
(77, '77.jpg', 60),
(78, '78.jpg', 62),
(79, '79.jpg', 63),
(80, '80.jpg', 63),
(81, '81.jpg', 63),
(82, '82.jpg', 63),
(83, '83.jpg', 64),
(84, '84.jpg', 64),
(85, '85.jpg', 64),
(86, '86.jpg', 65),
(87, '87.jpg', 65),
(88, '88.jpg', 65),
(89, '89.jpg', 66),
(90, '90.jpg', 66),
(91, '91.jpg', 66),
(92, '92.jpg', 66),
(93, '93.jpg', 67),
(94, '94.jpg', 67),
(95, '95.jpg', 68),
(96, '96.jpg', 68),
(97, '97.jpg', 68),
(98, '98.jpg', 72),
(99, '99.jpg', 72),
(100, '100.jpg', 73),
(101, '101.jpg', 73),
(102, '102.jpg', 74);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(41, 2, 1),
(42, 5, 1),
(43, 6, 1),
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(120, 15, 33),
(121, 17, 33),
(122, 19, 33),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(127, 2, 37),
(128, 3, 37),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(135, 28, 43),
(136, 28, 44),
(137, 2, 45),
(138, 5, 45),
(139, 17, 46),
(140, 19, 46),
(141, 4, 47),
(142, 4, 48),
(143, 3, 49),
(144, 3, 50),
(145, 4, 50),
(146, 5, 51),
(147, 5, 52),
(148, 9, 53),
(149, 11, 53),
(150, 13, 53),
(151, 10, 54),
(152, 11, 54),
(153, 12, 54),
(154, 13, 54),
(155, 14, 54),
(156, 15, 54),
(157, 8, 55),
(158, 9, 55),
(159, 10, 55),
(160, 11, 55),
(161, 12, 55),
(162, 9, 56),
(163, 11, 56),
(164, 13, 56),
(165, 26, 57),
(166, 26, 58),
(167, 26, 59),
(168, 26, 60),
(169, 26, 61),
(170, 26, 62),
(171, 12, 63),
(172, 13, 63),
(173, 14, 63),
(174, 15, 63),
(175, 10, 64),
(176, 11, 64),
(177, 12, 64),
(178, 13, 64),
(179, 14, 64),
(180, 10, 65),
(181, 11, 65),
(182, 12, 65),
(183, 12, 66),
(184, 13, 66),
(185, 14, 66),
(186, 15, 66),
(187, 13, 67),
(188, 14, 67),
(189, 15, 67),
(190, 10, 68),
(191, 11, 68),
(192, 12, 68),
(193, 3, 69),
(194, 4, 69),
(195, 5, 69),
(196, 6, 69),
(197, 3, 70),
(198, 4, 70),
(199, 5, 70),
(200, 6, 70),
(201, 3, 71),
(202, 4, 71),
(203, 5, 71),
(204, 6, 71),
(205, 27, 72),
(206, 3, 73),
(207, 4, 73),
(208, 3, 74),
(209, 4, 74),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`rt_id`, `p_id`, `cust_id`, `comment`, `rating`) VALUES
(2, 1, 1, 'Nice and awesome product', 5),
(4, 4, 2, 'Not so good', 3),
(5, 31, 1, 'Very Nice', 5),
(19, 7, 1, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Easy Returns', 'Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no.', 'service-5.jpg'),
(6, 'Free Shipping', 'Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no.', 'service-6.jpg'),
(7, 'Quality Products', 'Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no.', 'service-7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`, `color`) VALUES
(1, 'logo.png', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.&nbsp;Ea suas pertinax has.mahr</p>\r\n', 'Copyright Â© 2017. All Rights Reserved.', 'ABC Steet, NewYork.', 'info@yourwebsite.com', '123-456-7878', '123-456-7890', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.84040262736!2d-74.25819605476612!3d40.70583158628177!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sbd!4v1485712851643\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'arefin2k@gmail.com', 'Visitor Email Message from Ecommerce Website', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 10, 10, 10, 'Ecommerce - Complete Ecommerce PHP Script', 'ecommerce, cart, checkout, payment, paypal, shop, online shopping, online payment, payment gateway, products, shirt, jeans, t-shirt', 'This is a complete solution of an online ecommerce website.', 'banner_login.png', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Featured Products', 'See all our featured products from here', 'Latest Products', 'See all our latest products from here', 'Popular Products', 'See all our popular products from here', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid fugit expedita, iure ullam cum vero ex sint aperiam maxime.', 'biz111@shop.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: ABC Bank\r\nAccount Number: 1222320234444\r\nBranch Name: NY Branch\r\nCountry: USA', '<script async src=\"https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'GA_TRACKING_ID\');\r\n</script>', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5a7c31ded7591465c7077c48/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'E4144D');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 230, '10'),
(2, 18, '0'),
(3, 13, '8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Ecommerce Solutions', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Read More', '#', 'Left'),
(2, 'slider-2.jpg', '50% Discount on All Products', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Read More', '#', 'Center'),
(3, 'slider-3.jpg', '24 Hours Customer Support', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Read More', '#', 'Right');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', '#', 'fa fa-facebook'),
(2, 'Twitter', '#', 'fa fa-twitter'),
(3, 'LinkedIn', '#', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '#', 'fa fa-pinterest'),
(6, 'YouTube', '#', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(4, 'jbbr.1990@gmail.com', '2017-08-10', '2017-08-10 07:44:23', '', 1),
(5, 'abc@gmail.com', '2018-02-04', '2018-02-04 07:36:40', 'c1acf1f202e2df2b2afaa53e39f53677', 0),
(6, 'asdf@das.asd', '2018-02-05', '2018-02-05 07:07:08', 'ca71f3d85c8c51e2605b726791479de0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name`, `designation`, `company`, `photo`, `comment`) VALUES
(1, 'John Doe', 'Managing Director', 'ABC Inc.', 'testimonial-1.jpg', 'Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit.'),
(2, 'Dadiv Smith', 'CEO', 'SS Multimedia', 'testimonial-2.jpg', 'Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit.'),
(3, 'Stefen Carman', 'Chairman', 'GH Group', 'testimonial-3.jpg', 'Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit.'),
(4, 'Gary Brent', 'CFO', 'XYZ It Solution', 'testimonial-4.jpg', 'Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Men', 1),
(2, 'Women', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(13, 'Trijoyti', 'admin@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `yt_e_mv_store`
--
CREATE DATABASE IF NOT EXISTS `yt_e_mv_store` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `yt_e_mv_store`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `phone`, `password`, `role`, `photo`, `created_at`, `updated_at`, `remember_token`, `status`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '000 000 000', '$2y$10$DozM30vRGMY9aDIh2EKxROmvuJRtBMimO2ox/rF8uXjMBYBjLvVRe', 'Administrator', '1510211044icon.jpg', '2017-01-24 03:21:40', '2017-12-07 13:44:10', '7EcYVfu03bivkr4WBXmTh2OfWMy0fRgF4sOF9QHQvQ1LWTsmfMyCvVnSUggH', 1),
(2, 'S Zaman', 'genius', 'genius@gmail.com', '000 000 000', '$2y$10$DozM30vRGMY9aDIh2EKxROmvuJRtBMimO2ox/rF8uXjMBYBjLvVRe', 'Administrator', '11822730_1619598781649385_5506560502405630990_n.jpg', '2017-01-27 22:35:17', '2017-03-06 11:02:08', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `type` enum('script','banner') NOT NULL,
  `advertiser_name` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `banner_size` varchar(255) NOT NULL,
  `banner_file` varchar(255) DEFAULT NULL,
  `script` text,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` mediumtext COLLATE utf8_unicode_ci,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand_banner`
--

CREATE TABLE `brand_banner` (
  `id` int(11) NOT NULL,
  `type` enum('brand','banner') NOT NULL DEFAULT 'brand',
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand_banner`
--

INSERT INTO `brand_banner` (`id`, `type`, `image`, `link`, `status`) VALUES
(3, 'brand', '1509812425logo-carousel-2.png', NULL, 1),
(5, 'banner', '1510213233b1.jpg', 'https://www.facebook.com/GeniusOcean/', 1),
(6, 'brand', '15101552813AD3575600000578-3875228-The_FedEx_logo_was_created_in_1994_and_is_instantly_recognisable-m-2_1480696442823.jpg', NULL, 1),
(7, 'banner', '1510213249b1.jpg', 'https://www.facebook.com/GeniusOcean/', 1),
(8, 'banner', '1510213270b1.jpg', 'https://www.facebook.com/GeniusOcean/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uniqueid` varchar(255) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uniqueid`, `product`, `title`, `quantity`, `size`, `cost`) VALUES
(3, 'ReGPgkX', 26, 'Product Name Here', 1, NULL, 211),
(4, 'KodDGVQ', 22, 'Tesing Project', 1, NULL, 23.8),
(5, 'ZMcWNB5', 26, 'Product Name Here', 1, NULL, 211);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `mainid` int(11) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 NOT NULL,
  `feature_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `mainid`, `subid`, `role`, `name`, `slug`, `feature_image`, `featured`, `status`) VALUES
(17, NULL, NULL, 'main', 'Sandals', 'sandals', '1510212389c5.jpg', 1, 1),
(18, 17, NULL, 'sub', 'T-shirt', 't-shirt', '1510212354c4.jpg', 1, 1),
(19, 17, 18, 'child', 'Black', 'black', NULL, 0, 1),
(20, 17, NULL, 'sub', 'Subtitle', 'subtitle', '1510212304c1.jpg', 1, 1),
(21, 17, NULL, 'sub', 'Subtitle', 'subtitle2', NULL, 0, 1),
(22, 17, NULL, 'sub', 'Subtitle', 'subtitle3', NULL, 0, 1),
(23, 17, NULL, 'sub', 'Beachwear', 'beach', '1510212478c2.jpg', 1, 1),
(24, 17, 20, 'child', 'Child-category', 'child-category', NULL, 0, 1),
(25, 17, 21, 'child', 'Child-category', 'child-category2', NULL, 0, 1),
(26, 17, 22, 'child', 'Child-category', 'child-category3', NULL, 0, 1),
(27, 17, 23, 'child', 'Child-category', 'child-category6', NULL, 0, 1),
(29, 17, 23, 'child', 'Child-category', 'child-category4', NULL, 0, 1),
(30, 17, 22, 'child', 'Child-category', 'child-category7', NULL, 0, 1),
(31, 17, 21, 'child', 'Child-category', 'child-category8', NULL, 0, 1),
(32, 17, 21, 'child', 'Child-category', 'child-category9', NULL, 0, 1),
(33, 17, 20, 'child', 'Child-category', 'child-category41', NULL, 0, 1),
(34, 17, 18, 'child', 'Child-category', 'child-category42', NULL, 0, 1),
(35, NULL, NULL, 'main', 'Jeans', 'jeans', '1510212410c3.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `code_scripts`
--

CREATE TABLE `code_scripts` (
  `id` int(11) NOT NULL,
  `google_analytics` text NOT NULL,
  `meta_keys` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `code_scripts`
--

INSERT INTO `code_scripts` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>\r\n   //Google Analytics Scriptfffffffffffffffffffffffssssfffffs\r\n</script>', 'smile world, bootiqo, chicnshop, deals, promotiel, chaussures, vetemens, coutures, homme, femme, fashion, pagne, baoule, traditionnelle');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'browser', 'Windows 10', 71, 0, NULL),
(2, 'browser', 'Windows 7', 19, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`) VALUES
(1, 'First FAQ Question?', '<span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the </span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br><br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the </span><br><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span>', 1),
(2, 'First FAQ Question 2?', 'In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` int(11) NOT NULL,
  `orderid` varchar(255) DEFAULT NULL,
  `owner` enum('vendor','admin') DEFAULT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `payment` varchar(255) NOT NULL DEFAULT 'completed',
  `paid` enum('yes','no') NOT NULL DEFAULT 'no',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','processing','completed') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordered_products`
--

INSERT INTO `ordered_products` (`id`, `orderid`, `owner`, `vendorid`, `productid`, `quantity`, `cost`, `size`, `payment`, `paid`, `created_at`, `updated_at`, `status`) VALUES
(1, '1', 'admin', NULL, 25, 1, 20.99, '', 'pending', 'no', '2017-11-21 09:32:46', '2017-11-21 09:32:46', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `products` varchar(255) DEFAULT NULL,
  `quantities` varchar(255) DEFAULT NULL,
  `sizes` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `shipping` varchar(255) DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `booking_date` datetime DEFAULT NULL,
  `status` enum('pending','processing','completed','declined') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customerid`, `products`, `quantities`, `sizes`, `method`, `shipping`, `pickup_location`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `booking_date`, `status`) VALUES
(1, 0, '25', '1', NULL, 'Paypal', 'shipto', NULL, 29.83, NULL, NULL, 'Z0Zo1511256766', 'Pending', 'shaoneel@gmail.com', 'Test Name', '0000000000', 'Test Address', 'Los Angels', '6600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-21 09:32:46', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `page_settings`
--

CREATE TABLE `page_settings` (
  `id` int(11) NOT NULL,
  `contact` text CHARACTER SET latin1 NOT NULL,
  `contact_email` text CHARACTER SET latin1 NOT NULL,
  `about` text CHARACTER SET latin1 NOT NULL,
  `faq` text CHARACTER SET latin1 NOT NULL,
  `large_banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_link` text COLLATE utf8_unicode_ci,
  `c_status` int(11) NOT NULL,
  `a_status` int(11) NOT NULL,
  `f_status` int(11) NOT NULL,
  `slider_status` int(11) NOT NULL DEFAULT '1',
  `category_status` int(11) NOT NULL DEFAULT '1',
  `sbanner_status` int(11) NOT NULL DEFAULT '1',
  `latestpro_status` int(11) NOT NULL DEFAULT '1',
  `featuredpro_status` int(11) NOT NULL DEFAULT '1',
  `lbanner_status` int(11) NOT NULL DEFAULT '1',
  `popularpro_status` int(11) NOT NULL DEFAULT '1',
  `blogs_status` int(11) NOT NULL DEFAULT '1',
  `brands_status` int(11) NOT NULL DEFAULT '1',
  `testimonial_status` int(11) NOT NULL DEFAULT '1',
  `subscribe_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_settings`
--

INSERT INTO `page_settings` (`id`, `contact`, `contact_email`, `about`, `faq`, `large_banner`, `banner_link`, `c_status`, `a_status`, `f_status`, `slider_status`, `category_status`, `sbanner_status`, `latestpro_status`, `featuredpro_status`, `lbanner_status`, `popularpro_status`, `blogs_status`, `brands_status`, `testimonial_status`, `subscribe_status`) VALUES
(1, 'Merci de nous avoir contactés, nous reviendrons vers vous sous peu.', 'admin@bootiqo.com', '<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\"><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><br></p></h2><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">Where does it come from?</h2><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\"><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></h2>', '<h2>Contact US</h2>', '1510211280banner-e-commerce1.png', 'https://www.facebook.com/GeniusOcean/', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickup_locations`
--

CREATE TABLE `pickup_locations` (
  `id` int(11) NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickup_locations`
--

INSERT INTO `pickup_locations` (`id`, `address`, `status`) VALUES
(2, 'Test Pickup Addresss', 1),
(3, 'Another Address', 1),
(4, 'Another address 2', 1),
(5, 'Test Pickup Addresss 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `productid`, `image`) VALUES
(1, 26, 'br150028710072d783df472ec91220ca7714adf113c6.jpg'),
(2, 26, 'tq1500287100E1F.jpg'),
(3, 25, 'B71510210868demo (1).jpg'),
(4, 25, '3t1510210868demo (2).jpg'),
(5, 25, '0W1510210868demo (3).jpg'),
(6, 25, 'ol1510210868demo (4).jpg'),
(7, 22, 'P91510210887demo (1).jpg'),
(8, 22, 'JB1510210887demo (2).jpg'),
(9, 22, '5I1510210887demo (3).jpg'),
(10, 22, 'hO1510210887demo (4).jpg'),
(11, 20, 'sx15102115136.jpg'),
(12, 20, 'jc1510211513demo (1).jpg'),
(13, 20, 'Lb1510211513demo (2).jpg'),
(14, 20, 'LD1510211513demo (3).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `owner` enum('admin','vendor') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` float NOT NULL,
  `previous_price` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `sizes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `policy` text COLLATE utf8_unicode_ci,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `approved` enum('no','yes') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `vendorid`, `owner`, `title`, `category`, `description`, `price`, `previous_price`, `stock`, `sizes`, `feature_image`, `policy`, `tags`, `featured`, `views`, `approved`, `created_at`, `updated_at`, `status`) VALUES
(20, 1, 'vendor', 'Here Will Be Your Product Title', '17,18,19', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1600, 2100, NULL, NULL, '15102115136.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, 1, 60, 'no', '2017-05-13 08:12:13', '2017-11-09 07:11:53', 1),
(22, NULL, 'admin', 'Tesing Project', '17,18,19', '<b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer took a galley of type and \r\nscrambled it to make a type specimen book. It has survived not only five\r\n centuries, but also the leap into electronic typesetting, remaining \r\nessentially unchanged. It was popularised in the 1960s with the release \r\nof Letraset sheets containing Lorem Ipsum passages, and more recently \r\nwith desktop publishing software like Aldus PageMaker including versions\r\n of Lorem Ipsum.', 20, 25, NULL, 'X,S', '1510210887demo (4).jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer <u>took a galley of type and \r\nscrambled it to make a type specimen book. It has survived not only five\r\n centuries, but also the leap into electronic typesetting,</u> remaining \r\nessentially unchanged. It was popularised in the 1960s with the release \r\nof Letraset sheets containing Lorem Ipsum passages, and more recently \r\nwith desktop publishing software like Aldus PageMaker including versions\r\n of Lorem Ipsum.', NULL, 1, 154, 'yes', '2017-05-18 10:22:15', '2019-04-21 13:10:19', 1),
(25, NULL, 'admin', 'Tesing Project Float', '17,,', 'sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf', 20.99, 25.99, 0, NULL, '1510210868demo (3).jpg', 'sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf sssss sssssssss sssssssssssss sssssx dsfsd dfgsfg sfsdf', 'Trendy', 1, 40, 'yes', '2017-05-30 14:56:16', '2017-12-07 10:35:54', 1),
(26, 1, 'vendor', 'Product Name Here', '17,18,19', 'Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer took a galley of type and \r\nscrambled it to make a type specimen book. It has survived not only five\r\n centuries, but also the leap into electronic typesetting, remaining \r\nessentially unchanged. It was popularised in the 1960s with the release \r\nof Letraset sheets containing Lorem Ipsum passages, and more recently \r\nwith desktop publishing software like Aldus PageMaker including versions\r\n of Lorem Ipsum...', 200, 220, 90, 'X,XL,XXL,M,L,S', '1510210815demo (2).jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer took a galley of type and \r\nscrambled it to make a type specimen book. It has survived not only five\r\n centuries, but also the leap into electronic typesetting, remaining \r\nessentially unchanged. It was popularised in the 1960s with the release \r\nof Letraset sheets containing Lorem Ipsum passages, and more recently \r\nwith desktop publishing software like Aldus PageMaker including versions\r\n of Lorem Ipsum...', NULL, 1, 74, 'yes', '2017-07-17 10:25:00', '2021-10-09 18:46:43', 1),
(27, NULL, 'admin', 'Test Product For Pickup', '17,18,', 'Test', 20, 25, 0, NULL, '1510210799demo (1).jpg', 'Test<br>', 'one,two,three', 1, 35, 'yes', '2017-10-17 17:52:11', '2019-04-21 10:47:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `review` text,
  `rating` int(11) DEFAULT NULL,
  `review_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `section_titles`
--

CREATE TABLE `section_titles` (
  `id` int(11) NOT NULL,
  `service_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_text` mediumtext COLLATE utf8_unicode_ci,
  `pricing_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pricing_text` mediumtext COLLATE utf8_unicode_ci,
  `portfolio_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `portfolio_text` mediumtext COLLATE utf8_unicode_ci,
  `testimonial_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testimonial_text` mediumtext COLLATE utf8_unicode_ci,
  `team_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_text` text COLLATE utf8_unicode_ci,
  `blog_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_text` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `section_titles`
--

INSERT INTO `section_titles` (`id`, `service_title`, `service_text`, `pricing_title`, `pricing_text`, `portfolio_title`, `portfolio_text`, `testimonial_title`, `testimonial_text`, `team_title`, `team_text`, `blog_title`, `blog_text`) VALUES
(1, 'Our Services', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Pricing Plans', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Latest Projects', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Customer Reviews', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Our Team', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Latest Blogs', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.');

-- --------------------------------------------------------

--
-- Table structure for table `service_section`
--

CREATE TABLE `service_section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text` text CHARACTER SET latin1 NOT NULL,
  `icon` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_section`
--

INSERT INTO `service_section` (`id`, `title`, `text`, `icon`, `status`) VALUES
(2, 'Service Name Here', 'Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s', 'jz52.jpg', 1),
(3, 'Service Name Here', 'Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s', '4rY3.jpg', 1),
(4, 'Service Name Here', 'Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s', 'BfMUntitled-1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about` text CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fax` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `footer` varchar(255) CHARACTER SET latin1 NOT NULL,
  `background` varchar(255) CHARACTER SET latin1 NOT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `withdraw_fee` float NOT NULL DEFAULT '0',
  `withdraw_charge` float NOT NULL DEFAULT '0',
  `paypal_business` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shipping_cost` float DEFAULT '0',
  `stripe_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_money` text COLLATE utf8_unicode_ci,
  `bank_wire` text COLLATE utf8_unicode_ci,
  `dynamic_commission` float NOT NULL DEFAULT '0',
  `tax` float NOT NULL DEFAULT '0',
  `fixed_commission` float NOT NULL DEFAULT '0',
  `currency_sign` varchar(255) COLLATE utf8_unicode_ci DEFAULT '$',
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `popular_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_file` varchar(255) CHARACTER SET latin1 NOT NULL,
  `stripe_status` int(11) NOT NULL DEFAULT '1',
  `paypal_status` int(11) NOT NULL DEFAULT '1',
  `mobile_status` int(11) NOT NULL DEFAULT '1',
  `bank_status` int(11) NOT NULL DEFAULT '1',
  `cash_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `title`, `url`, `about`, `address`, `phone`, `fax`, `email`, `footer`, `background`, `theme_color`, `withdraw_fee`, `withdraw_charge`, `paypal_business`, `shipping_cost`, `stripe_key`, `stripe_secret`, `mobile_money`, `bank_wire`, `dynamic_commission`, `tax`, `fixed_commission`, `currency_sign`, `currency_code`, `popular_tags`, `css_file`, `stripe_status`, `paypal_status`, `mobile_status`, `bank_status`, `cash_status`) VALUES
(1, 'Untitlwdssdded-1.png', 'Caswsdapture.PNG', 'Sabangee - Multivendor Ecommerce', 'Fuckcccccc', '<span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap;\"><font color=\"#000000\">The purpose of this organization is to unite indigenous online entrepreneurs and entrepreneurs and to transform them into a workforce by making them more useful by sharing experiences by working together.</font></span>', 'Rangamati sadar', '01788376689', '01681788659', 'sabangee@gmail.com', '<a href=\"http://geniusocean.com\">S</a>abangee', 'smm-min2.jpg', '#000000', 0, 0, 'shaon143-facilitator-1@gmail.com', 5, 'pk_test_bD5Si0msHNV75sd5R71jSJFb', 'sk_test_r7zxASOuYYCiuT3svkUtuh6W', 'Faites vos depots sur les numero suivant 42784249 / 78939896 / 04835863', 'Compte Bancaire', 3, 1, 3, '৳', 'USD', 'One,Two,Three,Four', 'genius1.css', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_language`
--

CREATE TABLE `site_language` (
  `id` int(11) NOT NULL,
  `home` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_us` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faq` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `my_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `my_cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `continue_shopping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proceed_to_checkout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empty_cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtotal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_to_cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `out_of_stock` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `related_products` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_policy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_review` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `write_a_review` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_to_cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_in_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_products` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latest_products` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `popular_products` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us_today` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter_option` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `all_categories` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `load_more` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_by_latest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_by_oldest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_by_highest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_by_lowest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enter_shipping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_now` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dashboard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_profile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `change_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_as` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `popular_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latest_blogs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_links` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quick_review` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to_another` text COLLATE utf8_unicode_ci,
  `pickup_details` text COLLATE utf8_unicode_ci,
  `logout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_language`
--

INSERT INTO `site_language` (`id`, `home`, `about_us`, `contact_us`, `faq`, `search`, `vendor`, `my_account`, `my_cart`, `view_cart`, `checkout`, `continue_shopping`, `proceed_to_checkout`, `empty_cart`, `product_name`, `unit_price`, `subtotal`, `total`, `quantity`, `add_to_cart`, `out_of_stock`, `available`, `reviews`, `related_products`, `return_policy`, `no_review`, `write_a_review`, `subscription`, `subscribe`, `address`, `added_to_cart`, `description`, `share_in_social`, `top_category`, `featured_products`, `latest_products`, `popular_products`, `search_result`, `no_result`, `contact_us_today`, `filter_option`, `all_categories`, `load_more`, `sort_by_latest`, `sort_by_oldest`, `sort_by_highest`, `sort_by_lowest`, `street_address`, `phone`, `email`, `fax`, `submit`, `name`, `review_details`, `enter_shipping`, `order_details`, `shipping_cost`, `order_now`, `dashboard`, `update_profile`, `change_password`, `login_as`, `sign_in`, `popular_tags`, `latest_blogs`, `footer_links`, `view_details`, `quick_review`, `blog`, `ship_to_another`, `pickup_details`, `logout`) VALUES
(1, 'Home', 'About Us', 'Contact Us', 'FAQ', 'Search', 'Vendor', 'My Account', 'My Cart', 'View Cart', 'Checkout', 'Continue Shopping', 'Proceed To Checkout', 'Your Cart is Empty.', 'Product Name', 'Unit Price', 'SubTotal', 'Total', 'Quantity', 'Add To Cart', 'Out of Stock', 'Available', 'Reviews', 'Related Products', 'Return Policy', 'No Review', 'Write A Review', 'Subscription', 'Subscribe', 'Address', 'Successfully Added To Cart', 'Description', 'Share in Social', 'Top Category', 'Featured Products', 'Latest Products', 'Popular Products', 'Search Result', 'No Products Found', 'Contact Us Today!', 'Filter Option', 'All Categories', 'Load More', 'Sort By Latest Products', 'Sort By Oldest Products', 'Sort By Highest Price', 'Sort By Lowest Price', 'Street Address', 'Phone', 'E-mail', 'Fax', 'Submit', 'Name', 'Review Details', 'Enter Shipping Details', 'Order Details', 'Shipping Cost', 'Order Now', NULL, NULL, NULL, NULL, 'Sign In', 'Popular Tags', 'Latest Blogs', 'Footer Links', 'View Details', 'Quick Review', 'Blog', 'Ship to a Different Address?', 'Pickup From The Location you Selected', 'Logout');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text_position` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `text`, `image`, `text_position`, `status`) VALUES
(3, 'Slider Title 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'DGO131449232_136651924897925_1477475712734392005_n.jpg', 'slide_style_left', 1),
(4, 'Slider Title 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'ctE8k-uhd-8k-fruit-mango-wallpaper-preview.jpg', 'slide_style_center', 1),
(5, 'Slider Title 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'OXS2020_03_24_90456_1585030352._large.jpg', 'slide_style_right', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twiter` varchar(255) NOT NULL,
  `g_plus` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `f_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `t_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `g_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `link_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twiter`, `g_plus`, `linkedin`, `f_status`, `t_status`, `g_status`, `link_status`) VALUES
(1, 'http://facebook.com/ebangladesh', 'http://twitter.com/', 'http://google.com/', 'http://linkedin.com/', 'enable', 'enable', 'enable', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `review` text CHARACTER SET latin1 NOT NULL,
  `client` varchar(255) CHARACTER SET latin1 NOT NULL,
  `designation` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `review`, `client`, `designation`) VALUES
(1, 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'eBangladesh', 'Project Manager'),
(2, 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'The Usual Suspects', 'Owner'),
(3, 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'The Usual Suspects', 'Owner');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `name`, `gender`, `phone`, `fax`, `email`, `password`, `address`, `city`, `zip`, `created_at`, `updated_at`, `status`) VALUES
(2, 'ShaOn Zaman', NULL, '000 000 000', NULL, 'shaoneel@gmail.com', '$2y$10$yLutetJU78vZ4uFDRaXmRu8O51bP.Avz5Fc2L4bE3U/PciaXu.Y56', 'Los Angels, United States', 'Los Angels', '6600', '0000-00-00 00:00:00', '2017-11-11 10:02:58', 1),
(3, 'user', NULL, '234567888', NULL, 'user@gmail.com', '$2y$10$hteB3yEiZtZdHUmtVSsBveHiR0u8lN1MqZ1iOv5RkGdOqzK4w9RTu', NULL, NULL, NULL, '2019-04-21 10:51:23', '2019-04-21 10:51:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_profiles`
--

CREATE TABLE `vendor_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `current_balance` float NOT NULL DEFAULT '0',
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_profiles`
--

INSERT INTO `vendor_profiles` (`id`, `name`, `shop_name`, `photo`, `gender`, `phone`, `fax`, `email`, `password`, `address`, `city`, `zip`, `current_balance`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'GeniusOcean', 'GeniusOcean', NULL, NULL, '', NULL, 'vendor@gmail.com', '$2y$10$DozM30vRGMY9aDIh2EKxROmvuJRtBMimO2ox/rF8uXjMBYBjLvVRe', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '2017-11-07 18:32:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `acc_email` varchar(255) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `acc_name` varchar(255) DEFAULT NULL,
  `address` text,
  `swift` varchar(255) DEFAULT NULL,
  `reference` text,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `vendorid`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssssssssssssssss', 2063.5, 63.5, '2017-07-25 10:29:33', '2017-07-25 10:32:58', 'rejected'),
(2, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'ssss', 2063.5, 63.5, '2017-07-25 10:34:32', '2017-07-25 10:35:58', 'rejected'),
(3, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssss', 2000, 63.5, '2017-07-25 10:36:14', '2017-07-25 10:36:57', 'rejected'),
(4, 1, 'Skrill', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssssssss', 1936.5, 63.5, '2017-07-25 10:37:08', '2017-07-25 10:37:42', 'rejected'),
(5, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sss', 2000, 0, '2017-07-25 10:38:27', '2017-07-25 10:38:48', 'rejected'),
(6, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'ssss', 1936.5, 63.5, '2017-07-25 10:39:52', '2017-07-25 10:40:03', 'rejected'),
(7, 1, 'Paypal', 'shaoneel@gmail.com', NULL, NULL, NULL, NULL, NULL, 'sssssssssss', 1936.5, 63.5, '2017-07-25 10:59:39', '2017-07-25 10:59:49', 'completed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_banner`
--
ALTER TABLE `brand_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code_scripts`
--
ALTER TABLE `code_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_settings`
--
ALTER TABLE `page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_locations`
--
ALTER TABLE `pickup_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_titles`
--
ALTER TABLE `section_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_section`
--
ALTER TABLE `service_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_language`
--
ALTER TABLE `site_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_profiles`
--
ALTER TABLE `vendor_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brand_banner`
--
ALTER TABLE `brand_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `code_scripts`
--
ALTER TABLE `code_scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `page_settings`
--
ALTER TABLE `page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pickup_locations`
--
ALTER TABLE `pickup_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `section_titles`
--
ALTER TABLE `section_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `service_section`
--
ALTER TABLE `service_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `site_language`
--
ALTER TABLE `site_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vendor_profiles`
--
ALTER TABLE `vendor_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
