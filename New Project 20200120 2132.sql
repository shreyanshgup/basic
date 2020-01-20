-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.13-rc-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema projectinfo
--

CREATE DATABASE IF NOT EXISTS projectinfo;
USE projectinfo;

--
-- Definition of table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE `admin_login` (
  `aid` int(10) unsigned NOT NULL auto_increment,
  `uname` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` (`aid`,`uname`,`pwd`) VALUES 
 (1,'admin','admin123');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;


--
-- Definition of table `group_master`
--

DROP TABLE IF EXISTS `group_master`;
CREATE TABLE `group_master` (
  `gpid` int(10) unsigned NOT NULL auto_increment,
  `tid` int(10) unsigned NOT NULL,
  `eno1` varchar(45) NOT NULL,
  `eno2` varchar(45) default NULL,
  `eno3` varchar(45) default NULL,
  `eno4` varchar(45) default NULL,
  `date` varchar(45) default NULL,
  `ptitle` varchar(45) default NULL,
  PRIMARY KEY  (`gpid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_master`
--

/*!40000 ALTER TABLE `group_master` DISABLE KEYS */;
INSERT INTO `group_master` (`gpid`,`tid`,`eno1`,`eno2`,`eno3`,`eno4`,`date`,`ptitle`) VALUES 
 (8,4,'0176CS171000','0176CS171001','0176CS171102','0176CS171003','19/Jan/2020','PROJECT HANDLER'),
 (9,5,'0176CS171001','0176CS171004','0176CS171100',NULL,'19/Jan/2020','HEALTH MANAGEMENT SYSTEM'),
 (10,4,'0176CS171001','0176CS171004','0176CS171111','0176CS171100','20/Jan/2020','rashan ');
/*!40000 ALTER TABLE `group_master` ENABLE KEYS */;


--
-- Definition of table `guide`
--

DROP TABLE IF EXISTS `guide`;
CREATE TABLE `guide` (
  `gid` int(10) unsigned NOT NULL auto_increment,
  `tid` int(10) unsigned NOT NULL,
  `gname` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `mno` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY  (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide`
--

/*!40000 ALTER TABLE `guide` DISABLE KEYS */;
INSERT INTO `guide` (`gid`,`tid`,`gname`,`pwd`,`gender`,`mno`,`email`) VALUES 
 (5,4,'Rajesh rai','1234','Male','845747878','sk@gmail.com'),
 (6,5,'sk garg','1234','Male','9415414015','skg@gmail.com'),
 (7,6,'Nitesh kumar','Nitesh@77','Male','9415141112','shreyanshgupta.77@gmail.com');
/*!40000 ALTER TABLE `guide` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `eno` varchar(80) NOT NULL,
  `name` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `section` varchar(45) NOT NULL,
  `sem` varchar(45) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `mno` varchar(45) NOT NULL,
  PRIMARY KEY  (`eno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`eno`,`name`,`pwd`,`gender`,`section`,`sem`,`branch`,`mno`) VALUES 
 ('0176CS171000','shreyansh gupta','1234','Male','B','4','CSE','9415141112'),
 ('0176CS171001','akash','1234','Male','B','3','CE','9415414000'),
 ('0176CS171003','Satyajeet Rajput','1234','Male','A','3','IT','9415414000'),
 ('0176CS171004','shubham jain','1234','Male','A','3','CSE','9415414015'),
 ('0176CS171005','saransh','1234','Male','A','3','CSE','9993166917'),
 ('0176CS171006','sahu','Sakash@77','Male','B','4','CSE','9415141112');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Definition of table `technology`
--

DROP TABLE IF EXISTS `technology`;
CREATE TABLE `technology` (
  `tid` int(10) unsigned NOT NULL auto_increment,
  `tname` varchar(45) NOT NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technology`
--

/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` (`tid`,`tname`) VALUES 
 (4,'JAVA'),
 (5,'PYTHON'),
 (6,'C++');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
