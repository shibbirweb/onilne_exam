-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2018 at 05:08 AM
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
(1, 'sharif', 'sh164211');

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
(30, '5bbb5a7f6633a', '5bbb5a7f6b922');

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
(2, 'sharif', '5b2f35e7a2c9f', 0, 0, 0, 0, '2018-06-24 06:41:21', 1529822422, 'finished', 'true'),
(3, 'sharif', '5b2f38a4ae710', 0, 2, 0, 0, '2018-06-24 06:42:44', 1529822502, 'finished', 'true'),
(4, 'sajib', '5b2f3a5b39e1c', 0, 0, 0, 0, '2018-06-24 06:49:45', 1529822964, 'finished', 'true'),
(5, 'sajib', '5b2f35e7a2c9f', 0, 0, 0, 0, '2018-06-24 07:53:51', 1529826770, 'finished', 'true'),
(6, 'sajib', '5b2f36d104574', 0, 0, 0, 0, '2018-06-24 08:03:30', 1529827392, 'finished', 'true'),
(7, 'sajib', '5b2f38a4ae710', 0, 0, 0, 0, '2018-06-24 08:05:22', 1529827456, 'finished', 'true'),
(10, 'sharif', '5b2f36d104574', 2, 2, 2, 0, '2018-06-25 10:22:51', 1529922110, 'finished', 'true'),
(12, 'arif', '5b2f35e7a2c9f', 1, 2, 1, 1, '2018-06-25 10:32:15', 1529922674, 'finished', 'true'),
(13, 'arif', '5b2f3a5b39e1c', 2, 2, 2, 0, '2018-06-25 10:33:25', 1529922765, 'finished', 'true'),
(14, 'arif', '5b2f36d104574', 2, 2, 2, 0, '2018-06-25 10:34:03', 1529922816, 'finished', 'true'),
(15, 'arif', '5b2f38a4ae710', 0, 0, 0, 0, '2018-06-25 12:00:08', 1529927946, 'finished', 'true'),
(16, 'sakib', '5b2f35e7a2c9f', 0, 1, 0, 1, '2018-06-26 02:07:20', 1529978778, 'finished', 'true'),
(17, 'sakib', '5b2f36d104574', 1, 2, 1, 1, '2018-06-26 02:09:50', 1529978929, 'finished', 'true'),
(18, 'sakib', '5b2f3a5b39e1c', 0, 0, 0, 0, '2018-07-05 15:25:38', 1530804277, 'finished', 'true'),
(19, 'mollah', '5b2f3a5b39e1c', 1, 1, 1, 1, '2018-09-08 13:28:07', 1536413227, 'finished', 'true'),
(20, 'sharifa', '5b2f36d104574', 1, 1, 1, 0, '2018-09-09 13:10:57', 1536498595, 'finished', 'true'),
(21, 'sharifa', '5b2f35e7a2c9f', 0, 0, 0, 0, '2018-09-10 04:55:22', 1536555261, 'finished', 'true'),
(22, 'sharifa', '5b2f3a5b39e1c', 0, 0, 0, 0, '2018-09-18 04:33:25', 1537245144, 'finished', 'true'),
(23, 'sharif', '5b2f3a5b39e1c', 1, 1, 1, 0, '2018-09-18 04:33:48', 1537245166, 'finished', 'true'),
(24, 'mollah', '5bbb58cff2fdc', 0, 3, 0, 2, '2018-10-09 04:34:01', 1539059459, 'finished', 'true'),
(25, 'sharif', '5bbb58cff2fdc', 0, 2, 0, 1, '2018-12-03 17:27:54', 1539059489, 'finished', 'true'),
(26, 'mollah', '5bbb567c6c1ec', 0, 1, 0, 2, '2018-11-05 12:18:11', 1541420109, 'finished', 'true'),
(27, 'sharif', '5bbb567c6c1ec', 1, 1, 1, 0, '2018-12-03 17:19:22', 1543857477, 'finished', 'true'),
(28, 'shibbirweb', '5b2f36d104574', 2, 2, 2, 0, '2018-12-03 21:03:56', 1543870990, 'finished', 'true'),
(30, 'shibbirweb', '5bbb4fe0e56c6', 5, 6, 5, 1, '2018-12-04 05:21:42', 1543900713, 'finished', 'true'),
(31, 'shibbirweb', '5b2f38a4ae710', 2, 3, 2, 1, '2018-12-04 20:49:41', 1543956534, 'finished', 'true');

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
(2, 8, '2018-12-05 03:32:23'),
(3, 3, '2018-12-04 12:55:24'),
(4, 4, '2018-12-05 01:24:05'),
(5, 9, '2018-12-05 02:23:38');

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
(120, '5bbb5a7f6633a', 'body:color=black;', '5bbb5a7f6b924');

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
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(4, '5b2f35e7a2c9f', '5b2f36968d9c2', 'What does HTML stand for?', 4, 1),
(5, '5b2f35e7a2c9f', '5b2f36970587a', 'Who is making the Web standards?', 4, 2),
(6, '5b2f36d104574', '5b2f3868369a2', 'What does CSS stand for?', 4, 1),
(7, '5b2f36d104574', '5b2f386889463', 'Which is the correct CSS syntax?', 4, 2),
(8, '5b2f38a4ae710', '5b2f39e7ab5a0', 'What does PHP stand for?', 4, 1),
(9, '5b2f38a4ae710', '5b2f39e80368d', 'How do you write \"Hello World\" in PHP?', 4, 2),
(10, '5b2f38a4ae710', '5b2f39e82ed41', 'All variables in PHP start with which symbol?', 4, 3),
(11, '5b2f3a5b39e1c', '5b2f3bb0bb581', 'What does SQL stand for?', 4, 1),
(12, '5b2f3a5b39e1c', '5b2f3bb125651', 'Which SQL statement is used to delete data from a database?', 4, 2),
(13, '5bbb4fe0e56c6', '5bbb5654e58aa', 'What does HTML stand for?', 4, 1),
(14, '5bbb4fe0e56c6', '5bbb56554f375', 'Who is making the Web standards?', 4, 2),
(15, '5bbb4fe0e56c6', '5bbb565582ebd', 'What does CSS stand for?', 4, 3),
(16, '5bbb4fe0e56c6', '5bbb5655a60d9', 'Which is the correct CSS syntax?', 4, 4),
(17, '5bbb4fe0e56c6', '5bbb5655cec26', 'What does PHP stand for?', 4, 5),
(18, '5bbb4fe0e56c6', '5bbb5655e7277', 'How do you write \"Hello World\" in PHP?', 4, 6),
(19, '5bbb567c6c1ec', '5bbb58acc256b', 'What does CSS stand for?', 4, 1),
(20, '5bbb567c6c1ec', '5bbb58ad18292', 'Which is the correct CSS syntax?', 4, 2),
(21, '5bbb567c6c1ec', '5bbb58ad41026', 'What does PHP stand for?', 4, 3),
(22, '5bbb567c6c1ec', '5bbb58ad615b4', 'How do you write \"Hello World\" in PHP?', 4, 4),
(23, '5bbb567c6c1ec', '5bbb58ad77166', 'What does HTML stand for?', 4, 5),
(24, '5bbb567c6c1ec', '5bbb58adaaa02', 'Who is making the Web standards?', 4, 6),
(25, '5bbb58cff2fdc', '5bbb5a7e3b8a2', 'What does PHP stand for?', 4, 1),
(26, '5bbb58cff2fdc', '5bbb5a7e9f08c', 'How do you write \"Hello World\" in PHP?', 4, 2),
(27, '5bbb58cff2fdc', '5bbb5a7ee5be1', 'What does HTML stand for?', 4, 3),
(28, '5bbb58cff2fdc', '5bbb5a7f1cffd', 'Who is making the Web standards?', 4, 4),
(29, '5bbb58cff2fdc', '5bbb5a7f50860', 'What does CSS stand for?', 4, 5),
(30, '5bbb58cff2fdc', '5bbb5a7f6633a', 'Which is the correct CSS syntax?', 4, 6);

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
(2, '5b2f35e7a2c9f', 'Html', 1, 0, 2, 1, '2018-10-09 04:19:52', 'disabled'),
(3, '5b2f36d104574', 'Css', 1, 0, 2, 1, '2018-12-03 21:02:39', 'enabled'),
(4, '5b2f38a4ae710', 'Php', 1, 0, 3, 1, '2018-12-03 21:02:32', 'enabled'),
(5, '5b2f3a5b39e1c', 'Sql', 1, 0, 2, 1, '2018-10-09 04:19:54', 'disabled'),
(6, '5bbb4fe0e56c6', 'Set A', 1, 0, 6, 3, '2018-12-03 21:02:34', 'enabled'),
(7, '5bbb567c6c1ec', 'Set B', 1, 0, 6, 3, '2018-12-03 21:02:30', 'enabled'),
(8, '5bbb58cff2fdc', 'Set C', 1, 0, 6, 3, '2018-12-03 21:02:31', 'enabled');

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
(2, 'sharif', 4, '2018-12-03 17:27:54'),
(3, 'sajib', 5, '2018-06-24 08:10:55'),
(4, 'arif', 5, '2018-06-25 12:00:08'),
(5, 'sakib', 1, '2018-07-05 15:25:38'),
(6, 'mollah', 1, '2018-11-05 12:18:11'),
(7, 'sharifa', 1, '2018-09-18 04:33:25'),
(8, 'shibbirweb', 19, '2018-12-04 20:49:41');

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
(4, 'Arif Hasan', '1307052', 'ECE', 1, 'M', 'arif', 567, '0057666571e72786386d0ccb40f842d1'),
(6, 'Sharif Mollah', '1307040', 'ECE', 1, 'M', 'mollah', 123, '0057666571e72786386d0ccb40f842d1'),
(9, 'Rizwan Ahemd', '111', 'EEE', 1, 'M', 'rizwan', 121, '21232f297a57a5a743894a0e4a801fc3'),
(3, 'Sajib', '1307061', 'CSE', 1, 'M', 'sajib', 345, '0057666571e72786386d0ccb40f842d1'),
(5, 'Sakib', '1307045', 'IT', 1, 'M', 'sakib', 678, '0057666571e72786386d0ccb40f842d1'),
(2, 'Sharif Hossain', '1307050', 'CSE', 1, 'M', 'sharif', 123, '0057666571e72786386d0ccb40f842d1'),
(7, 'Sharifa', '1307041', 'IMSC', 1, 'F', 'sharifa', 123, '0057666571e72786386d0ccb40f842d1'),
(8, 'Shibbir Ahmed', '121', 'CSE', 0, 'M', 'shibbirweb', 1766263681, '21232f297a57a5a743894a0e4a801fc3');

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
(39, '5b2f39e82ed41', '5b2f39e836f79', '5b2f39e836f79', '5b2f38a4ae710', 'shibbirweb');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `online`
--
ALTER TABLE `online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
