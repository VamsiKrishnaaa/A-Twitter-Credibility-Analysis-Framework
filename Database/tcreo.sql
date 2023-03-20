-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2022 at 11:20 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tcreo`
--
CREATE DATABASE IF NOT EXISTS `tcreo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tcreo`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add client register_ model', 7, 'add_clientregister_model'),
(20, 'Can change client register_ model', 7, 'change_clientregister_model'),
(21, 'Can delete client register_ model', 7, 'delete_clientregister_model'),
(22, 'Can add client posts_ model', 8, 'add_clientposts_model'),
(23, 'Can change client posts_ model', 8, 'change_clientposts_model'),
(24, 'Can delete client posts_ model', 8, 'delete_clientposts_model'),
(25, 'Can add feedbacks_ model', 9, 'add_feedbacks_model'),
(26, 'Can change feedbacks_ model', 9, 'change_feedbacks_model'),
(27, 'Can delete feedbacks_ model', 9, 'delete_feedbacks_model');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'Client_Site', 'clientposts_model'),
(7, 'Client_Site', 'clientregister_model'),
(9, 'Client_Site', 'feedbacks_model'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Remote_User', '0001_initial', '2019-04-23 07:01:48.050781'),
(2, 'contenttypes', '0001_initial', '2019-04-23 07:01:49.494140'),
(3, 'auth', '0001_initial', '2019-04-23 07:02:03.837890'),
(4, 'admin', '0001_initial', '2019-04-23 07:02:05.832031'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-04-23 07:02:05.863281'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-23 07:02:07.041015'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-23 07:02:07.839843'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-23 07:02:08.330078'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-23 07:02:08.361328'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-23 07:02:08.921875'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-23 07:02:08.953125'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-23 07:02:08.989257'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-23 07:02:09.785156'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-23 07:02:10.580078'),
(15, 'sessions', '0001_initial', '2019-04-23 07:02:11.764648'),
(16, 'Remote_User', '0002_clientposts_model', '2019-04-25 05:53:57.702132'),
(17, 'Remote_User', '0003_clientposts_model_usefulcounts', '2019-04-25 10:00:02.521468'),
(18, 'Remote_User', '0004_auto_20190429_1027', '2019-04-29 04:57:32.672296'),
(19, 'Remote_User', '0005_clientposts_model_dislikes', '2019-04-29 05:15:16.668390'),
(20, 'Remote_User', '0006_Review_model', '2019-04-29 05:19:26.382257'),
(21, 'Remote_User', '0007_clientposts_model_names', '2019-04-30 04:45:46.472656');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0jpcgnd1gmwbp3e8tw54e6nxjylsogyo', 'YmM4NjE0MDQ2MzBmYWIxNzIzNTkxZjBiN2I5M2MxMzQyYTE0YmMxODp7InVzZXJpZCI6Mn0=', '2020-02-21 08:52:28.687500'),
('49qo7iki5uxczhyymi8ka7dnh6a2wva5', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-08 09:19:45.486328'),
('4df7s82pddaszour6twx23d86058ppjq', 'ZmNkODA5MmI1ZGQ0Yjk5MmZlNzEyNTcwNTcxNjk2ZWYxZTE3NThkMjp7InVzZXJpZCI6NX0=', '2020-11-23 11:49:21.396484'),
('4x6b78w9rfcn34v650kd2j7oij6atr8p', 'Zjk0Y2RlYjc4OTJhNWMyZjQyNmM4ZGRhYTVjNmVlNDFhZGE4ZmU3NTp7InVzZXJpZCI6Nn0=', '2019-12-27 12:07:42.082031'),
('5mzsdtlt06j272v2wrwrgalkkdkfjibm', 'eyJ1c2VyaWQiOjEyfQ:1n2vV4:wzz2vbQOurbew4STCc8iOhQP-NbSAi9wqRgImFNNYlA', '2022-01-13 13:29:46.710297'),
('5scjib723md7vdod1di9o4kh1hae7ola', 'eyJ1c2VyaWQiOjExfQ:1mFcNp:2HL2WszUQdcu0VYo1SlABBnW6qrHSlG5RNHNW5E8Sgg', '2021-08-30 13:10:29.011611'),
('87w901k418z2rjiwgq3fbiy9ici4o9yb', 'eyJ1c2VyaWQiOjN9:1m902I:yYksLDdtvRXuogtVBvZ8wYs8VbEaoSHsevIQ-JAwLp8', '2021-08-12 07:00:54.489192'),
('aukvjhk250p0877c7o5fclwfis9n1yda', 'eyJ1c2VyaWQiOjF9:1mFaOF:o9eNta6M3n1YmUIBLcl-kknEyGM99Wcu5wiT6Ph4v7g', '2021-08-30 11:02:47.898787'),
('b9cu6cjsfqfm5mame5dy1ikpiiy7yn3w', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:00:08.480453'),
('ct13q5fpn94zvnij8ekixwzcky2imc5e', 'YWUzM2IzMWJiYmQ3YmY2YzlkMGFlNTM1YmU5ZGM4YjQ0MmY1YTc0NTp7InVzZXJpZCI6NH0=', '2019-05-14 11:44:10.978515'),
('e07j4duysh402dedtomm8icctvs9ljgy', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:08:12.306625'),
('gxwectdcq194d28nljguylkme48ahtmv', 'eyJ1c2VyaWQiOjN9:1m6StF:2H8XctDFFPYxOkgjreUkj54ze0UvHYNkpedTtN-cpzw', '2021-08-05 07:13:05.368927'),
('hbv74sg6w6e4wp89vq807vw0xhkh5s1h', 'MzU0ZWYzNTQ3MjM4MWZlOTVjM2M1MWQ4MmE5ODE0OTlkNDRkNDkwMDp7InVzZXJpZCI6MX0=', '2020-01-10 07:40:38.067382'),
('hhtt48je70l9nzw6dee4ocuxxm9blqej', 'NGRhY2JkNmQ4ZTM4OTU0Y2UzMzFlZmZmOTgzYmE0MWVkOThiNjc2NTp7Im5hbWUiOjEsInVzZXJpZCI6MX0=', '2019-05-09 10:12:38.380843'),
('o7x1vhluuypdfmgv7fmv6nohgfn5ub55', 'NzMyZjlhNzFhZjk2ZGUzZmFiMmIzYjMwNTJkYTg5MDUzNmNlMDk4Mjp7InVzZXJpZCI6MTZ9', '2020-01-02 12:51:55.659179'),
('qnaolidvfx6bu9ra3uyqvkgva7bv92f1', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-14 05:34:50.069335'),
('qp6i001wzdsc6dcv95tefgterw1oh7mg', 'eyJ1c2VyaWQiOjEwfQ:1m9544:JZqMoxwjqIntKOXAmKcFkdYehS24fHO7vXF9OKrIpdU', '2021-08-12 12:23:04.191843'),
('tejgl09oettnyva23kqdbns5nfz5g8ug', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:19:24.387679'),
('tnc5ofkqno4nuz72m3ud120y12zupjre', 'eyJ1c2VyaWQiOjF9:1m6SbX:LVqXvYsBfyiImAg-2PNaXCUcVBYnZVVHBk8_kJljZSs', '2021-08-05 06:54:47.177365'),
('u5icgvq3qt5nthdlv99go3r804ccghbo', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:00:13.573226'),
('xt02fcofl5eqvwt7apllez3q7q4bwivg', 'eyJ1c2VyaWQiOjN9:1n2v0j:ffIrGMX5onTkUzFABAmKwX2lguT-aWQpb6xiqTnADBk', '2022-01-13 12:58:25.576340'),
('zega5sz46ivu1tb1o1mtmg3v2ysxog1w', 'eyJ1c2VyaWQiOjl9:1kvFVQ:a6pE9Pvb8Zn1waBd79T47H_AtNAHEm3G0uSOebrNUYo', '2021-01-15 08:09:52.743220');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_clientregister_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_clientregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `remote_user_clientregister_model`
--

INSERT INTO `remote_user_clientregister_model` (`id`, `username`, `email`, `password`, `phoneno`, `country`, `state`, `city`) VALUES
(1, 'Ajay', 'Ajay123@gmail.com', 'Ajay', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(2, 'Akilan', 'Akilan123@gmail.com', 'Akilan', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(3, 'Manjunath', 'tmksmanju13@gmail.com', 'Manjunath', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(4, 'Santhosh', 'Santhosh123@gmail.com', 'Santhosh', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(5, 'tmksmanju', 'tmksmanju13@gmail.com', 'tmksmanju', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(6, 'Gopi', 'Gopi.123@gmail.com', 'Gopi', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(7, 'Ashok', 'Ashok.123@gmail.com', 'Ashok', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(8, 'Raja', 'Raja.123@gmail.com', 'Raja', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(9, 'Gopalan', 'Gopalan.123@gmail.com', 'Gopalan', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(10, 'Panchal', 'Panchal123@gmail.com', 'Panchal', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(11, 'Krishnan', 'Krishnan123@gmail.com', 'Krishnan', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(12, 'Madesh', 'Madesh123@gmail.com', 'Madesh', '9535866270', 'India', 'Karnataka', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_credibility_prediction`
--

