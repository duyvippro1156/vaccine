-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: vaccine_management
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_id` int NOT NULL AUTO_INCREMENT,
  `delete_flag` bit(1) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `transaction_date` varchar(255) DEFAULT NULL,
  `provider_id` int NOT NULL,
  `vaccine_id` int NOT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `FK58r2cn5a7iok8r0domo3925p0` (`provider_id`),
  KEY `FKtealfhfp2mmkpinck9yrh8ows` (`vaccine_id`),
  CONSTRAINT `FK58r2cn5a7iok8r0domo3925p0` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`provider_id`),
  CONSTRAINT `FKtealfhfp2mmkpinck9yrh8ows` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccine` (`vaccine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,_binary '\0','2020-12-12',50000,200,'2020-01-19',1,1),(2,_binary '\0','2020-12-12',50000,200,'2020-01-19',1,1),(3,_binary '\0','2020-12-12',50000,200,'2020-01-19',1,2),(4,_binary '\0','2020-12-12',50000,200,'2020-01-19',2,3),(5,_binary '\0','2020-12-12',50000,200,'2020-01-19',3,4),(6,_binary '\0','2020-12-12',50000,200,'2020-01-19',5,6),(7,_binary '\0','2020-12-12',50000,200,'2020-01-19',4,7),(8,_binary '\0','2022-02-03',100000,1000,'2021-02-03',7,12),(9,_binary '\0','2021-04-30',10000000,3,'2021-04-05',8,13),(10,_binary '\0','2021-04-09',5,3,'2021-04-04',8,14),(11,_binary '\0','2021-04-30',1000000,9,'2021-04-04',8,15),(12,_binary '\0','2022-02-27',0,1000,'2022-02-12',9,16);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-12  8:43:13
