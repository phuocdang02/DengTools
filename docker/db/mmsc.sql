CREATE DATABASE  IF NOT EXISTS `mmscapp` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mmscapp`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: mmsofts.com    Database: mmscapp
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `__EFMigrationsHistory`
--

DROP TABLE IF EXISTS `__EFMigrationsHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__EFMigrationsHistory`
--

LOCK TABLES `__EFMigrationsHistory` WRITE;
/*!40000 ALTER TABLE `__EFMigrationsHistory` DISABLE KEYS */;
INSERT INTO `__EFMigrationsHistory` VALUES ('20231129014531_Initial','7.0.13');
/*!40000 ALTER TABLE `__EFMigrationsHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `account_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `hash_password` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `last_updated_at` datetime(6) DEFAULT NULL,
  `active_status` tinyint(1) DEFAULT NULL,
  `locked_status` tinyint(1) DEFAULT NULL,
  `user_id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `role_id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Accounts` char(36) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_accounts_Accounts` (`Accounts`),
  CONSTRAINT `FK_accounts_users_Accounts` FOREIGN KEY (`Accounts`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('17e86dc4-b264-4fee-8fa5-66c23d2d4b4b','mmsc_gmdemo','39319808F266311B5D24F06469EDDE63','2023-11-30 09:45:05.070967',NULL,0,0,'3fa85f64-5717-4562-b3fc-2c963f66afa6','f90b0a19-c6de-40fb-9c9d-f386a02c6a68','53913264-73e6-4f45-8c06-b2c0208916bb'),('90363e6e-983c-45aa-aedd-f0f1390c663d','mmsc_imdemo','0D68DD74E896A6298DC19C6319B7B482','2023-11-30 09:47:17.428908',NULL,0,0,'3fa85f64-5717-4562-b3fc-2c963f66afa6','f90b0a19-c6de-40fb-9c9d-f386a02c6a68','6641cc1a-b942-4c68-aaa6-2df3b16219f7'),('ec161057-a955-40ba-8934-3a6e6df9d50a','mmsc_osmdemo','D67542E4B937937B9BEE262524438DE7','2023-11-30 09:48:24.031716',NULL,0,0,'3fa85f64-5717-4562-b3fc-2c963f66afa6','f90b0a19-c6de-40fb-9c9d-f386a02c6a68','db462819-8b24-4375-a7f6-207b18dc8560');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layers`
--

DROP TABLE IF EXISTS `layers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `layers` (
  `id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `zoom` int DEFAULT NULL,
  `latitude` decimal(65,30) DEFAULT NULL,
  `longitude` decimal(65,30) DEFAULT NULL,
  `default_camera_ip` char(36) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `height` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `source` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `create_at` datetime(6) NOT NULL,
  `last_updated_at` datetime(6) DEFAULT NULL,
  `active_status` tinyint(1) DEFAULT NULL,
  `account_id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layers`
--

