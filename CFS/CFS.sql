/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - cfb
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`cfb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cfb`;

/*Table structure for table `college` */

DROP TABLE IF EXISTS `college`;

CREATE TABLE `college` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `collegename` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `college` */

insert  into `college`(`id`,`collegename`,`link`,`address`,`image`) values (1,'Aroura College','http://www.aurora.in/apgcu/','Uppal','college.jpg'),(2,'GITAMS','http://http://www.gitam.edu/','Gandhi Nagar, Rushikonda, Visakhapatnam-530045  Andhra Pradesh, India','gitam.jpg'),(3,'MLRIT','http://www.mlrinstitutions.ac.in/','Near Gandimysamma Police Station Road, Dundigal, Quthbullapur, Hyderabad, Telangana 500055','mlrit.jpg');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `collegename` varchar(100) DEFAULT NULL,
  `studies` int(100) DEFAULT NULL,
  `sports` int(100) DEFAULT NULL,
  `placements` int(100) DEFAULT NULL,
  `cmnt` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`collegename`,`studies`,`sports`,`placements`,`cmnt`) values ('Aroura College',1,2,3,'Nice Coolege'),('Aroura College',3,3,2,'Bad College'),('GITAMS',2,1,2,'sad'),('GITAMS',2,3,2,'sdsd'),('MLRIT',2,4,3,'dfgdsdfg');

/*Table structure for table `fresher` */

DROP TABLE IF EXISTS `fresher`;

CREATE TABLE `fresher` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `fresher` */

insert  into `fresher`(`uid`,`username`,`password`,`email`,`dob`,`address`,`cno`,`image`) values (1,'shiva','shiva','shiva@gmail.com','1991-05-11','Hyderabad','9052016340','shiva.jpg');

/*Table structure for table `placements` */

DROP TABLE IF EXISTS `placements`;

CREATE TABLE `placements` (
  `collegename` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `about` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `placements` */

insert  into `placements`(`collegename`,`company`,`about`,`date`,`cno`) values ('Aroura College','1000 projects','we need java freshsers','2017-11-09','9052016340'),('GITAMS','INFOTECH','Required Freshers','2017-11-16','9052016340'),('MLRIT','Google','Google map','2017-11-17','99888776655');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `collegename` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`uid`,`collegename`,`username`,`password`,`email`,`dob`,`address`,`cno`,`image`) values (1,'Aroura College','shiva','shiva','shiva.1000projects@gmail.com','1991-05-11','Hyderabad','9989765191','shiva.jpg'),(2,'GITAMS','krish','krish','krish@gmail.com','1991-05-11','Hyderabad','9052016340','shiva.jpg'),(3,'MLRIT','deepthi','deepthi','deepthi@gmail.com','1991-04-04','Hyderabad','9052016340','shiva.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
