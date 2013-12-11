-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 25, 2011 at 06:48 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `review_tracker`
--

CREATE TABLE IF NOT EXISTS `review_tracker` (
  `reqid` varchar(100) NOT NULL,
  `rname` varchar(100) DEFAULT NULL,
  `dor` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `review` int(11) DEFAULT NULL,
  `defect` varchar(500) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `completion` varchar(20) DEFAULT NULL,
  `downer` varchar(100) DEFAULT NULL,
  `rework` int(11) DEFAULT NULL,
  PRIMARY KEY (`reqid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_tracker`
--

INSERT INTO `review_tracker` (`reqid`, `rname`, `dor`, `email`, `review`, `defect`, `category`, `completion`, `downer`, `rework`) VALUES
('3DDFB3E3-E8A4-DEBB-C4CE-573414FDF182', 'Dom', '04/09/11', 'dom@unknown.com', 4, 'Requirement amiss - file # 34', 'Requirement', '30/09/11', 'Nitin Pathak', 85),
('5FF4384A-EEE4-5E26-8C6B-53ED17C25DA4', 'Nitin Pathak', '10/09/11', 'nitin@sordidcan.com', 2, 'Defect # 1', 'Requirement', '16/09/11', 'Sam', 20),
('8418E26F-165F-2F6F-1116-574467268D65', 'Jenn', '11/09/11', 'Jenn@unkown.com', 34, 'Reqirements and Code defects', 'Coding Standard', '30/09/11', 'Charu', 100),
('CF051484-C505-E5CB-DBCF-5706AA2CED19', 'Mint', '05/09/11', 'Mint@rhcp.com', 67, 'Defect significant in terms of requirements, keep contingency', 'Requirement', '29/09/11', 'Ryan', 85),
('D3A897D5-3A0B-DF2E-389A-575693D65D96', 'Dinesh', '18/09/11', 'dinesh@unknwon.com', 20, 'Design flaw', 'Design', '20/09/11', 'Chris', 40),
('D837007D-04DC-FD4C-4347-56E85FDE8DD1', 'Charu', '01/09/11', 'Charu@appspot.com', 4, 'Defect not finalized, unit tests should catch file # 1 flaws', 'Coding Standard', '13/09/11', 'Tim', 25),
('D90E261F-0684-56C3-1AEE-53EDD29D8BD8', 'Sam', '26/07/11', 'sam@unknown.com', 4, 'Files missing from the code base', 'Code', '14/09/11', 'Dave', 10),
('F416A84B-D8C5-97E2-8014-53EED02C442F', 'Dave', '28/07/11', 'dave@unknown.com', 5, 'Code not upto standard - affected files files # 1 & 2', 'Code', '27/09/11', 'April', 24);
