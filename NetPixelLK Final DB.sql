-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: selling
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `otp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (2,'Thamindu','Disna','thamindudisna121@gmail.com','12345','666770850ef79');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `banner_id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(945) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `banner_type_id` int NOT NULL,
  `b_id` int NOT NULL,
  PRIMARY KEY (`banner_id`),
  KEY `fk_banner_banner_type1_idx` (`banner_type_id`),
  CONSTRAINT `fk_banner_banner_type1` FOREIGN KEY (`banner_type_id`) REFERENCES `banner_type` (`banner_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (89,'./resource/banner/Main Banner__6660a746a4ee1.jpeg',4,0),(90,'./resource/banner/Main Banner__6660a746a8623.jpeg',4,1),(91,'./resource/banner/Main Banner__6660a746ad0c9.jpeg',4,2),(92,'./resource/banner/Main Banner__6660a74e1d5b1.jpeg',5,0),(93,'./resource/banner/Main Banner__6660a74e4286d.jpeg',5,1),(94,'./resource/banner/Main Banner__6660a74e4b6b1.jpeg',5,2),(95,'./resource/banner/Main Banner__6660a7575bf97.jpeg',6,0),(96,'./resource/banner/Main Banner__6660a75763fa6.jpeg',6,1),(97,'./resource/banner/Main Banner__6660a7576c459.jpeg',6,2),(104,'./resource/banner/Main Banner__66670b2250e07.jpeg',2,0),(108,'./resource/banner/Main Banner Curesel (3)__66671193cbff5.jpeg',1,0),(109,'./resource/banner/Main Banner Curesel (3)__66671193cd23c.jpeg',1,1),(110,'./resource/banner/Main Banner Curesel (3)__66671193ce38a.jpeg',1,2),(111,'./resource/banner/Main Banner Curesel (3)__666711e1c215a.jpeg',3,0),(112,'./resource/banner/Main Banner Curesel (3)__666711e1c2f83.jpeg',3,1);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_type`
--

DROP TABLE IF EXISTS `banner_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner_type` (
  `banner_type_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`banner_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_type`
--

LOCK TABLES `banner_type` WRITE;
/*!40000 ALTER TABLE `banner_type` DISABLE KEYS */;
INSERT INTO `banner_type` VALUES (1,'Main Banner Curesel (3)'),(2,'Main Banner Long (1)'),(3,'Banner (2)'),(4,'TOP (3)'),(5,'SALE (2)'),(6,'LAST (3)');
/*!40000 ALTER TABLE `banner_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bestsell`
--

DROP TABLE IF EXISTS `bestsell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bestsell` (
  `bestsell_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`bestsell_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestsell`
--

LOCK TABLES `bestsell` WRITE;
/*!40000 ALTER TABLE `bestsell` DISABLE KEYS */;
INSERT INTO `bestsell` VALUES (1,'Active'),(2,'Inactive');
/*!40000 ALTER TABLE `bestsell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (7,'ASUS'),(8,'MSI'),(9,'Lenovo'),(10,'Dell');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `qty` varchar(45) DEFAULT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_product1_idx` (`product_id`),
  KEY `fk_cart_user1_idx` (`user_id`),
  CONSTRAINT `fk_cart_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_cart_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (61,'1',28213118,1),(75,'1',28213119,48210070),(77,'1',28213122,48210070),(78,'1',28213120,48210051),(79,'1',28213119,48210051),(82,'3',28213123,48210079);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (7,'Gaming'),(8,'For Creators');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (5,'Gampaha'),(6,'Colombo');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu` (
  `cpu_id` int NOT NULL AUTO_INCREMENT,
  `cpu` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`cpu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` VALUES (8,'AMD Ryzen 7 6800H'),(9,'Alder Lake i5-12450H Processor'),(10,'AMD Ryzen 7 – 7745HX Processor'),(11,'Intel Core Ultra 7 155H Processor'),(12,'Intel Core i7-13620H Processor'),(13,'Intel Core i9 14900HX Processor'),(14,'Intel Core i5-1235U Processor'),(15,'Intel Core i9-13900H Processor');
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discode`
--

DROP TABLE IF EXISTS `discode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discode` (
  `discode_id` int NOT NULL AUTO_INCREMENT,
  `dis` varchar(45) NOT NULL,
  `code` varchar(145) NOT NULL,
  `discode_status_id` int NOT NULL,
  PRIMARY KEY (`discode_id`),
  KEY `fk_discode_discode_status1_idx` (`discode_status_id`),
  CONSTRAINT `fk_discode_discode_status1` FOREIGN KEY (`discode_status_id`) REFERENCES `discode_status` (`discode_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discode`
--

LOCK TABLES `discode` WRITE;
/*!40000 ALTER TABLE `discode` DISABLE KEYS */;
INSERT INTO `discode` VALUES (1,'0','123',2),(2,'12','disna',2),(3,'33','asdf',2),(4,'99','free',2),(5,'20','PROMO123',1);
/*!40000 ALTER TABLE `discode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discode_status`
--

DROP TABLE IF EXISTS `discode_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discode_status` (
  `discode_status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`discode_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discode_status`
--

LOCK TABLES `discode_status` WRITE;
/*!40000 ALTER TABLE `discode_status` DISABLE KEYS */;
INSERT INTO `discode_status` VALUES (1,'Active'),(2,'Inactive');
/*!40000 ALTER TABLE `discode_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `display`
--

DROP TABLE IF EXISTS `display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `display` (
  `display_id` int NOT NULL AUTO_INCREMENT,
  `display` varchar(450) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`display_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `display`
--

LOCK TABLES `display` WRITE;
/*!40000 ALTER TABLE `display` DISABLE KEYS */;
INSERT INTO `display` VALUES (6,'LCD'),(7,'15.6″, FHD, 144Hz Refresh Rate Display'),(8,'16″ WQXGA, 240Hz Refresh Rate IPS Display'),(9,'15.6″, FHD (1920×1080), 144Hz IPS Display'),(10,'16″ QHD + 16:10 (2560 x 1600, WQXGA) 240Hz Display'),(11,'14″ FHD  (1920 x 1080) Display'),(12,'15.6″, 3K OLED, 120Hz Refresh Rate Display');
/*!40000 ALTER TABLE `display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flashsell`
--

DROP TABLE IF EXISTS `flashsell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flashsell` (
  `flashsell_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`flashsell_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flashsell`
--

LOCK TABLES `flashsell` WRITE;
/*!40000 ALTER TABLE `flashsell` DISABLE KEYS */;
INSERT INTO `flashsell` VALUES (1,'Active'),(2,'Inactive');
/*!40000 ALTER TABLE `flashsell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gpu`
--

DROP TABLE IF EXISTS `gpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpu` (
  `gpu_id` int NOT NULL AUTO_INCREMENT,
  `gpu` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`gpu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpu`
--

LOCK TABLES `gpu` WRITE;
/*!40000 ALTER TABLE `gpu` DISABLE KEYS */;
INSERT INTO `gpu` VALUES (9,'RTX 3050 Laptop GPU'),(10,'4GB NVIDIA GeForce RTX 2050 Graphics'),(11,'8GB NVIDIA GeForce RTX 4070'),(12,'6GB NVIDIA GeForce RTX 4050 Graphics'),(13,'8GB NVIDIA GeForce RTX 4070 Graphics'),(14,'12GB NVIDIA GeForce RTX 4080 Graphic'),(15,'Intel UHD Graphics'),(16,'6GB NVIDIA GeForce RTX 3050 Graphics');
/*!40000 ALTER TABLE `gpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `code` varchar(145) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (152,28213118,'./resource/laptop/ASUS ROG G15_0_6660a60c9d78c.jpeg'),(153,28213118,'./resource/laptop/ASUS ROG G15_1_6660a60ca57a7.jpeg'),(154,28213118,'./resource/laptop/ASUS ROG G15_2_6660a60caa8cb.jpeg'),(155,28213119,'resource/laptop/MSI Thin GF63066640335b3e46.jpeg'),(156,28213119,'resource/laptop/MSI Thin GF63166640335d4159.jpeg'),(157,28213119,'resource/laptop/MSI Thin GF63266640335e1ed3.jpeg'),(158,28213120,'resource/laptop/Lenovo Legion Pro 50666413bce222b.jpeg'),(159,28213120,'resource/laptop/Lenovo Legion Pro 51666413bce6ae1.jpeg'),(160,28213120,'resource/laptop/Lenovo Legion Pro 52666413bcefa36.jpeg'),(161,28213121,'resource/laptop/MSI Cyborg Gaming06664155ed839f.jpeg'),(162,28213121,'resource/laptop/MSI Cyborg Gaming16664155ede813.jpeg'),(163,28213121,'resource/laptop/MSI Cyborg Gaming26664155ee3160.jpeg'),(164,28213122,'resource/laptop/Asus TUF Gaming F150666416de082df.jpeg'),(165,28213122,'resource/laptop/Asus TUF Gaming F151666416de0c929.jpeg'),(166,28213122,'resource/laptop/Asus TUF Gaming F152666416de15c4c.jpeg'),(167,28213123,'resource/laptop/Asus ROG Strix SCAR 1606664191f7427d.jpeg'),(168,28213123,'resource/laptop/Asus ROG Strix SCAR 1616664191f77c06.jpeg'),(169,28213123,'resource/laptop/Asus ROG Strix SCAR 1626664191f976d3.jpeg'),(170,28213124,'resource/laptop/MSI Thin GF63066641bf94caac.jpeg'),(171,28213124,'resource/laptop/MSI Thin GF63166641bf95602f.jpeg'),(172,28213124,'resource/laptop/MSI Thin GF63266641bf95eb60.jpeg'),(173,28213125,'resource/laptop/Dell Latitude066641cf6e8e84.jpeg'),(174,28213125,'resource/laptop/Dell Latitude166641cf6f2acb.jpeg'),(175,28213125,'resource/laptop/Dell Latitude266641cf7025ac.jpeg'),(176,28213126,'resource/laptop/Asus Creator Gaming066641dc8d8281.jpeg'),(177,28213126,'resource/laptop/Asus Creator Gaming166641dc8e88ea.jpeg'),(178,28213126,'resource/laptop/Asus Creator Gaming266641dc8edfdb.jpeg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `manager_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `nic` varchar(45) NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`manager_id`),
  KEY `fk_manager_manager_status1_idx` (`status_id`),
  CONSTRAINT `fk_manager_manager_status1` FOREIGN KEY (`status_id`) REFERENCES `manager_status` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager_status`
--

DROP TABLE IF EXISTS `manager_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager_status`
--

LOCK TABLES `manager_status` WRITE;
/*!40000 ALTER TABLE `manager_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `model_id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(45) NOT NULL,
  PRIMARY KEY (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (19,'ROG'),(20,'MSI KATANA'),(21,'Lenovo Legion'),(22,'MSI Cyborg'),(23,'Asus TUF Gaming'),(24,'Dell Latitude'),(25,'Asus Creator');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_brand`
--

DROP TABLE IF EXISTS `model_has_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_brand` (
  `model_id` int NOT NULL,
  `brand_id` int NOT NULL,
  KEY `fk_model_has_brand_brand1_idx` (`brand_id`),
  KEY `fk_model_has_brand_model1_idx` (`model_id`),
  CONSTRAINT `fk_model_has_brand_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `fk_model_has_brand_model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_brand`
--

LOCK TABLES `model_has_brand` WRITE;
/*!40000 ALTER TABLE `model_has_brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `order_id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `payment_status_id` int NOT NULL,
  `discode_id` int NOT NULL,
  `total` varchar(45) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_product_has_user_user1_idx` (`user_id`),
  KEY `fk_product_has_user_product1_idx` (`product_id`),
  KEY `fk_oder_payment_status1_idx` (`payment_status_id`),
  KEY `fk_orders_discode1_idx` (`discode_id`),
  CONSTRAINT `fk_oder_payment_status1` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`payment_status_id`),
  CONSTRAINT `fk_orders_discode1` FOREIGN KEY (`discode_id`) REFERENCES `discode` (`discode_id`),
  CONSTRAINT `fk_product_has_user_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_product_has_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (28213120,48210051,48,'2024-06-09',1,1,'930070'),(28213119,48210051,49,'2024-06-09',1,1,'930070'),(28213120,48210051,50,'2024-06-11',1,1,'930070'),(28213119,48210051,51,'2024-06-11',1,1,'930070'),(28213120,48210051,52,'2024-06-11',1,5,'744056'),(28213119,48210051,53,'2024-06-11',1,5,'744056'),(28213120,48210051,54,'2024-06-11',1,5,'930070'),(28213119,48210051,55,'2024-06-11',1,5,'930070'),(28213120,48210051,56,'2024-06-11',1,5,'930070'),(28213119,48210051,57,'2024-06-11',1,5,'930070');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_status`
--

DROP TABLE IF EXISTS `payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_status` (
  `payment_status_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`payment_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_status`
--

LOCK TABLES `payment_status` WRITE;
/*!40000 ALTER TABLE `payment_status` DISABLE KEYS */;
INSERT INTO `payment_status` VALUES (1,'Success'),(2,'Faild');
/*!40000 ALTER TABLE `payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `stitle` varchar(145) NOT NULL,
  `qty` int NOT NULL,
  `price` double NOT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `dprice` varchar(45) NOT NULL,
  `discription` varchar(6550) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `delivery_fee` varchar(45) NOT NULL,
  `view` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `display_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `cpu_id` int NOT NULL,
  `ram_id` int NOT NULL,
  `gpu_id` int NOT NULL,
  `storage_id` int NOT NULL,
  `produt_status_id` int NOT NULL,
  `model_id` int NOT NULL,
  `category_id` int NOT NULL,
  `size_id` int NOT NULL,
  `warranty_id` int DEFAULT NULL,
  `bestsell_id` int DEFAULT NULL,
  `flashsell_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_display1_idx` (`display_id`),
  KEY `fk_product_brand1_idx` (`brand_id`),
  KEY `fk_product_cpu1_idx` (`cpu_id`),
  KEY `fk_product_ram1_idx` (`ram_id`),
  KEY `fk_product_gpu1_idx` (`gpu_id`),
  KEY `fk_product_storage1_idx` (`storage_id`),
  KEY `fk_product_category1_idx` (`category_id`),
  KEY `fk_product_produt_status1_idx` (`produt_status_id`) USING BTREE,
  KEY `fk_product_model2_idx` (`model_id`) USING BTREE,
  KEY `fk_product_size1_idx` (`size_id`),
  KEY `fk_product_warranty1_idx` (`warranty_id`) USING BTREE,
  KEY `fk_product_bestsell1_idx` (`bestsell_id`),
  KEY `fk_product_flashsell1_idx` (`flashsell_id`) USING BTREE,
  CONSTRAINT `fk_product_bestsell1` FOREIGN KEY (`bestsell_id`) REFERENCES `bestsell` (`bestsell_id`),
  CONSTRAINT `fk_product_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `fk_product_cpu1` FOREIGN KEY (`cpu_id`) REFERENCES `cpu` (`cpu_id`),
  CONSTRAINT `fk_product_display1` FOREIGN KEY (`display_id`) REFERENCES `display` (`display_id`),
  CONSTRAINT `fk_product_flashsell1` FOREIGN KEY (`flashsell_id`) REFERENCES `flashsell` (`flashsell_id`),
  CONSTRAINT `fk_product_gpu1` FOREIGN KEY (`gpu_id`) REFERENCES `gpu` (`gpu_id`),
  CONSTRAINT `fk_product_model2` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`),
  CONSTRAINT `fk_product_produt_status1` FOREIGN KEY (`produt_status_id`) REFERENCES `produt_status` (`produt_status_id`),
  CONSTRAINT `fk_product_ram1` FOREIGN KEY (`ram_id`) REFERENCES `ram` (`ram_id`),
  CONSTRAINT `fk_product_size1` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`),
  CONSTRAINT `fk_product_storage1` FOREIGN KEY (`storage_id`) REFERENCES `storage` (`storage_id`),
  CONSTRAINT `fk_product_warranty1` FOREIGN KEY (`warranty_id`) REFERENCES `warranty` (`warranty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28213127 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (28213118,'ASUS ROG G15','Asus ROG SCAR G15 G513RC',18,410000,6,'385400','<h1><strong>Asus ROG SCAR G15 G513RC</strong></h1>','2024-06-05 22:48:22','1000',NULL,6,7,8,8,9,6,1,19,7,2,4,1,1),(28213119,'MSI Thin GF63','MSI Thin GF63 12UCX Gaming – i5',0,299000,5,'284050','<h1>MSI Thin GF63 12UCX Gaming – i5</h1>','2024-06-08 12:37:33','200',NULL,7,8,9,9,10,7,1,20,7,3,5,1,2),(28213120,'Lenovo Legion Pro 5','Lenovo Legion Pro 5 16ARX8 – Ryzen 7',-2,666000,3,'646020','<h1 class=\"ql-align-center\">Lenovo Legion Gaming Pro 5 16ARX8</h1><h1 class=\"ql-align-center\">Display – Bright, accurate, fast</h1><p class=\"ql-align-center\">The screen on the Legion Pro 5 ticks all the essential boxes for a gaming display 240Hz refresh rate,</p><p class=\"ql-align-center\">a resolution of 2,560 by 1,600 pixels and full sRGB coverage.</p><p><br></p><p><br></p><p><br></p><p><br></p><h2 class=\"ql-align-center\">Highly customizable Legion</h2><p class=\"ql-align-center\">The configuration as spec’d is fairly typical for an entry-level laptop.</p><p class=\"ql-align-center\">Equipped with an AMD Ryzen 7 7745HX, an RTX 4070 and 16GB of RAM.</p><p><br></p><p><br></p><p><br></p><p><br></p><h3 class=\"ql-align-center\">Compact Legion with muted design</h3><p class=\"ql-align-center\">The clean, black chassis forgoes any splashes of color and lighting effects. But it is equipped with</p><p class=\"ql-align-center\">pleasantly stiff hinges and an exceptionally solid metal bezel.</p><p><br></p><p><br></p><p><br></p><p><br></p><p><strong>Processor</strong></p><p>AMD Ryzen 7 7745HX (8C / 16T, 3.6 / 5.1GHz, 8MB L2 / 32MB L3)</p><p><br></p><p><strong>Storage</strong></p><p>1TB SSD M.2 2280 PCIe 4.0×4 NVMe</p><p><br></p><p><strong>Memory</strong></p><p>16GB SO-DIMM DDR5-5200MHz</p><p><br></p><p><strong>Display</strong></p><p>16″ WQXGA (2560×1600) IPS 500nits Anti-glare, 100% sRGB, 240Hz, DisplayHDR 400, Dolby&nbsp;Vision , FreeSync , Low Blue Light, High Gaming Performance Display</p><p><br></p><p><strong>Graphics</strong></p><p>NVIDIA&nbsp;GeForce RTX 4070 8GB GDDR6, Boost Clock</p><p>2175MHz, TGP 140W</p><p><br></p><p><strong>Audio Chip</strong></p><p>High Definition (HD) Audio, Realtek ALC3306 codec</p><p><br></p><p><strong>Speakers</strong></p><p>Stereo speakers, 2W x2, optimized with Nahimic Audio</p><p><br></p><p><strong>Camera</strong></p><p>FHD 1080p with E-shutter</p><p><br></p><p><strong>Microphone</strong></p><p>2x, Array</p><p><br></p><p><strong>Standard Ports</strong></p><p>1x Ethernet (RJ-45)</p><p>1x HDMI 2.1, up to 8K/60Hz</p><p>1x Headphone / microphone combo jack (3.5mm)</p><p>1x Power connector</p><p>1x USB 3.2 Gen 1 (Always On)</p><p>1x USB-C 3.2 Gen 2 (support data transfer and DisplayPort 1.4)</p><p>1x USB-C 3.2 Gen 2 (support data transfer, Power Delivery 140W and DisplayPort 1.4)</p><p>3x USB 3.2 Gen 1</p><p><br></p><p><strong>WLAN + Bluetooth</strong></p><p>Wi-Fi 6E, 11ax 2×2 + BT5.1</p><p><br></p><p><strong>Battery</strong></p><p>Integrated 80Wh</p><p><br></p><p><strong>Power Adapter</strong></p><p>300W Slim Tip (3-pin)</p><p><br></p><p><strong>Case Color</strong></p><p>Onyx Grey</p><p><br></p><p><strong>Operating System</strong></p><p>Windows 11 Home</p>','2024-06-08 13:48:04','200',NULL,8,9,10,10,11,8,1,21,7,4,5,2,1),(28213121,'MSI Cyborg Gaming','MSI Cyborg Gaming 15 AI A1VEK – Ultra 7',15,425000,1,'420750','<h1 class=\"ql-align-center\">Gaming Potential</h1><h1 class=\"ql-align-center\">with the MSI Cyborg Gaming 15 AI A1VEK</h1><p class=\"ql-align-center\">Dive into the world of games in cyberpunk style, flex your sci-fi fashion, and outplay your opponent</p><p class=\"ql-align-center\">with revolutionary hardware. Incorporating a futuristic mechanized exterior design, the</p><p class=\"ql-align-center\">Cyborg 15 AI A1V is built to be the most ground-breaking, avant-garde gaming laptop.</p><p><br></p><h2 class=\"ql-align-center\">Powerful Performance for Gaming Enthusiasts</h2><p class=\"ql-align-center\">With its lightning-fast processing speeds featuring Intel’s first integrated NPU for power-efficient</p><p class=\"ql-align-center\">AI acceleration and local inference for the laptop. The latest Intel Core Ultra 7 processor 155H is a game-changer.</p><p><br></p><h3 class=\"ql-align-center\">Sleek Design with Customizable RGB Keyboard</h3><p class=\"ql-align-center\">Stand out from the crowd with the MSI Cyborg Gaming 15 AI A1VEK. Its sleek design and customizable</p><p class=\"ql-align-center\">4-Zone RGB gaming keyboard make it a stylish choice for gamers who demand both performance and aesthetics.</p><p><br></p><p><br></p><p><strong>Processor</strong></p><p>Intel Core Ultra 7 processor 155H with Intel AI Boost (NPU)16 cores (6 P-cores + 8 E-cores + 2 Low Power E-cores), Max Turbo Frequency 4.8 GHz Processor</p><p><strong>Storage</strong></p><p>512GB M.2 PCIe NVMe SSD</p><p><strong>Memory</strong></p><p>16GB DDR5 4800MHZ RAM</p><p><strong>Display</strong></p><p>15.6″ FHD(1920×1080), 144Hz Refresh Rate, IPS-Level Display</p><p><strong>Graphics</strong></p><p>6GB NVIDIA GeForce RTX 4050 GDDR6 Laptop GPU Graphics</p><p><strong>WebCam</strong></p><p>HD type (30fps@720p)</p><p><strong>Keyboard</strong></p><p>4-Zone RGB Gaming Keyboard</p><p><strong>LAN</strong></p><p>Gigabit Ethernet</p><p><strong>Wi-Fi/ Bluetooth</strong></p><p>Intel Wi-Fi 6E AX211, Bluetooth v5.3</p><p><strong>Audio</strong></p><p>2x 2W Audio SpeakerHi-Res Audio Ready, DTS Audio Processing</p><p><strong>Audio Port</strong></p><p>1x Mic-in/Headphone-out Combo Jack</p><p><strong>USB Ports</strong></p><p>1x Type-C (USB3.2 Gen2 / DP)2x Type-A USB3.2 Gen1</p><p><strong>Video Ports</strong></p><p>1x HDMI 2.1 (4K @ 60Hz)</p><p><strong>Battery</strong></p><p>3-Cell53.5 Whrs</p><p><strong>AC Adapter</strong></p><p>120W Adaptor</p><p><strong>Weight (W/ Battery)</strong></p><p>1.98 kg</p><p><strong>Operating system</strong></p><p>Windows 11 Home</p>','2024-06-08 13:55:02','200',NULL,9,8,11,11,12,9,1,22,7,3,5,2,2),(28213122,'Asus TUF Gaming F15','Asus TUF Gaming F15 FX507VI – i7',25,485000,4,'465600','<h1 class=\"ql-align-center\">Asus TUF Gaming F15 FX507VI – i7</h1><p class=\"ql-align-center\">Gaming prowess with the Asus TUF Gaming F15 FX507VI – i7. Built to deliver exceptional performance</p><p class=\"ql-align-center\">and durability, this gaming laptop is equipped with advanced hardware and features designed to provide an immersive gaming experience.</p><h2 class=\"ql-align-center\">Powerful Performance with Intel Core i7-13620H Processor</h2><p class=\"ql-align-center\">The Intel Core i7-13620H Processor in the Asus TUF Gaming F15 FX507VI ensures smooth and responsive</p><p class=\"ql-align-center\">performance, allowing you to handle demanding games and multitask with ease.</p><h3 class=\"ql-align-center\">Enhanced Features and Windows 11 Home</h3><p class=\"ql-align-center\">Featuring a backlit Chiclet Keyboard, the Asus TUF Gaming F15 offers enhanced convenience</p><p class=\"ql-align-center\">and functionality for gaming sessions. With 16GB DDR5-4800 RAM and a 1TBM.2 NVMe PCIe 4.0 SSD</p><p><strong>Processor</strong></p><p>Intel Core i7-13620H Processor 2.4 GHz (24M Cache, up to 4.9 GHz, 10 cores: 6 P-cores and 4 E-cores)</p><p><strong>Storage</strong></p><p>1TB M.2 NVMe PCIe 4.0 SSD</p><p><strong>Memory</strong></p><p>16GB DDR5-4800 SO-DIMM</p><p><strong>Display</strong></p><p>15.6″, FHD (1920 x 1080) 16:9, Value IPS-level, Anti-glare display, – sRGB:100%, – Adobe:75.35%, – Refresh Rate:144Hz, G-Sync, MUX Switch + NVIDIA&nbsp;Advanced Optimus Display</p><p><strong>Graphics</strong></p><p>8GB NVIDIA GeForce RTX 4070 Laptop GPU Graphics</p><p><strong>Keyboard and Touchpad</strong></p><p>Backlit Chiclet Keyboard 1-Zone RGB</p><p>Touchpad</p><p><strong>Camera</strong></p><p>720P HD camera</p><p><strong>I/O Ports</strong></p><p>1x 3.5mm Combo Audio Jack</p><p>1x HDMI 2.1 FRL</p><p>2x USB 3.2 Gen 1 Type-A</p><p>1x USB 3.2 Gen 2 Type-C support DisplayPort™ / power delivery / G-SYNC</p><p>1x RJ45 LAN port</p><p>1x Thunderbolt 4 support DisplayPort</p><p><strong>Audio</strong></p><p>Dolby Atmos</p><p>AI noise-canceling technology</p><p>Hi-Res certification (for headphone)</p><p>Support Microsoft Cortana near field/far field</p><p>Built-in array microphone</p><p>2-speaker system</p><p><strong>Network and Communication</strong></p><p>Wi-Fi 6(802.11ax) (Dual band) 2*2 + Bluetooth 5.2 Wireless Card (*Bluetooth version may change with OS version different.)</p><p><strong>Battery</strong></p><p>90WHrs, 4S1P, 4-cell Li-ion</p><p><strong>Power Supply</strong></p><p>ø6.0, 240W AC Adapter, Output: 20V DC, 12A, 240W, Input: 100~240C AC 50/60Hz universal</p><p><strong>Weight</strong></p><p>2.20 Kg (4.85 lbs)</p><p><strong>Colour</strong></p><p>Mecha Grey</p><p><strong>Operating System</strong></p><p>Windows 11 Home</p>','2024-06-08 14:01:25','500',NULL,7,7,12,11,13,8,1,23,7,3,5,2,1),(28213123,'Asus ROG Strix SCAR 16','Asus ROG Strix SCAR 16 (As G634JZR 131) – i9',10,1589000,40,'953400','<h2 class=\"ql-align-center\">BEAT THE BEST. BREAK ALL LIMITS.</h2><h1 class=\"ql-align-center\">Asus ROG Strix SCAR 16 As G634JZR 131</h1><p class=\"ql-align-center\">Level up your game with the ROG Strix G16 (Custom). With a 1TB + 1TB SSD and a 240Hz QHD+ display, experience lighting-fast</p><p class=\"ql-align-center\">performance and silky smooth visuals that will leave you breathless.32GB of DDR5 RAM – it’s a powerhouse that will destroy any game you throw at it.</p><h3 class=\"ql-align-center\">The Pinnacle of Performance</h3><p class=\"ql-align-center\">The ROG Strix SCAR 16. Get the drop on the competition with a lightning-fast and crystal-clear 16-inch 2.5K 240Hz</p><p class=\"ql-align-center\">Nebula HDR display Mini LED panel with over 2000 dimming zones. Powered by Intel Core i9 Processor 14900HX and up to NVIDIA GeForce RTX 4080 Laptop GPU</p><p class=\"ql-align-center\">with a max TGP of 175W, the SCAR 16 easily handles even the most demanding games.</p><h4 class=\"ql-align-center\">The Pinnacle of Performance</h4><p class=\"ql-align-center\">The SCAR series is built from the ground up for gamers — and, of course, game developers. The Strix SCAR 16 can run all of the latest game engines,</p><p class=\"ql-align-center\">enabling you to unlock your creativity and try your hand at making the next great game.</p><h4 class=\"ql-align-center\">Game. Stream. Create.</h4><p class=\"ql-align-center\">Whether you’re a digital artist, streamer, video editor, or dabble with animation and game development, the Strix SCAR 16 has all</p><p class=\"ql-align-center\">the horsepower you need to take your creations to the next level.</p><p><strong>Processor</strong></p><p>Intel Core i9 Processor 14900HX 2.2 GHz (36MB Cache, up to 5.8 GHz, 24 cores, 32 Threads)</p><p><strong>Storage</strong></p><p>1TB + 1TB PCIe® 4.0 NVMe™ M.2 Performance SSD</p><p><strong>Memory</strong></p><p>32GB DDR5-5600 SO-DIMM, the memory speed of the systems vary by CPU SPEC x 2</p><p><strong>Display</strong></p><p>16-inch QHD+ 16:10 (2560 x 1600, WQXGA) Mini LED Anti-glare display</p><p>Refresh Rate: 240Hz</p><p>Response Time: 3ms</p><p>G-Sync</p><p><strong>Graphics</strong></p><p>NVIDIA GeForce RTX 4080 Laptop GPU</p><p>ROG Boost: 2330MHz at 175W (2280MHz Boost Clock+50MHz OC, 150W+25W Dynamic Boost)</p><p>12GB GDDR6</p><p><strong>Keyboard and Touchpad</strong></p><p>Backlit Chiclet Keyboard Per-Key RGB</p><p>Support NumberPad</p><p>Touchpad</p><p><strong>Camera</strong></p><p>720P HD camera</p><p><strong>Battery</strong></p><p>90WHrs, 4S1P, 4-cell Li-ion</p><p><strong>Weight</strong></p><p>2.65 Kg (5.84 lbs)</p><p><strong>Dimensions (W x D x H)</strong></p><p>35.4 x 26.4 x 2.26 ~ 3.04 cm (13.94″ x 10.39″ x 0.89″ ~ 1.20″)</p><p><strong>Audio</strong></p><p>Smart Amp Technology</p><p>Dolby Atmos</p><p>AI noise-canceling technology</p><p>Hi-Res certification (for headphone)</p><p>Support Microsoft Cortana near field/far field</p><p>Built-in array microphone</p><p>4-speaker system with Smart Amplifier Technology</p><p><strong>I/O Ports</strong></p><p>1x 3.5mm Combo Audio Jack</p><p>1x HDMI 2.1 FRL</p><p>2x USB 3.2 Gen 2 Type-A</p><p>1x USB 3.2 Gen 2 Type-C support DisplayPort / power delivery / G-SYNC</p><p>1x 2.5G LAN port</p><p>1x Thunderbolt 4 support DisplayPort™ / G-SYNC</p><p><strong>Operating System</strong></p><p><strong><span class=\"ql-cursor\">﻿</span></strong>Windows 11 Home</p><p class=\"ql-align-center\"><br></p><p><br></p>','2024-06-08 14:11:03','500',NULL,10,7,13,12,14,10,1,19,7,4,5,2,2),(28213124,'MSI Thin GF63','MSI Thin GF63 12UCX Gaming – i5',20,299000,2,'293020','<h1 class=\"ql-align-center\">MSI Thin GF63 12UCX</h1><h1 class=\"ql-align-center\">LAPTOP THE ULTIMATE PLAY</h1><p class=\"ql-align-center\">NVIDIA GeForce RTX 30 Series Laptop GPUs power the world’s fastest laptops for</p><p class=\"ql-align-center\">gamers and creators. They’re built with Ampere—NVIDIA’s 2nd gen RTX architecture—to give you.</p><p class=\"ql-align-center\">the most. Realistic ray-traced graphics and cutting-edge AI features like NVIDIA DLSS.</p><h2 class=\"ql-align-center\">Lightning Fast and Smooth Display</h2><p class=\"ql-align-center\">Our gaming laptops tailor-made and highly optimized for gamers. The display comes with a high</p><p class=\"ql-align-center\">refresh rate and smooth visuals, allowing you to experience the next level of gaming.</p><h3 class=\"ql-align-center\">Stay Cool and Quiet Underload</h3><p class=\"ql-align-center\">Fine-tuned to be noticeably quieter and cooler under load,</p><p class=\"ql-align-center\">easily blending into any environment.</p><p><strong>Model</strong></p><p>Thin GF63 12UCX</p><p><strong>Processor</strong></p><p>Up to 12th Gen Intel Core i5-12450H Processor</p><p><strong>Storage</strong></p><p>512GB PCIe NVMe M.2 SSD</p><p><strong>Memory</strong></p><p>16GB DDR4 3200 MHz RAM</p><p><strong>Graphics</strong></p><p>NVIDIA GeForce RTX 2050 Laptop GPU 4GB GDDR6</p><p>Up to 1170MHz Boost Clock 45W Maximum Graphics Power with Dynamic Boost. *May vary by scenario</p><p><strong>Display</strong></p><p>15.6″ FHD (1920×1080), 144Hz, IPS-Level</p><p><strong>Battery</strong></p><p>3-Cell</p><p>52.4 Battery (Whr)</p><p><strong>AUDIO</strong></p><p>2x 2W Speaker</p><p><strong>AUDIO JACK</strong></p><p>1x Mic-in, 1x Headphone-out</p><p><strong>I/O Ports</strong></p><p>1x 3.5mm Combo Audio Jack</p><p>1x HDMI 2.1 FRL</p><p>2x USB 3.2 Gen 1 Type-A</p><p>1x USB 3.2 Gen 2 Type-C support DisplayPort™ / power delivery / G-SYNC</p><p>1x RJ45 LAN port</p><p>1x Type C USB 4 support DisplayPort</p><p><strong>Keyboard and Touchpad</strong></p><p>Single Backlit Keyboard (Red)</p><p><strong>Camera</strong></p><p>HD type (30fps@720p)</p><p><strong>I/O PORTS</strong></p><p>1x Type-C (USB3.2 Gen1 / DP)</p><p>3x Type-A USB3.2 Gen1</p><p>1x HDMI (4K @ 30Hz)</p><p>1x RJ45</p><p><strong>SECURITY</strong></p><p>Kensington Lock</p><p><strong>AC ADAPTER</strong></p><p>120W adapter</p><p><strong>Weight</strong></p><p>1.86 kg</p><p><strong>Dimensions (W x D x H)</strong></p><p>359 x 254 x 21.7 mm</p><p><strong>Operating System</strong></p><p>Windows 11 Home (MSI recommends Windows 11 Pro for business.)</p>','2024-06-08 14:23:13','200',NULL,7,8,9,9,10,7,1,20,8,3,5,2,1),(28213125,'Dell Latitude','Dell Latitude 7430 – i5',30,520000,5,'494000','<h1 class=\"ql-align-center\">The New Dell Latitude 7430</h1><p class=\"ql-align-center\">12th Gen Intel Core i5 Processors, Delivering Superior Performance Where You Need It Most.Take the next evolutionary leap with the performance</p><p class=\"ql-align-center\">hybrid architecture of 12th Generation Intel Core processors. Get the performance you need, where you need it</p><p class=\"ql-align-center\">whether you’re a gamer, creator, streamer, or everyday user.</p><h2 class=\"ql-align-center\">The confidence to work anywhere</h2><p class=\"ql-align-center\">Express Connect be on 2 networks at once with the world’s first simultaneous multi-network connection for faster data and video downloads.</p><p class=\"ql-align-center\">Get up to 20% more in data transfer from optimized networking,</p><h2 class=\"ql-align-center\">The reliability to collaborate everywhere</h2><p class=\"ql-align-center\">Onlooker detection notifies you when someone is peering at your screen and will texture your screen, while Look Away Detect knows when your focus is</p><p class=\"ql-align-center\">elsewhere and dims the screen to further protect privacy and save battery life.</p><h3 class=\"ql-align-center\">Multi-tasking for today’s hybrid work</h3><p class=\"ql-align-center\">New larger dual opposite outlet fan with optimized venting and other thermal improvements keep your system cool and up to 30% quieter than its predecessor,</p><p class=\"ql-align-center\">even when working with multiple applications. Dell offers the broadest range of user – select-able performance, temperature, and fan noise settings.</p><h4 class=\"ql-align-center\">A stunning front-of-screen experience</h4><p class=\"ql-align-center\">Easy on the eyes, Comfort View Plus, an always-on, built-in low blue light solution that reduces</p><p class=\"ql-align-center\">harmful blue light while delivering excellent color.</p><p><strong>Model</strong></p><p>Dell Latitude 7430</p><p><strong>Processor</strong></p><p>12th Gen Intel Core i5-1235U (12 MB cache, 10 cores, 12 threads, up to 2.50GHz)</p><p><strong>Hard Drive</strong></p><p>512GB SSD NVMe, Class 35</p><p><strong>Memory</strong></p><p>8GB, DDR4, 3200 MHz RAM</p><p><strong>Display</strong></p><p>Laptop 14.0″ FHD (1920×1080) AG, Non-Touch, HD RGB Cam, WLAN, Carbon Fiber</p><p><strong>Graphics Card</strong></p><p>Intel UHD Graphics</p><p><strong>Rotation</strong></p><p>180′ Degree</p><p><strong>Ports</strong></p><p>3.5 Audio Port</p><p>1 USB 3.2 Gen 1 port with PowerShare</p><p>1 headset (headphone and microphone combo) port</p><p>1 HDMI 2.0 port</p><p><strong>Audio and Speakers</strong></p><p>Stereo speakers</p><p>2 Noise Canceling Microphones</p><p>Intelligent Audio with Neural Noise Cancellation</p><p><strong>Keyboard</strong></p><p>English US backlit keyboard, 79-key</p><p><strong>Primary Battery</strong></p><p>4 Cell, 58 Wh Battery</p><p><strong>Operating system</strong></p><p>Windows 10 Pro</p><p><strong>Warranty</strong></p><p>3 Year ( Dell onsite ) Warranty</p>','2024-06-08 14:27:26','200',NULL,11,10,14,13,15,7,1,24,8,5,6,2,2),(28213126,'Asus Creator Gaming','Asus Creator Gaming Q540VJ – i9',10,375000,2,'367500','<h1 class=\"ql-align-center\">sus Creator Gaming Q540VJ</h1><h1 class=\"ql-align-center\">Light up your creativity</h1><p class=\"ql-align-center\">The Asus Creator Gaming Q540VJ-i9 is a powerhouse laptop designed to unleash your creativity. Equipped with an Intel</p><p class=\"ql-align-center\">With a Core i9-13900H processor, this laptop delivers unparalleled performance for demanding tasks such as content creation, gaming, and more.</p><h2 class=\"ql-align-center\">World-leading 3K, 120Hz OLED Display</h2><p class=\"ql-align-center\">15.6″ 3K OLED display of the Asus Creator Gaming Q540VJ-i9 laptop. Featuring a resolution higher than Full HD and a 120Hz</p><p class=\"ql-align-center\">refresh rate, this display delivers vibrant colors, deep blacks, and smooth motion, enhancing your gaming and multimedia experience.</p><h3 class=\"ql-align-center\">It’s Cool To Go Fast</h3><p class=\"ql-align-center\">Asus Creator Gaming Q540VJ-i9 is the formidable Intel Core i9-13900H Processor, offering exceptional performance</p><p class=\"ql-align-center\">for intensive tasks. With its high clock speeds and multiple cores, this processor is capable of handling demanding applications with ease.</p><p><strong>Model</strong></p><p>Q540VJ</p><p><strong>Processor</strong></p><p>Intel Core i9-13900H Processor 2.6 GHz (24MB Cache, up to 5.4 GHz, 14 cores, 20 Threads)</p><p><strong>Storage</strong></p><p>1TB M.2 NVMe PCIe 3.0 SSD</p><p><strong>Memory</strong></p><p>16GB DDR5 on board RAM</p><p><strong>Display</strong></p><p>15.6″, 3K (2880 x 1620) OLED 16:9 aspect ratio, 0.2ms response time, 120Hz refresh rate, 400nits, 600nits HDR peak brightness Non-touch screen, Display</p><p><strong>Graphics</strong></p><p>6GB NVIDIA GeForce RTX 3050 Laptop GPU</p><p><strong>Expansion Slots (included)</strong></p><p>1x DDR5 SO-DIMM slot</p><p>2x M.2 2280 PCIe 3.0×4</p><p><strong>I/O Ports</strong></p><p>1x USB 3.2 Gen 2 Type-C support display / power delivery</p><p>2x USB 3.2 Gen 1 Type-A</p><p>1x Thunderbolt 4 supports display / power delivery</p><p>1x HDMI 2.1 TMDS</p><p>1x 3.5mm Combo Audio Jack</p><p>1x RJ45 Gigabit Ethernet</p><p>1x DC-in</p><p>SD 4.0 card reader</p><p><strong>Keyboard &amp; Touchpad</strong></p><p>Backlit Chiclet Keyboard, 1.4mm Key-travel, Precision touchpad</p><p><strong>Camera</strong></p><p>1080p FHD camera With privacy shutter</p><p><strong>Audio</strong></p><p>Smart Amp Technology</p><p>Built-in microphone</p><p>harman/kardon (Mainstream)</p><p>with Cortana voice-recognition support</p><p><strong>Network and Communication</strong></p><p>Wi-Fi 6E(802.11ax) (Dual band) 2*2 + Bluetooth 5.3 Wireless Card</p><p><strong>Battery</strong></p><p>70WHrs, 3S1P, 3-cell Li-ion</p><p><strong>Power Supply</strong></p><p>ø4.5, 150W AC Adapter, Output: 20V DC, 7.5A, 150W, Input: 100~240V AC, 50/60Hz universal</p><p><strong>Color</strong></p><p>0°Black</p><p><strong>Weight</strong></p><p>1.80 kg (3.97 lbs)</p><p><strong>Operating System</strong></p><p>Windows 11 Home</p><p><strong>Warranty</strong></p><p>1 Year Local Warranty</p>','2024-06-08 14:30:56','500',NULL,12,7,15,14,16,9,1,25,8,3,4,2,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produt_status`
--

DROP TABLE IF EXISTS `produt_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produt_status` (
  `produt_status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`produt_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produt_status`
--

LOCK TABLES `produt_status` WRITE;
/*!40000 ALTER TABLE `produt_status` DISABLE KEYS */;
INSERT INTO `produt_status` VALUES (1,'Active'),(2,'Inactive');
/*!40000 ALTER TABLE `produt_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ram`
--

DROP TABLE IF EXISTS `ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ram` (
  `ram_id` int NOT NULL AUTO_INCREMENT,
  `ram` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ram_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ram`
--

LOCK TABLES `ram` WRITE;
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;
INSERT INTO `ram` VALUES (8,'16GB'),(9,'16GB DDR4 3200 MHz RAM'),(10,'16GB DDR5 5200MHz RAM'),(11,'16GB DDR5 4800MHZ RAM'),(12,'32GB DDR5-5600 SO-DIMM RAM'),(13,'8GB DDR4 3200MHz RAM'),(14,'16GB DDR5 Onboard RAM');
/*!40000 ALTER TABLE `ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recent`
--

DROP TABLE IF EXISTS `recent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recent` (
  `recent_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `fk_recent_product1_idx` (`product_id`),
  KEY `fk_recent_user1_idx` (`user_id`),
  CONSTRAINT `fk_recent_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_recent_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recent`
--

LOCK TABLES `recent` WRITE;
/*!40000 ALTER TABLE `recent` DISABLE KEYS */;
INSERT INTO `recent` VALUES (53,28213118,48210051),(54,28213118,1),(55,28213118,1),(56,28213118,1),(57,28213118,1),(58,28213118,48210051),(59,28213118,48210051),(60,28213118,48210070),(61,28213118,48210070),(62,28213118,48210070),(63,28213118,48210070),(64,28213118,48210070),(65,28213118,48210070),(66,28213119,48210070),(67,28213119,48210070),(68,28213118,48210070),(69,28213119,48210070),(70,28213118,48210070),(71,28213118,48210070),(72,28213118,48210051),(73,28213122,48210051),(74,28213118,48210051);
/*!40000 ALTER TABLE `recent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `size_id` int NOT NULL AUTO_INCREMENT,
  `size` varchar(45) NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (2,'15.6 INCH'),(3,'15.6″ INCH'),(4,'16″  INCH'),(5,'14\" INCH');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage` (
  `storage_id` int NOT NULL AUTO_INCREMENT,
  `storage` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`storage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
INSERT INTO `storage` VALUES (6,'1TB NVME'),(7,'512GB PCIe NVMe M.2 SSD'),(8,'1TB M.2 NVMe SSD'),(9,'512GB M.2 PCIe NVMe SSD'),(10,'1TB + 1TB PCIe 4.0 NVMe M.2 SSD');
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `no` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `status_id` int NOT NULL,
  `password` varchar(45) NOT NULL,
  `otp` varchar(100) DEFAULT NULL,
  `uev_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_user_city_idx` (`city_id`),
  KEY `fk_user_status1_idx` (`status_id`),
  KEY `fk_user_user_ev2_idx` (`uev_id`),
  CONSTRAINT `fk_user_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `fk_user_status1` FOREIGN KEY (`status_id`) REFERENCES `user_status` (`status_id`),
  CONSTRAINT `fk_user_user_ev2` FOREIGN KEY (`uev_id`) REFERENCES `user_ev` (`uev_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48210080 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Thamindu','DisnaZ','thamindud.se@gmail.com','0764501212','12','1212',6,1,'12345','66614e198a751',1),(48210051,'Thamindu','Disna','thamindudisna121@gmail.com','0768084855','lmnlnl','Asgiriya',5,1,'12345','66628c0f26e49',1),(48210070,'Heshith','Dashan','heshithdashan18@gmail.com','0753562486','52','nittambuwa',5,1,'H@123dashan$','66630c2f58f4d',1),(48210077,'Thamindu','Disna','thamindudisna.se@gmail.com','0768084856',NULL,NULL,NULL,1,'12345','6665584cc1be2',1),(48210078,'Thamindu','Disna','chama@gmail.com','0768084859',NULL,NULL,NULL,1,'Disna2005','6666e9399134e',2),(48210079,'Dulran','Hemjitha','dulranhemjitha3@gmail.com','0786295820',NULL,NULL,NULL,1,'123456','66676e6a94c11',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_ev`
--

DROP TABLE IF EXISTS `user_ev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_ev` (
  `uev_id` int NOT NULL AUTO_INCREMENT,
  `uev` varchar(45) NOT NULL,
  PRIMARY KEY (`uev_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_ev`
--

LOCK TABLES `user_ev` WRITE;
/*!40000 ALTER TABLE `user_ev` DISABLE KEYS */;
INSERT INTO `user_ev` VALUES (1,'veryfied'),(2,'not-verify');
/*!40000 ALTER TABLE `user_ev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_img`
--

DROP TABLE IF EXISTS `user_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_img` (
  `user_img_id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(145) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_img_id`),
  KEY `fk_user_img_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_img_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_img`
--

LOCK TABLES `user_img` WRITE;
/*!40000 ALTER TABLE `user_img` DISABLE KEYS */;
INSERT INTO `user_img` VALUES (1,'resources/user-profile-images/Thamindu_6660ad99870ae.jpeg',48210051),(3,'resources/user-profile-images/Thamindu_666260dcb0c51.jpeg',1);
/*!40000 ALTER TABLE `user_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_status`
--

DROP TABLE IF EXISTS `user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_status`
--

LOCK TABLES `user_status` WRITE;
/*!40000 ALTER TABLE `user_status` DISABLE KEYS */;
INSERT INTO `user_status` VALUES (1,'Active'),(2,'Inactive');
/*!40000 ALTER TABLE `user_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `useremail` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `useremail` (`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'henry@gmail.com','Henry','$2y$10$vC41AOMLc.nfBlZFOwukkuN/44tpQIlIjnGdRMMOVdlzOTf5fT5zq','754bcf4b23f6b6f887e30182f22ac0b7bd577256d26e7e744546ac8403ee855a3aa236909dd98571731913e85f8dd1b1e7c9','2021-12-04 17:53:37');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warranty`
--

DROP TABLE IF EXISTS `warranty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warranty` (
  `warranty_id` int NOT NULL AUTO_INCREMENT,
  `warranty` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`warranty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warranty`
--

LOCK TABLES `warranty` WRITE;
/*!40000 ALTER TABLE `warranty` DISABLE KEYS */;
INSERT INTO `warranty` VALUES (4,'2 YEARS'),(5,'2 Year Company Warranty'),(6,'3 Year Company Warranty');
/*!40000 ALTER TABLE `warranty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchlist`
--

DROP TABLE IF EXISTS `watchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watchlist` (
  `watchlist_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`watchlist_id`),
  KEY `fk_watchlist_user1_idx` (`user_id`),
  KEY `fk_watchlist_product1_idx` (`product_id`),
  CONSTRAINT `fk_watchlist_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_watchlist_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchlist`
--

LOCK TABLES `watchlist` WRITE;
/*!40000 ALTER TABLE `watchlist` DISABLE KEYS */;
INSERT INTO `watchlist` VALUES (17,48210051,28213118),(20,48210051,28213120),(21,48210051,28213125),(23,48210079,28213120),(24,48210079,28213121);
/*!40000 ALTER TABLE `watchlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-10 16:34:32
