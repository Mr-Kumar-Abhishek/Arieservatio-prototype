-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Host: 127.3.208.130:3306
-- Generation Time: Aug 05, 2015 at 08:36 AM
-- Server version: 5.5.41
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `arieservatio`
--

-- --------------------------------------------------------

--
-- Table structure for table `fare`
--

CREATE TABLE IF NOT EXISTS `fare` (
  `fare_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flightno` varchar(255) DEFAULT NULL,
  `depcode` varchar(3) DEFAULT NULL,
  `arrcode` varchar(3) DEFAULT NULL,
  `time_index` int(11) NOT NULL,
  PRIMARY KEY (`fare_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `flight_master`
--

CREATE TABLE IF NOT EXISTS `flight_master` (
  `fid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flightno` varchar(255) DEFAULT NULL,
  `capacity` int(3) unsigned NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `flight_schedule`
--

CREATE TABLE IF NOT EXISTS `flight_schedule` (
  `time_index` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flightno` varchar(255) DEFAULT NULL,
  `depcode` varchar(3) DEFAULT NULL,
  `arrcode` varchar(3) DEFAULT NULL,
  `deptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `arrtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`time_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
