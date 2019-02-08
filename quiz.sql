-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2019 at 09:01 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'sharif', 'sh164211'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(4, '5b2f36968d9c2', '5b2f3696beefa'),
(5, '5b2f36970587a', '5b2f36970accf'),
(6, '5b2f3868369a2', '5b2f386857c21'),
(7, '5b2f386889463', '5b2f3868916ff'),
(8, '5b2f39e7ab5a0', '5b2f39e7cd389'),
(9, '5b2f39e80368d', '5b2f39e80e195'),
(10, '5b2f39e82ed41', '5b2f39e836f79'),
(11, '5b2f3bb0bb581', '5b2f3bb0ef5e7'),
(12, '5b2f3bb125651', '5b2f3bb12afa9'),
(13, '5bbb5654e58aa', '5bbb565510f55'),
(14, '5bbb56554f375', '5bbb565552177'),
(15, '5bbb565582ebd', '5bbb56559082a'),
(16, '5bbb5655a60d9', '5bbb5655ae5ac'),
(17, '5bbb5655cec26', '5bbb5655d19f6'),
(18, '5bbb5655e7277', '5bbb5655ef91c'),
(19, '5bbb58acc256b', '5bbb58acd7acb'),
(20, '5bbb58ad18292', '5bbb58ad1db3f'),
(21, '5bbb58ad41026', '5bbb58ad465e8'),
(22, '5bbb58ad615b4', '5bbb58ad6436e'),
(23, '5bbb58ad77166', '5bbb58ad79f19'),
(24, '5bbb58adaaa02', '5bbb58adb2fbf'),
(25, '5bbb5a7e3b8a2', '5bbb5a7e56065'),
(26, '5bbb5a7e9f08c', '5bbb5a7ea9a77'),
(27, '5bbb5a7ee5be1', '5bbb5a7eedd6e'),
(28, '5bbb5a7f1cffd', '5bbb5a7f24ffa'),
(29, '5bbb5a7f50860', '5bbb5a7f587d3'),
(30, '5bbb5a7f6633a', '5bbb5a7f6b922'),
(31, '5c0d773daab1b', '5c0d773dc1764'),
(32, '5c0d773de62ae', '5c0d773dec2b2'),
(33, '5c0d773e16a92', '5c0d773e1cabb'),
(34, '5c0d773e3b4df', '5c0d773e414dd'),
(35, '5c0d773e7444b', '5c0d773e8063b'),
(36, '5c5dd6107b943', '5c5dd61090b83'),
(37, '5c5dd610b1605', '5c5dd610b557a'),
(38, '5c5dd610c7c4c', '5c5dd610cbcb3');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(4, 'sajib', '5b2f3a5b39e1c', 0, 0, 0, 0, '2018-06-24 06:49:45', 1529822964, 'finished', 'true'),
(5, 'sajib', '5b2f35e7a2c9f', 0, 0, 0, 0, '2018-06-24 07:53:51', 1529826770, 'finished', 'true'),
(6, 'sajib', '5b2f36d104574', 0, 0, 0, 0, '2018-06-24 08:03:30', 1529827392, 'finished', 'true'),
(7, 'sajib', '5b2f38a4ae710', 0, 0, 0, 0, '2018-06-24 08:05:22', 1529827456, 'finished', 'true'),
(12, 'arif', '5b2f35e7a2c9f', 1, 2, 1, 1, '2018-06-25 10:32:15', 1529922674, 'finished', 'true'),
(13, 'arif', '5b2f3a5b39e1c', 2, 2, 2, 0, '2018-06-25 10:33:25', 1529922765, 'finished', 'true'),
(14, 'arif', '5b2f36d104574', 2, 2, 2, 0, '2018-06-25 10:34:03', 1529922816, 'finished', 'true'),
(15, 'arif', '5b2f38a4ae710', 0, 0, 0, 0, '2018-06-25 12:00:08', 1529927946, 'finished', 'true'),
(16, 'sakib', '5b2f35e7a2c9f', 0, 1, 0, 1, '2018-06-26 02:07:20', 1529978778, 'finished', 'true'),
(17, 'sakib', '5b2f36d104574', 1, 2, 1, 1, '2018-06-26 02:09:50', 1529978929, 'finished', 'true'),
(18, 'sakib', '5b2f3a5b39e1c', 0, 0, 0, 0, '2018-07-05 15:25:38', 1530804277, 'finished', 'true'),
(19, 'mollah', '5b2f3a5b39e1c', 1, 1, 1, 1, '2018-09-08 13:28:07', 1536413227, 'finished', 'true'),
(24, 'mollah', '5bbb58cff2fdc', 0, 3, 0, 2, '2018-10-09 04:34:01', 1539059459, 'finished', 'true'),
(26, 'mollah', '5bbb567c6c1ec', 0, 1, 0, 2, '2018-11-05 12:18:11', 1541420109, 'finished', 'true'),
(28, 'shibbirweb', '5b2f36d104574', 2, 2, 2, 0, '2018-12-03 21:03:56', 1543870990, 'finished', 'true'),
(30, 'shibbirweb', '5bbb4fe0e56c6', 5, 6, 5, 1, '2018-12-04 05:21:42', 1543900713, 'finished', 'true'),
(31, 'shibbirweb', '5b2f38a4ae710', 2, 3, 2, 1, '2018-12-04 20:49:41', 1543956534, 'finished', 'true'),
(32, 'shibbirweb', '5b2f3a5b39e1c', 2, 2, 2, 0, '2018-12-09 20:00:20', 1544385559, 'finished', 'true'),
(33, 'shibbirweb', '5bbb58cff2fdc', 0, 0, 0, 0, '2018-12-09 20:03:29', 1544385628, 'finished', 'true'),
(34, 'shibbirweb', '5c0d76ca8d731', 0, 1, 0, 0, '2018-12-09 20:39:05', 1544386384, 'finished', 'true'),
(35, 'shibbirweb', '5bbb567c6c1ec', 0, 0, 0, 0, '2018-12-09 21:36:21', 1544391200, 'finished', 'true'),
(36, 'arif', '5c0d76ca8d731', 11, 5, 3, 2, '2018-12-09 22:03:46', 1544391465, 'finished', 'true'),
(37, 'arif', '5bbb58cff2fdc', 1, 6, 1, 5, '2018-12-09 22:07:34', 1544393072, 'finished', 'true'),
(38, 'arif', '5bbb567c6c1ec', 0, 6, 0, 6, '2018-12-09 22:10:43', 1544393262, 'finished', 'true'),
(39, 'arif', '5bbb4fe0e56c6', 2, 5, 2, 3, '2018-12-09 22:29:15', 1544394374, 'finished', 'true'),
(40, 'sajib', '5bbb4fe0e56c6', 4, 6, 4, 2, '2018-12-09 22:35:27', 1544394901, 'finished', 'true'),
(41, 'sajib', '5bbb58cff2fdc', 1, 2, 1, 1, '2018-12-09 22:39:08', 1544394967, 'finished', 'true'),
(42, 'sajib', '5bbb567c6c1ec', 3, 5, 3, 2, '2018-12-10 17:57:32', 1544464466, 'finished', 'true'),
(43, 'sajib', '5c0d76ca8d731', -8, 4, 0, 4, '2018-12-10 18:04:10', 1544464658, 'finished', 'true'),
(44, 'hira', '5b2f35e7a2c9f', 1, 1, 1, 0, '2018-12-10 18:21:32', 1544466086, 'finished', 'true'),
(45, 'hira', '5b2f36d104574', 0, 1, 0, 1, '2018-12-10 18:22:07', 1544466100, 'finished', 'true'),
(46, 'hira', '5c0d76ca8d731', -8, 4, 0, 4, '2018-12-10 18:25:20', 1544466215, 'finished', 'true'),
(47, 'hira', '5b2f38a4ae710', 1, 2, 1, 1, '2018-12-10 18:26:30', 1544466326, 'finished', 'true'),
(48, 'hira', '5b2f3a5b39e1c', 0, 0, 0, 0, '2018-12-10 18:31:12', 1544466394, 'finished', 'true'),
(49, 'hira', '5bbb567c6c1ec', 0, 0, 0, 0, '2018-12-10 18:34:16', 1544466675, 'finished', 'true'),
(50, 'hira', '5bbb58cff2fdc', 1, 2, 1, 1, '2018-12-10 18:37:49', 1544466891, 'finished', 'true'),
(51, 'amin@gmail.com', '5c0d76ca8d731', 15, 4, 3, 0, '2019-01-22 07:15:11', 1548140950, 'finished', 'true'),
(52, 'shimul', '5b2f36d104574', 1, 1, 1, 0, '2019-01-30 19:36:30', 1548876953, 'finished', 'true'),
(53, 'shimul', '5b2f35e7a2c9f', 1, 1, 1, 0, '2019-02-08 11:53:42', 1549626801, 'finished', 'true'),
(54, 'shimul', '5c0d76ca8d731', -1, 4, 1, 3, '2019-02-08 15:42:04', 1549640512, 'finished', 'true'),
(55, 'shimul', '5c5dd5b1abe20', 4, 2, 2, 0, '2019-02-08 19:28:51', 1549653619, 'finished', 'true'),
(56, 'shimul', '5bbb567c6c1ec', 0, 0, 0, 0, '2019-02-08 19:29:06', 1549654146, 'ongoing', 'false'),
(57, 'shimul', '5bbb58cff2fdc', 0, 0, 0, 0, '2019-02-08 19:44:05', 1549654864, 'finished', 'true'),
(58, 'shimul', '5b2f3a5b39e1c', 0, 0, 0, 0, '2019-02-08 19:41:26', 1549654886, 'ongoing', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_time_seen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`id`, `user_id`, `last_time_seen`) VALUES
(2, 8, '2018-12-10 04:29:35'),
(3, 3, '2018-12-11 00:02:39'),
(4, 4, '2018-12-10 04:29:15'),
(5, 9, '2018-12-11 00:56:49'),
(6, 6, '2018-12-10 01:22:38'),
(7, 10, '2019-01-22 13:15:20'),
(8, 11, '2019-02-09 01:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(13, '5b2f36968d9c2', 'Hyperlinks and Text Markup Language', '5b2f3696beeed'),
(14, '5b2f36968d9c2', 'Hyper Text Markup Language', '5b2f3696beefa'),
(15, '5b2f36968d9c2', 'Home Tool Markup Language', '5b2f3696beefe'),
(16, '5b2f36968d9c2', 'Home Tool Machine Language', '5b2f3696bef02'),
(17, '5b2f36970587a', 'Mozilla', '5b2f36970acb9'),
(18, '5b2f36970587a', 'Microsoft', '5b2f36970acc7'),
(19, '5b2f36970587a', 'google', '5b2f36970acca'),
(20, '5b2f36970587a', 'WWWC', '5b2f36970accf'),
(21, '5b2f3868369a2', 'Cascading Style Sheets', '5b2f386857c21'),
(22, '5b2f3868369a2', 'Colorful Style Sheets', '5b2f386857c2b'),
(23, '5b2f3868369a2', 'Computer Style Sheets', '5b2f386857c2e'),
(24, '5b2f3868369a2', 'Creative Style Sheets', '5b2f386857c31'),
(25, '5b2f386889463', '{body;color:black;}', '5b2f3868916f1'),
(26, '5b2f386889463', '{body:color=black;}', '5b2f3868916fc'),
(27, '5b2f386889463', 'body {color: black;}', '5b2f3868916ff'),
(28, '5b2f386889463', 'body:color=black;', '5b2f386891701'),
(29, '5b2f39e7ab5a0', 'Private Home Page', '5b2f39e7cd379'),
(30, '5b2f39e7ab5a0', 'Personal Hypertext Processor', '5b2f39e7cd385'),
(31, '5b2f39e7ab5a0', 'Hypertext Preprocessor', '5b2f39e7cd389'),
(32, '5b2f39e7ab5a0', 'Public Home Page', '5b2f39e7cd38c'),
(33, '5b2f39e80368d', 'Hello World\";', '5b2f39e80e183'),
(34, '5b2f39e80368d', 'Document.Write(\"Hello World\");', '5b2f39e80e191'),
(35, '5b2f39e80368d', 'echo \"Hello World\";', '5b2f39e80e195'),
(36, '5b2f39e80368d', 'print \"Hello World\"', '5b2f39e80e198'),
(37, '5b2f39e82ed41', '$', '5b2f39e836f79'),
(38, '5b2f39e82ed41', '#', '5b2f39e836f85'),
(39, '5b2f39e82ed41', '&', '5b2f39e836f87'),
(40, '5b2f39e82ed41', '@', '5b2f39e836f8b'),
(41, '5b2f3bb0bb581', 'Structured Question Language', '5b2f3bb0ef5d9'),
(42, '5b2f3bb0bb581', 'Strong Question Language', '5b2f3bb0ef5e5'),
(43, '5b2f3bb0bb581', 'Structured Query Language', '5b2f3bb0ef5e7'),
(44, '5b2f3bb0bb581', 'Standard Query Language', '5b2f3bb0ef5e9'),
(45, '5b2f3bb125651', 'UPDATE', '5b2f3bb12af9d'),
(46, '5b2f3bb125651', 'DELETE', '5b2f3bb12afa9'),
(47, '5b2f3bb125651', 'INSERT', '5b2f3bb12afac'),
(48, '5b2f3bb125651', 'CLOSE', '5b2f3bb12afc2'),
(49, '5bbb5654e58aa', 'Hyper Text Markup Language', '5bbb565510f55'),
(50, '5bbb5654e58aa', 'Home Tool Markup Language', '5bbb565510f6a'),
(51, '5bbb5654e58aa', 'Hyperlinks and Text Markup Language', '5bbb565510f76'),
(52, '5bbb5654e58aa', 'Hyperlinks Tool Markup Language', '5bbb565510f82'),
(53, '5bbb56554f375', 'Google', '5bbb565552166'),
(54, '5bbb56554f375', 'The World Wide Web Consortium', '5bbb565552177'),
(55, '5bbb56554f375', 'Mozilla', '5bbb56555217e'),
(56, '5bbb56554f375', 'Microsoft', '5bbb565552181'),
(57, '5bbb565582ebd', 'Computer Style Sheets', '5bbb56559082a'),
(58, '5bbb565582ebd', 'Cascading Style Sheets', '5bbb565590837'),
(59, '5bbb565582ebd', 'Colorful Style Sheets', '5bbb56559083b'),
(60, '5bbb565582ebd', 'Creative Style Sheets', '5bbb56559083e'),
(61, '5bbb5655a60d9', '{body;color:black;}', '5bbb5655ae59c'),
(62, '5bbb5655a60d9', 'body:color=black;', '5bbb5655ae5a9'),
(63, '5bbb5655a60d9', ' body {color: black;}', '5bbb5655ae5ac'),
(64, '5bbb5655a60d9', 'body:color=black;', '5bbb5655ae5ae'),
(65, '5bbb5655cec26', 'PHP: Hypertext Preprocessor', '5bbb5655d19f6'),
(66, '5bbb5655cec26', 'Private Home Page', '5bbb5655d1a0a'),
(67, '5bbb5655cec26', 'Personal Hypertext Processor', '5bbb5655d1a16'),
(68, '5bbb5655cec26', 'none', '5bbb5655d1a21'),
(69, '5bbb5655e7277', 'print \"Hello World\"', '5bbb5655ef908'),
(70, '5bbb5655e7277', 'Document.Write(\"Hello World\");', '5bbb5655ef915'),
(71, '5bbb5655e7277', '\"Hello World\";', '5bbb5655ef919'),
(72, '5bbb5655e7277', 'echo \"Hello World\";', '5bbb5655ef91c'),
(73, '5bbb58acc256b', 'Computer Style Sheets', '5bbb58acd7ac2'),
(74, '5bbb58acc256b', 'Cascading Style Sheets', '5bbb58acd7acb'),
(75, '5bbb58acc256b', 'Colorful Style Sheets', '5bbb58acd7acc'),
(76, '5bbb58acc256b', 'Creative Style Sheets', '5bbb58acd7ace'),
(77, '5bbb58ad18292', '{body;color:black;}', '5bbb58ad1db2d'),
(78, '5bbb58ad18292', 'body:color=black;', '5bbb58ad1db3c'),
(79, '5bbb58ad18292', 'body {color: black;}', '5bbb58ad1db3f'),
(80, '5bbb58ad18292', 'body:color=black;', '5bbb58ad1db42'),
(81, '5bbb58ad41026', 'PHP: Hypertext Preprocessor', '5bbb58ad465e8'),
(82, '5bbb58ad41026', 'Private Home Page', '5bbb58ad465f4'),
(83, '5bbb58ad41026', 'Personal Hypertext Processor', '5bbb58ad465f6'),
(84, '5bbb58ad41026', 'none', '5bbb58ad465f8'),
(85, '5bbb58ad615b4', 'print \"Hello World\"', '5bbb58ad6435b'),
(86, '5bbb58ad615b4', 'Document.Write(\"Hello World\");', '5bbb58ad64369'),
(87, '5bbb58ad615b4', '\"Hello World\";', '5bbb58ad6436c'),
(88, '5bbb58ad615b4', 'echo \"Hello World\";', '5bbb58ad6436e'),
(89, '5bbb58ad77166', 'Hyper Text Markup Language', '5bbb58ad79f19'),
(90, '5bbb58ad77166', 'Home Tool Markup Language', '5bbb58ad79f25'),
(91, '5bbb58ad77166', 'Hyperlinks and Text Markup Language', '5bbb58ad79f27'),
(92, '5bbb58ad77166', 'Hyperlinks Tool Markup Language', '5bbb58ad79f2a'),
(93, '5bbb58adaaa02', 'Google', '5bbb58adb2fa9'),
(94, '5bbb58adaaa02', 'The World Wide Web Consortium', '5bbb58adb2fbf'),
(95, '5bbb58adaaa02', 'Mozilla', '5bbb58adb2fc6'),
(96, '5bbb58adaaa02', 'Microsoft', '5bbb58adb2fca'),
(97, '5bbb5a7e3b8a2', 'PHP: Hypertext Preprocessor', '5bbb5a7e56065'),
(98, '5bbb5a7e3b8a2', 'Private Home Page', '5bbb5a7e56080'),
(99, '5bbb5a7e3b8a2', 'Personal Hypertext Processor', '5bbb5a7e56086'),
(100, '5bbb5a7e3b8a2', 'none', '5bbb5a7e5608c'),
(101, '5bbb5a7e9f08c', 'print \"Hello World\"', '5bbb5a7ea9a5a'),
(102, '5bbb5a7e9f08c', 'Document.Write(\"Hello World\");', '5bbb5a7ea9a6d'),
(103, '5bbb5a7e9f08c', '\"Hello World\";', '5bbb5a7ea9a71'),
(104, '5bbb5a7e9f08c', 'echo \"Hello World\";', '5bbb5a7ea9a77'),
(105, '5bbb5a7ee5be1', 'Hyper Text Markup Language', '5bbb5a7eedd6e'),
(106, '5bbb5a7ee5be1', 'Home Tool Markup Language', '5bbb5a7eedd7b'),
(107, '5bbb5a7ee5be1', 'Hyperlinks and Text Markup Language', '5bbb5a7eedd7f'),
(108, '5bbb5a7ee5be1', 'Hyperlinks Tool Markup Language', '5bbb5a7eedd83'),
(109, '5bbb5a7f1cffd', 'Google', '5bbb5a7f24ffa'),
(110, '5bbb5a7f1cffd', 'The World Wide Web Consortium', '5bbb5a7f25006'),
(111, '5bbb5a7f1cffd', 'Mozilla', '5bbb5a7f2500a'),
(112, '5bbb5a7f1cffd', 'Microsoft', '5bbb5a7f2500d'),
(113, '5bbb5a7f50860', 'Computer Style Sheets', '5bbb5a7f587cb'),
(114, '5bbb5a7f50860', 'Cascading Style Sheets', '5bbb5a7f587d3'),
(115, '5bbb5a7f50860', 'Colorful Style Sheets', '5bbb5a7f587d5'),
(116, '5bbb5a7f50860', 'Creative Style Sheets', '5bbb5a7f587d6'),
(117, '5bbb5a7f6633a', '{body;color:black;}', '5bbb5a7f6b918'),
(118, '5bbb5a7f6633a', 'body:color=black;', '5bbb5a7f6b921'),
(119, '5bbb5a7f6633a', 'body {color: black;}', '5bbb5a7f6b922'),
(120, '5bbb5a7f6633a', 'body:color=black;', '5bbb5a7f6b924'),
(121, '5c0d773daab1b', 'option a', '5c0d773dc175f'),
(122, '5c0d773daab1b', 'option b', '5c0d773dc1764'),
(123, '5c0d773daab1b', 'option c', '5c0d773dc1766'),
(124, '5c0d773daab1b', 'option c', '5c0d773dc1767'),
(125, '5c0d773de62ae', 'a', '5c0d773dec2ac'),
(126, '5c0d773de62ae', 'b', '5c0d773dec2b2'),
(127, '5c0d773de62ae', 'c', '5c0d773dec2b3'),
(128, '5c0d773de62ae', 'd', '5c0d773dec2b5'),
(129, '5c0d773e16a92', 'k', '5c0d773e1cab5'),
(130, '5c0d773e16a92', 'l', '5c0d773e1cabb'),
(131, '5c0d773e16a92', 'm', '5c0d773e1cabc'),
(132, '5c0d773e16a92', 'n', '5c0d773e1cabe'),
(133, '5c0d773e3b4df', 'a', '5c0d773e414d4'),
(134, '5c0d773e3b4df', 'b', '5c0d773e414da'),
(135, '5c0d773e3b4df', 'n', '5c0d773e414db'),
(136, '5c0d773e3b4df', 'b', '5c0d773e414dd'),
(137, '5c0d773e7444b', 'i', '5c0d773e80636'),
(138, '5c0d773e7444b', 'o', '5c0d773e8063b'),
(139, '5c0d773e7444b', 'p', '5c0d773e8063d'),
(140, '5c0d773e7444b', 'j', '5c0d773e8063e'),
(141, '5c5dd6107b943', 'option a', '5c5dd61090b83'),
(142, '5c5dd6107b943', 'option b', '5c5dd61090b89'),
(143, '5c5dd6107b943', 'option c', '5c5dd61090b8a'),
(144, '5c5dd6107b943', 'option d', '5c5dd61090b8b'),
(145, '5c5dd610b1605', 'a', '5c5dd610b5571'),
(146, '5c5dd610b1605', 'b', '5c5dd610b557a'),
(147, '5c5dd610b1605', 'c', '5c5dd610b557c'),
(148, '5c5dd610b1605', 'd', '5c5dd610b557e'),
(149, '5c5dd610c7c4c', 'a', '5c5dd610cbca9'),
(150, '5c5dd610c7c4c', 'b', '5c5dd610cbcb1'),
(151, '5c5dd610c7c4c', 'c', '5c5dd610cbcb3'),
(152, '5c5dd610c7c4c', 'd', '5c5dd610cbcb7');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL,
  `qimage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`, `qimage`) VALUES
