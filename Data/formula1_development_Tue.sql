-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: formula1_development
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
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,5,'Sebastian','Vettel','VET','1987-07-03','German',2,68,'sebastian_vettel.jpg','2013-03-16 19:43:12','2017-04-17 04:09:06'),(28,55,'Carlos','Sainz','SAI','1994-09-01','Spanish',9,10,'Carlos_Sainz.jpg','2015-03-14 06:47:33','2017-04-10 07:30:54'),(3,14,'Fernando ','Alonso','ALO','1981-07-29','Spanish',3,0,'Fernando_Alonso.jpg','2013-03-16 19:55:46','2017-04-10 07:20:34'),(4,19,'Felipe','Massa','MAS','1981-04-25','Brazilian',8,16,'Felipe_Massa.jpg','2013-03-16 19:57:37','2017-04-17 04:12:35'),(6,11,'Sergio  ','Perez ','PER','1990-01-26','Mexican',7,14,'Sergio_Perez.jpg','2013-03-17 03:00:42','2017-04-17 04:12:57'),(7,7,'Kimi  ','RÃ¤ikkÃ¶nen ','RAI','1979-10-17','Finnish',2,34,'Kimi_Raikkonen.jpg','2013-03-17 03:02:32','2017-04-17 04:11:50'),(8,8,'Romain  ','Grosjean ','GRO','1986-04-17','French',13,4,'Romain_Grosjean.jpg','2013-03-17 03:04:26','2017-04-17 04:13:24'),(39,18,'Lance','Stroll','STR','1998-10-29','Canadian',8,0,'Lance_Stroll.jpg','2017-04-10 07:36:58','2017-04-10 07:36:58'),(10,44,'Lewis  ','Hamilton ','HAM','1985-01-07','British',5,61,'Lewis_Hamilton.jpg','2013-03-17 03:08:09','2017-04-17 04:11:15'),(11,27,'Nico  ','Hulkenberg ','HUL','1987-08-19','German',12,2,'Nico_Hulkenberg.jpg','2013-03-17 03:10:12','2017-04-17 04:13:39'),(16,77,'Valtteri  ',' Bottas ','BOT','1989-08-28','Finnish',5,38,'Valtteri_Bottas.jpg','2013-03-17 03:22:31','2017-04-17 04:11:33'),(18,3,'Daniel  ','Ricciardo ','RIC','1989-07-01','Australian',1,22,'Daniel_Ricciardo.jpg','2013-03-17 03:25:52','2017-04-17 04:12:17'),(33,31,'Esteban','Ocon','OCO','1996-09-17','France',7,3,'Esteban_Ocon.jpg','2017-03-26 17:02:48','2017-04-17 04:14:08'),(34,30,'Jolyon','Palmer','PAL','1991-01-20','United Kingdom',12,0,'Jolyon_Palmer.jpg','2017-03-26 17:08:50','2017-03-26 17:56:30'),(35,94,'Pascal','Wehrlein','WEH','1994-10-18','Germany',6,0,'Pascal_Wehrlein.jpg','2017-03-26 17:11:45','2017-04-17 04:17:28'),(36,2,'Stoffel','Vandoorne','VAN','1992-03-26','Belgium',3,0,'Stoffel_Vandoorne.jpg','2017-03-26 17:14:49','2017-03-26 17:47:37'),(27,33,'Max','Verstappen','VER','1997-09-30','Belgium',1,25,'Max_Verstappen.jpg','2015-03-14 06:43:48','2017-04-10 07:08:15'),(37,20,'Kevin','Magnussen','MAG','1992-10-05','Denmark',13,4,'Kevin_Magnussen.jpg','2017-03-26 17:20:48','2017-04-09 13:47:55'),(26,26,'Daniil ','Kvyat','KVY','1994-04-26','Russian',9,2,'Danil_Kvyat.jpg','2014-03-15 13:41:26','2017-04-10 07:29:59'),(38,9,'Marcus','Ericsson','ERI','1990-09-02','Sweden',6,0,'Marcus_Ericsson.jpg','2017-03-26 17:30:49','2017-04-10 07:27:58');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `races`
--

DROP TABLE IF EXISTS `races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `circuit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `laps` int(11) DEFAULT NULL,
  `length` float DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `races`
--

