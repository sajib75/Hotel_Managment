-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.73-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hotel
--

CREATE DATABASE IF NOT EXISTS hotel;
USE hotel;

--
-- Definition of table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(20) DEFAULT NULL,
  `nationlity` varchar(200) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `idProof` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `chaeckIn` varchar(100) DEFAULT NULL,
  `roomNo` varchar(100) DEFAULT NULL,
  `bed` varchar(100) DEFAULT NULL,
  `roomType` varchar(100) DEFAULT NULL,
  `pricePerDay` int(10) DEFAULT NULL,
  `numberOfDayStay` int(10) DEFAULT NULL,
  `totalAmount` varchar(100) DEFAULT NULL,
  `checkout` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id`,`name`,`mobileNumber`,`nationlity`,`gender`,`email`,`idProof`,`address`,`chaeckIn`,`roomNo`,`bed`,`roomType`,`pricePerDay`,`numberOfDayStay`,`totalAmount`,`checkout`) VALUES 
 (1,'sajiv','dfkj','asdf','Female','dsaf','dsaf','dsaf','2021/03/29','101','Single','AC',500,NULL,NULL,NULL),
 (2,'sajib','0124566632','Bangladeslh','Male','sajibsarif','IM1254','Dhaka','2021/03/29','105','Double','Non-AC',800,NULL,NULL,NULL),
 (3,'Ratul','101210','Bangladesh','Male','skjlio','dfsadf','sdf','2021/03/29','101','Single','AC',500,NULL,NULL,NULL),
 (4,'sajib','012546','dfsdaf','Others','adfd','dasfasasd','asdf','2021/03/29','101','Single','AC',500,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Definition of table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_No` varchar(45) DEFAULT NULL,
  `room_Type` varchar(45) DEFAULT NULL,
  `bed` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` (`id`,`room_No`,`room_Type`,`bed`,`price`,`status`) VALUES 
 (29,'101','AC','Single','500','Book'),
 (30,'105','Non-AC','Double','800','Not Booked');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `securityQuestion` varchar(500) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`name`,`email`,`password`,`securityQuestion`,`answer`,`address`,`status`) VALUES 
 ('Sajib','sajibsarig@gmil.com','12345','What was your first car?','idea','naroanf','true'),
 ('Md.Arif','sajibsarif401@gmail.com','12345','What was your first car?','yes','narangong','true'),
 ('Ratul','ratul@gmail.com','1234','What elementary school did you attend?','No','Dhaka','true'),
 ('Ratul','ratul420@gmail.com','12345','What was your first car?','yes','Dhaka','true'),
 ('sajib','sajibg','123','What is the name of your first pet?','yes','dhaka','true');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
