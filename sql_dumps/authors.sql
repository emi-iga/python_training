-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pythontraining
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Uriah','Hackett','schaden.kenton@example.net','1995-08-17','1990-06-29 19:30:22'),(2,'Omer','Hyatt','elenor20@example.net','2006-02-25','1971-08-15 12:57:08'),(3,'Rick','Kirlin','fmurazik@example.com','2013-08-26','1987-05-02 15:51:56'),(4,'Pearline','Dibbert','kaela.turner@example.org','2006-06-27','2018-01-09 04:42:12'),(5,'Clement','Rutherford','rjohnston@example.org','1996-06-18','1987-11-28 16:12:50'),(6,'Ewald','Cummerata','yjohns@example.net','1973-12-03','1976-07-26 13:10:07'),(7,'Fausto','Windler','shaniya70@example.net','1983-09-16','1986-02-24 21:21:27'),(8,'Santino','Langworth','beier.valentine@example.org','2006-05-05','2014-12-03 20:25:40'),(9,'Alanis','Erdman','ehyatt@example.org','1991-07-04','1986-01-30 18:44:42'),(10,'Myron','Wisozk','xortiz@example.net','2003-11-26','2007-04-01 12:36:12'),(11,'Lucile','Lynch','karelle.gaylord@example.com','2015-05-22','2003-05-14 19:16:52'),(12,'Isabella','Walker','marion49@example.org','1987-01-05','1979-11-09 07:40:52'),(13,'Lina','Abernathy','jboyer@example.com','1989-06-01','2004-08-03 17:17:41'),(14,'Florence','Reilly','arely78@example.net','1972-02-14','1990-04-11 18:21:07'),(15,'Winston','Becker','justyn00@example.net','1980-03-11','1980-03-02 01:00:11'),(16,'Cecilia','Fahey','miller.morgan@example.com','2007-03-14','2009-03-19 03:54:58'),(17,'Carter','Bechtelar','arturo.greenfelder@example.net','2004-01-20','1988-06-07 02:26:06'),(18,'Gust','Gleichner','rowland.kozey@example.net','1972-02-03','2011-11-04 05:53:59'),(19,'Yazmin','Walker','sydnie75@example.net','2010-02-16','1978-02-23 00:38:39'),(20,'Mateo','Kiehn','shanahan.lavina@example.org','2012-12-28','2016-01-16 19:19:12'),(21,'Mortimer','Christiansen','fmccullough@example.com','1979-01-24','2015-09-23 22:49:02'),(22,'Nash','Doyle','braden88@example.org','1973-03-01','1972-07-20 20:08:08'),(23,'Wilhelm','Leffler','arlene36@example.com','2016-05-06','2010-04-26 22:11:09'),(24,'Leon','Casper','larson.edmund@example.org','1981-01-17','1970-05-08 17:27:32'),(25,'Kaylee','O\'Keefe','gulgowski.leanne@example.org','1972-03-22','1970-10-17 20:56:19'),(26,'Roscoe','Rodriguez','benedict27@example.org','2013-07-30','2006-08-06 09:55:06'),(27,'Chelsea','Runolfsson','pzieme@example.org','1998-03-19','1980-06-22 20:44:51'),(28,'Dallin','Koss','schuster.lonny@example.net','1977-10-16','1974-01-23 00:37:37'),(29,'Johathan','Brakus','garth.hand@example.net','2014-08-18','1981-12-01 18:37:45'),(30,'Mikayla','Sipes','hermann73@example.net','2001-12-15','1986-05-16 03:13:33'),(31,'Etha','Ziemann','walker.lonnie@example.com','1981-01-26','1982-06-29 10:39:31'),(32,'Brenna','Koelpin','gmayer@example.org','2008-02-29','1997-03-25 15:19:45'),(33,'Crystal','Klocko','nikita45@example.org','1977-06-14','1995-08-29 18:45:45'),(34,'Mose','Steuber','braeden.gaylord@example.org','1980-06-01','2017-04-11 23:06:59'),(35,'Carley','Gaylord','lockman.linnea@example.org','2014-05-15','2003-03-27 09:57:34'),(36,'Brielle','Dibbert','gislason.kyle@example.com','2007-12-16','1973-11-09 16:47:08'),(37,'Nicholaus','Kuphal','jordyn91@example.com','1971-09-23','2014-08-15 15:22:30'),(38,'Dolly','Stiedemann','ralph.graham@example.com','1982-07-30','1973-11-04 11:12:06'),(39,'Eileen','Dibbert','titus50@example.org','2004-03-16','1977-08-09 18:06:09'),(40,'Josianne','Braun','jstokes@example.org','2013-12-18','1979-01-29 20:06:41'),(41,'Hyman','Rosenbaum','odie.daniel@example.com','2015-03-23','1970-02-28 19:46:41'),(42,'Maud','Hudson','bauch.lilliana@example.com','1988-01-26','1995-09-05 02:48:13'),(43,'Kenyatta','Leannon','schimmel.parker@example.net','1981-09-10','1978-01-26 17:57:54'),(44,'Tristian','Quigley','vvonrueden@example.com','1986-07-16','1992-08-13 18:00:39'),(45,'Mervin','Okuneva','lelah.murazik@example.com','1993-01-17','1999-03-02 17:52:36'),(46,'Arlene','Lockman','okey.crona@example.com','1994-11-01','1984-03-03 14:01:05'),(47,'Gay','Kohler','mmarquardt@example.com','2007-02-13','1999-05-02 03:38:43'),(48,'Trever','Runolfsson','marcel.schaden@example.org','1970-04-03','1994-07-28 19:31:28'),(49,'Mellie','Rippin','mann.robbie@example.org','1980-05-16','1995-11-25 11:07:26'),(50,'Tristian','Reichert','tleannon@example.com','2001-01-18','1988-10-21 07:16:30'),(51,'Mia','Leffler','torp.granville@example.org','1988-01-21','1992-04-20 14:55:04'),(52,'Vergie','Parisian','aufderhar.marquise@example.net','1988-09-12','1996-02-17 19:40:53'),(53,'Daren','Schaden','maida.raynor@example.org','2004-03-12','2005-10-29 07:26:42'),(54,'Easter','Lind','meghan26@example.net','1994-09-12','1973-04-29 16:47:27'),(55,'Isai','Baumbach','caleigh39@example.org','2017-10-15','2005-07-04 17:55:29'),(56,'Kitty','Deckow','gaston.auer@example.com','2004-01-08','1973-11-06 00:27:51'),(57,'Pat','Volkman','alysson59@example.com','2012-08-10','1973-01-11 01:28:33'),(58,'Loy','Conn','priscilla43@example.com','2013-07-23','2016-04-18 11:24:23'),(59,'Dagmar','Farrell','umedhurst@example.org','1988-02-27','1986-07-31 13:24:28'),(60,'Georgiana','Muller','eldora.nienow@example.net','2005-12-08','1987-11-29 19:26:13'),(61,'Elena','Runolfsson','johnson.bailee@example.org','1998-04-11','2000-09-23 03:31:55'),(62,'Chanel','Sporer','vallie80@example.org','1984-04-28','2010-09-14 04:45:06'),(63,'Eugenia','Walker','jillian60@example.com','1991-05-29','2012-06-13 16:57:39'),(64,'Antonietta','Jacobs','graciela.hammes@example.org','1974-10-24','2017-06-17 08:01:13'),(65,'Tevin','Kohler','rbarton@example.com','1977-02-26','2000-06-14 06:05:11'),(66,'Hollie','Bins','rippin.reba@example.net','1993-06-07','2005-08-18 09:33:07'),(67,'Adaline','Collins','olson.antonia@example.net','1999-10-13','1988-05-02 13:51:23'),(68,'Shad','Koch','boyle.philip@example.com','1985-04-13','1990-06-15 00:56:48'),(69,'Leonel','Walsh','hildegard.cummerata@example.com','1980-12-16','2008-02-15 17:00:39'),(70,'Ciara','Williamson','halle.bogan@example.com','1997-03-13','1987-08-15 08:39:03'),(71,'Dina','Farrell','tolson@example.com','1974-01-27','1996-02-06 16:24:01'),(72,'Evan','Bradtke','gerard90@example.net','1977-09-23','1976-06-23 07:21:37'),(73,'Ruth','Koss','daniel.dana@example.net','1982-08-19','2015-07-31 05:05:10'),(74,'Stella','Braun','lhessel@example.net','2005-04-30','1981-09-27 05:14:05'),(75,'Clara','Satterfield','magali65@example.com','1998-03-30','2000-10-17 12:31:34'),(76,'Keara','Hyatt','hullrich@example.org','1980-05-14','1979-10-19 00:29:28'),(77,'Lenny','Windler','orrin38@example.net','2016-10-01','1996-06-12 20:52:28'),(78,'Ebony','Lebsack','tkilback@example.org','2005-02-18','2016-11-16 06:20:31'),(79,'Alfred','Grady','fred01@example.org','2000-06-11','1998-09-25 20:10:35'),(80,'Hobart','Casper','sadie.price@example.net','2012-06-02','1985-09-24 16:41:01'),(81,'Damon','Walker','forrest38@example.com','1990-10-29','1980-11-16 07:31:31'),(82,'Veronica','O\'Hara','ervin62@example.net','2005-07-02','1976-02-24 18:31:38'),(83,'Ali','Krajcik','fklocko@example.net','2009-07-24','2006-12-13 09:11:59'),(84,'Juvenal','Shields','clinton98@example.org','1980-11-03','2016-07-21 09:55:06'),(85,'Cassie','Schultz','westley.weber@example.net','1988-03-26','1996-05-20 01:18:35'),(86,'Robyn','Breitenberg','dolly.little@example.com','1974-09-06','2005-09-12 23:50:20'),(87,'Cayla','Fay','julius26@example.com','1971-07-13','2002-09-30 23:35:04'),(88,'Jeanie','Block','chanelle.blanda@example.org','2013-03-13','1973-04-20 00:12:01'),(89,'Sophie','Gutmann','btoy@example.org','2007-11-15','1999-02-26 13:20:28'),(90,'Leta','Jerde','lela81@example.com','2008-02-26','1997-06-09 06:22:16'),(91,'Karlee','Russel','grant.barton@example.net','1992-04-17','1979-01-05 04:49:43'),(92,'Philip','Dare','sallie.considine@example.net','1981-10-05','1999-09-07 21:50:39'),(93,'Jacklyn','Larkin','zconn@example.com','1997-08-02','1992-11-09 23:27:15'),(94,'Frances','Smitham','alicia34@example.org','2000-12-31','1977-02-15 07:02:55'),(95,'Cortez','Halvorson','ttorphy@example.net','2012-03-28','1995-04-13 19:50:28'),(96,'Marilou','Marquardt','daisy.hills@example.org','1974-07-28','2005-03-17 22:07:03'),(97,'Carey','McGlynn','dach.jerad@example.org','1973-11-23','2010-06-21 20:27:16'),(98,'Tristin','Gottlieb','ernser.palma@example.org','1993-04-12','2010-05-27 08:51:31'),(99,'Cassandra','Wisozk','dooley.dorthy@example.net','2003-09-29','2006-09-09 21:18:39'),(100,'Tania','Erdman','bernice.cartwright@example.com','2004-10-08','1995-07-10 03:14:45');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-16  7:03:43
