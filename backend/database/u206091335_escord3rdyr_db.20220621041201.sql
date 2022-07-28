-- MariaDB dump 10.19  Distrib 10.5.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u206091335_escord3rdyr_db
-- ------------------------------------------------------
-- Server version	10.5.13-MariaDB-cll-lve

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `middlename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_student_number_unique` (`student_number`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'C','porral.jacqueline.bscs2019@gmail.com','10120190344','PORRAL','JACQUELINE',NULL,'$2y$10$NrOFFBOAW0LTB.jwyQuao.o1sy.JpkKrK.7uxkGTT/JjUcrfKUQ3W','staff',NULL,'2022-06-01 06:57:03','2022-06-01 06:57:03','2AwQcBxkOnhCP3m135JsuOxlYE1qfqpl18oUjf5iVsCg3Y4XwdFg7o9akvgTfyhx'),(5,'E.','nikkibaalan09@gmail.com','10120191298','NIKS','BA-ALAN',NULL,'$2y$10$izsdi44.W0dn9B.9Kx/EEOrKPy8i9lrdpC/dkbgSclI.6W2jdF1Qq','staff',NULL,'2022-06-03 09:16:04','2022-06-03 09:16:04',NULL),(6,'R.','espinola.dem.bscs2019@gmail.com','10120191297','DEM','ESPINOLA',NULL,'$2y$10$HRMQVQzgqS9N7eUnEAzJy.PT7yni1yXKi6JAyx.uZo.Ly6hA7.wh6','staff',NULL,'2022-06-03 22:22:33','2022-06-03 22:22:33',NULL),(12,'','cabertoalexander@gmail.com','10120191112','ALEX','CABERTO',NULL,'$2y$10$8GdKKmd1FETyqfskoo.zKO2tYD26QJP.dTGGcAkTTrCXBtUEpZBIG','staff',NULL,'2022-06-04 03:45:23','2022-06-04 03:45:23',NULL),(14,'','canino.zhyrex.bscs2020@gmail.com','10120190007','ZHYREX','CANINO',NULL,'$2y$10$GMblXXZIIRBpbyD0eaav3uVy595z8.QJWCpCpqTgkJ7M9oRd3kkV6','staff',NULL,'2022-06-04 10:22:50','2022-06-04 10:22:50',NULL),(15,'','stafftrizha@gmail.com','10120190613','TRIZHA','LUCAS',NULL,'$2y$10$o52LLGR1qj6mtB1JMtwU6OhOWkK5ZcVfWe0YC.zPgqSeFwlj61aa.','staff',NULL,'2022-06-04 14:53:08','2022-06-04 14:53:08',NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

--
-- Table structure for table `concern`
--

DROP TABLE IF EXISTS `concern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concern` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concern`
--

/*!40000 ALTER TABLE `concern` DISABLE KEYS */;
INSERT INTO `concern` VALUES (1,'2022-06-01 09:49:01','2022-06-01 09:49:01','jacquelineporral28@gmail.com','jacqueline combis porral','Hi there are problems in my srms.');
/*!40000 ALTER TABLE `concern` ENABLE KEYS */;

--
-- Table structure for table `eval_details`
--

DROP TABLE IF EXISTS `eval_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eval_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `evalform_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectdesc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `units` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finalgrade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eval_details`
--

/*!40000 ALTER TABLE `eval_details` DISABLE KEYS */;
INSERT INTO `eval_details` VALUES (1,NULL,NULL,'20190344','GEC 006','MATHEMATICS IN MODERN WORLD','1.25','3','1.25'),(2,NULL,NULL,'20190344','CCS 101','SOFTWARE ENGINEERING','1.25','3','3'),(3,NULL,NULL,'20190344','GEC 003','PHILIPPINE HISTORY','1.25','5','5'),(6,NULL,NULL,'20191111','GEF 004','ENGLISH','3','3','3'),(7,NULL,NULL,'20190344','GEF 005','FILIPINO SA IBA\'T IBANG DISIPLINA','1.25','2','2'),(24,NULL,NULL,'20191299','GEC 001','MATHEMATICS IN THE MODERN WORLD','2.00','3','3'),(25,NULL,NULL,'20191112','NDNDJJS123','HDHDHD','5.0000','2','2'),(26,NULL,NULL,'20191112','GEC 003','ORAL COMMUNICATION','5.00','3','3'),(29,NULL,NULL,'20191299','GEF 005','FILIPINO SA IBA\'T IBANG DISIPLINA','2.25','2','2'),(31,NULL,NULL,'20190613','GEC 003','ORAL COMMUNICATION','1.2','3','3');
/*!40000 ALTER TABLE `eval_details` ENABLE KEYS */;

--
-- Table structure for table `evaluation_forms`
--

DROP TABLE IF EXISTS `evaluation_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation_forms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gradesheetid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_of_ef` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archieve` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `evalform_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `srms_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `evaluation_forms_srms_id_index` (`srms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_forms`
--

/*!40000 ALTER TABLE `evaluation_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluation_forms` ENABLE KEYS */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

--
-- Table structure for table `gradeofstudents`
--

DROP TABLE IF EXISTS `gradeofstudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradeofstudents` (
  `gradesheetid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `studentname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `midterm` double NOT NULL,
  `finalterm` double NOT NULL,
  `finalgrade` double NOT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradeofstudents`
--

/*!40000 ALTER TABLE `gradeofstudents` DISABLE KEYS */;
INSERT INTO `gradeofstudents` VALUES ('F1DFF798-6051-44D6-A789-50E0CEEB04F6','20190344','PORRAL JACQUELINE C',1.25,1.25,1.25,4),('6E9DB191-9C25-4531-BFA9-62DB0EE4D94D','20190344','PORRAL JACQUELINE C',1.25,1.25,1.25,5),('328C00B5-30BC-4D09-B635-E45FBE056E0E','20190344','PORRAL JACQULINE C',1.25,1.25,1.25,6),('CAAB71E6-7A8C-42DC-8EC7-0C99E4710D67','20190344','PORRAL JACQULINE C',1.25,1.25,1.25,7),('46B8F21B-AADF-4F00-A007-D10D28E949CA','20190344','PORRAL JACQULINE C',1.25,1.25,1.25,8),('0AEEE9F9-5D83-4BC9-94AF-F01F184B3824','20190344','PORRAL JACQUELINE C',1.25,1.25,1.25,9),('66B4780D-67ED-4553-8584-38FE13456249','20190344','PORRAL JACQUELINE C',1.25,1.25,1.25,10),('10EE535E-D361-4AA6-909D-CE6DF7053E59','20190344','PORRAL JACQUELINE C',1.25,1,1,11),('69959399-DE8E-458E-B158-92808FBDEA45','20190344','PORRAL JACQUELINE C',1.25,1,1,12),('975AA0E6-0E62-4F86-AD93-48E83CA5F6DA','20190344','PORRAL JACQUELINE C',1,1,1,13),('DA75BFBE-BBA3-4BE9-A031-5DAA6A3B7F12','20190344','PORRAL JACQUELINE C',1,1.25,1.25,14),('7E4382AD-4D45-4B72-9CB9-9A639C446B38','20190344','PORRAL JACQUELINE C',1.25,1,1,15),('B7C9343A-420B-4491-BB19-B8D8C342A20F','20190344','PORRAL JACQUELINE C',1.25,1,1.25,16),('5F16AAB5-2BC2-41E9-844F-D58A50F0852C','20190344','PORRAL JACQUELINE C',1,1,1,17),('335E9633-69A5-4CC4-A5BD-C468E8DB93C8','20190344','PORRAL JACQUELINE C',1.25,1.25,1.25,18),('6A537F5F-BC54-45E4-87A6-DBB631819BEF','20191111','ZARZOSO EDELINE J',1,1.21,1,20),('C73E8E03-DC41-4439-9C5B-4C6D8C6C21F0','20191297','ESPINOLA DEMVERLEEN R',1.25,1.25,0,27),('C73E8E03-DC41-4439-9C5B-4C6D8C6C21F0','20191299','BA-ALAN NIKKI E.',1.5,1.75,1.63,28),('F2D9DA05-8888-43DE-9DF6-73C7EA912E1F','215848464','YSHSVSVS HEUEJWVVW ',10,518101,0,30),('F2D9DA05-8888-43DE-9DF6-73C7EA912E1F','676673767','GG HHH ',979797,76767,0,31),('04659EA9-7119-4506-8169-2D37F2BF6A17','12345678','CABULLO DANICA O',1.25,2,0,33),('D66C0357-5E70-4D40-A31C-EBE37225370F','20190007','CANINO ZHYREX',1.25,1.25,1.25,35),('31941565-613C-432D-B13E-B84561B3C0B4','20190613','LUCAS TRIZHA',1.25,1.5,1.38,37);
/*!40000 ALTER TABLE `gradeofstudents` ENABLE KEYS */;

--
-- Table structure for table `gradsheetinfo`
--

DROP TABLE IF EXISTS `gradsheetinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gradsheetinfo` (
  `gradesheetid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectdesc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` int(11) NOT NULL,
  `sem_startyear` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sem_endyear` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `units` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_short` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archieve` tinyint(1) DEFAULT NULL,
  `professorID` int(11) NOT NULL,
  PRIMARY KEY (`gradesheetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradsheetinfo`
--

/*!40000 ALTER TABLE `gradsheetinfo` DISABLE KEYS */;
INSERT INTO `gradsheetinfo` VALUES ('04659EA9-7119-4506-8169-2D37F2BF6A17','CSE 102','GRAPHICS AND VISUAL COMPUTING',2,'2022','2023','3','7:00 AM','THURSDAY','BS COMPUTER SCIENCE','3','A',1,5),('058E0C56-F2C8-4D20-A387-96EE701FD5F2','NSTP 101','NSTP CWTS 1',1,'2019','2020','3','5PM-8PM','WED','BS COMPUTER SCIENCE','1','A',NULL,11),('0AEEE9F9-5D83-4BC9-94AF-F01F184B3824','LIT 001','PHILIPPINE LITERATURE IN ENGLISH',2,'2019','2020','3','10:00','MONDAY','BS COMPUTER SCIENCE','1','A',NULL,1),('10EE535E-D361-4AA6-909D-CE6DF7053E59','CS 101','PROGRAMMING LANGUAGES',1,'2020','2021','5','1:00','FRIDAY','BS COMPUTER SCIENCE','2','A',NULL,1),('1C165E44-A13B-4AC7-B855-A205DAC9C781','CSE 102','GRAPHICS AND VISUAL COMPUTING',1,'2022','2023','3','9:00','TUESDAY','BS COMPUTER SCIENCE','3','A',NULL,1),('2996D445-2663-43AD-805E-4A6F5CE77BBB','CCS 103','COMPUTER PROGRAMMING II',2,'2019','2020','5','10:00','MONDAY','BS COMPUTER SCIENCE','3','A',NULL,1),('30262F75-6DFF-4BDC-A0C7-E3F9DF2C4E36','CS 108','SOFTWARE ENGINEERING 1',1,'2022','2023','3','8:00 AM','MONDAY','BS COMPUTER SCIENCE','3','A',NULL,3),('31941565-613C-432D-B13E-B84561B3C0B4','CS 110','ENGLISH',1,'2022','2023','3','10AM-1PM','SUNDAY','BS COMPUTER SCIENCE','3','A',1,11),('328C00B5-30BC-4D09-B635-E45FBE056E0E','CCS 109','BUSINESS APPLICATION SOFTWARE',1,'2019','2020','3','10:00','MONDAY','BS COMPUTER SCIENCE','1','A',NULL,1),('335E9633-69A5-4CC4-A5BD-C468E8DB93C8','CS 108','SOFTWARE ENGINEERING I',1,'2021','2022','3','10:00','MONDAY','BS COMPUTER SCIENCE','3','A',NULL,1),('38CACED1-DE14-43CA-9442-5E0D6BEEC2F7','CCS101','INTROUCTION TO COMPUTING',1,'2019','2020','3','1PM-4PM','TUE','BS COMPUTER SCIENCE','1','A',NULL,11),('46B8F21B-AADF-4F00-A007-D10D28E949CA','CCS 107','WEB SYSTEM AND TECHNOLOGIES',2,'2019','2020','3','10:00','TUESDAY','BS COMPUTER SCIENCE','1','A',NULL,1),('4C449109-2BBB-453E-B086-2CA6B6E3F2F1','CCS 116','ADVANCED WEB SYSTEMS',1,'2022','2023','5','11:00 AM','TUESDAY','BS INFORMATION TECHNOLOGY','4','A',1,5),('4C4F4F1C-0BAF-4FB8-B3C6-8A02411C0169','CSE 102','GRAPHICS AND VISUAL COMPUTING',1,'2022','2023','3','10AM-1PM','SUNDAY','BS COMPUTER SCIENCE','3','A',NULL,6),('5F16AAB5-2BC2-41E9-844F-D58A50F0852C','CCS 116','ADVANCED WEB SYSTEMS',1,'2021','2022','5','10:00','MONDAY','BS COMPUTER SCIENCE','3','A',NULL,1),('66B4780D-67ED-4553-8584-38FE13456249','PR 001','COLLEGE ALGEBRA',2,'2019','2020','3','10:00','MONDAY','BS COMPUTER SCIENCE','1','A',NULL,1),('69959399-DE8E-458E-B158-92808FBDEA45','GEC 006','INFORMATION MANAGEMENT',1,'2020','2021','5','10','MONDAY','BS COMPUTER SCIENCE','2','A',NULL,1),('6A537F5F-BC54-45E4-87A6-DBB631819BEF','CS 115','NETWORKS AND COMMUNICATIONS',2,'2022','2023','5','10AM-1PM','SUNDAY','BS INFORMATION TECHNOLOGY','1','A',NULL,2),('6E9DB191-9C25-4531-BFA9-62DB0EE4D94D','CS 102','COMPUTER PROGRAMMING I',1,'2019','2020','5','10:00','TUESDAY','BS COMPUTER SCIENCE','1','A',NULL,1),('7E4382AD-4D45-4B72-9CB9-9A639C446B38','CS 112','OPERATING SYSTEMS',2,'2021','2022','3','5:00','MONDAY','BS COMPUTER SCIENCE','3','A',NULL,1),('83D7BE20-DA41-4EA0-AD21-0C0BEE4CFAE3','GEC 001','UNDERSTANDING THE SELF',1,'2019','2020','3','10-1','TH','BS COMPUTER SCIENCE','1','A',NULL,11),('8613B421-FBF6-400F-818B-5CEF7E256F12','CS 108','SOFTWARE ENGINEERING 1',1,'2022','2023','3','10AM-1PM','SUNDAY','BS COMPUTER SCIENCE','3','A',NULL,2),('971941DF-FF6D-4BE0-8773-7ABA18ADD16A','GEF 001','KOMUNIKASYON SA AKADEMIKONG FILIPINO',1,'2019','2020','3','8AM-11AM','SAT','BS COMPUTER SCIENCE','1','A',NULL,11),('975AA0E6-0E62-4F86-AD93-48E83CA5F6DA','CSE 101','SYSTEM FUNDAMENTALS',2,'2020','2021','3','1:00','THURSDAY','BS COMPUTER SCIENCE','2','A',NULL,1),('B5FFE4A7-A93B-4DBB-B6CF-C61279CA12E3','PE 001','PHYSICAL FITNESS AND WELLNESS',1,'2019','2020','2','8-10','SAT','BS COMPUTER SCIENCE','1','A',NULL,11),('B7C9343A-420B-4491-BB19-B8D8C342A20F','CS 109','SOFTWARE ENGINEERING II',2,'2021','2022','3','10:00','TUESDAY','BS COMPUTER SCIENCE','3','A',NULL,1),('C73E8E03-DC41-4439-9C5B-4C6D8C6C21F0','CS 110','NETWORKS AND COMMUNICATIONS',1,'2022','2023','3','10 AM','MONDAY','BS COMPUTER SCIENCE','3','A',1,5),('CAAB71E6-7A8C-42DC-8EC7-0C99E4710D67','GEC 004','MATHEMATICS IN MODERN WORLD',1,'2019','2020','3','10:00','FRIDAY','BS COMPUTER SCIENCE','1','A',NULL,1),('CB999DAD-2121-41EF-8EAF-410DF0338F3F','CCS 102','COMPUTER PROGRAMMING 1',1,'2019','2020','5','8','SAT','BS COMPUTER SCIENCE','1','A',NULL,11),('CC9CA3C7-EA61-47E8-BB8F-8EC6211545F2','GEC 004','MATHEMATICS IN THE MODERN WORLD',1,'2019','2020','3','7AM - 10AM','MON','BS COMPUTER SCIENCE','1','A',NULL,11),('D66C0357-5E70-4D40-A31C-EBE37225370F','CS 108','SOFTWARE ENGINEERING 1',1,'2022','2023','3','10AM - 1PM','SUNDAY','BS INFORMATION TECHNOLOGY','1','A',NULL,6),('D6ED4401-01FC-40CC-A902-191B3576AAAA','CCS 109','BUSINESS APPLICATION SOFTWARE',1,'2019','2020','3','9','SAT','BS COMPUTER SCIENCE','1','A',NULL,11),('DA75BFBE-BBA3-4BE9-A031-5DAA6A3B7F12','GEC 003','CONTEMPORARY WORLD',2,'2020','2021','3','10:00','TUESDAY','BS COMPUTER SCIENCE','2','A',NULL,1),('DAC84535-BDE7-42AD-AC8F-E4215A0884F4','CCS 116','ADVANCED WEB SYSTEMS',2,'2022','2023','5','10:00 AM','THURSDAY','BS COMPUTER SCIENCE','3','A',1,3),('EE7291F2-DABE-42E6-A83F-76A2B011400D','CS 110','NETWORKS AND COMMUNICATIONS',1,'2022','2023','3','9','MONDAY','BS COMPUTER SCIENCE','2','A',NULL,1),('F1DFF798-6051-44D6-A789-50E0CEEB04F6','GEC 001','UNDERSTANDING THE SELF',1,'2019','2020','3','1:00','MONDAY','BS COMPUTER SCIENCE','1','A',NULL,1),('F2D9DA05-8888-43DE-9DF6-73C7EA912E1F','CCS 116','ADVANCED WEB SYSTEMS',2,'2022','2023','1','7AM-10AM','SUNDAY','BS COMPUTER SCIENCE','4','c',1,6),('F640C00E-9C14-42BF-A3CE-572CC633484B','GEC 005','PURPOSIVE COMMUNICATION',1,'2019','2020','3','10-1','TH','BS COMPUTER SCIENCE','1','A',NULL,11);
/*!40000 ALTER TABLE `gradsheetinfo` ENABLE KEYS */;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `middleinitial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `managers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (1,'ADMIN','ucc.escord@gmail.com','superadmin',NULL,'$2y$10$AODewAjN23Lhqxtr42EjH.94RRyz4zAkQ5Nah2gwg7hWugkWMgjly',NULL,NULL,NULL,'','MANAGER');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_03_26_073143_create_admins_table',1),(6,'2022_04_02_062127_rename_authority_in_admin_column',1),(7,'2022_04_07_053233_create_scholinfos_table',1),(8,'2022_04_07_054621_create_scholstudents_table',1),(9,'2022_04_07_054648_create_scholstudentgrades_table',1),(10,'2022_04_07_064622_create_gradsheetinfo_table',1),(11,'2022_04_07_065832_create_managers_table',1),(12,'2022_04_09_100732_rename_table_gradestudent',1),(13,'2022_04_12_060620_create_gradestudent_data',1),(14,'2022_04_12_063343_remove_column_course_and_year',1),(15,'2022_04_16_093441_add_archieve_column_in_gradsheetinfo',1),(16,'2022_04_21_091331_add_column_in_scholinfos',1),(17,'2022_05_03_164102_create_evaluation_forms_table',1),(18,'2022_05_03_164520_create_professor_accounts_table',1),(19,'2022_05_03_164942_add_erf_column_in_evaluation_forms_table',1),(20,'2022_05_06_012233_add_new_column_srmsid_in_evaluation_forms',1),(21,'2022_05_11_052017_add_professor_id_in_professor_accounts_table',1),(22,'2022_05_12_140625_add_professorid_in_gradsheetinfo',1),(23,'2022_05_15_034349_alter_columns_in_professor_accounts',1),(24,'2022_05_16_015455_delete_column_in_gradsheetinfo',1),(25,'2022_05_19_135931_add_id_column_in_gradeofstudents',1),(26,'2022_05_24_110636_add_student_year_sem_in_scholstudents',1),(27,'2022_05_25_115434_add_middlename_in_admins',1),(28,'2022_05_26_073526_rename_type_values_in_scholinfos',1),(29,'2022_05_26_180806_add_column_code_in_admins',1),(30,'2022_05_26_180935_add_column_code_in_users',1),(31,'2022_05_26_181021_add_column_code_in_professor_accounts',1),(32,'2022_05_27_003933_create_eval_details_table',1),(33,'2022_05_29_033700_created_table_concern',1),(34,'2022_05_30_033024_rename_and_add_new_column_in_managers',1),(35,'2022_05_30_172902_add_columns_data_in_scholinfos',1),(36,'2022_05_31_092139_add_birthplace_column_in_scholinfos',1),(37,'2022_06_01_053216_adding_professorid_in_gradsheetinfo',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (3,'App\\ProfessorAccount',1,'browser','2d56b02ab8d6add562f8882dfd2bff60577e95c8a99dd4ae4dbe649e9d2eac8a','[\"*\"]','2022-06-01 08:56:46','2022-06-01 08:56:45','2022-06-01 08:56:46'),(10,'App\\Admin',2,'browser','1f5e07a9c416bfa6e7834391d62e931cc2f16d1ba633d4ed1be2315694747dbd','[\"*\"]','2022-06-01 16:27:44','2022-06-01 09:14:06','2022-06-01 16:27:44'),(80,'App\\User',5,'browser','c649bbafbe8effdb025f3f78759f2c9078d44ff88c5aae61a4482bc5e0345ec9','[\"*\"]','2022-06-01 21:41:39','2022-06-01 21:41:39','2022-06-01 21:41:39'),(94,'App\\User',6,'browser','e3b76194284f0079172c33737648dc03cf4d18417c0d2e3e81ec70e0740d9d05','[\"*\"]','2022-06-02 04:33:17','2022-06-02 04:33:16','2022-06-02 04:33:17'),(95,'App\\User',6,'browser','59b774fa141c6b1a1c629a86e786dd365ea3cb564ef59c1651440192eec976f6','[\"*\"]','2022-06-02 04:33:17','2022-06-02 04:33:16','2022-06-02 04:33:17'),(96,'App\\User',6,'browser','b11457d6499639d927bbf25add6364a7c1776a936f3606b610f5ae397987b5b8','[\"*\"]','2022-06-02 04:33:17','2022-06-02 04:33:16','2022-06-02 04:33:17'),(97,'App\\User',6,'browser','0d9db8ff1357263bc1894f28c04ec6d062725c809d7a448a62cb2c3e7b1b5bfb','[\"*\"]','2022-06-02 04:33:18','2022-06-02 04:33:17','2022-06-02 04:33:18'),(98,'App\\User',6,'browser','e8dea4794a139f656db184fc5cc2e5e1e9b6bab40467c7b8e82afc0bbc7ca026','[\"*\"]','2022-06-02 04:33:19','2022-06-02 04:33:17','2022-06-02 04:33:19'),(107,'App\\ProfessorAccount',2,'browser','65c48a06e0447c7f6463666681569888c6b3fd7444def3532e29df796117d175','[\"*\"]','2022-06-02 09:50:58','2022-06-02 09:50:55','2022-06-02 09:50:58'),(119,'App\\User',6,'browser','cf72bd19e28d28c19f06a279a6cd8331954387f1766939d993cc5021bdb1167d','[\"*\"]','2022-06-03 08:40:03','2022-06-03 08:40:03','2022-06-03 08:40:03'),(123,'App\\Manager',1,'browser','333ebcf15e3ceff6d7e141d6637ed7d830dd6f7747973ef673c8d1f8785c4508','[\"*\"]','2022-06-03 09:06:27','2022-06-03 09:06:26','2022-06-03 09:06:27'),(132,'App\\Manager',1,'browser','c268354242ddc34806e779272dd20e6e2cda015f7baf7106f91cada20239b2b1','[\"*\"]','2022-06-03 10:20:56','2022-06-03 10:17:55','2022-06-03 10:20:56'),(143,'App\\ProfessorAccount',5,'browser','6cb44db248c10f6fcb01414f3390457377ce08221ce65bb8ae8f7d77ccf69ad0','[\"*\"]','2022-06-03 11:57:44','2022-06-03 11:57:37','2022-06-03 11:57:44'),(183,'App\\Manager',1,'browser','8593b3ba047abe9fa49dfb43051349d2e80a3b75407c5b92b22544c64b70b0e1','[\"*\"]','2022-06-04 03:17:52','2022-06-04 03:17:52','2022-06-04 03:17:52'),(184,'App\\Manager',1,'browser','d7efc447aec8080621cb1495a723f5d1530179b3738e270a87db5d7d45e92d8e','[\"*\"]','2022-06-04 03:17:53','2022-06-04 03:17:53','2022-06-04 03:17:53'),(185,'App\\Manager',1,'browser','dc6edc054b8283649af79e057e4a1ee345ce0b7d6da462e4b87b7ae914b2c449','[\"*\"]','2022-06-04 03:17:57','2022-06-04 03:17:56','2022-06-04 03:17:57'),(186,'App\\Manager',1,'browser','a026d9106e5022d88cb07e5c696cde5d52ae43d54e6c38f41ef8f1adbdc20b2f','[\"*\"]','2022-06-04 03:17:58','2022-06-04 03:17:57','2022-06-04 03:17:58'),(187,'App\\Manager',1,'browser','dadf32a9d7c8163fd522a43e220966271f2a1de233481a43a53147c7d306b443','[\"*\"]','2022-06-04 03:17:58','2022-06-04 03:17:58','2022-06-04 03:17:58'),(188,'App\\Manager',1,'browser','869afa86d214fdf8e68534a086ac6763f6bdb29f373ce8aa3dde44ed04fd9a0a','[\"*\"]','2022-06-04 03:17:58','2022-06-04 03:17:58','2022-06-04 03:17:58'),(189,'App\\Manager',1,'browser','38b57980ae319acf4765edc9bcb372c2876e228d540aa0f1ea0292bc99de84a1','[\"*\"]','2022-06-04 03:19:47','2022-06-04 03:19:47','2022-06-04 03:19:47'),(214,'App\\Admin',1,'browser','27e901a0b5c693bc8bbc75bcfdc18086c245525c7801af37d762c42832e8738e','[\"*\"]','2022-06-04 04:45:18','2022-06-04 04:45:15','2022-06-04 04:45:18'),(217,'App\\Admin',5,'browser','f722a9e3580924086bee1086df15087f9a1ede390727d304a87305b2f42ae143','[\"*\"]','2022-06-04 05:02:06','2022-06-04 05:02:06','2022-06-04 05:02:06'),(218,'App\\Admin',5,'browser','c52cabfe46076ae8f51e8a5d1822df31c7785724103e53b95f1adda0b90bd811','[\"*\"]','2022-06-04 05:02:09','2022-06-04 05:02:09','2022-06-04 05:02:09'),(219,'App\\Admin',5,'browser','9fd7d84d8bf5592d0f26bccb3f8e569a152f118d362c6cb29c659177757c8b08','[\"*\"]','2022-06-04 05:02:13','2022-06-04 05:02:13','2022-06-04 05:02:13'),(220,'App\\Admin',5,'browser','91ffb661a912251dc199e01a9eb17870349d569a0723443c9f49c936af8c7bc8','[\"*\"]','2022-06-04 05:02:13','2022-06-04 05:02:13','2022-06-04 05:02:13'),(221,'App\\Admin',5,'browser','38bd3860946a4e5b4cbe173b05c4672722d9874b1782c4e62015827051a779d7','[\"*\"]','2022-06-04 05:02:17','2022-06-04 05:02:17','2022-06-04 05:02:17'),(222,'App\\Admin',5,'browser','956ecf572c6fab6e7e7f16a339c4170cdfbefca86c22028daf1e3f2c4e51374e','[\"*\"]','2022-06-04 05:02:17','2022-06-04 05:02:17','2022-06-04 05:02:17'),(223,'App\\Admin',5,'browser','7cc74040d08d170f0afecd4652a1c5c3cd7997cd0fb44fc17f4ac00ecd57af44','[\"*\"]','2022-06-04 05:02:17','2022-06-04 05:02:17','2022-06-04 05:02:17'),(224,'App\\Admin',5,'browser','00a4d70c35e9a2793cd2d9995d11dfda0efb6fdcdc146ea5eacb60366b355927','[\"*\"]','2022-06-04 05:02:19','2022-06-04 05:02:18','2022-06-04 05:02:19'),(225,'App\\Admin',5,'browser','3e73d2430fa8c50eed4adc4a464ed5c398240e7a1c6e6b0b821ffb141c3b49a1','[\"*\"]','2022-06-04 05:02:19','2022-06-04 05:02:19','2022-06-04 05:02:19'),(226,'App\\Admin',5,'browser','d4a9bc40256cc2a8e3de70bc81921e22cfe8374a39e23192e5a5227e26506300','[\"*\"]','2022-06-04 05:02:19','2022-06-04 05:02:19','2022-06-04 05:02:19'),(229,'App\\Admin',5,'browser','3930afea825b4b365c00b38788fe8f6857978f92e9068d4ca72cef2ea38a61db','[\"*\"]','2022-06-04 05:04:20','2022-06-04 05:04:18','2022-06-04 05:04:20'),(236,'App\\User',13,'browser','fa4eb5a8dc077d1f10d6b485a1a4f44077dac4a961b26cf52e63e404f9757f9d','[\"*\"]','2022-06-04 10:35:35','2022-06-04 10:35:35','2022-06-04 10:35:35'),(237,'App\\User',13,'browser','c4ac6830395ab3972195d059aed3a7f3d874d9a747fcf0d014f34233272bf677','[\"*\"]','2022-06-04 10:35:39','2022-06-04 10:35:38','2022-06-04 10:35:39'),(238,'App\\User',13,'browser','75760587de55704d6ef59d05aeb7278dee8ba4a39dfc89efbc59a053a04ee853','[\"*\"]','2022-06-04 10:35:39','2022-06-04 10:35:39','2022-06-04 10:35:39'),(239,'App\\User',13,'browser','e4032576ef7e9fc8f7edc91300c5803c8950407e97ec7c93692da3eec7150562','[\"*\"]','2022-06-04 10:35:43','2022-06-04 10:35:43','2022-06-04 10:35:43'),(247,'App\\ProfessorAccount',6,'browser','4e0a097d0288eb03a9e45b5fa2a6a4dc518de09eb93a234d1f82bdb5b85a4e56','[\"*\"]','2022-06-04 11:33:01','2022-06-04 11:14:46','2022-06-04 11:33:01'),(260,'App\\Admin',5,'browser','c89821ef9939e0d73d2b7546919309902dddc9c046d5334c18fec138ff543641','[\"*\"]','2022-06-04 13:05:35','2022-06-04 13:05:12','2022-06-04 13:05:35'),(261,'App\\Manager',1,'browser','094fd2d71a0bb5d4f7975de5b66595444a0edb78db9fddb4cd200388a0f63c1e','[\"*\"]','2022-06-04 14:46:29','2022-06-04 14:46:29','2022-06-04 14:46:29'),(263,'App\\Manager',1,'browser','6ebb69e8f057552ce132044482d0f2c555fe000e452dd55c87a3ac436f434d46','[\"*\"]','2022-06-04 14:57:52','2022-06-04 14:57:52','2022-06-04 14:57:52'),(269,'App\\User',14,'browser','77cc17038f7242ac4d566ca9a4ec9138e62c34038041bba7908feb3674bacd1f','[\"*\"]',NULL,'2022-06-04 15:13:27','2022-06-04 15:13:27'),(273,'App\\Manager',1,'browser','ff23831c66ba41b29b07185ee48299dc4afa4e6c89d6527296931caf2fb26c06','[\"*\"]','2022-06-04 15:21:57','2022-06-04 15:21:55','2022-06-04 15:21:57'),(277,'App\\User',13,'browser','289365992d771c98db06c5a6c736d5e5b510600f3b374ee8655dee5bc5a845b7','[\"*\"]','2022-06-09 12:31:11','2022-06-09 12:31:09','2022-06-09 12:31:11'),(283,'App\\Manager',1,'browser','794ae104be7ee7fff854fb0c39a8abb135e35fd799fb869ce846c9de10a7532e','[\"*\"]','2022-06-14 07:24:28','2022-06-14 07:23:51','2022-06-14 07:24:28'),(284,'App\\ProfessorAccount',11,'browser','c29e7553b14b9908e819af5e78a4aeaa9bdb41219b83072e8679eac6a590d3d0','[\"*\"]','2022-06-19 09:46:13','2022-06-19 09:44:09','2022-06-19 09:46:13'),(285,'App\\User',14,'browser','a8e28008d624648fe17aa968dcb85fce71e854703c118632299d6ac07777d6a8','[\"*\"]','2022-06-20 17:51:28','2022-06-20 17:51:00','2022-06-20 17:51:28');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

--
-- Table structure for table `professor_accounts`
--

DROP TABLE IF EXISTS `professor_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `professorID` int(11) DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleinitial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_rank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `professor_accounts_email_unique` (`email`),
  UNIQUE KEY `professor_accounts_professorid_unique` (`professorID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_accounts`
--

/*!40000 ALTER TABLE `professor_accounts` DISABLE KEYS */;
INSERT INTO `professor_accounts` VALUES (1,'jacquelineporral28@gmail.com','professor',NULL,'$2y$10$M85rSmaWNmz5vhrO29IiH.IDW7umUepKqC9wThFgCqABFni1GDlda',NULL,'2022-06-01 06:59:20','2022-06-01 06:59:20',NULL,'PORRAL','C','JACQUELINE','INSTRUCTOR III',NULL),(4,'baalannikki1@gmail.com','professor',NULL,'$2y$10$p4wffiu4Bhm2fkD9tCGgL.IycUuhI.L6ZU44JgE.fMp0mK1pTihZa',NULL,'2022-06-03 09:10:12','2022-06-03 09:10:12',NULL,'NIKS','E.','BA-ALAN','INSTRUCTOR I',NULL),(5,'ridgehacksaw0@gmail.com','professor',NULL,'$2y$10$jeEGgIrpGij0bMvh9O4cdOviRHZsYw4im.FtgWQTXC72wUFdgp73y',NULL,'2022-06-03 09:21:26','2022-06-03 09:21:26',NULL,'NIKA','E.','BA-ALAN','INSTRUCTOR III',NULL),(6,'maglangitrizha@gmail.com','professor',NULL,'$2y$10$NzulnMGSs5TuysDLDdS4QObAM2uZ1FLBIBH4MidKDH/VBeKiSpchO',NULL,'2022-06-03 12:10:43','2022-06-03 12:10:43',NULL,'TRIZHA','L','MAGLANGIT','INSTRUCTOR','HrIxhqhalPO5diehtmm9GdJkfRoAndAtLIbQ6urTZwUGePcP4VHYQMjJtxhtRqWc'),(7,'espinola.leen.bscs2019@gmail.com','professor',NULL,'$2y$10$hTVHv15JbG79YkFt3.IHUueswq7adNZxaVooHLm9P616hkPjUakDe',NULL,'2022-06-03 22:23:43','2022-06-03 22:23:43',NULL,'DEMVERLEEN','R.','ESPINOLA','INSTRUCTOR II',NULL),(11,'proftrizha@gmail.com','professor',NULL,'$2y$10$dppVlmSeSZa47kltKryvIua9m/yZWgNrTjRMrz440.BduBHG79p0G',NULL,'2022-06-04 14:54:18','2022-06-04 14:54:18',NULL,'BSCS 2019','','GRADESHEETS','INSTRUCTOR',NULL);
/*!40000 ALTER TABLE `professor_accounts` ENABLE KEYS */;

--
-- Table structure for table `scholinfos`
--

DROP TABLE IF EXISTS `scholinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scholinfos` (
  `srms_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middlename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elementary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elemyeargrad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highschool` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsyeargrad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archieve` tinyint(1) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `sem_startyear` int(11) DEFAULT NULL,
  `sem_endyeaer` int(11) DEFAULT NULL,
  `total_gwa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthplace` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`srms_id`),
  UNIQUE KEY `scholinfos_student_number_unique` (`student_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholinfos`
--

/*!40000 ALTER TABLE `scholinfos` DISABLE KEYS */;
INSERT INTO `scholinfos` VALUES ('0a569f52a41b4af388ce95f6d91b070a','20190613','TRIZHA','','LUCAS','CALOOCAN CITY','JANUARY 1, 2001','099999990987','BS COMPUTER SCIENCE','3A','CADES','2013','CAM HIGH','2019',NULL,1,2021,2022,NULL,'QUEZON CITY'),('383f92628755434081f819c6d703fa8c','20191112','ALEX','','CABERTO','CALOOCAN','NOVEMBER 11, 1999','09123456789','BS COMPUTER SCIENCE','3A','PATULO','2013','PATULO','2016',NULL,NULL,NULL,NULL,NULL,'BULACAN'),('45d542c3448f473eb6038e800fe257e2','20191299','NIKKI','E.','BA-ALAN','CALOOCAN','SEPMTEMBER 09,  2000','09707087912','BS COMPUTER SCIENCE','3A','SAMPAGUITA','2013','SAMPAGUITA','2016',NULL,1,2019,2019,NULL,'CALOOCAN'),('4a5a952d1e3f4ef496787231bef3aa95','20190007','ZHYREX','','CANINO',NULL,NULL,NULL,'BS COMPUTER SCIENCE','1A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5619309c6e46452e8fa1807587618317','20191297','DEM','R.','ESPINOLA',NULL,NULL,NULL,'BS COMPUTER SCIENCE','3A',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('bc85854cdeee4696952663d1b73e5a0b','20191172','TRIZHALYN','','MAGLANGIT','CAMARIN CALOOCAN CITY','MARCH 04 2001','9999999','BS COMPUTER SCIENCE','3A','CAMARIN ELEMENTARY SCHOOL','2013','CAMARIN HIGH SCHOOL','2019',1,NULL,NULL,NULL,NULL,'QUEZON CITY'),('c18c09c255ad41849594941b526b3d37','20190344','JACQUELINE','C','PORRAL','BLK 1 LOT 11 CAMARIN CALOOCAN CITY','MARCH 04 2001','999999','BS COMPUTER SCIENCE','3A','CIELITO ZAMORA MEMORIAL SCHOOL','2016','CIELITO ZAMORA HIGH SCHOOL','2019',NULL,1,2021,2022,NULL,'QUEZON CITY'),('da32d01803de4c5d8274b56766bb2600','20190001','TRIZHA','L','MAGLANGIT',NULL,NULL,NULL,'BS INFORMATION SYSTEMS','1A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('ea883ae867d6465babcfb17a778be1b0','20191111','EDELINE','K','ZARZOSO','D','FEBRUARY 22, 2000','9029','BS INFORMATION TECHNOLOGY','1A','D','9','D','8',NULL,2,2018,2019,NULL,'SCC');
/*!40000 ALTER TABLE `scholinfos` ENABLE KEYS */;

--
-- Table structure for table `scholstudentgrades`
--

DROP TABLE IF EXISTS `scholstudentgrades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scholstudentgrades` (
  `srms_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectdesc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `units` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `scholstudentgrades_srms_id_index` (`srms_id`),
  CONSTRAINT `scholstudentgrades_srms_id_foreign` FOREIGN KEY (`srms_id`) REFERENCES `scholinfos` (`srms_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholstudentgrades`
--

/*!40000 ALTER TABLE `scholstudentgrades` DISABLE KEYS */;
/*!40000 ALTER TABLE `scholstudentgrades` ENABLE KEYS */;

--
-- Table structure for table `scholstudents`
--

DROP TABLE IF EXISTS `scholstudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scholstudents` (
  `student_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `srms_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` int(11) NOT NULL,
  `sem_startyear` int(11) NOT NULL,
  `sem_endyeaer` int(11) NOT NULL,
  `total_gwa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_of_this_sem` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `scholstudents_student_number_unique` (`student_number`),
  KEY `scholstudents_srms_id_index` (`srms_id`),
  CONSTRAINT `scholstudents_srms_id_foreign` FOREIGN KEY (`srms_id`) REFERENCES `scholinfos` (`srms_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholstudents`
--

/*!40000 ALTER TABLE `scholstudents` DISABLE KEYS */;
/*!40000 ALTER TABLE `scholstudents` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_student_number_unique` (`student_number`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'JACQUELINE C PORRAL','jackdaisuki04@gmail.com','20190344','student',NULL,'$2y$10$gNirllg1Cztno8bs5ELoU.QAIYe1P3q9ATZraA7/FvOWnSGcJOhzy',NULL,'2022-06-01 06:55:06','2022-06-01 06:55:06','nZ3FzokWrDQ7tYyH5MR2HPNUDz5jM6hZtZ7YkJ74S2m7vMIP9bSKGo05GOyiB53c'),(5,'TRIZHALYN L MAGLANGIT','maglangit.trizhalyn.bscs2019@gmail.com','20191172','student',NULL,'$2y$10$5hNb6CtZ1d7mm7vHC0ZLL.9ZX8gJEphpZ1J16/Bx6oHEl2g6G05au',NULL,'2022-06-01 10:44:00','2022-06-01 10:44:00',NULL),(6,'NIKKI E. BA-ALAN','baalan.nikki.bscs2019@gmail.com','20191299','student',NULL,'$2y$10$9cQoDPmc5cNl1goQy1enVevbRJkp0FBZfrYnKyPdzOdM0lpHVvQGO',NULL,'2022-06-02 02:57:42','2022-06-02 02:57:42',NULL),(7,'JESSICA J ZARZOSO','edeline@gmail.com','20191111','student',NULL,'$2y$10$kQBd9KzDDevS4mcPm/1Gc.zhcTckjhUWi8ibNOFeOiz0qdMVjnaUO',NULL,'2022-06-02 07:26:00','2022-06-02 07:26:00',NULL),(8,'DEM R. ESPINOLA','espinola.demverleen.bscs2019@gmail.com','20191297','student',NULL,'$2y$10$Jd/DT.tA9BnjBdCkAJ22d.C5K.p8YpytGqqq8RJRTxgNXCjnYuqCK',NULL,'2022-06-03 22:19:42','2022-06-03 22:19:42',NULL),(9,'TRIZHA L MAGLANGIT','trizha@gmail.com','20190001','student',NULL,'$2y$10$ubkMEiy9ukYk0CY4/SMEcuZW5r/Zb9uXWYd1kK9XjCdfUAAwc9pA.',NULL,'2022-06-04 01:04:58','2022-06-04 01:04:58',NULL),(12,'ALEX  CABERTO','caberto.alexander.bscs2019@gmail.com','20191112','student',NULL,'$2y$10$NJ31G7bvMYnHDYmJ5j39aeMDvflG.FBGHCe8jgsbN9n8830FVxM4C',NULL,'2022-06-04 03:39:35','2022-06-04 03:39:35',NULL),(13,'ZHYREX  CANINO','canino.zhyrex.bscs2019@gmail.com','20190007','student',NULL,'$2y$10$XG9T8Mwh7Bi6g406Bio5l.9dheI1spB4VA0QTmQj4fDgsdw8aQfF6',NULL,'2022-06-04 10:21:12','2022-06-04 10:21:12',NULL),(14,'TRIZHA  LUCAS','studenttrizha@gmail.com','20190613','student',NULL,'$2y$10$DleH/Y8duShLy0Kkfuj12Oi5IZZ6EFDXrGfBf2BF1.S2jeZVsEWDq',NULL,'2022-06-04 14:51:42','2022-06-04 14:51:42',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Dumping routines for database 'u206091335_escord3rdyr_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21  4:12:26
