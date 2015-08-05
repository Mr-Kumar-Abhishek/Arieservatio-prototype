-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Host: 127.3.208.130:3306
-- Generation Time: Aug 05, 2015 at 12:06 PM
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
-- Table structure for table `booked_seats`
--

CREATE TABLE IF NOT EXISTS `booked_seats` (
  `pnr` int(11) unsigned NOT NULL,
  `seatno` int(3) unsigned NOT NULL,
  `time_index` int(11) unsigned NOT NULL,
  PRIMARY KEY (`pnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `flight_cap`
--

CREATE TABLE IF NOT EXISTS `flight_cap` (
  `fcid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flightno` varchar(255) DEFAULT NULL,
  `economy` int(3) unsigned NOT NULL,
  `premium` int(3) unsigned NOT NULL,
  `business` int(3) unsigned NOT NULL,
  `first_class` int(3) unsigned NOT NULL,
  `time_index` int(11) unsigned NOT NULL,
  PRIMARY KEY (`fcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `flight_master`
--

CREATE TABLE IF NOT EXISTS `flight_master` (
  `fid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flightno` int(11) DEFAULT NULL,
  `airport` varchar(3) DEFAULT NULL,
  `onfly` tinyint(1) NOT NULL,
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
  `deptime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `arrtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `base_fare` decimal(8,0) NOT NULL,
  PRIMARY KEY (`time_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `waiting_list`
--

CREATE TABLE IF NOT EXISTS `waiting_list` (
  `pnr` int(11) unsigned NOT NULL,
  `time_index` int(11) unsigned NOT NULL,
  PRIMARY KEY (`pnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
