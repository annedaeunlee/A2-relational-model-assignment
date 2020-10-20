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
-- Temporary view structure for view `developer_roles_and_privileges`
--

DROP TABLE IF EXISTS `developer_roles_and_privileges`;
/*!50001 DROP VIEW IF EXISTS `developer_roles_and_privileges`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `developer_roles_and_privileges` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `username`,
 1 AS `email`,
 1 AS `name`,
 1 AS `visits`,
 1 AS `updated`,
 1 AS `w_role`,
 1 AS `w_priviledge`,
 1 AS `title`,
 1 AS `views`,
 1 AS `p_priviledge`,
 1 AS `p_role`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `developer_roles_and_privileges`
--

/*!50001 DROP VIEW IF EXISTS `developer_roles_and_privileges`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `developer_roles_and_privileges` AS select `person`.`first_name` AS `first_name`,`person`.`last_name` AS `last_name`,`person`.`username` AS `username`,`person`.`email` AS `email`,`website`.`name` AS `name`,`website`.`visits` AS `visits`,`website`.`updated` AS `updated`,`website_role`.`role` AS `w_role`,`website_priviledge`.`priviledge` AS `w_priviledge`,`page`.`title` AS `title`,`page`.`views` AS `views`,`page_priviledge`.`priviledge` AS `p_priviledge`,`page_role`.`role` AS `p_role` from (((((((`person` join `developer` on((`developer`.`id` = `person`.`id`))) join `website_role` on((`person`.`id` = `website_role`.`developer_id`))) join `website` on((`website`.`id` = `website_role`.`website_id`))) join `website_priviledge` on(((`website_priviledge`.`website_id` = `website`.`id`) and (`developer`.`id` = `website_priviledge`.`developer_id`)))) join `page` on((`page`.`website_id` = `website`.`id`))) join `page_role` on(((`page_role`.`page_id` = `page`.`id`) and (`page_role`.`developer_id` = `person`.`id`)))) join `page_priviledge` on(((`page_priviledge`.`page_id` = `page`.`id`) and (`page_priviledge`.`developer_id` = `person`.`id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-19 22:12:23
