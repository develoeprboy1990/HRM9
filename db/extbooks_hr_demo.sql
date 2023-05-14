-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2023 at 01:36 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `extbooks_hr_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(8) NOT NULL,
  `FullName` varchar(75) DEFAULT NULL,
  `Email` varchar(75) DEFAULT NULL,
  `Password` varchar(55) DEFAULT NULL,
  `Active` varchar(10) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `FullName`, `Email`, `Password`, `Active`) VALUES
(1, 'Kashif', 'kashif@inu.edu.pk', '123456', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `allowance_list`
--

CREATE TABLE `allowance_list` (
  `AllowanceListID` int(8) NOT NULL,
  `AllowanceTitle` varchar(75) DEFAULT NULL,
  `AllowanceType` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowance_list`
--

INSERT INTO `allowance_list` (`AllowanceListID`, `AllowanceTitle`, `AllowanceType`) VALUES
(1, 'Basic Salary', 'Basic'),
(2, 'Home Rent Allowance', 'Allowance'),
(3, 'Transport Allowance', 'Allowance'),
(4, 'Other Allowance', 'Other'),
(5, 'Increment', 'Salary'),
(6, 'Bonus/Comission', 'Bonus');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `EmployeeName` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Department` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateTime` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `EmployeeID`, `EmployeeName`, `Department`, `Status`, `DateTime`, `created_at`, `updated_at`) VALUES
(1066, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-01 08:47:18', NULL, NULL),
(1067, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:15:18', NULL, NULL),
(1068, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:15:22', NULL, NULL),
(1069, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-02 08:37:21', NULL, NULL),
(1070, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:47', NULL, NULL),
(1071, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-03 08:39:35', NULL, NULL),
(1072, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-04 08:28:31', NULL, NULL),
(1073, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-04 20:52:39', NULL, NULL),
(1074, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:10:52', NULL, NULL),
(1075, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:06:30', NULL, NULL),
(1076, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:10:03', NULL, NULL),
(1077, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:01:57', NULL, NULL),
(1078, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:16:51', NULL, NULL),
(1079, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-09 08:57:58', NULL, NULL),
(1080, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:12:33', NULL, NULL),
(1081, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-09 19:12:43', NULL, NULL),
(1082, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:07:38', NULL, NULL),
(1083, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-11 08:45:05', NULL, NULL),
(1084, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:15:20', NULL, NULL),
(1085, 41, 'MBARAK', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:55:23', NULL, NULL),
(1086, 41, 'MBARAK', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:13:00', NULL, NULL),
(1087, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-01 08:57:31', NULL, NULL),
(1088, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:15:03', NULL, NULL),
(1089, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:15:12', NULL, NULL),
(1090, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:03:52', NULL, NULL),
(1091, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:14', NULL, NULL),
(1092, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:25', NULL, NULL),
(1093, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:29', NULL, NULL),
(1094, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:43', NULL, NULL),
(1095, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:02:47', NULL, NULL),
(1096, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:13:15', NULL, NULL),
(1097, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:00:38', NULL, NULL),
(1098, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:06:43', NULL, NULL),
(1099, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:06:50', NULL, NULL),
(1100, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-06 13:54:08', NULL, NULL),
(1101, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:01:09', NULL, NULL),
(1102, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-08 08:56:13', NULL, NULL),
(1103, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:11:58', NULL, NULL),
(1104, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:01:59', NULL, NULL),
(1105, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:12:46', NULL, NULL),
(1106, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-10 08:57:14', NULL, NULL),
(1107, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:02:11', NULL, NULL),
(1108, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:15:09', NULL, NULL),
(1109, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:15:16', NULL, NULL),
(1110, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:01:21', NULL, NULL),
(1111, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:15:22', NULL, NULL),
(1112, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-16 08:57:50', NULL, NULL),
(1113, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:01:52', NULL, NULL),
(1114, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-17 08:49:57', NULL, NULL),
(1115, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-17 19:02:14', NULL, NULL),
(1116, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-in', '2021-08-18 08:53:59', NULL, NULL),
(1117, 42, 'AFSHAN', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:05:20', NULL, NULL),
(1118, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:34:56', NULL, NULL),
(1119, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:01:21', NULL, NULL),
(1120, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:50:19', NULL, NULL),
(1121, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:37:35', NULL, NULL),
(1122, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:10:58', NULL, NULL),
(1123, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:36:35', NULL, NULL),
(1124, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:02:04', NULL, NULL),
(1125, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:37:50', NULL, NULL),
(1126, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:02:24', NULL, NULL),
(1127, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-06 13:44:28', NULL, NULL),
(1128, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:01:17', NULL, NULL),
(1129, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:25:48', NULL, NULL),
(1130, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:05:07', NULL, NULL),
(1131, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:47:57', NULL, NULL),
(1132, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:48:11', NULL, NULL),
(1133, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:02:38', NULL, NULL),
(1134, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:24:58', NULL, NULL),
(1135, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:08:35', NULL, NULL),
(1136, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:32:12', NULL, NULL),
(1137, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:07:55', NULL, NULL),
(1138, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:41:12', NULL, NULL),
(1139, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:01:37', NULL, NULL),
(1140, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:45:00', NULL, NULL),
(1141, 43, 'HALEN', 'FCB/SIMBA', 'Check-out', '2021-08-17 19:09:49', NULL, NULL),
(1142, 43, 'HALEN', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:45:47', NULL, NULL),
(1143, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:12:15', NULL, NULL),
(1144, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-01 18:52:15', NULL, NULL),
(1145, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:20:48', NULL, NULL),
(1146, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:06:06', NULL, NULL),
(1147, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:06:35', NULL, NULL),
(1148, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:02:49', NULL, NULL),
(1149, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:21:33', NULL, NULL),
(1150, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-04 18:55:34', NULL, NULL),
(1151, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:11:45', NULL, NULL),
(1152, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-05 18:56:05', NULL, NULL),
(1153, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:33:47', NULL, NULL),
(1154, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-08 18:55:37', NULL, NULL),
(1155, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-09 10:03:50', NULL, NULL),
(1156, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:02:31', NULL, NULL),
(1157, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:25:12', NULL, NULL),
(1158, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-10 18:59:25', NULL, NULL),
(1159, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:48:03', NULL, NULL),
(1160, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:08:00', NULL, NULL),
(1161, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-12 08:43:28', NULL, NULL),
(1162, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-12 18:59:39', NULL, NULL),
(1163, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:11:56', NULL, NULL),
(1164, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-16 18:56:17', NULL, NULL),
(1165, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-17 08:50:14', NULL, NULL),
(1166, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-17 19:20:16', NULL, NULL),
(1167, 44, 'KARL', 'FCB/SIMBA', 'Check-in', '2021-08-18 08:59:16', NULL, NULL),
(1168, 44, 'KARL', 'FCB/SIMBA', 'Check-out', '2021-08-18 18:56:13', NULL, NULL),
(1169, 45, 'OLIVE', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:43:52', NULL, NULL),
(1170, 45, 'OLIVE', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:26:53', NULL, NULL),
(1171, 45, 'OLIVE', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:55:33', NULL, NULL),
(1172, 45, 'OLIVE', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:18', NULL, NULL),
(1173, 45, 'OLIVE', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:08:23', NULL, NULL),
(1174, 45, 'OLIVE', 'FCB/SIMBA', 'Check-in', '2021-08-06 14:31:24', NULL, NULL),
(1175, 45, 'OLIVE', 'FCB/SIMBA', 'Check-in', '2021-08-06 14:31:33', NULL, NULL),
(1176, 45, 'OLIVE', 'FCB/SIMBA', 'Check-out', '2021-08-06 16:34:51', NULL, NULL),
(1177, 45, 'OLIVE', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:55:25', NULL, NULL),
(1178, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:03:14', NULL, NULL),
(1179, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:03:18', NULL, NULL),
(1180, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:40:15', NULL, NULL),
(1181, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:05:07', NULL, NULL),
(1182, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:45:15', NULL, NULL),
(1183, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:05:21', NULL, NULL),
(1184, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:05:26', NULL, NULL),
(1185, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:31:59', NULL, NULL),
(1186, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:10:30', NULL, NULL),
(1187, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:10:35', NULL, NULL),
(1188, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:57:54', NULL, NULL),
(1189, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:07:04', NULL, NULL),
(1190, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:39:04', NULL, NULL),
(1191, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:07:29', NULL, NULL),
(1192, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-09 11:51:06', NULL, NULL),
(1193, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:17:46', NULL, NULL),
(1194, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:40:30', NULL, NULL),
(1195, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:43:18', NULL, NULL),
(1196, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:43:24', NULL, NULL),
(1197, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:39:23', NULL, NULL),
(1198, 47, 'SYLVERINE', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:07:03', NULL, NULL),
(1199, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:34:07', NULL, NULL),
(1200, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:47:50', NULL, NULL),
(1201, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:24:50', NULL, NULL),
(1202, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-out', '2021-08-10 20:07:57', NULL, NULL),
(1203, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:43:27', NULL, NULL),
(1204, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:07:47', NULL, NULL),
(1205, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-16 10:30:49', NULL, NULL),
(1206, 48, 'IFTIKHAR', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:19:40', NULL, NULL),
(1207, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:43:44', NULL, NULL),
(1208, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:43:49', NULL, NULL),
(1209, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:02:40', NULL, NULL),
(1210, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:43:51', NULL, NULL),
(1211, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:14:21', NULL, NULL),
(1212, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:14:25', NULL, NULL),
(1213, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:41:03', NULL, NULL),
(1214, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:21:01', NULL, NULL),
(1215, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:38:41', NULL, NULL),
(1216, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:41:52', NULL, NULL),
(1217, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:01:15', NULL, NULL),
(1218, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:36:58', NULL, NULL),
(1219, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:19:01', NULL, NULL),
(1220, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:41:26', NULL, NULL),
(1221, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-12 11:17:35', NULL, NULL),
(1222, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:12:01', NULL, NULL),
(1223, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:45:03', NULL, NULL),
(1224, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:29:09', NULL, NULL),
(1225, 49, 'KAMAL', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:39:11', NULL, NULL),
(1226, 49, 'KAMAL', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:11:16', NULL, NULL),
(1227, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-01 10:00:00', NULL, NULL),
(1228, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:07:14', NULL, NULL),
(1229, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:51:20', NULL, NULL),
(1230, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:55:45', NULL, NULL),
(1231, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:05:30', NULL, NULL),
(1232, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:52:41', NULL, NULL),
(1233, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:10:43', NULL, NULL),
(1234, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:57:33', NULL, NULL),
(1235, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:10:07', NULL, NULL),
(1236, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:55:19', NULL, NULL),
(1237, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:55:22', NULL, NULL),
(1238, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:28:08', NULL, NULL),
(1239, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:53:18', NULL, NULL),
(1240, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:50:39', NULL, NULL),
(1241, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:06:03', NULL, NULL),
(1242, 50, 'YASHA', 'FCB/SIMBA', 'Overtime-Out', '2021-08-11 09:53:41', NULL, NULL),
(1243, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:53:45', NULL, NULL),
(1244, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:09:56', NULL, NULL),
(1245, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-12 10:02:30', NULL, NULL),
(1246, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:03:10', NULL, NULL),
(1247, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-17 19:42:21', NULL, NULL),
(1248, 50, 'YASHA', 'FCB/SIMBA', 'Check-in', '2021-08-18 10:02:23', NULL, NULL),
(1249, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:05:13', NULL, NULL),
(1250, 50, 'YASHA', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:05:16', NULL, NULL),
(1251, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:53:44', NULL, NULL),
(1252, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:53:49', NULL, NULL),
(1253, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:53:54', NULL, NULL),
(1254, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:07:08', NULL, NULL),
(1255, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:07:29', NULL, NULL),
(1256, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:50:10', NULL, NULL),
(1257, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:06:42', NULL, NULL),
(1258, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:52:24', NULL, NULL),
(1259, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:45:56', NULL, NULL),
(1260, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:04:57', NULL, NULL),
(1261, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:51:56', NULL, NULL),
(1262, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:06:55', NULL, NULL),
(1263, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:06:59', NULL, NULL),
(1264, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-06 13:36:30', NULL, NULL),
(1265, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-06 19:03:22', NULL, NULL),
(1266, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:47:38', NULL, NULL),
(1267, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:47:43', NULL, NULL),
(1268, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:05:00', NULL, NULL),
(1269, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:47:40', NULL, NULL),
(1270, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:07:41', NULL, NULL),
(1271, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:48:36', NULL, NULL),
(1272, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:08:25', NULL, NULL),
(1273, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:56:26', NULL, NULL),
(1274, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:01:15', NULL, NULL),
(1275, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:48:42', NULL, NULL),
(1276, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:05:44', NULL, NULL),
(1277, 51, 'PALLAVI', 'FCB/SIMBA', 'Overtime-Out', '2021-08-17 19:05:12', NULL, NULL),
(1278, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:44:54', NULL, NULL),
(1279, 51, 'PALLAVI', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:03:33', NULL, NULL),
(1280, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:53:57', NULL, NULL),
(1281, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:49:31', NULL, NULL),
(1282, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:49:34', NULL, NULL),
(1283, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:34:08', NULL, NULL),
(1284, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:31:09', NULL, NULL),
(1285, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:26:42', NULL, NULL),
(1286, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:26:45', NULL, NULL),
(1287, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-03 20:06:51', NULL, NULL),
(1288, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:41:02', NULL, NULL),
(1289, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-06 14:31:35', NULL, NULL),
(1290, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:31:41', NULL, NULL),
(1291, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:31:46', NULL, NULL),
(1292, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:31:48', NULL, NULL),
(1293, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:31:51', NULL, NULL),
(1294, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:25:28', NULL, NULL),
(1295, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:25:37', NULL, NULL),
(1296, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:23:19', NULL, NULL),
(1297, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:23:21', NULL, NULL),
(1298, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:08', NULL, NULL),
(1299, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:12', NULL, NULL),
(1300, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-10 11:42:10', NULL, NULL),
(1301, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:45:48', NULL, NULL),
(1302, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:45:50', NULL, NULL),
(1303, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:38:12', NULL, NULL),
(1304, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:38:14', NULL, NULL),
(1305, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:39:28', NULL, NULL),
(1306, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:39:32', NULL, NULL),
(1307, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:17:59', NULL, NULL),
(1308, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:18:02', NULL, NULL),
(1309, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:18:04', NULL, NULL),
(1310, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:18:07', NULL, NULL),
(1311, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:31:07', NULL, NULL),
(1312, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:35:23', NULL, NULL),
(1313, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:11:38', NULL, NULL),
(1314, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:11:43', NULL, NULL),
(1315, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-in', '2021-08-18 10:00:11', NULL, NULL),
(1316, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-18 20:14:58', NULL, NULL),
(1317, 52, 'SAMUEL', 'FCB/SIMBA', 'Check-out', '2021-08-18 20:15:00', NULL, NULL),
(1318, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-01 09:47:12', NULL, NULL),
(1319, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:49:53', NULL, NULL),
(1320, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:57:48', NULL, NULL),
(1321, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:30:56', NULL, NULL),
(1322, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:31:05', NULL, NULL),
(1323, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:44:53', NULL, NULL),
(1324, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-03 20:06:46', NULL, NULL),
(1325, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:43:29', NULL, NULL),
(1326, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:47:42', NULL, NULL),
(1327, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:49:08', NULL, NULL),
(1328, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:12:04', NULL, NULL),
(1329, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-06 14:30:44', NULL, NULL),
(1330, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-06 20:31:37', NULL, NULL),
(1331, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:57:50', NULL, NULL),
(1332, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:25:42', NULL, NULL),
(1333, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:48:35', NULL, NULL),
(1334, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:06', NULL, NULL),
(1335, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:54', NULL, NULL),
(1336, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:44:06', NULL, NULL),
(1337, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:33:16', NULL, NULL),
(1338, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-11 13:29:35', NULL, NULL),
(1339, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-11 13:29:40', NULL, NULL),
(1340, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:23:44', NULL, NULL),
(1341, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-16 10:03:00', NULL, NULL),
(1342, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-17 09:59:37', NULL, NULL),
(1343, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:11:34', NULL, NULL),
(1344, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:11:47', NULL, NULL),
(1345, 53, 'PETER', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:59:15', NULL, NULL),
(1346, 53, 'PETER', 'FCB/SIMBA', 'Check-out', '2021-08-18 20:13:29', NULL, NULL),
(1347, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-01 18:31:21', NULL, NULL),
(1348, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:28:47', NULL, NULL),
(1349, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-02 18:37:50', NULL, NULL),
(1350, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-03 10:48:07', NULL, NULL),
(1351, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:36:02', NULL, NULL),
(1352, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:38:38', NULL, NULL),
(1353, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:27:16', NULL, NULL),
(1354, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-05 18:36:12', NULL, NULL),
(1355, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:38:28', NULL, NULL),
(1356, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:28:19', NULL, NULL),
(1357, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-09 18:36:30', NULL, NULL),
(1358, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:38:41', NULL, NULL),
(1359, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-10 18:33:51', NULL, NULL),
(1360, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:34:41', NULL, NULL),
(1361, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:33:11', NULL, NULL),
(1362, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-16 18:30:06', NULL, NULL),
(1363, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-17 18:32:23', NULL, NULL),
(1364, 56, 'NASSIR', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:25:52', NULL, NULL),
(1365, 56, 'NASSIR', 'FCB/SIMBA', 'Check-out', '2021-08-18 18:35:38', NULL, NULL),
(1366, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:43:47', NULL, NULL),
(1367, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:22:02', NULL, NULL),
(1368, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:27:30', NULL, NULL),
(1369, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:30:13', NULL, NULL),
(1370, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:50:20', NULL, NULL),
(1371, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:33:20', NULL, NULL),
(1372, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:40:14', NULL, NULL),
(1373, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:27:09', NULL, NULL),
(1374, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-05 09:27:13', NULL, NULL),
(1375, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-05 19:09:33', NULL, NULL),
(1376, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-06 15:04:22', NULL, NULL),
(1377, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-06 21:03:12', NULL, NULL),
(1378, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:35:44', NULL, NULL),
(1379, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:11:38', NULL, NULL),
(1380, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:11:52', NULL, NULL),
(1381, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:24:47', NULL, NULL),
(1382, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:46', NULL, NULL),
(1383, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-09 20:03:50', NULL, NULL),
(1384, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:25:24', NULL, NULL),
(1385, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-11 09:29:07', NULL, NULL),
(1386, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-11 21:05:16', NULL, NULL),
(1387, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:39:43', NULL, NULL),
(1388, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:35:09', NULL, NULL),
(1389, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-16 19:35:21', NULL, NULL),
(1390, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:42:07', NULL, NULL),
(1391, 60, 'AYAH', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:44:50', NULL, NULL),
(1392, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:14:55', NULL, NULL),
(1393, 60, 'AYAH', 'FCB/SIMBA', 'Check-out', '2021-08-18 20:00:58', NULL, NULL),
(1394, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-01 19:01:13', NULL, NULL),
(1395, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-02 09:39:15', NULL, NULL),
(1396, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-02 19:02:11', NULL, NULL),
(1397, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-03 09:34:23', NULL, NULL),
(1398, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-03 19:01:58', NULL, NULL),
(1399, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-04 09:39:28', NULL, NULL),
(1400, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:10:48', NULL, NULL),
(1401, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-04 19:10:51', NULL, NULL),
(1402, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-06 13:44:20', NULL, NULL),
(1403, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-08 09:46:35', NULL, NULL),
(1404, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:01:07', NULL, NULL),
(1405, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:01:12', NULL, NULL),
(1406, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-08 19:01:58', NULL, NULL),
(1407, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-09 09:48:14', NULL, NULL),
(1408, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-09 19:00:30', NULL, NULL),
(1409, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-10 09:56:45', NULL, NULL),
(1410, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-10 19:00:18', NULL, NULL),
(1411, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-11 10:11:17', NULL, NULL),
(1412, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-11 19:50:35', NULL, NULL),
(1413, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-12 09:35:37', NULL, NULL),
(1414, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-12 19:08:36', NULL, NULL),
(1415, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-16 09:49:59', NULL, NULL),
(1416, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-16 20:10:34', NULL, NULL),
(1417, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-17 09:38:41', NULL, NULL),
(1418, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-17 20:01:07', NULL, NULL),
(1419, 61, 'RAJ', 'FCB/SIMBA', 'Check-in', '2021-08-18 09:50:13', NULL, NULL),
(1420, 61, 'RAJ', 'FCB/SIMBA', 'Check-out', '2021-08-18 19:10:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BranchID` int(8) NOT NULL,
  `BranchName` varchar(150) DEFAULT NULL,
  `BranchContact` varchar(50) DEFAULT NULL,
  `BranchEmail` varchar(50) DEFAULT NULL,
  `BranchAddress` varchar(150) DEFAULT NULL,
  `BranchLogo` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BranchID`, `BranchName`, `BranchContact`, `BranchEmail`, `BranchAddress`, `BranchLogo`, `CreatedDate`, `UpdatedDate`) VALUES
(1, 'Dubai', '+971 4 584 8310', 'info@eits.ae', 'Office #1807 Clover Bay Tower, Business Bay - Dubai', '1677651045.png', '2023-03-01 06:10:45', '2023-03-01 06:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientID` int(8) NOT NULL,
  `AID` int(12) DEFAULT NULL,
  `EmployeeID` int(8) DEFAULT NULL,
  `FTDAmount` int(12) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Compliant` varchar(25) DEFAULT NULL,
  `KYCSent` varchar(25) DEFAULT NULL,
  `DailerList` int(10) DEFAULT NULL,
  `UpdateBy` varchar(30) DEFAULT NULL,
  `UDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyID` int(8) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `Name2` varchar(255) DEFAULT NULL,
  `TRN` varchar(150) DEFAULT NULL COMMENT 'tax registration no',
  `Currency` varchar(3) DEFAULT NULL,
  `Mobile` varchar(75) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL,
  `BackgroundLogo` varchar(255) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Signature` varchar(255) DEFAULT NULL,
  `DigitalSignature` varchar(255) DEFAULT NULL,
  `EstimateInvoiceTitle` varchar(150) DEFAULT NULL,
  `SaleInvoiceTitle` varchar(150) DEFAULT NULL,
  `DeliveryChallanTitle` varchar(150) DEFAULT NULL,
  `CreditNoteTitle` varchar(150) DEFAULT NULL,
  `PurchaseInvoiceTitle` varchar(150) DEFAULT NULL,
  `DebitNoteTitle` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyID`, `Name`, `Name2`, `TRN`, `Currency`, `Mobile`, `Contact`, `Email`, `Website`, `Address`, `Logo`, `BackgroundLogo`, `CreatedDate`, `UpdatedDate`, `Signature`, `DigitalSignature`, `EstimateInvoiceTitle`, `SaleInvoiceTitle`, `DeliveryChallanTitle`, `CreditNoteTitle`, `PurchaseInvoiceTitle`, `DebitNoteTitle`) VALUES
(1, 'Extensive IT Services', 'LTD', '123456789', 'AED', NULL, '+971 4 584 8310', 'info@eits.ae', 'www.eits.ae', 'Office #1807 Clover Bay Tower, Business Bay - Dubai', '1677650844.png', '1677650844.png', '2023-03-01 06:07:24', '2023-03-01 06:07:24', '1677650844.png', '<h2><strong>Finance Director,</strong></h2>\r\n\r\n<p><strong>Kashif</strong></p>', 'Quotation', 'Sale Inoice by', 'Delivery Note', 'Credit Note', 'Purchase Bill', 'Debit Note');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryID` int(11) NOT NULL,
  `CountryName` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryID`, `CountryName`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Democratic Republic of the Congo'),
(50, 'Republic of Congo'),
(51, 'Cook Islands'),
(52, 'Costa Rica'),
(53, 'Croatia (Hrvatska)'),
(54, 'Cuba'),
(55, 'Cyprus'),
(56, 'Czech Republic'),
(57, 'Denmark'),
(58, 'Djibouti'),
(59, 'Dominica'),
(60, 'Dominican Republic'),
(61, 'East Timor'),
(62, 'Ecuador'),
(63, 'Egypt'),
(64, 'El Salvador'),
(65, 'Equatorial Guinea'),
(66, 'Eritrea'),
(67, 'Estonia'),
(68, 'Ethiopia'),
(69, 'Falkland Islands (Malvinas)'),
(70, 'Faroe Islands'),
(71, 'Fiji'),
(72, 'Finland'),
(73, 'France'),
(74, 'France, Metropolitan'),
(75, 'French Guiana'),
(76, 'French Polynesia'),
(77, 'French Southern Territories'),
(78, 'Gabon'),
(79, 'Gambia'),
(80, 'Georgia'),
(81, 'Germany'),
(82, 'Ghana'),
(83, 'Gibraltar'),
(84, 'Guernsey'),
(85, 'Greece'),
(86, 'Greenland'),
(87, 'Grenada'),
(88, 'Guadeloupe'),
(89, 'Guam'),
(90, 'Guatemala'),
(91, 'Guinea'),
(92, 'Guinea-Bissau'),
(93, 'Guyana'),
(94, 'Haiti'),
(95, 'Heard and Mc Donald Islands'),
(96, 'Honduras'),
(97, 'Hong Kong'),
(98, 'Hungary'),
(99, 'Iceland'),
(100, 'India'),
(101, 'Isle of Man'),
(102, 'Indonesia'),
(103, 'Iran (Islamic Republic of)'),
(104, 'Iraq'),
(105, 'Ireland'),
(106, 'Israel'),
(107, 'Italy'),
(108, 'Ivory Coast'),
(109, 'Jersey'),
(110, 'Jamaica'),
(111, 'Japan'),
(112, 'Jordan'),
(113, 'Kazakhstan'),
(114, 'Kenya'),
(115, 'Kiribati'),
(116, 'Korea, Democratic People\'s Republic of'),
(117, 'Korea, Republic of'),
(118, 'Kosovo'),
(119, 'Kuwait'),
(120, 'Kyrgyzstan'),
(121, 'Lao People\'s Democratic Republic'),
(122, 'Latvia'),
(123, 'Lebanon'),
(124, 'Lesotho'),
(125, 'Liberia'),
(126, 'Libyan Arab Jamahiriya'),
(127, 'Liechtenstein'),
(128, 'Lithuania'),
(129, 'Luxembourg'),
(130, 'Macau'),
(131, 'North Macedonia'),
(132, 'Madagascar'),
(133, 'Malawi'),
(134, 'Malaysia'),
(135, 'Maldives'),
(136, 'Mali'),
(137, 'Malta'),
(138, 'Marshall Islands'),
(139, 'Martinique'),
(140, 'Mauritania'),
(141, 'Mauritius'),
(142, 'Mayotte'),
(143, 'Mexico'),
(144, 'Micronesia, Federated States of'),
(145, 'Moldova, Republic of'),
(146, 'Monaco'),
(147, 'Mongolia'),
(148, 'Montenegro'),
(149, 'Montserrat'),
(150, 'Morocco'),
(151, 'Mozambique'),
(152, 'Myanmar'),
(153, 'Namibia'),
(154, 'Nauru'),
(155, 'Nepal'),
(156, 'Netherlands'),
(157, 'Netherlands Antilles'),
(158, 'New Caledonia'),
(159, 'New Zealand'),
(160, 'Nicaragua'),
(161, 'Niger'),
(162, 'Nigeria'),
(163, 'Niue'),
(164, 'Norfolk Island'),
(165, 'Northern Mariana Islands'),
(166, 'Norway'),
(167, 'Oman'),
(168, 'Pakistan'),
(169, 'Palau'),
(170, 'Palestine'),
(171, 'Panama'),
(172, 'Papua New Guinea'),
(173, 'Paraguay'),
(174, 'Peru'),
(175, 'Philippines'),
(176, 'Pitcairn'),
(177, 'Poland'),
(178, 'Portugal'),
(179, 'Puerto Rico'),
(180, 'Qatar'),
(181, 'Reunion'),
(182, 'Romania'),
(183, 'Russian Federation'),
(184, 'Rwanda'),
(185, 'Saint Kitts and Nevis'),
(186, 'Saint Lucia'),
(187, 'Saint Vincent and the Grenadines'),
(188, 'Samoa'),
(189, 'San Marino'),
(190, 'Sao Tome and Principe'),
(191, 'Saudi Arabia'),
(192, 'Senegal'),
(193, 'Serbia'),
(194, 'Seychelles'),
(195, 'Sierra Leone'),
(196, 'Singapore'),
(197, 'Slovakia'),
(198, 'Slovenia'),
(199, 'Solomon Islands'),
(200, 'Somalia'),
(201, 'South Africa'),
(202, 'South Georgia South Sandwich Islands'),
(203, 'South Sudan'),
(204, 'Spain'),
(205, 'Sri Lanka'),
(206, 'St. Helena'),
(207, 'St. Pierre and Miquelon'),
(208, 'Sudan'),
(209, 'Suriname'),
(210, 'Svalbard and Jan Mayen Islands'),
(211, 'Eswatini'),
(212, 'Sweden'),
(213, 'Switzerland'),
(214, 'Syrian Arab Republic'),
(215, 'Taiwan'),
(216, 'Tajikistan'),
(217, 'Tanzania, United Republic of'),
(218, 'Thailand'),
(219, 'Togo'),
(220, 'Tokelau'),
(221, 'Tonga'),
(222, 'Trinidad and Tobago'),
(223, 'Tunisia'),
(224, 'Turkey'),
(225, 'Turkmenistan'),
(226, 'Turks and Caicos Islands'),
(227, 'Tuvalu'),
(228, 'Uganda'),
(229, 'Ukraine'),
(230, 'United Arab Emirates'),
(231, 'United Kingdom'),
(232, 'United States'),
(233, 'United States minor outlying islands'),
(234, 'Uruguay'),
(235, 'Uzbekistan'),
(236, 'Vanuatu'),
(237, 'Vatican City State'),
(238, 'Venezuela'),
(239, 'Vietnam'),
(240, 'Virgin Islands (British)'),
(241, 'Virgin Islands (U.S.)'),
(242, 'Wallis and Futuna Islands'),
(243, 'Western Sahara'),
(244, 'Yemen'),
(245, 'Zambia'),
(246, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `daily_report`
--

CREATE TABLE `daily_report` (
  `DailyReportID` int(12) NOT NULL,
  `EmployeeID` int(12) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Title` longtext,
  `Detail` longtext,
  `SupervisorComments` longtext,
  `File` varchar(100) DEFAULT '',
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daily_report`
--

INSERT INTO `daily_report` (`DailyReportID`, `EmployeeID`, `Date`, `Title`, `Detail`, `SupervisorComments`, `File`, `eDate`) VALUES
(13, 118, '2023-01-25', 'sdf', 'sdf', 'ddddd', '', '2023-01-25 06:56:57'),
(14, 118, '2023-01-25', 'sdf', 'sdf', 'perfect', '', '2023-01-25 07:26:05'),
(15, 118, '2023-01-25', 'sdf', 'sdf', 'nice', '', '2023-01-25 10:57:51'),
(16, 118, '2023-01-30', 'kia kia hai', 'aslkdjflaskdjf l;askjdf ;lsakdjf ;laskdjf ;lsakjdf', 'perf3ect job done', '1675062905.png', '2023-01-30 07:15:05'),
(17, 118, '2023-01-31', 'hello', 'toay salkfj lsakdjf l;sakdjf', 'not satisfied do it again', '1675151443.png', '2023-01-31 07:50:43'),
(18, 118, '2023-02-20', 'sdf', 'efsef', 'TTT', '1676892344.jpg', '2023-02-20 11:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

CREATE TABLE `deal` (
  `DealID` int(12) NOT NULL,
  `EmployeeID` int(12) DEFAULT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `Phone` varchar(150) DEFAULT NULL,
  `ExpectedCloserDate` date DEFAULT NULL,
  `DealValue` varchar(150) DEFAULT NULL,
  `DealStatus` varchar(150) DEFAULT NULL,
  `Notes` longtext,
  `Date` date DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deduction_list`
--

CREATE TABLE `deduction_list` (
  `DeductionListID` int(8) NOT NULL,
  `DeductionTitle` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentID` int(8) NOT NULL,
  `DepartmentName` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentID`, `DepartmentName`) VALUES
(1, 'Sales'),
(2, 'Finance'),
(40, 'Amazon'),
(41, 'Market Place'),
(42, 'App Developer'),
(43, 'Web Developer'),
(44, 'HR'),
(45, 'Administration');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `DocumentID` int(10) NOT NULL,
  `DocumentCategoryID` int(12) DEFAULT NULL,
  `EmployeeID` int(10) DEFAULT NULL,
  `FileName` varchar(55) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `Cost` varchar(55) DEFAULT '',
  `File` varchar(55) DEFAULT NULL,
  `FileSize` varchar(12) DEFAULT NULL,
  `MimeType` varchar(55) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`DocumentID`, `DocumentCategoryID`, `EmployeeID`, `FileName`, `StartDate`, `ExpiryDate`, `Cost`, `File`, `FileSize`, `MimeType`, `eDate`) VALUES
(47, NULL, 116, 'Passort', NULL, NULL, '', '1669962468.png', '2.36 MB', NULL, '2022-12-02 06:27:48'),
(48, NULL, 116, 'CNIC', NULL, NULL, '', '1669962484.png', '12.17 KB', NULL, '2022-12-02 06:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `document_category`
--

CREATE TABLE `document_category` (
  `DocumentCategoryID` int(8) NOT NULL,
  `DocumentCategoryName` varchar(175) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_category`
--

INSERT INTO `document_category` (`DocumentCategoryID`, `DocumentCategoryName`, `eDate`) VALUES
(1, 'Office Document', '2022-10-27 02:07:40'),
(2, 'Staff Document', '2022-10-27 02:07:43'),
(3, 'Vehicle Document', '2022-10-27 02:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `educationlevel`
--

CREATE TABLE `educationlevel` (
  `EducationLevelID` int(8) NOT NULL,
  `EducationLevelName` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educationlevel`
--

INSERT INTO `educationlevel` (`EducationLevelID`, `EducationLevelName`) VALUES
(1, 'FA/FSC '),
(2, 'Bachelor'),
(3, 'Master'),
(4, 'MS/MPIL/PHD');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(8) NOT NULL,
  `BranchID` int(8) DEFAULT NULL,
  `Title` varchar(75) DEFAULT NULL,
  `IsSupervisor` varchar(3) DEFAULT NULL,
  `FirstName` varchar(88) DEFAULT NULL,
  `MiddleName` varchar(88) DEFAULT NULL,
  `LastName` varchar(88) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `VisaIssueDate` date DEFAULT NULL,
  `VisaExpiryDate` date DEFAULT NULL,
  `PassportNo` varchar(88) DEFAULT NULL,
  `PassportExpiry` date DEFAULT NULL,
  `EidNo` varchar(75) DEFAULT NULL,
  `EidExpiry` date DEFAULT NULL,
  `FullAddress` varchar(255) DEFAULT NULL,
  `MobileNo` varchar(35) DEFAULT NULL,
  `HomePhone` varchar(35) DEFAULT NULL,
  `Email` varchar(35) DEFAULT NULL,
  `Nationality` varchar(35) DEFAULT NULL,
  `Gender` varchar(35) DEFAULT NULL,
  `SSNorGID` varchar(35) DEFAULT NULL,
  `MaritalStatus` varchar(35) DEFAULT NULL,
  `SpouseName` varchar(50) DEFAULT NULL,
  `SpouseEmployer` varchar(52) DEFAULT NULL,
  `SpouseWorkPhone` varchar(33) DEFAULT NULL,
  `JobTitleID` varchar(33) DEFAULT NULL,
  `DepartmentID` int(8) DEFAULT NULL,
  `SupervisorID` int(8) DEFAULT NULL,
  `WorkLocation` varchar(55) DEFAULT NULL,
  `EmailOffical` varchar(55) DEFAULT NULL,
  `WorkPhone` varchar(55) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `Salary` double(10,2) DEFAULT NULL,
  `ExtraComission` double(10,2) DEFAULT NULL,
  `SalaryRemarks` longtext,
  `NextofKinName` varchar(75) DEFAULT NULL,
  `NextofKinAddress` varchar(255) DEFAULT NULL,
  `NextofKinPhone` varchar(55) DEFAULT NULL,
  `NextofKinRelationship` varchar(55) DEFAULT NULL,
  `EducationLevel` varchar(55) DEFAULT NULL,
  `LastDegree` varchar(75) DEFAULT NULL,
  `Picture` varchar(75) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `uDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `StaffType` varchar(25) DEFAULT NULL,
  `Password` varchar(25) DEFAULT '123456',
  `BankName` varchar(155) DEFAULT NULL,
  `IBAN` varchar(100) DEFAULT NULL,
  `AccountTitle` varchar(100) DEFAULT NULL,
  `SalaryType` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `BranchID`, `Title`, `IsSupervisor`, `FirstName`, `MiddleName`, `LastName`, `DateOfBirth`, `VisaIssueDate`, `VisaExpiryDate`, `PassportNo`, `PassportExpiry`, `EidNo`, `EidExpiry`, `FullAddress`, `MobileNo`, `HomePhone`, `Email`, `Nationality`, `Gender`, `SSNorGID`, `MaritalStatus`, `SpouseName`, `SpouseEmployer`, `SpouseWorkPhone`, `JobTitleID`, `DepartmentID`, `SupervisorID`, `WorkLocation`, `EmailOffical`, `WorkPhone`, `StartDate`, `Salary`, `ExtraComission`, `SalaryRemarks`, `NextofKinName`, `NextofKinAddress`, `NextofKinPhone`, `NextofKinRelationship`, `EducationLevel`, `LastDegree`, `Picture`, `eDate`, `uDate`, `StaffType`, `Password`, `BankName`, `IBAN`, `AccountTitle`, `SalaryType`) VALUES
(118, 1, 'Mr.', 'Yes', 'Demo Firstname', 'd', 'demo last name', '2001-01-31', NULL, '1970-01-01', NULL, '1970-01-01', NULL, '1970-01-01', NULL, NULL, NULL, 'demo@extbooks.com', 'Afghanistan', 'Male', NULL, 'Single', NULL, NULL, NULL, '1', 1, 118, NULL, NULL, NULL, '2022-08-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FA/FSC', NULL, NULL, '2023-01-17 09:46:00', '2023-03-02 05:43:04', 'Regular', '123456', NULL, NULL, NULL, NULL),
(119, 1, 'Mrs.', 'No', 'montasser', 'salah', 'ahmed', '1984-01-25', '2024-01-25', '2024-01-25', '3333', '2024-01-25', '772827898', '2024-01-25', NULL, '888888', NULL, 'M0508929777@GMAIL.COM', 'Afghanistan', 'Male', NULL, 'Single', NULL, NULL, NULL, '3', 1, NULL, NULL, NULL, NULL, '2020-01-25', 5000.00, 0.00, NULL, NULL, NULL, NULL, NULL, 'FA/FSC', NULL, NULL, '2023-03-04 18:11:42', NULL, 'Regular', '123456', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_allowance`
--

CREATE TABLE `emp_allowance` (
  `EmployeeAllowanceID` int(8) NOT NULL,
  `EmployeeID` int(8) DEFAULT NULL,
  `AllowanceListID` int(8) DEFAULT NULL,
  `Amount` int(8) DEFAULT NULL,
  `Active` varchar(3) DEFAULT 'Y',
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_deduction`
--

CREATE TABLE `emp_deduction` (
  `EmployeeDeductionID` int(8) NOT NULL,
  `EmployeeSalaryID` int(8) DEFAULT NULL,
  `DeductionListID` int(8) DEFAULT NULL,
  `Amount` int(8) DEFAULT NULL,
  `Active` varchar(1) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary`
--

CREATE TABLE `emp_salary` (
  `EmployeeAllowanceID` int(8) NOT NULL,
  `EmployeeID` int(8) DEFAULT NULL,
  `AllowanceListID` int(8) DEFAULT NULL,
  `Amount` int(8) DEFAULT NULL,
  `Active` varchar(3) DEFAULT 'Y',
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_salary`
--

INSERT INTO `emp_salary` (`EmployeeAllowanceID`, `EmployeeID`, `AllowanceListID`, `Amount`, `Active`, `eDate`) VALUES
(1, 118, 1, 2000, 'Yes', '2023-01-31 07:45:55'),
(2, 118, 2, 1000, 'Yes', '2023-01-31 07:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary____`
--

CREATE TABLE `emp_salary____` (
  `EmployeeSalaryID` int(8) NOT NULL,
  `AllowanceTypeID` int(8) DEFAULT NULL,
  `EmployeeID` int(8) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Salary` int(8) DEFAULT NULL,
  `Active` varchar(3) DEFAULT 'Y',
  `Remarks` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eu`
--

CREATE TABLE `eu` (
  `EuID` int(8) NOT NULL,
  `MonthName` varchar(25) DEFAULT NULL,
  `BranchID` int(8) DEFAULT NULL,
  `No` int(8) DEFAULT NULL,
  `Sum` int(8) DEFAULT NULL,
  `NetDeposit` int(8) DEFAULT NULL,
  `FTD` int(8) DEFAULT NULL,
  `Per` int(8) DEFAULT NULL,
  `Total` int(8) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fcb`
--

CREATE TABLE `fcb` (
  `FCBID` int(12) NOT NULL,
  `BranchID` int(8) DEFAULT NULL,
  `ID` int(8) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `FTDAmount` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Compliant` varchar(25) DEFAULT NULL,
  `KYCSent` varchar(25) DEFAULT NULL,
  `Dialer` int(11) DEFAULT NULL,
  `Remarks` longtext,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_detail`
--

CREATE TABLE `fleet_detail` (
  `FleetDetailID` int(12) NOT NULL,
  `FleetMasterID` int(12) NOT NULL,
  `RegistrationStartDate` date DEFAULT NULL,
  `RegistrationEndDate` date DEFAULT NULL,
  `InsuranceStartDate` date DEFAULT NULL,
  `InsuranceEndDate` date DEFAULT NULL,
  `InsuranceCompanyName` varchar(255) DEFAULT NULL,
  `OilChangeDate` date DEFAULT NULL,
  `LastReading` varchar(255) DEFAULT NULL,
  `OilDueDate` date DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_master`
--

CREATE TABLE `fleet_master` (
  `FleetMasterID` int(8) NOT NULL,
  `VehicleModel` varchar(155) DEFAULT NULL,
  `OwnerName` varchar(255) DEFAULT NULL,
  `Picure` varchar(255) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue_letter`
--

CREATE TABLE `issue_letter` (
  `IssueLetterID` int(8) NOT NULL,
  `LetterID` int(8) DEFAULT NULL,
  `EmployeeID` int(8) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` longtext,
  `UserID` int(8) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_letter`
--

INSERT INTO `issue_letter` (`IssueLetterID`, `LetterID`, `EmployeeID`, `Title`, `Content`, `UserID`, `eDate`) VALUES
(1, 1, 118, 'Offer Letter', '<p><strong>d d </strong><br />Filipino Passport:</p>\r\n<p>Dear d;</p>\r\n<p align=\"center\"><strong><u>EMPLOYMENT OFFER</u></strong></p>\r\n<p>We are glad to offer you employment in our company on the following terms and conditions:</p>\r\n<table style=\"height: 288px;\" border=\"0\" width=\"1056\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\" width=\"25\">1.</td>\r\n<td style=\"height: 18px;\" valign=\"top\" width=\"213\">Position&nbsp;</td>\r\n<td style=\"height: 18px;\" valign=\"top\" width=\"818\">: Sale Manager</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">2.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Location</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: Jhelum</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">3.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Total Monthly Salary</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: PKR:</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">4.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Bonus/Commission</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: Upon company discretion</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">5.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Accommodation</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: to be arranged by Employee</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">6.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Transportation</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: to be arranged by Employee</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">7.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Contract period</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: Two years, UNLIMITED</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">8.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Probation period</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: (6) months</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">9.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Working hours</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: 8 hours/day, 6 days/week</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">10.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Vacation</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: 30 days per year</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">11.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Increment after probation</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: PKR 1,000</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">12.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Air Ticket</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: Upon renewal the contract you can take returned ticket from DXB to your home country.</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">&nbsp;</td>\r\n<td style=\"height: 18px;\" valign=\"top\">&nbsp;</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: If you will not renew you can only avail returned ticket to your home country</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">13.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">Medical, Insurance</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: As per PAK. Labor Law</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\">14.</td>\r\n<td style=\"height: 18px;\" valign=\"top\">End of Service Benefits</td>\r\n<td style=\"height: 18px;\" valign=\"top\">: As per PAK. Labor Law</td>\r\n</tr>\r\n<tr style=\"height: 18px;\">\r\n<td style=\"height: 18px;\" valign=\"top\">&nbsp;</td>\r\n<td style=\"height: 18px;\" valign=\"top\">&nbsp;</td>\r\n<td style=\"height: 18px;\" valign=\"top\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Should you accept our offer based on the above conditions, please sign and return copy of this letter as a token of your acceptance. The joining date will be on July 17th and if failed to come this offer will be null and void.</p>\r\n<p>This Offer is subject to your visa approval, medical fitness and you&rsquo;re reporting to duty on agreed date.</p>\r\n<p>This Offer is valid for 7 days from date of issuing.</p>\r\n<p>We welcome you to <strong>Shah Corporation</strong> and wish you good luck.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\"><strong>Manager HR</strong></td>\r\n<td width=\"50%\"><em>Accepted: _____________________</em></td>\r\n</tr>\r\n<tr>\r\n<td width=\"50%\"><em>Managing Director</em></td>\r\n<td width=\"50%\"><em>Date:</em></td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, '2023-01-31 07:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `jobtitle`
--

CREATE TABLE `jobtitle` (
  `JobTitleID` int(8) NOT NULL,
  `JobTitleName` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobtitle`
--

INSERT INTO `jobtitle` (`JobTitleID`, `JobTitleName`) VALUES
(1, 'Sale Manager'),
(2, 'Software Engineering'),
(3, 'Web Developer'),
(4, 'Mobile App Developer'),
(5, 'Digital Marketing'),
(6, 'Amazon');

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

CREATE TABLE `lead` (
  `LeadID` int(12) NOT NULL,
  `EmployeeID` int(12) DEFAULT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Phone` varchar(75) DEFAULT NULL,
  `Email` varchar(75) DEFAULT NULL,
  `CompanyName` varchar(255) DEFAULT NULL,
  `BusinessType` varchar(255) DEFAULT NULL,
  `LeadStage` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `LeaveID` int(8) NOT NULL,
  `LeaveTypeID` int(8) DEFAULT NULL,
  `BranchID` int(8) DEFAULT NULL,
  `EmployeeID` int(8) DEFAULT NULL,
  `FromDate` date DEFAULT NULL,
  `ToDate` date DEFAULT NULL,
  `FromTime` time DEFAULT NULL,
  `ToTime` time DEFAULT NULL,
  `Reason` longtext,
  `DaysApproved` int(3) DEFAULT NULL,
  `DaysRemaining` int(3) DEFAULT NULL,
  `OMStatus` varchar(20) DEFAULT 'Pending',
  `OMStatusDate` timestamp NULL DEFAULT NULL,
  `OMRemarks` longtext,
  `HRStatus` varchar(20) DEFAULT 'Pending',
  `HRStatusDate` timestamp NULL DEFAULT NULL,
  `HRRemarks` longtext,
  `GMStatus` varchar(20) DEFAULT 'Pending',
  `GMRemarks` longtext,
  `GMStatusDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`LeaveID`, `LeaveTypeID`, `BranchID`, `EmployeeID`, `FromDate`, `ToDate`, `FromTime`, `ToTime`, `Reason`, `DaysApproved`, `DaysRemaining`, `OMStatus`, `OMStatusDate`, `OMRemarks`, `HRStatus`, `HRStatusDate`, `HRRemarks`, `GMStatus`, `GMRemarks`, `GMStatusDate`) VALUES
(89, 2, 1, 118, '2023-05-13', '2023-05-13', '12:00:00', '16:00:00', 'urgent piece of work', NULL, NULL, 'Pending', NULL, NULL, 'Pending', NULL, NULL, 'Yes', 'approved.', '2023-05-13 06:00:00');

--
-- Triggers `leave`
--
DELIMITER $$
CREATE TRIGGER `afterdeleteleave` AFTER DELETE ON `leave` FOR EACH ROW begin

delete from leave_detail where LeaveID = old.LeaveID;


end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `leave_detail`
--

CREATE TABLE `leave_detail` (
  `LeaveDetailID` int(12) NOT NULL,
  `LeaveID` int(12) DEFAULT NULL,
  `EmployeeID` int(12) DEFAULT NULL,
  `LeaveTypeID` int(12) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `FromTime` time DEFAULT NULL,
  `ToTime` time DEFAULT NULL,
  `PaymentStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_detail`
--

INSERT INTO `leave_detail` (`LeaveDetailID`, `LeaveID`, `EmployeeID`, `LeaveTypeID`, `Date`, `FromTime`, `ToTime`, `PaymentStatus`) VALUES
(260, 89, 118, 2, '2023-05-13', '12:00:00', '16:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `leave_status`
--

CREATE TABLE `leave_status` (
  `LeaveStatusID` int(8) NOT NULL,
  `LeaveStatus` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_status`
--

INSERT INTO `leave_status` (`LeaveStatusID`, `LeaveStatus`) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `LeaveTypeID` int(8) NOT NULL,
  `LeaveTypeName` varchar(35) DEFAULT NULL,
  `DaysAllowed` varchar(255) DEFAULT NULL,
  `NoOfDays` int(8) DEFAULT NULL,
  `Points` double(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`LeaveTypeID`, `LeaveTypeName`, `DaysAllowed`, `NoOfDays`, `Points`) VALUES
(1, 'Annual Leave', '30 days', 30, 1.00),
(2, 'Short Leave', '7 days', 7, 0.50),
(3, 'Sick Leave', '15 days\' full pay, 15 days half pay, 45 days unpaid', 15, 1.00),
(4, 'Maternity', '60 days', 45, 1.00),
(5, 'Bereavement', '10 days for blood relation', 3, 1.00),
(6, 'Study ', '10 days per year ', 10, 1.00),
(7, 'Emergency', '7 days', 7, 1.00),
(8, 'Paternity', '5 days', 5, 1.00),
(9, 'Emergency', '7 days without pay', 7, 1.00),
(10, 'Unpaid', '7 days without pay', 7, 1.00),
(11, 'Casual Leave', '7 days without pay', 7, 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `letter`
--

CREATE TABLE `letter` (
  `LetterID` int(8) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` longtext,
  `UserID` int(8) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `letter`
--

INSERT INTO `letter` (`LetterID`, `Title`, `Content`, `UserID`, `eDate`) VALUES
(1, 'Offer Letter', '<p><strong>^FullName^</strong><br />Filipino Passport: <strong>^Passport^</strong></p>\r\n<p>Dear ^FirstName^;</p>\r\n<p align=\"center\"><strong><u>EMPLOYMENT OFFER</u></strong></p>\r\n<p>We are glad to offer you employment in our company on the following terms and conditions:</p>\r\n<table border=\"0\" width=\"1056\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"25\">1.</td>\r\n<td valign=\"top\" width=\"213\">Position&nbsp;</td>\r\n<td valign=\"top\" width=\"818\">: ^Designation^</td>\r\n</tr>\r\n<tr>\r\n<td>2.</td>\r\n<td valign=\"top\">Location</td>\r\n<td valign=\"top\">: ^Location^</td>\r\n</tr>\r\n<tr>\r\n<td>3.</td>\r\n<td valign=\"top\">Total Monthly Salary</td>\r\n<td valign=\"top\">: PKR: ^Salary^</td>\r\n</tr>\r\n<tr>\r\n<td>4.</td>\r\n<td valign=\"top\">Bonus/Commission</td>\r\n<td valign=\"top\">: Upon company discretion</td>\r\n</tr>\r\n<tr>\r\n<td>5.</td>\r\n<td valign=\"top\">Accommodation</td>\r\n<td valign=\"top\">: to be arranged by Employee</td>\r\n</tr>\r\n<tr>\r\n<td>6.</td>\r\n<td valign=\"top\">Transportation</td>\r\n<td valign=\"top\">: to be arranged by Employee</td>\r\n</tr>\r\n<tr>\r\n<td>7.</td>\r\n<td valign=\"top\">Contract period</td>\r\n<td valign=\"top\">: Two years, UNLIMITED</td>\r\n</tr>\r\n<tr>\r\n<td>8.</td>\r\n<td valign=\"top\">Probation period</td>\r\n<td valign=\"top\">: (6) months</td>\r\n</tr>\r\n<tr>\r\n<td>9.</td>\r\n<td valign=\"top\">Working hours</td>\r\n<td valign=\"top\">: 8 hours/day, 6 days/week</td>\r\n</tr>\r\n<tr>\r\n<td>10.</td>\r\n<td valign=\"top\">Vacation</td>\r\n<td valign=\"top\">: 30 days per year</td>\r\n</tr>\r\n<tr>\r\n<td>11.</td>\r\n<td valign=\"top\">Increment after probation</td>\r\n<td valign=\"top\">: PKR 1,000</td>\r\n</tr>\r\n<tr>\r\n<td>12.</td>\r\n<td valign=\"top\">Air Ticket</td>\r\n<td valign=\"top\">: Upon renewal the contract you can take returned ticket from DXB to your home country.</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td valign=\"top\">&nbsp;</td>\r\n<td valign=\"top\">: If you will not renew you can only avail returned ticket to your home country</td>\r\n</tr>\r\n<tr>\r\n<td>13.</td>\r\n<td valign=\"top\">Medical, Insurance</td>\r\n<td valign=\"top\">: As per PAK. Labor Law</td>\r\n</tr>\r\n<tr>\r\n<td>14.</td>\r\n<td valign=\"top\">End of Service Benefits</td>\r\n<td valign=\"top\">: As per PAK. Labor Law</td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">&nbsp;</td>\r\n<td valign=\"top\">&nbsp;</td>\r\n<td valign=\"top\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Should you accept our offer based on the above conditions, please sign and return copy of this letter as a token of your acceptance. The joining date will be on July 17th and if failed to come this offer will be null and void.</p>\r\n<p>This Offer is subject to your visa approval, medical fitness and you&rsquo;re reporting to duty on agreed date.</p>\r\n<p>This Offer is valid for 7 days from date of issuing.</p>\r\n<p>We welcome you to <strong>Shah Corporation</strong> and wish you good luck.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\"><strong>Manager HR</strong></td>\r\n<td width=\"50%\"><em>Accepted: _____________________</em></td>\r\n</tr>\r\n<tr>\r\n<td width=\"50%\"><em>Managing Director</em></td>\r\n<td width=\"50%\"><em>Date:</em></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-12-02 06:30:41'),
(3, 'Increment Letter', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\">Ref: SHAH/L/2021-82&nbsp;</td>\r\n<td width=\"50%\">\r\n<div align=\"right\">Date: May 23, 2021</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p align=\"center\">&nbsp;</p>\r\n<p>^FullName^,<br />Passport No: ^Passport^<br />Nationality: ^Nationality^<br />^Designation^<br />Friends Commodities Brokerage LLC</p>\r\n<p>&nbsp;</p>\r\n<p>Subject: <strong><u>Employee Appreciation and performance bonus</u></strong></p>\r\n<p>Dear ^FirstName^,</p>\r\n<p>After reviewing your performance in the last three months carefully, the management of Friends Commodities Brokerage is glad to offer you an increment for achieving the sales targets as expected. The effective date of this increase is August 1, 2021 and the increase will appear as follow;</p>\r\n<p>We hope this will encourage you to perform even better, and please note that the company will have the complete right to halt the bonus at any time in case your performances fall.</p>\r\n<p>Thank you for your commitment and dedication. Keep up the good work.</p>\r\n<p>&nbsp;</p>\r\n<p>Sincerely,</p>\r\n<p>Approved By:</p>\r\n<p>&nbsp;</p>\r\n<p>HR Administrator&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : ___________________</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>I have read, fully understand and accept the terms and conditions mentioned herein<br />Full Name: _____________________________<br />Signature: _____________________________Date: ______________________</p>', NULL, '2022-12-02 06:33:18'),
(5, 'Salary Letter', '<p class=\"style1\" align=\"center\">Salary Certificate</p>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\">Ref: SHAH/L/2021-82&nbsp;</td>\r\n<td width=\"50%\">\r\n<div align=\"right\">Date: May 23, 2021</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p align=\"center\">&nbsp;</p>\r\n<p>To whom it may concern;<br />This is to certify that <strong>^FullName^ </strong>holding Passport number <strong>^Passport^</strong> is working with our reputed company <strong>Friends Commodity Brokerage LLC</strong> as a Marketing Specialist. He has been working with us since 1st August 2019 and proved to be a very dedicated resource that has been very loyal to the company.<br />We are issuing this letter on the request of <strong>^FullName^ </strong>and do not hold any liability on behalf of this letter or part of this letter on our company.<br />This certificate can be used for the purpose of opening bank accounts only.<br />His salary particulars are given below:</p>\r\n<p>Basic Salary&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PKR 5000.00<br />House Rent Allowance&nbsp; &nbsp; &nbsp;PKR 3000.00<br /><u>Transport Allowance&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PKR 2000.00</u><br /><strong>Net Salary&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PKR 10,000.00</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Sincerely yours,</p>\r\n<p><em><u>HR Administrator</u></em><br /><em><u>04- 580 7617</u></em></p>', NULL, '2022-12-02 06:32:35'),
(6, 'Warning Letter', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\">Name of Employee: <strong>&nbsp;^FullName^</strong></td>\r\n<td width=\"50%\">\r\n<div align=\"right\">Date: May 23, 2021</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Passport No: <strong>^Passport^</strong></td>\r\n<td>\r\n<div align=\"right\">Ref: SHAH/L/2021-82&nbsp;</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Nationality: ^Nationality^</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><strong>Subject :</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><u>Third Written Warning</u></strong><strong><u> </u></strong></p>\r\n<p>&nbsp;</p>\r\n<p>Dear <strong>^FirstName^</strong>,<br />The management has been observing your performance for a couple of months, and unfortunately we noticed that you were not able to meet the minimum target which has been set for you. &nbsp;We are very clear and you were informed beforehand that accomplishment of daily targets by each employee has a huge importance to the company&rsquo;s growth.</p>\r\n<p><br />You are advised to achieve a desired sales target of at least <strong>10 Million from today until the 22nd day of the month of September.</strong><br />Please be reminded that your performance would be strictly evaluated at the end of this month and <strong><em>failure to comply with the said target may lead into corrective action up to termination</em></strong>. So kindly do all your best and hoping that you will achieve the sales target required by the management.</p>\r\n<p>This is for your kind information.</p>\r\n<p>Sincerely yours;</p>\r\n<p>&nbsp;</p>\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"50%\">&nbsp;</td>\r\n<td width=\"50%\"><strong>Acknowledge By: ______________</strong><strong>___</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\"50%\"><strong>HR Administrator</strong>&nbsp;&nbsp;</td>\r\n<td width=\"50%\"><strong>^FirstName^</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '2022-12-02 06:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `LoanID` int(8) NOT NULL,
  `EmployeeID` int(8) DEFAULT NULL,
  `RequestDate` date DEFAULT NULL,
  `Amount` int(8) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `DateAccepted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`LoanID`, `EmployeeID`, `RequestDate`, `Amount`, `Remarks`, `DateAccepted`) VALUES
(4, 117, '2022-12-15', 15000, 'loan for home', NULL),
(5, 118, '2023-01-04', 15000, 'for home contrstuction', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_deduction`
--

CREATE TABLE `loan_deduction` (
  `LoanDeductionID` int(8) NOT NULL,
  `LoanID` int(8) DEFAULT NULL,
  `EmployeeID` int(10) DEFAULT NULL,
  `LoanDeductionDate` date DEFAULT NULL,
  `Amount` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_deduction`
--

INSERT INTO `loan_deduction` (`LoanDeductionID`, `LoanID`, `EmployeeID`, `LoanDeductionDate`, `Amount`) VALUES
(43, 4, 117, '2022-12-18', 1250),
(44, 4, 117, '2023-01-18', 1250),
(45, 4, 117, '2023-02-18', 1250),
(46, 4, 117, '2023-03-18', 1250),
(47, 4, 117, '2023-04-18', 1250),
(48, 4, 117, '2023-05-18', 1250),
(49, 4, 117, '2023-06-18', 1250),
(50, 4, 117, '2023-07-18', 1250),
(51, 4, 117, '2023-08-18', 1250),
(52, 4, 117, '2023-09-18', 1250),
(53, 4, 117, '2023-10-18', 1250),
(54, 4, 117, '2023-11-18', 1250),
(55, 5, 118, '2023-02-01', 1500),
(56, 5, 118, '2023-03-01', 1500),
(57, 5, 118, '2023-04-01', 1500),
(58, 5, 118, '2023-05-01', 1500),
(59, 5, 118, '2023-06-01', 1500),
(60, 5, 118, '2023-07-01', 1500),
(61, 5, 118, '2023-08-01', 1500),
(62, 5, 118, '2023-09-01', 1500),
(63, 5, 118, '2023-10-01', 1500),
(64, 5, 118, '2023-11-01', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_10_10_143303_create_attendances_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monthname`
--

CREATE TABLE `monthname` (
  `MonthID` int(8) NOT NULL,
  `MonthName` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthname`
--

INSERT INTO `monthname` (`MonthID`, `MonthName`) VALUES
(10, 'Oct-2021'),
(11, 'Nov-2021'),
(12, 'Dec-2021'),
(13, 'Jan-2022'),
(14, 'Feb-2022'),
(15, 'Mar-2022'),
(16, 'Apr-2022'),
(17, 'May-2022'),
(18, 'Jun-2022'),
(19, 'Jul-2022'),
(20, 'Aug-2022'),
(21, 'Sep-2022'),
(22, 'Oct-2022'),
(23, 'Nov-2022'),
(24, 'Dec-2022'),
(25, 'Jan-2023'),
(26, 'Feb-2023'),
(27, 'Mar-2023'),
(28, 'Apr-2023'),
(29, 'May-2023'),
(30, 'Jun-2023'),
(31, 'Jul-2023'),
(32, 'Aug-2023'),
(33, 'Sep-2023'),
(34, 'Oct-2023'),
(35, 'Nov-2023'),
(36, 'Dec-2023');

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `NoticeBoardID` int(12) NOT NULL,
  `Title` longtext,
  `Detail` longtext,
  `Status` varchar(25) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT NULL,
  `uDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`NoticeBoardID`, `Title`, `Detail`, `Status`, `Date`, `eDate`, `uDate`) VALUES
(1, 'New Title', '<p>Authorities say lender &lsquo;changed its mind&rsquo; on at least four prior actions<br />\n  &bull; Officials hint at &lsquo;1998-like situation&rsquo;, say foreign capitals working for Pakistan&rsquo;s &lsquo;meltdown&rsquo;<br />\n  &bull; Despite its pro-poor mantra, sources claim Fund pushing measures that may hit low-income groups</p>\n<p>ISLAMABAD: The government has been trying to put on a brave face in its struggle to unlock critical funding from the IMF, but background discussions with officials reveal the administration is quite nervous beneath its confident exterior, as it finds it increasingly difficult to convince the Fund to release a loan instalment.</p>\n<p>The International Monetary Fund (IMF) has changed interpretations of at least four prior actions ahead of rea&shy;ching a staff-level agreement (SLA) on the direly needed economic bailout.</p>\n<p>Sources say the authorities are extremely annoyed at the latest situation, describing it as &lsquo;maltreatment&rsquo;.</p>', 'Publish', '2023-02-01', NULL, '2023-03-01 04:28:10'),
(2, 'Pakistan, IMF resume talks to revive stalled bailout', '  &bull; Officials hint at &lsquo;1998-like situation&rsquo;, say foreign capitals working for Pakistan&rsquo;s &lsquo;meltdown&rsquo;<br />', NULL, '2023-02-01', NULL, '2023-03-01 04:27:19'),
(3, 'sdfsdf', '  &bull; Despite its pro-poor mantra, sources claim Fund pushing measures that may hit low-income groups</p>', 'Draft', '2023-02-01', NULL, '2023-03-01 04:27:19'),
(4, 'dfsdfsd', '<p>ISLAMABAD: The government has been trying to put on a brave face in its struggle to unlock critical funding from the IMF, but background discussions with officials reveal the administration is quite nervous beneath its confident exterior, as it finds it increasingly difficult to convince the Fund to release a loan instalment.</p>', 'Draft', '2023-02-01', NULL, '2023-03-01 04:27:19'),
(5, 'ali', '<p>The International Monetary Fund (IMF) has changed interpretations of at least four prior actions ahead of rea&shy;ching a staff-level agreement (SLA) on the direly needed economic bailout.</p>', 'Publish', '2023-02-15', NULL, '2023-03-01 04:27:19'),
(6, NULL, '<p>Sources say the authorities are extremely annoyed at the latest situation, describing it as &lsquo;maltreatment&rsquo;.</p>', NULL, NULL, NULL, NULL),
(7, 'SHSJSHGHJH', '<p>DJHDJDHJD</p>\r\n<p>DMNMDI,KPO KLOOE</p>', 'Draft', '2023-03-04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notice_seen`
--

CREATE TABLE `notice_seen` (
  `NoticeSeenID` int(12) NOT NULL,
  `NoticeBoardID` int(12) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `progress_report`
--

CREATE TABLE `progress_report` (
  `ID` bigint(14) NOT NULL,
  `Date` date DEFAULT NULL,
  `EmployeeID` int(12) DEFAULT NULL,
  `Subject` longtext,
  `Location` varchar(255) DEFAULT NULL,
  `MeetingRemarks` longtext,
  `Picture` varchar(255) DEFAULT NULL,
  `SupervisorComments` longtext,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleID` int(8) NOT NULL,
  `Table` varchar(55) DEFAULT NULL,
  `Action` varchar(55) DEFAULT NULL,
  `Allow` varchar(1) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleID`, `Table`, `Action`, `Allow`) VALUES
(1, 'Employee', 'View', 'Y'),
(12, 'Employee', 'Create', 'Y'),
(13, 'Employee', 'Update', 'Y'),
(14, 'Employee', 'Delete', 'Y'),
(15, 'Employee', 'List', 'Y'),
(16, 'Employee', 'Detail', 'Y'),
(22, 'Import Attendance', 'Import', 'Y'),
(23, 'Salary', 'Make', 'Y'),
(24, 'Search Salary', 'List', 'Y'),
(25, 'Search Salary', 'Delete', 'Y'),
(26, 'Operation Manager', 'List/Create', 'Y'),
(27, 'Operation Manager', 'Update', 'Y'),
(28, 'Operation Manager', 'Delete', 'Y'),
(29, 'Operation Manager', 'View', 'Y'),
(30, 'Branch', 'Create/List', 'Y'),
(31, 'Branch', 'Update', 'Y'),
(32, 'Branch', 'Delete', 'Y'),
(33, 'Department', 'Create/List', 'Y'),
(34, 'Department', 'Update', 'Y'),
(35, 'Department', 'Delete', 'Y'),
(36, 'Job Title', 'Create/List', 'Y'),
(37, 'Job Title', 'Update', 'Y'),
(38, 'Job Title', 'Delete', 'Y'),
(39, 'Letter Template', 'Create / List', 'Y'),
(40, 'Letter Template', 'Update', 'Y'),
(41, 'Letter Template', 'Delete', 'Y'),
(42, 'Team Structure', 'List', 'Y'),
(43, 'Users', 'Create / List', 'Y'),
(44, 'Users', 'Update', 'Y'),
(45, 'Users', 'Delete', 'Y'),
(46, 'Employee Detail', 'List', 'Y'),
(47, 'Employee Detail', 'Files Upload/List', 'Y'),
(48, 'Employee Detail', 'File Delete', 'Y'),
(49, 'Employee Detail', 'Salary View', 'Y'),
(50, 'Employee Detail', 'Salary Commission View', 'Y'),
(51, 'Employee Detail', 'Letter Issue / Letter Issued', 'Y'),
(52, 'Employee Detail', 'Delete Issued Letter', 'Y'),
(53, 'Employee Detail', 'Print Issued Letter', 'Y'),
(54, 'Employee Detail', 'Leave Create / List', 'Y'),
(55, 'Employee Detail', 'Leave Delete', 'Y'),
(56, 'Employee Detail', 'Leave Edit', 'Y'),
(57, 'Employee Detail', 'Attendance View', 'Y'),
(58, 'Employee Detail', 'Warning Letter List', 'Y'),
(59, 'Employee Detail', 'Deposit', 'Y'),
(60, 'Employee Detail', 'Supervising', 'Y'),
(61, 'Team Hierarchy', 'View', 'Y'),
(62, 'Employee Detail', 'Issued Letter Update', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `SalaryID` int(11) NOT NULL,
  `BranchID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `EmployeeName` varchar(75) DEFAULT NULL,
  `JobTitle` varchar(75) DEFAULT NULL,
  `Department` varchar(75) DEFAULT NULL,
  `MonthName` varchar(255) DEFAULT NULL,
  `StaffType` varchar(25) DEFAULT NULL,
  `DaysPresent` double(12,2) DEFAULT NULL,
  `LWPay` double(12,2) DEFAULT NULL,
  `PerDay` double(12,2) DEFAULT NULL,
  `BasicSalary` double(12,2) DEFAULT NULL,
  `HRA` double(12,2) DEFAULT NULL,
  `Transport` double(12,2) DEFAULT NULL,
  `OtherAllowance` double(12,2) DEFAULT NULL,
  `AdvanceLoan` double(12,2) DEFAULT NULL,
  `LeaveDeduction` double(12,2) DEFAULT NULL,
  `TotalDeduction` double(12,2) DEFAULT NULL,
  `GrandSalary` double(12,2) DEFAULT NULL,
  `NetSalary` double(12,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `uDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UserID` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`SalaryID`, `BranchID`, `EmployeeID`, `EmployeeName`, `JobTitle`, `Department`, `MonthName`, `StaffType`, `DaysPresent`, `LWPay`, `PerDay`, `BasicSalary`, `HRA`, `Transport`, `OtherAllowance`, `AdvanceLoan`, `LeaveDeduction`, `TotalDeduction`, `GrandSalary`, `NetSalary`, `eDate`, `uDate`, `UserID`) VALUES
(210, 1, 116, 'Kashif  Mushtaq', 'Web Developer', 'Web Developer', 'Oct-2021', 'Regular', 31.00, 0.00, 1210.00, 25000.00, 2500.00, 2500.00, 7500.00, 0.00, 0.00, 0.00, 37500.00, 37500.00, '2022-12-02 06:52:02', NULL, 1),
(211, 1, 116, 'Kashif  Mushtaq', 'Web Developer', 'Web Developer', 'Nov-2021', 'Regular', 30.00, 0.00, 1250.00, 25000.00, 2500.00, 2500.00, 7500.00, 0.00, 0.00, 0.00, 37500.00, 37500.00, '2022-12-02 11:04:48', NULL, 1),
(212, 1, 117, 'kHALIQ  ABDUL', 'Sale Manager', 'Sales', 'Nov-2021', 'Regular', 30.00, 1.00, 1000.00, 25000.00, 2500.00, 2500.00, 0.00, 0.00, 1000.00, 1000.00, 30000.00, 29000.00, '2022-12-02 11:04:48', NULL, 1),
(213, 1, 118, 'd d', 'Sale Manager', 'Sales', 'Feb-2022', 'Regular', 31.00, 5.00, 97.00, 2000.00, 1000.00, 0.00, 0.00, 0.00, 485.00, 485.00, 3000.00, 2515.00, '2023-01-31 07:49:03', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stafftype_____`
--

CREATE TABLE `stafftype_____` (
  `StaffTypeID` int(8) NOT NULL,
  `StaffType` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stafftype_____`
--

INSERT INTO `stafftype_____` (`StaffTypeID`, `StaffType`) VALUES
(1, 'Agent'),
(2, 'Closer'),
(3, 'Floor Manager'),
(4, 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `StaffTypeID` int(8) NOT NULL,
  `StaffType` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`StaffTypeID`, `StaffType`) VALUES
(4, 'Regular'),
(5, 'HR'),
(6, 'GM'),
(7, 'OM'),
(8, 'Inactive'),
(10, 'Admin'),
(11, 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `t1`
--

CREATE TABLE `t1` (
  `EmployeeID` int(11) DEFAULT NULL,
  `EmployeeName` varchar(55) DEFAULT NULL,
  `CheckIn` varchar(10) DEFAULT NULL,
  `CheckOut` varchar(10) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t2`
--

CREATE TABLE `t2` (
  `EmployeeID` int(11) DEFAULT NULL,
  `EmployeeName` varchar(55) DEFAULT NULL,
  `CheckIn` time(6) DEFAULT NULL,
  `CheckOut` time(6) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `FinalTime` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `target`
--

CREATE TABLE `target` (
  `TargetID` int(12) NOT NULL,
  `DepartmentID` int(12) DEFAULT NULL,
  `TargetType` varchar(150) DEFAULT NULL,
  `TargetName` varchar(150) DEFAULT NULL,
  `TargetPeriod` varchar(150) DEFAULT NULL,
  `Detail` longtext,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `target`
--

INSERT INTO `target` (`TargetID`, `DepartmentID`, `TargetType`, `TargetName`, `TargetPeriod`, `Detail`, `StartDate`, `EndDate`, `Date`, `eDate`) VALUES
(1, 1, 'Weekly', 'Amazone Orders', NULL, 'orders', '2023-01-28', '2023-01-31', '2023-01-25', '2023-01-28 02:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `target_reply`
--

CREATE TABLE `target_reply` (
  `TargetReplyID` int(12) NOT NULL,
  `TargetID` int(12) DEFAULT NULL,
  `EmployeeID` int(12) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Detail` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `target_reply`
--

INSERT INTO `target_reply` (`TargetReplyID`, `TargetID`, `EmployeeID`, `Date`, `Detail`) VALUES
(7, 1, 118, '2023-03-01', 'DFG');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `TitleID` int(8) NOT NULL,
  `Title` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`TitleID`, `Title`) VALUES
(1, 'Mr.'),
(2, 'Mrs.'),
(3, 'Miss.'),
(4, 'Ms.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(8) NOT NULL,
  `BranchID` int(8) DEFAULT NULL,
  `FullName` varchar(55) DEFAULT NULL,
  `Email` varchar(55) DEFAULT NULL,
  `Password` varchar(75) DEFAULT NULL,
  `UserType` varchar(25) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Active` varchar(1) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `BranchID`, `FullName`, `Email`, `Password`, `UserType`, `eDate`, `Active`) VALUES
(1, 1, 'Kashif Mushtaq', 'demo@extbooks.com', '123456', 'GM', '2023-03-02 05:43:28', 'Y'),
(2, 1, 'ASIM', 'hr@extbooks.com', '123456', 'HR', '2023-03-02 05:43:40', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `RoleId` int(8) NOT NULL,
  `BranchID` int(8) DEFAULT NULL,
  `UserID` int(8) DEFAULT NULL,
  `Table` varchar(55) DEFAULT NULL,
  `Action` varchar(55) DEFAULT NULL,
  `Allow` varchar(10) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`RoleId`, `BranchID`, `UserID`, `Table`, `Action`, `Allow`) VALUES
(3225, 1, 14, 'Employee', 'View', 'Y'),
(3226, 1, 14, 'Employee', 'Create', 'Y'),
(3227, 1, 14, 'Employee', 'Update', 'Y'),
(3228, 1, 14, 'Employee', 'Delete', 'Y'),
(3229, 1, 14, 'Employee', 'List', 'Y'),
(3230, 1, 14, 'Employee', 'Detail', 'Y'),
(3231, 1, 14, 'Deposit', 'View', 'Y'),
(3232, 1, 14, 'Deposit', 'Create/List', 'Y'),
(3233, 1, 14, 'Deposit', 'Update', 'Y'),
(3234, 1, 14, 'Deposit', 'Delete', 'Y'),
(3235, 1, 14, 'Deposit', 'List', 'Y'),
(3236, 1, 14, 'Import Attendance', 'Import', 'Y'),
(3237, 1, 14, 'Salary', 'Make', 'Y'),
(3238, 1, 14, 'Search Salary', 'List', 'Y'),
(3239, 1, 14, 'Search Salary', 'Delete', 'Y'),
(3240, 1, 14, 'Operation Manager', 'List/Create', 'Y'),
(3241, 1, 14, 'Operation Manager', 'Update', 'Y'),
(3242, 1, 14, 'Operation Manager', 'Delete', 'Y'),
(3243, 1, 14, 'Operation Manager', 'View', 'Y'),
(3244, 1, 14, 'Branch', 'Create/List', 'Y'),
(3245, 1, 14, 'Branch', 'Update', 'Y'),
(3246, 1, 14, 'Branch', 'Delete', 'Y'),
(3247, 1, 14, 'Department', 'Create/List', 'Y'),
(3248, 1, 14, 'Department', 'Update', 'Y'),
(3249, 1, 14, 'Department', 'Delete', 'Y'),
(3250, 1, 14, 'Job Title', 'Create/List', 'Y'),
(3251, 1, 14, 'Job Title', 'Update', 'Y'),
(3252, 1, 14, 'Job Title', 'Delete', 'Y'),
(3253, 1, 14, 'Letter Template', 'Create / List', 'Y'),
(3254, 1, 14, 'Letter Template', 'Update', 'Y'),
(3255, 1, 14, 'Letter Template', 'Delete', 'Y'),
(3256, 1, 14, 'Team Structure', 'List', 'Y'),
(3257, 1, 14, 'Users', 'Create / List', 'Y'),
(3258, 1, 14, 'Users', 'Update', 'Y'),
(3259, 1, 14, 'Users', 'Delete', 'Y'),
(3260, 1, 14, 'Employee Detail', 'List', 'Y'),
(3261, 1, 14, 'Employee Detail', 'Files Upload/List', 'Y'),
(3262, 1, 14, 'Employee Detail', 'File Delete', 'Y'),
(3263, 1, 14, 'Employee Detail', 'Salary View', 'Y'),
(3264, 1, 14, 'Employee Detail', 'Salary Commission View', 'Y'),
(3265, 1, 14, 'Employee Detail', 'Letter Issue / Letter Issued', 'Y'),
(3266, 1, 14, 'Employee Detail', 'Delete Issued Letter', 'Y'),
(3267, 1, 14, 'Employee Detail', 'Print Issued Letter', 'Y'),
(3268, 1, 14, 'Employee Detail', 'Leave Create / List', 'Y'),
(3269, 1, 14, 'Employee Detail', 'Leave Delete', 'Y'),
(3270, 1, 14, 'Employee Detail', 'Leave Edit', 'Y'),
(3271, 1, 14, 'Employee Detail', 'Attendance View', 'Y'),
(3272, 1, 14, 'Employee Detail', 'Warning Letter List', 'Y'),
(3273, 1, 14, 'Employee Detail', 'Deposit', 'Y'),
(3274, 1, 14, 'Employee Detail', 'Supervising', 'Y'),
(3275, 1, 14, 'Employee Detail', 'Issued Letter Update', 'Y'),
(3276, 1, 14, 'Team Hierarchy', 'View', 'Y'),
(3277, 1, 2, 'Employee', 'View', 'Y'),
(3278, 1, 2, 'Employee', 'Create', 'Y'),
(3279, 1, 2, 'Employee', 'Update', 'Y'),
(3280, 1, 2, 'Employee', 'Delete', 'Y'),
(3281, 1, 2, 'Employee', 'List', 'Y'),
(3282, 1, 2, 'Employee', 'Detail', 'Y'),
(3283, 1, 2, 'Import Attendance', 'Import', 'Y'),
(3284, 1, 2, 'Salary', 'Make', 'Y'),
(3285, 1, 2, 'Search Salary', 'List', 'Y'),
(3286, 1, 2, 'Search Salary', 'Delete', 'Y'),
(3287, 1, 2, 'Operation Manager', 'List/Create', 'Y'),
(3288, 1, 2, 'Operation Manager', 'Update', 'Y'),
(3289, 1, 2, 'Operation Manager', 'Delete', 'Y'),
(3290, 1, 2, 'Operation Manager', 'View', 'Y'),
(3291, 1, 2, 'Branch', 'Create/List', 'Y'),
(3292, 1, 2, 'Branch', 'Update', 'Y'),
(3293, 1, 2, 'Branch', 'Delete', 'Y'),
(3294, 1, 2, 'Department', 'Create/List', 'Y'),
(3295, 1, 2, 'Department', 'Update', 'Y'),
(3296, 1, 2, 'Department', 'Delete', 'Y'),
(3297, 1, 2, 'Job Title', 'Create/List', 'Y'),
(3298, 1, 2, 'Job Title', 'Update', 'Y'),
(3299, 1, 2, 'Job Title', 'Delete', 'Y'),
(3300, 1, 2, 'Letter Template', 'Create / List', 'Y'),
(3301, 1, 2, 'Letter Template', 'Update', 'Y'),
(3302, 1, 2, 'Letter Template', 'Delete', 'Y'),
(3303, 1, 2, 'Team Structure', 'List', 'Y'),
(3304, 1, 2, 'Users', 'Create / List', 'Y'),
(3305, 1, 2, 'Users', 'Update', 'Y'),
(3306, 1, 2, 'Users', 'Delete', 'Y'),
(3307, 1, 2, 'Employee Detail', 'List', 'Y'),
(3308, 1, 2, 'Employee Detail', 'Files Upload/List', 'Y'),
(3309, 1, 2, 'Employee Detail', 'File Delete', 'Y'),
(3310, 1, 2, 'Employee Detail', 'Salary View', 'Y'),
(3311, 1, 2, 'Employee Detail', 'Salary Commission View', 'Y'),
(3312, 1, 2, 'Employee Detail', 'Letter Issue / Letter Issued', 'Y'),
(3313, 1, 2, 'Employee Detail', 'Delete Issued Letter', 'Y'),
(3314, 1, 2, 'Employee Detail', 'Print Issued Letter', 'Y'),
(3315, 1, 2, 'Employee Detail', 'Leave Create / List', 'Y'),
(3316, 1, 2, 'Employee Detail', 'Leave Delete', 'Y'),
(3317, 1, 2, 'Employee Detail', 'Leave Edit', 'Y'),
(3318, 1, 2, 'Employee Detail', 'Attendance View', 'Y'),
(3319, 1, 2, 'Employee Detail', 'Warning Letter List', 'Y'),
(3320, 1, 2, 'Employee Detail', 'Deposit', 'Y'),
(3321, 1, 2, 'Employee Detail', 'Supervising', 'Y'),
(3322, 1, 2, 'Employee Detail', 'Issued Letter Update', 'Y'),
(3323, 1, 2, 'Team Hierarchy', 'View', 'Y'),
(3324, 1, 1, 'Employee', 'View', 'Y'),
(3325, 1, 1, 'Employee', 'Create', 'Y'),
(3326, 1, 1, 'Employee', 'Update', 'Y'),
(3327, 1, 1, 'Employee', 'Delete', 'Y'),
(3328, 1, 1, 'Employee', 'List', 'Y'),
(3329, 1, 1, 'Employee', 'Detail', 'Y'),
(3330, 1, 1, 'Import Attendance', 'Import', 'Y'),
(3331, 1, 1, 'Salary', 'Make', 'Y'),
(3332, 1, 1, 'Search Salary', 'List', 'Y'),
(3333, 1, 1, 'Search Salary', 'Delete', 'Y'),
(3334, 1, 1, 'Operation Manager', 'List/Create', 'Y'),
(3335, 1, 1, 'Operation Manager', 'Update', 'Y'),
(3336, 1, 1, 'Operation Manager', 'Delete', 'Y'),
(3337, 1, 1, 'Operation Manager', 'View', 'Y'),
(3338, 1, 1, 'Branch', 'Create/List', 'Y'),
(3339, 1, 1, 'Branch', 'Update', 'Y'),
(3340, 1, 1, 'Branch', 'Delete', 'Y'),
(3341, 1, 1, 'Department', 'Create/List', 'Y'),
(3342, 1, 1, 'Department', 'Update', 'Y'),
(3343, 1, 1, 'Department', 'Delete', 'Y'),
(3344, 1, 1, 'Job Title', 'Create/List', 'Y'),
(3345, 1, 1, 'Job Title', 'Update', 'Y'),
(3346, 1, 1, 'Job Title', 'Delete', 'Y'),
(3347, 1, 1, 'Letter Template', 'Create / List', 'Y'),
(3348, 1, 1, 'Letter Template', 'Update', 'Y'),
(3349, 1, 1, 'Letter Template', 'Delete', 'Y'),
(3350, 1, 1, 'Team Structure', 'List', 'Y'),
(3351, 1, 1, 'Users', 'Create / List', 'Y'),
(3352, 1, 1, 'Users', 'Update', 'Y'),
(3353, 1, 1, 'Users', 'Delete', 'Y'),
(3354, 1, 1, 'Employee Detail', 'List', 'Y'),
(3355, 1, 1, 'Employee Detail', 'Files Upload/List', 'Y'),
(3356, 1, 1, 'Employee Detail', 'File Delete', 'Y'),
(3357, 1, 1, 'Employee Detail', 'Salary View', 'Y'),
(3358, 1, 1, 'Employee Detail', 'Salary Commission View', 'Y'),
(3359, 1, 1, 'Employee Detail', 'Letter Issue / Letter Issued', 'Y'),
(3360, 1, 1, 'Employee Detail', 'Delete Issued Letter', 'Y'),
(3361, 1, 1, 'Employee Detail', 'Print Issued Letter', 'Y'),
(3362, 1, 1, 'Employee Detail', 'Leave Create / List', 'Y'),
(3363, 1, 1, 'Employee Detail', 'Leave Delete', 'Y'),
(3364, 1, 1, 'Employee Detail', 'Leave Edit', 'Y'),
(3365, 1, 1, 'Employee Detail', 'Attendance View', 'Y'),
(3366, 1, 1, 'Employee Detail', 'Warning Letter List', 'Y'),
(3367, 1, 1, 'Employee Detail', 'Deposit', 'Y'),
(3368, 1, 1, 'Employee Detail', 'Supervising', 'Y'),
(3369, 1, 1, 'Employee Detail', 'Issued Letter Update', 'Y'),
(3370, 1, 1, 'Team Hierarchy', 'View', 'Y');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vvv`
-- (See below for the actual view)
--
CREATE TABLE `vvv` (
`EmployeeID` int(11)
,`CheckIn` varchar(10)
,`CheckOut` varchar(10)
,`Date` varchar(10)
,`EmployeeName` varchar(55)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_agent_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_agent_salary` (
`BranchID` int(8)
,`EmployeeID` int(11)
,`FTDAmount` decimal(32,0)
,`MonthName` varchar(37)
,`SupervisorID` int(8)
,`Total` bigint(21)
,`StaffType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_alerts`
-- (See below for the actual view)
--
CREATE TABLE `v_alerts` (
`VisaExpiry` bigint(21)
,`PassportExpiry` bigint(21)
,`BranchID` int(8)
,`EmployeeID` int(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_attendance`
-- (See below for the actual view)
--
CREATE TABLE `v_attendance` (
`EmployeeID` int(11)
,`CheckIn` varchar(10)
,`CheckOut` varchar(10)
,`Date` varchar(10)
,`EmployeeName` varchar(55)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_closer_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_closer_salary` (
`BranchID` int(8)
,`EmployeeID` int(8)
,`FTDAmount` decimal(54,0)
,`MonthName` varchar(37)
,`SupervisorID` int(8)
,`Total` decimal(42,0)
,`StaffType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_daily_report`
-- (See below for the actual view)
--
CREATE TABLE `v_daily_report` (
`SupervisorID` int(8)
,`DailyReportID` int(12)
,`EmployeeID` int(12)
,`Date` date
,`Title` longtext
,`Detail` longtext
,`SupervisorComments` longtext
,`File` varchar(100)
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_documents`
-- (See below for the actual view)
--
CREATE TABLE `v_documents` (
`DocumentID` int(10)
,`EmployeeID` int(10)
,`FileName` varchar(55)
,`File` varchar(55)
,`FileSize` varchar(12)
,`eDate` varchar(23)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_employee`
-- (See below for the actual view)
--
CREATE TABLE `v_employee` (
`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`JobTitleName` varchar(99)
,`DepartmentName` varchar(75)
,`BranchName` varchar(150)
,`EmployeeID` int(8)
,`Picture` varchar(75)
,`Email` varchar(35)
,`MobileNo` varchar(35)
,`BranchID` int(8)
,`IsSupervisor` varchar(3)
,`DateOfBirth` date
,`VisaIssueDate` date
,`VisaExpiryDate` date
,`PassportNo` varchar(88)
,`PassportExpiry` date
,`EidNo` varchar(75)
,`EidExpiry` date
,`FullAddress` varchar(255)
,`HomePhone` varchar(35)
,`Gender` varchar(35)
,`SSNorGID` varchar(35)
,`MaritalStatus` varchar(35)
,`SpouseName` varchar(50)
,`SpouseEmployer` varchar(52)
,`SpouseWorkPhone` varchar(33)
,`JobTitleID` varchar(33)
,`DepartmentID` int(8)
,`SupervisorID` int(8)
,`WorkLocation` varchar(55)
,`EmailOffical` varchar(55)
,`WorkPhone` varchar(55)
,`StartDate` date
,`Salary` double(10,2)
,`NextofKinName` varchar(75)
,`NextofKinAddress` varchar(255)
,`NextofKinPhone` varchar(55)
,`NextofKinRelationship` varchar(55)
,`EducationLevel` varchar(55)
,`LastDegree` varchar(75)
,`eDate` timestamp
,`uDate` timestamp
,`Title` varchar(75)
,`ExtraComission` double(10,2)
,`SalaryRemarks` longtext
,`StaffType` varchar(25)
,`Nationality` varchar(35)
,`Password` varchar(25)
,`BankName` varchar(155)
,`IBAN` varchar(100)
,`AccountTitle` varchar(100)
,`SalaryType` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_emp_allowance`
-- (See below for the actual view)
--
CREATE TABLE `v_emp_allowance` (
`EmployeeAllowanceID` int(8)
,`EmployeeID` int(8)
,`AllowanceListID` int(8)
,`Amount` int(8)
,`Active` varchar(3)
,`eDate` timestamp
,`AllowanceTitle` varchar(75)
,`AllowanceType` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_emp_leave`
-- (See below for the actual view)
--
CREATE TABLE `v_emp_leave` (
`LeaveID` int(8)
,`EmployeeID` int(8)
,`FromDate` date
,`ToDate` date
,`NoOfDays` int(7)
,`Reason` longtext
,`DaysApproved` int(3)
,`DaysRemaining` int(3)
,`OMStatus` varchar(20)
,`HRStatus` varchar(20)
,`GMStatus` varchar(20)
,`BranchID` int(8)
,`LeaveTypeID` int(8)
,`LeaveTypeName` varchar(35)
,`DaysAllowed` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_emp_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_emp_salary` (
`AllowanceTitle` varchar(75)
,`AllowanceType` varchar(15)
,`EmployeeAllowanceID` int(8)
,`EmployeeID` int(8)
,`AllowanceListID` int(8)
,`Amount` int(8)
,`Active` varchar(3)
,`eDate` timestamp
,`eDate1` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_emp_salary_structure`
-- (See below for the actual view)
--
CREATE TABLE `v_emp_salary_structure` (
`EmployeeID` int(8)
,`Basic` decimal(32,0)
,`HRA` decimal(32,0)
,`Transport` decimal(32,0)
,`OtherAllowance` decimal(32,0)
,`TotalSalary` decimal(35,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_fcb`
-- (See below for the actual view)
--
CREATE TABLE `v_fcb` (
`FCBID` int(12)
,`ID` int(8)
,`FTDAmount` int(11)
,`Date` varchar(10)
,`MonthName` varchar(37)
,`Compliant` varchar(25)
,`KYCSent` varchar(25)
,`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`Dialer` int(11)
,`EmployeeID` int(11)
,`BranchID` int(8)
,`Remarks` longtext
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_fcb_summary`
-- (See below for the actual view)
--
CREATE TABLE `v_fcb_summary` (
`BranchID` int(8)
,`EmployeeID` int(11)
,`FTDAmount` int(11)
,`MonthName` varchar(37)
,`Total` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_floor_manager_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_floor_manager_salary` (
`BranchID` int(8)
,`EmployeeID` int(8)
,`FTDAmount` decimal(54,0)
,`MonthName` varchar(37)
,`SupervisorID` int(8)
,`Total` decimal(42,0)
,`StaffType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_leave`
-- (See below for the actual view)
--
CREATE TABLE `v_leave` (
`LeaveID` int(8)
,`BranchName` varchar(150)
,`EmployeeID` int(8)
,`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`JobTitleName` varchar(99)
,`DepartmentName` varchar(75)
,`FromDate` date
,`ToDate` date
,`NoOfDays` int(7)
,`Reason` longtext
,`DaysApproved` int(3)
,`DaysRemaining` int(3)
,`OMStatus` varchar(20)
,`HRStatus` varchar(20)
,`GMStatus` varchar(20)
,`BranchID` int(8)
,`LeaveTypeID` int(8)
,`LeaveTypeName` varchar(35)
,`DaysAllowed` varchar(255)
,`FromTime` time
,`ToTime` time
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_leave_summary`
-- (See below for the actual view)
--
CREATE TABLE `v_leave_summary` (
`EmployeeID` int(12)
,`LeaveTypeID` int(12)
,`Total` decimal(24,1)
,`MonthName` varchar(69)
,`LeaveTypeName` varchar(35)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_passportexpiry`
-- (See below for the actual view)
--
CREATE TABLE `v_passportexpiry` (
`Total` bigint(21)
,`BranchID` int(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_passport_expiry_list`
-- (See below for the actual view)
--
CREATE TABLE `v_passport_expiry_list` (
`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`DepartmentName` varchar(75)
,`BranchName` varchar(150)
,`EmployeeID` int(8)
,`Picture` varchar(75)
,`Email` varchar(35)
,`MobileNo` varchar(35)
,`BranchID` int(8)
,`IsSupervisor` varchar(3)
,`DateOfBirth` date
,`VisaIssueDate` date
,`VisaExpiryDate` date
,`PassportNo` varchar(88)
,`PassportExpiry` date
,`EidNo` varchar(75)
,`EidExpiry` date
,`FullAddress` varchar(255)
,`HomePhone` varchar(35)
,`Gender` varchar(35)
,`SSNorGID` varchar(35)
,`MaritalStatus` varchar(35)
,`SpouseName` varchar(50)
,`SpouseEmployer` varchar(52)
,`SpouseWorkPhone` varchar(33)
,`JobTitleID` varchar(33)
,`DepartmentID` int(8)
,`SupervisorID` int(8)
,`WorkLocation` varchar(55)
,`EmailOffical` varchar(55)
,`WorkPhone` varchar(55)
,`StartDate` date
,`Salary` double(10,2)
,`NextofKinName` varchar(75)
,`NextofKinAddress` varchar(255)
,`NextofKinPhone` varchar(55)
,`NextofKinRelationship` varchar(55)
,`EducationLevel` varchar(55)
,`LastDegree` varchar(75)
,`eDate` timestamp
,`uDate` timestamp
,`Title` varchar(75)
,`ExtraComission` double(10,2)
,`SalaryRemarks` longtext
,`StaffType` varchar(25)
,`Nationality` varchar(35)
,`JobTitleName` varchar(99)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_salary` (
`BranchID` int(11)
,`MonthName` varchar(255)
,`eDate` timestamp
,`UserID` int(8)
,`SalaryID` int(11)
,`EmployeeID` int(11)
,`EmployeeName` varchar(75)
,`JobTitle` varchar(75)
,`Department` varchar(75)
,`StaffType` varchar(25)
,`DaysPresent` double(12,2)
,`LWPay` double(12,2)
,`PerDay` double(12,2)
,`BasicSalary` double(12,2)
,`HRA` double(12,2)
,`Transport` double(12,2)
,`OtherAllowance` double(12,2)
,`AdvanceLoan` double(12,2)
,`LeaveDeduction` double(12,2)
,`TotalDeduction` double(12,2)
,`GrandSalary` double(12,2)
,`NetSalary` double(12,2)
,`uDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supervisor`
-- (See below for the actual view)
--
CREATE TABLE `v_supervisor` (
`EmployeeID` int(8)
,`IsSupervisor` varchar(3)
,`Title` varchar(75)
,`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`BranchID` int(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_target`
-- (See below for the actual view)
--
CREATE TABLE `v_target` (
`TargetID` int(12)
,`DepartmentID` int(12)
,`DepartmentName` varchar(75)
,`TargetType` varchar(150)
,`TargetName` varchar(150)
,`TargetPeriod` varchar(150)
,`Detail` longtext
,`StartDate` date
,`EndDate` date
,`Date` date
,`eDate` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_union_salary`
-- (See below for the actual view)
--
CREATE TABLE `v_union_salary` (
`BranchID` int(11)
,`EmployeeID` int(11)
,`FTDAmount` decimal(54,0)
,`MonthName` varchar(37)
,`SupervisorID` int(11)
,`Total` decimal(42,0)
,`StaffType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_users`
-- (See below for the actual view)
--
CREATE TABLE `v_users` (
`UserID` int(8)
,`BranchID` int(8)
,`FullName` varchar(55)
,`Email` varchar(55)
,`Password` varchar(75)
,`UserType` varchar(25)
,`eDate` timestamp
,`Active` varchar(1)
,`BranchName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_visaexpiry`
-- (See below for the actual view)
--
CREATE TABLE `v_visaexpiry` (
`Total` bigint(21)
,`BranchID` int(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_visa_expiry_list`
-- (See below for the actual view)
--
CREATE TABLE `v_visa_expiry_list` (
`FirstName` varchar(88)
,`MiddleName` varchar(88)
,`LastName` varchar(88)
,`JobTitleName` varchar(99)
,`DepartmentName` varchar(75)
,`BranchName` varchar(150)
,`EmployeeID` int(8)
,`Picture` varchar(75)
,`Email` varchar(35)
,`MobileNo` varchar(35)
,`BranchID` int(8)
,`IsSupervisor` varchar(3)
,`DateOfBirth` date
,`VisaIssueDate` date
,`VisaExpiryDate` date
,`PassportNo` varchar(88)
,`PassportExpiry` date
,`EidNo` varchar(75)
,`EidExpiry` date
,`FullAddress` varchar(255)
,`HomePhone` varchar(35)
,`Gender` varchar(35)
,`SSNorGID` varchar(35)
,`MaritalStatus` varchar(35)
,`SpouseName` varchar(50)
,`SpouseEmployer` varchar(52)
,`SpouseWorkPhone` varchar(33)
,`JobTitleID` varchar(33)
,`DepartmentID` int(8)
,`SupervisorID` int(8)
,`WorkLocation` varchar(55)
,`EmailOffical` varchar(55)
,`WorkPhone` varchar(55)
,`StartDate` date
,`Salary` double(10,2)
,`NextofKinName` varchar(75)
,`NextofKinAddress` varchar(255)
,`NextofKinPhone` varchar(55)
,`NextofKinRelationship` varchar(55)
,`EducationLevel` varchar(55)
,`LastDegree` varchar(75)
,`eDate` timestamp
,`uDate` timestamp
,`Title` varchar(75)
,`ExtraComission` double(10,2)
,`SalaryRemarks` longtext
,`StaffType` varchar(25)
,`Nationality` varchar(35)
);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `YearID` int(8) NOT NULL,
  `YearName` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`YearID`, `YearName`) VALUES
(1, 2021),
(2, 2022),
(3, 2023),
(4, 2024),
(5, 2025),
(6, 2026),
(7, 2027),
(8, 2028),
(9, 2029),
(10, 2030);

-- --------------------------------------------------------

--
-- Structure for view `vvv`
--
DROP TABLE IF EXISTS `vvv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vvv`  AS SELECT `v_attendance`.`EmployeeID` AS `EmployeeID`, `v_attendance`.`CheckIn` AS `CheckIn`, `v_attendance`.`CheckOut` AS `CheckOut`, `v_attendance`.`Date` AS `Date`, `v_attendance`.`EmployeeName` AS `EmployeeName` FROM `v_attendance` WHERE (`v_attendance`.`EmployeeID` = 41) GROUP BY `v_attendance`.`EmployeeID`, `v_attendance`.`CheckIn`, `v_attendance`.`CheckOut`, `v_attendance`.`Date`, `v_attendance`.`EmployeeName` ORDER BY `v_attendance`.`Date` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `v_agent_salary`
--
DROP TABLE IF EXISTS `v_agent_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_agent_salary`  AS SELECT `fcb`.`BranchID` AS `BranchID`, `fcb`.`EmployeeID` AS `EmployeeID`, sum(`fcb`.`FTDAmount`) AS `FTDAmount`, date_format(`fcb`.`Date`,'%b-%Y') AS `MonthName`, `employee`.`SupervisorID` AS `SupervisorID`, count(`fcb`.`FCBID`) AS `Total`, `employee`.`StaffType` AS `StaffType` FROM (`employee` join `fcb` on((`fcb`.`EmployeeID` = `employee`.`EmployeeID`))) WHERE ((`employee`.`StaffType` = 'Agent') AND (`fcb`.`Compliant` = 'YES') AND (`fcb`.`KYCSent` = 'YES')) GROUP BY `employee`.`SupervisorID`, `fcb`.`BranchID`, `fcb`.`EmployeeID`, date_format(`fcb`.`Date`,'%b-%Y'), `employee`.`StaffType` ;

-- --------------------------------------------------------

--
-- Structure for view `v_alerts`
--
DROP TABLE IF EXISTS `v_alerts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_alerts`  AS SELECT timestampdiff(DAY,sysdate(),`employee`.`VisaExpiryDate`) AS `VisaExpiry`, timestampdiff(DAY,sysdate(),`employee`.`PassportExpiry`) AS `PassportExpiry`, `employee`.`BranchID` AS `BranchID`, `employee`.`EmployeeID` AS `EmployeeID` FROM `employee` ;

-- --------------------------------------------------------

--
-- Structure for view `v_attendance`
--
DROP TABLE IF EXISTS `v_attendance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_attendance`  AS SELECT `attendance`.`EmployeeID` AS `EmployeeID`, if((`attendance`.`Status` = 'Check-in'),date_format(`attendance`.`DateTime`,'%H:%i'),0) AS `CheckIn`, if((`attendance`.`Status` = 'Check-out'),date_format(`attendance`.`DateTime`,'%H:%i'),0) AS `CheckOut`, date_format(`attendance`.`DateTime`,'%d-%m-%Y') AS `Date`, `attendance`.`EmployeeName` AS `EmployeeName` FROM `attendance` GROUP BY `attendance`.`EmployeeID`, `attendance`.`EmployeeName`, `attendance`.`DateTime`, `attendance`.`Status` ;

-- --------------------------------------------------------

--
-- Structure for view `v_closer_salary`
--
DROP TABLE IF EXISTS `v_closer_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_closer_salary`  AS SELECT `employee`.`BranchID` AS `BranchID`, `employee`.`EmployeeID` AS `EmployeeID`, sum(`v_agent_salary`.`FTDAmount`) AS `FTDAmount`, `v_agent_salary`.`MonthName` AS `MonthName`, `employee`.`SupervisorID` AS `SupervisorID`, sum(`v_agent_salary`.`Total`) AS `Total`, `employee`.`StaffType` AS `StaffType` FROM (`employee` join `v_agent_salary` on((`employee`.`EmployeeID` = `v_agent_salary`.`SupervisorID`))) WHERE (`employee`.`StaffType` = 'Closer') GROUP BY `employee`.`EmployeeID`, `employee`.`BranchID`, `v_agent_salary`.`MonthName`, `employee`.`StaffType`, `employee`.`SupervisorID` ;

-- --------------------------------------------------------

--
-- Structure for view `v_daily_report`
--
DROP TABLE IF EXISTS `v_daily_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_daily_report`  AS SELECT `employee`.`SupervisorID` AS `SupervisorID`, `daily_report`.`DailyReportID` AS `DailyReportID`, `daily_report`.`EmployeeID` AS `EmployeeID`, `daily_report`.`Date` AS `Date`, `daily_report`.`Title` AS `Title`, `daily_report`.`Detail` AS `Detail`, `daily_report`.`SupervisorComments` AS `SupervisorComments`, `daily_report`.`File` AS `File`, `daily_report`.`eDate` AS `eDate` FROM (`daily_report` join `employee` on((`daily_report`.`EmployeeID` = `employee`.`EmployeeID`))) WHERE isnull(`daily_report`.`SupervisorComments`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_documents`
--
DROP TABLE IF EXISTS `v_documents`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_documents`  AS SELECT `documents`.`DocumentID` AS `DocumentID`, `documents`.`EmployeeID` AS `EmployeeID`, `documents`.`FileName` AS `FileName`, `documents`.`File` AS `File`, `documents`.`FileSize` AS `FileSize`, date_format(`documents`.`eDate`,'%d-%m-%Y,  %H:%i') AS `eDate` FROM `documents` ;

-- --------------------------------------------------------

--
-- Structure for view `v_employee`
--
DROP TABLE IF EXISTS `v_employee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_employee`  AS SELECT `employee`.`FirstName` AS `FirstName`, `employee`.`MiddleName` AS `MiddleName`, `employee`.`LastName` AS `LastName`, `jobtitle`.`JobTitleName` AS `JobTitleName`, `department`.`DepartmentName` AS `DepartmentName`, `branch`.`BranchName` AS `BranchName`, `employee`.`EmployeeID` AS `EmployeeID`, `employee`.`Picture` AS `Picture`, `employee`.`Email` AS `Email`, `employee`.`MobileNo` AS `MobileNo`, `employee`.`BranchID` AS `BranchID`, `employee`.`IsSupervisor` AS `IsSupervisor`, `employee`.`DateOfBirth` AS `DateOfBirth`, `employee`.`VisaIssueDate` AS `VisaIssueDate`, `employee`.`VisaExpiryDate` AS `VisaExpiryDate`, `employee`.`PassportNo` AS `PassportNo`, `employee`.`PassportExpiry` AS `PassportExpiry`, `employee`.`EidNo` AS `EidNo`, `employee`.`EidExpiry` AS `EidExpiry`, `employee`.`FullAddress` AS `FullAddress`, `employee`.`HomePhone` AS `HomePhone`, `employee`.`Gender` AS `Gender`, `employee`.`SSNorGID` AS `SSNorGID`, `employee`.`MaritalStatus` AS `MaritalStatus`, `employee`.`SpouseName` AS `SpouseName`, `employee`.`SpouseEmployer` AS `SpouseEmployer`, `employee`.`SpouseWorkPhone` AS `SpouseWorkPhone`, `employee`.`JobTitleID` AS `JobTitleID`, `employee`.`DepartmentID` AS `DepartmentID`, `employee`.`SupervisorID` AS `SupervisorID`, `employee`.`WorkLocation` AS `WorkLocation`, `employee`.`EmailOffical` AS `EmailOffical`, `employee`.`WorkPhone` AS `WorkPhone`, `employee`.`StartDate` AS `StartDate`, `employee`.`Salary` AS `Salary`, `employee`.`NextofKinName` AS `NextofKinName`, `employee`.`NextofKinAddress` AS `NextofKinAddress`, `employee`.`NextofKinPhone` AS `NextofKinPhone`, `employee`.`NextofKinRelationship` AS `NextofKinRelationship`, `employee`.`EducationLevel` AS `EducationLevel`, `employee`.`LastDegree` AS `LastDegree`, `employee`.`eDate` AS `eDate`, `employee`.`uDate` AS `uDate`, `employee`.`Title` AS `Title`, `employee`.`ExtraComission` AS `ExtraComission`, `employee`.`SalaryRemarks` AS `SalaryRemarks`, `employee`.`StaffType` AS `StaffType`, `employee`.`Nationality` AS `Nationality`, `employee`.`Password` AS `Password`, `employee`.`BankName` AS `BankName`, `employee`.`IBAN` AS `IBAN`, `employee`.`AccountTitle` AS `AccountTitle`, `employee`.`SalaryType` AS `SalaryType` FROM (((`employee` left join `jobtitle` on((`employee`.`JobTitleID` = `jobtitle`.`JobTitleID`))) left join `department` on((`employee`.`DepartmentID` = `department`.`DepartmentID`))) left join `branch` on((`employee`.`BranchID` = `branch`.`BranchID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_emp_allowance`
--
DROP TABLE IF EXISTS `v_emp_allowance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_emp_allowance`  AS SELECT `emp_allowance`.`EmployeeAllowanceID` AS `EmployeeAllowanceID`, `emp_allowance`.`EmployeeID` AS `EmployeeID`, `emp_allowance`.`AllowanceListID` AS `AllowanceListID`, `emp_allowance`.`Amount` AS `Amount`, `emp_allowance`.`Active` AS `Active`, `emp_allowance`.`eDate` AS `eDate`, `allowance_list`.`AllowanceTitle` AS `AllowanceTitle`, `allowance_list`.`AllowanceType` AS `AllowanceType` FROM (`allowance_list` join `emp_allowance` on((`emp_allowance`.`AllowanceListID` = `allowance_list`.`AllowanceListID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_emp_leave`
--
DROP TABLE IF EXISTS `v_emp_leave`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_emp_leave`  AS SELECT `leave`.`LeaveID` AS `LeaveID`, `leave`.`EmployeeID` AS `EmployeeID`, `leave`.`FromDate` AS `FromDate`, `leave`.`ToDate` AS `ToDate`, (to_days(`leave`.`ToDate`) - to_days(`leave`.`FromDate`)) AS `NoOfDays`, `leave`.`Reason` AS `Reason`, `leave`.`DaysApproved` AS `DaysApproved`, `leave`.`DaysRemaining` AS `DaysRemaining`, `leave`.`OMStatus` AS `OMStatus`, `leave`.`HRStatus` AS `HRStatus`, `leave`.`GMStatus` AS `GMStatus`, `leave`.`BranchID` AS `BranchID`, `leave`.`LeaveTypeID` AS `LeaveTypeID`, `leave_type`.`LeaveTypeName` AS `LeaveTypeName`, `leave_type`.`DaysAllowed` AS `DaysAllowed` FROM (`leave` join `leave_type` on((`leave`.`LeaveTypeID` = `leave_type`.`LeaveTypeID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_emp_salary`
--
DROP TABLE IF EXISTS `v_emp_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_emp_salary`  AS SELECT `allowance_list`.`AllowanceTitle` AS `AllowanceTitle`, `allowance_list`.`AllowanceType` AS `AllowanceType`, `emp_salary`.`EmployeeAllowanceID` AS `EmployeeAllowanceID`, `emp_salary`.`EmployeeID` AS `EmployeeID`, `emp_salary`.`AllowanceListID` AS `AllowanceListID`, `emp_salary`.`Amount` AS `Amount`, `emp_salary`.`Active` AS `Active`, `emp_salary`.`eDate` AS `eDate`, date_format(`emp_salary`.`eDate`,'%d/%m/%Y') AS `eDate1` FROM (`allowance_list` join `emp_salary` on((`allowance_list`.`AllowanceListID` = `emp_salary`.`AllowanceListID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_emp_salary_structure`
--
DROP TABLE IF EXISTS `v_emp_salary_structure`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_emp_salary_structure`  AS SELECT `emp_salary`.`EmployeeID` AS `EmployeeID`, sum(if((`emp_salary`.`AllowanceListID` = 1),`emp_salary`.`Amount`,0)) AS `Basic`, sum(if((`emp_salary`.`AllowanceListID` = 2),`emp_salary`.`Amount`,0)) AS `HRA`, sum(if((`emp_salary`.`AllowanceListID` = 3),`emp_salary`.`Amount`,0)) AS `Transport`, sum(if((`emp_salary`.`AllowanceListID` = 4),`emp_salary`.`Amount`,0)) AS `OtherAllowance`, (((sum(if((`emp_salary`.`AllowanceListID` = 1),`emp_salary`.`Amount`,0)) + sum(if((`emp_salary`.`AllowanceListID` = 2),`emp_salary`.`Amount`,0))) + sum(if((`emp_salary`.`AllowanceListID` = 3),`emp_salary`.`Amount`,0))) + sum(if((`emp_salary`.`AllowanceListID` = 4),`emp_salary`.`Amount`,0))) AS `TotalSalary` FROM `emp_salary` GROUP BY `emp_salary`.`EmployeeID` ;

-- --------------------------------------------------------

--
-- Structure for view `v_fcb`
--
DROP TABLE IF EXISTS `v_fcb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fcb`  AS SELECT `fcb`.`FCBID` AS `FCBID`, `fcb`.`ID` AS `ID`, `fcb`.`FTDAmount` AS `FTDAmount`, date_format(`fcb`.`Date`,'%d/%m/%Y') AS `Date`, date_format(`fcb`.`Date`,'%b-%Y') AS `MonthName`, `fcb`.`Compliant` AS `Compliant`, `fcb`.`KYCSent` AS `KYCSent`, `employee`.`FirstName` AS `FirstName`, `employee`.`MiddleName` AS `MiddleName`, `employee`.`LastName` AS `LastName`, `fcb`.`Dialer` AS `Dialer`, `fcb`.`EmployeeID` AS `EmployeeID`, `fcb`.`BranchID` AS `BranchID`, `fcb`.`Remarks` AS `Remarks` FROM (`fcb` join `employee` on((`fcb`.`EmployeeID` = `employee`.`EmployeeID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_fcb_summary`
--
DROP TABLE IF EXISTS `v_fcb_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_fcb_summary`  AS SELECT `fcb`.`BranchID` AS `BranchID`, `fcb`.`EmployeeID` AS `EmployeeID`, `fcb`.`FTDAmount` AS `FTDAmount`, date_format(`fcb`.`Date`,'%b-%Y') AS `MonthName`, count(`fcb`.`FCBID`) AS `Total` FROM `fcb` GROUP BY `fcb`.`BranchID`, `fcb`.`EmployeeID`, date_format(`fcb`.`Date`,'%b-%Y') ;

-- --------------------------------------------------------

--
-- Structure for view `v_floor_manager_salary`
--
DROP TABLE IF EXISTS `v_floor_manager_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_floor_manager_salary`  AS SELECT `employee`.`BranchID` AS `BranchID`, `employee`.`EmployeeID` AS `EmployeeID`, `v_closer_salary`.`FTDAmount` AS `FTDAmount`, `v_closer_salary`.`MonthName` AS `MonthName`, `v_closer_salary`.`SupervisorID` AS `SupervisorID`, `v_closer_salary`.`Total` AS `Total`, `employee`.`StaffType` AS `StaffType` FROM (`v_closer_salary` join `employee` on((`employee`.`EmployeeID` = `v_closer_salary`.`SupervisorID`))) WHERE (`employee`.`StaffType` = 'Floor Manager') GROUP BY `employee`.`StaffType`, `employee`.`SupervisorID`, `employee`.`BranchID`, `employee`.`EmployeeID`, `v_closer_salary`.`FTDAmount`, `v_closer_salary`.`MonthName`, `v_closer_salary`.`SupervisorID`, `v_closer_salary`.`Total` ;

-- --------------------------------------------------------

--
-- Structure for view `v_leave`
--
DROP TABLE IF EXISTS `v_leave`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_leave`  AS SELECT `leave`.`LeaveID` AS `LeaveID`, `branch`.`BranchName` AS `BranchName`, `leave`.`EmployeeID` AS `EmployeeID`, `v_employee`.`FirstName` AS `FirstName`, `v_employee`.`MiddleName` AS `MiddleName`, `v_employee`.`LastName` AS `LastName`, `v_employee`.`JobTitleName` AS `JobTitleName`, `v_employee`.`DepartmentName` AS `DepartmentName`, `leave`.`FromDate` AS `FromDate`, `leave`.`ToDate` AS `ToDate`, (to_days(`leave`.`ToDate`) - to_days(`leave`.`FromDate`)) AS `NoOfDays`, `leave`.`Reason` AS `Reason`, `leave`.`DaysApproved` AS `DaysApproved`, `leave`.`DaysRemaining` AS `DaysRemaining`, `leave`.`OMStatus` AS `OMStatus`, `leave`.`HRStatus` AS `HRStatus`, `leave`.`GMStatus` AS `GMStatus`, `leave`.`BranchID` AS `BranchID`, `leave`.`LeaveTypeID` AS `LeaveTypeID`, `leave_type`.`LeaveTypeName` AS `LeaveTypeName`, `leave_type`.`DaysAllowed` AS `DaysAllowed`, `leave`.`FromTime` AS `FromTime`, `leave`.`ToTime` AS `ToTime` FROM (((`leave` join `branch` on((`leave`.`BranchID` = `branch`.`BranchID`))) join `v_employee` on((`leave`.`EmployeeID` = `v_employee`.`EmployeeID`))) join `leave_type` on((`leave`.`LeaveTypeID` = `leave_type`.`LeaveTypeID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_leave_summary`
--
DROP TABLE IF EXISTS `v_leave_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_leave_summary`  AS SELECT `leave_detail`.`EmployeeID` AS `EmployeeID`, `leave_detail`.`LeaveTypeID` AS `LeaveTypeID`, sum(if((`leave_detail`.`LeaveTypeID` <> 2),1,0.5)) AS `Total`, date_format(`leave_detail`.`Date`,'%M-%Y') AS `MonthName`, `leave_type`.`LeaveTypeName` AS `LeaveTypeName` FROM (`leave_detail` join `leave_type` on((`leave_detail`.`LeaveTypeID` = `leave_type`.`LeaveTypeID`))) GROUP BY `leave_detail`.`EmployeeID`, `leave_detail`.`LeaveTypeID`, date_format(`leave_detail`.`Date`,'%M-%Y'), `leave_type`.`LeaveTypeName` ;

-- --------------------------------------------------------

--
-- Structure for view `v_passportexpiry`
--
DROP TABLE IF EXISTS `v_passportexpiry`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_passportexpiry`  AS SELECT count(`v_alerts`.`PassportExpiry`) AS `Total`, `v_alerts`.`BranchID` AS `BranchID` FROM `v_alerts` WHERE (`v_alerts`.`PassportExpiry` <= 30) GROUP BY `v_alerts`.`BranchID` ;

-- --------------------------------------------------------

--
-- Structure for view `v_passport_expiry_list`
--
DROP TABLE IF EXISTS `v_passport_expiry_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_passport_expiry_list`  AS SELECT `v_employee`.`FirstName` AS `FirstName`, `v_employee`.`MiddleName` AS `MiddleName`, `v_employee`.`LastName` AS `LastName`, `v_employee`.`DepartmentName` AS `DepartmentName`, `v_employee`.`BranchName` AS `BranchName`, `v_employee`.`EmployeeID` AS `EmployeeID`, `v_employee`.`Picture` AS `Picture`, `v_employee`.`Email` AS `Email`, `v_employee`.`MobileNo` AS `MobileNo`, `v_employee`.`BranchID` AS `BranchID`, `v_employee`.`IsSupervisor` AS `IsSupervisor`, `v_employee`.`DateOfBirth` AS `DateOfBirth`, `v_employee`.`VisaIssueDate` AS `VisaIssueDate`, `v_employee`.`VisaExpiryDate` AS `VisaExpiryDate`, `v_employee`.`PassportNo` AS `PassportNo`, `v_employee`.`PassportExpiry` AS `PassportExpiry`, `v_employee`.`EidNo` AS `EidNo`, `v_employee`.`EidExpiry` AS `EidExpiry`, `v_employee`.`FullAddress` AS `FullAddress`, `v_employee`.`HomePhone` AS `HomePhone`, `v_employee`.`Gender` AS `Gender`, `v_employee`.`SSNorGID` AS `SSNorGID`, `v_employee`.`MaritalStatus` AS `MaritalStatus`, `v_employee`.`SpouseName` AS `SpouseName`, `v_employee`.`SpouseEmployer` AS `SpouseEmployer`, `v_employee`.`SpouseWorkPhone` AS `SpouseWorkPhone`, `v_employee`.`JobTitleID` AS `JobTitleID`, `v_employee`.`DepartmentID` AS `DepartmentID`, `v_employee`.`SupervisorID` AS `SupervisorID`, `v_employee`.`WorkLocation` AS `WorkLocation`, `v_employee`.`EmailOffical` AS `EmailOffical`, `v_employee`.`WorkPhone` AS `WorkPhone`, `v_employee`.`StartDate` AS `StartDate`, `v_employee`.`Salary` AS `Salary`, `v_employee`.`NextofKinName` AS `NextofKinName`, `v_employee`.`NextofKinAddress` AS `NextofKinAddress`, `v_employee`.`NextofKinPhone` AS `NextofKinPhone`, `v_employee`.`NextofKinRelationship` AS `NextofKinRelationship`, `v_employee`.`EducationLevel` AS `EducationLevel`, `v_employee`.`LastDegree` AS `LastDegree`, `v_employee`.`eDate` AS `eDate`, `v_employee`.`uDate` AS `uDate`, `v_employee`.`Title` AS `Title`, `v_employee`.`ExtraComission` AS `ExtraComission`, `v_employee`.`SalaryRemarks` AS `SalaryRemarks`, `v_employee`.`StaffType` AS `StaffType`, `v_employee`.`Nationality` AS `Nationality`, `v_employee`.`JobTitleName` AS `JobTitleName` FROM `v_employee` WHERE (timestampdiff(DAY,sysdate(),`v_employee`.`PassportExpiry`) <= 3030) ;

-- --------------------------------------------------------

--
-- Structure for view `v_salary`
--
DROP TABLE IF EXISTS `v_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_salary`  AS SELECT `salary`.`BranchID` AS `BranchID`, `salary`.`MonthName` AS `MonthName`, `salary`.`eDate` AS `eDate`, `salary`.`UserID` AS `UserID`, `salary`.`SalaryID` AS `SalaryID`, `salary`.`EmployeeID` AS `EmployeeID`, `salary`.`EmployeeName` AS `EmployeeName`, `salary`.`JobTitle` AS `JobTitle`, `salary`.`Department` AS `Department`, `salary`.`StaffType` AS `StaffType`, `salary`.`DaysPresent` AS `DaysPresent`, `salary`.`LWPay` AS `LWPay`, `salary`.`PerDay` AS `PerDay`, `salary`.`BasicSalary` AS `BasicSalary`, `salary`.`HRA` AS `HRA`, `salary`.`Transport` AS `Transport`, `salary`.`OtherAllowance` AS `OtherAllowance`, `salary`.`AdvanceLoan` AS `AdvanceLoan`, `salary`.`LeaveDeduction` AS `LeaveDeduction`, `salary`.`TotalDeduction` AS `TotalDeduction`, `salary`.`GrandSalary` AS `GrandSalary`, `salary`.`NetSalary` AS `NetSalary`, `salary`.`uDate` AS `uDate` FROM `salary` ;

-- --------------------------------------------------------

--
-- Structure for view `v_supervisor`
--
DROP TABLE IF EXISTS `v_supervisor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_supervisor`  AS SELECT `employee`.`EmployeeID` AS `EmployeeID`, `employee`.`IsSupervisor` AS `IsSupervisor`, `employee`.`Title` AS `Title`, `employee`.`FirstName` AS `FirstName`, `employee`.`MiddleName` AS `MiddleName`, `employee`.`LastName` AS `LastName`, `employee`.`BranchID` AS `BranchID` FROM `employee` WHERE (`employee`.`IsSupervisor` = 'Yes') ;

-- --------------------------------------------------------

--
-- Structure for view `v_target`
--
DROP TABLE IF EXISTS `v_target`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_target`  AS SELECT `target`.`TargetID` AS `TargetID`, `target`.`DepartmentID` AS `DepartmentID`, `department`.`DepartmentName` AS `DepartmentName`, `target`.`TargetType` AS `TargetType`, `target`.`TargetName` AS `TargetName`, `target`.`TargetPeriod` AS `TargetPeriod`, `target`.`Detail` AS `Detail`, `target`.`StartDate` AS `StartDate`, `target`.`EndDate` AS `EndDate`, `target`.`Date` AS `Date`, `target`.`eDate` AS `eDate` FROM (`department` join `target` on((`department`.`DepartmentID` = `target`.`DepartmentID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_union_salary`
--
DROP TABLE IF EXISTS `v_union_salary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_union_salary`  AS SELECT `v_agent_salary`.`BranchID` AS `BranchID`, `v_agent_salary`.`EmployeeID` AS `EmployeeID`, `v_agent_salary`.`FTDAmount` AS `FTDAmount`, `v_agent_salary`.`MonthName` AS `MonthName`, `v_agent_salary`.`SupervisorID` AS `SupervisorID`, `v_agent_salary`.`Total` AS `Total`, `v_agent_salary`.`StaffType` AS `StaffType` FROM `v_agent_salary`union select `v_closer_salary`.`BranchID` AS `BranchID`,`v_closer_salary`.`EmployeeID` AS `EmployeeID`,`v_closer_salary`.`FTDAmount` AS `FTDAmount`,`v_closer_salary`.`MonthName` AS `MonthName`,`v_closer_salary`.`SupervisorID` AS `SupervisorID`,`v_closer_salary`.`Total` AS `total`,`v_closer_salary`.`StaffType` AS `StaffType` from `v_closer_salary` union select `v_floor_manager_salary`.`BranchID` AS `BranchID`,`v_floor_manager_salary`.`EmployeeID` AS `EmployeeID`,`v_floor_manager_salary`.`FTDAmount` AS `FTDAmount`,`v_floor_manager_salary`.`MonthName` AS `MonthName`,`v_floor_manager_salary`.`SupervisorID` AS `SupervisorID`,`v_floor_manager_salary`.`Total` AS `total`,`v_floor_manager_salary`.`StaffType` AS `StaffType` from `v_floor_manager_salary` ;

-- --------------------------------------------------------

--
-- Structure for view `v_users`
--
DROP TABLE IF EXISTS `v_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_users`  AS SELECT `users`.`UserID` AS `UserID`, `users`.`BranchID` AS `BranchID`, `users`.`FullName` AS `FullName`, `users`.`Email` AS `Email`, `users`.`Password` AS `Password`, `users`.`UserType` AS `UserType`, `users`.`eDate` AS `eDate`, `users`.`Active` AS `Active`, `branch`.`BranchName` AS `BranchName` FROM (`users` join `branch` on((`users`.`BranchID` = `branch`.`BranchID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_visaexpiry`
--
DROP TABLE IF EXISTS `v_visaexpiry`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_visaexpiry`  AS SELECT count(`v_alerts`.`VisaExpiry`) AS `Total`, `v_alerts`.`BranchID` AS `BranchID` FROM `v_alerts` WHERE (`v_alerts`.`VisaExpiry` <= 30) GROUP BY `v_alerts`.`BranchID` ;

-- --------------------------------------------------------

--
-- Structure for view `v_visa_expiry_list`
--
DROP TABLE IF EXISTS `v_visa_expiry_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_visa_expiry_list`  AS SELECT `v_employee`.`FirstName` AS `FirstName`, `v_employee`.`MiddleName` AS `MiddleName`, `v_employee`.`LastName` AS `LastName`, `v_employee`.`JobTitleName` AS `JobTitleName`, `v_employee`.`DepartmentName` AS `DepartmentName`, `v_employee`.`BranchName` AS `BranchName`, `v_employee`.`EmployeeID` AS `EmployeeID`, `v_employee`.`Picture` AS `Picture`, `v_employee`.`Email` AS `Email`, `v_employee`.`MobileNo` AS `MobileNo`, `v_employee`.`BranchID` AS `BranchID`, `v_employee`.`IsSupervisor` AS `IsSupervisor`, `v_employee`.`DateOfBirth` AS `DateOfBirth`, `v_employee`.`VisaIssueDate` AS `VisaIssueDate`, `v_employee`.`VisaExpiryDate` AS `VisaExpiryDate`, `v_employee`.`PassportNo` AS `PassportNo`, `v_employee`.`PassportExpiry` AS `PassportExpiry`, `v_employee`.`EidNo` AS `EidNo`, `v_employee`.`EidExpiry` AS `EidExpiry`, `v_employee`.`FullAddress` AS `FullAddress`, `v_employee`.`HomePhone` AS `HomePhone`, `v_employee`.`Gender` AS `Gender`, `v_employee`.`SSNorGID` AS `SSNorGID`, `v_employee`.`MaritalStatus` AS `MaritalStatus`, `v_employee`.`SpouseName` AS `SpouseName`, `v_employee`.`SpouseEmployer` AS `SpouseEmployer`, `v_employee`.`SpouseWorkPhone` AS `SpouseWorkPhone`, `v_employee`.`JobTitleID` AS `JobTitleID`, `v_employee`.`DepartmentID` AS `DepartmentID`, `v_employee`.`SupervisorID` AS `SupervisorID`, `v_employee`.`WorkLocation` AS `WorkLocation`, `v_employee`.`EmailOffical` AS `EmailOffical`, `v_employee`.`WorkPhone` AS `WorkPhone`, `v_employee`.`StartDate` AS `StartDate`, `v_employee`.`Salary` AS `Salary`, `v_employee`.`NextofKinName` AS `NextofKinName`, `v_employee`.`NextofKinAddress` AS `NextofKinAddress`, `v_employee`.`NextofKinPhone` AS `NextofKinPhone`, `v_employee`.`NextofKinRelationship` AS `NextofKinRelationship`, `v_employee`.`EducationLevel` AS `EducationLevel`, `v_employee`.`LastDegree` AS `LastDegree`, `v_employee`.`eDate` AS `eDate`, `v_employee`.`uDate` AS `uDate`, `v_employee`.`Title` AS `Title`, `v_employee`.`ExtraComission` AS `ExtraComission`, `v_employee`.`SalaryRemarks` AS `SalaryRemarks`, `v_employee`.`StaffType` AS `StaffType`, `v_employee`.`Nationality` AS `Nationality` FROM `v_employee` WHERE (timestampdiff(DAY,sysdate(),`v_employee`.`VisaExpiryDate`) <= 3030) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `allowance_list`
--
ALTER TABLE `allowance_list`
  ADD PRIMARY KEY (`AllowanceListID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BranchID`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `daily_report`
--
ALTER TABLE `daily_report`
  ADD PRIMARY KEY (`DailyReportID`);

--
-- Indexes for table `deal`
--
ALTER TABLE `deal`
  ADD PRIMARY KEY (`DealID`);

--
-- Indexes for table `deduction_list`
--
ALTER TABLE `deduction_list`
  ADD PRIMARY KEY (`DeductionListID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`DocumentID`);

--
-- Indexes for table `document_category`
--
ALTER TABLE `document_category`
  ADD PRIMARY KEY (`DocumentCategoryID`);

--
-- Indexes for table `educationlevel`
--
ALTER TABLE `educationlevel`
  ADD PRIMARY KEY (`EducationLevelID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `emp_allowance`
--
ALTER TABLE `emp_allowance`
  ADD PRIMARY KEY (`EmployeeAllowanceID`);

--
-- Indexes for table `emp_deduction`
--
ALTER TABLE `emp_deduction`
  ADD PRIMARY KEY (`EmployeeDeductionID`);

--
-- Indexes for table `emp_salary`
--
ALTER TABLE `emp_salary`
  ADD PRIMARY KEY (`EmployeeAllowanceID`);

--
-- Indexes for table `emp_salary____`
--
ALTER TABLE `emp_salary____`
  ADD PRIMARY KEY (`EmployeeSalaryID`);

--
-- Indexes for table `eu`
--
ALTER TABLE `eu`
  ADD PRIMARY KEY (`EuID`);

--
-- Indexes for table `fcb`
--
ALTER TABLE `fcb`
  ADD PRIMARY KEY (`FCBID`);

--
-- Indexes for table `fleet_detail`
--
ALTER TABLE `fleet_detail`
  ADD PRIMARY KEY (`FleetDetailID`);

--
-- Indexes for table `fleet_master`
--
ALTER TABLE `fleet_master`
  ADD PRIMARY KEY (`FleetMasterID`);

--
-- Indexes for table `issue_letter`
--
ALTER TABLE `issue_letter`
  ADD PRIMARY KEY (`IssueLetterID`);

--
-- Indexes for table `jobtitle`
--
ALTER TABLE `jobtitle`
  ADD PRIMARY KEY (`JobTitleID`);

--
-- Indexes for table `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`LeadID`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`LeaveID`);

--
-- Indexes for table `leave_detail`
--
ALTER TABLE `leave_detail`
  ADD PRIMARY KEY (`LeaveDetailID`);

--
-- Indexes for table `leave_status`
--
ALTER TABLE `leave_status`
  ADD PRIMARY KEY (`LeaveStatusID`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`LeaveTypeID`);

--
-- Indexes for table `letter`
--
ALTER TABLE `letter`
  ADD PRIMARY KEY (`LetterID`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`LoanID`);

--
-- Indexes for table `loan_deduction`
--
ALTER TABLE `loan_deduction`
  ADD PRIMARY KEY (`LoanDeductionID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthname`
--
ALTER TABLE `monthname`
  ADD PRIMARY KEY (`MonthID`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`NoticeBoardID`);

--
-- Indexes for table `notice_seen`
--
ALTER TABLE `notice_seen`
  ADD PRIMARY KEY (`NoticeSeenID`);

--
-- Indexes for table `progress_report`
--
ALTER TABLE `progress_report`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`SalaryID`);

--
-- Indexes for table `stafftype_____`
--
ALTER TABLE `stafftype_____`
  ADD PRIMARY KEY (`StaffTypeID`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`StaffTypeID`);

--
-- Indexes for table `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`TargetID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `target_reply`
--
ALTER TABLE `target_reply`
  ADD PRIMARY KEY (`TargetReplyID`),
  ADD KEY `TargetID` (`TargetID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`TitleID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `office_id` (`BranchID`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`YearID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `allowance_list`
--
ALTER TABLE `allowance_list`
  MODIFY `AllowanceListID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1421;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `BranchID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `ClientID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `CompanyID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `daily_report`
--
ALTER TABLE `daily_report`
  MODIFY `DailyReportID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `deal`
--
ALTER TABLE `deal`
  MODIFY `DealID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deduction_list`
--
ALTER TABLE `deduction_list`
  MODIFY `DeductionListID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DepartmentID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `DocumentID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `document_category`
--
ALTER TABLE `document_category`
  MODIFY `DocumentCategoryID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `educationlevel`
--
ALTER TABLE `educationlevel`
  MODIFY `EducationLevelID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `emp_allowance`
--
ALTER TABLE `emp_allowance`
  MODIFY `EmployeeAllowanceID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_deduction`
--
ALTER TABLE `emp_deduction`
  MODIFY `EmployeeDeductionID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_salary`
--
ALTER TABLE `emp_salary`
  MODIFY `EmployeeAllowanceID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emp_salary____`
--
ALTER TABLE `emp_salary____`
  MODIFY `EmployeeSalaryID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eu`
--
ALTER TABLE `eu`
  MODIFY `EuID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fcb`
--
ALTER TABLE `fcb`
  MODIFY `FCBID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fleet_detail`
--
ALTER TABLE `fleet_detail`
  MODIFY `FleetDetailID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fleet_master`
--
ALTER TABLE `fleet_master`
  MODIFY `FleetMasterID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_letter`
--
ALTER TABLE `issue_letter`
  MODIFY `IssueLetterID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobtitle`
--
ALTER TABLE `jobtitle`
  MODIFY `JobTitleID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lead`
--
ALTER TABLE `lead`
  MODIFY `LeadID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `LeaveID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `leave_detail`
--
ALTER TABLE `leave_detail`
  MODIFY `LeaveDetailID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `leave_status`
--
ALTER TABLE `leave_status`
  MODIFY `LeaveStatusID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `LeaveTypeID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `letter`
--
ALTER TABLE `letter`
  MODIFY `LetterID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `LoanID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan_deduction`
--
ALTER TABLE `loan_deduction`
  MODIFY `LoanDeductionID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `monthname`
--
ALTER TABLE `monthname`
  MODIFY `MonthID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `NoticeBoardID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notice_seen`
--
ALTER TABLE `notice_seen`
  MODIFY `NoticeSeenID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `progress_report`
--
ALTER TABLE `progress_report`
  MODIFY `ID` bigint(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `RoleID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `SalaryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `stafftype_____`
--
ALTER TABLE `stafftype_____`
  MODIFY `StaffTypeID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_type`
--
ALTER TABLE `staff_type`
  MODIFY `StaffTypeID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `target`
--
ALTER TABLE `target`
  MODIFY `TargetID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `target_reply`
--
ALTER TABLE `target_reply`
  MODIFY `TargetReplyID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `TitleID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `RoleId` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3371;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `YearID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `target`
--
ALTER TABLE `target`
  ADD CONSTRAINT `target_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `target_reply`
--
ALTER TABLE `target_reply`
  ADD CONSTRAINT `target_reply_ibfk_1` FOREIGN KEY (`TargetID`) REFERENCES `target` (`TargetID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `target_reply_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
