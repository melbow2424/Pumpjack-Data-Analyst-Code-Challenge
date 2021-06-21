-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_data_challenge_pumpjack_dataworks
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
-- Table structure for table `database_abc_company`
--

DROP TABLE IF EXISTS `database_abc_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_abc_company` (
  `employee_id` int NOT NULL DEFAULT '0',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `salary` int NOT NULL,
  `department_id` int NOT NULL DEFAULT '0',
  `department` varchar(50) NOT NULL,
  `salary_increment` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_abc_company`
--

LOCK TABLES `database_abc_company` WRITE;
/*!40000 ALTER TABLE `database_abc_company` DISABLE KEYS */;
INSERT INTO `database_abc_company` VALUES (1,'Darius','Mufutau',3901,1,'Finance',10),(2,'Tiger','Elliott',5489,2,'IT',15),(3,'Malik','Macaulay',5444,3,'Sales',17),(4,'Ali','Vance',8993,4,'Marketing',16),(5,'Randall','Deacon',9515,2,'IT',15),(6,'Josiah','Lee',8113,3,'Sales',17),(7,'Dante','Mohammad',8446,3,'Sales',17),(8,'Wyatt','Kuame',4817,4,'Marketing',16),(9,'Quinn','Oliver',5513,1,'Finance',10),(10,'Oliver','Gary',5158,2,'IT',15),(11,'Thane','Phelan',4957,3,'Sales',17),(12,'Walter','Lester',3864,1,'Finance',10),(13,'Samson','Dolan',6855,2,'IT',15),(14,'Beck','Walker',7077,3,'Sales',17),(15,'Lucas','Marshall',7499,4,'Marketing',16),(16,'John','Nash',4269,2,'IT',15),(17,'Quinlan','Elliott',7503,3,'Sales',17),(18,'Ivan','Dennis',4048,3,'Sales',17),(19,'Wang','Ronan',9319,4,'Marketing',16),(20,'Stone','Jameson',9354,1,'Finance',10),(21,'Clayton','Jarrod',4102,2,'IT',15),(22,'Cain','Sean',7353,3,'Sales',17);
/*!40000 ALTER TABLE `database_abc_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department` varchar(50) NOT NULL,
  `salary_increment` int NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Finance',10),(2,'IT',15),(3,'Sales',17),(4,'Marketing',16);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `salary` int NOT NULL,
  `department` varchar(50) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Darius','Mufutau',3901,'Finance'),(2,'Tiger','Elliott',5489,'IT'),(3,'Malik','Macaulay',5444,'Sales'),(4,'Ali','Vance',8993,'Marketing'),(5,'Randall','Deacon',9515,'IT'),(6,'Josiah','Lee',8113,'Sales'),(7,'Dante','Mohammad',8446,'Sales'),(8,'Wyatt','Kuame',4817,'Marketing'),(9,'Quinn','Oliver',5513,'Finance'),(10,'Oliver','Gary',5158,'IT'),(11,'Thane','Phelan',4957,'Sales'),(12,'Walter','Lester',3864,'Finance'),(13,'Samson','Dolan',6855,'IT'),(14,'Beck','Walker',7077,'Sales'),(15,'Lucas','Marshall',7499,'Marketing'),(16,'John','Nash',4269,'IT'),(17,'Quinlan','Elliott',7503,'Sales'),(18,'Ivan','Dennis',4048,'Sales'),(19,'Wang','Ronan',9319,'Marketing'),(20,'Stone','Jameson',9354,'Finance'),(21,'Clayton','Jarrod',4102,'IT'),(22,'Cain','Sean',7353,'Sales');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updated_salaries`
--

DROP TABLE IF EXISTS `updated_salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `updated_salaries` (
  `employee_id` int NOT NULL DEFAULT '0',
  `updated_salary` decimal(25,2) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updated_salaries`
--

LOCK TABLES `updated_salaries` WRITE;
/*!40000 ALTER TABLE `updated_salaries` DISABLE KEYS */;
INSERT INTO `updated_salaries` VALUES (1,4291.10),(2,6312.35),(3,6369.48),(4,10431.88),(5,10942.25),(6,9492.21),(7,9881.82),(8,5587.72),(9,6064.30),(10,5931.70),(11,5799.69),(12,4250.40),(13,7883.25),(14,8280.09),(15,8698.84),(16,4909.35),(17,8778.51),(18,4736.16),(19,10810.04),(20,10289.40),(21,4717.30),(22,8603.01);
/*!40000 ALTER TABLE `updated_salaries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21 16:40:37
