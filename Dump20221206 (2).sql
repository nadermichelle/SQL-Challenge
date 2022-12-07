-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: challenge
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `marketing_data`
--

DROP TABLE IF EXISTS `marketing_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketing_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `geo` varchar(2) DEFAULT NULL,
  `impressions` float DEFAULT NULL,
  `clicks` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketing_data`
--

LOCK TABLES `marketing_data` WRITE;
/*!40000 ALTER TABLE `marketing_data` DISABLE KEYS */;
INSERT INTO `marketing_data` VALUES (1,'2016-01-01 00:00:00','TX',2532,45),(2,'2016-01-01 00:00:00','CA',3425,63),(3,'2016-01-01 00:00:00','NY',3532,25),(4,'2016-01-01 00:00:00','MN',1342,784),(5,'2016-01-02 00:00:00','TX',3643,23),(6,'2016-01-02 00:00:00','CA',1354,53),(7,'2016-01-02 00:00:00','NY',4643,85),(8,'2016-01-02 00:00:00','MN',2366,85),(9,'2016-01-03 00:00:00','TX',2353,57),(10,'2016-01-03 00:00:00','CA',5258,36),(11,'2016-01-03 00:00:00','NY',4735,63),(12,'2016-01-03 00:00:00','MN',5783,87),(13,'2016-01-04 00:00:00','TX',5783,47),(14,'2016-01-04 00:00:00','CA',7854,85),(15,'2016-01-04 00:00:00','NY',4754,36),(16,'2016-01-04 00:00:00','MN',9345,24),(17,'2016-01-05 00:00:00','TX',2535,63),(18,'2016-01-05 00:00:00','CA',4678,73),(19,'2016-01-05 00:00:00','NY',2364,33),(20,'2016-01-05 00:00:00','MN',3452,25);
/*!40000 ALTER TABLE `marketing_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_revenue`
--

DROP TABLE IF EXISTS `store_revenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_revenue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `store_location` varchar(250) DEFAULT NULL,
  `revenue` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_revenue`
--

LOCK TABLES `store_revenue` WRITE;
/*!40000 ALTER TABLE `store_revenue` DISABLE KEYS */;
INSERT INTO `store_revenue` VALUES (1,'2016-01-01 00:00:00',1,'United States-CA',100),(2,'2016-01-01 00:00:00',1,'United States-TX',420),(3,'2016-01-01 00:00:00',1,'United States-NY',142),(4,'2016-01-02 00:00:00',1,'United States-CA',231),(5,'2016-01-02 00:00:00',1,'United States-TX',2342),(6,'2016-01-02 00:00:00',1,'United States-NY',232),(7,'2016-01-03 00:00:00',1,'United States-CA',100),(8,'2016-01-03 00:00:00',1,'United States-TX',420),(9,'2016-01-03 00:00:00',1,'United States-NY',3245),(10,'2016-01-04 00:00:00',1,'United States-CA',34),(11,'2016-01-04 00:00:00',1,'United States-TX',3),(12,'2016-01-04 00:00:00',1,'United States-NY',54),(13,'2016-01-05 00:00:00',1,'United States-CA',45),(14,'2016-01-05 00:00:00',1,'United States-TX',423),(15,'2016-01-05 00:00:00',1,'United States-NY',234),(16,'2016-01-01 00:00:00',2,'United States-CA',234),(17,'2016-01-01 00:00:00',2,'United States-TX',234),(18,'2016-01-01 00:00:00',2,'United States-NY',142),(19,'2016-01-02 00:00:00',2,'United States-CA',234),(20,'2016-01-02 00:00:00',2,'United States-TX',3423),(21,'2016-01-02 00:00:00',2,'United States-NY',2342),(22,'2016-01-03 00:00:00',2,'United States-CA',234234),(23,'2016-01-06 00:00:00',3,'United States-TX',3),(24,'2016-01-03 00:00:00',2,'United States-TX',3),(25,'2016-01-03 00:00:00',2,'United States-NY',234),(26,'2016-01-04 00:00:00',2,'United States-CA',2),(27,'2016-01-04 00:00:00',2,'United States-TX',2354),(28,'2016-01-04 00:00:00',2,'United States-NY',45235),(29,'2016-01-05 00:00:00',2,'United States-CA',23),(30,'2016-01-05 00:00:00',2,'United States-TX',4),(31,'2016-01-05 00:00:00',2,'United States-NY',124);
/*!40000 ALTER TABLE `store_revenue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 20:57:43
