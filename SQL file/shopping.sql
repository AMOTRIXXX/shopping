/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.4.22-MariaDB : Database - shopping
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shopping` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `shopping`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`,`creationDate`,`updationDate`) values (1,'admin','f925916e2754e5e03f75dd58a5733251','2017-01-24 11:21:18','21-06-2018 08:27:55 PM');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`categoryName`,`categoryDescription`,`creationDate`,`updationDate`) values (3,'Books','Test anuj','2017-01-24 14:17:37','30-01-2017 12:22:24 AM'),(4,'Electronics','Electronic Products','2017-01-24 14:19:32',''),(5,'Furniture','test','2017-01-24 14:19:54',''),(6,'Fashion','Fashion','2017-02-20 14:18:52','');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`id`,`userId`,`productId`,`quantity`,`orderDate`,`paymentMethod`,`orderStatus`) values (1,1,'3',1,'2017-03-07 14:32:57','COD',NULL),(3,1,'4',1,'2017-03-10 14:43:04','Debit / Credit card','Delivered'),(4,1,'17',1,'2017-03-08 11:14:17','COD','in Process'),(5,1,'3',1,'2017-03-08 14:21:38','COD',NULL),(6,1,'4',1,'2017-03-08 14:21:38','COD',NULL);

/*Table structure for table `ordertrackhistory` */

DROP TABLE IF EXISTS `ordertrackhistory`;

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `ordertrackhistory` */

insert  into `ordertrackhistory`(`id`,`orderId`,`status`,`remark`,`postingDate`) values (1,3,'in Process','Order has been Shipped.','2017-03-10 14:36:45'),(2,1,'Delivered','Order Has been delivered','2017-03-10 14:37:31'),(3,3,'Delivered','Product delivered successfully','2017-03-10 14:43:04'),(4,4,'in Process','Product ready for Shipping','2017-03-10 14:50:36');

/*Table structure for table `productreviews` */

DROP TABLE IF EXISTS `productreviews`;

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `productreviews` */

insert  into `productreviews`(`id`,`productId`,`quality`,`price`,`value`,`name`,`summary`,`review`,`reviewDate`) values (2,3,4,5,5,'Anuj Kumar','BEST PRODUCT FOR ME :)','BEST PRODUCT FOR ME :)','2017-02-26 15:43:57'),(3,3,3,4,3,'Sarita pandey','Nice Product','Value for money','2017-02-26 15:52:46'),(4,3,3,4,3,'Sarita pandey','Nice Product','Value for money','2017-02-26 15:59:19');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`id`,`category`,`subCategory`,`productName`,`productCompany`,`productPrice`,`productPriceBeforeDiscount`,`productDescription`,`productImage1`,`productImage2`,`productImage3`,`shippingCharge`,`productAvailability`,`postingDate`,`updationDate`) values (1,4,3,'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)','Micromax test',139900,0,'<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>','micromax1.jpeg','micromax main image.jpg','micromax main image.jpg',1200,'In Stock','2017-01-30 11:54:35',''),(2,4,4,'Apple iPhone 6 (Silver, 16 GB)','Apple INC',36990,0,'<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>','apple-iphone-6-1.jpeg','apple-iphone-6-2.jpeg','apple-iphone-6-3.jpeg',0,'In Stock','2017-01-30 11:59:00',''),(3,4,4,'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)','Redmi',10999,0,'<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>','mi-redmi-note-4-1.jpeg','mi-redmi-note-4-2.jpeg','mi-redmi-note-4-3.jpeg',0,'In Stock','2017-02-03 23:03:15',''),(4,4,4,'Lenovo K6 Power (Silver, 32 GB) ','Lenovo',9999,0,'<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>','lenovo-k6-power-k33a42-1.jpeg','lenovo-k6-power-k33a42-2.jpeg','lenovo-k6-power-k33a42-3.jpeg',45,'In Stock','2017-02-03 23:04:43',''),(5,4,4,'Lenovo Vibe K5 Note (Gold, 32 GB)  ','Lenovo',11999,0,'<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>','lenovo-k5-note-pa330010in-1.jpeg','lenovo-k5-note-pa330116in-2.jpeg','lenovo-k5-note-pa330116in-3.jpeg',0,'In Stock','2017-02-03 23:06:17',''),(6,4,4,'Micromax Canvas Mega 4G','Micromax',6999,0,'<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>','micromax-canvas-mega-4g-1.jpeg','micromax-canvas-mega-4g-2.jpeg','micromax-canvas-mega-4g-3.jpeg',35,'In Stock','2017-02-03 23:08:07',''),(7,4,4,'SAMSUNG Galaxy On5','SAMSUNG',7490,0,'<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>','samsung-galaxy-on7-sm-1.jpeg','samsung-galaxy-on5-sm-2.jpeg','samsung-galaxy-on5-sm-3.jpeg',20,'In Stock','2017-02-03 23:10:17',''),(8,4,4,'OPPO A57','OPPO',14990,0,'<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>','oppo-a57-na-original-1.jpeg','oppo-a57-na-original-2.jpeg','oppo-a57-na-original-3.jpeg',0,'In Stock','2017-02-03 23:11:54',''),(9,4,5,'Affix Back Cover for Mi Redmi Note 4','Techguru',259,0,'<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>','amzer-amz98947-original-1.jpeg','amzer-amz98947-original-2.jpeg','amzer-amz98947-original-3.jpeg',10,'In Stock','2017-02-03 23:17:03',''),(11,4,6,'Acer ES 15 Pentium Quad Core','Acer',19990,0,'<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>','acer-aspire-notebook-original-1.jpeg','acer-aspire-notebook-original-2.jpeg','acer-aspire-notebook-original-3.jpeg',0,'In Stock','2017-02-03 23:26:17',''),(12,4,6,'Micromax Canvas Laptab II (WIFI) Atom 4th Gen','Micromax',10999,0,'<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>','micromax-lt777w-2-in-1-laptop-original-1.jpeg','micromax-lt777w-2-in-1-laptop-original-2.jpeg','micromax-lt777w-2-in-1-laptop-original-3.jpeg',0,'In Stock','2017-02-03 23:28:17',''),(13,4,6,'HP Core i5 5th Gen','HP',41990,0,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>','hp-notebook-original-1.jpeg','hp-notebook-original-2.jpeg','hp-notebook-original-3.jpeg',0,'In Stock','2017-02-03 23:30:24',''),(14,4,6,'Lenovo Ideapad 110 APU Quad Core A6 6th Gen','Lenovo',22990,0,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>','lenovo-ideapad-notebook-original-1.jpeg','lenovo-ideapad-notebook-original-2.jpeg','lenovo-ideapad-notebook-3.jpeg',0,'In Stock','2017-02-03 23:32:15',''),(15,3,8,'The Wimpy Kid Do -It- Yourself Book','ABC',205,250,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>','diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg','diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg','diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg',50,'In Stock','2017-02-03 23:35:13',''),(16,3,8,'Thea Stilton and the Tropical Treasure ','XYZ',240,0,'<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>','22-thea-stilton-and-the-tropical-treasure-original-1.jpeg','22-thea-stilton-and-the-tropical-treasure-original-1.jpeg','22-thea-stilton-and-the-tropical-treasure-original-1.jpeg',30,'In Stock','2017-02-03 23:36:23',''),(17,5,9,'Induscraft Solid Wood King Bed With Storage','Induscraft',32566,0,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>','inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg','inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg','inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg',0,'In Stock','2017-02-03 23:40:37',''),(18,5,10,'Nilkamal Ursa Metal Queen Bed','Nilkamal',6523,0,'<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">@home by Nilkamal Ursa Metal Queen Bed</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>','flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg','flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg','flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg',0,'In Stock','2017-02-03 23:42:27',''),(19,6,12,'Asian Casuals  (White, White)','Asian',379,0,'<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>','1.jpeg','2.jpeg','3.jpeg',45,'In Stock','2017-03-10 15:16:03',''),(20,6,12,'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)','Adidas',4129,5000,'<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>','1.jpeg','2.jpeg','3.jpeg',0,'In Stock','2017-03-10 15:19:22','');