LOCK TABLES `races` WRITE;
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
INSERT INTO `races` VALUES (1,'Australia','Melbourne','ROLEX AUSTRALIAN GRAND PRIX','2017-03-24','2017-03-26','Albert Park',58,5.303,307.574,'Australian_Flag.jpg','2013-03-17 05:32:49','2017-03-26 17:39:09'),(2,'Malaysia','Kuala Lumpur','PETRONAS MALAYSIA GRAND PRIX','2015-03-27','2015-03-29','Sepang International Circuit',56,5.543,310.408,'Malaysia_Flag.jpg','2013-03-19 16:41:48','2015-07-08 08:12:44'),(3,'China','Shanghai','CHINESE GRAND PRIX','2017-04-07','2017-04-09','Shanghai International Circuit',56,5.451,305.066,'China_Flag.jpg','2013-03-19 16:56:11','2017-04-09 13:44:52'),(4,'Bahrain','Sakhir','GULF AIR BAHRAIN GRAND PRIX','2017-04-14','2017-04-16','Bahrain International Circuit',57,5.412,308.238,'Bahrain_Flag.jpg','2013-03-24 01:25:15','2017-04-17 04:07:35'),(5,'Spain','Catalunya','GRAN PREMIO DE ESPAÃ‘A  ','2015-05-08','2015-05-10','Circuit de Catalunya',66,4.655,307.104,'Spain_Flag.jpg','2013-05-12 14:37:12','2015-07-08 08:34:03'),(6,'Monaco','Monte Carlo','GRAND PRIX DE MONACO 2015','2015-05-21','2015-05-24','Circuit de Monaco',78,3.34,260.52,'Monaco_Flag.jpg','2013-05-26 12:00:15','2015-07-08 08:39:31'),(7,'Canada','Montreal','GRAND PRIX DU CANADA ','2015-06-05','2015-06-07','Circuit Gilles-Villeneuve',70,4.361,305.27,'Canada_Flag.jpg','2013-06-16 03:33:26','2015-07-08 08:45:46'),(8,'Great Britain','Silverstone','SANTANDER BRITISH GRAND PRIX','2015-07-03','2015-07-05','Silverstone',52,5.891,306.198,'Britain_Flag.jpg','2013-06-30 14:17:47','2015-07-08 08:56:28'),(9,'Germany','NÃ¼rburgring','GROSSER PREIS SANTANDER VON DEUTSCHLAND','2014-07-18','2014-07-20','Hockenheimring',67,4.574,306.458,'Germany_Flag.jpg','2013-07-22 14:31:48','2014-07-26 12:57:38'),(10,'Hungary','Budapest','PIRELLI MAGYAR NAGYDÃJ ','2015-07-24','2015-07-26','Hungaroring',70,4.381,306.63,'Hungary_Flag.jpg','2013-08-23 08:10:43','2015-07-26 14:04:12'),(11,'Belgium','Spa','Shell Belgian Grand Prix','2015-08-21','2015-08-23','Circuit de Spa-Francorchamps',44,7.004,308.052,'Belgian_Flag.jpg','2013-08-25 15:09:20','2015-09-06 12:28:33'),(12,'Italy','Monza','GRAN PREMIO D\'ITALIA','2015-09-04','2015-09-06','Autodromo di Monza',53,5.793,306.72,'Italy_Flag.jpg','2013-09-21 13:32:45','2015-09-06 13:00:13'),(13,'Singapore','Marina Bay','SINGAPORE AIRLINES SINGAPORE GRAND PRIX','2015-09-18','2015-09-20','Marina Bay Street Circuit',61,5.065,308.828,'Singapore_Flag.jpg','2013-10-11 06:46:16','2015-09-21 15:19:51'),(14,'Korea','Soul','KOREAN GRAND PRIX','2013-10-04','2013-10-06','Korea International Circuit',55,5.615,308.63,'Korean_Flag.jpg','2013-10-11 06:59:43','2013-10-11 06:59:43'),(15,'Japan','Suzuka','2015 JAPANESE GRAND PRIX','2015-09-25','2015-09-27','Suzuka',53,5.807,307.471,'Japan_Flag.jpg','2013-10-13 08:02:41','2015-09-27 04:27:13'),(16,'India','New Delhi','AIRTEL INDIAN GRAND PRIX','2013-10-25','2013-10-27','Buddh International Circuit',60,5.125,307.249,'India_Flag.jpg','2013-10-27 12:04:09','2013-10-27 12:04:09'),(17,'Austria','Spielberg','GROSSER PREIS VON Ã–STERREICH','2015-06-19','2015-06-21','Ã–sterreichring',71,4.326,307.02,'Austria_Flag.jpg','2014-06-22 11:18:00','2015-07-08 08:51:37'),(18,'Russia','Sochi','RUSSIAN GRAND PRIX','2015-10-09','2015-10-11','Sochi Autodrom',53,5.848,309.745,'Russia_Flag.jpg','2014-10-12 13:07:27','2015-10-11 12:53:34'),(19,'United States','Austin','UNITED STATES GRAND PRIX','2015-10-23','2015-10-25','Circuit of The Americas',56,5.513,308.405,'US_Flag.jpg','2014-11-08 07:15:37','2015-11-01 14:00:31'),(20,'Mexico','Mexico Cith','FORMULA 1 GRAN PREMIO DE MÉXICO 2015','2015-10-30','2015-11-01','Autódromo Hermanos Rodríguez',71,4.304,305.354,NULL,'2015-11-02 03:34:53','2015-11-02 03:34:53'),(21,'Brazil','São Paulo','FORMULA 1 GRANDE PRÊMIO PETROBRAS DO BRASIL 2015','2015-11-13','2015-11-15','Autódromo José Carlos Pace',71,4.309,305.9,NULL,'2015-11-29 12:40:19','2015-11-29 12:40:19'),(22,'United Arab Emirate','Abu Dhabi','2015 FORMULA 1 ETIHAD AIRWAYS ABU DHABI GRAND PRIX','2015-11-27','2015-11-29','Yas Marina Circuit',55,5.554,305.355,NULL,'2015-11-29 12:49:18','2015-11-29 12:57:11');
/*!40000 ALTER TABLE `races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `grid` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=803 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (763,1,1,1,NULL,25,'2017-03-26 17:43:17','2017-03-26 17:43:17'),(764,1,2,10,NULL,18,'2017-03-26 17:43:39','2017-03-26 17:43:39'),(765,1,3,16,NULL,15,'2017-03-26 17:43:50','2017-03-26 17:43:50'),(766,1,4,7,NULL,12,'2017-03-26 17:44:02','2017-03-26 17:44:02'),(767,1,5,27,NULL,10,'2017-03-26 17:44:32','2017-03-26 17:44:32'),(768,1,6,4,NULL,8,'2017-03-26 17:44:45','2017-03-26 17:44:45'),(769,1,7,6,NULL,6,'2017-03-26 17:44:57','2017-03-26 17:44:57'),(770,1,8,28,NULL,4,'2017-03-26 17:45:10','2017-03-26 17:45:10'),(771,1,9,26,NULL,2,'2017-03-26 17:45:24','2017-03-26 17:45:24'),(772,1,10,33,NULL,1,'2017-03-26 17:45:41','2017-03-26 17:45:41'),(773,1,11,11,NULL,0,'2017-03-26 17:45:57','2017-03-26 17:45:57'),(774,1,13,36,NULL,0,'2017-03-26 17:46:40','2017-03-26 17:46:40'),(775,3,1,10,NULL,25,'2017-04-09 13:45:44','2017-04-09 13:45:44'),(776,3,2,1,NULL,18,'2017-04-09 13:46:06','2017-04-09 13:46:06'),(777,3,3,27,NULL,15,'2017-04-09 13:46:20','2017-04-09 13:46:20'),(778,3,4,18,NULL,12,'2017-04-09 13:46:38','2017-04-09 13:46:38'),(779,3,5,7,NULL,10,'2017-04-09 13:46:54','2017-04-09 13:46:54'),(780,3,6,16,NULL,8,'2017-04-09 13:47:17','2017-04-09 13:47:17'),(781,3,7,28,NULL,6,'2017-04-09 13:47:38','2017-04-09 13:47:38'),(782,3,8,37,NULL,4,'2017-04-09 13:47:55','2017-04-09 13:47:55'),(783,3,9,6,NULL,2,'2017-04-09 13:48:17','2017-04-09 13:48:17'),(784,3,10,33,NULL,1,'2017-04-09 13:48:37','2017-04-09 13:48:37'),(785,3,11,8,NULL,0,'2017-04-09 13:49:02','2017-04-09 13:49:02'),(786,3,12,11,NULL,0,'2017-04-09 13:49:25','2017-04-09 13:49:25'),(787,3,13,34,NULL,0,'2017-04-09 13:49:53','2017-04-09 13:49:53'),(788,3,14,4,NULL,0,'2017-04-09 13:50:10','2017-04-09 13:50:10'),(789,3,15,38,NULL,0,'2017-04-09 13:50:32','2017-04-09 13:50:32'),(790,4,1,1,NULL,25,'2017-04-17 04:09:06','2017-04-17 04:09:06'),(791,4,2,10,NULL,18,'2017-04-17 04:11:15','2017-04-17 04:11:15'),(792,4,3,16,NULL,15,'2017-04-17 04:11:33','2017-04-17 04:11:33'),(793,4,4,7,NULL,12,'2017-04-17 04:11:50','2017-04-17 04:11:50'),(794,4,5,18,NULL,10,'2017-04-17 04:12:17','2017-04-17 04:12:17'),(795,4,6,4,NULL,8,'2017-04-17 04:12:35','2017-04-17 04:12:35'),(796,4,7,6,NULL,6,'2017-04-17 04:12:57','2017-04-17 04:12:57'),(797,4,8,8,NULL,4,'2017-04-17 04:13:24','2017-04-17 04:13:24'),(798,4,9,11,NULL,2,'2017-04-17 04:13:39','2017-04-17 04:13:39'),(799,4,10,33,NULL,1,'2017-04-17 04:14:08','2017-04-17 04:14:08'),(800,4,11,35,NULL,0,'2017-04-17 04:14:40','2017-04-17 04:14:40'),(801,4,12,26,NULL,0,'2017-04-17 04:15:08','2017-04-17 04:15:08'),(802,4,13,34,NULL,0,'2017-04-17 04:15:27','2017-04-17 04:15:27');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130316184718'),('20130316191146'),('20130317045322'),('20130318041944'),('20130324040041');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_principal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `technical_chief` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chassis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `engine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Red Bull Racing','Infiniti Red Bull Racing','Milton Keynes','UK','Christian Horner','Adrian Newey','RB13','Renault','Red_Bull.jpg','2013-03-16 19:26:23','2017-04-17 04:12:17',47),(2,'Ferrari','Scuderia Ferrari','Maranello','Italy','Maurizio Arrivabene','James Allison','SF15-T','Ferrari','Ferrari.jpg','2013-03-16 19:53:58','2017-04-17 04:11:50',102),(3,'McLaren','McLaren Honda','Woking','UK','Eric Boullier','','MP4-30','Honda','MCLAREN.jpg','2013-03-17 02:01:25','2017-04-10 15:05:29',0),(5,'Mercedes','Mercedes AMG Petronas F1 Team','Brackley','UK','Toto Wolff','Paddy Lowe','F1 W06','Mercedes-Benz PU106A Hybrid ','Mercedes.jpg','2013-03-17 02:25:41','2017-04-17 04:11:33',99),(6,'Sauber','Sauber F1 Team','Hinwil','Switzerland','Monisha Kaltenborn',' 	Eric Gandelin, Elliott Dason Barber, Willem Toet','C34','Ferrari','Sauber.jpg','2013-03-17 02:28:03','2017-04-10 15:07:23',0),(7,'Force India ','Sahara Force India F1 ','Silverstone','UK','Vijay Mallya','Andrew Green','VJM08','Mercedes','Force_India.jpg','2013-03-17 02:30:30','2017-04-17 04:14:08',17),(8,'Williams','Williams Martini Racing','Grove','UK','Frank Williams','Pat Symonds ','FW37','Mercedes','Williams.jpg','2013-03-17 02:32:36','2017-04-17 04:12:35',16),(9,'Toro Rosso','Scuderia Toro Rosso','Woking','Italy','Franz Tost','James Key','STR10','Renault','Toro-Rosso.jpg','2013-03-17 02:34:54','2017-04-10 15:09:43',12),(12,'Renault','Renault Sport F1 Team','Enstone','United Kingdom','Cyril Abiteboul','Bob Bell','R.S.17','Renault','Renault.jpg','2017-03-26 16:38:08','2017-04-17 04:13:39',2),(13,'Haas ','Haas F1 Team','N/A','','Guenther Steiner','Rob Taylor','N/A','N/A','Haas.jpg','2017-03-26 16:46:14','2017-04-17 04:13:24',8);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-31 22:40:15
