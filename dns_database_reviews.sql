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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `ReviewID` int NOT NULL,
  `ProductID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `Rating` int NOT NULL,
  `Comment` text,
  `ReviewDate` date NOT NULL,
  `IsVerifiedPurchase` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ReviewID`),
  KEY `ProductID` (`ProductID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,5,'Отличный ноутбук для игр! Все работает на ультра настройках.','2023-04-01',1),(2,4,2,4,'Хороший телефон, но дорогой. Камера отличная, но аккумулятор мог бы быть лучше.','2023-04-05',1),(3,8,3,5,'RTX 4090 просто летает в 4К! Лучшая видеокарта на рынке.','2023-04-10',1),(4,15,4,5,'SSD Samsung 980 Pro - это скорость! Система загружается за секунды.','2023-04-15',1),(5,21,5,4,'Кулер Noctua действительно тихий, но большой - не во все корпуса поместится.','2023-04-20',1),(6,6,6,5,'Ryzen 9 7950X - монстр производительности! Отлично справляется с рендерингом.','2023-04-25',1),(7,19,7,4,'Корпус Lian Li красивый, но сложный в сборке для новичков.','2023-05-01',1),(8,13,8,5,'Оперативка Corsair Dominator - топовое качество и красивая подсветка.','2023-05-05',1),(9,27,9,4,'RTX 4080 хороша, но цена завышена по сравнению с 4090.','2023-05-10',1),(10,2,10,5,'MacBook Pro - лучший ноутбук для работы. Экран просто волшебный!','2023-05-15',1),(11,17,11,4,'Блок питания Corsair надежный, но кабели могли бы быть мягче.','2023-05-20',1),(12,23,12,3,'Ноутбук Acer хорош, но сильно греется под нагрузкой.','2023-05-25',1),(13,9,13,5,'RX 7900 XTX отлично показывает себя в 1440p. AMD сделали большой шаг вперед!','2023-06-01',1),(14,25,14,4,'Xiaomi 13 Pro - отличный флагман за свои деньги.','2023-06-05',1),(15,30,15,5,'Оперативка G.Skill Trident Z5 - красивая RGB подсветка и отличная производительность.','2023-06-10',1),(16,5,16,4,'Samsung S23 Ultra хорош, но слишком большой для одной руки.','2023-06-15',1),(17,11,17,5,'Материнка ASUS ROG Strix - все разъемы на месте, отличный BIOS.','2023-06-20',1),(18,22,18,4,'Водянка Corsair хорошо охлаждает, но софт iCUE мог бы быть стабильнее.','2023-06-25',1),(19,7,19,5,'Intel i9-13900K - абсолютный лидер в играх!','2023-07-01',1),(20,14,20,4,'Оперативка Kingston Fury - хорошее бюджетное решение.','2023-07-05',1),(21,28,21,5,'RX 7800 XT - отличное соотношение цены и производительности.','2023-07-10',1),(22,3,22,4,'Lenovo IdeaPad - хороший ноутбук за свои деньги, но экран мог бы быть ярче.','2023-07-15',1),(23,18,23,5,'Блок питания Seasonic - тихий и эффективный. Топовое качество!','2023-07-20',1),(24,26,24,3,'OnePlus 11 хорош, но камера хуже чем у конкурентов.','2023-07-25',1),(25,10,25,5,'Ryzen 5 7600X - отличный процессор для игрового ПК среднего уровня.','2023-08-01',1),(26,20,26,4,'Корпус Fractal Design Torrent - отличная вентиляция, но тяжелый.','2023-08-05',1),(27,29,27,4,'Материнка MSI B660 - хороший выбор для i5/i7 12-го поколения.','2023-08-10',1),(28,12,28,5,'Материнка Gigabyte B650 - отличный выбор для Ryzen 7000.','2023-08-15',1),(29,24,29,3,'MSI Katana - средний ноутбук, есть проблемы с охлаждением.','2023-08-20',1),(30,16,30,5,'WD Black SN850X - один из самых быстрых SSD на рынке!','2023-08-25',1);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
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
