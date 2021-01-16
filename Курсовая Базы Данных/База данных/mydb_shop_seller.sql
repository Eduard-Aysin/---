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
-- Table structure for table `shop_seller`
--

DROP TABLE IF EXISTS `shop_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_seller` (
  `User_id` int unsigned NOT NULL,
  `shop_name` varchar(145) NOT NULL,
  `address` varchar(245) DEFAULT 'Только онлайн',
  `shop_phone` bigint unsigned NOT NULL,
  `shop_email` varchar(145) DEFAULT NULL,
  `shop_website` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `shop_name_UNIQUE` (`shop_name`),
  KEY `fk_Shop_seller_Customers1_idx` (`User_id`),
  CONSTRAINT `fk_Shop_seller_Customers1` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_seller`
--

LOCK TABLES `shop_seller` WRITE;
/*!40000 ALTER TABLE `shop_seller` DISABLE KEYS */;
INSERT INTO `shop_seller` VALUES (1,'Liabanc','Только онлайн',74456916990,'ponehukess-6355@yopmail.com','www.ds.com'),(2,'Bina','Только онлайн',74651616515,NULL,NULL),(3,'Ichetweras','Только онлайн',74546541655,NULL,NULL),(4,'Frvean','Только онлайн',74313121548,NULL,'www.myr.ru'),(5,'Fwinta','Только онлайн',76489468468,NULL,NULL),(6,'Cadrbe','Только онлайн',74951546545,'ykebiso-6388@yopmail.com',NULL),(7,'Mcanni','Только онлайн',74951354648,NULL,NULL),(8,'Atalaw','Только онлайн',74932166898,NULL,NULL),(9,'Cakado','Только онлайн',76465846884,'uqiviwa-9789@yopmail.com',NULL),(10,'Ionelenera','Только онлайн',74315616511,NULL,NULL);
/*!40000 ALTER TABLE `shop_seller` ENABLE KEYS */;
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
