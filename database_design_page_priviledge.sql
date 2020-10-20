-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: database_design
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `page_priviledge`
--

DROP TABLE IF EXISTS `page_priviledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_priviledge` (
  `id` int NOT NULL,
  `priviledge` varchar(45) NOT NULL,
  `page_id` int NOT NULL,
  `developer_id` int NOT NULL,
  PRIMARY KEY (`id`,`priviledge`,`page_id`,`developer_id`),
  KEY `page_priviledge_2_page_idx` (`page_id`),
  KEY `page_priviledge_2_developer_idx` (`developer_id`),
  CONSTRAINT `page_priviledge_2_developer` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`id`),
  CONSTRAINT `page_priviledge_2_page` FOREIGN KEY (`page_id`) REFERENCES `page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_priviledge`
--

LOCK TABLES `page_priviledge` WRITE;
/*!40000 ALTER TABLE `page_priviledge` DISABLE KEYS */;
INSERT INTO `page_priviledge` VALUES (1,'read',123,1),(1,'update',123,1),(2,'read',123,1),(3,'create',123,1),(3,'read',123,1),(3,'update',123,1),(4,'read',234,2),(4,'update',234,2),(5,'read',234,2),(6,'create',234,2),(6,'read',234,2),(6,'update',234,2),(7,'read',345,3),(7,'update',345,3),(8,'read',345,3),(9,'create',345,3),(9,'read',345,3),(9,'update',345,3),(10,'read',456,1),(10,'update',456,1),(11,'read',456,1),(12,'create',456,1),(12,'read',456,1),(12,'update',456,1),(13,'read',567,2),(13,'update',567,2),(14,'read',567,2),(15,'create',567,2),(15,'read',567,2),(15,'update',567,2);
/*!40000 ALTER TABLE `page_priviledge` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-19 22:12:03