(4, '5b2f35e7a2c9f', '5b2f36968d9c2', 'What does HTML stand for?', 4, 1, NULL),
(5, '5b2f35e7a2c9f', '5b2f36970587a', 'Who is making the Web standards?', 4, 2, NULL),
(6, '5b2f36d104574', '5b2f3868369a2', 'What does CSS stand for?', 4, 1, NULL),
(7, '5b2f36d104574', '5b2f386889463', 'Which is the correct CSS syntax?', 4, 2, NULL),
(8, '5b2f38a4ae710', '5b2f39e7ab5a0', 'What does PHP stand for?', 4, 1, NULL),
(9, '5b2f38a4ae710', '5b2f39e80368d', 'How do you write \"Hello World\" in PHP?', 4, 2, NULL),
(10, '5b2f38a4ae710', '5b2f39e82ed41', 'All variables in PHP start with which symbol?', 4, 3, NULL),
(11, '5b2f3a5b39e1c', '5b2f3bb0bb581', 'What does SQL stand for?', 4, 1, NULL),
(12, '5b2f3a5b39e1c', '5b2f3bb125651', 'Which SQL statement is used to delete data from a database?', 4, 2, NULL),
(13, '5bbb4fe0e56c6', '5bbb5654e58aa', 'What does HTML stand for?', 4, 1, NULL),
(14, '5bbb4fe0e56c6', '5bbb56554f375', 'Who is making the Web standards?', 4, 2, NULL),
(15, '5bbb4fe0e56c6', '5bbb565582ebd', 'What does CSS stand for?', 4, 3, NULL),
(16, '5bbb4fe0e56c6', '5bbb5655a60d9', 'Which is the correct CSS syntax?', 4, 4, NULL),
(17, '5bbb4fe0e56c6', '5bbb5655cec26', 'What does PHP stand for?', 4, 5, NULL),
(18, '5bbb4fe0e56c6', '5bbb5655e7277', 'How do you write \"Hello World\" in PHP?', 4, 6, NULL),
(19, '5bbb567c6c1ec', '5bbb58acc256b', 'What does CSS stand for?', 4, 1, NULL),
(20, '5bbb567c6c1ec', '5bbb58ad18292', 'Which is the correct CSS syntax?', 4, 2, NULL),
(21, '5bbb567c6c1ec', '5bbb58ad41026', 'What does PHP stand for?', 4, 3, NULL),
(22, '5bbb567c6c1ec', '5bbb58ad615b4', 'How do you write \"Hello World\" in PHP?', 4, 4, NULL),
(23, '5bbb567c6c1ec', '5bbb58ad77166', 'What does HTML stand for?', 4, 5, NULL),
(24, '5bbb567c6c1ec', '5bbb58adaaa02', 'Who is making the Web standards?', 4, 6, NULL),
(25, '5bbb58cff2fdc', '5bbb5a7e3b8a2', 'What does PHP stand for?', 4, 1, NULL),
(26, '5bbb58cff2fdc', '5bbb5a7e9f08c', 'How do you write \"Hello World\" in PHP?', 4, 2, NULL),
(27, '5bbb58cff2fdc', '5bbb5a7ee5be1', 'What does HTML stand for?', 4, 3, NULL),
(28, '5bbb58cff2fdc', '5bbb5a7f1cffd', 'Who is making the Web standards?', 4, 4, NULL),
(29, '5bbb58cff2fdc', '5bbb5a7f50860', 'What does CSS stand for?', 4, 5, NULL),
(30, '5bbb58cff2fdc', '5bbb5a7f6633a', 'Which is the correct CSS syntax?', 4, 6, NULL),
(31, '5c0d76ca8d731', '5c0d773daab1b', 'First Question', 4, 1, NULL),
(32, '5c0d76ca8d731', '5c0d773de62ae', 'Another question', 4, 2, NULL),
(33, '5c0d76ca8d731', '5c0d773e16a92', 'Third question', 4, 3, NULL),
(34, '5c0d76ca8d731', '5c0d773e3b4df', 'This is fourth question', 4, 4, NULL),
(35, '5c0d76ca8d731', '5c0d773e7444b', 'This is fifth question', 4, 5, NULL),
(36, '5c5dd5b1abe20', '5c5dd6107b943', 'This is first question: ans a', 4, 1, '5c5dd6107b943.jpg'),
(37, '5c5dd5b1abe20', '5c5dd610b1605', 'ans b', 4, 2, '5c5dd610b1605.png'),
(38, '5c5dd5b1abe20', '5c5dd610c7c4c', 'ans c', 4, 3, '5c5dd610c7c4c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(2, '5b2f35e7a2c9f', 'Html', 1, 0, 2, 1, '2019-01-30 19:44:02', 'enabled'),
(3, '5b2f36d104574', 'Css', 1, 0, 2, 1, '2019-01-30 20:14:48', 'enabled'),
(4, '5b2f38a4ae710', 'Php', 1, 0, 3, 1, '2018-12-09 22:34:48', 'enabled'),
(5, '5b2f3a5b39e1c', 'Sql', 1, 0, 2, 1, '2018-12-09 19:43:01', 'enabled'),
(6, '5bbb4fe0e56c6', 'Set A', 1, 0, 6, 3, '2018-12-09 17:27:07', 'enabled'),
(7, '5bbb567c6c1ec', 'Set B', 1, 0, 6, 3, '2019-01-30 19:32:57', 'enabled'),
(8, '5bbb58cff2fdc', 'Set C', 1, 0, 6, 3, '2018-12-09 19:42:59', 'enabled'),
(9, '5c0d76ca8d731', 'Test Question', 5, 2, 5, 26, '2018-12-09 22:34:48', 'enabled'),
(13, '5c5dd5b1abe20', 'Vuejs', 2, 1, 3, 50, '2019-02-08 19:18:46', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(3, 'sajib', 5, '2018-12-10 18:04:10'),
(4, 'arif', 19, '2018-12-09 22:29:15'),
(5, 'sakib', 1, '2018-07-05 15:25:38'),
(6, 'mollah', 1, '2018-11-05 12:18:11'),
(8, 'shibbirweb', 21, '2018-12-09 21:36:21'),
(9, 'hira', -5, '2018-12-10 18:37:49'),
(10, 'amin@gmail.com', 15, '2019-01-22 07:15:11'),
(11, 'shimul', 6, '2019-02-08 19:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `status`, `gender`, `username`, `phno`, `password`) VALUES
(10, 'Amin', '12345567', 'CSE', 1, 'M', 'amin@gmail.com', 2020202020, '25d55ad283aa400af464c76d713c07ad'),
(4, 'Arif Hasan', '1307052', 'ECE', 1, 'M', 'arif', 567, '0057666571e72786386d0ccb40f842d1'),
(9, 'Hira', '9999', 'CSE', 1, 'M', 'hira', 12345, '21232f297a57a5a743894a0e4a801fc3'),
(6, 'Sharif Mollah', '1307040', 'ECE', 0, 'M', 'mollah', 123, '0057666571e72786386d0ccb40f842d1'),
(3, 'Sajib', '1307061', 'CSE', 1, 'M', 'sajib', 345, '0057666571e72786386d0ccb40f842d1'),
(5, 'Sakib', '1307045', 'IT', 1, 'M', 'sakib', 678, '0057666571e72786386d0ccb40f842d1'),
(8, 'Shibbir Ahmed', '121', 'CSE', 1, 'M', 'shibbirweb', 1766263681, '21232f297a57a5a743894a0e4a801fc3'),
(11, 'Shimul', '951', 'EEE', 1, 'M', 'shimul', 123456, 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(5, '5b2f51e644266', '5b2f51e66bf88', '5b2f51e66bf88', '5b2f51ca22921', 'sajib'),
(6, '5b2f3868369a2', '5b2f386857c21', '5b2f386857c21', '5b2f36d104574', 'sharif'),
(7, '5b2f386889463', '5b2f3868916ff', '5b2f3868916ff', '5b2f36d104574', 'sharif'),
(8, '5b2f36968d9c2', '5b2f3696beeed', '5b2f3696beefa', '5b2f35e7a2c9f', 'arif'),
(10, '5b2f36970587a', '5b2f36970accf', '5b2f36970accf', '5b2f35e7a2c9f', 'arif'),
(11, '5b2f3bb0bb581', '5b2f3bb0ef5e7', '5b2f3bb0ef5e7', '5b2f3a5b39e1c', 'arif'),
(12, '5b2f3bb125651', '5b2f3bb12afa9', '5b2f3bb12afa9', '5b2f3a5b39e1c', 'arif'),
(13, '5b2f3868369a2', '5b2f386857c21', '5b2f386857c21', '5b2f36d104574', 'arif'),
(14, '5b2f386889463', '5b2f3868916ff', '5b2f3868916ff', '5b2f36d104574', 'arif'),
(15, '5b2f36968d9c2', '5b2f3696beefe', '5b2f3696beefa', '5b2f35e7a2c9f', 'sakib'),
(16, '5b2f3868369a2', '5b2f386857c21', '5b2f386857c21', '5b2f36d104574', 'sakib'),
(17, '5b2f386889463', '5b2f386891701', '5b2f3868916ff', '5b2f36d104574', 'sakib'),
(18, '5b2f3bb125651', '5b2f3bb12afa9', '5b2f3bb12afa9', '5b2f3a5b39e1c', 'mollah'),
(19, '5b2f3bb0bb581', '5b2f3bb0ef5d9', '5b2f3bb0ef5e7', '5b2f3a5b39e1c', 'mollah'),
(20, '5b2f3868369a2', '5b2f386857c21', '5b2f386857c21', '5b2f36d104574', 'sharifa'),
(21, '5b2f3bb0bb581', '5b2f3bb0ef5e7', '5b2f3bb0ef5e7', '5b2f3a5b39e1c', 'sharif'),
(22, '5bbb5a7e3b8a2', '5bbb5a7e56086', '5bbb5a7e56065', '5bbb58cff2fdc', 'mollah'),
(23, '5bbb5a7e9f08c', '5bbb5a7ea9a5a', '5bbb5a7ea9a77', '5bbb58cff2fdc', 'sharif'),
(24, '5bbb5a7ee5be1', '5bbb5a7eedd7b', '5bbb5a7eedd6e', '5bbb58cff2fdc', 'mollah'),
(25, '5bbb58acc256b', '5bbb58acd7acc', '5bbb58acd7acb', '5bbb567c6c1ec', 'mollah'),
(26, '5bbb58ad18292', '5bbb58ad1db3c', '5bbb58ad1db3f', '5bbb567c6c1ec', 'mollah'),
(27, '5bbb58acc256b', '5bbb58acd7acb', '5bbb58acd7acb', '5bbb567c6c1ec', 'sharif'),
(28, '5b2f3868369a2', '5b2f386857c21', '5b2f386857c21', '5b2f36d104574', 'shibbirweb'),
(29, '5b2f386889463', '5b2f3868916ff', '5b2f3868916ff', '5b2f36d104574', 'shibbirweb'),
(30, '5c056e0e65db1', '5c056e0e6f76a', '5c056e0e6f76a', '5c056b9a5eac6', 'shibbirweb'),
(31, '5bbb5654e58aa', '5bbb565510f55', '5bbb565510f55', '5bbb4fe0e56c6', 'shibbirweb'),
(32, '5bbb56554f375', '5bbb565552177', '5bbb565552177', '5bbb4fe0e56c6', 'shibbirweb'),
(33, '5bbb565582ebd', '5bbb565590837', '5bbb56559082a', '5bbb4fe0e56c6', 'shibbirweb'),
(34, '5bbb5655a60d9', '5bbb5655ae5ac', '5bbb5655ae5ac', '5bbb4fe0e56c6', 'shibbirweb'),
(35, '5bbb5655cec26', '5bbb5655d19f6', '5bbb5655d19f6', '5bbb4fe0e56c6', 'shibbirweb'),
(36, '5bbb5655e7277', '5bbb5655ef91c', '5bbb5655ef91c', '5bbb4fe0e56c6', 'shibbirweb'),
(37, '5b2f39e7ab5a0', '5b2f39e7cd385', '5b2f39e7cd389', '5b2f38a4ae710', 'shibbirweb'),
(38, '5b2f39e80368d', '5b2f39e80e195', '5b2f39e80e195', '5b2f38a4ae710', 'shibbirweb'),
(39, '5b2f39e82ed41', '5b2f39e836f79', '5b2f39e836f79', '5b2f38a4ae710', 'shibbirweb'),
(40, '5b2f3bb0bb581', '5b2f3bb0ef5e7', '5b2f3bb0ef5e7', '5b2f3a5b39e1c', 'shibbirweb'),
(41, '5b2f3bb125651', '5b2f3bb12afa9', '5b2f3bb12afa9', '5b2f3a5b39e1c', 'shibbirweb'),
(46, '5c0d773daab1b', '5c0d773dc1764', '5c0d773dc1764', '5c0d76ca8d731', 'arif'),
(47, '5c0d773de62ae', '5c0d773dec2b3', '5c0d773dec2b2', '5c0d76ca8d731', 'arif'),
(48, '5c0d773e16a92', '5c0d773e1cabe', '5c0d773e1cabb', '5c0d76ca8d731', 'arif'),
(49, '5c0d773e3b4df', '5c0d773e414dd', '5c0d773e414dd', '5c0d76ca8d731', 'arif'),
(50, '5c0d773e7444b', '5c0d773e8063b', '5c0d773e8063b', '5c0d76ca8d731', 'arif'),
(51, '5bbb5a7e3b8a2', '5bbb5a7e5608c', '5bbb5a7e56065', '5bbb58cff2fdc', 'arif'),
(52, '5bbb5a7e9f08c', '5bbb5a7ea9a77', '5bbb5a7ea9a77', '5bbb58cff2fdc', 'arif'),
(53, '5bbb5a7ee5be1', '5bbb5a7eedd83', '5bbb5a7eedd6e', '5bbb58cff2fdc', 'arif'),
(54, '5bbb5a7f1cffd', '5bbb5a7f2500d', '5bbb5a7f24ffa', '5bbb58cff2fdc', 'arif'),
(55, '5bbb5a7f50860', '5bbb5a7f587d6', '5bbb5a7f587d3', '5bbb58cff2fdc', 'arif'),
(56, '5bbb5a7f6633a', '5bbb5a7f6b924', '5bbb5a7f6b922', '5bbb58cff2fdc', 'arif'),
(57, '5bbb58acc256b', '5bbb58acd7ace', '5bbb58acd7acb', '5bbb567c6c1ec', 'arif'),
(58, '5bbb58ad18292', '5bbb58ad1db3c', '5bbb58ad1db3f', '5bbb567c6c1ec', 'arif'),
(59, '5bbb58ad41026', '5bbb58ad465f4', '5bbb58ad465e8', '5bbb567c6c1ec', 'arif'),
(60, '5bbb58ad615b4', '5bbb58ad6436c', '5bbb58ad6436e', '5bbb567c6c1ec', 'arif'),
(61, '5bbb58ad77166', '5bbb58ad79f27', '5bbb58ad79f19', '5bbb567c6c1ec', 'arif'),
(62, '5bbb58adaaa02', '5bbb58adb2fc6', '5bbb58adb2fbf', '5bbb567c6c1ec', 'arif'),
(63, '5bbb5654e58aa', '5bbb565510f82', '5bbb565510f55', '5bbb4fe0e56c6', 'arif'),
(64, '5bbb56554f375', '5bbb565552177', '5bbb565552177', '5bbb4fe0e56c6', 'arif'),
(65, '5bbb565582ebd', '5bbb565590837', '5bbb56559082a', '5bbb4fe0e56c6', 'arif'),
(66, '5bbb5655a60d9', '5bbb5655ae5ac', '5bbb5655ae5ac', '5bbb4fe0e56c6', 'arif'),
(67, '5bbb5655cec26', '5bbb5655d1a16', '5bbb5655d19f6', '5bbb4fe0e56c6', 'arif'),
(68, '5bbb5654e58aa', '5bbb565510f76', '5bbb565510f55', '5bbb4fe0e56c6', 'sajib'),
(69, '5bbb56554f375', '5bbb565552177', '5bbb565552177', '5bbb4fe0e56c6', 'sajib'),
(70, '5bbb565582ebd', '5bbb565590837', '5bbb56559082a', '5bbb4fe0e56c6', 'sajib'),
(71, '5bbb5655a60d9', '5bbb5655ae5ac', '5bbb5655ae5ac', '5bbb4fe0e56c6', 'sajib'),
(72, '5bbb5655cec26', '5bbb5655d19f6', '5bbb5655d19f6', '5bbb4fe0e56c6', 'sajib'),
(73, '5bbb5655e7277', '5bbb5655ef91c', '5bbb5655ef91c', '5bbb4fe0e56c6', 'sajib'),
(74, '5bbb5a7e3b8a2', '5bbb5a7e56065', '5bbb5a7e56065', '5bbb58cff2fdc', 'sajib'),
(75, '5bbb5a7e9f08c', '5bbb5a7ea9a71', '5bbb5a7ea9a77', '5bbb58cff2fdc', 'sajib'),
(76, '5bbb58acc256b', '5bbb58acd7acb', '5bbb58acd7acb', '5bbb567c6c1ec', 'sajib'),
(77, '5bbb58ad18292', '5bbb58ad1db3c', '5bbb58ad1db3f', '5bbb567c6c1ec', 'sajib'),
(78, '5bbb58ad41026', '5bbb58ad465e8', '5bbb58ad465e8', '5bbb567c6c1ec', 'sajib'),
(79, '5bbb58ad615b4', '5bbb58ad6436e', '5bbb58ad6436e', '5bbb567c6c1ec', 'sajib'),
(80, '5bbb58ad77166', '5bbb58ad79f27', '5bbb58ad79f19', '5bbb567c6c1ec', 'sajib'),
(81, '5c0d773daab1b', '5c0d773dc1766', '5c0d773dc1764', '5c0d76ca8d731', 'sajib'),
(82, '5c0d773de62ae', '5c0d773dec2b3', '5c0d773dec2b2', '5c0d76ca8d731', 'sajib'),
(83, '5c0d773e16a92', '5c0d773e1cabc', '5c0d773e1cabb', '5c0d76ca8d731', 'sajib'),
(84, '5c0d773e3b4df', '5c0d773e414db', '5c0d773e414dd', '5c0d76ca8d731', 'sajib'),
(85, '5b2f36968d9c2', '5b2f3696beefa', '5b2f3696beefa', '5b2f35e7a2c9f', 'hira'),
(86, '5b2f3868369a2', '5b2f386857c2e', '5b2f386857c21', '5b2f36d104574', 'hira'),
(87, '5c0d773de62ae', '5c0d773dec2b3', '5c0d773dec2b2', '5c0d76ca8d731', 'hira'),
(88, '5c0d773daab1b', '5c0d773dc1766', '5c0d773dc1764', '5c0d76ca8d731', 'hira'),
(89, '5c0d773e16a92', '5c0d773e1cabc', '5c0d773e1cabb', '5c0d76ca8d731', 'hira'),
(90, '5c0d773e3b4df', '5c0d773e414db', '5c0d773e414dd', '5c0d76ca8d731', 'hira'),
(91, '5b2f39e7ab5a0', '5b2f39e7cd38c', '5b2f39e7cd389', '5b2f38a4ae710', 'hira'),
(92, '5b2f39e80368d', '5b2f39e80e195', '5b2f39e80e195', '5b2f38a4ae710', 'hira'),
(93, '5bbb5a7e3b8a2', '5bbb5a7e56086', '5bbb5a7e56065', '5bbb58cff2fdc', 'hira'),
(94, '5bbb5a7e9f08c', '5bbb5a7ea9a77', '5bbb5a7ea9a77', '5bbb58cff2fdc', 'hira'),
(95, '5c0d773daab1b', '5c0d773dc1764', '5c0d773dc1764', '5c0d76ca8d731', 'amin@gmail.com'),
(96, '5c0d773de62ae', '5c0d773dec2b2', '5c0d773dec2b2', '5c0d76ca8d731', 'amin@gmail.com'),
(97, '5c0d773e3b4df', '5c0d773e414dd', '5c0d773e414dd', '5c0d76ca8d731', 'amin@gmail.com'),
(98, '5b2f3868369a2', '5b2f386857c21', '5b2f386857c21', '5b2f36d104574', 'shimul'),
(99, '5b2f36968d9c2', '5b2f3696beefa', '5b2f3696beefa', '5b2f35e7a2c9f', 'shimul'),
(100, '5c0d773daab1b', '5c0d773dc1766', '5c0d773dc1764', '5c0d76ca8d731', 'shimul'),
(101, '5c0d773de62ae', '5c0d773dec2b2', '5c0d773dec2b2', '5c0d76ca8d731', 'shimul'),
(102, '5c0d773e16a92', '5c0d773e1cabc', '5c0d773e1cabb', '5c0d76ca8d731', 'shimul'),
(103, '5c0d773e3b4df', '5c0d773e414db', '5c0d773e414dd', '5c0d76ca8d731', 'shimul'),
(104, '5c5dd6107b943', '5c5dd61090b83', '5c5dd61090b83', '5c5dd5b1abe20', 'shimul'),
(105, '5c5dd610b1605', '5c5dd610b557a', '5c5dd610b557a', '5c5dd5b1abe20', 'shimul'),
(106, '5c5ddce96e516', '5c5ddce980aa9', '5c5ddce980aa9', '5c5ddca1de46d', 'shimul'),
(107, '5c5ddce9bedea', '5c5ddce9c2dd4', '5c5ddce9c2dd3', '5c5ddca1de46d', 'shimul');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `online`
--
ALTER TABLE `online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
