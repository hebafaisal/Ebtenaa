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
-- Table structure for table `artwork`
--

DROP TABLE IF EXISTS `artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artwork` (
  `serialNumber` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `date` text,
  `artistID` int DEFAULT NULL,
  `sectionNumber` int DEFAULT NULL,
  `phoneNumber` int DEFAULT NULL,
  PRIMARY KEY (`serialNumber`),
  KEY `artWork_FK1` (`artistID`),
  KEY `artWork_FK2` (`sectionNumber`),
  KEY `artWork_FK3` (`phoneNumber`),
  CONSTRAINT `artWork_FK1` FOREIGN KEY (`artistID`) REFERENCES `artist` (`artistID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `artWork_FK2` FOREIGN KEY (`sectionNumber`) REFERENCES `section` (`sectionNumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `artWork_FK3` FOREIGN KEY (`phoneNumber`) REFERENCES `customer` (`phoneNumber`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artwork`
--

LOCK TABLES `artwork` WRITE;
/*!40000 ALTER TABLE `artwork` DISABLE KEYS */;
INSERT INTO `artwork` VALUES (202329373,'Renaissance Buddies','A captivating painting of figures in Renaissance attire engaged in conversation.','drawing',3200.00,'2010-01-27',602497126,1,556927798),(202434167,'Mug Hearts','A whimsical installation celebrating love and connection through ceramic mugs.','design',1500.00,'2015-10-22',734228356,3,NULL),(202773116,'Reflective Essence','A captivating sculpture playing with light and form.','Sculpture',2000.00,'2003-12-15',589035216,4,563610281),(202943677,'Limitless Delights','A colorful tapestry celebrating the beauty of the natural world.','audio arts',2400.00,'2020-04-09',290337845,5,NULL),(203335634,'Metal Edge Creations','A sleek modern sculpture blending industrial aesthetics and artistic flair.','Sculpture',2800.00,'2018-05-12',467374211,4,NULL);
/*!40000 ALTER TABLE `artwork` ENABLE KEYS */;
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
