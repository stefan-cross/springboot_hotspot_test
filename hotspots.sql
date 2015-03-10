# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.19)
# Database: test
# Generation Time: 2015-03-10 23:17:00 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table hotspots
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hotspots`;

CREATE TABLE `hotspots` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `address1` varchar(32) DEFAULT NULL,
  `address2` varchar(32) DEFAULT NULL,
  `town` varchar(32) DEFAULT NULL,
  `postcode` varchar(11) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `hotspots` WRITE;
/*!40000 ALTER TABLE `hotspots` DISABLE KEYS */;

INSERT INTO `hotspots` (`id`, `name`, `address1`, `address2`, `town`, `postcode`, `county`, `latitude`, `longitude`)
VALUES
	(1,'location1','1 The Strand',NULL,'London','WIS 2HX','London',52.507200,0.127500),
	(2,'location2','10 Holloway Rd','Holloway','London','N7 2HB','London',52.807200,0.122500),
	(3,'location3','1012 New Cresent','Acton','London','W18 2HB','London',52.907200,0.152500),
	(5,'location5','22 New Raod','Acton','Birmingham','B1 7HA','Birmingham',52.907200,0.152500),
	(6,'location','Reef Terrace','Crossapol','IsleofTiree','PA77 6UT','Isle of Tiree',51.907200,0.112500),
	(8,'location','26 Tudor Close','Sutton','London','SM3 8QT,','Greater London',52.907200,0.152500),
	(9,'location','59 Strathmore Road','Teddington','London','TW11 8UH','Greater London',51.907200,0.112500),
	(10,'location','1 Bulls Head Passage','London','London','EC3V','London',51.907200,0.112500);

/*!40000 ALTER TABLE `hotspots` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
