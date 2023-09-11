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
-- Table structure for table `govt_agency`
--

DROP TABLE IF EXISTS `govt_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `govt_agency` (
  `cr_ID` int NOT NULL,
  `house_no` varchar(100) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `pin_code` int NOT NULL,
  `state` varchar(40) NOT NULL,
  `contact_details` varchar(15) NOT NULL,
  `type` enum('police','hospital','fire station','welfare home','NGO','other') NOT NULL,
  PRIMARY KEY (`cr_ID`,`locality`,`house_no`),
  UNIQUE KEY `contact_details` (`contact_details`),
  CONSTRAINT `govt_agency_ibfk_1` FOREIGN KEY (`cr_ID`) REFERENCES `visitor` (`visitor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `govt_agency_chk_1` CHECK ((`pin_code` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `govt_agency`
--

LOCK TABLES `govt_agency` WRITE;
/*!40000 ALTER TABLE `govt_agency` DISABLE KEYS */;
INSERT INTO `govt_agency` VALUES (700001,'105-9248 Egestas St.','Barddhaman',791157,'Maharastra','9749492231','police'),(700002,'Ap #823-3720 Morbi Rd.','Wardha',663489,'Uttar Pradesh','4944469985','hospital'),(700003,'P.O. Box 761, 6250 Sed, Av.','Rae Bareli',613381,'Jharkhand','9156979414','fire station'),(700004,'P.O. Box 117, 9611 Sed Av.','Bokaro Steel City',847638,'Tamil Nadu','6931878332','welfare home'),(700005,'2710 Sed Avenue','Avadi',803470,'West Bengal','1265283327','NGO'),(700006,'100-8908 Vitae St.','Habra',959297,'Andhra Pradesh','7275134664','other'),(700007,'1587 Suscipit, Street','Hindupur',746264,'Andhra Pradesh','6294391251','police'),(700008,'555 Orci, Avenue','Rajahmundry',424269,'Uttar Pradesh','8181977592','hospital'),(700009,'Ap #122-4261 Placerat. Street','Allahabad',316230,'Jharkhand','2765947472','fire station'),(700010,'2585 Et, Ave','Purnea',984000,'Bihar','5369838215','welfare home'),(700011,'Ap #335-8060 Ut St.','Darbhanga',420252,'Gujarat','8749968494','NGO'),(700012,'5862 Adipiscing Rd.','Surendranagar',574929,'Punjab','7992655541','other'),(700013,'Ap #221-4749 Et, Road','Amritsar',837621,'Arunachal Pradesh','1541328362','police'),(700014,'P.O. Box 173, 9688 Metus Ave','Itanagar',588357,'Kerala','2631535786','hospital'),(700015,'Ap #837-5899 Sed Road','Palakkad',620925,'Andhra Pradesh','4922969537','fire station'),(700016,'215-7618 Tellus Rd.','Bhimavaram',790479,'Tamil Nadu','4916538218','welfare home'),(700017,'P.O. Box 849, 2515 Nunc Rd.','Ambattur',119988,'Odisha','7834743982','NGO'),(700018,'P.O. Box 289, 5663 Ac Street','Brahmapur',297604,'Assam','7812578581','other'),(700019,'P.O. Box 717, 4788 Egestas Avenue','Silchar',795225,'Tamil Nadu','5981967396','police'),(700020,'Ap #277-265 Nunc Rd.','Tiruvottiyur',560153,'Odisha','6189361416','hospital'),(700021,'P.O. Box 676, 7049 Donec Road','Brahmapur',298424,'Uttar Pradesh','9596197663','fire station'),(700022,'Ap #952-8302 Ac Street','Meerut',221416,'Jharkhand','4653199156','welfare home'),(700023,'365-2516 Sagittis Avenue','Hazaribag',145820,'Bihar','6448343629','NGO'),(700024,'173-3437 Netus Avenue','Darbhanga',614481,'Gujarat','3754838218','other'),(700025,'277 Nunc Street','Gandhidham',251923,'Bihar','2943547467','police'),(700026,'6889 Vitae, Ave','Bhagalpur',637859,'Odisha','7415915345','hospital'),(700027,'440-5491 Id Ave','Raurkela',775829,'Odisha','7797329481','fire station'),(700028,'970-6336 At, Rd.','Bhubaneswar',303219,'Delhi','6593899646','welfare home'),(700029,'Ap #230-3077 Vulputate Av.','Delhi',188491,'Uttar Pradesh','6317539356','NGO'),(700030,'893-7770 Fusce Av.','Bareilly',826585,'Andhra Pradesh','5825257937','other');
/*!40000 ALTER TABLE `govt_agency` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-18 19:19:24
