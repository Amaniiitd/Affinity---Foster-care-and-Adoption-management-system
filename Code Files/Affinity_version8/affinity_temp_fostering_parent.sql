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
-- Table structure for table `temp_fostering_parent`
--

DROP TABLE IF EXISTS `temp_fostering_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp_fostering_parent` (
  `fp_ID` int NOT NULL,
  `fp1_first_name` varchar(50) NOT NULL,
  `fp1_last_name` varchar(50) DEFAULT NULL,
  `fp2_first_name` varchar(50) NOT NULL,
  `fp2_last_name` varchar(50) DEFAULT NULL,
  `fp1_dob` date NOT NULL,
  `fp2_dob` date NOT NULL,
  `house_no` varchar(100) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `pin_code` int NOT NULL,
  `state` varchar(40) NOT NULL,
  `contact_details` varchar(15) NOT NULL,
  `income_per_annum` int DEFAULT NULL,
  `preference` enum('none','mentally challenged','physically challenged','both') NOT NULL,
  PRIMARY KEY (`fp_ID`),
  UNIQUE KEY `contact_details` (`contact_details`),
  CONSTRAINT `temp_fostering_parent_ibfk_1` FOREIGN KEY (`fp_ID`) REFERENCES `visitor` (`visitor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `temp_fostering_parent_chk_1` CHECK ((`pin_code` > 0)),
  CONSTRAINT `temp_fostering_parent_chk_2` CHECK ((`income_per_annum` >= 100000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_fostering_parent`
--

LOCK TABLES `temp_fostering_parent` WRITE;
/*!40000 ALTER TABLE `temp_fostering_parent` DISABLE KEYS */;
INSERT INTO `temp_fostering_parent` VALUES (700049,'test2','test','test','test','1990-01-01','1989-02-02','test','test',110000,'test','987654323',4000000,'none');
/*!40000 ALTER TABLE `temp_fostering_parent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-18 19:19:22
