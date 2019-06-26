-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 17, 2019 at 05:45 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `logintable`
--

DROP TABLE IF EXISTS `logintable`;
CREATE TABLE IF NOT EXISTS `logintable` (
  `name` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
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

INSERT INTO `logintable` (`name`, `userName`, `password`, `userID`, `userType`, `email`, `address`, `contactNoMobile`, `contactNoResidential`) VALUES
('admin admin', 'admin', 'admin', 'admin123', 'admin', 'admin@gmail.com', 'kandy', 710000000, 810000000),
('shop1 shop1', 'shop', 'shop', 'shop', 'shop', 'shop@gmail.com', 'kandy', 710000000, 810000000);

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `productID` varchar(10) NOT NULL,
  `productName` varchar(20) NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_import`
--

DROP TABLE IF EXISTS `product_import`;
CREATE TABLE IF NOT EXISTS `product_import` (
  `importNo` varchar(20) NOT NULL,
  `productID_fk` varchar(10) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `dealerID_fk` varchar(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`importNo`,`productID_fk`),
  KEY `fk2` (`productID_fk`),
  KEY `FK3` (`dealerID_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

DROP TABLE IF EXISTS `product_order`;
CREATE TABLE IF NOT EXISTS `product_order` (
  `productID_fk` varchar(10) NOT NULL,
  `orderID` varchar(10) NOT NULL,
  `shopID_fk` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `quantity` varchar(10) NOT NULL,
  PRIMARY KEY (`productID_fk`,`orderID`,`shopID_fk`),
  KEY `fk7` (`shopID_fk`)
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
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk10` FOREIGN KEY (`deliveryNo_fk`) REFERENCES `delivery_order` (`deliveryNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk11` FOREIGN KEY (`shopID_fk`) REFERENCES `retailshop` (`shopID_fk`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_import`
--
ALTER TABLE `product_import`
  ADD CONSTRAINT `FK3` FOREIGN KEY (`dealerID_fk`) REFERENCES `importdealer` (`dealerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2` FOREIGN KEY (`productID_fk`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `fk6` FOREIGN KEY (`productID_fk`) REFERENCES `products` (`productID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk7` FOREIGN KEY (`shopID_fk`) REFERENCES `retailshop` (`shopID_fk`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
