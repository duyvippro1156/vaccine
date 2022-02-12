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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `encrypt_pw` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `is_enabled` bit(1) DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'$2a$04$JBGEvTO9PsB0B8jndE44D.cvQz7sOsSXFnhruOFmvkS4CQuYQN/Vm',NULL,'admin',_binary '',NULL,'khoa.trananh2@gmail.com'),(10,'$2a$04$JBGEvTO9PsB0B8jndE44D.cvQz7sOsSXFnhruOFmvkS4CQuYQN/Vm',NULL,'khoa.trananh2@gmail.com',_binary '','','khoa.trananh2@gmail.com'),(11,'$2a$04$JBGEvTO9PsB0B8jndE44D.cvQz7sOsSXFnhruOFmvkS4CQuYQN/Vm',NULL,'vitkykeycap@gmail.com',_binary '','','vitkykeycap@gmail.com'),(12,'$2a$04$JBGEvTO9PsB0B8jndE44D.cvQz7sOsSXFnhruOFmvkS4CQuYQN/Vm',NULL,'user',_binary '',NULL,'vitky.dad@gmail.com'),(14,'$2a$04$JBGEvTO9PsB0B8jndE44D.cvQz7sOsSXFnhruOFmvkS4CQuYQN/Vm',NULL,'321321321',NULL,NULL,NULL),(15,'$2a$12$B6oo5UjbxiXrb4d3fdcnduH1XU2ukiS0RLh5qSWUjvbGti0t7qwEG',NULL,'mxduy1202@gmail.com',_binary '',NULL,'mxduy1202@gmail.com');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-12  8:43:14
