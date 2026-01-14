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
  `currencyId` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `address` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_bank`
--

LOCK TABLES `admin_bank` WRITE;
/*!40000 ALTER TABLE `admin_bank` DISABLE KEYS */;
INSERT INTO `admin_bank` VALUES (11,'2025-11-26 16:07:26.276687',NULL,'eef3c1fdc308e247e59ea2f1774342a5','90d5b07cc16777ac88954dfde5ef3300','1183ddd45833615250ce57269a2e40c1','9aec9f3dfa4a1529a0de553471e8389e',1,1,'hdfcbank'),(12,'2025-11-26 16:08:16.433615',NULL,'59e95f2c328f7f69b5ff713db2ec6c17','d40b0754bcd792643b3473c2a49340f5','1183ddd45833615250ce57269a2e40c1','9aec9f3dfa4a1529a0de553471e8389e',2,1,'bandhanbank'),(13,'2025-11-30 15:18:31.036188',NULL,'eef3c1fdc308e247e59ea2f1774342a5','90d5b07cc16777ac88954dfde5ef3300','8e8cb632d636b2035933062970d09c6c','9aec9f3dfa4a1529a0de553471e8389e',3,1,'hello');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (5,'2025-11-15 16:54:17.201528',NULL,'hello',1),(6,'2025-11-15 23:00:01.208052',NULL,'success',4000000),(7,'2025-11-15 23:09:38.394940',NULL,'Aman kumar',1),(8,'2025-11-17 12:39:32.727334',NULL,'done',1000000),(9,'2025-11-20 15:34:42.209587',NULL,'evening',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'2025-11-14 17:11:03.184607',NULL,'success','U.S. Rte 66, Joplin, MO, USA',60,'37.0846196','-94.546012','saran',0,1),(2,'2025-11-15 12:31:08.213491',NULL,'success','Success, AR 72470, USA',5000,'36.4541664','-90.724598','us',1,2),(3,'2025-11-15 13:01:35.302574',NULL,'success','02400 Hellín, Albacete, Spain',6000,'38.5081949','-1.6983239','saran',1,3),(4,'2025-11-15 13:03:50.883146',NULL,'Rainbow Store','London',1,'28.1','77.2','London',1,4),(5,'2025-11-15 14:37:24.064215',NULL,'aman','Saran, Bihar 841224, India',4000000,'26.0502233','84.6250199','india',1,5),(6,'2025-11-17 14:03:58.455578',NULL,'aman','Amarillo, TX, USA',6,'35.2069816','-101.8320065','saran',1,6),(7,'2025-11-18 00:34:24.066080',NULL,'successfull','Philippines',6,'12.879721','121.774017','philpins',1,7),(8,'2025-11-22 14:34:43.981349',NULL,'jaikvik','Success, MO 65570, USA',50,'37.4575195','-92.10525899999999','saran',0,8),(9,'2025-11-22 16:35:28.974703',NULL,'gaurav','Success Ln, Roubidoux Township, MO 65534, USA',50,'37.7282494','-92.2695013','gaurav',0,9),(10,'2025-11-22 17:12:47.738850',NULL,'gaurav','Roubidoux Rd, Success, MO, USA',50,'37.4129141','-92.1270167','gaurav',0,10),(11,'2025-11-26 14:01:24.880856',NULL,'hello','United States',60,'38.7945952','-106.5348379','usa',0,11),(12,'2025-11-26 16:09:56.255268',NULL,'hdfc','HDFC Colony, MIDC, Chinchwad, Pimpri-Chinchwad, Maharashtra 411019, India',60,'18.6552774','73.8047781','hdfc',0,12),(13,'2025-11-26 16:11:15.897899',NULL,'bandhan bank','Infanteriestraße 11, 80797 München, Germany',60,'48.1589567','11.5556212','bandhan',0,13);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
  `message` text NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `isRead` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (1,'2025-11-21 12:04:36.083722',NULL,'success','amankumarparsa17@gmail.com','+916202326924','app development','india','success','Bihar',1),(2,'2025-11-21 12:16:36.250664',NULL,'BRIDAL','zainarmaan60@gmail.com','+916202326924','app development','usa','usa','newyork',1),(3,'2025-11-21 14:08:02.717206',NULL,'BRIDAL','amankumrsuccess617@gmail.com','+916202326924','app development','india','succcess','Bihar',1),(4,'2025-11-21 17:50:11.391714',NULL,'Aman kumar','amankumarparsa1@gmail.com','+916202326924','success','India','success','bihar',1),(5,'2025-11-29 18:38:40.863686',NULL,'Aman kumar','amankumarparsa1@gmail.com','+916202326924','hello','hello','hello','hello',1),(6,'2025-11-29 18:42:42.272343',NULL,'Aman kumar','amankumarparsa1@gmail.com','+916202326924','success','India','success','bihar',1),(7,'2025-11-29 22:02:36.152587',NULL,'Aman','amankumarparsa17@gmail.com','+916202326924','DEVELOPMENT','india','this from my side','BIHAR',1);
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'2025-11-14 16:35:23.792448',NULL,'India','IN','₹','Indian Rupee','INR'),(2,'2025-11-14 16:35:23.795338',NULL,'United States','US','$','US Dollar','USD'),(3,'2025-11-14 16:35:23.797595',NULL,'United Kingdom','GB','£','British Pound','GBP'),(4,'2025-11-14 16:35:23.800369',NULL,'Germany','DE','€','Euro','EUR'),(5,'2025-11-14 16:35:23.804247',NULL,'France','FR','€','Euro','EUR'),(6,'2025-11-14 16:35:23.807941',NULL,'Italy','IT','€','Euro','EUR'),(7,'2025-11-14 16:35:23.810220',NULL,'Spain','ES','€','Euro','EUR'),(8,'2025-11-14 16:35:23.812112',NULL,'Netherlands','NL','€','Euro','EUR'),(9,'2025-11-14 16:35:23.813925',NULL,'Australia','AU','A$','Australian Dollar','AUD'),(10,'2025-11-14 16:35:23.817190',NULL,'United Arab Emirates','AE','د.إ','UAE Dirham','AED');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'2025-11-14 16:35:23.752976',NULL,'EUR','Euro','€',1),(2,'2025-11-14 16:35:23.776981',NULL,'USD','US Dollar','$',0),(3,'2025-11-14 16:35:23.783559',NULL,'GBP','British Pound','£',0),(4,'2025-11-14 16:35:23.787954',NULL,'INR','Indian Rupee','₹',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'2025-11-14 17:11:03.204958',NULL,'Aman kumar','success','U.S. Rte 66, Joplin, MO, USA','www.success.com','+916202326924','62023216516',1,0,'amankumarparsa1@gmail.com',NULL,'2025-11-26 14:02:00.000000',4,1),(2,'2025-11-15 12:31:08.219677',NULL,'success','success','Success, AR 72470, USA','www.success.com','6202326924','62023216516',1,1,'amankumrsuccess617@gmail.com',NULL,'2025-11-15 14:36:21.000000',2,2),(3,'2025-11-15 13:01:35.311124',NULL,'success','success','02400 Hellín, Albacete, Spain','www.success.com','6202326924','62023216516',1,1,'amankumrsuccess617@gmail.com',NULL,'2025-11-19 11:17:01.000000',3,2),(4,'2025-11-15 13:03:50.887661',NULL,'John Doe','Rainbow Store','London','https://test.com','9876543210','Someone',1,1,'test@gmail.com',NULL,'2025-11-19 11:17:10.000000',1,4),(5,'2025-11-15 14:37:24.073331',NULL,'aman','aman','Saran, Bihar 841224, India','www.success.com','6202326924','62023216517',1,1,'amankumrsuccess617@gmail.com',NULL,'2025-11-19 11:17:19.000000',1,4),(6,'2025-11-17 14:03:58.482573',NULL,'success','aman','Amarillo, TX, USA','www.success.com','6202326924','62023216517',1,1,'amankumarparsa17@gmail.com',NULL,'2025-11-19 11:17:15.000000',1,2),(7,'2025-11-18 00:34:24.080491',NULL,'hdsgzhkusajhs','successfull','Philippines','www.success.com','213454657687','62023216516',1,1,'zainarmaan60@gmail.com',NULL,'2025-11-19 11:17:12.000000',6,2),(8,'2025-11-22 14:34:43.997520',NULL,'jaikvik','jaikvik','Success, MO 65570, USA','aaaaaa.com','+91 62023 26924','aman',1,0,'ok1@gmail.com',NULL,'2025-11-22 14:34:43.997520',2,2),(9,'2025-11-22 16:35:28.986548',NULL,'gaurav','gaurav','Success Ln, Roubidoux Township, MO 65534, USA','aaaaaa.com','+91 62023 26924','aman',1,0,'ok1@gmail.com',NULL,'2025-11-22 16:35:28.986548',2,2),(10,'2025-11-22 17:12:47.783694',NULL,'gaurav','gaurav','Roubidoux Rd, Success, MO, USA','aaaaaa.com','+91 62023 26924','aman',1,0,'ok1@gmail.com',NULL,'2025-11-22 17:12:47.783694',2,2),(11,'2025-11-26 14:01:24.902687',NULL,'hello','hello','United States','www.success.com','213454657687','62023216517',1,0,'amankumarparsa17@gmail.com',NULL,'2025-11-26 14:02:18.000000',2,4),(12,'2025-11-26 16:09:56.261040',NULL,'Hdfc','hdfc','HDFC Colony, MIDC, Chinchwad, Pimpri-Chinchwad, Maharashtra 411019, India','www.success.com','62023 26924','62023216516',1,0,'amankumrsuccess617@gmail.com',NULL,'2025-11-26 16:09:56.261040',10,1),(13,'2025-11-26 16:11:15.917376',NULL,'Bandhan bank','bandhan bank','Infanteriestraße 11, 80797 München, Germany','www.success.com','6202326924','62023216516',1,0,'amankumrsuccess617@gmail.com',NULL,'2025-11-29 11:57:10.000000',2,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'2025-11-17 15:05:01.393238',NULL,'Chic & Holland expenses','IN#83af 0234567890','hello','opex',2345678,'usd',0,NULL,'2025-11-17 15:05:01',NULL),(2,'2025-11-17 15:18:06.025037',NULL,'Ozil Expenses','IN#ad49 021345678','hello','opex',12345678,'usd',1,NULL,'2025-11-17 15:18:06',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `admin_us_size` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_01f33e685427bbbc224dc552d6c` (`productId`),
  KEY `FK_15adc85de47c08f77abc92d3892` (`retailerId`),
  KEY `FK_ac46c4da4a33bb198aaaa0ca705` (`currencyId`),
  CONSTRAINT `FK_01f33e685427bbbc224dc552d6c` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_15adc85de47c08f77abc92d3892` FOREIGN KEY (`retailerId`) REFERENCES `retailers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ac46c4da4a33bb198aaaa0ca705` FOREIGN KEY (`currencyId`) REFERENCES `currencies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
