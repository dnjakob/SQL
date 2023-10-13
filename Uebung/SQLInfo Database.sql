-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sqlinfo
-- ------------------------------------------------------
-- Server version	11.3.0-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cellar`
--

DROP TABLE IF EXISTS `cellar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cellar` (
  `bin` smallint(6) NOT NULL,
  `wine` varchar(20) DEFAULT NULL,
  `producer` varchar(25) DEFAULT NULL,
  `jahr` smallint(6) DEFAULT NULL,
  `bottles` smallint(6) DEFAULT NULL,
  `ready` smallint(6) DEFAULT NULL,
  `comments` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cellar`
--

LOCK TABLES `cellar` WRITE;
/*!40000 ALTER TABLE `cellar` DISABLE KEYS */;
INSERT INTO `cellar` VALUES (2,'Chardonnay','Buena Vista',83,1,85,''),(3,'Chardonnay','LouisMartini',81,5,84,''),(6,'Chardonnay','Chappellet',82,4,85,'Thanksgiving'),(11,'Jo.Riesling','Jekel',84,10,86,''),(12,'Jo.Riesling','Buena Vista',82,1,83,'Late Harvest'),(16,'Jo.Riesling','Sattui',82,1,83,'very dry'),(21,'Fume Blanc','Ch.St.Jean',79,4,83,'Napa Valley'),(22,'Fume Blanc','Robt.Mondavi',78,2,82,''),(25,'Wh.Burgundy','Mirassou',80,6,82,''),(30,'Gewürztraminer','Buena Vista',80,3,82,''),(43,'Cab.Sauvignon','Robt.Mondavi',77,12,87,''),(50,'Pinot Noir','Mirassou',77,3,85,'Harvest'),(51,'Pinot Noir','Ch.St.Jean',78,2,86,''),(64,'Zinfandel','Mirassou',77,9,86,'Anniversary'),(72,'Gamay','Robt.Mondavi',78,2,83,'');
/*!40000 ALTER TABLE `cellar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cellar_copy`
--

DROP TABLE IF EXISTS `cellar_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cellar_copy` (
  `bin` smallint(6) NOT NULL,
  `wine` varchar(51) DEFAULT NULL,
  `producer` varchar(25) DEFAULT NULL,
  `jahr` smallint(6) DEFAULT NULL,
  `bottles` smallint(6) DEFAULT NULL,
  `ready` smallint(6) DEFAULT NULL,
  `comments` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cellar_copy`
--

LOCK TABLES `cellar_copy` WRITE;
/*!40000 ALTER TABLE `cellar_copy` DISABLE KEYS */;
INSERT INTO `cellar_copy` VALUES (2,'Chardonnay','Buena Vista',83,7,85,''),(3,'Chardonnay','LouisMartini',81,5,84,''),(6,'Chardonnay','Chappellet',82,7,85,'Thanksgiving'),(11,'Jo.Riesling','Jekel',84,7,86,''),(12,'Jo.Riesling','Buena Vista',82,1,83,'Late Harvest'),(16,'Jo.Riesling','Sattui',82,1,83,'very dry'),(21,'Südtir.Schädelsprenger','Terrorwein Inc.',79,4,83,'vorher Fume Blanc'),(22,'Südtir.Schädelsprenger','Robt.Mondavi',78,1,82,'vorher Fume Blanc'),(30,'Gewürztraminer','Buena Vista',80,3,82,''),(43,'Cab.Sauvignon','Robt.Mondavi',77,3,87,''),(51,'Pinot Noir','Terrorwein Inc.',78,7,86,''),(72,'Gamay','Robt.Mondavi',78,1,83,'');
/*!40000 ALTER TABLE `cellar_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lehrer`
--

DROP TABLE IF EXISTS `lehrer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lehrer` (
  `name` char(20) DEFAULT NULL,
  `vorname` char(20) DEFAULT NULL,
  `lehr_nr` int(11) DEFAULT NULL,
  `fach` char(20) DEFAULT NULL,
  `jahr` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lehrer`
--

LOCK TABLES `lehrer` WRITE;
/*!40000 ALTER TABLE `lehrer` DISABLE KEYS */;
INSERT INTO `lehrer` VALUES ('Controlletti','Johnny',100001,'Physik',2011),('Doria','Andrea',100002,'BWL',2010),('Ratlos','Rudi',100003,'Chemie',2012),('Mueller','Lieschen',100004,'Biologie',2013),('Mueller','Sabine',100005,'Mathematik',2009);
/*!40000 ALTER TABLE `lehrer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sqlinfo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-13 12:03:54
