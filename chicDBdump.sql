-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: chicandholland
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_bank`
--

DROP TABLE IF EXISTS `admin_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `bank_name` text DEFAULT NULL,
  `account_number` text DEFAULT NULL,
  `account_holder` text DEFAULT NULL,
  `ifsc_code` text DEFAULT NULL,
  `swift_code` text DEFAULT NULL,
  `currencyId` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `address` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2cf876e8bfb6f13feee30a05195` (`currencyId`),
  CONSTRAINT `FK_2cf876e8bfb6f13feee30a05195` FOREIGN KEY (`currencyId`) REFERENCES `currencies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_bank`
--

LOCK TABLES `admin_bank` WRITE;
/*!40000 ALTER TABLE `admin_bank` DISABLE KEYS */;
INSERT INTO `admin_bank` VALUES (1,'2025-12-09 10:31:48.576074',NULL,'7af0b75dfaa88c299c74e2e58ad95930','d40b0754bcd792643b3473c2a49340f5','7af0b75dfaa88c299c74e2e58ad95930','9aec9f3dfa4a1529a0de553471e8389e',NULL,4,1,'bank of india\n'),(2,'2025-12-09 10:32:40.260192',NULL,'eef3c1fdc308e247e59ea2f1774342a5','d40b0754bcd792643b3473c2a49340f5','ae58af383f1bd798d45e088ee7c5ea36','9aec9f3dfa4a1529a0de553471e8389e',NULL,1,1,'apna bank\n'),(3,'2025-12-09 10:33:28.226837',NULL,'5006f7149b6dacee0c6de8871e951b8a','acaf014b72dfa2cdee2b7056c61ec827','8e8cb632d636b2035933062970d09c6c','9aec9f3dfa4a1529a0de553471e8389e',NULL,2,1,'utkarsh\n'),(4,'2025-12-09 10:35:21.374959',NULL,'e8f02839cbcf69085a60866b2be1e1faf6ea8c5d87706a5748574124342470ee','90d5b07cc16777ac88954dfde5ef3300','91bf3d401c694d38e00325b82b58230a','9aec9f3dfa4a1529a0de553471e8389e',NULL,3,1,'international'),(5,'2025-12-30 18:31:27.716874',NULL,'b4a246df205bba924f69e9fe95f3d9ca','27574d41682272f57a35e9bc296217a9','8e8cb632d636b2035933062970d09c6c','9aec9f3dfa4a1529a0de553471e8389e',NULL,4,1,'hello'),(6,'2025-12-30 22:33:09.410224',NULL,'33e4eb698d7036a3e3dc70b3521fa2c5','bed07f487a40610ee7feb74dbd784db1','33e4eb698d7036a3e3dc70b3521fa2c5','9aec9f3dfa4a1529a0de553471e8389e','05548c933f446ff0e9a6790180107e41',4,1,'hello'),(7,'2025-12-30 23:04:30.348942',NULL,'5faf4fdb0df59e0f7d271470965bdb8e','acaf014b72dfa2cdee2b7056c61ec827','8e8cb632d636b2035933062970d09c6c','9aec9f3dfa4a1529a0de553471e8389e','05548c933f446ff0e9a6790180107e41',2,1,'hello');
/*!40000 ALTER TABLE `admin_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodydetails`
--

DROP TABLE IF EXISTS `bodydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodydetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `height` int(11) NOT NULL,
  `head` int(11) NOT NULL,
  `neck` int(11) NOT NULL,
  `hip` int(11) NOT NULL,
  `shoulderToWaist` int(11) NOT NULL,
  `sleeveLength` int(11) NOT NULL,
  `armTurn` int(11) NOT NULL,
  `shoeSize` int(11) NOT NULL,
  `waistLengthBehind` int(11) NOT NULL,
  `shoulderLength` int(11) NOT NULL,
  `bustCircumference` int(11) NOT NULL,
  `waistCircumference` int(11) NOT NULL,
  `waistToKnee` int(11) NOT NULL,
  `waistToAnkle` int(11) NOT NULL,
  `waistLengthBehind_two` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodydetails`
--

LOCK TABLES `bodydetails` WRITE;
/*!40000 ALTER TABLE `bodydetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `bodydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `priority` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_8b0be371d28245da6e4f4b6187` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'2025-12-09 10:39:59.075964',NULL,'BRIDAL',1),(2,'2025-12-09 10:40:11.968896',NULL,'AFTER FIVE',2);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `proximity` int(11) NOT NULL,
  `latitude` varchar(250) NOT NULL,
  `longitude` varchar(250) NOT NULL,
  `city_name` varchar(250) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_05e1e54c5074b7c80bdf109d34` (`customerId`),
  CONSTRAINT `FK_05e1e54c5074b7c80bdf109d347` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'2025-12-09 11:03:24.647850',NULL,'success','J675+HGG, Rajpath Area, Central Secretariat, New Delhi, Delhi 110001, India',10,'28.6139298','77.2088282','noida',0,1),(2,'2025-12-19 11:32:15.291659',NULL,'aman','Rajasthan, India',50,'27.0238036','74.21793260000001','saran',0,2),(3,'2025-12-24 17:17:53.802316',NULL,'Bill\'s Windsurf Shop','12 Oceanview Ave, Half Moon Bay, CA 94019, USA',1,'37.4307072','-122.4295234','Half Moon Bay',0,43),(4,'2025-12-24 17:17:54.451417',NULL,'Cool Cars','108 Oceanview Ave, Half Moon Bay, CA 94019, USA',1,'37.4300318','-122.4336537','Half Moon Bay',0,87),(5,'2025-12-24 17:17:54.918572',NULL,'Diego Rodriguez','325 Channing Ave, Palo Alto, CA 94301, USA',1,'37.443231','-122.1561846','Palo Alto',0,110),(6,'2025-12-24 17:17:55.386129',NULL,'Dukes Basketball Camp','4302 N Oracle Rd, Tucson, AZ 85705, USA',1,'32.2841116','-110.9744298','Tucson',0,132),(7,'2025-12-24 17:17:56.124998',NULL,'Freeman Sporting Goods','515 Easy St, Mountain View, CA 94043, USA',1,'37.4031672','-122.0642815','Mountain View',1,174),(8,'2025-12-24 17:17:56.426126',NULL,'Freeman Sporting Goods','515 Easy St, Mountain View, CA 94043, USA',1,'37.4031672','-122.0642815','Mountain View',1,175),(9,'2025-12-24 17:17:56.648469',NULL,'Freeman Sporting Goods','515 Easy St, Mountain View, CA 94043, USA',1,'37.4031672','-122.0642815','Mountain View',0,176),(10,'2025-12-24 17:17:56.885927',NULL,'Geeta Kalapatapu','1213 Newell Rd, Palo Alto, CA 94303, USA',1,'37.445013','-122.1391443','Palo Alto',0,178),(11,'2025-12-24 17:17:57.088301',NULL,'Gevelber Photography','700 Arnold Way, Half Moon Bay, CA 94019, USA',1,'37.4559621','-122.429939','Half Moon Bay',0,179),(12,'2025-12-24 17:17:57.637346',NULL,'Jeff\'s Jalopies','Willow Rd & Alma St, Menlo Park, CA 94025, USA',1,'37.4495308','-122.1726923','Menlo Park',0,209),(13,'2025-12-24 17:17:58.053054',NULL,'John Melton','1259 Pine St, Palo Alto, CA 94301, USA',1,'37.4451342','-122.1409626','Palo Alto',0,215),(14,'2025-12-24 17:17:58.304310',NULL,'Kate Whelan','1781 E Bayshore Rd, East Palo Alto, CA 94303, USA',1,'37.4585825','-122.1352789','East Palo Alto',0,222),(15,'2025-12-24 17:17:58.530468',NULL,'Kookies by Kathy','FV3J+6V Palo Alto, CA, USA',1,'37.4530553','-122.1178261','Palo Alto',0,226),(16,'2025-12-24 17:17:59.364871',NULL,'Mark Cho','36 Willow Rd, Menlo Park, CA 94025, USA',1,'37.450412','-122.170593','Menlo Park',0,288),(17,'2025-12-24 17:18:00.200175',NULL,'Paulsen Medical Supplies','Hillview & VMware, Palo Alto, CA 94304, USA',1,'37.3989376','-122.1443935','Palo Alto',0,350),(18,'2025-12-24 17:18:00.508847',NULL,'Pye\'s Cakes','421 Lincoln Ave, City of Orange, NJ 07050, USA',1,'40.7633073','-74.2426072','City of Orange',0,363),(19,'2025-12-24 17:18:00.723011',NULL,'Rago Travel Agency','608 Cedar Ct, Daly City, CA 94014, USA',1,'37.7077016','-122.4273232','Daly City',0,366),(20,'2025-12-24 17:18:01.064248',NULL,'Rondonuwu Fruit and Vegi','1084 The Alameda, San Jose, CA 95126, USA',1,'37.3313585','-121.911372','San Jose',0,381),(21,'2025-12-24 17:18:01.474259',NULL,'Shara Barnett','University Circle @ Caltrain Platform, Palo Alto, CA 94301, USA',1,'37.4431445','-122.164443','Palo Alto',0,405),(22,'2025-12-24 17:18:01.612155',NULL,'Barnett Design','1213 Newell Rd, Palo Alto, CA 94303, USA',1,'37.445013','-122.1391443','Palo Alto',0,406),(23,'2025-12-24 17:18:01.902383',NULL,'Sonnenschein Family Store','Middlefield & Meadow, Palo Alto, CA 94306, USA',1,'37.4238562','-122.1141681','Palo Alto',0,417),(24,'2025-12-24 17:18:02.188000',NULL,'Sushi by Katsuyuki','558 Prospect St, Maplewood, NJ 07040, USA',1,'40.7312816','-74.2652908','Maplewood',0,429),(25,'2025-12-24 17:18:02.575022',NULL,'Travis Waldron','1781 E Bayshore Rd, East Palo Alto, CA 94303, USA',1,'37.4585825','-122.1352789','East Palo Alto',0,452),(26,'2025-12-24 17:18:02.937927',NULL,'Video Games by Dan','207 N Main Ave, Tucson, AZ 85701, USA',1,'32.2242351','-110.9758242','Tucson',0,469),(27,'2025-12-24 17:18:03.181997',NULL,'Wedding Planning by Whitney','133 Broadway, Redwood City, CA 94063, USA',1,'37.4846734','-122.1989488','Redwood City',0,475),(28,'2025-12-24 17:18:03.353069',NULL,'Weiskopf Consulting','139 Main St W, Saint John, NB E2M 3N6, Canada',1,'45.256574','-66.0943698','Saint John',0,476),(29,'2025-12-25 10:33:55.641361',NULL,'AA GROUP SRL','Üsküdar/İstanbul, Türkiye',50,'41.0189417','29.0576298','saran',0,3),(30,'2025-12-26 15:55:25.139552',NULL,'SARTORIA STEFY','High Rd, London, UK',50,'51.5904429','-0.1034232','london',0,399),(31,'2025-12-26 17:00:17.579593',NULL,'sanorita','PCFM+429, Ward 13, Punjabi Para, Siliguri, West Bengal 734001, India',50,'26.7227996','88.43260049999999','sanorita',0,490);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_chart`
--

