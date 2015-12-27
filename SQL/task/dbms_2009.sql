-- MySQL dump 10.11
--
-- Host: localhost    Database: DBMS_2009
-- ------------------------------------------------------
-- Server version	5.0.51a-3ubuntu5.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cusp`
--

DROP TABLE IF EXISTS `cusp`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cusp` (
  `Knum` int(4) NOT NULL,
  `Kname` varchar(15) NOT NULL,
  `city` varchar(10) NOT NULL,
  `rate` int(3) unsigned default NULL,
  `Pnum` int(4) NOT NULL,
  PRIMARY KEY  (`Knum`),
  CONSTRAINT `Pnum_1` FOREIGN KEY (`Pnum`) REFERENCES `salesp` (`Pnum`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cusp`
--

LOCK TABLES `cusp` WRITE;
/*!40000 ALTER TABLE `cusp` DISABLE KEYS */;
INSERT INTO `cusp` VALUES (2001,'Ivan','Sofia',100,1001),(2002,'Vera','Varna',200,1003),(2003,'Pepi','Ruse',200,1002),(2004,'Asen','Burgas',300,1002),(2006,'Ani','Sofia',NULL,1001),(2007,'Jivko','Varna',100,1004),(2008,'Mimi','Ruse',300,1007);
/*!40000 ALTER TABLE `cusp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `orders` (
  `Onum` int(4) unsigned NOT NULL auto_increment,
  `Amt` float(6,2) NOT NULL,
  `Odate` date default '2009-10-06',
  `Pnum` int(4) default NULL,
  `Knum` int(4) default NULL,
  PRIMARY KEY  (`Onum`),
  CONSTRAINT `knum` FOREIGN KEY (`Knum`) REFERENCES `cusp` (`Knum`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `pnum` FOREIGN KEY (`Pnum`) REFERENCES `salesp` (`Pnum`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3112 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3001,18.69,'2009-10-03',1007,2008),(3002,1900.10,'2009-10-03',1004,2007),(3003,767.19,'2009-10-03',1001,2001),(3005,5160.45,'2009-10-03',1002,2003),(3006,1098.16,'2009-10-03',1007,2008),(3007,75.75,'2009-10-04',1002,2004),(3008,4723.00,'2009-10-05',1001,2006),(3009,1713.23,'2009-10-04',1003,2002),(3010,1309.95,'2009-10-06',1002,2004),(3011,9891.88,'2009-10-06',1001,2006),(3111,34.34,'2009-11-15',1001,2008);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesp`
--

DROP TABLE IF EXISTS `salesp`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `salesp` (
  `Pnum` int(4) NOT NULL,
  `Pname` varchar(15) NOT NULL,
  `city` varchar(10) default 'Sofia',
  `comm` float(3,2) default NULL,
  PRIMARY KEY  (`Pnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `salesp`
--

LOCK TABLES `salesp` WRITE;
/*!40000 ALTER TABLE `salesp` DISABLE KEYS */;
INSERT INTO `salesp` VALUES (1001,'Ivanov','Sofia',0.12),(1002,'Asenov','Ruse',0.13),(1003,'Aleksandrov','Burgas',0.10),(1004,'Petkov','Sofia',0.11),(1007,'Petrova','Plovdiv',0.15),(1020,'Yanchev','Pleven',0.11);
/*!40000 ALTER TABLE `salesp` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-11-30  6:05:35
