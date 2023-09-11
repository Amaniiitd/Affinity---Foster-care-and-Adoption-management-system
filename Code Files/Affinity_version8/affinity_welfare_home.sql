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
-- Table structure for table `welfare_home`
--

DROP TABLE IF EXISTS `welfare_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `welfare_home` (
  `welfare_home_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `house_no` varchar(100) DEFAULT '',
  `locality` varchar(50) DEFAULT '',
  `pin_code` int NOT NULL,
  `state` varchar(40) NOT NULL,
  `contact_details` varchar(15) DEFAULT NULL,
  `head_incharge_first_name` varchar(50) DEFAULT '',
  `head_incharge_last_name` varchar(50) DEFAULT '',
  `max_capacity` int NOT NULL,
  `current_capacity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`welfare_home_ID`),
  UNIQUE KEY `contact_details` (`contact_details`),
  CONSTRAINT `welfare_home_chk_1` CHECK ((`pin_code` > 0)),
  CONSTRAINT `welfare_home_chk_2` CHECK ((`max_capacity` > 0)),
  CONSTRAINT `welfare_home_chk_3` CHECK (((`current_capacity` >= 0) and (`current_capacity` <= `max_capacity`)))
) ENGINE=InnoDB AUTO_INCREMENT=500021 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `welfare_home`
--

LOCK TABLES `welfare_home` WRITE;
/*!40000 ALTER TABLE `welfare_home` DISABLE KEYS */;
INSERT INTO `welfare_home` VALUES (500001,'Destiny Gardens Home','218-1255 Id Road','Ujjain',206412,'Madhya Pradesh','+91 2263924982','Anupama','Khan',22,5),(500002,'Family Circle Orphanage','3318 Eleifend Avenue','Munger',579701,'Bihar','+91 1522992326','Ilaiyavan','Jain',12,2),(500003,'Little Talents Home','468-3917 Nulla St.','Hathras',627491,'Uttar Pradesh','+91 7534364328','Abhiprithi','Khan',16,4),(500004,'Junior Angel Home','620-4915 Nulla St.','Sasaram',201030,'Bihar','+91 1368543241','Sarasvat','Jain',13,5),(500005,'New Life Orphan Home','7534 Nullam St.','Champdani',877843,'West Bengal','+91 1842296688','Tripti','Singh',21,3),(500006,'New Connections Orphanage','760-3644 Odio Street','Harkesh Nagar',384927,'West Bengal','+91 4191779318','Kalith','Kumar',23,4),(500007,'Sweet Children Home','Ap #918-4915 Ligula Rd.','Hyderabad',936839,'Andhra Pradesh','+91 6591471199','Kirti','Khan',14,4),(500008,'White Orchid Home','P.O. Box 228, 5849 Posuere St.','Kanpur',660190,'Uttar Pradesh','+91 5785144092','Chanyana','Khan',24,3),(500009,'North Star Orphanage','3136 Pede, Avenue','Rajahmundry',103119,'Andhra Pradesh','+91 9402688651','Sitikantha','Jain',21,3),(500010,'United Voices Orphan Home','P.O. Box 801, 6950 Dui. Avenue','Navsari',316792,'Gujarat','+91 5996288579','Vasu','Kumar',20,4),(500011,'Humble Bee Home','600-526 Orci, Ave','Erode',622267,'Tamil Nadu','+91 9201421705','Neelanjan','Jain',22,3),(500012,'Junior Angel Orphanage','P.O. Box 511, 6708 Luctus Ave','Nandyal',240441,'Andhra Pradesh','+91 9147318709','Theeran','Ismail',11,2),(500013,'Eagle\'s Nest Orphan Home','7289 Ipsum Av.','Sangli',298402,'Maharastra','+91 1286009977','Selvan','Kumar',12,3),(500014,'New Life Orphan Home','P.O. Box 609, 5296 Donec Av.','Morvi',358221,'Gujarat','+91 2649612953','Kalavati','Ismail',20,5),(500015,'Grand Tree Orphanage','5323 Ut St.','Guntur',861790,'Andhra Pradesh','+91 0611592407','Satyavati','Patel',10,5),(500016,'Little Talents Orphan Home','758-2287 Nisi St.','Bhopal',459615,'Madhya Pradesh','+91 9807497106','Arshad','Jain',14,4),(500017,'Rose Petals Orphan Home','Ap #296-7920 Lacinia Av.','Jamnagar',131789,'Gujarat','+91 1119467360','Anunitha','Jain',12,5),(500018,'We Care Orphanage','2738 Et, Avenue','Bhubaneswar',892717,'Odisha','+91 6558334471','Lola','Jain',13,3),(500019,'Little Miracles Orphan Home','390-4511 Eget, Rd.','Rajahmundry',920167,'Andhra Pradesh','+91 2410034389','Jaidayal','Raj',12,4),(500020,'First Light Orphan Home','Ap #166-1643 Dignissim St.','Tonk',839719,'Rajasthan','+91 3263332550','Shalin','Ismail',17,1);
/*!40000 ALTER TABLE `welfare_home` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `welfare_home_BEFORE_DELETE` BEFORE DELETE ON `welfare_home` FOR EACH ROW BEGIN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'table welfare_home does not support deletion';
END */;;
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

-- Dump completed on 2021-04-18 19:19:22
