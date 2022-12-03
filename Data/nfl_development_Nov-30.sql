-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: nfl_development
-- ------------------------------------------------------
-- Server version	5.6.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2016-12-05 02:04:10','2016-12-05 02:04:10');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conferences`
--

DROP TABLE IF EXISTS `conferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conferences`
--

LOCK TABLES `conferences` WRITE;
/*!40000 ALTER TABLE `conferences` DISABLE KEYS */;
INSERT INTO `conferences` VALUES (1,'AFC','American Football Conference'),(2,'NFC','National Football Conference');
/*!40000 ALTER TABLE `conferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
INSERT INTO `days` VALUES (1,'Sunday',3),(2,'Monday',4),(3,'Thursday',0),(4,'Saturday',2);
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisions`
--

LOCK TABLES `divisions` WRITE;
/*!40000 ALTER TABLE `divisions` DISABLE KEYS */;
INSERT INTO `divisions` VALUES (1,'East'),(2,'North'),(3,'South'),(4,'West');
/*!40000 ALTER TABLE `divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_id` int(11) DEFAULT NULL,
  `team_points` int(11) DEFAULT '0',
  `opponent_points` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1507 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (1373,1344,12,18,'2018-09-07 04:34:27','2018-09-07 04:34:27'),(1374,1345,3,47,'2018-09-10 03:43:30','2018-09-10 03:43:30'),(1375,1346,20,15,'2018-09-10 03:44:30','2018-09-10 03:44:30'),(1376,1347,48,40,'2018-09-10 03:45:11','2018-09-10 03:45:11'),(1377,1348,20,27,'2018-09-10 03:45:51','2018-09-10 03:45:51'),(1378,1349,16,24,'2018-09-10 03:48:15','2018-09-10 03:48:15'),(1379,1350,20,27,'2018-09-10 03:48:58','2018-09-10 03:48:58'),(1380,1351,34,23,'2018-09-10 03:49:40','2018-09-10 03:49:40'),(1381,1352,21,21,'2018-09-10 03:50:27','2018-09-10 03:50:27'),(1382,1353,38,28,'2018-09-10 03:51:11','2018-09-10 03:51:11'),(1383,1354,24,27,'2018-09-10 03:52:04','2018-09-10 03:52:04'),(1384,1355,8,16,'2018-09-10 03:52:49','2018-09-10 03:52:49'),(1385,1358,24,6,'2018-09-10 03:53:33','2018-09-10 03:53:33'),(1386,1359,23,24,'2018-09-10 03:55:36','2018-09-10 03:55:36'),(1387,1360,48,17,'2018-09-17 01:54:35','2018-09-17 01:54:35'),(1388,1361,33,13,'2018-09-17 01:57:07','2018-09-17 01:57:07'),(1389,1362,23,34,'2018-09-30 01:55:58','2018-09-30 01:55:58'),(1390,1363,24,31,'2018-09-30 01:56:32','2018-09-30 01:56:32'),(1391,1364,21,9,'2018-09-30 01:57:08','2018-09-30 01:57:08'),(1392,1365,17,20,'2018-09-30 01:57:45','2018-09-30 01:57:45'),(1393,1366,21,27,'2018-09-30 01:58:23','2018-09-30 01:58:23'),(1394,1367,42,37,'2018-09-30 01:59:03','2018-09-30 01:59:03'),(1395,1368,20,12,'2018-09-30 01:59:42','2018-09-30 01:59:42'),(1396,1369,31,20,'2018-09-30 02:00:57','2018-09-30 02:00:57'),(1397,1370,29,29,'2018-09-30 02:01:35','2018-09-30 02:01:35'),(1398,1371,18,21,'2018-09-30 02:02:30','2018-09-30 02:02:30'),(1399,1372,27,30,'2018-09-30 02:04:14','2018-09-30 02:04:14'),(1400,1373,0,34,'2018-09-30 02:05:24','2018-09-30 02:05:24'),(1401,1374,20,31,'2018-09-30 02:06:14','2018-09-30 02:06:14'),(1402,1375,19,20,'2018-09-30 02:07:07','2018-09-30 02:07:07'),(1403,1376,13,20,'2018-09-30 02:07:51','2018-09-30 02:07:51'),(1404,1377,17,24,'2018-09-30 02:09:00','2018-09-30 02:09:00'),(1405,1378,17,21,'2018-09-30 02:18:59','2018-09-30 02:18:59'),(1406,1379,43,37,'2018-09-30 02:19:32','2018-09-30 02:19:32'),(1407,1380,17,31,'2018-09-30 02:20:09','2018-09-30 02:20:09'),(1408,1381,16,20,'2018-09-30 02:20:47','2018-09-30 02:20:47'),(1409,1382,27,6,'2018-09-30 02:21:24','2018-09-30 02:21:24'),(1410,1383,20,28,'2018-09-30 02:22:08','2018-09-30 02:22:08'),(1411,1384,14,27,'2018-09-30 02:22:41','2018-09-30 02:22:41'),(1412,1385,21,31,'2018-09-30 02:23:18','2018-09-30 02:23:18'),(1413,1386,27,22,'2018-09-30 02:24:08','2018-09-30 02:24:08'),(1414,1387,9,6,'2018-09-30 02:25:04','2018-09-30 02:25:04'),(1415,1388,27,38,'2018-09-30 02:26:11','2018-09-30 02:26:11'),(1416,1389,23,35,'2018-09-30 02:26:51','2018-09-30 02:26:51'),(1417,1390,13,24,'2018-09-30 02:27:35','2018-09-30 02:27:35'),(1418,1391,16,14,'2018-09-30 02:28:30','2018-09-30 02:28:30'),(1419,1392,10,26,'2018-09-30 02:29:10','2018-09-30 02:29:10'),(1420,1393,30,27,'2018-09-30 02:30:01','2018-09-30 02:30:01'),(1421,1394,31,38,'2018-09-30 02:48:06','2018-09-30 02:48:06'),(1422,1395,12,31,'2018-10-15 02:53:10','2018-10-15 02:53:10'),(1423,1396,7,38,'2018-10-15 02:55:25','2018-10-15 02:55:25'),(1424,1397,23,26,'2018-10-15 02:56:01','2018-10-15 02:56:01'),(1425,1398,37,34,'2018-10-15 02:56:38','2018-10-15 02:56:38'),(1426,1399,0,22,'2018-10-15 02:57:17','2018-10-15 02:57:17'),(1427,1400,24,26,'2018-10-15 02:58:21','2018-10-15 02:58:21'),(1428,1401,10,48,'2018-10-15 02:59:08','2018-10-15 02:59:08'),(1429,1402,37,36,'2018-10-15 02:59:58','2018-10-15 02:59:58'),(1430,1403,20,17,'2018-10-15 03:01:14','2018-10-15 03:01:14'),(1431,1404,42,45,'2018-10-15 03:02:20','2018-10-15 03:02:20'),(1432,1405,33,18,'2018-10-15 03:03:17','2018-10-15 03:03:17'),(1433,1406,27,29,'2018-10-15 03:04:27','2018-10-15 03:04:27'),(1434,1407,26,14,'2018-10-15 03:05:57','2018-10-15 03:05:57'),(1435,1408,27,23,'2018-10-15 03:06:39','2018-10-15 03:06:39'),(1436,1409,24,38,'2018-10-15 03:14:28','2018-10-15 03:14:28'),(1437,1410,12,13,'2018-10-15 03:15:14','2018-10-15 03:15:14'),(1438,1411,17,41,'2018-10-15 03:15:46','2018-10-15 03:15:46'),(1439,1412,16,34,'2018-10-15 03:16:26','2018-10-15 03:16:26'),(1440,1413,14,30,'2018-10-15 03:17:17','2018-10-15 03:17:17'),(1441,1414,23,31,'2018-10-15 03:18:21','2018-10-15 03:18:21'),(1442,1415,9,12,'2018-10-15 03:35:40','2018-10-15 03:35:40'),(1443,1416,31,33,'2018-10-15 03:36:28','2018-10-15 03:36:28'),(1444,1417,17,27,'2018-10-15 03:37:18','2018-10-15 03:37:18'),(1445,1418,10,26,'2018-10-15 03:38:26','2018-10-15 03:38:26'),(1446,1419,28,18,'2018-10-15 03:39:37','2018-10-15 03:39:37'),(1447,1420,23,21,'2018-10-15 03:40:19','2018-10-15 03:40:19'),(1448,1421,33,31,'2018-10-15 03:41:02','2018-10-15 03:41:02'),(1449,1422,16,19,'2018-10-15 03:42:02','2018-10-15 03:42:02'),(1450,1423,19,43,'2018-10-15 03:42:43','2018-10-15 03:42:43'),(1451,1424,34,13,'2018-10-15 03:52:24','2018-10-15 03:52:24'),(1452,1425,29,34,'2018-10-15 03:53:02','2018-10-15 03:53:02'),(1453,1426,17,23,'2018-10-15 03:53:43','2018-10-15 03:53:43'),(1454,1427,27,3,'2018-10-15 03:54:20','2018-10-15 03:54:20'),(1455,1428,34,42,'2018-10-15 03:54:57','2018-10-15 03:54:57'),(1456,1429,17,27,'2018-10-15 03:55:35','2018-10-15 03:55:35'),(1457,1430,28,21,'2018-10-15 03:56:13','2018-10-15 03:56:13'),(1458,1431,38,14,'2018-10-15 03:56:50','2018-10-15 03:56:50'),(1459,1432,13,20,'2018-10-15 03:57:28','2018-10-15 03:57:28'),(1460,1433,28,31,'2018-10-15 03:58:06','2018-10-15 03:58:06'),(1461,1434,23,20,'2018-10-15 03:58:53','2018-10-15 03:58:53'),(1462,1435,21,0,'2018-10-15 03:59:37','2018-10-15 03:59:37'),(1463,1436,7,40,'2018-10-15 04:00:20','2018-10-15 04:00:20'),(1464,1437,40,43,'2018-10-15 04:01:13','2018-10-15 04:01:13'),(1465,1438,30,33,'2018-10-29 02:22:03','2018-10-29 02:22:03'),(1466,1439,45,10,'2018-10-29 02:33:28','2018-10-29 02:33:28'),(1467,1440,19,20,'2018-10-29 02:34:42','2018-10-29 02:34:42'),(1468,1441,20,7,'2018-10-29 02:35:41','2018-10-29 02:35:41'),(1469,1442,21,17,'2018-10-29 02:36:37','2018-10-29 02:36:37'),(1470,1443,37,17,'2018-10-29 02:37:50','2018-10-29 02:37:50'),(1471,1444,38,31,'2018-10-29 02:38:58','2018-10-29 02:38:58'),(1472,1445,5,37,'2018-10-29 02:40:13','2018-10-29 02:40:13'),(1473,1446,23,26,'2018-10-29 02:41:04','2018-10-29 02:41:04'),(1474,1447,32,21,'2018-10-29 02:41:57','2018-10-29 02:41:57'),(1475,1448,24,23,'2018-10-29 02:42:51','2018-10-29 02:42:51'),(1476,1449,17,20,'2018-10-29 02:43:50','2018-10-29 02:43:50'),(1477,1450,39,10,'2018-10-29 02:44:54','2018-10-29 02:44:54'),(1478,1451,10,45,'2018-10-29 02:45:50','2018-10-29 02:45:50'),(1479,1452,20,23,'2018-10-29 02:46:46','2018-10-29 02:46:46'),(1480,1453,23,42,'2018-11-06 08:40:46','2018-11-06 08:40:46'),(1481,1454,24,18,'2018-11-06 08:41:32','2018-11-06 08:41:32'),(1482,1455,23,30,'2018-11-06 08:42:42','2018-11-06 08:42:42'),(1483,1456,18,33,'2018-11-06 08:43:30','2018-11-06 08:43:30'),(1484,1457,20,13,'2018-11-06 08:44:22','2018-11-06 08:44:22'),(1485,1458,28,14,'2018-11-06 08:45:14','2018-11-06 08:45:14'),(1486,1459,34,37,'2018-11-06 08:46:20','2018-11-06 08:46:20'),(1487,1460,10,24,'2018-11-06 08:47:12','2018-11-06 08:47:12'),(1488,1461,21,36,'2018-11-06 08:48:10','2018-11-06 08:48:10'),(1489,1462,42,28,'2018-11-06 08:48:57','2018-11-06 08:48:57'),(1490,1463,15,18,'2018-11-06 08:50:32','2018-11-06 08:50:32'),(1491,1464,27,29,'2018-11-06 08:51:24','2018-11-06 08:51:24'),(1492,1465,30,20,'2018-11-06 08:52:15','2018-11-06 08:52:15'),(1493,1466,25,6,'2018-11-06 08:53:14','2018-11-06 08:53:14'),(1494,1467,3,34,'2018-11-06 09:02:17','2018-11-06 09:02:17'),(1495,1468,41,9,'2018-11-06 09:03:37','2018-11-06 09:03:37'),(1496,1469,28,42,'2018-11-06 09:04:29','2018-11-06 09:04:29'),(1497,1470,37,21,'2018-11-06 09:05:15','2018-11-06 09:05:15'),(1498,1471,6,13,'2018-11-06 09:06:15','2018-11-06 09:06:15'),(1499,1472,23,16,'2018-11-06 09:07:11','2018-11-06 09:07:11'),(1500,1473,9,24,'2018-11-06 09:07:58','2018-11-06 09:07:58'),(1501,1474,38,14,'2018-11-06 09:08:54','2018-11-06 09:08:54'),(1502,1475,19,17,'2018-11-06 09:09:41','2018-11-06 09:09:41'),(1503,1476,25,17,'2018-11-06 09:10:31','2018-11-06 09:10:31'),(1504,1477,35,45,'2018-11-06 09:11:47','2018-11-06 09:11:47'),(1505,1478,17,31,'2018-11-06 09:14:32','2018-11-06 09:14:32'),(1506,1479,28,14,'2018-11-06 09:15:36','2018-11-06 09:15:36');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `week_id` int(11) DEFAULT NULL,
  `day_id` int(11) DEFAULT '1',
  `team_id` int(11) DEFAULT NULL,
  `opponent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1480 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1344,1,3,2,24,'2018-09-07 04:29:46','2018-09-07 04:29:46'),(1345,1,1,4,3,'2018-09-10 03:32:41','2018-09-10 03:32:41'),(1346,1,1,15,22,'2018-09-10 03:33:03','2018-09-10 03:33:03'),(1347,1,1,30,20,'2018-09-10 03:33:24','2018-09-10 03:33:24'),(1348,1,1,13,19,'2018-09-10 03:33:49','2018-09-10 03:33:49'),(1349,1,1,27,18,'2018-09-10 03:34:03','2018-09-10 03:34:03'),(1350,1,1,31,17,'2018-09-10 03:34:30','2018-09-10 03:34:30'),(1351,1,1,7,14,'2018-09-10 03:34:53','2018-09-10 03:34:53'),(1352,1,1,25,8,'2018-09-10 03:35:19','2018-09-10 03:35:19'),(1353,1,1,16,26,'2018-09-10 03:35:42','2018-09-10 03:35:42'),(1354,1,1,28,10,'2018-09-10 03:36:19','2018-09-10 03:36:19'),(1355,1,1,9,5,'2018-09-10 03:36:34','2018-09-10 03:36:34'),(1361,1,2,29,23,'2018-09-17 01:53:31','2018-09-17 01:53:31'),(1360,1,2,21,11,'2018-09-17 01:52:59','2018-09-17 01:52:59'),(1358,1,1,32,1,'2018-09-10 03:39:42','2018-09-10 03:39:42'),(1359,1,1,6,12,'2018-09-10 03:39:59','2018-09-10 03:39:59'),(1362,2,3,3,7,'2018-09-17 01:58:29','2018-09-17 01:58:29'),(1363,2,1,5,2,'2018-09-17 02:18:28','2018-09-17 02:18:28'),(1364,2,1,14,32,'2018-09-17 02:18:48','2018-09-17 02:18:48'),(1365,2,1,13,31,'2018-09-17 02:19:00','2018-09-17 02:19:00'),(1366,2,1,24,30,'2018-09-17 02:19:26','2018-09-17 02:19:26'),(1367,2,1,16,25,'2018-09-17 02:19:49','2018-09-17 02:19:49'),(1368,2,1,17,21,'2018-09-17 02:20:07','2018-09-17 02:20:07'),(1369,2,1,26,4,'2018-09-17 02:20:37','2018-09-17 02:20:37'),(1370,2,1,18,12,'2018-09-17 02:20:54','2018-09-17 02:20:54'),(1371,2,1,8,20,'2018-09-17 02:21:14','2018-09-17 02:21:14'),(1372,2,1,11,27,'2018-09-17 02:21:31','2018-09-17 02:21:31'),(1373,2,1,1,29,'2018-09-17 02:21:56','2018-09-17 02:21:56'),(1374,2,1,19,15,'2018-09-17 02:22:16','2018-09-17 02:22:16'),(1375,2,1,23,10,'2018-09-17 02:22:38','2018-09-17 02:22:38'),(1376,2,1,22,9,'2018-09-17 02:22:59','2018-09-17 02:22:59'),(1377,2,1,28,6,'2018-09-17 02:23:21','2018-09-17 02:23:21'),(1378,3,3,21,8,'2018-09-30 02:10:09','2018-09-30 02:10:09'),(1379,3,1,20,2,'2018-09-30 02:11:03','2018-09-30 02:11:03'),(1380,3,1,12,32,'2018-09-30 02:11:20','2018-09-30 02:11:20'),(1381,3,1,14,24,'2018-09-30 02:11:39','2018-09-30 02:11:39'),(1382,3,1,4,18,'2018-09-30 02:14:02','2018-09-30 02:14:02'),(1383,3,1,23,17,'2018-09-30 02:14:15','2018-09-30 02:14:15'),(1384,3,1,10,3,'2018-09-30 02:14:38','2018-09-30 02:14:38'),(1385,3,1,7,5,'2018-09-30 02:15:01','2018-09-30 02:15:01'),(1386,3,1,22,13,'2018-09-30 02:15:15','2018-09-30 02:15:15'),(1387,3,1,31,15,'2018-09-30 02:15:39','2018-09-30 02:15:39'),(1388,3,1,27,16,'2018-09-30 02:16:01','2018-09-30 02:16:01'),(1389,3,1,26,29,'2018-09-30 02:16:22','2018-09-30 02:16:22'),(1390,3,1,9,28,'2018-09-30 02:16:42','2018-09-30 02:16:42'),(1391,3,1,6,1,'2018-09-30 02:17:01','2018-09-30 02:17:01'),(1392,3,1,19,11,'2018-09-30 02:17:32','2018-09-30 02:17:32'),(1393,3,2,25,30,'2018-09-30 02:18:06','2018-09-30 02:18:06'),(1394,4,3,18,29,'2018-09-30 02:32:40','2018-09-30 02:32:40'),(1395,4,1,21,15,'2018-09-30 02:32:57','2018-09-30 02:32:57'),(1396,4,1,17,19,'2018-09-30 02:33:44','2018-09-30 02:33:44'),(1397,4,1,24,31,'2018-09-30 02:34:50','2018-09-30 02:34:50'),(1398,4,1,13,14,'2018-09-30 02:35:06','2018-09-30 02:35:06'),(1399,4,1,4,12,'2018-09-30 02:35:25','2018-09-30 02:35:25'),(1400,4,1,11,9,'2018-09-30 02:35:47','2018-09-30 02:35:47'),(1401,4,1,30,6,'2018-09-30 02:36:07','2018-09-30 02:36:07'),(1402,4,1,7,2,'2018-09-30 02:36:50','2018-09-30 02:36:50'),(1403,4,1,28,1,'2018-09-30 02:37:15','2018-09-30 02:37:15'),(1404,4,1,8,23,'2018-09-30 02:37:34','2018-09-30 02:37:34'),(1405,4,1,20,22,'2018-09-30 02:37:52','2018-09-30 02:37:52'),(1406,4,1,27,26,'2018-09-30 02:38:08','2018-09-30 02:38:08'),(1407,4,1,3,25,'2018-09-30 02:38:33','2018-09-30 02:38:33'),(1408,4,2,16,10,'2018-09-30 02:38:55','2018-09-30 02:38:55'),(1409,5,3,14,19,'2018-10-15 03:08:33','2018-10-15 03:08:33'),(1410,5,1,31,4,'2018-10-15 03:09:14','2018-10-15 03:09:14'),(1411,5,1,2,25,'2018-10-15 03:09:39','2018-10-15 03:09:39'),(1412,5,1,10,21,'2018-10-15 03:10:10','2018-10-15 03:10:10'),(1413,5,1,15,16,'2018-10-15 03:10:28','2018-10-15 03:10:28'),(1414,5,1,12,11,'2018-10-15 03:10:43','2018-10-15 03:10:43'),(1415,5,1,3,8,'2018-10-15 03:11:08','2018-10-15 03:11:08'),(1416,5,1,22,5,'2018-10-15 03:11:28','2018-10-15 03:11:28'),(1417,5,1,17,7,'2018-10-15 03:11:45','2018-10-15 03:11:45'),(1418,5,1,23,26,'2018-10-15 03:12:02','2018-10-15 03:12:02'),(1419,5,1,1,27,'2018-10-15 03:12:26','2018-10-15 03:12:26'),(1420,5,1,18,24,'2018-10-15 03:12:45','2018-10-15 03:12:45'),(1421,5,1,29,28,'2018-10-15 03:13:04','2018-10-15 03:13:04'),(1422,5,1,9,13,'2018-10-15 03:13:29','2018-10-15 03:13:29'),(1423,5,1,32,20,'2018-10-15 03:13:50','2018-10-15 03:13:50'),(1424,6,3,24,22,'2018-10-15 03:43:42','2018-10-15 03:43:42'),(1425,6,1,30,2,'2018-10-15 03:44:07','2018-10-15 03:44:07'),(1426,6,1,5,32,'2018-10-15 03:44:24','2018-10-15 03:44:24'),(1427,6,1,28,23,'2018-10-15 03:44:40','2018-10-15 03:44:40'),(1428,6,1,14,21,'2018-10-15 03:47:39','2018-10-15 03:47:39'),(1429,6,1,1,18,'2018-10-15 03:47:53','2018-10-15 03:47:53'),(1430,6,1,25,7,'2018-10-15 03:48:13','2018-10-15 03:48:13'),(1431,6,1,26,8,'2018-10-15 03:48:34','2018-10-15 03:48:34'),(1432,6,1,4,13,'2018-10-15 03:48:57','2018-10-15 03:48:57'),(1433,6,1,6,17,'2018-10-15 03:49:16','2018-10-15 03:49:16'),(1434,6,1,29,10,'2018-10-15 03:49:42','2018-10-15 03:49:42'),(1435,6,1,3,31,'2018-10-15 03:50:01','2018-10-15 03:50:01'),(1436,6,1,15,9,'2018-10-15 03:50:27','2018-10-15 03:50:27'),(1437,6,1,16,19,'2018-10-15 03:50:47','2018-10-15 03:50:47'),(1438,6,2,27,12,'2018-10-15 03:51:08','2018-10-15 03:51:08'),(1439,7,3,10,1,'2018-10-29 02:23:21','2018-10-29 02:23:21'),(1440,7,1,31,26,'2018-10-29 02:23:39','2018-10-29 02:23:39'),(1441,7,1,13,15,'2018-10-29 02:24:43','2018-10-29 02:24:43'),(1442,7,1,5,24,'2018-10-29 02:25:08','2018-10-29 02:25:08'),(1443,7,1,18,21,'2018-10-29 02:25:32','2018-10-29 02:25:32'),(1444,7,1,19,6,'2018-10-29 02:27:57','2018-10-29 02:27:57'),(1445,7,1,4,14,'2018-10-29 02:28:17','2018-10-29 02:28:17'),(1446,7,1,8,30,'2018-10-29 02:28:55','2018-10-29 02:28:55'),(1447,7,1,11,17,'2018-10-29 02:29:17','2018-10-29 02:29:17'),(1448,7,1,20,3,'2018-10-29 02:29:48','2018-10-29 02:29:48'),(1449,7,1,9,32,'2018-10-29 02:30:18','2018-10-29 02:30:18'),(1450,7,1,29,27,'2018-10-29 02:31:13','2018-10-29 02:31:13'),(1451,7,1,7,16,'2018-10-29 02:31:39','2018-10-29 02:31:39'),(1452,7,2,22,2,'2018-10-29 02:32:00','2018-10-29 02:32:00'),(1453,8,3,17,13,'2018-10-29 02:47:49','2018-10-29 02:47:49'),(1454,8,1,24,15,'2018-10-29 02:48:09','2018-10-29 02:48:09'),(1455,8,1,10,16,'2018-10-29 02:48:35','2018-10-29 02:48:35'),(1456,8,1,8,25,'2018-10-29 02:49:39','2018-10-29 02:49:39'),(1457,8,1,32,22,'2018-10-29 02:50:56','2018-10-29 02:50:56'),(1458,8,1,28,11,'2018-10-29 02:51:11','2018-10-29 02:51:11'),(1459,8,1,30,7,'2018-10-29 02:52:17','2018-10-29 02:52:17'),(1460,8,1,21,6,'2018-10-29 02:52:43','2018-10-29 02:52:43'),(1461,8,1,3,5,'2018-10-29 02:53:06','2018-10-29 02:53:06'),(1462,8,1,14,23,'2018-10-29 02:53:50','2018-10-29 02:53:50'),(1463,8,1,27,1,'2018-10-29 02:54:15','2018-10-29 02:54:15'),(1464,8,1,12,29,'2018-10-29 02:54:37','2018-10-29 02:54:37'),(1465,8,1,20,18,'2018-10-29 02:55:26','2018-10-29 02:55:26'),(1466,8,2,19,4,'2018-10-29 02:55:54','2018-10-29 02:55:54'),(1467,9,3,23,27,'2018-11-06 08:55:00','2018-11-06 08:55:00'),(1468,9,1,6,4,'2018-11-06 08:55:38','2018-11-06 08:55:38'),(1469,9,1,30,5,'2018-11-06 08:56:12','2018-11-06 08:56:12'),(1470,9,1,16,8,'2018-11-06 08:56:54','2018-11-06 08:56:54'),(1471,9,1,21,17,'2018-11-06 08:57:11','2018-11-06 08:57:11'),(1472,9,1,25,3,'2018-11-06 08:57:40','2018-11-06 08:57:40'),(1473,9,1,11,18,'2018-11-06 08:58:09','2018-11-06 08:58:09'),(1474,9,1,2,32,'2018-11-06 08:58:38','2018-11-06 08:58:38'),(1475,9,1,13,10,'2018-11-06 08:59:12','2018-11-06 08:59:12'),(1476,9,1,26,28,'2018-11-06 08:59:38','2018-11-06 08:59:38'),(1477,9,1,29,20,'2018-11-06 09:00:06','2018-11-06 09:00:06'),(1478,9,1,12,19,'2018-11-06 09:00:36','2018-11-06 09:00:36'),(1479,9,2,31,9,'2018-11-06 09:01:26','2018-11-06 09:01:26');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130903103042'),('20130903145610'),('20130903145654'),('20130903155215'),('20130903162921'),('20130904085329'),('20130904150221'),('20130904150325'),('20130904153445'),('20130906145029'),('20130908165737'),('20130912134547'),('20140920095053'),('20150106031601');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standings`
--

DROP TABLE IF EXISTS `standings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT '0',
  `losses` int(11) DEFAULT '0',
  `ties` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `PF` int(11) DEFAULT NULL,
  `PA` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standings`
--

LOCK TABLES `standings` WRITE;
/*!40000 ALTER TABLE `standings` DISABLE KEYS */;
INSERT INTO `standings` VALUES (101,1,2,6,0,'2018-09-07 11:33:15','2018-11-06 08:50:32',110,199),(102,2,4,4,0,'2018-09-07 11:33:15','2018-11-06 09:08:54',228,226),(103,3,4,5,0,'2018-09-07 11:33:15','2018-11-06 09:07:11',213,160),(104,4,2,7,0,'2018-09-07 11:33:15','2018-11-06 09:03:37',96,241),(105,5,6,2,0,'2018-09-07 11:33:15','2018-11-06 09:04:29',220,180),(106,6,5,3,0,'2018-09-07 11:33:15','2018-11-06 09:03:36',235,153),(107,7,5,3,0,'2018-09-07 11:33:15','2018-11-06 08:46:20',221,237),(108,8,2,6,1,'2018-09-07 11:33:15','2018-11-06 09:05:15',190,247),(109,9,3,5,0,'2018-09-07 11:33:15','2018-11-06 09:15:36',154,151),(110,10,3,6,0,'2018-09-07 11:33:15','2018-11-06 09:09:41',205,213),(111,11,3,5,0,'2018-09-07 11:33:15','2018-11-06 09:07:58',180,210),(112,12,3,4,1,'2018-09-07 11:33:15','2018-11-06 09:14:32',192,204),(113,13,6,3,0,'2018-09-07 11:33:15','2018-11-06 09:09:40',216,184),(114,14,3,5,0,'2018-09-07 11:33:15','2018-11-06 08:48:56',231,213),(115,15,3,5,0,'2018-09-07 11:33:15','2018-11-06 08:41:32',134,170),(116,16,8,1,0,'2018-09-07 11:33:15','2018-11-06 09:05:15',327,226),(117,17,5,4,0,'2018-09-07 11:33:15','2018-11-06 09:06:15',187,225),(118,18,5,3,1,'2018-09-07 11:33:15','2018-11-06 09:07:58',221,204),(119,19,7,2,0,'2018-09-07 11:33:15','2018-11-06 09:14:32',270,202),(120,20,7,1,0,'2018-09-07 11:33:15','2018-11-06 09:11:47',279,218),(121,21,3,6,0,'2018-09-07 11:33:15','2018-11-06 09:06:15',198,213),(122,22,1,7,0,'2018-09-07 11:33:15','2018-11-06 08:44:22',150,205),(123,23,1,7,0,'2018-09-07 11:33:15','2018-11-06 09:02:17',141,252),(124,24,4,4,0,'2018-09-07 11:33:15','2018-11-06 08:41:31',178,156),(125,25,5,2,1,'2018-09-07 11:33:15','2018-11-06 09:07:11',227,188),(126,26,6,2,0,'2018-09-07 11:33:15','2018-11-06 09:10:30',220,180),(127,27,2,7,0,'2018-09-07 11:33:15','2018-11-06 09:02:17',207,239),(128,28,4,4,0,'2018-09-07 11:33:15','2018-11-06 09:10:30',188,156),(129,29,8,1,0,'2018-09-07 11:33:15','2018-11-06 09:11:47',299,200),(130,30,3,5,0,'2018-09-07 11:33:15','2018-11-06 09:04:29',229,275),(131,31,4,4,0,'2018-09-07 11:33:15','2018-11-06 09:15:36',134,141),(132,32,5,3,0,'2018-09-07 11:33:15','2018-11-06 09:08:54',160,172);
/*!40000 ALTER TABLE `standings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Alabama','AL','East South Central'),(2,'Alaska','AK','Pacific'),(3,'Arizona','AZ','Mountain'),(4,'Arkansas','AR','West South Central'),(5,'California','CA','Pacific'),(6,'Colorado','CO','Mountain'),(7,'Connecticut','CT','New England'),(8,'Delaware','DE','South Atlantic'),(9,'Florida','FL','South Atlantic'),(10,'Georgia','GA','South Atlantic'),(11,'Hawaii','HI','Pacific'),(12,'Idaho','ID','Mountain'),(13,'Illinois','IL','East North Central'),(14,'Indiana','IN','East North Central'),(15,'Iowa','IA','West North Central'),(16,'Kansas','KS','West North Central'),(17,'Kentucky','KY','East South Central'),(18,'Louisiana','LA','West South Central'),(19,'Maine','ME','New England'),(20,'Maryland','MD','South Atlantic'),(21,'Massachusetts','MA','New England'),(22,'Michigan','MI','East North Central'),(23,'Minnesota','MN','West North Central'),(24,'Mississippi','MS','East South Central'),(25,'Missouri','MO','West North Central'),(26,'Montana','MT','Mountain'),(27,'Nebraska','NE','West North Central'),(28,'Nevada','NV','Mountain'),(29,'New Hampshire','NH','New England'),(30,'New Jersey','NJ','Mid-Atlantic'),(31,'New Mexico','NM','Mountain'),(32,'New York','NY','Mid-Atlantic'),(33,'North Carolina','NC','South Atlantic'),(34,'North Dakota','ND','West North Central'),(35,'Ohio','OH','East North Central'),(36,'Oklahoma','OK','West South Central'),(37,'Oregon','OR','Pacific'),(38,'Pennsylvania','PA','Mid-Atlantic'),(39,'Rhode Island','RI','New England'),(40,'South Carolina','SC','South Atlantic'),(41,'South Dakota','SD','West North Central'),(42,'Tennessee','TN','East South Central'),(43,'Texas','TX','West South Central'),(44,'Utah','UT','Mountain'),(45,'Vermont','VT','New England'),(46,'Virginia','VA','South Atlantic'),(47,'Washington','WA','Pacific'),(48,'West Virginia','WV','South Atlantic'),(49,'Wisconsin','WI','East North Central'),(50,'Wyoming','WY','Mountain');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `conference_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `founded` int(11) DEFAULT NULL,
  `bowl_champ` int(11) DEFAULT NULL,
  `conf_champ` int(11) DEFAULT NULL,
  `div_champ` int(11) DEFAULT NULL,
  `playoff_champ` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `stadium` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `div_rank` int(11) DEFAULT NULL,
  `helmet_a` varchar(255) DEFAULT NULL,
  `helmet_h` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Arizona','Cardinals','ARI',2,4,1898,0,1,6,9,'en.wikipedia.org/wiki/Arizona_Cardinals',3,'University of Phoenix','100px-Arizona_Cardinals_logo.svg.png',2,'ARI_A.png','ARI_H.png'),(2,'Atlanta','Falcons','ATL',2,3,1965,0,1,5,12,'en.wikipedia.org/wiki/Atlanta_Falcons',10,'Georgia Dome','Atlanta_Falcons_logo.svg.png',3,'ATL_A.png','ATL_H.png'),(3,'Baltimore','Ravens','BAL',1,2,1996,2,2,4,10,'en.wikipedia.org/wiki/Baltimore_Ravens',20,'M&T Bank ','Baltimore_Ravens_logo.svg.png',3,'BAL_A.png','BAL_H.png'),(4,'Buffalo','Bills','BUF',1,1,1959,0,4,10,17,'en.wikipedia.org/wiki/Buffalo_Bills',32,'Ralph Wilson','Buffalo_Bills_logo.svg.png',2,'BUF_A.png','BUF_H.png'),(5,'Carolina','Panthers','CAR',2,3,1993,0,1,5,6,'en.wikipedia.org/wiki/Carolina_Panthers',33,'Bank of America','Carolina_Panthers_logo_2012.svg.png',1,'CAR_A.png','CAR_H.png'),(6,'Chicago','Bears','CHI',2,2,1919,1,4,18,26,'en.wikipedia.org/wiki/Chicago_Bears',13,'Soldier Field','Chicago_Bears_logo.svg.png',4,'CHI_A.png','CHI_H.png'),(7,'Cincinnati','Bengals','CIN',1,2,1968,0,2,8,13,'en.wikipedia.org/wiki/Cincinnati_Bengals',35,'Paul Brown','Cincinnati_Bengals.svg.png',2,'CIN_A.png','CIN_H.png'),(8,'Cleveland','Browns','CLE',1,2,1946,0,11,13,28,'en.wikipedia.org/wiki/Cleveland_Browns',35,'FirstEnergy','Cleveland_Browns_logo__2006_to_present.svg.png',4,'CLE_A.png','CLE_H.png'),(9,'Dallas','Cowboys','DAL',2,1,1960,5,10,22,31,'en.wikipedia.org/wiki/Dallas_Cowboys',43,'AT&T','Dallas_Cowboys.svg.png',1,'DAL_A.png','DAL_H.png'),(10,'Denver','Broncos','DEN',1,4,1960,2,7,14,21,'en.wikipedia.org/wiki/Denver_Broncos',6,'Sports Authority Field','Denver_Broncos_logo.svg.png',1,'DEN_A.png','DEN_H.png'),(11,'Detroit','Lions','DET',2,2,1929,0,4,4,17,'en.wikipedia.org/wiki/Detroit_Lions',22,'Ford Field','Detroit_Lions_Logo.svg.png',2,'DET_A.png','DET_H.png'),(12,'Green Bay','Packers','GB',2,2,1919,2,9,17,30,'en.wikipedia.org/wiki/Green_Bay_Packers',49,'Lambeau Field','Green_Bay_Packers_logo.svg.png',1,'GB_A.png','GB_H.png'),(13,'Houston','Texans','HOU',1,3,2002,0,0,2,2,'en.wikipedia.org/wiki/Houston_Texans',43,'NRG Stadium','Houston_Texans_logo.svg.png',2,'HOU_A.png','HOU_H.png'),(14,'Indianapolis','Colts','IND',1,3,1953,2,7,16,27,'en.wikipedia.org/wiki/Indianapolis_Colts',14,'Lucas Oil','Indianapolis_Colts_logo.svg.png',1,'IND_A.png','IND_H.png'),(15,'Jacksonville','Jaguars','JAC',1,3,1993,0,0,2,6,'en.wikipedia.org/wiki/Jacksonville_Jaguars',9,'EverBank Field','Jaguars_2013_logo.jpg',3,'JAC_A.png','JAC_H.png'),(16,'Kansas City','Chiefs','KC',1,4,1960,0,0,8,17,'en.wikipedia.org/wiki/Kansas_City_Chiefs',25,'Arrowhead','Kansas_City_Chiefs_logo.svg.png',2,'KC_A.png','KC_H.png'),(17,'Miami','Dolphins','MIA',1,1,1966,2,5,13,22,'en.wikipedia.org/wiki/Miami_Dolphins',9,'Sun Life','Miami_Dolphins_2013_Logo.svg.png',3,'MIA_A.png','MIA_H.png'),(18,'Minnesota','Vikings','MIN',2,2,1961,0,4,18,27,'en.wikipedia.org/wiki/Minnesota_Vikings',23,'TCF Bank Stadium','Minnesota_Vikings_Logo_2013.png',3,'MIN_A.png','MIN_H.png'),(19,'New England','Patriots','NE',1,1,1959,4,8,17,22,'en.wikipedia.org/wiki/New_ England_Patriots',21,'Gillette','New_England_Patriots_logo.svg.png',1,'NE_A.png','NE_H.png'),(20,'New Orleans','Saints','NO',2,3,1967,1,1,5,10,'en.wikipedia.org/wiki/New_Orleans_Saints',18,'Mercedes-Benz Superdome','New_Orleans_Saints.svg.png',2,'NO_A.png','NO_H.png'),(21,'New York','Jets','NYJ',1,1,1960,0,0,4,14,'en.wikipedia.org/wiki/New_York_Jets',30,'MetLife','New_York_Jets_logo.svg.png',4,'NYJ_A.png','NYJ_H.png'),(22,'New York','Giants','NYG',2,1,1925,4,11,16,31,'en.wikipedia.org/wiki/New_York_Giants',30,'MetLife','New_York_Giants_logo.svg.png',3,'NYG_A.png','NYG_H.png'),(23,'Oakland','Raiders','OAK',1,4,1960,3,4,15,21,'en.wikipedia.org/wiki/Oakland_Raiders',5,'O.co Coliseum','Oakland_Raiders.svg.png',4,'OAK_A.png','OAK_H.png'),(24,'Philadelphia','Eagles','PHI',2,1,1933,0,3,13,24,'en.wikipedia.org/wiki/Philadelphia_Eagles',38,'Lincoln Financial Field','Philadelphia_Eagles_primary_logo.svg.png',2,'PHI_A.png','PHI_H.png'),(25,'Pittsburgh','Steelers','PIT',1,2,1933,6,8,21,28,'en.wikipedia.org/wiki/Pittsburgh_Steelers',38,'Heinz Field','Pittsburgh_Steelers_logo.svg.png',1,'PIT_A.png','PIT_H.png'),(26,'San Diego','Chargers','SD',1,4,1960,0,1,15,18,'en.wikipedia.org/wiki/San_Diego_Chargers',5,'Qualcomm','San_Diego_Chargers_logo.svg.png',3,'SD_A.png','SD_H.png'),(27,'San Francisco','49ers','SF',2,4,1946,5,6,19,26,'en.wikipedia.org/wiki/San_Francisco_49ers',5,'Levi\'s Stadium','San_Francisco_49ers_Logo.svg.png',3,'SF_A.png','SF_H.png'),(28,'Seattle','Seahawks','SEA',2,4,1975,1,3,9,14,'en.wikipedia.org/wiki/Seattle_Seahawks',47,'CenturyLink Field','Seattle_Seahawks_Vector_Logo.svg.png',1,'SEA_A.png','SEA_H.png'),(29,'Los Angeles','Rams','LA',2,4,1936,1,6,15,27,'en.wikipedia.org/wiki/St._ Louis_Rams',25,'Edward Jones Dome','St_Louis_Rams_logo.svg.png',4,'STL_A.png','STL_H.png'),(30,'Tampa Bay','Buccaneers','TB',2,3,1976,1,1,6,10,'en.wikipedia.org/wiki/Tampa_Bay_Buccaneers',9,'Raymond James','Tampa_Bay_Buccaneers_logo.svg.png',4,'TB_A.png','TB_H.png'),(31,'Tennessee','Titans','TEN',1,3,1959,0,1,9,21,'en.wikipedia.org/wiki/Tennessee_Titans',42,'Nashville','Tennessee_Titans_logo.svg.png',4,'TEN_A.png','TEN_H.png'),(32,'Washington','Redskins','WSH',2,1,1932,3,5,13,23,'en.wikipedia.org/wiki/Washington_Redskins',20,'FedEx Field','Washington_Redskins_logo.svg.png',4,'WSH_A.png','WSH_H.png');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `teams_with_most_champs`
--

DROP TABLE IF EXISTS `teams_with_most_champs`;
/*!50001 DROP VIEW IF EXISTS `teams_with_most_champs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `teams_with_most_champs` AS SELECT 
 1 AS `last_name`,
 1 AS `SUM(bowl_champ)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `weeks`
--

DROP TABLE IF EXISTS `weeks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weeks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `week_number` varchar(255) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `round` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weeks`
--

LOCK TABLES `weeks` WRITE;
/*!40000 ALTER TABLE `weeks` DISABLE KEYS */;
INSERT INTO `weeks` VALUES (1,'WEEK01','2018-09-06','2018-09-10','Regular'),(2,'WEEK02','2018-09-13','2018-09-17','Regular'),(3,'WEEK03','2018-09-20','2018-09-24','Regular'),(4,'WEEK04','2018-09-27','2018-10-01','Regular'),(5,'WEEK05','2018-10-04','2018-10-08','Regular'),(6,'WEEK06','2018-10-11','2018-10-15','Regular'),(7,'WEEK07','2018-10-18','2018-10-22','Regular'),(8,'WEEK08','2018-10-25','2018-10-29','Regular'),(9,'WEEK09','2018-11-01','2018-11-05','Regular'),(10,'WEEK10','2018-11-08','2018-11-12','Regular'),(11,'WEEK11','2018-11-15','2018-11-19','Regular'),(12,'WEEK12','2018-11-22','2018-11-26','Regular'),(13,'WEEK13','2018-11-29','2018-12-03','Regular'),(14,'WEEK14','2018-12-06','2018-12-10','Regular'),(15,'WEEK15','2018-12-13','2018-12-17','Regular'),(16,'WEEK16','2018-12-20','2018-12-24','Regular'),(17,'WEEK17','2018-12-27','2018-12-31','Regular'),(18,'WEEK18','2019-01-05','2019-01-06','Wild Card'),(19,'WEEK19','2019-01-12','2019-01-13','Divisional'),(20,'WEEK20','2019-01-20','2019-01-20','Conference'),(21,'WEEK21','2019-01-27','2019-01-27','Pro Bowl'),(22,'WEEK22','2019-02-03','2019-02-03','Super Bowl');
/*!40000 ALTER TABLE `weeks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `teams_with_most_champs`
--

/*!50001 DROP VIEW IF EXISTS `teams_with_most_champs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teams_with_most_champs` AS select `teams`.`last_name` AS `last_name`,sum(`teams`.`bowl_champ`) AS `SUM(bowl_champ)` from `teams` group by `teams`.`last_name` order by sum(`teams`.`bowl_champ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-01 14:50:26
