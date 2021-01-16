-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `idMedia` int unsigned NOT NULL AUTO_INCREMENT,
  `Media_type_idMedia_type` int unsigned NOT NULL,
  `Users_id` int unsigned NOT NULL,
  `Goods_id_goods` int unsigned NOT NULL,
  `file` varchar(245) DEFAULT NULL,
  `blob` blob,
  `size` bigint DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`idMedia`),
  KEY `fk_Media_Media_type1_idx` (`Media_type_idMedia_type`),
  KEY `fk_Media_Goods1_idx` (`Goods_id_goods`),
  KEY `fk_Media_Users1_idx` (`Users_id`),
  CONSTRAINT `fk_Media_Goods1` FOREIGN KEY (`Goods_id_goods`) REFERENCES `goods` (`id_goods`),
  CONSTRAINT `fk_Media_Media_type1` FOREIGN KEY (`Media_type_idMedia_type`) REFERENCES `media_type` (`idMedia_type`),
  CONSTRAINT `fk_Media_Users1` FOREIGN KEY (`Users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,5,5,'jpn',NULL,123,NULL,'2021-01-19 22:44:55','2021-01-28 15:06:39'),(2,1,2,8,'pmg',NULL,69,NULL,'2021-01-19 22:44:55',NULL),(3,1,3,6,'pmg',NULL,124,NULL,'2021-01-19 22:44:55',NULL),(4,1,4,2,'pmg',NULL,89,NULL,'2021-01-19 22:44:55',NULL),(5,3,6,3,'MP4',NULL,1224,NULL,'2021-01-19 22:44:55','2021-01-28 16:41:30'),(6,1,6,6,'jpn',NULL,79,NULL,'2021-01-19 22:44:55',NULL),(7,1,7,5,'pmg',NULL,100,NULL,'2021-01-19 22:44:55',NULL),(8,3,8,1,'MP4',NULL,5006,NULL,'2021-01-19 22:44:55','2021-01-28 16:41:30'),(9,3,9,7,'MP4',NULL,9024,NULL,'2021-01-19 22:44:55',NULL),(10,1,10,1,'pmg',NULL,73,NULL,'2021-01-19 22:44:55',NULL);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 20:35:51
