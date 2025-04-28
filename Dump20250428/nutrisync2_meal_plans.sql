-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: nutrisync2
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `meal_plans`
--

DROP TABLE IF EXISTS `meal_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meal_plans` (
  `plan_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `recipe_id` int DEFAULT NULL,
  `meal_date` date NOT NULL,
  `meal_type` enum('breakfast','lunch','dinner','snack') NOT NULL,
  `calories` int NOT NULL,
  `protein` decimal(5,2) DEFAULT NULL,
  `carbs` decimal(5,2) DEFAULT NULL,
  `fats` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`plan_id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `meal_plans_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meal_plans`
--

LOCK TABLES `meal_plans` WRITE;
/*!40000 ALTER TABLE `meal_plans` DISABLE KEYS */;
INSERT INTO `meal_plans` VALUES (53,1,NULL,'2025-04-28','breakfast',380,9.00,0.00,8.00,'2025-04-28 19:55:02'),(54,1,NULL,'2025-04-28','lunch',412,18.00,0.00,4.00,'2025-04-28 19:55:02'),(55,1,NULL,'2025-04-28','dinner',942,21.00,0.00,52.00,'2025-04-28 19:55:02'),(56,1,238,'2025-04-29','breakfast',430,11.00,0.00,2.00,'2025-04-28 19:55:02'),(57,1,NULL,'2025-04-29','lunch',407,15.00,0.00,9.00,'2025-04-28 19:55:02'),(58,1,257,'2025-04-29','dinner',942,21.00,0.00,52.00,'2025-04-28 19:55:02'),(59,1,NULL,'2025-04-30','breakfast',423,4.00,0.00,17.00,'2025-04-28 19:55:02'),(60,1,NULL,'2025-04-30','lunch',465,20.00,0.00,7.00,'2025-04-28 19:55:03'),(61,1,NULL,'2025-04-30','dinner',921,33.00,0.00,39.00,'2025-04-28 19:55:03'),(62,1,NULL,'2025-05-01','breakfast',466,5.00,0.00,31.00,'2025-04-28 19:55:03'),(63,1,NULL,'2025-05-01','lunch',828,36.00,0.00,30.00,'2025-04-28 19:55:03'),(64,1,NULL,'2025-05-01','dinner',486,15.00,0.00,4.00,'2025-04-28 19:55:03'),(65,1,NULL,'2025-05-02','breakfast',464,15.00,0.00,14.00,'2025-04-28 19:55:03'),(66,1,NULL,'2025-05-02','lunch',556,16.00,0.00,14.00,'2025-04-28 19:55:03'),(67,1,NULL,'2025-05-02','dinner',709,23.00,0.00,35.00,'2025-04-28 19:55:04'),(68,1,NULL,'2025-05-03','breakfast',427,7.00,0.00,26.00,'2025-04-28 19:55:04'),(69,1,NULL,'2025-05-03','lunch',773,32.00,0.00,24.00,'2025-04-28 19:55:04'),(70,1,NULL,'2025-05-03','dinner',575,19.00,0.00,11.00,'2025-04-28 19:55:04'),(71,1,259,'2025-05-04','breakfast',423,4.00,0.00,17.00,'2025-04-28 19:55:04'),(72,1,266,'2025-05-04','lunch',556,16.00,0.00,14.00,'2025-04-28 19:55:04'),(73,1,NULL,'2025-05-04','dinner',805,29.00,0.00,34.00,'2025-04-28 19:55:04');
/*!40000 ALTER TABLE `meal_plans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-28 16:03:58
