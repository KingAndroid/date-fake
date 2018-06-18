-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2017 at 03:08 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seriousdating`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_your_date`
--

CREATE TABLE `about_your_date` (
  `id` int(11) NOT NULL,
  `relationshipGoal` varchar(128) NOT NULL,
  `haveChildren` varchar(128) NOT NULL COMMENT '0==>No 1==>Yes',
  `whatIsTheLongestRelationshipYouHaveBeenIn` varchar(128) NOT NULL,
  `partnerDependability` varchar(128) NOT NULL,
  `sexualCompatibility` varchar(128) NOT NULL,
  `friendshipBetweenPartners` varchar(128) NOT NULL,
  `drugs` varchar(128) NOT NULL COMMENT '0==>No 1==>Yes',
  `hairColor` varchar(128) NOT NULL,
  `hairStyle` varchar(128) NOT NULL,
  `eyeColor` varchar(128) NOT NULL,
  `height` varchar(128) NOT NULL,
  `bodyType` varchar(128) NOT NULL,
  `zodicSign` varchar(128) NOT NULL,
  `smoke` varchar(128) NOT NULL COMMENT '0==>No 1==>Yes',
  `drink` varchar(128) NOT NULL COMMENT '0==>No 1==>Yes',
  `excercise` varchar(128) NOT NULL,
  `excerciseSchedule` varchar(128) NOT NULL,
  `educationLevel` varchar(128) NOT NULL,
  `language` varchar(128) NOT NULL,
  `ethnicity` varchar(128) NOT NULL,
  `religiousBeliefs` varchar(128) NOT NULL,
  `income` varchar(250) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `tatoos` varchar(255) DEFAULT NULL,
  `relationshipStatus` varchar(250) NOT NULL,
  `wantKids` varchar(250) NOT NULL,
  `rangeOfMiles` varchar(250) NOT NULL,
  `age_from` varchar(30) NOT NULL,
  `age_to` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `motherBorn` varchar(250) NOT NULL,
  `fatherBorn` varchar(50) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_your_date`
--

INSERT INTO `about_your_date` (`id`, `relationshipGoal`, `haveChildren`, `whatIsTheLongestRelationshipYouHaveBeenIn`, `partnerDependability`, `sexualCompatibility`, `friendshipBetweenPartners`, `drugs`, `hairColor`, `hairStyle`, `eyeColor`, `height`, `bodyType`, `zodicSign`, `smoke`, `drink`, `excercise`, `excerciseSchedule`, `educationLevel`, `language`, `ethnicity`, `religiousBeliefs`, `income`, `gender`, `zipcode`, `tatoos`, `relationshipStatus`, `wantKids`, `rangeOfMiles`, `age_from`, `age_to`, `user_id`, `motherBorn`, `fatherBorn`, `latitude`, `longitude`) VALUES
(1, 'to get married', 'na', '1 year', 'Somewhat Important', 'Very Important', 'Important', 'No', 'Light Ash Blonde', 'Short', 'Hazel Eye ', '0', 'Definitive \'Hard Gainer\'', '2', 'Yes', 'Yes', 'regularly', 'chest', 'Level 4- GED Certificate ', 'Spanish', 'Hispanic or Latino ', 'Christians', '5000-10000', 'male', '85054', 'Yes', 'Single', 'Yes', '50', '20', '85', 'admin', 'dw', 'jnk', 33.6923299, -111.9403254),
(11, 'casual dating', 'No', '3-6 years', 'What every happen', 'What is that', 'Very Important', 'No', 'Light Blonde', 'Bob', 'Gray', '2.0', 'Mature Muscle', '9', 'Yes', 'No', 'once a week', 'back', 'Level 7- Masters ', 'English', 'Hispanic or Latino ', 'Judaism', '1-5000', 'Female', '94719', 'Yes', 'Is is complicated', 'No', '50', '24', '30', 'you', 'United States', 'United States', 58.5511601, 23.3164849),
(14, 'long term relationship', 'na', 'na', 'na', 'na', 'Very Important', 'No', 'na', 'na', 'na', '0', 'na', '10', 'No', 'na', 'na', 'na', 'na', 'na', 'na', 'na', '5000-10000', 'Female', '94533', 'na', 'Not sure', 'na', '60', '25', '36', 'Mark', 'United States', 'United States', 0, 0),
(15, 'long term relationship', 'No', '3-6 years', 'What every happen', 'Sometime', 'Very Important', 'Yes', 'Medium Ash Brown', 'Celebrity', 'Green Eye', '9', 'Mature Muscle', '11', 'Yes', 'Yes', 'regularly', 'chest', 'Level 4- GED Certificate ', 'Portuguese', 'African American', 'Hindus', 'Less than $5000', 'male', '380009', 'No', 'In a domestic partnership', 'No', '100', '15', '35', 'kishor', 'india', 'india', 0, 0),
(16, 'long term relationship', 'Yes', '1 year', 'Somewhat Important', 'What is that', 'Important', 'Yes', 'Light Ash Blonde', 'Long', 'Gray', '5.5', 'Definitive \'Hard Gainer\'', '1', 'Yes', 'Yes', 'once a week', 'shoulders', 'Level 6- Bachelor\'s ', 'Spanish', 'Not Hispanic ', 'Christians', 'Less than $5000', 'male', '380009', 'Yes', 'In a relationship, but not working', 'Yes', '100', '18', '20', 'test', 'test', 'test', 0, 0),
(17, 'long term relationship', 'No', '2 years', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Light Ash Blonde', 'Thick', 'Chestnut brown', '0', 'Delicate Built Body', '2', 'No', 'No', 'regularly', 'triceps', 'Level 5- High School Diploma ', 'English', 'Hispanic or Latino ', 'Muslims', '1-5000', 'male', '380009', 'Yes', 'Not sure', 'No', '50', '25', '36', 'tom', 'United States', 'United States', 0, 0),
(18, 'short term relationship', 'Yes', '3-6 years', 'Very Important', 'Sometime', 'Important', 'Yes', 'Light Golden Blonde', 'Medium', 'Hazel Eye ', '0', 'Excellent Posture', '3', 'Yes', 'Yes', 'once a week', 'chest', 'Level 8- Doctorate  ', 'English', 'American Indian ', 'Christians', '1-5000', 'male', '380009', 'Yes', 'In a domestic partnership', 'Yes', '50', '25', '41', 'Tim', 'United States', 'United States', 0, 0),
(20, 'long term relationship', 'Yes', '2 years', 'Very Important', 'What is that', 'Very Important', 'No', 'Light Blonde', 'Short', 'Green Eye', '5.6', 'Gains Muscle Easily', '3', 'Yes', 'No', 'regularly', 'chest', 'Level 5- High School Diploma ', 'Spanish', 'Hispanic or Latino ', 'Muslims', 'Less than $5000', 'male', '380009', 'No', 'In a relationship, but not working', 'Yes', '50', '36', '41', 'HELPP', 'United States', 'United States', 0, 0),
(21, 'long term relationship', 'No', '1 year', 'Very Important', 'Sometime', 'Important', 'Yes', 'Light Golden Blonde', 'Medium', 'Green Eye', '5.3', 'Delicate Built Body', '3', 'Stopping', 'Yes', 'regularly', 'shoulders', 'Level 4- GED Certificate ', 'Spanish', 'Hispanic or Latino ', 'Muslims', '5000-10000', 'Female', '380009', 'Yes', 'Single', 'Yes', '50', '25', '39', 'Va', 'United States', 'United States', 0, 0),
(25, 'long term relationship', 'Yes', '3-6 years', 'na', 'Sometime', 'Very Important', 'Yes', 'Light Blonde', 'na', 'na', '0', 'na', 'na', 'No', 'na', 'na', 'na', 'Level 6- Bachelor\'s ', 'English', 'na', 'Christians', '1-5000', 'male', '94533', 'na', 'Not sure', 'na', '50', '25', '39', 'wam1', 'washington', 'washington', 0, 0),
(31, 'na', 'na', '1 year', 'Very Important', 'Sometime', 'Very Important', 'na', 'Medium Ash Brown', 'Celebrity', 'Hazel Eye ', '5.7', 'Excellent Posture', '9', 'Stopping', 'No', 'regularly', 'chest', 'Level 4- GED Certificate ', 'German', 'Black', 'Muslims', '100000-300000', 'Female', '32955', NULL, 'In a domestic partnership', 'No', '70', '31', '31', 'arp690', 'dasdf', 'asdfa', 28.3861, -80.742),
(32, 'long term relationship', 'na', '1 year', 'na', 'na', 'Very Important', 'Yes', 'Red Hot Cinnamon', 'Ponytails', 'Amber', '5.5', 'Muscular Body', '7', 'Stopping', 'No', 'na', 'jogging', 'Level 8- Doctorate  ', 'German', 'Black', 'Jews', 'Less than $5000', 'Female', '32955', NULL, 'Not sure', 'No', '60', '31', '32', 'arp690', 'hgkjgh', '546465', 28.3861, -80.742),
(33, 'long term relationship', 'No', '2 years', 'Somewhat Important', 'What is that', 'na', 'No', 'Medium Auburn', 'Thick', 'Amber', '5.5', 'Muscular Body', '11', 'No', 'na', 'na', 'na', 'na', 'Spanish', 'na', 'Christians', '1-5000', 'male', '94533', NULL, 'In an open relationship', 'No', '40', '32', '48', 'Mary', 'usa', 'usa', 38.2494, -122.04),
(34, 'long term relationship', 'No', 'na', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Red Hot Cinnamon', 'Thin', 'Amber', '5', 'Gains Muscle Easily', '11', 'Stopping', 'na', 'na', 'gym', 'Level 8- Doctorate  ', 'Portuguese', 'Black', 'Jews', 'na', 'Female', '32923', NULL, 'Not sure', 'na', '65', '30', '32', 'arp690', 'his country', 'her country', 28.3861, -80.742),
(35, 'long term relationship', 'Yes', '3-6 years', 'Very Important', 'Sometime', 'Very Important', 'No', 'Red Hot Cinnamon', 'Thick', 'Blue', '5.5', 'Excellent Posture', '8', 'No', 'No', 'once a week', 'jogging', 'Level 5- High School Diploma ', 'Japanese', 'Black', 'na', '100000-300000', 'Female', '32955', 'Yes', 'Separated', 'No', '100', '30', '31', 'arp6902', 'Venezuela', 'Venezuela', 28.291625, -80.7879407),
(36, 'na', 'na', 'na', 'na', 'na', 'Very Important', 'na', 'na', 'Long', 'na', '5.7', 'na', '8', 'No', 'na', 'regularly', 'shoulders', 'Level 7- Masters ', 'na', 'na', 'Christians', 'na', 'Female', '382421', NULL, 'Single', 'na', '35', '25', '28', 'Test2', 'Country1', 'Country 2', 23.1667, 72.5833),
(37, 'long term relationship', 'Yes, they live with him/her', '1 year', 'Very Important', 'What is that', 'Important', 'Yes', 'Medium Champagne', 'Bob', 'Gray', '4.3', 'Flat Chest', '2', 'Stopping', 'No', 'once a week', 'triceps', 'Level 6- Bachelor\'s ', 'Spanish', 'Not Hispanic ', 'na', '30000-50000', 'Female', '1000', NULL, 'We are friends', 'na', '35', '23', '26', 'john', 'World', 'World', 23.729, 90.4112),
(38, 'short term relationship', 'na', '1 year', 'na', 'na', 'na', 'na', 'Light Ash Blonde', 'na', 'na', '5.3', 'Excellent Posture', '11', 'Stopping', 'na', 'five, three, two time a week', 'chest', 'Level 4- GED Certificate ', 'English', 'Not Hispanic ', 'Muslims', 'na', 'Female', '12311', NULL, 'Widowed', 'na', '10', '25', '80', 'johncarno', 'Bangladesh', 'Russia', 24.9056, 67.0822),
(39, 'na', 'na', '1 year', 'na', 'What is that', 'na', 'na', 'Medium Auburn', 'Thick', 'na', 'na', 'na', 'na', 'No', 'na', 'na', 'na', 'na', 'na', 'na', 'Christians', 'na', 'Female', '141001', NULL, 'na', 'na', '5', '18', '40', 'myapp', 'usa', 'usa', 30.9, 75.85),
(40, 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'No', 'na', 'na', 'na', 'na', 'na', 'na', 'Christians', 'na', 'male', '110035', NULL, 'na', 'na', '10', '19', '28', 'krish0405', 'india', 'india', 28.6833, 77.15),
(41, 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'na', 'No', 'na', 'na', 'na', 'na', 'na', 'na', 'Christians', 'na', 'male', '110032', NULL, 'na', 'na', '35', '18', '18', 'happy', 'india', 'india', 28.6667, 77.3167),
(42, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '7193', NULL, '', '', '85', '36', '62', 'asdasd', '', '', -41, 174),
(43, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '7193', NULL, '', '', '70', '27', '36', 'hugg', '', '', -41, 174),
(44, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '7193', NULL, '', '', '85', '24', '33', 'q', '', '', -41, 174),
(45, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '35', '21', '31', 'hugg1', '', '', 38.2494, -122.04),
(46, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '20', '22', '33', 'happy24', '', '', 38.2494, -122.04),
(47, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '40', '20', '34', 'boyboy11', '', '', 38.2494, -122.04),
(48, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '10', '22', '35', 'carpet', '', '', 38.2494, -122.04),
(49, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '20', '23', '36', 'top1', '', '', 38.2494, -122.04),
(50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '394105', NULL, '', '', '65', '33', '34', 'teja', '', '', -41, 174),
(51, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '7193', NULL, '', '', '70', '30', '33', 'tejavira', '', '', -41, 174),
(52, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '7193', NULL, '', '', '55', '32', '33', 'fsadasdasd', '', '', -41, 174),
(53, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '7193', NULL, '', '', '25', '24', '32', 'pnone', '', '', -41, 174),
(54, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '30', '21', '30', 'peter1', '', '', -41, 174),
(55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '7193', NULL, '', '', '65', '30', '30', 'chigs', '', '', -41, 174),
(56, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '15', '20', '36', 'cat445', '', '', 38.2494, -122.04),
(57, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '394105', NULL, '', '', '45', '27', '35', 'testywebpage', '', '', 21.2333, 72.8667),
(58, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '394105', NULL, '', '', '45', '27', '35', 'webpage', '', '', 21.2333, 72.8667),
(59, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '40', '22', '31', 'dog1', '', '', 38.2494, -122.04),
(60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '394105', NULL, '', '', '70', '25', '30', 'caru', '', '', 21.2333, 72.8667),
(61, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '30', '21', '32', 'KELLY12', '', '', 38.2494, -122.04),
(62, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '10', '22', '34', 'Account1', '', '', 38.2494, -122.04),
(63, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '25', '19', '33', 'LOL4', '', '', 38.2494, -122.04),
(64, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '350006', NULL, '', '', '80', '31', '53', 'wdiana', '', '', 41.8745, -87.6503),
(65, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '60326', NULL, '', '', '95', '18', '30', 'jhenrik', '', '', 50.1019, 8.6342),
(66, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '25', '27', '34', 'Missy1', '', '', 38.2494, -122.04),
(67, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '201301', NULL, '', '', '100', '18', '30', 'guru_test ', '', '', 28.57, 77.32),
(68, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', 'abcd', NULL, '', '', '5', '18', '22', 'ab    cd', '', '', 20, 77),
(69, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '431703', NULL, '', '', '5', '26', '24', '       shsdh', '', '', 20, 77),
(70, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '201301', NULL, '', '', '5', '19', '20', 'amit', '', '', 20, 77),
(71, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '431703', NULL, '', '', '5', '18', '19', 'abcd', '', '', 20, 77),
(72, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '9001', NULL, '', '', '80', '31', '47', 'yuvy', '', '', 28.57, 77.32),
(73, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '07047', NULL, '', '', '100', '40', '80', 'glorialove1231', '', '', 40.7904, -74.0246),
(74, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '201301', NULL, '', '', '30', '19', '19', 'test123', '', '', 28.57, 77.32),
(75, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '30', '32', '40', 'watts', '', '', 38.2832, -122.0085),
(76, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '160011', NULL, '', '', '10', '19', '40', 'khurana', '', '', 28.57, 77.32),
(77, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '10005', NULL, '', '', '85', '21', '43', 'rummy', '', '', 28.57, 77.32),
(78, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '160019', NULL, '', '', '10', '21', '30', ' Sweetgirl', '', '', 28.57, 77.32),
(79, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '600009', NULL, '', '', '10', '20', '23', 'maddy', '', '', 13.0833, 80.2833),
(80, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '049213', NULL, '', '', '100', '19', '33', 'asharp', '', '', 1.2855, 103.8565),
(81, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '30', '23', '28', 'hugg12', '', '', 38.2832, -122.0085),
(82, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '625017', NULL, '', '', '30', '21', '24', 'venkatesh', '', '', 13.0833, 80.2833),
(83, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '600009', NULL, '', '', '100', '20', '28', 'kdtest', '', '', 13.0833, 80.2833),
(84, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '45132', NULL, '', '', '30', '20', '29', 'asdf', '', '', 22.5333, 88.3667),
(85, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '3000', NULL, '', '', '10', '25', '31', 'Martin123', '', '', -37.8103, 144.9544),
(86, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '431703', NULL, '', '', '100', '23', '25', 'clarke', '', '', 20, 77),
(87, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '60326', NULL, '', '', '100', '18', '35', 'jimjohn', '', '', 50.1019, 8.6342),
(88, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '67123', NULL, '', '', '20', '24', '30', 'Dont', '', '', 22.5892, 88.3103),
(89, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '700078', NULL, '', '', '100', '18', '30', 'alok', '', '', 22.9204, 88.3841),
(90, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '20153', NULL, '', '', '100', '40', '70', 'Wout', '', '', 45.4926, 9.0778),
(91, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '20153', NULL, '', '', '95', '40', '70', 'brian1990', '', '', 45.4926, 9.0778),
(92, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '160101', NULL, '', '', '25', '18', '67', 'kumarraman9', '', '', 30.7343, 76.7933),
(93, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '85210', NULL, '', '', '80', '31', '32', 'wright', '', '', 33.3861, -111.8469),
(94, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '85387', NULL, '', '', '85', '30', '32', 'gerea', '', '', 33.7105, -112.4075),
(95, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '85387', NULL, '', '', '80', '23', '32', 'RicoBlack', '', '', 33.7105, -112.4075),
(96, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '10001', NULL, '', '', '100', '18', '35', 'jones', '', '', 12.9833, 77.5833),
(97, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '93010', NULL, '', '', '100', '22', '28', 'johndoe', '', '', 22.7167, 75.8333),
(98, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '93010', NULL, '', '', '100', '22', '28', 'joedoe', '', '', 22.7167, 75.8333),
(99, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '452001', NULL, '', '', '100', '22', '27', 'khare', '', '', 22.7167, 75.8333),
(100, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '452001', NULL, '', '', '100', '22', '28', 'khare0129', '', '', 22.7167, 75.8333),
(101, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '74500', NULL, '', '', '80', '20', '25', 'Xee23', '', '', 31.5819, 74.4014),
(102, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '10016', NULL, '', '', '100', '19', '24', 'sam005', '', '', 19, 72.8333),
(103, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '452001', NULL, '', '', '30', '22', '25', 'ashu123', '', '', 22.7167, 75.8333),
(104, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '226004', NULL, '', '', '10', '27', '28', 'arunsharm', '', '', 26.85, 80.9167),
(105, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '226010', NULL, '', '', '85', '35', '78', 'dddd', '', '', 26.85, 80.9167),
(106, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '226010', NULL, '', '', '30', '23', '27', 'arunsharma', '', '', 26.85, 80.9167),
(107, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '233001', NULL, '', '', '75', '29', '31', 'aaaa', '', '', 25.5833, 83.5667),
(108, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '226004', NULL, '', '', '60', '25', '32', 'arun', '', '', 26.85, 80.9167),
(109, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '85', '23', '33', '123456', '', '', 38.2832, -122.0085),
(110, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '226001', NULL, '', '', '10', '22', '28', 'marks', '', '', 26.85, 80.9167),
(111, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '94585', NULL, '', '', '10', '22', '33', 'kim88', '', '', 38.2832, -122.0085),
(112, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '94533', NULL, '', '', '20', '22', '27', 'kim99', '', '', 38.2832, -122.0085),
(113, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '54950', NULL, '', '', '60', '26', '29', 'dsadsa', '', '', 31.4649, 74.3846),
(114, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'male', '54950', NULL, '', '', '5', '30', '32', 'asdasdad', '', '', 31.4649, 74.3846),
(115, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Female', '8000', NULL, '', '', '95', '20', '23', 'nemaj', '', '', 10.3, 123.9);

-- --------------------------------------------------------

--
-- Table structure for table `admin_cms_tbl`
--

CREATE TABLE `admin_cms_tbl` (
  `id` int(11) NOT NULL,
  `heading` text,
  `content` longtext,
  `pagename` varchar(100) DEFAULT NULL,
  `datetime` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_cms_tbl`
--

INSERT INTO `admin_cms_tbl` (`id`, `heading`, `content`, `pagename`, `datetime`) VALUES
(1, NULL, '<p>\r\n\r\n</p><p><strong>About us &nbsp;&nbsp;</strong></p><p><strong>Why Serious dating we help you break the ice, you don\'t just sit and wait to received a messages, you get to meet in person at local plan events where you get to meet &nbsp;in person, before meet along.</strong><strong>&nbsp;</strong></p><p>Seriousdatings.com is a dating site for singles in the U.S. Founded in 2005, Seriousdatings.com has built the largest community for singles looking for love, relationships, friendship and dates. Our mission is simple: Creating Relationships. Connecting Lives events.</p><p>dating has never been so easy. Seriousdatings.com &nbsp;provides a simple, safe and fun atmosphere which makes it easy to quickly view and contact thousands of singles in your area. Our one of a kind profile system allows members to setup photo albums, share interests and much more. All the features you need to meet signal men and women are at your fingertips. Send flirts, send messages, use our live chat, post and browse pictures, and much more. Create your free profile. and search our signal personals for exactly what you want.</p><p>If you have never experienced the power of internet dating you are missing out on an incredible opportunity. Beyond typical online dating, Seriousdatings.com is a focused community dedicated to signal dating. No need to bother with any other dating sites. Millions of singles are trying online dating sites and if you want to be a part of the largest signal dating site in America and want to meet &nbsp;singles in your area,</p>\r\n\r\n<br><p></p>', 'About us', '2017-09-16 02:38:00');
INSERT INTO `admin_cms_tbl` (`id`, `heading`, `content`, `pagename`, `datetime`) VALUES
(2, NULL, '<p>\r\n\r\n</p><h3><b>Privacy Policy</b></h3><p>People Media respects the privacy of its users and has developed this Privacy Policy to demonstrate its commitment to protecting your privacy. This Privacy Policy describes the information we collect, how that information may be used, with whom it may be shared, and your choices about such uses and disclosures. We encourage you to read this Privacy Policy carefully when using our website or services or transacting business with us. By using our website, you are accepting the practices described in this Privacy Policy.</p><p>If you have any questions about our privacy practices, please refer to the end of this Privacy Policy for information on how to contact us.</p><p><strong>Information we collect about you</strong></p><p><u>In General</u>. We may collect information that can identify you such as your name and email address (\"personal information\") and other information that does not identify you. We may collect this information through a website or a mobile application. When you provide personal information through our website, the information may be sent to servers located in the United States and other countries around the world.</p><ul><li><strong>Information you provide</strong>. We may collect and store any personal information you enter on our website or on a mobile application, or provide to us in some other manner. This includes identifying information, such as your name, address, email address and telephone number, and, if you transact business with us, financial information such as your payment method (valid credit card number, type, expiration date or other financial information). You may also provide us information about your interests and activities, your gender and age, and other demographic information such as your hometown or your username.</li><li>This information may be available from your profile or account with such site or from cookies placed on your device by the third party platform.</li><li><strong>Information about others</strong>. We may collect and store personal information about other people that you provide to us, such as their name, address and email address. If you use our website to send others (friends, relatives, colleagues, etc.) a product as a gift, we may store your personal information, and the personal information of each such recipient in order to process those requests or facilitate future activities.</li></ul><p><u>Use of cookies and other technologies to collect information</u>. We use various technologies to collect information from your device and about your activities on our site or application.</p><ul><li><strong>Information collected automatically</strong>. We automatically collect information from your browser or device when you visit our website or application. This information could include your IP address, device ID, your browser type and language, access times, the content of any undeleted cookies that your browser previously accepted from us (see \"<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#Cookies\">Cookies</a>\" below), and the referring website address.</li><li><strong>Cookies and Use of Cookie Data</strong>. When you visit our website or application, we may assign your device one or more cookies, to facilitate access to our site and to personalize your online experience. Through the use of a cookie, we also may automatically collect information about your online activity on our site, such as the pages you visit, the time and date of your visits, the links you click, and the searches you conduct on our site. During your visits to other websites or applications where we advertise, we (or third parties) may use certain data collected on our site to show you advertisements from us or our affiliates. Although you may not opt out of receiving online advertisements generally, you may control the collection of data on our site used for our targeted advertising during your visits to other websites. To opt-out of our data collection for targeted advertising on other sites, click here: <a target=\"_blank\" rel=\"nofollow\" href=\"http://display.blackpeoplemeet.com/optout.html\">Opt Out Now</a>. Most browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies. If you choose to decline cookies, please note that you may not be able to sign in or use some of the interactive features offered on our site.</li><li><strong>Other Technologies</strong>. We may use standard Internet technology, such as <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#WebBeacons\">web beacons</a>&nbsp;and other similar technologies, to track your use of our site. We also may include web beacons in advertisements or email messages to determine whether messages have been opened and acted upon. The information we obtain in this manner enables us to customize the services we offer our website or application visitors to deliver targeted advertisements and to measure the overall effectiveness of our online advertising, content, programming or other activities.</li><li><strong>Information collected by third-parties</strong>. We may allow service providers, IAC companies, advertising companies and ad networks, and other third parties to display advertisements on our site for a fee. These companies may use tracking technologies, such as cookies, to collect information about users who view or interact with their advertisements. We do not provide any non-anonymized personal information to these third parties. Some of these third-party advertising companies may be advertising networks that are members of the Network Advertising Initiative, which offers a single location to opt out of ad targeting from member companies (<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.networkadvertising.org)\">www.networkadvertising.org)</a>.</li></ul><p><strong>How we use the information we collect</strong></p><p><u>In General</u>. We may use information that we collect about you to:</p><ul><li>deliver our products and services, and manage our business;</li><li>manage your account and provide you with customer support;</li><li>perform research and analysis;</li><li>communicate with you about products or services that may be of interest to you either from us, other IAC companies or other third parties;</li><li>develop and display content and advertising tailored to your interests on our site and other sites, including providing our advertisements to you when you visit other sites;</li><li>perform ad tracking and website or mobile application analytics;</li><li>verify your eligibility and deliver prizes in connection with contests and sweepstakes;</li><li>enforce or exercise any rights in our terms and conditions;</li><li>perform functions as otherwise described to you at the time of collection; and</li><li>register you with and display your profile on other online dating and other social websites owned by IAC, such as match.com, chemistry.com, POF.com, howaboutwe.com and okcupid.com.</li></ul><p><u>Financial information</u>. We may use financial information or payment method to (i) process payment for any purchases made on our website or application, (ii) enroll you in the discount, rebate, and other programs in which you elect to participate, (iii) to protect against or identify possible fraudulent transactions, and (iv) otherwise as needed to manage our business.</p><p><u>Job applicants</u>. If your personal information is submitted through our website when applying for a position with our company, the information will be used solely in connection with considering and acting upon your application. We may retain your personal information, but only for the purpose of considering your application for current or future available positions. This information, which may include your name and contact information, prior education and experience, and other information you provided to us, may be shared with other IAC companies for the purpose of evaluating your qualifications for the particular position or other available positions, as well as with third-party service providers retained by us to collect, maintain and analyze candidate submissions for job postings.</p><p>Please review \"Your choices about collection and use of your information\" below.</p><p>In all circumstances, we may perform these functions directly or use a third party vendor to perform these functions on our behalf who will be obligated to use your personal information only to perform services for us. Also, if you access our website or mobile applications from a third party social platform, such as Facebook, we may share non-personal information with that platform to the extent permitted by your agreement with it and its privacy settings.</p><p><strong>With whom we share your information</strong></p><p><u>Personal information</u>. We do not share your personal information with others except as indicated in this Privacy Policy or when we inform you and give you an opportunity to opt out of having your personal information shared. We may share personal information with:</p><ul><li><strong>Service providers</strong>: We may share information, including personal information, with third parties that perform certain services on our behalf. These services may include fulfilling orders, providing customer service and marketing assistance, performing business and sales analysis, ad tracking and analytics, member screenings, supporting our website functionality, and supporting contests, sweepstakes, surveys and other features offered through our site. We may also share your name, contact information and credit card information with our service providers who process credit card payments. These service providers may have access to personal information needed to perform their functions but are not permitted to share or use such information for any other purposes.</li><li>&nbsp;When you elect to engage in a particular merchant\'s offer or program, you authorize us to provide your email address and other information to that merchant. To opt-out of cookies that may be set by third party data or advertising partners, please go to</li><li>&nbsp;</li><li><strong>Other IAC businesses</strong>. IACâ€™s businesses include the online dating websites match.com, chemistry.com, okcupid.com, meetic.com, howaboutwe.com, speeddate.com, twoo.com and the websites we operate (ourtime.com, senior peoplemeet.com, Seriousdatings. comand other sites listed on <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.peoplemedia.com)\">www.peoplemedia.com)</a>. We may share information we collect, including your profile and personal information such as your name and contact information, photos, interests, activities and transactions on our website, with IAC companies. As part of our online service, your profile may be registered on and/or appear in search results or other areas of other online dating websites owned by IAC. The privacy policies of all IAC online dating companies are similar to our privacy policy.</li><li><strong>Other Situations</strong>. We also may disclose your information, including personal information:</li></ul><ul><ul><li>In response to a subpoena or similar investigative demand, a court order, or a request for cooperation from a law enforcement or other government agency; to establish or exercise our legal rights; to defend against legal claims; or as otherwise required by law. In such cases, we may raise or waive any legal objection or right available to us.</li><li>When we believe disclosure is appropriate in connection with efforts to investigate, prevent, or take other action regarding illegal activity, suspected fraud or other wrongdoing; to protect and defend the rights, property or safety of our company, our users, our employees, or others; to comply with applicable law or cooperate with law enforcement; or to enforce our website terms and conditions or other agreements or policies.</li><li>In connection with a substantial corporate transaction, such as the sale of our business, a divestiture, merger, consolidation, or asset sale, or in the unlikely event of bankruptcy.</li></ul></ul><p><u>Aggregated and/or non-personal information.</u>&nbsp;We may share non-personal information we collect under any of the above circumstances. We may also share it with IAC companies and third parties to develop and deliver targeted advertising on our site and on websites or applications of third parties, and to analyze and report on advertising you see. We may combine non-personal information we collect with additional non-personal information collected from other sources. We also may share aggregated, non-personal information, or personal information in hashed, non-human readable form, with third parties, including advisors, advertisers and investors, for the purpose of conducting general business analysis or other business purposes. For example, we may engage a data provider who may collect web log data from you (including IP address and information about your browser or operating system), or place or recognize a unique cookie on your browser to enable you to receive customized ads or content. The cookies may reflect de-identified demographic or other data linked to data you voluntarily have submitted to us (such as your email address), that we may share with a data provider solely in hashed, non-human readable form. To opt-out of cookies that may be set by third party data or advertising partners, please go to</p><p>If you would like to opt-out of third-party mobile application ad tracking and analytics, please visit here.</p><p><strong>Do Not Track Disclosure</strong></p><p>Do Not Track (\"DNT\") is a privacy preference that users can set in their web browsers. DNT is a way for users to inform websites and services that they do not want certain information about their webpage visits collected over time and across websites or online services. We are committed to providing you with meaningful choices about the information we collect and that is why we provide the opt-out links in the Privacy Policy. However, we do not recognize or respond to any DNT signals as the Internet industry works toward defining exactly what DNT means, what it means to comply with DNT, and a common approach to responding to DNT.</p><p><strong>Third-party websites</strong></p><p>There are a number of places on our website where you may click on a link to access other websites that do not operate under this Privacy Policy. For example, if you click on an advertisement on our website, you may be taken to a website that we do not control. These third-party websites may independently solicit and collect information, including personal information, from you and, in some instances, provide us with information about your activities on those websites. We recommend that you consult the privacy statements of all third-party websites you visit by clicking on the \"privacy\" link typically located at the bottom of the webpage you are visiting.</p><p><strong>How you can access your information</strong></p><p>If you have an online account with us, you have the ability to review and update your personal information online by logging into your account and clicking on your account settings. More information about how to contact us is provided below. If you have an online account with us, you also may close your account at any time by visiting your account settings. If you close your account, we may still retain certain information associated with your account for analytical purposes and recordkeeping integrity, as well as to prevent fraud, collect any fees owed, enforce our terms and conditions, take actions we deem necessary to protect the integrity of our website or our users, or take other actions otherwise permitted by law. In addition, if certain information has already been provided to third parties as described in this Privacy Policy, retention of that information will be subject to those third parties\' policies.</p><p><strong>Your choices about collection and use of your information</strong></p><ul><li>You can choose not to provide us with certain information, but that may result in you being unable to use certain features of our site because such information may be required in order for you to register as a member; purchase products or services; participate in a contest, promotion, survey, or sweepstakes; ask a question; or initiate other transactions.</li><li>When you register on our site, you consent to receive email messages from us. At any time you can choose to no longer receive commercial or promotional emails from us by visiting your account settings page. You also will be given the opportunity, in any commercial email that we send to you, to opt out of receiving such messages in the future. It may take up to 10 days for us to process an opt-out request. We may send you transactional and relationship emails, such as service announcements, administrative notices, and surveys, without offering you the opportunity to opt out of receiving them. Please note that changing information in your account, or otherwise opting out of receipt of promotional email communications, will only affect future activities or communications from us. If we have already provided your information to a third party (such as a service provider) before you have changed your preferences or updated your information, you may have to change you preferences directly with that third party.</li><li>You can also control information collected by cookies. See \"<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#Cookies\">Cookies</a>\" below for information about declining or deleting cookies.</li></ul><p><strong>How we protect your personal information</strong></p><p>We take appropriate security measures (including physical, electronic and procedural measures) to help safeguard your personal information from unauthorized access and disclosure. However, no system can be completely secure. Therefore, although we take steps to secure your information, we do not promise, and you should not expect, that your personal information, searches, or other communications will always remain secure. Users should also take care with how they handle and disclose their personal information and should avoid sending personal information through insecure email. Please refer to the Federal Trade Commission\'s website at <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.consumer.ftc.gov/topics/identity-theft\">http://www.consumer.ftc.gov/topics/identity-theft</a>&nbsp;for information about how to protect yourself against identity theft.</p><p><strong>Information you provide about yourself while using our service</strong></p><p>We provide areas on our site where you can post information about yourself and others and communicate with others or upload content such as photographs. Such postings are governed by our <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.blackpeoplemeet.com/v3/termsandconditions\">Terms of Use</a>. In addition, such postings may appear on other websites or when searches are executed on the subject of your posting. Also, whenever you voluntarily disclose personal information on publicly-viewable web pages, that information will be publicly available and can be collected and used by others. For example, if you post your email address, you may receive unsolicited messages. We cannot control who reads your posting or what other users may do with the information you voluntarily post, so we encourage you to exercise discretion and caution with respect to your personal information.</p><p><strong>Children\'s privacy</strong></p><p>Although our website is a general audience site, we restrict the use of our service to individuals age 20 and above. We do not knowingly collect personal information from children under the age of 13.</p><p><strong>Visiting our websites from outside the United States</strong></p><p>If you are visiting our website from outside the United States, please be aware that your information may be transferred to, stored, and processed in the United States where our servers are located and our central database is operated. By using our services, you understand that your information may be transferred to our facilities and those third parties with whom we share it as described in this privacy policy.</p><p><strong>No Rights of Third Parties</strong></p><p>This Privacy Policy does not create rights enforceable by third parties or require disclosure of any personal information relating to users of the website.</p><p><strong>Changes to this Privacy Policy</strong></p><p>We will occasionally update this Privacy Policy. When we post changes to this Privacy Policy, we will revise the \"last updated\" date at the top of this Privacy Policy. We recommend that you check our site from time to time to inform yourself of any changes in this Privacy Policy or any of our other policies.</p><p><strong>How to contact us</strong></p><p>If you have any questions about this Privacy Policy, please contact us as follows:</p><p>Privacy Officer<br>theyear@live.com</p><p><strong>Linked information:</strong></p><p><u>Cookies:</u>&nbsp;</p><p>A cookie is a small text file that is stored on a user\'s device for record keeping purposes. Cookies can be either session cookies or persistent cookies. A session cookie expires when you close your browser and is used to make it easier for you to navigate our site. A persistent cookie remains on your device for an extended period of time. Cookies on our site do not link to or store your personal information.</p><p>For example, when you sign in to our website, we will record your user or member ID and the name associated with your user or member ID in the cookie file on your computer. We also may record your password in this cookie file, if you indicated that you would like your password saved for automatic sign-in. For security purposes, we encrypt account-related data that we store in such cookies. In the case of sites and services that do not use a user or member ID, the cookie will contain a unique identifier. We may allow our service providers to serve cookies from our website or application to allow them to assist us in various activities, such as doing analysis and research on the effectiveness of our site, content and advertising.</p><p>You may delete or decline cookies by changing your browser settings. (Click \"Help\" in the toolbar of most browsers for instructions.) If you do so, some of the features and services of our website may not function properly.</p><p>We may allow third-parties, including advertising companies, analytics companies, and ad networks, to display advertisements on our site. These companies may use tracking technologies, such as cookies, to collect information about users who view or interact with their advertisements or our website or mobile applications. We do not provide any personal information to these third parties, but they may collect information about where you, or others who are using your device, saw and/or clicked on the advertisements they deliver (such as click stream information, browser type, time and date, subject of advertisements clicked or scrolled over, etc.), and possibly associate this information with your subsequent visits to the advertised websites or other data they have collected. They also may combine this information with personal information they collect from you to provide advertisements about goods and services likely to be of greater interest to you. The collection and use of that information is subject to the third-party\'s privacy policy. Some of these third-party advertising companies may be advertising networks that are members of the Network Advertising Initiative, which offers a single location to opt out of ad targeting from member companies and provides information about this behavioral advertising practice (<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.networkadvertising.org)\">www.networkadvertising.org)</a>. This policy covers the use of cookies by us and does not cover the use of cookies by any advertisers.</p><p>Privacy Policy</p><p>People Media respects the privacy of its users and has developed this Privacy Policy to demonstrate its commitment to protecting your privacy. This Privacy Policy describes the information we collect, how that information may be used, with whom it may be shared, and your choices about such uses and disclosures. We encourage you to read this Privacy Policy carefully when using our website or services or transacting business with us. By using our website, you are accepting the practices described in this Privacy Policy.</p><p>If you have any questions about our privacy practices, please refer to the end of this Privacy Policy for information on how to contact us.</p><p><strong>Information we collect about you</strong></p><p><u>In General</u>. We may collect information that can identify you such as your name and email address (\"personal information\") and other information that does not identify you. We may collect this information through a website or a mobile application. When you provide personal information through our website, the information may be sent to servers located in the United States and other countries around the world.</p><ul><li><strong>Information you provide</strong>. We may collect and store any personal information you enter on our website or on a mobile application, or provide to us in some other manner. This includes identifying information, such as your name, address, email address and telephone number, and, if you transact business with us, financial information such as your payment method (valid credit card number, type, expiration date or other financial information). You may also provide us information about your interests and activities, your gender and age, and other demographic information such as your hometown or your username.</li><li>This information may be available from your profile or account with such site or from cookies placed on your device by the third party platform.</li><li><strong>Information about others</strong>. We may collect and store personal information about other people that you provide to us, such as their name, address and email address. If you use our website to send others (friends, relatives, colleagues, etc.) a product as a gift, we may store your personal information, and the personal information of each such recipient in order to process those requests or facilitate future activities.</li></ul><p><u>Use of cookies and other technologies to collect information</u>. We use various technologies to collect information from your device and about your activities on our site or application.</p><ul><li><strong>Information collected automatically</strong>. We automatically collect information from your browser or device when you visit our website or application. This information could include your IP address, device ID, your browser type and language, access times, the content of any undeleted cookies that your browser previously accepted from us (see \"<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#Cookies\">Cookies</a>\" below), and the referring website address.</li><li><strong>Cookies and Use of Cookie Data</strong>. When you visit our website or application, we may assign your device one or more cookies, to facilitate access to our site and to personalize your online experience. Through the use of a cookie, we also may automatically collect information about your online activity on our site, such as the pages you visit, the time and date of your visits, the links you click, and the searches you conduct on our site. During your visits to other websites or applications where we advertise, we (or third parties) may use certain data collected on our site to show you advertisements from us or our affiliates. Although you may not opt out of receiving online advertisements generally, you may control the collection of data on our site used for our targeted advertising during your visits to other websites. To opt-out of our data collection for targeted advertising on other sites, click here: <a target=\"_blank\" rel=\"nofollow\" href=\"http://display.blackpeoplemeet.com/optout.html\">Opt Out Now</a>. Most browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies. If you choose to decline cookies, please note that you may not be able to sign in or use some of the interactive features offered on our site.</li><li><strong>Other Technologies</strong>. We may use standard Internet technology, such as <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#WebBeacons\">web beacons</a>&nbsp;and other similar technologies, to track your use of our site. We also may include web beacons in advertisements or email messages to determine whether messages have been opened and acted upon. The information we obtain in this manner enables us to customize the services we offer our website or application visitors to deliver targeted advertisements and to measure the overall effectiveness of our online advertising, content, programming or other activities.</li><li><strong>Information collected by third-parties</strong>. We may allow service providers, IAC companies, advertising companies and ad networks, and other third parties to display advertisements on our site for a fee. These companies may use tracking technologies, such as cookies, to collect information about users who view or interact with their advertisements. We do not provide any non-anonymized personal information to these third parties. Some of these third-party advertising companies may be advertising networks that are members of the Network Advertising Initiative, which offers a single location to opt out of ad targeting from member companies (<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.networkadvertising.org)\">www.networkadvertising.org)</a>.</li></ul><p><strong>How we use the information we collect</strong></p><p><u>In General</u>. We may use information that we collect about you to:</p><ul><li>deliver our products and services, and manage our business;</li><li>manage your account and provide you with customer support;</li><li>perform research and analysis;</li><li>communicate with you about products or services that may be of interest to you either from us, other IAC companies or other third parties;</li><li>develop and display content and advertising tailored to your interests on our site and other sites, including providing our advertisements to you when you visit other sites;</li><li>perform ad tracking and website or mobile application analytics;</li><li>verify your eligibility and deliver prizes in connection with contests and sweepstakes;</li><li>enforce or exercise any rights in our terms and conditions;</li><li>perform functions as otherwise described to you at the time of collection; and</li><li>register you with and display your profile on other online dating and other social websites owned by IAC, such as match.com, chemistry.com, POF.com, howaboutwe.com and okcupid.com.</li></ul><p><u>Financial information</u>. We may use financial information or payment method to (i) process payment for any purchases made on our website or application, (ii) enroll you in the discount, rebate, and other programs in which you elect to participate, (iii) to protect against or identify possible fraudulent transactions, and (iv) otherwise as needed to manage our business.</p><p><u>Job applicants</u>. If your personal information is submitted through our website when applying for a position with our company, the information will be used solely in connection with considering and acting upon your application. We may retain your personal information, but only for the purpose of considering your application for current or future available positions. This information, which may include your name and contact information, prior education and experience, and other information you provided to us, may be shared with other IAC companies for the purpose of evaluating your qualifications for the particular position or other available positions, as well as with third-party service providers retained by us to collect, maintain and analyze candidate submissions for job postings.</p><p>Please review \"Your choices about collection and use of your information\" below.</p><p>In all circumstances, we may perform these functions directly or use a third party vendor to perform these functions on our behalf who will be obligated to use your personal information only to perform services for us. Also, if you access our website or mobile applications from a third party social platform, such as Facebook, we may share non-personal information with that platform to the extent permitted by your agreement with it and its privacy settings.</p><p><strong>With whom we share your information</strong></p><p><u>Personal information</u>. We do not share your personal information with others except as indicated in this Privacy Policy or when we inform you and give you an opportunity to opt out of having your personal information shared. We may share personal information with:</p><ul><li><strong>Service providers</strong>: We may share information, including personal information, with third parties that perform certain services on our behalf. These services may include fulfilling orders, providing customer service and marketing assistance, performing business and sales analysis, ad tracking and analytics, member screenings, supporting our website functionality, and supporting contests, sweepstakes, surveys and other features offered through our site. We may also share your name, contact information and credit card information with our service providers who process credit card payments. These service providers may have access to personal information needed to perform their functions but are not permitted to share or use such information for any other purposes.</li><li>&nbsp;When you elect to engage in a particular merchant\'s offer or program, you authorize us to provide your email address and other information to that merchant. To opt-out of cookies that may be set by third party data or advertising partners, please go to</li><li>&nbsp;</li><li><strong>Other IAC businesses</strong>. IACâ€™s businesses include the online dating websites match.com, chemistry.com, okcupid.com, meetic.com, howaboutwe.com, speeddate.com, twoo.com and the websites we operate (ourtime.com, senior peoplemeet.com, Seriousdatings. comand other sites listed on <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.peoplemedia.com)\">www.peoplemedia.com)</a>. We may share information we collect, including your profile and personal information such as your name and contact information, photos, interests, activities and transactions on our website, with IAC companies. As part of our online service, your profile may be registered on and/or appear in search results or other areas of other online dating websites owned by IAC. The privacy policies of all IAC online dating companies are similar to our privacy policy.</li><li><strong>Other Situations</strong>. We also may disclose your information, including personal information:</li></ul><ul><ul><li>In response to a subpoena or similar investigative demand, a court order, or a request for cooperation from a law enforcement or other government agency; to establish or exercise our legal rights; to defend against legal claims; or as otherwise required by law. In such cases, we may raise or waive any legal objection or right available to us.</li><li>When we believe disclosure is appropriate in connection with efforts to investigate, prevent, or take other action regarding illegal activity, suspected fraud or other wrongdoing; to protect and defend the rights, property or safety of our company, our users, our employees, or others; to comply with applicable law or cooperate with law enforcement; or to enforce our website terms and conditions or other agreements or policies.</li><li>In connection with a substantial corporate transaction, such as the sale of our business, a divestiture, merger, consolidation, or asset sale, or in the unlikely event of bankruptcy.</li></ul></ul><p><u>Aggregated and/or non-personal information.</u>&nbsp;We may share non-personal information we collect under any of the above circumstances. We may also share it with IAC companies and third parties to develop and deliver targeted advertising on our site and on websites or applications of third parties, and to analyze and report on advertising you see. We may combine non-personal information we collect with additional non-personal information collected from other sources. We also may share aggregated, non-personal information, or personal information in hashed, non-human readable form, with third parties, including advisors, advertisers and investors, for the purpose of conducting general business analysis or other business purposes. For example, we may engage a data provider who may collect web log data from you (including IP address and information about your browser or operating system), or place or recognize a unique cookie on your browser to enable you to receive customized ads or content. The cookies may reflect de-identified demographic or other data linked to data you voluntarily have submitted to us (such as your email address), that we may share with a data provider solely in hashed, non-human readable form. To opt-out of cookies that may be set by third party data or advertising partners, please go to</p><p>If you would like to opt-out of third-party mobile application ad tracking and analytics, please visit here.</p><p><strong>Do Not Track Disclosure</strong></p><p>Do Not Track (\"DNT\") is a privacy preference that users can set in their web browsers. DNT is a way for users to inform websites and services that they do not want certain information about their webpage visits collected over time and across websites or online services. We are committed to providing you with meaningful choices about the information we collect and that is why we provide the opt-out links in the Privacy Policy. However, we do not recognize or respond to any DNT signals as the Internet industry works toward defining exactly what DNT means, what it means to comply with DNT, and a common approach to responding to DNT.</p><p><strong>Third-party websites</strong></p><p>There are a number of places on our website where you may click on a link to access other websites that do not operate under this Privacy Policy. For example, if you click on an advertisement on our website, you may be taken to a website that we do not control. These third-party websites may independently solicit and collect information, including personal information, from you and, in some instances, provide us with information about your activities on those websites. We recommend that you consult the privacy statements of all third-party websites you visit by clicking on the \"privacy\" link typically located at the bottom of the webpage you are visiting.</p><p><strong>How you can access your information</strong></p><p>If you have an online account with us, you have the ability to review and update your personal information online by logging into your account and clicking on your account settings. More information about how to contact us is provided below. If you have an online account with us, you also may close your account at any time by visiting your account settings. If you close your account, we may still retain certain information associated with your account for analytical purposes and recordkeeping integrity, as well as to prevent fraud, collect any fees owed, enforce our terms and conditions, take actions we deem necessary to protect the integrity of our website or our users, or take other actions otherwise permitted by law. In addition, if certain information has already been provided to third parties as described in this Privacy Policy, retention of that information will be subject to those third parties\' policies.</p><p><strong>Your choices about collection and use of your information</strong></p><ul><li>You can choose not to provide us with certain information, but that may result in you being unable to use certain features of our site because such information may be required in order for you to register as a member; purchase products or services; participate in a contest, promotion, survey, or sweepstakes; ask a question; or initiate other transactions.</li><li>When you register on our site, you consent to receive email messages from us. At any time you can choose to no longer receive commercial or promotional emails from us by visiting your account settings page. You also will be given the opportunity, in any commercial email that we send to you, to opt out of receiving such messages in the future. It may take up to 10 days for us to process an opt-out request. We may send you transactional and relationship emails, such as service announcements, administrative notices, and surveys, without offering you the opportunity to opt out of receiving them. Please note that changing information in your account, or otherwise opting out of receipt of promotional email communications, will only affect future activities or communications from us. If we have already provided your information to a third party (such as a service provider) before you have changed your preferences or updated your information, you may have to change you preferences directly with that third party.</li><li>You can also control information collected by cookies. See \"<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#Cookies\">Cookies</a>\" below for information about declining or deleting cookies.</li></ul><p><strong>How we protect your personal information</strong></p><p>We take appropriate security measures (including physical, electronic and procedural measures) to help safeguard your personal information from unauthorized access and disclosure. However, no system can be completely secure. Therefore, although we take steps to secure your information, we do not promise, and you should not expect, that your personal information, searches, or other communications will always remain secure. Users should also take care with how they handle and disclose their personal information and should avoid sending personal information through insecure email. Please refer to the Federal Trade Commission\'s website at <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.consumer.ftc.gov/topics/identity-theft\">http://www.consumer.ftc.gov/topics/identity-theft</a>&nbsp;for information about how to protect yourself against identity theft.</p><p><strong>Information you provide about yourself while using our service</strong></p><p>We provide areas on our site where you can post information about yourself and others and communicate with others or upload content such as photographs. Such postings are governed by our <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.blackpeoplemeet.com/v3/termsandconditions\">Terms of Use</a>. In addition, such postings may appear on other websites or when searches are executed on the subject of your posting. Also, whenever you voluntarily disclose personal information on publicly-viewable web pages, that information will be publicly available and can be collected and used by others. For example, if you post your email address, you may receive unsolicited messages. We cannot control who reads your posting or what other users may do with the information you voluntarily post, so we encourage you to exercise discretion and caution with respect to your personal information.</p><p><strong>Children\'s privacy</strong></p><p>Although our website is a general audience site, we restrict the use of our service to individuals age 20 and above. We do not knowingly collect personal information from children under the age of 13.</p><p><strong>Visiting our websites from outside the United States</strong></p><p>If you are visiting our website from outside the United States, please be aware that your information may be transferred to, stored, and processed in the United States where our servers are located and our central database is operated. By using our services, you understand that your information may be transferred to our facilities and those third parties with whom we share it as described in this privacy policy.</p><p><strong>No Rights of Third Parties</strong></p><p>This Privacy Policy does not create rights enforceable by third parties or require disclosure of any personal information relating to users of the website.</p><p><strong>Changes to this Privacy Policy</strong></p><p>We will occasionally update this Privacy Policy. When we post changes to this Privacy Policy, we will revise the \"last updated\" date at the top of this Privacy Policy. We recommend that you check our site from time to time to inform yourself of any changes in this Privacy Policy or any of our other policies.</p><p><strong>How to contact us</strong></p><p>If you have any questions about this Privacy Policy, please contact us as follows:</p><p>Privacy Officer<br>theyear@live.com</p><p><strong>Linked information:</strong></p><p><u>Cookies:</u>&nbsp;</p><p>A cookie is a small text file that is stored on a user\'s device for record keeping purposes. Cookies can be either session cookies or persistent cookies. A session cookie expires when you close your browser and is used to make it easier for you to navigate our site. A persistent cookie remains on your device for an extended period of time. Cookies on our site do not link to or store your personal information.</p><p>For example, when you sign in to our website, we will record your user or member ID and the name associated with your user or member ID in the cookie file on your computer. We also may record your password in this cookie file, if you indicated that you would like your password saved for automatic sign-in. For security purposes, we encrypt account-related data that we store in such cookies. In the case of sites and services that do not use a user or member ID, the cookie will contain a unique identifier. We may allow our service providers to serve cookies from our website or application to allow them to assist us in various activities, such as doing analysis and research on the effectiveness of our site, content and advertising.</p><p>You may delete or decline cookies by changing your browser settings. (Click \"Help\" in the toolbar of most browsers for instructions.) If you do so, some of the features and services of our website may not function properly.</p><p>We may allow third-parties, including advertising companies, analytics companies, and ad networks, to display advertisements on our site. These companies may use tracking technologies, such as cookies, to collect information about users who view or interact with their advertisements or our website or mobile applications. We do not provide any personal information to these third parties, but they may collect information about where you, or others who are using your device, saw and/or clicked on the advertisements they deliver (such as click stream information, browser type, time and date, subject of advertisements clicked or scrolled over, etc.), and possibly associate this information with your subsequent visits to the advertised websites or other data they have collected. They also may combine this information with personal information they collect from you to provide advertisements about goods and services likely to be of greater interest to you. The collection and use of that information is subject to the third-party\'s privacy policy. Some of these third-party advertising companies may be advertising networks that are members of the Network Advertising Initiative, which offers a single location to opt out of ad targeting from member companies and provides information about this behavioral advertising practice (<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.networkadvertising.org)\">www.networkadvertising.org)</a>. This policy covers the use of cookies by us and does not cover the use of cookies by any advertisers.</p><p>Privacy Policy</p><p>People Media respects the privacy of its users and has developed this Privacy Policy to demonstrate its commitment to protecting your privacy. This Privacy Policy describes the information we collect, how that information may be used, with whom it may be shared, and your choices about such uses and disclosures. We encourage you to read this Privacy Policy carefully when using our website or services or transacting business with us. By using our website, you are accepting the practices described in this Privacy Policy.</p><p>If you have any questions about our privacy practices, please refer to the end of this Privacy Policy for information on how to contact us.</p><p><strong>Information we collect about you</strong></p><p><u>In General</u>. We may collect information that can identify you such as your name and email address (\"personal information\") and other information that does not identify you. We may collect this information through a website or a mobile application. When you provide personal information through our website, the information may be sent to servers located in the United States and other countries around the world.</p><ul><li><strong>Information you provide</strong>. We may collect and store any personal information you enter on our website or on a mobile application, or provide to us in some other manner. This includes identifying information, such as your name, address, email address and telephone number, and, if you transact business with us, financial information such as your payment method (valid credit card number, type, expiration date or other financial information). You may also provide us information about your interests and activities, your gender and age, and other demographic information such as your hometown or your username.</li><li>This information may be available from your profile or account with such site or from cookies placed on your device by the third party platform.</li><li><strong>Information about others</strong>. We may collect and store personal information about other people that you provide to us, such as their name, address and email address. If you use our website to send others (friends, relatives, colleagues, etc.) a product as a gift, we may store your personal information, and the personal information of each such recipient in order to process those requests or facilitate future activities.</li></ul><p><u>Use of cookies and other technologies to collect information</u>. We use various technologies to collect information from your device and about your activities on our site or application.</p><ul><li><strong>Information collected automatically</strong>. We automatically collect information from your browser or device when you visit our website or application. This information could include your IP address, device ID, your browser type and language, access times, the content of any undeleted cookies that your browser previously accepted from us (see \"<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#Cookies\">Cookies</a>\" below), and the referring website address.</li><li><strong>Cookies and Use of Cookie Data</strong>. When you visit our website or application, we may assign your device one or more cookies, to facilitate access to our site and to personalize your online experience. Through the use of a cookie, we also may automatically collect information about your online activity on our site, such as the pages you visit, the time and date of your visits, the links you click, and the searches you conduct on our site. During your visits to other websites or applications where we advertise, we (or third parties) may use certain data collected on our site to show you advertisements from us or our affiliates. Although you may not opt out of receiving online advertisements generally, you may control the collection of data on our site used for our targeted advertising during your visits to other websites. To opt-out of our data collection for targeted advertising on other sites, click here: <a target=\"_blank\" rel=\"nofollow\" href=\"http://display.blackpeoplemeet.com/optout.html\">Opt Out Now</a>. Most browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies. If you choose to decline cookies, please note that you may not be able to sign in or use some of the interactive features offered on our site.</li><li><strong>Other Technologies</strong>. We may use standard Internet technology, such as <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#WebBeacons\">web beacons</a>&nbsp;and other similar technologies, to track your use of our site. We also may include web beacons in advertisements or email messages to determine whether messages have been opened and acted upon. The information we obtain in this manner enables us to customize the services we offer our website or application visitors to deliver targeted advertisements and to measure the overall effectiveness of our online advertising, content, programming or other activities.</li><li><strong>Information collected by third-parties</strong>. We may allow service providers, IAC companies, advertising companies and ad networks, and other third parties to display advertisements on our site for a fee. These companies may use tracking technologies, such as cookies, to collect information about users who view or interact with their advertisements. We do not provide any non-anonymized personal information to these third parties. Some of these third-party advertising companies may be advertising networks that are members of the Network Advertising Initiative, which offers a single location to opt out of ad targeting from member companies (<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.networkadvertising.org)\">www.networkadvertising.org)</a>.</li></ul><p><strong>How we use the information we collect</strong></p><p><u>In General</u>. We may use information that we collect about you to:</p><ul><li>deliver our products and services, and manage our business;</li><li>manage your account and provide you with customer support;</li><li>perform research and analysis;</li><li>communicate with you about products or services that may be of interest to you either from us, other IAC companies or other third parties;</li><li>develop and display content and advertising tailored to your interests on our site and other sites, including providing our advertisements to you when you visit other sites;</li><li>perform ad tracking and website or mobile application analytics;</li><li>verify your eligibility and deliver prizes in connection with contests and sweepstakes;</li><li>enforce or exercise any rights in our terms and conditions;</li><li>perform functions as otherwise described to you at the time of collection; and</li><li>register you with and display your profile on other online dating and other social websites owned by IAC, such as match.com, chemistry.com, POF.com, howaboutwe.com and okcupid.com.</li></ul><p><u>Financial information</u>. We may use financial information or payment method to (i) process payment for any purchases made on our website or application, (ii) enroll you in the discount, rebate, and other programs in which you elect to participate, (iii) to protect against or identify possible fraudulent transactions, and (iv) otherwise as needed to manage our business.</p><p><u>Job applicants</u>. If your personal information is submitted through our website when applying for a position with our company, the information will be used solely in connection with considering and acting upon your application. We may retain your personal information, but only for the purpose of considering your application for current or future available positions. This information, which may include your name and contact information, prior education and experience, and other information you provided to us, may be shared with other IAC companies for the purpose of evaluating your qualifications for the particular position or other available positions, as well as with third-party service providers retained by us to collect, maintain and analyze candidate submissions for job postings.</p><p>Please review \"Your choices about collection and use of your information\" below.</p><p>In all circumstances, we may perform these functions directly or use a third party vendor to perform these functions on our behalf who will be obligated to use your personal information only to perform services for us. Also, if you access our website or mobile applications from a third party social platform, such as Facebook, we may share non-personal information with that platform to the extent permitted by your agreement with it and its privacy settings.</p><p><strong>With whom we share your information</strong></p><p><u>Personal information</u>. We do not share your personal information with others except as indicated in this Privacy Policy or when we inform you and give you an opportunity to opt out of having your personal information shared. We may share personal information with:</p><ul><li><strong>Service providers</strong>: We may share information, including personal information, with third parties that perform certain services on our behalf. These services may include fulfilling orders, providing customer service and marketing assistance, performing business and sales analysis, ad tracking and analytics, member screenings, supporting our website functionality, and supporting contests, sweepstakes, surveys and other features offered through our site. We may also share your name, contact information and credit card information with our service providers who process credit card payments. These service providers may have access to personal information needed to perform their functions but are not permitted to share or use such information for any other purposes.</li><li>&nbsp;When you elect to engage in a particular merchant\'s offer or program, you authorize us to provide your email address and other information to that merchant. To opt-out of cookies that may be set by third party data or advertising partners, please go to</li><li>&nbsp;</li><li><strong>Other IAC businesses</strong>. IACâ€™s businesses include the online dating websites match.com, chemistry.com, okcupid.com, meetic.com, howaboutwe.com, speeddate.com, twoo.com and the websites we operate (ourtime.com, senior peoplemeet.com, Seriousdatings. comand other sites listed on <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.peoplemedia.com)\">www.peoplemedia.com)</a>. We may share information we collect, including your profile and personal information such as your name and contact information, photos, interests, activities and transactions on our website, with IAC companies. As part of our online service, your profile may be registered on and/or appear in search results or other areas of other online dating websites owned by IAC. The privacy policies of all IAC online dating companies are similar to our privacy policy.</li><li><strong>Other Situations</strong>. We also may disclose your information, including personal information:</li></ul><ul><ul><li>In response to a subpoena or similar investigative demand, a court order, or a request for cooperation from a law enforcement or other government agency; to establish or exercise our legal rights; to defend against legal claims; or as otherwise required by law. In such cases, we may raise or waive any legal objection or right available to us.</li><li>When we believe disclosure is appropriate in connection with efforts to investigate, prevent, or take other action regarding illegal activity, suspected fraud or other wrongdoing; to protect and defend the rights, property or safety of our company, our users, our employees, or others; to comply with applicable law or cooperate with law enforcement; or to enforce our website terms and conditions or other agreements or policies.</li><li>In connection with a substantial corporate transaction, such as the sale of our business, a divestiture, merger, consolidation, or asset sale, or in the unlikely event of bankruptcy.</li></ul></ul><p><u>Aggregated and/or non-personal information.</u>&nbsp;We may share non-personal information we collect under any of the above circumstances. We may also share it with IAC companies and third parties to develop and deliver targeted advertising on our site and on websites or applications of third parties, and to analyze and report on advertising you see. We may combine non-personal information we collect with additional non-personal information collected from other sources. We also may share aggregated, non-personal information, or personal information in hashed, non-human readable form, with third parties, including advisors, advertisers and investors, for the purpose of conducting general business analysis or other business purposes. For example, we may engage a data provider who may collect web log data from you (including IP address and information about your browser or operating system), or place or recognize a unique cookie on your browser to enable you to receive customized ads or content. The cookies may reflect de-identified demographic or other data linked to data you voluntarily have submitted to us (such as your email address), that we may share with a data provider solely in hashed, non-human readable form. To opt-out of cookies that may be set by third party data or advertising partners, please go to</p><p>If you would like to opt-out of third-party mobile application ad tracking and analytics, please visit here.</p><p><strong>Do Not Track Disclosure</strong></p><p>Do Not Track (\"DNT\") is a privacy preference that users can set in their web browsers. DNT is a way for users to inform websites and services that they do not want certain information about their webpage visits collected over time and across websites or online services. We are committed to providing you with meaningful choices about the information we collect and that is why we provide the opt-out links in the Privacy Policy. However, we do not recognize or respond to any DNT signals as the Internet industry works toward defining exactly what DNT means, what it means to comply with DNT, and a common approach to responding to DNT.</p><p><strong>Third-party websites</strong></p><p>There are a number of places on our website where you may click on a link to access other websites that do not operate under this Privacy Policy. For example, if you click on an advertisement on our website, you may be taken to a website that we do not control. These third-party websites may independently solicit and collect information, including personal information, from you and, in some instances, provide us with information about your activities on those websites. We recommend that you consult the privacy statements of all third-party websites you visit by clicking on the \"privacy\" link typically located at the bottom of the webpage you are visiting.</p><p><strong>How you can access your information</strong></p><p>If you have an online account with us, you have the ability to review and update your personal information online by logging into your account and clicking on your account settings. More information about how to contact us is provided below. If you have an online account with us, you also may close your account at any time by visiting your account settings. If you close your account, we may still retain certain information associated with your account for analytical purposes and recordkeeping integrity, as well as to prevent fraud, collect any fees owed, enforce our terms and conditions, take actions we deem necessary to protect the integrity of our website or our users, or take other actions otherwise permitted by law. In addition, if certain information has already been provided to third parties as described in this Privacy Policy, retention of that information will be subject to those third parties\' policies.</p><p><strong>Your choices about collection and use of your information</strong></p><ul><li>You can choose not to provide us with certain information, but that may result in you being unable to use certain features of our site because such information may be required in order for you to register as a member; purchase products or services; participate in a contest, promotion, survey, or sweepstakes; ask a question; or initiate other transactions.</li><li>When you register on our site, you consent to receive email messages from us. At any time you can choose to no longer receive commercial or promotional emails from us by visiting your account settings page. You also will be given the opportunity, in any commercial email that we send to you, to opt ou</li></ul>\r\n\r\n<br><p></p>', 'policy', '2017-09-16 02:38:48');
INSERT INTO `admin_cms_tbl` (`id`, `heading`, `content`, `pagename`, `datetime`) VALUES
(3, NULL, '<p><br>Terms and Conditions &nbsp; Effective Date: Aug 12, 2016<br><br>The Terms and Conditions applies to the Serious Datings website and all related sites, applications, services and tools regardless of how you access or use any of them.<br><br>Consent<br><br>You accept our Terms and Conditions by signing up, accessing or using our site, content, services, products, technologies or any feature we offered on the website, related site, applications, services (collectively Serious Datings or Dating Site, interchangeably).<br><br>We may alter the Terms and Conditions at any time. The revised version will be effective as of the published effective date. If the revised version includes an essential change, we will notify you at least 30 days before the revised Terms and Conditionsâ€™s effective date. After this period, you will be considered as having consented to all amendments to the Terms and Conditions.<br><br>The Operator<br><br>Serious Datings is operated by Merl Matrix GmbH. The Operator reserves the right, at its sole discretion, to deny further or continuing access to our Dating Site to any visitor, including, without limitation, any user that has violated any aspect of the Terms and Conditions in the view of the Operator.<br><br>Age<br><br>Users under age 18 are not authorized to use Serious Datings or any of their features. The Operator is not responsible for verifying the userâ€™s age, however, it may ask for proof.<br><br>Personal data<br><br>The Operator advices you to use caution before you share personal or identifiable information on our Dating Site.<br><br>The Operator does not conduct criminal check of its users therefore itâ€™s not responsible either of the verification of the usersâ€™ data or for the information you share about yourself with others.<br><br>You are authorized to use our Dating Site only if you have never been registered as a sex offender with any government entity.<br><br>Your safety<br><br>Your safety and security are important for us. Still, we cannot verify or control the intentions of our users. Please be cautious. It is normal to share personal information about yourself with others on a dating platform. However, please be aware, with the current technologies and third party services, it is possible to search for your public records on the Internet by using your pictures, phone number, email address or even your self-introduction. It might be possible to locate you on other websites by your real name. If you believe that any user of our Dating Site is harassing you or using your personal information for unlawful purposes please inform the local law enforcement authorities then contact us too.<br><br>If you are under 18 years old and you accessed our Dating Site by providing false information about your age, you might be putting yourself and others in danger. You agree that the Operator is not responsible for the information you provided. The Operator is not liable directly or indirectly for any losses or damages relating to the conduct of you or anyone else in connection with the use of Serious Datings.<br><br>By accessing the Serious Datings you agree to use any personal information provided to you by other users of our Dating Site in a lawful and responsible manner. You further agree that you will not use personal information about other users of Serious Datings for any reason without the express prior consent of the user that has provided such information to you.<br><br>Privacy<br><br>You should know that all information submitted on Serious Datings might be publicly accessible. Important and private information should be protected by you. We are not responsible for protecting, nor are we liable for failing to protect, the privacy of electronic mail or other information transferred through the Internet or any other network that you may utilize.<br><br>You agree that the Operator stores your personal information (email address, messages, pictures) on its servers in order to provide the services of Serious Datings. Please refer to our Privacy Policy.<br><br>Security<br><br>Your safety and trust is important for us. We are doing our best to protect it. The Operator uses industry standard technologies such as firewalls, ssl, password hashing, session encryption to protect your confidential information. We will never give away your confidential information (real name, address, IP, computer or browser information) to anyone with the sole exception of valid and verified legal request of the Swiss authorities. We will never give away your email address to third parties except our Payment Service Provider (PSP). We provide our PSP with such information only if you purchase a Subscription. Please refer to our Privacy Policy.<br><br>Despite our efforts, perfect security does not exist. We are not responsible in any direct or indirect way if any of your personally identifiable information becomes public under any circumstances.<br><br>Access and proprietary rights<br><br>The pages and any other content of Serious Datings may not be copied, distributed, modified, published, or transmitted in any other manner, including use for creative work or to sell or promote other products. Violation of this restriction may result in infringement of intellectual property and contractual rights of Merl Matrix GmbH or third parties which is prohibited by law and could result in substantial civil and criminal penalties.<br><br>Links<br><br>Our Dating Site may contain links to other websites that are not operated or controlled by the Operator. Use of these links to access other internet sites is at your own risk. The Operator is not responsible for the accuracy, reliability or quality of any information or services provided or products sold at these sites. The Operator establishes links to other websites for the convenience of its users; however, such links are not intended to be an endorsement of the other website.<br><br>Disclaimer<br><br>Use of Serious Datings is provided \"as is, where is\", without warranty of any kind. In no event shall Merl Matrix GmbH or any of the operator or owner entities be liable or responsible for damages of any kind incurred by you as a result of using Serious Datings. If you do not agree please discontinue using our Dating Site.<br><br>Law<br><br>Serious Datings relies on internet services provided in other countries around the world. However, Serious Datings is operated by a Swiss company under the Swiss laws. You are authorized to use Serious Datings from any country permits you to do so. The Operator is not responsible if your local laws conflict with the Swiss laws, or any of our content or services. This is your responsibility.<br><br>Your local laws do not alter and have no effect on our Terms and Conditions, Privacy Policy and Refund Policy. Use our Dating Site only if you agree.<br><br>By using Serious Datings in any manner you agree the above. By doing so you also give up your right to go to court to assert or defend any claims between you and Serious Datings or the Operator. You also give up your right to participate in a class action or other class proceeding. Your rights will be determined by a neutral arbitrator, not a judge or a jury.<br><br>Our Dating Site is for your personal use only and may not be used in connection with any commercial endeavors. Organizations, companies, and/or businesses may not join and use Serious Datings for any purpose. Illegal and/or unauthorized uses of Serious Datings, including collecting usernames and/or email addresses by electronic or other means for the purpose of sending unsolicited email or using personal identifying information for commercial purposes, linking to our Dating Site or unauthorized framing may be investigated and appropriate legal action will be taken, including without limitation, civil, criminal, and injunctive redress. Use of Serious Datings is with our permission, which may be revoked at any time, for any reason, in our sole discretion. At our sole discretion, we may take reasonable steps, including limiting the numbers of emails or messages you send or receive and electronically filtering or throttling or terminating your account, your messages or your e-mail.<br><br>Conduct<br><br>In your digital interactions with other users (including, but not limited to: messages, instant messages, uploaded or shared images, journal postings, and forum comments), you agree to conduct yourself civilly and respectfully. While using Serious Datings, you agree that you shall not under any circumstances harass or make mischief against any other user of our Dating Site.<br><br>The Operator reserves the right to determine, at its sole discretion, what constitutes harassment or mischief, and where that has occurred; and may, also at its sole discretion, partially or completely deny service to any infringing party.<br><br>The Operator may request and accept the help of its active users to moderate flagged messages, comments and other content to determine if a userâ€™s conduct is harmful to the community.<br><br>The Operator has neither technical nor human resources to check each profile, image, message or any kind of content generated by its users. If you find improper content on our Dating Site, please contact us. We cannot guarantee that we will respond to each case, however, we will investigate the reports and act based on our Terms and Conditions and the interests of our users.<br><br>Communication<br><br>You agree to receive email messages from us. These emails may be transactional or relationship communications relating to Serious Datings, such as administrative notices and service announcements or changes, or emails containing commercial offers from us, promotions or special offers from us.<br><br>Sending email is our primary communication method with you. To use our Dating Site, we require you to confirm your email address. Moreover, we register the emails bouncing back to us from your email address. When you are signed in, we display an alert on each page if your email address is either unconfirmed or bouncing.<br><br>We notify you about changes in our Terms and Conditions, Privacy Policy, Refund Policy or features using your provided email address.<br><br>Clarity<br><br>Our Terms and Conditions, Privacy Policy and Refund Policy remain valid regardless any use of informal legal terms, language, typing errors or other mistakes either in the writing or in any of the translations.<br><br>If any part of the Terms and Conditions, the Privacy Policy or the Refund Policy is unclear or ambiguous for you, you must contact us before continuing the use of Serious Datings.<br><br>If any of our terms would be determined, by a neutral arbitrator, to be invalid, the rest or our terms remain valid.<br></p>', 'Terms and condiitions', '2017-09-16 02:41:49'),
(4, NULL, '<p>\r\n\r\n</p><p><strong>About us</strong></p><p><strong>Why Serious dating we help you break the ice, you don\'t just sit and wait to received a messages, you get to meet in person at local plan events where you get to meet &nbsp;in person, before meet along.</strong><strong>&nbsp;</strong></p><p>Seriousdatings.com is a dating site for singles in the U.S. Founded in 2005, Seriousdatings.com has built the largest community for singles looking for love, relationships, friendship and dates. Our mission is simple: Creating Relationships. Connecting Lives events.</p><p>dating has never been so easy. Seriousdatings.com &nbsp;provides a simple, safe and fun atmosphere which makes it easy to quickly view and contact thousands of singles in your area. Our one of a kind profile system allows members to setup photo albums, share interests and much more. All the features you need to meet signal men and women are at your fingertips. Send flirts, send messages, use our live chat, post and browse pictures, and much more. Create your free profile. and search our signal personals for exactly what you want.</p><p>If you have never experienced the power of internet dating you are missing out on an incredible opportunity. Beyond typical online dating, Seriousdatings.com is a focused community dedicated to signal dating. No need to bother with any other dating sites. Millions of singles are trying online dating sites and if you want to be a part of the largest signal dating site in America and want to meet &nbsp;singles in your area, </p>\r\n\r\n<br><p></p>', '', '2017-09-19 02:15:26'),
(5, NULL, '<p>Latest New</p><p>Todays &nbsp; mmm</p>', 'news', '2017-09-19 02:20:23'),
(6, NULL, '<p>\r\n\r\n</p><div><p>Seriousdatings.com is dedicated and devoted with one purpose, helping single-minded people break the ice in meeting their soul mate. Due to our personal commitments, there is very little time to find that special someone. Dating should be meaningful and rewarding not stressful.</p></div><p></p>', 'Welcome', '2017-09-22 23:50:50'),
(7, NULL, '<p>\r\n\r\nSpeed dating&nbsp;is formalized matchmaking process. the purpose is to encourage people to meet many singles. Speed Dating is a fun, safe and efficient way for busy singles .<br></p>', 'Speed', '2017-09-22 23:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `cat_id` int(5) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`cat_id`, `category_name`) VALUES
(1, 'Online Dating'),
(3, 'Dating Rules');

-- --------------------------------------------------------

--
-- Table structure for table `compatability`
--

CREATE TABLE `compatability` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `match_id` varchar(10) NOT NULL,
  `percentage` int(11) NOT NULL,
  `factors` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compatability`
--

INSERT INTO `compatability` (`id`, `user_id`, `match_id`, `percentage`, `factors`) VALUES
(1, 'hasan', '1', 93, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,partnerDependability: What every happen,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Green Eye,bodyType: Definitive \'Hard Gainer\',zodicSign: 2,drink: No,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Muslims,income: Less than $5000,tatoos: Some,relationshipStatus: Single,wantKids: No,motherBorn: dwmotherBorn: dw,fatherBorn: jnk,'),
(2, 'hasan', '2', 93, 'relationshipGoal: to get married,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Blonde,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',zodicSign: 8,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: English,ethnicity: Hispanic or Latino ,religiousBeliefs: Muslims,income: Less than $5000,tatoos: Some,relationshipStatus: We are friends,wantKids: Maybe,motherBorn: PakistanmotherBorn: Pakistan,fatherBorn: Pakistan,'),
(3, 'hasan', '11', 93, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Short,eyeColor: Green Eye,bodyType: Delicate Built Body,zodicSign: 1,drink: No,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Not Hispanic ,religiousBeliefs: Muslims,income: 1-5000,tatoos: Yes,relationshipStatus: Engaged,wantKids: No,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(4, 'hasan', '12', 93, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Auburn,hairStyle: Thin,eyeColor: Green Eye,bodyType: Flat Chest,zodicSign: 5,drink: Yes,excercise: five, three, two time a week,excerciseSchedule: triceps,educationLevel: Level 6- Bachelor\'s ,language: Spanish,ethnicity: Not Hispanic ,religiousBeliefs: Jews,income: 5000-10000,tatoos: Yes,relationshipStatus: I\'m in a serious relationship,wantKids: Maybe,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(5, 'admin', '1', 53, 'haveChildren: Yes,drugs: No,hairColor: Light Ash Blonde,bodyType: Definitive \'Hard Gainer\',zodicSign: 2,smoke: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,relationshipStatus: Single,motherBorn: dwmotherBorn: dw,fatherBorn: jnk,'),
(6, 'admin', '2', 37, 'relationshipGoal: to get married,haveChildren: Yes,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',smoke: Yes,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,ethnicity: Hispanic or Latino ,'),
(7, 'admin', '12', 23, 'haveChildren: Yes,drugs: No,drink: Yes,language: Spanish,income: 5000-10000,tatoos: Yes,'),
(8, 'Hello1', '1', 23, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,friendshipBetweenPartners: Very Important,drink: No,excercise: regularly,'),
(9, 'Hello1', '2', 27, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,excercise: regularly,language: English,'),
(10, 'Hello1', '12', 33, 'relationshipGoal: short term relationship,haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,smoke: No,ethnicity: Not Hispanic ,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(11, 'Hello1', '13', 53, 'relationshipGoal: short term relationship,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,smoke: No,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 5- High School Diploma ,religiousBeliefs: Christians,tatoos: No,relationshipStatus: Not sure,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(12, 'admin', '13', 37, 'haveChildren: No,friendshipBetweenPartners: Important,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',zodicSign: 2,drink: Yes,excercise: regularly,religiousBeliefs: Christians,income: 5000-10000,wantKids: Yes,'),
(13, 'hki', '1', 33, 'haveChildren: Yes,friendshipBetweenPartners: Very Important,hairStyle: Long,eyeColor: Green Eye,bodyType: Definitive \'Hard Gainer\',smoke: Yes,excercise: regularly,language: Spanish,income: Less than $5000,'),
(14, 'hki', '2', 43, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Blonde,hairStyle: Long,bodyType: Definitive \'Hard Gainer\',smoke: Yes,drink: Yes,excercise: regularly,income: Less than $5000,'),
(15, 'hki', '12', 40, 'haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,eyeColor: Green Eye,drink: Yes,language: Spanish,ethnicity: Not Hispanic ,tatoos: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(16, 'hki', '13', 50, 'partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,hairStyle: Long,bodyType: Definitive \'Hard Gainer\',drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 5- High School Diploma ,religiousBeliefs: Christians,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(17, 'hki', '14', 57, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Long,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,religiousBeliefs: Christians,tatoos: Yes,relationshipStatus: In a relationship, but not working,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(18, 'Mark', '1', 70, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,partnerDependability: What every happen,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Green Eye,bodyType: Definitive \'Hard Gainer\',drink: No,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Muslims,gender: Female,tatoos: Some,wantKids: No,'),
(19, 'Mark', '2', 63, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Light Blonde,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: English,ethnicity: Hispanic or Latino ,religiousBeliefs: Muslims,tatoos: Some,wantKids: Maybe,'),
(20, 'Mark', '12', 83, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Auburn,hairStyle: Thin,eyeColor: Green Eye,bodyType: Flat Chest,smoke: No,drink: Yes,excercise: five, three, two time a week,excerciseSchedule: triceps,educationLevel: Level 6- Bachelor\'s ,language: Spanish,ethnicity: Not Hispanic ,religiousBeliefs: Jews,income: 5000-10000,tatoos: Yes,wantKids: Maybe,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(21, 'Mark', '13', 83, 'haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,hairColor: Beeline Honey,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 5- High School Diploma ,language: Russian,ethnicity: Alaska Native,religiousBeliefs: Christians,income: 5000-10000,gender: Female,tatoos: No,relationshipStatus: Not sure,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(22, 'Mark', '14', 80, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Somewhat Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Delicate Built Body,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 4- GED Certificate ,language: Japanese,ethnicity: Black,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(23, 'Mark', '15', 73, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Beeline Honey,hairStyle: Mohawk,eyeColor: Hazel Eye ,bodyType: Rectangular Shaped,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: hamstrings,educationLevel: Level 4- GED Certificate ,language: Hindi,ethnicity: Not Hispanic ,religiousBeliefs: Muslims,income: 5000-10000,tatoos: Yes,wantKids: Yes,'),
(24, 'Mark', '16', 80, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Reddish Blonde,hairStyle: Celebrity,eyeColor: Green Eye,bodyType: Mature Muscle,smoke: No,drink: No,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,income: 5000-10000,tatoos: No,wantKids: No,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(25, 'kishor', '1', 37, 'whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,partnerDependability: What every happen,friendshipBetweenPartners: Very Important,eyeColor: Green Eye,smoke: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,income: Less than $5000,wantKids: No,'),
(26, 'kishor', '2', 33, 'sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,smoke: Yes,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,income: Less than $5000,'),
(27, 'kishor', '12', 13, 'friendshipBetweenPartners: Very Important,eyeColor: Green Eye,drink: Yes,'),
(28, 'kishor', '13', 23, 'haveChildren: No,sexualCompatibility: Sometime,drugs: Yes,drink: Yes,excercise: regularly,tatoos: No,'),
(29, 'kishor', '14', 23, 'relationshipGoal: long term relationship,friendshipBetweenPartners: Very Important,drugs: Yes,drink: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,'),
(30, 'kishor', '15', 23, 'relationshipGoal: long term relationship,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,'),
(31, 'kishor', '16', 37, 'sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Celebrity,eyeColor: Green Eye,bodyType: Mature Muscle,zodicSign: 11,excercise: regularly,tatoos: No,wantKids: No,'),
(32, 'kishor', '17', 40, 'relationshipGoal: long term relationship,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Celebrity,eyeColor: Green Eye,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,income: Less than $5000,'),
(33, 'test', '1', 30, 'haveChildren: Yes,sexualCompatibility: What is that,hairColor: Light Ash Blonde,hairStyle: Long,bodyType: Definitive \'Hard Gainer\',smoke: Yes,language: Spanish,income: Less than $5000,'),
(34, 'test', '2', 27, 'haveChildren: Yes,drugs: Yes,hairStyle: Long,bodyType: Definitive \'Hard Gainer\',smoke: Yes,drink: Yes,income: Less than $5000,'),
(35, 'test', '12', 30, 'haveChildren: Yes,sexualCompatibility: What is that,height: 5.5,drink: Yes,educationLevel: Level 6- Bachelor\'s ,language: Spanish,ethnicity: Not Hispanic ,tatoos: Yes,'),
(36, 'test', '13', 33, 'friendshipBetweenPartners: Important,drugs: Yes,hairStyle: Long,height: 5.5,bodyType: Definitive \'Hard Gainer\',drink: Yes,excerciseSchedule: shoulders,religiousBeliefs: Christians,wantKids: Yes,'),
(37, 'test', '14', 53, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Somewhat Important,sexualCompatibility: What is that,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,height: 5.5,drink: Yes,excerciseSchedule: shoulders,religiousBeliefs: Christians,tatoos: Yes,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(38, 'test', '15', 30, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,drugs: Yes,ethnicity: Not Hispanic ,tatoos: Yes,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(39, 'test', '16', 23, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,drugs: Yes,excerciseSchedule: shoulders,ethnicity: Not Hispanic ,religiousBeliefs: Christians,'),
(40, 'test', '17', 37, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,drugs: Yes,drink: Yes,language: Spanish,religiousBeliefs: Christians,income: Less than $5000,tatoos: Yes,wantKids: Yes,'),
(41, 'test', '18', 70, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,height: 5.5,zodicSign: 1,smoke: Yes,drink: Yes,excerciseSchedule: shoulders,language: Spanish,ethnicity: Not Hispanic ,income: Less than $5000,tatoos: Yes,relationshipStatus: In a relationship, but not working,wantKids: Yes,motherBorn: testmotherBorn: test,fatherBorn: test,'),
(42, 'tom', '1', 30, 'friendshipBetweenPartners: Very Important,hairColor: Light Ash Blonde,zodicSign: 2,drink: No,excercise: regularly,ethnicity: Hispanic or Latino ,religiousBeliefs: Muslims,wantKids: No,'),
(43, 'tom', '2', 33, 'whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,excercise: regularly,language: English,ethnicity: Hispanic or Latino ,religiousBeliefs: Muslims,'),
(44, 'tom', '12', 33, 'whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,smoke: No,excerciseSchedule: triceps,tatoos: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(45, 'tom', '14', 47, 'relationshipGoal: long term relationship,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,bodyType: Delicate Built Body,zodicSign: 2,smoke: No,excercise: regularly,income: 1-5000,tatoos: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(46, 'tom', '15', 33, 'relationshipGoal: long term relationship,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,smoke: No,excercise: regularly,religiousBeliefs: Muslims,tatoos: Yes,'),
(47, 'tom', '16', 43, 'partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,smoke: No,drink: No,excercise: regularly,language: English,wantKids: No,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(48, 'tom', '17', 37, 'relationshipGoal: long term relationship,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,smoke: No,excercise: regularly,ethnicity: Hispanic or Latino ,tatoos: Yes,relationshipStatus: Not sure,'),
(49, 'tom', '18', 33, 'relationshipGoal: long term relationship,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,excercise: regularly,religiousBeliefs: Muslims,tatoos: Yes,'),
(50, 'tom', '19', 33, 'relationshipGoal: long term relationship,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,excercise: regularly,ethnicity: Hispanic or Latino ,tatoos: Yes,'),
(51, 'tom', '20', 33, 'relationshipGoal: long term relationship,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,excercise: regularly,ethnicity: Hispanic or Latino ,tatoos: Yes,'),
(52, 'tom', '21', 37, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,smoke: No,relationshipStatus: Not sure,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(53, 'Tim', '1', 20, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,smoke: Yes,excerciseSchedule: chest,'),
(54, 'Tim', '2', 33, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,eyeColor: Hazel Eye ,smoke: Yes,drink: Yes,excerciseSchedule: chest,language: English,'),
(55, 'Tim', '12', 30, 'relationshipGoal: short term relationship,haveChildren: Yes,partnerDependability: Very Important,drink: Yes,tatoos: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(56, 'Tim', '14', 40, 'haveChildren: Yes,drugs: Yes,eyeColor: Hazel Eye ,drink: Yes,religiousBeliefs: Christians,income: 1-5000,tatoos: Yes,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(57, 'Tim', '15', 27, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,eyeColor: Hazel Eye ,tatoos: Yes,wantKids: Yes,'),
(58, 'Tim', '16', 37, 'relationshipGoal: short term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,language: English,religiousBeliefs: Christians,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(59, 'Tim', '17', 37, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,zodicSign: 3,drink: Yes,excerciseSchedule: chest,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,'),
(60, 'Tim', '18', 33, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,eyeColor: Hazel Eye ,smoke: Yes,drink: Yes,tatoos: Yes,wantKids: Yes,'),
(61, 'Tim', '19', 40, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,eyeColor: Hazel Eye ,smoke: Yes,drink: Yes,excerciseSchedule: chest,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,'),
(62, 'Tim', '20', 40, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,eyeColor: Hazel Eye ,smoke: Yes,drink: Yes,excerciseSchedule: chest,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,'),
(63, 'Tim', '21', 37, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,eyeColor: Hazel Eye ,bodyType: Excellent Posture,religiousBeliefs: Christians,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(64, 'Tim', '22', 47, 'relationshipGoal: short term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,eyeColor: Hazel Eye ,excercise: once a week,religiousBeliefs: Christians,income: 1-5000,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(65, 'kim', '1', 43, 'haveChildren: Yes,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Green Eye,bodyType: Definitive \'Hard Gainer\',zodicSign: 2,smoke: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,religiousBeliefs: Muslims,income: Less than $5000,gender: Female,'),
(66, 'kim', '2', 43, 'haveChildren: Yes,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Light Blonde,bodyType: Definitive \'Hard Gainer\',smoke: Yes,drink: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,religiousBeliefs: Muslims,income: Less than $5000,wantKids: Maybe,'),
(67, 'kim', '12', 37, 'haveChildren: Yes,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Green Eye,drink: Yes,tatoos: Yes,wantKids: Maybe,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(68, 'kim', '14', 50, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Somewhat Important,friendshipBetweenPartners: Very Important,zodicSign: 2,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 4- GED Certificate ,tatoos: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(69, 'kim', '15', 33, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,excercise: regularly,educationLevel: Level 4- GED Certificate ,religiousBeliefs: Muslims,tatoos: Yes,'),
(70, 'kim', '16', 37, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,eyeColor: Green Eye,excercise: regularly,excerciseSchedule: shoulders,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(71, 'kim', '17', 43, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,eyeColor: Green Eye,drink: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,income: Less than $5000,tatoos: Yes,relationshipStatus: Not sure,'),
(72, 'kim', '18', 47, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,smoke: Yes,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 4- GED Certificate ,religiousBeliefs: Muslims,income: Less than $5000,tatoos: Yes,'),
(73, 'kim', '19', 43, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,bodyType: Definitive \'Hard Gainer\',smoke: Yes,drink: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,income: Less than $5000,tatoos: Yes,'),
(74, 'kim', '20', 43, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,bodyType: Definitive \'Hard Gainer\',smoke: Yes,drink: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,income: Less than $5000,tatoos: Yes,'),
(75, 'kim', '21', 40, 'relationshipGoal: long term relationship,haveChildren: Yes,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,excerciseSchedule: shoulders,language: German,relationshipStatus: Not sure,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(76, 'kim', '22', 43, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Light Blonde,hairStyle: Short,zodicSign: 2,ethnicity: White,gender: Female,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(77, 'kim', '23', 43, 'relationshipGoal: long term relationship,haveChildren: Yes,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,height: 5.6,zodicSign: 2,smoke: Yes,excercise: regularly,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(78, 'HELPP', '1', 47, 'haveChildren: Yes,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Green Eye,smoke: Yes,drink: No,excercise: regularly,excerciseSchedule: chest,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Muslims,income: Less than $5000,'),
(79, 'HELPP', '2', 40, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,hairColor: Light Blonde,smoke: Yes,excercise: regularly,excerciseSchedule: chest,ethnicity: Hispanic or Latino ,religiousBeliefs: Muslims,income: Less than $5000,'),
(80, 'HELPP', '12', 40, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Green Eye,language: Spanish,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(81, 'HELPP', '14', 37, 'relationshipGoal: long term relationship,haveChildren: Yes,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,excercise: regularly,relationshipStatus: In a relationship, but not working,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(82, 'HELPP', '15', 30, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,excercise: regularly,religiousBeliefs: Muslims,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(83, 'HELPP', '16', 37, 'haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,eyeColor: Green Eye,drink: No,excercise: regularly,tatoos: No,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(84, 'HELPP', '17', 43, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,eyeColor: Green Eye,zodicSign: 3,excercise: regularly,excerciseSchedule: chest,language: Spanish,ethnicity: Hispanic or Latino ,income: Less than $5000,wantKids: Yes,'),
(85, 'HELPP', '18', 40, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,smoke: Yes,excercise: regularly,language: Spanish,religiousBeliefs: Muslims,income: Less than $5000,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(86, 'HELPP', '19', 43, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,smoke: Yes,excercise: regularly,excerciseSchedule: chest,language: Spanish,ethnicity: Hispanic or Latino ,income: Less than $5000,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(87, 'HELPP', '20', 40, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,smoke: Yes,excercise: regularly,excerciseSchedule: chest,language: Spanish,ethnicity: Hispanic or Latino ,income: Less than $5000,wantKids: Yes,'),
(88, 'HELPP', '21', 40, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: No,tatoos: No,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(89, 'HELPP', '22', 40, 'haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,hairColor: Light Blonde,hairStyle: Short,drink: No,tatoos: No,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(90, 'HELPP', '23', 53, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: No,height: 5.6,smoke: Yes,drink: No,excercise: regularly,educationLevel: Level 5- High School Diploma ,tatoos: No,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(91, 'HELPP', '24', 50, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,hairStyle: Short,height: 5.6,bodyType: Gains Muscle Easily,smoke: Yes,excercise: regularly,educationLevel: Level 5- High School Diploma ,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(92, 'Va', '1', 30, 'eyeColor: Green Eye,excercise: regularly,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Muslims,gender: Female,relationshipStatus: Single,'),
(93, 'Va', '2', 30, 'partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,drink: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,ethnicity: Hispanic or Latino ,religiousBeliefs: Muslims,'),
(94, 'Va', '12', 33, 'partnerDependability: Very Important,eyeColor: Green Eye,drink: Yes,language: Spanish,income: 5000-10000,tatoos: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(95, 'Va', '14', 47, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,drugs: Yes,bodyType: Delicate Built Body,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 4- GED Certificate ,tatoos: Yes,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(96, 'Va', '15', 40, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,religiousBeliefs: Muslims,income: 5000-10000,tatoos: Yes,wantKids: Yes,'),
(97, 'Va', '16', 43, 'whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,eyeColor: Green Eye,excercise: regularly,excerciseSchedule: shoulders,income: 5000-10000,relationshipStatus: Single,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(98, 'Va', '17', 50, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,eyeColor: Green Eye,zodicSign: 3,drink: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,tatoos: Yes,wantKids: Yes,'),
(99, 'Va', '18', 47, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 4- GED Certificate ,language: Spanish,religiousBeliefs: Muslims,tatoos: Yes,wantKids: Yes,'),
(100, 'Va', '19', 43, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,drink: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,tatoos: Yes,wantKids: Yes,'),
(101, 'Va', '20', 43, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,drink: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,tatoos: Yes,wantKids: Yes,'),
(102, 'Va', '21', 33, 'relationshipGoal: long term relationship,partnerDependability: Very Important,sexualCompatibility: Sometime,excerciseSchedule: shoulders,income: 5000-10000,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(103, 'Va', '22', 37, 'whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,gender: Female,relationshipStatus: Single,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(104, 'Va', '23', 33, 'relationshipGoal: long term relationship,partnerDependability: Very Important,sexualCompatibility: Sometime,hairStyle: Medium,excercise: regularly,relationshipStatus: Single,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(105, 'Va', '24', 47, 'whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,drugs: Yes,hairColor: Light Golden Blonde,drink: Yes,excercise: regularly,income: 5000-10000,gender: Female,tatoos: Yes,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(106, 'Va', '25', 43, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,drugs: Yes,eyeColor: Green Eye,drink: Yes,educationLevel: Level 4- GED Certificate ,tatoos: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(123, 'Mark', '17', 73, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Light Golden Brown,hairStyle: Celebrity,eyeColor: Green Eye,bodyType: Flat Chest,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,tatoos: Yes,relationshipStatus: Not sure,wantKids: Yes,'),
(124, 'Mark', '18', 67, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Muscular Body,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Not Hispanic ,religiousBeliefs: Muslims,tatoos: Yes,wantKids: Yes,'),
(125, 'Mark', '19', 67, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,'),
(126, 'Mark', '20', 67, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,'),
(127, 'Mark', '21', 90, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Red Hot Cinnamon,hairStyle: Thin,eyeColor: Hazel Eye ,bodyType: Excellent Posture,smoke: No,drink: casual,excercise: five, three, two time a week,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,language: German,ethnicity: Black,religiousBeliefs: Christians,income: 5000-10000,tatoos: No,relationshipStatus: Not sure,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(128, 'Mark', '22', 80, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Light Blonde,hairStyle: Short,eyeColor: Hazel Eye ,bodyType: Muscular Body,smoke: No,drink: No,excercise: once a week,excerciseSchedule: walking,educationLevel: Level 6- Bachelor\'s ,language: Japanese,ethnicity: White,religiousBeliefs: Christians,gender: Female,tatoos: No,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(129, 'Mark', '23', 80, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Medium,eyeColor: Hazel Eye ,bodyType: Excellent Posture,drink: No,excercise: regularly,excerciseSchedule: gym,educationLevel: Level 5- High School Diploma ,language: Japanese,ethnicity: African American,religiousBeliefs: Hindus,tatoos: No,wantKids: No,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(130, 'Mark', '24', 83, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,hairColor: Light Golden Blonde,hairStyle: Short,eyeColor: Hazel Eye ,bodyType: Gains Muscle Easily,drink: Yes,excercise: regularly,excerciseSchedule: jogging,educationLevel: Level 5- High School Diploma ,language: Japanese,ethnicity: African American,religiousBeliefs: Buddhists,income: 5000-10000,gender: Female,tatoos: Yes,relationshipStatus: Not sure,wantKids: Yes,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(131, 'Mark', '25', 80, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Light Ash Blonde,hairStyle: Short,eyeColor: Green Eye,bodyType: Muscular Body,drink: Yes,excercise: once a week,excerciseSchedule: jogging,educationLevel: Level 4- GED Certificate ,language: Japanese,ethnicity: Native Hawaiian or Other Pacific Islander,religiousBeliefs: Buddhists,gender: Female,tatoos: Yes,wantKids: No,motherBorn: United StatesmotherBorn: United States,fatherBorn: United States,'),
(132, 'Mark', '26', 77, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: longer,partnerDependability: What every happen,sexualCompatibility: Very Important,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Chocolate Brown,hairStyle: Natural,eyeColor: Brown,bodyType: Hard Body,smoke: No,drink: casual,excercise: five, three, two time a week,excerciseSchedule: gym,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: 5000-10000,tatoos: No,wantKids: Maybe,'),
(133, 'Mark', '27', 67, 'haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: longer,partnerDependability: Very Important,sexualCompatibility: Very Important,drugs: No,hairColor: Expresso,hairStyle: Thick,eyeColor: Brown,bodyType: Excellent Posture,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: gym,educationLevel: Level 4- GED Certificate ,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,tatoos: No,wantKids: No,'),
(152, 'wam1', '1', 50, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,partnerDependability: What every happen,friendshipBetweenPartners: Very Important,hairStyle: Long,eyeColor: Green Eye,bodyType: Definitive \'Hard Gainer\',zodicSign: 2,drink: No,excercise: regularly,excerciseSchedule: chest,ethnicity: Hispanic or Latino ,tatoos: Some,wantKids: No,'),
(153, 'wam1', '2', 60, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Blonde,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',zodicSign: 8,drink: Yes,excercise: regularly,excerciseSchedule: chest,language: English,ethnicity: Hispanic or Latino ,tatoos: Some,wantKids: Maybe,'),
(154, 'wam1', '12', 53, 'haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,hairStyle: Thin,eyeColor: Green Eye,bodyType: Flat Chest,zodicSign: 5,smoke: No,drink: Yes,excercise: five, three, two time a week,excerciseSchedule: triceps,educationLevel: Level 6- Bachelor\'s ,ethnicity: Not Hispanic ,tatoos: Yes,wantKids: Maybe,'),
(155, 'wam1', '14', 63, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Somewhat Important,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Delicate Built Body,zodicSign: 2,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,ethnicity: Black,religiousBeliefs: Christians,income: 1-5000,tatoos: Yes,wantKids: Yes,'),
(156, 'wam1', '15', 60, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Mohawk,eyeColor: Hazel Eye ,bodyType: Rectangular Shaped,zodicSign: 9,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: hamstrings,ethnicity: Not Hispanic ,tatoos: Yes,wantKids: Yes,'),
(157, 'wam1', '16', 63, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Celebrity,eyeColor: Green Eye,bodyType: Mature Muscle,zodicSign: 11,smoke: No,drink: No,excercise: regularly,excerciseSchedule: shoulders,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,tatoos: No,wantKids: No,'),
(158, 'wam1', '17', 67, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Celebrity,eyeColor: Green Eye,bodyType: Flat Chest,zodicSign: 3,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: chest,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,tatoos: Yes,relationshipStatus: Not sure,wantKids: Yes,'),
(159, 'wam1', '18', 57, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Muscular Body,zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,ethnicity: Not Hispanic ,tatoos: Yes,wantKids: Yes,'),
(160, 'wam1', '19', 60, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: chest,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,'),
(161, 'wam1', '20', 60, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: chest,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,'),
(162, 'wam1', '21', 63, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairStyle: Thin,eyeColor: Hazel Eye ,bodyType: Excellent Posture,zodicSign: 9,smoke: No,drink: casual,excercise: five, three, two time a week,excerciseSchedule: shoulders,ethnicity: Black,religiousBeliefs: Christians,tatoos: No,relationshipStatus: Not sure,wantKids: Yes,'),
(163, 'wam1', '22', 70, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Blonde,hairStyle: Short,eyeColor: Hazel Eye ,bodyType: Muscular Body,zodicSign: 2,smoke: No,drink: No,excercise: once a week,excerciseSchedule: walking,educationLevel: Level 6- Bachelor\'s ,ethnicity: White,religiousBeliefs: Christians,income: 1-5000,tatoos: No,wantKids: Yes,'),
(164, 'wam1', '23', 53, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairStyle: Medium,eyeColor: Hazel Eye ,bodyType: Excellent Posture,zodicSign: 2,drink: No,excercise: regularly,excerciseSchedule: gym,ethnicity: African American,tatoos: No,wantKids: No,'),
(165, 'wam1', '24', 53, 'haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Short,eyeColor: Hazel Eye ,bodyType: Gains Muscle Easily,zodicSign: 2,drink: Yes,excercise: regularly,excerciseSchedule: jogging,ethnicity: African American,tatoos: Yes,relationshipStatus: Not sure,wantKids: Yes,'),
(166, 'wam1', '25', 57, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Short,eyeColor: Green Eye,bodyType: Muscular Body,zodicSign: 2,drink: Yes,excercise: once a week,excerciseSchedule: jogging,ethnicity: Native Hawaiian or Other Pacific Islander,tatoos: Yes,wantKids: No,'),
(167, 'wam1', '27', 50, 'partnerDependability: Very Important,hairStyle: Thick,eyeColor: Brown,bodyType: Excellent Posture,zodicSign: 2,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: gym,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,tatoos: No,wantKids: No,'),
(168, 'wam1', '29', 53, 'haveChildren: Yes,partnerDependability: Very Important,drugs: Yes,hairStyle: Mohawk,eyeColor: Green Eye,bodyType: Mature Muscle,zodicSign: 7,drink: No,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 6- Bachelor\'s ,ethnicity: African American,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,'),
(169, 'wam1', '30', 63, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairStyle: Celebrity,eyeColor: Hazel Eye ,bodyType: Delicate Built Body,zodicSign: 2,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: swimming,language: English,ethnicity: White,religiousBeliefs: Christians,tatoos: No,wantKids: No,'),
(170, 'admin', '15', 30, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,eyeColor: Hazel Eye ,excercise: regularly,educationLevel: Level 4- GED Certificate ,income: 5000-10000,tatoos: Yes,wantKids: Yes,'),
(171, 'admin', '16', 23, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,excercise: regularly,religiousBeliefs: Christians,income: 5000-10000,relationshipStatus: Single,'),
(172, 'admin', '17', 40, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,'),
(173, 'admin', '18', 40, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,hairColor: Light Ash Blonde,eyeColor: Hazel Eye ,smoke: Yes,drink: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,language: Spanish,tatoos: Yes,wantKids: Yes,'),
(174, 'admin', '19', 53, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,hairColor: Light Ash Blonde,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',smoke: Yes,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,'),
(175, 'admin', '20', 53, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,hairColor: Light Ash Blonde,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',smoke: Yes,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,tatoos: Yes,wantKids: Yes,'),
(176, 'admin', '21', 23, 'haveChildren: Yes,drugs: No,eyeColor: Hazel Eye ,religiousBeliefs: Christians,income: 5000-10000,wantKids: Yes,');
INSERT INTO `compatability` (`id`, `user_id`, `match_id`, `percentage`, `factors`) VALUES
(177, 'admin', '22', 30, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,hairStyle: Short,eyeColor: Hazel Eye ,zodicSign: 2,religiousBeliefs: Christians,relationshipStatus: Single,wantKids: Yes,'),
(178, 'admin', '24', 40, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,hairStyle: Short,eyeColor: Hazel Eye ,zodicSign: 2,smoke: Yes,drink: Yes,excercise: regularly,income: 5000-10000,tatoos: Yes,wantKids: Yes,'),
(179, 'admin', '25', 33, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,hairColor: Light Ash Blonde,hairStyle: Short,zodicSign: 2,smoke: Yes,drink: Yes,educationLevel: Level 4- GED Certificate ,tatoos: Yes,'),
(180, 'admin', '27', 33, 'haveChildren: No,sexualCompatibility: Very Important,friendshipBetweenPartners: Important,drugs: No,zodicSign: 2,drink: Yes,excercise: regularly,educationLevel: Level 4- GED Certificate ,religiousBeliefs: Christians,'),
(181, 'admin', '29', 30, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,friendshipBetweenPartners: Important,excercise: regularly,religiousBeliefs: Christians,income: 5000-10000,tatoos: Yes,wantKids: Yes,'),
(182, 'admin', '30', 27, 'haveChildren: Yes,drugs: No,eyeColor: Hazel Eye ,zodicSign: 2,excercise: regularly,religiousBeliefs: Christians,relationshipStatus: Single,'),
(198, 'Mary', '1', 37, 'sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,drink: No,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,wantKids: No,'),
(199, 'Mary', '12', 47, 'whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,height: 5.5,smoke: No,drink: Yes,excercise: five, three, two time a week,excerciseSchedule: triceps,educationLevel: Level 6- Bachelor\'s ,language: Spanish,ethnicity: Not Hispanic ,'),
(200, 'Mary', '15', 30, 'relationshipGoal: long term relationship,friendshipBetweenPartners: Very Important,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: hamstrings,educationLevel: Level 4- GED Certificate ,ethnicity: Not Hispanic ,'),
(201, 'Mary', '16', 40, 'friendshipBetweenPartners: Very Important,zodicSign: 11,smoke: No,drink: No,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,ethnicity: Not Hispanic ,religiousBeliefs: Christians,wantKids: No,'),
(202, 'Mary', '17', 37, 'relationshipGoal: long term relationship,friendshipBetweenPartners: Very Important,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,'),
(203, 'Mary', '18', 37, 'relationshipGoal: long term relationship,friendshipBetweenPartners: Very Important,height: 5.5,bodyType: Muscular Body,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Not Hispanic ,'),
(204, 'Mary', '19', 33, 'relationshipGoal: long term relationship,friendshipBetweenPartners: Very Important,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,'),
(205, 'Mary', '20', 33, 'relationshipGoal: long term relationship,friendshipBetweenPartners: Very Important,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,'),
(206, 'Mary', '21', 40, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,friendshipBetweenPartners: Very Important,drugs: No,smoke: No,drink: casual,excercise: five, three, two time a week,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,ethnicity: Black,religiousBeliefs: Christians,'),
(207, 'Mary', '22', 37, 'friendshipBetweenPartners: Very Important,bodyType: Muscular Body,smoke: No,drink: No,excercise: once a week,excerciseSchedule: walking,educationLevel: Level 6- Bachelor\'s ,ethnicity: White,religiousBeliefs: Christians,income: 1-5000,'),
(208, 'Mary', '24', 27, 'sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drink: Yes,excercise: regularly,excerciseSchedule: jogging,educationLevel: Level 5- High School Diploma ,ethnicity: African American,'),
(209, 'Mary', '25', 33, 'relationshipGoal: long term relationship,friendshipBetweenPartners: Very Important,bodyType: Muscular Body,drink: Yes,excercise: once a week,excerciseSchedule: jogging,educationLevel: Level 4- GED Certificate ,ethnicity: Native Hawaiian or Other Pacific Islander,wantKids: No,'),
(210, 'Mary', '27', 47, 'haveChildren: No,friendshipBetweenPartners: Important,drugs: No,hairStyle: Thick,height: 5.5,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: gym,educationLevel: Level 4- GED Certificate ,ethnicity: Not Hispanic ,religiousBeliefs: Christians,wantKids: No,'),
(211, 'Mary', '30', 47, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,friendshipBetweenPartners: Very Important,drugs: No,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: swimming,educationLevel: Level 7- Masters ,ethnicity: White,religiousBeliefs: Christians,wantKids: No,'),
(212, 'Mary', '38', 63, 'haveChildren: 2,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairStyle: With Bangs,eyeColor: Hazel Eye ,height: 5.8,bodyType: Muscular Body,zodicSign: 11,drink: Sometime,excercise: regularly,excerciseSchedule: swimming,ethnicity: Hispanic or Latino ,tatoos: ,relationshipStatus: Separated,wantKids: Maybe,'),
(213, 'Mary', '39', 57, 'relationshipGoal: long term relationship,haveChildren: 1,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Light Blonde,hairStyle: Bob,eyeColor: Green Eye,height: 5.4,excercise: regularly,excerciseSchedule: gym,educationLevel: Level 7- Masters ,language: English,ethnicity: White,religiousBeliefs: Christians,tatoos: ,'),
(214, 'Mary', '40', 73, 'haveChildren: 1,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Important,eyeColor: Gray,height: 5.5,bodyType: Fragile,zodicSign: 2,smoke: No,drink: Sometime,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: English,ethnicity: White,religiousBeliefs: Christians,tatoos: ,relationshipStatus: Single,wantKids: Yes,'),
(215, 'arp690', '1', 40, 'relationshipGoal: short term relationship,haveChildren: Yes,friendshipBetweenPartners: Very Important,drugs: No,drink: No,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,religiousBeliefs: Muslims,gender: Female,wantKids: No,'),
(216, 'arp690', '12', 20, 'relationshipGoal: short term relationship,haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: No,'),
(217, 'arp690', '15', 43, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,zodicSign: 9,excercise: regularly,educationLevel: Level 4- GED Certificate ,religiousBeliefs: Muslims,'),
(218, 'arp690', '16', 40, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Celebrity,drink: No,excercise: regularly,wantKids: No,'),
(219, 'arp690', '17', 40, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Celebrity,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,'),
(220, 'arp690', '18', 40, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,excercise: regularly,educationLevel: Level 4- GED Certificate ,religiousBeliefs: Muslims,'),
(221, 'arp690', '19', 40, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,'),
(222, 'arp690', '20', 40, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,'),
(223, 'arp690', '21', 40, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Hazel Eye ,bodyType: Excellent Posture,zodicSign: 9,language: German,ethnicity: Black,'),
(224, 'arp690', '22', 37, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,drink: No,gender: Female,'),
(225, 'arp690', '24', 33, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,excercise: regularly,gender: Female,'),
(226, 'arp690', '25', 37, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,educationLevel: Level 4- GED Certificate ,gender: Female,wantKids: No,'),
(227, 'arp690', '27', 30, 'relationshipGoal: casual dating,haveChildren: No,partnerDependability: Very Important,drugs: No,bodyType: Excellent Posture,excercise: regularly,educationLevel: Level 4- GED Certificate ,wantKids: No,'),
(228, 'arp690', '30', 40, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairStyle: Celebrity,eyeColor: Hazel Eye ,excercise: regularly,gender: Female,wantKids: No,'),
(229, 'arp690', '40', 37, 'relationshipGoal: long term relationship,haveChildren: 1,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,drugs: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,gender: Female,tatoos: ,'),
(230, 'arp690', '42', 40, 'relationshipGoal: short term relationship,haveChildren: 1,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,drugs: Yes,bodyType: Excellent Posture,excercise: regularly,language: German,tatoos: ,wantKids: No,'),
(231, 'Mary', '42', 40, 'sexualCompatibility: What is that,friendshipBetweenPartners: Somewhat Important,zodicSign: 11,smoke: No,drink: Sometime,excercise: regularly,excerciseSchedule: swimming,educationLevel: Level 5- High School Diploma ,ethnicity: African American,tatoos: ,wantKids: No,'),
(232, 'Mary', '43', 47, 'relationshipGoal: long term relationship,partnerDependability: Somewhat Important,friendshipBetweenPartners: Very Important,drugs: No,smoke: No,drink: Sometime,excercise: once a week,excerciseSchedule: shoulders,educationLevel: Level 6- Bachelor\'s ,ethnicity: White,religiousBeliefs: Christians,tatoos: ,'),
(233, 'arp690', '43', 27, 'relationshipGoal: long term relationship,haveChildren: 1,friendshipBetweenPartners: Very Important,drugs: No,height: 5.7,gender: Female,tatoos: ,'),
(234, 'arp690', '44', 30, 'relationshipGoal: short term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,friendshipBetweenPartners: Very Important,drugs: No,bodyType: Excellent Posture,tatoos: ,'),
(235, 'Mary', '44', 40, 'haveChildren: No,partnerDependability: Somewhat Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,drink: Sometime,excercise: five, three, two time a week,excerciseSchedule: gym,educationLevel: Level 8- Doctorate  ,ethnicity: African American,tatoos: ,'),
(236, 'arp6902', '1', 30, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,friendshipBetweenPartners: Very Important,drugs: No,drink: No,religiousBeliefs: Muslims,gender: Female,wantKids: No,'),
(237, 'arp6902', '12', 30, 'haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: No,height: 5.5,smoke: No,religiousBeliefs: Jews,tatoos: Yes,'),
(238, 'arp6902', '15', 30, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,smoke: No,religiousBeliefs: Muslims,tatoos: Yes,'),
(239, 'arp6902', '16', 30, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,smoke: No,drink: No,religiousBeliefs: Christians,wantKids: No,'),
(240, 'arp6902', '17', 30, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,smoke: No,religiousBeliefs: Christians,tatoos: Yes,'),
(241, 'arp6902', '18', 30, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,height: 5.5,religiousBeliefs: Muslims,tatoos: Yes,'),
(242, 'arp6902', '19', 27, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,religiousBeliefs: Christians,tatoos: Yes,'),
(243, 'arp6902', '20', 27, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,religiousBeliefs: Christians,tatoos: Yes,'),
(244, 'arp6902', '21', 40, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Red Hot Cinnamon,bodyType: Excellent Posture,smoke: No,ethnicity: Black,religiousBeliefs: Christians,'),
(245, 'arp6902', '22', 37, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,smoke: No,drink: No,excercise: once a week,language: Japanese,religiousBeliefs: Christians,gender: Female,'),
(246, 'arp6902', '24', 33, 'haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,excerciseSchedule: jogging,educationLevel: Level 5- High School Diploma ,language: Japanese,religiousBeliefs: Buddhists,gender: Female,tatoos: Yes,'),
(247, 'arp6902', '25', 43, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,excercise: once a week,excerciseSchedule: jogging,language: Japanese,religiousBeliefs: Buddhists,gender: Female,tatoos: Yes,wantKids: No,'),
(248, 'arp6902', '27', 30, 'partnerDependability: Very Important,drugs: No,hairStyle: Thick,height: 5.5,bodyType: Excellent Posture,smoke: No,religiousBeliefs: Christians,wantKids: No,'),
(249, 'arp6902', '30', 37, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,smoke: No,religiousBeliefs: Christians,gender: Female,wantKids: No,'),
(250, 'arp6902', '43', 33, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Blue,smoke: No,excercise: once a week,religiousBeliefs: Christians,gender: Female,'),
(251, 'arp6902', '44', 37, 'friendshipBetweenPartners: Very Important,drugs: No,bodyType: Excellent Posture,language: Japanese,religiousBeliefs: Judaism,relationshipStatus: Separated,motherBorn: VenezuelamotherBorn: Venezuela,fatherBorn: Venezuela,'),
(252, 'Test2', '1', 67, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,partnerDependability: What every happen,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Green Eye,bodyType: Definitive \'Hard Gainer\',drink: No,excercise: regularly,language: Spanish,ethnicity: Hispanic or Latino ,income: Less than $5000,gender: Female,relationshipStatus: Single,wantKids: No,'),
(253, 'Test2', '12', 57, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Auburn,eyeColor: Green Eye,bodyType: Flat Chest,smoke: No,drink: Yes,language: Spanish,ethnicity: Not Hispanic ,income: 5000-10000,wantKids: Maybe,'),
(254, 'Test2', '15', 60, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Beeline Honey,eyeColor: Hazel Eye ,bodyType: Rectangular Shaped,smoke: No,drink: casual,excercise: regularly,language: Hindi,ethnicity: Not Hispanic ,income: 5000-10000,wantKids: Yes,'),
(255, 'Test2', '16', 73, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Reddish Blonde,eyeColor: Green Eye,bodyType: Mature Muscle,smoke: No,drink: No,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,income: 5000-10000,relationshipStatus: Single,wantKids: No,'),
(256, 'Test2', '17', 67, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Golden Brown,eyeColor: Green Eye,bodyType: Flat Chest,smoke: No,drink: Yes,excercise: regularly,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,wantKids: Yes,'),
(257, 'Test2', '18', 67, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Muscular Body,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,language: Spanish,ethnicity: Not Hispanic ,income: Less than $5000,wantKids: Yes,'),
(258, 'Test2', '19', 67, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',drink: Yes,excercise: regularly,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,wantKids: Yes,'),
(259, 'Test2', '20', 67, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',drink: Yes,excercise: regularly,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,wantKids: Yes,'),
(260, 'Test2', '21', 70, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Red Hot Cinnamon,eyeColor: Hazel Eye ,bodyType: Excellent Posture,smoke: No,drink: casual,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,language: German,ethnicity: Black,religiousBeliefs: Christians,income: 5000-10000,wantKids: Yes,'),
(261, 'Test2', '22', 70, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Blonde,eyeColor: Hazel Eye ,bodyType: Muscular Body,smoke: No,drink: No,language: Japanese,ethnicity: White,religiousBeliefs: Christians,income: 1-5000,gender: Female,relationshipStatus: Single,wantKids: Yes,'),
(262, 'Test2', '24', 63, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Golden Blonde,eyeColor: Hazel Eye ,bodyType: Gains Muscle Easily,drink: Yes,excercise: regularly,language: Japanese,ethnicity: African American,income: 5000-10000,gender: Female,wantKids: Yes,'),
(263, 'Test2', '25', 60, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,eyeColor: Green Eye,bodyType: Muscular Body,drink: Yes,language: Japanese,ethnicity: Native Hawaiian or Other Pacific Islander,income: 50000-100000,gender: Female,wantKids: No,'),
(264, 'Test2', '27', 63, 'relationshipGoal: casual dating,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: longer,partnerDependability: Very Important,sexualCompatibility: Very Important,drugs: No,hairColor: Expresso,eyeColor: Brown,bodyType: Excellent Posture,smoke: No,drink: Yes,excercise: regularly,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,income: 300000-1000000,wantKids: No,'),
(265, 'Test2', '30', 73, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Brown,eyeColor: Hazel Eye ,bodyType: Delicate Built Body,smoke: No,drink: casual,excercise: regularly,educationLevel: Level 7- Masters ,language: English,ethnicity: White,religiousBeliefs: Christians,income: N/A,gender: Female,relationshipStatus: Single,wantKids: No,'),
(266, 'Test2', '43', 77, 'relationshipGoal: long term relationship,haveChildren: 1,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,partnerDependability: Somewhat Important,sexualCompatibility: Very Important,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Cool Brown,eyeColor: Blue,height: 5.7,bodyType: Flat Chest,smoke: No,drink: Sometime,excerciseSchedule: shoulders,language: English,ethnicity: White,religiousBeliefs: Christians,income: 5000-10000,gender: Female,tatoos: ,relationshipStatus: Single,wantKids: Yes,'),
(267, 'Test2', '44', 57, 'relationshipGoal: short term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Somewhat Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Auburn,eyeColor: Green Eye,bodyType: Excellent Posture,drink: Sometime,language: Japanese,ethnicity: African American,income: 50000-100000,tatoos: ,wantKids: Maybe,'),
(268, 'Test2', '45', 83, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Black,bodyType: Hard Body,zodicSign: 8,smoke: No,drink: No,excercise: regularly,educationLevel: Level 7- Masters ,language: English,ethnicity: Asian,religiousBeliefs: Christians,income: 100000-300000,tatoos: ,relationshipStatus: Single,wantKids: Yes,'),
(269, 'john', '1', 27, 'sexualCompatibility: What is that,zodicSign: 2,drink: No,language: Spanish,religiousBeliefs: Muslims,gender: Female,wantKids: No,'),
(270, 'john', '12', 33, 'partnerDependability: Very Important,sexualCompatibility: What is that,bodyType: Flat Chest,excerciseSchedule: triceps,educationLevel: Level 6- Bachelor\'s ,language: Spanish,ethnicity: Not Hispanic ,religiousBeliefs: Jews,wantKids: Maybe,'),
(271, 'john', '15', 27, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,drugs: Yes,ethnicity: Not Hispanic ,religiousBeliefs: Muslims,wantKids: Yes,'),
(272, 'john', '16', 27, 'whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,drugs: Yes,drink: No,ethnicity: Not Hispanic ,religiousBeliefs: Christians,wantKids: No,'),
(273, 'john', '17', 30, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,drugs: Yes,bodyType: Flat Chest,language: Spanish,religiousBeliefs: Christians,wantKids: Yes,'),
(274, 'john', '18', 30, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,drugs: Yes,language: Spanish,ethnicity: Not Hispanic ,religiousBeliefs: Muslims,wantKids: Yes,'),
(275, 'john', '19', 27, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,drugs: Yes,language: Spanish,religiousBeliefs: Christians,wantKids: Yes,'),
(276, 'john', '20', 27, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,drugs: Yes,language: Spanish,religiousBeliefs: Christians,wantKids: Yes,'),
(277, 'john', '21', 17, 'relationshipGoal: long term relationship,partnerDependability: Very Important,religiousBeliefs: Christians,wantKids: Yes,'),
(278, 'john', '22', 37, 'whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,drugs: Yes,zodicSign: 2,drink: No,excercise: once a week,educationLevel: Level 6- Bachelor\'s ,religiousBeliefs: Christians,gender: Female,wantKids: Yes,'),
(279, 'john', '24', 30, 'whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: What is that,drugs: Yes,zodicSign: 2,religiousBeliefs: Buddhists,gender: Female,wantKids: Yes,'),
(280, 'john', '25', 33, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,drugs: Yes,zodicSign: 2,excercise: once a week,religiousBeliefs: Buddhists,gender: Female,wantKids: No,'),
(281, 'john', '27', 23, 'partnerDependability: Very Important,friendshipBetweenPartners: Important,zodicSign: 2,ethnicity: Not Hispanic ,religiousBeliefs: Christians,wantKids: No,'),
(282, 'john', '30', 23, 'relationshipGoal: long term relationship,partnerDependability: Very Important,zodicSign: 2,religiousBeliefs: Christians,gender: Female,wantKids: No,'),
(283, 'john', '43', 30, 'relationshipGoal: long term relationship,bodyType: Flat Chest,excercise: once a week,educationLevel: Level 6- Bachelor\'s ,religiousBeliefs: Christians,gender: Female,tatoos: ,wantKids: Yes,'),
(284, 'john', '44', 20, 'whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,sexualCompatibility: What is that,religiousBeliefs: Judaism,tatoos: ,wantKids: Maybe,'),
(285, 'john', '45', 27, 'relationshipGoal: long term relationship,partnerDependability: Very Important,drink: No,excerciseSchedule: triceps,religiousBeliefs: Christians,tatoos: ,wantKids: Yes,'),
(286, 'john', '46', 43, 'relationshipGoal: long term relationship,friendshipBetweenPartners: Important,drugs: Yes,height: 4.3,educationLevel: Level 6- Bachelor\'s ,religiousBeliefs: Other,tatoos: ,wantKids: No,motherBorn: WorldmotherBorn: World,fatherBorn: World,'),
(287, 'johncarno', '1', 57, 'relationshipGoal: short term relationship,haveChildren: Yes,partnerDependability: What every happen,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Green Eye,drink: No,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,religiousBeliefs: Muslims,income: Less than $5000,gender: Female,wantKids: No,'),
(288, 'johncarno', '12', 47, 'relationshipGoal: short term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairStyle: Thin,eyeColor: Green Eye,drink: Yes,excercise: five, three, two time a week,ethnicity: Not Hispanic ,income: 5000-10000,wantKids: Maybe,'),
(289, 'johncarno', '15', 50, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Mohawk,eyeColor: Hazel Eye ,drink: casual,educationLevel: Level 4- GED Certificate ,ethnicity: Not Hispanic ,religiousBeliefs: Muslims,income: 5000-10000,wantKids: Yes,'),
(290, 'johncarno', '16', 53, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Celebrity,eyeColor: Green Eye,zodicSign: 11,drink: No,language: English,ethnicity: Not Hispanic ,income: 5000-10000,wantKids: No,'),
(291, 'johncarno', '17', 47, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Celebrity,eyeColor: Green Eye,drink: Yes,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,income: Less than $5000,wantKids: Yes,'),
(292, 'johncarno', '18', 53, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,drink: Yes,educationLevel: Level 4- GED Certificate ,ethnicity: Not Hispanic ,religiousBeliefs: Muslims,income: Less than $5000,wantKids: Yes,'),
(293, 'johncarno', '19', 50, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,drink: Yes,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,income: Less than $5000,wantKids: Yes,'),
(294, 'johncarno', '20', 50, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,drink: Yes,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,income: Less than $5000,wantKids: Yes,'),
(295, 'johncarno', '21', 43, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairStyle: Thin,eyeColor: Hazel Eye ,bodyType: Excellent Posture,drink: casual,excercise: five, three, two time a week,income: 5000-10000,wantKids: Yes,'),
(296, 'johncarno', '22', 47, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Short,eyeColor: Hazel Eye ,drink: No,income: 1-5000,gender: Female,wantKids: Yes,'),
(297, 'johncarno', '24', 47, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Short,eyeColor: Hazel Eye ,drink: Yes,income: 5000-10000,gender: Female,wantKids: Yes,'),
(298, 'johncarno', '25', 50, 'haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Short,eyeColor: Green Eye,drink: Yes,educationLevel: Level 4- GED Certificate ,income: 50000-100000,gender: Female,wantKids: No,'),
(299, 'johncarno', '27', 50, 'haveChildren: No,partnerDependability: Very Important,sexualCompatibility: Very Important,friendshipBetweenPartners: Important,drugs: No,hairStyle: Thick,eyeColor: Brown,bodyType: Excellent Posture,drink: Yes,educationLevel: Level 4- GED Certificate ,language: English,ethnicity: Not Hispanic ,income: 300000-1000000,wantKids: No,'),
(300, 'johncarno', '30', 43, 'haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairStyle: Celebrity,eyeColor: Hazel Eye ,drink: casual,language: English,income: N/A,gender: Female,wantKids: No,'),
(301, 'johncarno', '43', 47, 'haveChildren: 1,partnerDependability: Somewhat Important,sexualCompatibility: Very Important,friendshipBetweenPartners: Very Important,drugs: No,hairStyle: Vintage,eyeColor: Blue,drink: Sometime,language: English,income: 5000-10000,gender: Female,tatoos: ,wantKids: Yes,'),
(302, 'johncarno', '44', 53, 'relationshipGoal: short term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Somewhat Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairStyle: Mohawk,eyeColor: Green Eye,bodyType: Excellent Posture,drink: Sometime,excercise: five, three, two time a week,income: 50000-100000,tatoos: ,wantKids: Maybe,'),
(303, 'johncarno', '45', 47, 'haveChildren: No,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Black,drink: No,language: English,income: 100000-300000,tatoos: ,wantKids: Yes,'),
(304, 'johncarno', '46', 47, 'haveChildren: 1,partnerDependability: Somewhat Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Important,drugs: Yes,hairStyle: Shag,eyeColor: Brown,drink: Sometime,excercise: five, three, two time a week,language: English,income: Less than $5000,tatoos: ,wantKids: No,'),
(305, 'johncarno', '47', 53, 'relationshipGoal: short term relationship,haveChildren: No,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Thick,eyeColor: Brown,drink: Always,language: English,religiousBeliefs: Muslims,income: Less than $5000,tatoos: ,wantKids: No,'),
(306, 'myapp', '1', 70, 'relationshipGoal: short term relationship,haveChildren: Yes,partnerDependability: What every happen,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Green Eye,height: -2,bodyType: Definitive \'Hard Gainer\',zodicSign: 2,drink: No,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,income: Less than $5000,gender: Female,relationshipStatus: Single,wantKids: No,'),
(307, 'myapp', '12', 70, 'relationshipGoal: short term relationship,haveChildren: Yes,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Green Eye,height: 5.5,bodyType: Flat Chest,zodicSign: 5,smoke: No,drink: Yes,excercise: five, three, two time a week,excerciseSchedule: triceps,educationLevel: Level 6- Bachelor\'s ,language: Spanish,ethnicity: Not Hispanic ,income: 5000-10000,relationshipStatus: I\'m in a serious relationship,wantKids: Maybe,'),
(308, 'myapp', '15', 70, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,height: 5,bodyType: Rectangular Shaped,zodicSign: 9,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: hamstrings,educationLevel: Level 4- GED Certificate ,language: Hindi,ethnicity: Not Hispanic ,income: 5000-10000,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(309, 'myapp', '16', 73, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Green Eye,height: 6.3,bodyType: Mature Muscle,zodicSign: 11,smoke: No,drink: No,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,income: 5000-10000,relationshipStatus: Single,wantKids: No,'),
(310, 'myapp', '17', 73, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Green Eye,height: 5,bodyType: Flat Chest,zodicSign: 3,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,relationshipStatus: Not sure,wantKids: Yes,'),
(311, 'myapp', '18', 67, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,height: 5.5,bodyType: Muscular Body,zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Not Hispanic ,income: Less than $5000,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(312, 'myapp', '19', 70, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,height: 9,bodyType: Definitive \'Hard Gainer\',zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(313, 'myapp', '20', 70, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,height: 4,bodyType: Definitive \'Hard Gainer\',zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,relationshipStatus: Divorced,wantKids: Yes,'),
(314, 'myapp', '21', 70, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Hazel Eye ,height: 6.3,bodyType: Excellent Posture,zodicSign: 9,smoke: No,drink: casual,excercise: five, three, two time a week,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,language: German,ethnicity: Black,religiousBeliefs: Christians,income: 5000-10000,relationshipStatus: Not sure,wantKids: Yes,'),
(315, 'myapp', '22', 77, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,height: 6.1,bodyType: Muscular Body,zodicSign: 2,smoke: No,drink: No,excercise: once a week,excerciseSchedule: walking,educationLevel: Level 6- Bachelor\'s ,language: Japanese,ethnicity: White,religiousBeliefs: Christians,income: 1-5000,gender: Female,relationshipStatus: Single,wantKids: Yes,'),
(316, 'myapp', '24', 73, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Hazel Eye ,height: 5.6,bodyType: Gains Muscle Easily,zodicSign: 2,drink: Yes,excercise: regularly,excerciseSchedule: jogging,educationLevel: Level 5- High School Diploma ,language: Japanese,ethnicity: African American,income: 5000-10000,gender: Female,relationshipStatus: Not sure,wantKids: Yes,'),
(317, 'myapp', '25', 70, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: Yes,eyeColor: Green Eye,height: 5.6,bodyType: Muscular Body,zodicSign: 2,drink: Yes,excercise: once a week,excerciseSchedule: jogging,educationLevel: Level 4- GED Certificate ,language: Japanese,ethnicity: Native Hawaiian or Other Pacific Islander,income: 50000-100000,gender: Female,relationshipStatus: In a relationship, but not working,wantKids: No,'),
(318, 'myapp', '27', 73, 'relationshipGoal: casual dating,haveChildren: No,partnerDependability: Very Important,friendshipBetweenPartners: Important,drugs: No,hairStyle: Thick,eyeColor: Brown,height: 5.5,bodyType: Excellent Posture,zodicSign: 2,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: gym,educationLevel: Level 4- GED Certificate ,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,income: 300000-1000000,relationshipStatus: Sex Only,wantKids: No,'),
(319, 'myapp', '30', 73, 'relationshipGoal: long term relationship,haveChildren: Yes,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Hazel Eye ,height: 5.6,bodyType: Delicate Built Body,zodicSign: 2,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: swimming,educationLevel: Level 7- Masters ,language: English,ethnicity: White,religiousBeliefs: Christians,income: N/A,gender: Female,relationshipStatus: Single,wantKids: No,'),
(320, 'myapp', '43', 77, 'relationshipGoal: long term relationship,haveChildren: 1,partnerDependability: Somewhat Important,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Blue,height: 5.7,bodyType: Flat Chest,zodicSign: 10,smoke: No,drink: Sometime,excercise: once a week,excerciseSchedule: shoulders,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: White,religiousBeliefs: Christians,income: 5000-10000,gender: Female,tatoos: ,relationshipStatus: Single,wantKids: Yes,'),
(321, 'myapp', '44', 73, 'relationshipGoal: short term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Somewhat Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Green Eye,height: 5.8,bodyType: Excellent Posture,zodicSign: 10,drink: Sometime,excercise: five, three, two time a week,excerciseSchedule: gym,educationLevel: Level 8- Doctorate  ,language: Japanese,ethnicity: African American,income: 50000-100000,tatoos: ,relationshipStatus: Separated,wantKids: Maybe,'),
(322, 'myapp', '45', 73, 'relationshipGoal: long term relationship,haveChildren: No,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: No,eyeColor: Black,height: 5.9,bodyType: Hard Body,zodicSign: 8,smoke: No,drink: No,excercise: regularly,excerciseSchedule: triceps,educationLevel: Level 7- Masters ,language: English,ethnicity: Asian,religiousBeliefs: Christians,income: 100000-300000,tatoos: ,relationshipStatus: Single,wantKids: Yes,'),
(323, 'myapp', '46', 67, 'relationshipGoal: long term relationship,haveChildren: 1,partnerDependability: Somewhat Important,friendshipBetweenPartners: Important,drugs: Yes,eyeColor: Brown,height: 4.3,bodyType: Fragile,zodicSign: 3,drink: Sometime,excercise: five, three, two time a week,excerciseSchedule: running,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: Hispanic or Latino ,income: Less than $5000,tatoos: ,relationshipStatus: Married,wantKids: No,'),
(324, 'myapp', '47', 73, 'relationshipGoal: short term relationship,haveChildren: No,partnerDependability: Very Important,friendshipBetweenPartners: Very Important,drugs: Yes,hairStyle: Thick,eyeColor: Brown,height: 5.9,bodyType: Gains Muscle Easily,zodicSign: 10,smoke: No,drink: Always,excercise: once a week,excerciseSchedule: swimming,educationLevel: Level 7- Masters ,language: English,ethnicity: Hispanic or Latino ,income: Less than $5000,tatoos: ,relationshipStatus: In a relationship, but not working,wantKids: No,'),
(325, 'myapp', '48', 77, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,friendshipBetweenPartners: Important,drugs: No,eyeColor: Green Eye,height: 6,bodyType: Mature Muscle,zodicSign: 3,smoke: No,drink: No,excercise: once a week,excerciseSchedule: none,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: American Indian ,income: 5000-10000,tatoos: ,relationshipStatus: In an open relationship,wantKids: Maybe,'),
(326, 'krish0405', '1', 77, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,partnerDependability: What every happen,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Green Eye,height: -2,bodyType: Definitive \'Hard Gainer\',zodicSign: 2,drink: No,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,income: Less than $5000,relationshipStatus: Single,wantKids: No,'),
(327, 'krish0405', '12', 80, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Auburn,hairStyle: Thin,eyeColor: Green Eye,height: 5.5,bodyType: Flat Chest,zodicSign: 5,smoke: No,drink: Yes,excercise: five, three, two time a week,excerciseSchedule: triceps,educationLevel: Level 6- Bachelor\'s ,language: Spanish,ethnicity: Not Hispanic ,income: 5000-10000,relationshipStatus: I\'m in a serious relationship,wantKids: Maybe,'),
(328, 'krish0405', '15', 80, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Beeline Honey,hairStyle: Mohawk,eyeColor: Hazel Eye ,height: 5,bodyType: Rectangular Shaped,zodicSign: 9,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: hamstrings,educationLevel: Level 4- GED Certificate ,language: Hindi,ethnicity: Not Hispanic ,income: 5000-10000,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(329, 'krish0405', '16', 83, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Reddish Blonde,hairStyle: Celebrity,eyeColor: Green Eye,height: 6.3,bodyType: Mature Muscle,zodicSign: 11,smoke: No,drink: No,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,income: 5000-10000,relationshipStatus: Single,wantKids: No,');
INSERT INTO `compatability` (`id`, `user_id`, `match_id`, `percentage`, `factors`) VALUES
(330, 'krish0405', '17', 83, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Golden Brown,hairStyle: Celebrity,eyeColor: Green Eye,height: 5,bodyType: Flat Chest,zodicSign: 3,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,relationshipStatus: Not sure,wantKids: Yes,'),
(331, 'krish0405', '18', 77, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,height: 5.5,bodyType: Muscular Body,zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Not Hispanic ,income: Less than $5000,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(332, 'krish0405', '19', 80, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,height: 9,bodyType: Definitive \'Hard Gainer\',zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(333, 'krish0405', '20', 80, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,height: 4,bodyType: Definitive \'Hard Gainer\',zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,relationshipStatus: Divorced,wantKids: Yes,'),
(334, 'krish0405', '21', 83, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Red Hot Cinnamon,hairStyle: Thin,eyeColor: Hazel Eye ,height: 6.3,bodyType: Excellent Posture,zodicSign: 9,smoke: No,drink: casual,excercise: five, three, two time a week,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,language: German,ethnicity: Black,religiousBeliefs: Christians,income: 5000-10000,relationshipStatus: Not sure,wantKids: Yes,'),
(335, 'krish0405', '22', 83, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Blonde,hairStyle: Short,eyeColor: Hazel Eye ,height: 6.1,bodyType: Muscular Body,zodicSign: 2,smoke: No,drink: No,excercise: once a week,excerciseSchedule: walking,educationLevel: Level 6- Bachelor\'s ,language: Japanese,ethnicity: White,religiousBeliefs: Christians,income: 1-5000,relationshipStatus: Single,wantKids: Yes,'),
(336, 'krish0405', '24', 77, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Golden Blonde,hairStyle: Short,eyeColor: Hazel Eye ,height: 5.6,bodyType: Gains Muscle Easily,zodicSign: 2,drink: Yes,excercise: regularly,excerciseSchedule: jogging,educationLevel: Level 5- High School Diploma ,language: Japanese,ethnicity: African American,income: 5000-10000,relationshipStatus: Not sure,wantKids: Yes,'),
(337, 'krish0405', '25', 77, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Short,eyeColor: Green Eye,height: 5.6,bodyType: Muscular Body,zodicSign: 2,drink: Yes,excercise: once a week,excerciseSchedule: jogging,educationLevel: Level 4- GED Certificate ,language: Japanese,ethnicity: Native Hawaiian or Other Pacific Islander,income: 50000-100000,relationshipStatus: In a relationship, but not working,wantKids: No,'),
(338, 'krish0405', '27', 83, 'relationshipGoal: casual dating,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: longer,partnerDependability: Very Important,sexualCompatibility: Very Important,friendshipBetweenPartners: Important,drugs: No,hairColor: Expresso,hairStyle: Thick,eyeColor: Brown,height: 5.5,bodyType: Excellent Posture,zodicSign: 2,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: gym,educationLevel: Level 4- GED Certificate ,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,income: 300000-1000000,relationshipStatus: Sex Only,wantKids: No,'),
(339, 'krish0405', '30', 83, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Brown,hairStyle: Celebrity,eyeColor: Hazel Eye ,height: 5.6,bodyType: Delicate Built Body,zodicSign: 2,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: swimming,educationLevel: Level 7- Masters ,language: English,ethnicity: White,religiousBeliefs: Christians,income: N/A,relationshipStatus: Single,wantKids: No,'),
(340, 'krish0405', '43', 87, 'relationshipGoal: long term relationship,haveChildren: 1,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,partnerDependability: Somewhat Important,sexualCompatibility: Very Important,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Cool Brown,hairStyle: Vintage,eyeColor: Blue,height: 5.7,bodyType: Flat Chest,zodicSign: 10,smoke: No,drink: Sometime,excercise: once a week,excerciseSchedule: shoulders,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: White,religiousBeliefs: Christians,income: 5000-10000,tatoos: ,relationshipStatus: Single,wantKids: Yes,'),
(341, 'krish0405', '44', 80, 'relationshipGoal: short term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Somewhat Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Auburn,hairStyle: Mohawk,eyeColor: Green Eye,height: 5.8,bodyType: Excellent Posture,zodicSign: 10,drink: Sometime,excercise: five, three, two time a week,excerciseSchedule: gym,educationLevel: Level 8- Doctorate  ,language: Japanese,ethnicity: African American,income: 50000-100000,tatoos: ,relationshipStatus: Separated,wantKids: Maybe,'),
(342, 'krish0405', '45', 87, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Black,height: 5.9,bodyType: Hard Body,zodicSign: 8,smoke: No,drink: No,excercise: regularly,excerciseSchedule: triceps,educationLevel: Level 7- Masters ,language: English,ethnicity: Asian,religiousBeliefs: Christians,income: 100000-300000,tatoos: ,relationshipStatus: Single,wantKids: Yes,'),
(343, 'krish0405', '46', 80, 'relationshipGoal: long term relationship,haveChildren: 1,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Somewhat Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Important,drugs: Yes,hairColor: Beeline Honey,hairStyle: Shag,eyeColor: Brown,height: 4.3,bodyType: Fragile,zodicSign: 3,drink: Sometime,excercise: five, three, two time a week,excerciseSchedule: running,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: Hispanic or Latino ,income: Less than $5000,tatoos: ,relationshipStatus: Married,wantKids: No,'),
(344, 'krish0405', '47', 83, 'relationshipGoal: short term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Red Hot Cinnamon,hairStyle: Thick,eyeColor: Brown,height: 5.9,bodyType: Gains Muscle Easily,zodicSign: 10,smoke: No,drink: Always,excercise: once a week,excerciseSchedule: swimming,educationLevel: Level 7- Masters ,language: English,ethnicity: Hispanic or Latino ,income: Less than $5000,tatoos: ,relationshipStatus: In a relationship, but not working,wantKids: No,'),
(345, 'krish0405', '48', 93, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Very Important,friendshipBetweenPartners: Important,drugs: No,hairColor: Light Blonde,hairStyle: Short,eyeColor: Green Eye,height: 6,bodyType: Mature Muscle,zodicSign: 3,smoke: No,drink: No,excercise: once a week,excerciseSchedule: none,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: American Indian ,income: 5000-10000,tatoos: ,relationshipStatus: In an open relationship,wantKids: Maybe,motherBorn: indiamotherBorn: india,fatherBorn: india,'),
(346, 'krish0405', '49', 97, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,height: 4.2,bodyType: Definitive \'Hard Gainer\',zodicSign: 2,smoke: No,drink: No,excercise: regularly,excerciseSchedule: hamstrings,educationLevel: Level 4- GED Certificate ,language: English,ethnicity: Asian,income: 1-5000,tatoos: ,relationshipStatus: Single,wantKids: Yes,motherBorn: indiamotherBorn: india,fatherBorn: india,'),
(347, 'Mark', '30', 77, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Brown,hairStyle: Celebrity,eyeColor: Hazel Eye ,bodyType: Delicate Built Body,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: swimming,educationLevel: Level 7- Masters ,language: English,ethnicity: White,religiousBeliefs: Christians,gender: Female,tatoos: No,wantKids: No,'),
(348, 'Mark', '43', 87, 'relationshipGoal: long term relationship,haveChildren: 1,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,partnerDependability: Somewhat Important,sexualCompatibility: Very Important,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Cool Brown,hairStyle: Vintage,eyeColor: Blue,bodyType: Flat Chest,zodicSign: 10,smoke: No,drink: Sometime,excercise: once a week,excerciseSchedule: shoulders,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: White,religiousBeliefs: Christians,income: 5000-10000,gender: Female,tatoos: ,wantKids: Yes,fatherBorn: United States,'),
(349, 'Mark', '44', 70, 'haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Somewhat Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Auburn,hairStyle: Mohawk,eyeColor: Green Eye,bodyType: Excellent Posture,zodicSign: 10,drink: Sometime,excercise: five, three, two time a week,excerciseSchedule: gym,educationLevel: Level 8- Doctorate  ,language: Japanese,ethnicity: African American,religiousBeliefs: Judaism,tatoos: ,wantKids: Maybe,'),
(350, 'Mark', '45', 73, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Black,bodyType: Hard Body,smoke: No,drink: No,excercise: regularly,excerciseSchedule: triceps,educationLevel: Level 7- Masters ,language: English,ethnicity: Asian,religiousBeliefs: Christians,tatoos: ,wantKids: Yes,'),
(351, 'Mark', '46', 63, 'relationshipGoal: long term relationship,haveChildren: 1,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Somewhat Important,sexualCompatibility: Sometime,hairColor: Beeline Honey,hairStyle: Shag,eyeColor: Brown,bodyType: Fragile,drink: Sometime,excercise: five, three, two time a week,excerciseSchedule: running,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: Hispanic or Latino ,religiousBeliefs: Other,tatoos: ,wantKids: No,'),
(352, 'Mark', '47', 70, 'haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,hairColor: Red Hot Cinnamon,hairStyle: Thick,eyeColor: Brown,bodyType: Gains Muscle Easily,zodicSign: 10,smoke: No,drink: Always,excercise: once a week,excerciseSchedule: swimming,educationLevel: Level 7- Masters ,language: English,ethnicity: Hispanic or Latino ,religiousBeliefs: Muslims,tatoos: ,wantKids: No,'),
(353, 'Mark', '48', 73, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Very Important,drugs: No,hairColor: Light Blonde,hairStyle: Short,eyeColor: Green Eye,bodyType: Mature Muscle,smoke: No,drink: No,excercise: once a week,excerciseSchedule: none,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: American Indian ,religiousBeliefs: Other,income: 5000-10000,tatoos: ,wantKids: Maybe,'),
(354, 'Mark', '49', 67, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,bodyType: Definitive \'Hard Gainer\',smoke: No,drink: No,excercise: regularly,excerciseSchedule: hamstrings,educationLevel: Level 4- GED Certificate ,language: English,ethnicity: Asian,religiousBeliefs: Hindus,tatoos: ,wantKids: Yes,'),
(355, 'happy', '1', 77, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,partnerDependability: What every happen,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Green Eye,height: -2,bodyType: Definitive \'Hard Gainer\',zodicSign: 2,drink: No,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,income: Less than $5000,relationshipStatus: Single,wantKids: No,'),
(356, 'happy', '12', 80, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Auburn,hairStyle: Thin,eyeColor: Green Eye,height: 5.5,bodyType: Flat Chest,zodicSign: 5,smoke: No,drink: Yes,excercise: five, three, two time a week,excerciseSchedule: triceps,educationLevel: Level 6- Bachelor\'s ,language: Spanish,ethnicity: Not Hispanic ,income: 5000-10000,relationshipStatus: I\'m in a serious relationship,wantKids: Maybe,'),
(357, 'happy', '15', 80, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Beeline Honey,hairStyle: Mohawk,eyeColor: Hazel Eye ,height: 5,bodyType: Rectangular Shaped,zodicSign: 9,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: hamstrings,educationLevel: Level 4- GED Certificate ,language: Hindi,ethnicity: Not Hispanic ,income: 5000-10000,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(358, 'happy', '16', 83, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Reddish Blonde,hairStyle: Celebrity,eyeColor: Green Eye,height: 6.3,bodyType: Mature Muscle,zodicSign: 11,smoke: No,drink: No,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,income: 5000-10000,relationshipStatus: Single,wantKids: No,'),
(359, 'happy', '17', 83, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Golden Brown,hairStyle: Celebrity,eyeColor: Green Eye,height: 5,bodyType: Flat Chest,zodicSign: 3,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,relationshipStatus: Not sure,wantKids: Yes,'),
(360, 'happy', '18', 77, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,height: 5.5,bodyType: Muscular Body,zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: shoulders,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Not Hispanic ,income: Less than $5000,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(361, 'happy', '19', 80, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,height: 9,bodyType: Definitive \'Hard Gainer\',zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,relationshipStatus: In a relationship, but not working,wantKids: Yes,'),
(362, 'happy', '20', 80, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,height: 4,bodyType: Definitive \'Hard Gainer\',zodicSign: 1,drink: Yes,excercise: regularly,excerciseSchedule: chest,educationLevel: Level 4- GED Certificate ,language: Spanish,ethnicity: Hispanic or Latino ,religiousBeliefs: Christians,income: Less than $5000,relationshipStatus: Divorced,wantKids: Yes,'),
(363, 'happy', '21', 83, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Red Hot Cinnamon,hairStyle: Thin,eyeColor: Hazel Eye ,height: 6.3,bodyType: Excellent Posture,zodicSign: 9,smoke: No,drink: casual,excercise: five, three, two time a week,excerciseSchedule: shoulders,educationLevel: Level 7- Masters ,language: German,ethnicity: Black,religiousBeliefs: Christians,income: 5000-10000,relationshipStatus: Not sure,wantKids: Yes,'),
(364, 'happy', '22', 83, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Blonde,hairStyle: Short,eyeColor: Hazel Eye ,height: 6.1,bodyType: Muscular Body,zodicSign: 2,smoke: No,drink: No,excercise: once a week,excerciseSchedule: walking,educationLevel: Level 6- Bachelor\'s ,language: Japanese,ethnicity: White,religiousBeliefs: Christians,income: 1-5000,relationshipStatus: Single,wantKids: Yes,'),
(365, 'happy', '24', 77, 'relationshipGoal: short term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Golden Blonde,hairStyle: Short,eyeColor: Hazel Eye ,height: 5.6,bodyType: Gains Muscle Easily,zodicSign: 2,drink: Yes,excercise: regularly,excerciseSchedule: jogging,educationLevel: Level 5- High School Diploma ,language: Japanese,ethnicity: African American,income: 5000-10000,relationshipStatus: Not sure,wantKids: Yes,'),
(366, 'happy', '25', 77, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Short,eyeColor: Green Eye,height: 5.6,bodyType: Muscular Body,zodicSign: 2,drink: Yes,excercise: once a week,excerciseSchedule: jogging,educationLevel: Level 4- GED Certificate ,language: Japanese,ethnicity: Native Hawaiian or Other Pacific Islander,income: 50000-100000,relationshipStatus: In a relationship, but not working,wantKids: No,'),
(367, 'happy', '27', 83, 'relationshipGoal: casual dating,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: longer,partnerDependability: Very Important,sexualCompatibility: Very Important,friendshipBetweenPartners: Important,drugs: No,hairColor: Expresso,hairStyle: Thick,eyeColor: Brown,height: 5.5,bodyType: Excellent Posture,zodicSign: 2,smoke: No,drink: Yes,excercise: regularly,excerciseSchedule: gym,educationLevel: Level 4- GED Certificate ,language: English,ethnicity: Not Hispanic ,religiousBeliefs: Christians,income: 300000-1000000,relationshipStatus: Sex Only,wantKids: No,'),
(368, 'happy', '30', 83, 'relationshipGoal: long term relationship,haveChildren: Yes,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Brown,hairStyle: Celebrity,eyeColor: Hazel Eye ,height: 5.6,bodyType: Delicate Built Body,zodicSign: 2,smoke: No,drink: casual,excercise: regularly,excerciseSchedule: swimming,educationLevel: Level 7- Masters ,language: English,ethnicity: White,religiousBeliefs: Christians,income: N/A,relationshipStatus: Single,wantKids: No,'),
(369, 'happy', '43', 87, 'relationshipGoal: long term relationship,haveChildren: 1,whatIsTheLongestRelationshipYouHaveBeenIn: 3-6 years,partnerDependability: Somewhat Important,sexualCompatibility: Very Important,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Cool Brown,hairStyle: Vintage,eyeColor: Blue,height: 5.7,bodyType: Flat Chest,zodicSign: 10,smoke: No,drink: Sometime,excercise: once a week,excerciseSchedule: shoulders,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: White,religiousBeliefs: Christians,income: 5000-10000,tatoos: ,relationshipStatus: Single,wantKids: Yes,'),
(370, 'happy', '44', 80, 'relationshipGoal: short term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Somewhat Important,sexualCompatibility: What is that,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Auburn,hairStyle: Mohawk,eyeColor: Green Eye,height: 5.8,bodyType: Excellent Posture,zodicSign: 10,drink: Sometime,excercise: five, three, two time a week,excerciseSchedule: gym,educationLevel: Level 8- Doctorate  ,language: Japanese,ethnicity: African American,income: 50000-100000,tatoos: ,relationshipStatus: Separated,wantKids: Maybe,'),
(371, 'happy', '45', 87, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: No,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Black,height: 5.9,bodyType: Hard Body,zodicSign: 8,smoke: No,drink: No,excercise: regularly,excerciseSchedule: triceps,educationLevel: Level 7- Masters ,language: English,ethnicity: Asian,religiousBeliefs: Christians,income: 100000-300000,tatoos: ,relationshipStatus: Single,wantKids: Yes,'),
(372, 'happy', '46', 80, 'relationshipGoal: long term relationship,haveChildren: 1,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Somewhat Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Important,drugs: Yes,hairColor: Beeline Honey,hairStyle: Shag,eyeColor: Brown,height: 4.3,bodyType: Fragile,zodicSign: 3,drink: Sometime,excercise: five, three, two time a week,excerciseSchedule: running,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: Hispanic or Latino ,income: Less than $5000,tatoos: ,relationshipStatus: Married,wantKids: No,'),
(373, 'happy', '47', 83, 'relationshipGoal: short term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Red Hot Cinnamon,hairStyle: Thick,eyeColor: Brown,height: 5.9,bodyType: Gains Muscle Easily,zodicSign: 10,smoke: No,drink: Always,excercise: once a week,excerciseSchedule: swimming,educationLevel: Level 7- Masters ,language: English,ethnicity: Hispanic or Latino ,income: Less than $5000,tatoos: ,relationshipStatus: In a relationship, but not working,wantKids: No,'),
(374, 'happy', '48', 93, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Very Important,friendshipBetweenPartners: Important,drugs: No,hairColor: Light Blonde,hairStyle: Short,eyeColor: Green Eye,height: 6,bodyType: Mature Muscle,zodicSign: 3,smoke: No,drink: No,excercise: once a week,excerciseSchedule: none,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: American Indian ,income: 5000-10000,tatoos: ,relationshipStatus: In an open relationship,wantKids: Maybe,motherBorn: indiamotherBorn: india,fatherBorn: india,'),
(375, 'happy', '49', 97, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,height: 4.2,bodyType: Definitive \'Hard Gainer\',zodicSign: 2,smoke: No,drink: No,excercise: regularly,excerciseSchedule: hamstrings,educationLevel: Level 4- GED Certificate ,language: English,ethnicity: Asian,income: 1-5000,tatoos: ,relationshipStatus: Single,wantKids: Yes,motherBorn: indiamotherBorn: india,fatherBorn: india,'),
(376, 'happy', '50', 100, 'relationshipGoal: long term relationship,haveChildren: 1,whatIsTheLongestRelationshipYouHaveBeenIn: 1 year,partnerDependability: Very Important,sexualCompatibility: Sometime,friendshipBetweenPartners: Very Important,drugs: Yes,hairColor: Light Ash Blonde,hairStyle: Long,eyeColor: Hazel Eye ,height: 4.7,bodyType: Thin,zodicSign: 5,smoke: No,drink: casual,excercise: once a week,excerciseSchedule: running,educationLevel: Level 6- Bachelor\'s ,language: English,ethnicity: Asian,religiousBeliefs: Christians,income: 1-5000,tatoos: ,relationshipStatus: Not sure,wantKids: Yes,motherBorn: indiamotherBorn: india,fatherBorn: india,'),
(377, 'Mary', '45', 47, 'relationshipGoal: long term relationship,haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,friendshipBetweenPartners: Very Important,drugs: No,smoke: No,drink: No,excercise: regularly,excerciseSchedule: triceps,educationLevel: Level 7- Masters ,ethnicity: Asian,religiousBeliefs: Christians,tatoos: ,'),
(378, 'Mary', '46', 40, 'relationshipGoal: long term relationship,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,partnerDependability: Somewhat Important,friendshipBetweenPartners: Important,drink: Sometime,excercise: five, three, two time a week,excerciseSchedule: running,educationLevel: Level 6- Bachelor\'s ,ethnicity: Hispanic or Latino ,tatoos: ,wantKids: No,'),
(379, 'Mary', '47', 43, 'haveChildren: No,whatIsTheLongestRelationshipYouHaveBeenIn: 2 years,friendshipBetweenPartners: Very Important,hairStyle: Thick,smoke: No,drink: Always,excercise: once a week,excerciseSchedule: swimming,educationLevel: Level 7- Masters ,ethnicity: Hispanic or Latino ,tatoos: ,wantKids: No,'),
(380, 'Mary', '48', 43, 'relationshipGoal: long term relationship,haveChildren: No,friendshipBetweenPartners: Important,drugs: No,smoke: No,drink: No,excercise: once a week,excerciseSchedule: none,educationLevel: Level 6- Bachelor\'s ,ethnicity: American Indian ,tatoos: ,relationshipStatus: In an open relationship,'),
(381, 'Mary', '49', 40, 'relationshipGoal: long term relationship,haveChildren: No,friendshipBetweenPartners: Important,smoke: No,drink: No,excercise: regularly,excerciseSchedule: hamstrings,educationLevel: Level 4- GED Certificate ,ethnicity: Asian,income: 1-5000,tatoos: ,'),
(382, 'Mary', '50', 40, 'relationshipGoal: long term relationship,friendshipBetweenPartners: Very Important,smoke: No,drink: casual,excercise: once a week,excerciseSchedule: running,educationLevel: Level 6- Bachelor\'s ,ethnicity: Asian,religiousBeliefs: Christians,income: 1-5000,tatoos: ,'),
(383, 'asdasd', '1', 7, 'gender: Female,'),
(384, 'asdasd', '12', 3, ''),
(385, 'asdasd', '15', 3, ''),
(386, 'asdasd', '16', 3, ''),
(387, 'asdasd', '17', 3, ''),
(388, 'asdasd', '18', 3, ''),
(389, 'asdasd', '19', 3, ''),
(390, 'asdasd', '20', 3, ''),
(391, 'asdasd', '21', 3, ''),
(392, 'asdasd', '22', 7, 'gender: Female,'),
(393, 'asdasd', '24', 7, 'gender: Female,'),
(394, 'asdasd', '25', 7, 'gender: Female,'),
(395, 'asdasd', '27', 3, ''),
(396, 'asdasd', '30', 7, 'gender: Female,'),
(397, 'asdasd', '43', 10, 'gender: Female,tatoos: ,'),
(398, 'asdasd', '44', 7, 'tatoos: ,'),
(399, 'asdasd', '45', 7, 'tatoos: ,'),
(400, 'asdasd', '46', 7, 'tatoos: ,'),
(401, 'asdasd', '47', 7, 'tatoos: ,'),
(402, 'asdasd', '48', 7, 'tatoos: ,'),
(403, 'asdasd', '49', 7, 'tatoos: ,'),
(404, 'asdasd', '50', 10, 'gender: Female,tatoos: ,'),
(405, 'asdasd', '52', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(406, 'hugg', '1', 3, ''),
(407, 'hugg', '12', 3, ''),
(408, 'hugg', '15', 3, ''),
(409, 'hugg', '16', 3, ''),
(410, 'hugg', '17', 3, ''),
(411, 'hugg', '18', 3, ''),
(412, 'hugg', '19', 3, ''),
(413, 'hugg', '20', 3, ''),
(414, 'hugg', '21', 3, ''),
(415, 'hugg', '22', 3, ''),
(416, 'hugg', '24', 3, ''),
(417, 'hugg', '25', 3, ''),
(418, 'hugg', '27', 3, ''),
(419, 'hugg', '30', 3, ''),
(420, 'hugg', '43', 7, 'tatoos: ,'),
(421, 'hugg', '44', 7, 'tatoos: ,'),
(422, 'hugg', '45', 7, 'tatoos: ,'),
(423, 'hugg', '46', 7, 'tatoos: ,'),
(424, 'hugg', '47', 7, 'tatoos: ,'),
(425, 'hugg', '48', 7, 'tatoos: ,'),
(426, 'hugg', '49', 7, 'tatoos: ,'),
(427, 'hugg', '50', 7, 'tatoos: ,'),
(428, 'hugg', '52', 103, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,gender: male,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(429, 'hugg', '53', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(430, 'q', '1', 7, 'gender: Female,'),
(431, 'q', '12', 3, ''),
(432, 'q', '15', 3, ''),
(433, 'q', '16', 3, ''),
(434, 'q', '17', 3, ''),
(435, 'q', '18', 3, ''),
(436, 'q', '19', 3, ''),
(437, 'q', '20', 3, ''),
(438, 'q', '21', 3, ''),
(439, 'q', '22', 7, 'gender: Female,'),
(440, 'q', '24', 7, 'gender: Female,'),
(441, 'q', '25', 7, 'gender: Female,'),
(442, 'q', '27', 3, ''),
(443, 'q', '30', 7, 'gender: Female,'),
(444, 'q', '43', 10, 'gender: Female,tatoos: ,'),
(445, 'q', '44', 7, 'tatoos: ,'),
(446, 'q', '45', 7, 'tatoos: ,'),
(447, 'q', '46', 7, 'tatoos: ,'),
(448, 'q', '47', 7, 'tatoos: ,'),
(449, 'q', '48', 7, 'tatoos: ,'),
(450, 'q', '49', 7, 'tatoos: ,'),
(451, 'q', '50', 10, 'gender: Female,tatoos: ,'),
(452, 'q', '53', 103, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,gender: Female,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(453, 'q', '54', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(454, 'hugg1', '1', 3, ''),
(455, 'hugg1', '12', 7, ''),
(456, 'hugg1', '15', 3, ''),
(457, 'hugg1', '16', 7, ''),
(458, 'hugg1', '17', 3, ''),
(459, 'hugg1', '18', 3, ''),
(460, 'hugg1', '19', 3, ''),
(461, 'hugg1', '20', 3, ''),
(462, 'hugg1', '21', 3, ''),
(463, 'hugg1', '22', 3, ''),
(464, 'hugg1', '24', 3, ''),
(465, 'hugg1', '25', 3, ''),
(466, 'hugg1', '27', 3, ''),
(467, 'hugg1', '30', 7, ''),
(468, 'hugg1', '43', 10, 'tatoos: ,'),
(469, 'hugg1', '44', 7, 'tatoos: ,'),
(470, 'hugg1', '45', 7, 'tatoos: ,'),
(471, 'hugg1', '46', 7, 'tatoos: ,'),
(472, 'hugg1', '47', 7, 'tatoos: ,'),
(473, 'hugg1', '48', 7, 'tatoos: ,'),
(474, 'hugg1', '49', 7, 'tatoos: ,'),
(475, 'hugg1', '50', 7, 'tatoos: ,'),
(476, 'hugg1', '53', 97, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(477, 'hugg1', '54', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,gender: male,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(478, 'hugg1', '55', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(479, 'happy24', '1', 3, ''),
(480, 'happy24', '12', 7, ''),
(481, 'happy24', '15', 3, ''),
(482, 'happy24', '16', 7, ''),
(483, 'happy24', '17', 3, ''),
(484, 'happy24', '18', 3, ''),
(485, 'happy24', '19', 3, ''),
(486, 'happy24', '20', 3, ''),
(487, 'happy24', '21', 3, ''),
(488, 'happy24', '22', 3, ''),
(489, 'happy24', '24', 3, ''),
(490, 'happy24', '25', 3, ''),
(491, 'happy24', '27', 3, ''),
(492, 'happy24', '30', 7, ''),
(493, 'happy24', '43', 10, 'tatoos: ,'),
(494, 'happy24', '44', 7, 'tatoos: ,'),
(495, 'happy24', '45', 7, 'tatoos: ,'),
(496, 'happy24', '46', 7, 'tatoos: ,'),
(497, 'happy24', '47', 7, 'tatoos: ,'),
(498, 'happy24', '48', 7, 'tatoos: ,'),
(499, 'happy24', '49', 7, 'tatoos: ,'),
(500, 'happy24', '50', 7, 'tatoos: ,'),
(501, 'happy24', '53', 97, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(502, 'happy24', '54', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,gender: male,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(503, 'happy24', '55', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(504, 'happy24', '56', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(505, 'boyboy11', '1', 3, ''),
(506, 'boyboy11', '12', 7, ''),
(507, 'boyboy11', '15', 3, ''),
(508, 'boyboy11', '16', 7, ''),
(509, 'boyboy11', '17', 3, ''),
(510, 'boyboy11', '18', 3, ''),
(511, 'boyboy11', '19', 3, ''),
(512, 'boyboy11', '20', 3, ''),
(513, 'boyboy11', '21', 3, ''),
(514, 'boyboy11', '22', 3, ''),
(515, 'boyboy11', '24', 3, ''),
(516, 'boyboy11', '25', 3, ''),
(517, 'boyboy11', '27', 3, ''),
(518, 'boyboy11', '30', 7, ''),
(519, 'boyboy11', '43', 10, 'tatoos: ,'),
(520, 'boyboy11', '44', 7, 'tatoos: ,'),
(521, 'boyboy11', '45', 7, 'tatoos: ,'),
(522, 'boyboy11', '46', 7, 'tatoos: ,'),
(523, 'boyboy11', '47', 7, 'tatoos: ,'),
(524, 'boyboy11', '48', 7, 'tatoos: ,'),
(525, 'boyboy11', '49', 7, 'tatoos: ,'),
(526, 'boyboy11', '50', 7, 'tatoos: ,'),
(527, 'boyboy11', '53', 97, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(528, 'boyboy11', '54', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,gender: male,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(529, 'boyboy11', '55', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(530, 'boyboy11', '56', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(531, 'boyboy11', '57', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(532, 'carpet', '1', 3, ''),
(533, 'carpet', '12', 7, ''),
(534, 'carpet', '15', 3, ''),
(535, 'carpet', '16', 7, ''),
(536, 'carpet', '17', 3, ''),
(537, 'carpet', '18', 3, ''),
(538, 'carpet', '19', 3, ''),
(539, 'carpet', '20', 3, ''),
(540, 'carpet', '21', 3, ''),
(541, 'carpet', '22', 3, ''),
(542, 'carpet', '24', 3, ''),
(543, 'carpet', '25', 3, ''),
(544, 'carpet', '27', 3, ''),
(545, 'carpet', '30', 7, ''),
(546, 'carpet', '43', 10, 'tatoos: ,'),
(547, 'carpet', '44', 7, 'tatoos: ,'),
(548, 'carpet', '45', 7, 'tatoos: ,'),
(549, 'carpet', '46', 7, 'tatoos: ,'),
(550, 'carpet', '47', 7, 'tatoos: ,'),
(551, 'carpet', '48', 7, 'tatoos: ,'),
(552, 'carpet', '49', 7, 'tatoos: ,'),
(553, 'carpet', '50', 7, 'tatoos: ,'),
(554, 'carpet', '53', 97, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(555, 'carpet', '54', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,gender: male,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(556, 'carpet', '55', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(557, 'carpet', '56', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(558, 'carpet', '57', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(559, 'carpet', '58', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(560, 'top1', '1', 3, ''),
(561, 'top1', '12', 7, ''),
(562, 'top1', '15', 3, ''),
(563, 'top1', '16', 7, ''),
(564, 'top1', '17', 3, ''),
(565, 'top1', '18', 3, ''),
(566, 'top1', '19', 3, ''),
(567, 'top1', '20', 3, ''),
(568, 'top1', '21', 3, ''),
(569, 'top1', '22', 3, ''),
(570, 'top1', '24', 3, ''),
(571, 'top1', '25', 3, ''),
(572, 'top1', '27', 3, ''),
(573, 'top1', '30', 7, ''),
(574, 'top1', '43', 10, 'tatoos: ,'),
(575, 'top1', '44', 7, 'tatoos: ,'),
(576, 'top1', '45', 7, 'tatoos: ,'),
(577, 'top1', '46', 7, 'tatoos: ,'),
(578, 'top1', '47', 7, 'tatoos: ,'),
(579, 'top1', '48', 7, 'tatoos: ,'),
(580, 'top1', '49', 7, 'tatoos: ,'),
(581, 'top1', '50', 7, 'tatoos: ,'),
(582, 'top1', '53', 97, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(583, 'top1', '54', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,gender: male,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(584, 'top1', '55', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(585, 'top1', '56', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(586, 'top1', '57', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(587, 'top1', '58', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,'),
(588, 'top1', '59', 100, 'relationshipGoal: ,haveChildren: ,whatIsTheLongestRelationshipYouHaveBeenIn: ,partnerDependability: ,sexualCompatibility: ,friendshipBetweenPartners: ,drugs: ,hairColor: ,hairStyle: ,eyeColor: ,height: ,bodyType: ,zodicSign: ,smoke: ,drink: ,excercise: ,excerciseSchedule: ,educationLevel: ,language: ,ethnicity: ,religiousBeliefs: ,income: ,tatoos: ,relationshipStatus: ,wantKids: ,motherBorn: motherBorn: ,fatherBorn: ,');

-- --------------------------------------------------------

--
-- Table structure for table `dating_plan`
--

CREATE TABLE `dating_plan` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noOfDay` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discountPercentage` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dating_plan`
--

INSERT INTO `dating_plan` (`id`, `name`, `type`, `noOfDay`, `price`, `discountPercentage`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Free 3 Day Trial', 'Monthly', 3, 100, 10, '<p>Free three day trial</p>', '2016-09-25 17:30:25', '2017-08-08 19:46:21'),
(2, 'Enjoy one day for free', 'Daily', 1, 10, 0, '<p>Enjoy and vist the site for one free day</p>', '2016-09-28 01:27:08', '2016-12-20 04:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `eventPictures`
--

CREATE TABLE `eventPictures` (
  `id` int(11) NOT NULL,
  `eventID` int(11) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `eventType` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `start` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `eventLocation` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `eventPrice` float NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `eventType`, `title`, `start`, `endDate`, `eventLocation`, `description`, `eventPrice`, `image`) VALUES
(1, 1, 'Sports ', '2017-08-12 00:00:00', '2017-08-31 00:00:00', 'San Fran', '<p>Sports even description will go here</p>', 1, '814165-free-wallpaper_v2xusa7.jpg'),
(2, 2, 'Car Show', '2016-09-29 00:00:00', '2016-09-30 00:00:00', 'London', '<p>car show event description will be here&nbsp;</p>', 3, '744081-background-wallpaper.jpg'),
(3, 1, 'car show', '2016-11-06 00:00:00', '2016-11-12 00:00:00', 'oakland', '<p>hhhh</p>', 1, 'uni_1 (2).png'),
(4, 4, 'cooking', '2017-10-01 00:00:00', '2017-10-01 00:00:00', 'oakland, ca', '<p>after you cook you meal you will ask someone to taste it</p>', 0, '647297_MOVING.gif');

-- --------------------------------------------------------

--
-- Table structure for table `eventtype`
--

CREATE TABLE `eventtype` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `ageFromMale` int(11) NOT NULL,
  `ageToMale` int(11) NOT NULL,
  `ageFromFemale` int(11) NOT NULL,
  `ageToFemale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventtype`
--

INSERT INTO `eventtype` (`id`, `name`, `ageFromMale`, `ageToMale`, `ageFromFemale`, `ageToFemale`) VALUES
(1, 'Age Group 1', 20, 25, 20, 25),
(2, 'Age Group 2', 26, 30, 26, 30),
(3, 'car show', 25, 35, 25, 35),
(4, 'cooking', 21, 29, 21, 29);

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `friend_one` int(11) NOT NULL DEFAULT '0',
  `friend_two` int(11) NOT NULL DEFAULT '0',
  `status` enum('0','1','2') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`friend_one`, `friend_two`, `status`) VALUES
(1, 20, '0'),
(12, 12, '1'),
(15, 15, '1'),
(16, 16, '1'),
(17, 17, '1'),
(18, 18, '1'),
(19, 19, '1'),
(20, 20, '1'),
(21, 21, '1'),
(22, 22, '1'),
(24, 24, '1'),
(25, 25, '1'),
(27, 27, '1'),
(30, 30, '1'),
(43, 43, '1'),
(44, 44, '1'),
(45, 45, '1'),
(46, 46, '1'),
(47, 47, '1'),
(48, 48, '1'),
(49, 1, '0'),
(49, 19, '0'),
(49, 24, '0'),
(49, 25, '0'),
(49, 30, '0'),
(49, 43, '0'),
(49, 49, '1'),
(49, 50, '0'),
(50, 50, '1'),
(53, 53, '1'),
(54, 54, '1'),
(55, 55, '1'),
(56, 56, '1'),
(57, 57, '1'),
(58, 58, '1'),
(59, 59, '1'),
(60, 60, '1'),
(61, 61, '1'),
(62, 62, '1'),
(63, 63, '1'),
(64, 64, '1'),
(65, 65, '1'),
(66, 66, '1'),
(67, 67, '1'),
(68, 68, '1'),
(69, 69, '1'),
(70, 70, '1'),
(71, 71, '1'),
(72, 72, '1'),
(73, 73, '1'),
(74, 74, '1'),
(75, 75, '1'),
(76, 76, '1'),
(77, 77, '1'),
(78, 78, '0'),
(79, 79, '1'),
(80, 80, '1'),
(81, 81, '1'),
(82, 82, '0'),
(83, 83, '1'),
(84, 84, '1'),
(85, 85, '1'),
(86, 86, '0'),
(87, 87, '1'),
(88, 88, '1'),
(89, 89, '1'),
(90, 90, '1'),
(91, 91, '1'),
(92, 92, '1'),
(93, 93, '1'),
(94, 94, '1'),
(95, 95, '1'),
(96, 96, '1'),
(97, 97, '1'),
(98, 98, '1'),
(99, 99, '1'),
(100, 100, '1'),
(101, 101, '1'),
(102, 102, '1'),
(103, 103, '1'),
(104, 104, '1'),
(105, 105, '1'),
(106, 106, '1'),
(107, 107, '1'),
(108, 108, '1'),
(109, 109, '1'),
(110, 110, '1'),
(111, 111, '1'),
(112, 112, '1'),
(113, 113, '1'),
(114, 114, '1'),
(115, 115, '1'),
(116, 116, '1'),
(117, 117, '1'),
(118, 24, '0'),
(118, 118, '1'),
(118, 120, '1'),
(119, 119, '1'),
(120, 120, '1'),
(121, 121, '1'),
(122, 122, '1'),
(123, 123, '1'),
(124, 124, '1'),
(125, 125, '1');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `gift_cards` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Love You', '100-visa-gift-card.jpg', 0, '2016-09-25 17:27:02', '2017-01-28 17:24:59'),
(2, 'Miss You', 'iTunes-Code-GCM-V2.png', 0, '2016-09-25 17:27:30', '2017-01-28 17:26:50'),
(3, 'Rose', 'USA-Itunes-Gift-Card-100-dollars-USA1.jpg', 0, '2016-09-25 17:27:51', '2017-01-28 17:27:02'),
(5, 'Love', 'Visa-GiftCard-100.png', 1, '2017-01-28 17:27:16', '2017-01-28 17:27:16');

-- --------------------------------------------------------

--
-- Table structure for table `group_member`
--

CREATE TABLE `group_member` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_member`
--

INSERT INTO `group_member` (`id`, `group_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 82, '2017-04-10 08:18:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `me_events`
--

CREATE TABLE `me_events` (
  `id` int(7) NOT NULL,
  `user_id` int(11) NOT NULL,
  `eventId` int(11) NOT NULL,
  `txn_id` varchar(250) NOT NULL,
  `verify_sign` text NOT NULL,
  `payment_date` text NOT NULL,
  `payer_id` varchar(250) NOT NULL,
  `payer_email` varchar(250) NOT NULL,
  `auth` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `subject`, `content`, `image`) VALUES
(2, 'Blogger Newsletter', '<p>\r\n\r\n</p><p>If you are a Blogger, you know how important it is to have a good newsletter. You are in need of an effective and timely manner of communication in order to keep your audience in touch (announcements, events, news, special features, future plans).</p><p>Newsletters are an amazing way to get your message out. &nbsp;Thanks to content curation, itâ€™s easier than ever to put out a <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.flashissue.com/\">great newsletter</a>&nbsp;without a lot of work. &nbsp;Content curation is the act of discovering, gathering, and presenting digital content that surrounds specific subject matter.</p><p>Weâ€™ve put together a great list of resources for anyone interested in building a newsletter for their Blog.</p>\r\n\r\n<br><p></p>', '463899_newsletter_ozamiDatingBlog.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `friend_one` int(11) NOT NULL,
  `friend_two` int(11) NOT NULL,
  `notification_read` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `name` varchar(250) NOT NULL,
  `photo` text NOT NULL,
  `notify_id` int(11) NOT NULL,
  `action` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `friend_one`, `friend_two`, `notification_read`, `created_at`, `name`, `photo`, `notify_id`, `action`, `username`) VALUES
(1, 2, 1, 0, '2016-09-25 11:04:55', 'Hassan Tariq', 'http://seriousdatings.com/images/users/hasan/Mono-New-English.png', 1, 'sendRequest', 'hasan'),
(2, 1, 2, 0, '2016-09-25 11:05:23', 'Admin Admin', 'http://seriousdatings.com/images/users/admin/placeholder.png', 2, 'acceptRequest', 'admin'),
(3, 1, 2, 0, '2016-09-25 11:05:43', 'Admin Admin', 'http://seriousdatings.com/images/users/admin/placeholder.png', 2, 'removeFriend', 'admin'),
(4, 4, 2, 0, '2016-09-26 01:24:22', 'hello hello', 'http://seriousdatings.com/images/users/Hello/sunset.jpg', 2, 'sendRequest', 'Hello'),
(5, 2, 4, 0, '2016-09-26 18:35:34', 'Hassan Tariq', 'http://seriousdatings.com/images/users/hasan/Mono-New-English.png', 4, 'acceptRequest', 'hasan'),
(6, 8, 8, 0, '2016-09-27 18:34:20', 'hello1 hello3', 'http://seriousdatings.com/images/users/hello1/fyVMtP8A.jpg', 8, 'removeFriend', 'hello1'),
(7, 1, 23, 0, '2016-12-08 20:07:37', 'Admin Admin', 'http://seriousdatings.com/images/users/admin/placeholder.png', 23, 'sendRequest', 'admin'),
(8, 1, 20, 0, '2016-12-11 19:08:03', 'Admin Admin', 'http://seriousdatings.com/images/users/admin/placeholder.png', 20, 'sendRequest', 'admin'),
(9, 1, 1, 0, '2016-12-11 19:08:35', 'Admin Admin', 'http://seriousdatings.com/images/users/admin/placeholder.png', 1, 'removeFriend', 'admin'),
(10, 49, 19, 0, '2017-01-27 10:07:19', 'krish k', 'http://seriousdatings.com/images/users/krish0405/krish0405.jpeg', 19, 'sendRequest', 'krish0405'),
(11, 49, 50, 0, '2017-01-27 10:18:04', 'krish k', 'http://seriousdatings.com/images/users/krish0405/krish0405.jpeg', 50, 'sendRequest', 'krish0405'),
(12, 49, 30, 0, '2017-01-27 11:17:48', 'krish k', 'http://seriousdatings.com/images/users/krish0405/krish0405.jpeg', 30, 'sendRequest', 'krish0405'),
(13, 49, 25, 0, '2017-01-27 11:22:47', 'krish k', 'http://seriousdatings.com/images/users/krish0405/krish0405.jpeg', 25, 'sendRequest', 'krish0405'),
(14, 49, 24, 0, '2017-01-27 11:34:23', 'krish k', 'http://seriousdatings.com/images/users/krish0405/krish0405.jpeg', 24, 'sendRequest', 'krish0405'),
(15, 50, 49, 0, '2017-01-27 11:55:52', 'happy singh', 'http://seriousdatings.com/images/users/happy/happy.jpeg', 49, 'acceptRequest', 'happy'),
(16, 49, 50, 0, '2017-01-29 04:15:23', 'krish k', 'http://seriousdatings.com/images/users/krish0405/krish0405.jpeg', 50, 'removeFriend', 'krish0405'),
(17, 49, 43, 0, '2017-01-29 04:21:30', 'krish k', 'http://seriousdatings.com/images/users/krish0405/krish0405.jpeg', 43, 'sendRequest', 'krish0405'),
(18, 78, 78, 0, '2017-03-29 12:33:40', '@ ', 'http://seriousdatings.com/images/users/ab    cd/ab    cd.', 78, 'removeFriend', 'ab    cd'),
(19, 78, 78, 0, '2017-03-29 12:34:03', '@ ', 'http://seriousdatings.com/images/users/ab    cd/ab    cd.', 78, 'sendRequest', 'ab    cd'),
(20, 82, 82, 0, '2017-04-10 09:12:11', 'ghghh ', 'http://seriousdatings.com/images/users/yuvy/yuvy.jpeg', 82, 'removeFriend', 'yuvy'),
(21, 82, 82, 0, '2017-04-10 09:12:15', 'ghghh ', 'http://seriousdatings.com/images/users/yuvy/yuvy.jpeg', 82, 'sendRequest', 'yuvy'),
(22, 86, 86, 0, '2017-04-11 12:31:38', 'Amit  ', 'http://seriousdatings.com/images/users/khurana/khurana.png', 86, 'removeFriend', 'khurana'),
(23, 86, 86, 0, '2017-04-11 12:31:47', 'Amit  ', 'http://seriousdatings.com/images/users/khurana/khurana.png', 86, 'sendRequest', 'khurana'),
(25, 118, 120, 0, '2017-09-22 05:51:58', 'arunsharma ', 'http://seriousdatings.com/public/images/users/arun/arun.png', 120, 'sendRequest', 'arun'),
(26, 120, 118, 0, '2017-09-22 05:52:20', 'mark ', 'http://seriousdatings.com/public/images/users/marks/marks.jpeg', 118, 'acceptRequest', 'marks'),
(27, 118, 120, 0, '2017-09-22 06:24:03', 'arunsharma ', 'http://seriousdatings.com/public/images/users/arun/arun.png', 120, 'removeFriend', 'arun');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `meta_tag`, `description`, `created_at`, `updated_at`) VALUES
(1, 'About us', 'Serious datings about us', '<p><strong>About </strong></p>\r\n<p><strong>Why Serious dating we help you break the ice, you don\'t just sit and wait to received a messages, you get to meet in person at local plan events where you get to meet &nbsp;in person, before meet along.</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>Seriousdatings.com is a dating site for singles in&nbsp;the U.S. Founded in 2005, Seriousdatings.com has built the largest community for singles looking for love, relationships, friendship and dates. Our mission is simple: Creating Relationships. Connecting Lives events.</p>\r\n<p>dating has never been so easy. Seriousdatings.com &nbsp;provides a simple, safe and fun atmosphere which makes it easy to quickly view and contact thousands of singles in your area. Our one of a kind profile system allows members to setup photo albums, share interests and much more. All the features you need to meet signal men and women are at your fingertips. Send flirts, send messages, use our live chat, post and browse pictures, and much more. Create your free profile.&nbsp;and search our signal personals for exactly what you want.</p>\r\n<p>If you have never experienced the power of internet dating you are missing&nbsp;out on an incredible opportunity. Beyond typical online dating, Seriousdatings.com is a focused community dedicated to signal dating. No need to bother with any other dating sites. Millions of singles are trying online dating sites and if you want to be a part of the largest signal dating site in America and want to meet &nbsp;singles in your area,&nbsp;</p>\r\n<p>&nbsp;</p>', '2016-09-20 01:11:51', '2016-09-28 23:47:20');
INSERT INTO `pages` (`id`, `title`, `meta_tag`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Policy', 'policy', '<p>Privacy Policy</p>\r\n<p>People Media respects the privacy of its users and has developed this Privacy Policy to demonstrate its commitment to protecting your privacy. This Privacy Policy describes the information we collect, how that information may be used, with whom it may be shared, and your choices about such uses and disclosures. We encourage you to read this Privacy Policy carefully when using our website or services or transacting business with us. By using our website, you are accepting the practices described in this Privacy Policy.</p>\r\n<p>If you have any questions about our privacy practices, please refer to the end of this Privacy Policy for information on how to contact us.</p>\r\n<p><strong>Information we collect about you</strong></p>\r\n<p><u>In General</u>. We may collect information that can identify you such as your name and email address (\"personal information\") and other information that does not identify you. We may collect this information through a website or a mobile application. When you provide personal information through our website, the information may be sent to servers located in the United States and other countries around the world.</p>\r\n<ul>\r\n<li><strong>Information you provide</strong>. We may collect and store any personal information you enter on our website or on a mobile application, or provide to us in some other manner. This includes identifying information, such as your name, address, email address and telephone number, and, if you transact business with us, financial information such as your payment method (valid credit card number, type, expiration date or other financial information). You may also provide us information about your interests and activities, your gender and age, and other demographic information such as your hometown or your username.</li>\r\n<li>This information may be available from your profile or account with such site or from cookies placed on your device by the third party platform.</li>\r\n<li><strong>Information about others</strong>. We may collect and store personal information about other people that you provide to us, such as their name, address and email address. If you use our website to send others (friends, relatives, colleagues, etc.) a product as a gift, we may store your personal information, and the personal information of each such recipient in order to process those requests or facilitate future activities.</li>\r\n</ul>\r\n<p><u>Use of cookies and other technologies to collect information</u>. We use various technologies to collect information from your device and about your activities on our site or application.</p>\r\n<ul>\r\n<li><strong>Information collected automatically</strong>. We automatically collect information from your browser or device when you visit our website or application. This information could include your IP address, device ID, your browser type and language, access times, the content of any undeleted cookies that your browser previously accepted from us (see \"<a href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#Cookies\">Cookies</a>\" below), and the referring website address.</li>\r\n<li><strong>Cookies and Use of Cookie Data</strong>. When you visit our website or application, we may assign your device one or more cookies, to facilitate access to our site and to personalize your online experience. Through the use of a cookie, we also may automatically collect information about your online activity on our site, such as the pages you visit, the time and date of your visits, the links you click, and the searches you conduct on our site. During your visits to other websites or applications where we advertise, we (or third parties) may use certain data collected on our site to show you advertisements from us or our affiliates. Although you may not opt out of receiving online advertisements generally, you may control the collection of data on our site used for our targeted advertising during your visits to other websites. To opt-out of our data collection for targeted advertising on other sites, click here:&nbsp;<a href=\"http://display.blackpeoplemeet.com/optout.html\">Opt Out Now</a>. Most browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies. If you choose to decline cookies, please note that you may not be able to sign in or use some of the interactive features offered on our site.</li>\r\n<li><strong>Other Technologies</strong>. We may use standard Internet technology, such as&nbsp;<a href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#WebBeacons\">web beacons</a>&nbsp;and other similar technologies, to track your use of our site. We also may include web beacons in advertisements or email messages to determine whether messages have been opened and acted upon. The information we obtain in this manner enables us to customize the services we offer our website or application visitors to deliver targeted advertisements and to measure the overall effectiveness of our online advertising, content, programming or other activities.</li>\r\n<li><strong>Information collected by third-parties</strong>. We may allow service providers, IAC companies, advertising companies and ad networks, and other third parties to display advertisements on our site for a fee. These companies may use tracking technologies, such as cookies, to collect information about users who view or interact with their advertisements. We do not provide any non-anonymized personal information to these third parties. Some of these third-party advertising companies may be advertising networks that are members of the Network Advertising Initiative, which offers a single location to opt out of ad targeting from member companies (www.networkadvertising.org).</li>\r\n</ul>\r\n<p><strong>How we use the information we collect</strong></p>\r\n<p><u>In General</u>. We may use information that we collect about you to:</p>\r\n<ul>\r\n<li>deliver our products and services, and manage our business;</li>\r\n<li>manage your account and provide you with customer support;</li>\r\n<li>perform research and analysis;</li>\r\n<li>communicate with you about products or services that may be of interest to you either from us, other IAC companies or other third parties;</li>\r\n<li>develop and display content and advertising tailored to your interests on our site and other sites, including providing our advertisements to you when you visit other sites;</li>\r\n<li>perform ad tracking and website or mobile application analytics;</li>\r\n<li>verify your eligibility and deliver prizes in connection with contests and sweepstakes;</li>\r\n<li>enforce or exercise any rights in our terms and conditions;</li>\r\n<li>perform functions as otherwise described to you at the time of collection; and</li>\r\n<li>register you with and display your profile on other online dating and other social websites owned by IAC, such as match.com, chemistry.com, POF.com, howaboutwe.com and okcupid.com.</li>\r\n</ul>\r\n<p><u>Financial information</u>. We may use financial information or payment method to (i) process payment for any purchases made on our website or application, (ii) enroll you in the discount, rebate, and other programs in which you elect to participate, (iii) to protect against or identify possible fraudulent transactions, and (iv) otherwise as needed to manage our business.</p>\r\n<p><u>Job applicants</u>. If your personal information is submitted through our website when applying for a position with our company, the information will be used solely in connection with considering and acting upon your application. We may retain your personal information, but only for the purpose of considering your application for current or future available positions. This information, which may include your name and contact information, prior education and experience, and other information you provided to us, may be shared with other IAC companies for the purpose of evaluating your qualifications for the particular position or other available positions, as well as with third-party service providers retained by us to collect, maintain and analyze candidate submissions for job postings.</p>\r\n<p>Please review \"Your choices about collection and use of your information\" below.</p>\r\n<p>In all circumstances, we may perform these functions directly or use a third party vendor to perform these functions on our behalf who will be obligated to use your personal information only to perform services for us. Also, if you access our website or mobile applications from a third party social platform, such as Facebook, we may share non-personal information with that platform to the extent permitted by your agreement with it and its privacy settings.</p>\r\n<p><strong>With whom we share your information</strong></p>\r\n<p><u>Personal information</u>. We do not share your personal information with others except as indicated in this Privacy Policy or when we inform you and give you an opportunity to opt out of having your personal information shared. We may share personal information with:</p>\r\n<ul>\r\n<li><strong>Service providers</strong>: We may share information, including personal information, with third parties that perform certain services on our behalf. These services may include fulfilling orders, providing customer service and marketing assistance, performing business and sales analysis, ad tracking and analytics, member screenings, supporting our website functionality, and supporting contests, sweepstakes, surveys and other features offered through our site. We may also share your name, contact information and credit card information with our service providers who process credit card payments. These service providers may have access to personal information needed to perform their functions but are not permitted to share or use such information for any other purposes.</li>\r\n<li>&nbsp;When you elect to engage in a particular merchant\'s offer or program, you authorize us to provide your email address and other information to that merchant. To opt-out of cookies that may be set by third party data or advertising partners, please go to</li>\r\n<li>&nbsp;</li>\r\n<li><strong>Other IAC businesses</strong>. IAC&rsquo;s businesses include the online dating websites match.com, chemistry.com, okcupid.com, meetic.com, howaboutwe.com, speeddate.com, twoo.com and the websites we operate (ourtime.com, senior peoplemeet.com, Seriousdatings. comand other sites listed on www.peoplemedia.com). We may share information we collect, including your profile and personal information such as your name and contact information, photos, interests, activities and transactions on our website, with IAC companies. As part of our online service, your profile may be registered on and/or appear in search results or other areas of other online dating websites owned by IAC. The privacy policies of all IAC online dating companies are similar to our privacy policy.</li>\r\n<li><strong>Other Situations</strong>. We also may disclose your information, including personal information:</li>\r\n</ul>\r\n<ul>\r\n<ul>\r\n<li>In response to a subpoena or similar investigative demand, a court order, or a request for cooperation from a law enforcement or other government agency; to establish or exercise our legal rights; to defend against legal claims; or as otherwise required by law. In such cases, we may raise or waive any legal objection or right available to us.</li>\r\n<li>When we believe disclosure is appropriate in connection with efforts to investigate, prevent, or take other action regarding illegal activity, suspected fraud or other wrongdoing; to protect and defend the rights, property or safety of our company, our users, our employees, or others; to comply with applicable law or cooperate with law enforcement; or to enforce our website terms and conditions or other agreements or policies.</li>\r\n<li>In connection with a substantial corporate transaction, such as the sale of our business, a divestiture, merger, consolidation, or asset sale, or in the unlikely event of bankruptcy.</li>\r\n</ul>\r\n</ul>\r\n<p><u>Aggregated and/or non-personal information.</u>&nbsp;We may share non-personal information we collect under any of the above circumstances. We may also share it with IAC companies and third parties to develop and deliver targeted advertising on our site and on websites or applications of third parties, and to analyze and report on advertising you see. We may combine non-personal information we collect with additional non-personal information collected from other sources. We also may share aggregated, non-personal information, or personal information in hashed, non-human readable form, with third parties, including advisors, advertisers and investors, for the purpose of conducting general business analysis or other business purposes. For example, we may engage a data provider who may collect web log data from you (including IP address and information about your browser or operating system), or place or recognize a unique cookie on your browser to enable you to receive customized ads or content. The cookies may reflect de-identified demographic or other data linked to data you voluntarily have submitted to us (such as your email address), that we may share with a data provider solely in hashed, non-human readable form. To opt-out of cookies that may be set by third party data or advertising partners, please go to</p>\r\n<p>If you would like to opt-out of third-party mobile application ad tracking and analytics, please visit here.</p>\r\n<p><strong>Do Not Track Disclosure</strong></p>\r\n<p>Do Not Track (\"DNT\") is a privacy preference that users can set in their web browsers. DNT is a way for users to inform websites and services that they do not want certain information about their webpage visits collected over time and across websites or online services. We are committed to providing you with meaningful choices about the information we collect and that is why we provide the opt-out links in the Privacy Policy. However, we do not recognize or respond to any DNT signals as the Internet industry works toward defining exactly what DNT means, what it means to comply with DNT, and a common approach to responding to DNT.</p>\r\n<p><strong>Third-party websites</strong></p>\r\n<p>There are a number of places on our website where you may click on a link to access other websites that do not operate under this Privacy Policy. For example, if you click on an advertisement on our website, you may be taken to a website that we do not control. These third-party websites may independently solicit and collect information, including personal information, from you and, in some instances, provide us with information about your activities on those websites. We recommend that you consult the privacy statements of all third-party websites you visit by clicking on the \"privacy\" link typically located at the bottom of the webpage you are visiting.</p>\r\n<p><strong>How you can access your information</strong></p>\r\n<p>If you have an online account with us, you have the ability to review and update your personal information online by logging into your account and clicking on your account settings. More information about how to contact us is provided below. If you have an online account with us, you also may close your account at any time by visiting your account settings. If you close your account, we may still retain certain information associated with your account for analytical purposes and recordkeeping integrity, as well as to prevent fraud, collect any fees owed, enforce our terms and conditions, take actions we deem necessary to protect the integrity of our website or our users, or take other actions otherwise permitted by law. In addition, if certain information has already been provided to third parties as described in this Privacy Policy, retention of that information will be subject to those third parties\' policies.</p>\r\n<p><strong>Your choices about collection and use of your information</strong></p>\r\n<ul>\r\n<li>You can choose not to provide us with certain information, but that may result in you being unable to use certain features of our site because such information may be required in order for you to register as a member; purchase products or services; participate in a contest, promotion, survey, or sweepstakes; ask a question; or initiate other transactions.</li>\r\n<li>When you register on our site, you consent to receive email messages from us. At any time you can choose to no longer receive commercial or promotional emails from us by visiting your account settings page. You also will be given the opportunity, in any commercial email that we send to you, to opt out of receiving such messages in the future. It may take up to 10 days for us to process an opt-out request. We may send you transactional and relationship emails, such as service announcements, administrative notices, and surveys, without offering you the opportunity to opt out of receiving them. Please note that changing information in your account, or otherwise opting out of receipt of promotional email communications, will only affect future activities or communications from us. If we have already provided your information to a third party (such as a service provider) before you have changed your preferences or updated your information, you may have to change you preferences directly with that third party.</li>\r\n<li>You can also control information collected by cookies. See \"<a href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#Cookies\">Cookies</a>\" below for information about declining or deleting cookies.</li>\r\n</ul>\r\n<p><strong>How we protect your personal information</strong></p>\r\n<p>We take appropriate security measures (including physical, electronic and procedural measures) to help safeguard your personal information from unauthorized access and disclosure. However, no system can be completely secure. Therefore, although we take steps to secure your information, we do not promise, and you should not expect, that your personal information, searches, or other communications will always remain secure. Users should also take care with how they handle and disclose their personal information and should avoid sending personal information through insecure email. Please refer to the Federal Trade Commission\'s website at&nbsp;<a href=\"http://www.consumer.ftc.gov/topics/identity-theft\">http://www.consumer.ftc.gov/topics/identity-theft</a>&nbsp;for information about how to protect yourself against identity theft.</p>\r\n<p><strong>Information you provide about yourself while using our service</strong></p>\r\n<p>We provide areas on our site where you can post information about yourself and others and communicate with others or upload content such as photographs. Such postings are governed by our&nbsp;<a href=\"http://www.blackpeoplemeet.com/v3/termsandconditions\">Terms of Use</a>. In addition, such postings may appear on other websites or when searches are executed on the subject of your posting. Also, whenever you voluntarily disclose personal information on publicly-viewable web pages, that information will be publicly available and can be collected and used by others. For example, if you post your email address, you may receive unsolicited messages. We cannot control who reads your posting or what other users may do with the information you voluntarily post, so we encourage you to exercise discretion and caution with respect to your personal information.</p>\r\n<p><strong>Children\'s privacy</strong></p>\r\n<p>Although our website is a general audience site, we restrict the use of our service to individuals age 20 and above. We do not knowingly collect personal information from children under the age of 13.</p>\r\n<p><strong>Visiting our websites from outside the United States</strong></p>\r\n<p>If you are visiting our website from outside the United States, please be aware that your information may be transferred to, stored, and processed in the United States where our servers are located and our central database is operated. By using our services, you understand that your information may be transferred to our facilities and those third parties with whom we share it as described in this privacy policy.</p>\r\n<p><strong>No Rights of Third Parties</strong></p>\r\n<p>This Privacy Policy does not create rights enforceable by third parties or require disclosure of any personal information relating to users of the website.</p>\r\n<p><strong>Changes to this Privacy Policy</strong></p>\r\n<p>We will occasionally update this Privacy Policy. When we post changes to this Privacy Policy, we will revise the \"last updated\" date at the top of this Privacy Policy. We recommend that you check our site from time to time to inform yourself of any changes in this Privacy Policy or any of our other policies.</p>\r\n<p><strong>How to contact us</strong></p>\r\n<p>If you have any questions about this Privacy Policy, please contact us as follows:</p>\r\n<p>Privacy Officer<br /> theyear@live.com</p>\r\n<p><strong>Linked information:</strong></p>\r\n<p><u>Cookies:</u>&nbsp;</p>\r\n<p>A cookie is a small text file that is stored on a user\'s device for record keeping purposes. Cookies can be either session cookies or persistent cookies. A session cookie expires when you close your browser and is used to make it easier for you to navigate our site. A persistent cookie remains on your device for an extended period of time. Cookies on our site do not link to or store your personal information.</p>\r\n<p>For example, when you sign in to our website, we will record your user or member ID and the name associated with your user or member ID in the cookie file on your computer. We also may record your password in this cookie file, if you indicated that you would like your password saved for automatic sign-in. For security purposes, we encrypt account-related data that we store in such cookies. In the case of sites and services that do not use a user or member ID, the cookie will contain a unique identifier. We may allow our service providers to serve cookies from our website or application to allow them to assist us in various activities, such as doing analysis and research on the effectiveness of our site, content and advertising.</p>\r\n<p>You may delete or decline cookies by changing your browser settings. (Click \"Help\" in the toolbar of most browsers for instructions.) If you do so, some of the features and services of our website may not function properly.</p>\r\n<p>We may allow third-parties, including advertising companies, analytics companies, and ad networks, to display advertisements on our site. These companies may use tracking technologies, such as cookies, to collect information about users who view or interact with their advertisements or our website or mobile applications. We do not provide any personal information to these third parties, but they may collect information about where you, or others who are using your device, saw and/or clicked on the advertisements they deliver (such as click stream information, browser type, time and date, subject of advertisements clicked or scrolled over, etc.), and possibly associate this information with your subsequent visits to the advertised websites or other data they have collected. They also may combine this information with personal information they collect from you to provide advertisements about goods and services likely to be of greater interest to you. The collection and use of that information is subject to the third-party\'s privacy policy. Some of these third-party advertising companies may be advertising networks that are members of the Network Advertising Initiative, which offers a single location to opt out of ad targeting from member companies and provides information about this behavioral advertising practice (www.networkadvertising.org). This policy covers the use of cookies by us and does not cover the use of cookies by any advertisers.</p>\r\n<p>Privacy Policy</p>\r\n<p>People Media respects the privacy of its users and has developed this Privacy Policy to demonstrate its commitment to protecting your privacy. This Privacy Policy describes the information we collect, how that information may be used, with whom it may be shared, and your choices about such uses and disclosures. We encourage you to read this Privacy Policy carefully when using our website or services or transacting business with us. By using our website, you are accepting the practices described in this Privacy Policy.</p>\r\n<p>If you have any questions about our privacy practices, please refer to the end of this Privacy Policy for information on how to contact us.</p>\r\n<p><strong>Information we collect about you</strong></p>\r\n<p><u>In General</u>. We may collect information that can identify you such as your name and email address (\"personal information\") and other information that does not identify you. We may collect this information through a website or a mobile application. When you provide personal information through our website, the information may be sent to servers located in the United States and other countries around the world.</p>\r\n<ul>\r\n<li><strong>Information you provide</strong>. We may collect and store any personal information you enter on our website or on a mobile application, or provide to us in some other manner. This includes identifying information, such as your name, address, email address and telephone number, and, if you transact business with us, financial information such as your payment method (valid credit card number, type, expiration date or other financial information). You may also provide us information about your interests and activities, your gender and age, and other demographic information such as your hometown or your username.</li>\r\n<li>This information may be available from your profile or account with such site or from cookies placed on your device by the third party platform.</li>\r\n<li><strong>Information about others</strong>. We may collect and store personal information about other people that you provide to us, such as their name, address and email address. If you use our website to send others (friends, relatives, colleagues, etc.) a product as a gift, we may store your personal information, and the personal information of each such recipient in order to process those requests or facilitate future activities.</li>\r\n</ul>\r\n<p><u>Use of cookies and other technologies to collect information</u>. We use various technologies to collect information from your device and about your activities on our site or application.</p>\r\n<ul>\r\n<li><strong>Information collected automatically</strong>. We automatically collect information from your browser or device when you visit our website or application. This information could include your IP address, device ID, your browser type and language, access times, the content of any undeleted cookies that your browser previously accepted from us (see \"<a href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#Cookies\">Cookies</a>\" below), and the referring website address.</li>\r\n<li><strong>Cookies and Use of Cookie Data</strong>. When you visit our website or application, we may assign your device one or more cookies, to facilitate access to our site and to personalize your online experience. Through the use of a cookie, we also may automatically collect information about your online activity on our site, such as the pages you visit, the time and date of your visits, the links you click, and the searches you conduct on our site. During your visits to other websites or applications where we advertise, we (or third parties) may use certain data collected on our site to show you advertisements from us or our affiliates. Although you may not opt out of receiving online advertisements generally, you may control the collection of data on our site used for our targeted advertising during your visits to other websites. To opt-out of our data collection for targeted advertising on other sites, click here:&nbsp;<a href=\"http://display.blackpeoplemeet.com/optout.html\">Opt Out Now</a>. Most browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies. If you choose to decline cookies, please note that you may not be able to sign in or use some of the interactive features offered on our site.</li>\r\n<li><strong>Other Technologies</strong>. We may use standard Internet technology, such as&nbsp;<a href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#WebBeacons\">web beacons</a>&nbsp;and other similar technologies, to track your use of our site. We also may include web beacons in advertisements or email messages to determine whether messages have been opened and acted upon. The information we obtain in this manner enables us to customize the services we offer our website or application visitors to deliver targeted advertisements and to measure the overall effectiveness of our online advertising, content, programming or other activities.</li>\r\n<li><strong>Information collected by third-parties</strong>. We may allow service providers, IAC companies, advertising companies and ad networks, and other third parties to display advertisements on our site for a fee. These companies may use tracking technologies, such as cookies, to collect information about users who view or interact with their advertisements. We do not provide any non-anonymized personal information to these third parties. Some of these third-party advertising companies may be advertising networks that are members of the Network Advertising Initiative, which offers a single location to opt out of ad targeting from member companies (www.networkadvertising.org).</li>\r\n</ul>\r\n<p><strong>How we use the information we collect</strong></p>\r\n<p><u>In General</u>. We may use information that we collect about you to:</p>\r\n<ul>\r\n<li>deliver our products and services, and manage our business;</li>\r\n<li>manage your account and provide you with customer support;</li>\r\n<li>perform research and analysis;</li>\r\n<li>communicate with you about products or services that may be of interest to you either from us, other IAC companies or other third parties;</li>\r\n<li>develop and display content and advertising tailored to your interests on our site and other sites, including providing our advertisements to you when you visit other sites;</li>\r\n<li>perform ad tracking and website or mobile application analytics;</li>\r\n<li>verify your eligibility and deliver prizes in connection with contests and sweepstakes;</li>\r\n<li>enforce or exercise any rights in our terms and conditions;</li>\r\n<li>perform functions as otherwise described to you at the time of collection; and</li>\r\n<li>register you with and display your profile on other online dating and other social websites owned by IAC, such as match.com, chemistry.com, POF.com, howaboutwe.com and okcupid.com.</li>\r\n</ul>\r\n<p><u>Financial information</u>. We may use financial information or payment method to (i) process payment for any purchases made on our website or application, (ii) enroll you in the discount, rebate, and other programs in which you elect to participate, (iii) to protect against or identify possible fraudulent transactions, and (iv) otherwise as needed to manage our business.</p>\r\n<p><u>Job applicants</u>. If your personal information is submitted through our website when applying for a position with our company, the information will be used solely in connection with considering and acting upon your application. We may retain your personal information, but only for the purpose of considering your application for current or future available positions. This information, which may include your name and contact information, prior education and experience, and other information you provided to us, may be shared with other IAC companies for the purpose of evaluating your qualifications for the particular position or other available positions, as well as with third-party service providers retained by us to collect, maintain and analyze candidate submissions for job postings.</p>\r\n<p>Please review \"Your choices about collection and use of your information\" below.</p>\r\n<p>In all circumstances, we may perform these functions directly or use a third party vendor to perform these functions on our behalf who will be obligated to use your personal information only to perform services for us. Also, if you access our website or mobile applications from a third party social platform, such as Facebook, we may share non-personal information with that platform to the extent permitted by your agreement with it and its privacy settings.</p>\r\n<p><strong>With whom we share your information</strong></p>\r\n<p><u>Personal information</u>. We do not share your personal information with others except as indicated in this Privacy Policy or when we inform you and give you an opportunity to opt out of having your personal information shared. We may share personal information with:</p>\r\n<ul>\r\n<li><strong>Service providers</strong>: We may share information, including personal information, with third parties that perform certain services on our behalf. These services may include fulfilling orders, providing customer service and marketing assistance, performing business and sales analysis, ad tracking and analytics, member screenings, supporting our website functionality, and supporting contests, sweepstakes, surveys and other features offered through our site. We may also share your name, contact information and credit card information with our service providers who process credit card payments. These service providers may have access to personal information needed to perform their functions but are not permitted to share or use such information for any other purposes.</li>\r\n<li>&nbsp;When you elect to engage in a particular merchant\'s offer or program, you authorize us to provide your email address and other information to that merchant. To opt-out of cookies that may be set by third party data or advertising partners, please go to</li>\r\n<li>&nbsp;</li>\r\n<li><strong>Other IAC businesses</strong>. IAC&rsquo;s businesses include the online dating websites match.com, chemistry.com, okcupid.com, meetic.com, howaboutwe.com, speeddate.com, twoo.com and the websites we operate (ourtime.com, senior peoplemeet.com, Seriousdatings. comand other sites listed on www.peoplemedia.com). We may share information we collect, including your profile and personal information such as your name and contact information, photos, interests, activities and transactions on our website, with IAC companies. As part of our online service, your profile may be registered on and/or appear in search results or other areas of other online dating websites owned by IAC. The privacy policies of all IAC online dating companies are similar to our privacy policy.</li>\r\n<li><strong>Other Situations</strong>. We also may disclose your information, including personal information:</li>\r\n</ul>\r\n<ul>\r\n<ul>\r\n<li>In response to a subpoena or similar investigative demand, a court order, or a request for cooperation from a law enforcement or other government agency; to establish or exercise our legal rights; to defend against legal claims; or as otherwise required by law. In such cases, we may raise or waive any legal objection or right available to us.</li>\r\n<li>When we believe disclosure is appropriate in connection with efforts to investigate, prevent, or take other action regarding illegal activity, suspected fraud or other wrongdoing; to protect and defend the rights, property or safety of our company, our users, our employees, or others; to comply with applicable law or cooperate with law enforcement; or to enforce our website terms and conditions or other agreements or policies.</li>\r\n<li>In connection with a substantial corporate transaction, such as the sale of our business, a divestiture, merger, consolidation, or asset sale, or in the unlikely event of bankruptcy.</li>\r\n</ul>\r\n</ul>\r\n<p><u>Aggregated and/or non-personal information.</u>&nbsp;We may share non-personal information we collect under any of the above circumstances. We may also share it with IAC companies and third parties to develop and deliver targeted advertising on our site and on websites or applications of third parties, and to analyze and report on advertising you see. We may combine non-personal information we collect with additional non-personal information collected from other sources. We also may share aggregated, non-personal information, or personal information in hashed, non-human readable form, with third parties, including advisors, advertisers and investors, for the purpose of conducting general business analysis or other business purposes. For example, we may engage a data provider who may collect web log data from you (including IP address and information about your browser or operating system), or place or recognize a unique cookie on your browser to enable you to receive customized ads or content. The cookies may reflect de-identified demographic or other data linked to data you voluntarily have submitted to us (such as your email address), that we may share with a data provider solely in hashed, non-human readable form. To opt-out of cookies that may be set by third party data or advertising partners, please go to</p>\r\n<p>If you would like to opt-out of third-party mobile application ad tracking and analytics, please visit here.</p>\r\n<p><strong>Do Not Track Disclosure</strong></p>\r\n<p>Do Not Track (\"DNT\") is a privacy preference that users can set in their web browsers. DNT is a way for users to inform websites and services that they do not want certain information about their webpage visits collected over time and across websites or online services. We are committed to providing you with meaningful choices about the information we collect and that is why we provide the opt-out links in the Privacy Policy. However, we do not recognize or respond to any DNT signals as the Internet industry works toward defining exactly what DNT means, what it means to comply with DNT, and a common approach to responding to DNT.</p>\r\n<p><strong>Third-party websites</strong></p>\r\n<p>There are a number of places on our website where you may click on a link to access other websites that do not operate under this Privacy Policy. For example, if you click on an advertisement on our website, you may be taken to a website that we do not control. These third-party websites may independently solicit and collect information, including personal information, from you and, in some instances, provide us with information about your activities on those websites. We recommend that you consult the privacy statements of all third-party websites you visit by clicking on the \"privacy\" link typically located at the bottom of the webpage you are visiting.</p>\r\n<p><strong>How you can access your information</strong></p>\r\n<p>If you have an online account with us, you have the ability to review and update your personal information online by logging into your account and clicking on your account settings. More information about how to contact us is provided below. If you have an online account with us, you also may close your account at any time by visiting your account settings. If you close your account, we may still retain certain information associated with your account for analytical purposes and recordkeeping integrity, as well as to prevent fraud, collect any fees owed, enforce our terms and conditions, take actions we deem necessary to protect the integrity of our website or our users, or take other actions otherwise permitted by law. In addition, if certain information has already been provided to third parties as described in this Privacy Policy, retention of that information will be subject to those third parties\' policies.</p>\r\n<p><strong>Your choices about collection and use of your information</strong></p>\r\n<ul>\r\n<li>You can choose not to provide us with certain information, but that may result in you being unable to use certain features of our site because such information may be required in order for you to register as a member; purchase products or services; participate in a contest, promotion, survey, or sweepstakes; ask a question; or initiate other transactions.</li>\r\n<li>When you register on our site, you consent to receive email messages from us. At any time you can choose to no longer receive commercial or promotional emails from us by visiting your account settings page. You also will be given the opportunity, in any commercial email that we send to you, to opt out of receiving such messages in the future. It may take up to 10 days for us to process an opt-out request. We may send you transactional and relationship emails, such as service announcements, administrative notices, and surveys, without offering you the opportunity to opt out of receiving them. Please note that changing information in your account, or otherwise opting out of receipt of promotional email communications, will only affect future activities or communications from us. If we have already provided your information to a third party (such as a service provider) before you have changed your preferences or updated your information, you may have to change you preferences directly with that third party.</li>\r\n<li>You can also control information collected by cookies. See \"<a href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#Cookies\">Cookies</a>\" below for information about declining or deleting cookies.</li>\r\n</ul>\r\n<p><strong>How we protect your personal information</strong></p>\r\n<p>We take appropriate security measures (including physical, electronic and procedural measures) to help safeguard your personal information from unauthorized access and disclosure. However, no system can be completely secure. Therefore, although we take steps to secure your information, we do not promise, and you should not expect, that your personal information, searches, or other communications will always remain secure. Users should also take care with how they handle and disclose their personal information and should avoid sending personal information through insecure email. Please refer to the Federal Trade Commission\'s website at&nbsp;<a href=\"http://www.consumer.ftc.gov/topics/identity-theft\">http://www.consumer.ftc.gov/topics/identity-theft</a>&nbsp;for information about how to protect yourself against identity theft.</p>\r\n<p><strong>Information you provide about yourself while using our service</strong></p>\r\n<p>We provide areas on our site where you can post information about yourself and others and communicate with others or upload content such as photographs. Such postings are governed by our&nbsp;<a href=\"http://www.blackpeoplemeet.com/v3/termsandconditions\">Terms of Use</a>. In addition, such postings may appear on other websites or when searches are executed on the subject of your posting. Also, whenever you voluntarily disclose personal information on publicly-viewable web pages, that information will be publicly available and can be collected and used by others. For example, if you post your email address, you may receive unsolicited messages. We cannot control who reads your posting or what other users may do with the information you voluntarily post, so we encourage you to exercise discretion and caution with respect to your personal information.</p>\r\n<p><strong>Children\'s privacy</strong></p>\r\n<p>Although our website is a general audience site, we restrict the use of our service to individuals age 20 and above. We do not knowingly collect personal information from children under the age of 13.</p>\r\n<p><strong>Visiting our websites from outside the United States</strong></p>\r\n<p>If you are visiting our website from outside the United States, please be aware that your information may be transferred to, stored, and processed in the United States where our servers are located and our central database is operated. By using our services, you understand that your information may be transferred to our facilities and those third parties with whom we share it as described in this privacy policy.</p>\r\n<p><strong>No Rights of Third Parties</strong></p>\r\n<p>This Privacy Policy does not create rights enforceable by third parties or require disclosure of any personal information relating to users of the website.</p>\r\n<p><strong>Changes to this Privacy Policy</strong></p>\r\n<p>We will occasionally update this Privacy Policy. When we post changes to this Privacy Policy, we will revise the \"last updated\" date at the top of this Privacy Policy. We recommend that you check our site from time to time to inform yourself of any changes in this Privacy Policy or any of our other policies.</p>\r\n<p><strong>How to contact us</strong></p>\r\n<p>If you have any questions about this Privacy Policy, please contact us as follows:</p>\r\n<p>Privacy Officer<br /> theyear@live.com</p>\r\n<p><strong>Linked information:</strong></p>\r\n<p><u>Cookies:</u>&nbsp;</p>\r\n<p>A cookie is a small text file that is stored on a user\'s device for record keeping purposes. Cookies can be either session cookies or persistent cookies. A session cookie expires when you close your browser and is used to make it easier for you to navigate our site. A persistent cookie remains on your device for an extended period of time. Cookies on our site do not link to or store your personal information.</p>\r\n<p>For example, when you sign in to our website, we will record your user or member ID and the name associated with your user or member ID in the cookie file on your computer. We also may record your password in this cookie file, if you indicated that you would like your password saved for automatic sign-in. For security purposes, we encrypt account-related data that we store in such cookies. In the case of sites and services that do not use a user or member ID, the cookie will contain a unique identifier. We may allow our service providers to serve cookies from our website or application to allow them to assist us in various activities, such as doing analysis and research on the effectiveness of our site, content and advertising.</p>\r\n<p>You may delete or decline cookies by changing your browser settings. (Click \"Help\" in the toolbar of most browsers for instructions.) If you do so, some of the features and services of our website may not function properly.</p>\r\n<p>We may allow third-parties, including advertising companies, analytics companies, and ad networks, to display advertisements on our site. These companies may use tracking technologies, such as cookies, to collect information about users who view or interact with their advertisements or our website or mobile applications. We do not provide any personal information to these third parties, but they may collect information about where you, or others who are using your device, saw and/or clicked on the advertisements they deliver (such as click stream information, browser type, time and date, subject of advertisements clicked or scrolled over, etc.), and possibly associate this information with your subsequent visits to the advertised websites or other data they have collected. They also may combine this information with personal information they collect from you to provide advertisements about goods and services likely to be of greater interest to you. The collection and use of that information is subject to the third-party\'s privacy policy. Some of these third-party advertising companies may be advertising networks that are members of the Network Advertising Initiative, which offers a single location to opt out of ad targeting from member companies and provides information about this behavioral advertising practice (www.networkadvertising.org). This policy covers the use of cookies by us and does not cover the use of cookies by any advertisers.</p>\r\n<p>Privacy Policy</p>\r\n<p>People Media respects the privacy of its users and has developed this Privacy Policy to demonstrate its commitment to protecting your privacy. This Privacy Policy describes the information we collect, how that information may be used, with whom it may be shared, and your choices about such uses and disclosures. We encourage you to read this Privacy Policy carefully when using our website or services or transacting business with us. By using our website, you are accepting the practices described in this Privacy Policy.</p>\r\n<p>If you have any questions about our privacy practices, please refer to the end of this Privacy Policy for information on how to contact us.</p>\r\n<p><strong>Information we collect about you</strong></p>\r\n<p><u>In General</u>. We may collect information that can identify you such as your name and email address (\"personal information\") and other information that does not identify you. We may collect this information through a website or a mobile application. When you provide personal information through our website, the information may be sent to servers located in the United States and other countries around the world.</p>\r\n<ul>\r\n<li><strong>Information you provide</strong>. We may collect and store any personal information you enter on our website or on a mobile application, or provide to us in some other manner. This includes identifying information, such as your name, address, email address and telephone number, and, if you transact business with us, financial information such as your payment method (valid credit card number, type, expiration date or other financial information). You may also provide us information about your interests and activities, your gender and age, and other demographic information such as your hometown or your username.</li>\r\n<li>This information may be available from your profile or account with such site or from cookies placed on your device by the third party platform.</li>\r\n<li><strong>Information about others</strong>. We may collect and store personal information about other people that you provide to us, such as their name, address and email address. If you use our website to send others (friends, relatives, colleagues, etc.) a product as a gift, we may store your personal information, and the personal information of each such recipient in order to process those requests or facilitate future activities.</li>\r\n</ul>\r\n<p><u>Use of cookies and other technologies to collect information</u>. We use various technologies to collect information from your device and about your activities on our site or application.</p>\r\n<ul>\r\n<li><strong>Information collected automatically</strong>. We automatically collect information from your browser or device when you visit our website or application. This information could include your IP address, device ID, your browser type and language, access times, the content of any undeleted cookies that your browser previously accepted from us (see \"<a href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#Cookies\">Cookies</a>\" below), and the referring website address.</li>\r\n<li><strong>Cookies and Use of Cookie Data</strong>. When you visit our website or application, we may assign your device one or more cookies, to facilitate access to our site and to personalize your online experience. Through the use of a cookie, we also may automatically collect information about your online activity on our site, such as the pages you visit, the time and date of your visits, the links you click, and the searches you conduct on our site. During your visits to other websites or applications where we advertise, we (or third parties) may use certain data collected on our site to show you advertisements from us or our affiliates. Although you may not opt out of receiving online advertisements generally, you may control the collection of data on our site used for our targeted advertising during your visits to other websites. To opt-out of our data collection for targeted advertising on other sites, click here:&nbsp;<a href=\"http://display.blackpeoplemeet.com/optout.html\">Opt Out Now</a>. Most browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies. If you choose to decline cookies, please note that you may not be able to sign in or use some of the interactive features offered on our site.</li>\r\n<li><strong>Other Technologies</strong>. We may use standard Internet technology, such as&nbsp;<a href=\"http://www.blackpeoplemeet.com/v3/privacypolicy?sid=291&amp;afid=31_00013vjRwc&amp;CPSessionID=0c2eed1f-4a53-4731-9a4f-5b4fd62273d9&amp;VisitorID=17541126663#WebBeacons\">web beacons</a>&nbsp;and other similar technologies, to track your use of our site. We also may include web beacons in advertisements or email messages to determine whether messages have been opened and acted upon. The information we obtain in this manner enables us to customize the services we offer our website or application visitors to deliver targeted advertisements and to measure the overall effectiveness of our online advertising, content, programming or other activities.</li>\r\n<li><strong>Information collected by third-parties</strong>. We may allow service providers, IAC companies, advertising companies and ad networks, and other third parties to display advertisements on our site for a fee. These companies may use tracking technologies, such as cookies, to collect information about users who view or interact with their advertisements. We do not provide any non-anonymized personal information to these third parties. Some of these third-party advertising companies may be advertising networks that are members of the Network Advertising Initiative, which offers a single location to opt out of ad targeting from member companies (www.networkadvertising.org).</li>\r\n</ul>\r\n<p><strong>How we use the information we collect</strong></p>\r\n<p><u>In General</u>. We may use information that we collect about you to:</p>\r\n<ul>\r\n<li>deliver our products and services, and manage our business;</li>\r\n<li>manage your account and provide you with customer support;</li>\r\n<li>perform research and analysis;</li>\r\n<li>communicate with you about products or services that may be of interest to you either from us, other IAC companies or other third parties;</li>\r\n<li>develop and display content and advertising tailored to your interests on our site and other sites, including providing our advertisements to you when you visit other sites;</li>\r\n<li>perform ad tracking and website or mobile application analytics;</li>\r\n<li>verify your eligibility and deliver prizes in connection with contests and sweepstakes;</li>\r\n<li>enforce or exercise any rights in our terms and conditions;</li>\r\n<li>perform functions as otherwise described to you at the time of collection; and</li>\r\n<li>register you with and display your profile on other online dating and other social websites owned by IAC, such as match.com, chemistry.com, POF.com, howaboutwe.com and okcupid.com.</li>\r\n</ul>\r\n<p><u>Financial information</u>. We may use financial information or payment method to (i) process payment for any purchases made on our website or application, (ii) enroll you in the discount, rebate, and other programs in which you elect to participate, (iii) to protect against or identify possible fraudulent transactions, and (iv) otherwise as needed to manage our business.</p>\r\n<p><u>Job applicants</u>. If your personal information is submitted through our website when applying for a position with our company, the information will be used solely in connection with considering and acting upon your application. We may retain your personal information, but only for the purpose of considering your application for current or future available positions. This information, which may include your name and contact information, prior education and experience, and other information you provided to us, may be shared with other IAC companies for the purpose of evaluating your qualifications for the particular position or other available positions, as well as with third-party service providers retained by us to collect, maintain and analyze candidate submissions for job postings.</p>\r\n<p>Please review \"Your choices about collection and use of your information\" below.</p>\r\n<p>In all circumstances, we may perform these functions directly or use a third party vendor to perform these functions on our behalf who will be obligated to use your personal information only to perform services for us. Also, if you access our website or mobile applications from a third party social platform, such as Facebook, we may share non-personal information with that platform to the extent permitted by your agreement with it and its privacy settings.</p>\r\n<p><strong>With whom we share your information</strong></p>\r\n<p><u>Personal information</u>. We do not share your personal information with others except as indicated in this Privacy Policy or when we inform you and give you an opportunity to opt out of having your personal information shared. We may share personal information with:</p>\r\n<ul>\r\n<li><strong>Service providers</strong>: We may share information, including personal information, with third parties that perform certain services on our behalf. These services may include fulfilling orders, providing customer service and marketing assistance, performing business and sales analysis, ad tracking and analytics, member screenings, supporting our website functionality, and supporting contests, sweepstakes, surveys and other features offered through our site. We may also share your name, contact information and credit card information with our service providers who process credit card payments. These service providers may have access to personal information needed to perform their functions but are not permitted to share or use such information for any other purposes.</li>\r\n<li>&nbsp;When you elect to engage in a particular merchant\'s offer or program, you authorize us to provide your email address and other information to that merchant. To opt-out of cookies that may be set by third party data or advertising partners, please go to</li>\r\n<li>&nbsp;</li>\r\n<li><strong>Other IAC businesses</strong>. IAC&rsquo;s businesses include the online dating websites match.com, chemistry.com, okcupid.com, meetic.com, howaboutwe.com, speeddate.com, twoo.com and the websites we operate (ourtime.com, senior peoplemeet.com, Seriousdatings. comand other sites listed on www.peoplemedia.com). We may share information we collect, including your profile and personal information such as your name and contact information, photos, interests, activities and transactions on our website, with IAC companies. As part of our online service, your profile may be registered on and/or appear in search results or other areas of other online dating websites owned by IAC. The privacy policies of all IAC online dating companies are similar to our privacy policy.</li>\r\n<li><strong>Other Situations</strong>. We also may disclose your information, including personal information:</li>\r\n</ul>\r\n<ul>\r\n<ul>\r\n<li>In response to a subpoena or similar investigative demand, a court order, or a request for cooperation from a law enforcement or other government agency; to establish or exercise our legal rights; to defend against legal claims; or as otherwise required by law. In such cases, we may raise or waive any legal objection or right available to us.</li>\r\n<li>When we believe disclosure is appropriate in connection with efforts to investigate, prevent, or take other action regarding illegal activity, suspected fraud or other wrongdoing; to protect and defend the rights, property or safety of our company, our users, our employees, or others; to comply with applicable law or cooperate with law enforcement; or to enforce our website terms and conditions or other agreements or policies.</li>\r\n<li>In connection with a substantial corporate transaction, such as the sale of our business, a divestiture, merger, consolidation, or asset sale, or in the unlikely event of bankruptcy.</li>\r\n</ul>\r\n</ul>\r\n<p><u>Aggregated and/or non-personal information.</u>&nbsp;We may share non-personal information we collect under any of the above circumstances. We may also share it with IAC companies and third parties to develop and deliver targeted advertising on our site and on websites or applications of third parties, and to analyze and report on advertising you see. We may combine non-personal information we collect with additional non-personal information collected from other sources. We also may share aggregated, non-personal information, or personal information in hashed, non-human readable form, with third parties, including advisors, advertisers and investors, for the purpose of conducting general business analysis or other business purposes. For example, we may engage a data provider who may collect web log data from you (including IP address and information about your browser or operating system), or place or recognize a unique cookie on your browser to enable you to receive customized ads or content. The cookies may reflect de-identified demographic or other data linked to data you voluntarily have submitted to us (such as your email address), that we may share with a data provider solely in hashed, non-human readable form. To opt-out of cookies that may be set by third party data or advertising partners, please go to</p>\r\n<p>If you would like to opt-out of third-party mobile application ad tracking and analytics, please visit here.</p>\r\n<p><strong>Do Not Track Disclosure</strong></p>\r\n<p>Do Not Track (\"DNT\") is a privacy preference that users can set in their web browsers. DNT is a way for users to inform websites and services that they do not want certain information about their webpage visits collected over time and across websites or online services. We are committed to providing you with meaningful choices about the information we collect and that is why we provide the opt-out links in the Privacy Policy. However, we do not recognize or respond to any DNT signals as the Internet industry works toward defining exactly what DNT means, what it means to comply with DNT, and a common approach to responding to DNT.</p>\r\n<p><strong>Third-party websites</strong></p>\r\n<p>There are a number of places on our website where you may click on a link to access other websites that do not operate under this Privacy Policy. For example, if you click on an advertisement on our website, you may be taken to a website that we do not control. These third-party websites may independently solicit and collect information, including personal information, from you and, in some instances, provide us with information about your activities on those websites. We recommend that you consult the privacy statements of all third-party websites you visit by clicking on the \"privacy\" link typically located at the bottom of the webpage you are visiting.</p>\r\n<p><strong>How you can access your information</strong></p>\r\n<p>If you have an online account with us, you have the ability to review and update your personal information online by logging into your account and clicking on your account settings. More information about how to contact us is provided below. If you have an online account with us, you also may close your account at any time by visiting your account settings. If you close your account, we may still retain certain information associated with your account for analytical purposes and recordkeeping integrity, as well as to prevent fraud, collect any fees owed, enforce our terms and conditions, take actions we deem necessary to protect the integrity of our website or our users, or take other actions otherwise permitted by law. In addition, if certain information has already been provided to third parties as described in this Privacy Policy, retention of that information will be subject to those third parties\' policies.</p>\r\n<p><strong>Your choices about collection and use of your information</strong></p>\r\n<ul>\r\n<li>You can choose not to provide us with certain information, but that may result in you being unable to use certain features of our site because such information may be required in order for you to register as a member; purchase products or services; participate in a contest, promotion, survey, or sweepstakes; ask a question; or initiate other transactions.</li>\r\n<li>When you register on our site, you consent to receive email messages from us. At any time you can choose to no longer receive commercial or promotional emails from us by visiting your account settings page. You also will be given the opportunity, in any commercial email that we send to you, to opt ou', '2016-09-20 01:12:16', '2016-09-26 11:33:41');
INSERT INTO `pages` (`id`, `title`, `meta_tag`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Terms and condiitions', 'abe', '<p>its description will go here</p>\r\n<p>&nbsp;</p>', '2016-09-20 01:12:45', '2016-09-20 01:12:45'),
(4, 'News', 'news', '<p>new content will go here what ever you want ot put it&nbsp;</p>', '2016-09-20 01:29:48', '2016-09-20 01:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'can_see', 'Can See User Profiles', '2015-11-04 16:27:56', '2015-11-04 16:27:56'),
(2, 'can_see_compatability', 'Can See Compatability', '2015-11-04 16:27:56', '2015-11-04 16:27:56'),
(3, 'admin', 'Can Control Anything', '2015-11-04 16:27:56', '2015-11-04 16:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 3, 2),
(2, 1, 1),
(3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile_picture`
--

CREATE TABLE `profile_picture` (
  `id` int(12) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_picture`
--

INSERT INTO `profile_picture` (`id`, `name`, `image`) VALUES
(1, '0', '0'),
(2, '0', '0'),
(3, 'test', 'Koala.jpg'),
(4, 'folabi', 'Koala.jpg'),
(5, 'tyh', '+6.jpg'),
(6, 'tyh', 'AREAD1.jpg'),
(7, 'tttt', '09G6v1ujF.gif good morning.gif'),
(8, 'tttt', '09G6v1ujF.gif good morning.gif'),
(9, 'rty', 'i_love_you_more_than_anything_by_yingyang841131.jpg'),
(10, 'tttt', 'i_love_you_more_than_anything_by_yingyang841131.jpg'),
(11, 'Xiuhua', ''),
(12, 'Kim', '001.jpg'),
(13, 'Kim', ''),
(14, 'mark', 'gallery_nrm_1424449799-hannahmatt.jpeg'),
(15, 'mark', 'gallery_nrm_1424449799-hannahmatt.jpeg'),
(16, 'as', 'sad_cloud1600.png'),
(17, 'arunsh', 'sad_cloud1600.png'),
(18, 'arunsharma', 'sad_cloud1600.png');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Verified', '2015-11-04 16:27:56', '2015-11-04 16:27:56'),
(2, 'Admin', '2015-11-04 16:27:56', '2015-11-04 16:27:56'),
(3, 'User', '2015-11-04 16:27:56', '2015-11-04 16:27:56'),
(4, 'subscriber', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(12, 12, 1),
(15, 15, 3),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 31, 1),
(32, 32, 1),
(33, 33, 1),
(34, 34, 1),
(35, 35, 1),
(36, 36, 1),
(37, 37, 1),
(38, 38, 1),
(41, 41, 1),
(42, 42, 1),
(43, 43, 1),
(44, 44, 1),
(45, 45, 3),
(46, 46, 4),
(47, 47, 3),
(48, 48, 1),
(49, 49, 2),
(50, 50, 4),
(51, 51, 3),
(52, 52, 3),
(53, 53, 3),
(54, 54, 1),
(55, 55, 3),
(56, 56, 3),
(57, 57, 3),
(58, 58, 3),
(59, 59, 3),
(60, 60, 3),
(61, 61, 1),
(62, 62, 3),
(63, 63, 3),
(64, 64, 3),
(65, 65, 3),
(66, 66, 3),
(67, 67, 3),
(68, 68, 3),
(69, 69, 3),
(70, 70, 1),
(71, 71, 1),
(72, 72, 3),
(73, 73, 3),
(74, 74, 1),
(75, 75, 1),
(76, 76, 1),
(77, 77, 1),
(78, 78, 4),
(79, 79, 3),
(80, 80, 3),
(81, 81, 3),
(82, 82, 4),
(83, 83, 1),
(84, 84, 1),
(85, 85, 1),
(86, 86, 4),
(87, 87, 1),
(88, 88, 1),
(89, 89, 4),
(90, 90, 1),
(91, 91, 1),
(92, 92, 1),
(93, 93, 1),
(94, 94, 1),
(95, 95, 1),
(96, 96, 1),
(97, 97, 4),
(98, 98, 1),
(99, 99, 1),
(100, 100, 1),
(101, 101, 1),
(102, 102, 1),
(103, 103, 3),
(104, 104, 3),
(105, 105, 1),
(106, 106, 3),
(107, 107, 3),
(108, 108, 1),
(109, 109, 1),
(110, 110, 2),
(111, 111, 1),
(112, 112, 1),
(113, 113, 3),
(114, 114, 1),
(115, 115, 3),
(116, 116, 3),
(117, 117, 3),
(118, 118, 4),
(119, 119, 3),
(120, 120, 4),
(121, 121, 1),
(122, 122, 1),
(123, 123, 3),
(124, 124, 1),
(125, 125, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `link` text NOT NULL,
  `image` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `description`, `link`, `image`, `updated_at`, `created_at`) VALUES
(1, 'Attractive & Successful Single', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id congue ipsum. Quisque vehicula massa quis urna malesuada viverra.</p>', '#', 'banner1 (1).png', '2016-09-25 17:22:13', '2016-09-25 17:22:13'),
(2, 'Attractive & Successful Single', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id congue ipsum. Quisque vehicula massa quis urna malesuada viverra.</p>', '#', 'banner2.png', '2016-09-25 17:22:50', '2016-09-25 17:22:50'),
(3, 'Successful Single', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id congue ipsum. Quisque vehicula massa quis urna malesuada viverra.</p>', '#', 'banner3.png', '2016-09-25 17:23:20', '2016-09-25 17:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `subscr_id` text NOT NULL,
  `payer_email` text NOT NULL,
  `payer_id` text NOT NULL,
  `subscr_date` text NOT NULL,
  `subscr_price` varchar(10) NOT NULL,
  `subs_end_date` varchar(40) NOT NULL,
  `auth` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `status` varchar(40) NOT NULL,
  `unsubscribed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `subscr_id`, `payer_email`, `payer_id`, `subscr_date`, `subscr_price`, `subs_end_date`, `auth`, `user_id`, `plan_id`, `status`, `unsubscribed`) VALUES
(8, '18xfactor@gmail.com', '18xfactor@gmail.com', '18xfactor@gmail.com', '2016-09-28', '', '', 'Free', 12, 2, '', '0000-00-00 00:00:00'),
(13, 'ettessummi-3963@yopmail.com', 'ettessummi-3963@yopmail.com', 'ettessummi-3963@yopmail.com', '2017-01-02', '', '', 'Free', 46, 1, '', '0000-00-00 00:00:00'),
(14, 'a.krishan1801@gmail.com', 'a.krishan1801@gmail.com', 'a.krishan1801@gmail.com', '2017-01-27', '', '', 'Free', 49, 1, '', '0000-00-00 00:00:00'),
(16, 'tushar.goyal@loginworks.com', 'tushar.goyal@loginworks.com', 'tushar.goyal@loginworks.com', '2017-03-29', '', '', 'Free', 78, 1, '', '0000-00-00 00:00:00'),
(18, 'yuvraj.singh591@gmail.com', 'yuvraj.singh591@gmail.com', 'yuvraj.singh591@gmail.com', '2017-04-10', '', '', 'Free', 82, 2, '', '0000-00-00 00:00:00'),
(20, 'madhavanps.ece@gmail.com', 'madhavanps.ece@gmail.com', 'madhavanps.ece@gmail.com', '2017-04-13', '', '', 'Free', 89, 1, '', '0000-00-00 00:00:00'),
(21, 'amit@deftsoft.info', 'amit@deftsoft.info', 'amit@deftsoft.info', '2017-04-14', '', '', 'Free', 86, 2, '', '0000-00-00 00:00:00'),
(22, 'jimjohn19999@gmail.com', 'jimjohn19999@gmail.com', 'jimjohn19999@gmail.com', '2017-09-19', '', '', 'Free', 97, 2, '', '0000-00-00 00:00:00'),
(34, 'I-HXVSGH7KSBB9', 'dharam9876@gmail.com', 'AG32ABQWPK7CG', '2017-09-21 11:56:00', '10.00', '05:35:25 Sep 23, 2017', 'A4emT2jlljxZj9z1IsvxgxKnsUy2orRmkhtGJZ8frJSOLXY5WZ6wpB-pLC09qs5VbLnDYlssVWYdcTEGBpz5ZpA', 120, 2, '', '0000-00-00 00:00:00'),
(35, 'I-687BW9JYV2JT', 'dharam9876@gmail.com', 'AG32ABQWPK7CG', '2017-09-22 11:56:00', '10.00', '06:35:34 Sep 24, 2017', 'AAJOue4hO.14UJH5ZfixCj3CSXwkZlPCGQL-nluukq5s46W7xLJ.rshluPSwY7vem4OWbWxNqkFUZIDW.0xaBOg', 117, 2, '', '0000-00-00 00:00:00'),
(36, 'I-3E7Y7KRVBRTH', 'dharam9876@gmail.com', 'AG32ABQWPK7CG', '2017-09-23 11:56:00', '10.00', '11:56:05 Sep 24, 2017', 'Acm8x1xsfNGeWDFU2x-UaRwOa4H1c95VDQ1AJZxOgx2Yrf5CRFAT7OGIqxKdmtH.445BLFQJdLv5Z7bzv5HdqEw', 118, 2, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `success_story`
--

CREATE TABLE `success_story` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `image` varbinary(200) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `success_story`
--

INSERT INTO `success_story` (`id`, `content`, `image`, `created_at`) VALUES
(14, '<p>\r\n\r\n</p><h3>Hannah Graber (25) and Matt Graber (38), married</h3><p>The way we met was actually a happy accident. I had not changed my location settings or my age settings from the default, so Matt kind of snuck in there, because there\'s a 13-year age difference and we lived 50 miles apart. So we got a match, but neither of us was really taking it seriously. Matt messaged me, and we talked a little bit, and just kind of got everything big, all of our baggage, out right away so we could see if it was even worth continuing to talk. I gave him my phone number and he texted me, \"Hi, Hannah, it\'s Matt.\" And I said: \"Which Matt?\" as a joke. And that was it. We just talked nonstop from that point, and we went on our first date a week later. We went on a hike, and we put wine in water bottles and had a little picnic at the end of the hike.</p><p></p>', 0x3738333138395f737563636573735f73746f72795f67616c6c6572795f6e726d5f313432343434393739392d68616e6e61686d6174742e6a706567, '2017-09-15 06:23:29'),
(15, '<p>\r\n\r\n</p><h3>Corie and Brian....</h3>\r\n\r\n\r\n\r\n<p><br></p><p>After a few weeks of matches not seeming like the right fit I expanded my search area. It wasn\'t long until Brian popped up in my matches and I was intrigued instantly, by not only his obvious good looks, but his profile seemed so genuine, down to earth AND he had tattoos which I\'ve always been a sucker for, I knew I had to get to know him more.</p><p></p>', 0x3735373438345f737563636573735f73746f72795f323439392d313336353830323839352e6a7067, '2017-09-19 02:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(250) DEFAULT NULL,
  `template_subject` varchar(250) DEFAULT NULL,
  `template_content` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `useradmin_tbl`
--

CREATE TABLE `useradmin_tbl` (
  `id` int(11) NOT NULL,
  `admin_user` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useradmin_tbl`
--

INSERT INTO `useradmin_tbl` (`id`, `admin_user`, `admin_password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(128) NOT NULL DEFAULT '',
  `firstName` varchar(128) DEFAULT '',
  `lastName` varchar(128) DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `verified` int(1) DEFAULT '0' COMMENT '0==>No 1==>Yes',
  `profileType` varchar(20) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `photoType` varchar(128) DEFAULT NULL COMMENT '0==>Round 1==>Rounded Corner Frame 1==>Straight Corner Frame',
  `role` varchar(128) DEFAULT '',
  `active` int(1) DEFAULT '0' COMMENT '0==>No 1==>Yes',
  `online` int(1) DEFAULT '0' COMMENT '0==>No 1==>Yes',
  `timeActivated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `unsubscribe` int(1) NOT NULL DEFAULT '0' COMMENT '0==>No 1==>Yes',
  `relationshipGoal` varchar(128) DEFAULT NULL,
  `jobAndJobSchedule` varchar(128) DEFAULT NULL,
  `yourSocialSituation` varchar(128) DEFAULT NULL,
  `haveChildren` varchar(128) DEFAULT NULL COMMENT '0==>No 1==>Yes',
  `howMany` varchar(128) DEFAULT NULL,
  `doYouOwnACar` varchar(128) DEFAULT NULL COMMENT '0==>No 1==>Yes',
  `areYouOnAnyMedication` varchar(128) DEFAULT NULL,
  `howAmbitiousAreYou` varchar(128) DEFAULT NULL,
  `whatIsTheLongestRelationshipYouHaveBeenIn` varchar(128) DEFAULT NULL,
  `yourBirthFatherAndMotherAre` varchar(128) DEFAULT NULL,
  `partnerDependability` varchar(128) DEFAULT NULL,
  `sexualCompatibility` varchar(128) DEFAULT NULL,
  `friendshipBetweenPartners` varchar(128) DEFAULT NULL,
  `drugs` varchar(128) DEFAULT NULL COMMENT '0==>No 1==>Yes',
  `hairColor` varchar(128) DEFAULT NULL,
  `hairStyle` varchar(128) DEFAULT NULL,
  `eyeColor` varchar(128) DEFAULT NULL,
  `height` varchar(128) DEFAULT NULL,
  `bodyType` varchar(128) DEFAULT NULL,
  `zodicSign` varchar(128) DEFAULT NULL,
  `smoke` varchar(128) DEFAULT NULL COMMENT '0==>No 1==>Yes',
  `drink` varchar(128) DEFAULT NULL COMMENT '0==>No 1==>Yes',
  `excercise` varchar(128) DEFAULT NULL,
  `excerciseSchedule` varchar(128) DEFAULT NULL,
  `educationLevel` varchar(128) DEFAULT NULL,
  `language` varchar(128) DEFAULT NULL,
  `ethnicity` varchar(128) DEFAULT NULL,
  `religiousBeliefs` varchar(128) DEFAULT NULL,
  `occupation` varchar(250) DEFAULT NULL,
  `income` varchar(250) DEFAULT NULL,
  `movie` text,
  `travel` text,
  `gender` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `tatoos` varchar(255) DEFAULT NULL,
  `wantKids` varchar(255) DEFAULT NULL,
  `relationshipStatus` varchar(250) DEFAULT NULL,
  `motherBorn` varchar(250) DEFAULT NULL,
  `fatherBorn` varchar(250) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `verify_key` text NOT NULL,
  `reset_key` text NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `location` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstName`, `lastName`, `phone`, `verified`, `profileType`, `photo`, `photoType`, `role`, `active`, `online`, `timeActivated`, `unsubscribe`, `relationshipGoal`, `jobAndJobSchedule`, `yourSocialSituation`, `haveChildren`, `howMany`, `doYouOwnACar`, `areYouOnAnyMedication`, `howAmbitiousAreYou`, `whatIsTheLongestRelationshipYouHaveBeenIn`, `yourBirthFatherAndMotherAre`, `partnerDependability`, `sexualCompatibility`, `friendshipBetweenPartners`, `drugs`, `hairColor`, `hairStyle`, `eyeColor`, `height`, `bodyType`, `zodicSign`, `smoke`, `drink`, `excercise`, `excerciseSchedule`, `educationLevel`, `language`, `ethnicity`, `religiousBeliefs`, `occupation`, `income`, `movie`, `travel`, `gender`, `age`, `zipcode`, `tatoos`, `wantKids`, `relationshipStatus`, `motherBorn`, `fatherBorn`, `remember_token`, `verify_key`, `reset_key`, `latitude`, `longitude`, `updated_at`, `created_at`, `location`) VALUES
(1, 'newadmin', NULL, 'derico@eburstwebservice.co', 'Admin', 'Admin', '03037707296', 1, '0', 'placeholder.png', '0', 'user', 0, 0, '2016-09-25 10:19:28', 1, 'short term relationship', 'vb', 'I don\'t feel comfortable asking peopleout,', 'Yes', '2', 'No', 'No', 'Somewhat Important', '3-6 years', '', 'What every happen', 'What is that', 'Very Important', 'No', 'Light Ash Blonde', 'Long', 'Green Eye', '-2', 'Definitive \'Hard Gainer\'', '2', 'Yes', 'No', 'regularly', 'chest', 'Level 4- GED Certificate ', 'Spanish', 'Hispanic or Latino ', 'Muslims', 'Arts, Design, Entertainment, Sports, and Media', 'Less than $5000', 'Thriller,', 'New York1,', 'Female', '30', '85054', 'Some', 'No', 'Single', 'dw', 'jnk', '9HVHIam47WIEaXpIBfRM8IiUTLXKD9YUmAm8fAZtJTyO7yorL2bWCD5dC5fw', 'FPb9pe0TKUm0y7lhN60ztXnrKJZAtYrMQZhXDLRy', '', 31.4888, 74.3686, '2017-01-18 00:11:10', '2016-09-25 17:19:28', NULL),
(12, 'you', '$2y$10$6xK6uaFDPr77unDGq9Fmx.bispa88SLHe9AB7PuZcuWu4Z3oifbG.', '18xfactor@gmail.com', 'kill', 'bill', '818-555-5555', 1, '0', 'A1un.jpg', '1', 'user', 0, 0, '2016-09-28 05:02:20', 1, 'short term relationship', 'i dont care', 'I\'m new to the area,I\'m really busy with work,', 'Yes', '2', 'No', 'No', 'Very Important', '2 years', '', 'Very Important', 'What is that', 'Very Important', 'No', 'Light Auburn', 'Thin', 'Green Eye', '5.5', 'Flat Chest', '5', 'No', 'Yes', 'five, three, two time a week', 'triceps', 'Level 6- Bachelor\'s ', 'Spanish', 'Not Hispanic ', 'Jews', 'Protective Service', '5000-10000', 'Romance,', 'Greece,', 'Male', '32', '94533', 'Yes', 'Maybe', 'I\'m in a serious relationship', 'United States', 'United States', NULL, 'SIdAoubnrrEhYYb9hCmoKlWqXg919RtR3VtfeSj0', '', 38.2494, -122.04, '2016-09-28 12:02:20', '2016-09-28 12:02:20', 'Fairfield, California, US, 94533'),
(15, 'cbhavesh', '$2y$10$jzmXO1kIkYBbgwQ03hPxBeQBI4RvHHrBYTWYfkYR9f4APCfmo/iUG', 'kishor.addon@addonsolutions.com', 'bhavesh', 'chauhan', '963258741', 0, '0', 'Apple (1).jpg', '1', 'user', 0, 0, '2016-10-25 10:57:20', 1, 'long term relationship', 'Hello', 'I\'m new to the area,I don\'t like the bar,', 'Yes', '1', 'Yes', 'Yes', 'Very Important', '1 year', '', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Beeline Honey', 'Mohawk', 'Hazel Eye ', '5', 'Rectangular Shaped', '9', 'No', 'casual', 'regularly', 'hamstrings', 'Level 4- GED Certificate ', 'Hindi', 'Not Hispanic ', 'Muslims', 'Community and Social Service', '5000-10000', 'Action & Adventure,', 'Egypt,', 'Male', '32', 'TR1', 'Yes', 'Yes', 'In a relationship, but not working', 'surat', 'surat', 'ZNTdvrMgyEt6IdsoTyp2NQp4VKirhUcApJATITBITqftmgHkQXOlF9vvLmMM', 'DW5baSr2EgQuDgVrcRaz1w62hz1UvKCZYyXfvali', '', 50.2633, -5.0547, '2016-10-28 16:09:20', '2016-10-25 17:57:20', 'Truro, Cornwall, GB, TR1'),
(16, 'Mark', '$2y$10$s1TQ3jtFuHUU4ewyL3XjFeGtGYg.mchqtTKP6wdj45ozPlkJrGKEy', 'dogzara@hotmail.com', 'Mark', 'wash', '415878969', 1, '0', 'a11man.jpg', '0', 'user', 0, 0, '2016-10-25 16:18:13', 1, 'short term relationship', 'hello, my name is Mark', 'I\'m new to the area,I don\'t want to settle for second best,', 'Yes', '2', 'Yes', 'Yes', 'Very Important', '1 year', '', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Reddish Blonde', 'Celebrity', 'Green Eye', '6.3', 'Mature Muscle', '11', 'No', 'No', 'regularly', 'shoulders', 'Level 7- Masters ', 'English', 'Not Hispanic ', 'Christians', 'Office and Administrative Support', '5000-10000', 'Thriller,', 'Greece,', 'Male', '28', '94533', 'No', 'No', 'Single', 'United States', 'United States', '7Wj8ar9B84SiOEqtpXuebZB98gPCAbQ2NlVYdUuIZdwI9apWg3tP2wQt9yY1', '9c1fra3qMs5T80BpT7ZrOLjATXbTOcbm0FrLAXEp', '', 38.2494, -122.04, '2017-10-11 16:50:00', '2016-10-25 23:18:13', 'Fairfield, California, US, 94533'),
(17, 'kishor', '$2y$10$Ccg.UcFhe1cvhT7wqFxDiuXXXS5UxXxHgplz5UCWzU/JmiWu9TGEC', 'addon.kishor.parmar123@gmail.com', 'Kishor', 'Parmar', '9632587415', 1, '0', 'Apple (3).jpg', '0', 'user', 0, 0, '2016-10-26 08:54:01', 1, 'long term relationship', 'test', 'I\'m new to the area,I don\'t feel comfortable asking peopleout,', 'Yes', '1', 'Yes', 'Yes', 'Very Important', '1 year', '', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Light Golden Brown', 'Celebrity', 'Green Eye', '5', 'Flat Chest', '3', 'No', 'Yes', 'regularly', 'chest', 'Level 4- GED Certificate ', 'Spanish', 'Hispanic or Latino ', 'Christians', 'Farming, Fishing, and Forestry', 'Less than $5000', 'Romance,', 'Sermany,Greece,Sermany1,', 'Male', '29', '380009', 'Yes', 'Yes', 'Not sure', 'surat', 'surat', 'XuQCqhF24gnutGRaM5fn5xf8XJe7sMj7Y2fUeMWi3O42B0D3W26T2KHK2qn5', 'XogNXTXQwAkqZ0torwMp0N2icBy6KFj7tHhPoe5b', '', 23.0333, 72.6167, '2016-10-26 17:57:42', '2016-10-26 15:54:01', 'Ahmedabad, Gujarat, IN, 380009'),
(18, 'test', '$2y$10$FUDheVQTRtkvMwYTCOgOsu76VgqDQTGfGQ0rMi1UkR32eTRBKDUNC', 'qa.testaddon@gmail.com', 'test', 'test', '1234567890', 1, '0', 'Beautiful-stylish-girl-goggles-wear.jpg', '0', 'user', 0, 0, '2016-10-26 11:08:24', 1, 'long term relationship', 'test', 'I\'m new to the area,', 'Yes', '1', 'Yes', 'Yes', 'Very Important', '1 year', '', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Light Ash Blonde', 'Long', 'Hazel Eye ', '5.5', 'Muscular Body', '1', 'Yes', 'Yes', 'regularly', 'shoulders', 'Level 4- GED Certificate ', 'Spanish', 'Not Hispanic ', 'Muslims', 'Arts, Design, Entertainment, Sports, and Media', 'Less than $5000', 'Romance,', 'India,', 'Male', '21', '380009', 'Yes', 'Yes', 'In a relationship, but not working', 'test', 'test', 'IV0WWOt3tvU0ri7ZhyRfa7CSzzn9IhU1fjXcCmPWvaONXhdIVrq9BhGetKnE', 'rKsRdSEJGwQP4zRpPG7kCWy0Fnu8Oszf6X4FiQiO', '', 23.0333, 72.6167, '2016-11-07 16:25:41', '2016-10-26 18:08:24', 'Ahmedabad, Gujarat, IN, 380009'),
(19, 'moin', 'ae2b1fca515949e5d54fb22b8ed95575', 'addon.mehul.net@gmail.com', 'Moinbhai', 'Bloch', '98765432111', 1, '0', 'Flowers (4).jpg', '0', 'user', 0, 0, '2016-10-27 07:17:46', 1, 'long term relationship', 'test', 'I meet a lot of people, just not the right type,', 'Yes', '1', 'Yes', 'Yes', 'Very Important', '1 year', '', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Light Ash Blonde', 'Long', 'Hazel Eye ', '9', 'Definitive \'Hard Gainer\'', '1', 'Yes', 'Yes', 'regularly', 'chest', 'Level 4- GED Certificate ', 'Spanish', 'Hispanic or Latino ', 'Christians', 'Arts, Design, Entertainment, Sports, and Media', 'Less than $5000', 'Thriller,', 'Egypt,Greece,', 'Male', '21', '380009', 'Yes', 'Yes', 'In a relationship, but not working', 'surat', 'surat', 'nAoQeK9AxrqzQAfiFXWRU0NR97ldV9VghwOtPcJRAlsAMxUY2xHyjxaqJFgt', '1TK8M68wFJTu7IwTGZ6EDcwqswCn7QvUxVsdprpF', '', 23.0333, 72.6167, '2016-10-27 14:19:08', '2016-10-27 14:17:46', 'Ahmedabad, Gujarat, IN, 380009'),
(20, 'kp', '$2y$10$z/sfdVloW.j98JTQo3Yki.v3zRdvtGJS7qT4P1KV.I0rGQI6k/HZy', 'kishor.addon@addonsolutions.com', 'testing', 'testing', '9632587415', 1, '0', 'Music (14).jpg', '0', 'user', 0, 0, '2016-10-27 10:48:48', 1, 'long term relationship', 'test', 'I\'m new to the area,', 'Yes', '1', 'Yes', 'Yes', 'Very Important', '1 year', '', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Light Ash Blonde', 'Long', 'Hazel Eye ', '4', 'Definitive \'Hard Gainer\'', '1', 'Yes', 'Yes', 'regularly', 'chest', 'Level 4- GED Certificate ', 'Spanish', 'Hispanic or Latino ', 'Christians', 'Arts, Design, Entertainment, Sports, and Media', 'Less than $5000', 'Thriller,', 'Greece,', 'Male', '21', '380009', 'Yes', 'Yes', 'Divorced', 'surat', 'surat', '1sF1B5BXMrYGZwzlIDTLtpyH5sj03kJiunp1TWp3GTzZoQ1clW16Wk1HlxdB', 'JTDc9UQaMhxldlA2LRXWARvXxYzOHwUMMnzL6FbF', '', 23.0333, 72.6167, '2016-10-27 17:53:06', '2016-10-27 17:48:48', 'Ahmedabad, Gujarat, IN, 380009'),
(21, 'tom', '$2y$10$klEddrJPEmRXPVS4WCQ.8.4A1ul0/zXCNIkvri2UCDPb5QKkU2zHq', 'tom@live.com', 'tom', 'willam', '2223330000', 1, '0', 'a1tomm.jpg', '0', 'user', 0, 0, '2016-10-28 04:16:14', 1, 'long term relationship', 'TELL YOU LATER', 'I\'m new to the area,I don\'t feel comfortable asking peopleout,I\'m tired of people playing games,', 'Yes', '1', 'Yes', 'Yes', 'Very Important', '2 years', '', 'Very Important', 'Sometime', 'Very Important', 'No', 'Red Hot Cinnamon', 'Thin', 'Hazel Eye ', '6.3', 'Excellent Posture', '9', 'No', 'casual', 'five, three, two time a week', 'shoulders', 'Level 7- Masters ', 'German', 'Black', 'Christians', 'Healthcare Practitioners and Technical', '5000-10000', 'Thriller,', 'Greece,', 'Male', '36', '380009', 'No', 'Yes', 'Not sure', 'United States', 'United States', 'QpPSBNJy4oE2OvczSWAfwhvgY9ggoCZC9JbFpfFGCV03MjiDR431dG55UEGj', 'Re3AGIcSJzBk1ri4nzeqFwCxWetWgVfxr2ulZd8U', '', 23.0333, 72.6167, '2016-12-10 07:30:42', '2016-10-28 11:16:14', 'Ahmedabad, Gujarat, IN, 380009'),
(22, 'Tim', '$2y$10$AL44qGE08iAQm278PelzXO3F5s1XXNl1uQ8wA8lq1Pq.4sevsAA5C', 'seriousdate1@gmail.com', 'Tim', 'Jone', '1112223333', 1, '0', 'a1tim.jpg', '0', 'user', 0, 0, '2016-10-29 03:40:46', 1, 'short term relationship', 'tell later', 'I\'m really busy with work,I\'m a single parent,', 'Yes', '2', 'Yes', 'No', 'Very Important', '1 year', '', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Light Blonde', 'Short', 'Hazel Eye ', '6.1', 'Muscular Body', '2', 'No', 'No', 'once a week', 'walking', 'Level 6- Bachelor\'s ', 'Japanese', 'White', 'Christians', 'Production', '1-5000', 'Thriller,', 'Greece1,', 'Female', '31', '380009', 'No', 'Yes', 'Single', 'United States', 'United States', 'chEDEMaK9Z36X6ZUcHkuR22xqBh2fi4UiqK971kkK5FEdp1jVmOYWECTUHW8', 'zYcsxsPUZ7HuCMVgA2jv6HIQgjX14VDP1u9pEO9K', '', 23.0333, 72.6167, '2016-12-14 02:33:56', '2016-10-29 10:40:46', 'Ahmedabad, Gujarat, IN, 380009'),
(24, 'HELPP', '$2y$10$y0epGjaAn2XcOPLuSdUyf.g3Ge9Stga4tNYtvXyQiHWyLKcb97NLu', '1zonekidss@gmail.com', 'HELP', 'HELP', '555222000', 1, '0', '0.jpg', '0', 'user', 0, 0, '2016-11-22 07:42:39', 1, 'short term relationship', '44444444444444444444444444444', 'I\'m really busy with work,I\'m tired of people playing games,', 'Yes', '2', 'Yes', 'Yes', 'Very Important', '1 year', '', 'Very Important', 'What is that', 'Very Important', 'Yes', 'Light Golden Blonde', 'Short', 'Hazel Eye ', '5.6', 'Gains Muscle Easily', '2', 'Yes', 'Yes', 'regularly', 'jogging', 'Level 5- High School Diploma ', 'Japanese', 'African American', 'Buddhists', 'Architecture and Engineering', '5000-10000', 'Romance,', 'Sermany,', 'Female', '36', '380009', 'Yes', 'Yes', 'Not sure', 'United States', 'United States', 'Ps0e4dCKqtWKtoJdQFT2MRtoo4CTtcs1WcVjApzRrLR943z6qBciW1iXxNll', 'Q2xu9v8rxRmhrZYN3ztZWWe3ZNhRDlsNdsG3aE5i', '', 23.0333, 72.6167, '2017-03-01 02:31:27', '2016-11-22 14:42:39', 'Ahmedabad, Gujarat, IN, 380009'),
(25, 'Va', '$2y$10$jl3fKHTFKxvELtNk8lgc/.1Jw7oxM3U0.bFi0Dx8ebC5aVSeUwYFu', 'vanessatovar@gmail.com', 'Va', 'To', '111222333', 1, '0', '0003 may warm winds of heaven.gif', '0', 'user', 0, 0, '2016-11-30 19:06:41', 1, 'long term relationship', 'lllllllllllllllllllllllllllll', 'I\'m new to the area,I don\'t want to settle for second best,', 'Yes', '2', 'Yes', 'Yes', 'Very Important', '1 year', '', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Light Ash Blonde', 'Short', 'Green Eye', '5.6', 'Muscular Body', '2', 'Yes', 'Yes', 'once a week', 'jogging', 'Level 4- GED Certificate ', 'Japanese', 'Native Hawaiian or Other Pacific Islander', 'Buddhists', 'Farming, Fishing, and Forestry', '50000-100000', 'Thriller,', 'Greece,', 'Female', '36', '32923', 'Yes', 'No', 'In a relationship, but not working', 'United States', 'United States', 'cvQkJlepXzFJhsVwr6YqcbFv5DHqQzeP5zleSn5wbowQjMmQbrpgGsE5w7SF', 'iHbC5XMhHAgDaQOOdQfwWdYCCathfdl02NigsJY8', '', 23.0333, 72.6167, '2017-03-23 02:06:16', '2016-12-01 02:06:41', 'Ahmedabad, Gujarat, IN, 380009'),
(27, 'arp6902', '$2y$10$wG5NXaLpIKOJDG9ENQwOcO/1UhKgDXBM0YmIaTFCRrOHACWcn1DNO', 'albert_690@hotmail.com', 'Alberto', 'Romero', '4074864759', 1, '0', 'arp6902.jpg', '2', 'user', 0, 0, '2016-12-03 19:06:27', 1, 'casual dating', 'I freelance ', 'I\'m new to the area,', 'No', '2', 'Yes', 'No', 'Somewhat Important', 'longer', '', 'Very Important', 'Very Important', 'Important', 'No', 'Expresso', 'Thick', 'Brown', '5.5', 'Excellent Posture', '2', 'No', 'Yes', 'regularly', 'gym', 'Level 4- GED Certificate ', 'English', 'Not Hispanic ', 'Christians', 'Computer and Mathematical', '300000-1000000', 'Romance,Thriller,Drama,', 'Egypt,Sermany,', 'Male', '34', '380009', 'No', 'No', 'Sex Only', 'asdfads', 'asdf', 'NXuAjmQOmjpia3BjgUVabc8Av9OsPL4aH9rBHO8ZzhxtFE0osbK7PIX9Csyu', 'x8BXSmpgUSkOCw96AMnyHHc8dbXPpCb57W9zj0bG', '', 23.0333, 72.6167, '2016-12-18 03:50:21', '2016-12-04 02:06:27', 'Ahmedabad, Gujarat, IN, 380009'),
(30, 'wam1', '$2y$10$M6uFHDi/cTKTcIBfocQF6egwH8i.5Ea2jtm1ohZrZRG2c4JBuEx96', 'zencleaningsolutions@gmail.com', 'Betty', 'washingtons', '5102225555', 1, '0', 'wam1.jpeg', '0', 'user', 0, 0, '2016-12-11 17:14:51', 1, 'long term relationship', 'hello world', 'I don\'t feel comfortable asking peopleout,Safety concerns me,', 'Yes', '1', 'Yes', 'No', 'Very Important', '2 years', '', 'Very Important', 'Sometime', 'Very Important', 'No', 'Light Brown', 'Celebrity', 'Hazel Eye ', '5.6', 'Delicate Built Body', '2', 'No', 'casual', 'regularly', 'swimming', 'Level 7- Masters ', 'English', 'White', 'Christians', 'Management', 'N/A', 'Thriller,', 'Greece,', 'Female', '22', '94533', 'No', 'No', 'Single', 'Washington', 'Washington', 'RGzFp6iQis957GtfTQEpM2p3cY5lY4AiixpreSRsjidiTtv0WRu0X0ble8Ni', '6T04LZs9kCKPgLSTsCOgDlKDnRDwSaCO8iOqHKsP', '', 38.2494, -122.04, '2016-12-12 00:23:28', '2016-12-12 00:14:51', 'Fairfield, California, US, 94533'),
(43, 'Mary', '$2y$10$PHU4maKdmOB4YDiy9bhDS.wMg6gMtXlYnr80PUAPG4farhyRZowGS', '1theyears@gmail.com', 'Mary', 'Mark', '4158887777', 1, '0', 'Mary.gif', '0', 'user', 0, 0, '2016-12-16 05:38:05', 1, 'long term relationship', 'Hello', 'I\'m new to the area,I don\'t want to settle for second best,', '1', NULL, NULL, 'No', 'Very Important', '3-6 years', '', 'Somewhat Important', 'Very Important', 'Very Important', 'No', 'Light Cool Brown', 'Vintage', 'Blue', '5.7', 'Flat Chest', '10', 'No', 'Sometime', 'once a week', 'shoulders', 'Level 6- Bachelor\'s ', 'English', 'White', 'Christians', 'Food Preparation and Serving Related', '5000-10000', 'Thriller,Drama,', 'India,', 'Female', '21', '94533', NULL, 'Yes', 'Single', 'Washington', 'United States', 'cmBgLPNFQuEUjxBIg3vhm805GY7TjwWL71TAOUQFO4RjCNxJtClupEBJD58R', 'Ed2g5KQcJgDKcwakPhi2RudSk6mBFRJEtT77icVW', '', 38.2494, -122.04, '2017-10-31 09:03:32', '2016-12-16 12:38:05', 'Fairfield, California, US, 94533'),
(44, 'arp690', '$2y$10$FLkFl1N52yonXfk4Qy0kxe2sIgm4wcyrGxD5QUWrNBuifFvg/I1UC', 'arp690@gmail.com', 'Alberto', 'Romero', '4074864759', 1, '0', 'arp690.jpeg', '0', 'user', 0, 0, '2016-12-18 02:43:25', 1, 'short term relationship', 'dfafsdf asdfasdf ', 'I\'m new to the area,', 'No', NULL, NULL, 'Yes', 'Important', '1 year', '', 'Somewhat Important', 'What is that', 'Very Important', 'No', 'Light Auburn', 'Mohawk', 'Green Eye', '5.8', 'Excellent Posture', '10', 'Sometime', 'Sometime', 'five, three, two time a week', 'gym', 'Level 8- Doctorate  ', 'Japanese', 'African American', 'Judaism', 'Sales and Related', '50000-100000', 'Comedy,', 'Egypt,', 'Male', '36', '32923', NULL, 'Maybe', 'Separated', 'Venezuela', 'Venezuela', 'iumGAB1R93CGWLhoMJcf3js9DSalfNHDhES87uQ8bpWUpsLXjtBXTvEIWpfj', '5wrhOlfAa2IH8Vi2wjbVQ0pc5hyskmx49pFIdcgI', '', 28.3861, -80.742, '2017-03-23 02:08:14', '2016-12-18 09:43:25', 'Cocoa, Florida, US, 32923'),
(45, 'Test2', '$2y$10$FX4C.LOeuunNxQ26O9ZLN.z/abeBkZkajOhLOA9YFzo6FY7kA.aWa', 'curjit@yahoo.com', 'test2', 'Name123', '12341234', 0, '0', 'Test2.jpeg', '0', 'user', 0, 0, '2016-12-27 08:43:40', 1, 'long term relationship', 'Test Description', 'I\'m new to the area,', 'No', NULL, NULL, 'No', 'Very Important', '2 years', '', 'Very Important', 'Sometime', 'Very Important', 'No', 'Light Ash Blonde', 'Long', 'Black', '5.9', 'Hard Body', '8', 'No', 'No', 'regularly', 'triceps', 'Level 7- Masters ', 'English', 'Asian', 'Christians', 'Healthcare Support', '100000-300000', 'Action & Adventure,Comedy,Romance,', 'Beach,Egypt,', 'Male', '28', '382421', NULL, 'Yes', 'Single', 'Area2', 'Area1', NULL, 'F3qrmhflox63G6rJKPsSCV8W4cXCJxv4LTAt6FUe', '', 23.1667, 72.5833, '2016-12-27 15:43:40', '2016-12-27 15:43:40', 'Adalaj, Gujarat, IN, 382421'),
(46, 'john', '$2y$10$nDzFe/PCncoWO.06DwUXQu8NSt5TXFePOWK4.r4lRj0uCLU5HiRGq', 'ettessummi-3963@yopmail.com', 'Lorem', 'Ipsum', '1233456788951225544', 0, '0', 'john.jpeg', '0', 'user', 0, 0, '2017-01-02 19:37:50', 1, 'long term relationship', 'Lorem Ipsum', 'I don\'t feel comfortable asking peopleout,Safety concerns me,', '1', NULL, NULL, 'Yes', 'Important', '2 years', '', 'Somewhat Important', 'Sometime', 'Important', 'Yes', 'Beeline Honey', 'Shag', 'Brown', '4.3', 'Fragile', '3', 'Sometime', 'Sometime', 'five, three, two time a week', 'running', 'Level 6- Bachelor\'s ', 'English', 'Hispanic or Latino ', 'Other', 'Computer and Mathematical', 'Less than $5000', 'Romance,Science Fiction,', 'Beach,', 'Male', '36', '1000', NULL, 'No', 'Married', 'World', 'World', NULL, '9qutuW1DwTUI1rwOabGCbJnVMZPSe0ODSqhzTUfk', '', 23.729, 90.4112, '2017-01-03 02:37:50', '2017-01-03 02:37:50', 'Dhaka, Dhaka Division, BD, 1000'),
(47, 'johncarno', '$2y$10$oXaB//iWYJdGO4fYj3TkxeKgHG0Ok7D2HeCuSNu26T6TGqB92eMJi', 'zain.indigoicon@gmail.com', 'John', 'Carno', '+97131414141', 0, '0', 'johncarno.gif', '0', 'user', 0, 0, '2017-01-05 07:51:35', 1, 'short term relationship', 'I am sfftware engineer', 'I don\'t want to settle for second best,I don\'t feel comfortable asking peopleout,I\'m a single parent,', 'No', NULL, NULL, 'Yes', 'Very Important', '2 years', '', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Red Hot Cinnamon', 'Thick', 'Brown', '5.9', 'Gains Muscle Easily', '10', 'No', 'Always', 'once a week', 'swimming', 'Level 7- Masters ', 'English', 'Hispanic or Latino ', 'Muslims', 'Business and Financial Operations', 'Less than $5000', 'Romance,', 'Egypt,Sermany,', 'Male', '30', '12311', NULL, 'No', 'In a relationship, but not working', 'Juman jee', 'lalukahit', NULL, 'Njq2rbct98j25X4ruH6ctzOAT4a5ezzFEYsfFCuN', '', 24.9056, 67.0822, '2017-01-05 14:51:35', '2017-01-05 14:51:35', 'Karachi, Sindh, PK, 12311'),
(48, 'myapp', '$2y$10$GE/reTVcLOKRm91ho.WjvedeyUopjLJg.Qpi1koRd3UF1LhiiFpIq', 'kanwar.seo@gmail.com', 'app', 'john', '9876542345', 1, '0', 'myapp.jpeg', '0', 'user', 0, 0, '2017-01-10 08:09:56', 1, 'long term relationship', 'iudfbhidubuibu', 'I\'m new to the area,', 'No', NULL, NULL, 'No', 'Very Important', '1 year', '', 'Very Important', 'Very Important', 'Important', 'No', 'Light Blonde', 'Short', 'Green Eye', '6', 'Mature Muscle', '3', 'No', 'No', 'once a week', 'none', 'Level 6- Bachelor\'s ', 'English', 'American Indian ', 'Other', 'Business and Financial Operations', '5000-10000', 'Action & Adventure,Comedy,Romance,', 'Beach,Egypt,Greece,New York,Greece1,', 'Male', '27', '141001', NULL, 'Maybe', 'In an open relationship', 'india', 'india', NULL, 'HSTsZtkOgZLda7wwcudN5z4HtUvSJknoajDGV505', '', 30.9, 75.85, '2017-01-10 15:09:56', '2017-01-10 15:09:56', 'Ludhiana, Punjab, IN, 141001'),
(49, 'krish0405', '$2y$10$xlpWK5tJ0Rn7mu.xgwhk3ussWVhp95Kf0HgTdeu.hIQXeCZwIIGo2', 'a.krishan1801@gmail.com', 'krish', 'k', '8826800334', 1, '0', 'krish0405.jpeg', '0', 'user', 0, 0, '2017-01-17 11:19:38', 1, 'long term relationship', 'na', 'I\'m new to the area,I don\'t feel comfortable asking peopleout,', 'No', NULL, NULL, 'Yes', 'Very Important', '1 year', '', 'Very Important', 'Sometime', 'Important', 'Yes', 'Light Ash Blonde', 'Long', 'Hazel Eye ', '4.2', 'Definitive \'Hard Gainer\'', '2', 'No', 'No', 'regularly', 'hamstrings', 'Level 4- GED Certificate ', 'English', 'Asian', 'Hindus', 'Arts, Design, Entertainment, Sports, and Media', '1-5000', 'Action & Adventure,Comedy,Romance,', 'Beach,Egypt,', 'Male', '27', '110035', NULL, 'Yes', 'Single', 'india', 'india', '7ZkLKCARnVurulwpyjb2UmfEWgciXFo4frsjarbSsNg2CtYxsz0enfO7asqL', 'ist30kQTtmPifI4m0tfoIMw0B4DyigVbxagKYeyl', '', 28.6833, 77.15, '2017-01-29 11:21:47', '2017-01-17 18:19:38', 'Shakurpur, Delhi, IN, 110035'),
(50, 'happy', '$2y$10$5MEQvE9dK.J22d/HzAl46eX.1bLV899gpvOUQuZ8m0Mx79Xx2qM52', 'krishan1801@gmail.com', 'happy', 'singh', '8826800334', 1, '0', 'happy.jpeg', '0', 'user', 0, 0, '2017-01-27 10:13:53', 1, 'long term relationship', 'na', 'I\'m new to the area,I don\'t want to settle for second best,', '1', NULL, NULL, 'Yes', 'Very Important', '1 year', '', 'Very Important', 'Sometime', 'Very Important', 'Yes', 'Light Ash Blonde', 'Long', 'Hazel Eye ', '4.7', 'Thin', '5', 'No', 'casual', 'once a week', 'running', 'Level 6- Bachelor\'s ', 'English', 'Asian', 'Christians', 'Personal Care and Service', '1-5000', 'Action & Adventure,Comedy,', 'Beach,Egypt,New York,Beach1,India1,', 'Female', '27', '110032', NULL, 'Yes', 'Not sure', 'india', 'india', NULL, 'OMtLUDHNCsBGf7qcdhC8LBAW3l8IcjMrBxb1yH8O', '', 28.6667, 77.3167, '2017-01-27 17:13:53', '2017-01-27 17:13:53', 'Shahdara, Delhi, IN, 110032'),
(53, 'hugg', '$2y$10$fRaIG0qWJERaLKeY6b5t7O4dCkvax8s5HVWVxxg14LblK2erKMLqu', 'hugg@gmail.com', 'jump', '', NULL, 0, '0', 'hugg.jpeg', '0', '', 0, 0, '2017-02-14 06:41:42', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '7193', NULL, NULL, NULL, NULL, NULL, NULL, 'Wz5thmYk0wIpp3RCaeSeqpvIpiHL0OyS3PaV93tX', '', -41, 174, '2017-02-14 13:41:42', '2017-02-14 13:41:42', ', , NZ, 7193'),
(54, 'q', '$2y$10$ugng1uYdZzAFkqvB7SluA.HmJs5uOtvPNx985z9wwFUBw55kNPz4y', 'tasdasdss@gmail.com', 'Tejsd', '', NULL, 1, '0', 'q.jpeg', '0', '', 0, 0, '2017-02-14 16:28:22', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '7193', NULL, NULL, NULL, NULL, NULL, NULL, 'ca403AY0ln4xyMJHU3WdZtnbxdm1CfQ16Z9rd2oI', '', -41, 174, '2017-02-14 23:28:22', '2017-02-14 23:28:22', ', , NZ, 7193'),
(55, 'hugg1', '$2y$10$V26jhSdrL./LGAtuXYl6nevCb8sm3BBMUOAxWj9s.kWVVUNEJbbHq', 'hugs@gmail.com', 'hugg', '', NULL, 0, '0', 'hugg1.jpeg', '0', '', 0, 0, '2017-02-14 17:28:52', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, 'P5RLFfupFSVv73hpNuDYrPXK84yicvRq34vBRAuqh44Y1FHKl51VAt6EcbZ2', '2PkZV3Nkm0aQNrboUziCWlfJPEVI7EzPHUobj9sP', '', 38.2494, -122.04, '2017-02-15 01:45:27', '2017-02-15 00:28:52', 'Fairfield, California, US, 94533'),
(56, 'happy24', '$2y$10$x.bgWiUcupXLaXwSkpTWQOjditGiHsTF.v3LG1AiD2cigNUJ2zw/O', 'happ@gmail.com', 'hugs', '', NULL, 0, '0', 'happy24.jpeg', '0', '', 0, 0, '2017-02-14 18:47:16', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, NULL, 'qMaeVVHvgstB3PQIyrev19gvHu91JWojRdeotof2', '', 38.2494, -122.04, '2017-02-15 01:47:16', '2017-02-15 01:47:16', 'Fairfield, California, US, 94533'),
(57, 'boyboy11', '$2y$10$67vVgSaJRiPleSnmGJxTQOSWn1TQJdWAb8q/mC6mKmYLkbnRAqDIm', 'boyboy@gmail.com', 'girl', '', NULL, 0, '0', 'boyboy11.jpeg', '0', '', 0, 0, '2017-02-15 03:55:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, '3ymIFBBYyIRs4sWyRtXIjdnYXR1z5vZkAoAPX4toQfUXkttKEoFOvuy0tBdL', 'kR5I10OPYyahhaiRVoa66wbkT8kSV8o5ZoC9vdxc', '', 38.2494, -122.04, '2017-02-15 12:41:48', '2017-02-15 10:55:44', 'Fairfield, California, US, 94533'),
(58, 'carpet', '$2y$10$T1g1nnYBPJq9KN/981og1OJXMF2SzP2XMhO99FHb0V6tcDfzFWp7q', 'play@gmail.com', 'play', '', NULL, 0, '0', 'carpet.jpeg', '0', '', 0, 0, '2017-02-15 05:52:42', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, NULL, 'Q8yRM56aybC26Md1cDVuHttxdCV1ihUjPC3tD19N', '', 38.2494, -122.04, '2017-02-15 12:52:42', '2017-02-15 12:52:42', 'Fairfield, California, US, 94533'),
(59, 'top1', '$2y$10$cqmoTLjrlcdrTW9fHwILjeQrcQv12kUywpOAZnFk.OWN/VS6MuKHW', 'desk@gmail.com', 'desk', '', NULL, 0, '0', 'top1.jpeg', '0', '', 0, 0, '2017-02-15 18:22:59', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, NULL, '0Pou2up2X4J6CqMFPVK81tGCBTsMx8WDmXQ5Qdug', '', 38.2494, -122.04, '2017-02-16 01:22:59', '2017-02-16 01:22:59', 'Fairfield, California, US, 94533'),
(60, 'teja', '$2y$10$7poSbHCrKq3a3ENhZiwv0uaF0RhsjutUBixXUqi1IJUwB1KnqS9o6', 'tejas@gmail.com', 'tej', '', NULL, 0, '0', 'teja.jpeg', '0', '', 0, 0, '2017-02-16 14:28:11', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '7193', NULL, NULL, NULL, NULL, NULL, NULL, 'oJ4RSYiTnysQS7VhkfvUzDZZmPuBNVYhf792qrQS', '', -41, 174, '2017-02-16 21:28:11', '2017-02-16 21:28:11', ', , NZ, 7193'),
(61, 'tejavira', '$2y$10$PalWIBhrheTrH/9MMzxs1Od5.jcdw/zDc0LsdaLksZ/XH/p0nI2ie', 'pppp@gmail.com', 'tejave', '', NULL, 1, '0', 'tejavira.jpeg', '0', '', 0, 0, '2017-02-16 14:33:20', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '7193', NULL, NULL, NULL, NULL, NULL, 'hsPlfSXX3rFwJIsdas8dpcJWb3a04huF1Q2ahrzMxPWzTDXKWlKGqPWk718j', 'Ty77RN1uSW56Re4zDs6DaBdZ6jQRYCGUZZH9Uin7', '', -41, 174, '2017-02-17 00:40:38', '2017-02-16 21:33:20', ', , NZ, 7193'),
(62, 'fsadasdasd', '$2y$10$166XdrJ4pipeu524lpv7kOfARDnHUtR2bxrtKYWms4Ay90sDs96hG', 'te@gmail.com', 'jhfgjhf', '', NULL, 0, '0', 'fsadasdasd.jpeg', '0', '', 0, 0, '2017-02-16 14:50:47', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '7193', NULL, NULL, NULL, NULL, NULL, NULL, 'b0PvVfXwwL9Sjxcye0Zc5tAaiGRJU9sVtvaOdSGw', '', -41, 174, '2017-02-16 21:50:47', '2017-02-16 21:50:47', ', , NZ, 7193'),
(63, 'pnone', '$2y$10$vnbfAB1489sB5YeFgv1Mo.ZrVI4mv6CCdKfcf5M9m/3UqVsxyal5i', 'phone@gmail.com', 'phone', '', NULL, 0, '0', 'pnone.jpeg', '0', '', 0, 0, '2017-02-16 15:52:08', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '7193', NULL, NULL, NULL, NULL, NULL, 'jTnK9UK81oCuibjQyng5mBzlNuqW5r1kCJohTys77Haiu0gTftxZ1lthuTe1', 'co0CiC9KwbsgRZIfODRchJZNovy47urSgNeTaPRQ', '', -41, 174, '2017-02-16 23:17:15', '2017-02-16 22:52:08', ', , NZ, 7193'),
(64, 'peter1', '$2y$10$OIVbinuqN2iLz4IUryHMXewfh6jS7rKZ4mGyL/iOYujYGOUy4yh2e', 'peter25@gmail.com', 'peter', '', NULL, 0, '0', 'peter1.jpeg', '0', '', 0, 0, '2017-02-16 16:19:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '7193', NULL, NULL, NULL, NULL, NULL, 'vFWtuxG2XYf1Ep0MvFj367FYcrW38XJ6kybSsopeUHeg56XaBkloRgyDm2eY', 'bXJyRyrPr41UTMZuiKjkoycFmTFhR2mBQRuvP95j', '', -41, 174, '2017-02-17 00:44:23', '2017-02-16 23:19:13', ', , NZ, 7193'),
(65, 'chigs', '$2y$10$RliiF9PTvU2SINj2ThMUYOnOnHPfNp0tdsxLwFIoAik/d3GgY0P/W', 'chiraggoti.ibl@gmail.com', 'chirag', '', NULL, 0, '0', 'chigs.jpeg', '0', '', 0, 0, '2017-02-16 17:42:01', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '7193', NULL, NULL, NULL, NULL, NULL, 'P1LtxQPVyfw9uuzJo12bFdD3YpetcdClce0bMISOhejjuTl5FD4vZJzZeoJZ', 'mToNrAWUqj1cgdZfmBtZIRejdaQy6PNdIBPwIS5c', '', -41, 174, '2017-02-17 01:04:41', '2017-02-17 00:42:01', ', , NZ, 7193'),
(66, 'cat445', '$2y$10$w3ZrdDFidTnmZW6JmSxste1IMAqz898JC0fBW3QBqI4u5rlgsmoP2', 'cat789@gmail.com', 'cat12', '', NULL, 0, '0', 'cat445.jpeg', '0', '', 0, 0, '2017-02-16 17:54:48', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, 'rxxVfLRK2qFcVgznncwjSbtiWdUl5f235oonkcD4wtLN5qNAq4doG66adjmT', 'SCQOVWoCbOzYvd88uUlYek3kBZIfrqLXlr8FQkSB', '', 38.2494, -122.04, '2017-02-17 01:03:11', '2017-02-17 00:54:48', 'Fairfield, California, US, 94533'),
(67, 'testywebpage', '$2y$10$AWYUDyhtwScxYQf45tPRT.aboav03FXbX3eWva3D8AEqKDUYLyQ3G', 'testywebpage@gmail.com', 'test', '', NULL, 0, '0', 'testywebpage.jpeg', '0', '', 0, 0, '2017-02-16 18:07:57', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '394105', NULL, NULL, NULL, NULL, NULL, NULL, 'SypJVdcxPJTtAZEObnjPp8pQFv7K5K5J87YtO6R1', '', 21.2333, 72.8667, '2017-02-17 01:07:57', '2017-02-17 01:07:57', 'Utran, Gujarat, IN, 394105'),
(68, 'webpage', '$2y$10$urI3m834yj6AVHiMqdt5ues2g3E2b781rvsR2sFsME5BTGkJJ/U7m', 'webpage@gmail.com', 'test', '', NULL, 0, '0', 'webpage.jpeg', '0', '', 0, 0, '2017-02-16 18:10:10', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '394105', NULL, NULL, NULL, NULL, NULL, 'VqzeLOk5Lm2Iizpu3fEILhLnSqVDLqgwYvxgtQC0NUJot3pXzmoR7z88FotP', 'tBYKPLuZhwQmUXd356Eg0BbjBPgGbFl2r3K8Q1Xf', '', 21.2333, 72.8667, '2017-02-17 01:52:06', '2017-02-17 01:10:10', 'Utran, Gujarat, IN, 394105'),
(69, 'dog1', '$2y$10$MFf9ftj0jUE8zZ6Jbw7xTeB38Ecjk6fTyLadKWXQnUJcXQsvaNRBe', 'dog56@gmail.com', 'dog', '', NULL, 0, '0', 'dog1.jpeg', '0', '', 0, 0, '2017-02-16 18:14:09', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, 'y0aMlH3QlGLSmH3YWSFgjF3P4x8TfwHWdueUUuvg1Iba5tVlDWsV5EtBQsVC', 'dQcSZH2rMHOfRBmWHmwW3KzMVNKGTfY90KihezrG', '', 38.2494, -122.04, '2017-02-17 02:54:43', '2017-02-17 01:14:09', 'Fairfield, California, US, 94533'),
(70, 'caru', '$2y$10$KUEmEN0NOBIDohEtqDf42OzRHYV4QUDaGrWI2j0I9psYOMPFER536', 'tejasamandaliya@gmail.com', 'carc', '', NULL, 1, '0', 'caru.jpeg', '0', '', 0, 0, '2017-02-16 18:55:07', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '394105', NULL, NULL, NULL, NULL, NULL, NULL, 'RB0HDcQN4MQzgSnfej1s7NZ4IjMnVsWYloSnBMG0', '', 21.2333, 72.8667, '2017-02-17 01:55:07', '2017-02-17 01:55:07', 'Utran, Gujarat, IN, 394105'),
(71, 'KELLY12', '$2y$10$wQs5YD1jE0FSCprODCczBehonlkOEqOqqq7ZATjkAa3fIfgiTWZFW', 'zenmoveit@gmail.com', 'kelly1', '', NULL, 1, '0', 'KELLY12.jpeg', '0', '', 0, 0, '2017-02-16 20:00:33', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, NULL, '3bcw41IsCYu99RBDCJzFvI7iff8CO69ZDcV0ntH0', '', 38.2494, -122.04, '2017-02-17 03:00:33', '2017-02-17 03:00:33', 'Fairfield, California, US, 94533'),
(72, 'Account1', '$2y$10$/nOo9gmmO3t9vSF3d5E0Tuw0/fkeT1LjBGwSAw.tQGU6LqtNbI4XG', 'account@gmail.com', 'account', '', NULL, 0, '0', 'Account1.jpeg', '0', '', 0, 0, '2017-02-17 05:03:45', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, 'j3ge29vHMJGMtT9dQaNAP2hfoFJeYz1lrQRmqWCN2eyp5n05FTYx42t64hdP', 'GGaMApT9JktYuhJRz4gKSrRDU2119lznZdtPDJ30', '', 38.2494, -122.04, '2017-02-17 12:05:40', '2017-02-17 12:03:45', 'Fairfield, California, US, 94533'),
(73, 'LOL4', '$2y$10$qrkJqEb/ZdyTWPgZG7UfZe7NuICBncBe30UJLkWEV/Bx7RWKPGcFO', 'LOL5@GMAIL.COM', 'LOL', '', NULL, 0, '0', 'LOL4.jpeg', '0', '', 0, 0, '2017-02-18 09:16:29', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, '2TtVCPsQLDX121T2KuFVRz0TRIp8pNoXML2qCTUKGmEpp6TLEEEnxeKlT1ZK', '33IlV8ydtGA1w2UUghnTS2mgcr1Bun3sthqr79dx', '', 38.2494, -122.04, '2017-02-18 16:20:23', '2017-02-18 16:16:29', 'Fairfield, California, US, 94533'),
(74, 'wdiana', '$2y$10$/uHfPMOIuL8UeuAePQ1x1um7el.OzMdVH4PdRRf2LAOTXwlwidGB6', 'wdiana456@gmail.com', 'daina ', '', NULL, 1, '0', 'wdiana.jpeg', '0', '', 0, 0, '2017-02-28 02:22:36', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '60607', NULL, NULL, NULL, NULL, NULL, 'eqEPPy4KSzMgn75NNpfwtYukSVj52g4yK3ulzwfKTgluStrbNGMHsiSTbgbP', '3o9xo5MYBmn1UmcsJjsCYimET2cU60xlqIyklucf', '', 41.8745, -87.6503, '2017-02-28 10:25:07', '2017-02-28 09:22:36', 'Chicago, Illinois, US, 60607'),
(75, 'jhenrik', '$2y$10$mUan.MXdWcbPS9Pc095eb.0bCa6pJk32j.lhOB9nxqZp.091wYaIO', 'ceo.appexos@gmail.com', 'Jason Henrikson', '', NULL, 1, '0', 'jhenrik.jpeg', '0', '', 0, 0, '2017-03-23 02:36:29', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '60326', NULL, NULL, NULL, NULL, NULL, 'jCXhZy8TtzA36ClVTssDNNApLNgaGhg8d1gZfSYSefEyzRkCZK9EoDBeAc0C', 'qOCythxKZXLo28CVvKErjUxkTc4asiOt4buoJzB8', '', 50.1019, 8.6342, '2017-03-23 10:11:58', '2017-03-23 09:36:29', 'Frankfurt Am Main, Hessen, DE, 60326'),
(76, 'Missy1', '$2y$10$x79KCO6G7bZasOSLPXKRiOhDnVqSPaczGFLo0qkxNRTHt2Y9chchK', 'kidszonekids434@gmail.com', 'Missy Davis', '', NULL, 1, '0', 'Missy1.gif', '0', '', 0, 0, '2017-03-23 04:30:21', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, NULL, 'YqjSJ9CTXlstdhKfVl37PO6ayPkQsM2kL1eMPDJN', '', 38.2494, -122.04, '2017-03-23 11:30:21', '2017-03-23 11:30:21', 'Fairfield, California, US, 94533'),
(77, 'guru_test ', '$2y$10$02wDCqYnXN1ahEttqSsPIuf9/qXaJhXwGuoVJirUFdJdNamGYefQ6', 'suryajeet.loginworks@gmail.com', 'Test ', '', NULL, 1, '0', 'guru_test .jpeg', '0', '', 0, 0, '2017-03-28 02:31:16', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '201301', NULL, NULL, NULL, NULL, NULL, NULL, '4DbNk27wg7WVAUaRbsibagQXsUcVuZtk8buFm3RH', '', 28.57, 77.32, '2017-03-28 09:31:16', '2017-03-28 09:31:16', 'Noida, Uttar Pradesh, IN, 201301'),
(78, 'ab    cd', '$2y$10$UYVzcbeb7R9CcLr2qlMv1e4LM9cnaMHCPRbk5UQrBeUOQWKroMHqC', 'tushar.goyal@loginworks.com', '@', '', NULL, 1, '0', 'ab    cd.', '0', '', 0, 0, '2017-03-29 11:09:43', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '431703', NULL, NULL, NULL, NULL, NULL, 'yBTH5bkYozHzx1Qfw4MOBprLcGdVgiFDKu5Sukm2Mt8ed18Yr6mzW9LWjcAt', 'Vn9pKfEHxaXTMDTgecWlOpHCeIDVuZxdcczcFIxV', '', 20, 77, '2017-03-29 20:03:46', '2017-03-29 18:09:43', ', , IN, 431703'),
(79, '       shsdh', '$2y$10$eICPz7kV9HkKMssuREh6EuTGRxZ4a0RvFKi.4a/7uE0cQz6gz.rXO', 'sh@gamil.com', '      dfgh', '', NULL, 0, '0', '       shsdh.jpeg', '1', '', 0, 0, '2017-03-29 13:14:21', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '431703', NULL, NULL, NULL, NULL, NULL, 'tYTrO9D7yppumY6mAeheg8v2RPsQcS6GGyCqtgtGFPkbjQ3MOf8gpdW9vAsx', 'zvgBF7OuKYFRtssdGEAkrKmmLdhlbgfr16T7TeEF', '', 20, 77, '2017-03-29 20:25:01', '2017-03-29 20:14:21', ', , IN, 431703'),
(80, 'amit', '$2y$10$XeWDJRen.Mq5WKMO39UVvetyuYiyyKLbNqPxYLc4KVLioY6YCPrxW', 'amit@loginworks.com', 'Amit', '', NULL, 0, '0', 'amit.jpeg', '0', '', 0, 0, '2017-03-29 13:17:34', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '431703', NULL, NULL, NULL, NULL, NULL, 'BROIw1bcDXkcJ3PYh3zuuVQjN4PECXJf7o3IuQqmLatyqJm93x7X87fKuhkf', 'GjWzfs6WjuEeCW1umKsaXYsDu7pZQZgYHXF5bOsu', '', 20, 77, '2017-03-29 20:22:07', '2017-03-29 20:17:34', ', , IN, 431703'),
(81, 'abcd', '$2y$10$t9EFOpNJqDU0GnPwnxWK2.sH4Qh4zBlaSLPoQvyb2.yV3FaC3t8fm', 'amy@gmail.com', 'a', '', NULL, 0, '0', 'abcd.jpeg', '0', '', 0, 0, '2017-03-29 13:27:08', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '431703', NULL, NULL, NULL, NULL, NULL, NULL, 'n6wF1PXVUymJHHh6nbn9Woz6NWPk5ZJnvzy6fQi5', '', 20, 77, '2017-03-29 20:27:08', '2017-03-29 20:27:08', ', , IN, 431703'),
(82, 'yuvy', '$2y$10$jra2mxIaoC907EHsKJaWtuzUGehnBIc2hKbziLVbN8YHRcwV4w7B2', 'yuvraj.singh591@gmail.com', 'ghghh', '', NULL, 1, '0', 'yuvy.jpeg', '1', '', 0, 0, '2017-04-04 09:25:49', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '201301', NULL, NULL, NULL, NULL, NULL, NULL, 'SRbG1MWCzsEMBx5xQ8futSqsSfrn0wkYTjKpdDGZ', '', 28.57, 77.32, '2017-04-04 16:25:49', '2017-04-04 16:25:49', 'Noida, Uttar Pradesh, IN, 201301'),
(83, 'glorialove1231', '$2y$10$.V.C0S87JV2Ww4d8KW0LJ.QVa96hP0JWR9tzvV7Kt5iEi4LNBSE9C', 'glorialove1231@gmail.com', 'gloria love ', '', NULL, 1, '0', 'glorialove1231.jpeg', '0', '', 0, 0, '2017-04-04 13:16:30', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '07047', NULL, NULL, NULL, NULL, NULL, NULL, 'XDR0fB4l8pKynDIbi6wBnypEKpDeZ0T0rLnkoTo1', '', 40.7904, -74.0246, '2017-04-04 20:16:30', '2017-04-04 20:16:30', 'North Bergen, New Jersey, US, 07047'),
(84, 'test123', '$2y$10$AaDsm29xVLZWfAc6YTNRhe9XwKaxKfy7A1L1VTKGOlGjseOB0.6z2', 'deftsoft139+1@gmail.com', 'Test', '', NULL, 1, '0', 'test123.jpeg', '0', '', 0, 0, '2017-04-04 14:53:49', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '201301', NULL, NULL, NULL, NULL, NULL, 'o9Sbz2ItXFIxjWitBSgMb80uPZRVVHtZgxptWkdKG5NUUwLxQXxhmFeWXRA5', 'v4tutWDDgJc85JioApPxHnLcsRD6L8drPEApPQse', '', 28.57, 77.32, '2017-04-04 23:21:50', '2017-04-04 21:53:49', 'Noida, Uttar Pradesh, IN, 201301'),
(85, 'watts', '$2y$10$tHnu5j3KGIRtXi8HyFUc9O1D0hANv8pA/QWU1GSCOdVkQBrEqkDkS', 'provider.deftsoft@gmail.com', 'Kim', '', NULL, 1, '0', 'watts.jpeg', '0', '', 0, 0, '2017-04-05 17:08:19', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, NULL, 's8De3jKFO2qDsEH9S01dnBCWkRwyRobpcNKmSq4a', '', 38.2832, -122.0085, '2017-04-06 00:08:19', '2017-04-06 00:08:19', 'Fairfield, California, US, 94533'),
(86, 'khurana', '$2y$10$.RfKTiI6WVVT7cX./ETKq.J.CjlYGBAXFL8d0ahRFHHa1OC3xnBAC', 'amit@deftsoft.info', 'Amit ', '', NULL, 1, '0', 'khurana.png', '0', '', 0, 0, '2017-04-11 11:40:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '201301', NULL, NULL, NULL, NULL, NULL, 'fvLwze7FboL3E8yMVm3cTsz6n1bYQARCdgJemBfdRxIRUG4AbFqAxvOP4fu0', '7bMzA1AsRcGBvVTc8N6s66sl8Ou8muTLQA1uCzb9', '', 28.57, 77.32, '2017-04-11 19:13:08', '2017-04-11 18:40:44', 'Noida, Uttar Pradesh, IN, 201301'),
(87, 'rummy', '$2y$10$8awzRFvORPsDOKLDavqZqulYY6Am/qykOMWhDhViZpeUYihFmHdDq', 'phplead2@deftsoft.com', 'Rummy Khan', '', NULL, 1, '0', 'rummy.jpeg', '2', '', 0, 0, '2017-04-11 12:15:08', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '201301', NULL, NULL, NULL, NULL, NULL, 'SnJ3BOSiTCmS7itdGSbKSWOo4bztIRKFDc0TYW4m9Q7kbBDTYGKa9Ug2gFa3', 'nQmtLDjUrgfNIutmH93UiMAwRkl4aITxPf6jTOPZ', '', 28.57, 77.32, '2017-04-12 01:33:24', '2017-04-11 19:15:08', 'Noida, Uttar Pradesh, IN, 201301'),
(88, ' Sweetgirl', '$2y$10$E3qq8rtaM1lvx6p.Ij1T4uyKkpTzw8.umMmyE.hU2IPcVfVEFfk6K', 'phppm@deftsoft.com', 'Alex', '', NULL, 1, '0', ' Sweetgirl.jpeg', '0', '', 0, 0, '2017-04-11 15:06:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '201301', NULL, NULL, NULL, NULL, NULL, NULL, 'c39TDgPhdEHZZHwJYYSY4PQihaCc57J3FX3XrE5j', '', 28.57, 77.32, '2017-04-11 22:06:44', '2017-04-11 22:06:44', 'Noida, Uttar Pradesh, IN, 201301'),
(89, 'maddy', '$2y$10$6on.TN/U1CWD.kPBkUimmusv3lHxHncY9Jc2rCaNkEs/7D2yp.b.O', 'madhavanps.ece@gmail.com', 'Madhavan', '', NULL, 1, '0', 'maddy.jpeg', '1', '', 0, 0, '2017-04-13 22:04:32', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '600009', NULL, NULL, NULL, NULL, NULL, NULL, 'bv7azjwUvPzEslVQMlqppeMTnal64Qul7aa3L9AB', '', 13.0833, 80.2833, '2017-04-14 05:04:32', '2017-04-14 05:04:32', 'Chennai, Tamil Nadu, IN, 600009'),
(90, 'asharp', '$2y$10$zrMTKB4IPGoLYkUIvCjJqu5.a.rotvudbJzsWOoXpdq3d5gG59dcu', 'asharp1024@hotmail.com', 'Laiyuan Lee', '', NULL, 1, '0', 'asharp.jpeg', '0', '', 0, 0, '2017-04-14 07:37:14', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '049213', NULL, NULL, NULL, NULL, NULL, 'A9i2iN2fp07GjiCX4M6i6wv3cs173OOBeyXOvhWVsHBjmF88LZMkwyhEkvDc', 'D4so1m0I6MxzJbU7kPuH4ucDH3X8be2Yd4KYLVt1', '', 1.2855, 103.8565, '2017-04-16 03:17:11', '2017-04-14 14:37:14', 'Singapore, Central Singapore Community Development Council, SG, 049213'),
(91, 'hugg12', '$2y$10$AceHK.ANOEiX5weBBfqtyO4nPKklWh498GyDWnmkYVNUffdpRmqjW', 'jay2355@yandex.com', 'hello', '', NULL, 1, '0', 'hugg12.jpeg', '0', '', 0, 0, '2017-04-15 16:52:28', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, NULL, 'A9H4uwCPKth51KuV7VqgxawiGDi42RzAFqx5tIJJ', '', 38.2832, -122.0085, '2017-04-15 23:52:28', '2017-04-15 23:52:28', 'Fairfield, California, US, 94533'),
(92, 'venkatesh', '$2y$10$/h2z36Ga8tCCSsDyoHXHPeUBCDYLTLvFb.bWIKjtiI7LH0YGyTC/e', 'akv.venkatesh@gmail.com', 'venkatesh kumar', '', NULL, 1, '0', 'venkatesh.jpeg', '0', '', 0, 0, '2017-04-20 06:04:23', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '600009', NULL, NULL, NULL, NULL, NULL, NULL, 'WEVrWBqXHpE3nnwlCY1wrGIXA6Z1k8VOdlJDmjh9', 'vbVqUSBwfdUDD3RfpXlycSgMkxrHuJWjvkFQ7G7k', 13.0833, 80.2833, '2017-04-20 13:04:23', '2017-04-20 13:04:23', 'Chennai, Tamil Nadu, IN, 600009'),
(93, 'kdtest', '$2y$10$DtAUmVZXzWh7wOXH7jA/B.SepkVfL9jA71lWVrK99oNJH/yPh1veq', 'satham@abservetech.com', 'kalidass', '', NULL, 1, '0', 'kdtest.jpeg', '0', '', 0, 0, '2017-05-03 06:54:05', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '600009', NULL, NULL, NULL, NULL, NULL, 'TqVLCskKYsxQBOegAeJLPQGru4RB9Rbjk82OY0m3g0ZKouXJVxoUQGR8ssIe', '57uzzvuvVibuaWDQDBIVPGAY8uz8N2q7yV7djDuZ', '', 13.0833, 80.2833, '2017-05-15 20:04:47', '2017-05-03 13:54:05', 'Chennai, Tamil Nadu, IN, 600009'),
(94, 'asdf', '$2y$10$zWq/wavUU25MzbYy6BYB.uo1o1VtJkRhGmDY3978n4xfj5i0GMSMy', 'martinwrght82@gmail.com', 'Marina', '', NULL, 1, '0', 'asdf.jpeg', '0', '', 0, 0, '2017-05-11 06:02:02', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '700019', NULL, NULL, NULL, NULL, NULL, 'LKmIazX4MN8J5vdEYgshrUzQVQJWblVajYivlwI9OWdYbGC0bnEzE95DGsI5', 'kGYhaeAmUDk9MSyMxMYWFqcZqhezO6T5qMkGuZft', '', 22.5333, 88.3667, '2017-05-11 13:57:50', '2017-05-11 13:02:02', 'Calcutta Ballygunge, West Bengal, IN, 700019'),
(95, 'Martin123', '$2y$10$DT/k0xH9wvdp6sbESzGKVe/YeDQF6./fRFfZ5JteoPin/AdciNRzO', 'imkrish86@gmail.com', 'Martin', '', NULL, 1, '0', 'Martin123.jpeg', '0', '', 0, 0, '2017-05-11 07:05:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '3000', NULL, NULL, NULL, NULL, NULL, NULL, 'aRcCfuGfgpiaNcblbAVimPQ5PIecbMUHHs8qv4Wt', '', -37.8103, 144.9544, '2017-05-11 14:05:00', '2017-05-11 14:05:00', 'Melbourne, Victoria, AU, 3000'),
(96, 'clarke', '$2y$10$JZwz.MtNsFqYECrmOkbaSuW7/V2tlXYuknKY1UP2/RW..Iv1be2h.', 'daya.objects@gmail.com', 'Tim Clarke', '', NULL, 1, '0', 'clarke.jpeg', '0', '', 0, 0, '2017-05-12 07:12:05', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '431703', NULL, NULL, NULL, NULL, NULL, NULL, 'MiHoV2I7ZKrvbSH2PmUGW4g0x1PGzK2YYkGoi7ht', '', 20, 77, '2017-05-12 14:12:05', '2017-05-12 14:12:05', ', , IN, 431703'),
(97, 'jimjohn', '$2y$10$GRWsDOWpqizOQ1yFfy2Q7ekl5hr44fmAfGAcOITM7pPIFLX0rm2Au', 'jimjohn19999@gmail.com', 'Jim John', '', NULL, 1, '0', 'jimjohn.jpeg', '0', '', 0, 0, '2017-05-19 09:32:15', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '60326', NULL, NULL, NULL, NULL, NULL, NULL, '0fwcxTeu4CVpgf3xF3cIlpUV6k92geqJkdWZxhRD', '', 50.1019, 8.6342, '2017-05-19 16:32:15', '2017-05-19 16:32:15', 'Frankfurt Am Main, Hessen, DE, 60326'),
(98, 'Dont', '$2y$10$Q8UA.CjzW1mZ8MVw/IuOFegNqHGIRCPE5oKQlsY.69su2qGFMwhYu', 'pbr@xigmapro.com', 'Please', '', NULL, 1, '0', 'Dont.jpeg', '0', '', 0, 0, '2017-05-19 17:00:24', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '711106', NULL, NULL, NULL, NULL, NULL, NULL, 'qYhuhydICqWvgPhPleEBDW3x9uAMzbLa9D0NUbX6', '', 22.5892, 88.3103, '2017-05-20 00:00:24', '2017-05-20 00:00:24', 'Howrah, West Bengal, IN, 711106');
INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstName`, `lastName`, `phone`, `verified`, `profileType`, `photo`, `photoType`, `role`, `active`, `online`, `timeActivated`, `unsubscribe`, `relationshipGoal`, `jobAndJobSchedule`, `yourSocialSituation`, `haveChildren`, `howMany`, `doYouOwnACar`, `areYouOnAnyMedication`, `howAmbitiousAreYou`, `whatIsTheLongestRelationshipYouHaveBeenIn`, `yourBirthFatherAndMotherAre`, `partnerDependability`, `sexualCompatibility`, `friendshipBetweenPartners`, `drugs`, `hairColor`, `hairStyle`, `eyeColor`, `height`, `bodyType`, `zodicSign`, `smoke`, `drink`, `excercise`, `excerciseSchedule`, `educationLevel`, `language`, `ethnicity`, `religiousBeliefs`, `occupation`, `income`, `movie`, `travel`, `gender`, `age`, `zipcode`, `tatoos`, `wantKids`, `relationshipStatus`, `motherBorn`, `fatherBorn`, `remember_token`, `verify_key`, `reset_key`, `latitude`, `longitude`, `updated_at`, `created_at`, `location`) VALUES
(99, 'alok', '$2y$10$l.cVZTxHzvmPfwSd0N6r5u8LNr/rKgWOGMxSnxCRtmYVL9GeeWquu', 'alan@ogmaconceptions.com', 'ALok', '', NULL, 1, '0', 'alok.jpeg', '1', '', 0, 0, '2017-05-24 07:37:15', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '712104', NULL, NULL, NULL, NULL, NULL, NULL, '0xxvQvQu9BHGNiGJAOBWiRgMYO8vpURgASHzPf88', '', 22.9204, 88.3841, '2017-05-24 14:37:15', '2017-05-24 14:37:15', 'Bandel, West Bengal, IN, 712104'),
(100, 'Wout', '$2y$10$7Z6ihnlXpfF8ZrX3DkbqRexYpxZyxEGfjuGzqd38bgLSeNZWRoIB.', 'brianwout190@gmail.com', 'Brian', '', NULL, 1, '0', 'Wout.png', '0', '', 0, 0, '2017-06-01 14:34:10', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '20153', NULL, NULL, NULL, NULL, NULL, 'rIIrXVzT9lihFGmBcaOxXXCsTWTlCKP6E301yO3NakW7N48evXCa8wlqmwQE', 'niwWsQwsNI1Vl8r0tbu0xl90RZJrrcj3R7lO8lqD', '', 45.4926, 9.0778, '2017-06-01 21:46:34', '2017-06-01 21:34:10', 'Milan, Lombardia, IT, 20153'),
(101, 'brian1990', '$2y$10$D4J5SFkaoMn6kBlpB8UkOeSemFg65jtsfA4CWMVKdVDgkBF6wa.yi', 'cyrilthaddus@gmail.com', 'Brian Wout', '', NULL, 1, '0', 'brian1990.jpeg', '0', '', 0, 0, '2017-06-01 15:08:54', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '20153', NULL, NULL, NULL, NULL, NULL, NULL, 'xTItrztk4HDAQBQOWBgKNVw52M8HO2LPOuRfJESf', '', 45.4926, 9.0778, '2017-06-01 22:08:54', '2017-06-01 22:08:54', 'Milan, Lombardia, IT, 20153'),
(102, 'kumarraman9', '$2y$10$yiU8lokjCCOX.PY6s20H9.8fDXNdhx.SSaOUAR/FbIt2lAcWx5lt2', 'kindlebit.php@gmail.com', 'Raman', '', NULL, 1, '0', 'kumarraman9.png', '0', '', 0, 0, '2017-07-06 07:12:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '160101', NULL, NULL, NULL, NULL, NULL, NULL, '6yZa9OWJc3ykohwUAYauzWlwWdRD2Ju2cCABjA5e', '', 30.7343, 76.7933, '2017-07-06 14:12:13', '2017-07-06 14:12:13', 'Chandigarh, Chandigarh, IN, 160101'),
(103, 'wright', '$2y$10$V3MLNNoUp7yAGLvBX/XBAuy5FNxPxU7zKXuzSjZATkLr/zEO2FS9.', 'joneswright@gmail.com', 'Jonesy Wright', '', NULL, 0, '0', 'wright.png', '1', '', 0, 0, '2017-07-07 05:25:25', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '85210', NULL, NULL, NULL, NULL, NULL, 'W6lIRf9JgWY5IaIHsqjKlAVUQioNccPRg4wrUl43njlUlRLYiKDlhhv1htrP', 'yiEYPb3G8WdT9Mx1oXTmXDPaWE0qeiWS1YvB6le2', '', 33.3861, -111.8469, '2017-07-07 12:32:57', '2017-07-07 12:25:25', 'Mesa, Arizona, US, 85210'),
(104, 'gerea', '$2y$10$YrlEuWJz9tqoJ4cM6JnMROXJdMvP6AOcugmQ68AJPgfNT7TAd/eIW', 'rico@kevnrico.co', 'joensy', '', NULL, 0, '0', 'gerea.jpeg', '1', '', 0, 0, '2017-07-11 19:34:06', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '85387', NULL, NULL, NULL, NULL, NULL, 'GbwKwa0u8vmMCi4OiPpZmoh4o8S99vnmK08lWVPa9ice4l2UdHMeC0jPi9DQ', 'AgdEJf4gP80Yyhnb1Td2mHvWjxJ8UHUKDHbOm8np', '', 33.7105, -112.4075, '2017-07-12 02:35:54', '2017-07-12 02:34:06', 'Surprise, Arizona, US, 85387'),
(105, 'RicoBlack', '$2y$10$H8QmhSqI5u.2Q0DfYergJuE6v3f2PvY9bFvxCCg1vl4unRKn3tjKK', 'rico@godaddy.com', 'RIco ', '', NULL, 1, '0', 'RicoBlack.jpeg', '0', '', 0, 0, '2017-07-11 19:36:48', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '85387', NULL, NULL, NULL, NULL, NULL, NULL, 'BteICaV27kF3Axaz09MbRfZCtVFFgLjCcSA5zNNO', '', 33.7105, -112.4075, '2017-07-12 02:36:48', '2017-07-12 02:36:48', 'Surprise, Arizona, US, 85387'),
(106, 'jones', '$2y$10$F5KVBUCu0eoc7KEHpmxc3uVKdhl8ibSj65vl.h44BM4rky0DVLaP6', 'bike4everyhtingindia@gmail.com', 'andy', '', NULL, 0, '0', 'jones.jpeg', '1', '', 0, 0, '2017-07-25 04:46:08', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '560001', NULL, NULL, NULL, NULL, NULL, NULL, 'BzByfyAYvurU6gpLFXNOBRHmPmsDclRwdiIbAKN9', '', 12.9833, 77.5833, '2017-07-25 11:46:08', '2017-07-25 11:46:08', 'Bengaluru, Karnataka, IN, 560001'),
(107, 'johndoe', '$2y$10$rvQmGmg2lBSId0eRA3BN1O.v.O9QHx07YPoxgCT7PLmyfbAudd2qu', 'john@einrot.com', 'john', '', NULL, 0, '0', 'johndoe.jpeg', '0', '', 0, 0, '2017-07-25 14:55:52', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '452001', NULL, NULL, NULL, NULL, NULL, '2el3Duja9Nu9cg8Kt9yJquKbjesRVKAXgk1OC2UsZyCG2JKX5lLNeIBVskY2', 'uGOIp6oSRpTJudcH4tNz9TW1qZH4VpO2NFPFzS3n', '', 22.7167, 75.8333, '2017-07-25 21:58:47', '2017-07-25 21:55:52', 'Indore, Madhya Pradesh, IN, 452001'),
(108, 'joedoe', '$2y$10$g88aK40K8/JM.5.lb5X2zuDjfyJWDhKYQWxsbdTiBdCWoptgaZz6S', 'puranikakshat@gmail.com', 'joe', '', NULL, 1, '0', 'joedoe.jpeg', '0', '', 0, 0, '2017-07-25 15:00:38', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '452001', NULL, NULL, NULL, NULL, NULL, 'HaMs6J1AptarJ5ryfceBKs7Ogp43OcqWsHH4g3X3GX9YpOp9nhgQ4RcrqAfu', 'FCMKayX1pmFHU59e9vtBaFctLsEoJLFKQURTZGOD', '', 22.7167, 75.8333, '2017-07-26 00:02:43', '2017-07-25 22:00:38', 'Indore, Madhya Pradesh, IN, 452001'),
(109, 'khare', '$2y$10$O7FckA4HKAhyC3PYgimtA.KCXk0bqbFvd0dg803u7j/f.9BXFExVy', 'ashu.khar@gmail.com', 'Ashu', '', NULL, 1, '0', 'khare.jpeg', '0', '', 0, 0, '2017-07-27 08:46:25', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '452001', NULL, NULL, NULL, NULL, NULL, 'vbE2spJjJIZ9oLhZVfcNMxRC4uOrVlHNLPLXvJFBU5HPufXhN3n9QZpEHWOh', 'DZNh1rnA9GNlpd0AsIMSf3L1Yu0gsOq1da17WpVd', '', 22.7167, 75.8333, '2017-08-21 12:12:36', '2017-07-27 15:46:25', 'Indore, Madhya Pradesh, IN, 452001'),
(110, 'khare0129', '$2y$10$O7FckA4HKAhyC3PYgimtA.KCXk0bqbFvd0dg803u7j/f.9BXFExVy', 'ashu.khare198@gmail.com', 'Ashutosh Khare', '', NULL, 1, '0', 'khare0129.jpeg', '0', '', 0, 0, '2017-08-02 10:47:54', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '452001', NULL, NULL, NULL, NULL, NULL, 'z41kalUMcU3fuZJABGp0tKdzloiFPn033iX2uAi0Ehirym4PzOYJfcsZuvI3', '7c78mwmQCmB4VkNeNDFvSMhrE36uykfCzlVToVvO', '', 22.7167, 75.8333, '2017-08-11 22:44:48', '2017-08-02 17:47:54', 'Indore, Madhya Pradesh, IN, 452001'),
(111, 'Xee23', '$2y$10$cMbBdlkhsVjm6eynatlkKeLh5lLEjwSe225noqJ5VBSUic7wrFFp.', 'xebby2000@gmail.com', 'Zeeshan', '', NULL, 1, '0', 'Xee23.jpeg', '1', '', 0, 0, '2017-08-04 00:03:30', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '54000', NULL, NULL, NULL, NULL, NULL, NULL, 'AfWCD60tklZpEI5Y2juf7eD0dFkzLHA86yjjVBLF', '', 31.5819, 74.4014, '2017-08-04 07:03:30', '2017-08-04 07:03:30', 'Pakistan Nunt, Punjab, PK, 54000'),
(112, 'sam005', '$2y$10$v5QgozYzHfTFphwZdylYd.VPWrFwJ0TsLEPTZ7yIBLZIC9lsWIFny', 'webmailtesting5@gmail.com', 'sam', '', NULL, 1, '0', 'sam005.png', '0', '', 0, 0, '2017-08-08 14:19:08', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '313605', NULL, NULL, NULL, NULL, NULL, 'vUlHKtlDRhVJRH5YTG99vsennT97UKOI7BfM8L2avrGyN2edhXjW0a1vaaei', 'q06Z93dkCpoz1G6BQWJIiBYVlmZSMK0gwMp1X1cJ', '', 19, 72.8333, '2017-08-08 21:24:56', '2017-08-08 21:19:08', 'Parel, Maharashtra, IN, 313605'),
(113, 'ashu123', '$2y$10$XTIvvrHY67eggDH91KgfoeInDR2bzZ5W8nKSbWmr26IXpTmirHB1y', 'ashu.khare1988@gmail.com', 'ashu kh', '', NULL, 0, '0', 'ashu123.jpeg', '0', '', 0, 0, '2017-08-17 06:24:18', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '452001', NULL, NULL, NULL, NULL, NULL, 'CCe7d8GHBuli0aPstJJumSN4qF4qm2BPpw1nrDtnl544NdS5pIgUWVOvWbs8', 'JQVdTwowxsjWta3s4s5A1wQeUXGLmqeJQ17IphVy', '', 22.7167, 75.8333, '2017-08-17 13:30:43', '2017-08-17 13:24:18', 'Indore, Madhya Pradesh, IN, 452001'),
(114, 'arunsharm', '$2y$10$9IDb2idgD1.KmsrAbMEFvezDd5BQgncw7aYIWhUYn6X76BQonUv8.', 'arun026.suntech@gmail.com', 'arunsharma', '', NULL, 1, '0', 'arunsharm.png', '0', '', 0, 0, '2017-08-29 05:03:58', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '226004', NULL, NULL, NULL, NULL, NULL, 'zR5JSCjWuBXe6A2OdCeEAvm3HZ2VhvaQYRpRvmLPIDOYNpRXDQHSZJfhy6ob', '95naydkOw3zmVS4B91WZWUejeXRaf306d6SWVefI', '', 26.85, 80.9167, '2017-09-05 14:01:54', '2017-08-29 12:03:58', 'Lucknow, Uttar Pradesh, IN, 226004'),
(115, 'dddd', '$2y$10$fDnC3w3SnFZzlepCNv6Une98oNfqCzE5ACexbyZ2ubJqt7.uS/gby', 'dd@we.cm', 'dd', '', NULL, 0, '0', 'dddd.jpeg', '0', '', 0, 0, '2017-09-04 05:35:05', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '226010', NULL, NULL, NULL, NULL, NULL, NULL, 'lT2BEn2rbuB83o3q9slhzBQBDiQq3UbJayiUzrje', '', 26.85, 80.9167, '2017-09-04 12:35:05', '2017-09-04 12:35:05', 'Lucknow, Uttar Pradesh, IN, 226010'),
(116, 'arunsharma', '$2y$10$pg1.V2/E8dUUZfUVdDZuOOxFrE1x1hfu8hy2w3ibiICCHn3DzwHDO', 'rahulshetty026@gmail.com', 'arunsharma', '', NULL, 0, '0', 'arunsharma.png', '1', '', 0, 0, '2017-09-04 05:46:22', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '226010', NULL, NULL, NULL, NULL, NULL, 'jQwSz4zM1mYyKs9XghbzneCuyzTJxqVW2EhmKMoaI5bILg37tiVKPzQWlQM2', 'hxvtkrwssdWeslry4MfZLBNN6flvO26Fk8s8aM6Y', '', 26.85, 80.9167, '2017-09-04 12:49:39', '2017-09-04 12:46:22', 'Lucknow, Uttar Pradesh, IN, 226010'),
(117, 'aaaa', '$2y$10$6RNgb8W8DfWBmAouEiZnt.wwntVjx8FKN9cWipfwrf8DOAAAEQruO', 'arunsharmaa026@gmail.com', 'arunsharma', '', NULL, 0, '0', 'aaaa.png', '0', '', 0, 0, '2017-09-04 09:39:02', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '233001', NULL, NULL, NULL, NULL, NULL, NULL, 'nSlmSYzYWcg0MZywk9qzePpcSezNP7Tx8oV0yYfC', '', 25.5833, 83.5667, '2017-09-04 16:39:02', '2017-09-04 16:39:02', 'Ghazipur, Uttar Pradesh, IN, 233001'),
(118, 'arun', '$2y$10$KcRmjwjJ1Wiwu.VOjd/GLeMPOnJz96laC8QfeWHXpdjZZ6Y7IUwIa', 'arunsharma026@gmail.com', 'arunsharma', '', NULL, 1, '0', 'arun.png', '1', '', 0, 0, '2017-09-05 07:05:35', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '226004', NULL, NULL, NULL, NULL, NULL, 'frzHaMFjc6KUSrs3mtMYD7Q52i7wuovNtLRKTeR4NzaTyKEehL6qV8GDJQTk', 'WX7KDvBY8Cku9bwxTjx04u4USOYxUiUyjFjfiGNK', '', 26.85, 80.9167, '2017-09-23 13:44:54', '2017-09-05 14:05:35', 'Lucknow, Uttar Pradesh, IN, 226004'),
(119, '123456', '$2y$10$OTRPsumpVfEMukBK39XXlef5JfDp0ksxGZx6DSQEqlXPGkxzdl7IK', 'happy361717@gmail.com', 'pat', '', NULL, 0, '0', '123456.gif', '0', '', 0, 0, '2017-09-19 06:15:11', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, NULL, 'cLMiwOwVHmgAZ8sAeKGFYyCBIPNyKSyDzLUyV06K', '', 38.2832, -122.0085, '2017-09-19 13:15:11', '2017-09-19 13:15:11', 'Fairfield, California, US, 94533'),
(120, 'marks', '$2y$10$i41FtlBuYj2w.8HnjZ5J4eJbFBEzLnkpQWZwA.hg1rxEaFIflA6mO', 'markandey.suntechs@gmail.com', 'mark', '', NULL, 1, '0', 'marks.jpeg', '0', '', 0, 0, '2017-09-21 10:43:20', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '221006', NULL, NULL, NULL, NULL, NULL, 'ZU8qNuaJHqvHMlyhiu8zEEOWtJZChNyVXURDOmn1kRjzaO5JuN4lZUT26ygI', '8rxzNK40mXOkV36980nVLnzws4F2QM4Iu79gevHP', '', 26.85, 80.9167, '2017-09-23 14:05:37', '2017-09-21 17:43:20', 'Lucknow, Uttar Pradesh, IN, 221006'),
(121, 'kim88', '$2y$10$wd5FJEuqXTVoNo46ZW5JEOYNwguvisxgqNLESG0YsjeKoDGRfv0DS', 'kidszonepower@gmail.com', 'kim', '', NULL, 1, '0', 'kim88.gif', '0', '', 0, 0, '2017-09-25 16:44:05', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Female', '0', '94533', NULL, NULL, NULL, NULL, NULL, 'QywNepJqc8ZOCb6FuelAQ0eX1fWw7v4tMJES3y94r3UaGYLr5uRD0N5AVTu5', 'P49jCsloVjqa9kHbDfaWigUL7cC2n3031yVaM1AP', '', 38.2832, -122.0085, '2017-09-26 00:33:20', '2017-09-25 23:44:05', 'Fairfield, California, US, 94533'),
(122, 'kim99', '$2y$10$TjOjFU0u4BMg37S4PWvbEubtK8SJ8LrdOlqEQ/trrOrue3t8MdLZe', 'Sunshine.sharey@gmail.com', 'kim99', '', NULL, 1, '0', 'kim99.jpeg', '0', '', 0, 0, '2017-09-25 17:37:37', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '94533', NULL, NULL, NULL, NULL, NULL, NULL, 'UvQevDA6kYfDZxMoXLkr7d0zYYVRe6yt348N02Aw', '', 38.2832, -122.0085, '2017-09-26 00:37:37', '2017-09-26 00:37:37', 'Fairfield, California, US, 94533'),
(123, 'dsadsa', '$2y$10$v2FFJr7dsJ5IUksPhkp67upkExeTlQkqBhOlx5m/9wmB6YwTXk2za', 'sadsadsadsad@sadasdsad.com', 'sadsa', '', NULL, 0, '0', 'dsadsa.png', '1', '', 0, 0, '2017-10-17 18:04:07', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '54950', NULL, NULL, NULL, NULL, NULL, 'oMPRVj6Urb2JbPBtpCuZFXrJrZ9yPHbp4ZnWCNzIl6T9bzLF3M9Q6T5FnDqP', 'LCa7TjPaZdYNtYUvgLBkK15Aw2Zjm3flhGgRoCyj', '', 31.4649, 74.3846, '2017-10-18 01:06:39', '2017-10-18 01:04:07', 'Lahore, Punjab, PK, 54950'),
(124, 'asdasdad', '$2y$10$jjx/31UGvDVENqwlZtb4..VvzIQnq98q7rj8Ay9g04GPGqcwasAUi', 'muhammadmushahidansari@gmail.com', 'asdsadsa', '', NULL, 1, '0', 'asdasdad.jpeg', '0', '', 0, 0, '2017-10-17 18:07:25', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '54950', NULL, NULL, NULL, NULL, NULL, NULL, 'zk3YU7zckvxEhVBafDinxQnmmKZaawwN2w1M9WhX', '', 31.4649, 74.3846, '2017-10-18 01:07:25', '2017-10-18 01:07:25', 'Lahore, Punjab, PK, 54950'),
(125, 'nemaj', '$2y$10$h5sgibtFLxcZBpncRXa7W.iUcmFTFMKNEfj2smGzitpjO8lDZq7Mu', 'jamenalcala@gmail.com', 'Nemaj Amam', '', NULL, 1, '0', 'nemaj.jpeg', '0', '', 0, 0, '2017-10-25 08:04:03', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'male', '0', '6000', NULL, NULL, NULL, NULL, NULL, 'VDhv2cMazj2OcKBo0uyfMUl22dmxFC8s8xIcdqrJvbozT8j1MEIsn1xTmHQA', 'tvCvMB8R32N9oIFPxq2qynL9UcfazNAv889ObNuO', '', 10.3, 123.9, '2017-10-25 15:16:10', '2017-10-25 15:04:03', 'Waterfront, Cebu City, PH, 6000');

-- --------------------------------------------------------

--
-- Table structure for table `user_blogs`
--

CREATE TABLE `user_blogs` (
  `id` int(11) NOT NULL,
  `blog_category` int(11) NOT NULL,
  `blogTitle` text NOT NULL,
  `blogContent` longtext NOT NULL,
  `blogImage` varchar(250) DEFAULT NULL,
  `blogby` varchar(250) DEFAULT NULL,
  `createdat` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blogs`
--

INSERT INTO `user_blogs` (`id`, `blog_category`, `blogTitle`, `blogContent`, `blogImage`, `blogby`, `createdat`, `status`) VALUES
(5, 3, 'Eight Rules for Dating in 2017', '<p>\r\n\r\n\r\n\r\n</p><p>Society and its rules fluctuates depending on what people need and what people have. Traditionally, it was menâ€™s sole responsibility to ask women out and pay for the date. Why? Because they had the money, they had the transport and they held all the cards. As the higher-earning gender, along with deciding whom to ask out, they also had the honour of paying for it.</p><p>Society has moved away from this pay model, with women now earning almost as much as men. Nevertheless, this old-fashioned attitude about who should do the asking (and paying) still prevails, creating a disconnect and much confusion. As a Flirtologist, I meet many high-flying, executive women, who make bags of money and have bags of confidence. Why shouldnâ€™t they ask a man out? Besides, men like it!</p><p>So, what are the dating rules in this modern society?</p><div><div><div>- ADVERTISEMENT -</div><div></div></div></div><p>While researching for my book, <em>The Flirt Interpreter</em>, I interviewed 100 men in four different international, Western cities. I asked them if they would like it if a woman approached them and asked them out. The answer was a resounding â€˜yes!â€™ on both counts. Followed by â€˜as long as itâ€™s not done too aggressivelyâ€™. So there we have it - just donâ€™t plop yourself down on their laps, arms dangled around their necks, and expect them to say yes. Other than that, youâ€™ll be fine!</p><p>So, what are the 8 rules for dating in the modern world? I am so glad you asked.</p><p><strong>1. If you like someone, approach them!</strong>&nbsp;Donâ€™t wait for the other person to make the move. Gender has become obsolete in this regard and now itâ€™s more about common sense! How is a guy to know youâ€™re interested if you stand in the corner willing him to walk over? If you are looking at art, for example, and get chatting you could say something like, â€œI have been meaning to go that new exhibition at the V&amp;A. Would you like to join me?â€ Which leads me to rule #2...</p><p><strong>2. Donâ€™t be scared of rejection.</strong>&nbsp;Believe it or not, it is your friend. Statistically, we cannot click with everyone we meet. If you chat to someone and they make it clear that feelings are not reciprocated, move on! Donâ€™t think of it as a setback for your self-esteem, but a step forward to finding someone youâ€™re compatible with.</p><p><strong>3. Keep it casual.</strong>&nbsp;If you see someone cute, walk over and start a natural conversation. Hitting on people can seem intimidating when you think of strutting up and opening with â€œhey, sweet cheeks,â€ but simply asking, â€œis it always this busy? Itâ€™s my first time here,â€ is a casual and natural way to start chatting.</p><p><strong>4. Lower your expectations and do away with false standards.</strong>&nbsp;Despite whatever belief you have in destiny, you will not be able to determine if a man is right for you within two minutes of meeting him. Admit it, you probably spend more time lingering over the Chinese takeaway menu! Once you stop looking at people with, â€œis this the future father of my children?â€ or â€œis she the one?â€ in mind, taking things as they come becomes a lot easier. The question you should be asking is, â€œam I having a good time right now, in this moment?â€</p><p><strong>5. Got a date? Great! Donâ€™t expect the man to pay.</strong>&nbsp;There are a surprising amount of women, even in the younger generations, who expect men to be â€˜chivalrousâ€™ and pay for dates. Why should men pay for dates? We now know that in the past it was because they had more money and had cars, but these days, arenâ€™t we all on equal (or, at least closer) footing? More importantly, donâ€™t we want to be? As a general rule, whoever asks should pay. If women can ask, they can pay and, equally, if men can be asked, they can be taken out!</p><p><strong>6. So youâ€™ve had a great date, wonderful! Now, forget it.</strong>&nbsp;This person youâ€™ve just been on a date with is a stranger minus a few hours youâ€™ve spent together. Get on with your full and happy life and donâ€™t fill your thoughts with romantic ideals of your â€˜futureâ€™. Nobody should keep you waiting by the phone, especially not someone youâ€™ve only just met!</p><p><strong>7. Keep an open mind.</strong>&nbsp;There are plenty more happily ever afters than the old husband, wife, two kids and a white picket fence. Just as we have more choice in the modern world, we also have more scenarios in which we could be happy. Donâ€™t let old-fashioned notions of happiness stop you from actually being happy in life. Which, brings me to rule #8...</p><p><strong>8. You can be happy alone.</strong>&nbsp;You should be happy alone. Why should your feeling of contentedness rest on another human being? Sounds pretty risky to me. Donâ€™t wait for someone else to come along and fill in the gaps. Start living your life and now! People are attracted to happy people. Be open, be happy, exude that happiness and the person to share that with will be drawn to you.</p><p>The rules have certainly changed in the last few generations of flirting history. Women can approach, men donâ€™t have to pay for dates and being single is coveted rather than pitied. Nowadays, we have the capacity to flirt and date for fun, not just for the traditional goal of an early marriage. We have the tools at our disposal to enjoy single life, no matter what gender we are. The â€˜rulesâ€™ are about <em>you</em>&nbsp;and <em>your</em>life, rather than finding someone to complete your life.</p>\r\n\r\n\r\n\r\n<p></p>', '956973_ozamiDatingBlog.jpg', 'Suntech', '2017-09-15 02:40:11', 'Publish'),
(6, 1, 'Why I Wonâ€™t Date Guys Who Lol', '<p>\r\n\r\n</p><p>When it comes to dating I donâ€™t discriminate. Iâ€™ve never had a â€˜typeâ€™ - a concept Iâ€™ve never really understood - or a mental checklist detailing prerequisites that potential candidates must tick off before I grant them the honour of my company. Thatâ€™s right: job, background, creed, whether they shop at Sports Direct or American Apparel - itâ€™s no odds to me. As long as Iâ€™ve got a connection with a person, they make me laugh and well, you know, I fancy them, then itâ€™s all go. I do, however, have one absolute deal-breaker - something which has the potential to turn me off a man like wildfire - I canâ€™t date a guy with bad grammar and I could never, ever, date someone who says lol.</p><p>Yes. I would rather a man with a bad lisp, two lazy eyes or one who wore proper shoes with jeans than a loller. I am fully aware that this might sound snobby, petty, maybe even arrogant, but I believe that textspeak is slowly but surely permeating our speech, reducing our language and turning us into a generation of â€˜emotionally incontinent mawksâ€™, as Janice Turner of the Times put it.</p><p>Lol (laughing out loud for the uninitiated) made it into the OED (duh?! the Oxford English Dictionary) in 2011 as an â€˜initialismâ€™, an abbreviation consisting of the initial letters of a name or expression. Similar gems included tmi (too much information), imho (in my humble opinion - who knew?) and, perhaps the most heinous of them all, yolo (you only live once). While I accept such acronyms as the inevitable consequence of the spread of digital communication and social media, I refuse to accept that they are replacing words or, worse still, human emotions.</p><div><div><div>- ADVERTISEMENT -</div><div></div></div></div><p>To my mind, lol is at best mildly irritating, at worst lazy, disingenuous and just plain dumb. The sight of it triggers the same wave of nausea I get when I hear the Go Compare jingle or when someone updates their Facebook status with â€˜.comâ€™ (â€˜tired.com!!â€™) or invents a cringworthy, generic hashtag to end a statement on Twitter - hard to articulate but strong enough to churn my stomach and make me despair in humanity. Hereâ€™s a classic example from an exchange I recently witnessed on twitter:</p><p>Girl: â€˜OMG. Boys are SO frustrating # Girl Problems *angry emoticon*</p><p>Boy: why are we frustrating lol *winky emoticon*</p><p>This kind of â€˜conversationâ€™ both baffles and depresses me. â€˜Where is the punctuation?â€™ my brain screams â€˜Why is there a lol just hanging there at the end of the sentence like some useless appendage?â€™ â€˜Whatâ€™s the point of the emoticons? â€˜What does it all MEAN? So when a message from a potential date appears in my inbox saying, â€˜Sunday morning howâ€™s the hangover lolâ€™, well letâ€™s just say the potential is lost.</p><p>As a means of expression lol is incredibly reductive. Put it this way, what did people say before lol (and for that matter emojis) existed? Hard to remember I know but my guess is real words or - GASP - actual sentences? I fail to see how a multi-layered concept like humour spanning irony, sarcasm, satire, parody, slapstick, bathos and pathos too, got bundled up and re-packaged into three meaningless letters? Itâ€™s synthetic emotion: faceless, generic, immature and just makes me feel like Iâ€™m talking to a hollographic image of the 21st century instead of a real life individual.</p><p>Another problem with lolâ€™s ambiguity is its tendency to mask emotions. Lols at the end of messages while dating can be particularly perplexing: â€˜Youâ€™re crazy - just kidding lolâ€™, â€˜Of course I want to meet your parents lolâ€™, and have you ever noticed how some people use lol as a way to mitigate a potentially devastating message or status update? â€˜Single on a Saturday night for the first time in 8 years...oh well, looks like itâ€™s takeaway tonight lolâ€™.</p><p>Besides all of which, have you ever noticed that the very reason a person has said they are â€˜LMAOâ€™ (laughing my arse off) or even LMFAO (you guessed it - laughing my f***ing arse off) is invariably not even remotely funny? Strange that.</p><p>Most disturbing of all, this teeny-tech-robotron language is rapidly infiltrating peoplesâ€™ actual speech. An entire generation are growing up thinking that this is the norm, that this is the way weâ€™ve always spoken. Am I the only one who has silently despaired on a bus journey as a group of teenagers proudly and defiantly scream nonsensical words at each other which neither we, nor probably even they, mutually understand? I canâ€™t help but feel that by dumbing down our language we are inevitably dumbing down ourselves. We produced Shakespeare and Oscar Wilde, we have the richest vocabulary in the entire world, and what do we type inanely to each other behind our plastic screens? â€˜Ha ha. Lol.â€™</p>\r\n\r\n<br><p></p>', '308154_Beautiful-stylish-girl-goggles-wear.jpg', 'Suntech', '2017-09-15 04:06:45', 'Publish'),
(7, 1, 'Should We Kiss On the First Date ', '<p>On a first date you\'re trying to show someone the best version of yourself, so going in for a kiss at the wrong time could be perilous.<br></p>', '969209_MOVING.gif', 'T.K', '2017-09-17 22:03:00', 'Publish');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `groupType` varchar(20) NOT NULL,
  `groupAdmin` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `user_id`, `group_name`, `description`, `image`, `groupType`, `groupAdmin`, `created_at`, `updated_at`) VALUES
(1, 49, 'testing', 'testing', '8080Profile-picture33.jpg', 'Public', 49, '2017-01-27 21:12:29', '0000-00-00 00:00:00'),
(2, 43, '', '', 'AlbumArt_{CA6465E3-92B8-4969-B053-E091250B3E3E}_Small.jpg', '', 43, '2017-02-18 09:31:20', '0000-00-00 00:00:00'),
(3, 86, 'rummy', 'rummy', 'timepieces-monaco-red-1_1024x1024.jpg', 'Public', 86, '2017-04-11 12:10:13', '0000-00-00 00:00:00'),
(4, 114, 'arun', 'hi', 'app_icon.png', 'Public', 114, '2017-09-01 06:14:48', '0000-00-00 00:00:00'),
(5, 114, 'arun', 'ssf', 'app_icon.png', 'Private', 114, '2017-09-01 07:30:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_music`
--

CREATE TABLE `user_music` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `music` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_music`
--

INSERT INTO `user_music` (`id`, `user_id`, `title`, `music`, `created_at`, `updated_at`) VALUES
(1, 43, 'LOL', 'Untitled Playlist.wpl', '2017-02-18 16:24:14', '2017-02-18 16:24:14'),
(2, 43, 'LIL', 'AlbumArt_{2BEDE989-0477-48C8-8E85-D5FC97494EC0}_Large.jpg', '2017-02-18 16:25:17', '2017-02-18 16:25:17'),
(3, 43, 'PLP', 'Love Comes.wma', '2017-02-18 16:26:18', '2017-02-18 16:26:18'),
(4, 86, 'made for each other', 'Maid with the Flaxen Hair.mp3', '2017-04-11 18:55:25', '2017-04-11 18:55:25'),
(5, 92, 'Music', 'Koala.jpg', '2017-04-20 13:37:56', '2017-04-20 13:37:56'),
(6, 114, 'arun', '4580033 (1).mp4', '2017-08-31 19:50:41', '2017-08-31 19:50:41'),
(7, 118, 'Jeena Marna', '02 Jeena Marna (Do Lafzon Ki Kahani) (SongsMp3.Com).mp3', '2017-09-22 15:52:58', '2017-09-22 15:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_online`
--

CREATE TABLE `user_online` (
  `user_id` bigint(12) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_online`
--

INSERT INTO `user_online` (`user_id`, `time`) VALUES
(118, '2017-09-23 14:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_pictures`
--

CREATE TABLE `user_pictures` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_pictures`
--

INSERT INTO `user_pictures` (`id`, `user_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 49, '8080Profile-picture33.jpg', '2017-01-28 00:36:52', '2017-01-28 00:36:52'),
(2, 49, '1735769290979.png', '2017-01-28 00:45:42', '2017-01-28 00:45:42'),
(3, 43, '000A051DHVh.jpg', '2017-02-18 16:21:59', '2017-02-18 16:21:59'),
(4, 43, '000A051DHVh.jpg', '2017-02-18 16:22:51', '2017-02-18 16:22:51'),
(5, 43, '0003 may warm winds of heaven.gif', '2017-02-18 16:23:14', '2017-02-18 16:23:14'),
(6, 75, 'boyz2.jpg', '2017-03-23 12:00:25', '2017-03-23 12:00:25'),
(7, 43, 'download.jpg', '2017-03-28 20:13:29', '2017-03-28 20:13:29'),
(8, 78, 'IMG_20161214_151554.jpg', '2017-03-29 18:46:16', '2017-03-29 18:46:16'),
(9, 78, 'IMG_20161217_110941.jpg', '2017-03-29 18:46:16', '2017-03-29 18:46:16'),
(10, 78, 'IMG_20170218_134638.jpg', '2017-03-29 18:46:16', '2017-03-29 18:46:16'),
(11, 78, 'IMG-20161230-WA0000.jpg', '2017-03-29 18:46:16', '2017-03-29 18:46:16'),
(12, 78, 'Spark.exe', '2017-03-29 18:47:47', '2017-03-29 18:47:47'),
(13, 78, 'QA Process.doc', '2017-03-29 18:48:23', '2017-03-29 18:48:23'),
(14, 43, 'notepad++.exe', '2017-03-29 19:44:39', '2017-03-29 19:44:39'),
(15, 86, 'Chrysanthemum.jpg', '2017-04-11 18:54:17', '2017-04-11 18:54:17'),
(16, 90, '1 (22).jpg', '2017-04-14 20:25:51', '2017-04-14 20:25:51'),
(17, 90, '1 (20).jpg', '2017-04-14 20:26:04', '2017-04-14 20:26:04'),
(18, 92, 'Koala.jpg', '2017-04-20 13:36:32', '2017-04-20 13:36:32'),
(19, 92, 'Penguins.jpg', '2017-04-20 13:36:47', '2017-04-20 13:36:47'),
(20, 112, 'bnr_abt1.jpeg', '2017-08-08 21:24:31', '2017-08-08 21:24:31'),
(21, 114, 'placa-de-lembrete-balo-de-fala-D_NQ_NP_407221-MLB20742430504_052016-F.jpg', '2017-08-31 19:26:39', '2017-08-31 19:26:39'),
(22, 114, 'heart.png', '2017-08-31 19:53:08', '2017-08-31 19:53:08'),
(23, 118, 'blank-white-thick-world-map-b3c.png', '2017-09-06 16:44:58', '2017-09-06 16:44:58'),
(24, 118, 'Beautiful-stylish-girl-goggles-wear.jpg', '2017-09-22 13:26:14', '2017-09-22 13:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_videos`
--

CREATE TABLE `user_videos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0 => Offline  1 => Online',
  `link` text NOT NULL,
  `video` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_videos`
--

INSERT INTO `user_videos` (`id`, `user_id`, `type`, `link`, `video`, `updated_at`, `created_at`) VALUES
(1, 43, 1, 'https://youtu.be/QvsQ9hYKq7c', '', '2017-02-18 16:30:20', '2017-02-18 16:30:20'),
(2, 43, 1, 'https://www.youtube.com/watch?v=MN6vCWp4CdE', '', '2017-03-28 20:48:21', '2017-03-28 20:48:21'),
(3, 43, 1, 'https://www.youtube.com/watch?v=MN6vCWp4CdE', '', '2017-03-28 20:48:39', '2017-03-28 20:48:39'),
(4, 78, 0, '', 'Auction sheet.ods', '2017-03-29 18:50:44', '2017-03-29 18:50:44'),
(5, 78, 1, 'https://www.youtube.com/watch?v=usS1eTEDexs', '', '2017-03-29 18:52:20', '2017-03-29 18:52:20'),
(6, 43, 1, '', '', '2017-03-29 19:47:18', '2017-03-29 19:47:18'),
(7, 43, 0, '', 'Spark.exe', '2017-03-29 19:48:55', '2017-03-29 19:48:55'),
(8, 43, 1, 'dfsdfsfsdfs', '', '2017-03-29 19:49:18', '2017-03-29 19:49:18'),
(9, 78, 1, 'dsfdf', '', '2017-03-29 19:49:51', '2017-03-29 19:49:51'),
(10, 86, 0, '', 'babykofcaepasendhai.avi', '2017-04-11 18:47:14', '2017-04-11 18:47:14'),
(11, 86, 0, '', 'babykofcaepasendhai.avi', '2017-04-11 18:59:16', '2017-04-11 18:59:16'),
(12, 86, 1, 'https://youtu.be/u4alGiomYP4', '', '2017-04-11 19:04:43', '2017-04-11 19:04:43'),
(13, 86, 1, 'https://youtu.be/u4alGiomYP4', '', '2017-04-11 19:05:20', '2017-04-11 19:05:20'),
(14, 86, 1, 'https://www.youtube.com/watch?v=u4alGiomYP4&feature=youtu.be', '', '2017-04-11 19:05:53', '2017-04-11 19:05:53'),
(15, 86, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/u4alGiomYP4\" frameborder=\"0\" allowfullscreen></iframe>', '', '2017-04-11 19:06:29', '2017-04-11 19:06:29'),
(16, 43, 1, 'https://www.youtube.com/watch?v=eQSiU3tLFsY', '', '2017-04-13 14:07:54', '2017-04-13 14:07:54'),
(17, 43, 1, 'https://www.youtube.com/watch?v=eQSiU3tLFsY', '', '2017-04-13 14:08:51', '2017-04-13 14:08:51'),
(18, 108, 1, '', '', '2017-07-25 22:05:35', '2017-07-25 22:05:35'),
(19, 108, 1, 'https://www.youtube.com/watch?v=a3ICNMQW7Ok', '', '2017-07-25 22:25:36', '2017-07-25 22:25:36'),
(21, 118, 0, '', '4580033.mp4', '2017-09-06 19:26:02', '2017-09-06 19:26:02'),
(23, 118, 1, 'https://www.youtube.com/watch?v=T3AcSC8oL8o', '', '2017-09-22 13:48:02', '2017-09-22 13:48:02'),
(24, 118, 0, '', 'SampleVideo_1280x720_1mb.mp4', '2017-09-22 19:23:47', '2017-09-22 19:23:47'),
(25, 118, 0, '', 'Short video clip-nature.mp4.mp4', '2017-09-22 19:23:47', '2017-09-22 19:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `link`, `video`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Join Now for Free', 'http://seriousdatings.com/users/create', '4580033.mp4', '<h2>Welcome to Seriousdatings</h2>\r\n<p>Because dating should be meaningful and rewarding.</p>', '2017-01-28 17:04:20', '2017-08-18 12:40:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_your_date`
--
ALTER TABLE `about_your_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_cms_tbl`
--
ALTER TABLE `admin_cms_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `compatability`
--
ALTER TABLE `compatability`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`match_id`);

--
-- Indexes for table `dating_plan`
--
ALTER TABLE `dating_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventPictures`
--
ALTER TABLE `eventPictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventtype`
--
ALTER TABLE `eventtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`friend_one`,`friend_two`),
  ADD KEY `friend_two` (`friend_two`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_member`
--
ALTER TABLE `group_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `me_events`
--
ALTER TABLE `me_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`eventId`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `profile_picture`
--
ALTER TABLE `profile_picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `success_story`
--
ALTER TABLE `success_story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useradmin_tbl`
--
ALTER TABLE `useradmin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_blogs`
--
ALTER TABLE `user_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_music`
--
ALTER TABLE `user_music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_pictures`
--
ALTER TABLE `user_pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_videos`
--
ALTER TABLE `user_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_your_date`
--
ALTER TABLE `about_your_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `admin_cms_tbl`
--
ALTER TABLE `admin_cms_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `compatability`
--
ALTER TABLE `compatability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589;
--
-- AUTO_INCREMENT for table `dating_plan`
--
ALTER TABLE `dating_plan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `eventPictures`
--
ALTER TABLE `eventPictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `eventtype`
--
ALTER TABLE `eventtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `group_member`
--
ALTER TABLE `group_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `me_events`
--
ALTER TABLE `me_events`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `profile_picture`
--
ALTER TABLE `profile_picture`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `success_story`
--
ALTER TABLE `success_story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `useradmin_tbl`
--
ALTER TABLE `useradmin_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `user_blogs`
--
ALTER TABLE `user_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_music`
--
ALTER TABLE `user_music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_pictures`
--
ALTER TABLE `user_pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user_videos`
--
ALTER TABLE `user_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`friend_one`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`friend_two`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