INSERT INTO `favourites` VALUES (1,'2025-11-17 18:20:28.678315',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',34,1,0,0,'20','[\"https://ymts.blr1.digitaloceanspaces.com/chicandholland/uploads/reference/1763383828102-jvcqdl.webp\"]','EU',0,1,4,1,'2'),(2,'2025-11-18 10:22:33.827497',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',34,1,0,0,'hello','[\"https://ymts.blr1.digitaloceanspaces.com/chicandholland/uploads/reference/1763441553159-4dedj.webp\"]','US',0,1,4,1,'34'),(3,'2025-11-18 10:36:41.273649',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',32,1,0,0,'hello','[\"https://ymts.blr1.digitaloceanspaces.com/chicandholland/uploads/reference/1763442400723-rjcen.webp\"]','IT',0,1,4,1,'N/A'),(4,'2025-11-25 17:38:17.900269',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',38,1,0,0,'',NULL,'IT',0,1,4,1,'2'),(5,'2025-11-25 17:44:44.102946',NULL,'custom','#f3df7c','#f3df7c',1,'Full Separate Lining','#a5c9e4',32,1,0,0,'1','[\"https://ymts.blr1.digitaloceanspaces.com/chicandholland/uploads/reference/1764072883626-q941k.webp\"]','EU',0,1,4,1,'0'),(6,'2025-11-27 11:11:46.921043',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',60,1,0,0,'',NULL,'US',1,2,3,4,'60'),(7,'2025-11-27 11:15:14.730195',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',60,3,0,0,'',NULL,'US',1,2,3,4,'60'),(8,'2025-11-27 11:26:11.607184',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',60,1,0,0,'',NULL,'US',1,2,3,4,'60'),(9,'2025-11-27 11:26:47.217028',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',60,1,0,0,'',NULL,'US',1,2,3,4,'60'),(10,'2025-11-27 11:28:54.127014',NULL,'custom','#a5c9e4','#a5c9e4',0,'Fully Stitched Lined','#f3df7c',60,1,0,0,'success',NULL,'US',1,2,3,4,'60'),(11,'2025-11-27 14:12:19.161400',NULL,'SAS','#f3df7c','#f3df7c',0,'Full Separate Lining','#f3df7c',38,1,0,0,'','[\"https://ymts.blr1.digitaloceanspaces.com/chicandholland/uploads/reference/1764232938424-bxpwld.webp\"]','US',1,2,5,4,'38'),(12,'2025-11-27 14:13:39.069891',NULL,'SAS','#f3df7c','#f3df7c',0,'Full Separate Lining','#f3df7c',60,7,0,0,'',NULL,'US',1,2,7,4,'60'),(13,'2025-11-27 17:22:39.481299',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',60,1,0,0,'',NULL,'IT',1,2,3,4,'24'),(14,'2025-11-27 17:38:23.453758',NULL,'SAS','#a5c9e4','#a5c9e4',0,'Fully Stitched Lined','#a5c9e4',30,8,0,65,'',NULL,'UK',1,2,6,4,'26'),(15,'2025-11-27 18:06:10.510444',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',32,2,0,200000,'',NULL,'EU',1,2,4,4,'0'),(16,'2025-11-27 18:23:35.913832',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',34,1,0,0,'',NULL,'EU',1,2,4,4,'2'),(17,'2025-11-28 11:54:24.566761',NULL,'SAS','#a5c9e4','#a5c9e4',0,'Fully Stitched Lined','#a5c9e4',32,1,0,0,'',NULL,'EU',1,2,6,4,'0'),(18,'2025-11-28 14:22:13.421901',NULL,'SAS','#a5c9e4','#a5c9e4',0,'Fully Stitched Lined','#a5c9e4',30,1,0,0,'',NULL,'EU',1,2,6,4,'N/A'),(19,'2025-11-28 14:43:56.568407',NULL,'SAS','#a5c9e4','#a5c9e4',0,'Fully Stitched Lined','#a5c9e4',34,1,0,0,'',NULL,'EU',1,2,6,4,'2'),(20,'2025-11-28 14:56:46.450198',NULL,'SAS','#f3df7c','#f3df7c',0,'Full Separate Lining','#f3df7c',36,1,0,0,'',NULL,'UK',1,2,5,4,'N/A'),(21,'2025-11-28 15:02:44.482785',NULL,'SAS','#a5c9e4','#a5c9e4',0,'Fully Stitched Lined','#a5c9e4',36,1,0,0,'',NULL,'EU',1,2,6,4,'4'),(22,'2025-11-28 15:03:06.210813',NULL,'SAS','#a5c9e4','#a5c9e4',0,'Fully Stitched Lined','#a5c9e4',32,1,11,65,'',NULL,'US',1,2,6,4,'32'),(23,'2025-11-28 15:04:52.499726',NULL,'SAS','#a5c9e4','#a5c9e4',0,'Fully Stitched Lined','#a5c9e4',32,1,0,0,'',NULL,'IT',1,2,6,4,'N/A'),(24,'2025-11-28 15:38:28.756545',NULL,'SAS','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#f3df7c',36,1,0,200000,'',NULL,'IT',1,2,4,4,'0'),(25,'2025-11-28 15:41:41.419705',NULL,'SAS','#a5c9e4','#a5c9e4',0,'Fully Stitched Lined','#a5c9e4',38,1,0,65,'',NULL,'IT',1,2,6,4,'2'),(26,'2025-11-28 15:42:06.442445',NULL,'SAS','#a5c9e4','#a5c9e4',0,'Fully Stitched Lined','#a5c9e4',24,1,0,65,'',NULL,'UK',1,2,6,4,'20'),(27,'2025-11-28 17:33:12.529947',NULL,'SAS','#a5c9e4','#a5c9e4',0,'Fully Stitched Lined','#a5c9e4',52,1,0,91,'',NULL,'EU',1,2,6,4,'20');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_user_roles`
--

LOCK TABLES `new_user_roles` WRITE;
/*!40000 ALTER TABLE `new_user_roles` DISABLE KEYS */;
INSERT INTO `new_user_roles` VALUES (2,'2025-11-14 12:31:04.809599',NULL,'Access','[\"/admin-panel/\",\"/admin-panel/bank\",\"/admin-panel/users\",\"/admin-panel/user-roles\",\"/admin-panel/orders\",\"/admin-panel/order-list\",\"/admin-panel/request\",\"/admin-panel/products/categories\",\"/admin-panel/products/collections\",\"/admin-panel/products/colours\",\"/admin-panel/products\",\"/admin-panel/customers\",\"/admin-panel/store-locators\",\"/admin-panel/stock\",\"/admin-panel/sponsor\",\"/admin-panel/expenses/chic-and-holland\",\"/admin-panel/expenses/ozil\",\"/admin-panel/quickbook\"]'),(3,'2025-11-14 12:56:21.827239',NULL,'Access','[\"/admin-panel/\",\"/admin-panel/bank\",\"/admin-panel/users\",\"/admin-panel/user-roles\",\"/admin-panel/orders\",\"/admin-panel/order-list\",\"/admin-panel/request\",\"/admin-panel/products/categories\",\"/admin-panel/products/collections\",\"/admin-panel/products/colours\",\"/admin-panel/products\",\"/admin-panel/customers\",\"/admin-panel/store-locators\",\"/admin-panel/stock\",\"/admin-panel/sponsor\",\"/admin-panel/expenses/chic-and-holland\",\"/admin-panel/expenses/ozil\",\"/admin-panel/quickbook\"]'),(4,'2025-11-14 13:04:20.390371',NULL,'success','[\"/admin-panel/\"]'),(5,'2025-11-14 13:08:16.472064',NULL,'success','[\"/admin-panel/\"]'),(6,'2025-11-14 14:16:33.190310',NULL,'Access','[\"/admin-panel/\",\"/admin-panel/bank\",\"/admin-panel/users\",\"/admin-panel/user-roles\",\"/admin-panel/orders\",\"/admin-panel/order-list\",\"/admin-panel/request\",\"/admin-panel/products/categories\",\"/admin-panel/products/collections\",\"/admin-panel/products/colours\",\"/admin-panel/products\",\"/admin-panel/customers\",\"/admin-panel/store-locators\",\"/admin-panel/stock\",\"/admin-panel/sponsor\",\"/admin-panel/expenses/chic-and-holland\",\"/admin-panel/expenses/ozil\",\"/admin-panel/quickbook\"]'),(7,'2025-11-14 14:31:07.834365',NULL,'success','[\"/admin-panel/\",\"/admin-panel/bank\",\"/admin-panel/users\",\"/admin-panel/user-roles\",\"/admin-panel/orders\",\"/admin-panel/order-list\",\"/admin-panel/request\",\"/admin-panel/products/categories\",\"/admin-panel/products/collections\",\"/admin-panel/products/colours\",\"/admin-panel/products\",\"/admin-panel/customers\",\"/admin-panel/store-locators\",\"/admin-panel/stock\",\"/admin-panel/sponsor\",\"/admin-panel/expenses/chic-and-holland\",\"/admin-panel/expenses/ozil\",\"/admin-panel/quickbook\"]'),(8,'2025-11-14 14:42:44.418457',NULL,'Access','[\"/admin-panel/\"]'),(11,'2025-11-14 17:39:43.620336',NULL,'success','[\"/admin-panel/\",\"/admin-panel/bank\",\"/admin-panel/users\",\"/admin-panel/user-roles\",\"/admin-panel/orders\",\"/admin-panel/order-list\",\"/admin-panel/request\",\"/admin-panel/products/categories\",\"/admin-panel/products/collections\",\"/admin-panel/products/colours\",\"/admin-panel/products\",\"/admin-panel/customers\",\"/admin-panel/store-locators\",\"/admin-panel/stock\",\"/admin-panel/sponsor\",\"/admin-panel/expenses/chic-and-holland\",\"/admin-panel/expenses/ozil\",\"/admin-panel/quickbook\"]'),(12,'2025-11-15 12:06:44.977987',NULL,'admin','[\"/admin-panel/\",\"/admin-panel/bank\",\"/admin-panel/users\",\"/admin-panel/user-roles\",\"/admin-panel/products/categories\",\"/admin-panel/products/collections\",\"/admin-panel/products/colours\",\"/admin-panel/products\",\"/admin-panel/customers\",\"/admin-panel/store-locators\"]'),(13,'2025-11-25 16:47:45.753061',NULL,'hello','[\"/admin-panel/\",\"/admin-panel/bank\",\"/admin-panel/users\",\"/admin-panel/user-roles\",\"/admin-panel/contactus\",\"/admin-panel/orders\",\"/admin-panel/order-list\",\"/admin-panel/request\",\"/admin-panel/products/categories\",\"/admin-panel/products/collections\",\"/admin-panel/products/colours\",\"/admin-panel/products\",\"/admin-panel/customers\",\"/admin-panel/store-locators\",\"/admin-panel/stock\",\"/admin-panel/sponsor\",\"/admin-panel/expenses/chic-and-holland\",\"/admin-panel/expenses/ozil\",\"/admin-panel/quickbook\"]');
/*!40000 ALTER TABLE `new_user_roles` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `orderType` enum('Store','Online','Retail','Customer') NOT NULL DEFAULT 'Store',
  `orderReceivedDate` datetime NOT NULL DEFAULT current_timestamp(),
  `orderCancellationDate` datetime DEFAULT NULL,
  `pattern` datetime DEFAULT current_timestamp(),
  `beading` datetime DEFAULT NULL,
  `stitching` datetime DEFAULT NULL,
  `ready_to_delivery` datetime DEFAULT NULL,
  `address` text DEFAULT NULL,
  `orderStatus` enum('Pattern/Khaka','Beading','Stitching','Balance Pending','Ready To Delivery','Shipped') NOT NULL DEFAULT 'Pattern/Khaka',
  `shippingStatus` enum('Not Shipped','Shipped') NOT NULL DEFAULT 'Not Shipped',
  `shippingDate` datetime DEFAULT NULL,
  `trackingNo` varchar(225) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e5de51ca888d8b1f5ac25799dd1` (`customerId`),
  CONSTRAINT `FK_e5de51ca888d8b1f5ac25799dd1` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2025-11-17 23:29:38.570454',NULL,'PO# 189645678','rubyinc@hotmail.com','Retail','2025-11-17 00:00:00','2025-11-21 00:00:00','2025-11-17 23:29:38',NULL,NULL,NULL,'','','Not Shipped',NULL,'12343567346',0,1),(2,'2025-11-18 11:30:00.847275',NULL,'PO#John 1.896456794435679e+24','rubyinc@hotmail.com','Store','2025-10-30 00:00:00','2025-10-30 00:00:00','2025-11-18 11:30:00',NULL,NULL,NULL,'yes','Shipped','Shipped','2025-11-24 12:24:21',NULL,1,4),(3,'2025-11-19 11:01:37.337517',NULL,'PO#success 1.896456794435679e+24','rubyinc@hotmail.com','Retail','2025-10-30 00:00:00','2025-11-30 00:00:00','2025-11-19 11:01:37',NULL,NULL,NULL,'noida','Shipped','Shipped','2025-11-24 12:24:21',NULL,0,3),(4,'2025-11-19 11:06:34.568394',NULL,'PO#John 1.896456794435679e+24','rubyinc@hotmail.com','Store','2025-10-30 00:00:00','2025-11-20 00:00:00','2025-11-19 11:06:34',NULL,NULL,NULL,'ok','Shipped','Shipped','2025-11-24 12:24:21',NULL,0,4),(5,'2025-11-19 11:13:52.351041',NULL,'PO#aman 1.896456794435679e+25','aman@aman.com','Store','2025-11-30 00:00:00','2025-11-30 00:00:00','2025-11-19 11:13:52',NULL,NULL,NULL,'aman','','','2025-11-24 12:08:35',NULL,0,5),(6,'2025-11-19 11:45:13.447056',NULL,'PO#Aman 1.896456794435679e+25','rubyinc@hotmail.com','Store','2025-11-30 00:00:00','2025-11-30 00:00:00','2025-11-19 11:45:13',NULL,NULL,NULL,'','Pattern/Khaka','Not Shipped',NULL,NULL,0,1),(7,'2025-11-19 11:48:00.198630',NULL,'PO#Aman 1.896456794435679e+25','rubyinc@hotmail.com','Store','2025-11-30 00:00:00','2025-11-30 00:00:00','2025-11-19 11:48:00',NULL,NULL,'0000-00-00 00:00:00','okay','Pattern/Khaka','Not Shipped',NULL,NULL,0,1),(8,'2025-11-19 11:56:08.147308',NULL,'PO#Aman 1.896456794435679e+25','rubyinc@hotmail.com','Online','2025-11-30 00:00:00','2025-11-30 00:00:00','2025-11-19 11:56:08',NULL,NULL,NULL,'okay','Pattern/Khaka','Not Shipped',NULL,NULL,0,1),(9,'2025-11-24 11:15:46.078329',NULL,'PO#Aman 1.896456794435679e+26','rubyinc@hotmail.com','Store','2025-11-24 00:00:00','2025-11-24 00:00:00','2025-11-24 11:15:46',NULL,NULL,'0000-00-00 00:00:00','address','Shipped','Shipped','2025-11-24 11:38:11',NULL,0,1),(10,'2025-11-24 11:34:41.487272',NULL,'','','Store','2025-11-24 11:34:41',NULL,'2025-11-24 11:34:41',NULL,NULL,'0000-00-00 00:00:00',NULL,'Pattern/Khaka','Not Shipped',NULL,NULL,1,NULL),(11,'2025-11-24 12:12:14.163835',NULL,'PO#Aman 1.896456794435679e+65','rubyinc@hotmail.com','Store','2025-11-24 00:00:00','2025-11-24 00:00:00','2025-11-24 12:12:14',NULL,NULL,NULL,'hello','Shipped','Not Shipped','2025-11-24 12:28:28',NULL,0,1),(12,'2025-11-24 12:13:35.149403',NULL,'PO#Aman 1.896456794435679e+61','rubyinc@hotmail.com','Store','2025-11-24 00:00:00','2025-11-26 00:00:00','2025-11-24 12:13:35',NULL,NULL,NULL,'','Shipped','Shipped','2025-11-25 16:39:55','123234562345',0,1),(13,'2025-11-28 18:09:57.984998',NULL,'PO#Bandhan 1.896456794435679e+71','rubyinc@hotmail.com','Store','2025-11-28 00:00:00','2025-11-28 00:00:00','2025-11-28 18:09:57',NULL,NULL,NULL,'','Pattern/Khaka','Not Shipped',NULL,NULL,0,13),(14,'2025-11-28 18:42:35.644205',NULL,'PO#jaikvik 1.896456794435679e+71','rubyinc@hotmail.com','Store','2025-11-28 00:00:00','2025-11-28 00:00:00','2025-11-28 18:42:35',NULL,NULL,NULL,'','Pattern/Khaka','Not Shipped',NULL,NULL,0,8);
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
  `photoUrls` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`photoUrls`)),
  `comments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`comments`)),
  `orderId` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`id`),
  KEY `FK_118cfc55460b3a04f7f88579c31` (`orderId`),
  CONSTRAINT `FK_118cfc55460b3a04f7f88579c31` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstyles`
--

LOCK TABLES `orderstyles` WRITE;
/*!40000 ALTER TABLE `orderstyles` DISABLE KEYS */;
INSERT INTO `orderstyles` VALUES (1,'2025-11-17 23:29:39.594476',NULL,'SK660011','Custom','\"[]\"','IT','48','\"[]\"','\"[]\"',0,'#a5c9e4','#a5c9e4','No Lining',NULL,'\"[\\\"chicandholland/orders/1/jzye8l.jpeg\\\"]\"','\"[]\"',1,0.00),(2,'2025-11-18 11:30:01.341946',NULL,'213456789','Custom','\"[]\"','US','Custom','\"[]\"','\"[]\"',0,'#a5c9e4','#a5c9e4','undefined','#a5c9e4','\"[\\\"chicandholland/orders/2/0vk7la.jpeg\\\"]\"','\"[]\"',2,0.00),(3,'2025-11-19 11:01:38.843640',NULL,'SK660017','SAS','\"[]\"','IT','Custom','\"[]\"','\"[]\"',1,'#f3df7c','#f3df7c','Fully Stitched Lined','#f3df7c','\"[\\\"chicandholland/orders/3/g0nta9.jpeg\\\"]\"','\"[]\"',3,0.00),(4,'2025-11-19 11:06:36.208040',NULL,'SK660011','SAS','\"[]\"','US','Custom','\"[]\"','\"[]\"',7,'#912121','#912121','No Lining',NULL,'\"[\\\"chicandholland/orders/4/qbkbgd.jpeg\\\"]\"','\"[]\"',4,0.00),(5,'2025-11-19 11:13:52.374772',NULL,'SK660016','SAS','\"[]\"','US','Custom','\"[]\"','\"[]\"',0,'#f3df7c','#f3df7c','Fully Stitched Lined','#f3df7c','\"[]\"','\"[]\"',5,0.00),(6,'2025-11-19 11:45:13.950470',NULL,'SK660017','SAS','\"[]\"','US','Custom','\"[]\"','\"[]\"',0,'#f3df7c','#f3df7c','Fully Stitched Lined','#f3df7c','\"[\\\"chicandholland/orders/6/6q863q.jpeg\\\"]\"','\"[]\"',6,0.00),(7,'2025-11-19 11:48:00.853630',NULL,'SK660017','SAS','\"[]\"','US','Custom','\"[]\"','\"[]\"',0,'#f3df7c','#f3df7c','Fully Stitched Lined','#f3df7c','\"[\\\"chicandholland/orders/7/oicmqd.jpeg\\\"]\"','\"[]\"',7,0.00),(8,'2025-11-19 11:56:08.599734',NULL,'SK660017','SAS','\"[]\"','US','Custom','\"[]\"','\"[]\"',0,'#f3df7c','#f3df7c','Fully Stitched Lined','#f3df7c','\"[\\\"chicandholland/orders/8/8n43n9.jpeg\\\"]\"','\"[]\"',8,0.00),(9,'2025-11-24 11:15:46.526414',NULL,'SK660017','SAS','\"[]\"','EU','Custom','\"[]\"','\"[]\"',17,'#f3df7c','#f3df7c','Fully Stitched Lined','#f3df7c','\"[\\\"chicandholland/orders/9/2mrzlh.jpeg\\\"]\"','\"[]\"',9,0.00),(10,'2025-11-24 12:12:14.463081',NULL,'SK660011','SAS','\"[]\"','EU','60','\"[]\"','\"[]\"',1,'#912121','#912121','No Lining',NULL,'\"[\\\"chicandholland/orders/11/zdqe6.jpeg\\\"]\"','\"[]\"',11,0.00),(11,'2025-11-24 12:13:35.482360',NULL,'SD123456','SAS','\"[]\"','EU','Custom','\"[]\"','\"[]\"',7,'#a5c9e4','#a5c9e4','Fully Stitched Lined','#a5c9e4','\"[\\\"chicandholland/orders/12/kxvuvt.jpeg\\\"]\"','\"[]\"',12,0.00),(12,'2025-11-28 18:09:58.008671',NULL,'SK660017','SAS','\"[]\"','IT','30','\"[]\"','\"[]\"',1,'#f3df7c','#f3df7c','Fully Stitched Lined','#f3df7c','\"[]\"','\"[]\"',13,0.00),(13,'2025-11-28 18:42:35.659351',NULL,'SK660017','SAS','\"[]\"','US','2','\"[]\"','\"[]\"',1,'#f3df7c','#f3df7c','Fully Stitched Lined','#f3df7c','\"[]\"','\"[]\"',14,0.00);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_colours`
--

LOCK TABLES `product_colours` WRITE;
/*!40000 ALTER TABLE `product_colours` DISABLE KEYS */;
INSERT INTO `product_colours` VALUES (2,'2025-11-15 23:44:01.573761',NULL,'blue','#a5c9e4'),(3,'2025-11-16 14:48:15.185265',NULL,'yellow','#f3df7c');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_currency_pricing`
--

LOCK TABLES `product_currency_pricing` WRITE;
/*!40000 ALTER TABLE `product_currency_pricing` DISABLE KEYS */;
INSERT INTO `product_currency_pricing` VALUES (1,'2025-11-23 16:25:36.881370',NULL,65.00,7,2),(2,'2025-11-23 16:46:11.412183',NULL,65.00,9,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimages`
--

LOCK TABLES `productimages` WRITE;
/*!40000 ALTER TABLE `productimages` DISABLE KEYS */;
INSERT INTO `productimages` VALUES (1,'2025-11-16 00:43:35.398420',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SK660012/ohny4j.webp',0,2),(2,'2025-11-16 14:48:38.598111',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SK660011/us5t94.webp',0,1),(3,'2025-11-16 14:49:44.923357',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SK660017/vibqtl.webp',0,3),(4,'2025-11-17 16:49:33.186309',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SK660016/cfjnm.webp',0,4),(5,'2025-11-18 16:33:03.234094',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SK660017/t91q7d.webp',0,3),(6,'2025-11-18 16:33:35.802582',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SK660017/aohife.webp',0,3),(7,'2025-11-18 17:15:31.226728',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SK660016/bkhio.webp',0,4),(9,'2025-11-20 15:19:21.906245',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SD12345136/uam32t.webp',0,5),(10,'2025-11-23 15:50:43.934298',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SD123456/a2a4el.webp',0,6),(11,'2025-11-23 16:26:25.801293',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SD1231456/p7wto9.webp',0,7),(12,'2025-11-23 18:55:18.704975',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/products/SD12576188/0g0pk.webp',0,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2025-11-14 12:37:59.108149',NULL,NULL,NULL,'SK660011',10,'hello',NULL,NULL,NULL,NULL,'#912121','#912121','No Lining','No Color',0,NULL,1),(2,'2025-11-16 00:24:36.606520','2025-11-16 00:43:46',NULL,NULL,'SK660012',40,'success',NULL,NULL,NULL,NULL,'#a5c9e4','#a5c9e4','Fully Stitched Lined','#a5c9e4',0,6,3),(3,'2025-11-16 14:49:29.162715',NULL,NULL,NULL,'SK660017',2147483647,'succesfull\n',NULL,NULL,NULL,NULL,'#f3df7c','#f3df7c','Fully Stitched Lined','#f3df7c',0,6,3),(4,'2025-11-17 13:14:19.874233',NULL,NULL,NULL,'SK660016',200000,'hello',NULL,NULL,NULL,NULL,'#f3df7c','#f3df7c','Fully Stitched Lined','#f3df7c',0,6,3),(5,'2025-11-20 15:17:35.450525',NULL,NULL,NULL,'SD12345136',95,'AMZING\n',NULL,NULL,NULL,NULL,'#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',0,7,4),(6,'2025-11-23 15:49:33.462938',NULL,NULL,NULL,'SD123456',65,'good',NULL,NULL,NULL,NULL,'#a5c9e4','#a5c9e4','Fully Stitched Lined','#a5c9e4',0,7,4),(7,'2025-11-23 16:25:36.848443',NULL,NULL,NULL,'SD1231456',65,'success',NULL,NULL,NULL,NULL,'#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',0,7,4),(8,'2025-11-23 16:36:21.885217',NULL,NULL,NULL,'SD12576188',75,'success',NULL,NULL,NULL,NULL,'#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',0,7,4),(9,'2025-11-23 16:46:11.392175','2025-11-23 18:55:07',NULL,NULL,'SD123456252',65,'success',NULL,NULL,NULL,NULL,'#f3df7c','#f3df7c','Fully Stitched Lined','#f3df7c',0,7,4);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quickbookloginhistory`
--

LOCK TABLES `quickbookloginhistory` WRITE;
/*!40000 ALTER TABLE `quickbookloginhistory` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quickbooktokens`
--

LOCK TABLES `quickbooktokens` WRITE;
/*!40000 ALTER TABLE `quickbooktokens` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_3a0e8a6afe09081ec18a5e2fae` (`retailerId`),
  CONSTRAINT `FK_3a0e8a6afe09081ec18a5e2fae4` FOREIGN KEY (`retailerId`) REFERENCES `retailers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_bank`
--

LOCK TABLES `retailer_bank` WRITE;
/*!40000 ALTER TABLE `retailer_bank` DISABLE KEYS */;
INSERT INTO `retailer_bank` VALUES (1,'2025-11-16 16:02:33.422881',NULL,'0e6290830b2904685bdc75b6f439de01','b096d70c44890b23e2819eb4bac582d348af3a569786073aa49040c931c2f9d6','9aec9f3dfa4a1529a0de553471e8389e','e05c58d19f0818ef5fc01ed089af9c5f','aman','e702d6c600a7d891b3474d66f7165d3abcb6d8a50306ce2cee7b264fd389061b','64ea4b923ed80a423bc38adc97a6350a','19b2cd5d26927947f6f55555b7773555aff38afd64ce206e6d3e2573c2252dbf','dfghjk',1);
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
  `is_approved` tinyint(4) NOT NULL DEFAULT 0,
  `rejected_comments` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `orderId` int(11) DEFAULT NULL,
  `retailerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_bd22ae050abc360751c9b1ee97` (`orderId`),
  KEY `FK_4e5d78e646eba7633750466d256` (`retailerId`),
  CONSTRAINT `FK_4e5d78e646eba7633750466d256` FOREIGN KEY (`retailerId`) REFERENCES `retailers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_bd22ae050abc360751c9b1ee971` FOREIGN KEY (`orderId`) REFERENCES `retailer_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_favourites_orders`
--

LOCK TABLES `retailer_favourites_orders` WRITE;
/*!40000 ALTER TABLE `retailer_favourites_orders` DISABLE KEYS */;
INSERT INTO `retailer_favourites_orders` VALUES (1,'2025-11-27 12:56:37.081966',NULL,'6',3,'',0,NULL,4),(2,'2025-11-27 14:08:29.246267',NULL,'7',3,'',0,NULL,4),(3,'2025-11-27 14:08:40.000115',NULL,'8,9,10',3,'',0,NULL,4),(4,'2025-11-27 14:12:35.519908',NULL,'11',3,'',0,NULL,4),(5,'2025-11-27 14:14:32.442001',NULL,'12',3,'',0,NULL,4),(6,'2025-11-27 17:22:52.467291',NULL,'13',3,'',0,NULL,4),(7,'2025-11-27 17:38:33.983582',NULL,'14',3,'',0,NULL,4),(8,'2025-11-27 18:06:33.861934',NULL,'15',1,NULL,0,NULL,4),(9,'2025-11-28 11:55:19.306011',NULL,'16',3,'',0,NULL,4),(10,'2025-11-28 11:55:22.972951',NULL,'17',3,'',0,NULL,4),(11,'2025-11-28 14:22:19.922089',NULL,'18',0,NULL,0,NULL,4),(12,'2025-11-28 14:44:53.906502',NULL,'19',0,NULL,0,NULL,4),(13,'2025-11-28 14:57:53.876282',NULL,'20',0,NULL,0,NULL,4),(14,'2025-11-28 15:03:11.791816',NULL,'21',0,NULL,0,NULL,4),(15,'2025-11-28 15:03:16.827774',NULL,'22',1,NULL,0,NULL,4),(16,'2025-11-28 15:03:17.020011',NULL,'22',1,NULL,0,NULL,4),(17,'2025-11-28 15:04:58.356370',NULL,'23',3,'',0,NULL,4),(18,'2025-11-28 15:39:09.657365',NULL,'24',1,NULL,0,NULL,4),(19,'2025-11-28 15:42:46.495546',NULL,'25',1,NULL,0,NULL,4),(20,'2025-11-28 15:42:51.273783',NULL,'26',1,NULL,0,NULL,4),(21,'2025-11-28 17:35:28.087496',NULL,'27',1,NULL,0,NULL,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_order_payments`
--

LOCK TABLES `retailer_order_payments` WRITE;
/*!40000 ALTER TABLE `retailer_order_payments` DISABLE KEYS */;
INSERT INTO `retailer_order_payments` VALUES (1,'2025-11-17 17:22:27.296383',NULL,199999980,'Bank Share',1),(2,'2025-11-17 18:26:30.224551',NULL,9990,'Bank Share',4),(3,'2025-11-18 10:23:55.201152',NULL,200,'Bank Share',5),(4,'2025-11-18 10:37:46.656685',NULL,10,'Bank Share',6),(5,'2025-11-20 14:34:18.003608',NULL,20,'Bank Share',7),(6,'2025-11-20 14:44:31.875061',NULL,2000000000,'Bank Share',10),(7,'2025-11-25 17:50:51.567017',NULL,100,'Bank Share',11),(8,'2025-11-25 17:51:40.679639',NULL,100,'Cash',11),(9,'2025-11-25 17:52:28.787944',NULL,88,'Cash',11),(10,'2025-11-28 11:22:45.028069',NULL,0,'Bank Share',12),(11,'2025-11-28 18:21:44.472593',NULL,0,'Bank Share',13),(12,'2025-11-29 11:25:58.325585',NULL,0,'Bank Share',14),(13,'2025-11-29 11:32:42.311141',NULL,0,'Bank Share',15),(14,'2025-11-29 11:39:29.122426',NULL,0,'Bank Share',16),(15,'2025-11-29 11:47:16.228138',NULL,0,'Bank Share',17),(16,'2025-11-29 12:04:13.542052',NULL,96,'Bank Transfer',17),(17,'2025-11-29 12:29:56.120963',NULL,0,'Bank Share',18);
/*!40000 ALTER TABLE `retailer_order_payments` ENABLE KEYS */;
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
  `orderStatus` varchar(225) DEFAULT 'Pattern/Khaka',
  `shippingStatus` enum('Not Shipped','Shipped') NOT NULL DEFAULT 'Not Shipped',
  `shippingDate` datetime DEFAULT NULL,
  `purchaseAmount` int(11) NOT NULL,
  `shippingAmount` int(11) NOT NULL DEFAULT 0,
  `status_id` int(11) NOT NULL DEFAULT 0,
  `purchaeOrderNo` varchar(225) NOT NULL,
  `pattern` datetime DEFAULT current_timestamp(),
  `beading` datetime DEFAULT NULL,
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
  `admin_us_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_6de3e65fa0d20f048ded5e7aa9` (`purchaeOrderNo`),
  UNIQUE KEY `REL_bf56bd73a923b22133daa94515` (`favouriteOrderId`),
  UNIQUE KEY `REL_718fe8f142ff4d322939836d0c` (`stockOrderId`),
  KEY `FK_49149394a7d518c96ee5b797a32` (`retailerId`),
  CONSTRAINT `FK_49149394a7d518c96ee5b797a32` FOREIGN KEY (`retailerId`) REFERENCES `retailers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_718fe8f142ff4d322939836d0c6` FOREIGN KEY (`stockOrderId`) REFERENCES `retailer_stock_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_bf56bd73a923b22133daa945150` FOREIGN KEY (`favouriteOrderId`) REFERENCES `retailer_favourites_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_orders`
--

LOCK TABLES `retailer_orders` WRITE;
/*!40000 ALTER TABLE `retailer_orders` DISABLE KEYS */;
INSERT INTO `retailer_orders` VALUES (1,'2025-11-17 17:22:27.267523',NULL,0,1,'Pattern/Khaka','Not Shipped',NULL,-2147483648,100000000,0,'PO#ABBIGLIAMENTO 1896','2025-11-17 17:22:27',NULL,NULL,NULL,NULL,NULL,'INVOICE_b26c','EB_a1dc','rubyinc@hotmail.com','2025-11-17 05:30:00','2025-11-20 00:00:00','Success, MO 65570, USA',NULL,'SK660017','34 (US)','7','US',0,1,NULL,1,NULL),(4,'2025-11-17 18:26:30.183179',NULL,0,1,'Pattern/Khaka','Not Shipped',NULL,-2147483648,100,0,'PO#ABBIGLIAMENTO 1895','2025-11-17 18:26:30',NULL,NULL,NULL,NULL,NULL,'INVOICE_ba111','EB_5777','rubyinc@hotmail.com','2025-11-17 05:30:00','2025-11-21 00:00:00','Success, MO 65570, USA',NULL,'SK660017','34 (US)','7','US',0,1,NULL,4,NULL),(5,'2025-11-18 10:23:55.172486',NULL,3,1,'Shipped','Shipped','2025-11-24 11:49:53',-2147483648,50,0,'PO#Aman 18964567944356789','2025-11-18 10:23:55',NULL,NULL,NULL,NULL,NULL,'INVOICE_a4b2','EB_5221','rubyinc@hotmail.com','2025-11-18 05:30:00','2025-11-20 00:00:00','Success, MO 65570, USA',NULL,'SK660017','34 (US)','7','US',0,1,NULL,6,NULL),(6,'2025-11-18 10:37:46.609072',NULL,0,1,'Balance Pending','Not Shipped',NULL,-2147483648,0,0,'PO#Aman 1896456794435678832456789','2025-11-18 10:37:46',NULL,NULL,NULL,NULL,NULL,'INVOICE_bc34','EB_8b7e','rubyinc@hotmail.com','2025-11-18 05:30:00','2025-11-20 00:00:00','Success, MO 65570, USA',NULL,'SK660017','34 (US)','5','US',0,1,NULL,5,NULL),(7,'2025-11-20 14:34:17.903307',NULL,0,1,'Pattern/Khaka','Not Shipped',NULL,-2147483648,20,0,'PO#Aman 1.896456794435679e+25','2025-11-20 14:34:17',NULL,NULL,NULL,NULL,NULL,'INVOICE_6860','EB_ff4d','rubyinc@hotmail.com','2025-11-18 05:30:00','2025-11-25 00:00:00','Success, MO 65570, USA',NULL,'SK660017','34 (US)','7','US',0,1,NULL,10,NULL),(10,'2025-11-20 14:44:31.856819',NULL,0,1,'Pattern/Khaka','Not Shipped',NULL,-2147483648,20,0,'PO#Aman 1.896456794435679e+22','2025-11-20 14:44:31',NULL,NULL,NULL,NULL,NULL,'INVOICE_8da1','EB_b1b9','rubyinc@hotmail.com','2025-11-18 05:30:00','2025-11-25 00:00:00','Success, MO 65570, USA','12345678','SK660017','34 (US)','5','US',0,1,NULL,9,NULL),(11,'2025-11-25 17:50:51.532202',NULL,0,1,'Shipped','Not Shipped','2025-11-25 17:52:38',288,0,1,'PO#Aman 1.896456794435679e+61','2025-11-25 17:50:51',NULL,NULL,NULL,NULL,NULL,'INVOICE_3093','EB_007d','rubyinc@hotmail.com','2025-11-25 05:30:00','2025-11-26 00:00:00','U.S. Rte 66, Joplin, MO, USA','','SK660012','60 (EU)','12','EU',0,1,NULL,11,NULL),(12,'2025-11-28 11:22:45.006790',NULL,0,0,'Pattern/Khaka','Not Shipped',NULL,400000,0,0,'PO#Bandhan 1.896456794435679e+61','2025-11-28 11:22:45',NULL,NULL,NULL,NULL,NULL,'INVOICE_Baa775','EB_4a403','rubyinc@hotmail.com','2025-11-27 05:30:00','2025-11-29 00:00:00','Floor 11, Adventz Infinity, BN 5, Street Number 18, BN Block, Sector V, Bidhannagar, Kolkata, West Bengal 700091, India',NULL,NULL,NULL,'2','EU',0,4,8,NULL,NULL),(13,'2025-11-28 18:21:44.441480',NULL,0,0,'Pattern/Khaka','Not Shipped',NULL,91,0,0,'PO#Bandhan 1.896456794435679e+71','2025-11-28 18:21:44',NULL,NULL,NULL,NULL,NULL,'INVOICE_Bac76a','EB_632f0','rubyinc@hotmail.com','2025-11-28 05:30:00','2025-11-29 00:00:00','Floor 11, Adventz Infinity, BN 5, Street Number 18, BN Block, Sector V, Bidhannagar, Kolkata, West Bengal 700091, India',NULL,NULL,NULL,'1','EU',0,4,21,NULL,NULL),(14,'2025-11-29 11:25:58.311262',NULL,0,0,'Pattern/Khaka','Not Shipped',NULL,85,20,0,'PO#00001','2025-11-29 11:25:58',NULL,NULL,NULL,NULL,NULL,'IN_05ee1d','EB_e61694','rubyinc@hotmail.com','2025-11-28 05:30:00','2025-11-30 00:00:00','Floor 11, Adventz Infinity, BN 5, Street Number 18, BN Block, Sector V, Bidhannagar, Kolkata, West Bengal 700091, India',NULL,NULL,NULL,'1','UK',0,4,20,NULL,NULL),(15,'2025-11-29 11:32:42.298347',NULL,0,0,'Pattern/Khaka','Not Shipped',NULL,65,0,0,'PO#00002','2025-11-29 11:32:42',NULL,NULL,NULL,NULL,NULL,'IN_0bc971','EB_847e33','rubyinc@hotmail.com','2025-11-28 05:30:00','2025-11-30 00:00:00','Floor 11, Adventz Infinity, BN 5, Street Number 18, BN Block, Sector V, Bidhannagar, Kolkata, West Bengal 700091, India',NULL,NULL,NULL,'1','IT',0,4,19,NULL,NULL),(16,'2025-11-29 11:39:29.110857',NULL,0,0,'Pattern/Khaka','Not Shipped',NULL,200000,0,0,'PO#00003','2025-11-29 11:39:29',NULL,NULL,NULL,NULL,NULL,'IN_28e23d','EB_b93779','rubyinc@hotmail.com','2025-11-28 05:30:00','2025-11-30 00:00:00','Floor 11, Adventz Infinity, BN 5, Street Number 18, BN Block, Sector V, Bidhannagar, Kolkata, West Bengal 700091, India',NULL,NULL,NULL,'1','IT',0,4,18,NULL,NULL),(17,'2025-11-29 11:47:16.212154',NULL,0,0,'Shipped','Not Shipped','2025-11-29 12:04:34',96,20,1,'PO#BANDHAN00004','2025-11-29 11:47:16',NULL,NULL,NULL,NULL,NULL,'IN_d6b3c5','EB_71b775','rubyinc@hotmail.com','2025-11-28 05:30:00','2025-11-30 00:00:00','Floor 11, Adventz Infinity, BN 5, Street Number 18, BN Block, Sector V, Bidhannagar, Kolkata, West Bengal 700091, India','12345636',NULL,NULL,'1','US',0,4,16,NULL,NULL),(18,'2025-11-29 12:29:56.084012',NULL,0,0,'Pattern/Khaka','Not Shipped',NULL,65,0,0,'PO#BANDHAN00005','2025-11-29 12:29:56',NULL,NULL,NULL,NULL,NULL,'IN_b45e45','EB_853b88','rubyinc@hotmail.com','2025-11-28 05:30:00','2025-11-30 00:00:00','Infanteriestraße 11, 80797 München, Germany',NULL,NULL,NULL,'1','US',0,4,15,NULL,NULL);
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
  `is_approved` tinyint(4) NOT NULL DEFAULT 0,
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
  `admin_us_size` varchar(10) DEFAULT NULL,
  `size_country` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_c34d5270a2b99d7ae399a9cae6` (`orderId`),
  KEY `FK_db816fe7dceb6e4bc572eb548d8` (`stockId`),
  KEY `FK_91615ba0e5aabb257e0995915a7` (`retailerId`),
  KEY `FK_4a8e3c4f62dcabb4de48b4b60c7` (`currencyId`),
  CONSTRAINT `FK_4a8e3c4f62dcabb4de48b4b60c7` FOREIGN KEY (`currencyId`) REFERENCES `currencies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_91615ba0e5aabb257e0995915a7` FOREIGN KEY (`retailerId`) REFERENCES `retailers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_c34d5270a2b99d7ae399a9cae60` FOREIGN KEY (`orderId`) REFERENCES `retailer_orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_db816fe7dceb6e4bc572eb548d8` FOREIGN KEY (`stockId`) REFERENCES `stock` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer_stock_orders`
--

LOCK TABLES `retailer_stock_orders` WRITE;
/*!40000 ALTER TABLE `retailer_stock_orders` DISABLE KEYS */;
INSERT INTO `retailer_stock_orders` VALUES (1,'2025-11-17 17:12:04.330568',NULL,7,1,NULL,'#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',1,0,2,1,NULL,'34','US'),(2,'2025-11-17 17:57:35.252065',NULL,1,3,'','#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',1,0,2,1,NULL,'34','US'),(3,'2025-11-17 18:21:45.203517',NULL,5,3,'','#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',1,0,2,1,NULL,'34','US'),(4,'2025-11-17 18:25:30.467206',NULL,7,1,NULL,'#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',1,0,2,1,NULL,'34','US'),(5,'2025-11-18 10:21:58.365652',NULL,5,1,NULL,'#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',1,0,2,1,NULL,'34','US'),(6,'2025-11-18 10:22:50.555202',NULL,7,1,NULL,'#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',1,0,2,1,NULL,'34','US'),(7,'2025-11-18 10:37:00.888843',NULL,7,3,'good','#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',1,0,2,1,NULL,'34','US'),(8,'2025-11-18 11:23:31.405742',NULL,0,3,'','#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',1,0,2,1,NULL,'34','US'),(9,'2025-11-18 11:23:44.136702',NULL,5,1,NULL,'#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',1,0,2,1,NULL,'34','US'),(10,'2025-11-18 17:31:11.823016',NULL,7,1,NULL,'#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',1,0,2,1,NULL,'34','US'),(11,'2025-11-25 17:45:42.635204',NULL,12,1,NULL,'#f3df7c','#f3df7c','Full Separate Lining','#f3df7c',1,0,4,1,NULL,'30','EU'),(12,'2025-11-25 17:56:23.927143',NULL,12,0,NULL,'#a5c9e4','#a5c9e4','Full Separate Lining','#a5c9e4',1,0,3,1,NULL,'27','IT'),(13,'2025-11-27 17:36:28.424359',NULL,1,0,NULL,'#f3df7c','#f3df7c','Fully Stitched Lined','#a5c9e4',2,0,5,4,NULL,'28',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailers`
--

LOCK TABLES `retailers` WRITE;
/*!40000 ALTER TABLE `retailers` DISABLE KEYS */;
INSERT INTO `retailers` VALUES (1,'2025-11-15 14:35:39.519309',NULL,'aman','success@123',0,1),(2,'2025-11-17 14:04:16.092664',NULL,'done','done@123',1,6),(3,'2025-11-26 16:11:37.736260',NULL,'hdfc','hdfc@123',0,12),(4,'2025-11-26 16:11:55.491433',NULL,'bandhan','bandhan@123',0,13);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor_images`
--

LOCK TABLES `sponsor_images` WRITE;
/*!40000 ALTER TABLE `sponsor_images` DISABLE KEYS */;
INSERT INTO `sponsor_images` VALUES (2,'2025-11-20 15:04:54.678945',NULL,'https://ymts.blr1.digitaloceanspaces.com/chicandholland/uploads/k29v2l.webp','success');
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
  `admin_us_size` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'2025-11-17 14:35:31.895421',NULL,'SK660017',NULL,123456,40,1000,-360,36,'IT','#f3df7c','#f3df7c',0,'Full Separate Lining','#f3df7c',1,1,'3'),(2,'2025-11-17 16:41:38.745781',NULL,'SK660012',NULL,12,21,10,19,34,'US','#f3df7c','#f3df7c',0,'Full Separate Lining','#f3df7c',1,1,'34'),(3,'2025-11-20 15:10:13.630738',NULL,'SK660011',NULL,60,60,1,59,60,'IT','#a5c9e4','#a5c9e4',0,'Full Separate Lining','#a5c9e4',1,0,'27'),(4,'2025-11-21 14:52:42.784890',NULL,'SK660016',NULL,108,60,60,24,60,'EU','#f3df7c','#f3df7c',0,'Full Separate Lining','#f3df7c',1,0,'30'),(5,'2025-11-27 11:40:53.179797',NULL,'5',NULL,1000000,95,20,76,60,'EU','#f3df7c','#f3df7c',0,'Fully Stitched Lined','#a5c9e4',1,0,'30');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_currency_pricing`
--

LOCK TABLES `stock_currency_pricing` WRITE;
/*!40000 ALTER TABLE `stock_currency_pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_currency_pricing` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,'2025-11-14 12:36:51.263190',NULL,'success',7,NULL),(3,'2025-11-15 23:42:35.403636',NULL,'success',1,6),(4,'2025-11-20 15:16:56.048254',NULL,'BRIDAL',1,7);
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
  `createdAt` datetime DEFAULT current_timestamp(),
  `deletedAt` datetime DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ak','$2b$10$QikiL0JAfCRhyW85hNBXPuGui4pgCM8ydbs.kn3ggflduQVH30VrC','2025-11-14 11:01:25',NULL,3),(3,'aman','$2b$10$UJyMuCSKFrgBwRuQ1BDhe.SeT1gOPdGrfmbreELCLo63P5Mf7eoGG','2025-11-14 12:00:30',NULL,2),(4,'hello','$2b$10$X04Wsk/GqP0oFIlXcS4dfO6h.Ko0xbPnTb/tryRzWjX0M4U.D9CHO','2025-11-14 12:05:19',NULL,13),(5,'gaurav','$2b$10$pIY6g9dpHglo.N77jQDz4.iwefczXFnZVDofdnfl7hUPHyvl3g/va','2025-11-15 10:40:18',NULL,NULL),(6,'admin','$2b$10$5XxfNa2h5mtONpR6uhjuFOukDu9ljzP3MdWbZPReqZg2RnX.5usTe','2025-11-15 12:05:22',NULL,12),(7,'Vikas','$2b$10$lON9kB//818MmuBaXvwuxOwEO3s4UeVFmzGUxyl.7wjj1vdRF3fNW','2025-11-25 11:44:11',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-01 12:54:49
