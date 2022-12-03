-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: UCL_development
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
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2016-08-27 10:08:51','2016-08-27 10:08:51');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clubs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abbr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (3,'Paris','Paris Saint-German',13,2,'Paris.png','2015-09-15 19:45:00','2017-09-12 16:15:30','PAR'),(4,'Real Madrid','Real Madrid CF',11,8,'Real_Madrid_CF.png','2015-09-15 19:45:00','2017-09-12 16:31:25','RM'),(6,'CSKA Moskva','PFC CSKA Moskva',26,1,'CSKA_Moskva.png','2015-09-15 19:45:00','2017-09-12 16:13:40','CSM'),(9,'Atletico','Club Atletico de Madrid',11,3,'Atletico.png','2015-09-15 19:45:00','2017-09-12 16:17:28','ATL'),(12,'Benfica','SL Benfica',24,1,'Benfica.png','2015-09-15 19:45:00','2017-09-12 16:14:04','SLB'),(13,'Juventus','Juventus',18,4,'Juventus.png','2015-09-15 19:45:00','2017-09-12 16:29:14','JUV'),(14,'Man. City','Manchester City FC',10,6,'Man._City.png','2015-09-15 19:45:00','2017-09-12 16:22:10','MC'),(15,'Sevilla','Sevilla FC',11,5,'Sevilla.png','2015-09-15 19:45:00','2017-09-12 16:20:46','SEV'),(19,'Barcelona','FC Barcelona',11,4,'Barcelona.png','2015-09-15 19:45:00','2017-09-12 16:28:24','BAR'),(22,'Bayern','FC Bayern Munchen',14,2,'Bayern.png','2015-09-15 19:45:00','2017-09-12 16:15:02','BAY'),(27,'Porto','FC Porto',24,7,'Porto.png','2015-09-15 19:45:00','2015-09-15 19:45:00','POR'),(34,'Basel','FC Basel 1893',29,1,'Basel.png','2016-08-27 12:49:45','2016-08-27 15:45:19','BSL'),(36,'Beşiktaş','Beşiktaş JK',31,7,'Besiktas.png','2016-08-27 13:09:57','2017-09-12 16:23:03','BJK'),(37,'Celtic','Celtic FC',27,2,'Celtic.png','2016-08-27 13:14:02','2017-09-12 16:14:41','CEL'),(39,'Tottenham','Tottenham Hotspur FC',10,8,'Tottenham.png','2016-08-27 13:21:34','2017-09-12 16:24:51','TOT'),(40,'Monaco','AS Monaco FC',13,7,'Monaco.png','2016-08-27 13:23:37','2017-09-12 16:22:44','MON'),(41,'Dortmund','Borussia Dortmund',14,8,'Dortmund.png','2016-08-27 13:25:57','2017-09-12 16:24:10','BVB'),(42,'Sporting CP','Sporting Clube de Portugal',24,4,'Sporting_CP.png','2016-08-27 13:28:21','2017-09-12 16:19:11','SCP'),(43,'Man. United','Manchester United FC',10,1,'MU.png','2017-09-13 02:45:24','2017-09-13 02:45:24','MU'),(44,'Anderlecht','RSC Anderlecht',4,2,'Anderlecht.png','2017-09-13 02:46:33','2017-09-13 02:46:33','AND'),(45,'Roma','AS Roma',18,3,'Roma.png','2017-09-13 02:47:37','2017-09-13 07:22:19','ASR'),(46,'Qarabag','Qarabag FK',3,3,'Qarabag.png','2017-09-13 02:49:04','2017-09-13 02:49:04','QAR'),(47,'Olympiacos','Olympiacos FC',15,4,'Olympiacos.png','2017-09-13 02:50:24','2017-09-13 02:50:24','OLY'),(49,'Shakhtar Donetsk','FC Shakhtar Donetsk',26,6,'Shakhtar_Donetsk.png','2017-09-13 02:54:45','2017-09-13 02:54:45','SHK'),(50,'Feyenoord','Feyenoord',21,6,'Feyenoord.png','2017-09-13 02:55:41','2017-09-13 02:55:41','FEY'),(51,'Chelsea','Chelsea',10,3,'Chelsea.png','2017-09-13 07:42:59','2017-09-13 07:42:59','CHE'),(52,'Spartak','Spartak Moskva',26,5,'Spatak_Moskva.png','2017-09-13 07:45:20','2017-09-14 06:32:47','SPM'),(53,'Liverpool','Liverpool',10,5,'Liverpool.png','2017-09-13 07:46:23','2017-09-13 07:46:23','LIV'),(54,'Maribor','NK Maribor',28,5,'Maribor.png','2017-09-13 07:47:38','2017-09-14 06:32:23','MBR'),(55,'Napoli','SSC Napoli',18,6,'Napoli.png','2017-09-13 07:49:01','2017-09-13 07:49:01','NAP'),(56,'Leipzig','RB Leipzig',14,7,'Leipzig.png','2017-09-13 07:50:27','2017-09-13 07:50:27','LEI'),(57,'Apoel','Apoel FC',7,8,'APOEL.png','2017-09-13 07:51:38','2017-09-13 07:51:38','APO');
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abbr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'ALB','ALBANIA'),(2,'AUT','AUSTRIA'),(3,'AZE','AZERBAIJAN'),(4,'BEL','BELGIUM'),(5,'BLR','BELARUS'),(6,'CRO','CROATIA'),(7,'CYP','CYPRUS'),(8,'CZE','CZECH REPUBLIC'),(9,'DEN','DENMARK'),(10,'ENG','ENGLAND'),(11,'ESP','SPAIN'),(12,'FIN','FINLAND'),(13,'FRA','FRANCE'),(14,'GER','GERMANY'),(15,'GRE','GREECE'),(16,'HUN','HUNGARY'),(17,'ISR','ISRAEL'),(18,'ITA','ITALY'),(19,'KAZ','KAZAKHSTAN'),(20,'MDA','MOLDOVA'),(21,'NED','NETHERLANDS'),(22,'NOR','NORWAY'),(23,'POL','POLAND'),(24,'POR','PORTUGAL'),(25,'ROU','ROMANIA'),(26,'RUS','RUSSIA'),(27,'SCO','SCOTLAND'),(28,'SRB','SERBIA'),(29,'SUI','SWITZERLAND'),(30,'SWE','SWEDEN'),(31,'TUR','TURKEY'),(32,'UKR','UKRAINE'),(33,'BUL','BULGARIA');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `countries_in_groups`
--

