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
-- Table structure for table `fostering_parent`
--

DROP TABLE IF EXISTS `fostering_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fostering_parent` (
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
  CONSTRAINT `fostering_parent_ibfk_1` FOREIGN KEY (`fp_ID`) REFERENCES `visitor` (`visitor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fostering_parent_chk_1` CHECK ((`pin_code` > 0)),
  CONSTRAINT `fostering_parent_chk_2` CHECK ((`income_per_annum` >= 100000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fostering_parent`
--

LOCK TABLES `fostering_parent` WRITE;
/*!40000 ALTER TABLE `fostering_parent` DISABLE KEYS */;
INSERT INTO `fostering_parent` VALUES (200025,'Reynard','Menchenton','Leodora','Menchenton','1972-05-27','1971-09-24','P.O. Box 681, 3036 Nisi. Avenue','Panihati',470522,'West Bengal','1188858358',1900000,'none'),(200026,'Lennard','Gillise','Tiff','Gillise','1972-09-03','1973-01-05','Ap #185-8846 Scelerisque, Avenue','Warangal',853473,'Andra Pradesh','9894433267',750000,'none'),(200027,'Jasun','Oboy','Haily','Oboy','1972-12-09','1973-05-03','125-7618 Non St.','Sahiwal',384463,'Punjab','5876267942',2450000,'none'),(200028,'Fitz','Girod','Kimmi','Girod','1973-12-16','1974-04-02','8918 Quis St.','Barddhaman',817520,'West Bengal','2522696698',1700000,'both'),(200029,'Andras','Martindale','Mel','Martindale','1974-02-24','1974-11-07','4199 Nulla. Av.','New Bombay',221974,'Maharastra','7723944576',850000,'none'),(200030,'Mead','Bahia','Bryn','Bahia','1974-04-25','1975-06-28','381-8412 Molestie Avenue','Siliguri',366428,'West Bengal','3873911516',250000,'none'),(200031,'Gabby','Stormont','Daryn','Stormont','1975-11-01','1975-08-29','391-8492 In, Street','Silchar',560505,'Assam','4641263595',1050000,'physically challenged'),(200032,'Aldus','Cathel','Zabrina','Cathel','1976-07-11','1978-02-03','481-6725 Odio. Road','Jammu',880903,'Jammu and Kashmir','6954946666',200000,'both'),(200033,'Jeno','Hallawell','Ninnetta','Hallawell','1978-03-08','1978-06-23','9687 Curae; St.','Sonipat',297604,'Haryana','1541328362',1250000,'none'),(200034,'Blaine','Blevin','Modestine','Blevin','1978-11-23','1978-12-03','Ap #812-160 Magna Av.','Balurghat',795225,'West Bengal','2631535786',600000,'none'),(200035,'Angie','Daughtry','Shena','Daughtry','1978-12-26','1979-01-18','Ap #626-9015 Pulvinar Avenue','Tonk',560153,'Rajasathan','4922969537',500000,'none'),(200036,'Merrick','Feechum','Ronalda','Feechum','1979-03-07','1980-06-25','493 Elit Avenue','Tirupati',212121,'Andra Pradesh','4916538218',500000,'none'),(200037,'Tye','Haslock','Mirabella','Haslock','1979-06-15','1982-10-08','133-1930 Est. Rd.','Firozabad',221416,'Uttar Pradesh','7834743982',1050000,'mentally challenged'),(200038,'Gardner','Ferrarini','Darda','Ferrarini','1981-07-11','1983-07-28','P.O. Box 787, 9373 Integer Street','Mandya',145820,'Karnataka','7812578581',2000000,'both'),(200039,'Gerik','Zuanelli','Fara','Zuanelli','1983-04-03','1984-05-24','290-388 Cras Avenue','Bilaspur',614481,'Chhattisgarh','5981967396',1000000,'none'),(200040,'Daven','Mercey','Lynsey','Mercey','1983-06-18','1985-07-07','8828 Etiam Rd.','Ahmadnagar',251923,'Maharastra','6189361416',2450000,'none'),(200041,'Nobie','Howse','Tildy','Howse','1985-10-27','1986-01-25','P.O. Box 278, 163 Mauris St.','Bettiah',637859,'Bihar','9596197663',2000000,'none'),(200042,'Nico','Cakebread','Modesta','Cakebread','1986-02-16','1989-07-30','Ap #270-449 Iaculis Avenue','Bihar Sharif',775829,'Bihar','4653199156',2000000,'both'),(200043,'Phip','Plummer','Katey','Plummer','1987-11-13','1990-03-13','P.O. Box 487, 6220 Nec, St.','Nagpur',303219,'Maharastra','6448343629',2250000,'none'),(200044,'Zachery','Antonik','Gianina','Antonik','1990-08-15','1990-09-08','741-4741 Convallis Road','Gurgaon',188491,'Haryana','3754838218',2150000,'both'),(200045,'Paddie','Berkley','Adriena','Berkley','1991-03-08','1990-10-05','6506 Consequat Ave','Arrah',826585,'Bihar','2943547467',550000,'physically challenged'),(200046,'Adelbert','Tschirasche','Clovis','Tschirasche','1991-07-11','1991-07-29','168-4776 Nullam Ave','Bhagalpur',241916,'Bihar','7415915345',1350000,'mentally challenged'),(200047,'Richy','Aspinwall','Ingrid','Aspinwall','1991-09-19','1991-09-24','570-2132 Magna Av.','Raipur',954465,'Chhattisgarh','7797329481',900000,'none'),(200048,'Murry','Laden','Rosie','Laden','1993-12-06','1995-06-28','4792 Mi Av.','Mango',480600,'Jharkhand','6593899646',1100000,'none'),(200049,'Billy','Wonfor','Amaleta','Wonfor','1996-01-03','1996-09-10','Ap #909-1700 Lorem Avenue','Gaya',777990,'Bihar','6317539356',2500000,'none'),(200050,'Ricardo','Gorini','Aggi','Gorini','1995-03-04','1992-04-19','9035 In St.','Vidisha',541624,'Madhya Pradesh','5825257937',150000,'none'),(700049,'test2','test','test','test','1990-01-01','1989-02-02','test','test',110000,'test','987654323',4000000,'none'),(700050,'x','x','x','x','1985-03-04','1985-02-04','x','x',112233,'x','4253647586',2000000,'none');
/*!40000 ALTER TABLE `fostering_parent` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_status_if_child_in_fosters` BEFORE DELETE ON `fostering_parent` FOR EACH ROW BEGIN
UPDATE child 
SET status="none" where child_ID in (select f.child_ID from fosters f where f.fp_ID=old.fp_ID);
UPDATE welfare_home
SET current_capacity=current_capacity+1 where welfare_home_ID in (select welfare_home_ID from child where child_ID in (select f.child_ID from fosters f where f.fp_ID=old.fp_ID));
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

-- Dump completed on 2021-04-18 19:19:23
