-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.49-3


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema shop
--

CREATE DATABASE IF NOT EXISTS shop;
USE shop;



--
-- Definition of table `shop`.`city`
--

DROP TABLE IF EXISTS `shop`.`city`;
CREATE TABLE  `shop`.`city` (
  `id_city` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop`.`city`
--

/*!40000 ALTER TABLE `city` DISABLE KEYS */;
LOCK TABLES `city` WRITE;
INSERT INTO `shop`.`city` VALUES  (1,'Санкт-Петербург'),
 (2,'Киев'),
 (3,'Минск');
UNLOCK TABLES;
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


--
-- Definition of table `shop`.`magazine`
--

DROP TABLE IF EXISTS `shop`.`magazine`;
CREATE TABLE  `shop`.`magazine` (
  `id_magazine` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `note` text,
  `openday_slz` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_magazine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `shop`.`magazine`
--

/*!40000 ALTER TABLE `magazine` DISABLE KEYS */;
LOCK TABLES `magazine` WRITE;
INSERT INTO `shop`.`magazine` VALUES  (1,'5-ка','пятерочка',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `magazine` ENABLE KEYS */;


--
-- Definition of table `shop`.`street`
--

DROP TABLE IF EXISTS `shop`.`street`;
CREATE TABLE  `shop`.`street` (
  `id_street` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_street`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop`.`street`
--

/*!40000 ALTER TABLE `street` DISABLE KEYS */;
LOCK TABLES `street` WRITE;
INSERT INTO `shop`.`street` VALUES  (1,'казакова');
UNLOCK TABLES;
/*!40000 ALTER TABLE `street` ENABLE KEYS */;


--
-- Definition of table `shop`.`address`
--

DROP TABLE IF EXISTS `shop`.`address`;
CREATE TABLE  `shop`.`address` (
  `id_magazine` int(11) DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL,
  `id_street` int(11) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `house` varchar(100) DEFAULT NULL,
  KEY `FK_Reference_1` (`id_magazine`),
  KEY `FK_Reference_2` (`id_city`),
  KEY `FK_Reference_3` (`id_street`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`id_street`) REFERENCES `street` (`id_street`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`id_magazine`) REFERENCES `magazine` (`id_magazine`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`id_city`) REFERENCES `city` (`id_city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop`.`address`
--

/*!40000 ALTER TABLE `address` DISABLE KEYS */;
LOCK TABLES `address` WRITE;
INSERT INTO `shop`.`address` VALUES  (1,1,1,NULL,'1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
