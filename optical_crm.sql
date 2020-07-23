-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2020 at 05:38 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `optical_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `Bill_id` int(15) NOT NULL,
  `Cust_id` int(15) NOT NULL,
  `Total` int(8) NOT NULL,
  `Discount` smallint(2) NOT NULL,
  `Promocode` varchar(15) NOT NULL,
  PRIMARY KEY (`Bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_id`, `Cust_id`, `Total`, `Discount`, `Promocode`) VALUES
(0, 0, 0, 0, ''),
(123, 123, 123, 12, '12');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `Category_id` int(15) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Description` text NOT NULL,
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`Category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_enqry`
--

CREATE TABLE IF NOT EXISTS `customer_enqry` (
  `Cust_enqry` int(15) NOT NULL,
  `Cust_id` int(15) NOT NULL,
  `Enqry details` text NOT NULL,
  `Product_id` int(15) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Cust_enqry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_photo`
--

CREATE TABLE IF NOT EXISTS `customer_photo` (
  `Photo_id` int(15) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Cust_id` int(15) NOT NULL,
  PRIMARY KEY (`Photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_purchase`
--

CREATE TABLE IF NOT EXISTS `customer_purchase` (
  `Purchase_id` int(15) NOT NULL,
  `Cust_id` int(15) NOT NULL,
  `Product_id` int(15) NOT NULL,
  `Quantity` smallint(2) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Order_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Delivery_Date` date NOT NULL,
  `Price` int(8) NOT NULL,
  `Bill_id` int(15) NOT NULL,
  `Discount` smallint(2) NOT NULL,
  PRIMARY KEY (`Purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_reg`
--

CREATE TABLE IF NOT EXISTS `customer_reg` (
  `Cust_id` int(15) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Phone no` int(12) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Address` text,
  PRIMARY KEY (`Cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_bill`
--

CREATE TABLE IF NOT EXISTS `inventory_bill` (
  `Inventory_bill_details` int(15) NOT NULL,
  `Vendor_id` int(15) NOT NULL,
  `Details` text NOT NULL,
  `Date` date NOT NULL,
  `Inventory_id` int(15) NOT NULL,
  PRIMARY KEY (`Inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_bill_detail`
--

CREATE TABLE IF NOT EXISTS `inventory_bill_detail` (
  `Inv_bill_details` int(15) NOT NULL,
  `Inventory_id` int(15) NOT NULL,
  `Product_id` int(15) NOT NULL,
  `Quantity` smallint(2) NOT NULL,
  `Price` int(8) NOT NULL,
  PRIMARY KEY (`Inv_bill_details`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `Manager_id` int(15) NOT NULL,
  `User_name` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`Manager_id`),
  UNIQUE KEY `User_name` (`User_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `Product_id` int(15) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Category_id` int(15) NOT NULL,
  `Purchase rate` double NOT NULL,
  `Quantity` smallint(2) NOT NULL,
  `Decription` text NOT NULL,
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_id`, `Name`, `Category_id`, `Purchase rate`, `Quantity`, `Decription`, `Status`) VALUES
(123, 'oo', 12, 123, 111, '', 11),
(12234, 'police', 222, 1433, 777, '1', 22);

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE IF NOT EXISTS `promo` (
  `Promo_id` int(15) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Discount` smallint(2) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`Promo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
