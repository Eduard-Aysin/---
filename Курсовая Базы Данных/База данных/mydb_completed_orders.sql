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
-- Table structure for table `completed_orders`
--

DROP TABLE IF EXISTS `completed_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `completed_orders` (
  `Users_id` int unsigned NOT NULL,
  `Goods_id_goods` int unsigned NOT NULL,
  `when_ordered` datetime NOT NULL,
  `when_received` datetime DEFAULT NULL,
  KEY `fk_Completed_orders_Users1_idx` (`Users_id`),
  KEY `fk_Completed_orders_Goods1_idx` (`Goods_id_goods`),
  CONSTRAINT `fk_Completed_orders_Goods1` FOREIGN KEY (`Goods_id_goods`) REFERENCES `goods` (`id_goods`),
  CONSTRAINT `fk_Completed_orders_Users1` FOREIGN KEY (`Users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completed_orders`
--

LOCK TABLES `completed_orders` WRITE;
/*!40000 ALTER TABLE `completed_orders` DISABLE KEYS */;
INSERT INTO `completed_orders` VALUES (1,1,'2021-01-28 14:47:02',NULL),(2,4,'2021-01-28 14:47:52',NULL),(6,4,'2021-01-28 14:49:31','2021-01-28 14:49:31'),(9,6,'2021-01-28 14:51:12',NULL),(10,8,'2021-01-28 14:51:55',NULL),(10,1,'2021-01-28 14:52:14','2021-01-28 14:52:14'),(5,4,'2021-01-28 14:53:41','2021-01-28 14:53:41'),(7,2,'2021-01-28 14:54:03',NULL),(3,5,'2021-01-28 14:54:18',NULL),(4,4,'2021-01-28 14:54:33',NULL);
/*!40000 ALTER TABLE `completed_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 20:35:50
