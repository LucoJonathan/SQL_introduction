-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: compta2
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `compo`
--

DROP TABLE IF EXISTS `compo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_ART` int DEFAULT NULL,
  `ID_BON` int DEFAULT NULL,
  `QTE` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPO_ART` (`ID_ART`),
  KEY `FK_COMPO_BON` (`ID_BON`),
  CONSTRAINT `FK_COMPO_ART` FOREIGN KEY (`ID_ART`) REFERENCES `article` (`ID`),
  CONSTRAINT `FK_COMPO_BON` FOREIGN KEY (`ID_BON`) REFERENCES `bon` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compo`
--

LOCK TABLES `compo` WRITE;
/*!40000 ALTER TABLE `compo` DISABLE KEYS */;
INSERT INTO `compo` VALUES (1,1,1,3),(2,5,1,4),(3,7,1,1),(4,2,2,25),(5,3,2,15),(6,9,2,8),(7,10,2,11),(8,4,3,25),(9,6,3,40),(10,8,3,15),(11,4,4,10),(12,6,4,15),(13,8,4,8),(14,2,5,17),(15,3,5,13),(16,10,5,9);
/*!40000 ALTER TABLE `compo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 12:08:38
