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
-- Table structure for table `biological_donor`
--

DROP TABLE IF EXISTS `biological_donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biological_donor` (
  `cr_ID` int NOT NULL,
  `bd1_first_name` varchar(50) NOT NULL,
  `bd1_last_name` varchar(50) DEFAULT NULL,
  `bd2_first_name` varchar(50) NOT NULL,
  `bd2_last_name` varchar(50) DEFAULT NULL,
  `bd1_dob` date NOT NULL,
  `bd2_dob` date NOT NULL,
  `house_no` varchar(100) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `pin_code` int NOT NULL,
  `state` varchar(40) NOT NULL,
  `contact_details` varchar(15) NOT NULL,
  PRIMARY KEY (`cr_ID`),
  UNIQUE KEY `contact_details` (`contact_details`),
  CONSTRAINT `biological_donor_ibfk_1` FOREIGN KEY (`cr_ID`) REFERENCES `visitor` (`visitor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `biological_donor_chk_1` CHECK ((`pin_code` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biological_donor`
--

LOCK TABLES `biological_donor` WRITE;
/*!40000 ALTER TABLE `biological_donor` DISABLE KEYS */;
INSERT INTO `biological_donor` VALUES (600001,'Elvin','Rau','Reggi','Rau','1972-04-05','1971-12-04','P.O. Box 206, 4040 Neque. Rd.','Gaya',934941,'Bihar','2227821756'),(600002,'Ross','Willcox','Farra','Willcox','1973-08-14','1972-08-28','457-4381 Ante Road','Moradabad',323857,'Uttar Pradesh','8025634561'),(600003,'Merv','Brissenden','Marlena','Brissenden','1973-09-27','1972-10-01','P.O. Box 645, 6846 Rhoncus. Street','Sikar',136846,'Rajasthan','2228509048'),(600004,'Leonid','Hotchkin','Josepha','Hotchkin','1974-01-29','1973-10-14','857-9248 Vitae Avenue','Chandrapur',830020,'Maharastra','2222043021'),(600005,'Franny','Brandenburg','Katharine','Brandenburg','1974-11-17','1974-05-31','3539 Odio. Ave','Korba',123456,'Chhattisgarh','4428524842'),(600006,'Krishnah','Bartley','Ardelis','Bartley','1975-02-20','1974-10-05','732-2288 Vitae Street','Tonk',635061,'Rajasthan','8023331583'),(600007,'Ignatius','Beeswing','Donnie','Beeswing','1975-08-09','1975-10-11','3915 Pretium Rd.','Pilibhit',110093,'Uttar Pradesh','2226163473'),(600008,'Curt','Muselli','Deina','Muselli','1976-04-28','1977-07-13','Ap #465-7926 Nunc St.','Tambaram',806642,'Tamil Nadu','2223733075'),(600009,'Caryl','Killimister','Con','Killimister','1976-08-27','1978-09-05','962-8556 Faucibus Road','Warangal',633933,'Andhra Pradesh','4606825801'),(600010,'Whitman','Tuddenham','Georgie','Tuddenham','1976-10-01','1979-07-18','627-4095 Integer Ave','Modinagar',996483,'Uttar Pradesh','1125102093'),(600011,'Gustav','Bailey','Magdalen','Bailey','1978-04-11','1980-03-01','651-8848 Ultricies Avenue','Kalyan',186157,'Maharastra','3326602314'),(600012,'Jerrie','Deamer','Elora','Deamer','1979-06-01','1980-07-21','665-7402 Velit St.','Dhanbad',186240,'Jharkhand','2222621075'),(600013,'Clementius','Tresler','Jobina','Tresler','1979-09-25','1981-04-06','4662 Lobortis, Street','Cuttack',237265,'Odisha','2226834164'),(600014,'Ernie','Ebertz','Fionna','Ebertz','1980-04-24','1981-06-09','2669 At, Rd.','Dhanbad',374033,'Jharkhand','7922135314'),(600015,'Kelsey','Giorgeschi','Agnella','Giorgeschi','1980-07-14','1983-07-01','265-2319 Ullamcorper Avenue','Alwar',706134,'Rajasthan','2225421639'),(600016,'Charley','McLugaish','Teddie','McLugaish','1980-09-24','1983-07-17','208-1725 Eget Avenue','Mango',187789,'Haryana','2225645657'),(600017,'Maddy','Briton','Tildy','Briton','1983-06-12','1984-04-02','747-6844 Nulla Avenue','Budaun',851028,'Uttar Pradesh','1122514088'),(600018,'Arel','Sieur','Annetta','Sieur','1984-12-29','1984-10-02','1015 Adipiscing Road','Hathras',494037,'Uttar Pradesh','7423588545'),(600019,'Ewell','Iacomo','Eleni','Iacomo','1985-06-03','1987-01-12','4148 Elementum, Road','Bhiwani',369736,'Haryana','9525124882'),(600020,'See','Divis','Tania','Divis','1986-03-20','1987-03-03','1822 Varius Road','Silchar',882634,'Assam','2227652151'),(600021,'Stacy','Seale','Donnie','Seale','1986-10-05','1988-01-06','P.O. Box 888, 2962 Ac Rd.','Raipur',719782,'Chhattisgarh','6437578884'),(600022,'Shaughn','Kahler','Valentine','Kahler','1990-07-10','1989-12-23','Ap #467-8788 Eu Rd.','Burhanpur',569896,'Madhya Pradesh','9955782545');
/*!40000 ALTER TABLE `biological_donor` ENABLE KEYS */;
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
