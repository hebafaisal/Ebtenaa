-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ebtenaa
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `fName` varchar(20) DEFAULT NULL,
  `lName` varchar(20) DEFAULT NULL,
  `employeeID` int NOT NULL,
  `spuerID` int DEFAULT NULL,
  `supervisionPeriod` varchar(60) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `SSN` int NOT NULL,
  `street` varchar(60) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zipCode` int NOT NULL,
  `salary` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`employeeID`),
  UNIQUE KEY `SSN` (`SSN`),
  KEY `superEmployee_FK` (`spuerID`),
  CONSTRAINT `superEmployee_FK` FOREIGN KEY (`spuerID`) REFERENCES `employee` (`employeeID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('Jmeel','Shady',202343116,202354763,'6 months','Jmeel@gmail.com',53447,'Al-Zahir','Makkah',50309,3000.00),('Tala','Safi',202343677,202354763,'6 months','Tala@gmail.com',88537,'Khalidiya','Makkah',60601,3000.00),('Badr','Qassem',202344167,203214634,'3 months','Badr@hotmail.com',55286,'Al Rawda','Jeddah',40202,3700.00),('Mahmood','Hadi',202354763,NULL,NULL,'Mahmood@gmail.com',66345,'Al-Rusaifah','Makkah',94111,3900.00),('Amal','Wafi',203214634,NULL,NULL,'Amal@gmail.com',34215,'Al Naseem','Makkah',80202,4810.00);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-20 19:32:42