/*Table structure for table `subcategory` */

DROP TABLE IF EXISTS `subcategory`;

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `subcategory` */

insert  into `subcategory`(`id`,`categoryid`,`subcategory`,`creationDate`,`updationDate`) values (2,4,'Led Television','2017-01-26 11:24:52','26-01-2017 11:03:40 PM'),(3,4,'Television','2017-01-26 11:29:09',''),(4,4,'Mobiles','2017-01-30 11:55:48',''),(5,4,'Mobile Accessories','2017-02-03 23:12:40',''),(6,4,'Laptops','2017-02-03 23:13:00',''),(7,4,'Computers','2017-02-03 23:13:27',''),(8,3,'Comics','2017-02-03 23:13:54',''),(9,5,'Beds','2017-02-03 23:36:45',''),(10,5,'Sofas','2017-02-03 23:37:02',''),(11,5,'Dining Tables','2017-02-03 23:37:51',''),(12,6,'Men Footwears','2017-03-10 15:12:59','');

/*Table structure for table `userlog` */

DROP TABLE IF EXISTS `userlog`;

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

insert  into `userlog`(`id`,`userEmail`,`userip`,`loginTime`,`logout`,`status`) values (1,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 06:18:50','',1),(2,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 06:29:33','',1),(3,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 06:30:11','',1),(4,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 10:00:23','26-02-2017 11:12:06 PM',1),(5,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 13:08:58','',0),(6,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 13:09:41','',0),(7,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 13:10:04','',0),(8,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 13:10:31','',0),(9,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-26 13:13:43','',1),(10,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-27 13:52:58','',0),(11,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-02-27 13:53:07','',1),(12,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-03 13:00:09','',0),(13,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-03 13:00:15','',1),(14,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-06 13:10:26','',1),(15,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-07 07:28:16','',1),(16,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-07 13:43:27','',1),(17,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-07 13:55:33','',1),(18,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-07 14:44:29','',1),(19,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-08 14:21:15','',1),(20,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-15 12:19:38','',1),(21,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-15 12:20:36','15-03-2017 10:50:39 PM',1),(22,'anuj.lpu1@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2017-03-15 20:13:57','',1),(23,'hgfhgf@gmass.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2018-04-29 04:30:40','',1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`contactno`,`password`,`shippingAddress`,`shippingState`,`shippingCity`,`shippingPincode`,`billingAddress`,`billingState`,`billingCity`,`billingPincode`,`regDate`,`updationDate`) values (1,'Anuj Kumar','anuj.lpu1@gmail.com',9009857868,'f925916e2754e5e03f75dd58a5733251','CS New Delhi','New Delhi','Delhi',110001,'New Delhi','New Delhi','Delhi',110092,'2017-02-04 14:30:50',''),(2,'Amit ','amit@gmail.com',8285703355,'5c428d8875d2948607f3e3fe134d71b4','','','',0,'','','',0,'2017-03-15 12:21:22',''),(3,'hg','hgfhgf@gmass.com',1121312312,'827ccb0eea8a706c4c34a16891f84e7b','','','',0,'','','',0,'2018-04-29 04:30:32','');

/*Table structure for table `wishlist` */

DROP TABLE IF EXISTS `wishlist`;

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `wishlist` */

insert  into `wishlist`(`id`,`userId`,`productId`,`postingDate`) values (1,1,0,'2017-02-27 13:53:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
