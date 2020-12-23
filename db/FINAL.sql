-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: phpcapstone
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.20.04.1

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
-- Table structure for table `Orderlines`
--

DROP TABLE IF EXISTS `Orderlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orderlines` (
  `order_no` int NOT NULL AUTO_INCREMENT,
  `line_no` int NOT NULL,
  `qty` int DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_no`,`line_no`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orderlines`
--

LOCK TABLES `Orderlines` WRITE;
/*!40000 ALTER TABLE `Orderlines` DISABLE KEYS */;
INSERT INTO `Orderlines` VALUES (1,1,1,4.99,19,'Organic Potato'),(7,1,2,1.99,1,'Organic Green Capsicum'),(8,1,2,1.99,1,'Organic Green Capsicum'),(8,2,2,19.99,7,'A4 Wagyu Rib-eye (Frozen)'),(8,3,3,5.99,12,'Organic Oat Drink with Calcium'),(9,1,1,3.99,4,'Organic Cherry Tomatoes (Spain)'),(10,1,1,17.99,8,'US CAB Rib Eye Steak (Frozen)'),(11,1,1,1.99,2,'Organic Yellow Capsicum'),(12,1,1,2.99,3,'Organic Cucumber'),(13,1,1,19.99,7,'A4 Wagyu Rib-eye (Frozen)'),(14,1,2,3.99,5,'Organic Bean Sprout'),(14,2,1,13.99,6,'Australia Grain Fed Striploin (Frozen)'),(14,3,3,11.99,11,'Chicken Mid Joint Wing(Frozen)'),(15,1,1,2.99,3,'Organic Cucumber'),(16,1,1,4.99,13,'Vitaminwater - Lemonade (Bottle)'),(16,2,1,4.99,15,'Thailand dried mango'),(17,1,1,1.99,2,'Organic Yellow Capsicum'),(18,1,1,1.99,1,'Organic Green Capsicum'),(19,1,1,2.99,3,'Organic Cucumber'),(20,1,1,19.99,7,'A4 Wagyu Rib-eye (Frozen)'),(21,1,1,2.99,3,'Organic Cucumber'),(22,1,1,2.99,3,'Organic Cucumber'),(23,1,1,1.99,2,'Organic Yellow Capsicum'),(24,1,1,19.99,7,'A4 Wagyu Rib-eye (Frozen)'),(24,2,1,13.99,10,'Frozen Chicken Griller (Frozen)'),(25,1,1,5.99,12,'Organic Oat Drink with Calcium'),(26,1,1,19.99,7,'A4 Wagyu Rib-eye (Frozen)'),(27,1,2,1.99,2,'Organic Yellow Capsicum'),(28,1,1,1.99,1,'Organic Green Capsicum');
/*!40000 ALTER TABLE `Orderlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `order_no` int NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `shipping_street` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_postal` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_province` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `status` enum('PENDING','COMPLETED') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated_delivery_date` datetime DEFAULT NULL,
  `sub_total` float DEFAULT NULL,
  `gst` float DEFAULT NULL,
  `pst` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'2020-09-02 15:00:00','101 Main Street','Winnipeg','R3I0L0','MB','CANADA','204-123-1234',6,'PENDING','2020-10-02 00:00:00',4.99,0.35,0.25,5.59,'2020-09-09 02:32:29',NULL),(7,'2020-09-25 12:14:51','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',3.98,0.28,0.2,4.46,'2020-09-25 17:14:51',NULL),(8,'2020-09-25 12:15:41','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',61.93,4.34,3.1,69.37,'2020-09-25 17:15:41',NULL),(9,'2020-09-25 14:35:45','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',3.99,0.28,0.2,4.47,'2020-09-25 19:35:45',NULL),(10,'2020-09-25 14:37:12','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',17.99,1.26,0.9,20.15,'2020-09-25 19:37:12',NULL),(11,'2020-09-25 14:59:52','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',1.99,0.14,0.1,2.23,'2020-09-25 19:59:52',NULL),(12,'2020-09-25 15:01:13','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',2.99,0.21,0.15,3.35,'2020-09-25 20:01:13',NULL),(13,'2020-09-25 15:03:10','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',19.99,1.4,1,22.39,'2020-09-25 20:03:10',NULL),(14,'2020-09-25 15:05:03','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',57.94,4.06,2.9,64.9,'2020-09-25 20:05:03',NULL),(15,'2020-09-25 15:12:20','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',2.99,0.21,0.15,3.35,'2020-09-25 20:12:20',NULL),(16,'2020-09-25 16:33:55','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',9.98,0.7,0.5,11.18,'2020-09-25 21:33:55',NULL),(17,'2020-09-25 16:35:19','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',1.99,0.14,0.1,2.23,'2020-09-25 21:35:19',NULL),(18,'2020-09-25 16:37:43','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',1.99,0.14,0.1,2.23,'2020-09-25 21:37:43',NULL),(19,'2020-09-25 16:38:50','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',2.99,0.21,0.15,3.35,'2020-09-25 21:38:50',NULL),(20,'2020-09-25 16:42:10','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',19.99,1.4,1,22.39,'2020-09-25 21:42:10',NULL),(21,'2020-09-25 16:48:34','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',2.99,0.21,0.15,3.35,'2020-09-25 21:48:34',NULL),(22,'2020-09-25 16:49:55','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-09-28 00:00:00',2.99,0.21,0.15,3.35,'2020-09-25 21:49:55',NULL),(23,'2020-09-26 12:22:13','3 Third Street','Winnipeg','R3L2B2','MB','Canada','+14311231234',8,'PENDING','2020-09-29 00:00:00',1.99,0.14,0.1,2.23,'2020-09-26 17:22:13',NULL),(24,'2020-09-26 12:30:55','3 Third Street','Winnipeg','R3L2B2','MB','Canada','+14311231234',8,'PENDING','2020-09-29 00:00:00',33.98,2.38,1.7,38.06,'2020-09-26 17:30:55',NULL),(25,'2020-09-26 12:34:03','999 Second Street','Winnipeg','R3U1B1','MB','Canada','+12041234444',46,'PENDING','2020-09-29 00:00:00',5.99,0.42,0.3,6.71,'2020-09-26 17:34:03',NULL),(26,'2020-09-29 08:54:37','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-10-02 00:00:00',19.99,1.4,1,22.39,'2020-09-29 13:54:37',NULL),(27,'2020-09-29 12:48:59','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-10-02 00:00:00',3.98,0.28,0.2,4.46,'2020-09-29 17:48:59',NULL),(28,'2020-09-29 23:11:52','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234',6,'PENDING','2020-10-02 00:00:00',1.99,0.14,0.1,2.23,'2020-09-30 04:11:52',NULL);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `unit_price` float DEFAULT NULL,
  `image_filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity_in_stock` int DEFAULT NULL,
  `origin` enum('USA','Canada','Thailand','Australia','Japan','Spain') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `obsolete` tinyint DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Organic Green Capsicum','Green capsicums, harvested before they are fully ripe.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',1.99,'vet5.jpg','Fruit and Vegtable',50,'Canada','V1',0,50,'2020-09-08 21:22:47',NULL),(2,'Organic Yellow Capsicum','Yellow sweet peppers are tasty either raw or cooked','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',1.99,'vet6.jpg','Fruit and Vegtable',40,'Canada','V1',0,50,'2020-09-08 21:22:47',NULL),(3,'Organic Cucumber','Cucumbers are a very good source of the vitamins C and A','Cucumbers have been popular garden staples for hundreds of years. They are easy to grow and have a uniquely cool, refreshing taste.',2.99,'vet7.jpg','Fruit and Vegtable',40,'Canada','V1',0,150,'2020-09-08 21:22:47',NULL),(4,'Organic Cherry Tomatoes (Spain)','Versatile, delicious, and colorful Cherry Tomatoes','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',3.99,'vet8.jpg','Fruit and Vegtable',40,'Spain','V1',0,100,'2020-09-08 21:22:47',NULL),(5,'Organic Bean Sprout','bean sprouts are a culinary vegetable grown by sprouting mung beans.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',3.99,'vet9.jpg','Fruit and Vegtable',40,'USA','V1',0,80,'2020-09-08 21:22:47',NULL),(6,'Australia Grain Fed Striploin (Frozen)','Roast this boneless striploin or cut grass fed strip steaks.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',13.99,'meat1.jpg','Meat and Seafood',40,'Australia','V1',0,170,'2020-09-08 21:22:47',NULL),(7,'A4 Wagyu Rib-eye (Frozen)','Japanese style rib eyes steak perfect for sharing in the form of sukiyaki, barbecues or yakiniku.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',19.99,'meat2.jpg','Meat and Seafood',40,'USA','V1',0,160,'2020-09-08 21:22:47',NULL),(8,'US CAB Rib Eye Steak (Frozen)','High quality Angus beef with modest marbling','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',17.99,'meat3.jpg','Meat and Seafood',40,'USA','V1',0,160,'2020-09-08 21:22:47',NULL),(9,'Australia Wagyu Beef Diced (Frozen)','Japanese Wagyu Steak must be cooked medium done or below if you want it quite tender','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',18.99,'meat4.jpg','Meat and Seafood',40,'Australia','V1',0,180,'2020-09-08 21:22:47',NULL),(10,'Frozen Chicken Griller (Frozen)','rozen whole fresh chicken quarter legs, feet and paws','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',13.99,'meat5.jpg','Meat and Seafood',40,'Canada','V1',0,920,'2020-09-08 21:22:48',NULL),(11,'Chicken Mid Joint Wing(Frozen)','The ulna and radius bones of the Chicken Wing along with the Chicken Meat and Chicken Skin','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',11.99,'meat6.jpg','Meat and Seafood',40,'Canada','V1',0,520,'2020-09-08 21:22:48',NULL),(12,'Organic Oat Drink with Calcium','A plant-based milk replacement perfect whenever you want to use milk','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',5.99,'drink1.jpg','Diary and Eggs',40,'Canada','V1',0,520,'2020-09-08 21:22:48',NULL),(13,'Vitaminwater - Lemonade (Bottle)','A good sugar-free lemonade filled with vitamins and electrolytes','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',4.99,'drink2.jpg','Drinks',40,'Canada','V1',0,220,'2020-09-08 21:22:48',NULL),(14,'Apple Juice 125ml x12','An extremely healthy drink for apple lovers','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',5.99,'drink3.jpg','Drinks',40,'Japan','V1',0,220,'2020-09-08 21:22:48',NULL),(15,'Thailand dried mango','A great alternative for an all day snack.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',4.99,'international3.jpg','International Food',40,'Thailand','V1',0,320,'2020-09-08 21:22:48',NULL),(16,'SnackMate dried blueberries','Qualitative selection of a desirable fruit color in a juicy and tasty berry','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',4.99,'international2.jpg','International Food',40,'Canada','V1',0,320,'2020-09-08 21:22:48',NULL),(17,'Talyer dried fruit','Sun dried, naturally sweet, no sugar added dried fruits','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',6.99,'international1.jpg','International Food',40,'Canada','V1',0,290,'2020-09-08 21:22:48',NULL),(18,'Organic Baby Spinach','All the nutrients of spinach with a milder taste','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',9.99,'vet10.jpg','Fruit and Vegtable',40,'Canada','V1',0,490,'2020-09-08 21:22:48',NULL),(19,'Organic Potato','Potatoes are grown without synthetic fertilizers or pesticides','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',4.99,'vet11.jpg','Fruit and Vegtable',40,'Canada','V1',0,1290,'2020-09-08 21:22:48',NULL),(20,'Black Bean Snack','A great source of fiber, protein and folate','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dignissim leo vitae mi rutrum vulputate. Donec auctor dictum elit laoreet ultrices.',8.99,'international4.jpg','International Food',40,'Thailand','V1',0,190,'2020-09-08 21:22:49',NULL);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` smallint DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_flag` tinyint DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'John','Snow','101 Main st.','Winnipeg','R1L2B2','MB','Canada','2041231234','john@mc.ca',34,'$2y$10$IEeAZLEZp/mxs.zJaT.ExOyM7ermjsWGcuRZEJq9NcSpHmrQIGSma',0,'2020-08-23 20:05:39',NULL),(2,'Peter','Lo','333 Portage Ave.','Winnipeg','R2P1L1','MB','Canada','2049998888','peter@test.ca',44,'$2y$10$k9EHb.FGEQAly16YzQkL5.ZYpQbIVEtF2Cqewe4uBehflACAXXcLW',0,'2020-08-23 20:23:13',NULL),(3,'John','Snow','101 Main st.','Winnipeg','R1L2B2','MB','Canada','+12041231234','john3@mc.ca',22,'$2y$10$PoWM4aPCa.188g49zowPweeN3W3hLxRNMNHJv8ts3uGCVVYQzgksC',0,'2020-08-23 20:25:23',NULL),(4,'Paul','Ho','101 Main st.','Winnipeg','R1L2B2','MB','Canada','+12041231234','john2@mc.ca',33,'$2y$10$IW.tgDNpK4qdcsDjDuv/5ezNPDGY3cglApMz9ijIaQJvw4t78e0IG',0,'2020-09-01 14:48:53',NULL),(5,'Paul','Test','2 Second Street','Winnipeg','R3P2B2','MB','Canada','+12041231234','paul@test.ca',44,'$2y$10$CFh2hsxBcyoq1BNZQzbtpO7nDLywDpjWTCcbP8vSnwoPbwCL5Wue6',1,'2020-09-02 04:44:55',NULL),(6,'May','Lam','3 Third Street','Winnipeg','R3L2B2','MB','Canada','431-123-1234','may@lam.ca',33,'$2y$10$vSTmmz7qlo/JMl4x02KEJO2fmRoKUrD6fYK8bHHG5qIfFrZrHuC46',0,'2020-09-02 05:05:39',NULL),(7,'TestOne','Two','4 Fourth Street','Winnipeg','R3U1B1','MB','Canada','431-123-4321','test@one.ca',67,'$2y$10$4PQ4asvesOjFJFT0Adhal.k.MIPuArMMyOyBsBZEx96mSfs4NfkQe',0,'2020-09-02 05:29:04',NULL),(8,'Marry','Lam','3 Third Street','Winnipeg','R3L2B2','MB','Canada','+14311231234','marry@lam.ca',44,'$2y$10$XfGSrrz5tJZG.573yHnt8OWadnu9ZFVJP72gN4iEqUoSHfyxsVe6.',0,'2020-09-08 20:35:47',NULL),(46,'Lyle','Scott','999 Second Street','Winnipeg','R3U1B1','MB','Canada','+12041234444','lyle@scott.ca',33,'$2y$10$IyRo3UmgxJqiynZxDeTfqeF8qLWnSn6VW6b5sDk5dDAqFy9vD6ZjW',0,'2020-09-26 17:33:46',NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'Testing one event','2020-09-14 16:27:54'),(2,'Testing one event','2020-09-14 16:28:25'),(3,'2020-09-14 16:48:22 | GET | / | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-14 16:48:22'),(4,'2020-09-14 16:48:23 | GET | /products.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-14 16:48:23'),(5,'2020-09-14 16:48:24 | GET | /promotion.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-14 16:48:24'),(6,'2020-09-14 16:48:24 | GET | /membership.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-14 16:48:24'),(7,'2020-09-14 16:48:25 | GET | /support.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-14 16:48:25'),(8,'2020-09-14 16:49:07 | GET | /membership.php?action=register_form | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-14 16:49:07'),(9,'2020-09-14 16:49:08 | GET | /membership.php?action=login_form | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-14 16:49:08'),(10,'2020-09-14 16:49:19 | POST | /login.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-14 16:49:19'),(11,'2020-09-14 16:49:19 | GET | /membership.php?action=profile | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-14 16:49:19'),(12,'2020-09-14 16:49:21 | GET | /membership.php?action=logout | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-14 16:49:21'),(13,'2020-09-14 16:49:21 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-14 16:49:21'),(14,'2020-09-21 11:58:13 | GET | /membership.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-21 16:58:13'),(15,'2020-09-21 11:58:15 | GET | /products.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-21 16:58:15'),(16,'2020-09-21 11:58:15 | GET | /promotion.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-21 16:58:15'),(17,'2020-09-21 11:58:16 | GET | /membership.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-21 16:58:16'),(18,'2020-09-22 10:35:13 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-22 15:35:13'),(19,'2020-09-22 10:35:18 | GET | /promotion.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-22 15:35:18'),(20,'2020-09-22 10:35:42 | GET | /membership.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-22 15:35:42'),(21,'2020-09-22 10:35:42 | GET | /products.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-22 15:35:42'),(22,'2020-09-22 10:46:37 | GET | /membership.php?action=login_form | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-22 15:46:37'),(23,'2020-09-22 10:46:45 | POST | /login.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-22 15:46:45'),(24,'2020-09-22 10:46:45 | GET | /membership.php?action=profile | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-22 15:46:45'),(25,'2020-09-22 10:46:50 | GET | /membership.php?action=logout | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-22 15:46:50'),(26,'2020-09-22 10:46:50 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-22 15:46:50'),(27,'2020-09-22 10:46:57 | GET | /products.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36','2020-09-22 15:46:57'),(28,'2020-09-22 15:42:48 | GET | / | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:42:48'),(29,'2020-09-22 15:42:49 | GET | /products.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:42:49'),(30,'2020-09-22 15:42:50 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:42:50'),(31,'2020-09-22 15:42:51 | GET | /products.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:42:51'),(32,'2020-09-22 15:42:51 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:42:51'),(33,'2020-09-22 15:45:42 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:45:42'),(34,'2020-09-22 15:45:44 | GET | /products.php?action=category&type=Fruit%20and%20Vegtable | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:45:44'),(35,'2020-09-22 15:45:50 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:45:50'),(36,'2020-09-22 15:46:20 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:46:20'),(37,'2020-09-22 15:46:21 | GET | /products.php?action=category&type=Fruit%20and%20Vegtable | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:46:21'),(38,'2020-09-22 15:46:32 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:46:32'),(39,'2020-09-22 15:46:33 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:46:33'),(40,'2020-09-22 15:46:34 | GET | /products.php?action=category&type=Fruit%20and%20Vegtable | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:46:34'),(41,'2020-09-22 15:46:38 | GET | /products.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:46:38'),(42,'2020-09-22 15:46:39 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:46:39'),(43,'2020-09-22 15:46:40 | GET | /products.php?action=category&type=Fruit%20and%20Vegtable | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:46:40'),(44,'2020-09-22 15:47:30 | GET | /promotion.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:47:30'),(45,'2020-09-22 15:47:32 | GET | /products.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:47:32'),(46,'2020-09-22 15:47:33 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:47:33'),(47,'2020-09-22 15:47:34 | GET | /products.php?action=category&type=Fruit%20and%20Vegtable | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:47:34'),(48,'2020-09-22 15:47:37 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:47:37'),(49,'2020-09-22 15:47:38 | GET | /products.php?action=category&type=Fruit%20and%20Vegtable | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:47:38'),(50,'2020-09-22 15:48:10 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:48:10'),(51,'2020-09-22 15:48:11 | GET | /products.php?action=category&type=Fruit%20and%20Vegtable | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:48:11'),(52,'2020-09-22 15:48:38 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:48:38'),(53,'2020-09-22 15:48:39 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:48:39'),(54,'2020-09-22 15:48:39 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:48:39'),(55,'2020-09-22 15:48:40 | GET | /products.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:48:40'),(56,'2020-09-22 15:48:40 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:48:40'),(57,'2020-09-22 15:48:41 | GET | /products.php?action=category&type=Fruit%20and%20Vegtable | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:48:41'),(58,'2020-09-22 15:49:02 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:49:02'),(59,'2020-09-22 15:49:15 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:49:15'),(60,'2020-09-22 15:49:15 | GET | /products.php?action=category&type=Fruit%20and%20Vegtable | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:49:15'),(61,'2020-09-22 15:49:26 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:49:26'),(62,'2020-09-22 15:51:05 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:51:05'),(63,'2020-09-22 15:51:07 | GET | /products.php?action=category&type=Meat%20and%20Seafood | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:51:07'),(64,'2020-09-22 15:51:36 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:51:36'),(65,'2020-09-22 15:54:37 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:54:37'),(66,'2020-09-22 15:54:38 | GET | /products.php?action=category&type=International | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:54:38'),(67,'2020-09-22 15:54:45 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:54:45'),(68,'2020-09-22 15:54:46 | GET | /products.php?action=category&type=Fruit%20and%20Vegtable | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:54:46'),(69,'2020-09-22 15:54:47 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:54:47'),(70,'2020-09-22 15:56:08 | GET | /products.php?action=category&type=Fruit%20and%20Vegtable | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:56:08'),(71,'2020-09-22 15:56:09 | GET | /index.php | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:56:09'),(72,'2020-09-22 15:56:11 | GET | /products.php?action=category&type=International%20Food | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36','2020-09-22 20:56:11'),(73,'Testing one event','2020-09-26 16:34:04'),(74,'Testing one event','2020-09-26 16:34:18'),(75,'Testing one event','2020-09-26 16:34:46'),(76,'Testing one event','2020-09-26 16:35:13'),(77,'Testing one event','2020-09-26 16:36:26'),(78,'Testing one event','2020-09-26 16:36:38'),(79,'Testing one event','2020-09-26 16:37:04'),(80,'Testing one event','2020-09-26 16:37:11'),(81,'Testing one event','2020-09-26 16:53:59'),(82,'Testing one event','2020-09-26 16:54:19'),(83,'Testing one event','2020-09-26 16:55:49'),(84,'Testing one event','2020-09-26 16:56:16'),(85,'Testing one event','2020-09-26 16:56:30'),(86,'Testing one event','2020-09-26 17:08:57'),(87,'Testing one event','2020-09-26 17:35:31'),(88,'Testing one event','2020-09-26 17:36:03'),(89,'Testing one event','2020-09-26 17:36:25'),(90,'Testing one event','2020-09-26 17:42:50');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-30  4:26:07
