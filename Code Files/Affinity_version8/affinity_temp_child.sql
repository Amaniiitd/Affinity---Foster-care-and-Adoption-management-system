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
-- Table structure for table `temp_child`
--

DROP TABLE IF EXISTS `temp_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp_child` (
  `child_ID` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `sex` enum('M','F','O') DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `blood_group` enum('A+','A-','B+','B-','AB+','AB-','O+','O-','Other') DEFAULT NULL,
  `skin_color` varchar(20) DEFAULT NULL,
  `biological_parent1_first_name` varchar(50) DEFAULT NULL,
  `biological_parent1_last_name` varchar(50) DEFAULT NULL,
  `biological_parent2_first_name` varchar(50) DEFAULT NULL,
  `biological_parent2_last_name` varchar(50) DEFAULT NULL,
  `medical_condition` enum('none','mentally challenged','physically challenged','both') DEFAULT NULL,
  `renouncer_ID` int NOT NULL,
  PRIMARY KEY (`child_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_child`
--

LOCK TABLES `temp_child` WRITE;
/*!40000 ALTER TABLE `temp_child` DISABLE KEYS */;
INSERT INTO `temp_child` VALUES (100103,'Ravi','Kissan','2016-04-05','M','Sikhism','A+','pale','Franny','Brandenburg','Katharine','Brandenburg','none',600005),(100104,'abc','def','2019-02-03','F','Hinduism','A-','pale','Charley','McLugaish','Teddie','McLugaish','none',600016),(100105,'Ram','P','2019-02-03','M','Sikhism','A-','pale','Charley','McLugaish','Teddie','McLugaish','none',600016),(100106,'Shyam','P','2018-04-05','M','Sikhism','B+','pale','Charley','McLugaish','Teddie','McLugaish','none',600016),(100107,'Ram','K','2019-02-02','M','Hinduism','A-','pale','Ignatius','Beeswing','Donnie','Beeswing','none',600007),(100108,'Shyam','K','2017-03-04','M','Hinduism','A-','pale','Ignatius','Beeswing','Donnie','Beeswing','none',600007),(100109,'Ram','Kishan','2018-03-02','M','Hinduism','AB+','wheatish','Shyam','Kishan','Sita','Kishan','none',700017);
/*!40000 ALTER TABLE `temp_child` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-18 19:19:23
