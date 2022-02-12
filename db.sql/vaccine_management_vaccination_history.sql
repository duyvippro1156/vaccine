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
-- Table structure for table `vaccination_history`
--

DROP TABLE IF EXISTS `vaccination_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccination_history` (
  `vaccination_history_id` int NOT NULL AUTO_INCREMENT,
  `after_status` varchar(255) DEFAULT NULL,
  `dosage` double DEFAULT NULL,
  `pre_status` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `patient_id` int NOT NULL,
  `vaccination_id` int NOT NULL,
  `delete_flag` bit(1) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `vaccination_times` int DEFAULT NULL,
  PRIMARY KEY (`vaccination_history_id`),
  KEY `FKbaj9i3m7767ikyr7bk89r3yib` (`patient_id`),
  KEY `FKqy8p7e13vr6mntiikku0dkgp0` (`vaccination_id`),
  CONSTRAINT `FKbaj9i3m7767ikyr7bk89r3yib` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `FKqy8p7e13vr6mntiikku0dkgp0` FOREIGN KEY (`vaccination_id`) REFERENCES `vaccination` (`vaccination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccination_history`
--

LOCK TABLES `vaccination_history` WRITE;
/*!40000 ALTER TABLE `vaccination_history` DISABLE KEYS */;
INSERT INTO `vaccination_history` VALUES (261,NULL,NULL,'',_binary '',51,220,_binary '\0','08:20:00','08:00:00',2),(262,NULL,NULL,NULL,NULL,51,221,_binary '\0','08:20:00','08:00:00',3),(263,NULL,NULL,NULL,NULL,51,222,_binary '\0','08:20:00','08:00:00',4),(264,'sốt nhẹ',NULL,'',_binary '',51,16,_binary '\0','08:20:00','08:00:00',1),(265,NULL,NULL,'khoẻ',_binary '',52,225,_binary '\0','09:30:00','08:00:00',1),(266,NULL,NULL,NULL,_binary '\0',52,226,_binary '\0','09:30:00','08:00:00',2),(267,NULL,NULL,NULL,_binary '\0',52,227,_binary '\0','09:30:00','08:00:00',3);
/*!40000 ALTER TABLE `vaccination_history` ENABLE KEYS */;
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
