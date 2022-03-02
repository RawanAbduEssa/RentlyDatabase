CREATE DATABASE  IF NOT EXISTS `rently` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rently`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: rently
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `propertyId` int NOT NULL AUTO_INCREMENT,
  `propertyName` varchar(45) DEFAULT NULL,
  `PropertyType` varchar(45) DEFAULT NULL,
  `unitSpace` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` longtext,
  `zipcode` varchar(45) NOT NULL,
  `outdoorSeatingCapacity` varchar(45) DEFAULT NULL,
  `livingRoomCapacity` varchar(45) DEFAULT NULL,
  `roomsNum` varchar(45) DEFAULT NULL,
  `masterBedsNum` varchar(45) DEFAULT NULL,
  `singleBedsNum` varchar(45) DEFAULT NULL,
  `bedroomsNum` varchar(45) DEFAULT NULL,
  `bathroomsNum` varchar(45) DEFAULT NULL,
  `single` tinyint DEFAULT NULL,
  `families` tinyint DEFAULT NULL,
  `pool` tinyint DEFAULT NULL,
  `football` tinyint DEFAULT NULL,
  `garden` tinyint DEFAULT NULL,
  `playground` tinyint DEFAULT NULL,
  `ownerID` int NOT NULL,
  PRIMARY KEY (`propertyId`),
  KEY `ownerID` (`ownerID`),
  KEY `zipcode` (`zipcode`),
  CONSTRAINT `ownerID` FOREIGN KEY (`ownerID`) REFERENCES `ownerp` (`ownerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `zipcode` FOREIGN KEY (`zipcode`) REFERENCES `property_address` (`zipcode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01 22:52:21
