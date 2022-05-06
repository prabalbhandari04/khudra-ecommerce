-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: khudra
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'seller');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (9,1,25),(10,1,26),(11,1,27),(12,1,28),(1,1,41),(2,1,42),(3,1,43),(4,1,44),(5,1,45),(6,1,46),(7,1,47),(8,1,48);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add product',7,'add_product'),(26,'Can change product',7,'change_product'),(27,'Can delete product',7,'delete_product'),(28,'Can view product',7,'view_product'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add customer',9,'add_customer'),(34,'Can change customer',9,'change_customer'),(35,'Can delete customer',9,'delete_customer'),(36,'Can view customer',9,'view_customer'),(37,'Can add order',10,'add_order'),(38,'Can change order',10,'change_order'),(39,'Can delete order',10,'delete_order'),(40,'Can view order',10,'view_order'),(41,'Can add sell',11,'add_sell'),(42,'Can change sell',11,'change_sell'),(43,'Can delete sell',11,'delete_sell'),(44,'Can view sell',11,'view_sell'),(45,'Can add seller data',12,'add_sellerdata'),(46,'Can change seller data',12,'change_sellerdata'),(47,'Can delete seller data',12,'delete_sellerdata'),(48,'Can view seller data',12,'view_sellerdata');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$4rPdgdz7VbIqvPVpia3YGa$bpnxpSuJJLrI86SDEIk9eVrPPJ8aCtSeB99Qs2FQ3T8=','2021-04-18 12:37:38.574087',1,'admin','','','',1,1,'2021-04-17 03:17:24.335317'),(2,'pbkdf2_sha256$260000$iXGR3dJ13QBXOLQCzDianM$4eCdV6vmX5shpw+Ek6PFmJg80Lxvv4EzAmWtZ7qHsp4=',NULL,0,'random0123@gmail.com','','','random0123@gmail.com',0,1,'2021-04-18 07:58:53.760435'),(3,'pbkdf2_sha256$260000$c0Or4ZHt256YZhoiaPUgK1$me+R9ox76J3EVXGkimEgMVnkXDZdlJ8FKu5IcLKwc+o=',NULL,0,'random@gmail.com','','','random@gmail.com',0,1,'2021-04-18 08:01:35.969651'),(4,'pbkdf2_sha256$260000$QgSxl84r2t1OeFgThO0VNQ$ltTLI3noBcbGIMmE5PrsUD2+gHsKharlwCHfvZf379U=',NULL,0,'random2@gmail.com','','','random2@gmail.com',0,1,'2021-04-18 08:03:02.709393'),(5,'pbkdf2_sha256$260000$InWCnmd5tEv8QRjY8Dbk2c$V/GqOLQxeo1AYtd/qic4wyCxd9sceaGXjrDYB2ZJAkE=',NULL,0,'p@gmai.com','','','p@gmai.com',0,1,'2021-04-18 08:07:35.611710'),(6,'pbkdf2_sha256$260000$EMJcxUesSRpgkPSvyLuIin$oNKuLWKwYT7ftxEDPFj8T7uB4Z0mMXU3SPIdPcLFrRI=','2021-04-18 08:11:12.787719',0,'lenovo046348@gmail.com','','','lenovo046348@gmail.com',0,1,'2021-04-18 08:10:51.048863');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,6,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-04-17 03:18:50.454505','1','Coupons',1,'[{\"added\": {}}]',8,1),(2,'2021-04-17 03:18:54.501801','2','Services',1,'[{\"added\": {}}]',8,1),(3,'2021-04-17 03:18:58.582629','3','Hotels & Travels',1,'[{\"added\": {}}]',8,1),(4,'2021-04-18 07:00:25.557550','1','Khudra | 1',1,'[{\"added\": {}}]',12,1),(5,'2021-04-18 07:03:39.299326','1','khud | 1',2,'[{\"changed\": {\"fields\": [\"Firstname\", \"Lastname\", \"Phone\", \"Email\"]}}]',12,1),(6,'2021-04-18 08:10:18.465238','1','seller',1,'[{\"added\": {}}]',3,1),(7,'2021-04-18 10:58:20.592401','7','elon musk',3,'',7,1),(8,'2021-04-18 10:58:20.610468','6','Amazon Gift Card - 25$',3,'',7,1),(9,'2021-04-18 10:58:20.622432','5','Amazon Gift Card - 50$',3,'',7,1),(10,'2021-04-18 10:58:20.632517','4','Amazon Gift Card - 25$',3,'',7,1),(11,'2021-04-18 10:58:20.639816','3','Bercelona',3,'',7,1),(12,'2021-04-18 10:58:20.648042','2','Amazon Gift Card - 50$',3,'',7,1),(13,'2021-04-18 11:10:49.688249','8','Ayatana Spa - Facial',1,'[{\"added\": {}}]',7,1),(14,'2021-04-18 11:12:14.216668','9','Steam Gift Card -10$',1,'[{\"added\": {}}]',7,1),(15,'2021-04-18 11:12:40.715203','10','Radisson 1 night',1,'[{\"added\": {}}]',7,1),(16,'2021-04-18 11:12:56.041765','11','Hyatt 1 night',1,'[{\"added\": {}}]',7,1),(17,'2021-04-18 11:13:25.499761','12','Amazon Gift Card - 20$',1,'[{\"added\": {}}]',7,1),(18,'2021-04-18 11:13:45.435553','13','Netflix Gift Card',1,'[{\"added\": {}}]',7,1),(19,'2021-04-18 11:14:06.781509','14','Spotify Gift Card',1,'[{\"added\": {}}]',7,1),(20,'2021-04-18 11:16:37.497132','15','Everest Plumbers Fix faucets',1,'[{\"added\": {}}]',7,1),(21,'2021-04-18 11:17:27.275910','16','Everest Plumbers Unclog Drains',1,'[{\"added\": {}}]',7,1),(22,'2021-04-18 11:17:48.699326','17','Nike Gift Card -500$',1,'[{\"added\": {}}]',7,1),(23,'2021-04-18 11:18:56.971655','16','Everest Plumbers',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(24,'2021-04-18 11:19:20.376299','15','Yak Plumbers',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(25,'2021-04-18 11:19:40.350872','18','BBSM Gift Card',1,'[{\"added\": {}}]',7,1),(26,'2021-04-18 11:20:06.987230','19','Spotify 3 Months',1,'[{\"added\": {}}]',7,1),(27,'2021-04-18 11:20:44.793108','20','Spotify 6 Months',1,'[{\"added\": {}}]',7,1),(28,'2021-04-18 11:22:14.915674','21','Safalta Parlour Facial',1,'[{\"added\": {}}]',7,1),(29,'2021-04-18 11:22:36.472114','22','Akarash Electrics Repairing',1,'[{\"added\": {}}]',7,1),(30,'2021-04-18 11:22:54.447281','23','Hotel Sabrina 1 night',1,'[{\"added\": {}}]',7,1),(31,'2021-04-18 11:23:05.657666','24','Amazon Gift Card - 100$',1,'[{\"added\": {}}]',7,1),(32,'2021-04-18 11:24:03.475667','25','Ayurveda Full Massage',1,'[{\"added\": {}}]',7,1),(33,'2021-04-18 11:24:27.354169','26','Hotel Himalaya 1 night',1,'[{\"added\": {}}]',7,1),(34,'2021-04-18 11:25:26.542609','27','Netflix 50$',1,'[{\"added\": {}}]',7,1),(35,'2021-04-18 11:25:38.611632','28','Steam Gift Card -100$',1,'[{\"added\": {}}]',7,1),(36,'2021-04-18 11:25:53.603606','29','Steam Gift Card -20$',1,'[{\"added\": {}}]',7,1),(37,'2021-04-18 11:26:39.766291','30','Utkarsha Electronics Reparing',1,'[{\"added\": {}}]',7,1),(38,'2021-04-18 11:27:08.668389','24','Amazon Gift Card - 100',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(39,'2021-04-18 11:27:15.719633','22','Akarash Electrics Repairin',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(40,'2021-04-18 11:27:22.806642','22','Akarash Electrics',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(41,'2021-04-18 11:27:33.830347','30','Utkarsha Electronics',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(42,'2021-04-18 11:28:11.560464','31','Vanity Saloon Haircut',1,'[{\"added\": {}}]',7,1),(43,'2021-04-18 11:28:13.978553','31','Vanity Saloon Haircut',2,'[]',7,1),(44,'2021-04-18 11:29:14.736291','32','Miniso Gift Card',1,'[{\"added\": {}}]',7,1),(45,'2021-04-18 11:29:34.175638','33','Nepal Electronics',1,'[{\"added\": {}}]',7,1),(46,'2021-04-18 11:29:53.314901','16','Everest Plumbers',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(47,'2021-04-18 11:30:27.457701','33','Nepal Electronics',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(48,'2021-04-18 11:33:31.567647','34','Yeti Airlines KTM_BRT',1,'[{\"added\": {}}]',7,1),(49,'2021-04-18 11:34:11.341371','35','Buddha Air KTM-PKR',1,'[{\"added\": {}}]',7,1),(50,'2021-04-18 11:34:31.665938','36','Buddha Air KTM_BRT',1,'[{\"added\": {}}]',7,1),(51,'2021-04-18 11:34:47.211252','37','Hotel Annapurna 1 night',1,'[{\"added\": {}}]',7,1),(52,'2021-04-18 11:35:01.985233','38','Yellow Pagoda 1 Night',1,'[{\"added\": {}}]',7,1),(53,'2021-04-18 11:35:25.032992','37','Annapurna 1 night',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(54,'2021-04-18 11:35:32.144180','38','Yellow Pagoda 1 Night',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',7,1),(55,'2021-04-18 11:36:00.781964','39','HeliTour 4 days',1,'[{\"added\": {}}]',7,1),(56,'2021-04-18 11:36:58.600791','40','Funds 100$',1,'[{\"added\": {}}]',7,1),(57,'2021-04-18 12:34:26.290584','40','get 100$ @ Stonks',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(8,'store','category'),(9,'store','customer'),(10,'store','order'),(7,'store','product'),(11,'store','sell'),(12,'store','sellerdata');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-04-17 03:13:50.621162'),(2,'auth','0001_initial','2021-04-17 03:13:51.350160'),(3,'admin','0001_initial','2021-04-17 03:13:54.226422'),(4,'admin','0002_logentry_remove_auto_add','2021-04-17 03:13:55.215327'),(5,'admin','0003_logentry_add_action_flag_choices','2021-04-17 03:13:55.262203'),(6,'contenttypes','0002_remove_content_type_name','2021-04-17 03:13:55.691000'),(7,'auth','0002_alter_permission_name_max_length','2021-04-17 03:13:55.909975'),(8,'auth','0003_alter_user_email_max_length','2021-04-17 03:13:55.969922'),(9,'auth','0004_alter_user_username_opts','2021-04-17 03:13:55.990192'),(10,'auth','0005_alter_user_last_login_null','2021-04-17 03:13:56.154363'),(11,'auth','0006_require_contenttypes_0002','2021-04-17 03:13:56.169488'),(12,'auth','0007_alter_validators_add_error_messages','2021-04-17 03:13:56.223087'),(13,'auth','0008_alter_user_username_max_length','2021-04-17 03:13:56.590133'),(14,'auth','0009_alter_user_last_name_max_length','2021-04-17 03:13:56.846294'),(15,'auth','0010_alter_group_name_max_length','2021-04-17 03:13:56.936219'),(16,'auth','0011_update_proxy_permissions','2021-04-17 03:13:56.974375'),(17,'auth','0012_alter_user_first_name_max_length','2021-04-17 03:13:57.221212'),(18,'sessions','0001_initial','2021-04-17 03:13:57.319816'),(19,'store','0001_initial','2021-04-17 03:13:57.592885'),(20,'store','0002_auto_20200528_1402','2021-04-17 03:13:57.758266'),(21,'store','0003_product_category','2021-04-17 03:13:57.997550'),(22,'store','0004_auto_20200528_1430','2021-04-17 03:13:58.218357'),(23,'store','0005_auto_20200528_1732','2021-04-17 03:13:58.258854'),(24,'store','0006_customer','2021-04-17 03:13:58.404060'),(25,'store','0007_auto_20200529_2246','2021-04-17 03:13:58.438995'),(26,'store','0008_auto_20200531_2229','2021-04-17 03:13:58.468295'),(27,'store','0009_order','2021-04-17 03:13:59.004109'),(28,'store','0010_auto_20200531_2234','2021-04-17 03:13:59.828098'),(29,'store','0011_order_status','2021-04-17 03:13:59.948443'),(30,'store','0012_auto_20210410_1706','2021-04-17 03:13:59.978145'),(31,'store','0013_auto_20210414_1739','2021-04-17 03:14:00.008134'),(32,'store','0014_auto_20210414_1750','2021-04-17 03:14:00.183678'),(33,'store','0015_auto_20210414_1751','2021-04-17 03:14:00.214318'),(34,'store','0016_auto_20210414_1813','2021-04-17 03:14:00.387371'),(35,'store','0017_sell','2021-04-18 06:57:04.098109'),(36,'store','0018_delete_sell','2021-04-18 06:57:04.138004'),(37,'store','0019_sell','2021-04-18 06:57:04.395316'),(38,'store','0020_sellerdata','2021-04-18 06:57:04.517993');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('653ruw6sizbq682ueozkiys3t01pe58h','.eJxVjDEOgzAQBP9ydWTZgDmbMj1vsM7nI5BEWDJQIf6eINHQ7szsDkxlhW4_HhBoW8ewLVLClKADA7ctEn9kPkF60_zKivO8limqU1EXXVSfk3yfl3s7GGkZ_7VU1g3Wt5qxNojW16ltm8alZCvUTovxVRRmtjh4b4RRiIhtjA7ZOQ_HDwvzOxY:1lXbWe:ylwms3I94tGdGn7SgGbQTCvmScCMZkL6kjNum_wYDnA','2021-05-01 03:21:40.007313'),('ejn2hm4b1ns9pwy19bk9jj70vv03utv8','eyJjYXJ0Ijp7fX0:1lY2O6:UnoLk-oPq-9j9K6e1aAJKBXS_ZSkLkaYif4V2b4a7A4','2021-05-02 08:02:38.292181'),('n9a6a3bv0m4gthq2bl5h4va9lwnl5nof','eyJjYXJ0Ijp7fX0:1lY2Tv:51qjfQ-4GL1M8QgZbpQLAujao8aTiU_tsDJvcewFwAY','2021-05-02 08:08:39.993107'),('rn25v6erqogljdume3dxa7oxc9zvvnc9','.eJxVjr0OhCAQhN9l6ws5EBUsr_cZzLIsp_cjCWBlfPc7EhuLaWa-fJkdCFOBYT9uMOFW5mnLnKbFwwASLp1DevNaB__C9RkFxbWkxYmKiHPNYoyeP4-TvQhmzHPVBmta3SKyDj0H34SWrQmdc0RkkBste0ue_V1aaaRSQXe6b7RD9Q_WV7TlEr-cYFDHD3hcQC8:1lY6ge:1nhlLDoT2siMOJXas_-OBSh3E8uISO_-Pj762z7HIcI','2021-05-02 12:38:04.146043'),('ujnld32lw5vdytw5k0vr4qhvdzpulqlm','.eJxVjL0OwiAURt-F2RAvPwUc3fsM5AIXqRpISjsZ311JOujwLd85OS_mcd-K3zutfknswoCdfr-A8UF1gHTHems8trqtS-BD4QftfG6JntfD_QsU7GVks7NaaURS2VBOMmtyNk8hxBgtklRgXEyUzuDAghBZTcpIFVB8h8DeHwnTOJU:1lY2Xb:vcS0-su_jD6UV52-zVnnX_Xui-ZBM7fNy5G3p1K-f8k','2021-05-02 08:12:27.073258'),('wnh9jpakt3juq5ljaiip9xlb48d4wrmn','eyJjYXJ0Ijp7fSwiY3VzdG9tZXIiOjF9:1lXdAa:fSIYiW_IEyuiCpmQRZTJWTRWI0R-YKHVQPzLW0H4pqg','2021-05-01 05:07:00.047452');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (1,'Coupons'),(2,'Services'),(3,'Hotels & Travels');
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_customer`
--

DROP TABLE IF EXISTS `store_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_customer`
--

LOCK TABLES `store_customer` WRITE;
/*!40000 ALTER TABLE `store_customer` DISABLE KEYS */;
INSERT INTO `store_customer` VALUES (2,'test','test','9818717404','bm046348@gmail.com','pbkdf2_sha256$260000$Pdi7mldtYqgTssI4o5pfsJ$TWOTh9oWU9jhyyriU2yh03P80NGE8azwd0ePD0oWU5Y=');
/*!40000 ALTER TABLE `store_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `date` date NOT NULL,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_customer_id_13d6d43e_fk_store_customer_id` (`customer_id`),
  KEY `store_order_product_id_11796f0f_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_order_customer_id_13d6d43e_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`),
  CONSTRAINT `store_order_product_id_11796f0f_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
INSERT INTO `store_order` VALUES (6,1,800,'2021-04-18',2,15,'kathmandu','+9779818717404',0),(7,1,29999,'2021-04-18',2,17,'kathmandu','+9779818717404',0),(8,1,7999,'2021-04-18',2,24,'kathmandu','+9779818717404',0),(9,2,80000,'2021-04-18',2,39,'kathmandu','+9779818717404',1),(10,1,7999,'2021-04-18',2,40,'kathmandu','+9779818717404',0);
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`),
  KEY `idx_name` (`name`),
  KEY `idx_price` (`price`,`description`,`image`),
  CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (8,'Ayatana Spa - Facial',1999,NULL,'static/images/download_1.jpg',2),(9,'Steam Gift Card -10$',799,NULL,'static/images/steam_10.jpg',1),(10,'Radisson 1 night',3500,NULL,'static/images/raddison.jpg',3),(11,'Hyatt 1 night',5000,NULL,'static/images/hyat.jpg',3),(12,'Amazon Gift Card - 20$',1499,NULL,'static/images/amazon_20.png',1),(13,'Netflix Gift Card',799,NULL,'static/images/netflix.png',1),(14,'Spotify Gift Card',799,NULL,'static/images/spotify.jpg',1),(15,'Yak Plumbers',800,NULL,'static/images/plumber.jpg',2),(16,'Everest Plumbers',500,NULL,'static/images/plumber_3.jpg',2),(17,'Nike Gift Card -500$',29999,NULL,'static/images/nike_500.png',1),(18,'BBSM Gift Card',799,NULL,'static/images/bbsm.jpg',1),(19,'Spotify 3 Months',1999,NULL,'static/images/spotify_3.jpeg',1),(20,'Spotify 6 Months',4499,NULL,'static/images/spotify_6m.jpg',1),(21,'Safalta Parlour Facial',1999,NULL,'static/images/parlor_1.jpg',2),(22,'Akarash Electrics',999,NULL,'static/images/electrician.jpg',2),(23,'Hotel Sabrina 1 night',3999,NULL,'static/images/hotel_sabrina.jpg',3),(24,'Amazon Gift Card - 100',7999,NULL,'static/images/amazon_100.jpg',1),(25,'Ayurveda Full Massage',2999,NULL,'static/images/spa_1.jpg',2),(26,'Hotel Himalaya 1 night',1999,NULL,'static/images/hotel_himalya.jpg',3),(27,'Netflix 50$',3499,NULL,'static/images/netflix_50.jpg',1),(28,'Steam Gift Card -100$',7499,NULL,'static/images/steam_100.jpg',1),(29,'Steam Gift Card -20$',1499,NULL,'static/images/steam_20.jpg',1),(30,'Utkarsha Electronics',899,NULL,'static/images/electrician_1.jpg',2),(31,'Vanity Saloon Haircut',499,NULL,'static/images/parlor_3.jpg',2),(32,'Miniso Gift Card',3499,NULL,'static/images/miniso.jpg',1),(33,'Nepal Electronics',899,NULL,'static/images/electrician_Omv9BZJ.jpg',2),(34,'Yeti Airlines KTM_BRT',2999,NULL,'static/images/yeti.jpg',3),(35,'Buddha Air KTM-PKR',2499,NULL,'static/images/buddha.jpg',3),(36,'Buddha Air KTM_BRT',2999,NULL,'static/images/buddha_1ZKXZkV.jpg',3),(37,'Annapurna 1 night',4999,NULL,'static/images/ana.jpg',3),(38,'Yellow Pagoda 1 Night',3499,NULL,'static/images/yellow.jpg',3),(39,'HeliTour 4 days',80000,NULL,'static/images/heli.jpg',3),(40,'get 100$ @ Stonks',7999,NULL,'static/images/stock.jpg',2);
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_sell`
--

DROP TABLE IF EXISTS `store_sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_sell` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `instock` tinyint(1) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_sell_category_id_03cd63ee_fk_store_category_id` (`category_id`),
  CONSTRAINT `store_sell_category_id_03cd63ee_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_sell`
--

LOCK TABLES `store_sell` WRITE;
/*!40000 ALTER TABLE `store_sell` DISABLE KEYS */;
INSERT INTO `store_sell` VALUES (1,'steve job\'s laptop',90,'yes','static/images/tech.jpg',1,1);
/*!40000 ALTER TABLE `store_sell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_sellerdata`
--

DROP TABLE IF EXISTS `store_sellerdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_sellerdata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_sellerdata`
--

LOCK TABLES `store_sellerdata` WRITE;
/*!40000 ALTER TABLE `store_sellerdata` DISABLE KEYS */;
INSERT INTO `store_sellerdata` VALUES (1,'khud','ra','+9779818717404','samsep046348@gmail.com','GqZkjxd283`'),(2,'p','p','9818717404','lenovo046348@gmail.com','pppp');
/*!40000 ALTER TABLE `store_sellerdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-18 18:32:48
