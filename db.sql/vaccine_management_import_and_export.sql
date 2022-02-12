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
-- Table structure for table `import_and_export`
--

DROP TABLE IF EXISTS `import_and_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_and_export` (
  `import_and_export_id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `delete_flag` bit(1) DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `account_id` int NOT NULL,
  `storage_id` int NOT NULL,
  PRIMARY KEY (`import_and_export_id`),
  KEY `FK7uc236wuf1jg6bl69ynqxm1o9` (`account_id`),
  KEY `FK8g8mo9l69snxgsdpmw14yqvhj` (`storage_id`),
  CONSTRAINT `FK7uc236wuf1jg6bl69ynqxm1o9` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  CONSTRAINT `FK8g8mo9l69snxgsdpmw14yqvhj` FOREIGN KEY (`storage_id`) REFERENCES `storage` (`storage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_and_export`
--

LOCK TABLES `import_and_export` WRITE;
/*!40000 ALTER TABLE `import_and_export` DISABLE KEYS */;
INSERT INTO `import_and_export` VALUES (2,'import','2021-01-19',NULL,50000,100,1,1),(3,'export','2021-01-19',NULL,0,50,1,2),(4,'import','2021-01-19',NULL,70000,75,1,3),(5,'export','2021-01-19',NULL,0,80,1,6),(6,'import','2021-01-19',NULL,120000,100,1,4),(7,'export','2021-01-19',NULL,0,100,1,5);
/*!40000 ALTER TABLE `import_and_export` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-12  8:43:12
