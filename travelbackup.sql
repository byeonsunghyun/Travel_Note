-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: TRAVEL
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `NUMBER` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'#후쿠오카',1),(2,'#친구와 여행',1),(3,'#오사카',2),(4,'#친구와 여행',2),(5,'#광저우',3),(6,'#싱가포르',4),(7,'#타이베이',5),(8,'#친구와 여행',5),(9,'#혼자 여행',3),(10,'#파리',6),(11,'#친구와 여행',6),(12,'#런던',7),(13,'#친구와 여행',7),(14,'#베를린',8),(15,'#친구와 여행',8),(16,'#피사',9),(17,'#로마',9),(18,'#바티칸 시국',9),(19,'#베네치아',9),(20,'#친구와 여행',9),(21,'#아테네',10),(22,'#산토리니',10),(23,'#친구와 여행',10),(24,'#아스완',11),(25,'#룩소르',11),(26,'#카이로',11),(27,'#친구와 여행',11),(28,'#다낭',12),(29,'#친구와 여행',12),(30,'#비엔티안',13),(31,'#친구와 여행',13),(32,'#삿포로',14),(33,'#도쿄',14),(34,'#후쿠오카',14),(35,'#친구와 여행',14),(36,'#쿠알라룸푸르',15),(37,'#친구와 여행',15),(38,'#방콕',16),(39,'#친구와 여행',16),(40,'#대마도',17),(41,'#혼자 여행',17),(42,'#마닐라',18),(43,'#친구와 여행',18),(44,'#상하이',19),(45,'#혼자 여행',19),(46,'#오사카',20),(47,'#교토',20),(48,'#나라',20),(49,'#고베',20),(50,'#친구와 여행',20),(51,'#혼자 여행',20),(52,'#시모노세키',21),(53,'#후쿠오카',21),(54,'#혼자 여행',21),(55,'#시모노세키',22),(56,'#후쿠오카',22),(57,'#유후인',22),(58,'#친구와 여행',22),(59,'#하노이',23),(60,'#사파',23),(61,'#친구와 여행',23),(62,'#베이징',24),(63,'#친구와 여행',24);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel`
--

DROP TABLE IF EXISTS `travel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `DATE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel`
--

LOCK TABLES `travel` WRITE;
/*!40000 ALTER TABLE `travel` DISABLE KEYS */;
INSERT INTO `travel` VALUES (1,'2016년 초','일본 여행'),(2,'2016년 여름','일본 여행'),(3,'2016년 ~ 현재','중국 여행'),(4,'2017년 여름','싱가포르 여행'),(5,'2017년 여름','대만 여행'),(6,'2019년 가을','프랑스 여행'),(7,'2019년 가을','영국 여행'),(8,'2019년 가을','독일 여행'),(9,'2019년 가을','이탈리아 여행'),(10,'2019년 가을','그리스 여행'),(11,'2019년 가을','이집트 여행'),(12,'2019년 가을','베트남 여행'),(13,'2019년 가을','라오스 여행'),(14,'2023년 초','일본 여행'),(15,'2023-02-17 ~ 2023-02-23','말레이시아 여행'),(16,'2023-02-23 ~ 2023-02-27','태국 여행'),(17,'2023-05-28 ~ 2023-05-29','일본 여행'),(18,'2023-07-11 ~ 2023-07-15','필리핀 여행'),(19,'2023-07-20 ~ 2023-07-27','중국 여행'),(20,'2023-08-13 ~ 2023-08-24','일본 여행'),(21,'2024-05-10 ~ 2024-05-13','일본 여행'),(22,'2024-09-12 ~ 2024-09-15','일본 여행'),(23,'2024-12-30 ~ 2025-01-04','베트남 여행'),(24,'2025-01-04 ~ 2025-01-09','중국 여행');
/*!40000 ALTER TABLE `travel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-28 17:11:04
