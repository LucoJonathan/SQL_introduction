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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `ID` int NOT NULL,
  `REF` varchar(13) NOT NULL,
  `DESIGNATION` varchar(255) NOT NULL,
  `PRIX` decimal(7,2) NOT NULL,
  `ID_FOU` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ARTICLE_FOU` (`ID_FOU`),
  CONSTRAINT `FK_ARTICLE_FOU` FOREIGN KEY (`ID_FOU`) REFERENCES `fournisseur` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'A01','Perceuse P1',74.99,1),(2,'F01','Boulon laiton 4 x 40 mm (sachet de 10)',2.25,2),(3,'F02','Boulon laiton 5 x 40 mm (sachet de 10)',4.45,2),(4,'D01','Boulon laiton 5 x 40 mm (sachet de 10)',4.40,3),(5,'A02','Meuleuse 125mm',37.85,1),(6,'D03','Boulon acier zingué 4 x 40mm (sachet de 10)',1.80,3),(7,'A03','Perceuse à colonne',185.25,1),(8,'D04','Coffret mêches à bois',12.25,3),(9,'F03','Coffret mêches plates',6.25,2),(10,'F04','Fraises d’encastrement',8.14,2);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
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
