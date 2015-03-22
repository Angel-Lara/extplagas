# Host: localhost  (Version: 5.6.21)
# Date: 2015-03-22 16:17:16
# Generator: MySQL-Front 5.3  (Build 4.198)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "category"
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "category"
#

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

#
# Structure for table "customers"
#

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customerNumber` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(50) NOT NULL,
  `contactLastName` varchar(50) NOT NULL,
  `contactFirstName` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(15) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `salesRepEmployeeNumber` int(11) DEFAULT NULL,
  `creditLimit` double DEFAULT NULL,
  PRIMARY KEY (`customerNumber`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "customers"
#

/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

#
# Structure for table "employees"
#

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `file_url` varchar(250) CHARACTER SET utf8 NOT NULL,
  `jobTitle` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "employees"
#

/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

#
# Structure for table "offices"
#

DROP TABLE IF EXISTS `offices`;
CREATE TABLE `offices` (
  `officeCode` int(10) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL,
  `territory` varchar(10) NOT NULL,
  PRIMARY KEY (`officeCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "offices"
#

/*!40000 ALTER TABLE `offices` DISABLE KEYS */;
/*!40000 ALTER TABLE `offices` ENABLE KEYS */;

#
# Structure for table "orderdetails"
#

DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `orderNumber` int(11) NOT NULL,
  `productCode` varchar(15) NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `priceEach` double NOT NULL,
  `orderLineNumber` smallint(6) NOT NULL,
  PRIMARY KEY (`orderNumber`,`productCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "orderdetails"
#

/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` datetime NOT NULL,
  `requiredDate` datetime NOT NULL,
  `shippedDate` datetime DEFAULT NULL,
  `status` enum('Cancelled','Disputed','In Process','On Hold','Resolved','Shipped') NOT NULL,
  `comments` text,
  `customerNumber` int(11) NOT NULL,
  PRIMARY KEY (`orderNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "orders"
#

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

#
# Structure for table "payments"
#

DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `customerNumber` int(11) NOT NULL,
  `checkNumber` varchar(50) NOT NULL,
  `paymentDate` datetime NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`customerNumber`,`checkNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "payments"
#

/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

#
# Structure for table "productlines"
#

DROP TABLE IF EXISTS `productlines`;
CREATE TABLE `productlines` (
  `productLine` varchar(50) NOT NULL,
  `textDescription` varchar(4000) DEFAULT NULL,
  `htmlDescription` mediumtext,
  `image` mediumblob,
  PRIMARY KEY (`productLine`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "productlines"
#

/*!40000 ALTER TABLE `productlines` DISABLE KEYS */;
/*!40000 ALTER TABLE `productlines` ENABLE KEYS */;

#
# Structure for table "productos"
#

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `precio` double(11,0) NOT NULL,
  `opcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `valores` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

#
# Data for table "productos"
#

INSERT INTO `productos` VALUES (11,'sure kill','Fly Spray LD-44T',147,'color','negro,verde,morado',''),(12,'sure kill','wqeq',700000,'color','negro,verde,morado','');

#
# Structure for table "products"
#

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `productCode` varchar(15) NOT NULL,
  `productName` varchar(70) NOT NULL,
  `productLine` varchar(50) NOT NULL,
  `productScale` varchar(10) NOT NULL,
  `productVendor` varchar(50) NOT NULL,
  `productDescription` text NOT NULL,
  `quantityInStock` smallint(6) NOT NULL,
  `buyPrice` double NOT NULL,
  `MSRP` double NOT NULL,
  PRIMARY KEY (`productCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "products"
#

/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (11,'Angel','Lara','admin','21232f297a57a5a743894a0e4a801fc3'),(24,'patricia','de la cruz','paty','9c8109ca3343fe84f6b6da24ca8dc428'),(25,'yaritza','Ek','yaritza','8c09071192f5c013f6d5772be5c94812');
