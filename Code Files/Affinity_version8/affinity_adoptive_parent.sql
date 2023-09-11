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
-- Table structure for table `adoptive_parent`
--

DROP TABLE IF EXISTS `adoptive_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adoptive_parent` (
  `ap_ID` int NOT NULL,
  `ap1_first_name` varchar(50) NOT NULL,
  `ap1_last_name` varchar(50) DEFAULT NULL,
  `ap2_first_name` varchar(50) NOT NULL,
  `ap2_last_name` varchar(50) DEFAULT NULL,
  `ap1_dob` date NOT NULL,
  `ap2_dob` date NOT NULL,
  `house_no` varchar(100) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `pin_code` int NOT NULL,
  `state` varchar(40) NOT NULL,
  `contact_details` varchar(15) NOT NULL,
  `income_per_annum` int DEFAULT NULL,
  `preference` enum('none','mentally challenged','physically challenged','both') DEFAULT NULL,
  PRIMARY KEY (`ap_ID`),
  UNIQUE KEY `contact_details` (`contact_details`),
  CONSTRAINT `adoptive_parent_ibfk_1` FOREIGN KEY (`ap_ID`) REFERENCES `visitor` (`visitor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `adoptive_parent_chk_1` CHECK ((`pin_code` > 0)),
  CONSTRAINT `adoptive_parent_chk_2` CHECK ((`income_per_annum` >= 100000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adoptive_parent`
--

LOCK TABLES `adoptive_parent` WRITE;
/*!40000 ALTER TABLE `adoptive_parent` DISABLE KEYS */;
INSERT INTO `adoptive_parent` VALUES (200001,'Loy','Birdall','Genna','Birdall','1972-09-04','1971-03-25','Ap #137-5867 Rutrum St.','Delhi',396577,'Delhi','8721123571',850000,'none'),(200002,'Kayne','Coxen','Sella','Coxen','1973-02-03','1972-10-21','Ap #742-2330 Pede. Rd.','Rewa',291976,'Madhya Pradesh','4276244724',400000,'none'),(200003,'Immanuel','Bengle','Consuelo','Bengle','1973-07-29','1973-10-14','3913 Enim Ave','Bhusawal',618265,'Maharashtra','3125423145',750000,'none'),(200004,'Pietrek','Spellar','Claudina','Spellar','1975-04-18','1974-06-22','7732 Semper Road','Nagpur',160879,'Maharastra','5943236184',2350000,'none'),(200005,'Willy','Hardwidge','Kameko','Hardwidge','1975-11-16','1975-02-02','2572 Feugiat Avenue','Alwar',359555,'Rajasthan','4721621777',1100000,'none'),(200006,'Baily','Widdup','Corrinne','Widdup','1976-04-05','1976-02-21','3686 Etiam Av.','Pali',352688,'Rajasthan','3951583945',2100000,'mentally challenged'),(200007,'Terrell','Kennler','Ella','Kennler','1976-07-23','1977-03-30','P.O. Box 743, 2152 Nunc St.','Wardha',102338,'Maharashtra','2558682826',2200000,'none'),(200008,'Waverly','MacCosto','Thekla','MacCosto','1976-08-17','1978-04-28','Ap #726-5944 Vestibulum Av.','Ulhasnagar',791157,'Maharastra','2847978411',1150000,'physically challenged'),(200009,'Reggie','Bohey','Alessandra','Bohey','1977-03-17','1979-07-04','617-5192 Viverra. St.','Delhi',663489,'Delhi','2474278232',200000,'both'),(200010,'Andros','Wynes','Loleta','Wynes','1977-10-31','1980-03-28','185-2261 Dis Avenue','Delhi',613381,'Delhi','3471175365',350000,'physically challenged'),(200011,'Rolf','Goodie','Tildie','Goodie','1979-12-31','1980-11-14','786-3182 Erat St.','Godhra',847638,'Gujarat','6577735278',1300000,'none'),(200012,'Wells','Warhurst','Tiffie','Warhurst','1981-05-28','1981-09-18','576-3440 Sem St.','Tuticorin',803470,'Tamil Nadu','5998669617',100000,'none'),(200013,'Ramsey','Wheatland','Netti','Wheatland','1982-06-22','1982-03-16','8497 Iaculis Avenue','Unnao',959297,'Uttar Pradesh','1749492231',1800000,'none'),(200014,'Fraze','Coleiro','Rosy','Coleiro','1982-11-07','1982-05-05','5570 Natoque Rd.','Ashoknagar',746264,'West Bengal','4944469985',2450000,'both'),(200015,'Thom','Romagnosi','Dorette','Romagnosi','1985-01-16','1983-04-15','674 Consectetuer Av.','Dibrugarh',424269,'Assam','9156979414',100000,'physically challenged'),(200016,'Talbert','Gladdish','Marin','Gladdish','1989-07-08','1984-07-11','Ap #448-412 Libero. Road','Bettiah',316230,'Bihar','6931878332',1500000,'both'),(200017,'Carny','Tackett','Theadora','Tackett','1990-06-21','1986-12-05','3370 Erat Street','Anantapur',984000,'Andhra Pradesh','1265283327',500000,'none'),(200018,'Shaw','Venturoli','Fayth','Venturoli','1990-07-13','1987-06-01','P.O. Box 806, 3339 Diam Road','Kolhapur',420252,'Maharashtra','7275134664',1300000,'both'),(200019,'Barnabe','Burchard','Bab','Burchard','1991-01-26','1987-11-30','3902 Ut Ave','Trivandrum',574929,'Kerala','6294391251',1150000,'none'),(200020,'Kenn','Hammerstone','Karissa','Hammerstone','1991-10-16','1988-07-05','6660 Maecenas Rd.','Achalpur',837621,'Maharastra','8181977592',2050000,'mentally challenged'),(200021,'Brod','Brownlow','Ettie','Brownlow','1992-01-01','1990-01-30','626-8158 Sem. St.','North Barrackpur',588357,'West Bengal','2765947472',1250000,'none'),(200022,'Byron','Dargavel','Martynne','Dargavel','1992-05-15','1990-06-14','Ap #508-5279 Pede, Rd.','Kozhikode',620925,'Kerala','5369838215',1700000,'both'),(200023,'Flinn','Gullis','Joannes','Gullis','1993-02-12','1990-06-20','P.O. Box 590, 9169 Dignissim Rd.','Patan',790479,'Gujarat','8749968494',500000,'none'),(200024,'Ole','Stourton','Pepita','Stourton','1993-08-05','1991-05-09','Ap #530-9415 Mauris St.','Delhi',227348,'Delhi','7992655541',1700000,'none'),(700048,'test1','test','test','test','1980-04-03','1987-03-04','test','test',110000,'test','1234567654',2000000,'none');
/*!40000 ALTER TABLE `adoptive_parent` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_status_if_child_in_adopts` BEFORE DELETE ON `adoptive_parent` FOR EACH ROW BEGIN
UPDATE child 
SET status="none" where child_ID in (select a.child_ID from adopts a where a.ap_ID=old.ap_ID);
UPDATE welfare_home
SET current_capacity=current_capacity+1 where welfare_home_ID in (select welfare_home_ID from child where child_ID in (select a.child_ID from adopts a where a.ap_ID=old.ap_ID));
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

-- Dump completed on 2021-04-18 19:19:24
