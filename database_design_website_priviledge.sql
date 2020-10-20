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
-- Table structure for table `website_priviledge`
--

DROP TABLE IF EXISTS `website_priviledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_priviledge` (
  `id` int NOT NULL,
  `priviledge` varchar(45) NOT NULL,
  `website_id` int NOT NULL,
  `developer_id` int NOT NULL,
  PRIMARY KEY (`id`,`priviledge`,`website_id`,`developer_id`),
  KEY `website_priviledge_2_website_idx` (`website_id`),
  KEY `website_priviledge_2_developer_idx` (`developer_id`),
  CONSTRAINT `website_priviledge_2_developer` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`id`),
  CONSTRAINT `website_priviledge_2_website` FOREIGN KEY (`website_id`) REFERENCES `website` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_priviledge`
--

LOCK TABLES `website_priviledge` WRITE;
/*!40000 ALTER TABLE `website_priviledge` DISABLE KEYS */;
INSERT INTO `website_priviledge` VALUES (0,'delete',123,1),(0,'read',123,1),(0,'update',123,1),(0,'write',123,1),(66,'read',123,1),(66,'update',123,1),(67,'delete',123,1),(67,'read',123,1),(67,'update',123,1),(67,'write',123,1),(119,'delete',123,1),(119,'read',123,1),(119,'update',123,1),(119,'write',123,1),(120,'read',123,1),(120,'update',123,1),(121,'delete',123,1),(121,'read',123,1),(121,'update',123,1),(121,'write',123,1),(68,'delete',234,2),(68,'read',234,2),(68,'update',234,2),(68,'write',234,2),(69,'read',234,2),(69,'update',234,2),(70,'delete',234,2),(70,'read',234,2),(70,'update',234,2),(70,'write',234,2),(122,'delete',234,2),(122,'read',234,2),(122,'update',234,2),(122,'write',234,2),(123,'read',234,2),(123,'update',234,2),(124,'delete',234,2),(124,'read',234,2),(124,'update',234,2),(124,'write',234,2),(71,'delete',345,3),(71,'read',345,3),(71,'update',345,3),(71,'write',345,3),(72,'read',345,3),(72,'update',345,3),(73,'delete',345,3),(73,'read',345,3),(73,'update',345,3),(73,'write',345,3),(125,'delete',345,3),(125,'read',345,3),(125,'update',345,3),(125,'write',345,3),(126,'read',345,3),(126,'update',345,3),(127,'delete',345,3),(127,'read',345,3),(127,'update',345,3),(127,'write',345,3),(74,'delete',456,1),(74,'read',456,1),(74,'update',456,1),(74,'write',456,1),(75,'read',456,1),(75,'update',456,1),(76,'delete',456,1),(76,'read',456,1),(76,'update',456,1),(76,'write',456,1),(128,'delete',456,1),(128,'read',456,1),(128,'update',456,1),(128,'write',456,1),(129,'read',456,1),(129,'update',456,1),(130,'delete',456,1),(130,'read',456,1),(130,'update',456,1),(130,'write',456,1),(77,'delete',567,2),(77,'read',567,2),(77,'update',567,2),(77,'write',567,2),(78,'read',567,2),(78,'update',567,2),(79,'delete',567,2),(79,'read',567,2),(79,'update',567,2),(79,'write',567,2),(131,'delete',567,2),(131,'read',567,2),(131,'update',567,2),(131,'write',567,2),(132,'read',567,2),(132,'update',567,2),(133,'delete',567,2),(133,'read',567,2),(133,'update',567,2),(133,'write',567,2),(80,'delete',678,3),(80,'read',678,3),(80,'update',678,3),(80,'write',678,3),(81,'read',678,3),(81,'update',678,3),(82,'delete',678,3),(82,'read',678,3),(82,'update',678,3),(82,'write',678,3),(134,'delete',678,3),(134,'read',678,3),(134,'update',678,3),(134,'write',678,3),(135,'read',678,3),(135,'update',678,3),(136,'delete',678,3),(136,'read',678,3),(136,'update',678,3),(136,'write',678,3);
/*!40000 ALTER TABLE `website_priviledge` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-19 22:12:00
