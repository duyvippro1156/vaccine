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
-- Table structure for table `vaccination`
--

DROP TABLE IF EXISTS `vaccination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccination` (
  `vaccination_id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `delete_flag` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `location_id` int NOT NULL,
  `vaccination_type_id` int NOT NULL,
  `vaccine_id` int NOT NULL,
  `duration` int DEFAULT NULL,
  `times` int DEFAULT NULL,
  PRIMARY KEY (`vaccination_id`),
  KEY `FKbe8a9yn6ih1xswcwx0v67yd1v` (`location_id`),
  KEY `FKs1h1qr3dpipq3b7l1ja0fc0kh` (`vaccination_type_id`),
  KEY `FK7nk56xtl6qs5t4sbo13tp0ua6` (`vaccine_id`),
  CONSTRAINT `FK7nk56xtl6qs5t4sbo13tp0ua6` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccine` (`vaccine_id`),
  CONSTRAINT `FKbe8a9yn6ih1xswcwx0v67yd1v` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `FKs1h1qr3dpipq3b7l1ja0fc0kh` FOREIGN KEY (`vaccination_type_id`) REFERENCES `vaccination_type` (`vaccination_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccination`
--

LOCK TABLES `vaccination` WRITE;
/*!40000 ALTER TABLE `vaccination` DISABLE KEYS */;
INSERT INTO `vaccination` VALUES (2,'2022-01-22',_binary '','Miễn Phí','17:00:00','09:00:00',_binary '',1,1,2,NULL,NULL),(13,'2021-10-01',_binary '','Miễn Phí','11:30:00','08:00:00',_binary '',1,1,7,NULL,NULL),(16,'2021-10-01',_binary '\0','Miễn Phí','11:30:00','08:00:00',_binary '\0',1,1,4,NULL,NULL),(17,'2021-10-01',_binary '\0','Miễn Phí','11:30:00','07:00:00',_binary '\0',1,1,8,NULL,NULL),(119,'2022-10-08',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(120,'2022-10-15',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(121,'2022-10-22',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(122,'2021-02-03',_binary '\0',NULL,'09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(123,'2021-02-13',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(124,'2021-02-23',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(125,'2021-03-05',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(126,'2021-03-15',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(127,'2021-02-03',_binary '\0',NULL,'09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(128,'2021-02-13',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(129,'2021-02-23',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(130,'2021-03-05',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(131,'2021-03-15',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(137,'2021-02-01',_binary '\0','Miễn phí','17:30:00','08:00:00',_binary '\0',1,1,4,NULL,NULL),(138,'2021-02-06',_binary '\0','Miễn phí','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(139,'2021-02-16',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(140,'2021-02-26',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(141,'2021-03-08',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(142,'2021-03-18',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(143,'2021-02-14',_binary '\0','Miễn phí','17:00:00','07:30:00',_binary '\0',1,1,4,NULL,NULL),(144,'2021-02-07',_binary '\0','Miễn phí','17:00:00','07:30:00',_binary '\0',1,1,9,NULL,NULL),(145,'2021-02-06',_binary '\0',NULL,'11:00:00','09:30:00',_binary '\0',1,2,1,NULL,NULL),(146,'2021-02-16',_binary '\0','Tiêm nhắc','11:00:00','09:30:00',_binary '\0',1,2,1,NULL,NULL),(147,'2021-02-26',_binary '\0','Tiêm nhắc','11:00:00','09:30:00',_binary '\0',1,2,1,NULL,NULL),(148,'2021-03-08',_binary '\0','Tiêm nhắc','11:00:00','09:30:00',_binary '\0',1,2,1,NULL,NULL),(149,'2021-03-18',_binary '\0','Tiêm nhắc','11:00:00','09:30:00',_binary '\0',1,2,1,NULL,NULL),(150,'2021-10-08',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(151,'2021-10-15',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(152,'2021-10-22',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(153,'2021-02-05',_binary '\0',NULL,'08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(154,'2021-02-15',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(155,'2021-02-25',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(156,'2021-03-07',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(157,'2021-03-17',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(158,'2021-02-05',_binary '\0',NULL,'08:40:00','08:20:00',_binary '\0',1,2,1,NULL,NULL),(159,'2021-02-15',_binary '\0','Tiêm nhắc','08:40:00','08:20:00',_binary '\0',1,2,1,NULL,NULL),(160,'2021-02-25',_binary '\0','Tiêm nhắc','08:40:00','08:20:00',_binary '\0',1,2,1,NULL,NULL),(161,'2021-03-07',_binary '\0','Tiêm nhắc','08:40:00','08:20:00',_binary '\0',1,2,1,NULL,NULL),(162,'2021-03-17',_binary '\0','Tiêm nhắc','08:40:00','08:20:00',_binary '\0',1,2,1,NULL,NULL),(163,'2021-02-05',_binary '\0',NULL,'09:00:00','08:40:00',_binary '\0',1,2,1,NULL,NULL),(164,'2021-02-15',_binary '\0','Tiêm nhắc','09:00:00','08:40:00',_binary '\0',1,2,1,NULL,NULL),(165,'2021-02-25',_binary '\0','Tiêm nhắc','09:00:00','08:40:00',_binary '\0',1,2,1,NULL,NULL),(166,'2021-03-07',_binary '\0','Tiêm nhắc','09:00:00','08:40:00',_binary '\0',1,2,1,NULL,NULL),(167,'2021-03-17',_binary '\0','Tiêm nhắc','09:00:00','08:40:00',_binary '\0',1,2,1,NULL,NULL),(168,'2021-02-12',_binary '\0',NULL,'08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(169,'2021-02-22',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(170,'2021-03-04',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(171,'2021-03-14',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(172,'2021-03-24',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(173,'2021-02-19',_binary '\0',NULL,'10:40:00','10:20:00',_binary '\0',1,2,1,NULL,NULL),(174,'2021-03-01',_binary '\0','Tiêm nhắc','10:40:00','10:20:00',_binary '\0',1,2,1,NULL,NULL),(175,'2021-03-11',_binary '\0','Tiêm nhắc','10:40:00','10:20:00',_binary '\0',1,2,1,NULL,NULL),(176,'2021-03-21',_binary '\0','Tiêm nhắc','10:40:00','10:20:00',_binary '\0',1,2,1,NULL,NULL),(177,'2021-03-31',_binary '\0','Tiêm nhắc','10:40:00','10:20:00',_binary '\0',1,2,1,NULL,NULL),(178,'2021-02-13',_binary '\0',NULL,'14:40:00','14:20:00',_binary '\0',1,2,1,NULL,NULL),(179,'2021-02-23',_binary '\0','Tiêm nhắc','14:40:00','14:20:00',_binary '\0',1,2,1,NULL,NULL),(180,'2021-03-05',_binary '\0','Tiêm nhắc','14:40:00','14:20:00',_binary '\0',1,2,1,NULL,NULL),(181,'2021-03-15',_binary '\0','Tiêm nhắc','14:40:00','14:20:00',_binary '\0',1,2,1,NULL,NULL),(182,'2021-03-25',_binary '\0','Tiêm nhắc','14:40:00','14:20:00',_binary '\0',1,2,1,NULL,NULL),(183,'2021-02-05',_binary '\0',NULL,'09:40:00','09:20:00',_binary '\0',1,2,5,NULL,NULL),(184,'2021-02-10',_binary '\0','Tiêm nhắc','09:40:00','09:20:00',_binary '\0',1,2,5,NULL,NULL),(185,'2021-02-15',_binary '\0','Tiêm nhắc','09:40:00','09:20:00',_binary '\0',1,2,5,NULL,NULL),(186,'2021-02-20',_binary '\0','Tiêm nhắc','09:40:00','09:20:00',_binary '\0',1,2,5,NULL,NULL),(187,'2021-02-25',_binary '\0','Tiêm nhắc','09:40:00','09:20:00',_binary '\0',1,2,5,NULL,NULL),(193,'2022-01-22',_binary '\0',NULL,'09:20:00','09:00:00',_binary '\0',1,2,1,NULL,NULL),(194,'2022-02-01',_binary '\0','Tiêm nhắc','09:20:00','09:00:00',_binary '\0',1,2,1,NULL,NULL),(195,'2022-02-11',_binary '\0','Tiêm nhắc','09:20:00','09:00:00',_binary '\0',1,2,1,NULL,NULL),(196,'2022-02-21',_binary '\0','Tiêm nhắc','09:20:00','09:00:00',_binary '\0',1,2,1,NULL,NULL),(197,'2022-03-03',_binary '\0','Tiêm nhắc','09:20:00','09:00:00',_binary '\0',1,2,1,NULL,NULL),(198,'2021-10-06',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,7,NULL,NULL),(199,'2021-10-11',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,7,NULL,NULL),(200,'2021-02-06',_binary '\0',NULL,'08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(201,'2021-02-16',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(202,'2021-02-26',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(203,'2021-03-08',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(204,'2021-03-18',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,1,NULL,NULL),(205,'2021-02-06',_binary '\0',NULL,'08:40:00','08:20:00',_binary '\0',1,2,2,NULL,NULL),(206,'2021-02-13',_binary '\0','Tiêm nhắc','08:40:00','08:20:00',_binary '\0',1,2,2,NULL,NULL),(207,'2022-01-29',_binary '\0','Tiêm nhắc','17:00:00','09:00:00',_binary '\0',1,2,2,NULL,NULL),(208,'2022-01-29',_binary '\0','Tiêm nhắc','17:00:00','09:00:00',_binary '\0',1,2,2,NULL,NULL),(209,'2021-10-06',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,7,NULL,NULL),(210,'2021-10-11',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,7,NULL,NULL),(211,'2021-10-08',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(212,'2021-10-15',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(213,'2021-10-22',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(215,'2021-02-13',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,5,NULL,NULL),(216,'2021-02-18',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,5,NULL,NULL),(217,'2021-02-23',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,5,NULL,NULL),(218,'2021-02-28',_binary '\0','Tiêm nhắc','08:20:00','08:00:00',_binary '\0',1,2,5,NULL,NULL),(219,'2021-02-25',_binary '\0','Miễn Phí','17:00:00','08:00:00',_binary '\0',1,1,8,NULL,NULL),(220,'2021-10-08',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(221,'2021-10-15',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(222,'2021-10-22',_binary '\0','Tiêm nhắc','11:30:00','08:00:00',_binary '\0',1,2,4,NULL,NULL),(224,'2022-02-13',_binary '\0','Miễn Phí','09:03:00','07:01:00',_binary '\0',1,1,9,NULL,NULL),(225,'2022-02-13',_binary '\0',NULL,'09:30:00','08:00:00',_binary '\0',1,2,16,NULL,NULL),(226,'2022-02-15',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,16,NULL,NULL),(227,'2022-02-17',_binary '\0','Tiêm nhắc','09:30:00','08:00:00',_binary '\0',1,2,16,NULL,NULL);
/*!40000 ALTER TABLE `vaccination` ENABLE KEYS */;
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
