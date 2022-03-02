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
-- Table structure for table `orderp`
--

DROP TABLE IF EXISTS `orderp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderp` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `orderDate` varchar(45) DEFAULT NULL,
  `checkIn` varchar(45) DEFAULT NULL,
  `cardNumber` int DEFAULT NULL,
  `propertyId` int NOT NULL,
  `customerID` int NOT NULL,
  `ownerID` int NOT NULL,
  `price` double DEFAULT NULL,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `propertyId` (`propertyId`),
  KEY `customerID` (`customerID`),
  KEY `ownerID` (`ownerID`),
  KEY `cardNumber` (`cardNumber`),
  CONSTRAINT `cardNumber` FOREIGN KEY (`cardNumber`) REFERENCES `order_payment` (`cardNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderp_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ownerID2` FOREIGN KEY (`ownerID`) REFERENCES `ownerp` (`ownerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `propertyId` FOREIGN KEY (`propertyId`) REFERENCES `property` (`propertyId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderp`
--

LOCK TABLES `orderp` WRITE;
/*!40000 ALTER TABLE `orderp` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01 22:52:22
