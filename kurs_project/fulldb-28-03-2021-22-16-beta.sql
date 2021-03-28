-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `items_item_id` int(10) unsigned NOT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `price` decimal(7,2) NOT NULL,
  `summ` decimal(9,2) DEFAULT (`qty` * `price`),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`,`user_id`),
  KEY `fk_cart_items_idx` (`items_item_id`),
  KEY `fk_cart_users_idx` (`user_id`),
  CONSTRAINT `fk_cart_items` FOREIGN KEY (`items_item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `fk_cart_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='Корзина';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,83,39,11,23263.00,255893.00,'1998-02-28 18:26:44'),(2,89,30,18,21633.46,389402.28,'2011-05-20 22:18:34'),(3,76,44,1,23526.59,23526.59,'1994-08-15 18:19:49'),(4,92,37,24,14581.62,349958.88,'1990-05-14 20:57:51'),(5,70,43,24,8403.17,201676.08,'2006-01-06 15:46:39'),(6,86,57,23,10432.11,239938.53,'2004-01-27 13:07:20'),(7,72,20,16,20990.78,335852.48,'1992-04-28 22:35:40'),(8,69,30,13,11130.22,144692.86,'1970-08-28 10:52:49'),(9,98,2,2,3032.54,6065.08,'2012-07-17 11:44:25'),(10,77,56,1,15936.48,15936.48,'1978-12-23 10:47:14'),(11,92,58,1,12343.42,12343.42,'2014-01-15 05:27:21'),(12,51,61,2,20529.37,41058.74,'2006-12-31 11:01:30'),(13,95,6,8,2593.51,20748.08,'1971-05-09 02:03:33'),(14,53,23,17,24512.01,416704.17,'2018-09-22 19:08:53'),(15,65,44,14,16854.35,235960.90,'2004-06-23 20:48:12'),(16,53,66,24,20380.72,489137.28,'2011-01-20 11:35:51'),(17,58,62,15,18672.91,280093.65,'1978-07-19 04:38:18'),(18,69,48,1,12224.51,12224.51,'1982-02-18 16:11:02'),(19,76,14,2,2470.80,4941.60,'1979-01-01 14:15:26'),(20,58,65,5,5687.58,28437.90,'1997-04-25 18:58:06'),(21,91,63,9,22548.65,202937.85,'1993-11-18 11:04:43'),(22,86,19,5,8060.78,40303.90,'1998-07-11 16:43:04'),(23,58,8,3,20744.00,62232.00,'1998-07-07 00:08:30'),(24,85,10,14,12585.87,176202.18,'2003-07-05 13:03:51'),(25,54,17,21,23553.22,494617.62,'1999-05-22 14:53:40'),(26,95,69,8,11864.78,94918.24,'2011-06-17 19:26:02'),(27,52,67,9,8641.07,77769.63,'1990-08-10 10:37:42'),(28,92,69,20,10152.96,203059.20,'1989-08-20 21:05:51'),(29,51,66,3,11234.05,33702.15,'1989-10-07 02:02:37'),(30,65,23,17,19383.56,329520.52,'2003-08-30 10:25:04'),(31,77,27,19,23311.77,442923.63,'2015-02-06 11:38:25'),(32,62,50,7,14157.55,99102.85,'2007-06-11 22:31:37'),(33,64,43,8,17890.56,143124.48,'1983-08-18 21:11:29'),(34,69,55,9,25434.13,228907.17,'2008-08-22 08:43:55'),(35,91,40,5,5722.32,28611.60,'1971-04-24 08:04:50'),(36,85,44,10,2912.21,29122.10,'2009-07-03 19:17:52'),(37,72,30,7,25953.57,181674.99,'1991-06-14 09:22:11'),(38,94,45,10,10632.77,106327.70,'2010-01-19 15:58:38'),(39,77,41,3,7228.61,21685.83,'1976-08-06 19:31:48'),(40,87,46,15,1263.07,18946.05,'1997-10-02 21:04:13'),(41,91,50,3,11320.05,33960.15,'1976-07-20 03:16:13'),(42,83,61,19,4342.14,82500.66,'1974-08-10 13:56:16'),(43,84,34,19,23283.40,442384.60,'2014-04-15 09:23:18'),(44,92,47,20,12701.85,254037.00,'2004-08-10 19:14:54'),(45,70,10,15,25339.32,380089.80,'2020-04-13 09:26:50'),(46,99,67,1,10350.81,10350.81,'1980-11-03 09:48:15'),(47,76,18,12,15164.03,181968.36,'1977-09-26 13:31:26'),(48,84,54,17,5951.22,101170.74,'2003-04-21 21:55:00'),(49,92,3,15,8978.04,134670.60,'1981-09-18 21:52:48'),(50,77,47,19,24620.17,467783.23,'2019-06-22 00:54:28'),(51,82,17,14,3095.83,43341.62,'1991-10-21 12:07:21'),(52,64,5,19,25821.84,490614.96,'1988-04-21 09:45:20'),(53,84,13,18,17377.22,312789.96,'1992-02-25 14:03:29'),(54,85,13,2,3649.91,7299.82,'1996-01-16 13:07:07'),(55,87,34,19,25424.47,483064.93,'1973-09-07 20:54:16'),(56,91,41,22,3651.41,80331.02,'1991-08-20 16:04:20'),(57,58,32,18,7542.86,135771.48,'1985-08-14 07:29:11'),(58,71,58,6,9300.11,55800.66,'1995-05-30 07:31:02'),(59,95,20,23,16254.91,373862.93,'1989-12-21 13:53:13'),(60,76,23,24,3525.32,84607.68,'2003-05-11 12:52:45');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_method`
--

DROP TABLE IF EXISTS `delivery_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_method` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) DEFAULT NULL,
  `blocked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Ставится при блокировке способа доставки\n',
  `delivery_adress` varchar(190) DEFAULT NULL COMMENT 'адрес доставки, указывается для пунктов доставки или самовывоза. \nдля курьерской доставки оставляем пустым. \nВ идеале разные виды пунктов  лучше сделать отдельными таблицами',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Справочник способов доставки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_method`
--

