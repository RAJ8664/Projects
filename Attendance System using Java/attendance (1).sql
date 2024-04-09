-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2022 at 07:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `std_attend`
--

CREATE TABLE `std_attend` (
  `attend_date` date DEFAULT NULL,
  `std_id` int(11) DEFAULT NULL,
  `std_name` longtext DEFAULT NULL,
  `std_batch_code` longtext DEFAULT NULL,
  `std_book` longtext DEFAULT NULL,
  `std_book_session` longtext DEFAULT NULL,
  `std_status` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `std_attend`
--

INSERT INTO `std_attend` (`attend_date`, `std_id`, `std_name`, `std_batch_code`, `std_book`, `std_book_session`, `std_status`) VALUES
('2016-01-02', 1122, 'Basma', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 01', 'Present'),
('2016-01-02', 1123, 'Batool', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 01', 'Absent'),
('2016-01-02', 1124, 'Faiza', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 01', 'Present'),
('2016-01-02', 1125, 'Hafsa', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 01', 'Absent'),
('2016-01-02', 1126, 'Jawad', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 01', 'Absent'),
('2016-01-02', 1127, 'Khalid', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 01', 'Present'),
('2016-01-02', 1128, 'Munib', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 01', 'Present'),
('2016-01-05', 1122, 'Basma', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 03', 'Absent'),
('2016-01-05', 1123, 'Batool', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 03', 'Absent'),
('2016-01-05', 1124, 'Faiza', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 03', 'Present'),
('2016-01-05', 1125, 'Hafsa', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 03', 'Present'),
('2016-01-05', 1126, 'Jawad', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 03', 'Present'),
('2016-01-05', 1127, 'Khalid', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 03', 'Present'),
('2016-01-05', 1128, 'Munib', 'IPRO-201601B', 'Working with Cloud Computing', 'Session 03', 'Present'),
('2016-01-07', 1122, 'Basma', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 01', 'Present'),
('2016-01-07', 1123, 'Batool', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 01', 'Absent'),
('2016-01-07', 1124, 'Faiza', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 01', 'Absent'),
('2016-01-07', 1125, 'Hafsa', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 01', 'Absent'),
('2016-01-07', 1126, 'Jawad', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 01', 'Present'),
('2016-01-07', 1127, 'Khalid', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 01', 'Present'),
('2016-01-07', 1128, 'Munib', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 01', 'Present'),
('2016-01-09', 1122, 'Basma', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 03', 'Present'),
('2016-01-09', 1123, 'Batool', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 03', 'Absent'),
('2016-01-09', 1124, 'Faiza', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 03', 'Present'),
('2016-01-09', 1125, 'Hafsa', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 03', 'Absent'),
('2016-01-09', 1126, 'Jawad', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 03', 'Absent'),
('2016-01-09', 1127, 'Khalid', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 03', 'Present'),
('2016-01-09', 1128, 'Munib', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 03', 'Present'),
('2016-01-12', 1122, 'Basma', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 05', 'Present'),
('2016-01-12', 1123, 'Batool', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 05', 'Present'),
('2016-01-12', 1124, 'Faiza', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 05', 'Present'),
('2016-01-12', 1125, 'Hafsa', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 05', 'Present'),
('2016-01-12', 1126, 'Jawad', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 05', 'Present'),
('2016-01-12', 1127, 'Khalid', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 05', 'Present'),
('2016-01-12', 1128, 'Munib', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 05', 'Present'),
('2016-01-14', 1122, 'Basma', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 07', 'Absent'),
('2016-01-14', 1123, 'Batool', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 07', 'Absent'),
('2016-01-14', 1124, 'Faiza', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 07', 'Absent'),
('2016-01-14', 1125, 'Hafsa', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 07', 'Present'),
('2016-01-14', 1126, 'Jawad', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 07', 'Present'),
('2016-01-14', 1127, 'Khalid', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 07', 'Present'),
('2016-01-14', 1128, 'Munib', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 07', 'Present'),
('2016-01-16', 1122, 'Basma', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 09', 'Present'),
('2016-01-16', 1123, 'Batool', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 09', 'Present'),
('2016-01-16', 1124, 'Faiza', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 09', 'Present'),
('2016-01-16', 1125, 'Hafsa', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 09', 'Present'),
('2016-01-16', 1126, 'Jawad', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 09', 'Present'),
('2016-01-16', 1127, 'Khalid', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 09', 'Absent'),
('2016-01-16', 1128, 'Munib', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 09', 'Present'),
('2016-01-19', 1122, 'Basma', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 11', 'Absent'),
('2016-01-19', 1123, 'Batool', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 11', 'Absent'),
('2016-01-19', 1124, 'Faiza', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 11', 'Present'),
('2016-01-19', 1125, 'Hafsa', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 11', 'Absent'),
('2016-01-19', 1126, 'Jawad', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 11', 'Present'),
('2016-01-19', 1127, 'Khalid', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 11', 'Present'),
('2016-01-19', 1128, 'Munib', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 11', 'Present'),
('2016-01-21', 1122, 'Basma', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 13', 'Absent'),
('2016-01-21', 1123, 'Batool', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 13', 'Present'),
('2016-01-21', 1124, 'Faiza', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 13', 'Present'),
('2016-01-21', 1125, 'Hafsa', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 13', 'Absent'),
('2016-01-21', 1126, 'Jawad', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 13', 'Absent'),
('2016-01-21', 1127, 'Khalid', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 13', 'Present'),
('2016-01-21', 1128, 'Munib', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 13', 'Present'),
('2016-01-23', 1122, 'Basma', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 14', 'Absent'),
('2016-01-23', 1123, 'Batool', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 14', 'Present'),
('2016-01-23', 1124, 'Faiza', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 14', 'Absent'),
('2016-01-23', 1125, 'Hafsa', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 14', 'Absent'),
('2016-01-23', 1126, 'Jawad', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 14', 'Present'),
('2016-01-23', 1127, 'Khalid', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 14', 'Present'),
('2016-01-23', 1128, 'Munib', 'IPRO-201601B', 'Integrating Databases in Web Application using ADO.NET', 'Session 14', 'Present'),
('2016-01-26', 1122, 'Basma', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 01', 'Present'),
('2016-01-26', 1123, 'Batool', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 01', 'Present'),
('2016-01-26', 1124, 'Faiza', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 01', 'Absent'),
('2016-01-26', 1125, 'Hafsa', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 01', 'Absent'),
('2016-01-26', 1126, 'Jawad', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 01', 'Absent'),
('2016-01-26', 1127, 'Khalid', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 01', 'Present'),
('2016-01-26', 1128, 'Munib', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 01', 'Present'),
('2016-01-28', 1122, 'Basma', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 02', 'Absent'),
('2016-01-28', 1123, 'Batool', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 02', 'Present'),
('2016-01-28', 1124, 'Faiza', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 02', 'Present'),
('2016-01-28', 1125, 'Hafsa', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 02', 'Present'),
('2016-01-28', 1126, 'Jawad', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 02', 'Present'),
('2016-01-28', 1127, 'Khalid', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 02', 'Absent'),
('2016-01-28', 1128, 'Munib', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 02', 'Present'),
('2016-01-30', 1122, 'Basma', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 04', 'Absent'),
('2016-01-30', 1123, 'Batool', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 04', 'Absent'),
('2016-01-30', 1124, 'Faiza', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 04', 'Present'),
('2016-01-30', 1125, 'Hafsa', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 04', 'Absent'),
('2016-01-30', 1126, 'Jawad', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 04', 'Present'),
('2016-01-30', 1127, 'Khalid', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 04', 'Present'),
('2016-01-30', 1128, 'Munib', 'IPRO-201601B', 'Essential Features of .NET Framework', 'Session 04', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_name`, `admin_pass`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_batch`
--

CREATE TABLE `tbl_batch` (
  `batch_code` varchar(50) NOT NULL,
  `batch_days` longtext DEFAULT NULL,
  `batch_time` longtext DEFAULT NULL,
  `semester_name` longtext DEFAULT NULL,
  `batch_book` longtext DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_name` longtext DEFAULT NULL,
  `added_on` date DEFAULT NULL,
  `batch_status` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_batch`
--

INSERT INTO `tbl_batch` (`batch_code`, `batch_days`, `batch_time`, `semester_name`, `batch_book`, `teacher_id`, `teacher_name`, `added_on`, `batch_status`) VALUES
('IPRO-201501K', 'MWF', '3-5', 'CPISM', 'Microsoft Office 2010 A Modern Approach', 10005, 'Sir Ahmed', '2016-01-01', 'false'),
('IPRO-201504D', 'MWF', '3-5', 'HDSE-II', 'Working with Liunx Operating System', 10004, 'Sir Farooq', '2016-01-01', 'true'),
('IPRO-201505E', 'MWF', '11-1', 'DISM', 'Fundamentals of Java', 10002, 'Sir Ashar', '2015-10-01', 'true'),
('IPRO-201506F', 'MWF', '1-3', 'CPISM', 'Data Management using SQL Server', 10003, 'Sir Sohail', '2016-01-02', 'true'),
('IPRO-201508H', 'TTS', '9-11', 'ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 10004, 'Sir Farooq', '2015-02-01', 'true'),
('IPRO-201601B', 'TTS', '11-1', 'ADSE-II', 'Working with Cloud Computing', 10002, 'Sir Ashar', '2015-01-01', 'true'),
('IPRO-201602C', 'TTS', '9-11', 'CPISM', 'HTML5 - NexTGen Web ', 10001, 'Sir Ali', '2015-11-01', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `semester_name` varchar(30) DEFAULT NULL,
  `semester_book` longtext DEFAULT NULL,
  `std_book_session` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`semester_name`, `semester_book`, `std_book_session`) VALUES
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 01'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 02'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 03'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 04'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 05'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 06'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 07'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 08'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 09'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 10'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 11'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 12'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 13'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 14'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Concept Session 15'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 01'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 02'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 03'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 04'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 05'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 06'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 07'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 08'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 09'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 10'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 11'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 12'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 13'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 14'),
('CPISM', 'Microsoft Office 2010 A Modern Approach', 'Lab Session 15'),
('CPISM', 'Designing Websites in Dreamweaver CS5 ', 'Session 01'),
('CPISM', 'Designing Websites in Dreamweaver CS5 ', 'Session 02'),
('CPISM', 'Designing Websites in Dreamweaver CS5 ', 'Session 03'),
('CPISM', 'Designing Websites in Dreamweaver CS5 ', 'Session 04'),
('CPISM', 'Designing Websites in Dreamweaver CS5 ', 'Session 05'),
('CPISM', 'Designing Websites in Dreamweaver CS5 ', 'Session 06'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 01'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 02'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 03'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 04'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 05'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 06'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 07'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 08'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 09'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 10'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 11'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 12'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 13'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 14'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 15'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 16'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 17'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 18'),
('CPISM', 'HTML5 - NexTGen Web ', 'Session 19'),
('CPISM', 'Data Management using SQL Server ', 'Session 01'),
('CPISM', 'Data Management using SQL Server ', 'Session 02'),
('CPISM', 'Data Management using SQL Server ', 'Session 03'),
('CPISM', 'Data Management using SQL Server ', 'Session 04'),
('CPISM', 'Data Management using SQL Server ', 'Session 05'),
('CPISM', 'Data Management using SQL Server ', 'Session 06'),
('CPISM', 'Data Management using SQL Server ', 'Session 07'),
('CPISM', 'Data Management using SQL Server ', 'Session 08'),
('CPISM', 'Data Management using SQL Server ', 'Session 09'),
('CPISM', 'Data Management using SQL Server ', 'Session 10'),
('CPISM', 'Data Management using SQL Server ', 'Session 11'),
('CPISM', 'Data Management using SQL Server ', 'Session 12'),
('CPISM', 'Data Management using SQL Server ', 'Session 13'),
('CPISM', 'Data Management using SQL Server ', 'Session 14'),
('CPISM', 'Data Management using SQL Server ', 'Session 15'),
('CPISM', 'Elementary Programming with C  ', 'Concepts Session 01'),
('CPISM', 'Elementary Programming with C  ', 'Concepts Session 02'),
('CPISM', 'Elementary Programming with C  ', 'Lab Session 03'),
('CPISM', 'Elementary Programming with C  ', 'Concepts Session 04'),
('CPISM', 'Elementary Programming with C  ', 'Lab Session 05'),
('CPISM', 'Elementary Programming with C  ', 'Concepts Session 06'),
('CPISM', 'Elementary Programming with C  ', 'Lab Session 07'),
('CPISM', 'Elementary Programming with C  ', 'Concepts Session 08'),
('CPISM', 'Elementary Programming with C  ', 'Lab Session 09'),
('CPISM', 'Elementary Programming with C  ', 'Concepts Session 10'),
('CPISM', 'Elementary Programming with C  ', 'Lab Session 11'),
('CPISM', 'Elementary Programming with C  ', 'Concepts Session 12'),
('CPISM', 'Elementary Programming with C  ', 'Lab Session 13'),
('CPISM', 'Elementary Programming with C  ', 'Concepts Session 14'),
('CPISM', 'Elementary Programming with C  ', 'Lab Session 15'),
('CPISM', 'Elementary Programming with C  ', 'Concepts Session 16'),
('CPISM', 'Elementary Programming with C  ', 'Lab Session 17'),
('CPISM', 'Elementary Programming with C  ', 'Concepts Session 18'),
('CPISM', 'Elementary Programming with C  ', 'Lab Session 19'),
('CPISM', 'Elementary Programming with C  ', 'Concepts Session 20'),
('CPISM', 'Elementary Programming with C  ', 'Lab Session 21'),
('DISM', 'XML Simplified', 'Session 01'),
('DISM', 'XML Simplified', 'Session 02'),
('DISM', 'XML Simplified', 'Session 03'),
('DISM', 'XML Simplified', 'Session 04'),
('DISM', 'XML Simplified', 'Session 05'),
('DISM', 'XML Simplified', 'Session 06'),
('DISM', 'XML Simplified', 'Session 07'),
('DISM', 'Fundamentals of Java', 'Session 01'),
('DISM', 'Fundamentals of Java', 'Session 02'),
('DISM', 'Fundamentals of Java', 'Session 03'),
('DISM', 'Fundamentals of Java', 'Session 04'),
('DISM', 'Fundamentals of Java', 'Session 05'),
('DISM', 'Fundamentals of Java', 'Session 06'),
('DISM', 'Fundamentals of Java', 'Session 07'),
('DISM', 'Fundamentals of Java', 'Session 08'),
('DISM', 'Fundamentals of Java', 'Session 09'),
('DISM', 'Fundamentals of Java', 'Session 10'),
('DISM', 'Fundamentals of Java', 'Session 11'),
('DISM', 'Fundamentals of Java', 'Session 12'),
('DISM', 'Object-oriented Programming in Java', 'Session 01'),
('DISM', 'Object-oriented Programming in Java', 'Session 02'),
('DISM', 'Object-oriented Programming in Java', 'Session 03'),
('DISM', 'Object-oriented Programming in Java', 'Session 04'),
('DISM', 'Object-oriented Programming in Java', 'Session 05'),
('DISM', 'Object-oriented Programming in Java', 'Session 06'),
('DISM', 'Object-oriented Programming in Java', 'Session 07'),
('DISM', 'Object-oriented Programming in Java', 'Session 08'),
('DISM', 'Object-oriented Programming in Java', 'Session 09'),
('DISM', 'Object-oriented Programming in Java', 'Session 10'),
('DISM', 'Object-oriented Programming in Java', 'Session 11'),
('DISM', 'Object-oriented Programming in Java', 'Session 12'),
('DISM', 'Building Applications in C#', 'Session 01'),
('DISM', 'Building Applications in C#', 'Session 02'),
('DISM', 'Building Applications in C#', 'Session 03'),
('DISM', 'Building Applications in C#', 'Session 04'),
('DISM', 'Building Applications in C#', 'Session 05'),
('DISM', 'Building Applications in C#', 'Session 06'),
('DISM', 'Building Applications in C#', 'Session 07'),
('DISM', 'Building Applications in C#', 'Session 08'),
('DISM', 'Building Applications in C#', 'Session 09'),
('DISM', 'Building Applications in C#', 'Session 10'),
('DISM', 'Building Applications in C#', 'Session 11'),
('DISM', 'Building Applications in C#', 'Session 12'),
('DISM', 'Building Applications in C#', 'Session 13'),
('DISM', 'Building Applications in C#', 'Session 14'),
('DISM', 'Building Applications in C#', 'Session 15'),
('DISM', 'Building Applications in C#', 'Session 16'),
('DISM', 'Introduction to Cloud Computing', 'Session 01'),
('HDSE-I', 'Advanced Programming with C#', 'Session 01'),
('HDSE-I', 'Advanced Programming with C#', 'Session 02'),
('HDSE-I', 'Advanced Programming with C#', 'Session 03'),
('HDSE-I', 'Advanced Programming with C#', 'Session 04'),
('HDSE-I', 'Advanced Programming with C#', 'Session 05'),
('HDSE-I', 'Advanced Programming with C#', 'Session 06'),
('HDSE-I', 'Advanced Programming with C#', 'Session 07'),
('HDSE-I', 'Advanced Programming with C#', 'Session 08'),
('HDSE-I', 'Windows Forms Programming with C# - I', 'Session 01'),
('HDSE-I', 'Windows Forms Programming with C# - I', 'Session 02'),
('HDSE-I', 'Windows Forms Programming with C# - I', 'Session 03'),
('HDSE-I', 'Windows Forms Programming with C# - I', 'Session 04'),
('HDSE-I', 'Windows Forms Programming with C# - I', 'Session 05'),
('HDSE-I', 'Windows Forms Programming with C# - I', 'Session 06'),
('HDSE-I', 'Windows Forms Programming with C# - I', 'Session 07'),
('HDSE-I', 'Windows Forms Programming with C# - I', 'Session 08'),
('HDSE-I', 'Windows Forms Programming with C# - I', 'Session 09'),
('HDSE-I', 'Windows Forms Programming with C# - II', 'Session 01'),
('HDSE-I', 'Windows Forms Programming with C# - II', 'Session 02'),
('HDSE-I', 'Windows Forms Programming with C# - II', 'Session 03'),
('HDSE-I', 'Windows Forms Programming with C# - II', 'Session 04'),
('HDSE-I', 'Windows Forms Programming with C# - II', 'Session 05'),
('HDSE-I', 'Windows Forms Programming with C# - II', 'Session 06'),
('HDSE-I', 'Windows Forms Programming with C# - II', 'Session 07'),
('HDSE-I', 'Windows Forms Programming with C# - II', 'Session 08'),
('HDSE-I', 'Windows Forms Programming with C# - II', 'Session 09'),
('HDSE-I', 'Advanced Data Access in .NET', 'Session 01'),
('HDSE-I', 'Advanced Data Access in .NET', 'Session 02'),
('HDSE-I', 'Advanced Data Access in .NET', 'Session 03'),
('HDSE-I', 'Advanced Data Access in .NET', 'Session 04'),
('HDSE-I', 'Advanced Data Access in .NET', 'Session 05'),
('HDSE-I', 'Advanced Data Access in .NET', 'Session 06'),
('HDSE-I', 'Advanced Data Access in .NET', 'Session 07'),
('HDSE-I', 'Advanced Data Access in .NET', 'Session 08'),
('HDSE-II', 'Working with Liunx Operating System', 'Session 01'),
('HDSE-II', 'Working with Liunx Operating System', 'Session 02'),
('HDSE-II', 'Working with Liunx Operating System', 'Session 03'),
('HDSE-II', 'Working with Liunx Operating System', 'Session 04'),
('HDSE-II', 'Working with Liunx Operating System', 'Session 05'),
('HDSE-II', 'Working with Liunx Operating System', 'Session 06'),
('HDSE-II', 'Working with Liunx Operating System', 'Session 07'),
('HDSE-II', 'Using Apache Web Server', 'Session 01'),
('HDSE-II', 'Using Apache Web Server', 'Session 02'),
('HDSE-II', 'Using Apache Web Server', 'Session 03'),
('HDSE-II', 'Using Apache Web Server', 'Session 04'),
('HDSE-II', 'Using Apache Web Server', 'Session 05'),
('HDSE-II', 'Using Apache Web Server', 'Session 06'),
('HDSE-II', 'Using Apache Web Server', 'Session 07'),
('HDSE-II', 'Using Apache Web Server', 'Session 08'),
('HDSE-II', 'Using Apache Web Server', 'Session 09'),
('HDSE-II', 'Using Apache Web Server', 'Session 10'),
('HDSE-II', 'Using Apache Web Server', 'Session 11'),
('HDSE-II', 'Using Apache Web Server', 'Session 12'),
('HDSE-II', 'Database Programming with MySQL', 'Session 01'),
('HDSE-II', 'Database Programming with MySQL', 'Session 02'),
('HDSE-II', 'Database Programming with MySQL', 'Session 03'),
('HDSE-II', 'Database Programming with MySQL', 'Session 04'),
('HDSE-II', 'Database Programming with MySQL', 'Session 05'),
('HDSE-II', 'Database Programming with MySQL', 'Session 06'),
('HDSE-II', 'Database Programming with MySQL', 'Session 07'),
('HDSE-II', 'Database Programming with MySQL', 'Session 08'),
('HDSE-II', 'Web Application Development with PHP', 'Session 01'),
('HDSE-II', 'Web Application Development with PHP', 'Session 02'),
('HDSE-II', 'Web Application Development with PHP', 'Session 03'),
('HDSE-II', 'Web Application Development with PHP', 'Session 04'),
('HDSE-II', 'Web Application Development with PHP', 'Session 05'),
('HDSE-II', 'Web Application Development with PHP', 'Session 06'),
('HDSE-II', 'Web Application Development with PHP', 'Session 07'),
('HDSE-II', 'Web Application Development with PHP', 'Session 08'),
('HDSE-II', 'Web Application Development with PHP', 'Session 09'),
('HDSE-II', 'Web Application Development with PHP', 'Session 10'),
('ADSE-I', 'Object Oriented Analysis And Design', 'Session 01'),
('ADSE-I', 'Object Oriented Analysis And Design', 'Session 02'),
('ADSE-I', 'Object Oriented Analysis And Design', 'Session 03'),
('ADSE-I', 'Object Oriented Analysis And Design', 'Session 04'),
('ADSE-I', 'Object Oriented Analysis And Design', 'Session 05'),
('ADSE-I', 'Software Engineering Principles', 'Session 01'),
('ADSE-I', 'Software Engineering Principles', 'Session 02'),
('ADSE-I', 'Software Engineering Principles', 'Session 03'),
('ADSE-I', 'Software Engineering Principles', 'Session 04'),
('ADSE-I', 'Software Engineering Principles', 'Session 05'),
('ADSE-I', 'Software Project Management', 'Session 01'),
('ADSE-I', 'Software Project Management', 'Session 02'),
('ADSE-I', 'Software Project Management', 'Session 03'),
('ADSE-I', 'Software Project Management', 'Session 04'),
('ADSE-I', 'Software Project Management', 'Session 05'),
('ADSE-I', 'Working with Cloud Computing', 'Session 01'),
('ADSE-I', 'Working with Cloud Computing', 'Session 02'),
('ADSE-I', 'Working with Cloud Computing', 'Session 03'),
('ADSE-I', 'Internet Security', 'Session 01'),
('ADSE-I', 'Internet Security', 'Session 02'),
('ADSE-I', 'Internet Security', 'Session 03'),
('ADSE-I', 'Internet Security', 'Session 04'),
('ADSE-I', 'Internet Security', 'Session 05'),
('ADSE-I', 'Internet Security', 'Session 06'),
('ADSE-I', 'Internet Security', 'Session 07'),
('ADSE-II', 'Web Programming in Asp.NET-I', 'Session 01'),
('ADSE-II', 'Web Programming in Asp.NET-I', 'Session 02'),
('ADSE-II', 'Web Programming in Asp.NET-I', 'Session 03'),
('ADSE-II', 'Web Programming in Asp.NET-I', 'Session 04'),
('ADSE-II', 'Web Programming in Asp.NET-I', 'Session 05'),
('ADSE-II', 'Web Programming in Asp.NET-I', 'Session 06'),
('ADSE-II', 'Web Programming in Asp.NET-I', 'Session 07'),
('ADSE-II', 'Web Programming in Asp.NET-II', 'Session 01'),
('ADSE-II', 'Web Programming in Asp.NET-II', 'Session 02'),
('ADSE-II', 'Web Programming in Asp.NET-II', 'Session 03'),
('ADSE-II', 'Web Programming in Asp.NET-II', 'Session 04'),
('ADSE-II', 'Web Programming in Asp.NET-II', 'Session 05'),
('ADSE-II', 'Web Programming in Asp.NET-II', 'Session 06'),
('ADSE-II', 'Web Programming in Asp.NET-II', 'Session 07'),
('ADSE-II', 'Web Programming in Asp.NET-II', 'Session 08'),
('ADSE-II', 'Working with Cloud Computing', 'Session 01'),
('ADSE-II', 'Working with Cloud Computing', 'Session 02'),
('ADSE-II', 'Working with Cloud Computing', 'Session 03'),
('ADSE-II', 'Working with Cloud Computing', 'Session 04'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 01'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 02'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 03'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 04'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 05'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 06'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 07'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 08'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 09'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 10'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 11'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 12'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 13'),
('ADSE-II', 'Integrating Databases in Web Application using ADO.NET', 'Session 14'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 01'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 02'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 03'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 04'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 05'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 06'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 07'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 08'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 09'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 10'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 11'),
('ADSE-II', 'Essential Features of .NET Framework', 'Session 12'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 01'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 02'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 03'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 04'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 05'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 06'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 07'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 08'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 09'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 10'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 11'),
('ADSE-II', 'Building Rich UI using Windows Presentation Foundation (WPF)', 'Session 12'),
('ADSE-II', 'Developing ASP.NET AJAX Applications', 'Session 01'),
('ADSE-II', 'Developing ASP.NET AJAX Applications', 'Session 02'),
('ADSE-II', 'Developing ASP.NET AJAX Applications', 'Session 03'),
('ADSE-II', 'Developing ASP.NET AJAX Applications', 'Session 04'),
('ADSE-II', 'Developing ASP.NET AJAX Applications', 'Session 05'),
('ADSE-II', 'Developing ASP.NET AJAX Applications', 'Session 06'),
('ADSE-II', 'Developing ASP.NET AJAX Applications', 'Session 07'),
('ADSE-II', 'Developing ASP.NET AJAX Applications', 'Session 08'),
('ADSE-II', 'Developing Mobile Application in .NET', 'Session 01'),
('ADSE-II', 'Developing Mobile Application in .NET', 'Session 02'),
('ADSE-II', 'Developing Mobile Application in .NET', 'Session 03'),
('ADSE-II', 'Developing Mobile Application in .NET', 'Session 04'),
('ADSE-II', 'Developing Mobile Application in .NET', 'Session 05'),
('ADSE-II', 'Developing Mobile Application in .NET', 'Session 06'),
('ADSE-II', 'Developing Mobile Application in .NET', 'Session 07'),
('ADSE-II', 'Developing Mobile Application in .NET', 'Session 08'),
('ADSE-II', 'Enterprise Application Development (WCF)', 'Session 01'),
('ADSE-II', 'Enterprise Application Development (WCF)', 'Session 02'),
('ADSE-II', 'Enterprise Application Development (WCF)', 'Session 03'),
('ADSE-II', 'Enterprise Application Development (WCF)', 'Session 04'),
('ADSE-II', 'Enterprise Application Development (WCF)', 'Session 05'),
('ADSE-II', 'Enterprise Application Development (WCF)', 'Session 06'),
('ADSE-II', 'Enterprise Application Development (WCF)', 'Session 07'),
('ADSE-II', 'Enterprise Application Development (WCF)', 'Session 08'),
('ADSE-II', 'Enterprise Application Development (WCF)', 'Session 09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_std`
--

CREATE TABLE `tbl_std` (
  `date_added` date DEFAULT NULL,
  `std_id` int(11) NOT NULL,
  `std_name` varchar(30) DEFAULT NULL,
  `std_batch_code` varchar(30) DEFAULT NULL,
  `semester_name` varchar(10) DEFAULT NULL,
  `std_days` varchar(10) DEFAULT NULL,
  `std_time` varchar(10) DEFAULT NULL,
  `std_book` longtext DEFAULT NULL,
  `teacher_name` varchar(50) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `std_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_std`
--

INSERT INTO `tbl_std` (`date_added`, `std_id`, `std_name`, `std_batch_code`, `semester_name`, `std_days`, `std_time`, `std_book`, `teacher_name`, `teacher_id`, `std_status`) VALUES
('2015-11-01', 1111, 'Asad', 'IPRO-201602C', 'CPISM', 'TTS', '9-11', 'HTML5 - NexTGen Web', 'Sir Ali', 10001, 'true'),
('2015-11-01', 1112, 'Umer', 'IPRO-201602C', 'CPISM', 'TTS', '9-11', 'HTML5 - NexTGen Web', 'Sir Ali', 10001, 'true'),
('2015-11-01', 1113, 'Zaid', 'IPRO-201602C', 'CPISM', 'TTS', '9-11', 'HTML5 - NexTGen Web', 'Sir Ali', 10002, 'true'),
('2015-11-01', 1114, 'Ahemd', 'IPRO-201602C', 'CPISM', 'TTS', '9-11', 'HTML5 - NexTGen Web', 'Sir Ali', 10002, 'true'),
('2015-11-01', 1115, 'Sara', 'IPRO-201602C', 'CPISM', 'TTS', '9-11', 'HTML5 - NexTGen Web', 'Sir Ali', 10003, 'true'),
('2015-10-01', 1116, 'Habib', 'IPRO-201505E', 'DISM', 'MWF', '11-1', 'Fundamentals of Java', 'Sir Ashar', 10002, 'true'),
('2015-10-01', 1117, 'Hamid', 'IPRO-201505E', 'DISM', 'MWF', '11-1', 'Fundamentals of Java', 'Sir Ashar', 10002, 'true'),
('2015-10-01', 1118, 'Ibrahim', 'IPRO-201505E', 'DISM', 'MWF', '11-1', 'Fundamentals of Java', 'Sir Ashar', 10002, 'true'),
('2015-10-01', 1119, 'Hashim', 'IPRO-201505E', 'DISM', 'MWF', '11-1', 'Fundamentals of Java', 'Sir Ashar', 10002, 'true'),
('2015-10-01', 1120, 'Azra', 'IPRO-201505E', 'DISM', 'MWF', '11-1', 'Fundamentals of Java', 'Sir Ashar', 10002, 'true'),
('2015-10-01', 1121, 'Adeela', 'IPRO-201505E', 'DISM', 'MWF', '11-1', 'Fundamentals of Java', 'Sir Ashar', 10002, 'true'),
('2015-01-01', 1122, 'Basma', 'IPRO-201601B', 'ADSE-II', 'TTS', '11-1', 'Working with Cloud Computing', 'Sir Ashar', 10002, 'true'),
('2015-01-01', 1123, 'Batool', 'IPRO-201601B', 'ADSE-II', 'TTS', '11-1', 'Working with Cloud Computing', 'Sir Ashar', 10002, 'true'),
('2015-01-01', 1124, 'Faiza', 'IPRO-201601B', 'ADSE-II', 'TTS', '11-1', 'Working with Cloud Computing', 'Sir Ashar', 10002, 'true'),
('2015-01-01', 1125, 'Hafsa', 'IPRO-201601B', 'ADSE-II', 'TTS', '11-1', 'Working with Cloud Computing', 'Sir Ashar', 10002, 'true'),
('2015-01-01', 1126, 'Jawad', 'IPRO-201601B', 'ADSE-II', 'TTS', '11-1', 'Working with Cloud Computing', 'Sir Ashar', 10002, 'true'),
('2015-01-01', 1127, 'Khalid', 'IPRO-201601B', 'ADSE-II', 'TTS', '11-1', 'Working with Cloud Computing', 'Sir Ashar', 10002, 'true'),
('2015-01-01', 1128, 'Munib', 'IPRO-201601B', 'ADSE-II', 'TTS', '11-1', 'Working with Cloud Computing', 'Sir Ashar', 10002, 'true'),
('2015-01-02', 1129, 'Nadir', 'IPRO-201506F', 'CPISM', 'MWF', '1-3', 'Data Management using SQL Server', 'Sir Sohail', 10003, 'true'),
('2015-01-02', 1130, 'Nasib', 'IPRO-201506F', 'CPISM', 'MWF', '1-3', 'Data Management using SQL Server', 'Sir Sohail', 10003, 'true'),
('2015-01-02', 1131, 'Umar', 'IPRO-201506F', 'CPISM', 'MWF', '1-3', 'Data Management using SQL Server', 'Sir Sohail', 10003, 'true'),
('2015-01-02', 1132, 'Wahab', 'IPRO-201506F', 'CPISM', 'MWF', '1-3', 'Data Management using SQL Server', 'Sir Sohail', 10003, 'true'),
('2015-01-02', 1133, 'Rashid', 'IPRO-201506F', 'CPISM', 'MWF', '1-3', 'Data Management using SQL Server', 'Sir Sohail', 10003, 'true'),
('2016-01-01', 1134, 'Zafar', 'IPRO-201504D', 'HDSE-II', 'MWF', '3-5', 'Working with Liunx Operating System', 'Sir Farooq', 10004, 'true'),
('2016-01-01', 1135, 'Lubna', 'IPRO-201504D', 'HDSE-II', 'MWF', '3-5', 'Working with Liunx Operating System', 'Sir Farooq', 10004, 'true'),
('2016-01-01', 1136, 'Yasir', 'IPRO-201504D', 'HDSE-II', 'MWF', '3-5', 'Working with Liunx Operating System', 'Sir Farooq', 10004, 'true'),
('2016-01-01', 1137, 'Waqar', 'IPRO-201504D', 'HDSE-II', 'MWF', '3-5', 'Working with Liunx Operating System', 'Sir Farooq', 10004, 'true'),
('2016-01-01', 1138, 'Nabila', 'IPRO-201504D', 'HDSE-II', 'MWF', '3-5', 'Working with Liunx Operating System', 'Sir Farooq', 10004, 'true'),
('2015-02-01', 1139, 'Shafiq', 'IPRO-201508H', 'ADSE-II', 'TTS', '9-11', 'Integrating Databases in Web Application using ADO.NET', 'Sir Farooq', 10004, 'true'),
('2015-02-01', 1140, 'Sajid', 'IPRO-201508H', 'ADSE-II', 'TTS', '9-11', 'Integrating Databases in Web Application using ADO.NET', 'Sir Farooq', 10004, 'true'),
('2015-02-01', 1141, 'Noor', 'IPRO-201508H', 'ADSE-II', 'TTS', '9-11', 'Integrating Databases in Web Application using ADO.NET', 'Sir Farooq', 10004, 'true'),
('2015-02-01', 1142, 'Saud', 'IPRO-201508H', 'ADSE-II', 'TTS', '9-11', 'Integrating Databases in Web Application using ADO.NET', 'Sir Farooq', 10004, 'true'),
('2015-02-01', 1143, 'Raiqa', 'IPRO-201508H', 'ADSE-II', 'TTS', '9-11', 'Integrating Databases in Web Application using ADO.NET', 'Sir Farooq', 10004, 'true'),
('2016-01-01', 1144, 'Salma', 'IPRO-201501K', 'CPISM', 'MWF', '3-5', 'Microsoft Office 2010 A Modern Approach', 'Sir Ahmed', 10005, 'true'),
('2016-01-01', 1145, 'Uzma', 'IPRO-201501K', 'CPISM', 'MWF', '3-5', 'Microsoft Office 2010 A Modern Approach', 'Sir Ahmed', 10005, 'true'),
('2016-01-01', 1146, 'Muneer', 'IPRO-201501K', 'CPISM', 'MWF', '3-5', 'Microsoft Office 2010 A Modern Approach', 'Sir Ahmed', 10005, 'true'),
('2016-01-01', 1147, 'Irfan', 'IPRO-201501K', 'CPISM', 'MWF', '3-5', 'Microsoft Office 2010 A Modern Approach', 'Sir Ahmed', 10005, 'true'),
('2016-01-01', 1148, 'Warda', 'IPRO-201501K', 'CPISM', 'MWF', '3-5', 'Microsoft Office 2010 A Modern Approach', 'Sir Ahmed', 10005, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `user_name` longtext DEFAULT NULL,
  `teacher_name` longtext DEFAULT NULL,
  `teacher_pass` longtext DEFAULT NULL,
  `teacher_status` longtext DEFAULT NULL,
  `added_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `user_name`, `teacher_name`, `teacher_pass`, `teacher_status`, `added_on`) VALUES
(10001, 'ali', 'Sir Ali', 'ali', 'false', '2015-01-01'),
(10002, 'ashar', 'Sir Ashar', 'ash', 'true', '2014-12-01'),
(10003, 'sohail', 'Sir Sohail', 'soh', 'true', '2014-11-01'),
(10004, 'farooq', 'Sir Farooq', 'far', 'true', '2014-10-01'),
(10005, 'ahmed', 'Sir Ahmed', 'ahm', 'false', '2015-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_details`
--

CREATE TABLE `teacher_details` (
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_pass` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_details`
--

INSERT INTO `teacher_details` (`name`, `surname`, `age`, `email`, `teacher_id`, `teacher_pass`) VALUES
('Ali', 'Khan', 25, 'ali@gmail.com', 10001, 'ali'),
('Ashar', 'Hussain', 25, 'ashar@gmail.com', 10002, 'ash'),
('Syed', 'Sohail', 25, 'sohail@gmail.com', 10003, 'soh'),
('Farooq', 'Shibli', 40, 'farooq@gmail.com', 10004, 'far'),
('Ahemd', 'Shah', 45, 'ashar@gmail.com', 10005, 'ahm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `std_attend`
--
ALTER TABLE `std_attend`
  ADD KEY `FK__std_atten__std_i__2F10007B` (`std_id`);

--
-- Indexes for table `tbl_batch`
--
ALTER TABLE `tbl_batch`
  ADD PRIMARY KEY (`batch_code`),
  ADD KEY `FK__tbl_batch__teach__29572725` (`teacher_id`);

--
-- Indexes for table `tbl_std`
--
ALTER TABLE `tbl_std`
  ADD PRIMARY KEY (`std_id`),
  ADD KEY `FK__tbl_std__teacher__2C3393D0` (`teacher_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_details`
--
ALTER TABLE `teacher_details`
  ADD KEY `FK__teacher_d__teach__30F848ED` (`teacher_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `std_attend`
--
ALTER TABLE `std_attend`
  ADD CONSTRAINT `FK__std_atten__std_i__2F10007B` FOREIGN KEY (`std_id`) REFERENCES `tbl_std` (`std_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_batch`
--
ALTER TABLE `tbl_batch`
  ADD CONSTRAINT `FK__tbl_batch__teach__29572725` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_teacher` (`teacher_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_std`
--
ALTER TABLE `tbl_std`
  ADD CONSTRAINT `FK__tbl_std__teacher__2C3393D0` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_teacher` (`teacher_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `teacher_details`
--
ALTER TABLE `teacher_details`
  ADD CONSTRAINT `FK__teacher_d__teach__30F848ED` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_teacher` (`teacher_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