CREATE TABLE IF NOT EXISTS `remote_user_credibility_prediction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `URLs` varchar(3000) NOT NULL,
  `Headline` varchar(3000) NOT NULL,
  `Body` varchar(30000) NOT NULL,
  `Prediction` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `remote_user_credibility_prediction`
--

INSERT INTO `remote_user_credibility_prediction` (`id`, `URLs`, `Headline`, `Body`, `Prediction`) VALUES
(1, 'https://www.nytimes.com/2017/10/10/us/politics/kansas-tried-a-tax-plan-similar-to-trumps-it-failed.html?rref=collection%2Fsectioncollection%2Fpolitics', 'Kansas Tried a Tax Plan Similar to Trumpâ€™s. It Failed.', 'â€œThose are effusive political hopes â€” thatâ€™s not economic analysis,â€ said Dave Trabert, the president of the Kansas Policy Institute, a free-market think tank. â€œItâ€™s pretty common for people to hope that something is going to have a tremendous, I think Governor Brownbackâ€™s phrase was, â€˜shot of adrenaline.â€™ Thatâ€™s not how economies work.â€\r\nAdvertisement Continue reading the main story\r\nMr. Beaty, the Kansas football coach, was able to shield at least $575,000 a year from income taxation by routing that money through his limited liability company, according to state records. (That amount grew to $1.375 million a year in a contract extension Mr. Beaty signed in December 2016.) Next year, as a result of the recent change in state law, Mr. Beaty will face a tax liability of nearly $80,000 on his pass-through income.\r\nOfficials in the Kansas athletics department referred questions about whether tax considerations factored into Mr. Beatyâ€™s contract structure to Mr. Beatyâ€™s agent, Kyle Strongin, who declined to comment.\r\nSome other prominent coaches in the state, including the Kansas menâ€™s basketball coach, Bill Self, have long received some of their salaries through pass-through entities. Other coaches do not, including the Wichita State University menâ€™s basketball coach Gregg Marshall, who earns $3 million a year entirely as labor income.', 'Real'),
(2, 'http://beforeitsnews.com/sports/2017/10/101-expo-park-forbes-field-era-deacon-whips-cy-in-1st-ws-game-waners-237-hits-boss-man-roberto-more-2701623.html', '10/1 Expo Park-Forbes Field Era: Deacon Whips Cy In 1st WS Game, Waner''s 237 Hits, Boss Man Roberto & More', 'A Potato Battery Can Light up a Room for Over a Month DIY (System That Can Be Used to Provide Rooms With LED-Powered Lighting for as Long as 40 days) +Video', 'Fake'),
(3, 'http://dailybuzzlive.com/mom-puts-glasses-baby-watch-face-sees-dad-first-time/', 'Mom Puts Glasses on Her Baby â€“ Watch Her Face As She Sees Her Dad for the First Time', '"Wearing glasses might seem like a hassle to most adults, but for babies, glasses are a miracle.\r\n \r\nCan you imagine not being able to see, but also being so small you can explain that you can see? And on top of that, imagine you are too young to understand why you canâ€™t see.\r\n \r\nThankfully, many babies around the world are lucky enough to get glasses at a very young age. Doing this can help correct their eyesight later in life and resolve many other issues with their eyes.\r\n \r\nSome children can grow out of their eye problem with the right corrective care. Just look at this adorable baby with albinism getting her first pair of glasses!\r\n \r\nCLICK HERE â€”> To FOLLOW us on TWITTER\r\n \r\nCLICK HERE â€”> TO LIKE DAILY BUZZ LIVE ON FACEBOOK!\r\n \r\n \r\n \r\n \r\nYou Might Also Like\r\nEight Cars That Are Hard to Depreciate\r\nHusband Divorced His Wife After Looking Closer At This Photo\r\nWhat Morgan Fairchild Looks Like Now Is Crazy\r\n1 Simple Trick Removes Eye Bags & Lip Lines in Seconds\r\nCelebrity Pokies Banned In The US. Must See Before Gone\r\nBrilliant Trick Melts Belly Fat Overnight (Do This Tonight!)\r\n1 Simple Trick Removes Eye Bags & Lip Lines in Seconds\r\nAwkward Pictures of Hotties Who Don''t Wear Underpants\r\nWe Say GoodBye To Sally Fields\r\n?\r\nThese content links are provided by Content.ad. Both Content.ad and the web site upon which the links are displayed may receive compensation when readers click on these links. Some of the content you are redirected to may be sponsored content. View our privacy policy here.\r\nTo learn how you can use Content.ad to drive visitors to your content or add this service to your site, please contact us at info@content.ad.\r\nFamily-Friendly Content\r\n Only recommend family-friendly content\r\nWebsite owners select the type of content that appears in our units. However, if you would like to ensure that Content.ad always displays family-friendly content on this device, regardless of what site you are on, check the option below. Learn More"\r\n', 'Fake'),
(4, 'http://dailybuzzlive.com/mom-puts-glasses-baby-watch-face-sees-dad-first-time/', 'Mom Puts Glasses on Her Baby â€“ Watch Her Face As She Sees Her Dad for the First Time', '"Wearing glasses might seem like a hassle to most adults, but for babies, glasses are a miracle.\r\n \r\nCan you imagine not being able to see, but also being so small you can explain that you can see? And on top of that, imagine you are too young to understand why you canâ€™t see.\r\n \r\nThankfully, many babies around the world are lucky enough to get glasses at a very young age. Doing this can help correct their eyesight later in life and resolve many other issues with their eyes.\r\n \r\nSome children can grow out of their eye problem with the right corrective care. Just look at this adorable baby with albinism getting her first pair of glasses!\r\n \r\nCLICK HERE â€”> To FOLLOW us on TWITTER\r\n \r\nCLICK HERE â€”> TO LIKE DAILY BUZZ LIVE ON FACEBOOK!\r\n \r\n \r\n \r\n \r\nYou Might Also Like\r\nEight Cars That Are Hard to Depreciate\r\nHusband Divorced His Wife After Looking Closer At This Photo\r\nWhat Morgan Fairchild Looks Like Now Is Crazy\r\n1 Simple Trick Removes Eye Bags & Lip Lines in Seconds\r\nCelebrity Pokies Banned In The US. Must See Before Gone\r\nBrilliant Trick Melts Belly Fat Overnight (Do This Tonight!)\r\n1 Simple Trick Removes Eye Bags & Lip Lines in Seconds\r\nAwkward Pictures of Hotties Who Don''t Wear Underpants\r\nWe Say GoodBye To Sally Fields\r\n?\r\nThese content links are provided by Content.ad. Both Content.ad and the web site upon which the links are displayed may receive compensation when readers click on these links. Some of the content you are redirected to may be sponsored content. View our privacy policy here.\r\nTo learn how you can use Content.ad to drive visitors to your content or add this service to your site, please contact us at info@content.ad.\r\nFamily-Friendly Content\r\n Only recommend family-friendly content\r\nWebsite owners select the type of content that appears in our units. However, if you would like to ensure that Content.ad always displays family-friendly content on this device, regardless of what site you are on, check the option below. Learn More"\r\n', 'Fake'),
(5, 'https://www.nytimes.com/2017/10/07/us/politics/trump-association-health-plans.html?rref=collection%2Fsectioncollection%2Fpolitics', 'Trump Poised to Sign Order Opening New Paths to Health Insurance', '"The plan for the presidential order was first reported by The Wall Street Journal.\r\nSome insurers, including Blue Cross and Blue Shield plans, oppose association health plans, saying they would skim off healthier consumers and leave traditional insurers with sicker, more expensive customers.\r\nAdvertisement Continue reading the main story\r\nThe National Association of Insurance Commissioners, representing state regulators, has long opposed association health plans, saying they are bad for consumers because they can operate outside some state consumer-protection laws. In addition, the state regulators said this year in a letter to Congress, proposals to allow such purchasing groups â€œcould actually increase the cost of insurance for many small businesses whose employees are not members of an association health plan.â€\r\nBut Mr. Trump has presented such plans as a potential solution for millions of Americans. He stated his intentions on Sept. 27 as he left the White House for a trip to Indiana.\r\nPhoto\r\nâ€œI am considering an executive order on associations, and that will take care of a tremendous number of people with regard to health care,â€ Mr. Trump said then. â€œIâ€™ll probably be signing a very major executive order where people can go out, cross state lines, do lots of things, and buy their own health care. And that will be probably signed next week. Itâ€™s being finished now. Itâ€™s going to cover a lot of territory and a lot of people â€” millions of people.â€\r\nSenator Rand Paul, Republican of Kentucky, said he had been working with the Trump administration to clear the way for association health plans, which he said would allow more people to obtain good coverage at a lower cost.\r\nâ€œThe health care debate is not over,â€ Mr. Paul said. â€œConservatives are still fighting for free-market reforms to the health care system. I am excited to be working with President Trump on this initiative.â€\r\nâ€œAssociation plans would let plumbers, carpenters, welders or any type of small business band together to get group health insurance,â€ Mr. Paul said recently, describing his vision. â€œLiterally any group â€” your church, the National Rifle Association, the American Civil Liberties Union â€” any group of people who choose to do so could offer cheaper, better health insurance.â€"\r\n', 'Real'),
(6, 'http://beforeitsnews.com/entertainment/2017/09/the-sweet-season-in-coming-up-but-with-good-habits-and-careful-monitoring-teeth-problems-can-be-avoided-according-to-gilroy-dentist-2670614.html', 'The â€˜Sweet Seasonâ€™ in Coming Up, But with Good Habits and Careful Monitoring, Teeth Problems can be Avoided, According to Gilroy Dentist', '"The â€˜Sweet Seasonâ€™ in Coming Up, But with Good Habits and Careful Monitoring, Teeth Problems can be Avoided, According to Gilroy Dentist\r\n% of readers think this story is Fact. Add your two cents.\r\n(Before It''s News)\r\nCandy is harder to avoid on Halloween than pumpkin spice and spooky ghosts and witches, but according to Gilroy dentist Dr. Jernell Escobar, teeth problems can be avoided with some good habits and monitoring the amount of candy children eat.\r\nGilroy, CA, Sept 28, 2017 â€” Candy is harder to avoid on Halloween than pumpkin spice and spooky ghosts and witches, but according to Gilroy dentist Dr. Jernell Escobar, teeth problems can be avoided with some good habits and monitoring the amount of candy children eat.\r\nâ€œIt really can be quite a challenge for parents to let children enjoy Halloween, but still maintain the health of their teeth,â€ says Dr. Escobar. â€œBut the solution isnâ€™t to ban all candy, which is an impossible, but to closely monitor their intake of candies and other sweets.â€\r\nHalloween is the start of the â€œsweet season,â€ which includes Thanksgiving, Christmas and New Yearâ€™s Eve, the time of the year that is taken up with holiday parties, family celebrations, school activities and community events. Parents have to be extra attentive during this time of the year because many of these events feature cookies, cakes, pies, brownies, and other sweet treats.\r\nDr. Escobar wants people to be aware that there are good sweets and bad sweets, much as there are good habits and bad habits when it comes to the health of their teeth.\r\nSweets such as taffy and hard candies that can sit on or stuck between teeth for long periods of time actually increases the risk of tooth decay. Bacteria feeds on the sugar on the teeth, producing acid that causes tooth decay.\r\nâ€œCandiesâ€ such as sugar-free gum can prevent cavities by dislodging food particles and increasing saliva, which helps to neutralize acids in the mouth and prevent tooth decay.\r\nâ€œWe canâ€™t avoid all sweets, of course, but by being smart with our choices, going for healthy alternatives and promoting a healthy oral routine with our kids, we can all keep our families happy and healthy during the holiday season,â€ says Dr. Escobar.\r\nThe American Dental Association, on its website mouthhealthy.org, offers 10 easy-to-follow tips to help your children maintain a healthy mouth and teeth:\r\n1. Eat Halloween candy and other sugary foods with meals or shortly after mealtime. Saliva production increases during meals and helps cancel out acids produced by bacteria in your mouth and helps rinse away food particles.\r\n2. Avoid hard candy and other sweets that stay in your mouth for a long time. Besides how often you snack, the length of time sugary food is in your mouth plays a role in tooth decay. Unless it is a sugar-free product, candies that stay in the mouth for a long period of time subject teeth to an increased risk for tooth decay.\r\n3. Avoid sticky candies that cling to your teeth. The stickier candies, like taffy and gummy bears, take longer to get washed away by saliva, increasing the risk for tooth decay.\r\n4. Drink more water. Drinking optimally fluoridated water can help prevent tooth decay. If you choose bottled water, look for kinds that are fluoridated.\r\n5. Maintain a healthy diet. Your body is like a complex machine. The foods you choose as fuel and how often you â€œfill upâ€ affect your general health and that of your teeth and gums.\r\n6. Avoid beverages with added sugar such as soda, sports drinks or flavored waters. When teeth come in frequent contact with beverages that contain sugar, the risk of tooth decay is increased.\r\n7. Chew sugarless gum. Chewing sugarless gum for 20 minutes after meals helps reduce tooth decay, because increased saliva flow helps wash out food and neutralize the acid produced by dental plaque bacteria.\r\n8. Brush your teeth twice a day with a fluoride toothpaste. Replace your toothbrush every three or four months, or sooner if the bristles are frayed. A worn toothbrush wonâ€™t do a good job of cleaning your teeth.\r\n9. Clean between teeth daily with floss. Decay-causing bacteria get between teeth where toothbrush bristles canâ€™t reach. Flossing helps remove plaque and food particles from between the teeth and under the gum line.\r\n10. Visit your dentist. Regular visits to your dentist can help prevent problems from occurring and catch those that do occur early, when they are easy to â€œtreat.â€\r\nAbout Dr. Jernell Escobar DDS\r\nDr. Jernell Escobar and her staff are dedicated to providing patients with a pleasant visit and results that they are proud to show off. Her administrative staff is ready to help with questions about scheduling, financial policy and insurance, to make that part of the process as simple as possible.\r\nDr. Escobarâ€™s offers advanced dental treatments and materials that can give patients a healthier, more complete smile that can last a lifetime, including TMJ (temporomandibular joint disorders), Fillings / Restorations, Dental Sealants, Dentures, Bridges, Dental Implants, Crowns, Tooth Extractions and Non-Surgical Root Canal.\r\nCosmetic treatments offered by Dr. Escobar and her staff include Bonding, Porcelain Veneers, Inlays & Onlays, Teeth Whitening, Zoom Whitening, Laser Smile and Clear Braces.\r\nThey can also answer questions about the different dental specialties and explain the meaning of dental terms, including in areas of Oral Hygiene, Child Dentistry, Prophylaxis (Teeth Cleaning), Periodontal Maintenance and Arestin.\r\nBorn and raised in Southern California, Dr. Escobar became interested in healthcare while serving her country as a Public Health technician for the United States Air Force. After seven years of military service, Dr. Escobar was honorably discharged from the Air Force, having garnered multiple awards and service commendations.\r\nUpon completion of her military service, Dr. Escobar received a bachelorâ€™s degree in biology with a minor in chemistry from San Jose State University, graduating with honors. She earned a Doctor of Dental Surgery degree in 2006.\r\nAfter completion of dental school, Dr. Escobar continued her education at the University of the Pacific School of Education and earned a masterâ€™s degree in Dental Education in 2009.\r\nDr. Escobar has been practicing dentistry in the bay area since 2006. She is passionate about providing exceptional oral health care in a patient-centered environment. In addition, Dr. Escobar enjoys spending time with her two children. Some of her favorite activities include travel, boating, running marathons, triathlons, wakeboarding and yoga.\r\nContact:\r\nMarci Bracco Cain\r\nChatterbox PR\r\nSalinas, CA 93901\r\n(831) 747-7455\r\nhttp://mouthhealthy.org/"\r\n', 'Fake');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_accuracy`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_accuracy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `remote_user_detection_accuracy`
--

INSERT INTO `remote_user_detection_accuracy` (`id`, `names`, `ratio`) VALUES
(11, 'Naive Bayes', '95.6359102244389'),
(12, 'SVM', '96.88279301745636'),
(13, 'Logistic Regression', '96.88279301745636'),
(14, 'Decision Tree Classifier', '95.76059850374065'),
(15, 'SGD Classifier', '98.87780548628429');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_ratio`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_ratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `remote_user_detection_ratio`
--

INSERT INTO `remote_user_detection_ratio` (`id`, `names`, `ratio`) VALUES
(12, 'Fake', '66.66666666666666'),
(13, 'Real', '33.33333333333333');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
