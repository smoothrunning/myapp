-- MySQL dump 10.11
--
-- Host: localhost    Database: myapp_development
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `description` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'First category','This is the first category','2008-07-16 23:47:14','2008-07-16 23:47:14'),(2,'second category','this is the second category','2008-07-16 23:53:00','2008-07-16 23:53:00'),(3,'blank category','nothing here','2008-07-17 00:09:23','2008-07-17 00:09:23');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_links`
--

DROP TABLE IF EXISTS `categories_links`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `categories_links` (
  `category_id` int(11) default NULL,
  `link_id` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `categories_links`
--

LOCK TABLES `categories_links` WRITE;
/*!40000 ALTER TABLE `categories_links` DISABLE KEYS */;
INSERT INTO `categories_links` VALUES (1,1),(1,2),(2,2),(2,1),(2,3);
/*!40000 ALTER TABLE `categories_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercises`
--

DROP TABLE IF EXISTS `exercises`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `exercises` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `picture` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `target_muscle_id` int(11) default NULL,
  `instruction` varchar(255) default NULL,
  `photo_file_name` varchar(255) default NULL,
  `photo_content_type` varchar(255) default NULL,
  `photo_file_size` int(11) default NULL,
  `photo_updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (26,'bicep curl 2',NULL,'2008-12-06 04:54:25','2009-03-29 09:52:53',5,'asasaS','girl_doing_yoga_4_colours.jpg','image/jpeg',3263,'2009-03-29 09:52:52'),(27,'Tricep 1',NULL,'2008-12-06 05:00:21','2008-12-10 11:05:29',6,'sadasdsad','daves_passport001.jpg','image/jpeg',210871,'2008-12-06 05:46:17'),(28,'tricep 3',NULL,'2008-12-06 05:36:44','2008-12-10 11:05:29',6,'bbbbb','sandy_desert.png','image/png',249015,'2008-12-06 05:46:19'),(32,'bicep curl 3',NULL,'2008-12-06 08:04:02','2009-06-10 12:04:07',5,'asdfasasf aw dawdasd','image388.jpg','image/jpeg',78062,'2009-06-10 12:04:06'),(33,'read lots',NULL,'2009-03-29 10:40:38','2009-03-29 10:41:51',7,'get a book  open it and read it','bike_images.jpg','image/jpeg',2579,'2009-03-29 10:41:48'),(34,'drink lots',NULL,'2009-03-29 10:40:38','2009-03-29 10:41:52',7,'open a beer or two and skull','colourful_food.jpg','image/jpeg',4530,'2009-03-29 10:41:50'),(35,'qaz',NULL,'2009-06-10 12:02:19','2009-06-10 12:03:21',5,'qqaz','image2951.jpg','image/jpeg',13569,'2009-06-10 12:03:20');
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `links` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `description` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'http://localhost:3000/about','Link 1 URL','This is link 1 URL','2008-07-16 23:52:25','2008-07-21 10:04:24'),(2,'www.nab.com.au','the second categpry','This is the second category URL\r\nupdated','2008-07-16 23:53:53','2009-08-10 08:09:20'),(3,' a new link','new link','new link','2008-08-24 08:23:25','2008-08-24 08:23:25');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `company` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `subject` varchar(255) default NULL,
  `body` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (5,'amanda','smooth running','phone','amanda,falvey@gmail.com','test multippart email','bidy of multi part','2008-07-21 10:57:54','2008-07-21 10:57:54'),(6,'dave','da mand','','david.falvey@gmail.com','multip part test 2','body multi part','2008-07-21 11:02:36','2008-07-21 11:02:36'),(7,'test mesage','test','','test@test.com','test','test','2009-06-07 11:05:23','2009-06-07 11:05:23'),(9,'David Falvey','','0418 489938','david.falvey@gmail.com','group training','I want some','2009-08-11 11:03:29','2009-08-11 11:03:29');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `body` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `admin` tinyint(1) default NULL,
  `parent_id` int(11) default NULL,
  `navlabel` varchar(255) default NULL,
  `position` int(11) default NULL,
  `redirect` tinyint(1) default NULL,
  `action_name` varchar(255) default NULL,
  `controller_name` varchar(255) default NULL,
  `navcolor` varchar(255) default NULL,
  `member_page` tinyint(1) default NULL,
  `public_page` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (2,'About','About Me','<div id = \"framed_area\">\n<div id=\"frame1\" style=\"width:52%;margin-left: 0px;\">\nMy life hasn’t always ‘run smoothly’.<br>\nI had been overweight for most of my life. \n\nIn 2005, I was back at the gym, giving it another go. For the first 6 months<span style=\"font-weight: bold; color: #0099FF;\"> I LOST 5kg</span> then <span style=\"font-weight: bold; color: #0099FF;\">GAINED back 6kg.</span>\n\nThen I discovered personal training and by working with my trainer<span style=\"font-weight: bold; color: #0099FF;\"> I lost 17kg</span> over the next 6 months.\n\nWith help, continued support and knowledge –<br> \n<span style=\"font-weight: bold; color: #0099FF;\"> I FINALLY GOT IT.</span>\n\n<span style=\"font-weight: bold; color: #0099FF;\"> NOW, I live an active, healthy life.</span> I found doing things outdoors was so much more fun than being in the gym. \nI love doing outdoor workouts in the fresh air – in the park or down on the beach. I go bike riding with my kids, kayaking with my husband and I love to run.\n\nI entered my first ‘fun run’ at the age of 42, running 12km. It was a fantastic feeling. I even ran 10km on The Great Wall of China. I never imagined I would WANT to do that, \nlet alone be ABLE to do it.\n\nI’ve changed my life, and I want to help you change yours.\n\nI promise you, I will be there to help and support you, \nso that <span style=\"font-weight: bold; color: #0099FF;\"> YOU can achieve YOUR DREAMS.</span>\n\nAmanda Falvey\n</div>\n<div id=\"frame2\"style=\"width:40%\" >\n<div style=\"position: relative; float:left;top:50px;left:-40px \">\n<span><img src=\"images\\aboutme1.jpg\" height=\"120\" width= \"200\"></span></div>\n<div style=\"position: relative; float: right;right :20px;top:20px\">\n<span><img src=\"images\\aboutme2.jpg\" height=\"150\" width= \"120\"></span></div>\n<div style=\"position: relative; float: left;left:-40px;top:75px\">\n<span><img src=\"images\\aboutme3.jpg\" height=\"178\" width= \"134\"></span></div>\n<div style=\"position: relative; float: right;right:20px;top: 55px;margin-bottom:50px\">\n<span><img src=\"images\\aboutme4.jpg\" height=\"160\" width= \"220\"></span></div>\n</div>\n\n<div id=\"frame3\" style=\" background-color: #0099FF \">\n<span>About Me</span></div>\n\n</div>\n','2008-07-13 13:44:53','2009-08-30 09:53:33',0,NULL,'About Me',6,0,'','','#0099FF',1,1),(3,'Resources','Resources','<h1>Smooth Running Resources</h1>\r\n<h2> list of events to come</h2>\r\n\r\n\r\n<lb>anything</lb>\r\n\r\nmore pf the same','2008-07-13 13:45:57','2009-08-10 08:15:27',1,NULL,'Resources',6,1,'list','links','green',0,0),(4,'Contact','Contact Amanda','<h1>Contact Amanda</h1>','2008-07-13 13:46:49','2009-08-25 10:57:24',0,NULL,'Contact us',5,1,'new','messages','limeGreen',1,1),(5,'admin','Administration','h1. Admin pages\n\n\"Maintain Programs\":/programs\n\n\"Exercises Set Up\":/target_muscles\n\n\"Page Admin\":/pages\n\n\"User Admin\":/users\n\n\"Links Admin\":/links\n\n\"Categories Admin\":/categories\n\n\"Message Admin\":/messages\n','2008-07-15 00:16:01','2008-10-26 20:04:01',1,NULL,'Administration',99,0,'','',NULL,NULL,NULL),(7,'events ','Events','this is the events page','2008-07-16 12:56:37','2009-08-10 08:30:53',0,NULL,'Scheduled Events',1,0,'','','red',0,0),(8,'Races times','Race Times','Race times page\r\n\r\nh1. what you want to do','2008-07-16 12:57:39','2009-08-10 08:30:28',0,NULL,'Your Races Times',2,0,'','','',0,0),(9,'Fitn\'ChatClub','F.I.T and Chat Club','<div id=\"framed_area\">\n<div id=\"frame1\" style=\"font-size:11pt\" >\nCome and join a group of like minded people who want to <br>\n<span style=\"color:limegreen;font-style:italic\">get fit, have fun & improve their lifestyle.</span>\n\nWe start with a <span style=\"color:limegreen;font-style:italic\">40 min outdoor group workout</span> at beautiful Umina Beach. All fitness levels are catered for, so no one gets left behind.\n\nThen it’s back to the café for a cuppa & a chat—for about 20mins. \n\nTopics include: Overcoming challenges, Setting goals, Creating a healthy mind set, Benefits of a food diary, Exercises you can do anywhere ... and so much more.\n\nAfter an hour you will leave feeling energized & armed with information to help you live the life you want.\n\n<span style=\"color:limegreen;font-weight:bolder;font-size:12pt\">1 session a week—$20 each</span><br>\n<span style=\"font-size:12pt\">2 sessions a week—$15 each</span>\n\n<span style=\"color:limegreen;font-weight:bolder;font-size:14pt\">Meet at Umina Beach Surf Club</span><br>\n<span style=\"color:limegreen;font-size:12pt;font-weight:bolder;\">Mondays and Thursdays 9.30am</span>\n\n</span></div>\n\n<div id = \"frame2\">\n<div style=\"position: relative; float:left;left :10px; top: 20px;\"><span><img src=\"images\\fiit7.jpg\" height=\"140\" width= \"220\" class=\"imgborder\"></span></div>\n<div style=\"position: relative; float: right; right:50px; top: 70px;\"><span><img src=\"images\\fiit1a.jpg\" height=\"90\" width= \"120\" class=\"imgborder\"></span></div>\n<div style=\"position: relative; float:left;left:-225px; top:90px\"><span><img src=\"images\\fiit6.jpg\" height=\"170\" width= \"180\" class=\"imgborder\"></span></div>\n<div style=\"position: relative; float: right;top:-85px;right:30px; \"><span><img src=\"images\\fiit5.jpg\" height=\"120\" width= \"185\" class=\"imgborder\"></span></div>\n</div>\n<div id= \"frame3\" style=\"background-color: limegreen;margin-top: -15px;\">\n<span>Fit n\' Chat Club</span>\n</div>\n</div>\n\n\n\n\n\n\n\n\n','2009-03-31 09:46:03','2009-08-25 10:44:07',0,NULL,'Fit n\' Chat club',2,0,'','','limegreen',1,1),(10,'OutdoorGroupTraining','Group Training','<div id = \"framed_area\">\n\n<div id = \"frame1\" >\n<p>Group training is an amazing way to<br><span style=\"color:#0099FF; font-style:italic;\">get fit and keep fit.</span></p>\n<p>Working with a group of like minded people<br>you’ll <span style=\"color:#0099FF; font-style:italic;\">have fun</span> and get an<br><span style=\"color:#0099FF; font-style:italic;\">amazing workout</span> at the same time.</p>\n<p>Together you <span style=\"color:#0099FF; font-style:italic;\">motivate and inspire</span> each other to be<br><span style=\"color:#0099FF; font-style:italic;\">the best you can be.</span></p>\n<p>Group fitness may <span style=\"color:#0099FF; font-style:italic;\">challenge you</span> and push you out of<br>your comfort zone, but it is never boring.</p>\n<p>Combining cardio, resistance training and boxing -<br><span style=\"color:#0099FF; font-style:italic;\">every class is different.</span></p>\n<p>Group fitness is <span style=\"color:#0099FF; font-style:italic;\">interactive.</span> It is not a choreographed<br>exercise class and it is not a boot camp.<br>\nIt\'s fitness for everyone,<br><span style=\"color:#0099FF; font-style:italic;\">from only $10 for a 1 hour session.</span></p>\n<p>So, get out of the gym and into………<br>\n<span style=\"font-family: kristen itc; text-align: center; color:#0099FF; font-weight:bold;\">THE GREAT OUTDOORS</span></p>\n</div>\n\n\n<div id = \"frame2\" style=\"margin-top: 30px;\">\n<div style=\"position: relative; float:left;left :10px; top: 21px;\"><span><img src=\"images\\group1.jpg\" height=\"148\" width= \"158\" class=\"imgborder\"></span></div>\n<div style=\"position: relative; float: right; right:65px; top: -10px;\"><span><img src=\"images\\group2.jpg\" height=\"180\" width= \"165\" class=\"imgborder\"></span></div>\n<div style=\"position: relative; float: left; left:5px;top:45px; \"><span><img src=\"images\\group3.jpg\" height=\"140\" width= \"200\" class=\"imgborder\"></span></div>\n<div style=\"position: relative; float: right;;top:13px;right:15px \"><span><img src=\"images\\group4.jpg\" height=\"140\" width= \"180\" class=\"imgborder\"></span></div>\n</div>\n<div id=\"frame3\" style=\" background-color: #0099FF \">\n<span>Outdoor Group Training</span></div>\n</div>\n\n\n\n','2009-05-05 10:02:59','2009-08-30 09:52:11',0,NULL,'Group Training',2,0,'','','#0099FF',1,1),(11,'PersonalTraining','Personal Training','<div id=\"framed_area\">\n<div id=\"frame1\" style=\"top :10px\"><br>\n<span style=\"font-weight: bold; color: darkmagenta;\">WHAT DO YOU WANT TO ACHIEVE?</span>\n\nThe fitness to run a marathon—or walk around the<br>block without getting puffed.\n\nThe energy to keep up with the kids—or to feel like<br>a kid again.\n\nThe confidence of looking and feeling great.\n\n<span style=\"font-weight: bold; color: darkmagenta;\">Get Motivated<br></span>\n<span style=\"font-weight: bold; color: white;\">Challenge Yourself<br></span>\n<span style=\"font-weight: bold; color: darkmagenta;\">Be the Best You can Be</span>\n\nWhatever <span style=\"font-weight: bold; color: darkmagenta;\">YOUR</span> goal<br>\n<span style=\"font-weight: bold; color: darkmagenta;\">I WILL HELP YOU GET THERE</span>\n\nAt the park, on the beach, in the bush<br>\nor in my personal studio.\n\n<span style=\"font-weight: bold; color: darkmagenta;\">30mins-$40    45mins-$50    60mins-$70</span>\n\n</div>\n<div id=\"frame2\" >\n<div style=\"position: relative; float:left;top:32px;left:70px; \">\n<span><img src=\"images\\pt1.jpg\" height=\"140\" width= \"140\" class=\"imgborder\"></span></div>\n<div style=\"position: relative; float: clear;left :100px; top:15px\">\n<span><img src=\"images\\pt2.jpg\" height=\"157\" width= \"124\" class=\"imgborder\"></span></div>\n<div style=\"position: relative; float: left;left:35px;top:35px; margin-bottom:20px\">\n<span><img src=\"images\\pt3.jpg\" height=\"162\" width= \"125\" class=\"imgborder\"></span></div>\n<div style=\"position: relative; float: right;right:45px;top: 35px\">\n<span><img src=\"images\\pt4.jpg\" height=\"140\" width= \"190\" class=\"imgborder\"></span></div>\n</div>\n\n<div id=\"frame3\" style=\" background-color: darkmagenta\">\n<span>Personal Training</span></div>\n\n\n</div>','2009-05-13 10:29:25','2009-08-30 08:08:46',0,NULL,'Personal Training',3,0,'','','darkmagenta',1,1),(12,'Users','Users Admin','','2009-06-07 08:23:26','2009-06-07 10:37:21',1,NULL,'Users',4,1,'index','users',NULL,NULL,NULL),(13,'Programs','Programs','','2009-06-07 10:33:41','2009-08-25 10:46:12',1,NULL,'My Programs',6,1,'index','programs','DarkMagenta',1,0),(14,'Page Administration','Page Admininstration','','2009-06-07 10:34:54','2009-06-07 10:37:46',1,NULL,'Pages',4,1,'index','Pages',NULL,NULL,NULL),(15,'Exercises','Maintain Exercises','','2009-06-07 10:36:04','2009-06-07 10:39:19',1,NULL,'Exercises',2,1,'index','target_muscles',NULL,NULL,NULL),(16,'Links','Links','','2009-06-07 11:09:50','2009-08-10 08:08:04',1,NULL,'Links',5,1,'index','links','skyblue',0,0),(17,'Categories','Categories','','2009-06-07 11:10:43','2009-06-07 11:10:43',1,NULL,'Categories',6,1,'index','categories',NULL,NULL,NULL),(18,'Email Messages','Messages','','2009-06-07 11:11:57','2009-06-07 11:12:35',1,NULL,'Email Messages',6,1,'index','messages',NULL,NULL,NULL),(19,'Home','Home','<div id=\"framed_area\" >\n<p style=\"color: deepskyblue;font-family: kristen itc;text-align:center;font-size: 22pt;position: relative;top: -20px;\" \">It\'s so easy when everything in your life is running smoothly</p>\n<div id = \"frame1\"; style=\"font-family: kristen itc;\">\n<p style=\"color: darkmagenta; font-size: 22pt;position: relative;top: -65px;text-align:left\"> Smooth.....</P>\n<P style=\"font-size: 12pt;position: relative;top: -70px\">\nChoosing healthy food options<br>\nCreating quick and tasty meals<br>\nFinding time to exercise<br>\nTaking time out to relax<br>\nChallenging ourselves<br>\nStaying motivated<br>\nDetermined to finsih what we start<br>\nDedicated to make it happen</p>\n<p style=\"padding-left:8em; font-size: 22pt;color: darkmagenta;position: relative;top: -80px;\">........... Running </p>\n<p style=\"padding-left:2em;text-align: center;position: relative;top: -80px;\">So here at <span style=\"color: darkmagenta;font-size: 14pt;\">Smooth Running</span> we want to help <br><span style=\"color: darkmagenta;font-size: 14pt;\">YOU</span><br> so that your life can run smooth too.</p></div>\n\n<div id = \"frame2\" >\n<div style=\"position: relative; float: left;top:41px;left: 75px \">\n<span>Eating Well</span><br><span >\n<img src=\"images\\EatingWell.jpg\" title=\"Eating Well\" alt=\"Eating Well\" height=\"120\" width= \"150\" class=\"imgborder\"></span></div>\n<div style=\"position: relative; float: right;top: 12px;right:70px\">\n<span> Relaxing</span><br><span>\n<img src=\"images\\Relaxing.jpg\" title=\"Relaxing\" alt=\"Relaxing\" height=\"150\" width= \"100\" class=\"imgborder\"></span></div>\n<div style=\"position: relative; float:clear; left:-143px;top:215px\">\n<img src=\"images\\BeingActive.jpg\" title=\"Being Active\" alt=\"Being Active\" height=\"200\" width= \"145\" class=\"imgborder\"><span >Being Active</span><br></div>\n<div style=\"position: relative; float: right;right: 40px;top:-10px\">\n<img src=\"images\\ChallengingYourself.jpg\" title=\"Challenge Yourself\" alt=\"Challenge Yourself\" height=\"130\" width= \"200\" class=\"imgborder\">\n<span>Challenging Yourself</span>\n</div></div>\n\n\n\n\n\n\n\n','2009-06-08 20:57:53','2009-08-30 08:08:06',0,NULL,'Home',1,0,'','','darkmagenta',1,1),(20,'Testimonials','Testimonials','list of all testimonials\r\n\r\n\r\nh2. From dave\r\n\r\nh2.  Margie','2009-08-10 08:10:55','2009-08-11 09:45:12',1,NULL,'Testimonials',7,0,'','','green',0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_exercises`
--

DROP TABLE IF EXISTS `program_exercises`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `program_exercises` (
  `id` int(11) NOT NULL auto_increment,
  `target_muscle_id` int(11) default NULL,
  `exercise_id` int(11) default NULL,
  `repititions` int(11) default NULL,
  `weight` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `program_id` int(11) default NULL,
  `position` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `program_exercises`
--

LOCK TABLES `program_exercises` WRITE;
/*!40000 ALTER TABLE `program_exercises` DISABLE KEYS */;
INSERT INTO `program_exercises` VALUES (39,5,26,1,'1','2009-03-31 09:08:43','2009-07-10 08:36:17',11,1),(43,5,27,2,'2','2009-06-10 12:07:59','2009-06-10 12:07:59',7,1),(44,5,27,2,'2','2009-07-10 08:21:55','2009-07-10 08:37:47',11,1),(45,5,33,3,'3','2009-07-10 08:22:20','2009-07-10 08:37:42',11,1),(47,5,26,5,'3','2009-07-10 08:37:21','2009-07-10 08:37:47',11,1),(49,5,26,1,'1','2009-07-14 10:13:10','2009-07-16 10:17:28',9,1),(50,5,26,2,'2','2009-07-14 10:13:10','2009-07-14 11:41:17',9,1),(51,5,26,4,'4','2009-07-14 10:13:10','2009-07-14 11:41:17',9,1),(55,5,26,0,'0','2009-07-15 21:09:13','2009-07-15 21:09:13',11,1),(56,5,26,8,'8','2009-07-22 02:47:02','2009-07-22 02:47:02',11,1),(57,5,26,5,'5','2009-07-22 11:48:32','2009-07-22 11:48:32',9,1),(58,5,26,55,'5','2009-08-04 11:26:39','2009-08-04 11:26:39',9,1);
/*!40000 ALTER TABLE `program_exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `programs` (
  `id` int(11) NOT NULL auto_increment,
  `description` text,
  `user_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `completed` tinyint(1) default NULL,
  `start_date` datetime default NULL,
  `follow_up_date` datetime default NULL,
  `warm_up` varchar(100) default NULL,
  `cool_down` varchar(100) default NULL,
  `remember` varchar(255) default NULL,
  `strech` varchar(255) default NULL,
  `exercise_type` varchar(15) default NULL,
  `goal` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES (9,'do the weights 5 times a week in the morning',7,'2008-08-31 13:44:00','2009-07-14 11:42:37',0,'2008-10-15 00:00:00','2008-12-11 00:00:00','war up','cool down','remember','stretch','cardio','be a good goal'),(11,'admins first program \r\nicfsaf zxvczxvcvs  safsafsafsa  safsafasfasfsaf asfasfsafsaf  safasfasf safasfsa asfsafsa asfasf asafsafsa asfasfas asf asfsa fa sfsa\r\nhere is more text if you need it\r\nit auto scolls',2,'2008-10-15 21:02:51','2008-12-03 20:13:51',0,'2008-10-21 00:00:00','2008-11-01 00:00:00','','','','sadsadsa','recdd','admin goal 1'),(12,'go admon',2,'2008-11-01 08:25:51','2008-11-01 08:25:51',0,'2008-11-01 00:00:00','2008-12-27 00:00:00','warm up admin','coold down admin','','','cardio','admins second goal');
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20080713133325'),('20080714120451'),('20080714133210'),('20080716100108'),('20080716230754'),('20080716230912'),('20080716231345'),('20080717051830'),('20080717093159'),('20080806102153'),('20080806103937'),('20080820233431'),('20080820233928'),('20080824074208'),('20080824133103'),('20080831235014'),('20081016065756'),('20081016092055'),('20081026041046'),('20081026080101'),('20081026083022'),('20081026101233'),('20081027083348'),('20081203111920'),('20081203193851'),('20081203201622'),('20081209090300'),('20081210065237'),('20081214064151'),('20090315195021'),('20090607123635'),('20090609112021'),('20090609123100');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_muscles`
--

DROP TABLE IF EXISTS `target_muscles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `target_muscles` (
  `id` int(11) NOT NULL auto_increment,
  `muscle` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `target_muscles`
--

LOCK TABLES `target_muscles` WRITE;
/*!40000 ALTER TABLE `target_muscles` DISABLE KEYS */;
INSERT INTO `target_muscles` VALUES (5,'Biceps - TM','2008-10-26 10:29:08','2009-01-08 07:21:07'),(6,'Triceps','2008-10-26 10:30:07','2008-10-26 10:30:07'),(7,'big head','2009-03-29 10:40:38','2009-03-29 10:40:38');
/*!40000 ALTER TABLE `target_muscles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `crypted_password` varchar(40) default NULL,
  `salt` varchar(40) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `remember_token` varchar(255) default NULL,
  `remember_token_expires_at` datetime default NULL,
  `admin_user` tinyint(1) default NULL,
  `photo_file_name` varchar(255) default NULL,
  `photo_content_type` varchar(255) default NULL,
  `photo_file_size` int(11) default NULL,
  `photo_updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Admin','admin@sample.com','b4ae4ad0fde2b58d9d95873f1a8499316c85d2e4','06adbf31830b4b41e2bfd381a40fe936f9749946','2008-07-14 13:36:27','2009-03-17 09:09:24',NULL,NULL,1,'TN_IMG_3587.JPG','image/jpeg',2010,'2009-03-17 09:09:18'),(5,'amanda','amanda@email.com','46dd3b0731e9a86e8f7e440408ef6f8bb5d835dc','5fad656072efd72ba316b418be3909cd9501ffce','2008-07-14 14:37:39','2008-12-06 03:07:33',NULL,NULL,1,'TN_IMG_3597.JPG','image/jpeg',4240,'2008-12-06 03:07:32'),(7,'Adam','adam@email.com','80f7a6c24f886a6058c98376773b7af355431f2a','8b68af72a9211de78dd980603da784512320335f','2008-08-13 13:08:47','2009-07-14 11:45:37',NULL,NULL,0,'TN_IMG_3621.JPG','image/jpeg',3653,'2008-12-04 06:37:18'),(11,'sarah','sfalvey7@gmail.com','9def937eb498d293a0969dc79b363b366c08698e','6e84416dcc09879cdaa268eea9d16f8894f1a107','2009-08-30 10:00:49','2009-08-30 10:02:24',NULL,NULL,0,NULL,NULL,NULL,NULL),(12,'sarah2','sea@qqa','92a4ab094394bcf4d7ca1a89fe13ae0eded23539','31523ecf35bb1168178730ef41110f98da11a628','2009-08-30 10:14:27','2009-08-30 10:14:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-09-09 12:48:54