LOCK TABLES `layers` WRITE;
/*!40000 ALTER TABLE `layers` DISABLE KEYS */;
INSERT INTO `layers` VALUES ('29caa110-4beb-451b-b446-25ff405f2ba7','District 1',17,10.777910000000000000000000000000,106.696596000000000000000000000000,'161dda53-1b27-4fda-83d5-3580c245c922',0,0,NULL,'2023-11-22 03:24:10.708039','2023-12-04 03:11:53.211362',0,'17e86dc4-b264-4fee-8fa5-66c23d2d4b4b'),('4b56079d-1544-42a7-a8f1-253aab9f5bcf','District 2',17,10.769785000000000000000000000000,106.723740000000000000000000000000,'ea3560e8-fb1e-410c-b72f-23c8980bec38',0,0,NULL,'2023-11-22 03:24:10.716486','2023-12-04 03:12:24.392369',0,'17e86dc4-b264-4fee-8fa5-66c23d2d4b4b'),('5c9465a2-2e3c-48c0-8194-e116d067d16c','1st Floor',1,0.000000000000000000000000000000,0.000000000000000000000000000000,'77be8d48-c843-4b67-a0fc-75fe4fc4b6e6',686,1466,'../../assets/images/tang1.png','2023-11-22 03:24:10.762083','2023-12-04 03:14:18.205122',0,'90363e6e-983c-45aa-aedd-f0f1390c663d'),('7eba0685-fddc-4abb-baee-36dcf243e9b0','Phú Mỹ Hưng - Khu Y Tế Điều Dưỡng',17,10.732933800000000000000000000000,106.718344000000000000000000000000,'1fe03083-04e1-4db8-ba27-db0b54c03fe0',0,0,NULL,'2023-11-22 03:24:10.724094','2023-12-04 03:07:16.078842',0,'ec161057-a955-40ba-8934-3a6e6df9d50a'),('8d6a86fe-d73b-4ce5-9aef-6fd956be8034','Phú Mỹ Hưng - Khu Thương Mại Tài Chính Quốc Tế	',16,10.729108100000000000000000000000,106.722880000000000000000000000000,'7e2fee23-9bf4-4bac-bfc5-709160897673',0,0,NULL,'2023-11-22 03:24:10.731444','2023-12-04 03:08:15.028117',0,'ec161057-a955-40ba-8934-3a6e6df9d50a'),('9b67ff73-bded-4098-bb48-56baa3c55b40','District 7',17,10.725830000000000000000000000000,106.714637000000000000000000000000,'47f14a0b-0563-421b-859a-4705201d6419',0,0,NULL,'2023-11-22 03:24:10.755840','2023-12-04 03:13:03.148397',0,'17e86dc4-b264-4fee-8fa5-66c23d2d4b4b'),('a6176cb3-f9d4-45bd-9bb1-6b1a6320ec7d','Phú Mỹ Hưng - Khu Văn Hóa Giải Trí',17,10.732011000000000000000000000000,106.710028000000000000000000000000,'8cc3091b-8f22-45d0-ad22-d7720f48b27a',0,0,NULL,'2023-11-22 03:24:10.739989','2023-12-04 03:09:06.918398',0,'ec161057-a955-40ba-8934-3a6e6df9d50a'),('ba6a6fb3-e4c6-4327-ac4b-25c1ccd44ec1','Longitudinal Section',1,0.000000000000000000000000000000,0.000000000000000000000000000000,'fad48c71-6e3d-45e5-b8ba-d526ad07de81',684,845,'../../assets/images/matcatdoc.png','2023-11-22 03:24:10.691044','2023-12-04 03:14:48.706659',0,'90363e6e-983c-45aa-aedd-f0f1390c663d'),('cb384428-f44d-4da0-b9d8-1e676db2e88a','Ground Floor',1,0.000000000000000000000000000000,0.000000000000000000000000000000,'4007b6cb-9b13-4e5c-bbe8-78c82b6336ca',702,1498,'../../assets/images/tangtret.png','2023-11-22 03:24:10.748507','2023-12-04 03:15:15.121741',0,'90363e6e-983c-45aa-aedd-f0f1390c663d'),('e73da1fb-6b77-4bfe-9056-229ba421e7ae','2nd Floor',1,0.000000000000000000000000000000,0.000000000000000000000000000000,'93b7206a-b355-45cb-90c0-cce77b9cc7f4',736,1450,'../../assets/images/tang2.png','2023-11-22 03:24:10.437657','2023-12-04 03:15:43.751408',0,'90363e6e-983c-45aa-aedd-f0f1390c663d');
/*!40000 ALTER TABLE `layers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maps`
--

DROP TABLE IF EXISTS `maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maps` (
  `id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `last_updated_at` datetime(6) DEFAULT NULL,
  `active_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maps`
--

LOCK TABLES `maps` WRITE;
/*!40000 ALTER TABLE `maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pins`
--

DROP TABLE IF EXISTS `pins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pins` (
  `id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `camera_ip` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `latitude` decimal(65,30) NOT NULL,
  `longitude` decimal(65,30) NOT NULL,
  `status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `source` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `last_updated_at` datetime(6) DEFAULT NULL,
  `active_status` tinyint(1) DEFAULT NULL,
  `layer_id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pins`
--

LOCK TABLES `pins` WRITE;
/*!40000 ALTER TABLE `pins` DISABLE KEYS */;
INSERT INTO `pins` VALUES ('01e02c21-8a3a-40d6-b973-8ac499fbc73a','Camera Le Thanh Ton','AGRGV45DYY5',10.774485000000000000000000000000,106.699163000000000000000000000000,'live',NULL,'assets/videos/video4.mp4','2023-11-22 03:28:03.317755','2023-11-22 04:18:24.016717',0,'29caa110-4beb-451b-b446-25ff405f2ba7'),('02f84585-7ed1-49f5-a84b-578e8e775964','Camera Nguyen Cao','ZGRG23455DTY5',10.723416000000000000000000000000,106.712436000000000000000000000000,'live',NULL,'assets/videos/video1.mp4','2023-11-22 03:28:03.388862','2023-11-22 04:18:12.119863',0,'9b67ff73-bded-4098-bb48-56baa3c55b40'),('039d4ab0-48b4-4da8-8bc7-3b38d0afdb44','Camera Hung Thai 2 - Bui Bang Doan','ZGRG23455D5YY45',10.734655000000000000000000000000,106.708393000000000000000000000000,'live',NULL,'assets/videos/video4.mp4','2023-11-22 03:28:03.118328','2023-11-22 04:18:01.590564',0,'a6176cb3-f9d4-45bd-9bb1-6b1a6320ec7d'),('0acdbbb8-43b7-4976-82dd-7a59d267851b','Camera Tan Phu - Raymondienne','Z44GMP455D9T05',10.729169000000000000000000000000,106.727210000000000000000000000000,'live',NULL,'assets/videos/video4.mp4','2023-11-22 03:28:03.212368','2023-11-22 04:17:46.240159',0,'8d6a86fe-d73b-4ce5-9aef-6fd956be8034'),('0f9234ee-35e1-4bdc-8c86-7243572c8b79','Camera Nguyen Dong Chi - Ton Dat Tien','ZGRG23455D9T05',10.734052000000000000000000000000,106.713560000000000000000000000000,'live',NULL,'assets/videos/video4.mp4','2023-11-22 03:28:03.346339','2023-11-22 04:17:31.392847',0,'7eba0685-fddc-4abb-baee-36dcf243e9b0'),('141ec826-2cbe-450f-b8ee-22127e92e73b','Camera Ly Tu Trong','123456DSHHHDF',10.777776000000000000000000000000,106.700931000000000000000000000000,'live',NULL,'assets/videos/video3.mp4','2023-11-22 03:28:03.096234','2023-11-22 04:17:20.064104',0,'29caa110-4beb-451b-b446-25ff405f2ba7'),('161dda53-1b27-4fda-83d5-3580c245c922','Camera Alexandre de Rhodes','123456DSDGSDF',10.778968000000000000000000000000,106.696054000000000000000000000000,'live',NULL,'assets/videos/video1.mp4','2023-11-22 03:28:03.272384','2023-11-22 04:17:08.209485',0,'29caa110-4beb-451b-b446-25ff405f2ba7'),('1fe03083-04e1-4db8-ba27-db0b54c03fe0','Camera Nguyen Luong Bang - Nguyen Van Linh','ZGRG23455DTT45',10.731996000000000000000000000000,106.719729000000000000000000000000,'live',NULL,'assets/videos/video1.mp4','2023-11-22 03:28:03.065920','2023-11-22 04:16:57.604878',0,'7eba0685-fddc-4abb-baee-36dcf243e9b0'),('23af1703-0d45-44af-95e2-d3e29d2fd616','Camera Tan Phu - Hoang Van Thai','ZGRGMP455D9T05',10.732209000000000000000000000000,106.725423000000000000000000000000,'live',NULL,'assets/videos/video3.mp4','2023-11-22 03:28:03.372846','2023-11-22 04:16:48.263128',0,'8d6a86fe-d73b-4ce5-9aef-6fd956be8034'),('2a83034a-5ebe-4d49-a740-d0460bc751f6','Camera Cao Trieu Phat','ZGRG23455D5P45',10.732025000000000000000000000000,106.711162000000000000000000000000,'live',NULL,'assets/videos/video3.mp4','2023-11-22 03:28:03.179744','2023-11-22 04:16:34.989108',0,'a6176cb3-f9d4-45bd-9bb1-6b1a6320ec7d'),('31d99cdd-4897-46bd-9b00-cadb522e0091','Garage','AGRGV45TTTTTRG57',950.698813056379800000000000000000,294.291446673706450000000000000000,'live',NULL,'assets/videos/tret_nha_xe.mp4','2023-11-22 03:28:03.196366','2023-11-22 04:16:19.761165',0,'cb384428-f44d-4da0-b9d8-1e676db2e88a'),('32e36bc2-91d2-4e0c-b26e-d55b7fa63946','Camera N7','AGRG23455DRY5',10.768701000000000000000000000000,106.723899000000000000000000000000,'live',NULL,'assets/videos/video4.mp4','2023-11-22 03:28:03.188998','2023-11-22 04:16:09.257265',0,'4b56079d-1544-42a7-a8f1-253aab9f5bcf'),('4007b6cb-9b13-4e5c-bbe8-78c82b6336ca','Main Door','AGRGV45444DG46',1331.452748610253100000000000000000,183.839493136219660000000000000000,'live',NULL,'assets/videos/tret_cua.mp4','2023-11-22 03:28:03.363433','2023-11-22 04:15:57.573315',0,'cb384428-f44d-4da0-b9d8-1e676db2e88a'),('47f14a0b-0563-421b-859a-4705201d6419','Camera Ton Dat Tien','ZGRG23455DRY5',10.724064000000000000000000000000,106.716062000000000000000000000000,'live',NULL,'assets/videos/video3.mp4','2023-11-22 03:28:03.240583','2023-11-22 04:15:42.890735',0,'9b67ff73-bded-4098-bb48-56baa3c55b40'),('495b78ad-9477-4740-abe1-fa11f781efa3','Camera Hoang The Thien','AGRG23455DYY5',10.768545000000000000000000000000,106.721099000000000000000000000000,'live',NULL,'assets/videos/video3.mp4','2023-11-22 03:28:03.157563','2023-11-22 04:15:29.715345',0,'4b56079d-1544-42a7-a8f1-253aab9f5bcf'),('4ad2b271-b5e9-41ee-aa58-ff23a32fc434','Camera Camera Hoang The Thien 2','BGRG23455DRY5',10.772815000000000000000000000000,106.724513000000000000000000000000,'live',NULL,'assets/videos/video2.mp4','2023-11-22 03:28:03.328393','2023-11-22 04:15:19.595429',0,'4b56079d-1544-42a7-a8f1-253aab9f5bcf'),('4f8eaa79-48a8-4d5f-818f-9974b5f053c6','Camera N-Nam','ZGRG23455D5Y5',10.726675000000000000000000000000,106.715861000000000000000000000000,'live',NULL,'assets/videos/video4.mp4','2023-11-22 03:28:03.142667','2023-11-22 04:15:07.970374',0,'9b67ff73-bded-4098-bb48-56baa3c55b40'),('5bec688e-b14e-4e6b-878e-0f5081d2a426','Kid Room 1','AGRGV454544RT68',893.879821958456900000000000000000,225.385427666314680000000000000000,'live',NULL,'assets/videos/tang2_phong_ngu.mp4','2023-11-22 03:28:03.379821','2023-11-22 04:14:55.645803',0,'e73da1fb-6b77-4bfe-9056-229ba421e7ae'),('60c1c505-b912-4bd8-b1cb-0ddbf4ca3c55','Camera Nguyen Du','AGRGV45DG45',10.780097000000000000000000000000,106.700708000000000000000000000000,'live',NULL,'assets/videos/video2.mp4','2023-11-22 03:28:03.309892','2023-11-22 04:14:44.370322',0,'29caa110-4beb-451b-b446-25ff405f2ba7'),('6387f50d-73bf-4e0d-8737-71d2193fedd3','Bed room','AGRGV45GGDF57',999.884272997032700000000000000000,266.576557550158400000000000000000,'live',NULL,'assets/videos/tang1_phong_ngu.mp4','2023-11-22 03:28:03.291577','2023-11-22 04:14:34.962319',0,'5c9465a2-2e3c-48c0-8194-e116d067d16c'),('77be8d48-c843-4b67-a0fc-75fe4fc4b6e6','1st Floor Balcony','AGRGV45DVVF68',1234.354599406528200000000000000000,321.630411826821560000000000000000,'live',NULL,'assets/videos/tang1_ban_cong.mp4','2023-11-22 03:28:03.134054','2023-11-22 04:14:23.742465',0,'5c9465a2-2e3c-48c0-8194-e116d067d16c'),('79a9cafc-2a5d-4685-944b-c9e885076e94','Camera Ton Dat Tien - Thung Lung Xanh','ZGRG23455D3T45',10.730826000000000000000000000000,106.717733000000000000000000000000,'live',NULL,'assets/videos/video2.mp4','2023-11-22 03:28:03.127571','2023-11-22 04:14:10.243059',0,'7eba0685-fddc-4abb-baee-36dcf243e9b0'),('7affab9e-e3a2-4cbd-8397-b4faa5781cf7','Camera Ton Dat Tien - Morison','Z44GMP45577U05',10.726596000000000000000000000000,106.720201000000000000000000000000,'live',NULL,'assets/videos/video2.mp4','2023-11-22 03:28:03.172374','2023-11-22 04:13:56.765656',0,'8d6a86fe-d73b-4ce5-9aef-6fd956be8034'),('7e2fee23-9bf4-4bac-bfc5-709160897673','Camera Nguyen Van Linh - Nguyen Luong Bang','ZGRGMM455D9T05',10.730942000000000000000000000000,106.720412000000000000000000000000,'live',NULL,'assets/videos/video2.mp4','2023-11-22 03:28:03.111998','2023-11-22 04:13:42.781422',0,'8d6a86fe-d73b-4ce5-9aef-6fd956be8034'),('81a218d8-87c5-42f6-b402-9af3ca084d13','Camera Nguyen Luong Bang - Tran Van Tra','Z44GMP455DUU05',10.725570000000000000000000000000,106.723609000000000000000000000000,'live',NULL,'assets/videos/video1.mp4','2023-11-22 03:28:03.299833','2023-11-22 04:13:30.629224',0,'8d6a86fe-d73b-4ce5-9aef-6fd956be8034'),('86d9cf99-21b4-49a9-872e-eaff96dec0f1','1st Floor Balcony','AGRGVBBBSBBF68',212.197309417040370000000000000000,289.634635691657900000000000000000,'live',NULL,'assets/videos/tang1_ban_cong.mp4','2023-11-22 03:28:03.263816','2023-11-22 04:13:10.550668',0,'ba6a6fb3-e4c6-4327-ac4b-25c1ccd44ec1'),('8c00a8e4-6efe-4b87-b3b4-75e4918ad21b','Camera Truong Dinh','AGR22V45DYY5',10.775959000000000000000000000000,106.691996000000000000000000000000,'live',NULL,'assets/videos/video1.mp4','2023-11-22 03:28:03.046010','2023-11-22 04:12:59.952962',0,'29caa110-4beb-451b-b446-25ff405f2ba7'),('8cc3091b-8f22-45d0-ad22-d7720f48b27a','Camera Pham Van Nghi - Nguyen Van Linh','ZGRG23455D5P45',10.729310000000000000000000000000,106.706792000000000000000000000000,'live',NULL,'assets/videos/video4.mp4','2023-11-22 03:28:03.248194','2023-11-22 04:12:49.079674',0,'a6176cb3-f9d4-45bd-9bb1-6b1a6320ec7d'),('8fca7c54-ebb3-474b-94c9-9f1b6eb7789d','Camera Dang Dai Do - Nguyen Van Linh','ZGRG23455D5P45',10.729419000000000000000000000000,106.710409000000000000000000000000,'live',NULL,'assets/videos/video1.mp4','2023-11-22 03:28:03.074192','2023-11-22 04:12:33.883145',0,'a6176cb3-f9d4-45bd-9bb1-6b1a6320ec7d'),('93b7206a-b355-45cb-90c0-cce77b9cc7f4','2nd Floor Balcony','AGRGV45R444T57',1226.096355775170000000000000000000,330.306230200633600000000000000000,'live',NULL,'assets/videos/tang2_ban_cong.mp4','2023-11-22 03:28:03.256507','2023-11-22 04:12:21.580748',0,'e73da1fb-6b77-4bfe-9056-229ba421e7ae'),('a703033a-d190-4893-afb8-972b3b0698a9','Camera Phu Gia','ZGRG234555TY5',10.725126000000000000000000000000,106.714221000000000000000000000000,'live',NULL,'assets/videos/video2.mp4','2023-11-22 03:28:03.229535','2023-11-22 04:12:09.759410',0,'9b67ff73-bded-4098-bb48-56baa3c55b40'),('ab126108-36fe-4878-9e2e-d08eea472424','Dining Room','AGRGYYYYDG68',359.166172106824940000000000000000,369.902851108764540000000000000000,'live',NULL,'assets/videos/tret_phong_an.mp4','2023-11-22 03:28:03.080759','2023-11-22 04:11:57.365149',0,'cb384428-f44d-4da0-b9d8-1e676db2e88a'),('b5c6347a-fc46-4cda-b70e-afe1bebfb80a','Camera Hung Gia 4','ZGRG23455D5P45',10.732310000000000000000000000000,106.706205000000000000000000000000,'live',NULL,'assets/videos/video2.mp4','2023-11-22 03:28:03.356361','2023-11-22 04:11:45.913312',0,'a6176cb3-f9d4-45bd-9bb1-6b1a6320ec7d'),('c1826d0e-6ad8-42c0-b227-a306def35799','Kid Room 2','AGRGV45RTBBB46',558.968842729970300000000000000000,224.608236536430840000000000000000,'live',NULL,'assets/videos/tang2_phong_ngu_2.mp4','2023-11-22 03:28:03.222170','2023-11-22 04:11:34.104371',0,'e73da1fb-6b77-4bfe-9056-229ba421e7ae'),('c8f4b334-b27f-4249-9b2d-132721977e91','2nd Floor Balcony','AGRGV2455RT57',257.637240356083050000000000000000,179.125659978880660000000000000000,'live',NULL,'assets/videos/tang2_ban_cong.mp4','2023-11-22 03:28:03.281881','2023-11-22 04:11:23.502164',0,'ba6a6fb3-e4c6-4327-ac4b-25c1ccd44ec1'),('cb3945ba-6ba0-40d5-a9b8-4d8997c12640','Camera Ha Huy Tap','ZGRG23455D545',10.726582000000000000000000000000,106.712343000000000000000000000000,'live',NULL,'assets/videos/video3.mp4','2023-11-22 03:28:03.203617','2023-11-22 04:11:11.176457',0,'9b67ff73-bded-4098-bb48-56baa3c55b40'),('d82d8987-397b-490a-9bea-f4f623523eb0','Camera Nguyen Dong Chi - Nguyen Luong Bang','ZGRG23455D3T05',10.733915000000000000000000000000,106.718409000000000000000000000000,'live',NULL,'assets/videos/video3.mp4','2023-11-22 03:28:03.149044','2023-11-22 04:10:56.709908',0,'7eba0685-fddc-4abb-baee-36dcf243e9b0'),('ea3560e8-fb1e-410c-b72f-23c8980bec38','Camera D6','AGRG23445DYY5',10.771763000000000000000000000000,106.721244000000000000000000000000,'live',NULL,'assets/videos/video2.mp4','2023-11-22 03:28:03.396466','2023-11-22 04:10:47.735173',0,'4b56079d-1544-42a7-a8f1-253aab9f5bcf'),('eb2361c8-84e6-42b5-a1e1-4a59e2d9dd2a','Camera Thung Lung Xanh - Quan Am Bo Tat','ZGRG2M455D9T05',10.731522000000000000000000000000,106.717455000000000000000000000000,'live',NULL,'assets/videos/video1.mp4','2023-11-22 03:28:03.164113','2023-11-22 04:10:37.111797',0,'7eba0685-fddc-4abb-baee-36dcf243e9b0'),('f1bbdc53-90da-4a97-bc00-6fc2254de054','Camera So 10','BGRG23455DRY5',10.771715000000000000000000000000,106.725830000000000000000000000000,'live',NULL,'assets/videos/video1.mp4','2023-11-22 03:28:03.089003','2023-11-22 04:10:19.496272',0,'4b56079d-1544-42a7-a8f1-253aab9f5bcf'),('fad48c71-6e3d-45e5-b8ba-d526ad07de81','Main Door','AGRGV45DG4346',203.987294469357270000000000000000,394.365364308342100000000000000000,'live',NULL,'assets/videos/tret_cua.mp4','2023-11-22 03:28:03.102880','2023-11-22 04:10:09.128556',0,'ba6a6fb3-e4c6-4327-ac4b-25c1ccd44ec1'),('faf0b137-439f-4f47-af76-18039e02a661','Living Room','AGRGV45AADF46',339.561457689932070000000000000000,202.105596620908130000000000000000,'live',NULL,'assets/videos/tang1_phong_khach.mp4','2023-11-22 03:28:03.336352','2023-11-22 04:09:24.075269',0,'5c9465a2-2e3c-48c0-8194-e116d067d16c');
/*!40000 ALTER TABLE `pins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `create_at` datetime(6) NOT NULL,
  `last_updated_at` datetime(6) DEFAULT NULL,
  `active_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('66342970-10d1-4860-bed0-5b4d6c2d15cd','DemoGGMap','This role is using for demonstration.','2023-11-27 07:18:45.906495',NULL,0),('91b1a146-aed1-4f4f-bc6d-b64287a39c38','su-admin','This is super admin role.','2023-11-27 07:35:34.134744',NULL,0),('b19713f8-40d5-4c5b-8dd5-28ab6af96748','admin','This is admin role.','2023-11-27 07:35:42.912555',NULL,0),('f90b0a19-c6de-40fb-9c9d-f386a02c6a68','customer','This is customer role.','2023-11-27 07:35:54.304801',NULL,0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `dob` datetime(6) DEFAULT NULL,
  `id_number` int NOT NULL,
  `issuedate` datetime(6) DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `fullname` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone_number` int DEFAULT NULL,
  `email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `verify_email` tinyint(1) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `last_updated_at` datetime(6) DEFAULT NULL,
  `active_status` tinyint(1) DEFAULT NULL,
  `locked_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('53913264-73e6-4f45-8c06-b2c0208916bb','2023-11-30 02:40:42.374000',145,'2023-11-30 02:40:42.374000',0,'GM DEMO',123456,'mmsc_gmdemo@mmsc.com',NULL,0,'2023-11-30 09:45:05.071657',NULL,1,0),('6641cc1a-b942-4c68-aaa6-2df3b16219f7','2023-11-30 02:40:42.374000',145,'2023-11-30 02:40:42.374000',0,'IM DEMO',123456,'mmsc_imdemo@mmsc.com',NULL,0,'2023-11-30 09:47:17.428918',NULL,1,0),('db462819-8b24-4375-a7f6-207b18dc8560','2023-11-30 02:40:42.374000',145,'2023-11-30 02:40:42.374000',0,'OSM DEMO',123456,'mmsc_osmdemo@mmsc.com',NULL,0,'2023-11-30 09:48:24.031722',NULL,1,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-16 15:59:05