DROP TABLE IF EXISTS `color_chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageUrl` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_chart`
--

LOCK TABLES `color_chart` WRITE;
/*!40000 ALTER TABLE `color_chart` DISABLE KEYS */;
INSERT INTO `color_chart` VALUES (1,'http://localhost:5001/static/settings/color-chart-1767087475947.png','2025-12-30 15:07:55.954901','2025-12-30 15:07:55.954901');
/*!40000 ALTER TABLE `color_chart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(35) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phoneNumber` varchar(225) DEFAULT NULL,
  `subject` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `message` text NOT NULL,
  `isRead` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (1,'2025-12-09 10:37:50.195083',NULL,'Aman kumar','amankumarparsa1@gmail.com','+916202326924','developer','India','bihar','hello dear',1),(2,'2025-12-09 11:19:41.218049',NULL,'Aman kumar','amankumarparsa1@gmail.com','+916202326924','developer','India','bihar','thism is development\n',0),(3,'2025-12-09 11:56:59.074267',NULL,'Aman kumar','amankumarparsa1@gmail.com','+916202326924','developer','India','bihar','tohra aisan bhai kaha \n',1),(4,'2025-12-30 17:47:25.151088',NULL,'BRIDAL','Info@afterfivefashion.com','+916202326924','sgahujk','shcdgh','hfvcbh',' chwgdcushuaj',0),(5,'2025-12-30 17:47:58.958178',NULL,'Aman kumar','amankumrsuccess617@gmail.com','+916202326924','sgahujk','wstdryudge','augfi','hasytdfuyixgkeaguseje we   u vgceyqew tfweiu eqwuwuge',1),(6,'2025-12-30 17:49:06.974107',NULL,'dnbfui','zainarmaan60@gmail.com','+917226421625','sd hv ehbh','india','hfvcbh','AXFFHDJKWAHISFH',0);
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `country_name` varchar(30) NOT NULL,
  `country_currency` varchar(30) NOT NULL,
  `currency_icon` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_7b43bd0eebff4e8dd4910d70ff` (`country_name`),
  UNIQUE KEY `IDX_8bd7fceff396ab27d6eafda9f1` (`country_currency`),
  UNIQUE KEY `IDX_04b5557fdffc96d7321cbc29c3` (`currency_icon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `code` varchar(256) DEFAULT NULL,
  `currency_symbol` varchar(256) DEFAULT NULL,
  `currency_name` varchar(256) DEFAULT NULL,
  `currency_short_name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'2025-12-08 18:34:18.811811',NULL,'India','IN','₹','Indian Rupee','INR'),(2,'2025-12-08 18:34:18.816066',NULL,'United States','US','$','US Dollar','USD'),(3,'2025-12-08 18:34:18.820389',NULL,'United Kingdom','GB','£','British Pound','GBP'),(4,'2025-12-08 18:34:18.825250',NULL,'Germany','DE','€','Euro','EUR'),(5,'2025-12-08 18:34:18.829062',NULL,'France','FR','€','Euro','EUR'),(6,'2025-12-08 18:34:18.832387',NULL,'Italy','IT','€','Euro','EUR'),(7,'2025-12-08 18:34:18.835332',NULL,'Spain','ES','€','Euro','EUR'),(8,'2025-12-08 18:34:18.839094',NULL,'Netherlands','NL','€','Euro','EUR'),(9,'2025-12-08 18:34:18.843106',NULL,'Australia','AU','A$','Australian Dollar','AUD'),(10,'2025-12-08 18:34:18.846596',NULL,'United Arab Emirates','AE','د.إ','UAE Dirham','AED');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `isDefault` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_9f8d0972aeeb5a2277e40332d2` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'2025-12-08 18:34:18.784970',NULL,'EUR','Euro','€',1),(2,'2025-12-08 18:34:18.794861',NULL,'USD','US Dollar','$',0),(3,'2025-12-08 18:34:18.800831',NULL,'GBP','British Pound','£',0),(4,'2025-12-08 18:34:18.804274',NULL,'INR','Indian Rupee','₹',0);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `storeName` varchar(50) NOT NULL,
  `storeAddress` varchar(200) NOT NULL,
  `website` varchar(225) DEFAULT NULL,
  `phoneNumber` text DEFAULT NULL,
  `contactPerson` varchar(50) NOT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `email` text DEFAULT NULL,
  `quickbooksCustomerId` varchar(255) DEFAULT NULL,
  `lastLoginTime` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `countryId` int(11) DEFAULT NULL,
  `currencyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_19a69c8a488418c3bf267f5d27a` (`countryId`),
  KEY `FK_fc6789eda3636ae909a9e9559c5` (`currencyId`),
  CONSTRAINT `FK_19a69c8a488418c3bf267f5d27a` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_fc6789eda3636ae909a9e9559c5` FOREIGN KEY (`currencyId`) REFERENCES `currencies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'2025-12-09 11:03:24.665883',NULL,'success','success','J675+HGG, Rajpath Area, Central Secretariat, New Delhi, Delhi 110001, India','www.success.com','+916202326924','62023216516',1,0,'Info@afterfivefashion.com',NULL,'2025-12-26 15:48:40.000000',1,4),(2,'2025-12-19 11:32:15.311033',NULL,'aman','aman','Rajasthan, India','www.success.com','+916202326924','62023216516',1,0,'amankumarparsa1@gmail.com',NULL,'2025-12-19 11:32:15.311033',2,2),(3,'2025-12-24 17:17:53.061565',NULL,'AA SRL','AA GROUP SRL','Üsküdar/İstanbul, Türkiye','www.success.com','21435y63241','62023216516',1,0,'commerciale@aagroup.it','58','2025-12-25 10:33:55.000000',2,3),(4,'2025-12-24 17:17:53.078643',NULL,'ABBIGLIAMENTO X','ABBIGLIAMENTO X','','','No phone','ABBIGLIAMENTO X',1,0,'TI.GI.GROUP@GMAIL.COM','59','2025-12-24 17:17:53.078643',NULL,NULL),(5,'2025-12-24 17:17:53.096776',NULL,'AFFINITY','AFFINITY','','','No phone','AFFINITY',1,0,'no-email@example.com','60','2025-12-24 17:17:53.096776',NULL,NULL),(6,'2025-12-24 17:17:53.105604',NULL,'AFTER FIVE','AFTER FIVE','2030-6060 Minoru Blvd, Richmond, BC V6Y2V7','','+17788955258','AFTER FIVE',1,0,'Info@afterfivefashion.com','61','2025-12-24 17:17:53.105604',NULL,NULL),(7,'2025-12-24 17:17:53.119218',NULL,'AIMEE BRIDAL','AIMEE MICHELLE BRIDAL','','','+18543730910','AIMEE BRIDAL',1,0,'ambridal999@gmail.com','62','2025-12-24 17:17:53.119218',NULL,NULL),(8,'2025-12-24 17:17:53.128347',NULL,'Alex Blair','Alex Blair',' Houston, TX, undefined undefined','','No phone','Alex Blair',1,0,'alexblair05@icloud.com','63','2025-12-24 17:17:53.128347',NULL,NULL),(9,'2025-12-24 17:17:53.143111',NULL,'Aliyah Dresses','Aliyah Dresses','','','No phone','Aliyah Dresses',1,0,'aliyahdress42@gmail.com','64','2025-12-24 17:17:53.143111',NULL,NULL),(10,'2025-12-24 17:17:53.153546',NULL,'Aliyahs Styling','Aliyahs Styling','Dunantstraat 1149, Zoetermeer, undefined 2713TP','','No phone','Aliyahs Styling',1,0,'Ghita_allouche@hotmail.com','65','2025-12-24 17:17:53.153546',NULL,NULL),(11,'2025-12-24 17:17:53.163620',NULL,'ALIYAM Dress','ALIYAM Dress','08 rue des villas, Villars, undefined 42390','','No phone','ALIYAM Dress',1,0,'benhassine.amel42@gmail.com','66','2025-12-24 17:17:53.163620',NULL,NULL),(12,'2025-12-24 17:17:53.175422',NULL,'Allison','Allison','','','+19174062561','Allison',1,0,'mrsbakerweiss@aol.com','67','2025-12-24 17:17:53.175422',NULL,NULL),(13,'2025-12-24 17:17:53.187400',NULL,'ALY Boutique','ALY Boutique','','','No phone','ALY Boutique',1,0,'no-email@example.com','68','2025-12-24 17:17:53.187400',NULL,NULL),(14,'2025-12-24 17:17:53.195933',NULL,'Alyazia Hamad','Alyazia Saeed Hamad','C1 Villa Number 845, Abu Dhabi, undefined undefined','','No phone','Alyazia Hamad',1,0,'as15021987@hotmail.com','69','2025-12-24 17:17:53.195933',NULL,NULL),(15,'2025-12-24 17:17:53.205553',NULL,'Alyssa Couture','Alyssa Couture','Gildehauserstrasse 32, Gronau  (Westfalen), undefined 48599','','+49 6505 13918','Alyssa Couture',1,0,'Cavasariette@hotmail.com','70','2025-12-24 17:17:53.205553',NULL,NULL),(16,'2025-12-24 17:17:53.216789',NULL,'AMBASSADE','AMBASSADE','Havenstraat 162, undefined, Bussum 1404 EN','','0641127328','AMBASSADE',1,0,'monique@ambassadevof.nl','71','2025-12-24 17:17:53.216789',NULL,NULL),(17,'2025-12-24 17:17:53.228231',NULL,'Amore Cph','Amore Cph','H. C. Ørsteds Vej 59, Frederiksberg C, undefined 1879','','+45 28234269','Amore Cph',1,0,'amorecph@gmail.com','72','2025-12-24 17:17:53.228231',NULL,NULL),(18,'2025-12-24 17:17:53.237824',NULL,'Amy Lauterbach','Amy\'s Bird Sanctuary','4581 Finch St., Bayshore, CA 94326','','(650) 555-3311','Amy Lauterbach',1,0,'Birds@Intuit.com','1','2025-12-24 17:17:53.237824',NULL,NULL),(19,'2025-12-24 17:17:53.246954',NULL,'Anastazia','Anastazia Nyfika','Mark. Mousourou 24, Iraklio 712 01, Greece, undefined, undefined undefined','','+302810243232','Anastazia',1,0,'anastazia.par@gmail.com','73','2025-12-24 17:17:53.246954',NULL,NULL),(20,'2025-12-24 17:17:53.257127',NULL,'Anita','Anita','','','0655890855','Anita',1,0,'anita_melhem@hotmail.com','74','2025-12-24 17:17:53.257127',NULL,NULL),(21,'2025-12-24 17:17:53.268264',NULL,'Areen Sbaih','Areen Sbaih','','','No phone','Areen Sbaih',1,0,'areen.sbaih21@gmail.com','75','2025-12-24 17:17:53.268264',NULL,NULL),(22,'2025-12-24 17:17:53.282841',NULL,'Armaan','Armaan','','','No phone','Armaan',1,0,'faiza_talat@hotmail.com','76','2025-12-24 17:17:53.282841',NULL,NULL),(23,'2025-12-24 17:17:53.295408',NULL,'ArtDress','ArtDress','60 Rue du Faubourg Saint-Honoré, Paris, undefined 75008','','+33612605128','ArtDress',1,0,'holivier.fbg@gmail.com','77','2025-12-24 17:17:53.295408',NULL,NULL),(24,'2025-12-24 17:17:53.308435',NULL,'Asa Design','Asa Design','Take Wikstromgata 16, Grebbestad, undefined 45772','','46705652776','Asa Design',1,0,'no-email@example.com','78','2025-12-24 17:17:53.308435',NULL,NULL),(25,'2025-12-24 17:17:53.321267',NULL,'ASEAL','ASEAL','','','No phone','ASEAL',1,0,'Asealwahdan@gmail.com','79','2025-12-24 17:17:53.321267',NULL,NULL),(26,'2025-12-24 17:17:53.332874',NULL,'Aseal Wahdan','Aseal Wahdan','','','No phone','Aseal Wahdan',1,0,'Asealwahdan@gmail.com','80','2025-12-24 17:17:53.332874',NULL,NULL),(27,'2025-12-24 17:17:53.345495',NULL,'Ashuraita','Ashuraita','','','No phone','Ashuraita',1,0,'ashurbridal@gmail.com','81','2025-12-24 17:17:53.345495',NULL,NULL),(28,'2025-12-24 17:17:53.353943',NULL,'ATELIER SRL','ATELIER 14 SRL','VIA BERLINGUER 5 , CAVA MANARA (PV), undefined, undefined 27051','','No phone','ATELIER SRL',1,0,'vvillani@lucabalzari.it','82','2025-12-24 17:17:53.353943',NULL,NULL),(29,'2025-12-24 17:17:53.366768',NULL,'Atelier Antuono','Atelier D\' Antuono','','','+39 338 834 3970','Atelier Antuono',1,0,'dantuonosposi@libero.it','83','2025-12-24 17:17:53.366768',NULL,NULL),(30,'2025-12-24 17:17:53.378769',NULL,'Atelier Ketty','Atelier Ketty','Via Trieste e Trento, 7/9, Acerra NA, undefined 80011','','+39 081 520 9497','Atelier Ketty',1,0,'atelierketty@alice.it','84','2025-12-24 17:17:53.378769',NULL,NULL),(31,'2025-12-24 17:17:53.390854',NULL,'ATELIERS SILVEIRA','ATELIERS LUCINHA SILVEIRA','R. Antônio Alves Massaneiro, 229 – Centro,, Cascavel, undefined 85812-090','','+5545999127913','ATELIERS SILVEIRA',1,0,'lucianotoledoo@gmail.com','85','2025-12-24 17:17:53.390854',NULL,NULL),(32,'2025-12-24 17:17:53.402461',NULL,'atharrr','atharrr','','','No phone','atharrr',1,0,'no-email@example.com','86','2025-12-24 17:17:53.402461',NULL,NULL),(33,'2025-12-24 17:17:53.414874',NULL,'Aurelia','Aurelia','','','No phone','Aurelia',1,0,'artaureliap@gmail.com','87','2025-12-24 17:17:53.414874',NULL,NULL),(34,'2025-12-24 17:17:53.426102',NULL,'Aytenler','Aytenler','Mimar Kemalettin Cad. No:42/1, Cankaya Izmir, undefined 35000','','0232 4835514','Aytenler',1,0,'ugur.altmiskara@aytenler.com.tr','88','2025-12-24 17:17:53.426102',NULL,NULL),(35,'2025-12-24 17:17:53.436327',NULL,'Balayi Hamburg','Balayi Hamburg','Billhorner Kanalstr. 1, Hamburg, undefined 20539','','040 – 780 89 351','Balayi Hamburg',1,0,'info@balayi-hamburg.de','89','2025-12-24 17:17:53.436327',NULL,NULL),(36,'2025-12-24 17:17:53.444937',NULL,'beautedunsoirmarseille','beautedunsoirmarseille','Chemin de la Foret, Allauch, undefined 13190','','+33622481907','beautedunsoirmarseille',1,0,'marjo256@yahoo.fr','90','2025-12-24 17:17:53.444937',NULL,NULL),(37,'2025-12-24 17:17:53.459545',NULL,'Bella Dress','Bella Dress','','','No phone','Bella Dress',1,0,'belladress-gi@hotmail.com','91','2025-12-24 17:17:53.459545',NULL,NULL),(38,'2025-12-24 17:17:53.469354',NULL,'Bellavita Gowns','Bellavita Gowns','200 Tanger Outlets blup, Georgia, undefined 31322','','3093506404','Bellavita Gowns',1,0,'info@bellavitagowns.com','92','2025-12-24 17:17:53.469354',NULL,NULL),(39,'2025-12-24 17:17:53.477837',NULL,'Belle Blanc','Belle En Blanc','Avenue du Leman 34, CH 1005 Lausanne , Switzerland, undefined, undefined undefined','','+41792960751','Belle Blanc',1,0,'Olga@belle-en-blanc.com','93','2025-12-24 17:17:53.477837',NULL,NULL),(40,'2025-12-24 17:17:53.485569',NULL,'Bellisima Wedding','Bellisima Wedding','22 Market Square, South Woodham, Ferrers, undefined CM3 5XA','','+44 1245 323585','Bellisima Wedding',1,0,'online@bellissimaweddings.co.uk','94','2025-12-24 17:17:53.485569',NULL,NULL),(41,'2025-12-24 17:17:53.495156',NULL,'Belotti Couture','Belotti Couture','97 Boulevard Carnot, Cannes, undefined 06400','','+33612562986','Belotti Couture',1,0,'sandrinebelotti@gmail.com','95','2025-12-24 17:17:53.495156',NULL,NULL),(42,'2025-12-24 17:17:53.502906',NULL,'BIANCA','BIANCA','68b Ulicia Slobode, Podgorica, undefined 81000','','+38267622544','BIANCA',1,0,'weddings.bianca@gmail.com','96','2025-12-24 17:17:53.502906',NULL,NULL),(43,'2025-12-24 17:17:53.812116',NULL,'Bill Lucchini','Bill\'s Windsurf Shop','12 Oceanview Ave, Half Moon Bay, CA 94019, USA','','(415) 444-6538','Bill Lucchini',1,0,'Surf@Intuit.com','2','2025-12-24 17:17:53.812116',NULL,NULL),(44,'2025-12-24 17:17:53.831451',NULL,'Blaque Couture','Blaque Couture','Wilhelminastraat 43a, Haarlem, undefined 2011 VK','','023-5329924','Blaque Couture',1,0,'info@blaque.nl','97','2025-12-24 17:17:53.831451',NULL,NULL),(45,'2025-12-24 17:17:53.843921',NULL,'BLESS IMPORT','BLESS IMPORT','','','No phone','BLESS IMPORT',1,0,'no-email@example.com','98','2025-12-24 17:17:53.843921',NULL,NULL),(46,'2025-12-24 17:17:53.855421',NULL,'Blush Boutique','Blush Bridal Boutique','','','No phone','Blush Boutique',1,0,'blushbridalwhitehaven@outlook.com','99','2025-12-24 17:17:53.855421',NULL,NULL),(47,'2025-12-24 17:17:53.866621',NULL,'Boryana Trade Ltd.','Boryana Velikova Trade Ltd.','Boryana Velikova Trade Ltd. VAT ID: BG202796217, Sofia, undefined 1164','','+359892207876','Boryana Trade Ltd.',1,0,'bequeenbg@gmail.com','100','2025-12-24 17:17:53.866621',NULL,NULL),(48,'2025-12-24 17:17:53.877625',NULL,'Boutique Aps','Boutique Nicolai Aps','Frederikssundsvej 221, Brønshøj, undefined 2700','','+4533158066','Boutique Aps',1,0,'nicolai@nicolai-brudekjoler.dk','101','2025-12-24 17:17:53.877625',NULL,NULL),(49,'2025-12-24 17:17:53.887048',NULL,'BRAUT ABENDMODEN GMBH','BRAUT & ABENDMODEN GMBH','A-4623 Gunskirchen, Lindenthalstrabe 1, undefined, undefined undefined','','No phone','BRAUT ABENDMODEN GMBH',1,0,'christine@haenselundgretel.at','102','2025-12-24 17:17:53.887048',NULL,NULL),(50,'2025-12-24 17:17:53.899948',NULL,'Brautblute','Brautblute','','','+4915773519654','Brautblute',1,0,'accounting@brautbluete.de','103','2025-12-24 17:17:53.899948',NULL,NULL),(51,'2025-12-24 17:17:53.911593',NULL,'Bravura','Bravura','4150 Old Milton Parkway, Alpharetta, Georgia 30005','','+17709778916','Bravura',1,0,'shirley@bravurafashion.com','104','2025-12-24 17:17:53.911593',NULL,NULL),(52,'2025-12-24 17:17:53.920285',NULL,'Breeze Boutique','Breeze Bridal Boutique','906 & 908 & 912 E Broadway Downtown Columbia, Missouri, undefined 65201','','573 639 0561','Breeze Boutique',1,0,'breezedress@aol.com','105','2025-12-24 17:17:53.920285',NULL,NULL),(53,'2025-12-24 17:17:53.928408',NULL,'BRIDAL EVENING GOWNS','BRIDAL & EVENING GOWNS','Room 204, Orient International Tower 1016 Tai Nan West Street Lai Chi kok, undefined, undefined undefined','','No phone','BRIDAL EVENING GOWNS',1,0,'thebridalroomhk@gmail.com','106','2025-12-24 17:17:53.928408',NULL,NULL),(54,'2025-12-24 17:17:53.936891',NULL,'Bridal Boutique','Bridal Boutique','13212 SW 8th Street, Miami, Florida 33184','','305 223 4340','Bridal Boutique',1,0,'Bridalboutiquecorp@gmail.com','107','2025-12-24 17:17:53.936891',NULL,NULL),(55,'2025-12-24 17:17:53.945430',NULL,'Bridal CL','Bridal CL','Via Modena,14, Cerignola, Puglia, Italy., Cerignola, undefined 71042','','+390885328279','Bridal CL',1,0,'pattylanotte1991@libero.it','108','2025-12-24 17:17:53.945430',NULL,NULL),(56,'2025-12-24 17:17:53.954363',NULL,'Brides scotland','Brides of scotland','Marina, undefined, undefined undefined','','+44 7834 734267','Brides scotland',1,0,'ladygfashions@yahoo.co.uk, info@bridesofscotland.co.uk','109','2025-12-24 17:17:53.954363',NULL,NULL),(57,'2025-12-24 17:17:53.964381',NULL,'Bright Switzerland','Bright Events Switzerland','Avenue d\'Echallens 48, Lausanne, undefined 1004','','41 78 653 26 20','Bright Switzerland',1,0,'no-email@example.com','110','2025-12-24 17:17:53.964381',NULL,NULL),(58,'2025-12-24 17:17:53.977355',NULL,'BRILLIANCE BRIDAL','BRILLIANCE BRIDAL','','','+17322005505','BRILLIANCE BRIDAL',1,0,'brilliancequinceanera@gmail.com','111','2025-12-24 17:17:53.977355',NULL,NULL),(59,'2025-12-24 17:17:53.985944',NULL,'Brisha & export com','Brisha import & export com',' Amman, undefined undefined','','+962799897969','Brisha & export com',1,0,'gateoffashion@gmail.com','112','2025-12-24 17:17:53.985944',NULL,NULL),(60,'2025-12-24 17:17:53.994616',NULL,'Brizan Couture','Brizan Couture','827 N Washington St Suite 103, Naperville, IL 60563, United States, undefined, undefined undefined','','6304281414','Brizan Couture',1,0,'brizancouture@sbcglobal.net','113','2025-12-24 17:17:53.994616',NULL,NULL),(61,'2025-12-24 17:17:54.002685',NULL,'Brudekjoler','Brudekjoler','Slotsgade 19, Grasten, undefined 6300','','74650766','Brudekjoler',1,0,'info@brudekjoler-lailahelt.dk','114','2025-12-24 17:17:54.002685',NULL,NULL),(62,'2025-12-24 17:17:54.009581',NULL,'Butik Jadore','Butik Jadore','Anelystparken 33 D, undefined, undefined 8381','','No phone','Butik Jadore',1,0,'sibel_naz@hotmail.com','115','2025-12-24 17:17:54.009581',NULL,NULL),(63,'2025-12-24 17:17:54.019386',NULL,'Butik Karrizma','Butik Karrizma','Skanderborgvej 169, Viby J, undefined 8260','','20276227','Butik Karrizma',1,0,'butikkarrizma@yahoo.dk','116','2025-12-24 17:17:54.019386',NULL,NULL),(64,'2025-12-24 17:17:54.031210',NULL,'Cabella Bridals','Cabella Bridals','','','No phone','Cabella Bridals',1,0,'xbl88@yahoo.com.hk','117','2025-12-24 17:17:54.031210',NULL,NULL),(65,'2025-12-24 17:17:54.040059',NULL,'Cagteks V.I.P.','Cagteks V.I.P.','69 Khagani str. Baku, Azerbaijn, undefined undefined','','+994 50 598 31 39','Cagteks V.I.P.',1,0,'gulyavekilova@rambler.ru','118','2025-12-24 17:17:54.040059',NULL,NULL),(66,'2025-12-24 17:17:54.050778',NULL,'Canovas22cerimonias','Canovas22cerimonias','Calle Garcia Plata de Osma, 4 Caceres , Spain, undefined, undefined undefined','','+34627483743','Canovas22cerimonias',1,0,'canovas22celebra@gmail.com','119','2025-12-24 17:17:54.050778',NULL,NULL),(67,'2025-12-24 17:17:54.063093',NULL,'CASART','CASART','Praceta Jose Rejio no.12-A, Bobadela, Lisbon, undefined 2695050','','+351965562858','CASART',1,0,'realizarumsonho@gmail.com','120','2025-12-24 17:17:54.063093',NULL,NULL),(68,'2025-12-24 17:17:54.074519',NULL,'Castle Couture','Castle Couture','355 US Highway 9, New Jersey, undefined NJ 07726','','No phone','Castle Couture',1,0,'Brianna@castlecouturenj.com','121','2025-12-24 17:17:54.074519',NULL,NULL),(69,'2025-12-24 17:17:54.084213',NULL,'Catherines Partick','Catherines of Partick','106-114 Dumbarton Rd,, Glasgow, undefined G11 6NY','','No phone','Catherines Partick',1,0,'info@catherinesofpartick.co.uk','122','2025-12-24 17:17:54.084213',NULL,NULL),(70,'2025-12-24 17:17:54.091743',NULL,'Catherines Patrick','Catherines of Patrick','106-114 Dumbarton Rd,, Glasgow, undefined G116NY','','No phone','Catherines Patrick',1,0,'info@catherinesofpartick.co.uk','123','2025-12-24 17:17:54.091743',NULL,NULL),(71,'2025-12-24 17:17:54.103248',NULL,'Cecile Mode','Cecile Mode','','','No phone','Cecile Mode',1,0,'no-email@example.com','124','2025-12-24 17:17:54.103248',NULL,NULL),(72,'2025-12-24 17:17:54.111735',NULL,'Chally & Prom','Chally Bridal & Prom','6121 W Park Blvd Suite B121, Plano, Texas undefined','','972-715-2009','Chally & Prom',1,0,'info@challybridalandprom.com','125','2025-12-24 17:17:54.111735',NULL,NULL),(73,'2025-12-24 17:17:54.124676',NULL,'Charme Blanc','Charme Blanc','Lac II Immeuble le Boulevard, Tunis, undefined 1053','','71967412','Charme Blanc',1,0,'sinda.lajmi@gmail.com','126','2025-12-24 17:17:54.124676',NULL,NULL),(74,'2025-12-24 17:17:54.135435',NULL,'Charmé MC','Charmé by MC','Straatweg 88, Breukelen, undefined 3621 BS','','No phone','Charmé MC',1,0,'info@charmebymc.com','127','2025-12-24 17:17:54.135435',NULL,NULL),(75,'2025-12-24 17:17:54.144724',NULL,'Chatta Boutique','Chatta Box Boutique','4114 Veterans Memorial Blvd Floor 2, Metairie, LA 70002, Louisiana, undefined undefined','','5044541527','Chatta Boutique',1,0,'cboxmet@gmail.com','128','2025-12-24 17:17:54.144724',NULL,NULL),(76,'2025-12-24 17:17:54.153380',NULL,'Chatzistavrou Bridal','Chatzistavrou Bridal','Ethnikis antistasis 22, Ptolemaida 50200, undefined, undefined undefined','','+306987924097','Chatzistavrou Bridal',1,0,'chatzistavrou.ptol@gmail.com','129','2025-12-24 17:17:54.153380',NULL,NULL),(77,'2025-12-24 17:17:54.163226',NULL,'CHEZ MOI','CHEZ MOI','71-47 Austin street , forest hills, New York, undefined 11375','','7185200900','CHEZ MOI',1,0,'monamalekan@gmail.com','130','2025-12-24 17:17:54.163226',NULL,NULL),(78,'2025-12-24 17:17:54.171654',NULL,'Chic Holland','Chic & Holland','Lange Vijverberg 4-5 Penthhouse, The Hague, South Holland 2513 AC','','31 6 5717 5270','Chic Holland',1,0,'chicnholland@gmail.com','131','2025-12-24 17:17:54.171654',NULL,NULL),(79,'2025-12-24 17:17:54.182956',NULL,'Chic Elle','Chic for Elle','','','No phone','Chic Elle',1,0,'no-email@example.com','132','2025-12-24 17:17:54.182956',NULL,NULL),(80,'2025-12-24 17:17:54.192067',NULL,'CHRIS CHRIS','CHRIS & CHRIS','BLD Adolphe Max 76, Bruxelles, undefined 1000','','+32487617000','CHRIS CHRIS',1,0,'info@chrisandchris.be','133','2025-12-24 17:17:54.192067',NULL,NULL),(81,'2025-12-24 17:17:54.206839',NULL,'Christian aboud','Christian aboud','','','No phone','Christian aboud',1,0,'karoleen.askar@gmail.com','134','2025-12-24 17:17:54.206839',NULL,NULL),(82,'2025-12-24 17:17:54.219170',NULL,'Christina Hanna','Christina Hanna','','','No phone','Christina Hanna',1,0,'Christinahanna.jakob@icloud.com','135','2025-12-24 17:17:54.219170',NULL,NULL),(83,'2025-12-24 17:17:54.230076',NULL,'Cinderella Dress','Cinderella Dress','Bremer Str 1, Wiefelstede, undefined 26215','','No phone','Cinderella Dress',1,0,'cinderelladress@gmx.de','136','2025-12-24 17:17:54.230076',NULL,NULL),(84,'2025-12-24 17:17:54.238827',NULL,'Coco Struga','Bali Import & Export/ Coco Couture Struga','Partizanska ulica, Struga, undefined 6330','','No phone','Coco Struga',1,0,'info@roci-couture.com','137','2025-12-24 17:17:54.238827',NULL,NULL),(85,'2025-12-24 17:17:54.251925',NULL,'Coco Struga','Coco Struga','','','No phone','Coco Struga',1,0,'info@cocostruga.com','138','2025-12-24 17:17:54.251925',NULL,NULL),(86,'2025-12-24 17:17:54.263579',NULL,'COCOSY','COCOSY','','','+224 622 81 57 37','COCOSY',1,0,'Skadija890@gmail.com','139','2025-12-24 17:17:54.263579',NULL,NULL),(87,'2025-12-24 17:17:54.469437',NULL,'Grace Pariente','Cool Cars','108 Oceanview Ave, Half Moon Bay, CA 94019, USA','','(415) 555-9933','Grace Pariente',1,0,'Cool_Cars@intuit.com','3','2025-12-24 17:17:54.469437',NULL,NULL),(88,'2025-12-24 17:17:54.482550',NULL,'COUTURE CANDY','COUTURE CANDY','4050 W. Sunset Road, Suite H – Dock Door 25, Las Vegas, NV - 89118 USA, undefined, undefined undefined','','No phone','COUTURE CANDY',1,0,'support@couturecandy.com, carrie@couturecandy.com','140','2025-12-24 17:17:54.482550',NULL,NULL),(89,'2025-12-24 17:17:54.490089',NULL,'couture candy-1','Couture Candy','4050 W. Sunset Road, Suite H – Dock Door 25, Las Vegas, NV - 89118 USA, undefined, undefined undefined','','No phone','couture candy-1',1,0,'support@couturecandy.com, carrie@couturecandy.com','141','2025-12-24 17:17:54.490089',NULL,NULL),(90,'2025-12-24 17:17:54.504774',NULL,'Crowning Around','Crowning Around','','','No phone','Crowning Around',1,0,'crowningaround1@aol.com','142','2025-12-24 17:17:54.504774',NULL,NULL),(91,'2025-12-24 17:17:54.515921',NULL,'CROWNING PERDORMANCE','CROWNING PERDORMANCE','2964 Ross Clark Cir, Dothan, AL 36303, ALABAMA, undefined undefined','','3346189268','CROWNING PERDORMANCE',1,0,'crowningperformance@gmail.com','143','2025-12-24 17:17:54.515921',NULL,NULL),(92,'2025-12-24 17:17:54.523488',NULL,'Crusz GmbH','Crusz GmbH','Spittelmarkt 11-12, Berlin-Mitte, undefined D-10117','','+49 (0) 30 960 80 500','Crusz GmbH',1,0,'d.pfeiffer@crusz.de','144','2025-12-24 17:17:54.523488',NULL,NULL),(93,'2025-12-24 17:17:54.532937',NULL,'D Bride','D Royal Bride','San Juan (Por cita previa), San Juan, PR 00920','','1 787-781-3162','D Bride',1,0,'droyalbride@hotmail.com','145','2025-12-24 17:17:54.532937',NULL,NULL),(94,'2025-12-24 17:17:54.545591',NULL,'D\'Royal Bride','D\'Royal Bride','1012 Av. Franklin Delano Roosevelt, San Juan, undefined 00920','','+1 787-781-3162','D\'Royal Bride',1,0,'chicnholland@gmail.com','146','2025-12-24 17:17:54.545591',NULL,NULL),(95,'2025-12-24 17:17:54.556477',NULL,'DANA TAYE','DANA TAYE','','','No phone','DANA TAYE',1,0,'dana.taye.1999@hotmail.com','147','2025-12-24 17:17:54.556477',NULL,NULL),(96,'2025-12-24 17:17:54.565976',NULL,'Daniyella\'s Abendmode','Daniyella\'s Abendmode','Fahrtgasse 22, Pohlheim, undefined 35415','','+49 176 10352595','Daniyella\'s Abendmode',1,0,'daniyellatadars@hotmail.com','148','2025-12-24 17:17:54.565976',NULL,NULL),(97,'2025-12-24 17:17:54.574243',NULL,'Dany','Dany',' undefined, undefined undefined','','No phone','Dany',1,0,'dany.patrauceanu@gmail.com','149','2025-12-24 17:17:54.574243',NULL,NULL),(98,'2025-12-24 17:17:54.584509',NULL,'Davanzo Moda','Davanzo Alto Moda','Viale Alto Adige, 144,, Andria, BT 76123','','+39 883 541 413','Davanzo Moda',1,0,'info@davanzoaltamoda.it','150','2025-12-24 17:17:54.584509',NULL,NULL),(99,'2025-12-24 17:17:54.592989',NULL,'DBR WEDDINGS','DBR WEDDINGS','Unit 301, 3/F, Golden Centre. 188 Des Voeux Road Central,, undefined, undefined undefined','','+85228154592','DBR WEDDINGS',1,0,'sales@dbrweddings.com','151','2025-12-24 17:17:54.592989',NULL,NULL),(100,'2025-12-24 17:17:54.602588',NULL,'Dea Couture','Dea Couture','via Foggia 198 S.Giovanni Rotondo, Foggia, undefined 71013','','0882816401','Dea Couture',1,0,'deacouture@libero.it','152','2025-12-24 17:17:54.602588',NULL,NULL),(101,'2025-12-24 17:17:54.615414',NULL,'Deanna Thabatah','Deanna Thabatah','','','No phone','Deanna Thabatah',1,0,'thabatahd@gmail.com','153','2025-12-24 17:17:54.615414',NULL,NULL),(102,'2025-12-24 17:17:54.625435',NULL,'DEFINITION BRIDAL','DEFINITION BRIDAL','','','No phone','DEFINITION BRIDAL',1,0,'buyer@definitionbridal.com','154','2025-12-24 17:17:54.625435',NULL,NULL),(103,'2025-12-24 17:17:54.637648',NULL,'Delale Design','Delale Design','','','+4915218946028','Delale Design',1,0,'delaledesign@web.de','155','2025-12-24 17:17:54.637648',NULL,NULL),(104,'2025-12-24 17:17:54.648522',NULL,'DESIGNING DREAMS','DESIGNING DREAMS','','','No phone','DESIGNING DREAMS',1,0,'elena6dovale@gmail.com','156','2025-12-24 17:17:54.648522',NULL,NULL),(105,'2025-12-24 17:17:54.663036',NULL,'Designs liza','Designs by liza','','','No phone','Designs liza',1,0,'crespo1129@yahoo.com','157','2025-12-24 17:17:54.663036',NULL,NULL),(106,'2025-12-24 17:17:54.673137',NULL,'Diamant Mode','Diamant Mode','Hospitalsgatan 11, Norrköping, undefined 60227','','+46 720112453','Diamant Mode',1,0,'diamantmodeab@hotmail.com','158','2025-12-24 17:17:54.673137',NULL,NULL),(107,'2025-12-24 17:17:54.683724',NULL,'Diamar & Fest','Diamar Brud & Fest','Klostergatan 68, Jönköping, undefined 55335','','073-991 3771','Diamar & Fest',1,0,'Diamar@live.se','159','2025-12-24 17:17:54.683724',NULL,NULL),(108,'2025-12-24 17:17:54.695746',NULL,'DIamond Dresses','DIamond Dresses','','','No phone','DIamond Dresses',1,0,'no-email@example.com','160','2025-12-24 17:17:54.695746',NULL,NULL),(109,'2025-12-24 17:17:54.704714',NULL,'Dianne Co','Dianne + Co','3440 Rt 9 South, Freehold, New Jersey 07728','','732 625 8001','Dianne Co',1,0,'dianeandco1@yahoo.com','161','2025-12-24 17:17:54.704714',NULL,NULL),(110,'2025-12-24 17:17:54.928174',NULL,'Diego Rodriguez','Diego Rodriguez','325 Channing Ave, Palo Alto, CA 94301, USA','','(650) 555-4477','Diego Rodriguez',1,0,'Diego@Rodriguez.com','4','2025-12-24 17:17:54.928174',NULL,NULL),(111,'2025-12-24 17:17:54.941725',NULL,'Dodysdresses','Dodysdresses','24 s Fullerton Ave, New Jersey, undefined 07042','','+1 973 979 6940','Dodysdresses',1,0,'dodysdresses@gmail.com','162','2025-12-24 17:17:54.941725',NULL,NULL),(112,'2025-12-24 17:17:54.961062',NULL,'DOLLZ & PROM','DOLLZ BRIDAL & PROM','','','+16369789688','DOLLZ & PROM',1,0,'sales@promdollzbridal.com','163','2025-12-24 17:17:54.961062',NULL,NULL),(113,'2025-12-24 17:17:54.972461',NULL,'DONNA ZUILEN','DONNA VAN ZUILEN','Barbeellaan 12,, undefined, undefined 3984 ME Odijk.','','31 6 40565014','DONNA ZUILEN',1,0,'Donnavanzuilen@hotmail.com','164','2025-12-24 17:17:54.972461',NULL,NULL),(114,'2025-12-24 17:17:54.982472',NULL,'Doria Robe De Soiree','Doria Location Robe De Soiree','1 Traverse du Moulan, Marseille, undefined undefined','','No phone','Doria Robe De Soiree',1,0,'doria.mafille@hotmail.fr','165','2025-12-24 17:17:54.982472',NULL,NULL),(115,'2025-12-24 17:17:54.992770',NULL,'Doris Boutique','Doris Boutique','Av Terranova 1038, Lomas de Providencia, Jal, Guadalajara, undefined 44647','','+52 33 3640 3629','Doris Boutique',1,0,'Marianopedrero_19@hotmail.com','166','2025-12-24 17:17:54.992770',NULL,NULL),(116,'2025-12-24 17:17:55.003885',NULL,'Dress Estelle','Dress By Estelle','Mozartlaan 11/13, Hengelo, undefined 7557 DK','','+31614052229','Dress Estelle',1,0,'info@dressbyestelle.nl','167','2025-12-24 17:17:55.003885',NULL,NULL),(117,'2025-12-24 17:17:55.014454',NULL,'Dress Golden','Dress by Golden','Street taulantia, Durres, undefined undefined','','+355676700926','Dress Golden',1,0,'manjolakurti95@hotmail.com','168','2025-12-24 17:17:55.014454',NULL,NULL),(118,'2025-12-24 17:17:55.028476',NULL,'Dress desire','Dress desire','','','No phone','Dress desire',1,0,'no-email@example.com','169','2025-12-24 17:17:55.028476',NULL,NULL),(119,'2025-12-24 17:17:55.039756',NULL,'DRESS DESIRES','DRESS DESIRES','Bytoften 7, 4000 Roskilde,, undefined, undefined undefined','','+4661124928','DRESS DESIRES',1,0,'sarra-al-shukrie@hotmail.com','170','2025-12-24 17:17:55.039756',NULL,NULL),(120,'2025-12-24 17:17:55.050056',NULL,'Dress paris','Dress in Paris','13 rue Lamartine, Villejuif, undefined 94800','','No phone','Dress paris',1,0,'dressinparis1@gmail.com','171','2025-12-24 17:17:55.050056',NULL,NULL),(121,'2025-12-24 17:17:55.061434',NULL,'Dress Up','Dress Me Up','Avenida República Argentina, , Curitiba, PR 1160','','+55 41 9973 20309','Dress Up',1,0,'julianavaloski@hotmail.com','172','2025-12-24 17:17:55.061434',NULL,NULL),(122,'2025-12-24 17:17:55.071924',NULL,'Dress Prestige','Dress Prestige','7 allée de recy, Clichy sous bois, undefined 93390','','+33 6 58 63 71 45','Dress Prestige',1,0,'Mekhfi.siham@gmail.com','173','2025-12-24 17:17:55.071924',NULL,NULL),(123,'2025-12-24 17:17:55.085979',NULL,'Dressabc','Dressabc','','','No phone','Dressabc',1,0,'no-email@example.com','174','2025-12-24 17:17:55.085979',NULL,NULL),(124,'2025-12-24 17:17:55.097209',NULL,'Dresscloset','Dresscloset','Erik Dahlbergsgatan 28, Huskvarna, undefined 561 32','','+46 70 407 99 81','Dresscloset',1,0,'no-email@example.com','175','2025-12-24 17:17:55.097209',NULL,NULL),(125,'2025-12-24 17:17:55.108574',NULL,'DRESSDIANA','DRESSDIANA',' undefined, undefined undefined','','No phone','DRESSDIANA',1,0,'Rojinarin@web.de','176','2025-12-24 17:17:55.108574',NULL,NULL),(126,'2025-12-24 17:17:55.121265',NULL,'Dressed Velam','Dressed By Velam',' undefined, undefined undefined','','No phone','Dressed Velam',1,0,'elviaaguirre713@gmail.com','177','2025-12-24 17:17:55.121265',NULL,NULL),(127,'2025-12-24 17:17:55.132524',NULL,'DRESSING DREAMS','DRESSING DREAMS','302 E. Howell St. Hartwell, Atlanta, Georgia GA 30643','','+17063764598','DRESSING DREAMS',1,0,'dalton@dressingdreams.com','178','2025-12-24 17:17:55.132524',NULL,NULL),(128,'2025-12-24 17:17:55.144573',NULL,'Dressroom Boutique','Dressroom Boutique','8099 Weston Road Unit# 14, ONL4L0C1, Woodbridge, Ontario undefined','','+1 (647)9804060','Dressroom Boutique',1,0,'Dressroomboutique@hotmail.com','179','2025-12-24 17:17:55.144573',NULL,NULL),(129,'2025-12-24 17:17:55.155147',NULL,'Dressroom Boutique-1','Dressroom Boutique','8099 Weston Road Unit# 14, ONL4L0C1, Woodbridge, Ontario undefined','','+1 (647)9804060','Dressroom Boutique-1',1,0,'dressroomboutique@hotmail.com','180','2025-12-24 17:17:55.155147',NULL,NULL),(130,'2025-12-24 17:17:55.164318',NULL,'Dressroom Linne','Dressroom Linne','Olivedalsgatan 18, Gothenburg, undefined 41310','','+46 704760040','Dressroom Linne',1,0,'no-email@example.com','181','2025-12-24 17:17:55.164318',NULL,NULL),(131,'2025-12-24 17:17:55.175569',NULL,'Duchess Boutique','Duchess Boutique','521 Sydney Road, Brunswick, Victoria 3056','','614 19 502 220','Duchess Boutique',1,0,'patricia@duchessboutique.com.au','182','2025-12-24 17:17:55.175569',NULL,NULL),(132,'2025-12-24 17:17:55.403510',NULL,'Peter Dukes','Dukes Basketball Camp','4302 N Oracle Rd, Tucson, AZ 85705, USA','','(520) 420-5638','Peter Dukes',1,0,'Dukes_bball@intuit.com','5','2025-12-24 17:17:55.403510',NULL,NULL),(133,'2025-12-24 17:17:55.422098',NULL,'Dylan Sollfrank','Dylan Sollfrank','','','No phone','Dylan Sollfrank',1,0,'no-email@example.com','6','2025-12-24 17:17:55.422098',NULL,NULL),(134,'2025-12-24 17:17:55.435488',NULL,'Eden Bridal','Eden Manor Bridal','Clohass, Enniscorthy, Co., Wexford, Leinster undefined','','+353 53 923 2586','Eden Bridal',1,0,'hildakavanagh@gmail.com','183','2025-12-24 17:17:55.435488',NULL,NULL),(135,'2025-12-24 17:17:55.446402',NULL,'Effies Boutique','Effies Boutique','2075 86th street, Brooklyn, New York, undefined 11214','','+17189460736','Effies Boutique',1,0,'admin@effies.com','184','2025-12-24 17:17:55.446402',NULL,NULL),(136,'2025-12-24 17:17:55.467893',NULL,'Eileen Oberhauser','Eileen Oberhauser','','','No phone','Eileen Oberhauser',1,0,'oberhausereileen@gmail.com','185','2025-12-24 17:17:55.467893',NULL,NULL),(137,'2025-12-24 17:17:55.482527',NULL,'Elbis LLC','Elbis NY LLC','4283 Express Lane, Sarasota, FL, Florida, undefined 3424','','No phone','Elbis LLC',1,0,'elbisny.com@gmail.com','186','2025-12-24 17:17:55.482527',NULL,NULL),(138,'2025-12-24 17:17:55.492679',NULL,'Elbis LLC','Elbis NY- LLC','4283 Express Lane,, undefined, undefined undefined','','No phone','Elbis LLC',1,0,'elbisny.com@gmail.com','187','2025-12-24 17:17:55.492679',NULL,NULL),(139,'2025-12-24 17:17:55.504681',NULL,'Elegance & Abendmode','Elegance Braut & Abendmode','Färberstraße 50, VS-Villingen, undefined 78050','','+49 172 5397521','Elegance & Abendmode',1,0,'Info@elegance-mode.com','188','2025-12-24 17:17:55.504681',NULL,NULL),(140,'2025-12-24 17:17:55.516846',NULL,'ELEGANCE SPOSA','ELEGANCE SPOSA','','','No phone','ELEGANCE SPOSA',1,0,'elegancesposaceremonia@gmail.com','189','2025-12-24 17:17:55.516846',NULL,NULL),(141,'2025-12-24 17:17:55.534846',NULL,'ELEGANT COUTURE','ELEGANT COUTURE','12236 S. Harlem Palos Heights, Il. 60463, undefined, undefined undefined','','+1708 6718682','ELEGANT COUTURE',1,0,'couture.elegant@gmail.com','190','2025-12-24 17:17:55.534846',NULL,NULL),(142,'2025-12-24 17:17:55.542168',NULL,'Elif Mode','Elif Mode','Zwart Janstraat 81B, Rotterdam, undefined 3035 AM','','No phone','Elif Mode',1,0,'Mehmetilbay@me.com','191','2025-12-24 17:17:55.542168',NULL,NULL),(143,'2025-12-24 17:17:55.552917',NULL,'Elite Class','Elite Class','Kompleksi Dinamo, P. “Orion”, Tirana, undefined undefined','','+35 567 418 0260','Elite Class',1,0,'l_myftari@yahoo.com','192','2025-12-24 17:17:55.552917',NULL,NULL),(144,'2025-12-24 17:17:55.562596',NULL,'Ello Dresses','Ello Dresses','Kelvinring 44 2952BG Alblasserdam, Amsterdam, Netherlands undefined','','+31 6 28816672','Ello Dresses',1,0,'elahaakrami@outlook.com','193','2025-12-24 17:17:55.562596',NULL,NULL),(145,'2025-12-24 17:17:55.572194',NULL,'Emma Powell','Emma Powell','106 Spencer Way, Newport, undefined NP19 4BU','','+44 7360 650508','Emma Powell',1,0,'emmaljpowell@hotmail.com','194','2025-12-24 17:17:55.572194',NULL,NULL),(146,'2025-12-24 17:17:55.581562',NULL,'Ena Edina','Ena In Edina','Savska Cesta 13, Domžale, undefined 1230','','+38 67 099 8818','Ena Edina',1,0,'info@enainedina.si','195','2025-12-24 17:17:55.581562',NULL,NULL),(147,'2025-12-24 17:17:55.592098',NULL,'ENAINEDINA','ENAINEDINA','SLOVENIA, undefined, undefined undefined','','No phone','ENAINEDINA',1,0,'info@enainedina.si','196','2025-12-24 17:17:55.592098',NULL,NULL),(148,'2025-12-24 17:17:55.609252',NULL,'ERGAS','ERGAS','','','No phone','ERGAS',1,0,'salvovitale62@gmail.com','197','2025-12-24 17:17:55.609252',NULL,NULL),(149,'2025-12-24 17:17:55.621633',NULL,'Erkoc Sirin GbR','Wedding House','Sternstraat 2, Dusseldorf, undefined 40479','','+49 21123972660','Erkoc Sirin GbR',1,0,'S.erkoc@simacouture.com','198','2025-12-24 17:17:55.621633',NULL,NULL),(150,'2025-12-24 17:17:55.636874',NULL,'ES FERRI Co. Ltd','ES CINZIA FERRI Co. Ltd','1F, Dongyang Bldg., 96-15 Chungdam-dong, Gangnam-gu, Seoul, undefined 06015','','82 2 548 4751','ES FERRI Co. Ltd',1,0,'cinziawedding@hotmail.com','199','2025-12-24 17:17:55.636874',NULL,NULL),(151,'2025-12-24 17:17:55.647956',NULL,'ES FERRI.Co.Ltd','ES CINZIA FERRI.Co.Ltd','1F Dongyang-Bldg, 96-15 Chungdam-dong, Gangnam-gu, ,, Seoul, Republic of Korea 06015','','No phone','ES FERRI.Co.Ltd',1,0,'cinziawedding@hotmail.com','200','2025-12-24 17:17:55.647956',NULL,NULL),(152,'2025-12-24 17:17:55.658954',NULL,'Ethereal Dresses','Ethereal Dresses','Stone Cross, Penkridge,, Stafford, undefined ST19 5AR','','+4407749822689','Ethereal Dresses',1,0,'no-email@example.com','201','2025-12-24 17:17:55.658954',NULL,NULL),(153,'2025-12-24 17:17:55.668355',NULL,'Eureka Mode','I.O.A.S N.V.','I.O.A.S N.V., Brussel, undefined 1030','','+32 475 237 129','Eureka Mode',1,0,'ioas@skynet.be','202','2025-12-24 17:17:55.668355',NULL,NULL),(154,'2025-12-24 17:17:55.685537',NULL,'Eurteka','Eurteka','','','No phone','Eurteka',1,0,'no-email@example.com','203','2025-12-24 17:17:55.685537',NULL,NULL),(155,'2025-12-24 17:17:55.697650',NULL,'Event boutique','Event boutique','Ma\'ale kamon 9 , undefined, undefined undefined','','972 54-624-4641','Event boutique',1,0,'Fatena.ayoub@gmail.com,Ch.event22@gmail.com','204','2025-12-24 17:17:55.697650',NULL,NULL),(156,'2025-12-24 17:17:55.707930',NULL,'EVGENIA IKE','EVGENIA IKE','Karaoli & Dimitriou 70, Evosmos, Thessalonikis, undefined 56224','','+302310759467','EVGENIA IKE',1,0,'koupourt@hotmail.com','205','2025-12-24 17:17:55.707930',NULL,NULL),(157,'2025-12-24 17:17:55.720755',NULL,'Farah Alshriedah','Farah Alshriedah','Al Narjess district , Riyadh, Riyadh, Algana 3285','','133277463','Farah Alshriedah',1,0,'farahalshriedah@gmail.com','206','2025-12-24 17:17:55.720755',NULL,NULL),(158,'2025-12-24 17:17:55.731346',NULL,'Farahnaz Abazary','Farahnaz Abazary','11 Arch Pl, Gaithersburg, undefined MD 20878','','+1 571-839-8581','Farahnaz Abazary',1,0,'info@silhouettebridals.com','207','2025-12-24 17:17:55.731346',NULL,NULL),(159,'2025-12-24 17:17:55.739811',NULL,'Farideh','Farideh','8145 The Eplanade Suite#12, Orlando, Florida 32836','','407 595 4500','Farideh',1,0,'no-email@example.com','208','2025-12-24 17:17:55.739811',NULL,NULL),(160,'2025-12-24 17:17:55.752560',NULL,'Fatima Chahine','Fatima Chahine','','','No phone','Fatima Chahine',1,0,'fcha98@gmail.com','209','2025-12-24 17:17:55.752560',NULL,NULL),(161,'2025-12-24 17:17:55.762678',NULL,'FAULKENBERYS','FAULKENBERYS','2213 8th Street,, MERIDIAN, undefined MS 39301','','+14628034357','FAULKENBERYS',1,0,'amandawillis37@yahoo.com','210','2025-12-24 17:17:55.762678',NULL,NULL),(162,'2025-12-24 17:17:55.780540',NULL,'Fenna Ramos','Fenna Ramos','','','No phone','Fenna Ramos',1,0,'f.nramos@live.nl','211','2025-12-24 17:17:55.780540',NULL,NULL),(163,'2025-12-24 17:17:55.797717',NULL,'Filoretta','Filoretta','','','No phone','Filoretta',1,0,'Filloretakajtazi1@gmail.com','212','2025-12-24 17:17:55.797717',NULL,NULL),(164,'2025-12-24 17:17:55.811716',NULL,'FIORI ARANCIO','FIORI D ARANCIO','','','No phone','FIORI ARANCIO',1,0,'fioridaranciosposa@virgilio.it','213','2025-12-24 17:17:55.811716',NULL,NULL),(165,'2025-12-24 17:17:55.823360',NULL,'First Lady','First Lady',' undefined, undefined undefined','','No phone','First Lady',1,0,'Firstladybtq@yahoo.com','214','2025-12-24 17:17:55.823360',NULL,NULL),(166,'2025-12-24 17:17:55.839043',NULL,'Flair Atelier','Flair Wedding Atelier','','','No phone','Flair Atelier',1,0,'no-email@example.com','215','2025-12-24 17:17:55.839043',NULL,NULL),(167,'2025-12-24 17:17:55.849571',NULL,'Flawless Dress','Flawless Dress','26 rue Casteres, bat 2 appt 2307, Clichy, undefined 92100','','No phone','Flawless Dress',1,0,'flawlessdress@outlook.com','216','2025-12-24 17:17:55.849571',NULL,NULL),(168,'2025-12-24 17:17:55.860801',NULL,'FLORENCE NASIRI','FLORENCE NASIRI','Zirkusgasse 5/6/1, WIEN, undefined 1020','','43 660 4245038','FLORENCE NASIRI',1,0,'florencenasiri@gmail.com','217','2025-12-24 17:17:55.860801',NULL,NULL),(169,'2025-12-24 17:17:55.870810',NULL,'Forever Bridal','Forever Bridal','5, Tivoli Court, Upper Lisburn Rd, Belfast, undefined BT10 0BG','','07723036067','Forever Bridal',1,0,'no-email@example.com','218','2025-12-24 17:17:55.870810',NULL,NULL),(170,'2025-12-24 17:17:55.889826',NULL,'FORMERI ATELIER','FORMERI ATELIER','','','No phone','FORMERI ATELIER',1,0,'FIOMERI01@LIBERO.IT','219','2025-12-24 17:17:55.889826',NULL,NULL),(171,'2025-12-24 17:17:55.900487',NULL,'FOSTANI','FOSTANI','FOSTANI LLC., undefined, undefined undefined','','+1(972) 330-1096','FOSTANI',1,0,'fostani.shop@gmail.com','220','2025-12-24 17:17:55.900487',NULL,NULL),(172,'2025-12-24 17:17:55.911502',NULL,'Francesca Patrell.','STILELIBERO CERIMONIA ABITI','MELEGNANO, VIA VITTORIO VENETO 46, undefined, undefined undefined','','029832888','Francesca Patrell.',1,0,'FRASTILELIBERO@ICLOUD.COM','221','2025-12-24 17:17:55.911502',NULL,NULL),(173,'2025-12-24 17:17:55.927948',NULL,'FRANCESCA PETRELLI','FRANCESCA PETRELLI','','','No phone','FRANCESCA PETRELLI',1,0,'ILBOCCIOLO2@VIRGILIO.IT','222','2025-12-24 17:17:55.927948',NULL,NULL),(174,'2025-12-24 17:17:56.145140',NULL,'Kirby Freeman','Freeman Sporting Goods','515 Easy St, Mountain View, CA 94043, USA','','(650) 555-0987','Kirby Freeman',1,0,'Sporting_goods@intuit.com','7','2025-12-24 17:17:56.145140',NULL,NULL),(175,'2025-12-24 17:17:56.437028',NULL,'Sasha Tillou','Freeman Sporting Goods','515 Easy St, Mountain View, CA 94043, USA','','(415) 555-9933','Sasha Tillou',1,0,'Sporting_goods@intuit.com','8','2025-12-24 17:17:56.437028',NULL,NULL),(176,'2025-12-24 17:17:56.665212',NULL,'Amelia','Freeman Sporting Goods','515 Easy St, Mountain View, CA 94043, USA','','(650) 555-0987','Amelia',1,0,'Sporting_goods@intuit.com','9','2025-12-24 17:17:56.665212',NULL,NULL),(177,'2025-12-24 17:17:56.680069',NULL,'Frilly Frocks','Frilly Frocks','Blindgate House, Bachelors Lane East, Drogheda, Ireland undefined','','+353 41 980 1740','Frilly Frocks',1,0,'info@frillyfrocks.ie','223','2025-12-24 17:17:56.680069',NULL,NULL),(178,'2025-12-24 17:17:56.896739',NULL,'Geeta Kalapatapu','Geeta Kalapatapu','1213 Newell Rd, Palo Alto, CA 94303, USA','','(650) 555-0022','Geeta Kalapatapu',1,0,'Geeta@Kalapatapu.com','10','2025-12-24 17:17:56.896739',NULL,NULL),(179,'2025-12-24 17:17:57.105430',NULL,'Lisa Gevelber','Gevelber Photography','700 Arnold Way, Half Moon Bay, CA 94019, USA','','(415) 222-4345','Lisa Gevelber',1,0,'Photography@intuit.com','11','2025-12-24 17:17:57.105430',NULL,NULL),(180,'2025-12-24 17:17:57.119264',NULL,'Giorgie Couture','Giorgie Couture','Piazza L. Cadorna, 28, 95034, CT undefined','','095 691 934','Giorgie Couture',1,0,'giorgiecouture@gmail.com','224','2025-12-24 17:17:57.119264',NULL,NULL),(181,'2025-12-24 17:17:57.130136',NULL,'Glamour','Lahden Glamour Oy','Aleksanterinkatu 31, Lahti, undefined 15140','','+358 3 7825160','Glamour',1,0,'invoices@glamourlahti.fi','225','2025-12-24 17:17:57.130136',NULL,NULL),(182,'2025-12-24 17:17:57.141325',NULL,'Glamour Joy','Glamour Joy','Kauppurienkatu 12, Oulu, undefined 90100','','358 8 3115029','Glamour Joy',1,0,'meri.haapala@glamourjoy.fi','226','2025-12-24 17:17:57.141325',NULL,NULL),(183,'2025-12-24 17:17:57.151035',NULL,'GLASS FORMALS','GLASS SLIPPER FORMALS','857 SW Main Blvd Suite 115, Lake City, FL 32025, Verenigde Staten, Florida, undefined undefined','','3864385483','GLASS FORMALS',1,0,'glassslipperformal@gmail.com','227','2025-12-24 17:17:57.151035',NULL,NULL),(184,'2025-12-24 17:17:57.161776',NULL,'GLITZERFEE ABENDMODE','GLITZERFEE ABENDMODE','Elisabethstraße 12a, Gütersloh, undefined 33332','','No phone','GLITZERFEE ABENDMODE',1,0,'MICHAEL.GUEN@GMK.DE, ninva1987@hotmail.de','228','2025-12-24 17:17:57.161776',NULL,NULL),(185,'2025-12-24 17:17:57.170605',NULL,'GM Boutique','GM Boutique','Av. Tepeyac zapopan, Jalisco, undefined undefined','','3331018081','GM Boutique',1,0,'gmboutiquesalon@gmail.com','229','2025-12-24 17:17:57.170605',NULL,NULL),(186,'2025-12-24 17:17:57.180366',NULL,'Goldcouture Mijolie','Goldcouture by Mijolie','Reeder-Bischoff-Straße 77, Bremen, undefined 28757','','0173 230 9509','Goldcouture Mijolie',1,0,'Nergiz.Huber@hotmail.de, Christian.elsken@gmx.de','230','2025-12-24 17:17:57.180366',NULL,NULL),(187,'2025-12-24 17:17:57.189225',NULL,'Gorgeous Dresses','Gorgeous Dresses',' undefined, undefined undefined','','No phone','Gorgeous Dresses',1,0,'enquiries@gorgeousdressesuk.com','231','2025-12-24 17:17:57.189225',NULL,NULL),(188,'2025-12-24 17:17:57.200051',NULL,'GREG PAGEANT AND PROM ATTIRE','GREG MCKENZIE\'S PAGEANT AND PROM ATTIRE','1924 Blossom St., Columbia, SC 29205','','8036225671','GREG PAGEANT AND PROM ATTIRE',1,0,'mckenziephoto@yahoo.com','232','2025-12-24 17:17:57.200051',NULL,NULL),(189,'2025-12-24 17:17:57.210685',NULL,'Gruppo srls','Gruppo Judith srls','Via Traverse Tavernola, 66, undefined, undefined undefined','','No phone','Gruppo srls',1,0,'Danylong@live.it','233','2025-12-24 17:17:57.210685',NULL,NULL),(190,'2025-12-24 17:17:57.222309',NULL,'Hanan Dabaja','HM Alterations & fashion','','','No phone','Hanan Dabaja',1,0,'hmalterations@gmail.com','234','2025-12-24 17:17:57.222309',NULL,NULL),(191,'2025-12-24 17:17:57.232898',NULL,'Happy - Brautmoden','Happy Day - Brautmoden','Happy Day Gohliser Straße 7 04105 Leipzig, undefined, undefined undefined','','No phone','Happy - Brautmoden',1,0,'junghans.elisa@gmail.com','235','2025-12-24 17:17:57.232898',NULL,NULL),(192,'2025-12-24 17:17:57.244358',NULL,'Harvey Nichols','Harvey Nichols','Harvey Nichols Doha, Doha, undefined 91','','No phone','Harvey Nichols',1,0,'mohammed.shabry@harveynichols-doha.com','236','2025-12-24 17:17:57.244358',NULL,NULL),(193,'2025-12-24 17:17:57.255044',NULL,'Hayal Mode','Hayal Mode','Wilhelmstraße 62, Lüdenscheid, undefined 58511','','+49 2351 6766790','Hayal Mode',1,0,'no-email@example.com','237','2025-12-24 17:17:57.255044',NULL,NULL),(194,'2025-12-24 17:17:57.265934',NULL,'Hermz','Hermz','1332 Santee St Los Angeles, California, undefined, undefined 90015','','+13109755117','Hermz',1,0,'Jennifer_hermz@yahoo.com','238','2025-12-24 17:17:57.265934',NULL,NULL),(195,'2025-12-24 17:17:57.280738',NULL,'House queens','House of queens','Kiebitzweg 16, Wiesbaden, Hessen 65205','','004917661235147','House queens',1,0,'info@houseofqueens.de','239','2025-12-24 17:17:57.280738',NULL,NULL),(196,'2025-12-24 17:17:57.292305',NULL,'Hu Wedding','Hu Wedding','','','+32479317523','Hu Wedding',1,0,'julialiu@huwedding.com','240','2025-12-24 17:17:57.292305',NULL,NULL),(197,'2025-12-24 17:17:57.302424',NULL,'Ikee Gardner','Ikee Inez Gardner','2326 Kettle Falls Station, Apex, North Carolina 27502','','+1 773 726 1252','Ikee Gardner',1,0,'igardner88@gmail.com','241','2025-12-24 17:17:57.302424',NULL,NULL),(198,'2025-12-24 17:17:57.315430',NULL,'IL SPOSA','IL BOCCIOLO SPOSA','','','No phone','IL SPOSA',1,0,'ILBOCCIOLO2@VIRGILIO.IT','242','2025-12-24 17:17:57.315430',NULL,NULL),(199,'2025-12-24 17:17:57.324850',NULL,'ilknur_brautmode','ilknur_brautmode','Bergisch Gladbacherstraat 95, Koln-Mulheim, undefined 51065','','No phone','ilknur_brautmode',1,0,'Altinovailknur@hotmail.de','243','2025-12-24 17:17:57.324850',NULL,NULL),(200,'2025-12-24 17:17:57.333300',NULL,'Inaya','Inaya','108 Avenue d’Enghien 93800 Epinay sur Seine , undefined, undefined undefined','','+33642500066','Inaya',1,0,'chicnholland@gmail.com','244','2025-12-24 17:17:57.333300',NULL,NULL),(201,'2025-12-24 17:17:57.344618',NULL,'INNAYA HC','INNAYA','15B ALLEE MARECHAL FOCH, ENGHIEN LES BAINS, undefined 95880','','No phone','INNAYA HC',1,0,'samira.allous@gmail.com','245','2025-12-24 17:17:57.344618',NULL,NULL),(202,'2025-12-24 17:17:57.354376',NULL,'Integrity Boutique','Integrity Boutique','Centro Bankstown SP177, 1 North Terrace, Bankstown, Bankstown, New South Wales NSW 2200','','No phone','Integrity Boutique',1,0,'helenamoussa@hotmail.com','246','2025-12-24 17:17:57.354376',NULL,NULL),(203,'2025-12-24 17:17:57.366402',NULL,'Invoice & Holland','1998','139 Avenue jean lolive, pantin, Île-de-France 93500','','0758609484','Invoice & Holland',1,0,'zain.athar60@gmail.com','247','2025-12-24 17:17:57.366402',NULL,NULL),(204,'2025-12-24 17:17:57.376112',NULL,'Isabella Armstrong','Isabella Armstrong','138 10th st, Leominster, Massachusetts 01453','','+1 (978) 907-2079','Isabella Armstrong',1,0,'Isabellaarmstrong90@gmail.com','248','2025-12-24 17:17:57.376112',NULL,NULL),(205,'2025-12-24 17:17:57.392857',NULL,'Isabella bride by reflections','Isabella Grace bride by reflections','','','+15408304173','Isabella bride by reflections',1,0,'info@reflectionsva.com','249','2025-12-24 17:17:57.392857',NULL,NULL),(206,'2025-12-24 17:17:57.407940',NULL,'Ivan','Stella Fashion','','','No phone','Ivan',1,0,'Evan_200@yahoo.com','250','2025-12-24 17:17:57.407940',NULL,NULL),(207,'2025-12-24 17:17:57.421960',NULL,'IVAN Stella Fashion','IVAN - Stella Fashion','','','No phone','IVAN Stella Fashion',1,0,'no-email@example.com','251','2025-12-24 17:17:57.421960',NULL,NULL),(208,'2025-12-24 17:17:57.432735',NULL,'J\'adore','J\'adore','Anlystparken 33 D, Tilst, undefined 8381','','86184999','J\'adore',1,0,'sibel_naz@hotmail.com','252','2025-12-24 17:17:57.432735',NULL,NULL),(209,'2025-12-24 17:17:57.656389',NULL,'Jeff Chin','Jeff\'s Jalopies','Willow Rd & Alma St, Menlo Park, CA 94025, USA','','(650) 555-8989','Jeff Chin',1,0,'Jalopies@intuit.com','12','2025-12-24 17:17:57.656389',NULL,NULL),(210,'2025-12-24 17:17:57.668828',NULL,'Jenin Mustafa','Jenin Mustafa','12500 SW 6th ST APT 309N, Pembroke Pines, Fl 330027','','No phone','Jenin Mustafa',1,0,'jenin.mustafa123@yahoo.com','253','2025-12-24 17:17:57.668828',NULL,NULL),(211,'2025-12-24 17:17:57.682789',NULL,'Jeutonic Wear','Jeutonic Bridal Wear','The Smithlands Centre Botharnatounish Road, Loughboy, Kilkenny R95 W95T','','+353 56 772 3295','Jeutonic Wear',1,0,'info@jeutonic.com','254','2025-12-24 17:17:57.682789',NULL,NULL),(212,'2025-12-24 17:17:57.697441',NULL,'Jill Bridal','Jill Bridal','','','+886935049410','Jill Bridal',1,0,'jill.jillbridal@gmail.com','255','2025-12-24 17:17:57.697441',NULL,NULL),(213,'2025-12-24 17:17:57.707155',NULL,'JOANN\'S BRIDAL','JOANN\'S BRIDAL',' undefined, undefined undefined','','+17318858044','JOANN\'S BRIDAL',1,0,'joanns8044@gmail.com','256','2025-12-24 17:17:57.707155',NULL,NULL),(214,'2025-12-24 17:17:57.717997',NULL,'Johans Hogtidskladr','Johans Hogtidskladr','Linnegatan 53, Gothenburg, undefined 413 08','','031424413','Johans Hogtidskladr',1,0,'info@johanshogtidsklader.se','257','2025-12-24 17:17:57.717997',NULL,NULL),(215,'2025-12-24 17:17:58.070724',NULL,'John Melton','John Melton','1259 Pine St, Palo Alto, CA 94301, USA','','(650) 555-5879','John Melton',1,0,'John@Melton.com','13','2025-12-24 17:17:58.070724',NULL,NULL),(216,'2025-12-24 17:17:58.086195',NULL,'Jovani Trading','Jovani For Trading',' undefined, Doha undefined','','No phone','Jovani Trading',1,0,'Mahmoud@quatrofashion.com','258','2025-12-24 17:17:58.086195',NULL,NULL),(217,'2025-12-24 17:17:58.095931',NULL,'Just Boutique','Just Boutique','Hospital Road, Bromley Cross, Bolton, undefined undefined','','077 92118685','Just Boutique',1,0,'no-email@example.com','259','2025-12-24 17:17:58.095931',NULL,NULL),(218,'2025-12-24 17:17:58.105259',NULL,'JUST STUFF BOUTIQUE','JUST GIRLS STUFF BOUTIQUE','4048 S RIVERDALE ROAD, UTAH, undefined 84405','','+18013340636','JUST STUFF BOUTIQUE',1,0,'info@justgirlstuff.com','260','2025-12-24 17:17:58.105259',NULL,NULL),(219,'2025-12-24 17:17:58.114857',NULL,'Kardi Dresses','Kardi Dresses','Weg en Land 35 J, Bergschenhoek, undefined 2661 DC','','No phone','Kardi Dresses',1,0,'kardidresses@gmail.com','261','2025-12-24 17:17:58.114857',NULL,NULL),(220,'2025-12-24 17:17:58.126731',NULL,'KARITKA','KARTIKA SPOSA','','','No phone','KARITKA',1,0,'graziainnao@gmail.com','262','2025-12-24 17:17:58.126731',NULL,NULL),(221,'2025-12-24 17:17:58.139067',NULL,'kate','kate','','','No phone','kate',1,0,'kateruinemans@gmail.com','263','2025-12-24 17:17:58.139067',NULL,NULL),(222,'2025-12-24 17:17:58.323661',NULL,'Kate Whelan','Kate Whelan','1781 E Bayshore Rd, East Palo Alto, CA 94303, USA','','(650) 554-8822','Kate Whelan',1,0,'Kate@Whelan.com','14','2025-12-24 17:17:58.323661',NULL,NULL),(223,'2025-12-24 17:17:58.335759',NULL,'KATION','KATION','1016 F.D. Roosevelt Ave., San Juan, Puerto Rico undefined','','787b749 0235','KATION',1,0,'kation2020@gmail.com','264','2025-12-24 17:17:58.335759',NULL,NULL),(224,'2025-12-24 17:17:58.347264',NULL,'KATIUSCIA NAZZARINI','KATIUSCIA NAZZARINI','','','No phone','KATIUSCIA NAZZARINI',1,0,'info@atelier14.info','265','2025-12-24 17:17:58.347264',NULL,NULL),(225,'2025-12-24 17:17:58.357515',NULL,'Kavelle','Kavelle','4 Brandon Terrace, Edinburgh, undefined undefined','','01315589877','Kavelle',1,0,'Info@kavelle.com','266','2025-12-24 17:17:58.357515',NULL,NULL),(226,'2025-12-24 17:17:58.545673',NULL,'Kathy Kuplis','Kookies by Kathy','FV3J+6V Palo Alto, CA, USA','','(650) 555-7896','Kathy Kuplis',1,0,'qbwebsamplecompany@yahoo.com','16','2025-12-24 17:17:58.545673',NULL,NULL),(227,'2025-12-24 17:17:58.556641',NULL,'Koonings Wedding Palace','Koonings The Wedding Palace','Dukaat 5-5a, Deurne, undefined 5751 PW','','+31 493 31 32 20','Koonings Wedding Palace',1,0,'invoice@koonings.com , info@koonings.com','267','2025-12-24 17:17:58.556641',NULL,NULL),(228,'2025-12-24 17:17:58.564908',NULL,'Kootis Clothing','Kootis Clothing','145 Southern Main Rd,, Couva, undefined undefined','','1 868 774 8672','Kootis Clothing',1,0,'kootisclothing@gmail.com','268','2025-12-24 17:17:58.564908',NULL,NULL),(229,'2025-12-24 17:17:58.577288',NULL,'Kylie boutique','Kylie boutique','','','No phone','Kylie boutique',1,0,'info@kylieroseboutique.com','269','2025-12-24 17:17:58.577288',NULL,NULL),(230,'2025-12-24 17:17:58.586819',NULL,'L\' by Linda','L\' Allure by Linda','Pietercalandlaan 656, Amsterdam, undefined undefined','','+31 654 690 973','L\' by Linda',1,0,'lindayaman@hotmail.com','270','2025-12-24 17:17:58.586819',NULL,NULL),(231,'2025-12-24 17:17:58.597006',NULL,'La Chic','La Chic','2235 95th St, Chicago, IL 60643, United States, undefined, undefined undefined','','+17086702578','La Chic',1,0,'karemsam@gmail.com','271','2025-12-24 17:17:58.597006',NULL,NULL),(232,'2025-12-24 17:17:58.605908',NULL,'LA FEMME','LA FEMME','320 Franklin Ave W, Delano, undefined MN 55328','','+17875254156','LA FEMME',1,0,'pedromoll@msn.com','272','2025-12-24 17:17:58.605908',NULL,NULL),(233,'2025-12-24 17:17:58.618066',NULL,'La Boutique','La Modelo Boutique','Alseidenstraat 20, Almere Poort, undefined 1363 SR','','+31 618 575 577','La Boutique',1,0,'Lamodeloboutique@gmail.com','273','2025-12-24 17:17:58.618066',NULL,NULL),(234,'2025-12-24 17:17:58.629990',NULL,'LAFAYETTE Los Angeles','LAFAYETTE - Los Angeles','','','No phone','LAFAYETTE Los Angeles',1,0,'Lafayettecouture08@gmail.com','274','2025-12-24 17:17:58.629990',NULL,NULL),(235,'2025-12-24 17:17:58.640050',NULL,'Lamodelo','Lamodelo','A. Roland Holststraat 79, Almere, undefined 1321TS','','+31681927644','Lamodelo',1,0,'Lamodeloboutique@gmail.com','275','2025-12-24 17:17:58.640050',NULL,NULL),(236,'2025-12-24 17:17:58.652641',NULL,'LaVelle Ltd','LaVelle Couture Ltd','95 Spencer Street , Birmingham, undefined B18 6DA','','No phone','LaVelle Ltd',1,0,'hello@lavellefashion.com','276','2025-12-24 17:17:58.652641',NULL,NULL),(237,'2025-12-24 17:17:58.663319',NULL,'LAYALI BOUTIQUE','LAYALI BOUTIQUE','817 Dye Avenue, Elmwood Park, New Jersey, undefined NJ 07407','','+12016186740','LAYALI BOUTIQUE',1,0,'denise@layaliboutique.com','277','2025-12-24 17:17:58.663319',NULL,NULL),(238,'2025-12-24 17:17:58.671452',NULL,'Le Beautique','Le Beautique','32 overlook drive, Ridgefield, Connecticut 06877','','No phone','Le Beautique',1,0,'Lebeautique@yahoo.com','278','2025-12-24 17:17:58.671452',NULL,NULL),(239,'2025-12-24 17:17:58.680225',NULL,'Le Dresses','Le Blanc Dresses','Av. Dom Joaquim no 476 - Piso 2, Jardim Maluche, Brusque, Santa Catarina undefined','','+55 47 99926-3047','Le Dresses',1,0,'contato@leblancdresses.com.br','279','2025-12-24 17:17:58.680225',NULL,NULL),(240,'2025-12-24 17:17:58.688522',NULL,'Le Avondjurken','Le Chique Avondjurken','Luxemburglaan 2, Zoetermeer, undefined 2711BC','','No phone','Le Avondjurken',1,0,'ZarienaSaboerali@gmail.com','280','2025-12-24 17:17:58.688522',NULL,NULL),(241,'2025-12-24 17:17:58.698736',NULL,'Le Glamour','Le Comptoir Glamour','','','No phone','Le Glamour',1,0,'cbendhiab@gmail.com','281','2025-12-24 17:17:58.698736',NULL,NULL),(242,'2025-12-24 17:17:58.707445',NULL,'Le D\'un Soir','Le Temps D\'un Soir','Avenue Clemenceau 1, Anderlecht, undefined 1070','','No phone','Le D\'un Soir',1,0,'wafaa.azmar@gmail.com','282','2025-12-24 17:17:58.707445',NULL,NULL),(243,'2025-12-24 17:17:58.721078',NULL,'LECHIC BOUTIQUE','LECHIC BOUTIQUE','','','No phone','LECHIC BOUTIQUE',1,0,'zoga@lechicny.com','283','2025-12-24 17:17:58.721078',NULL,NULL),(244,'2025-12-24 17:17:58.733000',NULL,'Lemis GmbH','Lemis Couture GmbH','S1, 8-9, undefined, Mannheim 68161','','+4917684651039','Lemis GmbH',1,0,'Melisa-ocal@hotmail.de','284','2025-12-24 17:17:58.733000',NULL,NULL),(245,'2025-12-24 17:17:58.742567',NULL,'Lemis Modehaus','Lemis Modehaus','S1 9, Mannheim, undefined 68161','','+49 621 43028450','Lemis Modehaus',1,0,'Melisa-ocal@hotmail.de','285','2025-12-24 17:17:58.742567',NULL,NULL),(246,'2025-12-24 17:17:58.751782',NULL,'Lenas Gowns','Lenas Gowns','Glanzenbergstrasse 12, Dietikon, undefined 8953','','No phone','Lenas Gowns',1,0,'lenas_gowns@hotmail.com','286','2025-12-24 17:17:58.751782',NULL,NULL),(247,'2025-12-24 17:17:58.765298',NULL,'Lenovia','Lenovia','','','No phone','Lenovia',1,0,'miltongerrardsltd@yahoo.co.uk','287','2025-12-24 17:17:58.765298',NULL,NULL),(248,'2025-12-24 17:17:58.773813',NULL,'Leymura','Leymura','5 Rue Maryse Bastie 93110 Rosny Sous Bois, undefined, undefined undefined','','+33658553803','Leymura',1,0,'farah.seroutou@yahoo.fr','288','2025-12-24 17:17:58.773813',NULL,NULL),(249,'2025-12-24 17:17:58.786475',NULL,'Lidija Gojani','Lidija Gojani','','','No phone','Lidija Gojani',1,0,'no-email@example.com','289','2025-12-24 17:17:58.786475',NULL,NULL),(250,'2025-12-24 17:17:58.800896',NULL,'Lila Hammad','Lila  Hammad','','','No phone','Lila Hammad',1,0,'no-email@example.com','290','2025-12-24 17:17:58.800896',NULL,NULL),(251,'2025-12-24 17:17:58.816295',NULL,'Lila Hammad','Lila Hammad','','','No phone','Lila Hammad',1,0,'lilahammad@att.net','291','2025-12-24 17:17:58.816295',NULL,NULL),(252,'2025-12-24 17:17:58.825815',NULL,'Lily Dress','Lily Dress','10 Impasse Blain, Marseille, undefined 13015','','+33 6 27 26 17 87','Lily Dress',1,0,'Sasa.lili@hotmail.fr','292','2025-12-24 17:17:58.825815',NULL,NULL),(253,'2025-12-24 17:17:58.844214',NULL,'LINA FORMALS','LINA V FORMALS','','','No phone','LINA FORMALS',1,0,'Contact@linavformals.com','293','2025-12-24 17:17:58.844214',NULL,NULL),(254,'2025-12-24 17:17:58.856155',NULL,'Linda Akay','Linda Akay','Anton-bühlerstr 3 74078 Heilbronn, Heilbronn, undefined 74078','','0172785624','Linda Akay',1,0,'Lindaakay74@gmail.com','294','2025-12-24 17:17:58.856155',NULL,NULL),(255,'2025-12-24 17:17:58.868626',NULL,'Liridona Laiq','Liridona Laiq','Liridona Laiq, undefined, undefined undefined','','+491776771437','Liridona Laiq',1,0,'Liridona_zogu@hotmail.de','295','2025-12-24 17:17:58.868626',NULL,NULL),(256,'2025-12-24 17:17:58.880984',NULL,'Lisa’z White','Lisa’z White Cecilia','Lisa’z White, undefined, undefined undefined','','+8613382793486','Lisa’z White',1,0,'2576536597@gq.com','296','2025-12-24 17:17:58.880984',NULL,NULL),(257,'2025-12-24 17:17:58.891743',NULL,'Liyas of Dresses','Liyas House of Dresses','Hochstadenstraße 156/158, Mönchengladbach,, undefined 41189','','+49 157 881 68822','Liyas of Dresses',1,0,'info@liyas-dresses.com','297','2025-12-24 17:17:58.891743',NULL,NULL),(258,'2025-12-24 17:17:58.903986',NULL,'Lizzy Dobbe','Lizzy Dobbe','','','No phone','Lizzy Dobbe',1,0,'l.dobbe@hotmail.com','298','2025-12-24 17:17:58.903986',NULL,NULL),(259,'2025-12-24 17:17:58.916019',NULL,'LOOK BE','LOOK BE','','','+5531993360306','LOOK BE',1,0,'lsouzasantiago@hotmail.com','299','2025-12-24 17:17:58.916019',NULL,NULL),(260,'2025-12-24 17:17:58.924877',NULL,'Loriana Couture','Loriana Couture','Grootzeil 13, Almere, undefined 1319AS','','No phone','Loriana Couture',1,0,'Info@lorianacouture.nl','300','2025-12-24 17:17:58.924877',NULL,NULL),(261,'2025-12-24 17:17:58.934068',NULL,'LORRAINE LOVE','LORRAINE LOVE','141 4th street E suite 220 Saint Paul MN 55101, undefined, undefined undefined','','612-513-1885','LORRAINE LOVE',1,0,'lanoirebridal@gmail.com','301','2025-12-24 17:17:58.934068',NULL,NULL),(262,'2025-12-24 17:17:58.941974',NULL,'Loulou Sirine','Loulou Sirine','36 avenue des bosquets, Mitry Mory, undefined 77290','','No phone','Loulou Sirine',1,0,'sirine-77290-@hotmail.fr','302','2025-12-24 17:17:58.941974',NULL,NULL),(263,'2025-12-24 17:17:58.953517',NULL,'Love Bridal','Love Couture Bridal','1200.B Park Potomac Avenue Maryland 20854, USA, undefined, undefined undefined','','+13015129041','Love Bridal',1,0,'Info@lovecouturebridal.com','303','2025-12-24 17:17:58.953517',NULL,NULL),(264,'2025-12-24 17:17:58.964874',NULL,'Love wedding','Love wedding','B202, Fenghuangcheng Community, Beijing, undefined undefined','','+16024866355','Love wedding',1,0,'Loveweddingchina@gmail.com','304','2025-12-24 17:17:58.964874',NULL,NULL),(265,'2025-12-24 17:17:58.974988',NULL,'Lula Bridal','Lula Ann Bridal','Unit 2, Stuart Court, , Birmingham, undefined B23 6LR','','00 44 121-3826661','Lula Bridal',1,0,'lucie@lulaann.com','305','2025-12-24 17:17:58.974988',NULL,NULL),(266,'2025-12-24 17:17:58.985532',NULL,'LUX LTD','LUX N22 LTD','387 HIGH RD, LONDON, undefined N22 8JA','','No phone','LUX LTD',1,0,'info@luxecouture.co.uk','306','2025-12-24 17:17:58.985532',NULL,NULL),(267,'2025-12-24 17:17:58.993780',NULL,'Luxe Lace bridal','Luxe & Lace bridal','Luxe & Lace Bridal 8806 3rd avenue, Brooklyn, undefined 11209','','No phone','Luxe Lace bridal',1,0,'Luxelacebridal@yahoo.com','307','2025-12-24 17:17:58.993780',NULL,NULL),(268,'2025-12-24 17:17:59.004808',NULL,'LUXE LACE BRIDAL.','LUXE & LACE BRIDAL.','','','+1 (917) 828-5736','LUXE LACE BRIDAL.',1,0,'Luxelacebridal@yahoo.com','308','2025-12-24 17:17:59.004808',NULL,NULL),(269,'2025-12-24 17:17:59.017818',NULL,'Luxe Couture','Luxe Couture','','','No phone','Luxe Couture',1,0,'info@luxecouture.co.uk','309','2025-12-24 17:17:59.017818',NULL,NULL),(270,'2025-12-24 17:17:59.029477',NULL,'Lynda Esther','Lynda Esther','','','No phone','Lynda Esther',1,0,'labergel@cogedim.com','310','2025-12-24 17:17:59.029477',NULL,NULL),(271,'2025-12-24 17:17:59.039629',NULL,'L’impératrice Nd','L’impératrice by Nd','11 avenue Gabriel Péri, Bezons, undefined 95870','','+33 6 81 33 61 59','L’impératrice Nd',1,0,'nadiademamen@yahoo.fr','311','2025-12-24 17:17:59.039629',NULL,NULL),(272,'2025-12-24 17:17:59.049704',NULL,'M Boutique','M Boutique','Via Aschenez, 151, 89125, undefined, Reggio Calabria RC 89125','','340 3512058','M Boutique',1,0,'rosacimaria@virgilio.it','312','2025-12-24 17:17:59.049704',NULL,NULL),(273,'2025-12-24 17:17:59.059283',NULL,'M Hamid','Mode Spose','18136 J A Bombardier, Mirabel, QC J7J0H5','','4508187078','M Hamid',1,0,'matt@Modespose.com','313','2025-12-24 17:17:59.059283',NULL,NULL),(274,'2025-12-24 17:17:59.067545',NULL,'Madame Monsieur AS','Madame & Monsieur AS','Perstubben 2a,, Dilling, undefined 1570','','+4799018839','Madame Monsieur AS',1,0,'post@byfridman.no','314','2025-12-24 17:17:59.067545',NULL,NULL),(275,'2025-12-24 17:17:59.075792',NULL,'Madeline\'s','Madeline\'s','1798 Avenue Road, Toronto, Ontario M5M 3Z1','','416 789 4890','Madeline\'s',1,0,'madelines@rogers.com','315','2025-12-24 17:17:59.075792',NULL,NULL),(276,'2025-12-24 17:17:59.084377',NULL,'Madelines USA','Madelines USA','20 SE 3RD STREET, BOCA RATON, undefined, Florida FL 33432','','No phone','Madelines USA',1,0,'sales@madelinesbtq.com, nickcerra@hotmail.com','316','2025-12-24 17:17:59.084377',NULL,NULL),(277,'2025-12-24 17:17:59.092496',NULL,'MADONNA','MADONNA','Madonna Exclusive  Sp.zo.o., undefined, undefined undefined','','+48575551010','MADONNA',1,0,'halyna.kalasko@madonna.pl','317','2025-12-24 17:17:59.092496',NULL,NULL),(278,'2025-12-24 17:17:59.105074',NULL,'Maisa','Maisa','Gulf Mall, Manu Garcia, Doha, undefined undefined','','0097477857417','Maisa',1,0,'maisaqatar@gmail.com','318','2025-12-24 17:17:59.105074',NULL,NULL),(279,'2025-12-24 17:17:59.116972',NULL,'Maison Couture','Maison Lya Couture','1 Cour Sainte marthe, Thiais, undefined 94320','','+33615489465','Maison Couture',1,0,'nadinelatrous@gmail.com','319','2025-12-24 17:17:59.116972',NULL,NULL),(280,'2025-12-24 17:17:59.127223',NULL,'MAISON MARYAM','MAISON MARYAM','FRANCE, undefined, undefined undefined','','+337595095601','MAISON MARYAM',1,0,'maisonmaryammariage@gmail.com','320','2025-12-24 17:17:59.127223',NULL,NULL),(281,'2025-12-24 17:17:59.135039',NULL,'Maison Guzzini','Maison Monica Guzzini','Piazza Giacomo Leopardi 3, Palazzo Passari, Recanati MC, undefined 62019','','340 315 1718','Maison Guzzini',1,0,'guzzini.maison@gmail.com','321','2025-12-24 17:17:59.135039',NULL,NULL),(282,'2025-12-24 17:17:59.143793',NULL,'Malika Negafa','Malika Negafa','46 Avenue du Président Kennedy, Mulhouse, undefined 68200','','No phone','Malika Negafa',1,0,'maalika@msn.com','322','2025-12-24 17:17:59.143793',NULL,NULL),(283,'2025-12-24 17:17:59.154963',NULL,'Manija','Manija','','','No phone','Manija',1,0,'no-email@example.com','323','2025-12-24 17:17:59.154963',NULL,NULL),(284,'2025-12-24 17:17:59.164614',NULL,'Manoela Maison','Manoela Mikus Maison','Av. Estados n. 1231, Balneário, Camboriú SC','','+5547999299001','Manoela Maison',1,0,'manoelamikus@gmail.com','324','2025-12-24 17:17:59.164614',NULL,NULL),(285,'2025-12-24 17:17:59.176171',NULL,'Margarita Kuritsyna','Margarita Kuritsyna','','','No phone','Margarita Kuritsyna',1,0,'margarita.kuritsyna@gmail.com','325','2025-12-24 17:17:59.176171',NULL,NULL),(286,'2025-12-24 17:17:59.186903',NULL,'Marie Bridal','Marie Me Bridal','Glenravel House, 1 Moores Lane, County Antrim,, Randalstown, Northern Ireland BT41 3GE','','44 28 9447 9099','Marie Bridal',1,0,'ozs133@live.com','326','2025-12-24 17:17:59.186903',NULL,NULL),(287,'2025-12-24 17:17:59.196239',NULL,'Marjo','Marjo','Chemin de la fôret, Allauch, undefined 13190','','No phone','Marjo',1,0,'marjo256@yahoo.fr','327','2025-12-24 17:17:59.196239',NULL,NULL),(288,'2025-12-24 17:17:59.371244',NULL,'Mark Cho','Mark Cho','36 Willow Rd, Menlo Park, CA 94025, USA','','(650) 554-1479','Mark Cho',1,0,'Mark@Cho.com','17','2025-12-24 17:17:59.371244',NULL,NULL),(289,'2025-12-24 17:17:59.384228',NULL,'Marta','Marta','','','No phone','Marta',1,0,'no-email@example.com','328','2025-12-24 17:17:59.384228',NULL,NULL),(290,'2025-12-24 17:17:59.395486',NULL,'Marta Aksoy','Marta Aksoy','Marta Aksoy , Issselhorst, undefined 33334','','+4917695756094','Marta Aksoy',1,0,'martusch_g@hotmail.de','329','2025-12-24 17:17:59.395486',NULL,NULL),(291,'2025-12-24 17:17:59.405480',NULL,'Marta Nogueira','Marta Nogueira','Rua dos Bombeiros Voluntários do Barreiro n12 -4Esq - 2830-832 Barreiro, Barreiro, undefined undefined','','No phone','Marta Nogueira',1,0,'martaicteixeira@gmail.com','330','2025-12-24 17:17:59.405480',NULL,NULL),(292,'2025-12-24 17:17:59.415661',NULL,'MARTA,','ENCANT\'ART','Rua Infante D. Henrique numero 59 C, Pinhal Novo, undefined 2955-196','','+351969658496','MARTA,',1,0,'martaicteixeira@gmail.com','331','2025-12-24 17:17:59.415661',NULL,NULL),(293,'2025-12-24 17:17:59.425254',NULL,'Melanka Me Boutique','Melanka and Me Boutique',' Enfield, undefined undefined','','07746507118','Melanka Me Boutique',1,0,'melanka_05@hotmail.com','332','2025-12-24 17:17:59.425254',NULL,NULL),(294,'2025-12-24 17:17:59.435653',NULL,'Merveille Dubai','Merveille De Dubai','21 Avenue Saint Exupery , undefined, undefined 60180','','No phone','Merveille Dubai',1,0,'vente.location.robe.dubai@gmail.com','333','2025-12-24 17:17:59.435653',NULL,NULL),(295,'2025-12-24 17:17:59.444708',NULL,'Mia Bella','Mia Bella',' Los Angeles, California undefined','','No phone','Mia Bella',1,0,'no-email@example.com','334','2025-12-24 17:17:59.444708',NULL,NULL),(296,'2025-12-24 17:17:59.452740',NULL,'Mia couture','Mia Couture','3 impasse du bel air, Arceuil, undefined 94110','','No phone','Mia couture',1,0,'Miaevents9@gmail.com','335','2025-12-24 17:17:59.452740',NULL,NULL),(297,'2025-12-24 17:17:59.463626',NULL,'MICHEAL ELITE','MICHEAL ELITE','','','No phone','MICHEAL ELITE',1,0,'G.CIRILLO@NICKELAELITE.IT','336','2025-12-24 17:17:59.463626',NULL,NULL),(298,'2025-12-24 17:17:59.475996',NULL,'Miha Couture','Miha Couture','','','No phone','Miha Couture',1,0,'info@mihacouture.com','337','2025-12-24 17:17:59.475996',NULL,NULL),(299,'2025-12-24 17:17:59.489983',NULL,'MILIANE COUTURE','MILIANE COUTURE','','','No phone','MILIANE COUTURE',1,0,'CONTACT@milianecouture.com','338','2025-12-24 17:17:59.489983',NULL,NULL),(300,'2025-12-24 17:17:59.498091',NULL,'Milu Mimi','Milu By Mimi','Mdina Road, Attard ATD 9036 Malta, undefined, undefined undefined','','+35679471382','Milu Mimi',1,0,'Milu@milubymimi.com.mt','339','2025-12-24 17:17:59.498091',NULL,NULL),(301,'2025-12-24 17:17:59.509227',NULL,'Mina','Mina','','','No phone','Mina',1,0,'no-email@example.com','340','2025-12-24 17:17:59.509227',NULL,NULL),(302,'2025-12-24 17:17:59.520491',NULL,'Minas Boutique','Minas Fashion Boutique','','','+17187371525','Minas Boutique',1,0,'Nerminadjekovic@yahoo.com','341','2025-12-24 17:17:59.520491',NULL,NULL),(303,'2025-12-24 17:17:59.531542',NULL,'Miriam Adisa','Miriam Adisa','','','No phone','Miriam Adisa',1,0,'miadisa@hotmail.co.uk','342','2025-12-24 17:17:59.531542',NULL,NULL),(304,'2025-12-24 17:17:59.547055',NULL,'CICI SHOP','MISS CICI WEDDING SHOP','','','No phone','CICI SHOP',1,0,'30555405@qq.com','343','2025-12-24 17:17:59.547055',NULL,NULL),(305,'2025-12-24 17:17:59.556830',NULL,'Moda Sposa','Moda Sposa','Unterlinden1 , 79098 Freiburg, undefined, undefined undefined','','No phone','Moda Sposa',1,0,'info@at-moda-sposa.de','344','2025-12-24 17:17:59.556830',NULL,NULL),(306,'2025-12-24 17:17:59.567836',NULL,'MODASPOSA','MODASPOSA','Unterlinden 9, undefined, undefined undefined','','+497612115771','MODASPOSA',1,0,'info@at-moda-sposa.de','345','2025-12-24 17:17:59.567836',NULL,NULL),(307,'2025-12-24 17:17:59.578482',NULL,'Mojda','Mojda','','','No phone','Mojda',1,0,'Mojdabayen@hotmail.com','346','2025-12-24 17:17:59.578482',NULL,NULL),(308,'2025-12-24 17:17:59.588132',NULL,'Mojdeh Kamalizideh','Mojdeh  Kamalizideh','Volendamkade 27, Amersfoort, undefined 3826CD','','No phone','Mojdeh Kamalizideh',1,0,'no-email@example.com','347','2025-12-24 17:17:59.588132',NULL,NULL),(309,'2025-12-24 17:17:59.596432',NULL,'Mona Boutique','Mona Lisa Boutique','2119 17 Mile Road, Sterling Heights, Michigan, undefined 48310','','+115862442318','Mona Boutique',1,0,'no-email@example.com','348','2025-12-24 17:17:59.596432',NULL,NULL),(310,'2025-12-24 17:17:59.605259',NULL,'Monalisa Boutique','Monalisa Boutique','2119 17 Mile Road, Sterling Heights, Michigan, undefined 48310','','15862442318','Monalisa Boutique',1,0,'psheena89@yahoo.com','349','2025-12-24 17:17:59.605259',NULL,NULL),(311,'2025-12-24 17:17:59.615884',NULL,'Mondo Sposa','Mondo Sposa','Strada Statale 18 Tirrena Inferiore, Vibo Valentia, undefined 89900','','+39 096 326 3466','Mondo Sposa',1,0,'info@mondosposa.org','350','2025-12-24 17:17:59.615884',NULL,NULL),(312,'2025-12-24 17:17:59.626273',NULL,'Mondo Sposi','Primo Febbraio S.R.L.','Via Foggia, 41, Barletta BT,, undefined 76121','','08080180725','Mondo Sposi',1,0,'info@mondosposibarletta.com','351','2025-12-24 17:17:59.626273',NULL,NULL),(313,'2025-12-24 17:17:59.640195',NULL,'Monique','Monique','','','No phone','Monique',1,0,'Monique@ambassadevof.nl','352','2025-12-24 17:17:59.640195',NULL,NULL),(314,'2025-12-24 17:17:59.652187',NULL,'moshda','moshda','','','No phone','moshda',1,0,'no-email@example.com','353','2025-12-24 17:17:59.652187',NULL,NULL),(315,'2025-12-24 17:17:59.661119',NULL,'Mr David','Auria Dress','Dorf Guller Strabe 27, Pohlheim, undefined 35415','','+4917663129155','Mr David',1,0,'davidbulut@gmx.de','354','2025-12-24 17:17:59.661119',NULL,NULL),(316,'2025-12-24 17:17:59.669356',NULL,'Zain Armaan','Mr Zain Armaan','Okhla, Jamia, New Delhi 110025','','07394122322','Zain Armaan',1,0,'zainarmaan60@gmail.com','355','2025-12-24 17:17:59.669356',NULL,NULL),(317,'2025-12-24 17:17:59.680137',NULL,'MY LINE','MY DRESS LINE','','','No phone','MY LINE',1,0,'mydressline@gmail.com','356','2025-12-24 17:17:59.680137',NULL,NULL),(318,'2025-12-24 17:17:59.689753',NULL,'Naaz fashion','Naaz fashion','Rotterdam, undefined, undefined undefined','','No phone','Naaz fashion',1,0,'info@naazcollection.nl','357','2025-12-24 17:17:59.689753',NULL,NULL),(319,'2025-12-24 17:17:59.698873',NULL,'Naomiedresses','Naomiedresses','Caluire et cuire, undefined, Lyon 69001','','No phone','Naomiedresses',1,0,'ineesnaoomie@icloud.com','358','2025-12-24 17:17:59.698873',NULL,NULL),(320,'2025-12-24 17:17:59.713703',NULL,'NAPOLI CASTELLANARE DI STABIA','NAPOLI - CASTELLANARE DI STABIA','','','No phone','NAPOLI CASTELLANARE DI STABIA',1,0,'DANYLONG@LIVE.IT','359','2025-12-24 17:17:59.713703',NULL,NULL),(321,'2025-12-24 17:17:59.727472',NULL,'nasira','nasira','','','No phone','nasira',1,0,'no-email@example.com','360','2025-12-24 17:17:59.727472',NULL,NULL),(322,'2025-12-24 17:17:59.735593',NULL,'Natasha\'s & Hers','Natasha\'s His & Hers','Triq iz-Zaghfran, Attard, undefined ATD 9015','','35 679453002','Natasha\'s & Hers',1,0,'info@natashas.com.mt','361','2025-12-24 17:17:59.735593',NULL,NULL),(323,'2025-12-24 17:17:59.748042',NULL,'NEW CITY DRESS','NEW YORK CITY DRESS','','','No phone','NEW CITY DRESS',1,0,'cs@newyorkcitydress.com','362','2025-12-24 17:17:59.748042',NULL,NULL),(324,'2025-12-24 17:17:59.757433',NULL,'New Dress Inc','NEW YORK DRESS','51-05 FLUSHING AVENUE, SUITE 200, MASPETH, NEW YORK, undefined NY 11378','','21259443600','New Dress Inc',1,0,'Accounting@newyorkdress.com','363','2025-12-24 17:17:59.757433',NULL,NULL),(325,'2025-12-24 17:17:59.770775',NULL,'New Dresses','New York Dresses','','','No phone','New Dresses',1,0,'marcl@newyorkdress.com','364','2025-12-24 17:17:59.770775',NULL,NULL),(326,'2025-12-24 17:17:59.784633',NULL,'Nikita','Nikita','','','+64211518127','Nikita',1,0,'chand.nikita93@gmail.com','365','2025-12-24 17:17:59.784633',NULL,NULL),(327,'2025-12-24 17:17:59.794918',NULL,'Nile Boutique','Nile Boutique','8806 3rd Avenue, Brooklyn, New York 11209','','718 266 2020','Nile Boutique',1,0,'no-email@example.com','366','2025-12-24 17:17:59.794918',NULL,NULL),(328,'2025-12-24 17:17:59.805292',NULL,'NOMAHNIGHTYNINE','NOMAHNIGHTYNINE','NOMAHNIGHTYNINE, undefined, undefined undefined','','No phone','NOMAHNIGHTYNINE',1,0,'nomahNN9@gmail.com','367','2025-12-24 17:17:59.805292',NULL,NULL),(329,'2025-12-24 17:17:59.815340',NULL,'Nora’s Boutique NY','Nora’s Bridal Boutique NY','23 Grand Blvd, Valhalla, NY 10595','','+1 (914) 364-1279','Nora’s Boutique NY',1,0,'shop@norasbridalboutiqueny.com','368','2025-12-24 17:17:59.815340',NULL,NULL),(330,'2025-12-24 17:17:59.826999',NULL,'Nuova Zavalon','Nuova Zavalon','','','No phone','Nuova Zavalon',1,0,'nuovazavaionolbia@gmail.com','369','2025-12-24 17:17:59.826999',NULL,NULL),(331,'2025-12-24 17:17:59.836594',NULL,'NUPCIAL','NUPCIAL','Avenida Hidalgo #4004 Col. Sierra Morena Tampico Tamps, TP 89210, undefined undefined','','No phone','NUPCIAL',1,0,'no-email@example.com','370','2025-12-24 17:17:59.836594',NULL,NULL),(332,'2025-12-24 17:17:59.848807',NULL,'NYC-Fashion Boutique','NYC-Fashion Boutique','','','No phone','NYC-Fashion Boutique',1,0,'matilda5000@hotmail.com','371','2025-12-24 17:17:59.848807',NULL,NULL),(333,'2025-12-24 17:17:59.860461',NULL,'O COUTURE','O COUTURE','1752 Hylan Blvd, Staten Island, NEW YORK, undefined NY 10305','','No phone','O COUTURE',1,0,'laureta@ocouture.store','372','2025-12-24 17:17:59.860461',NULL,NULL),(334,'2025-12-24 17:17:59.870300',NULL,'OF SEVENTY','OF SEVENTY','5240 W Charleston Unit 110, Las Vegas, undefined NV 89146','','+17026131291','OF SEVENTY',1,0,'ofseventy@outlook.com','373','2025-12-24 17:17:59.870300',NULL,NULL),(335,'2025-12-24 17:17:59.878637',NULL,'OFSEVENTY','OFSEVENTY','3200 S. Las Vegas Blvd Unit 2680, Las Vegas, Nevada undefined','','702 613 1291','OFSEVENTY',1,0,'ofseventy@outlook.com','374','2025-12-24 17:17:59.878637',NULL,NULL),(336,'2025-12-24 17:17:59.888501',NULL,'Olaitan','Olaitan','USA, undefined, undefined undefined','','No phone','Olaitan',1,0,'olaitanfreeman@yahoo.com','375','2025-12-24 17:17:59.888501',NULL,NULL),(337,'2025-12-24 17:17:59.897988',NULL,'Olivia ApS','Olivia Copenhagen ApS','H. C. Oersteds vej 59, Frederiksberg, Copenhagen DK1879','','No phone','Olivia ApS',1,0,'Oliviabutik@gmail.com','376','2025-12-24 17:17:59.897988',NULL,NULL),(338,'2025-12-24 17:17:59.907939',NULL,'Omaima Couture','Omaima Couture','Omaima couture , undefined, undefined 60714','','+17737669373','Omaima Couture',1,0,'Omaimacouture@gmail.com','377','2025-12-24 17:17:59.907939',NULL,NULL),(339,'2025-12-24 17:17:59.919595',NULL,'ONE EVENING','ONE ENCHANTED EVENING','','','+17248163222','ONE EVENING',1,0,'marketing@oeevening.com','378','2025-12-24 17:17:59.919595',NULL,NULL),(340,'2025-12-24 17:17:59.929655',NULL,'Oneida Trujillo','Oneida Trujillo','2964 NW 96th St. Miami, Florida, undefined 33147','','+13052981572','Oneida Trujillo',1,0,'oneidaftrujillo@hotmail.com','379','2025-12-24 17:17:59.929655',NULL,NULL),(341,'2025-12-24 17:17:59.942769',NULL,'ONU','ONU','HYEJUNG PARK, undefined, undefined undefined','','0269542241','ONU',1,0,'no-email@example.com','380','2025-12-24 17:17:59.942769',NULL,NULL),(342,'2025-12-24 17:17:59.954172',NULL,'Opaack','Opaack','Hoogstrat89a, Rotterdam, undefined 3011PJ','','No phone','Opaack',1,0,'Femydubois@hotmail.com','381','2025-12-24 17:17:59.954172',NULL,NULL),(343,'2025-12-24 17:17:59.963967',NULL,'OPACK GALLERY','OPACK GALLERY','ROTTERDAM, undefined, undefined undefined','','No phone','OPACK GALLERY',1,0,'no-email@example.com','382','2025-12-24 17:17:59.963967',NULL,NULL),(344,'2025-12-24 17:17:59.975078',NULL,'Panache Bridal','Panache Bridal','Pasadena, Costa Mesa,Beverly Hills, undefined, undefined undefined','','No phone','Panache Bridal',1,0,'khoparsa@gmail.com','383','2025-12-24 17:17:59.975078',NULL,NULL),(345,'2025-12-24 17:17:59.982789',NULL,'Pandoras Prom','Pandoras Prom','72-74 Oldbury Road, Rowley Regis, West Midlands B65 0JS','','441214232777','Pandoras Prom',1,0,'no-email@example.com','384','2025-12-24 17:17:59.982789',NULL,NULL),(346,'2025-12-24 17:17:59.990166',NULL,'Park South','Park Avenue South','1608 Route 37 E, Toms River, New Jersey NJ 08753','','+17327737397','Park South',1,0,'parkaveunesouth@verizon.net','385','2025-12-24 17:17:59.990166',NULL,NULL),(347,'2025-12-24 17:17:59.999263',NULL,'Pasarela Couture','Pasarela Haute Couture','Tawar Mall, Doha, undefined undefined','','No phone','Pasarela Couture',1,0,'mtalbader@hotmail.com','386','2025-12-24 17:17:59.999263',NULL,NULL),(348,'2025-12-24 17:18:00.011122',NULL,'Pastiche couture','Pastiche couture','','','No phone','Pastiche couture',1,0,'hello@pastichecouturelondon.com','387','2025-12-24 17:18:00.011122',NULL,NULL),(349,'2025-12-24 17:18:00.023040',NULL,'Paul','Paul','','','No phone','Paul',1,0,'no-email@example.com','388','2025-12-24 17:18:00.023040',NULL,NULL),(350,'2025-12-24 17:18:00.207191',NULL,'Kathy Paulsen','Paulsen Medical Supplies','Hillview & VMware, Palo Alto, CA 94304, USA','','(650) 557-4569','Kathy Paulsen',1,0,'Medical@intuit.com','18','2025-12-24 17:18:00.207191',NULL,NULL),(351,'2025-12-24 17:18:00.218399',NULL,'Perfect Day','Perfect Day','88 William St, Lurgan Co Armagh, Northern Ireland BT66 6JB','','+44 28 3832 1607','Perfect Day',1,0,'perfectdaylisa@hotmail.co.uk','389','2025-12-24 17:18:00.218399',NULL,NULL),(352,'2025-12-24 17:18:00.228157',NULL,'Perlenweiss','Perlenweiss','Bahnhofsallee 13, Kissing, undefined 86438','','08233/7898848','Perlenweiss',1,0,'info@perlenweiss.com','390','2025-12-24 17:18:00.228157',NULL,NULL),(353,'2025-12-24 17:18:00.237869',NULL,'POSH and Events','POSH Bridal and Events',' undefined, undefined undefined','','No phone','POSH and Events',1,0,'margaritagalanu@gmail.com','391','2025-12-24 17:18:00.237869',NULL,NULL),(354,'2025-12-24 17:18:00.253279',NULL,'Pretty boutique','Pretty Perfect boutique','','','No phone','Pretty boutique',1,0,'hello.pretty.perfect.here@gmail.com','392','2025-12-24 17:18:00.253279',NULL,NULL),(355,'2025-12-24 17:18:00.265273',NULL,'princess','princess','','','No phone','princess',1,0,'no-email@example.com','393','2025-12-24 17:18:00.265273',NULL,NULL),(356,'2025-12-24 17:18:00.275412',NULL,'Princess Alia','Princess Alia','9034 132ave , undefined, undefined T5E0Y2','','+1 (780) 289-6464','Princess Alia',1,0,'Kathy_elkadry@hotmail.com','394','2025-12-24 17:18:00.275412',NULL,NULL),(357,'2025-12-24 17:18:00.286595',NULL,'Princess Dyana','Princess Dyana','Split left 11, Papenburg, undefined undefined','','+4915234083883','Princess Dyana',1,0,'dyana.ozdoeva@princess-dyana.de','395','2025-12-24 17:18:00.286595',NULL,NULL),(358,'2025-12-24 17:18:00.295241',NULL,'Princesse Rania','Princesse Rania','31 allée Antonin Dumas, St Genis laval, undefined 69230','','+33 6 14 78 96 20','Princesse Rania',1,0,'ouarda.kaabeche@hotmail.fr','396','2025-12-24 17:18:00.295241',NULL,NULL),(359,'2025-12-24 17:18:00.305004',NULL,'Prominent KG','Prominent KG','Inzersdorferstrasse 83, Wien, undefined 1100','','4369910981846','Prominent KG',1,0,'prominentboutique@hotmail.com','397','2025-12-24 17:18:00.305004',NULL,NULL),(360,'2025-12-24 17:18:00.313646',NULL,'Proms Weddings','Proms & Weddings','Amiralsgatan 28, Malmo, undefined 21155','','No phone','Proms Weddings',1,0,'ayman@promsandweddings.se','398','2025-12-24 17:18:00.313646',NULL,NULL),(361,'2025-12-24 17:18:00.324702',NULL,'PROVA','PROVA','Warbruckstrasse 2, Duisburg, undefined 47169','','+49 176 90266600','PROVA',1,0,'no-email@example.com','399','2025-12-24 17:18:00.324702',NULL,NULL),(362,'2025-12-24 17:18:00.337895',NULL,'Pure Couture','Pure Couture','2-3 Holtspur Parade, Heath Rd, Beaconsfield, undefined HP9 1DA','','01494672700','Pure Couture',1,0,'no-email@example.com','400','2025-12-24 17:18:00.337895',NULL,NULL),(363,'2025-12-24 17:18:00.527505',NULL,'Karen Pye','Pye\'s Cakes','421 Lincoln Ave, City of Orange, NJ 07050, USA','','(973) 555-4652','Karen Pye',1,0,'pyescakes@intuit.com','15','2025-12-24 17:18:00.527505',NULL,NULL),(364,'2025-12-24 17:18:00.542039',NULL,'Quatro','Quatro','','','No phone','Quatro',1,0,'no-email@example.com','401','2025-12-24 17:18:00.542039',NULL,NULL),(365,'2025-12-24 17:18:00.551510',NULL,'Rafinity Dress','Rafinity Luxury Dress','Chaussee de Waterloo 325, Brussels, undefined 1060','','+32 489 78 16 77','Rafinity Dress',1,0,'rafinity.ld@gmail.com','402','2025-12-24 17:18:00.551510',NULL,NULL),(366,'2025-12-24 17:18:00.737361',NULL,'Jeff Rago','Rago Travel Agency','608 Cedar Ct, Daly City, CA 94014, USA','','(650) 555-1596','Jeff Rago',1,0,'Rago_Travel@intuit.com','19','2025-12-24 17:18:00.737361',NULL,NULL),(367,'2025-12-24 17:18:00.747963',NULL,'Ramona Design','Ramona Design','Kungsgatan 10A, Gotenburg, undefined 41119','','031 139 582','Ramona Design',1,0,'ramona.rychter@telia.com','403','2025-12-24 17:18:00.747963',NULL,NULL),(368,'2025-12-24 17:18:00.757229',NULL,'RANSOMS','RANSOMS','Townson Town Centre 4th floor, Towson, Maryland 21204','','+14108327332','RANSOMS',1,0,'service@ransomsboutique.com','404','2025-12-24 17:18:00.757229',NULL,NULL),(369,'2025-12-24 17:18:00.771913',NULL,'RASHA COUTURE','RASHA HAUTE COUTURE','','','No phone','RASHA COUTURE',1,0,'D.fashion17@gmail.com','405','2025-12-24 17:18:00.771913',NULL,NULL),(370,'2025-12-24 17:18:00.780536',NULL,'RASHAWAN BRIDAL','RASHAWAN ROSE BRIDAL','122920 West state Rd.84, Florida, undefined 33325','','+19545992693','RASHAWAN BRIDAL',1,0,'rose@rashawnrose.com','406','2025-12-24 17:18:00.780536',NULL,NULL),(371,'2025-12-24 17:18:00.794090',NULL,'Red Ready','Red Carpet Ready','','','No phone','Red Ready',1,0,'no-email@example.com','407','2025-12-24 17:18:00.794090',NULL,NULL),(372,'2025-12-24 17:18:00.804259',NULL,'Stephanie Martini','Red Rock Diner','500 Red Rock Rd., Bayshore, CA 94326','','(650) 555-4973','Stephanie Martini',1,0,'qbwebsamplecompany@yahoo.com','20','2025-12-24 17:18:00.804259',NULL,NULL),(373,'2025-12-24 17:18:00.813365',NULL,'Reflections Studio','Reflections Bridal Studio','63 Bridge Street, Lisburn, Ulster BT28 1XZ','','44 28 9266 8282','Reflections Studio',1,0,'no-email@example.com','408','2025-12-24 17:18:00.813365',NULL,NULL),(374,'2025-12-24 17:18:00.822489',NULL,'Remaans','Remaans','Linnégatan 4, Göteborg, undefined 413 04','','+46731502023','Remaans',1,0,'info@remanns.se','409','2025-12-24 17:18:00.822489',NULL,NULL),(375,'2025-12-24 17:18:00.830783',NULL,'Rena & Fashion','Rena Bridal & Fashion','No. 299 South Tongjiang Road, Tianning District , Changzhou , Jiangsu Province , China, undefined, undefined undefined','','+8618651980110','Rena & Fashion',1,0,'Ruilina520@12b.com','410','2025-12-24 17:18:00.830783',NULL,NULL),(376,'2025-12-24 17:18:00.842360',NULL,'Renes de Glamor Hamburg','Renes Boutique de Glamor Hamburg','Brachfelder Dorfplatz 10, Hamburg, undefined 22179','','0176 21 164791','Renes de Glamor Hamburg',1,0,'r.lehmann@verticus.de','411','2025-12-24 17:18:00.842360',NULL,NULL),(377,'2025-12-24 17:18:00.856057',NULL,'Rever AB','Rever Design AB','Nygatan 14, Sodertalje, undefined 15172','','No phone','Rever AB',1,0,'reverdesign@outlook.com','412','2025-12-24 17:18:00.856057',NULL,NULL),(378,'2025-12-24 17:18:00.864023',NULL,'Reverie','Reverie','Vjal Kottoner, Fgura, undefined FGR 1384','','+35699464462','Reverie',1,0,'reveriemalta@gmail.com','413','2025-12-24 17:18:00.864023',NULL,NULL),(379,'2025-12-24 17:18:00.874445',NULL,'Robe Orient','Robe Orient','','','No phone','Robe Orient',1,0,'robeorient92@gmail.com','414','2025-12-24 17:18:00.874445',NULL,NULL),(380,'2025-12-24 17:18:00.882960',NULL,'Romanello Sposi','Romanello Sposi','Via Piani d\'Area 21, Ardore, Regio Calabria 89031','','344 067 9813','Romanello Sposi',1,0,'service.romanello@libero.it','415','2025-12-24 17:18:00.882960',NULL,NULL),(381,'2025-12-24 17:18:01.079700',NULL,'Rondonuwu and Vegi','Rondonuwu Fruit and Vegi','1084 The Alameda, San Jose, CA 95126, USA','','(650) 555-2645','Rondonuwu and Vegi',1,0,'Tony@Rondonuwu.com','21','2025-12-24 17:18:01.079700',NULL,NULL),(382,'2025-12-24 17:18:01.089326',NULL,'ROSA ROMITAGGIO','ROSA MARIA ROMITAGGIO','Corso Cavour, 29, Barletta, undefined 76121','','+39 0883 348373','ROSA ROMITAGGIO',1,0,'info@mythos-sposi.it','416','2025-12-24 17:18:01.089326',NULL,NULL),(383,'2025-12-24 17:18:01.099250',NULL,'Rosanna Pansino','Rosanna Pansino','14324 Roblar Place, undefined, undefined undefined','','No phone','Rosanna Pansino',1,0,'RosannaPansino@gmail.com','417','2025-12-24 17:18:01.099250',NULL,NULL),(384,'2025-12-24 17:18:01.109997',NULL,'ROYAL CLOTHIERS','ROYAL CLOTHIERS','','','No phone','ROYAL CLOTHIERS',1,0,'jwe578@gmail.com','418','2025-12-24 17:18:01.109997',NULL,NULL),(385,'2025-12-24 17:18:01.122488',NULL,'Runway Fashions','Runway Fashions','36822 Ryan Road. Sterling Heights, Michigan, undefined 48310','','586 264 1578','Runway Fashions',1,0,'Runway.Fashions@yahoo.com','419','2025-12-24 17:18:01.122488',NULL,NULL),(386,'2025-12-24 17:18:01.132096',NULL,'Ruths','Ruths','Stora Gatan 74, Vasteras, undefined 724 60','','021-131256','Ruths',1,0,'info@ruths.se','420','2025-12-24 17:18:01.132096',NULL,NULL),(387,'2025-12-24 17:18:01.139205',NULL,'RÊVER MARIAGE','RÊVER MARIAGE','23 Rue Anatole, St Priest, undefined 69800','','No phone','RÊVER MARIAGE',1,0,'R.mouniia@hotmail.fr','421','2025-12-24 17:18:01.139205',NULL,NULL),(388,'2025-12-24 17:18:01.148763',NULL,'Saara','Saara','Bytoften 7, Copenhagen, undefined undefined','','No phone','Saara',1,0,'sarra-al-shukrie@hotmail.com','422','2025-12-24 17:18:01.148763',NULL,NULL),(389,'2025-12-24 17:18:01.158354',NULL,'Sabah Dubai','Sabah Dubai','2 Allée des Lauriers, Nanterre, undefined 92000','','No phone','Sabah Dubai',1,0,'sabah.berrim@gmail.com','423','2025-12-24 17:18:01.158354',NULL,NULL),(390,'2025-12-24 17:18:01.169319',NULL,'Sabria Sabroo','Sabria Sabroo','','','No phone','Sabria Sabroo',1,0,'sabriaadammi2@gmail.com','424','2025-12-24 17:18:01.169319',NULL,NULL),(391,'2025-12-24 17:18:01.179668',NULL,'SAGNSKA','SAGNSKA','SLOVENIA, undefined, undefined undefined','','No phone','SAGNSKA',1,0,'no-email@example.com','425','2025-12-24 17:18:01.179668',NULL,NULL),(392,'2025-12-24 17:18:01.190333',NULL,'Sahar beauty','Sahar beauty','Wettertoer 16, heerenveen, undefined 8442 PC','','0685511141','Sahar beauty',1,0,'s.sahar5@hotmail.com','426','2025-12-24 17:18:01.190333',NULL,NULL),(393,'2025-12-24 17:18:01.199732',NULL,'Salwa Rizkalla','Salwa Rizkalla','Canada, undefined, undefined undefined','','No phone','Salwa Rizkalla',1,0,'Salwalrizkalla@hotmail.com','427','2025-12-24 17:18:01.199732',NULL,NULL),(394,'2025-12-24 17:18:01.208508',NULL,'Samah Al Solami','Samah Abdallah Al Solami','Kingdom of Saudi Arabia, Jeddah, undefined undefined','','No phone','Samah Al Solami',1,0,'no-email@example.com','428','2025-12-24 17:18:01.208508',NULL,NULL),(395,'2025-12-24 17:18:01.216756',NULL,'Samantha Shenoy','Samantha Shenoy',' undefined, undefined undefined','','No phone','Samantha Shenoy',1,0,'samanthashenoy@gmail.com','429','2025-12-24 17:18:01.216756',NULL,NULL),(396,'2025-12-24 17:18:01.224289',NULL,'Sanjska Obleka','Sanjska Obleka','Perovo 30, Kamnik, undefined 1241','','+38641577572','Sanjska Obleka',1,0,'janina@sanjska-obleka.si','430','2025-12-24 17:18:01.224289',NULL,NULL),(397,'2025-12-24 17:18:01.232606',NULL,'Santos Eva Novios','Santos & Eva Novios','Avda. Ricardo Soriano, 60, Marbella, undefined 29601','','952 900 189','Santos Eva Novios',1,0,'info@santosyevanovios.com','431','2025-12-24 17:18:01.232606',NULL,NULL),(398,'2025-12-24 17:18:01.238960',NULL,'Saphir Collection','Saphir Collection','109 avenue Jean Perrot, Grenoble, undefined 38100','','No phone','Saphir Collection',1,0,'saphir.collection@aol.fr','432','2025-12-24 17:18:01.238960',NULL,NULL),(399,'2025-12-24 17:18:01.250852',NULL,'SARTORIA STEFY','SARTORIA STEFY','High Rd, London, UK','www.success.com','123456754323','SARTORIA STEFY',1,0,'sartoriastefy@alice.it','433','2025-12-26 17:21:40.000000',3,3),(400,'2025-12-24 17:18:01.264200',NULL,'Sasha Bisram','Sasha Bisram','','','+18687658125','Sasha Bisram',1,0,'sashabisram21@gmail.com','434','2025-12-24 17:18:01.264200',NULL,NULL),(401,'2025-12-24 17:18:01.271899',NULL,'Schneewittchen-Studio','Schneewittchen-Studio','Kirchbergstraße 32, Ranstadt, undefined 63691','','+49 6041 9635144','Schneewittchen-Studio',1,0,'no-email@example.com','435','2025-12-24 17:18:01.271899',NULL,NULL),(402,'2025-12-24 17:18:01.280521',NULL,'Seaside Couture','Seaside Bridal Couture','87 W Main St Unit B, Hyannis, MA 02601, United States, Hyannis, undefined MA02601','','+15083607445','Seaside Couture',1,0,'seasidebridalcouture@gmail.com','436','2025-12-24 17:18:01.280521',NULL,NULL),(403,'2025-12-24 17:18:01.288314',NULL,'Semra Mode','Semra Mode','Paul Krugerlaan 219-221, The Hague, undefined 2571 HH','','31703461798','Semra Mode',1,0,'contact@semramode.nl','437','2025-12-24 17:18:01.288314',NULL,NULL),(404,'2025-12-24 17:18:01.297152',NULL,'SGP AB','SGP AB','Ramsättravägen 6, undefined, undefined undefined','','No phone','SGP AB',1,0,'Miladjajo@hotmail.se','438','2025-12-24 17:18:01.297152',NULL,NULL),(405,'2025-12-24 17:18:01.491322',NULL,'Shara Barnett','Shara Barnett','University Circle @ Caltrain Platform, Palo Alto, CA 94301, USA','','(650) 555-4563','Shara Barnett',1,0,'Shara@Barnett.com','22','2025-12-24 17:18:01.491322',NULL,NULL),(406,'2025-12-24 17:18:01.633486',NULL,'Shara Barnett','Barnett Design','1213 Newell Rd, Palo Alto, CA 94303, USA','','(650) 557-1289','Shara Barnett',1,0,'Design@intuit.com','23','2025-12-24 17:18:01.633486',NULL,NULL),(407,'2025-12-24 17:18:01.642623',NULL,'SHISHI','SHISHI',' undefined, undefined undefined','','No phone','SHISHI',1,0,'no-email@example.com','439','2025-12-24 17:18:01.642623',NULL,NULL),(408,'2025-12-24 17:18:01.655106',NULL,'Signature DC','Signature Washington DC','','','No phone','Signature DC',1,0,'info@signaturedresses.com','440','2025-12-24 17:18:01.655106',NULL,NULL),(409,'2025-12-24 17:18:01.668458',NULL,'SILKE SCHOIZ','SILKE SCHOIZ','','','No phone','SILKE SCHOIZ',1,0,'no-email@example.com','441','2025-12-24 17:18:01.668458',NULL,NULL),(410,'2025-12-24 17:18:01.678700',NULL,'Sima Couture','Sima Couture','Beekstraße 33, Duisburg, undefined 47051','','491727210146','Sima Couture',1,0,'s.erkoc@simacouture.com','442','2025-12-24 17:18:01.678700',NULL,NULL),(411,'2025-12-24 17:18:01.687310',NULL,'Sima Paris','Sima Couture Paris','201 Rue Jules Ferry,  ,, Montmagny, undefined 95360','','33 651015864','Sima Paris',1,0,'chicnholland@gmail.com','443','2025-12-24 17:18:01.687310',NULL,NULL),(412,'2025-12-24 17:18:01.697769',NULL,'Sima Istanbul','Sima Istanbul','Harbiye Mah, Mim Kemal Öke Cd. No. 5 D:aire/2, 34367 Şişli/İstanbul, Türkiye, undefined, undefined undefined','','No phone','Sima Istanbul',1,0,'s.erkoc@simacouture.com','444','2025-12-24 17:18:01.697769',NULL,NULL),(413,'2025-12-24 17:18:01.707772',NULL,'Sima GmbH','Sima München GmbH','Sima München GmbH, Munich, undefined undefined','','No phone','Sima GmbH',1,0,'muenchen@simacouture.com','445','2025-12-24 17:18:01.707772',NULL,NULL),(414,'2025-12-24 17:18:01.718237',NULL,'SIÖDAM THE VILLA GmbH','SIÖDAM - THE VILLA GmbH','Alleestrasse 16, Bad Soden am Taunus, Frankfurt 65812','','No phone','SIÖDAM THE VILLA GmbH',1,0,'welcome@sioedam.de','446','2025-12-24 17:18:01.718237',NULL,NULL),(415,'2025-12-24 17:18:01.727248',NULL,'Ski Brudesalong','Ski Brudesalong','Jernbaneveien 6 	, Ski, undefined 1400','','47748181515','Ski Brudesalong',1,0,'info@skibrudesalong.no','447','2025-12-24 17:18:01.727248',NULL,NULL),(416,'2025-12-24 17:18:01.737434',NULL,'Soglamdress','Soglamdress','37 rue de tirechappe, crecy la chapelle, seine et marne 77580','','No phone','Soglamdress',1,0,'aicha_mehenni@live.fr','448','2025-12-24 17:18:01.737434',NULL,NULL),(417,'2025-12-24 17:18:01.910928',NULL,'Russ Sonnenschein','Sonnenschein Family Store','Middlefield & Meadow, Palo Alto, CA 94306, USA','','(650) 557-8463','Russ Sonnenschein',1,0,'Familiystore@intuit.com','24','2025-12-24 17:18:01.910928',NULL,NULL),(418,'2025-12-24 17:18:01.924666',NULL,'Sophias Boutique','Sophias Boutique','','','No phone','Sophias Boutique',1,0,'info@sophiasboutique.ca','449','2025-12-24 17:18:01.924666',NULL,NULL),(419,'2025-12-24 17:18:01.934996',NULL,'Sparkle Couture','Sparkle Couture','1828 Hylan Couture , New York, undefined 10305','','+17189517427','Sparkle Couture',1,0,'sparklecoutureshop@aol.com','450','2025-12-24 17:18:01.934996',NULL,NULL),(420,'2025-12-24 17:18:01.946232',NULL,'Sposa | Bridal & Evening','Sposa Bella | Bridal & Evening','','','+974 55900040','Sposa | Bridal & Evening',1,0,'sposabellaqatar@yahoo.com','451','2025-12-24 17:18:01.946232',NULL,NULL),(421,'2025-12-24 17:18:01.954300',NULL,'SPOSA DI MORABITO OLIVIA','SPOSA IN DI MORABITO OLIVIA','Via Aschenez, 145,, Calabria, Reggio Calabria 89100','','+39 096 581 1232','SPOSA DI MORABITO OLIVIA',1,0,'info@sposain.it,sposaincommerciale@libero.it','452','2025-12-24 17:18:01.954300',NULL,NULL),(422,'2025-12-24 17:18:01.963259',NULL,'Sposa | Alta Moda','Sposa In | Alta Moda','Via Marconi 10/A, Canosa di Puglia, BT 76012','','No phone','Sposa | Alta Moda',1,0,'sposaincanosa@libero.it','453','2025-12-24 17:18:01.963259',NULL,NULL),(423,'2025-12-24 17:18:01.974272',NULL,'STEFANIO MUZIO','STEFANIO LO MUZIO','','','No phone','STEFANIO MUZIO',1,0,'info@serrese.it','454','2025-12-24 17:18:01.974272',NULL,NULL),(424,'2025-12-24 17:18:01.985732',NULL,'Stephanie Hadley','Stephanie Hadley','3 Bonnie View Road, Melbourne, Victoria 3136','','No phone','Stephanie Hadley',1,0,'stephanie.l.hadley@gmail.com','455','2025-12-24 17:18:01.985732',NULL,NULL),(425,'2025-12-24 17:18:01.995863',NULL,'STUDIO HERA','STUDIO HERA','PODGORIČKA 23a, BANJA LUKA, undefined 78000','','+38765542004','STUDIO HERA',1,0,'studio-hera@blic.net','456','2025-12-24 17:18:01.995863',NULL,NULL),(426,'2025-12-24 17:18:02.004063',NULL,'SUA.BEL','SUA.BEL','Kaiserstraat 42, Dusseldorf, undefined 40479','','No phone','SUA.BEL',1,0,'info@suabel.de','457','2025-12-24 17:18:02.004063',NULL,NULL),(427,'2025-12-24 17:18:02.012499',NULL,'Susan Moore','Fifth Avenue Boutique','600 S Randolph Ave Suite 6, Elkins, undefined WV 26241','','+6812984174','Susan Moore',1,0,'fifthavenueboutique0202@gmail.com','458','2025-12-24 17:18:02.012499',NULL,NULL),(428,'2025-12-24 17:18:02.023153',NULL,'Susana bances','Susana bances','','','No phone','Susana bances',1,0,'susanabances@gmail.com','459','2025-12-24 17:18:02.023153',NULL,NULL),(429,'2025-12-24 17:18:02.205372',NULL,'Katsuyuki Yanagawa','Sushi by Katsuyuki','558 Prospect St, Maplewood, NJ 07040, USA','','(505) 570-0147','Katsuyuki Yanagawa',1,0,'Sushi@intuit.com','25','2025-12-24 17:18:02.205372',NULL,NULL),(430,'2025-12-24 17:18:02.216671',NULL,'Susi Bruidsmoden','Susi Bruidsmoden','Bremerstrasse 15, Delmenhorst, Lower Saxony, 27749, Germany, undefined, undefined undefined','','No phone','Susi Bruidsmoden',1,0,'chicnholland@gmail.com','460','2025-12-24 17:18:02.216671',NULL,NULL),(431,'2025-12-24 17:18:02.225075',NULL,'T&E FASHION','T&E FASHION',' undefined, undefined undefined','','+972544953446','T&E FASHION',1,0,'zaied@te-fashion.com','461','2025-12-24 17:18:02.225075',NULL,NULL),(432,'2025-12-24 17:18:02.237823',NULL,'Tamara Goek','Tamara Goek','Tamara Gök, Rheda-Wiedenbrück, undefined 33378','','No phone','Tamara Goek',1,0,'tamaragoek@icloud.com','462','2025-12-24 17:18:02.237823',NULL,NULL),(433,'2025-12-24 17:18:02.250153',NULL,'Tardivel Carla','Tardivel Carla','71 Boulevard de Paris, Paris, undefined 13002','','0658007354','Tardivel Carla',1,0,'tardivelcarla@hotmail.fr','463','2025-12-24 17:18:02.250153',NULL,NULL),(434,'2025-12-24 17:18:02.262178',NULL,'Tavani S.R.L.','Tavani Mode S.R.L.','29, Corso Cavour, Barletta (BT), undefined 76121','','0883 348373','Tavani S.R.L.',1,0,'tavanimode@gmail.com','464','2025-12-24 17:18:02.262178',NULL,NULL),(435,'2025-12-24 17:18:02.275141',NULL,'TEE','TEE','','','+972544953446','TEE',1,0,'zaied@te-fashion.com','465','2025-12-24 17:18:02.275141',NULL,NULL),(436,'2025-12-24 17:18:02.285460',NULL,'TEVAM FASHION','TEVAM FASHION','1307 Santee St, Los Angeles, California 90015','','586 344 1881','TEVAM FASHION',1,0,'soccerworld1020@yahoo.com','466','2025-12-24 17:18:02.285460',NULL,NULL),(437,'2025-12-24 17:18:02.296506',NULL,'That Girl','That Girl',' Chicago, undefined undefined','','708 448 6101','That Girl',1,0,'no-email@example.com','467','2025-12-24 17:18:02.296506',NULL,NULL),(438,'2025-12-24 17:18:02.308065',NULL,'That Day Bridal','That Special Day Bridal','','','No phone','That Day Bridal',1,0,'no-email@example.com','468','2025-12-24 17:18:02.308065',NULL,NULL),(439,'2025-12-24 17:18:02.319182',NULL,'The Office Hamburg','The Design Office Hamburg','','','01712364085','The Office Hamburg',1,0,'thedesignofficehamburg@gmail.com','469','2025-12-24 17:18:02.319182',NULL,NULL),(440,'2025-12-24 17:18:02.335764',NULL,'The Studio','The Dress Studio','','','No phone','The Studio',1,0,'no-email@example.com','470','2025-12-24 17:18:02.335764',NULL,NULL),(441,'2025-12-24 17:18:02.350423',NULL,'The dress','The perfect dress','','','No phone','The dress',1,0,'no-email@example.com','471','2025-12-24 17:18:02.350423',NULL,NULL),(442,'2025-12-24 17:18:02.363104',NULL,'The dress NL','The perfect dress NL','','','No phone','The dress NL',1,0,'no-email@example.com','472','2025-12-24 17:18:02.363104',NULL,NULL),(443,'2025-12-24 17:18:02.371872',NULL,'The Room','The Wedding Room','31 St Mary\'s St, Stamford, undefined PE9 2DS','','01780480004','The Room',1,0,'stamford@wedding-room.co.uk','473','2025-12-24 17:18:02.371872',NULL,NULL),(444,'2025-12-24 17:18:02.381368',NULL,'The Shop','The Wedding Shop','1 Al Hamra Street, Swefieh, undefined undefined','','No phone','The Shop',1,0,'no-email@example.com','474','2025-12-24 17:18:02.381368',NULL,NULL),(445,'2025-12-24 17:18:02.390023',NULL,'The Rose','The Wild Rose','Dublin Rd, Newry, undefined BT34','','+44 28 30 27 8167','The Rose',1,0,'thewildroseboutique@outlook.com','475','2025-12-24 17:18:02.390023',NULL,NULL),(446,'2025-12-24 17:18:02.400058',NULL,'Theoneyidi','Theoneyidi','Room 101, Building 25, Zone B, undefined, Henan Province undefined','','+8618239986767','Theoneyidi',1,0,'theoneyidi@gmail.com','476','2025-12-24 17:18:02.400058',NULL,NULL),(447,'2025-12-24 17:18:02.414539',NULL,'Tibela utay','Untere stockstädter Straße 40   63762 Großostheim','','','+4915115211633','Tibela utay',1,0,'Tibela.bahno@gmx.de','477','2025-12-24 17:18:02.414539',NULL,NULL),(448,'2025-12-24 17:18:02.425939',NULL,'Tinti Clara & C - Liesbeth Buijsen','Tinti Lori Clara & C','Loc.case sparse 15/g, Arezzo, undefined 52018','','39 0575 500 190','Tinti Clara & C - Liesbeth Buijsen',1,0,'lorenzo@lorj.com','478','2025-12-24 17:18:02.425939',NULL,NULL),(449,'2025-12-24 17:18:02.436047',NULL,'TOP BRIDAL','TOP BRIDAL','3F Building 15, Sinan Mansion 523 fuxing Middle Road, Shanghai, undefined undefined','','+8618918117110','TOP BRIDAL',1,0,'Joanqu@topbridal.com','479','2025-12-24 17:18:02.436047',NULL,NULL),(450,'2025-12-24 17:18:02.449703',NULL,'TRADE INVEST','TRADE INVEST','','','No phone','TRADE INVEST',1,0,'tradeinvestbridge@yahoo.com','480','2025-12-24 17:18:02.449703',NULL,NULL),(451,'2025-12-24 17:18:02.458516',NULL,'Trade-Invest Bridge','Trade-Invest Bridge','Schonbrunnerstrabe 95, Wien, undefined 1050','','+43 676 624 3714','Trade-Invest Bridge',1,0,'Pollozhani-e@hotmail.com, tradeinvestbridge@yahoo.com','481','2025-12-24 17:18:02.458516',NULL,NULL),(452,'2025-12-24 17:18:02.588825',NULL,'Travis Waldron','Travis Waldron','1781 E Bayshore Rd, East Palo Alto, CA 94303, USA','','(650) 557-9977','Travis Waldron',1,0,'Travis@Waldron.com','26','2025-12-24 17:18:02.588825',NULL,NULL),(453,'2025-12-24 17:18:02.602896',NULL,'Ultimate Dresses','Ultimate Dresses','414 Ballyquin Road, Dungiven, Londonderry, undefined BT474NQ','','02877741828','Ultimate Dresses',1,0,'no-email@example.com','482','2025-12-24 17:18:02.602896',NULL,NULL),(454,'2025-12-24 17:18:02.612549',NULL,'Unique ESS','Unique by ESS','Varbergagatan 97, Orebro, Orebro lan 70352','','No phone','Unique ESS',1,0,'info@uniquebyess.se','483','2025-12-24 17:18:02.612549',NULL,NULL),(455,'2025-12-24 17:18:02.622822',NULL,'Unique Dresses','Unique Dresses','Fazantstraat 2, Zaltbommel, undefined 5301SC','','+31 6 48624301','Unique Dresses',1,0,'ouissam.zouggagh@hotmail.com','484','2025-12-24 17:18:02.622822',NULL,NULL),(456,'2025-12-24 17:18:02.636461',NULL,'UNIQUE LADY','UNIQUE LADY','','','No phone','UNIQUE LADY',1,0,'uniqueladyformals@gmail.com','485','2025-12-24 17:18:02.636461',NULL,NULL),(457,'2025-12-24 17:18:02.646305',NULL,'USA PLUS','USA BOUTIQUE PLUS','Usa Boutique Plus , undefined, undefined undefined','','+41764577015','USA PLUS',1,0,'info@usaboutiqueplus.ch','486','2025-12-24 17:18:02.646305',NULL,NULL),(458,'2025-12-24 17:18:02.657425',NULL,'Valentina','Valentina','','','No phone','Valentina',1,0,'Info@Valentinacarpita.com','487','2025-12-24 17:18:02.657425',NULL,NULL),(459,'2025-12-24 17:18:02.670348',NULL,'VALENTINA CINQUEMANI','VALENTINA CINQUEMANI','','','No phone','VALENTINA CINQUEMANI',1,0,'info@atelier14.info','488','2025-12-24 17:18:02.670348',NULL,NULL),(460,'2025-12-24 17:18:02.683005',NULL,'Valentina canzio','Valentina de canzio','','','No phone','Valentina canzio',1,0,'Valentina1402@gmail.com','489','2025-12-24 17:18:02.683005',NULL,NULL),(461,'2025-12-24 17:18:02.694918',NULL,'Valeria Ibisevic','Dress Of V&E','Sickingenstrabe 4, Berlin, undefined 10553','','+4917618714465','Valeria Ibisevic',1,0,'ramonamona1331@gmail.com','490','2025-12-24 17:18:02.694918',NULL,NULL),(462,'2025-12-24 17:18:02.707186',NULL,'Valeriya Osmanovic','Dress of V&E','Sickingenstrasse 4, Berlin, undefined 10553','','+4917618714465','Valeriya Osmanovic',1,0,'ramonamona1331@gmail.com','491','2025-12-24 17:18:02.707186',NULL,NULL),(463,'2025-12-24 17:18:02.717950',NULL,'Valery Salon','Valery Svadobny Salon','Street THK 5, Banská Bystrica, undefined 974 04','','+421 907 814 049','Valery Salon',1,0,'salonvalery@salonvalery.sk','492','2025-12-24 17:18:02.717950',NULL,NULL),(464,'2025-12-24 17:18:02.729906',NULL,'VEALENTINA CINQUEMANI','VEALENTINA CINQUEMANI','','','No phone','VEALENTINA CINQUEMANI',1,0,'Iinfo@atelier14.info','493','2025-12-24 17:18:02.729906',NULL,NULL),(465,'2025-12-24 17:18:02.739901',NULL,'Veronica\'s Boutique','Veronica\'s Boutique','','','No phone','Veronica\'s Boutique',1,0,'no-email@example.com','494','2025-12-24 17:18:02.739901',NULL,NULL),(466,'2025-12-24 17:18:02.749073',NULL,'Vesna Sposa','Vesna Sposa','Avenija Marina Drzica 25, Zagreb, undefined 10000','','+385 1 4818 582','Vesna Sposa',1,0,'sposa@vesnasposa.hr','495','2025-12-24 17:18:02.749073',NULL,NULL),(467,'2025-12-24 17:18:02.758171',NULL,'Vestida Bia','Vestida Pela Bia',' undefined, undefined undefined','','No phone','Vestida Bia',1,0,'lais@vestidapelabia.com','496','2025-12-24 17:18:02.758171',NULL,NULL),(468,'2025-12-24 17:18:02.770947',NULL,'VICTORIA SRL','VICTORIA SRL','VIA Generale Giordano Orsini, 42,, Napoli NA, Italy 80132','','No phone','VICTORIA SRL',1,0,'antonello@pierangelinews.it','497','2025-12-24 17:18:02.770947',NULL,NULL),(469,'2025-12-24 17:18:02.952237',NULL,'Dan Wilks','Video Games by Dan','207 N Main Ave, Tucson, AZ 85701, USA','','(650) 555-3456','Dan Wilks',1,0,'Videogames@intuit.com','27','2025-12-24 17:18:02.952237',NULL,NULL),(470,'2025-12-24 17:18:02.968749',NULL,'Viktoriya Wedding','Viktoriya Wedding','','','No phone','Viktoriya Wedding',1,0,'INFO@VIKTORYAWEDDING.IT','498','2025-12-24 17:18:02.968749',NULL,NULL),(471,'2025-12-24 17:18:02.979545',NULL,'VILLAGE BOUTIQUE','VILLAGE BOUTIQUE','1320 North Lake Dr., Prestomnburg, Kentucky KY 41653','','+16062263367','VILLAGE BOUTIQUE',1,0,'villageboutique606@outlook.com','499','2025-12-24 17:18:02.979545',NULL,NULL),(472,'2025-12-24 17:18:02.988786',NULL,'Violets and Formal','Violets Bridal and Formal','136 West, Henri De Tonti Blvd Springdale, Arkansas, undefined, undefined undefined','','4792000613','Violets and Formal',1,0,'violetsbridal@gmail.com','500','2025-12-24 17:18:02.988786',NULL,NULL),(473,'2025-12-24 17:18:02.998202',NULL,'Wedding Evening by Milan','Wedding & Evening by Milan','Dronningensgade 2, Odense, undefined 5000','','+45 58 59 79 45','Wedding Evening by Milan',1,0,'info@milanbrides.com','501','2025-12-24 17:18:02.998202',NULL,NULL),(474,'2025-12-24 17:18:03.006890',NULL,'Wedding Castle','Wedding Castle','Barkarbyvägen 45,  Järfälla, Stockholm, undefined 177 44','','+46 8 36 80 80','Wedding Castle',1,0,'info@weddingcastle.se','502','2025-12-24 17:18:03.006890',NULL,NULL),(475,'2025-12-24 17:18:03.188735',NULL,'Whitney Brewer','Wedding Planning by Whitney','133 Broadway, Redwood City, CA 94063, USA','','(650) 557-2473','Whitney Brewer',1,0,'Dream_Wedding@intuit.com','28','2025-12-24 17:18:03.188735',NULL,NULL),(476,'2025-12-24 17:18:03.377873',NULL,'Nicola Weiskopf','Weiskopf Consulting','139 Main St W, Saint John, NB E2M 3N6, Canada','','(650) 555-1423','Nicola Weiskopf',1,0,'Consulting@intuit.com','29','2025-12-24 17:18:03.377873',NULL,NULL),(477,'2025-12-24 17:18:03.388882',NULL,'WHATSUP EUROPE','WHATSUP EUROPE',' CALIFORNIA, undefined undefined','','No phone','WHATSUP EUROPE',1,0,'no-email@example.com','503','2025-12-24 17:18:03.388882',NULL,NULL),(478,'2025-12-24 17:18:03.401578',NULL,'White Bal & Brudkläder','White Night Bal & Brudkläder','Trädgårdsgatan 5, ÖREBRO, undefined 702 12','','No phone','White Bal & Brudkläder',1,0,'no-email@example.com','504','2025-12-24 17:18:03.401578',NULL,NULL),(479,'2025-12-24 17:18:03.414027',NULL,'Wilma\'s Shop','Wilma\'s Dress Shop','117 N Hord St, Grayson, KY 41143, KENTUCKY, undefined undefined','','No phone','Wilma\'s Shop',1,0,'wilmasboutique@gmail.com','505','2025-12-24 17:18:03.414027',NULL,NULL),(480,'2025-12-24 17:18:03.423016',NULL,'Wright Dress','Wright Dress','1561 NW 82nd Avenue Doral Florida 33126, undefined, undefined undefined','','2424771405','Wright Dress',1,0,'info@wrightdress.com','506','2025-12-24 17:18:03.423016',NULL,NULL),(481,'2025-12-24 17:18:03.437971',NULL,'Yazan Rah','Yazan Rah','','','No phone','Yazan Rah',1,0,'yazan.rah@gmail.com','507','2025-12-24 17:18:03.437971',NULL,NULL),(482,'2025-12-24 17:18:03.448060',NULL,'Z COUTURE','Z COUTURE','9503 Research Blvd, Austin, Texas TX 78759','','+15128268185','Z COUTURE',1,0,'kristin@zcoutureaustin.com','508','2025-12-24 17:18:03.448060',NULL,NULL),(483,'2025-12-24 17:18:03.462698',NULL,'Zain','amourage','','','No phone','Zain',1,0,'zain.athar60@gmail.com','509','2025-12-24 17:18:03.462698',NULL,NULL),(484,'2025-12-24 17:18:03.473148',NULL,'Zaira Salinas','Zaira Salinas','709 Pauli Avenue, Alamo, Texas 78516','','+19564513339','Zaira Salinas',1,0,'zadri_23@yahoo.com','510','2025-12-24 17:18:03.473148',NULL,NULL),(485,'2025-12-24 17:18:03.485695',NULL,'ZAKARIA','ZAKARIA',' undefined, undefined undefined','','No phone','ZAKARIA',1,0,'no-email@example.com','511','2025-12-24 17:18:03.485695',NULL,NULL),(486,'2025-12-24 17:18:03.495053',NULL,'Zeba Collection','Zeba Collection','Lange Brugst 36, Breda, South Holland 4811WS','','+31683447892','Zeba Collection',1,0,'zebacollection.breda@gmail.com','512','2025-12-24 17:18:03.495053',NULL,NULL),(487,'2025-12-24 17:18:03.504718',NULL,'Zehra Mode','Zehra Mode','Mustafabey Cad, Meksika Sok No. 7/1-2, Izmir, undefined undefined','','0 232 464 1612','Zehra Mode',1,0,'Info@zehraylamoda.com','513','2025-12-24 17:18:03.504718',NULL,NULL),(488,'2025-12-24 17:18:03.516627',NULL,'Zeilo Fashion','Zeilo Fashion','ZEIL 15, Frankfurt, undefined 60313','','496992038033','Zeilo Fashion',1,0,'m.manija@hotmail.de','514','2025-12-24 17:18:03.516627',NULL,NULL),(489,'2025-12-24 17:18:03.524748',NULL,'Zoe Couture','Zoe Rose Couture','915 Santee St., Los Angeles, California 90015','','+1213805193','Zoe Couture',1,0,'zgu+y@yahoo.com','515','2025-12-24 17:18:03.524748',NULL,NULL),(490,'2025-12-26 17:00:17.587948',NULL,'sanorita','sanorita','PCFM+429, Ward 13, Punjabi Para, Siliguri, West Bengal 734001, India','www.success.com','+85228154592','DBR WEDDINGS',1,0,'sales@dbrweddings.com',NULL,'2025-12-26 17:00:17.587948',3,3);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zipCode` varchar(6) NOT NULL,
  `mobileNumber` varchar(13) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `image` varchar(150) NOT NULL,
  `lastLoginTime` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `roleId` int(11) DEFAULT NULL,
  `reportingManagerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_ecb9bb3a8c8e999e1e00ccfd83` (`mobileNumber`),
  UNIQUE KEY `IDX_d6f15bcb4f9968ee6bd0789dec` (`userName`),
  UNIQUE KEY `IDX_c7496c7e6508db62ba4da839b3` (`lastName`),
  UNIQUE KEY `REL_12c6c1ac43cccd5c7b71fe5e53` (`reportingManagerId`),
  KEY `FK_24d98872eb52c3edb30ce96c1e9` (`roleId`),
  CONSTRAINT `FK_12c6c1ac43cccd5c7b71fe5e53a` FOREIGN KEY (`reportingManagerId`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_24d98872eb52c3edb30ce96c1e9` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `expenseName` varchar(225) NOT NULL,
  `invoice` varchar(225) DEFAULT NULL,
  `payer` varchar(225) NOT NULL,
  `expenseType` varchar(225) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(225) NOT NULL,
  `isPaid` tinyint(4) NOT NULL DEFAULT 0,
  `otherType` varchar(225) DEFAULT NULL,
  `Pending` datetime DEFAULT current_timestamp(),
  `Paid` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'2025-12-14 23:43:32.768636',NULL,'Chic & Holland expenses','IN#d024 03456789','hello','opex',1234,'inr',0,NULL,'2025-12-14 23:43:32',NULL),(2,'2025-12-14 23:55:01.608935',NULL,'Ozil Expenses','IN#a13241234','hello','fixed',65432,'inr',1,NULL,'2025-12-14 23:55:01',NULL);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expensetypes`
--

DROP TABLE IF EXISTS `expensetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expensetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_c9fd3d253506673812d923376b` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expensetypes`
--

LOCK TABLES `expensetypes` WRITE;
/*!40000 ALTER TABLE `expensetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `expensetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `color` varchar(255) NOT NULL DEFAULT 'SAS',
  `mesh_color` varchar(255) NOT NULL DEFAULT 'SAS',
  `beading_color` varchar(255) NOT NULL DEFAULT 'SAS',
  `add_lining` int(11) NOT NULL DEFAULT 0,
  `lining` varchar(255) NOT NULL DEFAULT 'SAS',
  `lining_color` varchar(255) DEFAULT 'SAS',
  `product_size` int(11) NOT NULL,
  `admin_us_size` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `customization_price` int(11) NOT NULL DEFAULT 0,
  `product_price` int(11) NOT NULL DEFAULT 0,
  `customization` varchar(255) NOT NULL DEFAULT 'Noting To customize',
  `reference_image` text DEFAULT NULL,
  `size_country` varchar(255) NOT NULL DEFAULT 'EU',
  `is_order_placed` int(11) NOT NULL DEFAULT 0,
  `currencyId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `retailerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_01f33e685427bbbc224dc552d6c` (`productId`),
  KEY `FK_15adc85de47c08f77abc92d3892` (`retailerId`),
  KEY `FK_ac46c4da4a33bb198aaaa0ca705` (`currencyId`),
  CONSTRAINT `FK_01f33e685427bbbc224dc552d6c` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_15adc85de47c08f77abc92d3892` FOREIGN KEY (`retailerId`) REFERENCES `retailers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ac46c4da4a33bb198aaaa0ca705` FOREIGN KEY (`currencyId`) REFERENCES `currencies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
INSERT INTO `favourites` VALUES (1,'2025-12-20 15:21:39.663389',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',7,0,320,'',NULL,'EU',1,2,2,2),(2,'2025-12-20 15:37:19.870270',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',58,'58',1,0,280,'',NULL,'EU',1,2,2,2),(3,'2025-12-20 16:32:28.931719',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,320,'',NULL,'EU',1,2,2,2),(4,'2025-12-20 16:47:45.660944',NULL,'SAS','#7FFFD4','#FF7F50',0,'Fully Stitched Lined','#00FF00',60,'60',1,0,16,'',NULL,'EU',1,2,1,2),(5,'2025-12-20 16:50:37.570861',NULL,'SAS','#7FFFD4','#FF7F50',0,'Fully Stitched Lined','#00FF00',60,'60',1,0,16,'',NULL,'EU',1,2,1,2),(6,'2025-12-20 23:57:44.922097',NULL,'SAS','#7FFFD4','#FF7F50',0,'Fully Stitched Lined','#00FF00',60,'60',1,0,16,'',NULL,'EU',1,2,1,2),(7,'2025-12-22 16:54:58.264167',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,0,'',NULL,'EU',1,2,2,2),(8,'2025-12-22 16:57:11.604030',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,320,'',NULL,'EU',1,2,2,2),(9,'2025-12-23 21:47:10.154799',NULL,'SAS','#7FFFD4','#FF7F50',0,'Fully Stitched Lined','#00FF00',60,'60',1,0,16,'',NULL,'EU',1,2,1,2),(10,'2025-12-24 10:52:01.908879',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,320,'',NULL,'EU',1,2,2,2),(11,'2025-12-24 11:09:05.225688',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,320,'',NULL,'EU',1,2,2,2),(12,'2025-12-24 16:48:03.639903',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,320,'',NULL,'EU',1,2,2,2),(13,'2025-12-24 16:48:18.647096',NULL,'SAS','#7FFFD4','#FF7F50',0,'Fully Stitched Lined','#00FF00',60,'60',1,0,16,'',NULL,'EU',1,2,1,2),(14,'2025-12-24 17:06:59.596905',NULL,'custom','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',2,'34',1,0,200,'',NULL,'US',1,2,2,2),(15,'2025-12-24 17:56:37.476770',NULL,'SAS','#7FFFD4','#FF7F50',0,'Fully Stitched Lined','#00FF00',60,'60',1,0,0,'',NULL,'EU',1,2,1,2),(16,'2025-12-24 17:59:09.220729',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,320,'',NULL,'EU',1,2,2,2),(17,'2025-12-25 11:26:01.034515',NULL,'SAS','#7FFFD4','#FF7F50',0,'Fully Stitched Lined','#00FF00',20,'52',1,0,10,'',NULL,'US',1,2,1,2),(18,'2025-12-25 11:26:16.523974',NULL,'SAS','#7FFFD4','#FF7F50',0,'Fully Stitched Lined','#00FF00',64,'60',1,0,16,'',NULL,'IT',1,2,1,2),(19,'2025-12-25 11:26:32.415409',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,320,'',NULL,'EU',1,2,2,2),(20,'2025-12-25 12:32:23.257886',NULL,'SAS','#7FFFD4','#FF7F50',0,'Fully Stitched Lined','#00FF00',2,'34',1,0,10,'',NULL,'US',1,2,1,2),(21,'2025-12-25 12:54:39.885165',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,320,'',NULL,'EU',1,2,2,2),(22,'2025-12-26 12:50:38.825623',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,320,'',NULL,'EU',1,2,2,2),(23,'2025-12-26 14:43:27.050902',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,320,'',NULL,'EU',1,2,2,2),(24,'2025-12-26 15:03:55.051400',NULL,'SAS','#7FFFD4','#FF7F50',0,'Fully Stitched Lined','#00FF00',60,'60',1,0,16,'',NULL,'EU',1,2,1,2),(25,'2025-12-26 15:04:16.425998',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',2,'34',1,0,200,'',NULL,'US',1,2,2,2),(26,'2025-12-26 15:41:38.563257',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',2,'34',1,0,200,'',NULL,'US',1,2,2,2),(27,'2025-12-26 17:48:17.689492',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',56,'52',1,0,420,'',NULL,'IT',1,3,2,3),(28,'2025-12-26 23:58:36.164944',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',64,'60',1,0,480,'',NULL,'IT',1,3,2,3),(29,'2025-12-26 23:58:36.163062',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'56',1,0,480,'',NULL,'IT',1,3,2,3),(30,'2025-12-26 23:58:36.167002',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',62,'58',1,0,480,'',NULL,'IT',1,3,2,3),(31,'2025-12-27 11:07:16.478799',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',64,'60',1,0,480,'',NULL,'IT',1,3,2,3),(32,'2025-12-27 11:07:16.479697',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',62,'58',1,0,480,'',NULL,'IT',1,3,2,3),(33,'2025-12-27 11:07:16.480404',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'56',1,0,480,'',NULL,'IT',1,3,2,3),(34,'2025-12-27 11:26:44.586310',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',64,'60',1,0,480,'',NULL,'IT',1,3,2,3),(35,'2025-12-27 11:26:44.587652',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',64,'60',1,0,480,'',NULL,'IT',1,3,2,3),(36,'2025-12-27 11:28:23.803493',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,0,'',NULL,'EU',1,3,2,3),(37,'2025-12-27 11:28:23.804126',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',62,'58',1,0,0,'',NULL,'IT',1,3,2,3),(38,'2025-12-27 11:28:23.804729',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',64,'60',1,0,0,'',NULL,'IT',1,3,2,3),(39,'2025-12-27 11:28:23.805750',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',64,'60',1,0,0,'',NULL,'IT',1,3,2,3),(40,'2025-12-27 11:47:01.849685',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',64,'60',1,0,480,'',NULL,'IT',1,3,2,3),(41,'2025-12-27 11:47:01.850581',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'56',1,0,480,'',NULL,'IT',1,3,2,3),(42,'2025-12-27 11:47:01.851319',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',58,'54',1,0,420,'',NULL,'IT',1,3,2,3),(43,'2025-12-27 11:50:18.147241',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,480,'',NULL,'EU',1,3,2,3),(44,'2025-12-27 11:50:18.148618',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',58,'58',1,0,420,'',NULL,'EU',1,3,2,3),(45,'2025-12-27 11:56:13.865430',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',60,'60',1,0,480,'',NULL,'EU',1,3,2,3),(46,'2025-12-27 11:56:13.866566',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',58,'58',1,0,420,'',NULL,'EU',1,3,2,3),(47,'2025-12-27 11:56:13.867663',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',56,'56',1,0,420,'',NULL,'EU',1,3,2,3),(48,'2025-12-29 14:07:00.835749',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',20,'52',1,0,200,'',NULL,'US',1,2,2,2),(49,'2025-12-30 14:29:06.139839',NULL,'SAS','#7FFFD4','#FF7F50',0,'Fully Stitched Lined','#00FF00',32,'60',1,0,20,'',NULL,'UK',1,3,1,3),(50,'2025-12-30 14:29:23.805560',NULL,'SAS','#FFF5EE','#FFF5EE',0,'Full Separate Lining','#00FF00',30,'58',1,0,300,'',NULL,'UK',1,3,2,3);
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `color` varchar(20) NOT NULL,
  `general` varchar(100) NOT NULL,
  `size` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `subCategoryId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_47d21fcf49d54d5cbd4a09b22d9` (`categoryId`),
  KEY `FK_237122d61a8036036d7efd04974` (`subCategoryId`),
  KEY `FK_19f6e91bd3b53e47103305f3f84` (`productId`),
  CONSTRAINT `FK_19f6e91bd3b53e47103305f3f84` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_237122d61a8036036d7efd04974` FOREIGN KEY (`subCategoryId`) REFERENCES `subcategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_47d21fcf49d54d5cbd4a09b22d9` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_user_roles`
--

DROP TABLE IF EXISTS `new_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `roleName` varchar(255) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`permissions`)),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_user_roles`
--

LOCK TABLES `new_user_roles` WRITE;
/*!40000 ALTER TABLE `new_user_roles` DISABLE KEYS */;
INSERT INTO `new_user_roles` VALUES (1,'2025-12-08 18:41:25.981860',NULL,'Access','[\"/admin-panel/\",\"/admin-panel/bank\",\"/admin-panel/users\",\"/admin-panel/user-roles\",\"/admin-panel/contactus\",\"/admin-panel/color-chart\",\"/admin-panel/orders\",\"/admin-panel/order-list\",\"/admin-panel/request\",\"/admin-panel/products/categories\",\"/admin-panel/products/collections\",\"/admin-panel/products/colours\",\"/admin-panel/products\",\"/admin-panel/customers\",\"/admin-panel/store-locators\",\"/admin-panel/stock\",\"/admin-panel/sponsor\",\"/admin-panel/expenses/chic-and-holland\",\"/admin-panel/expenses/ozil\",\"/admin-panel/quickbook\"]'),(2,'2025-12-30 14:50:38.274197',NULL,'aman','[\"/admin-panel/\",\"/admin-panel/bank\",\"/admin-panel/users\",\"/admin-panel/user-roles\"]');
/*!40000 ALTER TABLE `new_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_piece_assignment`
--

DROP TABLE IF EXISTS `order_piece_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_piece_assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pieceId` int(11) DEFAULT NULL,
  `workerId` int(11) DEFAULT NULL,
  `assignedStatus` varchar(255) DEFAULT NULL,
  `assignedAt` datetime DEFAULT current_timestamp(),
  `completedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_piece_assignment`
--

LOCK TABLES `order_piece_assignment` WRITE;
/*!40000 ALTER TABLE `order_piece_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_piece_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_piece_history`
--

DROP TABLE IF EXISTS `order_piece_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_piece_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pieceId` int(11) DEFAULT NULL,
  `oldStatus` varchar(255) DEFAULT NULL,
  `newStatus` varchar(255) DEFAULT NULL,
  `changedAt` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_piece_history`
--

LOCK TABLES `order_piece_history` WRITE;
/*!40000 ALTER TABLE `order_piece_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_piece_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_pieces`
--

DROP TABLE IF EXISTS `order_pieces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_pieces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `styleNo` varchar(255) DEFAULT NULL,
  `pieceNumber` int(11) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `retailerOrderId` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_pieces`
--

LOCK TABLES `order_pieces` WRITE;
/*!40000 ALTER TABLE `order_pieces` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_pieces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status_progress`
--

DROP TABLE IF EXISTS `order_status_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `completedQty` int(11) NOT NULL DEFAULT 0,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `totalQty` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `orderId_idx` (`orderId`),
  CONSTRAINT `order_status_progress_orderId_fk` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status_progress`
--

LOCK TABLES `order_status_progress` WRITE;
/*!40000 ALTER TABLE `order_status_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_status_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d3e32ea792d3d4edb70877be026` (`productId`),
  KEY `FK_8b76857021ffdf7fd0ac0026652` (`orderId`),
  CONSTRAINT `FK_8b76857021ffdf7fd0ac0026652` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_d3e32ea792d3d4edb70877be026` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderpayments`
--

DROP TABLE IF EXISTS `orderpayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderpayments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `paymentMethod` varchar(225) NOT NULL DEFAULT 'Bank Share',
  `orderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d03633e175a326c7161c821f082` (`orderId`),
  CONSTRAINT `FK_d03633e175a326c7161c821f082` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderpayments`
--

LOCK TABLES `orderpayments` WRITE;
/*!40000 ALTER TABLE `orderpayments` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderpayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `purchaeOrderNo` varchar(225) NOT NULL,
  `manufacturingEmailAddress` varchar(225) NOT NULL,
  `orderType` varchar(255) DEFAULT NULL,
  `orderReceivedDate` datetime NOT NULL DEFAULT current_timestamp(),
  `orderCancellationDate` datetime DEFAULT NULL,
  `pattern` datetime DEFAULT current_timestamp(),
  `khaka` datetime DEFAULT NULL,
  `issue_beading` datetime DEFAULT NULL,
  `beading` datetime DEFAULT NULL,
  `zarkan` datetime DEFAULT NULL,
  `stitching` datetime DEFAULT NULL,
  `ready_to_delivery` datetime DEFAULT NULL,
  `shipped` datetime DEFAULT NULL,
  `address` text DEFAULT NULL,
  `orderStatus` enum('Pattern','Khaka','Issue Beading','Beading','Zarkan','Stitching','Balance Pending','Ready To Delivery','Shipped') NOT NULL DEFAULT 'Pattern',
  `shippingStatus` enum('Not Shipped','Shipped') NOT NULL DEFAULT 'Not Shipped',
  `shippingDate` datetime DEFAULT NULL,
  `trackingNo` varchar(225) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `customerId` int(11) DEFAULT NULL,
  `ppt_path` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e5de51ca888d8b1f5ac25799dd1` (`customerId`),
  CONSTRAINT `FK_e5de51ca888d8b1f5ac25799dd1` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2025-12-19 18:01:53.756027',NULL,'PO#AMAN000012345678','rubyinc@hotmail.com','Store','2025-12-06 00:00:00','2025-12-06 00:00:00','2025-12-19 18:01:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Pattern','Not Shipped',NULL,NULL,0,2,NULL,NULL),(2,'2025-12-28 13:38:42.485284',NULL,'PO#SARTORIA000012345','rubyinc@hotmail.com','Store','2025-12-03 00:00:00','2025-12-05 00:00:00','2025-12-28 13:38:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Ready To Delivery','Not Shipped',NULL,NULL,0,2,NULL,NULL),(3,'2025-12-28 17:01:18.969305',NULL,'PO#AMAN00001234567','rubyinc@hotmail.com','Customer','2025-12-17 00:00:00','2025-12-11 00:00:00','2025-12-29 17:56:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Pattern','Not Shipped',NULL,NULL,0,2,NULL,NULL),(4,'2025-12-29 18:46:27.541746',NULL,'PO#AMAN000015432345','rubyinc@hotmail.com','Store','2025-12-06 00:00:00',NULL,'2025-12-29 18:46:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hello','Pattern','Not Shipped',NULL,NULL,0,2,NULL,NULL),(5,'2025-12-29 18:47:49.075567',NULL,'PO#AMAN00001213451','rubyinc@hotmail.com','Store','2025-12-20 00:00:00','2025-12-26 00:00:00','2025-12-29 18:47:49','2025-12-29 18:57:18',NULL,NULL,NULL,NULL,NULL,NULL,'hello','Khaka','Not Shipped',NULL,NULL,0,2,NULL,NULL),(6,'2025-12-30 11:19:54.986778',NULL,'PO#AMAN0000112341234','rubyinc@hotmail.com','Retail','2025-12-05 00:00:00','2025-12-07 00:00:00','2025-12-30 11:19:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hello','Pattern','Not Shipped',NULL,NULL,0,2,NULL,NULL),(7,'2025-12-30 12:14:02.218561',NULL,'PO#AMAN00001','rubyinc@hotmail.com','Store','2025-12-11 00:00:00','2025-12-10 00:00:00','2025-12-30 12:14:02','2025-12-30 12:53:56','2025-12-30 13:53:11',NULL,NULL,NULL,NULL,NULL,'hello','Issue Beading','Not Shipped',NULL,NULL,0,2,NULL,NULL),(8,'2025-12-30 14:39:45.843539',NULL,'PO#AMAN000011234','rubyinc@hotmail.com','Customer','2025-12-11 00:00:00','2025-12-20 00:00:00','2025-12-30 14:39:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sdfghhhhhhhhhh','Pattern','Not Shipped',NULL,NULL,0,2,NULL,NULL),(9,'2025-12-30 14:59:04.009664',NULL,'PO#SARTORIA000011345','rubyinc@hotmail.com','Customer','2025-12-11 00:00:00','2025-12-11 00:00:00','2025-12-30 14:59:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hello','Pattern','Not Shipped',NULL,NULL,0,399,NULL,NULL),(10,'2025-12-30 17:23:17.295246',NULL,'PO#AMAN0000122345323454','rubyinc@hotmail.com','Online','2025-12-17 00:00:00','2026-01-01 00:00:00','2025-12-30 17:23:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Pattern','Not Shipped',NULL,NULL,0,2,NULL,NULL),(11,'2025-12-30 17:29:02.166743',NULL,'PO#AMAN00001123454321234','rubyinc@hotmail.com','aman','2025-12-11 00:00:00','2025-12-10 00:00:00','2025-12-30 17:29:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hello','Pattern','Not Shipped',NULL,NULL,0,2,NULL,NULL),(12,'2025-12-30 17:32:09.011719',NULL,'PO#AMAN000011234567654321234567','rubyinc@hotmail.com','Online','2025-12-17 00:00:00','2026-01-01 00:00:00','2025-12-30 17:32:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hello','Pattern','Not Shipped',NULL,NULL,0,2,NULL,NULL),(13,'2026-01-02 12:23:55.137093',NULL,'PO#AMAN000011234321345','rubyinc@hotmail.com','aman','2026-01-10 00:00:00','2026-01-11 00:00:00','2026-01-02 12:23:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aman','Pattern','Not Shipped',NULL,NULL,0,2,NULL,NULL),(14,'2026-01-02 15:36:09.954481',NULL,'PO#AMAN00001144355124','amankumarparsa1@gmail.com','Store','2026-01-06 00:00:00','2026-01-15 00:00:00','2026-01-03 14:41:43','2026-01-03 14:41:52','2026-01-03 14:42:00','2026-01-03 14:42:15',NULL,NULL,NULL,NULL,'hello','Beading','Not Shipped',NULL,NULL,0,2,NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstyles`
--

DROP TABLE IF EXISTS `orderstyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderstyles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `styleNo` varchar(225) DEFAULT NULL,
  `colorType` varchar(225) DEFAULT NULL,
  `customColor` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`customColor`)),
  `sizeCountry` varchar(225) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `customSize` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`customSize`)),
  `customSizesQuantity` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`customSizesQuantity`)),
  `quantity` int(11) NOT NULL,
  `mesh_color` varchar(255) NOT NULL DEFAULT 'SAS',
  `beading_color` varchar(255) NOT NULL DEFAULT 'SAS',
  `lining` varchar(255) NOT NULL DEFAULT 'SAS',
  `lining_color` varchar(255) DEFAULT 'SAS',
  `photoUrls` text ,
  `comments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`comments`)),
  `orderId` int(11) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `currentStatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_118cfc55460b3a04f7f88579c31` (`orderId`),
  CONSTRAINT `FK_118cfc55460b3a04f7f88579c31` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstyles`
--

LOCK TABLES `orderstyles` WRITE;
/*!40000 ALTER TABLE `orderstyles` DISABLE KEYS */;
INSERT INTO `orderstyles` VALUES (1,'2025-12-19 18:01:53.767669',NULL,'SK660016','SAS','\"[]\"','EU','60','\"[]\"','\"[]\"',7,'#FFF5EE','#FFF5EE','Full Separate Lining','#00FF00','\"[]\"','\"[]\"',1,'PO#AMAN000012345678-SK660016-1',NULL),(2,'2025-12-28 13:38:42.495574',NULL,'SK660016','SAS','\"[]\"','EU','60','\"[]\"','\"[]\"',1,'#FFF5EE','#FFF5EE','Full Separate Lining','#00FF00','\"[]\"','\"[]\"',2,'PO#SARTORIA000012345-SK660016-2',NULL),(3,'2025-12-28 17:01:18.982180',NULL,'SK660016','SAS','\"[]\"','US','2','\"[]\"','\"[]\"',1,'#FFF5EE','#FFF5EE','Full Separate Lining','#00FF00','\"[]\"','\"[]\"',3,'PO#AMAN00001234567-SK660016-3',NULL),(4,'2025-12-29 18:46:27.564567',NULL,'SK660016','SAS','\"[]\"','EU','60','\"[]\"','\"[]\"',1,'#FFF5EE','#FFF5EE','Full Separate Lining','#00FF00','\"[\\\"chicandholland/orders/4/zb5f5l.jpeg\\\"]\"','\"[]\"',4,'PO#AMAN000015432345-SK660016-4',NULL),(5,'2025-12-29 18:47:49.081649',NULL,'SK660011','SAS','\"[]\"','EU','60','\"[]\"','\"[]\"',1,'#7FFFD4','#FF7F50','Fully Stitched Lined','#00FF00','\"[\\\"chicandholland/orders/5/cjpym9.jpeg\\\"]\"','\"[]\"',5,'PO#AMAN00001213451-SK660011-5','Khaka'),(6,'2025-12-30 11:19:54.995619',NULL,'SK660011','SAS','\"[]\"','IT','64','\"[]\"','\"[]\"',1,'#7FFFD4','#FF7F50','Fully Stitched Lined','#00FF00','\"[]\"','\"[]\"',6,'PO#AMAN0000112341234-SK660011-6',NULL),(7,'2025-12-30 12:14:02.247268',NULL,'SK660011','SAS','\"[]\"','EU','60','\"[]\"','\"[]\"',1,'#7FFFD4','#FF7F50','Fully Stitched Lined','#00FF00','\"[]\"','\"[]\"',7,'PO#AMAN00001-SK660011-7','Issue Beading'),(8,'2025-12-30 14:39:45.855038',NULL,'SK660016','SAS','\"[]\"','US','2','\"[]\"','\"[]\"',1,'#FFF5EE','#FFF5EE','Full Separate Lining','#00FF00','\"[]\"','\"[]\"',8,'PO#AMAN000011234-SK660016-8',NULL),(9,'2025-12-30 14:59:04.018839',NULL,'SK660011','SAS','\"[]\"','US','28','\"[]\"','\"[]\"',17,'#7FFFD4','#FF7F50','Fully Stitched Lined','#00FF00','\"[]\"','\"[]\"',9,'PO#SARTORIA000011345-SK660011-9',NULL),(10,'2025-12-30 17:23:17.343782',NULL,'SK660011','SAS','\"[]\"','EU','60','\"[]\"','\"[]\"',0,'#7FFFD4','#FF7F50','Fully Stitched Lined','#00FF00','\"[]\"','\"[]\"',10,'PO#AMAN0000122345323454-SK660011-10',NULL),(11,'2025-12-30 17:29:02.193989',NULL,'SK660016','SAS','\"[]\"','EU','60','\"[]\"','\"[]\"',1,'#FFF5EE','#FFF5EE','Full Separate Lining','#00FF00','\"[]\"','\"[]\"',11,'PO#AMAN00001123454321234-SK660016-11',NULL),(12,'2025-12-30 17:32:09.043619',NULL,'SK660011','SAS','\"[]\"','EU','60','\"[]\"','\"[]\"',1,'#7FFFD4','#FF7F50','Fully Stitched Lined','#00FF00','\"[]\"','\"[]\"',12,'PO#AMAN000011234567654321234567-SK660011-12',NULL),(13,'2026-01-02 12:23:55.146506',NULL,'SK660011','SAS','\"[]\"','EU','60','\"[]\"','\"[]\"',1,'#7FFFD4','#FF7F50','Fully Stitched Lined','#00FF00','\"[]\"','\"[]\"',13,'PO#AMAN000011234321345-SK660011-13',NULL),(14,'2026-01-02 15:36:09.965576',NULL,'SK660011','SAS','\"[]\"','EU','60','\"[]\"','\"[]\"',1,'#7FFFD4','#FF7F50','Fully Stitched Lined','#00FF00','\"[]\"','\"[]\"',14,'PO#AMAN00001144355124-SK660011-14','Khaka');
/*!40000 ALTER TABLE `orderstyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_action`
--

DROP TABLE IF EXISTS `page_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `action` int(11) NOT NULL DEFAULT 0,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_2320a3bb84c7cad7d935dc177c` (`name`),
  UNIQUE KEY `REL_b3284626ef48f66ef9ee4d5d2a` (`roleId`),
  CONSTRAINT `FK_b3284626ef48f66ef9ee4d5d2a0` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_action`
--

LOCK TABLES `page_action` WRITE;
/*!40000 ALTER TABLE `page_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payers`
--

DROP TABLE IF EXISTS `payers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `mobileNumber` varchar(13) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_57395f0ae7c01951b21f07acd7` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payers`
--

LOCK TABLES `payers` WRITE;
/*!40000 ALTER TABLE `payers` DISABLE KEYS */;
/*!40000 ALTER TABLE `payers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_48ce552495d14eae9b187bb671` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `po_counters`
--

DROP TABLE IF EXISTS `po_counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `po_counters` (
  `prefix` varchar(50) NOT NULL,
  `last_number` int(11) NOT NULL,
  PRIMARY KEY (`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `po_counters`
--

LOCK TABLES `po_counters` WRITE;
/*!40000 ALTER TABLE `po_counters` DISABLE KEYS */;
INSERT INTO `po_counters` VALUES ('PO#AMAN',3);
/*!40000 ALTER TABLE `po_counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_colours`
--

DROP TABLE IF EXISTS `product_colours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_colours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `hexcode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_d10a4701651606bde8f5c0eb06` (`name`),
  UNIQUE KEY `IDX_c3e7e34f68ff1d7994eed5557c` (`hexcode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_colours`
--

LOCK TABLES `product_colours` WRITE;
/*!40000 ALTER TABLE `product_colours` DISABLE KEYS */;
INSERT INTO `product_colours` VALUES (1,'2025-12-09 10:42:10.069503',NULL,'Seashell','#FFF5EE'),(2,'2025-12-09 10:42:18.349285',NULL,'Green','#00FF00'),(3,'2025-12-09 10:42:27.896970',NULL,'Coral','#FF7F50'),(4,'2025-12-09 10:42:42.251585',NULL,'Aquamarine Jewel','#7FFFD4');
/*!40000 ALTER TABLE `product_colours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_country_pricing`
--

DROP TABLE IF EXISTS `product_country_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_country_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_9e03152404c231474bf82acf96` (`productId`,`countryId`),
  KEY `FK_f13c276b9233cdee563526df334` (`countryId`),
  CONSTRAINT `FK_de63ac0f8095c7836cd54f4b1d5` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_f13c276b9233cdee563526df334` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_country_pricing`
--

LOCK TABLES `product_country_pricing` WRITE;
/*!40000 ALTER TABLE `product_country_pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_country_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_currency_pricing`
--

DROP TABLE IF EXISTS `product_currency_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_currency_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `currencyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_7c82e48bf8f7102d856e857c22` (`productId`,`currencyId`),
  KEY `FK_5efa1b27abcc54aa7b67b793f32` (`currencyId`),
  CONSTRAINT `FK_5efa1b27abcc54aa7b67b793f32` FOREIGN KEY (`currencyId`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_eb27570f867ed1cc19c3b14e71a` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_currency_pricing`
--

LOCK TABLES `product_currency_pricing` WRITE;
/*!40000 ALTER TABLE `product_currency_pricing` DISABLE KEYS */;
INSERT INTO `product_currency_pricing` VALUES (1,'2025-12-09 10:43:59.061721',NULL,10.00,1,2),(2,'2025-12-09 10:43:59.063634',NULL,20.00,1,3),(3,'2025-12-09 10:43:59.067273',NULL,17.00,1,4),(4,'2025-12-11 18:33:33.677053',NULL,200.00,2,2),(5,'2025-12-11 18:33:33.684322',NULL,300.00,2,3),(6,'2025-12-11 18:33:33.687714',NULL,381.00,2,4);
/*!40000 ALTER TABLE `product_currency_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productimages`
--

DROP TABLE IF EXISTS `productimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productimages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `isMain` tinyint(4) NOT NULL DEFAULT 0,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b06e37169308a684e8e945a485d` (`productId`),
  CONSTRAINT `FK_b06e37169308a684e8e945a485d` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimages`
--

LOCK TABLES `productimages` WRITE;
/*!40000 ALTER TABLE `productimages` DISABLE KEYS */;
INSERT INTO `productimages` VALUES (1,'2025-12-09 10:44:13.928188',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SK660011/82zam.webp',0,1),(2,'2025-12-09 10:44:25.673258',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SK660011/1sff1s.webp',0,1),(3,'2025-12-11 18:33:46.590202',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SK660016/t6fzbt.webp',0,2),(4,'2025-12-11 18:34:02.117779',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SK660016/xs7rfv.webp',0,2);
/*!40000 ALTER TABLE `productimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `productCode` varchar(30) NOT NULL,
  `price` int(11) DEFAULT 0,
  `description` text DEFAULT NULL,
  `minSaleQuantity` int(11) DEFAULT NULL,
  `hasReturnPolicy` tinyint(4) DEFAULT NULL,
  `hasDiscount` tinyint(4) DEFAULT NULL,
  `stockAlert` int(11) DEFAULT NULL,
  `mesh_color` varchar(255) NOT NULL DEFAULT 'SAS',
  `beading_color` varchar(255) NOT NULL DEFAULT 'SAS',
  `lining` varchar(255) NOT NULL DEFAULT 'SAS',
  `lining_color` varchar(255) DEFAULT 'SAS',
  `product_size` int(11) NOT NULL DEFAULT 0,
  `categoryId` int(11) DEFAULT NULL,
  `subCategoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_3146a8c669fc3f362c02fa9e0b` (`productCode`),
  KEY `FK_ff56834e735fa78a15d0cf21926` (`categoryId`),
  KEY `FK_ad42985fb27aa9016b16ee740ec` (`subCategoryId`),
  CONSTRAINT `FK_ad42985fb27aa9016b16ee740ec` FOREIGN KEY (`subCategoryId`) REFERENCES `subcategories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_ff56834e735fa78a15d0cf21926` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2025-12-09 10:43:59.055200',NULL,NULL,NULL,'SK660011',10,'hello',NULL,NULL,NULL,NULL,'#7FFFD4','#FF7F50','Fully Stitched Lined','#00FF00',0,2,2),(2,'2025-12-11 18:33:33.657802',NULL,NULL,NULL,'SK660016',110000,'wow',NULL,NULL,NULL,NULL,'#FFF5EE','#FFF5EE','Full Separate Lining','#00FF00',0,2,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quickbookloginhistory`
--

DROP TABLE IF EXISTS `quickbookloginhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quickbookloginhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `userId` varchar(256) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `success` tinyint(4) NOT NULL DEFAULT 1,
  `loggedInAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quickbookloginhistory`
--

LOCK TABLES `quickbookloginhistory` WRITE;
/*!40000 ALTER TABLE `quickbookloginhistory` DISABLE KEYS */;
INSERT INTO `quickbookloginhistory` VALUES (1,'2025-12-16 12:18:18.737243',NULL,'system','test@gmail.com',1,'2025-12-16 12:18:18.737243'),(2,'2025-12-24 17:16:01.000280',NULL,'system','test@gmail.com',1,'2025-12-24 17:16:01.000280');
/*!40000 ALTER TABLE `quickbookloginhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quickbooktokens`
--

DROP TABLE IF EXISTS `quickbooktokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quickbooktokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `accessToken` text NOT NULL,
  `refreshToken` text NOT NULL,
  `realmId` text NOT NULL,
  `expiresAt` datetime NOT NULL,
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quickbooktokens`
--

LOCK TABLES `quickbooktokens` WRITE;
/*!40000 ALTER TABLE `quickbooktokens` DISABLE KEYS */;
INSERT INTO `quickbooktokens` VALUES (1,'2025-12-16 12:18:18.716610',NULL,'eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2IiwieC5vcmciOiJIMCJ9..0h-cEw3Smo_Qb1PRULhyOg.R8vZTZEazqGpKGIoYAHymgVHDqbtW6teZvAOK_Yo5wH-hj1DfLrHZnxuYZ_Z-LiEIReCY46NjkDTyPnmuxUDBIX_F-eip3XuosIIdzkkVie1_hVBQrQLlGUOR2lp47D3yMiXAPWYNN6bL2PFDFsiy3Tf6OeUFDuoE8aLBBDp3ZRM45NZEklst9FzC3d5vSgadpo-GV9EPPbCRxJa3hscg2SLg8ql_w-mIZWC8teF3WwArGTfW8aaGQMJPc_Ez4Ak-9SRKlO1ECBEe22KQq_GwPBRhPFzRisz9wnz0zMhKX3ki4xWJx4iUZ7-VCZDmSVqDHT_jtunYGYojF-om7sjxMWcX0ePTo_7QRMJPMd8dGTOQCD3--yiSVHpfqPGqC8eKYVkPmmCvl7dyTJjMIJNHVHfTLZbGzMK0m7S56Tv3L7IPX9x2xgh0zlLgfKIC2YVC5a8nmtEKjYLW8hXU2lS2YhVozD59HMyznk2mxJml73-gqHizl51s7NyIjFfxsE67BVz2Y44udqQ4i1C29qowqk81Yo-Y2ozVoTgeHcNXK_le20YCsxogtIfDjqx1PiCqwLrQrAftZBjHExp2uwp-Q.qUcDWa2mrdl0JpuC9ivt3g','RT1-110-H0-1774594097gpaynmssf6ru0wvq9wqr','9341453479123138','2025-12-16 13:18:18','2025-12-16 12:18:18.716610'),(2,'2025-12-24 17:16:00.983614',NULL,'eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2IiwieC5vcmciOiJIMCJ9..i9ykYFp6-CJRpSkF9VS0Eg.69ORbP6WMTc99mGU019JzB0XBa44WympzWeN55skon7VdnK65ENjkCqz3EjOIEDoe_Mo6XQMtMu7aEvZAJNasOM-psLj1_mwysJhgPai8lG4LHCmxWftjM4OyfHCeVWTAnW1MiWOwWIGJD_pRgwYF9GQyzJ4yBy64NIALW0f1UN0NCV-3Rh50Y4WEbClRpsEwGyPJBPUkseguYj_VEZs_wzAiEOFchuV3xaOzF-9GdY0J6AHQwR7xH0I5GdKPWVCBy2PUGBKL_YgktqcTYFaOrSwn2vgGfcqUlYbvXPetu4D0h0XtlS4k9GF86518RvplLa2Do13kew7rnH9P63g56nDL5UbSJcxiLDZo60yq0Wv5pSvKB_RefvBOgApfAkAnj3KVLs_Z2dxO8LNT_efWGv-RsLcOLhYDb8LZDCPKLN1ECLz1NB_Un5hJo7QW6poC_2D_nHOuE5OYsRchLCd0_qS8Hn6NXEV7G7M39MJ2SoRc_jXh6yAFYDTiEATww7rEpUEMINy8R7pXHAOOpkzaQxTJRWToWOesQHC6ZaU2nZPhpSXBb9KpJKc1ficqZg4ZPTTFT5OjoTL07U09q51uQ.csu5oRkmtX4yuIF3hm9Gjw','RT1-92-H0-1775303160gj20pyfwv4yzo3dohvnm','9341453479123138','2025-12-24 18:16:00','2025-12-24 17:16:00.983614');
/*!40000 ALTER TABLE `quickbooktokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailer_bank`
--

DROP TABLE IF EXISTS `retailer_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailer_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `bank_name` text DEFAULT NULL,
  `account` text DEFAULT NULL,
  `ifc` text DEFAULT NULL,
  `branch` text DEFAULT NULL,
  `card_name` text DEFAULT NULL,
  `card_number` text DEFAULT NULL,
  `expiry_date` text DEFAULT NULL,
  `card_address` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `retailerId` int(11) DEFAULT NULL,
  `swift_code` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_3a0e8a6afe09081ec18a5e2fae` (`retailerId`),
  CONSTRAINT `FK_3a0e8a6afe09081ec18a5e2fae4` FOREIGN KEY (`retailerId`) REFERENCES `retailers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_bank`
--

LOCK TABLES `retailer_bank` WRITE;
/*!40000 ALTER TABLE `retailer_bank` DISABLE KEYS */;
INSERT INTO `retailer_bank` VALUES (1,'2025-12-26 17:14:42.410563',NULL,'2f6e78a59bc09f6e47f8d7deecfee25e','032a53a429165ab6afe625c4fd81ecc73a6aa15ef2f1583fe84d73e6c73c858c','516d077e3e5722462b90a3a50d0edb9a','06a67c0272d9ce4bed8152b38ef26ca2',NULL,NULL,NULL,NULL,'dtryyu8976tryui',4,NULL);
/*!40000 ALTER TABLE `retailer_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailer_favourites_orders`
--

DROP TABLE IF EXISTS `retailer_favourites_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailer_favourites_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `favourite_ids` varchar(255) NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `rejected_comments` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `orderId` int(11) DEFAULT NULL,
  `retailerId` int(11) DEFAULT NULL,
  `payment_status` enum('Pending','Paid') DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_bd22ae050abc360751c9b1ee97` (`orderId`),
  KEY `FK_4e5d78e646eba7633750466d256` (`retailerId`),
  CONSTRAINT `FK_4e5d78e646eba7633750466d256` FOREIGN KEY (`retailerId`) REFERENCES `retailers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_bd22ae050abc360751c9b1ee971` FOREIGN KEY (`orderId`) REFERENCES `retailer_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_favourites_orders`
--

LOCK TABLES `retailer_favourites_orders` WRITE;
/*!40000 ALTER TABLE `retailer_favourites_orders` DISABLE KEYS */;
INSERT INTO `retailer_favourites_orders` VALUES (1,'2025-12-20 15:22:02.889109',NULL,'1',1,NULL,0,NULL,2,'Paid'),(2,'2025-12-20 15:37:24.961050',NULL,'2',1,NULL,0,NULL,2,'Pending'),(3,'2025-12-20 16:32:37.606329',NULL,'3',1,NULL,0,NULL,2,'Paid'),(4,'2025-12-20 16:48:05.582803',NULL,'4',1,NULL,0,NULL,2,'Pending'),(5,'2025-12-20 16:50:44.467514',NULL,'5',1,NULL,0,NULL,2,'Paid'),(6,'2025-12-20 23:58:36.648576',NULL,'6',1,NULL,0,NULL,2,'Pending'),(7,'2025-12-22 16:55:21.094081',NULL,'7',1,NULL,0,NULL,2,'Pending'),(8,'2025-12-22 17:28:45.449276',NULL,'8',1,NULL,0,NULL,2,'Pending'),(9,'2025-12-23 21:47:28.617120',NULL,'9',1,NULL,0,NULL,2,'Pending'),(10,'2025-12-24 10:52:13.729659',NULL,'10',1,NULL,0,NULL,2,'Pending'),(11,'2025-12-24 11:09:12.105854',NULL,'11',1,NULL,0,NULL,2,'Pending'),(12,'2025-12-24 16:48:42.667984',NULL,'13,12',1,NULL,0,NULL,2,'Pending'),(13,'2025-12-24 17:07:29.904155',NULL,'14',1,NULL,0,NULL,2,'Pending'),(14,'2025-12-24 17:56:50.274106',NULL,'15',3,'ok',0,NULL,2,'Pending'),(15,'2025-12-24 17:59:13.919465',NULL,'16',1,NULL,0,NULL,2,'Pending'),(16,'2025-12-25 11:26:51.842684',NULL,'17,18,19',1,NULL,0,NULL,2,'Pending'),(17,'2025-12-25 12:32:37.095627',NULL,'20',1,NULL,0,NULL,2,'Pending'),(18,'2025-12-25 12:54:45.402831',NULL,'21',1,NULL,0,NULL,2,'Pending'),(19,'2025-12-26 12:51:02.979303',NULL,'22',3,'reject',0,NULL,2,'Pending'),(20,'2025-12-26 12:51:19.431797',NULL,'22',3,'reject',0,NULL,2,'Pending'),(21,'2025-12-26 12:51:20.924415',NULL,'22',3,'reject',0,NULL,2,'Pending'),(22,'2025-12-26 12:51:21.920308',NULL,'22',3,'reject',0,NULL,2,'Pending'),(23,'2025-12-26 12:51:22.085122',NULL,'22',3,'reject',0,NULL,2,'Pending'),(24,'2025-12-26 12:51:22.276757',NULL,'22',3,'reject',0,NULL,2,'Pending'),(25,'2025-12-26 12:51:22.469874',NULL,'22',3,'reject',0,NULL,2,'Pending'),(26,'2025-12-26 12:51:22.625121',NULL,'22',3,'reject',0,NULL,2,'Pending'),(27,'2025-12-26 12:51:22.779007',NULL,'22',3,'reject',0,NULL,2,'Pending'),(28,'2025-12-26 12:51:22.962508',NULL,'22',3,'reject',0,NULL,2,'Pending'),(29,'2025-12-26 12:51:23.142937',NULL,'22',3,'reject',0,NULL,2,'Pending'),(30,'2025-12-26 12:51:23.309504',NULL,'22',3,'reject',0,NULL,2,'Pending'),(31,'2025-12-26 12:51:23.491358',NULL,'22',3,'reject',0,NULL,2,'Pending'),(32,'2025-12-26 12:51:23.670464',NULL,'22',3,'reject',0,NULL,2,'Pending'),(33,'2025-12-26 12:51:23.841775',NULL,'22',3,'reject',0,NULL,2,'Pending'),(34,'2025-12-26 12:51:24.016852',NULL,'22',3,'reject',0,NULL,2,'Pending'),(35,'2025-12-26 12:51:24.188604',NULL,'22',1,NULL,0,NULL,2,'Pending'),(36,'2025-12-26 12:51:24.325378',NULL,'22',3,'reject\n',0,NULL,2,'Pending'),(37,'2025-12-26 12:51:24.543061',NULL,'22',1,NULL,0,NULL,2,'Pending'),(38,'2025-12-26 14:43:41.926926',NULL,'23',1,NULL,0,NULL,2,'Pending'),(39,'2025-12-26 15:04:35.863307',NULL,'24,25',1,NULL,0,NULL,2,'Pending'),(40,'2025-12-26 15:41:57.025113',NULL,'26',1,NULL,0,NULL,2,'Pending'),(41,'2025-12-26 15:41:57.181775',NULL,'26',1,NULL,0,NULL,2,'Pending'),(42,'2025-12-26 15:41:57.406178',NULL,'26',1,NULL,0,NULL,2,'Pending'),(43,'2025-12-26 17:48:38.564957',NULL,'27',1,NULL,0,NULL,3,'Pending'),(44,'2025-12-26 23:59:05.286471',NULL,'28,29,30',1,NULL,0,NULL,3,'Pending'),(45,'2025-12-27 11:07:29.228685',NULL,'31,32,33',1,NULL,0,NULL,3,'Pending'),(46,'2025-12-27 11:26:49.184171',NULL,'34,35',1,NULL,0,NULL,3,'Pending'),(47,'2025-12-27 11:28:29.784832',NULL,'36,37,38,39',1,NULL,0,NULL,3,'Pending'),(48,'2025-12-27 11:47:07.687986',NULL,'40,41,42',1,NULL,0,NULL,3,'Pending'),(49,'2025-12-27 11:50:24.925004',NULL,'43,44',1,NULL,0,NULL,3,'Pending'),(50,'2025-12-27 11:59:34.864944',NULL,'45,46,47',1,NULL,0,NULL,3,'Pending'),(51,'2025-12-29 14:07:12.399410',NULL,'48',1,NULL,0,NULL,2,'Pending'),(52,'2025-12-30 14:29:33.151369',NULL,'49,50',1,NULL,0,NULL,3,'Pending');
/*!40000 ALTER TABLE `retailer_favourites_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailer_order_payments`
--

DROP TABLE IF EXISTS `retailer_order_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailer_order_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `paymentMethod` varchar(225) NOT NULL DEFAULT 'Bank Share',
  `orderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b8baac83ea63d00abd121e14316` (`orderId`),
  CONSTRAINT `FK_b8baac83ea63d00abd121e14316` FOREIGN KEY (`orderId`) REFERENCES `retailer_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_order_payments`
--

LOCK TABLES `retailer_order_payments` WRITE;
/*!40000 ALTER TABLE `retailer_order_payments` DISABLE KEYS */;
INSERT INTO `retailer_order_payments` VALUES (1,'2025-12-20 15:22:53.654509',NULL,0,'Bank Share',1),(2,'2025-12-20 15:37:42.883426',NULL,0,'Bank Share',2),(3,'2025-12-20 15:56:55.564353',NULL,0,'Bank Share',3),(4,'2025-12-20 16:23:14.026285',NULL,0,'Bank Share',4),(5,'2025-12-20 16:23:31.011226',NULL,0,'Bank Share',5),(6,'2025-12-20 16:28:20.564015',NULL,0,'Bank Share',6),(7,'2025-12-20 16:33:05.397367',NULL,0,'Bank Share',7),(8,'2025-12-20 16:38:13.709551',NULL,0,'Bank Share',8),(9,'2025-12-20 16:38:26.131131',NULL,0,'Bank Share',9),(10,'2025-12-20 16:48:23.598738',NULL,0,'Bank Share',10),(11,'2025-12-20 16:50:56.068709',NULL,0,'Bank Share',11),(12,'2025-12-20 18:01:35.107855',NULL,0,'Bank Share',19),(13,'2025-12-20 18:03:39.278443',NULL,0,'Bank Share',20),(14,'2025-12-20 23:58:50.151906',NULL,0,'Bank Share',22),(15,'2025-12-22 16:20:55.694787',NULL,990,'Cash',20),(16,'2025-12-23 14:29:36.675011',NULL,50,'Bank Share',12),(17,'2025-12-23 18:31:34.230769',NULL,320,'Bank Share',8),(18,'2025-12-23 18:48:54.017176',NULL,320,'Bank Share',8),(19,'2025-12-23 18:55:11.358326',NULL,320,'Bank Share',8),(20,'2025-12-23 21:23:19.710913',NULL,320,'Bank Share',8),(21,'2025-12-23 21:39:16.652592',NULL,320,'Bank Share',8),(22,'2025-12-23 21:42:25.922449',NULL,0,'Bank Share',23),(23,'2025-12-23 21:42:32.613206',NULL,0,'Bank Share',24),(24,'2025-12-23 21:47:58.381876',NULL,280,'Bank Share',9),(25,'2025-12-23 22:13:08.704077',NULL,280,'Bank Share',9),(26,'2025-12-23 22:27:09.510936',NULL,307,'Cash',24),(27,'2025-12-23 23:05:03.941869',NULL,320,'Bank Share',7),(28,'2025-12-23 23:07:19.191249',NULL,280,'Bank Share',9),(29,'2025-12-23 23:14:40.842464',NULL,280,'Bank Share',9),(30,'2025-12-23 23:47:36.290460',NULL,280,'Bank Share',9),(31,'2025-12-23 23:52:45.788475',NULL,280,'Bank Share',9),(32,'2025-12-24 10:23:25.498418',NULL,0,'Bank Share',25),(33,'2025-12-24 10:25:02.501295',NULL,0,'Bank Share',26),(34,'2025-12-24 11:11:05.466247',NULL,280,'Bank Share',2),(35,'2025-12-24 11:16:45.482486',NULL,16,'Bank Share',11),(36,'2025-12-24 11:29:44.190494',NULL,16,'Bank Share',11),(37,'2025-12-24 11:48:33.109811',NULL,16,'Bank Share',11),(38,'2025-12-24 12:03:14.024340',NULL,0,'Bank Share',27),(39,'2025-12-24 12:07:24.212490',NULL,280,'Bank Share',3),(40,'2025-12-24 12:41:37.404865',NULL,280,'Bank Share',3),(41,'2025-12-24 13:05:17.771248',NULL,280,'Bank Share',3),(42,'2025-12-24 14:06:31.398083',NULL,280,'Bank Share',3),(43,'2025-12-24 15:14:37.610399',NULL,280,'Bank Share',3),(44,'2025-12-24 15:42:25.616850',NULL,280,'Bank Share',3),(45,'2025-12-24 15:58:09.252419',NULL,280,'Bank Share',3),(46,'2025-12-24 16:15:11.237551',NULL,700,'Bank Share',28),(47,'2025-12-24 16:49:41.608395',NULL,0,'Bank Share',30),(48,'2025-12-24 17:07:58.674198',NULL,0,'Bank Share',31),(49,'2025-12-24 17:37:13.994920',NULL,0,'Bank Share',32),(50,'2025-12-25 11:23:00.712294',NULL,0,'Bank Share',33),(51,'2025-12-25 11:27:06.317506',NULL,0,'Bank Share',34),(52,'2025-12-25 12:51:37.921989',NULL,0,'Bank Share',35),(53,'2025-12-25 12:54:57.785450',NULL,0,'Bank Share',36),(54,'2025-12-26 12:04:47.788646',NULL,320,'Card',36),(55,'2025-12-26 12:07:05.889373',NULL,0,'Bank Share',37),(56,'2025-12-26 12:32:35.102549',NULL,320,'Cash',23),(57,'2025-12-26 14:30:20.186475',NULL,0,'Bank Share',39),(58,'2025-12-26 14:30:41.299966',NULL,0,'Bank Share',40),(59,'2025-12-26 15:06:56.435347',NULL,0,'Bank Share',41),(60,'2025-12-26 15:24:49.435801',NULL,216,'Cash',41),(61,'2025-12-26 15:25:49.483495',NULL,320,'Cash',39),(62,'2025-12-26 15:43:08.283093',NULL,0,'Bank Share',42),(63,'2025-12-26 18:41:44.371946',NULL,0,'Bank Share',43),(64,'2025-12-26 19:01:19.210976',NULL,0,'Bank Share',44),(65,'2025-12-27 00:00:24.186643',NULL,0,'Bank Share',45),(66,'2025-12-27 00:00:28.344167',NULL,0,'Bank Share',46),(67,'2025-12-27 11:16:18.531075',NULL,0,'Bank Share',47),(68,'2025-12-27 11:32:31.642009',NULL,0,'Bank Share',48),(69,'2025-12-27 11:47:35.867018',NULL,0,'Bank Share',49),(70,'2025-12-27 11:50:46.840414',NULL,0,'Bank Share',50),(71,'2025-12-27 11:59:58.636394',NULL,0,'Bank Share',51),(72,'2025-12-29 14:36:41.704726',NULL,0,'Bank Share',52),(73,'2025-12-29 14:41:23.617082',NULL,0,'Bank Share',53),(74,'2025-12-29 14:42:06.337099',NULL,0,'Bank Share',54),(75,'2025-12-29 15:14:38.514139',NULL,4950,'Card',54),(76,'2025-12-29 16:26:47.655267',NULL,0,'Bank Share',55),(77,'2025-12-30 12:11:37.081074',NULL,0,'Bank Share',56),(78,'2025-12-30 14:30:12.807610',NULL,0,'Bank Share',57),(79,'2026-01-02 11:16:14.873720',NULL,0,'Bank Share',58),(80,'2026-01-02 15:21:40.757687',NULL,320,'Cash',58),(81,'2026-01-03 15:36:02.413710',NULL,320,'Cash',57),(82,'2026-01-03 15:36:26.299504',NULL,1440,'Bank Transfer',47),(83,'2026-01-03 15:45:05.035139',NULL,0,'Bank Share',59),(84,'2026-01-05 16:23:50.916134',NULL,0,'Bank Share',60);
/*!40000 ALTER TABLE `retailer_order_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailer_order_styles`
--

DROP TABLE IF EXISTS `retailer_order_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailer_order_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `retailerOrderId` int(11) DEFAULT NULL,
  `styleNo` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `size_country` varchar(50) DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deletedAt` datetime DEFAULT NULL,
  `photoUrls` text ,
  PRIMARY KEY (`id`),
  UNIQUE KEY `barcode` (`barcode`),
  KEY `retailerOrderId` (`retailerOrderId`),
  CONSTRAINT `retailer_order_styles_ibfk_1` FOREIGN KEY (`retailerOrderId`) REFERENCES `retailer_orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_order_styles`
--

LOCK TABLES `retailer_order_styles` WRITE;
/*!40000 ALTER TABLE `retailer_order_styles` DISABLE KEYS */;
INSERT INTO `retailer_order_styles` VALUES (1,1,'SK660016','PO#AMAN00001-1',7,'US 60',NULL,'2025-12-20 15:22:53','2025-12-20 15:22:53',NULL,'[]'),(2,2,'SK660016','PO#AMAN00002-2',1,'US 58',NULL,'2025-12-20 15:37:42','2025-12-20 15:37:42',NULL,'[]'),(3,3,'SK660016','PO#AMAN00003-3',1,'US 58',NULL,'2025-12-20 15:56:55','2025-12-20 15:56:55',NULL,'[]'),(4,4,'SK660016','PO#AMAN00004-4',1,'US 58',NULL,'2025-12-20 16:23:14','2025-12-20 16:23:14',NULL,'[]'),(6,6,'SK660016','PO#AMAN00006-6',1,'US 58',NULL,'2025-12-20 16:28:20','2025-12-20 16:28:20',NULL,'[]'),(7,7,'SK660016','PO#AMAN00007-7',1,'US 60',NULL,'2025-12-20 16:33:05','2025-12-20 16:33:05',NULL,'[]'),(8,8,'SK660016','PO#AMAN00008-8',1,'US 60',NULL,'2025-12-20 16:38:13','2025-12-20 16:38:13',NULL,'[]'),(9,9,'SK660016','PO#AMAN00009-9',1,'US 58',NULL,'2025-12-20 16:38:26','2025-12-20 16:38:26',NULL,'[]'),(10,10,'SK660011','PO#AMAN00010-10',1,'US 60',NULL,'2025-12-20 16:48:23','2025-12-20 16:48:23',NULL,'[]'),(11,11,'SK660011','PO#AMAN00011-11',1,'US 60',NULL,'2025-12-20 16:50:56','2025-12-20 16:50:56',NULL,'[]'),(12,22,'SK660011','PO#AMAN00015-12',1,'US 60',NULL,'2025-12-20 23:58:50','2025-12-20 23:58:50',NULL,'[]'),(13,23,'SK660016','PO#AMAN00016-13',1,'US 60',NULL,'2025-12-23 21:42:25','2025-12-23 21:42:25',NULL,'[]'),(14,24,'SK660016','PO#AMAN00017-14',1,'US 60',NULL,'2025-12-23 21:42:32','2025-12-23 21:42:32',NULL,'[]'),(15,25,'SK660011','PO#AMAN00018-15',1,'US 60',NULL,'2025-12-24 10:23:25','2025-12-24 10:23:25',NULL,'[]'),(16,26,'SK660011','PO#AMAN00019-16',1,'US 60',NULL,'2025-12-24 10:25:02','2025-12-24 10:25:02',NULL,'[]'),(17,27,'SK660016','PO#AMAN00020-17',1,'US 60',NULL,'2025-12-24 12:03:14','2025-12-24 12:03:14',NULL,'[]'),(18,30,'SK660016','PO#AMAN00022-18',1,'US 60',NULL,'2025-12-24 16:49:41','2025-12-24 16:49:41',NULL,'[]'),(19,30,'SK660011','PO#AMAN00022-19',1,'US 60',NULL,'2025-12-24 16:49:41','2025-12-24 16:49:41',NULL,'[]'),(20,31,'SK660016','PO#AMAN00023-20',1,'US 34',NULL,'2025-12-24 17:07:58','2025-12-24 17:07:58',NULL,'[]'),(21,32,'SK660016','PO#AMAN00024-21',1,'US 60',NULL,'2025-12-24 17:37:13','2025-12-24 17:37:13',NULL,'[]'),(22,33,'SK660016','PO#AMAN00025-22',1,'US 60',NULL,'2025-12-25 11:23:00','2025-12-25 11:23:00',NULL,'[]'),(23,34,'SK660011','PO#AMAN00026-23',1,'US 52',NULL,'2025-12-25 11:27:06','2025-12-25 11:27:06',NULL,'[]'),(24,34,'SK660011','PO#AMAN00026-24',1,'US 60',NULL,'2025-12-25 11:27:06','2025-12-25 11:27:06',NULL,'[]'),(25,34,'SK660016','PO#AMAN00026-25',1,'US 60',NULL,'2025-12-25 11:27:06','2025-12-25 11:27:06',NULL,'[]'),(26,35,'SK660011','PO#AMAN00027-26',1,'US 34',NULL,'2025-12-25 12:51:37','2025-12-25 12:51:37',NULL,'[]'),(27,36,'SK660016','PO#AMAN00028-27',1,'US 60',NULL,'2025-12-25 12:54:57','2025-12-25 12:54:57',NULL,'[]'),(28,39,'SK660016','PO#AMAN00030-28',1,'US 60',NULL,'2025-12-26 14:30:20','2025-12-26 14:30:20',NULL,'[]'),(29,40,'SK660016','PO#AMAN00031-29',1,'US 60',NULL,'2025-12-26 14:30:41','2025-12-26 14:30:41',NULL,'[]'),(30,41,'SK660011','PO#AMAN00032-30',1,'US 60',NULL,'2025-12-26 15:06:56','2025-12-26 15:06:56',NULL,'[]'),(31,41,'SK660016','PO#AMAN00032-31',1,'US 34',NULL,'2025-12-26 15:06:56','2025-12-26 15:06:56',NULL,'[]'),(32,42,'SK660016','PO#AMAN00033-32',1,'US 34',NULL,'2025-12-26 15:43:08','2025-12-26 15:43:08',NULL,'[]'),(33,43,'SK660016','PO#SARTORIA00001-33',1,'US 52',NULL,'2025-12-26 18:41:44','2025-12-26 18:41:44',NULL,'[]'),(34,44,'SK660016','PO#AMAN00034-34',1,'US 34',NULL,'2025-12-26 19:01:19','2025-12-26 19:01:19',NULL,'[]'),(35,45,'SK660016','PO#SARTORIA00002-35',1,'US 60',NULL,'2025-12-27 00:00:24','2025-12-27 00:00:24',NULL,'[]'),(36,45,'SK660016','PO#SARTORIA00002-36',1,'US 56',NULL,'2025-12-27 00:00:24','2025-12-27 00:00:24',NULL,'[]'),(37,45,'SK660016','PO#SARTORIA00002-37',1,'US 58',NULL,'2025-12-27 00:00:24','2025-12-27 00:00:24',NULL,'[]'),(38,46,'SK660016','PO#SARTORIA00003-38',1,'US 60',NULL,'2025-12-27 00:00:28','2025-12-27 00:00:28',NULL,'[]'),(39,46,'SK660016','PO#SARTORIA00003-39',1,'US 56',NULL,'2025-12-27 00:00:28','2025-12-27 00:00:28',NULL,'[]'),(40,46,'SK660016','PO#SARTORIA00003-40',1,'US 58',NULL,'2025-12-27 00:00:28','2025-12-27 00:00:28',NULL,'[]'),(41,47,'SK660016','PO#SARTORIA00004-41',1,'US 60',NULL,'2025-12-27 11:16:18','2025-12-27 11:16:18',NULL,'[]'),(42,47,'SK660016','PO#SARTORIA00004-42',1,'US 58',NULL,'2025-12-27 11:16:18','2025-12-27 11:16:18',NULL,'[]'),(43,47,'SK660016','PO#SARTORIA00004-43',1,'US 56',NULL,'2025-12-27 11:16:18','2025-12-27 11:16:18',NULL,'[]'),(44,48,'SK660016','PO#SARTORIA00005-44',4,'US60/1, US58/1, US60/1, US60/1','','2025-12-27 11:32:31','2025-12-27 11:32:31',NULL,'[]'),(45,49,'SK660016','PO#SARTORIA00006-45',1,'US 60',NULL,'2025-12-27 11:47:35','2025-12-27 11:47:35',NULL,'[]'),(46,49,'SK660016','PO#SARTORIA00006-46',1,'US 56',NULL,'2025-12-27 11:47:35','2025-12-27 11:47:35',NULL,'[]'),(47,49,'SK660016','PO#SARTORIA00006-47',1,'US 54',NULL,'2025-12-27 11:47:35','2025-12-27 11:47:35',NULL,'[]'),(48,50,'SK660016','PO#SARTORIA00007-48',1,'US 60',NULL,'2025-12-27 11:50:46','2025-12-27 11:50:46',NULL,'[]'),(49,50,'SK660016','PO#SARTORIA00007-49',1,'US 58',NULL,'2025-12-27 11:50:46','2025-12-27 11:50:46',NULL,'[]'),(50,51,'SK660016','PO#SARTORIA00008-50',1,'US 60',NULL,'2025-12-27 11:59:58','2025-12-27 11:59:58',NULL,'[]'),(51,51,'SK660016','PO#SARTORIA00008-51',1,'US 58',NULL,'2025-12-27 11:59:58','2025-12-27 11:59:58',NULL,'[]'),(52,51,'SK660016','PO#SARTORIA00008-52',1,'US 56',NULL,'2025-12-27 11:59:58','2025-12-27 11:59:58',NULL,'[]'),(53,52,'SK660016','PO#AMAN00035-53',1,'US 52',NULL,'2025-12-29 14:36:41','2025-12-29 14:36:41',NULL,'[]'),(54,55,'SK660016','PO#SARTORIA00010-54',1,'US 60',NULL,'2025-12-29 16:26:47','2025-12-29 16:26:47',NULL,'[]'),(55,55,'SK660016','PO#SARTORIA00010-55',1,'US 60',NULL,'2025-12-29 16:26:47','2025-12-29 16:26:47',NULL,'[]'),(56,56,'SK660016','PO#AMAN00037-SK660016-56',1,'US 34',NULL,'2025-12-30 12:11:37','2025-12-30 12:11:37',NULL,'[]'),(57,57,'SK660011','PO#SARTORIA00011-57',1,'US 60',NULL,'2025-12-30 14:30:12','2025-12-30 14:30:12',NULL,'[]'),(58,57,'SK660016','PO#SARTORIA00011-58',1,'US 58',NULL,'2025-12-30 14:30:12','2025-12-30 14:30:12',NULL,'[]'),(59,58,'SK660016','PO#AMAN00038-59',1,'US 60',NULL,'2026-01-02 11:16:14','2026-01-02 11:16:14',NULL,'[]');
/*!40000 ALTER TABLE `retailer_order_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailer_orders`
--

DROP TABLE IF EXISTS `retailer_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailer_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `isApproved` tinyint(4) NOT NULL DEFAULT 0,
  `is_stock_order` tinyint(4) NOT NULL DEFAULT 0,
  `admin_us_size` varchar(255) DEFAULT NULL,
  `orderStatus` enum('Pattern','Khaka','Issue Beading','Beading','Zarkan','Stitching','Balance Pending','Ready To Delivery','Shipped') NOT NULL DEFAULT 'Pattern',
  `shippingStatus` enum('Not Shipped','Shipped') NOT NULL DEFAULT 'Not Shipped',
  `shippingDate` datetime DEFAULT NULL,
  `purchaseAmount` int(11) NOT NULL,
  `shippingAmount` int(11) NOT NULL DEFAULT 0,
  `status_id` int(11) NOT NULL DEFAULT 0,
  `purchaeOrderNo` varchar(225) NOT NULL,
  `pattern` datetime DEFAULT current_timestamp(),
  `khaka` datetime DEFAULT NULL,
  `issue_beading` datetime DEFAULT NULL,
  `beading` datetime DEFAULT NULL,
  `zarkan` datetime DEFAULT NULL,
  `stitching` datetime DEFAULT NULL,
  `ready_to_delivery` datetime DEFAULT NULL,
  `shipped` datetime DEFAULT NULL,
  `shiping_date` datetime DEFAULT NULL,
  `invoiceNo` varchar(225) DEFAULT NULL,
  `estimateNo` varchar(225) DEFAULT NULL,
  `manufacturingEmailAddress` varchar(225) NOT NULL DEFAULT 'rubyinc@hotmail.com',
  `orderReceivedDate` datetime NOT NULL DEFAULT current_timestamp(),
  `orderCancellationDate` datetime DEFAULT NULL,
  `address` text DEFAULT NULL,
  `trackingNo` varchar(225) DEFAULT NULL,
  `StyleNo` varchar(225) DEFAULT NULL,
  `Size` varchar(225) DEFAULT NULL,
  `quantity` varchar(225) DEFAULT NULL,
  `size_country` varchar(225) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `retailerId` int(11) DEFAULT NULL,
  `favouriteOrderId` int(11) DEFAULT NULL,
  `stockOrderId` int(11) DEFAULT NULL,
  `ppt_path` varchar(255) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT 'Pending',
  `balance_pending` datetime DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_6de3e65fa0d20f048ded5e7aa9` (`purchaeOrderNo`),
  UNIQUE KEY `REL_718fe8f142ff4d322939836d0c` (`stockOrderId`),
  KEY `FK_49149394a7d518c96ee5b797a32` (`retailerId`),
  CONSTRAINT `FK_49149394a7d518c96ee5b797a32` FOREIGN KEY (`retailerId`) REFERENCES `retailers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_718fe8f142ff4d322939836d0c6` FOREIGN KEY (`stockOrderId`) REFERENCES `retailer_stock_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_orders`
--

LOCK TABLES `retailer_orders` WRITE;
/*!40000 ALTER TABLE `retailer_orders` DISABLE KEYS */;
INSERT INTO `retailer_orders` VALUES (1,'2025-12-20 15:22:53.618056',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,2240,0,1,'PO#AMAN00001','2025-12-20 15:22:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_e97265','EB_91774a','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-22 00:00:00','Rajasthan, India',NULL,NULL,NULL,'7','EU',0,2,1,NULL,NULL,'Pending',NULL,NULL),(2,'2025-12-20 15:37:42.843626',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,280,0,1,'PO#AMAN00002','2025-12-24 11:11:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_8d893c','EB_a399ac','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,1,NULL,NULL,'Paid',NULL,NULL),(3,'2025-12-20 15:56:55.548795',NULL,1,0,NULL,'Shipped','Shipped','2025-12-29 18:43:17',280,0,1,'PO#AMAN00003','2025-12-29 15:05:17','2025-12-29 15:06:25','2025-12-29 15:33:28','2025-12-29 15:34:04','2025-12-29 17:41:09','2025-12-29 17:45:18','2025-12-29 17:56:24','2025-12-29 18:43:17',NULL,'IN_077d2d','EB_3ccb99','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,1,NULL,NULL,'Paid','2025-12-29 17:45:23',NULL),(4,'2025-12-20 16:23:13.997926',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,280,0,1,'PO#AMAN00004','2025-12-20 16:23:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_ec09df','EB_d1b899','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,1,NULL,NULL,'Pending',NULL,NULL),(5,'2025-12-20 16:23:30.993274',NULL,1,0,NULL,'Khaka','Not Shipped',NULL,280,0,1,'PO#AMAN00005','2025-12-29 18:48:30','2025-12-29 18:48:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_4cc3d4','EB_fe1c40','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,1,NULL,NULL,'Pending',NULL,NULL),(6,'2025-12-20 16:28:20.540183',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,280,0,1,'PO#AMAN00006','2025-12-20 16:28:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_6f3e87','EB_2256fd','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-24 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,1,NULL,NULL,'Pending',NULL,NULL),(7,'2025-12-20 16:33:05.379994',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,320,0,1,'PO#AMAN00007','2025-12-23 23:05:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_101470','EB_7a6d58','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-24 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,1,NULL,NULL,'Paid',NULL,NULL),(8,'2025-12-20 16:38:13.690408',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,320,0,1,'PO#AMAN00008','2025-12-23 21:39:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_0b0349','EB_c7cf10','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,3,NULL,NULL,'Paid',NULL,NULL),(9,'2025-12-20 16:38:26.114166',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,280,0,1,'PO#AMAN00009','2025-12-23 23:52:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_38657e','EB_e583aa','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-24 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,2,NULL,NULL,'Paid',NULL,NULL),(10,'2025-12-20 16:48:23.584545',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,16,0,1,'PO#AMAN00010','2025-12-20 16:48:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_710c2d','EB_ac063f','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,4,NULL,NULL,'Pending',NULL,NULL),(11,'2025-12-20 16:50:56.046754',NULL,1,0,NULL,'Shipped','Shipped','2025-12-26 18:36:35',16,0,1,'PO#AMAN00011','2025-12-24 11:48:33','2025-12-26 18:35:49','2025-12-26 18:36:09','2025-12-26 18:36:14','2025-12-26 18:36:17','2025-12-26 18:36:21','2025-12-26 18:36:27','2025-12-26 18:36:35',NULL,'IN_d816b3','EB_86b7d4','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,5,NULL,NULL,'Paid','2025-12-26 18:36:24',NULL),(12,'2025-12-20 17:30:11.561106',NULL,1,1,NULL,'Pattern','Not Shipped',NULL,990,0,0,'PO#AMAN00012','2025-12-23 14:29:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INVOICE_222e','EB_c466','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-22 00:00:00','Rajasthan, India',NULL,'SK660016','60 (UK)','1','UK',0,2,NULL,NULL,NULL,'Pending',NULL,NULL),(19,'2025-12-20 18:01:35.076278',NULL,1,1,NULL,'Beading','Not Shipped',NULL,990,0,1,'PO#AMAN00013','2025-12-21 00:30:57',NULL,NULL,'2025-12-21 00:31:04',NULL,NULL,NULL,NULL,NULL,'INVOICE_b981','EB_40a2','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-22 00:00:00','Rajasthan, India',NULL,'SK660016','60 (UK)','1','UK',0,2,NULL,1,NULL,'Paid',NULL,NULL),(20,'2025-12-20 18:03:39.252569',NULL,1,1,NULL,'Shipped','Shipped','2025-12-22 16:21:14',990,0,1,'PO#AMAN00014','2025-12-21 00:28:18',NULL,NULL,'2025-12-21 00:28:26',NULL,'2025-12-21 00:29:00','2025-12-22 16:01:33','2025-12-22 16:21:14',NULL,'INVOICE_8326','EB_4e84','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-22 00:00:00','Rajasthan, India',NULL,'SK660016','60 (UK)','1','UK',0,2,NULL,2,NULL,'Paid',NULL,NULL),(22,'2025-12-20 23:58:50.114869',NULL,1,0,NULL,'Shipped','Shipped','2025-12-22 15:56:12',16,0,1,'PO#AMAN00015','2025-12-21 00:02:47','2025-12-21 00:27:11','2025-12-21 00:27:38','2025-12-21 21:38:49','2025-12-21 21:39:01','2025-12-22 15:55:51','2025-12-22 15:56:03','2025-12-22 15:56:12',NULL,'IN_6162dd','EB_cd0755','rubyinc@hotmail.com','2025-12-20 05:30:00','2025-12-22 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,6,NULL,NULL,'Pending',NULL,NULL),(23,'2025-12-23 21:42:25.884370',NULL,1,0,NULL,'Shipped','Shipped','2025-12-26 12:32:56',320,0,1,'PO#AMAN00016','2025-12-26 12:30:35','2025-12-26 12:30:39','2025-12-26 12:30:42','2025-12-26 12:30:45','2025-12-26 12:30:47','2025-12-26 12:30:50','2025-12-26 12:32:51','2025-12-26 12:32:56',NULL,'IN_b90df1','EB_d107a6','rubyinc@hotmail.com','2025-12-22 05:30:00','2025-12-24 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,8,NULL,NULL,'Pending','2025-12-26 12:30:53',NULL),(24,'2025-12-23 21:42:32.568425',NULL,1,0,NULL,'Ready To Delivery','Not Shipped',NULL,320,0,0,'PO#AMAN00017','2025-12-23 21:42:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_b90df1','EB_d107a6','rubyinc@hotmail.com','2025-12-22 05:30:00','2025-12-24 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,8,NULL,NULL,'Pending',NULL,NULL),(25,'2025-12-24 10:23:25.473018',NULL,1,0,NULL,'Balance Pending','Not Shipped',NULL,16,0,0,'PO#AMAN00018','2025-12-26 18:23:39','2025-12-26 18:24:15','2025-12-26 18:24:24','2025-12-26 18:24:36','2025-12-26 18:24:38','2025-12-26 18:24:41',NULL,NULL,NULL,'IN_971224','EB_e949c3','rubyinc@hotmail.com','2025-12-23 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,9,NULL,NULL,'Pending','2025-12-26 18:24:44',NULL),(26,'2025-12-24 10:25:02.483503',NULL,1,0,NULL,'Ready To Delivery','Not Shipped',NULL,16,0,0,'PO#AMAN00019','2025-12-24 10:25:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_3de42c','EB_67fc84','rubyinc@hotmail.com','2025-12-23 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,9,NULL,NULL,'Pending',NULL,NULL),(27,'2025-12-24 12:03:13.995738',NULL,1,0,NULL,'Ready To Delivery','Not Shipped',NULL,320,0,0,'PO#AMAN00020','2025-12-24 16:38:35','2025-12-24 16:38:50','2025-12-24 16:38:57','2025-12-24 16:39:42',NULL,NULL,NULL,NULL,NULL,'IN_e90573','EB_5ad63d','rubyinc@hotmail.com','2025-12-24 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,11,NULL,NULL,'Pending',NULL,NULL),(28,'2025-12-24 16:15:11.193073',NULL,0,1,NULL,'Ready To Delivery','Not Shipped',NULL,1090,100,0,'PO#AMAN00021','2025-12-24 16:15:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INVOICE_38a3','EB_747f','rubyinc@hotmail.com','2025-12-24 05:30:00','2025-12-25 00:00:00','Rajasthan, India','12345678','SK660016','60 (UK)','1','UK',0,2,NULL,3,NULL,'Pending',NULL,NULL),(30,'2025-12-24 16:49:41.557196',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,336,0,0,'PO#AMAN00022','2025-12-26 15:00:17','2025-12-24 16:51:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_d57fa6','EB_4a0535','rubyinc@hotmail.com','2025-12-24 05:30:00','2025-12-26 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1,1','EU,EU',0,2,12,NULL,NULL,'Pending',NULL,NULL),(31,'2025-12-24 17:07:58.645446',NULL,1,0,NULL,'Ready To Delivery','Not Shipped',NULL,200,0,0,'PO#AMAN00023','2025-12-24 17:07:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_dbc828','EB_310266','rubyinc@hotmail.com','2025-12-24 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','US',0,2,13,NULL,NULL,'Pending',NULL,NULL),(32,'2025-12-24 17:37:13.953858',NULL,1,0,NULL,'Ready To Delivery','Not Shipped',NULL,320,0,0,'PO#AMAN00024','2025-12-24 17:37:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_9b1a0e','EB_3d1d39','rubyinc@hotmail.com','2025-12-24 05:30:00','2025-12-25 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,10,NULL,NULL,'Pending',NULL,NULL),(33,'2025-12-25 11:23:00.694198',NULL,1,0,NULL,'Ready To Delivery','Not Shipped',NULL,320,0,0,'PO#AMAN00025','2025-12-25 11:23:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_de9c8f','EB_a6405e','rubyinc@hotmail.com','2025-12-24 05:30:00','2025-12-26 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,15,NULL,NULL,'Pending',NULL,NULL),(34,'2025-12-25 11:27:06.276597',NULL,1,0,NULL,'Zarkan','Not Shipped',NULL,346,0,0,'PO#AMAN00026','2025-12-25 11:36:05','2025-12-25 11:34:53','2025-12-25 11:34:56','2025-12-25 11:41:33','2025-12-25 11:49:14',NULL,NULL,NULL,NULL,'IN_f7b722','EB_bc8fb2','rubyinc@hotmail.com','2025-12-25 05:30:00','2025-12-26 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1,1,1','US,IT,EU',0,2,16,NULL,NULL,'Pending',NULL,NULL),(35,'2025-12-25 12:51:37.893815',NULL,1,0,NULL,'Ready To Delivery','Not Shipped',NULL,10,0,0,'PO#AMAN00027','2025-12-25 12:51:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_1fe94f','EB_7d38ef','rubyinc@hotmail.com','2025-12-25 05:30:00','2025-12-26 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','US',0,2,17,NULL,NULL,'Pending',NULL,NULL),(36,'2025-12-25 12:54:57.766235',NULL,1,0,NULL,'Shipped','Shipped','2025-12-26 12:05:28',320,0,1,'PO#AMAN00028','2025-12-25 12:54:57',NULL,NULL,NULL,NULL,NULL,NULL,'2025-12-26 12:05:28',NULL,'IN_784bb1','EB_0767ad','rubyinc@hotmail.com','2025-12-25 05:30:00','2025-12-26 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,18,NULL,NULL,'Pending','2025-12-26 12:02:59',NULL),(37,'2025-12-26 12:07:05.831461',NULL,0,1,NULL,'Balance Pending','Not Shipped',NULL,990,0,0,'PO#AMAN00029','2025-12-26 12:07:05',NULL,'2025-12-26 12:09:43',NULL,NULL,NULL,NULL,NULL,NULL,'INVOICE_876b','EB_ee66','rubyinc@hotmail.com','2025-12-24 05:30:00','2025-12-30 00:00:00','Rajasthan, India',NULL,'SK660016','60 (UK)','1','UK',1,2,NULL,4,NULL,'Pending','2025-12-26 12:24:39',NULL),(39,'2025-12-26 14:30:20.155444',NULL,1,0,NULL,'Ready To Delivery','Not Shipped',NULL,320,0,0,'PO#AMAN00030','2025-12-26 15:26:32','2025-12-26 15:26:39','2025-12-26 15:26:42','2025-12-26 15:26:45','2025-12-26 15:26:47','2025-12-26 15:26:50','2025-12-26 15:29:03',NULL,NULL,'IN_824dbb','EB_483887','rubyinc@hotmail.com','2025-12-26 05:30:00','2025-12-30 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,37,NULL,NULL,'Pending','2025-12-26 15:26:53',NULL),(40,'2025-12-26 14:30:41.273433',NULL,1,0,NULL,'Balance Pending','Not Shipped',NULL,320,0,0,'PO#AMAN00031','2025-12-26 15:05:35','2025-12-26 15:05:38','2025-12-26 15:29:55','2025-12-26 15:30:00','2025-12-26 15:30:04','2025-12-26 15:30:07',NULL,NULL,NULL,'IN_33ec6a','EB_642236','rubyinc@hotmail.com','2025-12-26 05:30:00','2025-12-30 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,35,NULL,NULL,'Pending','2025-12-26 15:30:09',NULL),(41,'2025-12-26 15:06:56.396884',NULL,1,0,NULL,'Shipped','Shipped','2025-12-26 15:25:01',216,0,1,'PO#AMAN00032','2025-12-26 15:06:56',NULL,'2025-12-26 15:16:04',NULL,NULL,NULL,NULL,'2025-12-26 15:25:01',NULL,'IN_19e33b','EB_a8f7fc','rubyinc@hotmail.com','2025-12-26 05:30:00','2025-12-31 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1,1','EU,US',0,2,39,NULL,NULL,'Pending','2025-12-26 15:19:40',NULL),(42,'2025-12-26 15:43:08.263551',NULL,1,0,NULL,'Balance Pending','Not Shipped',NULL,200,0,0,'PO#AMAN00033','2025-12-26 17:55:18','2025-12-26 17:55:23','2025-12-26 17:55:27','2025-12-26 17:55:30','2025-12-26 17:58:50','2025-12-26 18:20:29',NULL,NULL,NULL,'IN_d581c1','EB_8e7fdb','rubyinc@hotmail.com','2025-12-26 05:30:00','2025-12-30 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','US',0,2,42,NULL,NULL,'Pending','2025-12-26 18:21:19',NULL),(43,'2025-12-26 18:41:44.327378',NULL,1,0,NULL,'Balance Pending','Not Shipped',NULL,420,0,0,'PO#SARTORIA00001','2025-12-26 18:41:44','2025-12-26 18:42:33',NULL,'2025-12-26 18:58:30','2025-12-26 18:59:27','2025-12-26 18:59:33',NULL,NULL,NULL,'IN_5264a1','EB_abdd26','rubyinc@hotmail.com','2025-12-26 05:30:00','2025-12-30 00:00:00','High Rd, London, UK',NULL,NULL,NULL,'1','IT',0,3,43,NULL,NULL,'Pending','2025-12-26 18:59:40',NULL),(44,'2025-12-26 19:01:19.178717',NULL,1,0,NULL,'Balance Pending','Not Shipped',NULL,200,0,0,'PO#AMAN00034','2025-12-26 19:01:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_4082cc','EB_b32b8c','rubyinc@hotmail.com','2025-12-26 05:30:00','2025-12-30 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','US',0,2,41,NULL,NULL,'Pending',NULL,NULL),(45,'2025-12-27 00:00:24.110644',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,1440,0,0,'PO#SARTORIA00002','2025-12-27 00:00:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_43af6c','EB_e3bdfb','rubyinc@hotmail.com','2025-12-26 05:30:00','2025-12-30 00:00:00','High Rd, London, UK',NULL,NULL,NULL,'1,1,1','IT,IT,IT',0,3,44,NULL,NULL,'Pending',NULL,NULL),(46,'2025-12-27 00:00:28.263645',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,1440,0,0,'PO#SARTORIA00003','2025-12-27 00:00:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_43af6c','EB_e3bdfb','rubyinc@hotmail.com','2025-12-26 05:30:00','2025-12-30 00:00:00','High Rd, London, UK',NULL,NULL,NULL,'1,1,1','IT,IT,IT',1,3,44,NULL,NULL,'Pending',NULL,NULL),(47,'2025-12-27 11:16:18.501778',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,1440,0,0,'PO#SARTORIA00004','2025-12-27 11:16:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_3f6c5c','EB_906755','rubyinc@hotmail.com','2025-12-27 05:30:00','2025-12-30 00:00:00','High Rd, London, UK',NULL,NULL,NULL,'1,1,1','IT,IT,IT',0,3,45,NULL,NULL,'Pending',NULL,NULL),(48,'2025-12-27 11:32:31.627421',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,1920,0,0,'PO#SARTORIA00005','2025-12-27 11:32:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_6c835c','EB_b559a2','rubyinc@hotmail.com','2025-12-27 05:30:00','2025-12-31 00:00:00','High Rd, London, UK',NULL,NULL,NULL,'1,1,1,1','EU,IT,IT,IT',0,3,47,NULL,NULL,'Pending',NULL,NULL),(49,'2025-12-27 11:47:35.837902',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,1380,0,0,'PO#SARTORIA00006','2025-12-27 11:47:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_4f37c0','EB_0080e5','rubyinc@hotmail.com','2025-12-27 05:30:00','2025-12-31 00:00:00','High Rd, London, UK',NULL,NULL,NULL,'1,1,1','IT,IT,IT',0,3,48,NULL,NULL,'Pending',NULL,NULL),(50,'2025-12-27 11:50:46.821181',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,900,0,0,'PO#SARTORIA00007','2025-12-27 11:50:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_9fc4a3','EB_41fdbf','rubyinc@hotmail.com','2025-12-27 05:30:00','2025-12-31 00:00:00','High Rd, London, UK',NULL,NULL,NULL,'1,1','EU,EU',0,3,49,NULL,NULL,'Pending',NULL,NULL),(51,'2025-12-27 11:59:58.609475',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,1320,0,0,'PO#SARTORIA00008','2025-12-27 11:59:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_8ee921','EB_9fa7a8','rubyinc@hotmail.com','2025-12-27 05:30:00','2025-12-30 00:00:00','High Rd, London, UK',NULL,NULL,NULL,'1,1,1','EU,EU,EU',0,3,50,NULL,NULL,'Pending',NULL,NULL),(52,'2025-12-29 14:36:41.689499',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,200,0,0,'PO#AMAN00035','2025-12-29 14:36:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_fae632','EB_b2f50f','rubyinc@hotmail.com','2025-12-29 05:30:00','2025-12-31 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','US',0,2,51,NULL,NULL,'Pending',NULL,NULL),(53,'2025-12-29 14:41:23.593892',NULL,0,1,NULL,'Pattern','Not Shipped',NULL,1,0,0,'PO#SARTORIA00009','2025-12-29 14:41:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INVOICE_e9b4','EB_7f8a','rubyinc@hotmail.com','2025-12-27 05:30:00','2025-12-30 00:00:00','High Rd, London, UK',NULL,'SK660011','32 (EU)','1','EU',0,3,NULL,6,NULL,'Pending',NULL,NULL),(54,'2025-12-29 14:42:06.315447',NULL,0,1,NULL,'Shipped','Shipped','2025-12-29 15:15:04',4950,0,1,'PO#AMAN00036','2025-12-29 14:42:06',NULL,NULL,NULL,NULL,NULL,NULL,'2025-12-29 15:15:04',NULL,'INVOICE_7679','EB_879f','rubyinc@hotmail.com','2025-12-26 05:30:00','2025-12-31 00:00:00','Rajasthan, India',NULL,'SK660016','60 (UK)','5','UK',0,2,NULL,5,NULL,'Pending',NULL,NULL),(55,'2025-12-29 16:26:47.620954',NULL,1,0,NULL,'Pattern','Not Shipped',NULL,960,0,0,'PO#SARTORIA00010','2025-12-29 16:26:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_742a7f','EB_bba6ca','amankumarsuccess617@gmail.com','2025-12-27 05:30:00','2025-12-31 00:00:00','High Rd, London, UK',NULL,NULL,NULL,'1,1','IT,IT',0,3,46,NULL,NULL,'Pending',NULL,NULL),(56,'2025-12-30 12:11:37.059153',NULL,1,0,NULL,'Issue Beading','Not Shipped',NULL,200,0,0,'PO#AMAN00037','2025-12-30 12:52:44','2025-12-30 12:52:52','2025-12-30 12:52:56',NULL,NULL,NULL,NULL,NULL,NULL,'IN_f098ba','EB_aa5f42','rubyinc@hotmail.com','2025-12-26 05:30:00','2025-12-31 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','US',0,2,40,NULL,NULL,'Pending',NULL,NULL),(57,'2025-12-30 14:30:12.773428',NULL,1,0,NULL,'Khaka','Not Shipped',NULL,320,0,0,'PO#SARTORIA00011','2025-12-30 14:31:56','2025-12-30 14:32:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IN_540473','EB_5d90ae','rubyinc@hotmail.com','2025-12-30 05:30:00','2026-01-01 00:00:00','High Rd, London, UK',NULL,NULL,NULL,'1,1','UK,UK',0,3,52,NULL,NULL,'Pending',NULL,NULL),(58,'2026-01-02 11:16:14.846479',NULL,1,0,NULL,'Shipped','Shipped','2026-01-03 14:34:47',320,0,1,'PO#AMAN00038','2026-01-02 11:28:00','2026-01-02 11:28:05','2026-01-02 11:28:23','2026-01-02 11:28:27','2026-01-02 11:28:31','2026-01-02 11:28:33',NULL,'2026-01-03 14:34:47',NULL,'IN_a2908a','EB_c98c61','rubyinc@hotmail.com','2025-12-26 05:30:00','2026-01-10 00:00:00','Rajasthan, India',NULL,NULL,NULL,'1','EU',0,2,38,NULL,NULL,'Pending','2026-01-02 11:28:35','+916202326924'),(59,'2026-01-03 15:45:04.999805',NULL,0,1,NULL,'Pattern','Not Shipped',NULL,1,0,0,'PO#AMAN00039','2026-01-03 15:45:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INVOICE_e745','EB_ae42','rubyinc@hotmail.com','2026-01-02 05:30:00','2026-01-10 00:00:00','Rajasthan, India apna',NULL,'SK660011','40 (EU)','1','EU',0,2,NULL,9,NULL,'Pending',NULL,'+916202326924'),(60,'2026-01-05 16:23:50.840326',NULL,0,1,NULL,'Pattern','Not Shipped',NULL,1,0,0,'PO#AMAN00040','2026-01-05 16:23:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INVOICE_9c26','EB_1161','rubyinc@hotmail.com','2026-01-02 05:30:00','2026-01-16 00:00:00','Rajasthan, India',NULL,'SK660016','6 (UK)','1','UK',0,2,NULL,8,NULL,'Pending',NULL,'+916202326924');
/*!40000 ALTER TABLE `retailer_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailer_stock_orders`
--

DROP TABLE IF EXISTS `retailer_stock_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailer_stock_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `admin_us_size` varchar(10) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `rejected_comments` varchar(255) DEFAULT NULL,
  `mesh_color` varchar(255) NOT NULL DEFAULT 'SAS',
  `beading_color` varchar(255) NOT NULL DEFAULT 'SAS',
  `lining` varchar(255) NOT NULL DEFAULT 'SAS',
  `lining_color` varchar(255) DEFAULT 'SAS',
  `currencyId` int(11) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `stockId` int(11) DEFAULT NULL,
  `retailerId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `payment_status` enum('Pending','Paid') DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_c34d5270a2b99d7ae399a9cae6` (`orderId`),
  KEY `FK_db816fe7dceb6e4bc572eb548d8` (`stockId`),
  KEY `FK_91615ba0e5aabb257e0995915a7` (`retailerId`),
  KEY `FK_4a8e3c4f62dcabb4de48b4b60c7` (`currencyId`),
  CONSTRAINT `FK_4a8e3c4f62dcabb4de48b4b60c7` FOREIGN KEY (`currencyId`) REFERENCES `currencies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_91615ba0e5aabb257e0995915a7` FOREIGN KEY (`retailerId`) REFERENCES `retailers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_c34d5270a2b99d7ae399a9cae60` FOREIGN KEY (`orderId`) REFERENCES `retailer_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_db816fe7dceb6e4bc572eb548d8` FOREIGN KEY (`stockId`) REFERENCES `stock` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_stock_orders`
--

LOCK TABLES `retailer_stock_orders` WRITE;
/*!40000 ALTER TABLE `retailer_stock_orders` DISABLE KEYS */;
INSERT INTO `retailer_stock_orders` VALUES (1,'2025-12-20 17:11:14.815835',NULL,1,'N/A',1,NULL,'#FF7F50','#FF7F50','Fully Stitched Lined','#7FFFD4',2,0,1,2,NULL,'Pending'),(2,'2025-12-20 18:03:12.404945',NULL,1,'N/A',1,NULL,'#FF7F50','#FF7F50','Fully Stitched Lined','#7FFFD4',2,0,1,2,NULL,'Pending'),(3,'2025-12-24 10:58:40.954632',NULL,1,'N/A',1,NULL,'#FF7F50','#FF7F50','Fully Stitched Lined','#7FFFD4',2,0,1,2,NULL,'Pending'),(4,'2025-12-24 21:32:27.860367',NULL,1,'N/A',1,NULL,'#FF7F50','#FF7F50','Fully Stitched Lined','#7FFFD4',2,0,1,2,NULL,'Pending'),(5,'2025-12-26 12:51:45.339661',NULL,5,'N/A',1,NULL,'#FF7F50','#FF7F50','Fully Stitched Lined','#7FFFD4',2,0,1,2,NULL,'Pending'),(6,'2025-12-27 16:48:57.491821',NULL,1,'32',1,NULL,'#00FF00','#7FFFD4','Full Separate Lining','#00FF00',3,0,10,3,NULL,'Pending'),(7,'2026-01-02 14:06:11.237025',NULL,1,'34',0,NULL,'#7FFFD4','#7FFFD4','No Lining',NULL,2,0,16,2,NULL,'Pending'),(8,'2026-01-02 14:06:21.970829',NULL,1,'34',1,NULL,'#7FFFD4','#7FFFD4','No Lining',NULL,2,0,16,2,NULL,'Pending'),(9,'2026-01-02 14:09:32.330959',NULL,1,'40',1,NULL,'#FF7F50','#00FF00','Separate Short Lining','#7FFFD4',2,0,12,2,NULL,'Pending');
/*!40000 ALTER TABLE `retailer_stock_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailers`
--

DROP TABLE IF EXISTS `retailers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_429669ea5205c114e3cf8b7251` (`customerId`),
  CONSTRAINT `FK_429669ea5205c114e3cf8b72513` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailers`
--

LOCK TABLES `retailers` WRITE;
/*!40000 ALTER TABLE `retailers` DISABLE KEYS */;
INSERT INTO `retailers` VALUES (1,'2025-12-09 11:04:01.904379',NULL,'success','success',0,1),(2,'2025-12-19 11:32:32.601083',NULL,'aman','aman@123',0,2),(3,'2025-12-26 15:50:25.652050',NULL,'sartoria','sartoria',0,399),(4,'2025-12-26 17:01:07.834435',NULL,'sanorita','sanorita',0,490);
/*!40000 ALTER TABLE `retailers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_648e3f5447f725579d7d4ffdfb` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_permissions`
--

DROP TABLE IF EXISTS `roles_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_permissions` (
  `rolesId` int(11) NOT NULL,
  `permissionsId` int(11) NOT NULL,
  PRIMARY KEY (`rolesId`,`permissionsId`),
  KEY `IDX_bf98d8fd47610db71dfc5a4a5f` (`rolesId`),
  KEY `IDX_f25fd350775094ceb3a02c1468` (`permissionsId`),
  CONSTRAINT `FK_bf98d8fd47610db71dfc5a4a5ff` FOREIGN KEY (`rolesId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_f25fd350775094ceb3a02c14681` FOREIGN KEY (`permissionsId`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_permissions`
--

LOCK TABLES `roles_permissions` WRITE;
/*!40000 ALTER TABLE `roles_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_60a049dd3231ed458dccfdaf40` (`email`),
  UNIQUE KEY `IDX_10cdf572548e1f45f7eae15a06` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor_images`
--

DROP TABLE IF EXISTS `sponsor_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `image_url` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor_images`
--

LOCK TABLES `sponsor_images` WRITE;
/*!40000 ALTER TABLE `sponsor_images` DISABLE KEYS */;
INSERT INTO `sponsor_images` VALUES (2,'2026-01-03 18:06:47.047187',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/uploads/ob5qzq.webp','hello');
/*!40000 ALTER TABLE `sponsor_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `styleNo` varchar(50) NOT NULL,
  `colors` text DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `discountedPrice` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `size_country` varchar(255) NOT NULL DEFAULT 'EU',
  `mesh_color` varchar(255) NOT NULL DEFAULT 'SAS',
  `beading_color` varchar(255) NOT NULL DEFAULT 'SAS',
  `add_lining` int(11) NOT NULL DEFAULT 0,
  `lining` varchar(255) NOT NULL DEFAULT 'SAS',
  `lining_color` varchar(255) DEFAULT 'SAS',
  `isActive` tinyint(4) NOT NULL DEFAULT 1,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'2025-12-14 23:31:21.711008',NULL,'2',NULL,169,1000,1,990,60,'UK','#FF7F50','#FF7F50',0,'Fully Stitched Lined','#7FFFD4',1,1),(2,'2025-12-27 14:11:19.403609',NULL,'1',NULL,17,177,0,177,56,'UK','#7FFFD4','#FFF5EE',0,'Full Separate Lining','#7FFFD4',1,1),(3,'2025-12-27 14:11:19.418350',NULL,'1',NULL,1,11,0,11,30,'EU','#00FF00','#7FFFD4',0,'Full Separate Lining','#FFF5EE',1,1),(4,'2025-12-27 14:11:19.425161',NULL,'1',NULL,10,110,0,110,38,'IT','#FF7F50','#FFF5EE',0,'Separate Short Lining','#7FFFD4',1,1),(5,'2025-12-27 14:11:19.431410',NULL,'1',NULL,17,11000,0,11000,60,'US','#7FFFD4','#7FFFD4',0,'Separate Short Lining','#00FF00',1,1),(6,'2025-12-27 14:21:35.992306',NULL,'2',NULL,17,100000,0,100000,60,'UK','#FFF5EE','#00FF00',0,'Separate Short Lining','#00FF00',1,1),(7,'2025-12-27 15:02:16.716292',NULL,'1',NULL,1,11,1,11,50,'UK','#00FF00','#00FF00',0,'Waist to Hips Stitched Lining','#00FF00',1,1),(8,'2025-12-27 15:15:22.539893',NULL,'1',NULL,1,11,0,11,60,'EU','#00FF00','#00FF00',0,'Full Separate Lining','#FF7F50',1,1),(9,'2025-12-27 15:16:08.804061',NULL,'2',NULL,1,100000,0,100000,52,'EU','#00FF00','#7FFFD4',0,'Waist to Hips Stitched Lining','#FF7F50',1,1),(10,'2025-12-27 15:41:19.877980',NULL,'1',NULL,10666625,11,0,11,32,'EU','#00FF00','#7FFFD4',0,'Full Separate Lining','#00FF00',1,0),(11,'2025-12-27 17:27:30.394029',NULL,'1',NULL,1,11,0,11,2,'US','#00FF00','#7FFFD4',0,'Separate Short Lining','#7FFFD4',1,0),(12,'2025-12-30 14:19:26.615351',NULL,'1',NULL,0,110,0,110,40,'EU','#FF7F50','#00FF00',0,'Separate Short Lining','#7FFFD4',1,0),(13,'2026-01-01 17:48:36.431024',NULL,'1',NULL,1,11,0,11,56,'IT','#00FF00','#00FF00',0,'Full Separate Lining','#00FF00',1,1),(14,'2026-01-01 17:48:36.479449',NULL,'1',NULL,17,17,0,17,2,'US','#00FF00','#00FF00',0,'Full Separate Lining','#00FF00',1,0),(15,'2026-01-01 17:53:56.046387',NULL,'1',NULL,1,11,0,11,32,'UK','#00FF00','#00FF00',0,'Full Separate Lining','#00FF00',1,0),(16,'2026-01-02 13:51:40.249482',NULL,'2',NULL,0,100000,0,100000,6,'UK','#7FFFD4','#7FFFD4',0,'No Lining',NULL,1,0);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_currency_pricing`
--

DROP TABLE IF EXISTS `stock_currency_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_currency_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `discountedPrice` decimal(10,2) NOT NULL,
  `stockId` int(11) DEFAULT NULL,
  `currencyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_24d314bb5b05732d19dcbb4dfb` (`stockId`,`currencyId`),
  KEY `FK_20e32745c7b42b21c985af4af4d` (`currencyId`),
  CONSTRAINT `FK_20e32745c7b42b21c985af4af4d` FOREIGN KEY (`currencyId`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_69bb431628bba08f14f9d4325c2` FOREIGN KEY (`stockId`) REFERENCES `stock` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_currency_pricing`
--

LOCK TABLES `stock_currency_pricing` WRITE;
/*!40000 ALTER TABLE `stock_currency_pricing` DISABLE KEYS */;
INSERT INTO `stock_currency_pricing` VALUES (1,'2025-12-27 15:44:49.190422',NULL,1.00,1.00,10,3),(2,'2025-12-27 15:44:49.205961',NULL,2.00,2.00,10,2),(3,'2025-12-27 16:30:06.053888',NULL,10.00,10.00,10,4),(4,'2025-12-27 17:27:30.410155',NULL,2.00,2.00,11,3),(5,'2025-12-30 14:19:26.627790',NULL,111.00,111.00,12,1),(6,'2025-12-30 14:19:26.635559',NULL,100.00,100.00,12,3),(7,'2025-12-30 14:19:26.642089',NULL,1.00,1.00,12,2),(8,'2026-01-01 17:48:36.468438',NULL,121.00,121.00,13,2),(9,'2026-01-01 17:48:36.490779',NULL,17.00,17.00,14,2),(10,'2026-01-01 17:51:55.022535',NULL,121.00,121.00,13,4),(11,'2026-01-01 17:53:56.077381',NULL,10.00,10.00,15,3),(12,'2026-01-02 13:51:40.262530',NULL,1.00,1.00,16,2);
/*!40000 ALTER TABLE `stock_currency_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_order_styles`
--

DROP TABLE IF EXISTS `stock_order_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_order_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT current_timestamp(),
  `deletedAt` datetime DEFAULT NULL,
  `styleNo` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `size_country` varchar(255) DEFAULT NULL,
  `photoUrls` varchar(255),
  `retailerOrderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_order_styles`
--

LOCK TABLES `stock_order_styles` WRITE;
/*!40000 ALTER TABLE `stock_order_styles` DISABLE KEYS */;
INSERT INTO `stock_order_styles` VALUES (1,'2025-12-20 18:01:35',NULL,'SK660016','PO#AMAN00013-1',1,'60 (UK)','UK',NULL,19),(2,'2025-12-20 18:03:39',NULL,'SK660016','PO#AMAN00014-2',1,'60 (UK)','UK',NULL,20),(3,'2025-12-24 16:15:11',NULL,'SK660016','PO#AMAN00021-3',1,'60 (UK)','UK',NULL,28),(4,'2025-12-26 12:07:05',NULL,'SK660016','PO#AMAN00029-4',1,'60 (UK)','UK',NULL,37),(5,'2025-12-29 14:41:23',NULL,'SK660011','PO#SARTORIA00009-5',1,'32 (EU)','EU',NULL,53),(6,'2025-12-29 14:42:06',NULL,'SK660016','PO#AMAN00036-6',1,'60 (UK)','UK',NULL,54),(7,'2026-01-03 15:45:05',NULL,'SK660011','PO#AMAN00039-7',1,'40 (EU)','EU',NULL,59),(8,'2026-01-05 16:23:50',NULL,'SK660016','PO#AMAN00040-8',1,'6 (UK)','UK',NULL,60);
/*!40000 ALTER TABLE `stock_order_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order_styles`
--

DROP TABLE IF EXISTS `store_order_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_order_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `styleNo` varchar(255) NOT NULL,
  `size_country` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `photoUrls` text ,
  `createdAt` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `barcode` (`barcode`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order_styles`
--

LOCK TABLES `store_order_styles` WRITE;
/*!40000 ALTER TABLE `store_order_styles` DISABLE KEYS */;
INSERT INTO `store_order_styles` VALUES (1,7,'ST-1001','US','8',20,'SC1001001','[]','2025-12-12 23:13:14');
/*!40000 ALTER TABLE `store_order_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_style_progress`
--

DROP TABLE IF EXISTS `store_style_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_style_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_style_progress`
--

LOCK TABLES `store_style_progress` WRITE;
/*!40000 ALTER TABLE `store_style_progress` DISABLE KEYS */;
INSERT INTO `store_style_progress` VALUES (1,'PO#SUCCESS000023456543-SK660016-4','Pattern',7,'2025-12-13 00:55:15',NULL),(2,'PO#SUCCESS000023456543-SK660016-4','Issue Beading',7,'2025-12-13 00:55:33',NULL),(3,'PO#SUCCESS000023456543-SK660016-4','Beading',7,'2025-12-13 14:25:18',NULL),(4,'PO#SUCCESS000023456543-SK660016-4','Zarkan',7,'2025-12-13 14:29:56',NULL),(5,'PO#SUCCESS000023456543-SK660016-4','Zarkan',7,'2025-12-13 14:33:41',NULL),(6,'PO#SUCCESS000023456543-SK660016-4','Balance Pending',7,'2025-12-13 15:43:57',NULL),(7,'PO#SUCCESS0000251782-SK660011-6','Pattern',1,'2025-12-13 18:45:19',NULL),(8,'PO#SUCCESS0000251782-SK660011-6','Pattern',5,'2025-12-13 18:45:39',NULL),(9,'PO#SUCCESS0000251782-SK660011-6','Pattern',1,'2025-12-13 18:45:53',NULL),(10,'PO#SUCCESS0000251782-SK660011-6','Khaka',2,'2025-12-13 18:49:22',NULL),(11,'PO#SUCCESS000023456543-SK660016-4','Khaka',1,'2025-12-14 01:49:02',NULL),(12,'PO#SUCCESS000023456543-SK660016-4','Issue Beading',1,'2025-12-14 01:49:02',NULL),(13,'PO#SUCCESS000023456543-SK660016-4','Khaka',6,'2025-12-14 01:49:21',NULL),(14,'PO#SUCCESS000023456543-SK660016-4','Issue Beading',6,'2025-12-14 01:49:21',NULL),(15,'PO#SUCCESS0000251782-SK660016-5','Pattern',1,'2025-12-14 01:50:37',NULL),(16,'PO#SUCCESS0000251782-SK660016-5','Khaka',1,'2025-12-14 01:50:37',NULL),(17,'PO#SUCCESS0000251782-SK660016-5','Issue Beading',1,'2025-12-14 01:51:27',NULL),(18,'PO#SUCCESS0000251782-SK660016-5','Beading',1,'2025-12-14 01:51:27',NULL),(19,'PO#SUCCESS0000251782-SK660016-5','Zarkan',1,'2025-12-14 01:52:15',NULL),(20,'PO#SUCCESS0000251782-SK660016-5','Stitching',1,'2025-12-14 01:52:16',NULL),(21,'PO#SUCCESS0000251782-SK660016-5','Stitching',1,'2025-12-14 13:12:07',NULL),(22,'PO#SUCCESS0000251782-SK660016-5','Khaka',1,'2025-12-14 13:12:21',NULL),(23,'PO#SUCCESS0000251782-SK660016-5','Pattern',1,'2025-12-14 13:12:51',NULL),(24,'PO#SUCCESS0000251782-SK660016-5','Issue Beading',1,'2025-12-14 13:13:08',NULL),(25,'PO#SUCCESS0000251782-SK660016-5','Pattern',1,'2025-12-14 13:13:49',NULL),(26,'PO#SUCCESS0000251782-SK660016-5','Pattern',1,'2025-12-14 13:14:01',NULL),(27,'PO#SUCCESS0000251782-SK660016-5','Pattern',1,'2025-12-14 13:14:13',NULL),(28,'PO#SUCCESS0000456678-SK660011-7','Pattern',7,'2025-12-14 13:25:30',NULL),(29,'PO#SUCCESS0000456678-SK660011-7','Khaka',7,'2025-12-14 13:25:37',NULL),(30,'PO#SUCCESS00001-SK660016-11','Pattern',1,'2025-12-15 17:00:29',NULL),(31,'PO#SUCCESS00001-SK660016-11','Khaka',1,'2025-12-15 17:01:20',NULL),(32,'PO#SUCCESS00001-SK660016-11','Issue Beading',1,'2025-12-15 17:02:06',NULL),(33,'PO#AMAN00001213451-SK660011-5','Khaka',1,'2025-12-29 18:57:18',NULL),(34,'PO#AMAN00001-SK660011-7','Khaka',1,'2025-12-30 12:53:56',NULL),(35,'PO#AMAN00001-SK660011-7','Issue Beading',1,'2025-12-30 13:53:11',NULL),(43,'PO#AMAN00001144355124-SK660011-14','Pattern',1,'2026-01-03 14:41:43',NULL),(44,'PO#AMAN00001144355124-SK660011-14','Khaka',1,'2026-01-03 14:41:52',NULL),(45,'PO#AMAN00001144355124-SK660011-14','Issue Beading',1,'2026-01-03 14:42:00',NULL),(46,'PO#AMAN00001144355124-SK660011-14','Beading',1,'2026-01-03 14:42:15',NULL);
/*!40000 ALTER TABLE `store_style_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `styleprogress`
--

DROP TABLE IF EXISTS `styleprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `styleprogress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `barcode` varchar(255) NOT NULL,
  `stage` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `styleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_style` (`styleId`),
  CONSTRAINT `fk_style` FOREIGN KEY (`styleId`) REFERENCES `orderstyles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styleprogress`
--

LOCK TABLES `styleprogress` WRITE;
/*!40000 ALTER TABLE `styleprogress` DISABLE KEYS */;
INSERT INTO `styleprogress` VALUES (1,'2025-12-12 13:57:39.143669',NULL,'SK660011-1','Khaka',1,'2025-12-12 13:57:39',1),(2,'2025-12-12 14:19:04.911793',NULL,'SK660011-2','Khaka',3,'2025-12-12 14:19:04',2),(3,'2025-12-12 14:19:25.713251',NULL,'SK660011-2','Pattern',7,'2025-12-12 14:19:25',2),(4,'2025-12-12 16:44:03.254375',NULL,'PO#SUCCESS00013-1 ','Pattern',1,'2025-12-12 16:44:03',NULL),(5,'2025-12-12 16:44:21.977362',NULL,'PO#SUCCESS00013-1 ','Pattern',1,'2025-12-12 16:44:21',NULL),(6,'2025-12-12 16:45:38.704505',NULL,'PO#SUCCESS00013-1 ','Khaka',1,'2025-12-12 16:45:38',NULL),(7,'2025-12-12 16:51:35.599378',NULL,'PO#SUCCESS00013-1 ','Issue Beading',1,'2025-12-12 16:51:35',NULL),(8,'2025-12-12 17:03:24.832248',NULL,'PO#SUCCESS00014-1','Pattern',1,'2025-12-12 17:03:24',NULL),(9,'2025-12-12 17:03:38.971355',NULL,'PO#SUCCESS00014-1','Khaka',1,'2025-12-12 17:03:38',NULL),(10,'2025-12-12 17:03:48.115880',NULL,'PO#SUCCESS00014-1','Issue Beading',1,'2025-12-12 17:03:48',NULL),(11,'2025-12-13 00:30:33.318130',NULL,'PO#SUCCESS00014-1','Pattern',1,'2025-12-13 00:30:33',NULL),(12,'2025-12-13 14:43:17.479941',NULL,'PO#SUCCESS00015-1','Khaka',1,'2025-12-13 14:43:17',NULL),(13,'2025-12-14 17:42:53.069727',NULL,'PO#SUCCESS00018-1','Pattern',1,'2025-12-14 17:42:53',NULL),(14,'2025-12-14 17:44:07.282126',NULL,'PO#SUCCESS00018-1','Khaka',1,'2025-12-14 17:44:07',NULL),(15,'2025-12-15 12:55:05.704809',NULL,'PO#SUCCESS00021-12','Pattern',1,'2025-12-15 12:55:05',NULL),(16,'2025-12-15 16:32:06.941882',NULL,'PO#SUCCESS00023-16','Issue Beading',1,'2025-12-15 16:32:06',NULL),(17,'2025-12-15 16:33:34.508498',NULL,'PO#SUCCESS00023-16','Pattern',1,'2025-12-15 16:33:34',NULL),(18,'2025-12-15 17:13:52.184969',NULL,'PO#SUCCESS00023-16','Khaka',1,'2025-12-15 17:13:52',NULL),(19,'2025-12-15 17:14:32.290757',NULL,'PO#SUCCESS00023-16','Issue Beading',1,'2025-12-15 17:14:32',NULL),(20,'2025-12-15 17:15:49.538763',NULL,'PO#SUCCESS00023-16','Beading',1,'2025-12-15 17:15:49',NULL),(21,'2025-12-15 17:15:58.766385',NULL,'PO#SUCCESS00023-16','Zarkan',1,'2025-12-15 17:15:58',NULL),(22,'2025-12-15 17:16:04.855700',NULL,'PO#SUCCESS00023-16','Stitching',1,'2025-12-15 17:16:04',NULL),(23,'2025-12-15 17:16:12.300336',NULL,'PO#SUCCESS00023-16','Ready To Delivery',1,'2025-12-15 17:16:12',NULL),(24,'2025-12-15 17:16:23.222123',NULL,'PO#SUCCESS00023-16','Shipped',1,'2025-12-15 17:16:23',NULL),(25,'2025-12-15 17:39:57.154798',NULL,'PO#SUCCESS00023-16','Shipped',1,'2025-12-15 17:39:57',NULL),(26,'2025-12-15 17:40:43.910182',NULL,'PO#SUCCESS00023-16','Shipped',1,'2025-12-15 17:40:43',NULL),(27,'2025-12-15 17:41:48.817493',NULL,'PO#SUCCESS00021-12','Khaka',1,'2025-12-15 17:41:48',NULL),(28,'2025-12-15 17:41:53.504080',NULL,'PO#SUCCESS00021-12','Issue Beading',1,'2025-12-15 17:41:53',NULL),(29,'2025-12-15 17:42:01.793280',NULL,'PO#SUCCESS00021-12','Beading',1,'2025-12-15 17:42:01',NULL),(30,'2025-12-15 17:42:08.928515',NULL,'PO#SUCCESS00021-12','Zarkan',1,'2025-12-15 17:42:08',NULL),(31,'2025-12-15 17:42:13.395987',NULL,'PO#SUCCESS00021-12','Stitching',1,'2025-12-15 17:42:13',NULL),(32,'2025-12-15 17:42:41.595815',NULL,'PO#SUCCESS00021-12','Ready To Delivery',1,'2025-12-15 17:42:41',NULL),(33,'2025-12-16 11:49:49.766258',NULL,'PO#SUCCESS00023-16','Shipped',1,'2025-12-16 11:49:49',NULL),(34,'2025-12-16 13:00:01.409798',NULL,'PO#SUCCESS00022-14','Pattern',1,'2025-12-16 13:00:01',NULL),(35,'2025-12-16 13:01:51.303761',NULL,'PO#SUCCESS00022-14','Khaka',1,'2025-12-16 13:01:51',NULL),(36,'2025-12-16 13:07:48.323203',NULL,'PO#SUCCESS00022-14','Issue Beading',1,'2025-12-16 13:07:48',NULL),(37,'2025-12-16 13:10:05.379040',NULL,'PO#SUCCESS00022-14','Beading',1,'2025-12-16 13:10:05',NULL),(38,'2025-12-16 13:10:11.750099',NULL,'PO#SUCCESS00022-14','Zarkan',1,'2025-12-16 13:10:11',NULL),(39,'2025-12-18 12:16:31.150446',NULL,'PO#SUCCESS02004-18','Pattern',1,'2025-12-18 12:16:31',NULL),(40,'2025-12-21 00:02:47.455841',NULL,'PO#AMAN00015-12','Pattern',1,'2025-12-21 00:02:47',NULL),(41,'2025-12-21 00:27:11.003715',NULL,'PO#AMAN00015-12','Khaka',1,'2025-12-21 00:27:11',NULL),(42,'2025-12-21 00:27:38.694502',NULL,'PO#AMAN00015-12','Issue Beading',1,'2025-12-21 00:27:38',NULL),(43,'2025-12-21 00:28:18.619940',NULL,'PO#AMAN00014-2','Pattern',1,'2025-12-21 00:28:18',NULL),(44,'2025-12-21 00:28:26.107165',NULL,'PO#AMAN00014-2','Beading',1,'2025-12-21 00:28:26',NULL),(45,'2025-12-21 00:29:00.506445',NULL,'PO#AMAN00014-2','Stitching',1,'2025-12-21 00:29:00',NULL),(46,'2025-12-21 00:30:57.677493',NULL,'PO#AMAN00013-1','Pattern',1,'2025-12-21 00:30:57',NULL),(47,'2025-12-21 00:31:04.426266',NULL,'PO#AMAN00013-1','Beading',1,'2025-12-21 00:31:04',NULL),(48,'2025-12-21 21:38:49.968433',NULL,'PO#AMAN00015-12','Beading',1,'2025-12-21 21:38:49',NULL),(49,'2025-12-21 21:39:01.343693',NULL,'PO#AMAN00015-12','Zarkan',1,'2025-12-21 21:39:01',NULL),(50,'2025-12-22 15:55:51.096986',NULL,'PO#AMAN00015-12','Stitching',1,'2025-12-22 15:55:51',NULL),(51,'2025-12-22 15:56:03.273714',NULL,'PO#AMAN00015-12','Ready To Delivery',1,'2025-12-22 15:56:03',NULL),(52,'2025-12-22 15:56:07.943746',NULL,'PO#AMAN00015-12','Shipped',1,'2025-12-22 15:56:07',NULL),(53,'2025-12-22 15:56:12.523117',NULL,'PO#AMAN00015-12','Shipped',1,'2025-12-22 15:56:12',NULL),(54,'2025-12-22 16:01:33.459574',NULL,'PO#AMAN00014-2','Ready To Delivery',1,'2025-12-22 16:01:33',NULL),(55,'2025-12-22 16:21:14.116340',NULL,'PO#AMAN00014-2','Shipped',1,'2025-12-22 16:21:14',NULL),(56,'2025-12-24 16:38:35.713856',NULL,'PO#AMAN00020-17','Pattern',1,'2025-12-24 16:38:35',NULL),(57,'2025-12-24 16:38:50.007892',NULL,'PO#AMAN00020-17','Khaka',1,'2025-12-24 16:38:50',NULL),(58,'2025-12-24 16:38:57.878300',NULL,'PO#AMAN00020-17','Issue Beading',1,'2025-12-24 16:38:57',NULL),(59,'2025-12-24 16:39:42.020314',NULL,'PO#AMAN00020-17','Beading',1,'2025-12-24 16:39:42',NULL),(60,'2025-12-24 16:51:14.261443',NULL,'PO#AMAN00022-18','Pattern',1,'2025-12-24 16:51:14',NULL),(61,'2025-12-24 16:51:18.170392',NULL,'PO#AMAN00022-18','Khaka',1,'2025-12-24 16:51:18',NULL),(62,'2025-12-25 11:34:06.114855',NULL,'PO#AMAN00026-23','Pattern',1,'2025-12-25 11:34:06',NULL),(63,'2025-12-25 11:34:12.592118',NULL,'PO#AMAN00026-23','Khaka',1,'2025-12-25 11:34:12',NULL),(64,'2025-12-25 11:34:47.573393',NULL,'PO#AMAN00026-24','Pattern',1,'2025-12-25 11:34:47',NULL),(65,'2025-12-25 11:34:53.369726',NULL,'PO#AMAN00026-24','Khaka',1,'2025-12-25 11:34:53',NULL),(66,'2025-12-25 11:34:56.617834',NULL,'PO#AMAN00026-24','Issue Beading',1,'2025-12-25 11:34:56',NULL),(67,'2025-12-25 11:36:05.657527',NULL,'PO#AMAN00026-25','Pattern',1,'2025-12-25 11:36:05',NULL),(68,'2025-12-25 11:41:33.793826',NULL,'PO#AMAN00026-24','Beading',1,'2025-12-25 11:41:33',NULL),(69,'2025-12-25 11:47:22.035720',NULL,'PO#AMAN00026-25','Khaka',1,'2025-12-25 11:47:22',NULL),(70,'2025-12-25 11:48:15.677958',NULL,'PO#AMAN00026-25','Issue Beading',1,'2025-12-25 11:48:15',NULL),(71,'2025-12-25 11:48:20.291705',NULL,'PO#AMAN00026-25','Beading',1,'2025-12-25 11:48:20',NULL),(72,'2025-12-25 11:48:22.628984',NULL,'PO#AMAN00026-25','Zarkan',1,'2025-12-25 11:48:22',NULL),(73,'2025-12-25 11:48:42.409803',NULL,'PO#AMAN00026-23','Issue Beading',1,'2025-12-25 11:48:42',NULL),(74,'2025-12-25 11:48:50.051058',NULL,'PO#AMAN00026-23','Beading',1,'2025-12-25 11:48:50',NULL),(75,'2025-12-25 11:48:52.729569',NULL,'PO#AMAN00026-23','Zarkan',1,'2025-12-25 11:48:52',NULL),(76,'2025-12-25 11:49:14.619331',NULL,'PO#AMAN00026-24','Zarkan',1,'2025-12-25 11:49:14',NULL),(77,'2025-12-26 12:27:05.644106',NULL,'PO#AMAN00029-4','Pattern',1,'2025-12-26 12:27:05',NULL),(78,'2025-12-26 12:27:11.116358',NULL,'PO#AMAN00029-4','Beading',1,'2025-12-26 12:27:11',NULL),(79,'2025-12-26 12:27:14.598224',NULL,'PO#AMAN00029-4','Stitching',1,'2025-12-26 12:27:14',NULL),(80,'2025-12-26 12:27:17.462466',NULL,'PO#AMAN00029-4','Ready To Delivery',1,'2025-12-26 12:27:17',NULL),(81,'2025-12-26 12:27:20.514872',NULL,'PO#AMAN00029-4','Shipped',1,'2025-12-26 12:27:20',NULL),(82,'2025-12-26 12:27:33.606752',NULL,'PO#AMAN00029-4','Shipped',1,'2025-12-26 12:27:33',NULL),(83,'2025-12-26 12:27:40.007167',NULL,'PO#AMAN00029-4','Shipped',1,'2025-12-26 12:27:40',NULL),(84,'2025-12-26 12:27:44.735505',NULL,'PO#AMAN00029-4','Shipped',1,'2025-12-26 12:27:44',NULL),(85,'2025-12-26 12:30:35.231706',NULL,'PO#AMAN00016-13','Pattern',1,'2025-12-26 12:30:35',NULL),(86,'2025-12-26 12:30:39.496001',NULL,'PO#AMAN00016-13','Khaka',1,'2025-12-26 12:30:39',NULL),(87,'2025-12-26 12:30:42.345449',NULL,'PO#AMAN00016-13','Issue Beading',1,'2025-12-26 12:30:42',NULL),(88,'2025-12-26 12:30:45.177042',NULL,'PO#AMAN00016-13','Beading',1,'2025-12-26 12:30:45',NULL),(89,'2025-12-26 12:30:47.934810',NULL,'PO#AMAN00016-13','Zarkan',1,'2025-12-26 12:30:47',NULL),(90,'2025-12-26 12:30:50.650846',NULL,'PO#AMAN00016-13','Stitching',1,'2025-12-26 12:30:50',NULL),(91,'2025-12-26 12:30:53.530059',NULL,'PO#AMAN00016-13','Balance Pending',1,'2025-12-26 12:30:53',NULL),(92,'2025-12-26 12:32:51.828011',NULL,'PO#AMAN00016-13','Ready To Delivery',1,'2025-12-26 12:32:51',NULL),(93,'2025-12-26 12:32:56.547007',NULL,'PO#AMAN00016-13','Shipped',1,'2025-12-26 12:32:56',NULL),(94,'2025-12-26 15:01:09.459027',NULL,'PO#AMAN00022-18','Issue Beading',1,'2025-12-26 15:01:09',NULL),(95,'2025-12-26 15:01:20.077722',NULL,'PO#AMAN00022-18','Beading',1,'2025-12-26 15:01:20',NULL),(96,'2025-12-26 15:01:30.368023',NULL,'PO#AMAN00022-19','Pattern',1,'2025-12-26 15:01:30',NULL),(97,'2025-12-26 15:01:36.242354',NULL,'PO#AMAN00022-19','Khaka',1,'2025-12-26 15:01:36',NULL),(98,'2025-12-26 15:02:18.270682',NULL,'PO#AMAN00022-18','Zarkan',1,'2025-12-26 15:02:18',NULL),(99,'2025-12-26 15:05:35.873939',NULL,'PO#AMAN00031-29','Pattern',1,'2025-12-26 15:05:35',NULL),(100,'2025-12-26 15:05:38.746796',NULL,'PO#AMAN00031-29','Khaka',1,'2025-12-26 15:05:38',NULL),(101,'2025-12-26 15:09:50.308801',NULL,'PO#AMAN00032-30','Pattern',1,'2025-12-26 15:09:50',NULL),(102,'2025-12-26 15:09:54.809759',NULL,'PO#AMAN00032-30','Khaka',1,'2025-12-26 15:09:54',NULL),(103,'2025-12-26 15:12:28.309143',NULL,'PO#AMAN00032-30','Issue Beading',1,'2025-12-26 15:12:28',NULL),(104,'2025-12-26 15:15:12.179508',NULL,'PO#AMAN00032-31','Pattern',1,'2025-12-26 15:15:12',NULL),(105,'2025-12-26 15:15:15.426923',NULL,'PO#AMAN00032-31','Khaka',1,'2025-12-26 15:15:15',NULL),(106,'2025-12-26 15:16:04.244222',NULL,'PO#AMAN00032-31','Issue Beading',1,'2025-12-26 15:16:04',NULL),(107,'2025-12-26 15:26:32.499542',NULL,'PO#AMAN00030-28','Pattern',1,'2025-12-26 15:26:32',NULL),(108,'2025-12-26 15:26:39.236136',NULL,'PO#AMAN00030-28','Khaka',1,'2025-12-26 15:26:39',NULL),(109,'2025-12-26 15:26:42.235176',NULL,'PO#AMAN00030-28','Issue Beading',1,'2025-12-26 15:26:42',NULL),(110,'2025-12-26 15:26:45.367665',NULL,'PO#AMAN00030-28','Beading',1,'2025-12-26 15:26:45',NULL),(111,'2025-12-26 15:26:47.850053',NULL,'PO#AMAN00030-28','Zarkan',1,'2025-12-26 15:26:47',NULL),(112,'2025-12-26 15:26:50.635964',NULL,'PO#AMAN00030-28','Stitching',1,'2025-12-26 15:26:50',NULL),(113,'2025-12-26 15:26:53.249996',NULL,'PO#AMAN00030-28','Balance Pending',1,'2025-12-26 15:26:53',NULL),(114,'2025-12-26 15:29:03.214455',NULL,'PO#AMAN00030-28','Ready To Delivery',1,'2025-12-26 15:29:03',NULL),(115,'2025-12-26 15:29:55.771105',NULL,'PO#AMAN00031-29','Issue Beading',1,'2025-12-26 15:29:55',NULL),(116,'2025-12-26 15:30:00.487248',NULL,'PO#AMAN00031-29','Beading',1,'2025-12-26 15:30:00',NULL),(117,'2025-12-26 15:30:04.596103',NULL,'PO#AMAN00031-29','Zarkan',1,'2025-12-26 15:30:04',NULL),(118,'2025-12-26 15:30:07.164907',NULL,'PO#AMAN00031-29','Stitching',1,'2025-12-26 15:30:07',NULL),(119,'2025-12-26 15:30:09.704799',NULL,'PO#AMAN00031-29','Balance Pending',1,'2025-12-26 15:30:09',NULL),(120,'2025-12-26 17:55:18.799706',NULL,'PO#AMAN00033-32','Pattern',1,'2025-12-26 17:55:18',NULL),(121,'2025-12-26 17:55:23.033822',NULL,'PO#AMAN00033-32','Khaka',1,'2025-12-26 17:55:23',NULL),(122,'2025-12-26 17:55:27.093953',NULL,'PO#AMAN00033-32','Issue Beading',1,'2025-12-26 17:55:27',NULL),(123,'2025-12-26 17:55:30.103112',NULL,'PO#AMAN00033-32','Beading',1,'2025-12-26 17:55:30',NULL),(124,'2025-12-26 17:58:50.034154',NULL,'PO#AMAN00033-32','Zarkan',1,'2025-12-26 17:58:50',NULL),(125,'2025-12-26 18:20:29.541899',NULL,'PO#AMAN00033-32','Stitching',1,'2025-12-26 18:20:29',NULL),(126,'2025-12-26 18:21:18.995800',NULL,'PO#AMAN00033-32','Balance Pending',1,'2025-12-26 18:21:18',NULL),(127,'2025-12-26 18:23:39.162844',NULL,'PO#AMAN00018-15','Pattern',1,'2025-12-26 18:23:39',NULL),(128,'2025-12-26 18:24:15.483429',NULL,'PO#AMAN00018-15','Khaka',1,'2025-12-26 18:24:15',NULL),(129,'2025-12-26 18:24:24.269556',NULL,'PO#AMAN00018-15','Issue Beading',1,'2025-12-26 18:24:24',NULL),(130,'2025-12-26 18:24:36.156122',NULL,'PO#AMAN00018-15','Beading',1,'2025-12-26 18:24:36',NULL),(131,'2025-12-26 18:24:38.937001',NULL,'PO#AMAN00018-15','Zarkan',1,'2025-12-26 18:24:38',NULL),(132,'2025-12-26 18:24:41.385039',NULL,'PO#AMAN00018-15','Stitching',1,'2025-12-26 18:24:41',NULL),(133,'2025-12-26 18:24:44.115102',NULL,'PO#AMAN00018-15','Balance Pending',1,'2025-12-26 18:24:44',NULL),(134,'2025-12-26 18:34:36.384662',NULL,'PO#AMAN00013-1','Stitching',1,'2025-12-26 18:34:36',NULL),(135,'2025-12-26 18:34:42.364234',NULL,'PO#AMAN00013-1','Ready To Delivery',1,'2025-12-26 18:34:42',NULL),(136,'2025-12-26 18:35:49.141998',NULL,'PO#AMAN00011-11','Khaka',1,'2025-12-26 18:35:49',NULL),(137,'2025-12-26 18:36:09.447871',NULL,'PO#AMAN00011-11','Issue Beading',1,'2025-12-26 18:36:09',NULL),(138,'2025-12-26 18:36:14.053665',NULL,'PO#AMAN00011-11','Beading',1,'2025-12-26 18:36:14',NULL),(139,'2025-12-26 18:36:16.978726',NULL,'PO#AMAN00011-11','Zarkan',1,'2025-12-26 18:36:16',NULL),(140,'2025-12-26 18:36:21.176684',NULL,'PO#AMAN00011-11','Stitching',1,'2025-12-26 18:36:21',NULL),(141,'2025-12-26 18:36:24.667801',NULL,'PO#AMAN00011-11','Balance Pending',1,'2025-12-26 18:36:24',NULL),(142,'2025-12-26 18:36:27.710824',NULL,'PO#AMAN00011-11','Ready To Delivery',1,'2025-12-26 18:36:27',NULL),(143,'2025-12-26 18:36:35.616738',NULL,'PO#AMAN00011-11','Shipped',1,'2025-12-26 18:36:35',NULL),(144,'2025-12-26 18:42:33.692605',NULL,'PO#SARTORIA00001-33','Khaka',1,'2025-12-26 18:42:33',NULL),(145,'2025-12-26 18:52:08.312091',NULL,'PO#SARTORIA00001-33','IssueBeading',1,'2025-12-26 18:52:08',NULL),(146,'2025-12-26 18:55:30.855291',NULL,'PO#SARTORIA00001-33','IssueBeading',1,'2025-12-26 18:55:30',NULL),(147,'2025-12-26 18:58:22.668008',NULL,'PO#SARTORIA00001-33','Issue Beading',1,'2025-12-26 18:58:22',NULL),(148,'2025-12-26 18:58:30.880544',NULL,'PO#SARTORIA00001-33','Beading',1,'2025-12-26 18:58:30',NULL),(149,'2025-12-26 18:59:27.221656',NULL,'PO#SARTORIA00001-33','Zarkan',1,'2025-12-26 18:59:27',NULL),(150,'2025-12-26 18:59:33.088988',NULL,'PO#SARTORIA00001-33','Stitching',1,'2025-12-26 18:59:33',NULL),(151,'2025-12-26 18:59:40.801293',NULL,'PO#SARTORIA00001-33','Balance Pending',1,'2025-12-26 18:59:40',NULL),(152,'2025-12-26 19:02:39.014087',NULL,'PO#AMAN00034-34','Balance Pending',1,'2025-12-26 19:02:39',NULL),(153,'2025-12-29 15:05:17.064314',NULL,'PO#AMAN00003-3','Pattern',1,'2025-12-29 15:05:17',NULL),(154,'2025-12-29 15:06:25.987741',NULL,'PO#AMAN00003-3','Khaka',1,'2025-12-29 15:06:25',NULL),(155,'2025-12-29 15:33:28.844997',NULL,'PO#AMAN00003-3','Issue Beading',1,'2025-12-29 15:33:28',NULL),(156,'2025-12-29 15:34:04.974338',NULL,'PO#AMAN00003-3','Beading',1,'2025-12-29 15:34:04',NULL),(157,'2025-12-29 17:41:09.625358',NULL,'PO#AMAN00003-3','Zarkan',1,'2025-12-29 17:41:09',NULL),(158,'2025-12-29 17:45:18.607839',NULL,'PO#AMAN00003-3','Stitching',1,'2025-12-29 17:45:18',NULL),(159,'2025-12-29 17:45:23.126070',NULL,'PO#AMAN00003-3','Balance Pending',1,'2025-12-29 17:45:23',NULL),(160,'2025-12-29 17:56:24.220116',NULL,'PO#AMAN00003-3','Ready To Delivery',1,'2025-12-29 17:56:24',NULL),(161,'2025-12-29 18:42:57.229404',NULL,'PO#AMAN00003-3','Shipped',1,'2025-12-29 18:42:57',NULL),(162,'2025-12-29 18:43:17.943933',NULL,'PO#AMAN00003-3','Shipped',1,'2025-12-29 18:43:17',NULL),(163,'2025-12-29 18:48:30.006799',NULL,'PO#AMAN00005-5','Pattern',1,'2025-12-29 18:48:30',NULL),(164,'2025-12-29 18:48:34.199606',NULL,'PO#AMAN00005-5','Khaka',1,'2025-12-29 18:48:34',NULL),(165,'2025-12-30 12:52:44.962376',NULL,'PO#AMAN00037-SK660016-56','Pattern',1,'2025-12-30 12:52:44',NULL),(166,'2025-12-30 12:52:52.450775',NULL,'PO#AMAN00037-SK660016-56','Khaka',1,'2025-12-30 12:52:52',NULL),(167,'2025-12-30 12:52:56.701392',NULL,'PO#AMAN00037-SK660016-56','Issue Beading',1,'2025-12-30 12:52:56',NULL),(168,'2025-12-30 14:31:23.508718',NULL,'PO#SARTORIA00011-57','Pattern',1,'2025-12-30 14:31:23',NULL),(169,'2025-12-30 14:31:27.773943',NULL,'PO#SARTORIA00011-57','Khaka',1,'2025-12-30 14:31:27',NULL),(170,'2025-12-30 14:31:56.108524',NULL,'PO#SARTORIA00011-58','Pattern',1,'2025-12-30 14:31:56',NULL),(171,'2025-12-30 14:32:47.022900',NULL,'PO#SARTORIA00011-57','Issue Beading',1,'2025-12-30 14:32:47',NULL),(172,'2025-12-30 14:32:54.974982',NULL,'PO#SARTORIA00011-58','Khaka',1,'2025-12-30 14:32:54',NULL),(173,'2026-01-02 11:28:00.844148',NULL,'PO#AMAN00038-59','Pattern',1,'2026-01-02 11:28:00',NULL),(174,'2026-01-02 11:28:05.047331',NULL,'PO#AMAN00038-59','Khaka',1,'2026-01-02 11:28:05',NULL),(175,'2026-01-02 11:28:23.984016',NULL,'PO#AMAN00038-59','Issue Beading',1,'2026-01-02 11:28:23',NULL),(176,'2026-01-02 11:28:27.497943',NULL,'PO#AMAN00038-59','Beading',1,'2026-01-02 11:28:27',NULL),(177,'2026-01-02 11:28:31.162493',NULL,'PO#AMAN00038-59','Zarkan',1,'2026-01-02 11:28:31',NULL),(178,'2026-01-02 11:28:33.162476',NULL,'PO#AMAN00038-59','Stitching',1,'2026-01-02 11:28:33',NULL),(179,'2026-01-02 11:28:35.808698',NULL,'PO#AMAN00038-59','Balance Pending',1,'2026-01-02 11:28:35',NULL),(180,'2026-01-02 15:24:52.723527',NULL,'PO#AMAN00038-59','Shipped',1,'2026-01-02 15:24:52',NULL),(181,'2026-01-03 14:00:14.706012',NULL,'PO#AMAN00038-59','Shipped',1,'2026-01-03 14:00:14',NULL),(182,'2026-01-03 14:34:47.163123',NULL,'PO#AMAN00038-59','Shipped',1,'2026-01-03 14:34:47',NULL);
/*!40000 ALTER TABLE `styleprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `priority` int(11) DEFAULT 0,
  `categoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d1fe096726c3c5b8a500950e448` (`categoryId`),
  CONSTRAINT `FK_d1fe096726c3c5b8a500950e448` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,'2025-12-09 10:40:58.053441',NULL,'success',1,2),(2,'2025-12-09 10:41:15.486832',NULL,'hello',2,2);
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_fe0bb3f6520ee0469504521e71` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$12$biQDk497WtCIw5QDZ3DSHuKI5k8JrJsoTLiqUNtsY/lrfF8KZayqm',1),(2,'aman','$2b$10$PqDDDr7D/RPpXpzbBPiURuAJjuywM8yIiAkECMB2r5lFyFrjbO52y',NULL),(3,'user','$2b$10$J4pXH/LlZks7LIo5OVskL.ToshOLu1wu0y7TrErzAp5TkZ1cK6gPS',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mobileNumber` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobileNumber` (`mobileNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (1,'Test Worker','6202326924','$2a$12$ktSHclCJgYCpTJxUluwWz.lpnJWrOEpaBYyBUP0hKgVTma2Cc3k4e','2025-12-10 17:53:05','2025-12-10 17:53:05');
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mobileNumber` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobileNumber` (`mobileNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'Test Worker','6202326924','$2a$12$M94nzPM41kxN/zhrMTK05O0F2PTAM0NzhqlIEwkqG9iDBw1gXgPl6','2025-12-11 04:54:39');
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-14 12:24:36
