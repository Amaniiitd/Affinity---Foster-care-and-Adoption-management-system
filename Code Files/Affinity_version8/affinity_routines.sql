-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: affinity
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Temporary view structure for view `child_view`
--

DROP TABLE IF EXISTS `child_view`;
/*!50001 DROP VIEW IF EXISTS `child_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `child_view` AS SELECT 
 1 AS `child_ID`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `date_of_birth`,
 1 AS `sex`,
 1 AS `religion`,
 1 AS `blood_group`,
 1 AS `skin_color`,
 1 AS `biological_parent1_first_name`,
 1 AS `biological_parent1_last_name`,
 1 AS `biological_parent2_first_name`,
 1 AS `biological_parent2_last_name`,
 1 AS `status`,
 1 AS `medical_condition`,
 1 AS `name`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `welfare_home_view`
--

DROP TABLE IF EXISTS `welfare_home_view`;
/*!50001 DROP VIEW IF EXISTS `welfare_home_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `welfare_home_view` AS SELECT 
 1 AS `welfare_home_ID`,
 1 AS `name`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `head_incharge_first_name`,
 1 AS `head_incharge_last_name`,
 1 AS `max_capacity`,
 1 AS `current_capacity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `own_temp_child_view`
--

DROP TABLE IF EXISTS `own_temp_child_view`;
/*!50001 DROP VIEW IF EXISTS `own_temp_child_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `own_temp_child_view` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `date_of_birth`,
 1 AS `sex`,
 1 AS `religion`,
 1 AS `blood_group`,
 1 AS `skin_color`,
 1 AS `biological_parent1_first_name`,
 1 AS `biological_parent1_last_name`,
 1 AS `biological_parent2_first_name`,
 1 AS `biological_parent2_last_name`,
 1 AS `medical_condition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `welfare_home_donation`
--

DROP TABLE IF EXISTS `welfare_home_donation`;
/*!50001 DROP VIEW IF EXISTS `welfare_home_donation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `welfare_home_donation` AS SELECT 
 1 AS `T_ID`,
 1 AS `d_date`,
 1 AS `amount`,
 1 AS `method`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `child_sibling_view`
--

DROP TABLE IF EXISTS `child_sibling_view`;
/*!50001 DROP VIEW IF EXISTS `child_sibling_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `child_sibling_view` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `date_of_birth`,
 1 AS `sex`,
 1 AS `religion`,
 1 AS `blood_group`,
 1 AS `skin_color`,
 1 AS `status`,
 1 AS `medical_condition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `welfare_home_children`
--

DROP TABLE IF EXISTS `welfare_home_children`;
/*!50001 DROP VIEW IF EXISTS `welfare_home_children`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `welfare_home_children` AS SELECT 
 1 AS `child_ID`,
 1 AS `welfare_home_ID`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `date_of_birth`,
 1 AS `sex`,
 1 AS `religion`,
 1 AS `blood_group`,
 1 AS `skin_color`,
 1 AS `biological_parent1_first_name`,
 1 AS `biological_parent1_last_name`,
 1 AS `biological_parent2_first_name`,
 1 AS `biological_parent2_last_name`,
 1 AS `status`,
 1 AS `medical_condition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `own_child_view_ga`
--

DROP TABLE IF EXISTS `own_child_view_ga`;
/*!50001 DROP VIEW IF EXISTS `own_child_view_ga`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `own_child_view_ga` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `date_of_birth`,
 1 AS `sex`,
 1 AS `religion`,
 1 AS `blood_group`,
 1 AS `skin_color`,
 1 AS `biological_parent1_first_name`,
 1 AS `biological_parent1_last_name`,
 1 AS `biological_parent2_first_name`,
 1 AS `biological_parent2_last_name`,
 1 AS `status`,
 1 AS `medical_condition`,
 1 AS `name`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bd_view`
--

DROP TABLE IF EXISTS `bd_view`;
/*!50001 DROP VIEW IF EXISTS `bd_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bd_view` AS SELECT 
 1 AS `cr_ID`,
 1 AS `bd1_first_name`,
 1 AS `bd1_last_name`,
 1 AS `bd2_first_name`,
 1 AS `bd2_last_name`,
 1 AS `bd1_dob`,
 1 AS `bd2_dob`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `own_child_view_fp`
--

DROP TABLE IF EXISTS `own_child_view_fp`;
/*!50001 DROP VIEW IF EXISTS `own_child_view_fp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `own_child_view_fp` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `date_of_birth`,
 1 AS `sex`,
 1 AS `religion`,
 1 AS `blood_group`,
 1 AS `skin_color`,
 1 AS `biological_parent1_first_name`,
 1 AS `biological_parent1_last_name`,
 1 AS `biological_parent2_first_name`,
 1 AS `biological_parent2_last_name`,
 1 AS `medical_condition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ap_view`
--

DROP TABLE IF EXISTS `ap_view`;
/*!50001 DROP VIEW IF EXISTS `ap_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ap_view` AS SELECT 
 1 AS `ap_ID`,
 1 AS `ap1_first_name`,
 1 AS `ap1_last_name`,
 1 AS `ap2_first_name`,
 1 AS `ap2_last_name`,
 1 AS `ap1_dob`,
 1 AS `ap2_dob`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `income_per_annum`,
 1 AS `preference`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `child_adopt_view`
--

DROP TABLE IF EXISTS `child_adopt_view`;
/*!50001 DROP VIEW IF EXISTS `child_adopt_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `child_adopt_view` AS SELECT 
 1 AS `ap1_first_name`,
 1 AS `ap1_last_name`,
 1 AS `ap2_first_name`,
 1 AS `ap2_last_name`,
 1 AS `ap1_dob`,
 1 AS `ap2_dob`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `income_per_annum`,
 1 AS `preference`,
 1 AS `a_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `temp_ga_view1`
--

DROP TABLE IF EXISTS `temp_ga_view1`;
/*!50001 DROP VIEW IF EXISTS `temp_ga_view1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `temp_ga_view1` AS SELECT 
 1 AS `cr_ID`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ga_view`
--

DROP TABLE IF EXISTS `ga_view`;
/*!50001 DROP VIEW IF EXISTS `ga_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ga_view` AS SELECT 
 1 AS `cr_ID`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `own_child_view_bd`
--

DROP TABLE IF EXISTS `own_child_view_bd`;
/*!50001 DROP VIEW IF EXISTS `own_child_view_bd`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `own_child_view_bd` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `date_of_birth`,
 1 AS `sex`,
 1 AS `religion`,
 1 AS `blood_group`,
 1 AS `skin_color`,
 1 AS `biological_parent1_first_name`,
 1 AS `biological_parent1_last_name`,
 1 AS `biological_parent2_first_name`,
 1 AS `biological_parent2_last_name`,
 1 AS `status`,
 1 AS `medical_condition`,
 1 AS `name`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `welfare_home_adopts`
--

DROP TABLE IF EXISTS `welfare_home_adopts`;
/*!50001 DROP VIEW IF EXISTS `welfare_home_adopts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `welfare_home_adopts` AS SELECT 
 1 AS `ap_ID`,
 1 AS `a_date`,
 1 AS `ap1_first_name`,
 1 AS `ap1_last_name`,
 1 AS `ap2_first_name`,
 1 AS `ap2_last_name`,
 1 AS `contact_details`,
 1 AS `child_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `temp_bd_view1`
--

DROP TABLE IF EXISTS `temp_bd_view1`;
/*!50001 DROP VIEW IF EXISTS `temp_bd_view1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `temp_bd_view1` AS SELECT 
 1 AS `cr_ID`,
 1 AS `bd1_first_name`,
 1 AS `bd1_last_name`,
 1 AS `bd2_first_name`,
 1 AS `bd2_last_name`,
 1 AS `bd1_dob`,
 1 AS `bd2_dob`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fp_view`
--

DROP TABLE IF EXISTS `fp_view`;
/*!50001 DROP VIEW IF EXISTS `fp_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fp_view` AS SELECT 
 1 AS `fp_ID`,
 1 AS `fp1_first_name`,
 1 AS `fp1_last_name`,
 1 AS `fp2_first_name`,
 1 AS `fp2_last_name`,
 1 AS `fp1_dob`,
 1 AS `fp2_dob`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `income_per_annum`,
 1 AS `preference`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `child_foster_view`
--

DROP TABLE IF EXISTS `child_foster_view`;
/*!50001 DROP VIEW IF EXISTS `child_foster_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `child_foster_view` AS SELECT 
 1 AS `fp1_first_name`,
 1 AS `fp1_last_name`,
 1 AS `fp2_first_name`,
 1 AS `fp2_last_name`,
 1 AS `fp1_dob`,
 1 AS `fp2_dob`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `income_per_annum`,
 1 AS `preference`,
 1 AS `f_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `own_child_view_ap`
--

DROP TABLE IF EXISTS `own_child_view_ap`;
/*!50001 DROP VIEW IF EXISTS `own_child_view_ap`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `own_child_view_ap` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `date_of_birth`,
 1 AS `sex`,
 1 AS `religion`,
 1 AS `blood_group`,
 1 AS `skin_color`,
 1 AS `biological_parent1_first_name`,
 1 AS `biological_parent1_last_name`,
 1 AS `biological_parent2_first_name`,
 1 AS `biological_parent2_last_name`,
 1 AS `medical_condition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `own_allowances`
--

DROP TABLE IF EXISTS `own_allowances`;
/*!50001 DROP VIEW IF EXISTS `own_allowances`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `own_allowances` AS SELECT 
 1 AS `name`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `T_ID`,
 1 AS `al_date`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `own_child_welfare_home_ap`
--

DROP TABLE IF EXISTS `own_child_welfare_home_ap`;
/*!50001 DROP VIEW IF EXISTS `own_child_welfare_home_ap`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `own_child_welfare_home_ap` AS SELECT 
 1 AS `name`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `first_name`,
 1 AS `last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `their_donation_view`
--

DROP TABLE IF EXISTS `their_donation_view`;
/*!50001 DROP VIEW IF EXISTS `their_donation_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `their_donation_view` AS SELECT 
 1 AS `T_ID`,
 1 AS `d_date`,
 1 AS `amount`,
 1 AS `method`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `only_child`
--

DROP TABLE IF EXISTS `only_child`;
/*!50001 DROP VIEW IF EXISTS `only_child`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `only_child` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `AGE`,
 1 AS `sex`,
 1 AS `religion`,
 1 AS `blood_group`,
 1 AS `skin_color`,
 1 AS `medical_condition`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `temp_fp_view1`
--

DROP TABLE IF EXISTS `temp_fp_view1`;
/*!50001 DROP VIEW IF EXISTS `temp_fp_view1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `temp_fp_view1` AS SELECT 
 1 AS `fp_ID`,
 1 AS `fp1_first_name`,
 1 AS `fp1_last_name`,
 1 AS `fp2_first_name`,
 1 AS `fp2_last_name`,
 1 AS `fp1_dob`,
 1 AS `fp2_dob`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `income_per_annum`,
 1 AS `preference`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `temp_ap_view1`
--

DROP TABLE IF EXISTS `temp_ap_view1`;
/*!50001 DROP VIEW IF EXISTS `temp_ap_view1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `temp_ap_view1` AS SELECT 
 1 AS `ap_ID`,
 1 AS `ap1_first_name`,
 1 AS `ap1_last_name`,
 1 AS `ap2_first_name`,
 1 AS `ap2_last_name`,
 1 AS `ap1_dob`,
 1 AS `ap2_dob`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `income_per_annum`,
 1 AS `preference`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `welfare_home_allowance`
--

DROP TABLE IF EXISTS `welfare_home_allowance`;
/*!50001 DROP VIEW IF EXISTS `welfare_home_allowance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `welfare_home_allowance` AS SELECT 
 1 AS `al_date`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sibling_child`
--

DROP TABLE IF EXISTS `sibling_child`;
/*!50001 DROP VIEW IF EXISTS `sibling_child`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sibling_child` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `AGE`,
 1 AS `sex`,
 1 AS `religion`,
 1 AS `blood_group`,
 1 AS `skin_color`,
 1 AS `medical_condition`,
 1 AS `sibling_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `own_child_welfare_home_fp`
--

DROP TABLE IF EXISTS `own_child_welfare_home_fp`;
/*!50001 DROP VIEW IF EXISTS `own_child_welfare_home_fp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `own_child_welfare_home_fp` AS SELECT 
 1 AS `name`,
 1 AS `house_no`,
 1 AS `locality`,
 1 AS `pin_code`,
 1 AS `state`,
 1 AS `contact_details`,
 1 AS `first_name`,
 1 AS `last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `child_view`
--

/*!50001 DROP VIEW IF EXISTS `child_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `child_view` AS select `c`.`child_ID` AS `child_ID`,`c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,`c`.`date_of_birth` AS `date_of_birth`,`c`.`sex` AS `sex`,`c`.`religion` AS `religion`,`c`.`blood_group` AS `blood_group`,`c`.`skin_color` AS `skin_color`,`c`.`biological_parent1_first_name` AS `biological_parent1_first_name`,`c`.`biological_parent1_last_name` AS `biological_parent1_last_name`,`c`.`biological_parent2_first_name` AS `biological_parent2_first_name`,`c`.`biological_parent2_last_name` AS `biological_parent2_last_name`,`c`.`status` AS `status`,`c`.`medical_condition` AS `medical_condition`,`w`.`name` AS `name`,`w`.`house_no` AS `house_no`,`w`.`locality` AS `locality`,`w`.`pin_code` AS `pin_code`,`w`.`state` AS `state`,`w`.`contact_details` AS `contact_details` from (`child` `c` join `welfare_home` `w` on((`c`.`welfare_home_ID` = `w`.`welfare_home_ID`))) where (`c`.`child_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `welfare_home_view`
--

/*!50001 DROP VIEW IF EXISTS `welfare_home_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `welfare_home_view` AS select `welfare_home`.`welfare_home_ID` AS `welfare_home_ID`,`welfare_home`.`name` AS `name`,`welfare_home`.`house_no` AS `house_no`,`welfare_home`.`locality` AS `locality`,`welfare_home`.`pin_code` AS `pin_code`,`welfare_home`.`state` AS `state`,`welfare_home`.`contact_details` AS `contact_details`,`welfare_home`.`head_incharge_first_name` AS `head_incharge_first_name`,`welfare_home`.`head_incharge_last_name` AS `head_incharge_last_name`,`welfare_home`.`max_capacity` AS `max_capacity`,`welfare_home`.`current_capacity` AS `current_capacity` from `welfare_home` where (`welfare_home`.`welfare_home_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `own_temp_child_view`
--

/*!50001 DROP VIEW IF EXISTS `own_temp_child_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `own_temp_child_view` AS select `temp_child`.`first_name` AS `first_name`,`temp_child`.`last_name` AS `last_name`,`temp_child`.`date_of_birth` AS `date_of_birth`,`temp_child`.`sex` AS `sex`,`temp_child`.`religion` AS `religion`,`temp_child`.`blood_group` AS `blood_group`,`temp_child`.`skin_color` AS `skin_color`,`temp_child`.`biological_parent1_first_name` AS `biological_parent1_first_name`,`temp_child`.`biological_parent1_last_name` AS `biological_parent1_last_name`,`temp_child`.`biological_parent2_first_name` AS `biological_parent2_first_name`,`temp_child`.`biological_parent2_last_name` AS `biological_parent2_last_name`,`temp_child`.`medical_condition` AS `medical_condition` from `temp_child` where (`temp_child`.`renouncer_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `welfare_home_donation`
--

/*!50001 DROP VIEW IF EXISTS `welfare_home_donation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `welfare_home_donation` AS select `donation`.`T_ID` AS `T_ID`,`donation`.`d_date` AS `d_date`,`donation`.`amount` AS `amount`,`donation`.`method` AS `method` from `donation` where (`donation`.`welfare_home_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `child_sibling_view`
--

/*!50001 DROP VIEW IF EXISTS `child_sibling_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `child_sibling_view` AS select `c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,`c`.`date_of_birth` AS `date_of_birth`,`c`.`sex` AS `sex`,`c`.`religion` AS `religion`,`c`.`blood_group` AS `blood_group`,`c`.`skin_color` AS `skin_color`,`c`.`status` AS `status`,`c`.`medical_condition` AS `medical_condition` from `child` `c` where `c`.`child_ID` in (select `c`.`child_ID` from `siblings` where (`siblings`.`sibling_ID` = (select `siblings`.`sibling_ID` from `siblings` where (`c`.`child_ID` = substring_index(user(),'@',1))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `welfare_home_children`
--

/*!50001 DROP VIEW IF EXISTS `welfare_home_children`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `welfare_home_children` AS select `child`.`child_ID` AS `child_ID`,`child`.`welfare_home_ID` AS `welfare_home_ID`,`child`.`first_name` AS `first_name`,`child`.`last_name` AS `last_name`,`child`.`date_of_birth` AS `date_of_birth`,`child`.`sex` AS `sex`,`child`.`religion` AS `religion`,`child`.`blood_group` AS `blood_group`,`child`.`skin_color` AS `skin_color`,`child`.`biological_parent1_first_name` AS `biological_parent1_first_name`,`child`.`biological_parent1_last_name` AS `biological_parent1_last_name`,`child`.`biological_parent2_first_name` AS `biological_parent2_first_name`,`child`.`biological_parent2_last_name` AS `biological_parent2_last_name`,`child`.`status` AS `status`,`child`.`medical_condition` AS `medical_condition` from `child` where (`child`.`welfare_home_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `own_child_view_ga`
--

/*!50001 DROP VIEW IF EXISTS `own_child_view_ga`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `own_child_view_ga` AS select `child`.`first_name` AS `first_name`,`child`.`last_name` AS `last_name`,`child`.`date_of_birth` AS `date_of_birth`,`child`.`sex` AS `sex`,`child`.`religion` AS `religion`,`child`.`blood_group` AS `blood_group`,`child`.`skin_color` AS `skin_color`,`child`.`biological_parent1_first_name` AS `biological_parent1_first_name`,`child`.`biological_parent1_last_name` AS `biological_parent1_last_name`,`child`.`biological_parent2_first_name` AS `biological_parent2_first_name`,`child`.`biological_parent2_last_name` AS `biological_parent2_last_name`,`child`.`status` AS `status`,`child`.`medical_condition` AS `medical_condition`,`welfare_home`.`name` AS `name`,`welfare_home`.`house_no` AS `house_no`,`welfare_home`.`locality` AS `locality`,`welfare_home`.`pin_code` AS `pin_code`,`welfare_home`.`state` AS `state`,`welfare_home`.`contact_details` AS `contact_details` from (`child` join `welfare_home` on((`child`.`welfare_home_ID` = `welfare_home`.`welfare_home_ID`))) where `child`.`child_ID` in (select `renounce_ga`.`child_ID` from `renounce_ga` where (`renounce_ga`.`renouncer_ID` = substring_index(user(),'@',1))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bd_view`
--

/*!50001 DROP VIEW IF EXISTS `bd_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bd_view` AS select `biological_donor`.`cr_ID` AS `cr_ID`,`biological_donor`.`bd1_first_name` AS `bd1_first_name`,`biological_donor`.`bd1_last_name` AS `bd1_last_name`,`biological_donor`.`bd2_first_name` AS `bd2_first_name`,`biological_donor`.`bd2_last_name` AS `bd2_last_name`,`biological_donor`.`bd1_dob` AS `bd1_dob`,`biological_donor`.`bd2_dob` AS `bd2_dob`,`biological_donor`.`house_no` AS `house_no`,`biological_donor`.`locality` AS `locality`,`biological_donor`.`pin_code` AS `pin_code`,`biological_donor`.`state` AS `state`,`biological_donor`.`contact_details` AS `contact_details` from `biological_donor` where (`biological_donor`.`cr_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `own_child_view_fp`
--

/*!50001 DROP VIEW IF EXISTS `own_child_view_fp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `own_child_view_fp` AS select `child`.`first_name` AS `first_name`,`child`.`last_name` AS `last_name`,`child`.`date_of_birth` AS `date_of_birth`,`child`.`sex` AS `sex`,`child`.`religion` AS `religion`,`child`.`blood_group` AS `blood_group`,`child`.`skin_color` AS `skin_color`,`child`.`biological_parent1_first_name` AS `biological_parent1_first_name`,`child`.`biological_parent1_last_name` AS `biological_parent1_last_name`,`child`.`biological_parent2_first_name` AS `biological_parent2_first_name`,`child`.`biological_parent2_last_name` AS `biological_parent2_last_name`,`child`.`medical_condition` AS `medical_condition` from `child` where `child`.`child_ID` in (select `fosters`.`child_ID` from `fosters` where (`fosters`.`fp_ID` = substring_index(user(),'@',1))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ap_view`
--

/*!50001 DROP VIEW IF EXISTS `ap_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ap_view` AS select `adoptive_parent`.`ap_ID` AS `ap_ID`,`adoptive_parent`.`ap1_first_name` AS `ap1_first_name`,`adoptive_parent`.`ap1_last_name` AS `ap1_last_name`,`adoptive_parent`.`ap2_first_name` AS `ap2_first_name`,`adoptive_parent`.`ap2_last_name` AS `ap2_last_name`,`adoptive_parent`.`ap1_dob` AS `ap1_dob`,`adoptive_parent`.`ap2_dob` AS `ap2_dob`,`adoptive_parent`.`house_no` AS `house_no`,`adoptive_parent`.`locality` AS `locality`,`adoptive_parent`.`pin_code` AS `pin_code`,`adoptive_parent`.`state` AS `state`,`adoptive_parent`.`contact_details` AS `contact_details`,`adoptive_parent`.`income_per_annum` AS `income_per_annum`,`adoptive_parent`.`preference` AS `preference` from `adoptive_parent` where (`adoptive_parent`.`ap_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `child_adopt_view`
--

/*!50001 DROP VIEW IF EXISTS `child_adopt_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `child_adopt_view` AS select `a`.`ap1_first_name` AS `ap1_first_name`,`a`.`ap1_last_name` AS `ap1_last_name`,`a`.`ap2_first_name` AS `ap2_first_name`,`a`.`ap2_last_name` AS `ap2_last_name`,`a`.`ap1_dob` AS `ap1_dob`,`a`.`ap2_dob` AS `ap2_dob`,`a`.`house_no` AS `house_no`,`a`.`locality` AS `locality`,`a`.`pin_code` AS `pin_code`,`a`.`state` AS `state`,`a`.`contact_details` AS `contact_details`,`a`.`income_per_annum` AS `income_per_annum`,`a`.`preference` AS `preference`,`adopts`.`a_date` AS `a_date` from (`adoptive_parent` `a` join `adopts` on((`adopts`.`ap_ID` = `a`.`ap_ID`))) where (`adopts`.`child_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temp_ga_view1`
--

/*!50001 DROP VIEW IF EXISTS `temp_ga_view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `temp_ga_view1` AS select `temp_govt_agency`.`cr_ID` AS `cr_ID`,`temp_govt_agency`.`house_no` AS `house_no`,`temp_govt_agency`.`locality` AS `locality`,`temp_govt_agency`.`pin_code` AS `pin_code`,`temp_govt_agency`.`state` AS `state`,`temp_govt_agency`.`contact_details` AS `contact_details`,`temp_govt_agency`.`type` AS `type` from `temp_govt_agency` where (`temp_govt_agency`.`cr_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ga_view`
--

/*!50001 DROP VIEW IF EXISTS `ga_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ga_view` AS select `govt_agency`.`cr_ID` AS `cr_ID`,`govt_agency`.`house_no` AS `house_no`,`govt_agency`.`locality` AS `locality`,`govt_agency`.`pin_code` AS `pin_code`,`govt_agency`.`state` AS `state`,`govt_agency`.`contact_details` AS `contact_details`,`govt_agency`.`type` AS `type` from `govt_agency` where (`govt_agency`.`cr_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `own_child_view_bd`
--

/*!50001 DROP VIEW IF EXISTS `own_child_view_bd`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `own_child_view_bd` AS select `child`.`first_name` AS `first_name`,`child`.`last_name` AS `last_name`,`child`.`date_of_birth` AS `date_of_birth`,`child`.`sex` AS `sex`,`child`.`religion` AS `religion`,`child`.`blood_group` AS `blood_group`,`child`.`skin_color` AS `skin_color`,`child`.`biological_parent1_first_name` AS `biological_parent1_first_name`,`child`.`biological_parent1_last_name` AS `biological_parent1_last_name`,`child`.`biological_parent2_first_name` AS `biological_parent2_first_name`,`child`.`biological_parent2_last_name` AS `biological_parent2_last_name`,`child`.`status` AS `status`,`child`.`medical_condition` AS `medical_condition`,`welfare_home`.`name` AS `name`,`welfare_home`.`house_no` AS `house_no`,`welfare_home`.`locality` AS `locality`,`welfare_home`.`pin_code` AS `pin_code`,`welfare_home`.`state` AS `state`,`welfare_home`.`contact_details` AS `contact_details` from (`child` join `welfare_home` on((`child`.`welfare_home_ID` = `welfare_home`.`welfare_home_ID`))) where `child`.`child_ID` in (select `renounce_bd`.`child_ID` from `renounce_bd` where (`renounce_bd`.`renouncer_ID` = substring_index(user(),'@',1))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `welfare_home_adopts`
--

/*!50001 DROP VIEW IF EXISTS `welfare_home_adopts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `welfare_home_adopts` AS select `a`.`ap_ID` AS `ap_ID`,`adopts`.`a_date` AS `a_date`,`a`.`ap1_first_name` AS `ap1_first_name`,`a`.`ap1_last_name` AS `ap1_last_name`,`a`.`ap2_first_name` AS `ap2_first_name`,`a`.`ap2_last_name` AS `ap2_last_name`,`a`.`contact_details` AS `contact_details`,`adopts`.`child_ID` AS `child_ID` from (`adoptive_parent` `a` join `adopts` on((`adopts`.`ap_ID` = `a`.`ap_ID`))) where `adopts`.`child_ID` in (select `child`.`child_ID` from `child` where (`child`.`welfare_home_ID` = substring_index(user(),'@',1))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temp_bd_view1`
--

/*!50001 DROP VIEW IF EXISTS `temp_bd_view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `temp_bd_view1` AS select `temp_biological_donor`.`cr_ID` AS `cr_ID`,`temp_biological_donor`.`bd1_first_name` AS `bd1_first_name`,`temp_biological_donor`.`bd1_last_name` AS `bd1_last_name`,`temp_biological_donor`.`bd2_first_name` AS `bd2_first_name`,`temp_biological_donor`.`bd2_last_name` AS `bd2_last_name`,`temp_biological_donor`.`bd1_dob` AS `bd1_dob`,`temp_biological_donor`.`bd2_dob` AS `bd2_dob`,`temp_biological_donor`.`house_no` AS `house_no`,`temp_biological_donor`.`locality` AS `locality`,`temp_biological_donor`.`pin_code` AS `pin_code`,`temp_biological_donor`.`state` AS `state`,`temp_biological_donor`.`contact_details` AS `contact_details` from `temp_biological_donor` where (`temp_biological_donor`.`cr_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fp_view`
--

/*!50001 DROP VIEW IF EXISTS `fp_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fp_view` AS select `fostering_parent`.`fp_ID` AS `fp_ID`,`fostering_parent`.`fp1_first_name` AS `fp1_first_name`,`fostering_parent`.`fp1_last_name` AS `fp1_last_name`,`fostering_parent`.`fp2_first_name` AS `fp2_first_name`,`fostering_parent`.`fp2_last_name` AS `fp2_last_name`,`fostering_parent`.`fp1_dob` AS `fp1_dob`,`fostering_parent`.`fp2_dob` AS `fp2_dob`,`fostering_parent`.`house_no` AS `house_no`,`fostering_parent`.`locality` AS `locality`,`fostering_parent`.`pin_code` AS `pin_code`,`fostering_parent`.`state` AS `state`,`fostering_parent`.`contact_details` AS `contact_details`,`fostering_parent`.`income_per_annum` AS `income_per_annum`,`fostering_parent`.`preference` AS `preference` from `fostering_parent` where (`fostering_parent`.`fp_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `child_foster_view`
--

/*!50001 DROP VIEW IF EXISTS `child_foster_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `child_foster_view` AS select `f`.`fp1_first_name` AS `fp1_first_name`,`f`.`fp1_last_name` AS `fp1_last_name`,`f`.`fp2_first_name` AS `fp2_first_name`,`f`.`fp2_last_name` AS `fp2_last_name`,`f`.`fp1_dob` AS `fp1_dob`,`f`.`fp2_dob` AS `fp2_dob`,`f`.`house_no` AS `house_no`,`f`.`locality` AS `locality`,`f`.`pin_code` AS `pin_code`,`f`.`state` AS `state`,`f`.`contact_details` AS `contact_details`,`f`.`income_per_annum` AS `income_per_annum`,`f`.`preference` AS `preference`,`fosters`.`f_date` AS `f_date` from (`fostering_parent` `f` join `fosters` on((`fosters`.`fp_ID` = `f`.`fp_ID`))) where (`fosters`.`child_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `own_child_view_ap`
--

/*!50001 DROP VIEW IF EXISTS `own_child_view_ap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `own_child_view_ap` AS select `child`.`first_name` AS `first_name`,`child`.`last_name` AS `last_name`,`child`.`date_of_birth` AS `date_of_birth`,`child`.`sex` AS `sex`,`child`.`religion` AS `religion`,`child`.`blood_group` AS `blood_group`,`child`.`skin_color` AS `skin_color`,`child`.`biological_parent1_first_name` AS `biological_parent1_first_name`,`child`.`biological_parent1_last_name` AS `biological_parent1_last_name`,`child`.`biological_parent2_first_name` AS `biological_parent2_first_name`,`child`.`biological_parent2_last_name` AS `biological_parent2_last_name`,`child`.`medical_condition` AS `medical_condition` from `child` where `child`.`child_ID` in (select `adopts`.`child_ID` from `adopts` where (`adopts`.`ap_ID` = substring_index(user(),'@',1))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `own_allowances`
--

/*!50001 DROP VIEW IF EXISTS `own_allowances`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `own_allowances` AS select `w`.`name` AS `name`,`w`.`house_no` AS `house_no`,`w`.`locality` AS `locality`,`w`.`pin_code` AS `pin_code`,`w`.`state` AS `state`,`w`.`contact_details` AS `contact_details`,`a`.`T_ID` AS `T_ID`,`a`.`al_date` AS `al_date`,`a`.`amount` AS `amount` from (`allowance` `a` join `welfare_home` `w` on((`a`.`welfare_home_ID` = `w`.`welfare_home_ID`))) where (`a`.`fp_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `own_child_welfare_home_ap`
--

/*!50001 DROP VIEW IF EXISTS `own_child_welfare_home_ap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `own_child_welfare_home_ap` AS select `welfare_home`.`name` AS `name`,`welfare_home`.`house_no` AS `house_no`,`welfare_home`.`locality` AS `locality`,`welfare_home`.`pin_code` AS `pin_code`,`welfare_home`.`state` AS `state`,`welfare_home`.`contact_details` AS `contact_details`,`child`.`first_name` AS `first_name`,`child`.`last_name` AS `last_name` from (`welfare_home` join `child` on((`welfare_home`.`welfare_home_ID` = `child`.`welfare_home_ID`))) where `child`.`child_ID` in (select `adopts`.`child_ID` from `adopts` where (`adopts`.`ap_ID` = substring_index(user(),'@',1))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `their_donation_view`
--

/*!50001 DROP VIEW IF EXISTS `their_donation_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `their_donation_view` AS select `d`.`T_ID` AS `T_ID`,`d`.`d_date` AS `d_date`,`d`.`amount` AS `amount`,`d`.`method` AS `method`,`w`.`name` AS `name` from (`donation` `d` join `welfare_home` `w` on((`w`.`welfare_home_ID` = `d`.`welfare_home_ID`))) where (`d`.`donor_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `only_child`
--

/*!50001 DROP VIEW IF EXISTS `only_child`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `only_child` AS select `child`.`first_name` AS `first_name`,`child`.`last_name` AS `last_name`,floor(((curdate() - `child`.`date_of_birth`) / 10000)) AS `AGE`,`child`.`sex` AS `sex`,`child`.`religion` AS `religion`,`child`.`blood_group` AS `blood_group`,`child`.`skin_color` AS `skin_color`,`child`.`medical_condition` AS `medical_condition` from `child` where ((`child`.`status` = 'none') and exists(select `child`.`child_ID` from `siblings` where (`siblings`.`children_ID` = `child`.`child_ID`)) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temp_fp_view1`
--

/*!50001 DROP VIEW IF EXISTS `temp_fp_view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `temp_fp_view1` AS select `temp_fostering_parent`.`fp_ID` AS `fp_ID`,`temp_fostering_parent`.`fp1_first_name` AS `fp1_first_name`,`temp_fostering_parent`.`fp1_last_name` AS `fp1_last_name`,`temp_fostering_parent`.`fp2_first_name` AS `fp2_first_name`,`temp_fostering_parent`.`fp2_last_name` AS `fp2_last_name`,`temp_fostering_parent`.`fp1_dob` AS `fp1_dob`,`temp_fostering_parent`.`fp2_dob` AS `fp2_dob`,`temp_fostering_parent`.`house_no` AS `house_no`,`temp_fostering_parent`.`locality` AS `locality`,`temp_fostering_parent`.`pin_code` AS `pin_code`,`temp_fostering_parent`.`state` AS `state`,`temp_fostering_parent`.`contact_details` AS `contact_details`,`temp_fostering_parent`.`income_per_annum` AS `income_per_annum`,`temp_fostering_parent`.`preference` AS `preference` from `temp_fostering_parent` where (`temp_fostering_parent`.`fp_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temp_ap_view1`
--

/*!50001 DROP VIEW IF EXISTS `temp_ap_view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `temp_ap_view1` AS select `temp_adoptive_parent`.`ap_ID` AS `ap_ID`,`temp_adoptive_parent`.`ap1_first_name` AS `ap1_first_name`,`temp_adoptive_parent`.`ap1_last_name` AS `ap1_last_name`,`temp_adoptive_parent`.`ap2_first_name` AS `ap2_first_name`,`temp_adoptive_parent`.`ap2_last_name` AS `ap2_last_name`,`temp_adoptive_parent`.`ap1_dob` AS `ap1_dob`,`temp_adoptive_parent`.`ap2_dob` AS `ap2_dob`,`temp_adoptive_parent`.`house_no` AS `house_no`,`temp_adoptive_parent`.`locality` AS `locality`,`temp_adoptive_parent`.`pin_code` AS `pin_code`,`temp_adoptive_parent`.`state` AS `state`,`temp_adoptive_parent`.`contact_details` AS `contact_details`,`temp_adoptive_parent`.`income_per_annum` AS `income_per_annum`,`temp_adoptive_parent`.`preference` AS `preference` from `temp_adoptive_parent` where (`temp_adoptive_parent`.`ap_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `welfare_home_allowance`
--

/*!50001 DROP VIEW IF EXISTS `welfare_home_allowance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `welfare_home_allowance` AS select `allowance`.`al_date` AS `al_date`,`allowance`.`amount` AS `amount` from `allowance` where (`allowance`.`welfare_home_ID` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sibling_child`
--

/*!50001 DROP VIEW IF EXISTS `sibling_child`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sibling_child` AS select `child`.`first_name` AS `first_name`,`child`.`last_name` AS `last_name`,floor(((curdate() - `child`.`date_of_birth`) / 10000)) AS `AGE`,`child`.`sex` AS `sex`,`child`.`religion` AS `religion`,`child`.`blood_group` AS `blood_group`,`child`.`skin_color` AS `skin_color`,`child`.`medical_condition` AS `medical_condition`,`siblings`.`sibling_ID` AS `sibling_ID` from (`child` join `siblings` on((`siblings`.`children_ID` = `child`.`child_ID`))) where (`child`.`status` = 'none') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `own_child_welfare_home_fp`
--

/*!50001 DROP VIEW IF EXISTS `own_child_welfare_home_fp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `own_child_welfare_home_fp` AS select `welfare_home`.`name` AS `name`,`welfare_home`.`house_no` AS `house_no`,`welfare_home`.`locality` AS `locality`,`welfare_home`.`pin_code` AS `pin_code`,`welfare_home`.`state` AS `state`,`welfare_home`.`contact_details` AS `contact_details`,`child`.`first_name` AS `first_name`,`child`.`last_name` AS `last_name` from (`welfare_home` join `child` on((`welfare_home`.`welfare_home_ID` = `child`.`welfare_home_ID`))) where `child`.`child_ID` in (select `fosters`.`child_ID` from `fosters` where (`fosters`.`fp_ID` = substring_index(user(),'@',1))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'affinity'
--

--
-- Dumping routines for database 'affinity'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_to_siblings_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_to_siblings_table`(IN id INT)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into affinity.siblings (select * from temp_siblings where children_ID=id);
		delete from temp_siblings where children_ID=id;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `approve_new_adoptive_parent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `approve_new_adoptive_parent`(IN id INT)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into affinity.adoptive_parent (select * from temp_adoptive_parent where ap_ID=id);
		delete from affinity.temp_adoptive_parent where ap_ID=id;
		call revoke_role(id,'temp_ap');
		call assign_role(id,'role_ap');
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `approve_new_biological_donor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `approve_new_biological_donor`(IN id INT)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into affinity.biological_donor (select * from temp_biological_donor where cr_ID=id);
		delete from affinity.temp_biological_donor where cr_ID=id;
		call revoke_role(id,'temp_bd');
		call assign_role(id,'role_biological_donor');
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `approve_new_fostering_parent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `approve_new_fostering_parent`(IN id INT)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into affinity.fostering_parent (select * from temp_fostering_parent where fp_ID=id);
		delete from affinity.temp_fostering_parent where fp_ID=id;
		call revoke_role(id,'temp_fp');
		call assign_role(id,'role_fp');
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `approve_new_govt_agency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `approve_new_govt_agency`(IN id INT)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into affinity.govt_agency (select * from temp_govt_agency where cr_ID=id);
		delete from affinity.temp_govt_agency where cr_ID=id;
		call revoke_role(id,'temp_ga');
		call assign_role(id,'role_govt_agency');
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `approve_new_welfare_home` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `approve_new_welfare_home`(IN id INT)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into affinity.welfare_home (select *,0 from temp_welfare_home where welfare_home_ID=id);
		delete from affinity.temp_welfare_home where welfare_home_ID=id;
		call revoke_role(id,'temp_wh');
		call assign_role(id,'role_welfare_home');
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `assign_role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `assign_role`(IN username int, IN role_assigned varchar(50))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		SET @RoleAssignment = CONCAT('GRANT "',role_assigned,'" TO "',username,'"@"localhost"');
			PREPARE st FROM @RoleAssignment;
			EXECUTE st;
			DEALLOCATE PREPARE st;
		SET @SetDefaultRoleToAll = CONCAT('SET DEFAULT ROLE ALL TO "',username,'"@"localhost"');
			PREPARE ts FROM @SetDefaultRoleToAll;
			EXECUTE ts;
			DEALLOCATE PREPARE ts;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `assign_welfare_home_to_child` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `assign_welfare_home_to_child`(IN id_of_child INT, IN id_of_welfare_home INT)
BEGIN
DECLARE rID INT DEFAULT 0;
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		set @rID=(select renouncer_ID from temp_child where child_ID=id_of_child);
		update affinity.welfare_home set current_capacity=current_capacity+1 where welfare_home_ID=id_of_welfare_home;
		insert into affinity.child (select child_ID,id_of_welfare_home,first_name,last_name,date_of_birth,sex,religion,blood_group,skin_color,biological_parent1_last_name,biological_parent2_first_name,biological_parent2_last_name,medical_condition from temp_child where child_ID=id_of_child);
		delete from temp_child where child_ID=id_of_child;
		if @rID in (select cr_ID from govt_agency) then
		insert into renounce_ga values(curdate(),id_of_child,@rID);
		else
		insert into renounce_bd values(curdate(),id_of_child,@rID);
		end if;
		call assign_role(id_of_child,'role_child');
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_renouncer_ID_exists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_renouncer_ID_exists`(IN r_ID int, out ret int)
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		if ((select cr_ID from biological_donor where cr_ID=r_ID) union (select cr_ID from govt_agency where cr_ID=r_ID))
		then set ret=1;
		else set ret=0;
		end if;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_user`(IN username int, IN pswd varchar(255), IN role_assigned varchar(50))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		SET @CreationOfUser = CONCAT('CREATE USER "',username,'"@"localhost" IDENTIFIED BY "',pswd,'" ');
			PREPARE st FROM @CreationOfUser;
			EXECUTE st;
			DEALLOCATE PREPARE st;
		call assign_role(username,role_assigned);
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_adoptive_parent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_adoptive_parent`(IN ap1_first_name varchar(50), IN ap1_last_name varchar(50), IN ap2_first_name varchar(50), IN ap2_last_name varchar(50), IN ap1_dob date, IN ap2_dob date, IN house_no varchar(100), IN locality varchar(50), IN pin_code int, IN state varchar(40), IN contact_details varchar(15), IN income_per_annum int, IN preference enum('none','mentally challenged','physically challenged','both'), IN pwd varchar(255))
BEGIN
DECLARE id INT DEFAULT 0;
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into visitor values ();
		set @id= (select max(visitor_id) from visitor);
		insert into user_pwd values (@id,pwd);
		insert into temp_adoptive_parent values (@id,ap1_first_name,ap1_last_name,ap2_first_name,ap2_last_name,ap1_dob,ap2_dob,house_no,locality,pin_code,state,contact_details,income_per_annum,preference);
		call create_user(@id,pwd,'temp_ap');
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_biological_donor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_biological_donor`(IN bd1_first_name varchar(50), IN bd1_last_name varchar(50), IN bd2_first_name varchar(50), IN bd2_last_name varchar(50), IN bd1_dob date, IN bd2_dob date, IN house_no varchar(100), IN locality varchar(50), IN pin_code int, IN state varchar(40), IN contact_details varchar(15), IN pwd varchar(255))
BEGIN
DECLARE id INT DEFAULT 0;
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into visitor values ();
		set @id= (select max(visitor_id) from visitor);
		insert into temp_biological_donor values (@id,bd1_first_name,bd1_last_name,bd2_first_name,bd2_last_name,bd1_dob,bd2_dob,house_no,locality,pin_code,state,contact_details);
		insert into user_pwd values (@id,pwd);
		call create_user(@id,pwd,'temp_bd');
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_child` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_child`(IN first_name varchar(50), IN last_name varchar(50), IN date_of_birth date, IN sex enum('M','F','O'), IN religion varchar(50), IN blood_group enum('A+','A-','B+','B-','AB+','AB-','O+','O-','Other'), IN skin_color varchar(20), IN biological_parent1_first_name varchar(50), IN biological_parent1_last_name varchar(50), IN biological_parent2_first_name varchar(50), IN biological_parent2_last_name varchar(50), IN medical_condition enum('none','mentally challenged','physically challenged','both'), IN renouncer_ID int)
BEGIN
insert into temp_child(first_name,last_name,date_of_birth,sex,religion,blood_group,skin_color,biological_parent1_first_name,biological_parent1_last_name,biological_parent2_first_name,biological_parent2_last_name,medical_condition,renouncer_ID) values(first_name,last_name,date_of_birth,sex,religion,blood_group,skin_color,biological_parent1_first_name,biological_parent1_last_name,biological_parent2_first_name,biological_parent2_last_name,medical_condition,renouncer_ID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_fostering_parent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_fostering_parent`(IN fp1_first_name varchar(50), IN fp1_last_name varchar(50), IN fp2_first_name varchar(50), IN fp2_last_name varchar(50), IN fp1_dob date, IN fp2_dob date, IN house_no varchar(100), IN locality varchar(50), IN pin_code int, IN state varchar(40), IN contact_details varchar(15), IN income_per_annum int, IN preference enum('none','mentally challenged','physically challenged','both'), IN pwd varchar(255))
BEGIN
DECLARE id INT DEFAULT 0;
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into visitor values ();
		set @id= (select max(visitor_id) from visitor);
		insert into user_pwd values (@id,pwd);
		insert into temp_fostering_parent values (@id,fp1_first_name,fp1_last_name,fp2_first_name,fp2_last_name,fp1_dob,fp2_dob,house_no,locality,pin_code,state,contact_details,income_per_annum,preference);
		call create_user(@id,pwd,'temp_fp');
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_govt_agency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_govt_agency`(IN house_no varchar(100), IN locality varchar(50), IN pin_code int, IN state varchar(40), IN contact_details varchar(15), IN ga_type enum('police','hospital','fire station','welfare home','NGO','other'), IN pwd varchar(255))
BEGIN
DECLARE id INT DEFAULT 0;
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into visitor values ();
		set @id= (select max(visitor_id) from visitor);
		insert into user_pwd values (@id,pwd);
		insert into temp_govt_agency values (@id,house_no,locality,pin_code,state,contact_details,ga_type);
		call create_user(@id,pwd,'temp_ga');
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_sibling_func1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_sibling_func1`(IN first_name varchar(50), IN last_name varchar(50), IN date_of_birth date, IN sex enum('M','F','O'), IN religion varchar(50), IN blood_group enum('A+','A-','B+','B-','AB+','AB-','O+','O-','Other'), IN skin_color varchar(20), IN biological_parent1_first_name varchar(50), IN biological_parent1_last_name varchar(50), IN biological_parent2_first_name varchar(50), IN biological_parent2_last_name varchar(50), IN medical_condition enum('none','mentally challenged','physically challenged','both'), IN renouncer_ID int)
BEGIN
DECLARE id INT DEFAULT 100000;
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into temp_child(first_name,last_name,date_of_birth,sex,religion,blood_group,skin_color,biological_parent1_first_name,biological_parent1_last_name,biological_parent2_first_name,biological_parent2_last_name,medical_condition,renouncer_ID) values(first_name,last_name,date_of_birth,sex,religion,blood_group,skin_color,biological_parent1_first_name,biological_parent1_last_name,biological_parent2_first_name,biological_parent2_last_name,medical_condition,renouncer_ID);
		set @id= (select GREATEST(COALESCE((select max(child_ID) from child), 100000), COALESCE((select max(child_ID) from temp_child), 100000)));
		insert into temp_siblings(children_ID) values(@id);
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_sibling_func2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_sibling_func2`(IN first_name varchar(50), IN last_name varchar(50), IN date_of_birth date, IN sex enum('M','F','O'), IN religion varchar(50), IN blood_group enum('A+','A-','B+','B-','AB+','AB-','O+','O-','Other'), IN skin_color varchar(20), IN biological_parent1_first_name varchar(50), IN biological_parent1_last_name varchar(50), IN biological_parent2_first_name varchar(50), IN biological_parent2_last_name varchar(50), IN medical_condition enum('none','mentally challenged','physically challenged','both'), IN renouncer_ID int)
BEGIN
DECLARE id INT DEFAULT 100000;
DECLARE s_ID INT DEFAULT 1;
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into temp_child(first_name,last_name,date_of_birth,sex,religion,blood_group,skin_color,biological_parent1_first_name,biological_parent1_last_name,biological_parent2_first_name,biological_parent2_last_name,medical_condition,renouncer_ID) values(first_name,last_name,date_of_birth,sex,religion,blood_group,skin_color,biological_parent1_first_name,biological_parent1_last_name,biological_parent2_first_name,biological_parent2_last_name,medical_condition,renouncer_ID);
		set @id= (select GREATEST(COALESCE((select max(child_ID) from child), 100000), COALESCE((select max(child_ID) from temp_child), 100000)));
		set @s_ID= (select max(sibling_ID) from temp_siblings);
		insert into temp_siblings values(@s_ID,@id);
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_welfare_home` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_welfare_home`(IN w_name varchar(50), IN house_no varchar(100), IN locality varchar(50), IN pin_code int, IN state varchar(40), IN contact_details varchar(15), IN head_incharge_first_name varchar(50), IN head_incharge_last_name varchar(50), IN max_capacity int, IN pwd varchar(255))
BEGIN
DECLARE id INT;
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		insert into temp_welfare_home(name,house_no,locality,pin_code,state,contact_details,head_incharge_first_name,head_incharge_last_name,max_capacity) values (w_name,coalesce(house_no,''),coalesce(locality,''),pin_code,state,contact_details,coalesce(head_incharge_first_name,''),coalesce(head_incharge_last_name,''),max_capacity);
		set @id= (select GREATEST(COALESCE((select max(welfare_home_ID) from welfare_home), 500000), COALESCE((select max(welfare_home_ID) from temp_welfare_home), 500000)));
		insert into user_pwd values (@id,pwd);
		call create_user(@id,pwd,'temp_wh');
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `revoke_role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `revoke_role`(IN username int, IN role_to_be_revoked varchar(50))
BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION, NOT FOUND, SQLWARNING
	BEGIN
        ROLLBACK;
        GET DIAGNOSTICS CONDITION 1 @`errno` = MYSQL_ERRNO, @`sqlstate` = RETURNED_SQLSTATE, @`text` = MESSAGE_TEXT;
        SET @full_error = CONCAT('ERROR ', @`errno`, ' (', @`sqlstate`, '): ', @`text`);
        SELECT @full_error;    
    END;
    START TRANSACTION;
		SET @RoleRevoke = CONCAT('REVOKE "',role_to_be_revoked,'" FROM "',username,'"@"localhost"');
			PREPARE st FROM @RoleRevoke;
			EXECUTE st;
			DEALLOCATE PREPARE st;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-18 19:19:24
