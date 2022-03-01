-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bankingsystem
-- ------------------------------------------------------
-- Server version	8.0.28
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!50503 SET NAMES utf8 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Table structure for table `account`
--
DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `account` (
  `Account#` decimal(10, 0) NOT NULL,
  `Balance` decimal(15, 2) NOT NULL,
  PRIMARY KEY (`Account#`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `account`
--
LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */
;
INSERT INTO `account`
VALUES (1071451535, -1413.50),
(1071451536, -46.92),
(1971451535, 5793875.20),
(1971451536, 5309806.65),
(3187839394, -728646.23),
(3187839395, 1961655.94),
(3187839396, 3278426.42),
(3187839397, 5475227.45),
(3187839398, 2234720.09),
(3187839399, 5417912.36),
(3187839400, -280413.74),
(3187839401, 4745423.92),
(4087839394, -8022.95),
(4087839395, 9786326.15),
(4087839396, 1702704.24),
(4087839397, 5824515.72),
(4087839398, 2868600.22),
(4087839399, -1.68),
(4087839400, 9258202.79),
(4087839401, 64.20),
(5359109357, -100458.27),
(5359109358, 8924358.18),
(5359109359, 1271117.72),
(5359109360, 7390138.19),
(5359109361, -993773.05),
(5359109362, -22.78),
(6259109357, 8011993.31),
(6259109358, 4439146.09),
(6259109359, 2216862.06),
(6259109360, 8087720.96),
(6259109361, 4409919.04),
(6259109362, 6552857.94),
(6259109363, 7.24),
(6847493370, -427431.06),
(6847493371, 2266747.47),
(6847493372, 2083525.21),
(6847493373, -864355.57),
(6847493374, 4101478.70),
(7747493370, 9077039.36),
(7747493371, -92.25),
(7747493372, 8731473.21),
(7747493373, 8260334.60),
(7747493374, 4724825.64),
(8707739665, 2961812.88),
(8707739666, 9793256.52),
(8707739667, 951.56),
(9607739662, 3801461.09),
(9607739663, 7447010.53),
(9607739664, 3817802.34),
(9999999999, 5508973.07);
/*!40000 ALTER TABLE `account` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `accountopened`
--
DROP TABLE IF EXISTS `accountopened`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `accountopened` (
  `CustID` decimal(6, 0) NOT NULL,
  `BranchID` decimal(4, 0) NOT NULL,
  `Account#` decimal(10, 0) NOT NULL,
  `DateOfOpening` date NOT NULL,
  PRIMARY KEY (`Account#`),
  KEY `FK_Cust_idx` (`CustID`),
  KEY `FK_BrID_idx` (`BranchID`),
  CONSTRAINT `FK_ActNo` FOREIGN KEY (`Account#`) REFERENCES `account` (`Account#`) ON DELETE CASCADE,
  CONSTRAINT `FK_BrID` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`branchID`),
  CONSTRAINT `FK_Cust` FOREIGN KEY (`CustID`) REFERENCES `customer` (`CustID`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `accountopened`
--
LOCK TABLES `accountopened` WRITE;
/*!40000 ALTER TABLE `accountopened` DISABLE KEYS */
;
INSERT INTO `accountopened`
VALUES (103981, 9631, 1071451535, '2022-01-26'),
(103982, 9636, 1071451536, '2013-11-18'),
(916966, 8736, 1971451535, '1972-06-01'),
(415370, 9630, 1971451536, '1980-01-31'),
(193983, 6180, 3187839394, '2006-12-24'),
(193986, 3846, 3187839395, '2014-07-03'),
(638906, 9629, 3187839396, '2018-03-09'),
(652811, 8735, 3187839397, '1972-05-17'),
(103982, 9634, 3187839398, '2019-04-07'),
(742814, 8737, 3187839399, '2001-08-07'),
(652812, 8732, 3187839400, '1980-06-16'),
(548904, 9633, 3187839401, '1983-01-15'),
(999999, 2946, 4087839394, '2015-10-18'),
(742813, 6179, 4087839395, '1979-09-06'),
(742812, 8739, 4087839396, '1970-01-07'),
(638903, 6176, 4087839397, '2019-05-05'),
(103984, 5279, 4087839398, '2012-11-06'),
(548904, 8735, 4087839399, '1987-11-04'),
(103981, 3846, 4087839400, '1971-10-07'),
(325369, 3845, 4087839401, '2000-10-05'),
(742815, 8737, 5359109357, '2009-02-22'),
(193985, 2323, 5359109358, '1979-12-11'),
(652810, 9630, 5359109359, '1988-03-20'),
(193985, 9631, 5359109360, '1981-08-20'),
(826969, 7026, 5359109361, '1973-03-24'),
(916965, 8736, 5359109362, '2002-06-17'),
(325371, 9632, 6259109357, '2018-03-02'),
(193985, 1425, 6259109358, '2018-01-22'),
(742813, 9999, 6259109359, '1983-08-16'),
(652812, 9636, 6259109360, '2006-05-20'),
(916964, 8734, 6259109361, '2015-08-02'),
(652815, 7027, 6259109362, '1970-03-03'),
(103985, 9630, 6259109363, '1970-01-07'),
(193986, 9999, 6847493370, '2021-01-11'),
(325372, 5281, 6847493371, '1986-12-22'),
(103982, 8734, 6847493372, '1992-07-30'),
(548906, 8736, 6847493373, '2013-05-03'),
(415373, 7028, 6847493374, '1984-07-31'),
(325369, 1425, 7747493370, '2017-03-27'),
(742811, 9630, 7747493371, '1989-12-30'),
(742814, 7027, 7747493372, '2007-09-14'),
(325372, 8739, 7747493373, '1970-01-12'),
(193985, 8733, 7747493374, '1978-10-11'),
(652814, 8739, 8707739665, '2013-05-21'),
(652815, 2946, 8707739666, '1989-07-05'),
(415371, 8733, 8707739667, '2016-11-05'),
(325369, 2945, 9607739662, '2020-11-20'),
(548906, 5277, 9607739663, '2004-10-07'),
(325370, 8734, 9607739664, '1972-06-15'),
(638904, 6181, 9999999999, '2016-01-04');
/*!40000 ALTER TABLE `accountopened` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `branch`
--
DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `branch` (
  `branchID` decimal(4, 0) NOT NULL,
  `Locality` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  PRIMARY KEY (`branchID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `branch`
--
LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */
;
INSERT INTO `branch`
VALUES (1422, 'EYGLYFFOSU', 'Gypsum', 'Mississippi'),
(1423, 'MRUBDCQ', 'Oneonta', 'Massachusetts'),
(1424, 'DZXDHBT', 'Riverdale', 'Massachusetts'),
(1425, 'UTQGZTQ', 'Onondaga', 'Alabama'),
(2323, 'DXNHJMC', 'Solomons', 'Minnesota'),
(2324, 'WAWUZIYCSPPD', 'Corsicana', 'Oklahoma'),
(2325, 'SSHVYXLBXP', 'Joyce', 'Louisiana'),
(2945, 'TUSPYP', 'Corry', 'Florida'),
(2946, 'PSMIHXUDIPSR', 'Riverbank', 'Illinois'),
(2947, 'RLWNQQ', 'Boydton', 'Arizona'),
(2948, 'DGUBAOS', 'Eleele', 'Arkansas'),
(3845, 'YMGAMRB', 'River Rouge', 'West Virginia'),
(3846, 'LGWTLTXE', 'Electra', 'New York'),
(3847, 'WGLENM', 'Marlinton', 'North Dakota'),
(3848, 'MXGETL', 'Boyes Hot Springs', 'Mississippi'),
(5276, 'PUTCFEUFGSXQ', 'Eldridge', 'Louisiana'),
(5277, 'FHCLSDVX', 'Boyce', 'Florida'),
(5278, 'XTOZAI', 'Waco', 'Minnesota'),
(5279, 'GIMIQDYI', 'Onondaga County', 'Texas'),
(5280, 'YMIBGQEDB', 'Waconia', 'Arizona'),
(5281, 'POVCHUJEM', 'Cortez', 'Alaska'),
(6176, 'GVZQZGS', 'Oneida', 'Alabama'),
(6177, 'ZMNTSRTUKATE', 'Solomon', 'Wisconsin'),
(6178, 'TNHIPB', 'Riverhead', 'Minnesota'),
(6179, 'JFKDPCDI', 'Solon Springs', 'Texas'),
(6180, 'XOVIIZB', 'Corte Madera', 'Iowa'),
(6181, 'MPNSGT', 'Boyertown', 'Tennessee'),
(7026, 'BDXPBC', 'Eleanor', 'Nevada'),
(7027, 'JQYIUCEO', 'Boyceville', 'Rhode Island'),
(7028, 'IDJIHYAGTISFOL', 'Hackensack', 'New Mexico'),
(7926, 'ESYJDS', 'Zuni', 'Colorado'),
(7927, 'ECUBUN', 'Corryton', 'Wisconsin'),
(7928, 'KKGSFHD', 'Wabeno', 'Missouri'),
(8732, 'WNZZQZZE', 'River Grove', 'New York'),
(8733, 'GEENBQA', 'Joy', 'Alabama'),
(8734, 'FLWREX', 'Hacienda Heights', 'Illinois'),
(8735, 'OMCKIO', 'Boyden', 'Tennessee'),
(8736, 'RIUYBNK', 'Cortaro', 'Missouri'),
(8737, 'RVRNGYNZSEXRREHJ', 'Onida', 'Nevada'),
(8738, 'ZGLRGMCLNFSFUS', 'Riverside', 'Connecticut'),
(8739, 'TELPTTQEOGOVAX', 'Riverton', 'Ohio'),
(9629, 'MGWREWNGH', 'Onaway', 'Idaho'),
(9630, 'EYQKGGG', 'Marlin', 'Louisiana'),
(9631, 'DFXQMC', 'Oneill', 'Massachusetts'),
(9632, 'JAJHXH', 'Corsica', 'Nebraska'),
(9633, 'VYTKJQZITW', 'Boyds', 'West Virginia'),
(9634, 'JCLHWYEXRHPBSGDG', 'Waccabuc', 'Ohio'),
(9635, 'EDDXIVZI', 'Solon', 'Michigan'),
(9636, 'XMNTJJZBV', 'Marlow', 'Nebraska'),
(9999, 'NLBXQRYH', 'River Forest', 'Indiana');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `cards`
--
DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `cards` (
  `CardNo` decimal(16, 0) NOT NULL,
  `Term_Yrs` int NOT NULL,
  `IssueDate` date NOT NULL,
  `CType` varchar(40) NOT NULL,
  `CSubType` varchar(40) NOT NULL,
  PRIMARY KEY (`CardNo`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `cards`
--
LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */
;
INSERT INTO `cards`
VALUES (
    1421019838722529,
    9,
    '2012-07-03',
    'CREDIT',
    'Diners Club'
  ),
(
    1421019838722530,
    9,
    '2018-06-23',
    'DEBIT',
    'American Express'
  ),
(
    1421019838722531,
    11,
    '2017-03-05',
    'DEBIT',
    'China UnionPay'
  ),
(1421019838722532, 7, '2020-11-05', 'CREDIT', 'JCB'),
(1421019838722533, 8, '2010-01-17', 'DEBIT', 'JCB'),
(
    1421019838722534,
    5,
    '2021-05-12',
    'DEBIT',
    'Discover'
  ),
(
    2321019838722530,
    11,
    '2020-02-11',
    'CREDIT',
    'Diners Club'
  ),
(2321019838722531, 8, '2020-01-16', 'CREDIT', 'JCB'),
(
    2321019838722532,
    10,
    '2012-08-30',
    'DEBIT',
    'Discover'
  ),
(
    2321019838722533,
    12,
    '2021-11-18',
    'DEBIT',
    'American Express'
  ),
(
    2321019838722534,
    5,
    '2013-10-24',
    'CREDIT',
    'Mastercard'
  ),
(
    2869121685495261,
    6,
    '2011-11-05',
    'CREDIT',
    'Diners Club'
  ),
(
    2869121685495262,
    10,
    '2013-05-07',
    'CREDIT',
    'Diners Club'
  ),
(
    2869121685495263,
    5,
    '2010-03-16',
    'DEBIT',
    'Discover'
  ),
(2869121685495264, 5, '2013-09-07', 'CREDIT', 'VISA'),
(
    3769121685495262,
    12,
    '2015-01-11',
    'DEBIT',
    'Discover'
  ),
(
    3769121685495263,
    12,
    '2011-12-26',
    'DEBIT',
    'Mastercard'
  ),
(
    3769121685495264,
    6,
    '2012-05-19',
    'CREDIT',
    'American Express'
  ),
(4979828859038150, 5, '2012-01-06', 'DEBIT', 'JCB'),
(4979828859038151, 9, '2011-07-21', 'DEBIT', 'VISA'),
(
    4979828859038152,
    7,
    '2017-01-31',
    'DEBIT',
    'Discover'
  ),
(
    4979828859038153,
    12,
    '2014-07-14',
    'CREDIT',
    'China UnionPay'
  ),
(
    4979828859038154,
    12,
    '2018-06-15',
    'CREDIT',
    'American Express'
  ),
(
    5879828859038151,
    6,
    '2022-01-04',
    'DEBIT',
    'Diners Club'
  ),
(
    5879828859038152,
    9,
    '2015-04-06',
    'DEBIT',
    'China UnionPay'
  ),
(
    5879828859038153,
    6,
    '2018-11-24',
    'DEBIT',
    'American Express'
  ),
(
    5879828859038154,
    6,
    '2014-02-09',
    'CREDIT',
    'Mastercard'
  ),
(
    5879828859038155,
    7,
    '2017-07-31',
    'CREDIT',
    'American Express'
  ),
(
    7108675422571377,
    7,
    '2010-01-31',
    'CREDIT',
    'Diners Club'
  ),
(
    7108675422571378,
    7,
    '2010-01-14',
    'CREDIT',
    'Diners Club'
  ),
(7108675422571379, 12, '2010-06-25', 'DEBIT', 'JCB'),
(
    7108675422571380,
    7,
    '2012-02-19',
    'DEBIT',
    'Mastercard'
  ),
(7108675422571381, 7, '2011-01-18', 'DEBIT', 'JCB'),
(
    8008675422571378,
    9,
    '2011-08-25',
    'DEBIT',
    'American Express'
  ),
(8008675422571379, 6, '2013-09-21', 'DEBIT', 'JCB'),
(8008675422571380, 4, '2018-06-29', 'DEBIT', 'JCB'),
(
    8008675422571381,
    10,
    '2010-02-14',
    'DEBIT',
    'China UnionPay'
  ),
(8635488776108338, 8, '2019-05-15', 'DEBIT', 'VISA'),
(
    8635488776108339,
    8,
    '2010-01-06',
    'CREDIT',
    'Diners Club'
  ),
(8635488776108340, 9, '2014-04-10', 'DEBIT', 'VISA'),
(8635488776108341, 7, '2015-12-22', 'DEBIT', 'VISA'),
(8635488776108342, 9, '2010-02-23', 'CREDIT', 'VISA'),
(
    8635488776108343,
    6,
    '2016-08-21',
    'DEBIT',
    'Mastercard'
  ),
(
    9535488776108335,
    5,
    '2017-02-03',
    'CREDIT',
    'American Express'
  ),
(9535488776108336, 7, '2017-04-09', 'CREDIT', 'JCB'),
(
    9535488776108337,
    10,
    '2013-05-13',
    'DEBIT',
    'Diners Club'
  ),
(
    9535488776108338,
    10,
    '2017-08-14',
    'DEBIT',
    'Discover'
  ),
(
    9535488776108339,
    9,
    '2019-02-14',
    'CREDIT',
    'Diners Club'
  ),
(
    9535488776108340,
    10,
    '2010-09-01',
    'DEBIT',
    'China UnionPay'
  ),
(9999999999999999, 4, '2013-03-30', 'CREDIT', 'JCB');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `creditcard`
--
DROP TABLE IF EXISTS `creditcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `creditcard` (
  `CType` varchar(40) NOT NULL,
  `MonthlyInterest` float NOT NULL,
  `Eligibility_score` int NOT NULL,
  `Cash_Limit` float NOT NULL,
  `Joining_Fee` float NOT NULL,
  `Annual_Fee` float NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `creditcard`
--
LOCK TABLES `creditcard` WRITE;
/*!40000 ALTER TABLE `creditcard` DISABLE KEYS */
;
INSERT INTO `creditcard`
VALUES ('VISA', 15, 463, 500000, 1500, 500),
('Mastercard', 6, 581, 400000, 500, 500),
('JCB', 24, 701, 300000, 2500, 500),
('China UnionPay', 10, 605, 200000, 2000, 500),
('Discover', 22, 787, 100000, 1000, 500);
/*!40000 ALTER TABLE `creditcard` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `customer`
--
DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `customer` (
  `CustID` decimal(6, 0) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Income` float NOT NULL,
  `Credit Score` float NOT NULL,
  `AadharNo` decimal(12, 0) unsigned NOT NULL,
  PRIMARY KEY (`CustID`),
  KEY `FK_Aadhar_Cust` (`AadharNo`),
  CONSTRAINT `FK_Aadhar_Cust` FOREIGN KEY (`AadharNo`) REFERENCES `person` (`AadharNo`) ON DELETE CASCADE,
  CONSTRAINT `customer_chk_1` CHECK ((length(`CustID`) = 6))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `customer`
--
LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */
;
INSERT INTO `customer`
VALUES (103981, 'q2eF3d5T', 9007230, 675, 972519300069),
(103982, 'o388yv-7%g16xl', 9048860, 517, 719136738495),
(103983, 't6w6kp27', 5960200, 308, 809136738496),
(103984, 'g80cmvHzaIl2', 7628620, 426, 809136738493),
(103985, 'p16vB5s38dzNO?', 7300880, 445, 719136738497),
(
    103986,
    'm92tl#GwM7Fev65g7l',
    2173940,
    484,
    719136738498
  ),
(193982, 'A637ZdLcz7W', 4422040, 646, 608823061357),
(193983, 'S07xE6pg73z', 551599, 836, 608823061355),
(193984, 'B6vZV0Cw', 538194, 562, 608823061357),
(
    193985,
    'K9cM35l^Es9E22dq-T',
    492420,
    357,
    882519300069
  ),
(193986, 'F0TI7b46%eolo', 843729, 310, 972519300066),
(
    325369,
    'J9lApXRGs3jLVK11u',
    5797240,
    776,
    882519300071
  ),
(325370, 'V6_xdZVq', 351998, 463, 196915550825),
(325371, 'E7tnworX21inx', 6855580, 489, 400420707803),
(325372, 'S2^o4w&96Ey', 9866540, 752, 400420707801),
(325373, 'z97RQz!K1', 7499620, 845, 518823061358),
(415370, 'l6I228zs4f', 7416250, 463, 608823061357),
(415371, 'A94bIs7Q8T', 7424690, 308, 809136738497),
(415372, 'n0tY7ic2HV', 2112970, 391, 400420707802),
(
    415373,
    's2485TE7KBLccg4TQS',
    2014560,
    897,
    972519300067
  ),
(548903, 'T78$rel5NIp', 2796100, 794, 608823061357),
(548904, 'T9eMMg04', 9138080, 642, 999999999999),
(548905, 'Q136nj$wHw', 2369440, 471, 518823061356),
(548906, 'X5eBKddc9B', 6891260, 557, 518823061356),
(638903, 'l51lDZKbU41EPb', 2130260, 429, 310420707801),
(638904, 'I3!x6KbW#7*6$5', 9933770, 695, 719136738493),
(638905, 'G1&GOl*7q', 6712630, 440, 809136738499),
(638906, 'c4gyw%246', 6069510, 849, 972519300071),
(638907, 'i2l#-wuPt&2', 3596940, 691, 809136738498),
(652810, 'B9FzAfFutR', 3126540, 741, 400420707800),
(652811, 'i2fIR6yF9kQ', 4791940, 306, 972519300067),
(652812, 'M91dCRpY63W1ZYf', 658562, 610, 809136738496),
(652813, 'i3tgYc6C1w', 3426130, 610, 608823061357),
(652814, 'i2F43ESYw4b', 4979610, 887, 608823061357),
(652815, 'C2b202QxL5Dyz2', 6470380, 731, 809136738497),
(652816, 'K04ZscZ12xw3Vh', 8708370, 444, 809136738493),
(
    742811,
    'X58O_c5GJRVVi3n-Kn',
    6175990,
    672,
    882519300072
  ),
(742812, 'B46hb512N', 8239580, 779, 972519300067),
(742813, 'C9p^VcD10', 6197710, 417, 310420707799),
(
    742814,
    'd44o?_0e2jhuYTJY0$',
    8065820,
    305,
    719136738493
  ),
(742815, 'R61I9Q1aMG7*', 1015010, 334, 518823061357),
(742816, 'T5I4-eFu&YS', 3819990, 550, 608823061357),
(826967, 'G2747456mj1#', 3247470, 355, 608823061357),
(826968, 'L35279fpq', 8769310, 792, 719136738499),
(826969, 'D59DK*2o0d', 6800980, 871, 809136738498),
(916964, 'C31N^3QI1', 9855790, 800, 882519300073),
(916965, 'O70k@ZWeTL2-5', 7087630, 331, 972519300068),
(
    916966,
    'o8A4W17CKb09m9-',
    6834430,
    720,
    310420707799
  ),
(916967, 'V1G9*@8g6@r', 864937, 601, 719136738499),
(
    999999,
    'm3XvPV80yf2ZoZ7',
    5084530,
    387,
    106915550824
  );
/*!40000 ALTER TABLE `customer` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `debitcard`
--
DROP TABLE IF EXISTS `debitcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `debitcard` (
  `CType` varchar(40) NOT NULL,
  `CashBack_percent` int NOT NULL,
  `Points` int NOT NULL,
  `Withdrawal_Limit` float NOT NULL,
  `Renewal_Fee` float NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `debitcard`
--
LOCK TABLES `debitcard` WRITE;
/*!40000 ALTER TABLE `debitcard` DISABLE KEYS */
;
INSERT INTO `debitcard`
VALUES ('Mastercard', 6, 100, 50000, 500),
('VISA', 14, 400, 100000, 2000),
('Maestro', 8, 300, 100000, 1500),
('American Express', 9, 200, 50000, 1000);
/*!40000 ALTER TABLE `debitcard` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `depositoryacc`
--
DROP TABLE IF EXISTS `depositoryacc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `depositoryacc` (
  `Account#` decimal(10, 0) NOT NULL,
  `InterestRate` decimal(2, 0) DEFAULT NULL,
  `minBalance` decimal(15, 0) DEFAULT NULL,
  `Type` varchar(45) NOT NULL,
  `DebitCard#` decimal(16, 0) NOT NULL,
  PRIMARY KEY (`Account#`),
  UNIQUE KEY `DebitCard#_UNIQUE` (`DebitCard#`),
  CONSTRAINT `FK_Act_Dep` FOREIGN KEY (`Account#`) REFERENCES `account` (`Account#`) ON DELETE CASCADE,
  CONSTRAINT `FK_DCARD_CARDS` FOREIGN KEY (`DebitCard#`) REFERENCES `cards` (`CardNo`),
  CONSTRAINT `depositoryacc_chk_1` CHECK (
    (`Type` in (_utf8mb4 'SAVINGS', _utf8mb4 'CURRENT'))
  )
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `depositoryacc`
--
LOCK TABLES `depositoryacc` WRITE;
/*!40000 ALTER TABLE `depositoryacc` DISABLE KEYS */
;
INSERT INTO `depositoryacc`
VALUES (1071451535, 3, 4000, 'CURRENT', 3769121685495262),
(1071451536, 8, 5000, 'CURRENT', 1421019838722534),
(1971451535, 10, 4000, 'SAVINGS', 7108675422571380),
(1971451536, 4, 4000, 'CURRENT', 4979828859038150),
(3187839394, 3, 10000, 'CURRENT', 2321019838722531),
(3187839395, 2, 6000, 'CURRENT', 7108675422571378),
(3187839396, 4, 5000, 'CURRENT', 7108675422571381),
(3187839397, 8, 8000, 'SAVINGS', 1421019838722531),
(3187839398, 1, 4000, 'SAVINGS', 1421019838722530),
(3187839399, 1, 4000, 'SAVINGS', 2869121685495263),
(3187839400, 4, 2000, 'SAVINGS', 2321019838722534),
(3187839401, 3, 4000, 'CURRENT', 8008675422571380),
(4087839394, 7, 10000, 'SAVINGS', 8008675422571381),
(4087839395, 10, 2000, 'SAVINGS', 8635488776108339),
(4087839396, 9, 5000, 'SAVINGS', 4979828859038154),
(4087839397, 8, 2000, 'SAVINGS', 7108675422571379),
(4087839398, 5, 10000, 'SAVINGS', 3769121685495264),
(4087839399, 9, 2000, 'SAVINGS', 3769121685495263),
(4087839400, 6, 2000, 'SAVINGS', 4979828859038152),
(4087839401, 10, 2000, 'CURRENT', 9535488776108335),
(5359109357, 6, 5000, 'SAVINGS', 5879828859038153),
(5359109358, 2, 8000, 'SAVINGS', 5879828859038152),
(5359109359, 5, 2000, 'SAVINGS', 9535488776108340),
(5359109360, 6, 2000, 'CURRENT', 2869121685495264),
(5359109361, 8, 4000, 'SAVINGS', 8635488776108340),
(5359109362, 3, 4000, 'SAVINGS', 2321019838722530),
(6259109357, 10, 6000, 'SAVINGS', 2869121685495261),
(6259109358, 10, 6000, 'CURRENT', 8008675422571378),
(6259109359, 4, 4000, 'SAVINGS', 8635488776108341),
(6259109360, 9, 2000, 'CURRENT', 9535488776108338),
(6259109361, 2, 8000, 'SAVINGS', 1421019838722529),
(6259109362, 5, 4000, 'CURRENT', 4979828859038153),
(6259109363, 9, 2000, 'SAVINGS', 5879828859038151),
(6847493370, 2, 5000, 'SAVINGS', 9999999999999999),
(6847493371, 3, 10000, 'SAVINGS', 1421019838722532),
(6847493372, 6, 2000, 'SAVINGS', 2321019838722533),
(6847493373, 4, 5000, 'CURRENT', 5879828859038155),
(6847493374, 8, 4000, 'CURRENT', 2869121685495262),
(7747493370, 7, 5000, 'CURRENT', 9535488776108339),
(7747493371, 10, 4000, 'SAVINGS', 8008675422571379),
(7747493372, 6, 2000, 'CURRENT', 9535488776108336),
(7747493373, 10, 2000, 'SAVINGS', 8635488776108343),
(7747493374, 6, 10000, 'SAVINGS', 2321019838722532),
(8707739665, 9, 2000, 'CURRENT', 8635488776108338),
(8707739666, 6, 5000, 'SAVINGS', 7108675422571377),
(8707739667, 3, 4000, 'CURRENT', 1421019838722533),
(9607739662, 8, 2000, 'SAVINGS', 8635488776108342),
(9607739663, 10, 2000, 'SAVINGS', 5879828859038154),
(9607739664, 2, 6000, 'CURRENT', 9535488776108337),
(9999999999, 7, 4000, 'SAVINGS', 4979828859038151);
/*!40000 ALTER TABLE `depositoryacc` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `employee`
--
DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `employee` (
  `empID` decimal(6, 0) NOT NULL,
  `Salary` float unsigned NOT NULL,
  `DOJ` date NOT NULL,
  `branchID` decimal(4, 0) NOT NULL,
  `AadharNo` decimal(12, 0) unsigned NOT NULL,
  PRIMARY KEY (`empID`),
  UNIQUE KEY `AadharNo_UNIQUE` (`AadharNo`),
  KEY `FK_WORKS_idx` (`branchID`),
  CONSTRAINT `FK_EMP_AADHAR` FOREIGN KEY (`AadharNo`) REFERENCES `person` (`AadharNo`) ON DELETE CASCADE,
  CONSTRAINT `FK_WORKS` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `employee`
--
LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */
;
INSERT INTO `employee`
VALUES (182303, 1414860, '2016-12-07', 8734, 400420707803),
(182304, 1256450, '1976-10-19', 6177, 106915550824),
(182305, 1482360, '1999-01-09', 7026, 882519300072),
(182306, 1207230, '1993-07-17', 3848, 972519300066),
(182307, 1167500, '2019-02-14', 7927, 999999999999),
(182308, 1537820, '2014-12-10', 9634, 809136738497),
(272303, 1198680, '1970-01-01', 9635, 518823061357),
(272304, 1342030, '1997-11-02', 8736, 400420707799),
(272305, 779401, '2016-02-28', 3846, 882519300070),
(272306, 839951, '1994-09-13', 9635, 400420707800),
(272307, 1392560, '1971-12-21', 1423, 518823061355),
(272308, 1318350, '1980-12-31', 3846, 608823061355),
(285942, 667954, '2017-02-03', 9631, 196915550824),
(285943, 1663930, '1970-01-06', 8736, 719136738499),
(285944, 942532, '2015-11-18', 7928, 809136738495),
(285945, 1373980, '1970-02-12', 9635, 972519300071),
(285946, 1732920, '1989-05-28', 6181, 400420707802),
(285947, 880151, '1970-02-26', 8739, 809136738496),
(285948, 1204100, '1987-08-09', 6180, 608823061356),
(375943, 1737640, '1971-05-02', 6180, 518823061358),
(375944, 1439220, '1979-01-07', 8736, 882519300073),
(375945, 631510, '1985-06-22', 7926, 719136738498),
(375946, 869438, '1971-12-12', 1423, 809136738500),
(375947, 1030650, '1970-01-05', 2323, 882519300068),
(375948, 1376680, '1994-12-14', 8737, 310420707802),
(528896, 920729, '1980-10-02', 8735, 608823061358),
(528897, 1370130, '1986-09-07', 7927, 310420707800),
(528898, 684540, '1970-01-02', 8738, 106915550823),
(618896, 1001300, '1975-11-17', 9630, 518823061356),
(618897, 1578980, '1975-04-19', 1423, 310420707799),
(618898, 647214, '1991-04-05', 7028, 400420707801),
(644892, 639126, '1970-12-30', 8736, 882519300069),
(644893, 1513220, '1970-01-11', 9629, 972519300068),
(644894, 1344410, '2008-10-04', 9635, 882519300071),
(644895, 1171460, '1998-03-16', 8736, 809136738498),
(734892, 1118290, '1980-07-25', 3845, 972519300070),
(734893, 1772680, '1970-01-09', 7028, 310420707801),
(734894, 1770880, '1989-04-25', 6179, 719136738494),
(734895, 639753, '1995-11-04', 7928, 972519300067),
(734896, 952281, '1972-04-21', 8737, 719136738497),
(886983, 975130, '1970-03-04', 2323, 196915550823),
(886984, 699935, '1989-05-27', 5278, 972519300069),
(886985, 817822, '1995-07-07', 7028, 608823061357),
(886986, 1752910, '1977-05-15', 8735, 809136738493),
(976980, 894490, '1991-12-30', 5279, 809136738494),
(976981, 648966, '2001-04-24', 5281, 809136738499),
(976982, 1636660, '1980-08-25', 7927, 719136738493),
(976983, 971327, '1970-01-09', 9634, 719136738495),
(976984, 1532520, '1996-03-11', 5280, 719136738496),
(999999, 1149970, '2000-02-25', 9634, 196915550825);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `fixeddeposits`
--
DROP TABLE IF EXISTS `fixeddeposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `fixeddeposits` (
  `DepositNo` int NOT NULL,
  `TenureMonth` int NOT NULL,
  `DateOfCreation` date NOT NULL,
  `Amount` float NOT NULL,
  `ROI` float NOT NULL,
  `CustId` decimal(6, 0) NOT NULL,
  PRIMARY KEY (`DepositNo`),
  UNIQUE KEY `DepositNo_UNIQUE` (`DepositNo`),
  KEY `FK_OPENS_FD_idx` (`CustId`),
  CONSTRAINT `FK_OPENS_FD` FOREIGN KEY (`CustId`) REFERENCES `customer` (`CustID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `fixeddeposits`
--
LOCK TABLES `fixeddeposits` WRITE;
/*!40000 ALTER TABLE `fixeddeposits` DISABLE KEYS */
;
INSERT INTO `fixeddeposits`
VALUES (936, 155, '1971-11-23', 708209, 14, 638904),
(937, 72, '1970-01-09', 257927, 15, 103985),
(938, 92, '2008-05-22', 983909, 13, 548903),
(939, 72, '1989-02-14', 163334, 11, 193985),
(1937, 148, '1995-07-02', 47604, 14, 548904),
(1938, 173, '1999-05-23', 524047, 11, 999999),
(1939, 179, '2006-09-25', 900632, 13, 548903),
(2286, 134, '1970-08-02', 364891, 14, 742813),
(2287, 8, '2001-04-17', 607492, 14, 103983),
(2288, 208, '2020-10-10', 323516, 15, 103984),
(2289, 122, '1979-01-06', 279005, 11, 193986),
(2290, 126, '1980-05-22', 926585, 10, 193982),
(3287, 85, '1991-08-01', 684517, 14, 193984),
(3288, 155, '1972-01-30', 616375, 14, 193983),
(3289, 195, '1995-01-14', 158656, 11, 415372),
(3290, 165, '2020-04-22', 816992, 12, 742812),
(3291, 54, '2002-08-02', 843299, 14, 638904),
(4864, 13, '1980-09-03', 519730, 13, 826969),
(4865, 153, '1971-07-27', 937579, 10, 325372),
(4866, 119, '1977-06-27', 657747, 10, 826967),
(4867, 162, '1970-02-07', 356971, 15, 916964),
(5864, 51, '1970-01-14', 216604, 12, 916965),
(5865, 150, '2005-01-17', 769468, 14, 415372),
(5866, 146, '2009-07-10', 428078, 14, 325371),
(5867, 47, '1979-07-22', 452304, 13, 103985),
(6011, 117, '2013-09-10', 779671, 15, 415370),
(6012, 239, '1976-02-08', 145945, 15, 325372),
(6013, 136, '1980-02-28', 590688, 15, 103986),
(6014, 168, '2006-03-05', 251585, 12, 548905),
(6015, 231, '1972-06-03', 764024, 15, 742811),
(6016, 37, '1971-01-08', 907258, 13, 548905),
(6017, 50, '1974-04-26', 541122, 11, 652810),
(7011, 114, '1996-03-30', 426623, 15, 103981),
(7012, 172, '1994-07-31', 160179, 15, 325372),
(7013, 97, '1976-10-13', 719892, 11, 103982),
(7014, 198, '1972-07-16', 365731, 11, 742813),
(7015, 8, '2002-09-07', 157579, 15, 652812),
(7016, 38, '1985-06-22', 553967, 10, 652813),
(7017, 43, '1970-02-17', 679516, 12, 916966),
(8608, 173, '1990-04-23', 57040, 13, 742816),
(8609, 233, '2001-12-28', 241026, 14, 638906),
(8610, 228, '1981-12-07', 12745, 14, 916967),
(8611, 96, '1996-12-01', 665223, 13, 325370),
(8612, 126, '1974-10-02', 257222, 10, 415370),
(8613, 118, '1971-07-08', 987378, 13, 916965),
(9607, 181, '2012-07-18', 605792, 12, 916966),
(9608, 26, '1976-09-20', 287040, 15, 325373),
(9609, 58, '1971-03-12', 26750, 10, 916966),
(9610, 43, '1987-01-22', 307366, 13, 638905),
(9611, 169, '2004-12-17', 446645, 15, 916964);
/*!40000 ALTER TABLE `fixeddeposits` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `loanacc`
--
DROP TABLE IF EXISTS `loanacc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `loanacc` (
  `InterestRate` float NOT NULL,
  `RepaymentDate` date NOT NULL,
  `Account#` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`Account#`),
  CONSTRAINT `FK_ACCNO` FOREIGN KEY (`Account#`) REFERENCES `account` (`Account#`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `loanacc`
--
LOCK TABLES `loanacc` WRITE;
/*!40000 ALTER TABLE `loanacc` DISABLE KEYS */
;
INSERT INTO `loanacc`
VALUES (10, '2010-01-07', 1071451535),
(17, '2020-07-04', 1071451536),
(17, '2019-12-18', 1971451535),
(25, '2016-09-24', 1971451536),
(10, '2016-05-29', 3187839394),
(16, '2011-12-20', 3187839395),
(19, '2012-03-09', 3187839396),
(11, '2011-09-12', 3187839397),
(23, '2010-03-12', 3187839398),
(16, '2019-05-23', 3187839399),
(17, '2021-06-04', 3187839400),
(22, '2017-12-18', 3187839401),
(20, '2016-10-22', 4087839394),
(24, '2010-03-30', 4087839395),
(21, '2014-12-18', 4087839396),
(13, '2019-03-25', 4087839397),
(25, '2012-03-27', 4087839398),
(11, '2014-01-09', 4087839399),
(19, '2018-08-16', 4087839400),
(19, '2010-03-10', 4087839401),
(13, '2012-10-10', 5359109357),
(11, '2018-07-20', 5359109358),
(13, '2010-01-02', 5359109359),
(11, '2021-11-01', 5359109360),
(16, '2014-07-11', 5359109361),
(12, '2012-06-13', 5359109362),
(15, '2012-12-03', 6259109357),
(17, '2012-05-21', 6259109358),
(21, '2011-04-13', 6259109359),
(17, '2016-11-26', 6259109360),
(12, '2014-01-17', 6259109361),
(20, '2010-01-07', 6259109362),
(19, '2021-09-17', 6259109363),
(15, '2017-07-25', 6847493370),
(21, '2020-07-22', 6847493371),
(13, '2019-01-23', 6847493372),
(15, '2013-01-23', 6847493373),
(18, '2021-01-11', 6847493374),
(17, '2010-12-19', 7747493370),
(21, '2013-07-19', 7747493371),
(12, '2014-08-13', 7747493372),
(12, '2017-07-10', 7747493373),
(24, '2010-07-28', 7747493374),
(22, '2011-10-01', 8707739665),
(12, '2017-05-29', 8707739666),
(19, '2014-04-16', 8707739667),
(21, '2021-09-10', 9607739662),
(19, '2020-02-12', 9607739663),
(22, '2016-01-10', 9607739664),
(25, '2015-07-28', 9999999999);
/*!40000 ALTER TABLE `loanacc` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `loanrequests`
--
DROP TABLE IF EXISTS `loanrequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `loanrequests` (
  `requestID` decimal(6, 0) NOT NULL,
  `DateOfOpening` date NOT NULL,
  `Amount` float NOT NULL,
  `DurationMonths` int NOT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `CustId` decimal(6, 0) NOT NULL,
  `BranchId` decimal(4, 0) NOT NULL,
  `Acc#` decimal(10, 0) DEFAULT NULL,
  PRIMARY KEY (`requestID`),
  KEY `FK_Acc#_Loan_idx` (`Acc#`),
  KEY `FK_BrId_Loan_idx` (`BranchId`),
  KEY `FK_Cust_Loan_idx` (`CustId`),
  CONSTRAINT `FK_Acc#_Loan` FOREIGN KEY (`Acc#`) REFERENCES `account` (`Account#`) ON DELETE CASCADE,
  CONSTRAINT `FK_BrId_Loan` FOREIGN KEY (`BranchId`) REFERENCES `branch` (`branchID`),
  CONSTRAINT `FK_Cust_Loan` FOREIGN KEY (`CustId`) REFERENCES `customer` (`CustID`) ON DELETE CASCADE,
  CONSTRAINT `loanrequests_chk_1` CHECK (
    (
      `Type` in (
        _utf8mb4 'PERSONAL',
        _utf8mb4 'HOME',
        _utf8mb4 'EDUCATION',
        _utf8mb4 'VEHICLE',
        _utf8mb4 'BUSINESS',
        _utf8mb4 'OTHER'
      )
    )
  )
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `loanrequests`
--
LOCK TABLES `loanrequests` WRITE;
/*!40000 ALTER TABLE `loanrequests` DISABLE KEYS */
;
INSERT INTO `loanrequests`
VALUES (
    152596,
    '2012-08-16',
    6532700,
    131,
    'HOME',
    638903,
    3848,
    9607739662
  ),
(
    152597,
    '1985-05-09',
    3653580,
    91,
    'VEHICLE',
    193982,
    7926,
    3187839394
  ),
(
    152598,
    '1997-08-16',
    9829340,
    27,
    'VEHICLE',
    742812,
    2945,
    9607739664
  ),
(
    152599,
    '1974-10-08',
    7282670,
    179,
    'OTHER',
    638907,
    3847,
    4087839398
  ),
(
    152600,
    '1994-01-17',
    336819,
    154,
    'OTHER',
    638904,
    8739,
    9607739663
  ),
(
    242597,
    '1971-03-30',
    867825,
    85,
    'PERSONAL',
    916965,
    6178,
    1071451536
  ),
(
    242598,
    '1997-05-25',
    9449470,
    146,
    'EDUCATION',
    103983,
    8736,
    5359109357
  ),
(
    242599,
    '1977-05-03',
    9634970,
    206,
    'OTHER',
    652811,
    8733,
    7747493373
  ),
(
    242600,
    '1997-05-16',
    3767000,
    162,
    'VEHICLE',
    638903,
    6176,
    3187839394
  ),
(
    242601,
    '2011-05-21',
    9077360,
    114,
    'OTHER',
    826969,
    8733,
    6847493373
  ),
(
    357505,
    '1993-10-19',
    2734930,
    206,
    'OTHER',
    193984,
    8733,
    6847493371
  ),
(
    357506,
    '2001-04-05',
    1608680,
    205,
    'OTHER',
    325372,
    7928,
    3187839401
  ),
(
    357507,
    '2014-02-22',
    1972700,
    80,
    'HOME',
    742811,
    2323,
    3187839401
  ),
(
    357508,
    '1999-01-24',
    7551190,
    236,
    'OTHER',
    826967,
    7926,
    7747493372
  ),
(
    447505,
    '2000-02-03',
    5012850,
    57,
    'HOME',
    742813,
    9632,
    5359109357
  ),
(
    447506,
    '1970-01-11',
    7813440,
    200,
    'EDUCATION',
    638903,
    8732,
    6259109360
  ),
(
    447507,
    '2020-04-21',
    4222910,
    122,
    'PERSONAL',
    548903,
    7927,
    6259109358
  ),
(
    447508,
    '1992-09-27',
    630380,
    73,
    'EDUCATION',
    415371,
    6181,
    8707739666
  ),
(
    487194,
    '1989-12-21',
    5213380,
    172,
    'HOME',
    652815,
    5279,
    4087839398
  ),
(
    487195,
    '1970-01-06',
    202910,
    88,
    'VEHICLE',
    916964,
    2325,
    6259109357
  ),
(
    487196,
    '1971-12-06',
    1709730,
    227,
    'HOME',
    193986,
    1424,
    7747493372
  ),
(
    487197,
    '1972-03-20',
    7666450,
    31,
    'OTHER',
    916967,
    8736,
    7747493372
  ),
(
    487198,
    '1978-07-12',
    3667680,
    40,
    'PERSONAL',
    103986,
    8733,
    4087839400
  ),
(
    577194,
    '1970-01-02',
    4358000,
    133,
    'OTHER',
    652813,
    6176,
    4087839396
  ),
(
    577195,
    '2008-10-23',
    6083770,
    97,
    'HOME',
    193984,
    5278,
    6259109362
  ),
(
    577196,
    '1972-09-14',
    4750490,
    145,
    'HOME',
    193982,
    7028,
    9607739663
  ),
(
    577197,
    '1994-11-09',
    2195350,
    143,
    'PERSONAL',
    652815,
    8733,
    3187839395
  ),
(
    577198,
    '1970-04-21',
    2709510,
    143,
    'OTHER',
    652815,
    8734,
    3187839400
  ),
(
    646737,
    '2011-02-14',
    9703240,
    36,
    'PERSONAL',
    652816,
    7026,
    6847493372
  ),
(
    646738,
    '1978-10-05',
    5230950,
    134,
    'HOME',
    826968,
    5280,
    1071451535
  ),
(
    646739,
    '1998-03-10',
    8104260,
    180,
    'PERSONAL',
    193986,
    7027,
    4087839395
  ),
(
    646740,
    '1981-01-26',
    9105870,
    235,
    'OTHER',
    103982,
    5277,
    1071451536
  ),
(
    736737,
    '2000-06-16',
    5960830,
    17,
    'EDUCATION',
    638904,
    3848,
    6847493372
  ),
(
    736738,
    '1970-01-03',
    3908190,
    42,
    'OTHER',
    652810,
    2323,
    7747493370
  ),
(
    736739,
    '1971-08-09',
    5193860,
    77,
    'PERSONAL',
    548904,
    9999,
    4087839394
  ),
(
    736740,
    '1981-07-14',
    2029550,
    20,
    'VEHICLE',
    652813,
    7027,
    7747493372
  ),
(
    736741,
    '1998-06-01',
    4318660,
    135,
    'PERSONAL',
    325373,
    3845,
    7747493374
  ),
(
    862554,
    '2014-06-07',
    6468330,
    35,
    'VEHICLE',
    415370,
    9631,
    4087839396
  ),
(
    862555,
    '1995-02-08',
    8113330,
    45,
    'PERSONAL',
    415371,
    9635,
    7747493373
  ),
(
    862556,
    '2007-09-25',
    3395480,
    69,
    'OTHER',
    193982,
    5278,
    4087839396
  ),
(
    862557,
    '1970-03-22',
    9940560,
    233,
    'HOME',
    103982,
    6179,
    6847493372
  ),
(
    862558,
    '1970-01-06',
    4542900,
    17,
    'VEHICLE',
    548903,
    8735,
    6259109363
  ),
(
    862559,
    '1991-05-30',
    5169120,
    78,
    'PERSONAL',
    325373,
    9633,
    6259109359
  ),
(
    952552,
    '1988-05-11',
    7619400,
    88,
    'OTHER',
    548903,
    8736,
    8707739665
  ),
(
    952553,
    '1977-05-02',
    7182960,
    37,
    'HOME',
    193984,
    1423,
    6847493371
  ),
(
    952554,
    '1973-08-06',
    5652420,
    177,
    'PERSONAL',
    742816,
    5276,
    9607739663
  ),
(
    952555,
    '2002-01-06',
    995796,
    36,
    'OTHER',
    415370,
    1423,
    6847493370
  ),
(
    952556,
    '1970-01-10',
    3087020,
    177,
    'PERSONAL',
    826967,
    8733,
    4087839400
  ),
(
    952557,
    '2010-05-03',
    2206060,
    32,
    'EDUCATION',
    826967,
    7027,
    8707739666
  ),
(
    999999,
    '1978-12-13',
    8804330,
    212,
    'PERSONAL',
    742813,
    6179,
    4087839394
  );
/*!40000 ALTER TABLE `loanrequests` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `manages`
--
DROP TABLE IF EXISTS `manages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `manages` (
  `empID` decimal(6, 0) NOT NULL,
  `branchID` decimal(4, 0) NOT NULL,
  `DOJ` date NOT NULL,
  PRIMARY KEY (`empID`, `branchID`, `DOJ`),
  KEY `FK_BrID_Manages_idx` (`branchID`),
  CONSTRAINT `FK_BrID_Manages` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchID`),
  CONSTRAINT `FK_emp_manages` FOREIGN KEY (`empID`) REFERENCES `employee` (`empID`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `manages`
--
LOCK TABLES `manages` WRITE;
/*!40000 ALTER TABLE `manages` DISABLE KEYS */
;
INSERT INTO `manages`
VALUES (999999, 1422, '1987-04-27'),
(528896, 1423, '2018-07-10'),
(528897, 1424, '2013-04-24'),
(976983, 1425, '1991-06-29'),
(976982, 2323, '1977-01-11'),
(618897, 2324, '1982-02-08'),
(182306, 2325, '1971-10-25'),
(375944, 2945, '2008-07-25'),
(976981, 2946, '2018-07-09'),
(375946, 2947, '1982-02-09'),
(734896, 2948, '2003-05-10'),
(618896, 3845, '1982-02-06'),
(285945, 3846, '1987-04-28'),
(182305, 3847, '1987-04-29'),
(285948, 3848, '1982-02-11'),
(644892, 5276, '2018-07-07'),
(375945, 5277, '1971-10-23'),
(182307, 5278, '1991-06-30'),
(285946, 5279, '1977-01-12'),
(886986, 5280, '1987-05-01'),
(182308, 5281, '2008-07-27'),
(375943, 6176, '1987-04-26'),
(285944, 6177, '2013-04-21'),
(644895, 6178, '2008-07-26'),
(528898, 6179, '2018-07-11'),
(285947, 6180, '2003-05-09'),
(272308, 6181, '1996-09-17'),
(886983, 7026, '2003-05-07'),
(272304, 7027, '1977-01-10'),
(976984, 7028, '2013-04-25'),
(734893, 7926, '1977-01-09'),
(644893, 7927, '2018-07-08'),
(734894, 7928, '2013-04-22'),
(976980, 8732, '2022-02-28'),
(285943, 8733, '1996-09-13'),
(182304, 8734, '1971-10-24'),
(272305, 8735, '2013-04-23'),
(886985, 8736, '1996-09-14'),
(734895, 8737, '1991-06-28'),
(272307, 8738, '1996-09-16'),
(375948, 8739, '1971-10-26'),
(285942, 9629, '2013-04-20'),
(734892, 9630, '1971-10-22'),
(182303, 9631, '1982-02-07'),
(886984, 9632, '2003-05-08'),
(644894, 9633, '1991-06-27'),
(272306, 9634, '1987-04-30'),
(618898, 9635, '1996-09-15'),
(375947, 9636, '1982-02-10'),
(272303, 9999, '1982-02-05');
/*!40000 ALTER TABLE `manages` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `person`
--
DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `person` (
  `AadharNo` decimal(12, 0) unsigned NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `HouseNo` varchar(45) DEFAULT NULL,
  `Locality` varchar(45) DEFAULT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  PRIMARY KEY (`AadharNo`),
  CONSTRAINT `person_chk_1` CHECK (
    (
      `Gender` in (_utf8mb4 'M', _utf8mb4 'F', _utf8mb4 'O')
    )
  )
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `person`
--
LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */
;
INSERT INTO `person`
VALUES (
    106915550823,
    'Darcie',
    'Obryan',
    '1952-07-11',
    'F',
    '5',
    'E',
    'Palestine',
    'West Virginia'
  ),
(
    106915550824,
    'Rey',
    'Hickey',
    '1952-01-01',
    'M',
    '55KGGN8GJJ5J0M4U',
    '0H9PIHN9X0',
    'Haxtun',
    'Idaho'
  ),
(
    196915550823,
    'Blaine',
    'Lawler',
    '1987-06-09',
    'F',
    '3',
    'EH4C3',
    'Palermo',
    'Texas'
  ),
(
    196915550824,
    'Adolfo',
    'Lawson',
    '1971-08-19',
    'F',
    'XQ11N48LRG9',
    'I8U',
    'Palisades',
    'Washington'
  ),
(
    196915550825,
    'Lorina',
    'Ochoa',
    '1992-11-19',
    'F',
    'UC0B5T8S',
    '6B10UA7C95ZJT7K52R53S6K1900I53',
    'Hay Springs',
    'Florida'
  ),
(
    310420707799,
    'Adalberto',
    'Oates',
    '1952-04-18',
    'M',
    '6',
    'GF7644',
    'Rudyard',
    'South Carolina'
  ),
(
    310420707800,
    'Apryl',
    'Stubblefield',
    '1952-01-08',
    'F',
    'O789V4',
    'FX',
    'Lakeland',
    'Oklahoma'
  ),
(
    310420707801,
    'Germaine',
    'Lawless',
    '1970-07-08',
    'O',
    '035UM',
    '3TKJXS00V804',
    'Hawleyville',
    'Hawaii'
  ),
(
    310420707802,
    'Kirstin',
    'Woodruff',
    '1990-12-16',
    'F',
    '5GP',
    'D2XV679Q0',
    'Budd Lake',
    'South Dakota'
  ),
(
    400420707799,
    'Allene',
    'Angel',
    '1952-03-31',
    'F',
    '9UDH',
    '7P1799',
    'Palco',
    'Iowa'
  ),
(
    400420707800,
    'Claud',
    'Stuart',
    '1972-09-01',
    'F',
    '5XTVRH0WEJH27RG7',
    'A',
    'Mishawaka',
    'Colorado'
  ),
(
    400420707801,
    'Arlen',
    'Hester',
    '1962-09-04',
    'O',
    '0AV488R68S5ME0',
    '8796',
    'Zuni',
    'Vermont'
  ),
(
    400420707802,
    'Bruce',
    'Obrien',
    '1976-01-14',
    'M',
    '0',
    '6R',
    'Buda',
    'Washington'
  ),
(
    400420707803,
    'Keila',
    NULL,
    '1952-01-02',
    'O',
    NULL,
    'N39V5Q0',
    'Alfred',
    'Wyoming'
  ),
(
    518823061355,
    'Jame',
    'Hewitt',
    '1965-09-21',
    'M',
    'Z',
    NULL,
    'Wales',
    'Hawaii'
  ),
(
    518823061356,
    'Abigail',
    'Brunner',
    '1961-10-22',
    'M',
    'QYVYA',
    '8U5',
    'Alexis',
    'Alabama'
  ),
(
    518823061357,
    'Merlin',
    'Lawton',
    '1952-01-10',
    'M',
    'E82BB072748MM6BL',
    '1QKS922URW',
    'Hay',
    'Kansas'
  ),
(
    518823061358,
    'Alden',
    'Lay',
    '1952-01-06',
    'F',
    'VP0MV3LPC5S7LX8',
    NULL,
    'Walhalla',
    'Indiana'
  ),
(
    608823061355,
    'Aleta',
    'Rock',
    '1958-11-21',
    'M',
    'NVXQK',
    'SZTGSM793C59',
    'Eutaw',
    'Alaska'
  ),
(
    608823061356,
    'Roman',
    'Laws',
    '1964-11-08',
    'M',
    'GVIDUC018I',
    'S',
    'Rufus',
    'North Carolina'
  ),
(
    608823061357,
    'Coralie',
    'Dejesus',
    '1960-06-27',
    'F',
    '1PF9E05D5J21VZFU557',
    '3W',
    'Evans',
    'Kentucky'
  ),
(
    608823061358,
    'Michael',
    'Woods',
    '1963-05-30',
    'M',
    'G7Y03',
    '4N',
    'Lakeview',
    'Colorado'
  ),
(
    719136738493,
    'Lulu',
    NULL,
    '1952-07-15',
    'M',
    NULL,
    '5LN9',
    'Waldwick',
    'Nevada'
  ),
(
    719136738494,
    'Graig',
    'Dehart',
    '1956-07-27',
    'F',
    '90MQ3P7LEXIJAA4',
    'GRT9Q3ADST464MT65L',
    'South Easton',
    'Kentucky'
  ),
(
    719136738495,
    'Rene',
    'Lawrence',
    '1991-04-04',
    'O',
    '0D',
    'E45LA4',
    'Haworth',
    'Maine'
  ),
(
    719136738496,
    'Brigette',
    'Galindo',
    '1958-05-24',
    'F',
    'KQS4',
    '6CDD',
    'Mission Viejo',
    'Vermont'
  ),
(
    719136738497,
    'Deanna',
    'Delacruz',
    '1981-05-27',
    'M',
    'K87966O9XVBIYQ1',
    'Q9KE7',
    'Hawthorne',
    'New Hampshire'
  ),
(
    719136738498,
    'Caleb',
    'Stubbs',
    '1962-07-17',
    'M',
    '8IZ39J',
    'N0N07',
    'Missoula',
    'Mississippi'
  ),
(
    719136738499,
    'Reanna',
    'Ocasio',
    '1954-01-27',
    'F',
    '37TAO',
    '614R0R',
    'Evansville',
    'California'
  ),
(
    809136738493,
    'Cleo',
    'Woodley',
    '1969-12-22',
    'M',
    '1T2',
    '8V59308J6J01Y2T7',
    'Mishicot',
    'Minnesota'
  ),
(
    809136738494,
    'Caroline',
    'Anglin',
    '1952-01-09',
    'F',
    'F96Q82',
    'H9KP1JWI7Z7389',
    'Mission',
    'Indiana'
  ),
(
    809136738495,
    'Genaro',
    'Angulo',
    '1953-03-16',
    'F',
    '3FEN44UU',
    '8L',
    'Alexandria Bay',
    'Wyoming'
  ),
(
    809136738496,
    'Jack',
    'Hiatt',
    '1976-02-14',
    'F',
    'Q',
    '48F4T2U0PC7',
    'Mission Hills',
    'Indiana'
  ),
(
    809136738497,
    'Marcelo',
    'Roden',
    '1971-04-12',
    'F',
    '1',
    'UO0',
    'Lakeside',
    'Connecticut'
  ),
(
    809136738498,
    'Armanda',
    NULL,
    '2001-04-24',
    'F',
    NULL,
    '286H4OF',
    'Buellton',
    'New Mexico'
  ),
(
    809136738499,
    'Brady',
    'Anthony',
    '1993-02-13',
    'O',
    'Y9',
    'A7A87689W5TL378',
    'Waleska',
    'Arkansas'
  ),
(
    809136738500,
    'Toby',
    'Gallagher',
    '1992-02-03',
    'M',
    '2',
    NULL,
    'Buena',
    'Idaho'
  ),
(
    882519300068,
    'Karleen',
    'Brumfield',
    '1954-10-22',
    'M',
    '2NK670',
    '04984',
    'Alexandria',
    'Wyoming'
  ),
(
    882519300069,
    'Loraine',
    'Gale',
    '1995-10-19',
    'F',
    '2Y3F0053UL88O',
    'OC258VU760',
    'Ruffin',
    'Maryland'
  ),
(
    882519300070,
    'Tinisha',
    NULL,
    '1984-12-09',
    'O',
    NULL,
    '981U1DH',
    'Lakeport',
    'Minnesota'
  ),
(
    882519300071,
    'Tommy',
    NULL,
    '1968-08-31',
    'F',
    NULL,
    'MI6829Z32CT',
    'Mississippi State',
    'New Jersey'
  ),
(
    882519300072,
    'Cyril',
    'Roderick',
    '1962-11-25',
    'M',
    'E930866',
    NULL,
    'South Egremont',
    'Arizona'
  ),
(
    882519300073,
    'Bruno',
    'Rodgers',
    '1993-05-24',
    'F',
    '1730OO400ES',
    'F',
    'Missouri City',
    'Arizona'
  ),
(
    972519300066,
    'Queenie',
    'Bruner',
    '1994-06-07',
    'M',
    'OL50BX2Y',
    'E7JY60',
    'Lakemont',
    'Wisconsin'
  ),
(
    972519300067,
    'Nicolette',
    'Rockwell',
    '1988-09-01',
    'M',
    '50S163F1',
    '84GO22YO',
    'Evangeline',
    'South Carolina'
  ),
(
    972519300068,
    'Abel',
    'Hibbard',
    '1970-07-11',
    'F',
    '91IF0',
    '5',
    'Evansport',
    'Indiana'
  ),
(
    972519300069,
    'Albert',
    'Ocampo',
    '1968-09-03',
    'M',
    '75NHK6JV9HM8XY0',
    '9X1YD6BQ4I',
    'Evanston',
    'South Dakota'
  ),
(
    972519300070,
    'Trenton',
    NULL,
    '1994-04-26',
    'F',
    NULL,
    'R4XP11W4YQXY38U081A',
    'Lakeside Marblehead',
    'Alabama'
  ),
(
    972519300071,
    'Jody',
    'Hickman',
    '1982-08-07',
    'F',
    'NFY',
    '170K',
    'South El Monte',
    'Florida'
  ),
(
    999999999999,
    'Adela',
    'Hess',
    '1952-01-06',
    'F',
    'HKPG5',
    'GE9',
    'Lakehurst',
    'Louisiana'
  );
/*!40000 ALTER TABLE `person` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `phonenumbers`
--
DROP TABLE IF EXISTS `phonenumbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `phonenumbers` (
  `PhoneNumber` decimal(10, 0) NOT NULL,
  `AadharNo` decimal(12, 0) unsigned NOT NULL,
  PRIMARY KEY (`PhoneNumber`, `AadharNo`),
  KEY `FK_Aadhar_Phone` (`AadharNo`),
  CONSTRAINT `FK_Aadhar_Phone` FOREIGN KEY (`AadharNo`) REFERENCES `person` (`AadharNo`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `phonenumbers`
--
LOCK TABLES `phonenumbers` WRITE;
/*!40000 ALTER TABLE `phonenumbers` DISABLE KEYS */
;
INSERT INTO `phonenumbers`
VALUES (9706823361, 106915550823),
(8209602633, 106915550824),
(9406823361, 196915550823),
(7127131950, 196915550824),
(7669107430, 196915550825),
(8509602630, 310420707799),
(9031201436, 310420707800),
(8509602631, 310420707801),
(7127131947, 310420707802),
(8209602629, 400420707799),
(8209602630, 400420707800),
(9331201437, 400420707801),
(9031201437, 400420707802),
(9406823365, 400420707803),
(9706823360, 518823061355),
(7669107428, 518823061356),
(7127131951, 518823061357),
(8509602636, 518823061358),
(7427131947, 608823061355),
(7427131948, 608823061356),
(7969107429, 608823061357),
(7969107430, 608823061358),
(9706823359, 719136738493),
(9406823362, 719136738494),
(7969107428, 719136738495),
(9406823364, 719136738496),
(7127131949, 719136738497),
(7669107429, 719136738498),
(8509602635, 719136738499),
(9706823358, 809136738493),
(9999999999, 809136738494),
(9406823363, 809136738495),
(8209602632, 809136738496),
(7427131949, 809136738497),
(7427131950, 809136738498),
(8209602634, 809136738499),
(9706823363, 809136738500),
(7127131946, 882519300068),
(8509602632, 882519300069),
(7127131948, 882519300070),
(9706823362, 882519300071),
(8509602634, 882519300072),
(8209602635, 882519300073),
(8209602631, 972519300066),
(9331201438, 972519300067),
(8509602633, 972519300068),
(7427131951, 972519300069),
(9031201438, 972519300070),
(9406823366, 972519300071),
(7427131946, 999999999999);
/*!40000 ALTER TABLE `phonenumbers` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `transactions`
--
DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `transactions` (
  `TransactionID` decimal(10, 0) NOT NULL,
  `Amount` decimal(15, 2) NOT NULL,
  `Status` varchar(1) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `DateTime` datetime NOT NULL,
  `CustID` decimal(6, 0) NOT NULL,
  `Account#` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `FK_custid_trans` (`CustID`),
  KEY `FK_acc_trans` (`Account#`),
  CONSTRAINT `FK_acc_trans` FOREIGN KEY (`Account#`) REFERENCES `account` (`Account#`) ON DELETE CASCADE,
  CONSTRAINT `FK_custid_trans` FOREIGN KEY (`CustID`) REFERENCES `customer` (`CustID`) ON DELETE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `transactions`
--
LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */
;
INSERT INTO `transactions`
VALUES (
    1096764407,
    26797.30,
    'C',
    'DEBIT',
    '1970-01-01 00:00:06',
    916965,
    3187839399
  ),
(
    1096764408,
    94348.98,
    'F',
    'CREDIT',
    '1977-12-30 08:23:00',
    652814,
    7747493372
  ),
(
    1096764409,
    25411.47,
    'C',
    'DEBIT',
    '2011-06-21 04:41:28',
    325369,
    6259109357
  ),
(
    1096764410,
    45193.82,
    'C',
    'CREDIT',
    '1973-10-14 20:39:16',
    742811,
    4087839395
  ),
(
    1996764408,
    60265.39,
    'C',
    'DEBIT',
    '1998-03-08 17:09:42',
    916967,
    7747493372
  ),
(
    1996764409,
    84305.33,
    'C',
    'DEBIT',
    '1995-09-20 16:53:36',
    325373,
    3187839398
  ),
(
    1996764410,
    8448.86,
    'C',
    'DEBIT',
    '1970-01-01 00:06:20',
    548903,
    9999999999
  ),
(
    1996764411,
    64060.18,
    'C',
    'CREDIT',
    '1970-11-04 13:29:27',
    325370,
    6847493372
  ),
(
    3657669362,
    35621.34,
    'C',
    'DEBIT',
    '2007-08-24 21:22:57',
    638904,
    1071451536
  ),
(
    3657669363,
    51531.69,
    'C',
    'CREDIT',
    '2017-10-18 13:46:07',
    916966,
    4087839396
  ),
(
    3657669364,
    67171.51,
    'C',
    'CREDIT',
    '2001-05-10 23:56:33',
    638907,
    3187839399
  ),
(
    3657669365,
    99014.98,
    'C',
    'DEBIT',
    '1970-01-01 01:21:22',
    193984,
    6847493372
  ),
(
    3657669366,
    2968.13,
    'C',
    'DEBIT',
    '2006-01-27 12:00:51',
    638904,
    6259109363
  ),
(
    3657669367,
    67326.48,
    'C',
    'DEBIT',
    '1986-01-08 02:18:28',
    916966,
    3187839399
  ),
(
    3657669368,
    49384.77,
    'P',
    'DEBIT',
    '2013-10-26 01:06:55',
    103984,
    5359109360
  ),
(
    4557669363,
    33498.04,
    'C',
    'DEBIT',
    '1977-07-15 05:21:05',
    826969,
    6259109357
  ),
(
    4557669364,
    16918.58,
    'C',
    'DEBIT',
    '1985-04-26 22:21:24',
    325373,
    8707739666
  ),
(
    4557669365,
    34274.51,
    'C',
    'DEBIT',
    '1996-06-21 17:32:29',
    826969,
    6847493372
  ),
(
    4557669366,
    4334.68,
    'C',
    'CREDIT',
    '1970-01-01 00:00:10',
    415373,
    7747493371
  ),
(
    4557669367,
    5620.29,
    'C',
    'CREDIT',
    '1970-01-01 00:01:05',
    548905,
    9607739663
  ),
(
    4557669368,
    45059.24,
    'C',
    'CREDIT',
    '1997-10-30 23:25:19',
    415370,
    1971451536
  ),
(
    4557669369,
    77822.65,
    'C',
    'DEBIT',
    '1970-01-01 00:01:01',
    415372,
    1971451536
  ),
(
    4917768164,
    93570.56,
    'C',
    'DEBIT',
    '1976-03-15 02:46:07',
    415373,
    3187839397
  ),
(
    4917768165,
    53909.42,
    'P',
    'CREDIT',
    '1970-01-01 00:09:06',
    193986,
    6259109357
  ),
(
    4917768166,
    7070.89,
    'C',
    'CREDIT',
    '1993-10-17 07:55:13',
    415370,
    3187839398
  ),
(
    4917768167,
    88954.51,
    'C',
    'CREDIT',
    '1998-02-18 00:51:47',
    652816,
    5359109360
  ),
(
    5817768165,
    39335.96,
    'C',
    'DEBIT',
    '1970-01-01 00:37:23',
    916967,
    6259109357
  ),
(
    5817768166,
    53826.69,
    'F',
    'DEBIT',
    '1970-01-01 00:00:02',
    325371,
    6847493372
  ),
(
    5817768167,
    37142.51,
    'C',
    'CREDIT',
    '1990-09-20 12:24:02',
    415372,
    7747493373
  ),
(
    5817768168,
    84787.58,
    'P',
    'DEBIT',
    '1970-01-01 00:16:35',
    742811,
    3187839399
  ),
(
    6673909589,
    66249.91,
    'C',
    'CREDIT',
    '1997-11-27 09:06:57',
    742814,
    5359109360
  ),
(
    6673909590,
    67224.38,
    'C',
    'DEBIT',
    '1999-11-13 15:54:05',
    193985,
    6259109358
  ),
(
    6673909591,
    24174.75,
    'C',
    'DEBIT',
    '2000-08-24 04:40:12',
    548903,
    6259109359
  ),
(
    6673909592,
    80615.59,
    'C',
    'CREDIT',
    '1971-09-04 00:42:18',
    742814,
    5359109359
  ),
(
    6673909593,
    34789.10,
    'C',
    'DEBIT',
    '2005-03-04 16:26:50',
    415370,
    4087839398
  ),
(
    6673909594,
    52166.68,
    'C',
    'DEBIT',
    '1970-01-01 00:08:19',
    652811,
    6259109360
  ),
(
    6673909595,
    42614.33,
    'C',
    'DEBIT',
    '1996-04-22 23:50:12',
    916964,
    4087839395
  ),
(
    7573909590,
    61390.15,
    'C',
    'CREDIT',
    '1970-01-01 00:01:03',
    193984,
    3187839396
  ),
(
    7573909591,
    50078.75,
    'C',
    'DEBIT',
    '2004-07-30 05:31:31',
    826969,
    6847493373
  ),
(
    7573909592,
    65706.77,
    'C',
    'CREDIT',
    '2004-08-22 11:52:40',
    193985,
    5359109361
  ),
(
    7573909593,
    35863.95,
    'C',
    'DEBIT',
    '1997-04-06 23:58:27',
    548906,
    3187839399
  ),
(
    7573909594,
    72071.63,
    'C',
    'DEBIT',
    '1970-01-01 00:01:27',
    103984,
    8707739667
  ),
(
    7573909595,
    76382.21,
    'C',
    'CREDIT',
    '2010-03-01 15:01:45',
    193983,
    4087839396
  ),
(
    8735848998,
    4904.72,
    'C',
    'CREDIT',
    '2011-08-22 06:04:12',
    638904,
    6259109360
  ),
(
    8735848999,
    17316.76,
    'C',
    'CREDIT',
    '1970-01-01 01:53:56',
    548903,
    7747493370
  ),
(
    8735849000,
    27581.60,
    'C',
    'DEBIT',
    '1992-01-08 00:15:40',
    652812,
    4087839399
  ),
(
    9635848995,
    9140.59,
    'C',
    'DEBIT',
    '1970-01-01 00:01:04',
    415373,
    3187839401
  ),
(
    9635848996,
    50022.05,
    'C',
    'CREDIT',
    '1988-04-17 07:13:52',
    325373,
    5359109357
  ),
(
    9635848997,
    31449.93,
    'C',
    'DEBIT',
    '2001-04-10 15:00:43',
    916966,
    4087839401
  ),
(
    9999999999,
    28498.55,
    'C',
    'DEBIT',
    '2003-07-26 01:25:30',
    548906,
    5359109357
  );
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */
;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2022-03-01  8:11:07