-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2015 at 08:54 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_project`
--

CREATE TABLE IF NOT EXISTS `add_project` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(50) NOT NULL,
  `pro_type` varchar(50) NOT NULL,
  `final_date` date NOT NULL,
  `pro_req` varchar(200) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=2 ;

--
-- Dumping data for table `add_project`
--

INSERT INTO `add_project` (`pro_id`, `pro_name`, `pro_type`, `final_date`, `pro_req`, `file_path`) VALUES
(1, 'Hotel management', 'Embedded', '2015-11-30', 'hbrtfuhteh', 'files/cv.txt');

-- --------------------------------------------------------

--
-- Table structure for table `assign_project`
--

CREATE TABLE IF NOT EXISTS `assign_project` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(50) NOT NULL,
  `pro_type` varchar(20) DEFAULT NULL,
  `final_date` date NOT NULL,
  `req_date` date NOT NULL,
  `req_emp` varchar(3) NOT NULL,
  `des_date` date NOT NULL,
  `des_emp` varchar(3) NOT NULL,
  `dev_date` date NOT NULL,
  `dev_emp` varchar(3) NOT NULL,
  `test_date` date NOT NULL,
  `test_emp` varchar(3) NOT NULL,
  `imp_date` date NOT NULL,
  `imp_emp` varchar(3) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `assign_project`
--

INSERT INTO `assign_project` (`pro_id`, `pro_name`, `pro_type`, `final_date`, `req_date`, `req_emp`, `des_date`, `des_emp`, `dev_date`, `dev_emp`, `test_date`, `test_emp`, `imp_date`, `imp_emp`) VALUES
(1, 'Hotel management', 'Embedded', '2015-11-30', '2015-11-04', '4', '2015-11-05', '4', '2015-11-10', '4', '2015-11-19', '4', '2015-11-27', '4');

-- --------------------------------------------------------

--
-- Table structure for table `design_team`
--

CREATE TABLE IF NOT EXISTS `design_team` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(50) NOT NULL,
  `pro_type` varchar(20) NOT NULL,
  `des_date` date NOT NULL,
  `down_file` varchar(100) NOT NULL,
  `file_path1` varchar(100) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `design_team`
--

INSERT INTO `design_team` (`pro_id`, `pro_name`, `pro_type`, `des_date`, `down_file`, `file_path1`) VALUES
(2, 'Hotel management', 'Embedded', '2015-11-05', 'files/new index.docx', 'files/30.docx');

-- --------------------------------------------------------

--
-- Table structure for table `dev_team`
--

CREATE TABLE IF NOT EXISTS `dev_team` (
  `pro_id` int(50) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_type` varchar(100) NOT NULL,
  `dev_date` date NOT NULL,
  `down_file` varchar(200) NOT NULL,
  `file_path1` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pm_login`
--

CREATE TABLE IF NOT EXISTS `pm_login` (
  `username` varchar(50) NOT NULL,
  `pm_pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_manager`
--

CREATE TABLE IF NOT EXISTS `project_manager` (
  `req_id` varchar(50) NOT NULL,
  `req_pwd` int(20) NOT NULL,
  `des_id` varchar(50) NOT NULL,
  `des_pwd` int(20) NOT NULL,
  `dev_id` varchar(50) NOT NULL,
  `dev_pwd` int(20) NOT NULL,
  `test_id` varchar(50) NOT NULL,
  `test_pwd` int(20) NOT NULL,
  `imp_id` varchar(50) NOT NULL,
  `imp_pwd` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_manager`
--

INSERT INTO `project_manager` (`req_id`, `req_pwd`, `des_id`, `des_pwd`, `dev_id`, `dev_pwd`, `test_id`, `test_pwd`, `imp_id`, `imp_pwd`) VALUES
('req', 321, 'des', 321, 'dev', 321, 'test', 321, 'imp', 321);

-- --------------------------------------------------------

--
-- Table structure for table `req_team`
--

CREATE TABLE IF NOT EXISTS `req_team` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(50) NOT NULL,
  `pro_type` varchar(50) NOT NULL,
  `req_date` date NOT NULL,
  `req_file` varchar(50) DEFAULT NULL,
  `down_req` varchar(200) NOT NULL,
  `file_path1` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `req_team`
--

INSERT INTO `req_team` (`pro_id`, `pro_name`, `pro_type`, `req_date`, `req_file`, `down_req`, `file_path1`) VALUES
(4, 'Hotel management', 'Embedded', '2015-11-30', 'files/cv.txt', 'hbrtfuhteh', 'files/new index.docx');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `cmp_name` varchar(50) NOT NULL,
  `cmp_eid` varchar(20) NOT NULL,
  `cmp_contact` int(20) NOT NULL,
  `pm_eid` varchar(20) NOT NULL,
  `pm_pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`cmp_name`, `cmp_eid`, `cmp_contact`, `pm_eid`, `pm_pwd`) VALUES
('bharti', 'softlab@gmail.com', 123265, 'pm@gmail.com', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
