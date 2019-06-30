-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 30, 2019 at 04:54 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royalvintage`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_order`
--

DROP TABLE IF EXISTS `delivery_order`;
CREATE TABLE IF NOT EXISTS `delivery_order` (
  `deliveryNo` varchar(10) NOT NULL,
  `shopID_fk` varchar(20) NOT NULL,
  `salespersonID_fk` varchar(20) NOT NULL,
  `Time` timestamp NOT NULL,
  `date` date NOT NULL,
  `quantity` varchar(10) NOT NULL,
  PRIMARY KEY (`deliveryNo`,`shopID_fk`,`salespersonID_fk`),
  KEY `fk8` (`salespersonID_fk`),
  KEY `fk9` (`shopID_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `shopID_fk` varchar(20) NOT NULL,
  `deliveryNo_fk` varchar(10) NOT NULL,
  `userID_fk` varchar(20) NOT NULL,
  `feedbackNo` varchar(10) NOT NULL,
  `description` varchar(50000) NOT NULL,
  `replyFlag` varchar(10) NOT NULL,
  PRIMARY KEY (`shopID_fk`,`deliveryNo_fk`,`userID_fk`,`feedbackNo`),
  KEY `fk12` (`deliveryNo_fk`),
  KEY `fk14` (`userID_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `importdealer`
--

DROP TABLE IF EXISTS `importdealer`;
CREATE TABLE IF NOT EXISTS `importdealer` (
  `dealerID` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`dealerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `importdealer`
--

INSERT INTO `importdealer` (`dealerID`, `name`, `address`) VALUES
('Dealer001', 'Australia Dhal International Ltd.', 'Cofica House  127 Chestnut Street  Cremorne, VIC 3...'),
('Dealer002', 'Matrix Exports', 'Jayanagar, Bengaluru');

-- --------------------------------------------------------

--
-- Table structure for table `logintable`
--

DROP TABLE IF EXISTS `logintable`;
CREATE TABLE IF NOT EXISTS `logintable` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userID` varchar(20) NOT NULL,
  `userType` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contactNoMobile` int(10) NOT NULL,
  `contactNoResidential` int(10) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintable`
--

INSERT INTO `logintable` (`name`, `password`, `userID`, `userType`, `email`, `address`, `contactNoMobile`, `contactNoResidential`) VALUES
('admin admin', 'admin', 'admin123', 'admin', 'admin@gmail.com', 'kandy', 710000000, 810000000),
('Australia Dhal International Ltd.', 'dealer@123', 'Dealer001', 'on', 'dealer01@gmail.com', 'Cofica House  127 Chestnut Street  Cremorne, VIC 3121  Australia', 61, 61),
('Matrix Exports', 'Dealer2@123', 'Dealer002', 'on', 'dealer02@gmail.com', 'Jayanagar, Bengaluru', 2147483647, 2147483647),
('shop1 shop1', 'shop', 'shop', 'shop', 'shop@gmail.com', 'kandy', 710000000, 810000000),
('Lalinda_Nawinjith', 'ucsc@123', 'user1', 'on', 'nawinjith96@gmail.com', 'kandy', 710000000, 810000000),
('Lalinda  K', 'ucsc1234', 'user2', 'on', 'nawinjith96@gmail.com', 'kandy', 710000000, 810000000),
('Lalinda', '12345', 'user3', 'on', 'nawinjith96@gmail.com', 'kandy', 710000000, 810000000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `grand_total` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL,
  `sub_total` float(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `paymentID` varchar(10) NOT NULL,
  `shopID_fk` varchar(20) NOT NULL,
  `deliveryNo_fk` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `amount` varchar(10) NOT NULL,
  `paymentType` varchar(10) NOT NULL,
  `paymentdetails` varchar(255) NOT NULL,
  PRIMARY KEY (`paymentID`,`shopID_fk`,`deliveryNo_fk`),
  KEY `fk10` (`deliveryNo_fk`),
  KEY `fk11` (`shopID_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `image`, `name`, `description`, `price`, `created`, `modified`, `status`) VALUES
(1, 'pro-img', 'Dhal Type A\r\nUrad, Urad Dal Chilka (split urad with skin), and Urad Dal (split urad without skin)', 'Urad (also known as black gram, black lentil, Hindi: urad, Gujarati: adad), is a little black seed with a white interior. It is very similar to a mung bean in size and shape but tastes entirely different. It has also been eaten in India for thousands of years and is highly prized. Urad has an earthy flavor and an unusual mucousy texture (it’s a good thing!) when it’s cooked. The popular, and amazing, dal makhani is made with urad. Papad (or poppadums) are usually made with urad dal as well.', 12.00, '2019-06-28 00:00:00', '2019-06-28 00:00:00', '1'),
(2, 'pro-img-2', 'DHAL TYPE A\r\nGarbanzo Beans', 'Garbanzo Beans (also known as chickpea, Bengal gram, Hindi: channa, Gujarati: channa). Garbanzo beans are found in two forms, the smaller dark skinned beans known as desi channa and the larger white skinned beans known as Kabuli channa. Garbanzo beans are commonly eaten in India in as whole beans, as split lentils and a multitude of dishes are also made with garbanzo bean flour (known as besan). Channa Masala is the most popular dish made with Kabuli channa.\r\nChanna are slightly nutty in taste. The brown ones are earthier in flavor and tend have a drier texture.', 20.00, '2019-06-28 00:00:00', '2019-06-29 00:00:00', '1'),
(3, 'pro-img-3', 'Masoor Dal', 'Masoor (also known as red lentil, Hindi: masoor, Gujarati: masoor) is a brown skinned lentil that is orange on the inside. Masoor dal has a pleasant earthy flavor and is very common in Northern India. It is commonly used to make dal, soups and stews.', 20.00, '2019-06-21 00:00:00', '2019-06-21 00:00:00', '1'),
(4, 'pro-img-4', 'Pigeon Pea (Toor Dal)', 'Pigeon Pea (also known as tropical green pea, Hindi: toor, Gujarati: tuver), is a beige lentil with a yellow interior. This is the most important pulse in a Gujarati household. The fresh peas are highly prized and used for curries and stuffing in spicy handpies. They have a delicious nutty flavor that is very distinctive. The dried and split peas are a staple in everyday cooking as well. The famous “Gujarati Dal” is made with this pea where the balance between spicy, sweet and sour is most important.', 20.00, '2019-06-21 00:00:00', '2019-06-21 00:00:00', '1'),
(5, 'pro-img-5', 'Black-Eyed Peas and Azuki', 'Black-eyed pea (also known as cow pea, Hindi: lobia, Gujarati: chora). Black-eyed peas have a distinctive flavor and are an all around pulse in Indian cuisine. They’re used to make curries, dals, papads and fritters.\r\n\r\nAzuki bean (also known as red cow pea, Hindi: chori, Gujarati: lal chora). Azuki beans have a sweet nutty flavor and are another all around pulse. They are used very much like black-eyed peas.', 20.00, '2019-06-21 00:00:00', '2019-06-21 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `productID` varchar(10) NOT NULL,
  `productName` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1=Active | 0=InActive',
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_import`
--

DROP TABLE IF EXISTS `product_import`;
CREATE TABLE IF NOT EXISTS `product_import` (
  `importNo` varchar(20) NOT NULL,
  `productID_fk` int(11) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `dealerID_fk` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `flag` enum('1','0') NOT NULL COMMENT '1 = received',
  PRIMARY KEY (`productID_fk`,`dealerID_fk`),
  KEY `fkn3` (`dealerID_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_import`
--

INSERT INTO `product_import` (`importNo`, `productID_fk`, `quantity`, `dealerID_fk`, `date`, `flag`) VALUES
('IMP001', 1, '10000', 'Dealer001', '2019-05-22', '1'),
('IMP003', 2, '6000', 'Dealer002', '2019-06-19', '1'),
('IMP009', 4, '9000', 'Dealer001', '2019-06-30', '1'),
('IMP013', 5, '13000', 'Dealer002', '2019-06-18', '1');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

DROP TABLE IF EXISTS `product_order`;
CREATE TABLE IF NOT EXISTS `product_order` (
  `productID_fk` int(11) NOT NULL,
  `orderID` varchar(10) NOT NULL,
  `shopID_fk` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `quantity` varchar(10) NOT NULL,
  PRIMARY KEY (`productID_fk`,`orderID`,`shopID_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `retailshop`
--

DROP TABLE IF EXISTS `retailshop`;
CREATE TABLE IF NOT EXISTS `retailshop` (
  `shopID_fk` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contactNo` int(10) NOT NULL,
  PRIMARY KEY (`shopID_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

DROP TABLE IF EXISTS `salesperson`;
CREATE TABLE IF NOT EXISTS `salesperson` (
  `userID_fk` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contactNo` int(10) NOT NULL,
  PRIMARY KEY (`userID_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE IF NOT EXISTS `warehouse` (
  `warehouseID` varchar(10) NOT NULL,
  `location` varchar(255) NOT NULL,
  `capacity` varchar(20) NOT NULL,
  `contactNo` int(10) NOT NULL,
  PRIMARY KEY (`warehouseID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`warehouseID`, `location`, `capacity`, `contactNo`) VALUES
('W001', 'Colombo', '50000 ', 112123456),
('W002', 'Kandy', '35000', 812123456),
('W003', 'Galle', '30000', 91123456),
('W004', 'Anuradhapura', '20000', 251234567);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery_order`
--
ALTER TABLE `delivery_order`
  ADD CONSTRAINT `fk8` FOREIGN KEY (`salespersonID_fk`) REFERENCES `salesperson` (`userID_fk`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk9` FOREIGN KEY (`shopID_fk`) REFERENCES `retailshop` (`shopID_fk`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk12` FOREIGN KEY (`deliveryNo_fk`) REFERENCES `delivery_order` (`deliveryNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk13` FOREIGN KEY (`shopID_fk`) REFERENCES `retailshop` (`shopID_fk`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk14` FOREIGN KEY (`userID_fk`) REFERENCES `salesperson` (`userID_fk`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `importdealer`
--
ALTER TABLE `importdealer`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`dealerID`) REFERENCES `logintable` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk10` FOREIGN KEY (`deliveryNo_fk`) REFERENCES `delivery_order` (`deliveryNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk11` FOREIGN KEY (`shopID_fk`) REFERENCES `retailshop` (`shopID_fk`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_import`
--
ALTER TABLE `product_import`
  ADD CONSTRAINT `fkn2` FOREIGN KEY (`productID_fk`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkn3` FOREIGN KEY (`dealerID_fk`) REFERENCES `importdealer` (`dealerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `fkn1` FOREIGN KEY (`productID_fk`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `retailshop`
--
ALTER TABLE `retailshop`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`shopID_fk`) REFERENCES `logintable` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD CONSTRAINT `fk5` FOREIGN KEY (`userID_fk`) REFERENCES `logintable` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
