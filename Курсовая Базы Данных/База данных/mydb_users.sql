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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(145) NOT NULL,
  `lastname` varchar(145) NOT NULL,
  `phone_number` bigint unsigned NOT NULL,
  `email` varchar(145) NOT NULL,
  `password_hash` char(65) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_number_UNIQUE` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Gregor','Lert',79950942992,'ponehukess-6355@yopmail.com','sha1(1234@gmail.com)'),(2,'Angel ','William ',79050591457,'ottollefiv-7105@yopmail.com','sha1(ottollefiv-7105@yopmail.com)'),(3,'Jayden ','Hall',74458917962,'ossahube-2083@yopmail.com','sha1(ossahube-2083@yopmail.com)'),(4,'Cody ','Miller',79552849118,'umytajaka-2536@yopmail.com','sha1(umytajaka-2536@yopmail.com)'),(5,'Jeremiah ','Taylor',74950259270,'abobabuv-9446@yopmail.com','sha1(abobabuv-9446@yopmail.com)'),(6,'Paige ','Jackson',749523037518,'ykebiso-6388@yopmail.com','sha1(ykebiso-6388@yopmail.com)'),(7,'Jenna ','Richardson',79051910643,'ruregoxalli-9064@yopmail.com','sha1(ruregoxalli-9064@yopmail.com)'),(8,'Mackenzie ','Ross',74953885967,'affoqamuwa-4823@yopmail.com','sha1(affoqamuwa-4823@yopmail.com)'),(9,'Aaliyah ','Garcia',79039301113,'uqiviwa-9789@yopmail.com','sha1(uqiviwa-9789@yopmail.com)'),(10,'Riley ','Henderson',74951716990,'appuhotunn-9113@yopmail.com','sha1(appuhotunn-9113@yopmail.com)');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