DROP TABLE IF EXISTS `countries_in_groups`;
/*!50001 DROP VIEW IF EXISTS `countries_in_groups`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `countries_in_groups` AS SELECT 
 1 AS `country_id`,
 1 AS `name`,
 1 AS `grp`,
 1 AS `abbr`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `country_with_most_clubs`
--

DROP TABLE IF EXISTS `country_with_most_clubs`;
/*!50001 DROP VIEW IF EXISTS `country_with_most_clubs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `country_with_most_clubs` AS SELECT 
 1 AS `country_id`,
 1 AS `name`,
 1 AS `COUNT(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `goals_by_round`
--

DROP TABLE IF EXISTS `goals_by_round`;
/*!50001 DROP VIEW IF EXISTS `goals_by_round`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `goals_by_round` AS SELECT 
 1 AS `round`,
 1 AS `at_day`,
 1 AS `sum(club_goals)`,
 1 AS `sum(opponent_goals)`,
 1 AS `sum(club_goals+opponent_goals)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'A','2015-09-15 16:16:19','2015-09-15 16:16:19'),(2,'B','2015-09-15 16:16:19','2015-09-15 16:16:19'),(3,'C','2015-09-15 16:16:19','2015-09-15 16:16:19'),(4,'D','2015-09-15 16:16:19','2015-09-15 16:16:19'),(5,'E','2015-09-15 16:16:19','2015-09-15 16:16:19'),(6,'F','2015-09-15 16:16:19','2015-09-15 16:16:19'),(7,'G','2015-09-15 16:16:19','2015-09-15 16:16:19'),(8,'H','2015-09-15 16:16:19','2015-09-15 16:16:19');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchdays`
--

DROP TABLE IF EXISTS `matchdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matchdays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `at_day` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchdays`
--

LOCK TABLES `matchdays` WRITE;
/*!40000 ALTER TABLE `matchdays` DISABLE KEYS */;
INSERT INTO `matchdays` VALUES (1,'MD1',1,'2017-09-12'),(2,'MD1',2,'2017-09-13'),(3,'MD2',1,'2017-09-26'),(4,'MD2',2,'2017-09-27'),(5,'MD3',1,'2017-10-17'),(6,'MD3',2,'2017-10-18'),(7,'MD4',1,'2017-10-31'),(8,'MD4',2,'2017-11-01'),(9,'MD5',1,'2017-11-21'),(10,'MD5',2,'2017-11-22'),(11,'MD6',1,'2017-12-05'),(12,'MD6',2,'2017-12-06'),(13,'R16-1st',1,'2018-02-13'),(14,'R16-1st',2,'2018-02-14'),(15,'R16-1st',3,'2018-02-20'),(16,'R16-1st',4,'2018-02-21'),(17,'R16-2nd',1,'2018-03-06'),(18,'R16-2nd',2,'2018-03-07'),(19,'R16-2nd',3,'2018-03-13'),(20,'R16-2nd',4,'2018-03-14'),(21,'QF-1st',1,'2018-04-10'),(22,'QF-1st',2,'2018-04-11'),(23,'QF-2nd',1,'2018-04-17'),(24,'QF-2nd',2,'2018-04-18'),(25,'SF-1st',1,'2018-05-01'),(26,'SF-1st',2,'2018-05-02'),(27,'SF-2nd',1,'2018-05-08'),(28,'SF-2nd',2,'2018-05-09'),(29,'Final',1,'2018-06-02');
/*!40000 ALTER TABLE `matchdays` ENABLE KEYS */;
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
  `club_goals` int(11) DEFAULT NULL,
  `opponent_goals` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (1,1,2,3,'2017-09-13 08:10:43','2017-09-13 08:10:43'),(2,2,3,0,'2017-09-13 08:10:56','2017-09-13 08:10:56'),(3,3,0,0,'2017-09-13 08:11:07','2017-09-13 08:11:07'),(4,4,6,0,'2017-09-13 08:11:56','2017-09-13 08:11:56'),(5,5,0,5,'2017-09-13 08:12:11','2017-09-13 08:12:11'),(6,6,3,0,'2017-09-13 08:12:26','2017-09-13 08:12:26'),(7,7,3,0,'2017-09-13 08:12:39','2017-09-13 08:12:39'),(8,8,1,2,'2017-09-13 08:12:52','2017-09-13 08:12:52'),(9,9,3,1,'2017-09-14 06:25:15','2017-09-14 06:25:15'),(10,10,3,0,'2017-09-14 06:28:56','2017-09-14 06:28:56'),(11,11,1,3,'2017-09-14 06:29:16','2017-09-14 06:29:16'),(12,12,1,1,'2017-09-14 06:29:36','2017-09-14 06:29:36'),(13,13,2,1,'2017-09-14 06:29:52','2017-09-14 06:29:52'),(14,14,2,2,'2017-09-14 06:30:13','2017-09-14 06:30:13'),(15,15,1,1,'2017-09-14 06:30:33','2017-09-14 06:30:33'),(16,16,0,4,'2017-09-14 06:30:48','2017-09-14 06:30:48'),(17,17,0,3,'2017-09-28 14:41:53','2017-09-28 14:41:53'),(18,18,1,3,'2017-09-28 14:42:21','2017-09-28 14:42:21'),(19,19,0,3,'2017-09-28 14:42:41','2017-09-28 14:42:41'),(20,20,2,0,'2017-09-28 14:43:01','2017-09-28 14:43:01'),(21,21,2,0,'2017-09-28 14:43:19','2017-09-28 14:43:19'),(22,22,3,1,'2017-09-28 14:43:38','2017-09-28 14:43:38'),(23,23,1,1,'2017-09-28 14:44:05','2017-09-28 14:44:05'),(24,24,3,0,'2017-09-28 14:44:32','2017-09-28 14:44:32'),(25,25,1,2,'2017-09-28 14:44:59','2017-09-28 14:44:59'),(26,26,2,0,'2017-09-28 14:48:24','2017-09-28 14:48:24'),(27,27,0,1,'2017-09-28 14:48:44','2017-09-28 14:48:44'),(28,28,1,2,'2017-09-28 14:49:03','2017-09-28 14:49:03'),(29,29,0,3,'2017-09-28 14:49:24','2017-09-28 14:49:24'),(30,30,3,0,'2017-09-28 14:49:44','2017-09-28 14:49:44'),(31,31,1,4,'2017-09-28 14:50:00','2017-09-28 14:50:00'),(32,32,5,0,'2017-09-28 14:50:20','2017-09-28 14:50:20'),(33,39,0,7,'2017-10-20 06:44:45','2017-10-20 06:44:45'),(34,40,5,1,'2017-10-20 06:45:15','2017-10-20 06:45:15'),(35,37,1,2,'2017-10-20 06:45:34','2017-10-20 06:45:34'),(36,38,2,1,'2017-10-20 06:45:53','2017-10-20 06:45:53'),(37,35,3,2,'2017-10-20 06:46:15','2017-10-20 06:46:15'),(38,36,1,2,'2017-10-20 06:46:33','2017-10-20 06:46:33'),(39,33,1,1,'2017-10-20 06:46:54','2017-10-20 06:46:54'),(40,34,1,1,'2017-10-20 06:47:14','2017-10-20 06:47:14'),(41,42,0,1,'2017-10-20 06:50:55','2017-10-20 06:50:55'),(42,43,0,2,'2017-10-20 06:51:14','2017-10-20 06:51:14'),(43,44,3,0,'2017-10-20 06:51:29','2017-10-20 06:51:29'),(44,45,0,4,'2017-10-20 06:51:48','2017-10-20 06:51:48'),(45,46,3,3,'2017-10-20 06:52:09','2017-10-20 06:52:09'),(46,47,3,1,'2017-10-20 06:52:30','2017-10-20 06:52:30'),(47,48,2,1,'2017-10-20 06:52:46','2017-10-20 06:52:46'),(48,41,0,0,'2017-10-20 06:53:03','2017-10-20 06:53:03'),(49,49,2,0,'2017-11-01 14:39:22','2017-11-01 14:39:22'),(50,50,1,2,'2017-11-01 14:39:48','2017-11-01 14:39:48'),(51,51,1,2,'2017-11-01 14:40:08','2017-11-01 14:40:08'),(52,52,5,0,'2017-11-01 14:40:26','2017-11-01 14:40:26'),(53,53,3,0,'2017-11-01 14:40:40','2017-11-01 14:40:40'),(54,54,1,1,'2017-11-01 14:40:59','2017-11-01 14:40:59'),(55,55,0,0,'2017-11-01 14:41:13','2017-11-01 14:41:13'),(56,56,1,1,'2017-11-01 14:41:31','2017-11-01 14:41:31'),(57,57,1,1,'2017-11-02 14:29:41','2017-11-02 14:29:41'),(58,58,1,1,'2017-11-02 14:30:09','2017-11-02 14:30:09'),(59,59,3,1,'2017-11-02 14:30:28','2017-11-02 14:30:28'),(60,60,3,0,'2017-11-02 14:31:01','2017-11-02 14:31:01'),(61,61,3,1,'2017-11-02 14:31:22','2017-11-02 14:31:22'),(62,62,3,1,'2017-11-02 14:32:04','2017-11-02 14:32:04'),(63,63,2,4,'2017-11-02 14:32:32','2017-11-02 14:32:32'),(64,64,2,1,'2017-11-02 14:33:08','2017-11-02 14:33:08'),(65,65,1,1,'2017-12-01 02:31:20','2017-12-01 02:31:20'),(66,66,1,1,'2017-12-01 02:31:39','2017-12-01 02:31:39'),(67,67,3,3,'2017-12-01 02:32:44','2017-12-01 02:32:44'),(68,68,3,0,'2017-12-01 02:33:04','2017-12-01 02:33:04'),(69,69,1,0,'2017-12-01 02:33:31','2017-12-01 02:33:31'),(70,70,1,4,'2017-12-01 02:33:54','2017-12-01 02:33:54'),(71,71,1,2,'2017-12-01 02:34:12','2017-12-01 02:34:12'),(72,72,0,6,'2017-12-01 02:34:31','2017-12-01 02:34:31'),(73,73,2,0,'2017-12-01 02:40:40','2017-12-01 02:40:40'),(74,74,0,4,'2017-12-01 02:41:46','2017-12-01 02:41:46'),(75,75,1,0,'2017-12-01 02:42:13','2017-12-01 02:42:13'),(76,76,7,1,'2017-12-01 02:42:38','2017-12-01 02:42:38'),(77,77,1,2,'2017-12-01 02:42:56','2017-12-01 02:42:56'),(78,78,2,0,'2017-12-01 02:43:22','2017-12-01 02:43:22'),(79,79,3,1,'2017-12-01 02:43:37','2017-12-01 02:43:37'),(80,80,0,0,'2017-12-01 02:43:48','2017-12-01 02:43:48'),(81,89,2,1,'2017-12-08 02:06:05','2017-12-08 02:06:05'),(82,90,0,2,'2017-12-08 02:06:30','2017-12-08 02:06:30'),(83,91,0,1,'2017-12-08 02:06:54','2017-12-08 02:06:54'),(84,92,3,1,'2017-12-08 02:07:46','2017-12-08 02:07:46'),(85,93,1,0,'2017-12-08 02:08:17','2017-12-08 02:08:17'),(86,94,1,1,'2017-12-08 02:08:59','2017-12-08 02:08:59'),(87,95,0,2,'2017-12-08 02:09:32','2017-12-08 02:09:32'),(88,96,2,0,'2017-12-08 02:10:13','2017-12-08 02:10:13'),(89,81,7,0,'2017-12-08 02:10:41','2017-12-08 02:10:41'),(90,82,1,1,'2017-12-08 02:11:03','2017-12-08 02:11:03'),(91,83,2,1,'2017-12-08 02:11:35','2017-12-08 02:11:35'),(92,84,2,1,'2017-12-08 02:11:54','2017-12-08 02:11:54'),(93,85,5,2,'2017-12-08 02:12:16','2017-12-08 02:12:16'),(94,86,1,2,'2017-12-08 02:12:44','2017-12-08 02:12:44'),(95,87,3,0,'2017-12-08 02:13:05','2017-12-08 02:13:05'),(96,88,3,2,'2017-12-08 02:13:25','2017-12-08 02:13:25');
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
  `matchday_id` int(11) DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL,
  `opponent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,1,47,42,'2017-09-13 08:08:20','2017-09-13 08:08:20'),(2,1,19,13,'2017-09-13 08:08:42','2017-09-13 08:08:42'),(3,1,45,9,'2017-09-13 08:09:07','2017-09-13 08:09:07'),(4,1,51,46,'2017-09-13 08:09:18','2017-09-13 08:09:18'),(5,1,37,3,'2017-09-13 08:09:34','2017-09-13 08:09:34'),(6,1,22,44,'2017-09-13 08:09:47','2017-09-13 08:09:47'),(7,1,43,34,'2017-09-13 08:10:00','2017-09-13 08:10:00'),(8,1,12,6,'2017-09-13 08:10:15','2017-09-13 08:10:15'),(9,2,39,41,'2017-09-13 08:16:24','2017-09-13 08:16:24'),(10,2,4,57,'2017-09-13 08:16:38','2017-09-13 08:16:38'),(11,2,27,36,'2017-09-13 08:16:51','2017-09-13 08:16:51'),(12,2,56,40,'2017-09-13 08:17:01','2017-09-13 08:17:01'),(13,2,49,55,'2017-09-13 08:17:16','2017-09-13 08:17:16'),(14,2,53,15,'2017-09-13 08:17:33','2017-09-13 08:17:33'),(15,2,54,52,'2017-09-13 08:17:49','2017-09-13 08:17:49'),(16,2,50,14,'2017-09-13 08:18:56','2017-09-13 08:18:56'),(17,3,57,39,'2017-09-14 06:35:18','2017-09-14 06:35:18'),(18,3,41,4,'2017-09-14 06:35:46','2017-09-14 06:35:46'),(19,3,40,27,'2017-09-14 06:35:59','2017-09-14 06:35:59'),(20,3,36,56,'2017-09-14 06:36:13','2017-09-14 06:36:13'),(21,3,14,49,'2017-09-14 06:36:25','2017-09-14 06:36:25'),(22,3,55,50,'2017-09-14 06:36:40','2017-09-14 06:36:40'),(23,3,52,53,'2017-09-14 06:36:55','2017-09-14 06:36:55'),(24,3,15,54,'2017-09-14 06:37:07','2017-09-14 06:37:07'),(25,4,46,45,'2017-09-14 06:37:17','2017-09-26 03:51:47'),(26,4,13,47,'2017-09-28 14:45:56','2017-09-28 14:45:56'),(27,4,42,19,'2017-09-28 14:46:34','2017-09-28 14:46:34'),(28,4,9,51,'2017-09-28 14:46:51','2017-09-28 14:46:51'),(29,4,44,37,'2017-09-28 14:47:11','2017-09-28 14:47:11'),(30,4,3,22,'2017-09-28 14:47:31','2017-09-28 14:47:31'),(31,4,6,43,'2017-09-28 14:47:48','2017-09-28 14:47:48'),(32,4,34,12,'2017-09-28 14:48:05','2017-09-28 14:48:05'),(33,5,4,39,'2017-09-28 14:51:57','2017-09-28 14:51:57'),(34,5,57,41,'2017-09-28 14:52:18','2017-09-28 14:52:18'),(35,5,56,27,'2017-09-28 14:52:35','2017-09-28 14:52:35'),(36,5,40,36,'2017-09-28 14:52:55','2017-09-28 14:52:55'),(37,5,50,49,'2017-09-28 14:53:11','2017-09-28 14:53:11'),(38,5,14,55,'2017-09-28 14:53:25','2017-09-28 14:53:25'),(39,5,54,53,'2017-09-28 14:53:53','2017-09-28 14:53:53'),(40,5,52,15,'2017-09-28 14:54:21','2017-09-28 14:54:21'),(41,6,46,9,'2017-10-20 06:48:04','2017-10-20 06:48:04'),(42,6,12,43,'2017-10-20 06:48:38','2017-10-20 06:48:38'),(43,6,6,34,'2017-10-20 06:48:54','2017-10-20 06:48:54'),(44,6,22,37,'2017-10-20 06:49:09','2017-10-20 06:49:09'),(45,6,44,3,'2017-10-20 06:49:22','2017-10-20 06:49:22'),(46,6,51,45,'2017-10-20 06:49:36','2017-10-20 06:49:36'),(47,6,19,47,'2017-10-20 06:49:49','2017-10-20 06:49:49'),(48,6,13,42,'2017-10-20 06:50:08','2017-10-20 06:50:08'),(49,7,43,12,'2017-10-20 06:54:10','2017-10-20 06:54:10'),(50,7,34,6,'2017-10-20 06:54:26','2017-10-20 06:54:26'),(51,7,37,22,'2017-10-20 06:54:41','2017-10-20 06:54:41'),(52,7,3,44,'2017-10-20 06:54:53','2017-10-20 06:54:53'),(53,7,45,51,'2017-10-20 06:55:07','2017-10-20 06:55:07'),(54,7,9,46,'2017-10-20 06:55:25','2017-10-20 06:55:25'),(55,7,47,19,'2017-10-20 06:55:38','2017-10-20 06:55:38'),(56,7,42,13,'2017-10-20 06:55:52','2017-10-20 06:55:52'),(57,8,36,40,'2017-11-01 14:42:21','2017-11-01 14:42:21'),(58,8,41,57,'2017-11-01 14:42:51','2017-11-01 14:42:51'),(59,8,49,50,'2017-11-01 14:43:09','2017-11-01 14:43:09'),(60,8,53,54,'2017-11-01 14:43:33','2017-11-01 14:43:33'),(61,8,39,4,'2017-11-01 14:43:46','2017-11-01 14:43:46'),(62,8,27,56,'2017-11-01 14:44:09','2017-11-01 14:44:09'),(63,8,55,14,'2017-11-01 14:44:24','2017-11-01 14:44:24'),(64,8,15,52,'2017-11-01 14:44:43','2017-11-01 14:44:43'),(65,9,52,54,'2017-11-02 14:34:18','2017-11-02 14:34:18'),(66,9,36,27,'2017-11-02 14:34:44','2017-11-02 14:34:44'),(67,9,15,53,'2017-11-02 14:35:05','2017-11-02 14:35:05'),(68,9,55,49,'2017-11-02 14:35:22','2017-11-02 14:35:22'),(69,9,14,50,'2017-11-02 14:35:40','2017-11-02 14:35:40'),(70,9,40,56,'2017-11-02 14:35:53','2017-11-02 14:35:53'),(71,9,41,39,'2017-11-02 14:36:07','2017-11-02 14:36:07'),(72,9,57,4,'2017-11-02 14:36:22','2017-11-02 14:36:22'),(73,10,6,12,'2017-12-01 02:35:50','2017-12-01 02:35:50'),(74,10,46,51,'2017-12-01 02:38:02','2017-12-01 02:38:02'),(75,10,34,43,'2017-12-01 02:38:33','2017-12-01 02:38:33'),(76,10,3,37,'2017-12-01 02:38:48','2017-12-01 02:38:48'),(77,10,44,22,'2017-12-01 02:39:07','2017-12-01 02:39:07'),(78,10,9,45,'2017-12-01 02:39:26','2017-12-01 02:39:26'),(79,10,42,47,'2017-12-01 02:39:44','2017-12-01 02:39:44'),(80,10,13,19,'2017-12-01 02:39:58','2017-12-01 02:39:58'),(81,12,53,52,'2017-12-01 02:44:43','2017-12-01 02:44:43'),(82,12,54,15,'2017-12-01 02:46:12','2017-12-01 02:46:12'),(83,12,49,14,'2017-12-01 02:46:35','2017-12-01 02:46:35'),(84,12,50,55,'2017-12-01 02:46:49','2017-12-01 02:46:49'),(85,12,27,40,'2017-12-01 02:47:10','2017-12-01 02:47:10'),(86,12,56,36,'2017-12-01 02:47:36','2017-12-01 02:47:36'),(87,12,39,57,'2017-12-01 02:47:50','2017-12-01 02:47:50'),(88,12,4,41,'2017-12-01 02:48:01','2017-12-01 02:48:01'),(89,11,43,6,'2017-12-01 02:52:28','2017-12-04 02:08:25'),(90,11,12,34,'2017-12-01 02:52:54','2017-12-01 02:52:54'),(91,11,37,44,'2017-12-01 02:53:05','2017-12-01 02:53:05'),(92,11,22,3,'2017-12-01 02:53:17','2017-12-01 02:53:17'),(93,11,45,46,'2017-12-01 02:53:27','2017-12-01 02:53:27'),(94,11,51,9,'2017-12-01 02:53:44','2017-12-01 02:53:44'),(95,11,47,13,'2017-12-01 02:54:00','2017-12-01 02:54:00'),(96,11,19,42,'2017-12-01 02:54:14','2017-12-01 02:54:14'),(97,13,34,14,'2017-12-17 13:07:32','2017-12-17 13:07:32'),(98,13,13,39,'2017-12-17 13:08:06','2017-12-17 13:08:06'),(99,14,22,36,'2017-12-17 13:08:45','2017-12-17 13:08:45'),(100,14,27,53,'2017-12-17 13:09:09','2017-12-17 13:09:09'),(101,15,22,36,'2017-12-17 13:10:00','2017-12-17 13:12:06'),(102,15,51,19,'2017-12-17 13:13:32','2017-12-17 13:13:32'),(103,16,49,45,'2017-12-17 13:13:49','2017-12-17 13:13:49'),(104,16,15,43,'2017-12-17 13:14:13','2017-12-17 13:14:13');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150915160956'),('20150915162407'),('20150915164530'),('20150916080459'),('20150916091433'),('20150916161814'),('20150917062453'),('20150917064410');
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
  `club_id` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `draws` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `goals_for` int(11) DEFAULT NULL,
  `goals_against` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standings`
