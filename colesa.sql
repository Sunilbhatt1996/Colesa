-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2017 at 10:09 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `colesa`
--

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE IF NOT EXISTS `Comments` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `postId` int(5) DEFAULT NULL,
  `contents` varchar(1000) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `cdate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Comments`
--

INSERT INTO `Comments` (`id`, `postId`, `contents`, `uname`, `cdate`) VALUES
(2, 3, 'just worthless and cheap.', 'Anju', '28/4/17'),
(3, 3, 'It is meaningless post.', 'Chetna', '2/5/17'),
(4, 4, 'I want to contat you kindly share your number.', 'Chetna', '2/5/17');

-- --------------------------------------------------------

--
-- Table structure for table `Messages`
--

CREATE TABLE IF NOT EXISTS `Messages` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sender` int(5) NOT NULL,
  `receiver` int(5) NOT NULL,
  `title` varchar(150) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `msgDate` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Messages`
--

INSERT INTO `Messages` (`id`, `sender`, `receiver`, `title`, `text`, `msgDate`) VALUES
(1, 3, 4, 'Dummy Question', 'Can you help me?', '2/5/17'),
(2, 3, 2, 'Second Question', 'I am asking silly questions...', '2/5/17');

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE IF NOT EXISTS `Posts` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `userId` int(5) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `contents` varchar(1000) DEFAULT NULL,
  `pdate` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`id`, `userId`, `title`, `contents`, `pdate`) VALUES
(3, 1, 'aaa', 'bbbbbbbbbbbbbbb', '28/4/17');

-- --------------------------------------------------------

--
-- Table structure for table `Replies`
--

CREATE TABLE IF NOT EXISTS `Replies` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `msgId` int(5) NOT NULL,
  `userId` int(5) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `rdate` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Replies`
--

INSERT INTO `Replies` (`id`, `msgId`, `userId`, `text`, `rdate`) VALUES
(1, 2, 2, 'Ask meaningful question to expect sane replies.', '2/5/17');

-- --------------------------------------------------------

--
-- Table structure for table `UserMaster`
--

CREATE TABLE IF NOT EXISTS `UserMaster` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(15) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `profile` varchar(500) DEFAULT NULL,
  `imageUrl` varchar(150) DEFAULT NULL,
  `expertise` int(1) DEFAULT NULL,
  `court` int(1) DEFAULT NULL,
  `mobileNo` varchar(13) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `UserMaster`
--

INSERT INTO `UserMaster` (`id`, `title`, `firstName`, `lastName`, `email`, `password`, `city`, `profile`, `imageUrl`, `expertise`, `court`, `mobileNo`, `userType`) VALUES
(1, 'Mr.', 'Neeraj', 'Kumar', 'a@b.com', '1234', 'Noida', 'Looking for legal advice.\r\n\r\n', '1_avatar.jpeg', 0, 0, '7899556655', 3),
(2, 'Mr.', 'Raman', 'Bhalla', 'raman@gmail.com', '1234', 'Delhi', '\r\n\r\n', '2_avatar.jpeg', 2, 1, '9876543210', 1),
(3, 'Mr.', 'Amit', 'Kumar', 'amit@gmail.com', '1234', 'Delhi', '\r\nasdfsdf\r\n', '3_avatar.jpeg', 2, 1, '7788996676', 2),
(4, 'Mr.', 'Aditya', 'Raj', 'aa@bb.com', '1234', 'Mumbai', '\r\nljgljl jlsjdlfjl', '4_avatar.jpeg', 3, 3, '4455667788', 1),
(5, 'Mrs.', 'Chetna', 'Thakur', 'cc@dd.com', '1234', 'Delhi', '\r\naljsljflsdjlfj', '5_avatar.png', 0, 0, '1122334455', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
