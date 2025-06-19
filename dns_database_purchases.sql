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
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `PurchaseID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `PurchaseDate` datetime NOT NULL,
  `TotalAmount` decimal(12,2) NOT NULL,
  `PaymentMethod` varchar(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT 'Завершён',
  PRIMARY KEY (`PurchaseID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,1,'2023-04-01 14:30:00',149999.00,'Карта','Завершён'),(2,2,'2023-04-05 10:15:00',99999.00,'Онлайн','Завершён'),(3,3,'2023-04-10 18:45:00',199999.00,'Рассрочка','Завершён'),(4,4,'2023-04-15 12:20:00',12999.00,'Карта','Завершён'),(5,5,'2023-04-20 16:10:00',8999.00,'Онлайн','Завершён'),(6,6,'2023-04-25 11:30:00',59999.00,'Карта','Завершён'),(7,7,'2023-05-01 09:45:00',15999.00,'Рассрочка','Завершён'),(8,8,'2023-05-05 14:20:00',19999.00,'Карта','Завершён'),(9,9,'2023-05-10 17:30:00',129999.00,'Онлайн','Завершён'),(10,10,'2023-05-15 10:10:00',199999.00,'Карта','Завершён'),(11,11,'2023-05-20 13:45:00',14999.00,'Рассрочка','Завершён'),(12,12,'2023-05-25 15:20:00',109999.00,'Карта','Завершён'),(13,13,'2023-06-01 12:30:00',129999.00,'Онлайн','Завершён'),(14,14,'2023-06-05 11:15:00',79999.00,'Карта','Завершён'),(15,15,'2023-06-10 14:40:00',21999.00,'Рассрочка','Завершён'),(16,16,'2023-06-15 10:50:00',89999.00,'Карта','Завершён'),(17,17,'2023-06-20 16:25:00',34999.00,'Онлайн','Завершён'),(18,18,'2023-06-25 13:10:00',15999.00,'Карта','Завершён'),(19,19,'2023-07-01 09:30:00',54999.00,'Рассрочка','Завершён'),(20,20,'2023-07-05 15:45:00',8999.00,'Карта','Завершён'),(21,21,'2023-07-10 11:20:00',79999.00,'Онлайн','Завершён'),(22,22,'2023-07-15 14:15:00',69999.00,'Карта','Завершён'),(23,23,'2023-07-20 10:40:00',29999.00,'Рассрочка','Завершён'),(24,24,'2023-07-25 13:25:00',69999.00,'Карта','Завершён'),(25,25,'2023-08-01 16:50:00',29999.00,'Онлайн','Завершён'),(26,26,'2023-08-05 12:35:00',17999.00,'Карта','Завершён'),(27,27,'2023-08-10 09:50:00',21999.00,'Рассрочка','Завершён'),(28,28,'2023-08-15 15:05:00',21999.00,'Карта','Завершён'),(29,29,'2023-08-20 11:40:00',17999.00,'Онлайн','Завершён'),(30,30,'2023-08-25 14:55:00',21999.00,'Карта','Завершён');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
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
