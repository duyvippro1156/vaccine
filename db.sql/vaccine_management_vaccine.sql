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
-- Table structure for table `vaccine`
--

DROP TABLE IF EXISTS `vaccine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccine` (
  `vaccine_id` int NOT NULL AUTO_INCREMENT,
  `age` varchar(255) DEFAULT NULL,
  `delete_flag` bit(1) DEFAULT NULL,
  `dosage` double DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `license_code` varchar(255) DEFAULT NULL,
  `maintenance` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `vaccine_type_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `times` int DEFAULT NULL,
  PRIMARY KEY (`vaccine_id`),
  KEY `FKsh9t3bn44kyxqlhm696iukmvo` (`vaccine_type_id`),
  CONSTRAINT `FKsh9t3bn44kyxqlhm696iukmvo` FOREIGN KEY (`vaccine_type_id`) REFERENCES `vaccine_type` (`vaccine_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccine`
--

LOCK TABLES `vaccine` WRITE;
/*!40000 ALTER TABLE `vaccine` DISABLE KEYS */;
INSERT INTO `vaccine` VALUES (1,'Trên 6 tuổi',_binary '\0',0.1,'2020-12-12','ABC','0 độ C','Tiêu chảy do rota virus','GSK/Bỉ',100,1,'https://vinmec-prod.s3.amazonaws.com/images/20191029_054638_552977_rotarix.max-800x800.jpg',10,5),(2,'Trên 6 tuổi',_binary '\0',0.1,'2020-12-12','ABC','0 độ C','Tiêu chảy do rota virus','GSK/Bỉ',100,1,'https://vinmec-prod.s3.amazonaws.com/images/20191029_054638_552977_rotarix.max-800x800.jpg',7,2),(3,'10 đến 20 tuổi',_binary '\0',0.25,'2020-12-12','ABC','0 độ C','Ho gà, bạch hầu, uốn ván, bại liệt, viêm gan B và các bệnh do Hib','GSK/Bỉ',100,2,'https://vnvc.vn/wp-content/uploads/2018/06/vc-hexaxim.jpg',7,3),(4,'Trên 6 tuổi',_binary '\0',0.5,'2020-12-12','ABC','0 độ C','Hội chứng nhiễm trùng, viêm màng não, viêm phổi, nhiễm khuẩn huyết, viêm tai giữa do phế cầu','GSK/Bỉ',100,2,'https://sakurahanoi.com/uploads/synflorix-packshot.jpg',7,4),(5,'Trên 8 tuổi',_binary '\0',0.1,'2020-12-12','ABC','0 độ C','Sởi','GSK/Bỉ',100,1,'https://ykhoahopnhan.vn/wp-content/uploads/2019/06/9-03.png',5,5),(6,'Dưới 6 tuổi',_binary '\0',0.1,'2020-12-12','ABC','0 độ C','Sởi – Quai bị – Rubella','GSK/Bỉ',100,2,'https://ykhoahopnhan.vn/wp-content/uploads/2019/05/MMR-II.jpg',5,2),(7,'Dưới 6 tuổi',_binary '\0',0.25,'2020-12-12','ABC','0 độ C','Viêm màng não do mô cầu tuýp B và C','GSK/Bỉ',100,1,'https://vinmec-prod.s3.amazonaws.com/images/20191122_053002_978289_vac-xin-phong-nao-m.max-1800x1800.jpg',5,3),(8,'Trên 3 tháng tuổi',_binary '\0',0.1,'2020-12-12','ABC','0 độ C','Thủy đậu','GSK/Bỉ',100,2,'https://vinmec-prod.s3.amazonaws.com/images/20191201_004806_774758_vacxin-thuy-dau-var.max-1800x1800.jpg',3,1),(9,'Trên 6 tuổi',_binary '\0',0.1,'2020-12-12','ABC','0 độ C','Viêm não Nhật Bản','GSK/Bỉ',100,1,'https://vinmec-prod.s3.amazonaws.com/images/20190917_025338_958125_javax-2.max-800x800.jpg',10,2),(10,'6 đến 20 tuổi',_binary '\0',0.25,'2020-12-12','ABC','0 độ C','Thương hàn','GSK/Bỉ',100,2,'https://vnvc.vn/wp-content/uploads/2017/04/TYPHIM.jpg',4,3),(11,'Trên 6 tuổi',_binary '\0',0.1,'2020-12-12','ABC','0 độ C','Viêm màng não do mô cầu tuýp ACYW','GSK/Bỉ',100,1,'https://afamilycdn.com/zoom/640_400/150157425591193600/2020/5/19/vc-15898803049221240739258-39-0-539-800-crop-1589880870542930920217.png',6,4),(12,'< 80 tuổi',_binary '',10,'2022-02-03','123123123','-40 độ C','123123','Mỹ',1000,2,'https://lh3.googleusercontent.com/proxy/dH9qGMM9MhmwRVfHD8Pxxkcv2sy043yIz9AgXOSikQ2jKpfXDNL5bgsX29n50pXnbgWoI63jTnKErohIbYwdM1KNE-67BOYnesF60DpKDH3lmd9gk-96aRwUzbYLjQVHNZALR5OZ32Kht4qyNs5kVaHudfE',7,5),(13,'18',_binary '',1000,'2021-04-30','213213','abc','213213','Việt Nam',3,2,NULL,1,3),(14,'18',_binary '',1000,'2021-04-09','4','abc','C123123','Việt Nam',3,1,NULL,2,3),(15,'18',_binary '\0',1000,'2021-04-30','15','lạnh','12321312','Việt Nam',9,1,NULL,4,5),(16,'4 tuổi',_binary '\0',1,'2022-02-27','1212321','0 độ C','cat1','VN',1000,16,'https://firebasestorage.googleapis.com/v0/b/fir-upload-firebase-2c530.appspot.com/o/12-02-2022073608AM5.jpg?alt=media&token=9faef114-85c4-4e7f-b973-c0a3fedfedc3',2,3);
/*!40000 ALTER TABLE `vaccine` ENABLE KEYS */;
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
