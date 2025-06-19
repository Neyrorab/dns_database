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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Brand` varchar(50) NOT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `StockQuantity` int NOT NULL DEFAULT '0',
  `WarrantyMonths` int DEFAULT NULL,
  `AvgRating` decimal(3,2) DEFAULT NULL,
  `Description` text,
  `ReleaseDate` date DEFAULT NULL,
  `IsAvailable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Ноутбуки','Игровой ноутбук ASUS ROG Strix G15','ASUS','ROG Strix G15',149999.00,15,24,4.70,'AMD Ryzen 9, RTX 3080, 32 ГБ RAM, 1 ТБ SSD','2022-03-15',1),(2,'Ноутбуки','MacBook Pro 14\" M1 Pro','Apple','MacBook Pro 14',199999.00,8,12,4.90,'Apple M1 Pro, 16 ГБ RAM, 512 ГБ SSD','2021-10-26',1),(3,'Ноутбуки','Lenovo IdeaPad 5','Lenovo','IdeaPad 5',69999.00,25,12,4.30,'AMD Ryzen 7, 16 ГБ RAM, 512 ГБ SSD','2022-01-10',1),(4,'Смартфоны','iPhone 15 Pro','Apple','iPhone 15 Pro',99999.00,30,12,4.80,'A17 Pro, 6.1\", 128 ГБ','2023-09-22',1),(5,'Смартфоны','Samsung Galaxy S23 Ultra','Samsung','Galaxy S23 Ultra',89999.00,18,12,4.70,'Snapdragon 8 Gen 2, 12 ГБ RAM, 256 ГБ','2023-02-17',1),(6,'Процессоры','AMD Ryzen 9 7950X','AMD','Ryzen 9 7950X',59999.00,12,36,4.90,'16 ядер, 4.5 ГГц, AM5','2022-09-27',1),(7,'Процессоры','Intel Core i9-13900K','Intel','Core i9-13900K',54999.00,10,36,4.80,'24 ядра, 5.8 ГГц, LGA 1700','2022-10-20',1),(8,'Видеокарты','NVIDIA GeForce RTX 4090','NVIDIA','RTX 4090',199999.00,5,36,4.90,'24 ГБ GDDR6X, DLSS 3','2022-10-12',1),(9,'Видеокарты','AMD Radeon RX 7900 XTX','AMD','RX 7900 XTX',129999.00,7,36,4.70,'24 ГБ GDDR6, RDNA 3','2022-12-13',1),(10,'Процессоры','AMD Ryzen 5 7600X','AMD','Ryzen 5 7600X',29999.00,20,36,4.60,'6 ядер, 4.7 ГГц, AM5','2022-09-27',1),(11,'Материнские платы','ASUS ROG Strix X670E-E','ASUS','ROG Strix X670E-E',34999.00,9,36,4.80,'AM5, DDR5, PCIe 5.0','2022-08-15',1),(12,'Материнские платы','Gigabyte B650 AORUS Elite','Gigabyte','B650 AORUS Elite',21999.00,14,36,4.50,'AM5, DDR5, PCIe 4.0','2022-10-10',1),(13,'Оперативная память','Corsair Dominator Platinum RGB','Corsair','DOMINATOR PLATINUM',19999.00,20,60,4.80,'32 ГБ (2x16) DDR5, 5600 МГц','2022-11-05',1),(14,'Оперативная память','Kingston Fury Beast','Kingston','Fury Beast',8999.00,30,60,4.40,'16 ГБ (1x16) DDR4, 3200 МГц','2021-05-20',1),(15,'Накопители','Samsung 980 Pro 1TB','Samsung','980 Pro',12999.00,25,60,4.90,'1 ТБ NVMe PCIe 4.0 SSD','2020-09-22',1),(16,'Накопители','WD Black SN850X 2TB','Western Digital','SN850X',21999.00,12,60,4.80,'2 ТБ NVMe PCIe 4.0 SSD','2022-07-01',1),(17,'Блоки питания','Corsair RM850x','Corsair','RM850x',14999.00,18,120,4.70,'850W, 80+ Gold, Full Modular','2020-03-10',1),(18,'Блоки питания','Seasonic Prime TX-1000','Seasonic','Prime TX-1000',29999.00,7,120,4.90,'1000W, 80+ Titanium, Full Modular','2021-11-15',1),(19,'Корпуса','Lian Li PC-O11 Dynamic','Lian Li','PC-O11 Dynamic',15999.00,10,24,4.80,'Mid-Tower, Tempered Glass','2018-06-01',1),(20,'Корпуса','Fractal Design Torrent','Fractal Design','Torrent',17999.00,8,24,4.70,'Full-Tower, RGB, Airflow','2021-08-15',1),(21,'Охлаждение','Noctua NH-D15','Noctua','NH-D15',8999.00,15,60,4.90,'Тихий кулер для процессора','2014-11-01',1),(22,'Охлаждение','Corsair iCUE H150i Elite','Corsair','H150i Elite',15999.00,12,60,4.70,'360mm RGB жидкостное охлаждение','2021-04-15',1),(23,'Ноутбуки','Acer Predator Helios 300','Acer','Predator Helios 300',109999.00,10,24,4.50,'Intel i7-12700H, RTX 3070 Ti, 16 ГБ RAM','2022-05-20',1),(24,'Ноутбуки','MSI Katana GF76','MSI','Katana GF76',89999.00,12,24,4.30,'Intel i7-12650H, RTX 3060, 16 ГБ RAM','2022-03-15',1),(25,'Смартфоны','Xiaomi 13 Pro','Xiaomi','13 Pro',79999.00,20,12,4.60,'Snapdragon 8 Gen 2, 12 ГБ RAM, 256 ГБ','2023-02-01',1),(26,'Смартфоны','OnePlus 11','OnePlus','11',69999.00,15,12,4.50,'Snapdragon 8 Gen 2, 16 ГБ RAM, 256 ГБ','2023-01-15',1),(27,'Видеокарты','NVIDIA GeForce RTX 4080','NVIDIA','RTX 4080',129999.00,8,36,4.70,'16 ГБ GDDR6X, DLSS 3','2022-11-16',1),(28,'Видеокарты','AMD Radeon RX 7800 XT','AMD','RX 7800 XT',79999.00,10,36,4.60,'16 ГБ GDDR6, RDNA 3','2023-09-05',1),(29,'Материнские платы','MSI MAG B660 Tomahawk','MSI','MAG B660 Tomahawk',17999.00,16,36,4.50,'LGA 1700, DDR4, PCIe 4.0','2022-01-10',1),(30,'Оперативная память','G.Skill Trident Z5 RGB','G.Skill','Trident Z5 RGB',21999.00,12,60,4.70,'32 ГБ (2x16) DDR5, 6000 МГц','2022-10-15',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
