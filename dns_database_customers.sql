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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `RegistrationDate` date NOT NULL,
  `City` varchar(50) DEFAULT NULL,
  `LoyaltyPoints` int DEFAULT '0',
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Иван','Иванов','ivanov@mail.ru','+79161234567','2023-01-15','Москва',150),(2,'Анна','Петрова','petrova@gmail.com','+79261234568','2023-02-20','Санкт-Петербург',75),(3,'Дмитрий','Сидоров','sidorov@yandex.ru','+79361234569','2023-03-10','Екатеринбург',200),(4,'Елена','Кузнецова','kuznetsova@mail.ru','+79161234570','2023-01-25','Новосибирск',50),(5,'Алексей','Смирнов','smirnov@gmail.com','+79261234571','2023-02-05','Казань',125),(6,'Ольга','Попова','popova@yandex.ru','+79361234572','2023-03-15','Челябинск',80),(7,'Сергей','Васильев','vasiliev@mail.ru','+79161234573','2023-01-10','Омск',175),(8,'Наталья','Новикова','novikova@gmail.com','+79261234574','2023-02-15','Самара',90),(9,'Андрей','Федоров','fedorov@yandex.ru','+79361234575','2023-03-20','Ростов-на-Дону',210),(10,'Мария','Морозова','morozova@mail.ru','+79161234576','2023-01-05','Уфа',60),(11,'Павел','Волков','volkov@gmail.com','+79261234577','2023-02-10','Красноярск',140),(12,'Екатерина','Алексеева','alekseeva@yandex.ru','+79361234578','2023-03-25','Пермь',95),(13,'Александр','Лебедев','lebedev@mail.ru','+79161234579','2023-01-20','Воронеж',185),(14,'Ирина','Семенова','semenova@gmail.com','+79261234580','2023-02-25','Волгоград',110),(15,'Михаил','Егоров','egorov@yandex.ru','+79361234581','2023-03-05','Краснодар',225),(16,'Татьяна','Павлова','pavlova@mail.ru','+79161234582','2023-01-30','Саратов',70),(17,'Артем','Козлов','kozlov@gmail.com','+79261234583','2023-02-01','Тюмень',155),(18,'Юлия','Степанова','stepanova@yandex.ru','+79361234584','2023-03-15','Тольятти',100),(19,'Денис','Николаев','nikolaev@mail.ru','+79161234585','2023-01-12','Ижевск',190),(20,'Анастасия','Орлова','orlova@gmail.com','+79261234586','2023-02-18','Барнаул',115),(21,'Владимир','Андреев','andreev@yandex.ru','+79361234587','2023-03-22','Ульяновск',230),(22,'Светлана','Макарова','makarova@mail.ru','+79161234588','2023-01-08','Иркутск',65),(23,'Антон','Захаров','zakharov@gmail.com','+79261234589','2023-02-22','Хабаровск',160),(24,'Виктория','Соловьева','solovieva@yandex.ru','+79361234590','2023-03-08','Ярославль',105),(25,'Георгий','Борисов','borisov@mail.ru','+79161234591','2023-01-18','Владивосток',195),(26,'Евгения','Киселева','kiseleva@gmail.com','+79261234592','2023-02-28','Махачкала',120),(27,'Константин','Виноградов','vinogradov@yandex.ru','+79361234593','2023-03-12','Томск',235),(28,'Людмила','Филиппова','filippova@mail.ru','+79161234594','2023-01-22','Кемерово',75),(29,'Роман','Марков','markov@gmail.com','+79261234595','2023-02-08','Набережные Челны',165),(30,'Ольга','Кузнецова','kuznetsova2@mail.ru','+79161234596','2023-05-30','Казань',50);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-19  6:30:04