--

LOCK TABLES `standings` WRITE;
/*!40000 ALTER TABLE `standings` DISABLE KEYS */;
INSERT INTO `standings` VALUES (1,3,5,0,1,25,4,15,'2017-09-13 14:55:16','2017-12-08 02:07:46'),(2,4,4,1,1,17,7,13,'2017-09-13 14:55:16','2017-12-08 02:13:25'),(3,6,3,0,3,8,10,9,'2017-09-13 14:55:16','2017-12-08 02:06:05'),(4,9,1,4,1,5,4,7,'2017-09-13 14:55:16','2017-12-08 02:08:59'),(5,12,0,0,6,1,14,0,'2017-09-13 14:55:16','2017-12-08 02:06:30'),(6,13,3,2,1,7,5,11,'2017-09-13 14:55:16','2017-12-08 02:09:32'),(7,14,5,0,1,14,5,15,'2017-09-13 14:55:16','2017-12-08 02:11:35'),(8,15,2,3,1,12,12,9,'2017-09-13 14:55:16','2017-12-08 02:11:03'),(9,19,4,2,0,9,1,14,'2017-09-13 14:55:16','2017-12-08 02:10:13'),(10,22,5,0,1,13,6,15,'2017-09-13 14:55:16','2017-12-08 02:07:46'),(11,27,3,1,2,15,10,10,'2017-09-13 14:55:16','2017-12-08 02:12:16'),(12,34,4,0,2,11,5,12,'2017-09-13 14:55:16','2017-12-08 02:06:30'),(13,36,4,2,0,11,5,14,'2017-09-13 14:55:16','2017-12-08 02:12:44'),(14,37,1,0,5,5,18,3,'2017-09-13 14:55:16','2017-12-08 02:06:54'),(15,39,5,1,0,15,4,16,'2017-09-13 14:55:16','2017-12-08 02:13:05'),(16,40,0,2,4,6,16,2,'2017-09-13 14:55:16','2017-12-08 02:12:16'),(17,41,0,2,4,7,13,2,'2017-09-13 14:55:16','2017-12-08 02:13:25'),(18,42,2,1,3,8,9,7,'2017-09-13 14:55:16','2017-12-08 02:10:13'),(19,43,5,0,1,12,3,15,'2017-09-13 14:55:16','2017-12-08 02:06:05'),(20,44,1,0,5,2,17,3,'2017-09-13 14:55:16','2017-12-08 02:06:54'),(21,45,3,2,1,9,6,11,'2017-09-13 14:55:16','2017-12-08 02:08:17'),(22,46,0,2,4,2,14,2,'2017-09-13 14:55:16','2017-12-08 02:08:17'),(23,47,0,1,5,4,13,1,'2017-09-13 14:55:16','2017-12-08 02:09:32'),(24,49,4,0,2,9,9,12,'2017-09-13 14:55:16','2017-12-08 02:11:35'),(25,50,1,0,5,5,14,3,'2017-09-13 14:55:16','2017-12-08 02:11:54'),(26,51,3,2,1,16,8,11,'2017-09-13 14:55:16','2017-12-08 02:08:59'),(27,52,1,3,2,9,13,6,'2017-09-13 14:55:16','2017-12-08 02:10:41'),(28,53,3,3,0,23,6,12,'2017-09-13 14:55:16','2017-12-08 02:10:41'),(29,54,0,3,3,3,16,3,'2017-09-13 14:55:16','2017-12-08 02:11:03'),(30,55,2,0,4,11,11,6,'2017-09-13 14:55:16','2017-12-08 02:11:54'),(31,56,2,1,3,10,11,7,'2017-09-13 14:55:16','2017-12-08 02:12:44'),(32,57,0,2,4,2,17,2,'2017-09-13 14:55:16','2017-12-08 02:13:05');
/*!40000 ALTER TABLE `standings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `countries_in_groups`
--

/*!50001 DROP VIEW IF EXISTS `countries_in_groups`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `countries_in_groups` AS select `clubs`.`country_id` AS `country_id`,`countries`.`name` AS `name`,`groups`.`name` AS `grp`,`clubs`.`abbr` AS `abbr` from ((`clubs` join `countries` on((`clubs`.`country_id` = `countries`.`id`))) join `groups` on((`clubs`.`group_id` = `groups`.`id`))) order by `countries`.`name`,`groups`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `country_with_most_clubs`
--

/*!50001 DROP VIEW IF EXISTS `country_with_most_clubs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `country_with_most_clubs` AS select `clubs`.`country_id` AS `country_id`,`countries`.`name` AS `name`,count(0) AS `COUNT(*)` from (`clubs` join `countries` on((`clubs`.`country_id` = `countries`.`id`))) group by `clubs`.`country_id` order by count(0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `goals_by_round`
--

/*!50001 DROP VIEW IF EXISTS `goals_by_round`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `goals_by_round` AS select `m`.`round` AS `round`,`m`.`at_day` AS `at_day`,sum(`r`.`club_goals`) AS `sum(club_goals)`,sum(`r`.`opponent_goals`) AS `sum(opponent_goals)`,sum((`r`.`club_goals` + `r`.`opponent_goals`)) AS `sum(club_goals+opponent_goals)` from ((`results` `r` join `schedules` `s` on((`r`.`schedule_id` = `s`.`id`))) join `matchdays` `m` on((`s`.`matchday_id` = `m`.`id`))) group by `m`.`round`,`m`.`at_day` */;
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

-- Dump completed on 2022-12-01 14:50:37
