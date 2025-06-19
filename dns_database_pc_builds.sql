-- MySQL dump 10.13  Distrib 9.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: dns_database
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `pc_builds`
--

DROP TABLE IF EXISTS `pc_builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pc_builds` (
  `BuildID` int NOT NULL,
  `BuildName` varchar(100) NOT NULL,
  `CPU_ID` int NOT NULL,
  `GPU_ID` int DEFAULT NULL,
  `Motherboard_ID` int NOT NULL,
  `RAM_ID` int NOT NULL,
  `Storage_ID` int NOT NULL,
  `PowerSupply_ID` int NOT NULL,
  `Case_ID` int NOT NULL,
  `TotalPrice` decimal(10,2) NOT NULL,
  `IsPrebuilt` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`BuildID`),
  KEY `CPU_ID` (`CPU_ID`),
  KEY `GPU_ID` (`GPU_ID`),
  KEY `Motherboard_ID` (`Motherboard_ID`),
  KEY `RAM_ID` (`RAM_ID`),
  KEY `Storage_ID` (`Storage_ID`),
  KEY `PowerSupply_ID` (`PowerSupply_ID`),
  KEY `Case_ID` (`Case_ID`),
  CONSTRAINT `pc_builds_ibfk_1` FOREIGN KEY (`CPU_ID`) REFERENCES `products` (`ProductID`),
  CONSTRAINT `pc_builds_ibfk_2` FOREIGN KEY (`GPU_ID`) REFERENCES `products` (`ProductID`),
  CONSTRAINT `pc_builds_ibfk_3` FOREIGN KEY (`Motherboard_ID`) REFERENCES `products` (`ProductID`),
  CONSTRAINT `pc_builds_ibfk_4` FOREIGN KEY (`RAM_ID`) REFERENCES `products` (`ProductID`),
  CONSTRAINT `pc_builds_ibfk_5` FOREIGN KEY (`Storage_ID`) REFERENCES `products` (`ProductID`),
  CONSTRAINT `pc_builds_ibfk_6` FOREIGN KEY (`PowerSupply_ID`) REFERENCES `products` (`ProductID`),
  CONSTRAINT `pc_builds_ibfk_7` FOREIGN KEY (`Case_ID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc_builds`
--

LOCK TABLES `pc_builds` WRITE;
/*!40000 ALTER TABLE `pc_builds` DISABLE KEYS */;
INSERT INTO `pc_builds` VALUES (1,'Игровой ПК премиум',6,8,11,13,15,18,19,349999.00,1),(2,'Игровой ПК высокого уровня',7,9,12,14,16,17,20,259999.00,1),(3,'Игровой ПК среднего уровня',10,27,29,30,15,17,19,189999.00,1),(4,'Офисный ПК',10,NULL,12,14,15,17,20,89999.00,1),(5,'Монтажный ПК',6,28,11,13,16,18,19,279999.00,1),(6,'Бюджетный игровой ПК',10,28,12,14,15,17,20,149999.00,1),(7,'ПК для стриминга',7,9,11,13,16,18,19,299999.00,1),(8,'Компактный игровой ПК',10,27,12,30,15,17,20,169999.00,1),(9,'ПК для работы с ИИ',6,8,11,13,16,18,19,329999.00,1),(10,'Домашний медиацентр',10,NULL,12,14,15,17,20,79999.00,1);
/*!40000 ALTER TABLE `pc_builds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-19  6:30:03