LOCK TABLES `delivery_method` WRITE;
/*!40000 ALTER TABLE `delivery_method` DISABLE KEYS */;
INSERT INTO `delivery_method` VALUES (1,'non',0,'6347 Nicolas Row Suite 875\nPort Alexaneburgh, TN 58931-3304'),(2,'odio',0,'9195 Greenholt Drives\nOttisberg, DC 95434'),(3,'possimus',0,'391 Florian Fall\nWest Daniela, KY 87895-4342'),(4,'ullam',0,'8782 Keara Shoals Apt. 199\nNew Jennings, OR 40791-2299'),(5,'harum',0,'70982 Emerald Expressway Suite 013\nKilbackmouth, ME 18257-6485'),(6,'ea',0,'78439 Webster Rest\nKuvalistown, MA 59963'),(7,'nisi',0,'02810 Moises Via\nLake Lydia, NY 54364'),(8,'eum',0,'546 Enola Brook Suite 155\nJaysonmouth, IA 61491-5368'),(9,'enim',0,'458 Tristin Road Suite 733\nWillmsfurt, OH 05433'),(10,'aut',0,'8608 Bartell Valley Suite 015\nLake Icie, WA 17311-1882'),(11,'non',0,'562 Greenholt Roads\nBrownmouth, VA 55938'),(12,'deserunt',0,'2168 Monty Route\nMonroeburgh, IA 72103'),(13,'natus',0,'1061 Charlie Courts Suite 368\nKaliville, HI 29137-2008'),(14,'quia',0,'0070 Collin Junction\nWolfffurt, NH 10704'),(15,'in',0,'389 Torp Branch\nRosellabury, MN 51319'),(16,'ullam',0,'3951 Olson Burgs Apt. 924\nRueckershire, MS 52952'),(17,'perspiciatis',0,'30531 Casimer Creek Suite 879\nRohantown, MO 85838-3155'),(18,'laborum',0,'042 Freda Rue\nTheodoreview, OH 79437'),(19,'necessitatibus',0,'50806 Jessyca Key\nEast Joannie, VA 36323'),(20,'voluptates',0,'72508 Veum Lakes\nMaverickburgh, SD 76025-0493'),(21,'vitae',0,'71004 Marley Canyon Suite 817\nSouth Lavinia, PA 57528'),(22,'voluptatum',0,'026 Laura Gateway\nFaemouth, IA 01262-4122'),(23,'et',0,'02472 Darien Mill\nZiemannberg, AZ 99339'),(24,'excepturi',0,'78967 Metz Harbor\nChristiansentown, WI 75662'),(25,'error',0,'1087 Roob Islands\nSouth Corbin, NV 95216'),(26,'mollitia',0,'583 Barton Hollow\nDemarioshire, NJ 12688'),(27,'exercitationem',0,'00907 Lynch River\nSamarahaven, VT 36987'),(28,'qui',0,'075 Sauer Loop Apt. 495\nEmorytown, RI 79828'),(29,'temporibus',0,'384 Metz Stravenue\nErastad, SD 10672'),(30,'enim',0,'5984 Collier Forks Apt. 686\nMaryjanemouth, GA 37573');
/*!40000 ALTER TABLE `delivery_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'уникальный номер записи',
  `users_user_id` int(10) unsigned NOT NULL,
  `items_item_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'дата и время  добавления',
  `is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'признак удаления\n',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'дата и время обновления ',
  PRIMARY KEY (`id`),
  KEY `fk_favorites_items1_idx` (`items_item_id`),
  KEY `fk_favorites_users1_idx` (`users_user_id`),
  CONSTRAINT `fk_favorites_items1` FOREIGN KEY (`items_item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `fk_favorites_users1` FOREIGN KEY (`users_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='Избранное пользователя';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,83,8,'1992-01-19 03:58:02',1,'2005-06-08 23:47:19'),(2,65,18,'1998-06-20 23:49:35',0,'1995-11-11 17:09:18'),(3,77,67,'1972-05-03 17:01:04',0,'2003-09-07 21:50:12'),(4,98,59,'1989-12-01 07:43:01',1,'1981-07-15 17:22:04'),(5,64,51,'1990-08-28 14:42:43',0,'2017-10-23 14:43:56'),(6,66,70,'2011-11-07 21:28:58',0,'2010-01-16 22:41:10'),(7,55,66,'2001-02-17 09:08:13',0,'2013-07-19 06:00:31'),(8,60,4,'2020-12-23 15:40:34',1,'1993-04-19 01:01:24'),(9,81,40,'1982-02-16 21:50:36',0,'1972-10-09 13:45:56'),(10,51,7,'2019-11-02 16:24:56',0,'1985-04-08 22:21:47'),(11,70,56,'2018-06-18 22:17:00',0,'1970-04-04 19:09:11'),(12,62,17,'1977-11-11 09:34:38',0,'1971-05-05 16:42:31'),(13,89,22,'1970-04-19 17:40:54',0,'1991-11-16 16:47:20'),(14,58,27,'1988-05-16 00:55:21',0,'2013-02-16 20:52:07'),(15,83,63,'1992-07-22 20:41:42',0,'2014-08-12 10:53:51'),(16,62,17,'1973-12-14 22:27:24',0,'1982-07-09 20:51:59'),(17,99,38,'1997-08-07 10:36:22',0,'1983-12-21 22:57:03'),(18,76,38,'2015-10-11 10:04:33',0,'1976-09-01 21:49:56'),(19,76,31,'1982-12-15 02:19:28',0,'1995-05-03 02:27:56'),(20,69,53,'2006-12-27 03:44:43',0,'1999-03-27 01:58:29'),(21,55,50,'1989-06-26 03:09:17',0,'2012-01-01 09:12:22'),(22,86,22,'1990-10-01 01:31:17',0,'1993-12-08 14:20:28'),(23,83,67,'1978-04-11 16:19:16',0,'1985-05-30 05:10:29'),(24,69,15,'1988-03-06 14:41:18',1,'2011-12-26 00:24:31'),(25,77,27,'1999-03-16 11:35:31',0,'1994-11-07 01:38:58'),(26,65,65,'2002-01-25 21:20:41',1,'1985-07-08 04:22:38'),(27,58,39,'2000-02-20 17:58:34',0,'1996-09-29 10:37:12'),(28,55,67,'1993-10-09 21:16:58',0,'1978-05-03 01:29:46'),(29,92,24,'2016-03-06 08:05:13',0,'1973-04-12 19:12:58'),(30,66,33,'1977-12-14 00:06:57',0,'2009-03-16 20:06:07'),(31,62,40,'1994-09-24 01:30:22',0,'1972-05-31 23:14:08'),(32,85,17,'1999-07-15 09:18:33',0,'2007-10-23 23:31:35'),(33,54,14,'2007-03-24 23:48:09',0,'2018-06-21 23:55:27'),(34,87,43,'1976-03-13 03:12:40',0,'1978-01-14 16:49:34'),(35,83,10,'1973-05-12 22:42:06',1,'1988-10-27 12:23:57'),(36,69,56,'2015-04-28 14:47:47',0,'1986-08-31 05:22:49'),(37,91,8,'2000-03-09 21:43:35',0,'1992-12-06 15:38:33'),(38,54,34,'1994-09-04 01:03:09',0,'2016-10-31 16:39:53'),(39,52,34,'1995-06-14 14:15:08',0,'2003-11-28 13:34:32'),(40,85,40,'2012-12-16 10:23:58',0,'1970-07-30 07:00:08'),(41,92,70,'1985-09-24 21:35:53',0,'1971-09-21 05:48:41'),(42,76,3,'1986-09-06 00:25:31',0,'2000-06-26 12:36:36'),(43,77,46,'2000-03-02 17:30:25',0,'1977-09-04 02:19:01'),(44,99,27,'1975-03-17 09:07:15',1,'1982-10-14 00:32:56'),(45,99,23,'1980-01-14 22:36:46',0,'2014-08-27 11:51:02'),(46,91,16,'1972-10-22 08:06:48',0,'1997-09-02 01:03:06'),(47,94,38,'2007-07-17 10:07:34',0,'1971-11-24 05:48:22'),(48,72,1,'2012-12-04 13:26:37',0,'2000-04-15 21:33:16'),(49,86,16,'1983-08-18 21:35:27',0,'1981-11-13 03:39:34'),(50,82,27,'1999-07-14 21:24:17',1,'1983-05-11 04:50:37'),(51,66,69,'2010-02-21 16:14:21',0,'1970-08-20 02:32:34'),(52,58,14,'2003-03-20 09:15:44',0,'1970-03-27 11:33:48'),(53,53,20,'1996-10-18 15:44:16',0,'2006-12-17 02:01:43'),(54,84,9,'1990-10-06 06:56:54',0,'1978-05-31 14:20:24'),(55,87,25,'2019-06-12 22:57:47',0,'1997-09-07 11:47:51'),(56,85,43,'1992-03-22 10:23:01',0,'2010-02-02 02:37:40'),(57,66,14,'1987-09-26 10:54:11',0,'1987-08-01 06:49:44'),(58,83,61,'1971-01-14 11:39:07',0,'1995-07-05 10:50:49'),(59,91,45,'2018-01-05 02:27:11',0,'1987-02-14 21:04:39'),(60,62,59,'1972-09-29 06:57:44',0,'1972-11-29 21:38:02'),(61,98,6,'1973-08-22 07:33:05',0,'1992-12-15 10:36:47'),(62,52,60,'1985-01-16 02:30:44',0,'1992-05-08 04:40:36'),(63,83,37,'2004-12-26 09:35:34',0,'1982-02-15 05:44:42'),(64,92,26,'2015-12-08 16:57:35',1,'1995-07-20 15:17:13'),(65,86,33,'1983-04-11 21:12:25',0,'1977-09-02 06:45:16'),(66,86,7,'1985-05-02 18:22:35',1,'1982-05-10 20:00:18'),(67,71,63,'2010-12-28 07:57:58',0,'1999-09-30 09:41:33'),(68,64,36,'2004-02-10 03:38:58',0,'2015-10-16 08:01:27'),(69,58,67,'1986-03-30 15:50:12',0,'2012-07-28 15:05:15'),(70,83,65,'1988-04-28 01:39:52',1,'2010-02-28 22:30:41'),(71,65,23,'1986-01-28 10:16:20',0,'2012-05-16 06:01:26'),(72,77,44,'2018-08-08 13:32:45',0,'1990-12-10 07:45:06'),(73,76,12,'1977-03-13 12:22:07',0,'1989-09-07 02:17:52'),(74,76,25,'1993-09-20 06:10:09',0,'2009-07-08 18:25:04'),(75,89,52,'2004-06-24 10:42:13',0,'1995-05-25 16:20:03'),(76,58,53,'1999-04-29 00:00:52',1,'2020-08-19 08:51:52'),(77,91,17,'1986-06-08 01:06:41',0,'1984-07-10 06:10:17'),(78,82,31,'1999-11-22 10:18:50',0,'1995-05-09 05:42:50'),(79,87,31,'2021-03-11 23:40:04',0,'2017-09-15 00:43:40'),(80,89,35,'1970-07-22 19:38:00',0,'1976-03-30 21:09:42');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_user_id` int(10) unsigned NOT NULL,
  `items_item_id` int(10) unsigned NOT NULL,
  `text` text DEFAULT NULL,
  `rating` enum('1','2','3','4','5') NOT NULL COMMENT 'оценка от 1 до 5 ',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_feedback_items1_idx` (`items_item_id`),
  KEY `fk_feedback_users1_idx` (`users_user_id`),
  CONSTRAINT `fk_feedback_items1` FOREIGN KEY (`items_item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `fk_feedback_users1` FOREIGN KEY (`users_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='отзывы о товарах';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,58,6,'Aut fugiat in est tenetur nisi possimus. Mollitia vel veritatis eius. Fugiat vero aut et provident repudiandae ut fugiat.','4','2004-07-28 14:54:41'),(2,51,42,'Aliquam eum necessitatibus illum qui natus earum dolor. Non saepe error aspernatur. Qui deleniti et est occaecati distinctio aut consequatur. In sint dignissimos aut.','5','2018-01-01 23:38:07'),(3,82,7,'Eligendi iure et voluptatem voluptatem qui. Impedit officia odio dolorem doloremque in animi quia. Et qui minima quis consequatur architecto. Nisi ex vitae sapiente aut dolore dolore sint.','4','1987-04-06 03:48:35'),(4,64,15,'','3','1983-11-01 10:09:44'),(5,51,1,'','4','1995-10-21 08:09:42'),(6,99,1,'Omnis enim quam deserunt consequatur vel ullam. Nam et harum eos distinctio illo. Consequatur maxime fugit quos. Neque veritatis veniam cumque eveniet est.','4','2003-08-16 19:41:12'),(7,71,19,'','1','2013-02-07 01:10:02'),(8,70,43,'Incidunt ipsum nulla delectus quia inventore. Aspernatur quo nisi adipisci facilis. Aspernatur libero officiis ea beatae quaerat blanditiis voluptatibus eligendi.','5','2013-02-21 08:43:47'),(9,69,64,'','5','2020-11-30 16:00:13'),(10,89,62,'Reprehenderit est beatae provident autem. Distinctio id quod libero sunt natus. Architecto at quaerat harum explicabo voluptas.','2','1983-11-11 18:50:27'),(11,99,8,'Quidem similique accusamus nisi ad sed. Placeat facilis autem odit et qui odio cum. Repellendus aut aspernatur rerum recusandae nemo est eum qui. Laborum voluptas laudantium sit officia soluta.','4','2006-07-25 13:21:43'),(12,87,66,'Veritatis quibusdam neque neque qui. Ratione repudiandae et assumenda quas. Debitis qui recusandae sit incidunt.','5','1977-07-16 21:27:08'),(13,62,69,'','3','1986-01-22 04:01:34'),(14,54,51,'Deleniti consequatur praesentium tempora aut commodi. Ducimus dolore exercitationem eum et aut aut nihil. Est eum ex ut natus facere. Rem deleniti beatae debitis sed.','5','1982-05-05 17:30:42'),(15,72,54,'Eveniet optio amet qui et veritatis. Facere et aut corrupti labore aut culpa est molestias. Quidem ipsa quam eos voluptatem autem deserunt. Ut quae itaque laudantium quod expedita ullam.','1','2021-02-14 14:36:31'),(16,85,46,'Quia dicta odit vero. Commodi officia recusandae aspernatur dolor asperiores sunt. Amet quidem in dolorem aut enim soluta.','5','1980-05-30 10:22:43'),(17,91,50,'Accusantium modi dolorem dolore dignissimos deleniti. Ut amet labore alias a. Aliquid et blanditiis eos officia omnis hic. Nemo voluptatem sed magnam et in hic.','1','2011-03-30 20:33:23'),(18,62,31,'','1','2018-10-13 18:15:59'),(19,89,37,'','4','2015-08-03 16:57:21'),(20,83,57,'Aut atque nesciunt occaecati reprehenderit sit in in. Veritatis quaerat quia sed molestiae at. Molestiae beatae quibusdam sit nihil tempora.','1','2017-12-22 02:23:18'),(21,77,44,'Quo dolore rerum est eum doloremque est. Aut adipisci ipsum doloribus consequuntur non hic. Dignissimos tenetur quia iusto et natus deserunt molestiae. Natus hic illo assumenda.','2','1974-09-10 19:23:17'),(22,91,68,'Beatae quo et quia aut. Recusandae voluptatem nam quia nihil atque ex adipisci. Nostrum earum minus itaque voluptas voluptate.','2','1975-01-19 00:05:51'),(23,94,17,'Quidem consectetur sit quod modi. Sit sint et sint itaque officiis rem. Quis excepturi nemo nihil quaerat quae et. Similique quos commodi facere.','4','1993-05-01 21:34:43'),(24,81,18,'','5','1993-10-10 20:13:12'),(25,55,26,'','5','1992-04-19 06:32:43'),(26,55,10,'Qui eveniet libero et aut quo et sequi. Soluta nisi itaque tempora. Odio porro saepe cumque delectus deleniti. Et non cum suscipit suscipit. Qui ab officia soluta aut inventore deleniti.','1','2003-04-09 16:03:40'),(27,72,63,'','5','2001-02-24 14:12:38'),(28,53,51,'Molestiae quos aut et. Architecto et voluptatem mollitia ratione aut nisi ipsam molestias. Exercitationem rerum unde aut quaerat modi totam asperiores.','2','1996-03-27 01:46:09'),(29,94,13,'In similique cumque adipisci et consequatur asperiores cupiditate repellendus. Est labore ad ut laborum id dolores velit. Et beatae adipisci alias reprehenderit officiis quod odit dicta.','2','1993-03-07 19:12:34'),(30,71,25,'Sint suscipit ad eum voluptatem ad ullam. Est quas nisi quam corrupti cumque. Quia quas quasi facilis quia sint et est.','2','2018-02-26 06:29:01'),(31,95,9,'','5','1977-06-24 21:22:23'),(32,99,55,'','2','1984-07-03 19:46:20'),(33,91,18,'Ut aspernatur cum rerum et dolores doloribus. Reprehenderit quos quam ut iste libero debitis. A dicta modi nulla ut. Laudantium aperiam impedit necessitatibus et mollitia omnis repellat.','1','1996-06-18 23:20:25'),(34,60,43,'','1','1983-11-28 21:10:14'),(35,87,60,'Eius optio aliquam eum rerum quasi. Enim porro consectetur voluptatem ea illum illum. Consectetur sit officiis iure repellat unde nesciunt sint.','3','1981-02-14 01:43:19'),(36,71,21,'','1','1972-01-09 07:32:09'),(37,72,18,'Doloribus praesentium corporis et perferendis id aliquid. Soluta vero suscipit non quis nostrum eius cum est.','5','2004-01-19 09:23:12'),(38,64,25,'Corrupti nam consequatur dicta. Molestiae eos exercitationem ut reprehenderit. Maxime praesentium eum quas eum consequuntur. Ducimus alias libero eius eum officia.','2','1996-01-09 20:53:23'),(39,72,58,'Molestiae sunt aut commodi fugiat libero. Natus veritatis adipisci aut corrupti odio. Et accusamus qui ut enim sed repellat sed. Illo nisi ullam itaque quia corporis.','1','1993-02-06 12:56:50'),(40,82,44,'Reiciendis corrupti aliquam corrupti dicta deserunt sit odit. Non aperiam ullam beatae voluptatibus.','2','2016-12-05 00:59:03'),(41,58,52,'','4','2001-04-30 16:11:06'),(42,87,46,'','5','2002-01-16 18:27:43'),(43,83,58,'Quis doloremque doloremque eius rerum placeat corrupti error soluta. Totam ratione similique aut soluta eveniet necessitatibus. Dolor exercitationem sit magni est. Sed ea et nemo magni ullam.','1','1972-04-28 15:58:12'),(44,69,36,'Sunt et maxime commodi. Est fuga iure explicabo non. Ut tempora non ea illum minima reprehenderit aut sit.','5','1974-03-20 04:21:30'),(45,51,58,'','3','1977-12-05 03:52:31'),(46,92,66,'','5','1983-08-02 04:25:55'),(47,98,60,'','1','2004-11-16 09:33:48'),(48,85,54,'','2','1989-07-26 16:49:19'),(49,53,65,'','1','1978-02-16 11:39:44'),(50,69,61,'Voluptatem cupiditate voluptas sapiente quo neque. Id doloremque consequuntur ratione quam non vitae. Cupiditate officia quis nostrum et saepe sit. Delectus est tenetur minima ut ex corrupti.','4','2019-06-04 11:55:52'),(51,87,57,'','3','1986-12-19 19:39:30'),(52,55,16,'Aut ex earum qui ea asperiores reiciendis optio. Ex fugiat expedita saepe quia qui doloribus eum rem.','1','2014-04-12 17:51:14'),(53,52,30,'Delectus hic dolores alias dignissimos impedit aut. Similique praesentium ullam sint ut. Aut consequatur quo beatae dicta rerum itaque.','2','1970-10-04 09:14:14'),(54,81,37,'Harum animi natus et dolorum. In atque dolorem ut earum qui enim. Voluptatem ullam maiores ipsum aliquid.','3','2009-09-17 22:04:32'),(55,62,13,'','2','2010-01-23 18:51:47'),(56,55,30,'','1','2016-05-18 07:20:32'),(57,95,64,'','3','1978-02-22 06:16:13'),(58,53,38,'','2','2016-08-28 22:01:43'),(59,86,32,'Voluptatem et aut atque aliquam laborum sequi voluptas libero. Et nam est illum ut autem qui veritatis. Rerum dolore voluptas deleniti perspiciatis id. Dolorem sunt molestias voluptatem ut est rem.','4','2004-04-30 12:43:01'),(60,52,52,'','2','1976-08-21 17:41:07'),(61,64,63,'Aliquam et tempora non architecto beatae enim. Delectus modi in suscipit totam. In pariatur debitis nostrum odio reiciendis facere sint veniam.','3','2010-01-07 16:10:27'),(62,84,15,'','5','2020-08-18 17:08:04'),(63,86,27,'Provident et vitae commodi nihil. Sed vel possimus harum ratione numquam. Rerum praesentium quas ut quia rerum aut distinctio.','3','1982-07-11 04:51:46'),(64,99,58,'','2','2018-02-03 05:17:56'),(65,64,25,'','5','1978-08-05 04:15:43'),(66,85,4,'Praesentium dolores tenetur enim id. Quae odit modi et voluptas et. Error natus quia nihil rem cum.','2','1984-03-22 08:16:33'),(67,55,59,'Illum aperiam consequatur itaque est nostrum minus atque. Ab numquam deleniti nisi doloremque officia qui et magnam. Voluptatem quis et suscipit dolores optio autem quos nam.','3','2003-06-26 00:57:14'),(68,64,15,'In dolor non eum ut. Iure recusandae eum labore quam eveniet recusandae voluptates. Quaerat minima cumque omnis maxime.','4','1989-10-20 12:25:30'),(69,62,60,'','4','1971-05-18 22:57:32'),(70,86,35,'Voluptate ratione ea natus rerum. Excepturi doloremque minima at odio repudiandae qui est dolores. Ea eum sed sed similique.','1','1997-09-11 11:47:29');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendors_vendor_id` int(10) unsigned NOT NULL,
  `products_product_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`),
  KEY `fk_items_vendors1_idx` (`vendors_vendor_id`),
  KEY `fk_items_products1_idx` (`products_product_id`),
  CONSTRAINT `fk_items_products1` FOREIGN KEY (`products_product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `fk_items_vendors1` FOREIGN KEY (`vendors_vendor_id`) REFERENCES `vendors` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='Товары для продажи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,3,12,'expedita','1974-10-07 16:45:10'),(2,26,31,'harum','1978-06-20 09:18:06'),(3,8,6,'nesciunt','1972-07-03 04:12:48'),(4,26,14,'tempora','2001-10-05 04:37:57'),(5,17,13,'dolor','1980-06-07 19:18:01'),(6,11,36,'dolor','1976-12-01 03:26:39'),(7,12,33,'est','1989-07-14 17:48:23'),(8,3,14,'rem','2019-04-30 06:39:46'),(9,2,14,'est','1970-04-12 21:47:34'),(10,10,7,'ut','1988-08-12 09:21:21'),(11,5,1,'ex','1991-08-31 10:00:47'),(12,19,35,'molestiae','2018-02-11 04:57:44'),(13,19,12,'inventore','2000-02-08 17:41:05'),(14,1,32,'sed','1983-03-19 04:53:16'),(15,15,17,'placeat','2013-10-25 23:15:28'),(16,17,23,'et','1995-11-02 22:25:02'),(17,21,17,'adipisci','1983-02-24 02:02:55'),(18,10,39,'libero','1998-07-20 01:28:58'),(19,17,8,'laudantium','1996-12-01 11:55:00'),(20,9,5,'iure','1973-05-05 13:04:31'),(21,16,26,'sunt','2008-08-04 11:52:20'),(22,30,36,'quasi','1992-04-27 17:16:56'),(23,14,4,'provident','1976-04-29 12:37:13'),(24,7,21,'inventore','1986-09-06 06:34:32'),(25,13,22,'occaecati','1972-07-29 06:15:41'),(26,20,23,'consequatur','1983-09-14 03:48:17'),(27,17,12,'rerum','2003-05-27 19:20:07'),(28,13,7,'et','1985-09-21 22:10:03'),(29,18,18,'quam','2017-07-26 21:46:17'),(30,29,3,'optio','2008-11-11 17:13:56'),(31,25,21,'rem','1989-06-18 20:12:03'),(32,19,22,'sed','2012-05-18 18:12:24'),(33,28,38,'voluptatem','2003-03-14 17:26:29'),(34,15,19,'dolores','1994-03-06 07:15:39'),(35,4,31,'sunt','1978-02-07 02:56:48'),(36,18,25,'quam','1997-11-30 06:58:46'),(37,13,23,'sunt','2015-09-30 16:42:15'),(38,16,36,'dolor','1984-04-25 15:19:05'),(39,20,30,'labore','2014-09-04 23:11:20'),(40,12,3,'in','2009-08-27 17:59:56'),(41,9,2,'voluptate','1988-04-03 14:08:25'),(42,19,33,'ea','1993-05-23 01:37:40'),(43,10,3,'beatae','2019-09-23 06:09:05'),(44,30,36,'nihil','2010-02-20 00:58:47'),(45,15,38,'asperiores','1981-03-27 01:17:08'),(46,29,13,'nisi','2011-08-01 06:01:57'),(47,14,23,'numquam','1981-05-25 12:28:13'),(48,26,14,'accusamus','2010-07-03 13:04:39'),(49,15,14,'quaerat','1976-01-08 01:40:10'),(50,25,25,'fuga','2006-05-22 20:30:20'),(51,4,16,'id','1988-03-24 10:38:03'),(52,7,21,'nostrum','2018-04-08 13:41:41'),(53,29,30,'placeat','1985-07-13 23:04:47'),(54,12,25,'laborum','1998-07-18 08:32:07'),(55,14,31,'dolor','1989-05-23 14:03:05'),(56,21,30,'et','2015-04-30 06:56:56'),(57,25,12,'ut','2000-02-20 03:38:29'),(58,17,5,'cumque','1993-03-24 00:23:16'),(59,11,22,'et','1994-09-03 18:51:37'),(60,1,34,'est','1997-07-25 02:05:53'),(61,14,39,'architecto','2003-04-02 12:12:50'),(62,5,36,'eum','2011-04-18 17:29:04'),(63,16,1,'numquam','1970-12-16 00:29:26'),(64,8,1,'illo','2015-04-05 23:04:00'),(65,11,3,'est','2010-08-06 14:44:56'),(66,19,19,'libero','1976-04-17 14:29:12'),(67,14,35,'veniam','2000-12-27 01:08:36'),(68,30,17,'quisquam','2015-10-19 18:53:17'),(69,18,15,'eveniet','1972-06-25 06:05:10'),(70,1,3,'odit','2001-03-19 13:17:56');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `country` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Изготовители';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'esse','MX'),(2,'praesentium','US'),(3,'dolores','DE'),(4,'est','RU'),(5,'veritatis','IT'),(6,'dolor','FR'),(7,'et','PT'),(8,'iste','GB'),(9,'sint','FR'),(10,'voluptates','RU'),(11,'quasi','PT'),(12,'earum','US'),(13,'sunt','GB'),(14,'ipsam','FR'),(15,'cupiditate','GB'),(16,'consequatur','ES'),(17,'qui','MX'),(18,'voluptate','IE'),(19,'natus','CN'),(20,'ea','CA'),(21,'voluptas','CN'),(22,'sequi','IE'),(23,'voluptates','IN'),(24,'commodi','RU'),(25,'iure','IN'),(26,'placeat','RU'),(27,'rerum','MX'),(28,'voluptatum','PT'),(29,'provident','IN'),(30,'est','IN');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Статусы заказов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,' В доставке'),(2,' Доставлен'),(3,' Оплачен'),(4,' Ожидает оплаты'),(5,' Отменен'),(6,'Создан');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id заказ',
  `user_id` int(10) unsigned NOT NULL COMMENT 'код пользователя',
  `order_status_id` int(10) unsigned NOT NULL,
  `is_payment` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Заказа оплачен Да_нет',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `delivery_method_id` int(10) unsigned NOT NULL,
  `order_summ` decimal(10,2) unsigned DEFAULT NULL COMMENT 'сумма заказа',
  PRIMARY KEY (`order_id`),
  KEY `fk_orders_users1_idx` (`user_id`),
  KEY `fk_orders_order_status1_idx` (`order_status_id`),
  KEY `fk_orders_delivery_method1_idx` (`delivery_method_id`),
  CONSTRAINT `fk_orders_delivery_method1` FOREIGN KEY (`delivery_method_id`) REFERENCES `delivery_method` (`id`),
  CONSTRAINT `fk_orders_order_status1` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`),
  CONSTRAINT `fk_orders_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='Заказы пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,83,2,0,'1994-06-08 14:28:13','2006-04-24 15:55:54',8,734.00),(2,62,5,0,'2010-07-04 16:30:46','1988-09-18 18:13:31',14,87.00),(3,95,3,0,'2018-06-24 03:56:04','2007-05-22 16:28:11',1,321.00),(4,51,3,0,'1989-11-03 17:27:04','2011-10-04 00:25:54',18,682498.00),(5,94,1,1,'1993-10-03 00:53:54','2017-10-24 11:01:44',16,536954.00),(6,83,2,0,'1974-01-26 11:40:42','1980-07-02 04:21:32',5,74370842.00),(7,99,2,0,'1996-09-01 23:42:59','1996-01-20 19:28:19',1,93.00),(8,69,5,1,'2016-12-04 19:34:08','1978-06-07 09:19:03',16,1576.00),(9,58,2,1,'1990-11-16 09:15:01','2010-02-04 23:24:33',23,0.00),(10,81,2,0,'1972-08-01 22:58:01','1981-03-28 08:34:26',27,54474666.00),(11,91,6,0,'1972-10-02 06:51:36','2010-06-07 00:15:49',5,9745575.00),(12,52,1,0,'2013-08-12 15:05:08','1976-03-20 13:03:31',30,2784.00),(13,76,1,1,'1974-12-30 18:40:04','1995-04-07 15:48:36',12,86290.00),(14,76,1,0,'1998-08-22 06:29:07','2020-01-03 20:29:57',22,99999999.99),(15,53,6,0,'2016-11-15 10:21:20','1992-08-19 05:06:45',24,4698.00),(16,81,4,0,'1998-03-15 18:35:31','1983-10-10 05:39:05',29,0.00),(17,86,4,0,'1997-06-04 20:48:25','1992-02-14 02:06:31',5,47284.00),(18,87,6,0,'2009-09-30 11:23:30','2021-03-14 13:25:31',27,1632.00),(19,64,1,0,'2001-04-12 03:10:29','1985-12-14 15:07:42',5,7.00),(20,51,4,0,'1974-05-28 01:37:28','1997-05-21 01:40:24',13,99999999.99),(21,94,3,0,'1977-10-14 21:31:57','2004-03-03 16:57:41',10,82.00),(22,52,4,0,'1984-02-19 00:35:04','1975-05-17 05:10:10',13,12009.00),(23,51,1,1,'2011-12-14 02:52:23','1972-03-09 17:39:37',15,0.00),(24,70,4,1,'1985-10-02 01:51:16','1975-07-29 09:49:43',16,84008.00),(25,54,4,0,'2014-09-06 18:57:23','1978-03-01 14:42:16',14,8390160.00),(26,95,2,0,'2012-12-14 04:22:37','1979-02-12 11:28:15',1,33.00),(27,92,6,0,'1998-03-15 14:04:19','2016-01-29 14:14:37',18,649.00),(28,51,4,0,'2017-08-27 09:12:17','1982-01-12 04:07:20',15,99999999.99),(29,95,6,1,'1991-03-08 21:58:22','2016-11-03 10:25:22',18,44.00),(30,52,6,0,'1998-08-29 06:49:15','2012-02-06 21:38:37',8,44.00),(31,72,6,1,'1970-03-23 11:48:30','2003-05-18 19:06:38',22,1299917.00),(32,89,6,0,'1978-08-24 06:35:06','1989-09-14 00:09:28',8,0.00),(33,60,6,0,'2014-11-13 12:57:35','2001-07-14 00:24:10',9,659094.00),(34,85,2,0,'1980-02-27 06:03:58','1989-05-13 05:00:22',25,6142952.00),(35,60,3,1,'2000-06-24 15:47:52','1997-09-24 21:17:13',13,3146627.00),(36,84,3,0,'1985-04-06 19:10:51','1976-03-16 07:50:21',18,99999999.99),(37,84,2,1,'2011-12-11 12:54:52','1971-05-07 07:42:36',15,99999999.99),(38,62,2,1,'1989-04-04 21:30:25','2014-07-02 20:40:40',5,716584.00),(39,87,1,1,'1982-10-04 07:58:54','2001-12-15 11:38:48',3,0.00),(40,66,2,0,'1973-08-23 14:56:57','1998-05-23 17:06:35',2,34.00),(41,82,4,0,'1995-05-28 12:39:52','1975-11-19 05:39:23',28,661.00),(42,66,3,0,'1989-05-08 11:47:33','2021-01-14 12:19:10',25,99999999.99),(43,81,4,1,'1998-10-22 11:34:55','2003-01-13 01:52:37',23,567.00),(44,92,3,0,'1985-07-18 02:41:13','2003-08-09 00:13:08',3,59.00),(45,83,4,0,'1972-02-01 18:42:58','2011-03-15 16:48:44',16,5234183.00),(46,52,2,1,'1991-06-17 09:54:36','1986-10-11 14:44:19',27,99999999.99),(47,83,6,0,'1993-03-16 13:24:21','2012-12-14 09:30:42',4,9774896.00),(48,55,1,0,'1983-11-01 18:16:51','1997-06-14 05:28:21',11,91247.00),(49,65,6,0,'2005-09-14 14:13:04','2002-02-07 04:27:12',15,6.00),(50,70,2,0,'2005-12-02 04:55:35','2011-05-23 03:32:53',21,13.00),(51,71,5,0,'2002-06-12 17:01:58','1981-11-22 09:28:43',11,428263.00),(52,66,1,0,'1986-03-07 02:26:51','2016-09-28 18:55:17',24,613.00),(53,55,5,0,'2016-12-09 01:52:30','1973-03-13 05:33:52',14,44205451.00),(54,94,4,0,'2005-01-01 03:23:42','2012-11-19 14:08:46',24,89822.00),(55,98,2,1,'1985-11-13 12:54:07','2008-05-07 23:11:05',10,6.00),(56,76,2,0,'1995-12-27 03:13:23','1998-06-16 15:03:27',16,21013307.00),(57,69,6,0,'2016-06-17 23:53:02','2013-06-22 10:15:21',12,42343892.00),(58,72,1,0,'1989-10-22 10:47:16','2006-11-05 07:46:10',16,0.00),(59,91,2,1,'1971-10-04 14:55:02','1992-11-04 07:35:36',12,18.00),(60,65,5,1,'2004-11-11 01:07:01','2014-03-15 12:40:07',18,986.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_line`
--

DROP TABLE IF EXISTS `orders_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_line` (
  `orders_line_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orders_order_id` int(11) NOT NULL,
  `items_item_id` int(10) unsigned NOT NULL,
  `qty` bigint(20) NOT NULL,
  `item_price` decimal(8,2) NOT NULL,
  `line_summ` decimal(10,2) DEFAULT (`qty` * `item_price`),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`orders_line_id`),
  KEY `order_id_idx` (`orders_order_id`),
  KEY `item_id_idx` (`items_item_id`),
  CONSTRAINT `item_id` FOREIGN KEY (`items_item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `order_id` FOREIGN KEY (`orders_order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COMMENT='Строки заказов\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_line`
--

LOCK TABLES `orders_line` WRITE;
/*!40000 ALTER TABLE `orders_line` DISABLE KEYS */;
INSERT INTO `orders_line` VALUES (1,39,2,12,3270.41,39244.92,'1977-04-03 20:47:05','1978-09-15 02:42:14'),(2,56,13,19,24360.12,462842.28,'1978-10-07 06:02:38','1996-01-01 07:37:27'),(3,7,47,12,14260.39,171124.68,'1991-09-10 11:15:39','1970-08-09 14:05:43'),(4,60,66,8,26485.89,211887.12,'2003-08-12 04:52:21','2003-04-20 23:13:32'),(5,22,16,14,1381.35,19338.90,'1979-03-16 16:03:03','1972-07-09 05:37:47'),(6,51,28,19,2619.76,49775.44,'1989-01-12 23:30:32','2009-12-23 22:08:55'),(7,36,54,6,6756.61,40539.66,'1986-10-12 07:16:27','1989-01-04 03:56:59'),(8,30,18,7,18288.68,128020.76,'1985-03-25 05:41:33','1992-08-11 15:17:20'),(9,22,70,10,22580.90,225809.00,'2006-11-06 02:44:50','1978-08-12 09:06:46'),(10,51,28,22,21123.33,464713.26,'1975-11-25 05:01:34','2016-12-17 02:16:30'),(11,52,17,18,13415.28,241475.04,'1984-07-06 20:28:01','2019-05-26 19:20:00'),(12,15,8,18,20740.05,373320.90,'1980-01-16 13:26:10','2021-01-01 04:10:57'),(13,40,66,2,21927.66,43855.32,'1993-04-28 23:05:30','1976-12-26 04:24:52'),(14,43,60,7,14526.94,101688.58,'2000-12-05 21:09:47','2015-01-13 08:15:40'),(15,4,27,1,24444.32,24444.32,'2010-11-16 10:55:54','1994-10-09 11:23:50'),(16,11,50,21,4276.94,89815.74,'2000-01-02 23:30:45','2002-08-14 02:03:47'),(17,25,7,4,24143.52,96574.08,'2008-02-17 08:54:41','1991-09-28 16:42:25'),(18,54,37,17,16057.66,272980.22,'1980-11-10 11:15:43','1982-09-24 15:46:24'),(19,45,62,9,12983.11,116847.99,'2008-08-07 09:41:48','2000-09-04 06:15:06'),(20,28,8,9,18246.97,164222.73,'1998-02-04 01:06:31','1975-06-02 15:01:33'),(21,6,22,2,12411.44,24822.88,'2007-12-19 08:03:16','2020-03-04 12:13:26'),(22,30,49,17,2178.77,37039.09,'2010-01-11 05:41:31','1976-02-28 02:32:38'),(23,5,70,21,16658.35,349825.35,'1982-01-16 03:24:24','2018-06-27 01:53:49'),(24,57,31,22,11272.23,247989.06,'1981-08-30 00:26:06','2011-12-12 22:44:31'),(25,60,55,4,4475.67,17902.68,'1984-01-08 10:45:27','1980-11-07 14:14:17'),(26,50,60,9,19384.35,174459.15,'2018-11-19 15:06:23','2002-10-27 04:21:56'),(27,2,5,20,24081.30,481626.00,'2015-09-05 03:08:36','1971-01-12 01:39:21'),(28,59,47,8,18693.51,149548.08,'1997-05-11 19:56:25','1978-09-21 05:23:54'),(29,1,47,6,3737.95,22427.70,'1978-01-29 22:34:02','2015-02-05 12:52:28'),(30,31,5,10,21316.41,213164.10,'2016-06-19 13:47:10','1995-08-27 04:29:28'),(31,4,48,4,13172.52,52690.08,'2002-11-25 22:13:17','1989-06-30 08:07:25'),(32,47,32,24,8174.72,196193.28,'1996-08-03 09:34:16','1995-09-17 16:55:11'),(33,47,47,3,20648.22,61944.66,'1995-10-03 03:06:56','2007-02-27 12:54:19'),(34,59,37,19,15283.28,290382.32,'1984-05-04 21:14:03','1978-06-11 18:16:34'),(35,33,31,4,26850.70,107402.80,'2016-01-21 12:23:27','2014-11-04 17:28:43'),(36,38,45,8,17771.53,142172.24,'2004-12-24 06:10:45','1983-05-18 02:25:54'),(37,45,9,7,15688.79,109821.53,'1975-07-24 15:06:50','1974-11-20 08:32:18'),(38,20,57,17,16248.03,276216.51,'1997-03-29 04:00:21','1987-05-27 20:05:55'),(39,7,19,9,23352.65,210173.85,'1991-01-09 19:59:19','1971-07-26 22:01:49'),(40,15,8,5,21256.89,106284.45,'2004-11-15 00:47:31','2009-03-12 16:02:50'),(41,3,5,6,19654.39,117926.34,'1977-06-23 13:57:58','2006-12-19 03:51:10'),(42,58,5,7,15709.79,109968.53,'2007-03-06 22:19:01','1990-03-08 04:26:57'),(43,8,66,6,23858.76,143152.56,'2011-05-18 01:56:36','1975-12-20 15:36:56'),(44,44,10,3,22379.40,67138.20,'2010-05-13 04:45:30','1971-12-02 22:45:37'),(45,37,18,5,21687.38,108436.90,'1987-08-24 00:58:09','2016-03-17 13:17:38'),(46,12,46,7,24418.84,170931.88,'1997-08-11 02:20:28','1998-05-21 02:18:08'),(47,56,68,7,11645.65,81519.55,'1976-07-01 20:15:06','1984-07-09 20:49:12'),(48,7,50,16,22678.27,362852.32,'1992-09-09 23:10:06','1986-11-29 21:20:53'),(49,39,6,17,18597.21,316152.57,'1973-03-05 19:49:16','1986-09-11 12:34:30'),(50,14,13,17,8347.02,141899.34,'2013-08-30 17:09:44','1974-11-05 12:26:02'),(51,31,60,1,13894.97,13894.97,'1987-07-27 14:04:40','1983-06-22 10:56:55'),(52,49,18,21,14430.63,303043.23,'2010-09-01 07:30:38','1974-04-01 23:02:54'),(53,59,10,8,25064.40,200515.20,'1985-03-04 14:37:52','2019-07-31 07:46:07'),(54,4,7,3,11962.27,35886.81,'1974-10-27 17:33:36','1989-03-10 21:11:58'),(55,25,22,23,25882.32,595293.36,'2012-11-26 21:49:13','1971-11-25 13:00:53'),(56,12,32,23,12376.33,284655.59,'2012-12-05 17:21:58','1981-05-06 08:10:30'),(57,22,12,6,17051.79,102310.74,'1984-11-19 03:02:35','2016-11-16 14:39:13'),(58,31,35,10,18096.25,180962.50,'1978-02-24 15:48:45','2016-02-22 06:51:09'),(59,6,17,8,6508.52,52068.16,'2008-05-29 01:38:26','1993-12-30 15:20:43'),(60,38,49,5,23783.18,118915.90,'1986-08-28 21:30:05','2017-07-28 01:21:10'),(61,30,58,20,26091.39,521827.80,'2009-09-15 23:28:44','1971-08-26 00:19:21'),(62,21,30,7,18348.67,128440.69,'2001-06-27 06:23:21','1994-09-27 11:35:51'),(63,48,32,11,24308.23,267390.53,'2010-04-29 10:25:18','2018-07-14 00:00:21'),(64,8,30,13,4548.56,59131.28,'1990-10-24 02:31:27','2017-05-30 21:02:25'),(65,32,25,20,3859.45,77189.00,'1982-10-19 03:43:44','2005-07-22 03:18:37'),(66,37,3,13,18208.40,236709.20,'1991-06-16 02:35:24','2004-08-22 19:59:13'),(67,13,30,8,22441.82,179534.56,'1987-11-23 15:48:02','1988-11-04 08:28:50'),(68,18,13,14,17818.20,249454.80,'2011-11-28 13:12:00','1976-01-08 21:12:43'),(69,34,25,4,5640.24,22560.96,'1988-08-24 09:32:39','2006-03-10 09:42:55'),(70,17,68,13,16325.75,212234.75,'1978-11-27 14:10:24','1975-11-30 18:47:15'),(71,40,33,24,6389.41,153345.84,'1995-01-01 16:20:30','2010-04-07 23:55:25'),(72,25,2,13,6080.54,79047.02,'1986-12-19 02:30:28','2008-08-11 00:28:23'),(73,38,65,15,17454.51,261817.65,'1988-10-26 05:03:25','1974-05-17 13:25:48'),(74,31,51,15,20469.47,307042.05,'1987-08-14 05:27:33','1988-07-23 07:37:30'),(75,10,10,2,3345.58,6691.16,'1970-08-21 09:56:12','2013-04-05 14:28:43'),(76,25,45,6,21380.69,128284.14,'1971-12-03 22:06:35','1977-09-26 00:02:44'),(77,58,53,4,13627.03,54508.12,'2002-03-11 19:13:07','1985-01-29 05:47:24'),(78,4,53,14,4185.17,58592.38,'2002-09-30 03:46:39','2020-11-19 09:55:28'),(79,13,13,24,20090.83,482179.92,'1971-06-13 05:41:11','2004-10-09 07:48:45'),(80,11,52,13,10545.64,137093.32,'2019-02-16 03:19:53','1996-04-03 17:17:03'),(81,32,55,4,21252.73,85010.92,'1980-09-29 04:41:34','1980-06-11 15:52:12'),(82,47,52,9,17750.45,159754.05,'2009-12-19 19:50:22','2020-09-22 13:14:22'),(83,13,5,6,11263.50,67581.00,'1976-01-12 11:43:04','2010-09-21 10:35:25'),(84,55,54,20,21179.88,423597.60,'2020-03-08 13:15:48','1991-08-25 09:57:07'),(85,26,14,10,5142.30,51423.00,'2018-06-22 04:58:56','2012-11-20 23:23:34'),(86,44,6,6,26459.47,158756.82,'2013-02-23 02:52:30','2016-01-12 22:24:56'),(87,40,10,14,14543.36,203607.04,'1981-12-09 00:33:21','1989-02-15 17:29:03'),(88,6,21,22,7573.92,166626.24,'1972-01-28 12:44:39','2009-06-13 12:56:40'),(89,3,43,13,10872.11,141337.43,'2001-08-20 14:46:27','1999-02-24 20:14:03'),(90,1,14,11,25361.53,278976.83,'2014-09-06 10:16:31','1978-04-19 05:23:34'),(91,45,30,13,7113.20,92471.60,'2011-06-21 12:50:23','1988-10-14 23:46:37'),(92,51,50,16,24939.52,399032.32,'1984-12-14 19:43:58','1975-02-13 12:46:26'),(93,11,63,5,5174.92,25874.60,'2012-02-05 21:47:01','1999-02-05 01:20:38'),(94,28,27,8,15086.04,120688.32,'2007-05-03 18:31:47','2015-11-01 15:45:03'),(95,4,46,2,1710.59,3421.18,'2018-02-13 22:57:18','2000-03-28 05:17:08'),(96,7,41,18,4721.08,84979.44,'1981-10-07 07:35:46','1994-02-15 20:07:51'),(97,26,62,1,3004.03,3004.03,'1995-07-31 04:35:40','1994-02-28 18:29:11'),(98,19,45,24,11226.65,269439.60,'2005-05-22 23:15:16','1981-08-10 05:39:19'),(99,57,16,16,24045.68,384730.88,'1977-04-16 20:42:37','1995-04-01 02:59:48'),(100,24,26,6,11681.76,70090.56,'1986-09-23 02:33:44','2011-03-28 19:58:31'),(101,25,9,22,22242.22,489328.84,'2000-06-27 05:54:36','1989-03-24 23:08:18'),(102,27,5,16,12451.66,199226.56,'1983-07-09 09:42:15','2000-11-03 13:26:44'),(103,15,37,15,18489.82,277347.30,'2008-11-22 02:54:20','1987-04-17 03:03:40'),(104,22,21,9,11003.23,99029.07,'1985-07-01 02:04:21','1981-01-22 23:40:23'),(105,9,26,21,6685.67,140399.07,'1984-08-08 12:12:03','2017-05-31 19:23:15'),(106,30,63,8,24298.24,194385.92,'1984-04-27 14:28:12','1978-07-15 02:11:45'),(107,47,23,18,12696.54,228537.72,'1971-01-29 12:24:49','1994-06-06 06:27:22'),(108,36,67,18,9283.89,167110.02,'1996-06-01 03:35:16','1970-10-16 03:49:50'),(109,13,5,13,26057.05,338741.65,'2002-05-16 11:52:47','2007-09-21 04:36:17'),(110,20,20,15,20623.67,309355.05,'2018-11-03 14:45:10','1981-10-16 03:13:47'),(111,43,31,6,13645.47,81872.82,'2015-05-16 05:08:59','1999-09-24 08:13:55'),(112,52,10,2,1381.36,2762.72,'1977-10-18 16:30:43','2012-09-22 17:18:25'),(113,19,13,8,3520.19,28161.52,'1988-01-22 09:13:20','2000-06-22 01:56:22'),(114,47,18,11,6825.73,75083.03,'1970-10-13 11:45:48','1992-03-03 11:32:45'),(115,25,12,13,6619.25,86050.25,'2004-01-14 23:04:39','1976-09-09 23:45:10'),(116,37,57,11,16586.71,182453.81,'1989-09-17 02:42:27','2001-07-13 18:29:38'),(117,17,4,1,9513.39,9513.39,'2019-10-22 12:10:36','1974-12-18 04:26:09'),(118,53,37,8,19723.71,157789.68,'1973-11-26 15:34:39','2004-07-24 09:59:41'),(119,35,17,5,26100.08,130500.40,'1995-01-13 01:19:35','1970-03-24 23:42:19'),(120,50,51,23,9289.65,213661.95,'1970-09-09 02:18:36','1992-01-17 05:40:41'),(121,36,22,1,2789.02,2789.02,'1994-08-03 13:25:05','1984-07-19 03:41:44'),(122,37,27,11,12553.17,138084.87,'1984-07-13 07:25:06','2013-02-16 18:27:15'),(123,39,14,9,9937.33,89435.97,'1984-01-28 19:38:25','2002-11-24 08:06:50'),(124,20,60,21,15088.18,316851.78,'2018-03-03 06:42:22','1973-01-09 06:23:32'),(125,16,46,16,25271.72,404347.52,'2019-07-15 18:13:04','1985-04-18 15:54:29'),(126,8,69,18,2895.27,52114.86,'2004-08-04 05:14:25','1970-06-07 14:50:20'),(127,5,70,20,24333.32,486666.40,'1986-07-22 02:37:02','2002-10-01 04:04:11'),(128,7,28,5,4154.16,20770.80,'1980-05-09 12:59:41','1994-05-09 07:17:23'),(129,11,62,7,19420.14,135940.98,'1999-05-11 13:05:13','1997-04-30 09:32:47'),(130,39,40,23,1421.58,32696.34,'2000-08-24 20:03:45','1987-11-10 22:55:29'),(131,3,18,5,17653.66,88268.30,'2007-09-25 16:53:10','2017-09-12 12:37:21'),(132,23,23,14,17196.39,240749.46,'2020-07-09 21:25:00','1986-01-25 23:17:37'),(133,19,19,4,1681.16,6724.64,'1994-10-07 15:26:27','1994-12-29 04:15:08'),(134,51,62,11,24412.30,268535.30,'2004-07-31 18:15:54','1989-07-04 15:37:55'),(135,30,47,16,2741.65,43866.40,'1992-09-16 14:14:22','1973-09-30 23:45:16'),(136,36,7,23,9812.53,225688.19,'1996-04-09 22:05:31','2015-02-11 03:56:16'),(137,59,15,21,25553.08,536614.68,'2011-12-03 17:49:18','1974-05-29 01:35:05'),(138,29,44,5,3052.84,15264.20,'1976-05-19 09:23:23','1987-03-24 16:14:56'),(139,24,56,6,5724.37,34346.22,'1997-03-13 19:34:45','2017-01-19 12:59:24'),(140,29,47,6,7163.20,42979.20,'2005-02-03 02:01:43','2017-09-29 10:48:50');
/*!40000 ALTER TABLE `orders_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Категории товаров.\n\nздесь же могут быть добавлены признаки какие еще характеристики у продукта должны быть\n\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'earum'),(2,'et'),(3,'distinctio'),(4,'vero'),(5,'quaerat'),(6,'rerum'),(7,'rerum'),(8,'qui'),(9,'consequatur'),(10,'repudiandae'),(11,'et'),(12,'sit'),(13,'accusantium'),(14,'totam'),(15,'dignissimos');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `id_UNIQUE` (`product_id`),
  KEY `fk_products_Category1_idx` (`category_id`),
  KEY `fk_products_manufacturer1_idx` (`manufacturer_id`),
  CONSTRAINT `fk_products_Category1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`),
  CONSTRAINT `fk_products_manufacturer1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Основной справочник товаров для поиска';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'optio',13,27),(2,'sint',11,26),(3,'aperiam',8,26),(4,'ea',13,30),(5,'numquam',11,4),(6,'laborum',10,14),(7,'repellat',12,22),(8,'optio',13,4),(9,'saepe',12,4),(10,'velit',11,19),(11,'est',6,24),(12,'inventore',12,1),(13,'odit',10,17),(14,'nobis',8,1),(15,'vero',11,9),(16,'aliquam',5,16),(17,'maiores',3,30),(18,'omnis',6,20),(19,'qui',13,7),(20,'tempora',10,16),(21,'excepturi',6,8),(22,'voluptates',15,3),(23,'sint',15,24),(24,'enim',3,24),(25,'cum',14,28),(26,'dicta',7,8),(27,'praesentium',11,7),(28,'aut',5,10),(29,'ea',12,25),(30,'suscipit',5,15),(31,'deleniti',2,19),(32,'enim',15,7),(33,'iste',9,11),(34,'quaerat',14,13),(35,'qui',9,17),(36,'iste',14,28),(37,'id',12,28),(38,'molestias',1,24),(39,'amet',11,7),(40,'debitis',9,19);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warehouses_warehouse_id` int(11) NOT NULL,
  `items_item_id` int(10) unsigned NOT NULL,
  `qty` varchar(45) NOT NULL COMMENT 'количество товара',
  PRIMARY KEY (`id`),
  KEY `fk_stocks_items1_idx` (`items_item_id`),
  KEY `fk_stocks_warehouses1` (`warehouses_warehouse_id`),
  CONSTRAINT `fk_stocks_items1` FOREIGN KEY (`items_item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `fk_stocks_warehouses1` FOREIGN KEY (`warehouses_warehouse_id`) REFERENCES `warehouses` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='Остатки на складах';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (1,12,16,'55'),(2,6,10,'23'),(3,28,18,'85'),(4,20,42,'59'),(5,10,16,'75'),(6,2,33,'25'),(7,10,49,'20'),(8,15,40,'80'),(9,27,59,'33'),(10,1,9,'48'),(11,21,69,'16'),(12,27,45,'19'),(13,2,68,'65'),(14,2,25,'37'),(15,16,35,'22'),(16,6,64,'11'),(17,22,27,'92'),(18,2,46,'39'),(19,19,50,'106'),(20,8,66,'10'),(21,28,21,'63'),(22,12,18,'7'),(23,30,61,'98'),(24,25,62,'89'),(25,22,59,'55'),(26,30,27,'85'),(27,25,62,'28'),(28,1,61,'74'),(29,26,4,'25'),(30,7,26,'40'),(31,17,29,'83'),(32,9,18,'99'),(33,24,23,'86'),(34,28,29,'69'),(35,1,11,'83'),(36,11,67,'79'),(37,14,52,'16'),(38,6,30,'12'),(39,18,70,'83'),(40,10,21,'104'),(41,25,22,'89'),(42,21,46,'48'),(43,6,48,'85'),(44,16,2,'14'),(45,22,52,'85'),(46,12,18,'16'),(47,5,46,'10'),(48,16,65,'62'),(49,30,30,'44'),(50,10,1,'52'),(51,18,47,'105'),(52,29,1,'35'),(53,12,10,'83'),(54,14,70,'45'),(55,4,52,'8'),(56,9,68,'97'),(57,2,67,'76'),(58,19,16,'103'),(59,19,9,'39'),(60,7,25,'10'),(61,26,43,'96'),(62,19,70,'28'),(63,8,9,'11'),(64,28,17,'106'),(65,17,18,'26'),(66,8,8,'81'),(67,28,14,'16'),(68,4,23,'27'),(69,10,39,'41'),(70,10,33,'29'),(71,9,42,'103'),(72,13,23,'65'),(73,17,2,'103'),(74,17,13,'29'),(75,5,54,'79'),(76,17,70,'74'),(77,12,10,'103'),(78,30,45,'13'),(79,8,64,'33'),(80,27,57,'94'),(81,5,8,'36'),(82,28,6,'42'),(83,9,3,'80'),(84,13,44,'11'),(85,18,51,'89'),(86,3,61,'87'),(87,10,36,'55'),(88,6,61,'59'),(89,16,52,'44'),(90,2,47,'26'),(91,15,41,'22'),(92,20,62,'74'),(93,22,46,'13'),(94,16,69,'37'),(95,17,27,'76'),(96,24,51,'19'),(97,15,50,'14'),(98,25,55,'92'),(99,23,16,'92'),(100,13,22,'53');
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_delivery_method`
--

DROP TABLE IF EXISTS `user_delivery_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_delivery_method` (
  `user_id` int(10) unsigned NOT NULL,
  `delivery_method_id` int(10) unsigned NOT NULL,
  `delivery_adress` varchar(160) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`,`delivery_method_id`),
  KEY `fk_users_user_id` (`user_id`),
  KEY `fk_delivery_method_id` (`delivery_method_id`),
  CONSTRAINT `fk_user_delivery_method_delivery_method1` FOREIGN KEY (`delivery_method_id`) REFERENCES `delivery_method` (`id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Способы доставки пользователя';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_delivery_method`
--

LOCK TABLES `user_delivery_method` WRITE;
/*!40000 ALTER TABLE `user_delivery_method` DISABLE KEYS */;
INSERT INTO `user_delivery_method` VALUES (51,11,'228 Quitzon Rapid Suite 537\nColbytown, IA 23514','1972-08-28 19:33:40'),(52,18,'121 Bartell Springs\nLake Tianna, CA 99629-4839','1979-10-06 12:56:45'),(55,4,'349 McGlynn Underpass Apt. 371\nNew Ceasarfort, IN 43437-8003','2020-07-18 20:09:35'),(60,7,'3387 Flatley Mountain\nRunolfssonbury, GA 52505','1978-07-19 09:47:18'),(60,13,'89243 Krystina Place Suite 150\nBeerhaven, FL 96286-7509','1998-03-17 11:50:30'),(62,17,'1784 Dejon Rapid\nSouth Cydney, WI 43970-6940','1982-06-17 06:49:20'),(62,19,'533 Kirlin Circles Apt. 041\nPort Shaynamouth, RI 72937','1994-04-07 10:38:09'),(64,12,'56058 Florencio Cove\nHaneport, VA 35662','1994-05-07 06:38:47'),(65,4,'67804 Heaney View Suite 292\nLake Alexisside, VT 08705','1971-01-05 11:08:37'),(66,5,'535 Madelyn Isle\nNorth Moriahmouth, MO 54662-9552','1983-02-14 21:20:39'),(66,16,'146 Drew Stream Suite 219\nKoeppport, DC 52623-6311','1979-11-15 22:45:32'),(72,12,'5879 Braun Parkway Apt. 506\nOrachester, NH 16239-7283','2002-08-26 04:30:01'),(72,18,'71489 Arielle Haven Apt. 072\nConnberg, MO 02693-3294','1990-03-05 15:00:44'),(72,20,'89142 Baumbach Overpass\nLeuschkeburgh, PA 18275-4468','1997-11-29 08:27:06'),(76,1,'92295 Treutel Meadow Suite 592\nAlexandrinemouth, VA 33382','2020-03-06 01:28:05'),(76,10,'0881 Erin Walk\nLake Salmaville, LA 73517-0094','1986-03-14 18:31:46'),(77,16,'86891 Strosin Track Apt. 617\nNorth Effieview, AL 50276','1975-03-02 07:23:02'),(81,4,'313 Maida Square Suite 432\nRyleighport, IN 03967','2014-09-25 19:56:27'),(82,4,'42182 Tanya Throughway Suite 191\nSatterfieldmouth, TX 89888-7717','1995-12-15 13:34:56'),(82,10,'94998 Gino Center Apt. 600\nWest Verliebury, WV 79442-3873','1992-11-18 22:19:07'),(83,3,'3292 Rubie Island Apt. 382\nCamillaton, VT 62072-9769','1997-02-20 06:28:49'),(83,6,'516 Lysanne Land\nPort Orie, AL 37195-7054','2006-10-21 06:16:57'),(83,13,'7193 Bailey Estate Apt. 803\nCarterview, AZ 94647-9772','2002-08-28 09:52:33'),(84,3,'010 Conroy Throughway Apt. 030\nYundttown, TN 25971-3308','2014-07-31 02:11:21'),(84,8,'5521 Maximillia Canyon Apt. 471\nAidanton, OH 42224','1994-09-03 14:30:03'),(84,11,'77469 Lemke Terrace Suite 672\nArthurberg, SD 25376','1981-10-10 19:09:07'),(85,1,'09273 Chanelle Turnpike\nSouth Mozelleport, NJ 62540-7207','1982-07-04 01:22:30'),(85,14,'185 Cale Roads Suite 601\nBlaiseport, MO 58356-0714','1978-06-08 09:21:17'),(85,16,'084 Dicki Spurs Suite 192\nLake Theresaburgh, FL 86114-3143','1970-04-02 03:06:27'),(86,20,'6780 Golden Glens Suite 194\nPort Elisabethville, VT 82449','1982-04-14 20:29:06'),(87,10,'4628 Hansen Gardens\nNorth Harrisonview, TN 30287','2005-05-24 18:06:25'),(92,26,'9960 Anika Stravenue\nGrahamburgh, SD 03093','1989-10-14 18:47:47'),(94,5,'360 Lilly Mountains\nZemlakview, CA 29708','2018-08-20 22:17:25'),(95,6,'32429 Lemke Divide Suite 097\nLake Shawna, MT 24877','1991-10-25 20:43:39'),(95,12,'18021 Tyreek Station Suite 367\nLake Brandt, ME 99726-5024','1981-11-01 15:04:17'),(95,22,'931 Alycia Springs Apt. 545\nShayneside, TN 66315-1682','2009-02-13 00:59:24'),(98,27,'204 Benton Street Apt. 412\nNorth Enricotown, OH 61324-4790','1983-07-11 13:43:57'),(98,28,'17667 Therese Canyon\nMorarborough, WA 27189','1986-03-04 17:55:45');
/*!40000 ALTER TABLE `user_delivery_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profiles` (
  `users_user_id` int(10) unsigned NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middle_name` varchar(90) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` datetime NOT NULL,
  `gender` enum('m','f') DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`users_user_id`),
  CONSTRAINT `fk_user_profiles_users1` FOREIGN KEY (`users_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Профили пользователей\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (51,'Art','ad','Yundt','1990-10-26 10:39:02','f','1999-05-14 04:18:28','1995-09-14 13:15:17'),(52,'Jaylin','quaerat','Prosacco','1994-07-28 23:22:08','m','2015-01-06 12:24:48','1991-03-05 23:30:47'),(53,'Jonathan','adipisci','Rath','1988-08-03 19:09:52','f','2003-03-25 21:02:35','1993-01-11 21:57:28'),(54,'Omer','aperiam','Abshire','2002-09-11 15:36:29','f','1970-05-04 23:13:19','2009-12-04 11:30:45'),(55,'Natalia','ut','Hane','1990-05-09 00:12:19','m','1970-10-20 15:07:50','2002-01-26 18:20:40'),(58,'Megane','ipsam','Bogan','1970-01-15 13:29:33','f','1994-05-15 06:05:48','1983-05-14 21:03:06'),(60,'Laurie','cumque','Renner','1980-08-20 10:01:32','m','1982-11-25 06:13:00','2012-07-18 13:45:26'),(62,'Laura','error','Bergnaum','1982-03-09 01:26:14','f','1974-01-26 14:51:41','1996-02-09 18:06:15'),(64,'Telly','voluptates','White','2001-10-06 19:44:36','f','2019-09-24 12:35:21','2012-12-12 03:23:13'),(65,'Tom','earum','Crooks','2002-12-28 05:15:30','m','1992-05-01 00:10:21','2015-12-13 02:22:15'),(66,'Rozella','optio','Rosenbaum','1986-10-22 00:01:13','m','1970-12-09 05:53:40','1979-04-12 13:18:44'),(69,'Jacquelyn','dicta','Olson','1974-08-04 06:22:39','m','1985-10-19 22:18:54','1993-12-20 17:30:07'),(70,'Kennedi','dolores','Hammes','2002-07-09 21:24:51','f','1992-11-11 05:01:01','2015-08-31 22:29:00'),(71,'Jolie','accusamus','Mosciski','1977-01-06 04:15:19','m','2000-05-05 07:39:52','2017-10-15 02:26:57'),(72,'Salvatore','voluptas','Legros','1994-01-01 20:02:05','f','1976-01-28 20:55:01','2015-07-13 04:30:32'),(76,'Maddison','sit','Stiedemann','2012-07-29 17:39:48','f','1981-04-12 08:15:55','2002-05-25 22:40:14'),(77,'Molly','et','Kuhn','1988-06-03 16:34:58','f','2015-08-13 23:19:17','2007-01-31 12:07:58'),(81,'Sandra','et','Gleason','1992-07-16 23:19:44','f','1970-06-14 22:08:06','2015-06-26 05:09:15'),(82,'Greta','culpa','Schultz','1980-08-04 09:06:12','f','2018-07-19 16:43:02','2009-05-31 04:08:57'),(83,'Jonathon','quia','Wuckert','2016-08-06 02:36:43','f','2020-01-01 05:16:09','1980-08-30 02:11:41'),(84,'Bryana','corporis','Schmitt','2005-04-13 04:40:00','f','1998-12-31 16:16:28','1975-09-04 16:39:06'),(85,'Giovani','itaque','Kuhlman','2015-05-19 10:20:01','m','1970-08-25 07:07:06','1973-03-03 14:38:54'),(86,'Kira','at','Okuneva','1995-04-25 14:45:15','m','2017-01-11 17:51:15','1994-05-25 21:20:06'),(87,'Cale','beatae','Schmeler','1997-02-20 01:20:22','f','2009-01-01 14:08:49','1972-11-28 18:31:47'),(89,'Zula','nam','Kerluke','1991-06-18 04:25:14','f','1978-03-31 23:40:22','1978-09-16 02:34:38'),(91,'Braulio','ab','Bogisich','1981-03-31 19:50:04','m','2018-09-19 14:31:10','1972-04-23 13:50:07'),(92,'Ahmad','quia','Weissnat','2005-05-04 04:19:49','m','1987-03-27 18:21:24','1976-04-28 00:10:56'),(94,'Celestine','magnam','Leuschke','2003-09-03 09:21:30','f','2013-06-22 13:16:43','1970-09-09 05:16:11'),(95,'Garret','omnis','Bahringer','2015-06-02 00:13:05','f','2016-12-14 19:29:50','1987-06-08 15:38:26'),(98,'Lawson','velit','Bruen','1987-12-12 05:43:28','m','1974-11-21 08:22:57','1987-07-22 13:16:45'),(99,'Margarita','hic','Gibson','1972-01-13 22:16:57','m','2008-10-09 10:50:37','1978-04-30 09:06:10');
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password_hash` char(128) DEFAULT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='Пользователи - системная таблица с паролями';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (51,'2470e802230295ee3c8e43f4dbc961e40b3b63d1',766547,'stracke.florida@example.com','2017-05-22 12:58:27'),(52,'b85d0c3b32c5491e99aa0a517d560becdabf2715',0,'enienow@example.org','2019-12-06 18:42:29'),(53,'2fba230889a630eb4a2e7b9d5ea3f8f966daf513',884,'stella.reinger@example.net','1990-06-17 18:39:52'),(54,'c5a573033ceb6f442d77661b5cf7ce6fe4cf6c20',972686,'marques.moen@example.net','1998-03-04 14:10:13'),(55,'9dfeadb704d9a9d5d2923b166567b5f58dd0c426',1,'ugreen@example.com','2003-05-13 05:53:56'),(58,'25959101af08c2bdc7cd91c2cd29515716537a99',51,'kunze.jeremy@example.org','2020-11-17 00:11:10'),(60,'9d8ff13f511ef3e9310e937266c6fa047d6324d3',802,'hwatsica@example.net','2004-03-09 18:31:37'),(62,'6f6d98155f328ee4edef02d1414c885ec2a9ca63',7,'geraldine.monahan@example.net','2000-12-01 02:59:19'),(64,'162a87f91cc748942fb04a8257c6b7c8d0741b09',6645950535,'etha36@example.com','1979-01-21 22:57:07'),(65,'a7dc41edd6500e159df4e257fd5e2520d4130e8a',65,'eichmann.marcelo@example.com','1974-06-16 18:42:36'),(66,'814e30236e71eb22731f3b618eb4ec760321b9b2',267525,'will.omari@example.com','1971-03-18 12:01:12'),(69,'582a6ee1506f367aaa862d34c61a246e6bb72fc4',9491472644,'boyle.jeremie@example.org','1993-08-02 15:43:56'),(70,'00f4d538b3a782ef4cca5b7ab0db3317b0d35f74',375145,'mcdermott.dale@example.org','2010-04-09 18:35:03'),(71,'b6eaf9f55d4b146d5ab27e97d737c740f68b8abf',8755685439,'kmoore@example.com','2018-10-20 14:03:29'),(72,'5742bd1dbb7ff0b9048bee3380aba3d57dd525a1',752434,'ajaskolski@example.com','1972-03-30 18:14:12'),(76,'fabbc790ee63873efedf2db59c4d8e915b29f257',41,'carol91@example.org','1996-11-04 08:38:42'),(77,'543447d6e663cf56e63551ea0283a707dc39e68c',8082800003,'delmer80@example.com','2014-05-12 10:20:20'),(81,'06594fd0ddde1ac76a5157ecfd54b55c49218db5',963,'wrobel@example.org','2008-04-29 21:27:15'),(82,'db361c84c977020c96e54baba77b7ae0b8b1b1a6',9299920756,'rolfson.jerrell@example.net','2020-11-08 06:15:49'),(83,'a6e74ff0fd18ee1db0e733cdcfaa337aabc3783f',92492113,'angelita33@example.com','1973-07-19 22:02:17'),(84,'ee512a24344e0cdbcf0c3ffd008f5a85d8e5c85f',346,'o\'keefe.loren@example.com','1988-07-07 02:54:44'),(85,'26b3ec57dc00fdac2ac22fcdf669a3b0537993f1',68,'rylan31@example.com','1991-01-05 21:06:47'),(86,'f47d80186248512789ac326c0669323c72bbb472',393,'olson.pascale@example.com','1973-05-20 11:24:54'),(87,'c792b8ab875622ce28e68bd90fd5fb35188589e2',52,'kellen.kohler@example.com','1987-06-05 17:14:54'),(89,'2a8910ced16184d4548c36aa3aa4f979995b37cb',9787332400,'maryse84@example.net','1983-08-06 06:41:37'),(91,'3440734cad5e9e3d39f32265487f0573c57db888',141,'walker.kaci@example.net','1973-11-04 16:31:19'),(92,'3ab4baf7cae11064d638081ba07db318f923203d',3032965113,'apadberg@example.com','1998-10-14 19:12:01'),(94,'3c24d5a9bc4dab7850f05f2af6ba317b1dc364e3',498883,'sheridan69@example.org','2000-04-30 22:16:26'),(95,'b9c6c261ceca7aea7a5004721495a1f341fdd1bb',70289,'susie.lakin@example.org','1990-12-01 19:13:51'),(98,'13a82aa5ed084759e811cd54429313d84787fbba',188,'kelley.leuschke@example.org','2007-12-05 17:00:52'),(99,'cac58318f66424bff8904f32d411f48b40675052',20,'ricky40@example.com','1973-05-11 05:38:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `vendor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Справочник поставщиков';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'explicabo'),(2,'rerum'),(3,'et'),(4,'fuga'),(5,'et'),(6,'ab'),(7,'exercitationem'),(8,'tempora'),(9,'non'),(10,'impedit'),(11,'explicabo'),(12,'culpa'),(13,'laboriosam'),(14,'autem'),(15,'vel'),(16,'qui'),(17,'ut'),(18,'qui'),(19,'facilis'),(20,'tempora'),(21,'illo'),(22,'est'),(23,'ad'),(24,'et'),(25,'fugiat'),(26,'quisquam'),(27,'repudiandae'),(28,'iusto'),(29,'perspiciatis'),(30,'praesentium');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors_price`
--

DROP TABLE IF EXISTS `vendors_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors_price` (
  `items_item_id` int(10) unsigned NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `price` decimal(8,2) unsigned NOT NULL COMMENT 'Цены поставщиков\nУникальным будет связка item_id и цена начала действия\nДата окончания может быть пустой\n\n',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`items_item_id`,`start_date`),
  KEY `fk_table1_items1_idx` (`items_item_id`),
  CONSTRAINT `fk_table1_items1` FOREIGN KEY (`items_item_id`) REFERENCES `items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors_price`
--

LOCK TABLES `vendors_price` WRITE;
/*!40000 ALTER TABLE `vendors_price` DISABLE KEYS */;
INSERT INTO `vendors_price` VALUES (1,'1981-06-08 15:00:29','1977-10-27 12:28:59',10173.39,'1984-10-29 06:09:25','1999-09-02 17:38:36'),(1,'1994-11-29 09:37:26','0000-00-00 00:00:00',9199.37,'2018-01-10 00:06:23','2020-05-22 04:08:20'),(1,'1996-05-18 19:56:35','0000-00-00 00:00:00',15835.84,'1995-05-05 23:21:58','1990-11-16 00:04:38'),(1,'2014-11-19 01:25:45','1988-01-28 19:52:28',13919.10,'2003-07-22 05:36:52','2011-01-07 21:27:22'),(2,'2005-12-09 22:02:41','0000-00-00 00:00:00',4024.33,'2017-04-21 03:25:53','2004-08-27 22:13:25'),(3,'1977-01-21 17:30:59','0000-00-00 00:00:00',20225.03,'1985-09-19 08:01:54','1992-11-06 07:09:52'),(3,'2000-05-15 17:58:13','0000-00-00 00:00:00',8984.78,'2008-08-28 14:05:59','1980-03-14 05:28:50'),(3,'2020-09-05 01:40:57','0000-00-00 00:00:00',17141.33,'2010-12-10 03:43:18','1994-05-13 22:20:34'),(4,'1998-08-01 05:53:08','1971-11-29 08:51:57',18908.86,'2002-12-24 10:11:37','1994-06-07 06:28:34'),(5,'2004-10-27 01:02:29','0000-00-00 00:00:00',3777.25,'1986-12-08 19:51:04','1983-01-22 12:30:21'),(5,'2008-06-12 08:01:18','2004-12-18 12:23:35',13297.59,'2004-11-11 09:08:23','2001-11-13 04:24:20'),(5,'2011-09-11 05:57:48','0000-00-00 00:00:00',19389.25,'2015-02-25 16:32:16','1983-09-13 23:03:05'),(6,'1978-07-31 19:46:55','0000-00-00 00:00:00',3576.87,'2000-11-02 09:06:07','1983-08-12 12:30:20'),(6,'1981-12-22 20:03:39','2010-08-22 14:14:00',11721.48,'1994-09-19 03:45:41','1988-05-10 07:25:59'),(6,'2017-04-02 10:04:51','0000-00-00 00:00:00',19689.95,'2008-12-10 23:12:19','2012-10-03 11:07:33'),(8,'1975-07-02 17:12:03','0000-00-00 00:00:00',4406.62,'1987-05-05 21:37:36','2020-03-30 15:36:22'),(8,'1978-04-27 16:24:06','1987-04-13 05:50:31',108.24,'1996-06-08 23:56:55','2001-06-30 15:15:43'),(8,'1987-03-15 00:16:44','1991-09-23 17:24:52',19863.80,'1992-09-13 04:18:52','1977-05-20 21:12:34'),(9,'1971-03-03 22:47:53','0000-00-00 00:00:00',14901.14,'2006-11-26 18:00:42','2001-11-26 02:13:42'),(9,'1972-10-02 07:28:00','2021-02-19 14:54:03',12917.00,'1999-01-28 18:25:18','1981-01-03 11:11:05'),(10,'1995-04-27 08:38:34','2020-02-26 09:16:01',18452.44,'2015-11-22 06:28:42','1997-12-20 10:08:11'),(11,'2005-07-06 21:29:45','0000-00-00 00:00:00',6167.46,'1988-03-17 03:53:40','1983-12-11 18:32:40'),(11,'2012-09-18 18:02:53','1975-09-27 03:27:54',17576.88,'1979-12-20 21:00:30','2020-01-09 22:34:20'),(12,'2000-08-28 18:38:39','1990-11-25 17:15:07',6905.87,'1989-07-26 08:43:37','2004-04-30 13:30:49'),(12,'2008-08-13 14:58:30','1997-12-21 07:42:39',12882.02,'1998-04-08 08:27:15','2020-02-12 03:46:24'),(13,'1999-04-09 13:32:36','0000-00-00 00:00:00',19951.92,'1989-09-07 14:46:07','1982-03-11 09:54:28'),(13,'2019-11-17 04:17:40','0000-00-00 00:00:00',3193.85,'1993-05-14 02:38:25','1989-10-11 00:28:02'),(14,'1970-08-07 18:52:56','1996-06-15 03:06:36',19010.19,'2014-11-05 00:05:59','2009-04-13 12:03:45'),(14,'1970-09-01 13:42:52','1989-12-03 07:05:44',14235.30,'1987-07-27 15:57:41','1970-11-27 22:23:02'),(14,'1995-11-04 17:24:57','0000-00-00 00:00:00',20469.27,'1998-11-30 10:18:00','2014-12-03 16:45:02'),(14,'2015-06-10 00:12:43','0000-00-00 00:00:00',3720.28,'2010-03-30 12:52:59','1975-11-09 17:53:58'),(16,'1977-05-02 04:49:39','1997-01-14 03:06:01',14524.65,'1973-07-24 02:19:59','1978-08-19 07:58:04'),(16,'1980-01-29 09:43:00','0000-00-00 00:00:00',20249.51,'1976-06-20 03:23:44','2010-09-22 01:45:52'),(17,'1990-07-22 11:04:44','2009-08-13 02:58:37',11627.30,'2011-12-07 02:23:14','2002-05-19 17:20:08'),(18,'2010-05-03 20:56:04','0000-00-00 00:00:00',1658.49,'2011-10-27 03:53:21','1997-09-16 23:04:16'),(21,'1999-01-16 18:30:16','0000-00-00 00:00:00',1395.16,'2007-01-26 16:07:57','1974-06-29 14:49:34'),(21,'2003-08-20 06:29:03','1985-06-10 07:36:05',19019.80,'2015-06-08 11:31:43','1977-10-06 17:52:33'),(22,'1982-09-25 02:30:01','1987-04-21 09:18:18',9512.92,'2017-02-03 11:13:37','2008-08-23 02:21:56'),(22,'2020-06-03 13:58:17','1979-07-23 08:34:46',2515.08,'1973-02-11 21:29:00','2019-10-07 09:19:26'),(23,'1994-07-18 05:33:00','0000-00-00 00:00:00',19849.61,'2011-07-01 14:23:14','2000-01-15 17:08:00'),(23,'2000-01-11 15:27:09','2004-03-11 07:11:50',4457.29,'2014-12-12 21:45:11','2019-02-15 10:05:29'),(23,'2002-04-22 03:50:29','0000-00-00 00:00:00',14318.59,'1997-04-04 09:50:47','1997-06-09 23:49:05'),(24,'1986-06-18 17:50:48','2000-02-07 04:46:53',12284.76,'1971-02-03 06:42:59','1990-08-02 10:54:29'),(24,'1995-08-19 22:27:03','1979-12-13 03:51:04',11520.14,'2020-06-01 04:33:01','2020-11-27 09:24:08'),(24,'2009-04-19 21:02:39','1986-12-02 06:22:17',1907.76,'1970-06-28 09:27:09','1983-12-30 12:17:15'),(25,'1980-04-10 16:31:23','1973-11-12 05:45:12',4308.42,'2015-08-13 03:42:55','2002-12-06 23:54:05'),(25,'2012-01-08 21:00:53','0000-00-00 00:00:00',13428.44,'2000-12-17 10:17:01','1975-08-08 03:15:29'),(25,'2017-06-24 19:17:42','1987-01-25 15:25:15',15949.78,'1990-07-07 12:50:27','2014-04-17 14:44:50'),(26,'1980-10-12 12:12:29','1981-04-22 23:20:04',16326.75,'1985-04-30 09:15:06','1976-05-04 05:22:36'),(26,'2012-04-14 18:26:50','1973-01-10 06:10:51',15515.33,'2012-10-05 00:27:02','1979-08-10 02:40:53'),(28,'1990-08-18 06:33:59','1996-01-10 20:24:28',17900.61,'1985-11-19 11:37:18','2015-07-11 03:33:23'),(29,'2001-04-13 00:34:09','1990-07-02 06:02:11',5879.83,'1973-10-25 03:37:07','2010-07-03 17:15:29'),(31,'2011-10-13 02:16:15','2014-06-13 05:39:12',1990.57,'1972-05-09 20:04:47','1981-08-18 18:54:04'),(31,'2012-11-14 12:20:32','1987-02-22 16:31:46',6226.49,'1974-11-21 11:18:53','2000-09-04 23:17:34'),(32,'1975-09-08 22:40:12','0000-00-00 00:00:00',2630.22,'1983-10-18 18:40:40','1979-06-08 20:57:47'),(33,'2008-03-15 22:10:10','2016-10-19 09:25:07',3118.24,'1993-09-01 12:46:58','1990-12-21 00:00:06'),(33,'2011-02-18 20:54:35','1983-08-20 21:38:32',13858.23,'2004-03-26 16:42:47','2012-04-28 12:55:37'),(33,'2013-08-14 20:41:40','2011-02-07 06:42:24',1231.17,'1981-02-08 07:51:55','2008-02-18 06:23:32'),(33,'2019-03-06 22:32:12','0000-00-00 00:00:00',3041.43,'2015-02-02 15:35:59','1981-05-25 09:18:16'),(34,'1995-03-13 23:23:00','2014-01-17 09:57:55',2801.63,'2019-01-01 01:51:20','1996-08-08 22:37:49'),(34,'2007-11-14 12:22:27','2016-05-06 21:42:53',598.18,'1972-05-03 01:53:53','1987-03-18 11:46:03'),(35,'1974-08-19 17:03:13','0000-00-00 00:00:00',16495.22,'1975-03-11 07:48:03','1998-08-02 02:34:55'),(35,'1991-05-14 09:00:34','1975-10-08 17:31:53',16272.96,'2015-11-14 03:27:47','1986-10-02 07:52:39'),(35,'2013-04-03 12:55:53','0000-00-00 00:00:00',3209.91,'1991-01-14 16:22:42','2008-12-29 07:34:50'),(35,'2018-04-22 04:11:02','0000-00-00 00:00:00',1916.83,'2004-09-11 00:40:44','1979-04-17 14:45:40'),(36,'1972-04-22 02:31:40','0000-00-00 00:00:00',14330.53,'1990-12-08 19:52:56','1992-05-30 08:10:37'),(36,'1983-12-28 01:25:28','0000-00-00 00:00:00',6732.16,'1985-10-24 07:39:06','1989-01-25 19:19:26'),(36,'2003-06-25 23:15:41','2002-02-26 11:01:28',11118.51,'1989-09-29 10:36:36','1999-10-17 03:23:16'),(38,'1984-05-25 19:05:50','2019-11-11 03:55:07',9361.81,'2006-07-19 13:21:11','1970-05-05 16:52:55'),(39,'1993-03-04 18:43:15','0000-00-00 00:00:00',2633.19,'1986-02-20 14:09:03','2001-02-21 10:54:17'),(39,'1998-12-29 18:45:03','0000-00-00 00:00:00',11263.93,'2014-03-22 09:21:56','1970-08-27 03:58:08'),(40,'2007-08-03 00:10:38','0000-00-00 00:00:00',419.58,'1992-07-17 20:14:38','1989-07-31 20:00:52'),(40,'2017-09-07 20:59:44','1980-09-18 14:44:35',7149.36,'2012-02-01 10:43:37','1979-08-22 00:52:35'),(40,'2018-04-17 22:29:07','2005-12-25 06:14:33',2496.80,'1978-06-04 23:09:16','1981-09-22 11:04:39'),(41,'1974-03-26 17:40:27','2010-03-03 12:03:13',11756.65,'2011-07-20 14:22:01','1982-05-02 03:52:43'),(41,'1979-03-07 05:46:03','2004-08-21 02:43:17',13312.48,'1991-01-04 06:22:27','1977-12-06 12:24:05'),(41,'2006-12-11 07:04:44','1979-08-20 00:57:22',3020.33,'1972-02-04 10:01:56','1977-05-05 02:28:15'),(41,'2009-09-28 02:43:40','1987-01-20 22:32:31',18226.13,'1998-03-02 19:29:27','1995-04-19 17:40:31'),(42,'1984-09-22 13:35:59','0000-00-00 00:00:00',10240.16,'2007-12-09 04:15:15','2004-05-17 08:24:04'),(44,'1978-04-03 02:42:23','0000-00-00 00:00:00',19315.91,'2001-12-04 02:08:03','2015-02-25 13:16:49'),(44,'1983-11-23 09:58:14','0000-00-00 00:00:00',3513.83,'2018-01-21 15:05:37','1970-06-04 23:40:55'),(44,'1997-05-23 05:17:41','1996-08-26 11:37:56',13593.87,'1971-03-01 02:02:47','1987-05-30 00:44:45'),(44,'2017-04-30 10:00:57','1998-12-29 06:08:30',2644.05,'1997-06-20 08:12:06','1984-01-05 07:45:58'),(46,'1971-10-11 02:10:13','1973-12-30 10:03:26',14425.91,'1970-11-08 07:40:14','2015-10-24 06:16:22'),(46,'2003-07-18 14:15:51','0000-00-00 00:00:00',16195.73,'1984-08-25 12:49:10','2020-06-22 17:43:38'),(46,'2012-12-17 11:37:44','0000-00-00 00:00:00',17369.76,'1974-12-16 05:11:53','1986-05-26 10:55:32'),(47,'1977-09-16 00:09:13','2013-06-02 23:46:23',6362.24,'1979-12-20 18:45:54','1973-08-24 07:11:19'),(47,'1981-04-08 04:02:48','2013-04-28 17:58:58',18093.85,'2005-11-24 12:54:25','2010-08-22 14:44:55'),(47,'1991-12-22 14:01:18','0000-00-00 00:00:00',14236.74,'1977-02-18 12:50:41','2009-10-12 14:08:14'),(47,'2015-12-13 08:55:49','0000-00-00 00:00:00',8359.89,'1993-01-11 20:31:38','2006-12-20 07:33:07'),(47,'2019-12-06 04:22:49','2001-06-13 19:39:03',16492.63,'1986-10-26 05:36:30','1997-05-28 00:58:05'),(48,'1990-12-02 12:24:04','0000-00-00 00:00:00',2591.19,'1972-11-05 21:41:57','1970-01-31 20:05:38'),(48,'1993-08-13 18:05:21','2013-06-01 10:11:32',6331.52,'2002-09-06 12:22:43','1994-01-06 21:28:20'),(48,'2003-10-21 10:47:12','0000-00-00 00:00:00',16745.21,'2020-01-12 15:34:46','2004-05-02 10:55:18'),(48,'2004-11-04 09:24:51','1970-05-29 18:25:49',6218.97,'1977-04-16 19:23:20','2006-12-07 02:27:34'),(48,'2008-04-14 04:11:56','2008-09-01 03:45:06',8483.00,'2010-03-11 08:51:35','1995-08-11 09:23:07'),(50,'1980-08-27 15:53:01','0000-00-00 00:00:00',12403.88,'1972-12-03 07:12:45','2007-07-01 14:15:56'),(50,'1980-10-15 23:15:26','0000-00-00 00:00:00',7316.04,'1986-07-30 14:38:48','1979-11-11 05:47:32'),(50,'2012-06-03 15:05:04','0000-00-00 00:00:00',2482.09,'1991-08-04 17:17:22','1974-09-28 22:05:57'),(51,'1991-10-22 21:31:21','0000-00-00 00:00:00',11276.78,'2001-06-01 12:36:41','1974-09-06 22:45:40'),(52,'1972-02-02 09:56:06','0000-00-00 00:00:00',4502.74,'1975-05-29 00:11:00','1988-01-30 07:32:50'),(52,'2017-05-29 07:32:57','2014-01-13 21:54:53',19777.98,'1984-02-20 03:56:15','2013-02-06 06:24:37'),(53,'2012-06-02 03:59:49','2017-11-21 10:56:50',16663.46,'2012-06-01 12:08:31','1971-03-01 11:40:47'),(53,'2016-05-19 06:00:10','2001-01-24 13:26:03',8161.06,'1992-01-15 10:50:06','2008-10-25 21:37:22'),(53,'2020-10-25 19:50:58','2004-07-25 15:01:31',3618.25,'1979-12-13 22:40:08','2002-09-18 00:21:36'),(54,'1987-02-01 19:34:43','1979-04-18 00:42:33',6856.23,'2011-06-24 10:03:56','1975-11-07 03:54:37'),(54,'2006-12-14 15:05:24','1976-03-02 05:09:56',12727.36,'1977-12-31 22:21:42','1996-06-14 10:35:40'),(54,'2013-12-09 10:07:54','1998-01-27 01:49:57',5410.17,'1984-08-17 15:04:23','2010-09-30 15:15:26'),(54,'2020-11-11 13:11:14','0000-00-00 00:00:00',9533.27,'1983-01-04 09:45:35','2020-01-23 07:17:25'),(55,'1982-06-17 10:35:32','0000-00-00 00:00:00',9064.90,'2013-12-07 00:06:41','2018-06-02 05:24:48'),(56,'1972-12-04 14:07:39','2014-09-10 12:46:41',14661.32,'2008-05-09 02:47:04','1978-04-10 21:16:31'),(56,'1983-12-13 22:31:01','0000-00-00 00:00:00',20132.30,'1997-10-03 04:13:29','1981-08-30 22:52:47'),(56,'2020-02-13 22:14:18','0000-00-00 00:00:00',5082.04,'1993-08-10 21:49:23','2000-09-19 03:20:59'),(57,'1970-02-03 12:44:26','1975-04-26 15:21:44',616.11,'2004-02-03 12:08:24','2010-12-17 12:47:25'),(57,'2000-06-13 20:16:43','2003-09-27 04:45:56',8806.17,'2014-10-21 17:10:53','2000-11-06 01:08:03'),(57,'2010-11-18 07:12:34','0000-00-00 00:00:00',11763.95,'2007-06-20 09:58:31','2007-08-03 22:31:19'),(58,'1975-02-20 11:49:10','1983-02-03 12:01:09',9483.61,'1975-08-29 14:09:23','2021-02-15 13:12:54'),(59,'1977-08-18 06:06:26','1977-02-13 08:58:38',20074.90,'1971-12-11 22:11:33','2016-10-24 02:57:55'),(59,'2006-01-29 18:22:36','1970-04-30 11:29:16',6386.14,'2012-11-02 22:21:03','1993-11-05 18:21:17'),(60,'1981-05-03 09:26:31','1975-10-09 20:52:13',10624.45,'1982-04-06 21:30:02','1996-03-12 18:55:05'),(60,'1985-01-14 21:39:58','1980-05-31 22:01:58',15505.49,'1988-02-04 16:23:05','2013-11-05 11:24:23'),(60,'2020-03-05 05:37:19','0000-00-00 00:00:00',7815.58,'2000-02-02 20:04:44','1987-01-22 12:18:04'),(61,'1975-05-07 23:16:19','2008-06-11 00:36:39',12285.15,'2000-11-21 17:07:06','1997-09-23 08:17:43'),(61,'1980-10-04 09:09:04','1988-10-22 22:21:58',14397.39,'1995-08-11 02:17:08','1990-09-09 05:18:01'),(61,'2004-10-10 20:36:05','0000-00-00 00:00:00',21021.97,'2007-12-05 13:16:23','2007-06-06 19:05:21'),(61,'2018-03-06 13:47:09','2013-03-07 15:23:10',9983.99,'2020-04-12 04:08:49','1973-01-21 22:28:44'),(62,'1989-02-15 10:44:14','0000-00-00 00:00:00',18190.29,'2000-05-05 12:04:39','2019-04-14 17:20:53'),(62,'1989-04-22 21:29:20','2020-01-29 07:22:17',15819.28,'2018-01-09 11:18:56','2000-01-04 00:49:47'),(63,'1995-02-14 03:46:44','0000-00-00 00:00:00',20577.50,'2000-11-29 08:59:59','2006-11-22 01:47:11'),(64,'2000-07-06 15:19:35','0000-00-00 00:00:00',1193.98,'1986-02-10 21:05:31','1999-01-25 05:59:08'),(64,'2010-08-17 13:42:02','0000-00-00 00:00:00',16616.80,'2008-09-10 11:40:24','2010-06-25 14:39:51'),(65,'1979-01-19 07:26:44','0000-00-00 00:00:00',11388.02,'2000-04-08 19:07:02','1980-07-12 05:23:12'),(65,'1986-01-21 11:09:14','0000-00-00 00:00:00',19135.30,'1989-06-07 06:06:32','2013-04-09 08:54:38'),(65,'1999-05-02 20:39:35','2019-03-05 22:26:03',20093.04,'1988-10-23 04:26:26','2000-02-12 07:57:55'),(65,'2003-09-05 01:13:23','0000-00-00 00:00:00',11365.97,'1992-02-05 10:59:02','2009-02-04 16:15:11'),(67,'2008-06-16 23:15:24','0000-00-00 00:00:00',11062.77,'1974-06-22 02:12:56','2017-08-03 16:54:23'),(67,'2012-03-12 04:30:50','0000-00-00 00:00:00',15606.43,'1989-02-06 08:49:28','2002-02-09 14:23:53'),(70,'1988-06-23 22:19:33','0000-00-00 00:00:00',10070.00,'2003-02-21 02:04:34','1978-06-10 01:27:53'),(70,'2003-06-27 00:53:36','1979-04-08 23:03:05',19944.34,'2004-11-14 17:49:03','1979-10-20 07:54:51'),(70,'2007-08-22 08:29:30','2005-05-01 21:12:14',7471.75,'1993-09-28 11:52:28','1990-02-02 05:55:15');
/*!40000 ALTER TABLE `vendors_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouses` (
  `warehouse_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendors_vendor_id` int(10) unsigned NOT NULL,
  `name` varchar(70) NOT NULL,
  `adress` varchar(250) NOT NULL,
  PRIMARY KEY (`warehouse_id`),
  KEY `fk_warehouses_vendors1_idx` (`vendors_vendor_id`),
  CONSTRAINT `fk_warehouses_vendors1` FOREIGN KEY (`vendors_vendor_id`) REFERENCES `vendors` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Список складов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (1,28,'tempora','9034 Rebeca Mount\nEichmannside, VA 84760-9388'),(2,23,'voluptatem','698 Jaycee Forks Suite 574\nSouth Torrey, GA 43036-7538'),(3,24,'asperiores','81665 Keebler Fields Suite 372\nEast Nathenmouth, NC 39812'),(4,11,'sit','2015 Jan Port Suite 837\nErichmouth, NV 92642-9143'),(5,21,'quia','36878 Maida Lock Suite 911\nSouth Everettland, NV 88936'),(6,27,'et','194 Funk Manors\nDevenshire, MI 97493-2235'),(7,25,'quas','8198 Trantow Pines Suite 316\nJacobsonmouth, NY 46910'),(8,3,'voluptatem','095 Kallie Estates Suite 544\nVincestad, MS 36132-0163'),(9,14,'nisi','35353 Eunice Stravenue Suite 605\nLake Emerald, MO 69624-1588'),(10,14,'nesciunt','69183 Kaycee Knolls Suite 358\nSchaeferton, TN 39475-4261'),(11,6,'quo','3299 Marilie Summit Apt. 673\nGerholdbury, NC 60257'),(12,30,'iste','6290 Windler Rapids Apt. 685\nAmieborough, AL 58470'),(13,16,'officia','00298 Andreane Common Suite 511\nSouth Joana, DC 57272'),(14,21,'ut','417 Jules Landing Apt. 074\nSouth Helmer, MO 97796-3657'),(15,13,'et','754 Elmira Harbors Suite 604\nNew Lorena, OK 97565-8110'),(16,21,'numquam','474 Maggio Trail\nNorth Helenaton, AL 50628-2675'),(17,26,'illum','5937 Linnea View Apt. 969\nWest Modesto, TX 98425-0554'),(18,23,'sint','2102 Lucius Trail Suite 869\nEast Sterling, FL 53585-7352'),(19,8,'dicta','606 Zulauf Loop Suite 312\nPort Caseymouth, MA 71855-1834'),(20,3,'hic','3800 Armstrong Rest\nNorth Ciara, WI 82336'),(21,3,'aspernatur','84375 Jordy Rue Apt. 287\nWest Odessa, SC 50353'),(22,19,'enim','09036 Peter Locks\nKilbackshire, OK 86984-8552'),(23,21,'non','446 Toy Rapid Suite 871\nUriahview, ID 28457-1516'),(24,8,'error','4980 Boyer Unions Suite 743\nWest Lornatown, TN 45382'),(25,13,'expedita','51223 Senger Branch Apt. 644\nAgnesmouth, NY 33785-5108'),(26,8,'explicabo','5508 Wolf Manor\nKesslerton, AL 57698'),(27,12,'voluptate','19857 Emard Springs\nSchadenbury, IA 22196'),(28,10,'ipsam','1088 Ebert Junction Apt. 486\nPort Filomenaview, MN 18056'),(29,24,'commodi','7808 Jasen Circles\nNew Anibal, AR 66788-2717'),(30,17,'doloribus','6894 Kaylie Freeway Suite 312\nTyraton, OK 37140-7832');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-28 22:16:27
