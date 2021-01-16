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
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id_goods` int unsigned NOT NULL AUTO_INCREMENT,
  `Shop_seller_id` int unsigned NOT NULL,
  `name` varchar(145) NOT NULL,
  `category` varchar(145) DEFAULT 'Другое' COMMENT 'Тип товара ',
  `description` varchar(45) DEFAULT NULL,
  `subcategory` varchar(145) DEFAULT NULL,
  `quantity` bigint unsigned DEFAULT NULL COMMENT 'Колличество товара на складе',
  `description_text` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_goods`),
  KEY `fk_Goods_Shop_seller1_idx` (`Shop_seller_id`),
  CONSTRAINT `fk_Goods_Shop_seller1` FOREIGN KEY (`Shop_seller_id`) REFERENCES `shop_seller` (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,1,'Socs','Другое','10',NULL,1000,NULL,'2021-01-19 22:10:14'),(3,2,'Delveebe','Подушки','6','подушка для шеи',120,NULL,'2021-01-19 22:34:23'),(4,3,'Chelanis','Сумки','4',NULL,756,NULL,'2021-01-19 22:34:23'),(5,4,'Lauick','Посуда','9',NULL,124,'','2021-01-19 22:34:23'),(6,5,'Queni','Мебель','9',NULL,243,NULL,'2021-01-19 22:34:23'),(7,6,'Horalylerea','Посуда','10','чайные ложки',24,NULL,'2021-01-19 22:34:23'),(8,7,'Fezaco','Другое','5',NULL,763,NULL,'2021-01-19 22:34:23'),(9,8,'Jevemm','Другое','8',NULL,32,NULL,'2021-01-19 22:34:23'),(10,9,'Gesha','Посуда','7',NULL,243,NULL,'2021-01-19 22:34:23'),(11,10,'Dabie','Другое','7',NULL,64,NULL,'2021-01-19 22:34:23');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
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
