-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2020 at 05:26 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_dinustek`
--

-- --------------------------------------------------------

--
-- Table structure for table `bf_activities`
--

CREATE TABLE IF NOT EXISTS `bf_activities` (
  `activity_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `activity` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `deleted` tinyint(12) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=1119 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_activities`
--

INSERT INTO `bf_activities` (`activity_id`, `user_id`, `activity`, `module`, `created_on`, `deleted`) VALUES
(1, 1, 'logged in from: ::1', 'users', '2015-04-20 11:27:33', 1),
(2, 1, 'App settings saved from: ::1', 'core', '2015-04-20 11:27:51', 1),
(3, 1, 'logged in from: ::1', 'users', '2015-04-20 11:35:54', 1),
(4, 1, 'Created Module: Coba : ::1', 'modulebuilder', '2015-04-20 12:19:40', 1),
(5, 1, 'logged in from: ::1', 'users', '2015-04-21 04:24:58', 1),
(6, 1, 'logged in from: ::1', 'users', '2015-04-27 10:34:09', 1),
(7, 1, 'logged in from: ::1', 'users', '2015-04-27 11:21:48', 1),
(8, 1, 'Created record with ID: 1 : ::1', 'coba', '2015-04-27 11:31:39', 1),
(9, 1, 'logged in from: ::1', 'users', '2015-04-27 11:53:10', 1),
(10, 1, 'logged in from: ::1', 'users', '2015-04-28 03:20:23', 1),
(11, 1, 'logged in from: ::1', 'users', '2015-05-09 13:13:01', 1),
(12, 1, 'Created record with ID: 2 : ::1', 'coba', '2015-05-09 13:17:31', 1),
(13, 1, 'Created record with ID: 3 : ::1', 'coba', '2015-05-09 13:27:13', 1),
(14, 1, 'Created record with ID: 4 : ::1', 'coba', '2015-05-09 13:44:00', 1),
(15, 1, 'Created record with ID: 5 : ::1', 'coba', '2015-05-09 13:44:09', 1),
(16, 1, 'Created record with ID: 6 : ::1', 'coba', '2015-05-09 14:48:07', 1),
(17, 1, 'Created record with ID: 7 : ::1', 'coba', '2015-05-09 14:48:15', 1),
(18, 1, 'logged in from: ::1', 'users', '2015-06-10 09:31:22', 1),
(19, 1, 'logged in from: ::1', 'users', '2015-06-11 10:55:23', 1),
(20, 1, 'Created record with ID: 5 : ::1', 'coba', '2015-06-11 10:55:50', 1),
(21, 1, 'logged in from: ::1', 'users', '2015-06-16 05:39:54', 1),
(22, 1, 'Created record with ID: 6 : ::1', 'coba', '2015-06-16 05:42:07', 1),
(23, 1, 'Created record with ID: 7 : ::1', 'coba', '2015-06-16 05:42:59', 1),
(24, 1, 'logged in from: ::1', 'users', '2015-06-16 09:53:41', 1),
(25, 1, 'Created Module: Test : ::1', 'modulebuilder', '2015-06-16 09:55:45', 1),
(26, 1, 'Created Module: Kode : ::1', 'modulebuilder', '2015-06-16 10:00:33', 1),
(27, 1, 'Created record with ID: 1 : ::1', 'kode', '2015-06-16 10:01:34', 1),
(28, 1, 'Created record with ID: 2 : ::1', 'kode', '2015-06-16 10:31:07', 1),
(29, 1, 'Updated record with ID: 2 : ::1', 'kode', '2015-06-16 10:31:22', 1),
(30, 1, 'Updated record with ID: 6 : ::1', 'coba', '2015-06-16 10:32:42', 1),
(31, 1, 'Updated record with ID: 1 : ::1', 'kode', '2015-06-16 10:35:53', 1),
(32, 1, 'logged in from: ::1', 'users', '2015-06-17 03:10:19', 1),
(33, 1, 'Deleted Module: Test : ::1', 'builder', '2015-06-17 03:13:45', 1),
(34, 1, 'Deleted Module: Kode : ::1', 'builder', '2015-06-17 03:14:24', 1),
(35, 1, 'Created Module: lagi : ::1', 'modulebuilder', '2015-06-17 03:15:54', 1),
(36, 1, 'Created record with ID: 1 : ::1', 'lagi', '2015-06-17 03:20:21', 1),
(37, 1, 'Created record with ID: 2 : ::1', 'lagi', '2015-06-17 03:21:40', 1),
(38, 1, 'Created record with ID: 3 : ::1', 'lagi', '2015-06-17 03:21:46', 1),
(39, 1, 'created a new Administrator: Dwi Febry', 'users', '2015-06-17 05:48:22', 1),
(40, 1, 'login dari: ::1', 'users', '2015-06-18 04:15:23', 1),
(41, 2, 'login dari: ::1', 'users', '2015-06-18 05:13:39', 1),
(42, 2, 'App settings saved from: ::1', 'core', '2015-06-18 05:55:07', 1),
(43, 2, 'App settings saved from: ::1', 'core', '2015-06-18 05:55:07', 1),
(44, 2, 'membuat User baru: Febry', 'users', '2015-06-18 06:23:30', 1),
(45, 3, 'login dari: ::1', 'users', '2015-06-18 06:23:53', 1),
(46, 2, 'membuat User baru: coba', 'users', '2015-06-18 06:31:36', 1),
(47, 2, 'membuat User baru: kiaku', 'users', '2015-06-18 06:35:24', 1),
(48, 2, 'membuat User baru: Lagi', 'users', '2015-06-18 06:37:14', 1),
(49, 2, 'modifikasi pengguna: Lagi', 'users', '2015-06-18 06:48:54', 1),
(50, 2, 'membuat User baru: lagian', 'users', '2015-06-18 06:52:56', 1),
(51, 2, 'membuat User baru: berhasil', 'users', '2015-06-18 07:00:42', 1),
(52, 2, 'membuat User baru: Tong', 'users', '2015-06-18 07:01:46', 1),
(53, 2, 'hapus pengguna: kiaku', 'users', '2015-06-18 07:03:22', 1),
(54, 1, 'login dari: ::1', 'users', '2015-06-18 11:44:24', 1),
(55, 1, 'login dari: ::1', 'users', '2015-06-18 12:13:58', 1),
(56, 1, 'login dari: ::1', 'users', '2015-06-18 12:34:26', 1),
(57, 1, 'login dari: ::1', 'users', '2015-06-19 05:30:06', 1),
(58, 1, 'login dari: ::1', 'users', '2015-06-19 09:37:51', 1),
(59, 1, 'login dari: ::1', 'users', '2015-06-19 10:36:58', 1),
(60, 1, 'login dari: ::1', 'users', '2015-06-20 05:19:49', 1),
(61, 1, 'login dari: ::1', 'users', '2015-06-20 05:29:59', 1),
(62, 1, 'login dari: ::1', 'users', '2015-06-20 05:35:23', 1),
(63, 1, 'login dari: ::1', 'users', '2015-07-28 08:01:00', 1),
(64, 1, 'modifikasi pengguna: admin', 'users', '2015-07-28 08:01:32', 1),
(65, 1, 'login dari: ::1', 'users', '2015-07-28 08:01:39', 1),
(66, 1, 'login dari: ::1', 'users', '2015-07-29 05:07:39', 1),
(67, 1, 'modifikasi pengguna: lagian', 'users', '2015-07-29 05:25:40', 1),
(68, 1, 'modifikasi pengguna: lagian', 'users', '2015-07-29 05:28:33', 1),
(69, 1, 'modifikasi pengguna: admin', 'users', '2015-07-29 05:34:56', 1),
(70, 1, 'modifikasi pengguna: admin', 'users', '2015-07-29 05:34:56', 1),
(71, 1, 'membuat Admin baru: Admin', 'users', '2015-07-29 05:43:35', 1),
(72, 1, 'membuat Admin baru: Admin', 'users', '2015-07-29 05:43:35', 1),
(73, 1, 'hapus pengguna: Admin', 'users', '2015-07-29 05:43:45', 1),
(74, 10, 'login dari: ::1', 'users', '2015-07-29 05:44:28', 1),
(75, 1, 'login dari: ::1', 'users', '2015-07-30 15:22:43', 1),
(76, 1, 'Created Module: conto : ::1', 'modulebuilder', '2015-07-30 15:24:15', 1),
(77, 1, 'Created record with ID: 1 : ::1', 'conto', '2015-07-30 15:24:31', 1),
(78, 1, 'login dari: ::1', 'users', '2015-08-11 05:40:08', 1),
(79, 1, 'login dari: ::1', 'users', '2015-08-19 09:39:03', 1),
(80, 1, 'login dari: ::1', 'users', '2015-08-20 05:54:31', 1),
(81, 1, 'login dari: ::1', 'users', '2015-08-24 04:47:25', 1),
(82, 1, 'Deleted Module: lagi : ::1', 'builder', '2015-08-24 05:06:14', 1),
(83, 1, 'login dari: ::1', 'users', '2015-08-26 07:59:18', 1),
(84, 1, 'login dari: ::1', 'users', '2015-08-26 08:08:14', 1),
(85, 1, 'FIXME ("us_log_status_change"): lagian : Menonaktifkaned', 'users', '2015-08-26 11:16:30', 1),
(86, 1, 'FIXME ("us_log_status_change"): lagian : Menonaktifkaned', 'users', '2015-08-26 11:16:30', 1),
(87, 1, 'login dari: ::1', 'users', '2015-08-28 04:30:42', 1),
(88, 1, 'login dari: ::1', 'users', '2015-08-28 09:02:09', 1),
(89, 1, 'login dari: ::1', 'users', '2015-08-28 10:17:00', 1),
(90, 1, 'login dari: ::1', 'users', '2015-08-28 10:47:24', 1),
(91, 1, 'login dari: ::1', 'users', '2015-08-31 05:03:22', 1),
(92, 1, 'login dari: ::1', 'users', '2015-09-15 09:35:09', 1),
(93, 1, 'login dari: ::1', 'users', '2015-09-15 09:35:29', 1),
(94, 1, 'login dari: ::1', 'users', '2015-09-15 09:36:37', 1),
(95, 1, 'login dari: ::1', 'users', '2015-09-15 09:37:04', 1),
(96, 1, 'modifikasi pengguna: admin', 'users', '2015-09-15 09:40:41', 1),
(97, 1, 'login dari: ::1', 'users', '2015-09-15 09:40:49', 1),
(98, 1, 'login dari: ::1', 'users', '2015-09-16 03:16:04', 1),
(99, 1, 'login dari: ::1', 'users', '2015-09-16 09:20:13', 1),
(100, 1, 'login dari: ::1', 'users', '2015-09-21 02:07:07', 1),
(101, 1, 'login dari: ::1', 'users', '2015-09-21 02:08:18', 1),
(102, 1, 'login dari: ::1', 'users', '2015-09-21 02:09:19', 1),
(103, 1, 'login dari: ::1', 'users', '2015-09-22 03:12:24', 1),
(104, 1, 'Created Module: Pengguna : ::1', 'modulebuilder', '2015-09-22 03:41:32', 1),
(105, 1, 'modifikasi pengguna: Febry', 'users', '2015-09-22 04:19:08', 1),
(106, 1, 'modifikasi pengguna: Febry', 'users', '2015-09-22 04:23:57', 1),
(107, 1, 'login dari: ::1', 'users', '2015-10-13 03:11:01', 1),
(108, 1, 'Deleted Module: Pengguna : ::1', 'builder', '2015-10-13 03:25:40', 1),
(109, 1, 'Created Module: Pengguna : ::1', 'modulebuilder', '2015-10-13 03:30:25', 1),
(110, 1, 'Created record with ID: 12 : ::1', 'pengguna', '2015-10-13 04:52:45', 1),
(111, 10, 'login dari: ::1', 'users', '2015-10-13 04:55:07', 1),
(112, 1, 'Created record with ID: 12 : ::1', 'pengguna', '2015-10-13 05:06:18', 1),
(113, 12, 'login dari: ::1', 'users', '2015-10-13 05:06:34', 1),
(114, 1, 'Updated record with ID: 12 : ::1', 'pengguna', '2015-10-13 05:17:34', 1),
(115, 12, 'login dari: ::1', 'users', '2015-10-13 05:19:26', 1),
(116, 1, 'Updated record with ID: 12 : ::1', 'pengguna', '2015-10-13 05:21:20', 1),
(117, 1, 'Updated record with ID: 12 : ::1', 'pengguna', '2015-10-13 05:24:06', 1),
(118, 12, 'login dari: ::1', 'users', '2015-10-13 05:24:14', 1),
(119, 12, 'Updated record with ID: 9 : ::1', 'pengguna', '2015-10-13 05:30:42', 1),
(120, 9, 'login dari: ::1', 'users', '2015-10-13 05:31:56', 1),
(121, 1, 'Deleted record with ID: 4 : ::1', 'pengguna', '2015-10-13 05:36:38', 1),
(122, 1, 'Deleted Module: Coba : ::1', 'builder', '2015-10-13 05:42:20', 1),
(123, 1, 'login dari: ::1', 'users', '2015-10-23 05:27:07', 1),
(124, 1, 'login dari: ::1', 'users', '2015-10-23 05:28:29', 1),
(125, 1, 'login dari: ::1', 'users', '2015-10-26 04:19:21', 1),
(126, 1, 'login dari: 192.168.1.74', 'users', '2015-11-10 06:14:51', 1),
(127, 1, 'login dari: 192.168.1.74', 'users', '2015-11-10 06:17:47', 1),
(128, 1, 'Updated record with ID: 10 : 192.168.1.74', 'pengguna', '2015-11-10 06:18:13', 1),
(129, 10, 'login dari: 192.168.1.74', 'users', '2015-11-10 06:18:33', 1),
(130, 1, 'login dari: 192.168.1.74', 'users', '2015-11-10 06:19:59', 1),
(131, 1, 'login dari: ::1', 'users', '2016-01-05 08:51:48', 1),
(132, 1, 'deleted 110 activities', 'activities', '2016-01-05 08:54:33', 1),
(133, 1, 'deleted 22 activities', 'activities', '2016-01-05 08:54:42', 1),
(134, 1, 'deleted 1 activities', 'activities', '2016-01-05 08:54:58', 1),
(135, 1, 'login dari: ::1', 'users', '2016-01-05 09:12:59', 1),
(136, 1, 'deleted 2 activities', 'activities', '2016-01-05 09:14:06', 0),
(137, 1, 'login dari: ::1', 'users', '2016-01-06 01:41:02', 0),
(138, 1, 'login dari: ::1', 'users', '2016-01-06 05:29:36', 0),
(139, 1, 'login dari: ::1', 'users', '2016-01-06 09:02:45', 0),
(140, 1, 'Created Module: Aduan : ::1', 'modulebuilder', '2016-01-06 09:17:05', 0),
(141, 1, 'login dari: ::1', 'users', '2016-01-06 11:16:31', 0),
(142, 1, 'login dari: ::1', 'users', '2016-01-07 04:34:26', 0),
(143, 1, 'Deleted Module: Aduan : ::1', 'builder', '2016-01-07 04:36:14', 0),
(144, 1, 'Created Module: SKPD : ::1', 'modulebuilder', '2016-01-07 04:40:30', 0),
(145, 1, 'Created record with ID: 1 : ::1', 'skpd', '2016-01-07 04:43:32', 0),
(146, 1, 'login dari: ::1', 'users', '2016-01-07 05:13:15', 0),
(147, 1, 'Updated record with ID: 1 : ::1', 'skpd', '2016-01-07 05:22:46', 0),
(148, 1, 'Created record with ID: 85 : ::1', 'skpd', '2016-01-07 05:29:05', 0),
(149, 1, 'Deleted record with ID: 58 : ::1', 'skpd', '2016-01-07 05:31:00', 0),
(150, 1, 'Created Module: Aduan : ::1', 'modulebuilder', '2016-01-07 06:03:37', 0),
(151, 1, 'Updated record with ID: 10 : ::1', 'pengguna', '2016-01-07 06:06:48', 0),
(152, 1, 'Updated record with ID: 12 : ::1', 'pengguna', '2016-01-07 06:11:42', 0),
(153, 1, 'Created record with ID: 13 : ::1', 'pengguna', '2016-01-07 06:14:15', 0),
(154, 1, 'login dari: ::1', 'users', '2016-01-07 07:31:05', 0),
(155, 13, 'login dari: ::1', 'users', '2016-01-07 07:37:06', 0),
(156, 13, 'login dari: ::1', 'users', '2016-01-07 08:10:22', 0),
(157, 13, 'login dari: ::1', 'users', '2016-01-07 08:10:50', 0),
(158, 1, 'login dari: ::1', 'users', '2016-01-07 08:12:36', 0),
(159, 1, 'login dari: ::1', 'users', '2016-01-07 08:21:24', 0),
(160, 1, 'login dari: ::1', 'users', '2016-01-07 08:25:02', 0),
(161, 1, 'login dari: ::1', 'users', '2016-01-07 08:31:30', 0),
(162, 1, 'login dari: ::1', 'users', '2016-01-07 08:37:23', 0),
(163, 1, 'login dari: ::1', 'users', '2016-01-07 08:37:44', 0),
(164, 1, 'login dari: ::1', 'users', '2016-01-07 08:38:49', 0),
(165, 1, 'login dari: ::1', 'users', '2016-01-07 08:45:51', 0),
(166, 1, 'login dari: ::1', 'users', '2016-01-07 08:49:37', 0),
(167, 13, 'login dari: ::1', 'users', '2016-01-07 08:50:12', 0),
(168, 13, 'login dari: ::1', 'users', '2016-01-07 08:50:29', 0),
(169, 1, 'Created record with ID: 14 : ::1', 'pengguna', '2016-01-07 09:03:39', 0),
(170, 1, 'Updated record with ID: 14 : ::1', 'pengguna', '2016-01-07 09:07:23', 0),
(171, 1, 'Updated record with ID: 13 : ::1', 'pengguna', '2016-01-07 09:08:20', 0),
(172, 1, 'login dari: ::1', 'users', '2016-01-07 09:49:43', 0),
(173, 1, 'login dari: ::1', 'users', '2016-01-07 09:53:15', 0),
(174, 13, 'login dari: ::1', 'users', '2016-01-07 10:16:23', 0),
(175, 13, 'Created record with ID: 1 : ::1', 'aduan', '2016-01-07 10:25:27', 0),
(176, 10, 'login dari: ::1', 'users', '2016-01-07 10:43:16', 0),
(177, 14, 'login dari: ::1', 'users', '2016-01-07 10:54:32', 0),
(178, 14, 'Created record with ID: 2 : ::1', 'aduan', '2016-01-07 10:55:31', 0),
(179, 13, 'login dari: ::1', 'users', '2016-01-07 11:32:32', 0),
(180, 14, 'login dari: ::1', 'users', '2016-01-07 11:35:02', 0),
(181, 1, 'login dari: ::1', 'users', '2016-01-07 11:37:48', 0),
(182, 1, 'Updated record with ID: 2 : ::1', 'aduan', '2016-01-07 12:09:28', 0),
(183, 1, 'Updated record with ID: 1 : ::1', 'aduan', '2016-01-07 12:09:38', 0),
(184, 1, 'login dari: ::1', 'users', '2016-01-08 01:48:31', 0),
(185, 1, 'Deleted Module: Aduan : ::1', 'builder', '2016-01-08 02:55:20', 0),
(186, 1, 'Created Module: Aduan : ::1', 'modulebuilder', '2016-01-08 02:58:58', 0),
(187, 14, 'login dari: ::1', 'users', '2016-01-08 03:21:58', 0),
(188, 1, 'login dari: ::1', 'users', '2016-01-08 03:22:29', 0),
(189, 14, 'Created record with ID: 1 : ::1', 'aduan', '2016-01-08 03:23:47', 0),
(190, 14, 'Created record with ID: 2 : ::1', 'aduan', '2016-01-08 03:27:53', 0),
(191, 13, 'login dari: ::1', 'users', '2016-01-08 03:40:01', 0),
(192, 13, 'Created record with ID: 3 : ::1', 'aduan', '2016-01-08 03:54:12', 0),
(193, 14, 'login dari: ::1', 'users', '2016-01-08 04:19:03', 0),
(194, 14, 'Created record with ID: 15 : ::1', 'pengguna', '2016-01-08 04:34:12', 0),
(195, 15, 'login dari: ::1', 'users', '2016-01-08 04:34:25', 0),
(196, 15, 'Created record with ID: 4 : ::1', 'aduan', '2016-01-08 04:34:59', 0),
(197, 15, 'Created record with ID: 5 : ::1', 'aduan', '2016-01-08 04:35:36', 0),
(198, 1, 'login dari: ::1', 'users', '2016-01-08 04:39:08', 0),
(199, 15, 'login dari: ::1', 'users', '2016-01-08 07:19:57', 0),
(200, 15, 'Created record with ID: 6 : ::1', 'aduan', '2016-01-08 07:20:42', 0),
(201, 1, 'Updated record with ID: 6 : ::1', 'aduan', '2016-01-08 07:21:29', 0),
(202, 1, 'login dari: ::1', 'users', '2016-01-11 04:10:14', 0),
(203, 1, 'Updated record with ID: 2 : ::1', 'aduan', '2016-01-11 04:15:53', 0),
(204, 1, 'Created record with ID: 7 : ::1', 'aduan', '2016-01-11 04:16:15', 0),
(205, 10, 'login dari: ::1', 'users', '2016-01-11 08:43:36', 0),
(206, 10, 'Updated record with ID: 7 : ::1', 'aduan', '2016-01-11 08:44:45', 0),
(207, 1, 'login dari: ::1', 'users', '2016-01-12 03:03:37', 0),
(208, 1, 'login dari: ::1', 'users', '2016-01-12 04:37:12', 0),
(209, 1, 'Updated record with ID: 5 : ::1', 'aduan', '2016-01-12 05:00:07', 0),
(210, 1, 'Updated record with ID: 1 : ::1', 'aduan', '2016-01-12 05:12:41', 0),
(211, 15, 'login dari: ::1', 'users', '2016-01-12 05:31:25', 0),
(212, 1, 'login dari: ::1', 'users', '2016-01-13 08:00:03', 0),
(213, 15, 'login dari: ::1', 'users', '2016-01-13 08:04:44', 0),
(214, 15, 'Created record with ID: 8 : ::1', 'aduan', '2016-01-13 09:21:23', 0),
(215, 1, 'login dari: ::1', 'users', '2016-01-14 01:40:56', 0),
(216, 1, 'Created Module: Proses : ::1', 'modulebuilder', '2016-01-14 01:42:48', 0),
(217, 10, 'login dari: ::1', 'users', '2016-01-14 01:45:04', 0),
(218, 1, 'login dari: ::1', 'users', '2016-01-14 01:45:22', 0),
(219, 1, 'login dari: ::1', 'users', '2016-01-14 01:46:51', 0),
(220, 10, 'Updated record with ID: 1 : ::1', 'aduan', '2016-01-14 02:55:38', 0),
(221, 1, 'login dari: ::1', 'users', '2016-01-14 03:17:04', 0),
(222, 10, 'Updated record with ID: 6 : ::1', 'aduan', '2016-01-14 04:00:57', 0),
(223, 15, 'login dari: ::1', 'users', '2016-01-14 04:05:47', 0),
(224, 10, 'Updated record with ID: 5 : ::1', 'aduan', '2016-01-14 04:20:11', 0),
(225, 10, 'Updated record with ID: 4 : ::1', 'aduan', '2016-01-14 04:46:30', 0),
(226, 10, 'FIXME ("aduan_act_edit_record"): 4 : ::1', 'aduan', '2016-01-14 07:50:51', 0),
(227, 10, 'FIXME ("aduan_act_edit_record"): 4 : ::1', 'aduan', '2016-01-14 07:51:44', 0),
(228, 15, 'Created record with ID: 1 : ::1', 'aduan', '2016-01-14 07:55:33', 0),
(229, 15, 'Created record with ID: 2 : ::1', 'aduan', '2016-01-14 08:00:53', 0),
(230, 10, 'Updated record with ID: 1 : ::1', 'aduan', '2016-01-14 08:07:02', 0),
(231, 10, 'Updated record with ID: 2 : ::1', 'aduan', '2016-01-14 08:16:54', 0),
(232, 15, 'Created record with ID: 3 : ::1', 'aduan', '2016-01-14 08:20:14', 0),
(233, 15, 'login dari: ::1', 'users', '2016-01-14 08:20:43', 0),
(234, 10, 'FIXME ("aduan_act_edit_record"): 2 : ::1', 'aduan', '2016-01-14 08:25:00', 0),
(235, 10, 'Updated record with ID: 2 : ::1', 'aduan', '2016-01-14 09:25:59', 0),
(236, 15, 'Created record with ID: 1 : ::1', 'aduan', '2016-01-14 09:33:10', 0),
(237, 10, 'Updated record with ID: 1 : ::1', 'aduan', '2016-01-14 09:34:47', 0),
(238, 15, 'Created record with ID: 2 : ::1', 'aduan', '2016-01-14 09:40:22', 0),
(239, 10, 'Updated record with ID: 2 : ::1', 'aduan', '2016-01-14 09:40:55', 0),
(240, 10, 'FIXME ("aduan_act_edit_record"): 2 : ::1', 'aduan', '2016-01-14 10:03:20', 0),
(241, 10, 'FIXME ("aduan_act_edit_record"): 1 : ::1', 'aduan', '2016-01-14 10:06:23', 0),
(242, 15, 'Created record with ID: 3 : ::1', 'aduan', '2016-01-14 10:15:43', 0),
(243, 10, 'Updated record with ID: 3 : ::1', 'aduan', '2016-01-14 10:16:04', 0),
(244, 10, 'FIXME ("aduan_act_edit_record"): 3 : ::1', 'aduan', '2016-01-14 10:16:51', 0),
(245, 15, 'Created record with ID: 4 : ::1', 'aduan', '2016-01-14 10:18:55', 0),
(246, 10, 'Updated record with ID: 4 : ::1', 'aduan', '2016-01-14 10:19:16', 0),
(247, 10, 'FIXME ("aduan_act_edit_record"): 4 : ::1', 'aduan', '2016-01-14 10:19:55', 0),
(248, 15, 'Created record with ID: 5 : ::1', 'aduan', '2016-01-14 10:21:31', 0),
(249, 10, 'Updated record with ID: 5 : ::1', 'aduan', '2016-01-14 10:21:59', 0),
(250, 10, 'FIXME ("aduan_act_edit_record"): 5 : ::1', 'aduan', '2016-01-14 10:23:05', 0),
(251, 1, 'login dari: ::1', 'users', '2016-01-15 01:52:49', 0),
(252, 1, 'login dari: ::1', 'users', '2016-01-15 04:21:46', 0),
(253, 1, 'login dari: ::1', 'users', '2016-01-18 08:20:11', 0),
(254, 15, 'login dari: ::1', 'users', '2016-01-18 08:20:56', 0),
(255, 1, 'login dari: ::1', 'users', '2016-02-03 09:21:04', 0),
(256, 1, 'Created record with ID: 6 : ::1', 'aduan', '2016-02-03 09:31:03', 0),
(257, 1, 'login dari: ::1', 'users', '2016-02-05 04:54:52', 0),
(258, 1, 'App settings saved from: ::1', 'core', '2016-02-05 04:56:47', 0),
(259, 1, 'login dari: ::1', 'users', '2016-02-09 04:24:29', 0),
(260, 1, 'login dari: ::1', 'users', '2016-02-09 04:27:23', 0),
(261, 1, 'login dari: ::1', 'users', '2016-02-09 08:56:21', 0),
(262, 1, 'login dari: ::1', 'users', '2016-02-09 12:41:51', 0),
(263, 1, 'login dari: ::1', 'users', '2016-02-15 03:54:21', 0),
(264, 1, 'login dari: ::1', 'users', '2016-02-16 06:36:14', 0),
(265, 1, 'login dari: ::1', 'users', '2016-02-16 11:34:44', 0),
(266, 1, 'Created Module: Jenis Barang : ::1', 'modulebuilder', '2016-02-16 12:54:51', 0),
(267, 1, 'Deleted Module: Aduan : ::1', 'builder', '2016-02-16 13:07:26', 0),
(268, 1, 'Deleted Module: Proses : ::1', 'builder', '2016-02-16 13:07:43', 0),
(269, 1, 'Deleted Module: Pengguna : ::1', 'builder', '2016-02-16 13:07:55', 0),
(270, 1, 'Created Module: Jenis Barang : ::1', 'modulebuilder', '2016-02-16 13:11:44', 0),
(271, 1, 'login dari: ::1', 'users', '2016-02-18 05:35:20', 0),
(272, 1, 'Deleted Module: Jenis_Barang : ::1', 'builder', '2016-02-18 05:37:07', 0),
(273, 1, 'Created Module: Jenis Barang : ::1', 'modulebuilder', '2016-02-18 05:38:42', 0),
(274, 1, 'Deleted Module: Jenis_Barang : ::1', 'builder', '2016-02-18 05:45:04', 0),
(275, 1, 'Created Module: Jenis Barang : ::1', 'modulebuilder', '2016-02-18 05:47:11', 0),
(276, 1, 'Deleted Module: Jenis_Barang : ::1', 'builder', '2016-02-18 05:49:23', 0),
(277, 1, 'Created Module: Jenis Barang : ::1', 'modulebuilder', '2016-02-18 05:51:39', 0),
(278, 1, 'Deleted Module: Jenis_Barang : ::1', 'builder', '2016-02-18 06:00:00', 0),
(279, 1, 'Created Module: Jenis Barang : ::1', 'modulebuilder', '2016-02-18 06:02:14', 0),
(280, 1, 'Deleted Module: Jenis_Barang : ::1', 'builder', '2016-02-18 06:46:45', 0),
(281, 1, 'Created Module: Jenis Barang : ::1', 'modulebuilder', '2016-02-18 06:48:49', 0),
(282, 1, 'Created record with ID: 1 : ::1', 'jenis_barang', '2016-02-18 06:55:30', 0),
(283, 1, 'Created record with ID: 2 : ::1', 'jenis_barang', '2016-02-18 07:06:57', 0),
(284, 1, 'Created record with ID: 3 : ::1', 'jenis_barang', '2016-02-18 07:45:53', 0),
(285, 1, 'Created record with ID: 4 : ::1', 'jenis_barang', '2016-02-18 08:09:54', 0),
(286, 1, 'login dari: ::1', 'users', '2016-02-18 10:25:40', 0),
(287, 1, 'Created record with ID: 5 : ::1', 'jenis_barang', '2016-02-18 11:20:12', 0),
(288, 1, 'login dari: ::1', 'users', '2016-02-22 07:16:25', 0),
(289, 1, 'Created Module: Barang : ::1', 'modulebuilder', '2016-02-22 07:18:44', 0),
(290, 1, 'Deleted Module: Barang : ::1', 'builder', '2016-02-22 07:50:09', 0),
(291, 1, 'Created Module: Barang : ::1', 'modulebuilder', '2016-02-22 08:09:38', 0),
(292, 1, 'Deleted Module: Barang : ::1', 'builder', '2016-02-22 08:11:38', 0),
(293, 1, 'Created Module: Barang : ::1', 'modulebuilder', '2016-02-22 08:14:06', 0),
(294, 1, 'Deleted Module: SKPD : ::1', 'builder', '2016-02-22 08:48:51', 0),
(295, 1, 'Deleted Module: Barang : ::1', 'builder', '2016-02-22 08:49:04', 0),
(296, 1, 'login dari: ::1', 'users', '2016-02-25 05:45:17', 0),
(297, 1, 'Deleted Module: Pegawai : ::1', 'builder', '2016-02-25 05:48:07', 0),
(298, 1, 'Created Module: Pegawai : ::1', 'modulebuilder', '2016-02-25 05:52:13', 0),
(299, 1, 'Created Module: Pegawai : ::1', 'modulebuilder', '2016-02-25 05:52:17', 0),
(300, 1, 'login dari: ::1', 'users', '2016-02-25 15:30:55', 0),
(301, 1, 'login dari: ::1', 'users', '2016-02-26 04:56:29', 0),
(302, 1, 'Created Module: Divisi : ::1', 'modulebuilder', '2016-02-26 09:11:36', 0),
(303, 1, 'Created record with ID: 1 : ::1', 'divisi', '2016-02-26 09:12:48', 0),
(304, 1, 'Created record with ID: 2 : ::1', 'divisi', '2016-02-26 09:13:20', 0),
(305, 1, 'Created record with ID: 3 : ::1', 'divisi', '2016-02-26 09:13:48', 0),
(306, 1, 'Created record with ID: 4 : ::1', 'divisi', '2016-02-26 09:14:08', 0),
(307, 1, 'Created record with ID: 5 : ::1', 'divisi', '2016-02-26 09:14:39', 0),
(308, 1, 'Created Module: Jenis Izin : ::1', 'modulebuilder', '2016-02-26 09:16:59', 0),
(309, 1, 'Created record with ID: 1 : ::1', 'jenis_izin', '2016-02-26 09:17:27', 0),
(310, 1, 'Created record with ID: 2 : ::1', 'jenis_izin', '2016-02-26 09:17:46', 0),
(311, 1, 'login dari: ::1', 'users', '2016-02-29 04:53:54', 0),
(312, 1, 'login dari: ::1', 'users', '2016-03-01 03:58:18', 0),
(313, 1, 'Created Module: Input Izin : ::1', 'modulebuilder', '2016-03-01 05:11:47', 0),
(314, 1, 'login dari: ::1', 'users', '2016-03-02 03:50:12', 0),
(315, 1, 'login dari: ::1', 'users', '2016-03-02 03:55:59', 0),
(316, 1, 'Deleted Module: Input_Izin : ::1', 'builder', '2016-03-02 05:48:28', 0),
(317, 1, 'Created Module: Input Izin : ::1', 'modulebuilder', '2016-03-02 05:54:20', 0),
(318, 1, 'Created record with ID: 1 : ::1', 'input_izin', '2016-03-02 06:06:21', 0),
(319, 1, 'Updated record with ID: 1 : ::1', 'input_izin', '2016-03-02 06:12:30', 0),
(320, 1, 'Updated record with ID: 1 : ::1', 'input_izin', '2016-03-02 06:12:45', 0),
(321, 1, 'login dari: ::1', 'users', '2016-03-02 07:42:35', 0),
(322, 1, 'Created record with ID: 6 : ::1', 'divisi', '2016-03-02 10:37:11', 0),
(323, 1, 'Created record with ID: 7 : ::1', 'divisi', '2016-03-02 10:37:36', 0),
(324, 1, 'Created record with ID: 8 : ::1', 'divisi', '2016-03-02 10:37:52', 0),
(325, 1, 'Created record with ID: 9 : ::1', 'divisi', '2016-03-02 10:38:12', 0),
(326, 1, 'Created record with ID: 10 : ::1', 'divisi', '2016-03-02 10:38:22', 0),
(327, 1, 'Created record with ID: 11 : ::1', 'divisi', '2016-03-02 10:38:33', 0),
(328, 1, 'Created record with ID: 12 : ::1', 'divisi', '2016-03-02 10:38:50', 0),
(329, 1, 'Created record with ID: 13 : ::1', 'divisi', '2016-03-02 10:39:05', 0),
(330, 1, 'Created record with ID: 14 : ::1', 'divisi', '2016-03-02 10:39:24', 0),
(331, 1, 'Created record with ID: 15 : ::1', 'divisi', '2016-03-02 10:39:43', 0),
(332, 1, 'Created record with ID: 2 : ::1', 'input_izin', '2016-03-02 11:05:15', 0),
(333, 1, 'Updated record with ID: 2 : ::1', 'input_izin', '2016-03-02 11:07:01', 0),
(334, 1, 'Updated record with ID: 2 : ::1', 'input_izin', '2016-03-02 11:07:22', 0),
(335, 1, 'Updated record with ID: 2 : ::1', 'input_izin', '2016-03-02 11:07:36', 0),
(336, 1, 'Created record with ID: 3 : ::1', 'input_izin', '2016-03-02 11:13:02', 0),
(337, 1, 'Updated record with ID: 3 : ::1', 'input_izin', '2016-03-02 11:13:38', 0),
(338, 1, 'Updated record with ID: 3 : ::1', 'input_izin', '2016-03-02 11:16:01', 0),
(339, 1, 'Updated record with ID: 3 : ::1', 'input_izin', '2016-03-02 11:16:21', 0),
(340, 1, 'Created record with ID: 4 : ::1', 'input_izin', '2016-03-02 11:18:33', 0),
(341, 1, 'Created record with ID: 5 : ::1', 'input_izin', '2016-03-02 11:42:48', 0),
(342, 1, 'Updated record with ID: 5 : ::1', 'input_izin', '2016-03-02 11:43:09', 0),
(343, 1, 'Created record with ID: 6 : ::1', 'input_izin', '2016-03-02 11:47:22', 0),
(344, 1, 'Created record with ID: 7 : ::1', 'input_izin', '2016-03-02 11:48:08', 0),
(345, 1, 'Created record with ID: 8 : ::1', 'input_izin', '2016-03-02 11:51:22', 0),
(346, 1, 'login dari: ::1', 'users', '2016-03-03 03:49:50', 0),
(347, 1, 'Created record with ID: 9 : ::1', 'input_izin', '2016-03-03 03:52:22', 0),
(348, 1, 'login dari: ::1', 'users', '2016-03-03 08:32:25', 0),
(349, 1, 'login dari: ::1', 'users', '2016-03-04 04:10:57', 0),
(350, 1, 'App settings saved from: ::1', 'core', '2016-03-04 04:23:25', 0),
(351, 1, 'App settings saved from: ::1', 'core', '2016-03-04 04:23:35', 0),
(352, 1, 'membuat User baru: Fauzi Aryanto', 'users', '2016-03-04 04:30:10', 0),
(353, 2, 'login dari: ::1', 'users', '2016-03-04 04:30:46', 0),
(354, 1, 'login dari: ::1', 'users', '2016-03-04 04:31:39', 0),
(355, 2, 'login dari: ::1', 'users', '2016-03-04 04:35:29', 0),
(356, 1, 'login dari: ::1', 'users', '2016-03-04 04:35:51', 0),
(357, 1, 'login dari: ::1', 'users', '2016-03-04 04:35:52', 0),
(358, 2, 'login dari: ::1', 'users', '2016-03-04 04:40:11', 0),
(359, 1, 'login dari: ::1', 'users', '2016-03-04 04:41:03', 0),
(360, 2, 'login dari: ::1', 'users', '2016-03-04 04:45:55', 0),
(361, 1, 'login dari: ::1', 'users', '2016-03-04 04:48:22', 0),
(362, 2, 'login dari: ::1', 'users', '2016-03-04 04:49:22', 0),
(363, 1, 'login dari: ::1', 'users', '2016-03-04 05:12:29', 0),
(364, 2, 'login dari: ::1', 'users', '2016-03-04 05:30:02', 0),
(365, 1, 'login dari: ::1', 'users', '2016-03-04 07:27:59', 0),
(366, 1, 'Created record with ID: 10 : ::1', 'input_izin', '2016-03-04 08:16:26', 0),
(367, 1, 'login dari: ::1', 'users', '2016-03-09 14:41:00', 0),
(368, 2, 'login dari: ::1', 'users', '2016-03-10 04:21:27', 0),
(369, 1, 'login dari: ::1', 'users', '2016-03-10 04:57:02', 0),
(370, 1, 'login dari: ::1', 'users', '2016-03-10 10:26:28', 0),
(371, 1, 'login dari: ::1', 'users', '2016-03-11 07:38:29', 0),
(372, 1, 'login dari: ::1', 'users', '2016-03-13 13:10:47', 0),
(373, 1, 'Created record with ID: 11 : ::1', 'input_izin', '2016-03-13 14:05:55', 0),
(374, 1, 'Created record with ID: 12 : ::1', 'input_izin', '2016-03-13 15:11:36', 0),
(375, 1, 'Updated record with ID: 12 : ::1', 'input_izin', '2016-03-13 15:12:53', 0),
(376, 1, 'Created record with ID: 13 : ::1', 'input_izin', '2016-03-13 16:00:43', 0),
(377, 1, 'Created record with ID: 14 : ::1', 'input_izin', '2016-03-13 16:02:46', 0),
(378, 1, 'Created record with ID: 15 : ::1', 'input_izin', '2016-03-13 16:03:58', 0),
(379, 1, 'Created record with ID: 16 : ::1', 'input_izin', '2016-03-13 16:04:20', 0),
(380, 1, 'FIXME ("us_log_status_change"): administrator : Mengaktifkaned', 'users', '2016-03-13 16:15:40', 0),
(381, 1, 'FIXME ("us_log_status_change"): administrator : Menonaktifkaned', 'users', '2016-03-13 16:15:49', 0),
(382, 1, 'FIXME ("us_log_status_change"): administrator : Mengaktifkaned', 'users', '2016-03-13 16:15:55', 0),
(383, 1, 'FIXME ("us_log_status_change"): administrator : Mengaktifkaned', 'users', '2016-03-13 16:16:39', 0),
(384, 3, 'login dari: ::1', 'users', '2016-03-13 16:20:59', 0),
(385, 3, 'FIXME ("us_log_status_change"): administrator : Menonaktifkaned', 'users', '2016-03-13 18:36:04', 0),
(386, 3, 'FIXME ("us_log_status_change"): administrator : Mengaktifkaned', 'users', '2016-03-13 18:36:10', 0),
(387, 3, 'FIXME ("us_log_status_change"): administrator : Menonaktifkaned', 'users', '2016-03-13 18:36:17', 0),
(388, 3, 'FIXME ("us_log_status_change"): administrator : Mengaktifkaned', 'users', '2016-03-13 18:36:26', 0),
(389, 3, 'Created Module: Pengajuan Izin : ::1', 'modulebuilder', '2016-03-13 20:27:48', 0),
(390, 3, 'Created record with ID: 1 : ::1', 'pengajuan_izin', '2016-03-13 20:54:56', 0),
(391, 3, 'Created record with ID: 2 : ::1', 'pengajuan_izin', '2016-03-13 21:00:22', 0),
(392, 3, 'Created record with ID: 3 : ::1', 'pengajuan_izin', '2016-03-13 21:00:46', 0),
(393, 3, 'Created record with ID: 4 : ::1', 'pengajuan_izin', '2016-03-13 21:01:18', 0),
(394, 3, 'Created record with ID: 5 : ::1', 'pengajuan_izin', '2016-03-13 21:01:39', 0),
(395, 3, 'Created record with ID: 6 : ::1', 'pengajuan_izin', '2016-03-13 21:02:07', 0),
(396, 3, 'Created record with ID: 7 : ::1', 'pengajuan_izin', '2016-03-13 21:05:27', 0),
(397, 3, 'Created record with ID: 8 : ::1', 'pengajuan_izin', '2016-03-13 21:27:32', 0),
(398, 3, 'Created record with ID: 9 : ::1', 'pengajuan_izin', '2016-03-13 21:46:47', 0),
(399, 3, 'Created record with ID: 10 : ::1', 'pengajuan_izin', '2016-03-13 21:47:24', 0),
(400, 3, 'Created record with ID: 11 : ::1', 'pengajuan_izin', '2016-03-13 21:47:24', 0),
(401, 3, 'Created record with ID: 12 : ::1', 'pengajuan_izin', '2016-03-13 21:48:12', 0),
(402, 3, 'Created record with ID: 13 : ::1', 'pengajuan_izin', '2016-03-13 21:48:38', 0),
(403, 3, 'Created Module: ffh : ::1', 'modulebuilder', '2016-03-13 22:32:50', 0),
(404, 3, 'Deleted Module: ffh : ::1', 'builder', '2016-03-13 22:33:24', 0),
(405, 3, 'Created Module: k : ::1', 'modulebuilder', '2016-03-13 22:35:04', 0),
(406, 3, 'login dari: ::1', 'users', '2016-03-14 03:01:14', 0),
(407, 3, 'Created record with ID: 14 : ::1', 'pengajuan_izin', '2016-03-14 04:11:20', 0),
(408, 3, 'Created Module: z : ::1', 'modulebuilder', '2016-03-14 04:20:26', 0),
(409, 3, 'Deleted Module: k : ::1', 'builder', '2016-03-14 04:24:33', 0),
(410, 3, 'Deleted Module: K : ::1', 'builder', '2016-03-14 04:46:50', 0),
(411, 2, 'login dari: ::1', 'users', '2016-03-14 04:50:41', 0),
(412, 2, 'Created record with ID: 15 : ::1', 'pengajuan_izin', '2016-03-14 04:50:59', 0),
(413, 3, 'login dari: ::1', 'users', '2016-03-14 04:54:35', 0),
(414, 2, 'login dari: ::1', 'users', '2016-03-14 04:58:57', 0),
(415, 2, 'Created record with ID: 16 : ::1', 'pengajuan_izin', '2016-03-14 04:59:19', 0),
(416, 3, 'login dari: ::1', 'users', '2016-03-14 05:04:16', 0),
(417, 3, 'Created Module: Konfirmasi Izin : ::1', 'modulebuilder', '2016-03-14 05:09:15', 0),
(418, 3, 'Deleted Module: z : ::1', 'builder', '2016-03-14 05:15:34', 0),
(419, 3, 'Deleted Module: Z : ::1', 'builder', '2016-03-14 05:17:14', 0),
(420, 3, 'Deleted Module: Konfirmasi_Izin : ::1', 'builder', '2016-03-14 05:18:48', 0),
(421, 3, 'Deleted Module: Konfirmasi_izin : ::1', 'builder', '2016-03-14 05:18:56', 0),
(422, 3, 'Created Module: Konfirmasi Izin : ::1', 'modulebuilder', '2016-03-14 05:19:39', 0),
(423, 3, 'Created record with ID: 17 : ::1', 'pengajuan_izin', '2016-03-14 05:49:29', 0),
(424, 3, 'Created record with ID: 18 : ::1', 'pengajuan_izin', '2016-03-14 05:50:43', 0),
(425, 3, 'Created record with ID: 19 : ::1', 'pengajuan_izin', '2016-03-14 05:55:11', 0),
(426, 3, 'Created record with ID: 20 : ::1', 'pengajuan_izin', '2016-03-14 05:58:42', 0),
(427, 3, 'Created record with ID: 21 : ::1', 'pengajuan_izin', '2016-03-14 06:03:48', 0),
(428, 3, 'Updated record with ID: 21 : ::1', 'pengajuan_izin', '2016-03-14 06:20:03', 0),
(429, 3, 'login dari: ::1', 'users', '2016-03-14 08:47:53', 0),
(430, 2, 'login dari: ::1', 'users', '2016-03-14 10:07:54', 0),
(431, 2, 'Created record with ID: 22 : ::1', 'pengajuan_izin', '2016-03-14 10:08:36', 0),
(432, 3, 'login dari: ::1', 'users', '2016-03-14 10:12:48', 0),
(433, 2, 'login dari: ::1', 'users', '2016-03-14 11:32:42', 0),
(434, 2, 'login dari: ::1', 'users', '2016-03-15 10:23:08', 0),
(435, 3, 'login dari: ::1', 'users', '2016-03-15 10:33:30', 0),
(436, 2, 'login dari: ::1', 'users', '2016-03-15 10:35:25', 0),
(437, 3, 'login dari: ::1', 'users', '2016-03-15 11:17:05', 0),
(438, 3, 'Created Module: Laporan : ::1', 'modulebuilder', '2016-03-15 11:22:04', 0),
(439, 3, 'login dari: ::1', 'users', '2016-03-16 04:28:43', 0),
(440, 2, 'login dari: ::1', 'users', '2016-03-16 04:32:07', 0),
(441, 2, 'Created record with ID: 23 : ::1', 'pengajuan_izin', '2016-03-16 04:49:35', 0),
(442, 3, 'login dari: ::1', 'users', '2016-03-16 04:50:21', 0),
(443, 3, 'membuat User baru: fauzi', 'users', '2016-03-16 04:50:58', 0),
(444, 4, 'login dari: ::1', 'users', '2016-03-16 04:51:11', 0),
(445, 4, 'Created record with ID: 24 : ::1', 'pengajuan_izin', '2016-03-16 04:52:12', 0),
(446, 2, 'login dari: ::1', 'users', '2016-03-17 04:20:00', 0),
(447, 4, 'login dari: ::1', 'users', '2016-03-17 04:50:31', 0),
(448, 2, 'login dari: ::1', 'users', '2016-03-17 04:52:31', 0),
(449, 3, 'login dari: ::1', 'users', '2016-03-17 04:54:44', 0),
(450, 3, 'Created record with ID: 13 : ::1', 'input_izin', '2016-03-17 05:02:46', 0),
(451, 3, 'Deleted Module: Laporan : ::1', 'builder', '2016-03-17 05:26:03', 0),
(452, 3, 'Deleted Module: Laporan : ::1', 'builder', '2016-03-17 05:26:17', 0),
(453, 3, 'Created Module: Laporan : ::1', 'modulebuilder', '2016-03-17 05:27:42', 0),
(454, 3, 'login dari: ::1', 'users', '2016-03-20 14:14:01', 0),
(455, 3, 'login dari: ::1', 'users', '2016-03-22 15:43:43', 0),
(456, 3, 'login dari: ::1', 'users', '2016-03-23 10:21:54', 0),
(457, 4, 'login dari: ::1', 'users', '2016-03-23 10:23:37', 0),
(458, 4, 'Created record with ID: 25 : ::1', 'pengajuan_izin', '2016-03-23 10:24:55', 0),
(459, 2, 'login dari: ::1', 'users', '2016-03-23 10:25:55', 0),
(460, 3, 'login dari: ::1', 'users', '2016-03-23 10:27:31', 0),
(461, 3, 'login dari: ::1', 'users', '2016-03-23 10:29:56', 0),
(462, 4, 'login dari: ::1', 'users', '2016-03-23 10:47:07', 0),
(463, 3, 'login dari: ::1', 'users', '2016-03-23 10:50:20', 0),
(464, 3, 'login dari: ::1', 'users', '2016-03-23 13:49:30', 0),
(465, 3, 'Created record with ID: 14 : ::1', 'input_izin', '2016-03-23 17:37:46', 0),
(466, 3, 'Created record with ID: 16 : ::1', 'input_izin', '2016-03-23 17:40:27', 0),
(467, 3, 'Created record with ID: 17 : ::1', 'input_izin', '2016-03-23 17:40:57', 0),
(468, 4, 'login dari: ::1', 'users', '2016-03-23 17:41:30', 0),
(469, 3, 'login dari: ::1', 'users', '2016-03-23 17:43:00', 0),
(470, 3, 'Created record with ID: 18 : ::1', 'input_izin', '2016-03-23 17:43:26', 0),
(471, 3, 'login dari: ::1', 'users', '2016-03-23 18:05:07', 0),
(472, 3, 'Created record with ID: 17 : ::1', 'divisi', '2016-03-23 18:25:59', 0),
(473, 3, 'Created record with ID: 19 : ::1', 'input_izin', '2016-03-23 18:27:42', 0),
(474, 3, 'Created record with ID: 20 : ::1', 'input_izin', '2016-03-23 18:30:31', 0),
(475, 3, 'Created record with ID: 21 : ::1', 'input_izin', '2016-03-23 18:30:55', 0),
(476, 4, 'login dari: ::1', 'users', '2016-03-23 18:33:04', 0),
(477, 3, 'login dari: ::1', 'users', '2016-03-23 18:33:36', 0),
(478, 3, 'Created record with ID: 22 : ::1', 'input_izin', '2016-03-23 18:37:08', 0),
(479, 3, 'login dari: ::1', 'users', '2016-03-24 03:42:23', 0),
(480, 3, 'Created record with ID: 18 : ::1', 'divisi', '2016-03-24 03:55:50', 0),
(481, 3, 'login dari: ::1', 'users', '2016-03-24 08:42:09', 0),
(482, 3, 'Created record with ID: 23 : ::1', 'input_izin', '2016-03-24 08:42:32', 0),
(483, 3, 'Created record with ID: 26 : ::1', 'pengajuan_izin', '2016-03-24 08:46:30', 0),
(484, 3, 'Created record with ID: 27 : ::1', 'pengajuan_izin', '2016-03-24 08:46:58', 0),
(485, 3, 'Updated record with ID: 26 : ::1', 'pengajuan_izin', '2016-03-24 08:50:00', 0),
(486, 3, 'login dari: ::1', 'users', '2016-03-24 11:14:04', 0),
(487, 3, 'login dari: ::1', 'users', '2016-03-27 05:02:43', 0),
(488, 3, 'Created record with ID: 28 : ::1', 'pengajuan_izin', '2016-03-27 06:39:26', 0),
(489, 3, 'Created Module: coba : ::1', 'modulebuilder', '2016-03-27 06:51:11', 0),
(490, 3, 'login dari: ::1', 'users', '2016-03-27 13:55:57', 0),
(491, 3, 'Created Module: Konfirmasi : ::1', 'modulebuilder', '2016-03-27 13:58:28', 0),
(492, 3, 'Deleted Module: Konfirmasi : ::1', 'builder', '2016-03-27 14:05:33', 0),
(493, 3, 'Deleted Module: Konfirmasi : ::1', 'builder', '2016-03-27 14:05:40', 0),
(494, 3, 'login dari: ::1', 'users', '2016-03-27 14:54:35', 0),
(495, 3, 'login dari: ::1', 'users', '2016-03-27 14:57:35', 0),
(496, 3, 'Migrate Type: pengajuan_izin_ to Version: 2 from: ::1', 'migrations', '2016-03-27 15:04:04', 0),
(497, 3, 'Migrate module: pengajuan_izin Version: 2 from: ::1', 'migrations', '2016-03-27 15:04:04', 0),
(498, 3, 'Migrate Type: pengajuan_izin_ to Version: 1 from: ::1', 'migrations', '2016-03-27 15:04:47', 0),
(499, 3, 'Migrate module: pengajuan_izin Version: 1 from: ::1', 'migrations', '2016-03-27 15:04:47', 0),
(500, 3, 'Created record with ID: 1 : ::1', 'pengajuan_izin', '2016-03-27 15:17:51', 0),
(501, 3, 'Created Module: Konfirmasi : ::1', 'modulebuilder', '2016-03-27 15:53:35', 0),
(502, 3, 'Created record with ID: 2 : ::1', 'pengajuan_izin', '2016-03-27 15:54:01', 0),
(503, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-27 16:01:07', 0),
(504, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-27 16:01:23', 0),
(505, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-27 16:02:57', 0),
(506, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-27 16:03:03', 0),
(507, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-27 16:04:08', 0),
(508, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-27 16:06:15', 0),
(509, 3, 'login dari: ::1', 'users', '2016-03-27 19:43:32', 0),
(510, 3, 'login dari: ::1', 'users', '2016-03-27 19:43:32', 0),
(511, 3, 'login dari: ::1', 'users', '2016-03-28 03:24:37', 0),
(512, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:38:19', 0),
(513, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:38:28', 0),
(514, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:39:06', 0),
(515, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:39:50', 0),
(516, 3, 'login dari: ::1', 'users', '2016-03-28 03:40:52', 0),
(517, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:42:26', 0),
(518, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:46:30', 0),
(519, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:47:53', 0),
(520, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:48:18', 0),
(521, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:48:27', 0),
(522, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:48:48', 0),
(523, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:54:23', 0),
(524, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:54:40', 0),
(525, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:55:24', 0),
(526, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-03-28 03:58:52', 0),
(527, 3, 'Created record with ID: 3 : ::1', 'pengajuan_izin', '2016-03-28 04:11:43', 0),
(528, 3, 'Deleted Module: coba : ::1', 'builder', '2016-03-28 05:00:17', 0),
(529, 3, 'Created record with ID: 3 : ::1', 'jenis_barang', '2016-03-28 07:51:20', 0),
(530, 3, 'login dari: ::1', 'users', '2016-03-28 14:18:07', 0),
(531, 3, 'Created record with ID: 24 : ::1', 'input_izin', '2016-03-28 14:55:21', 0),
(532, 3, 'login dari: ::1', 'users', '2016-03-29 12:26:45', 0),
(533, 3, 'Updated record with ID: 3 : ::1', 'konfirmasi', '2016-03-29 14:49:17', 0),
(534, 3, 'Created record with ID: 4 : ::1', 'pengajuan_izin', '2016-03-29 14:51:18', 0),
(535, 3, 'Updated record with ID: 4 : ::1', 'konfirmasi', '2016-03-29 15:45:54', 0),
(536, 3, 'Created record with ID: 5 : ::1', 'pengajuan_izin', '2016-03-29 16:49:13', 0),
(537, 3, 'Updated record with ID: 5 : ::1', 'pengajuan_izin', '2016-03-29 16:50:23', 0),
(538, 3, 'Updated record with ID: 5 : ::1', 'pengajuan_izin', '2016-03-29 16:50:36', 0),
(539, 3, 'Created record with ID: 6 : ::1', 'pengajuan_izin', '2016-03-29 16:54:47', 0),
(540, 3, 'Updated record with ID: 6 : ::1', 'pengajuan_izin', '2016-03-29 17:05:53', 0),
(541, 3, 'Updated record with ID: 6 : ::1', 'konfirmasi', '2016-03-29 18:07:25', 0),
(542, 3, 'Updated record with ID: 5 : ::1', 'pengajuan_izin', '2016-03-29 18:08:51', 0),
(543, 3, 'Created record with ID: 7 : ::1', 'pengajuan_izin', '2016-03-29 18:09:24', 0),
(544, 3, 'Created record with ID: 8 : ::1', 'pengajuan_izin', '2016-03-29 18:10:04', 0),
(545, 3, 'login dari: ::1', 'users', '2016-03-30 04:31:23', 0),
(546, 3, 'login dari: ::1', 'users', '2016-03-30 11:23:36', 0),
(547, 3, 'login dari: ::1', 'users', '2016-03-30 11:25:05', 0),
(548, 4, 'login dari: ::1', 'users', '2016-03-30 11:25:25', 0),
(549, 4, 'Created record with ID: 9 : ::1', 'pengajuan_izin', '2016-03-30 11:26:28', 0),
(550, 3, 'Updated record with ID: 9 : ::1', 'konfirmasi', '2016-03-30 11:27:23', 0),
(551, 3, 'Updated record with ID: 8 : ::1', 'konfirmasi', '2016-03-30 11:27:58', 0),
(552, 3, 'login dari: ::1', 'users', '2016-03-31 06:35:51', 0),
(553, 3, 'login dari: ::1', 'users', '2016-03-31 08:25:05', 0),
(554, 4, 'login dari: ::1', 'users', '2016-03-31 08:26:54', 0),
(555, 4, 'Created record with ID: 10 : ::1', 'pengajuan_izin', '2016-03-31 08:27:16', 0),
(556, 4, 'Created record with ID: 11 : ::1', 'pengajuan_izin', '2016-03-31 08:29:11', 0),
(557, 4, 'Created record with ID: 12 : ::1', 'pengajuan_izin', '2016-03-31 08:36:54', 0),
(558, 3, 'login dari: ::1', 'users', '2016-03-31 08:37:45', 0),
(559, 2, 'login dari: ::1', 'users', '2016-03-31 08:38:29', 0),
(560, 2, 'Created record with ID: 13 : ::1', 'pengajuan_izin', '2016-03-31 08:38:47', 0),
(561, 3, 'login dari: ::1', 'users', '2016-03-31 09:51:51', 0),
(562, 3, 'login dari: ::1', 'users', '2016-03-31 09:52:17', 0),
(563, 4, 'login dari: ::1', 'users', '2016-03-31 10:02:31', 0),
(564, 4, 'Created record with ID: 14 : ::1', 'pengajuan_izin', '2016-03-31 10:03:13', 0),
(565, 4, 'Created record with ID: 15 : ::1', 'pengajuan_izin', '2016-03-31 10:22:16', 0),
(566, 3, 'login dari: ::1', 'users', '2016-04-01 16:32:13', 0),
(567, 3, 'login dari: ::1', 'users', '2016-04-02 09:49:59', 0),
(568, 3, 'login dari: ::1', 'users', '2016-04-04 01:55:11', 0),
(569, 3, 'Created record with ID: 19 : ::1', 'divisi', '2016-04-04 04:15:16', 0),
(570, 3, 'Created record with ID: 20 : ::1', 'divisi', '2016-04-04 04:15:28', 0),
(571, 3, 'Created record with ID: 21 : ::1', 'divisi', '2016-04-04 04:15:44', 0),
(572, 3, 'Created record with ID: 22 : ::1', 'divisi', '2016-04-04 04:16:08', 0),
(573, 3, 'Created record with ID: 23 : ::1', 'divisi', '2016-04-04 04:18:04', 0),
(574, 3, 'Created record with ID: 24 : ::1', 'divisi', '2016-04-04 04:19:12', 0),
(575, 3, 'Created record with ID: 25 : ::1', 'divisi', '2016-04-04 04:19:45', 0),
(576, 3, 'Created record with ID: 26 : ::1', 'divisi', '2016-04-04 04:20:02', 0),
(577, 3, 'Created record with ID: 27 : ::1', 'divisi', '2016-04-04 04:20:43', 0),
(578, 3, 'Created record with ID: 28 : ::1', 'divisi', '2016-04-04 04:21:01', 0),
(579, 3, 'Created record with ID: 25 : ::1', 'input_izin', '2016-04-04 04:36:27', 0),
(580, 4, 'login dari: ::1', 'users', '2016-04-04 05:34:17', 0),
(581, 4, 'Created record with ID: 1 : ::1', 'pengajuan_izin', '2016-04-04 05:35:16', 0),
(582, 3, 'login dari: ::1', 'users', '2016-04-04 10:42:05', 0),
(583, 2, 'login dari: ::1', 'users', '2016-04-04 10:45:13', 0),
(584, 2, 'Created record with ID: 2 : ::1', 'pengajuan_izin', '2016-04-04 10:45:32', 0),
(585, 4, 'login dari: ::1', 'users', '2016-04-04 10:48:20', 0),
(586, 2, 'login dari: ::1', 'users', '2016-04-04 10:48:48', 0),
(587, 2, 'Created record with ID: 3 : ::1', 'pengajuan_izin', '2016-04-04 10:54:49', 0),
(588, 3, 'Updated record with ID: 3 : ::1', 'konfirmasi', '2016-04-04 10:58:45', 0),
(589, 3, 'Updated record with ID: 3 : ::1', 'konfirmasi', '2016-04-04 11:05:28', 0),
(590, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-04-04 11:05:40', 0),
(591, 3, 'Updated record with ID: 1 : ::1', 'konfirmasi', '2016-04-04 11:07:57', 0),
(592, 3, 'Updated record with ID: 3 : ::1', 'konfirmasi', '2016-04-04 11:08:45', 0),
(593, 3, 'Updated record with ID: 3 : ::1', 'konfirmasi', '2016-04-04 11:08:54', 0),
(594, 3, 'Updated record with ID: 1 : ::1', 'konfirmasi', '2016-04-04 11:25:37', 0),
(595, 3, 'Updated record with ID: 1 : ::1', 'konfirmasi', '2016-04-04 11:25:46', 0),
(596, 3, 'Updated record with ID: 1 : ::1', 'konfirmasi', '2016-04-04 11:27:27', 0),
(597, 3, 'Updated record with ID: 1 : ::1', 'konfirmasi', '2016-04-04 11:27:37', 0),
(598, 3, 'Updated record with ID: 1 : ::1', 'konfirmasi', '2016-04-04 11:42:15', 0),
(599, 3, 'Updated record with ID: 1 : ::1', 'konfirmasi', '2016-04-04 11:42:23', 0),
(600, 3, 'Updated record with ID: 2 : ::1', 'konfirmasi', '2016-04-04 11:42:49', 0),
(601, 3, 'Updated record with ID: 3 : ::1', 'konfirmasi', '2016-04-04 11:43:02', 0),
(602, 4, 'login dari: ::1', 'users', '2016-04-04 12:05:40', 0),
(603, 4, 'Created record with ID: 4 : ::1', 'pengajuan_izin', '2016-04-04 12:13:24', 0),
(604, 3, 'login dari: ::1', 'users', '2016-04-05 05:38:45', 0),
(605, 3, 'login dari: ::1', 'users', '2016-04-05 05:51:08', 0),
(606, 3, 'Created record with ID: 5 : ::1', 'pengajuan_izin', '2016-04-05 05:54:47', 0),
(607, 3, 'Updated record with ID: 4 : ::1', 'konfirmasi', '2016-04-05 06:05:26', 0),
(608, 3, 'Created record with ID: 6 : ::1', 'pengajuan_izin', '2016-04-05 06:07:17', 0),
(609, 3, 'Updated record with ID: 6 : ::1', 'konfirmasi', '2016-04-05 06:10:19', 0),
(610, 3, 'Updated record with ID: 5 : ::1', 'konfirmasi', '2016-04-05 06:12:14', 0),
(611, 3, 'Updated record with ID: 5 : ::1', 'konfirmasi', '2016-04-05 06:12:37', 0),
(612, 3, 'login dari: ::1', 'users', '2016-04-05 11:43:57', 0),
(613, 3, 'login dari: ::1', 'users', '2016-04-11 11:47:28', 0),
(614, 3, 'login dari: ::1', 'users', '2016-04-12 02:45:32', 0),
(615, 3, 'login dari: ::1', 'users', '2016-04-17 10:25:55', 0),
(616, 3, 'login dari: ::1', 'users', '2016-04-18 04:46:19', 0),
(617, 3, 'Created record with ID: 7 : ::1', 'pengajuan_izin', '2016-04-18 06:19:34', 0),
(618, 3, 'login dari: ::1', 'users', '2016-04-26 04:19:09', 0),
(619, 3, 'login dari: ::1', 'users', '2016-04-27 04:23:39', 0),
(620, 3, 'login dari: ::1', 'users', '2016-04-28 05:38:34', 0),
(621, 3, 'login dari: ::1', 'users', '2016-04-28 07:02:40', 0),
(622, 3, 'Created record with ID: 3 : ::1', 'jenis_izin', '2016-04-28 10:03:17', 0),
(623, 3, 'login dari: ::1', 'users', '2016-04-29 04:06:54', 0),
(624, 3, 'Deleted Module: Jenis_Barang : ::1', 'builder', '2016-04-29 04:08:07', 0),
(625, 1, 'login dari: ::1', 'users', '2016-04-29 08:20:47', 0),
(626, 1, 'login dari: ::1', 'users', '2016-04-29 08:21:28', 0),
(627, 1, 'login dari: ::1', 'users', '2016-04-29 08:22:38', 0),
(628, 1, 'login dari: ::1', 'users', '2016-04-29 08:23:59', 0),
(629, 1, 'login dari: ::1', 'users', '2016-04-29 08:25:35', 0),
(630, 1, 'login dari: ::1', 'users', '2016-04-29 08:26:26', 0),
(631, 1, 'login dari: ::1', 'users', '2016-04-29 08:41:53', 0),
(632, 1, 'login dari: ::1', 'users', '2016-04-29 09:47:01', 0),
(633, 1, 'login dari: ::1', 'users', '2016-04-29 09:48:20', 0),
(634, 2, 'login dari: ::1', 'users', '2016-04-29 09:52:09', 0),
(635, 1, 'login dari: ::1', 'users', '2016-04-29 09:54:31', 0),
(636, 1, 'Created record with ID: 29 : ::1', 'divisi', '2016-04-29 10:04:52', 0),
(637, 1, 'Created record with ID: 4 : ::1', 'jenis_izin', '2016-04-29 10:05:26', 0),
(638, 2, 'login dari: ::1', 'users', '2016-04-29 10:11:37', 0),
(639, 1, 'login dari: ::1', 'users', '2016-04-29 10:14:19', 0),
(640, 1, 'login dari: ::1', 'users', '2016-04-30 03:56:38', 0),
(641, 1, 'login dari: ::1', 'users', '2016-04-30 10:51:44', 0),
(642, 2, 'login dari: ::1', 'users', '2016-04-30 10:54:56', 0),
(643, 1, 'login dari: ::1', 'users', '2016-05-02 05:12:41', 0),
(644, 1, 'login dari: ::1', 'users', '2016-05-02 05:50:58', 0),
(645, 1, 'login dari: ::1', 'users', '2016-05-02 14:09:59', 0),
(646, 1, 'login dari: ::1', 'users', '2016-05-03 10:07:59', 0),
(647, 1, 'login dari: ::1', 'users', '2016-05-03 11:00:55', 0),
(648, 2, 'login dari: ::1', 'users', '2016-05-03 11:01:42', 0),
(649, 1, 'login dari: ::1', 'users', '2016-05-03 11:08:15', 0),
(650, 1, 'login dari: ::1', 'users', '2016-05-04 07:17:52', 0),
(651, 2, 'login dari: ::1', 'users', '2016-05-04 07:58:59', 0),
(652, 1, 'login dari: ::1', 'users', '2016-05-09 14:52:17', 0),
(653, 2, 'login dari: ::1', 'users', '2016-05-09 15:06:36', 0),
(654, 1, 'login dari: ::1', 'users', '2016-05-09 15:09:28', 0),
(655, 2, 'login dari: ::1', 'users', '2016-05-09 15:12:55', 0),
(656, 1, 'login dari: ::1', 'users', '2016-05-12 06:21:45', 0),
(657, 2, 'login dari: ::1', 'users', '2016-05-12 06:27:35', 0),
(658, 2, 'login dari: ::1', 'users', '2016-05-12 07:39:40', 0),
(659, 2, 'Created record with ID: 19 : ::1', 'pengajuan', '2016-05-12 07:42:41', 0),
(660, 1, 'login dari: ::1', 'users', '2016-05-12 07:53:27', 0),
(661, 1, 'login dari: ::1', 'users', '2016-05-16 13:57:16', 0),
(662, 2, 'login dari: ::1', 'users', '2016-05-16 14:09:29', 0),
(663, 1, 'login dari: ::1', 'users', '2016-05-25 09:24:17', 0),
(664, 1, 'login dari: ::1', 'users', '2016-05-31 15:55:04', 0),
(665, 1, 'login dari: ::1', 'users', '2016-06-13 05:42:30', 0),
(666, 2, 'login dari: ::1', 'users', '2016-06-13 05:50:24', 0),
(667, 1, 'login dari: ::1', 'users', '2016-06-20 23:17:46', 0),
(668, 2, 'login dari: ::1', 'users', '2016-06-20 23:21:22', 0),
(669, 1, 'login dari: ::1', 'users', '2016-06-20 23:23:35', 0),
(670, 2, 'login dari: ::1', 'users', '2016-06-20 23:24:56', 0),
(671, 2, 'Created record with ID: 20 : ::1', 'pengajuan', '2016-06-20 23:33:34', 0),
(672, 1, 'login dari: ::1', 'users', '2016-06-21 05:11:34', 0),
(673, 1, 'login dari: ::1', 'users', '2016-06-21 14:31:58', 0),
(674, 1, 'login dari: ::1', 'users', '2016-06-21 14:33:46', 0),
(675, 2, 'login dari: ::1', 'users', '2016-06-21 14:53:55', 0),
(676, 1, 'login dari: ::1', 'users', '2016-06-21 23:41:46', 0),
(677, 2, 'login dari: ::1', 'users', '2016-06-22 02:04:44', 0);
INSERT INTO `bf_activities` (`activity_id`, `user_id`, `activity`, `module`, `created_on`, `deleted`) VALUES
(678, 2, 'Created record with ID: 21 : ::1', 'pengajuan', '2016-06-22 02:05:30', 0),
(679, 1, 'login dari: ::1', 'users', '2016-06-22 02:05:54', 0),
(680, 2, 'login dari: ::1', 'users', '2016-06-22 02:06:40', 0),
(681, 1, 'login dari: ::1', 'users', '2016-06-22 02:21:14', 0),
(682, 2, 'login dari: ::1', 'users', '2016-06-22 02:25:29', 0),
(683, 2, 'Created record with ID: 22 : ::1', 'pengajuan', '2016-06-22 02:26:18', 0),
(684, 1, 'login dari: ::1', 'users', '2016-06-22 02:26:34', 0),
(685, 2, 'login dari: ::1', 'users', '2016-06-22 02:29:38', 0),
(686, 1, 'login dari: ::1', 'users', '2016-06-22 03:42:09', 0),
(687, 2, 'login dari: ::1', 'users', '2016-06-22 03:43:17', 0),
(688, 1, 'login dari: ::1', 'users', '2016-06-22 06:24:03', 0),
(689, 2, 'login dari: ::1', 'users', '2016-06-22 06:39:27', 0),
(690, 1, 'login dari: ::1', 'users', '2016-06-22 06:48:54', 0),
(691, 2, 'login dari: ::1', 'users', '2016-06-22 07:10:34', 0),
(692, 2, 'Created record with ID: 23 : ::1', 'pengajuan', '2016-06-22 07:11:34', 0),
(693, 1, 'login dari: ::1', 'users', '2016-06-22 07:11:48', 0),
(694, 2, 'login dari: ::1', 'users', '2016-06-22 07:12:31', 0),
(695, 1, 'login dari: ::1', 'users', '2016-06-22 07:12:50', 0),
(696, 2, 'login dari: ::1', 'users', '2016-06-22 07:13:19', 0),
(697, 2, 'login dari: ::1', 'users', '2016-06-22 07:15:17', 0),
(698, 1, 'login dari: ::1', 'users', '2016-06-22 07:37:22', 0),
(699, 2, 'login dari: ::1', 'users', '2016-06-22 07:39:40', 0),
(700, 2, 'Created record with ID: 24 : ::1', 'pengajuan', '2016-06-22 07:40:12', 0),
(701, 1, 'login dari: ::1', 'users', '2016-06-22 07:40:34', 0),
(702, 2, 'login dari: ::1', 'users', '2016-06-22 07:44:20', 0),
(703, 1, 'login dari: ::1', 'users', '2016-06-22 07:58:54', 0),
(704, 2, 'login dari: ::1', 'users', '2016-06-22 08:01:04', 0),
(705, 1, 'login dari: ::1', 'users', '2016-06-22 08:03:24', 0),
(706, 2, 'login dari: ::1', 'users', '2016-06-22 08:03:43', 0),
(707, 2, 'login dari: ::1', 'users', '2016-06-22 10:23:48', 0),
(708, 2, 'Created record with ID: 25 : ::1', 'pengajuan', '2016-06-22 10:29:45', 0),
(709, 1, 'login dari: ::1', 'users', '2016-06-22 10:30:06', 0),
(710, 2, 'login dari: ::1', 'users', '2016-06-22 10:32:32', 0),
(711, 1, 'login dari: ::1', 'users', '2016-06-22 10:33:59', 0),
(712, 1, 'Updated record with ID: 13 : ::1', 'pengajuan', '2016-06-22 12:08:13', 0),
(713, 1, 'login dari: ::1', 'users', '2016-06-22 14:47:23', 0),
(714, 2, 'login dari: ::1', 'users', '2016-06-22 14:48:34', 0),
(715, 1, 'login dari: ::1', 'users', '2016-06-22 14:55:24', 0),
(716, 2, 'login dari: ::1', 'users', '2016-06-22 15:00:25', 0),
(717, 2, 'login dari: ::1', 'users', '2016-06-22 15:08:01', 0),
(718, 2, 'Created record with ID: 26 : ::1', 'pengajuan', '2016-06-22 15:08:31', 0),
(719, 2, 'Created record with ID: 27 : ::1', 'pengajuan', '2016-06-22 15:09:15', 0),
(720, 2, 'Updated record with ID: 24 : ::1', 'pengajuan', '2016-06-22 15:09:45', 0),
(721, 1, 'login dari: ::1', 'users', '2016-06-22 15:10:27', 0),
(722, 1, 'Created record with ID: 28 : ::1', 'pengajuan', '2016-06-22 15:19:13', 0),
(723, 1, 'Created record with ID: 29 : ::1', 'pengajuan', '2016-06-22 16:52:55', 0),
(724, 1, 'Updated record with ID: 29 : ::1', 'pengajuan', '2016-06-22 17:00:57', 0),
(725, 1, 'Updated record with ID: 13 : ::1', 'pengajuan', '2016-06-22 17:02:06', 0),
(726, 1, 'login dari: ::1', 'users', '2016-06-23 06:17:27', 0),
(727, 1, 'Updated record with ID: 28 : ::1', 'pengajuan', '2016-06-23 06:40:55', 0),
(728, 1, 'Created record with ID: 30 : ::1', 'pengajuan', '2016-06-23 06:45:53', 0),
(729, 2, 'login dari: ::1', 'users', '2016-06-23 07:40:19', 0),
(730, 1, 'login dari: ::1', 'users', '2016-06-23 07:56:12', 0),
(731, 2, 'login dari: ::1', 'users', '2016-06-23 08:43:26', 0),
(732, 1, 'login dari: ::1', 'users', '2016-06-23 08:54:08', 0),
(733, 1, 'Deleted Module: Status : ::1', 'builder', '2016-06-23 08:56:26', 0),
(734, 1, 'login dari: ::1', 'users', '2016-06-23 09:06:31', 0),
(735, 1, 'Created record with ID: 1 : ::1', 'pengajuan', '2016-06-23 10:05:03', 0),
(736, 1, 'login dari: ::1', 'users', '2016-06-23 10:36:51', 0),
(737, 2, 'login dari: ::1', 'users', '2016-06-23 11:01:19', 0),
(738, 2, 'Created record with ID: 2 : ::1', 'pengajuan', '2016-06-23 11:02:01', 0),
(739, 1, 'login dari: ::1', 'users', '2016-06-23 11:02:35', 0),
(740, 1, 'Created record with ID: 3 : ::1', 'pengajuan', '2016-06-23 11:52:52', 0),
(741, 2, 'login dari: ::1', 'users', '2016-06-23 12:06:44', 0),
(742, 1, 'login dari: ::1', 'users', '2016-06-23 14:05:21', 0),
(743, 2, 'login dari: ::1', 'users', '2016-06-23 14:08:51', 0),
(744, 1, 'login dari: ::1', 'users', '2016-06-23 14:10:22', 0),
(745, 2, 'login dari: ::1', 'users', '2016-06-23 15:11:09', 0),
(746, 2, 'Created record with ID: 4 : ::1', 'pengajuan', '2016-06-23 15:12:11', 0),
(747, 2, 'Created record with ID: 5 : ::1', 'pengajuan', '2016-06-23 15:43:04', 0),
(748, 1, 'login dari: ::1', 'users', '2016-06-23 15:43:21', 0),
(749, 1, 'Updated record with ID: 1 : ::1', 'jenis_izin', '2016-06-23 17:11:08', 0),
(750, 1, 'Updated record with ID: 3 : ::1', 'jenis_izin', '2016-06-23 17:26:06', 0),
(751, 1, 'login dari: ::1', 'users', '2016-06-23 18:11:30', 0),
(752, 1, 'login dari: ::1', 'users', '2016-06-23 18:14:26', 0),
(753, 2, 'login dari: ::1', 'users', '2016-06-23 18:20:23', 0),
(754, 1, 'login dari: ::1', 'users', '2016-06-24 00:47:09', 0),
(755, 2, 'login dari: ::1', 'users', '2016-06-24 02:46:43', 0),
(756, 1, 'login dari: ::1', 'users', '2016-06-24 02:47:14', 0),
(757, 2, 'login dari: ::1', 'users', '2016-06-24 02:55:42', 0),
(758, 1, 'login dari: ::1', 'users', '2016-06-24 02:56:08', 0),
(759, 1, 'Created record with ID: 6 : ::1', 'pengajuan', '2016-06-24 03:17:32', 0),
(760, 2, 'login dari: ::1', 'users', '2016-06-24 03:17:49', 0),
(761, 2, 'Created record with ID: 7 : ::1', 'pengajuan', '2016-06-24 03:23:10', 0),
(762, 1, 'login dari: ::1', 'users', '2016-06-24 03:23:27', 0),
(763, 2, 'login dari: ::1', 'users', '2016-06-24 03:26:24', 0),
(764, 1, 'login dari: ::1', 'users', '2016-06-24 03:39:05', 0),
(765, 2, 'login dari: ::1', 'users', '2016-06-24 03:41:47', 0),
(766, 1, 'login dari: ::1', 'users', '2016-06-24 03:42:58', 0),
(767, 1, 'login dari: ::1', 'users', '2016-06-24 04:15:58', 0),
(768, 2, 'login dari: ::1', 'users', '2016-06-24 04:29:47', 0),
(769, 2, 'Created record with ID: 8 : ::1', 'pengajuan', '2016-06-24 04:31:10', 0),
(770, 2, 'Created record with ID: 9 : ::1', 'pengajuan', '2016-06-24 04:32:12', 0),
(771, 1, 'login dari: ::1', 'users', '2016-06-24 04:33:01', 0),
(772, 1, 'membuat User baru: Wawan', 'users', '2016-06-24 04:34:57', 0),
(773, 3, 'login dari: ::1', 'users', '2016-06-24 04:36:48', 0),
(774, 3, 'Created record with ID: 10 : ::1', 'pengajuan', '2016-06-24 04:38:19', 0),
(775, 1, 'login dari: ::1', 'users', '2016-06-24 04:38:34', 0),
(776, 3, 'login dari: ::1', 'users', '2016-06-24 04:41:09', 0),
(777, 1, 'login dari: ::1', 'users', '2016-06-24 04:42:35', 0),
(778, 3, 'login dari: ::1', 'users', '2016-06-24 04:49:54', 0),
(779, 3, 'Created record with ID: 11 : ::1', 'pengajuan', '2016-06-24 04:50:32', 0),
(780, 1, 'login dari: ::1', 'users', '2016-06-24 04:50:47', 0),
(781, 1, 'login dari: ::1', 'users', '2016-06-24 04:52:41', 0),
(782, 3, 'login dari: ::1', 'users', '2016-06-24 05:00:38', 0),
(783, 3, 'login dari: ::1', 'users', '2016-06-24 05:01:20', 0),
(784, 3, 'Created record with ID: 12 : ::1', 'pengajuan', '2016-06-24 05:02:07', 0),
(785, 1, 'login dari: ::1', 'users', '2016-06-24 05:02:24', 0),
(786, 3, 'login dari: ::1', 'users', '2016-06-24 05:03:53', 0),
(787, 1, 'login dari: ::1', 'users', '2016-06-24 05:04:39', 0),
(788, 1, 'Created record with ID: 13 : ::1', 'pengajuan', '2016-06-24 05:51:58', 0),
(789, 1, 'login dari: ::1', 'users', '2016-06-24 07:42:13', 0),
(790, 3, 'login dari: ::1', 'users', '2016-06-24 07:53:21', 0),
(791, 3, 'Created record with ID: 13 : ::1', 'pengajuan', '2016-06-24 07:55:20', 0),
(792, 1, 'login dari: ::1', 'users', '2016-06-24 07:55:40', 0),
(793, 2, 'login dari: ::1', 'users', '2016-06-24 09:35:24', 0),
(794, 2, 'Created record with ID: 14 : ::1', 'pengajuan', '2016-06-24 09:37:49', 0),
(795, 1, 'login dari: ::1', 'users', '2016-06-24 09:38:20', 0),
(796, 2, 'login dari: ::1', 'users', '2016-06-24 09:40:03', 0),
(797, 3, 'login dari: ::1', 'users', '2016-06-24 10:12:10', 0),
(798, 3, 'login dari: ::1', 'users', '2016-06-24 16:04:39', 0),
(799, 1, 'login dari: ::1', 'users', '2016-06-24 23:30:32', 0),
(800, 3, 'login dari: ::1', 'users', '2016-06-26 02:51:24', 0),
(801, 1, 'login dari: ::1', 'users', '2016-06-26 02:51:51', 0),
(802, 3, 'login dari: ::1', 'users', '2016-06-26 02:52:17', 0),
(803, 1, 'login dari: ::1', 'users', '2016-06-26 03:23:46', 0),
(804, 1, 'login dari: ::1', 'users', '2016-06-26 03:24:35', 0),
(805, 1, 'login dari: ::1', 'users', '2016-06-26 03:32:22', 0),
(806, 3, 'login dari: ::1', 'users', '2016-06-26 03:32:57', 0),
(807, 1, 'login dari: ::1', 'users', '2016-06-26 04:01:11', 0),
(808, 3, 'login dari: ::1', 'users', '2016-06-26 04:02:46', 0),
(809, 1, 'login dari: ::1', 'users', '2016-06-26 06:21:30', 0),
(810, 3, 'login dari: ::1', 'users', '2016-06-26 06:37:33', 0),
(811, 1, 'login dari: ::1', 'users', '2016-06-26 13:54:18', 0),
(812, 3, 'login dari: ::1', 'users', '2016-06-26 13:58:31', 0),
(813, 3, 'Created record with ID: 15 : ::1', 'pengajuan', '2016-06-26 17:12:17', 0),
(814, 1, 'login dari: ::1', 'users', '2016-06-26 17:12:39', 0),
(815, 3, 'login dari: ::1', 'users', '2016-06-26 18:08:12', 0),
(816, 3, 'login dari: ::1', 'users', '2016-06-27 03:52:58', 0),
(817, 2, 'login dari: ::1', 'users', '2016-06-27 05:57:42', 0),
(818, 3, 'login dari: ::1', 'users', '2016-06-27 06:08:51', 0),
(819, 2, 'login dari: ::1', 'users', '2016-06-27 06:28:00', 0),
(820, 3, 'login dari: ::1', 'users', '2016-06-27 06:42:31', 0),
(821, 3, 'login dari: ::1', 'users', '2016-06-27 08:16:25', 0),
(822, 1, 'login dari: ::1', 'users', '2016-06-28 04:24:03', 0),
(823, 3, 'login dari: ::1', 'users', '2016-06-28 04:25:01', 0),
(824, 2, 'login dari: ::1', 'users', '2016-06-28 04:35:04', 0),
(825, 1, 'login dari: ::1', 'users', '2016-06-28 05:21:55', 0),
(826, 2, 'login dari: ::1', 'users', '2016-06-28 05:28:57', 0),
(827, 1, 'login dari: ::1', 'users', '2016-06-28 05:33:51', 0),
(828, 2, 'login dari: ::1', 'users', '2016-06-28 05:34:39', 0),
(829, 1, 'login dari: ::1', 'users', '2016-06-28 05:37:35', 0),
(830, 2, 'login dari: ::1', 'users', '2016-06-28 06:23:35', 0),
(831, 1, 'login dari: ::1', 'users', '2016-06-28 07:40:58', 0),
(832, 1, 'login dari: ::1', 'users', '2016-07-07 11:10:53', 0),
(833, 3, 'login dari: ::1', 'users', '2016-07-07 11:13:51', 0),
(834, 3, 'Created record with ID: 16 : ::1', 'pengajuan', '2016-07-07 11:15:03', 0),
(835, 1, 'login dari: ::1', 'users', '2016-07-07 11:15:33', 0),
(836, 3, 'login dari: ::1', 'users', '2016-07-07 11:16:07', 0),
(837, 3, 'Created record with ID: 17 : ::1', 'pengajuan', '2016-07-07 11:17:21', 0),
(838, 1, 'login dari: ::1', 'users', '2016-07-07 11:18:07', 0),
(839, 3, 'login dari: ::1', 'users', '2016-07-07 11:18:42', 0),
(840, 1, 'login dari: ::1', 'users', '2016-07-07 11:19:32', 0),
(841, 1, 'login dari: ::1', 'users', '2016-07-07 11:28:35', 0),
(842, 3, 'login dari: ::1', 'users', '2016-07-07 11:30:39', 0),
(843, 3, 'Created record with ID: 18 : ::1', 'pengajuan', '2016-07-07 11:31:49', 0),
(844, 1, 'login dari: ::1', 'users', '2016-07-07 11:32:15', 0),
(845, 1, 'login dari: ::1', 'users', '2016-07-11 15:23:58', 0),
(846, 1, 'login dari: ::1', 'users', '2016-07-12 05:26:20', 0),
(847, 1, 'login dari: ::1', 'users', '2016-07-13 06:35:05', 0),
(848, 3, 'login dari: ::1', 'users', '2016-07-13 06:38:46', 0),
(849, 1, 'login dari: ::1', 'users', '2016-07-13 06:39:12', 0),
(850, 3, 'login dari: ::1', 'users', '2016-07-13 06:40:19', 0),
(851, 1, 'login dari: ::1', 'users', '2016-07-13 06:41:25', 0),
(852, 3, 'login dari: ::1', 'users', '2016-07-13 06:42:39', 0),
(853, 1, 'login dari: ::1', 'users', '2016-07-13 06:44:35', 0),
(854, 1, 'login dari: ::1', 'users', '2016-07-13 07:01:42', 0),
(855, 1, 'Created record with ID: 19 : ::1', 'pengajuan', '2016-07-13 07:03:48', 0),
(856, 1, 'login dari: 127.0.0.1', 'users', '2016-07-14 08:51:52', 0),
(857, 1, 'login dari: ::1', 'users', '2016-07-17 08:08:08', 0),
(858, 1, 'login dari: ::1', 'users', '2016-07-17 08:13:17', 0),
(859, 3, 'login dari: ::1', 'users', '2016-07-17 09:15:14', 0),
(860, 2, 'login dari: ::1', 'users', '2016-07-17 09:16:07', 0),
(861, 1, 'login dari: ::1', 'users', '2016-07-17 09:19:15', 0),
(862, 1, 'membuat User baru: user', 'users', '2016-07-17 09:20:41', 0),
(863, 1, 'login dari: ::1', 'users', '2016-07-17 09:43:50', 0),
(864, 1, 'login dari: ::1', 'users', '2016-07-17 15:39:18', 0),
(865, 1, 'login dari: ::1', 'users', '2016-07-18 10:45:06', 0),
(866, 1, 'login dari: ::1', 'users', '2016-07-18 10:53:37', 0),
(867, 1, 'Updated record with ID: 8 : ::1', 'konfirmasi_izin', '2016-07-18 11:22:25', 0),
(868, 1, 'Updated record with ID: 9 : ::1', 'konfirmasi_izin', '2016-07-18 11:23:25', 0),
(869, 1, 'Updated record with ID: 10 : ::1', 'konfirmasi_izin', '2016-07-18 11:25:41', 0),
(870, 1, 'Updated record with ID: 11 : ::1', 'konfirmasi_izin', '2016-07-18 11:27:37', 0),
(871, 1, 'Updated record with ID: 11 : ::1', 'konfirmasi_izin', '2016-07-18 11:29:23', 0),
(872, 1, 'Updated record with ID: 13 : ::1', 'konfirmasi_izin', '2016-07-18 11:29:37', 0),
(873, 1, 'Updated record with ID: 19 : ::1', 'konfirmasi_izin', '2016-07-18 11:30:04', 0),
(874, 1, 'Updated record with ID: 18 : ::1', 'konfirmasi_izin', '2016-07-18 11:35:00', 0),
(875, 1, 'Updated record with ID: 12 : ::1', 'konfirmasi_izin', '2016-07-18 11:35:17', 0),
(876, 1, 'Updated record with ID: 14 : ::1', 'konfirmasi_izin', '2016-07-18 11:36:16', 0),
(877, 1, 'Created record with ID: 20 : ::1', 'pengajuan', '2016-07-18 11:38:32', 0),
(878, 1, 'Updated record with ID: 20 : ::1', 'konfirmasi_izin', '2016-07-18 11:38:54', 0),
(879, 1, 'Updated record with ID: 15 : ::1', 'konfirmasi_izin', '2016-07-18 11:40:08', 0),
(880, 1, 'Updated record with ID: 15 : ::1', 'konfirmasi_izin', '2016-07-18 11:40:21', 0),
(881, 1, 'Updated record with ID: 10 : ::1', 'konfirmasi_izin', '2016-07-18 11:42:33', 0),
(882, 1, 'Updated record with ID: 18 : ::1', 'konfirmasi_izin', '2016-07-18 11:43:01', 0),
(883, 3, 'login dari: ::1', 'users', '2016-07-18 11:43:32', 0),
(884, 3, 'Created record with ID: 21 : ::1', 'pengajuan', '2016-07-18 11:44:22', 0),
(885, 3, 'Created record with ID: 22 : ::1', 'pengajuan', '2016-07-18 11:48:36', 0),
(886, 1, 'login dari: ::1', 'users', '2016-07-18 11:50:53', 0),
(887, 1, 'Updated record with ID: 22 : ::1', 'konfirmasi_izin', '2016-07-18 11:53:03', 0),
(888, 2, 'login dari: ::1', 'users', '2016-07-18 11:55:44', 0),
(889, 2, 'Created record with ID: 23 : ::1', 'pengajuan', '2016-07-18 11:59:59', 0),
(890, 1, 'login dari: ::1', 'users', '2016-07-18 12:00:16', 0),
(891, 1, 'Updated record with ID: 23 : ::1', 'konfirmasi_izin', '2016-07-18 12:00:40', 0),
(892, 3, 'login dari: ::1', 'users', '2016-07-18 12:01:05', 0),
(893, 2, 'login dari: ::1', 'users', '2016-07-18 12:01:41', 0),
(894, 1, 'login dari: ::1', 'users', '2016-07-18 12:02:05', 0),
(895, 3, 'login dari: ::1', 'users', '2016-07-18 12:06:46', 0),
(896, 3, 'Created record with ID: 24 : ::1', 'pengajuan', '2016-07-18 12:07:12', 0),
(897, 1, 'login dari: ::1', 'users', '2016-07-18 12:07:35', 0),
(898, 1, 'Updated record with ID: 24 : ::1', 'konfirmasi_izin', '2016-07-18 12:07:55', 0),
(899, 1, 'Updated record with ID: 24 : ::1', 'konfirmasi_izin', '2016-07-18 12:08:06', 0),
(900, 1, 'Updated record with ID: 24 : ::1', 'konfirmasi_izin', '2016-07-18 12:11:46', 0),
(901, 1, 'Created record with ID: 25 : ::1', 'pengajuan', '2016-07-18 12:13:14', 0),
(902, 1, 'Updated record with ID: 25 : ::1', 'konfirmasi_izin', '2016-07-18 12:13:34', 0),
(903, 1, 'Updated record with ID: 25 : ::1', 'konfirmasi_izin', '2016-07-18 12:15:49', 0),
(904, 1, 'Updated record with ID: 25 : ::1', 'konfirmasi_izin', '2016-07-18 12:17:21', 0),
(905, 1, 'login dari: ::1', 'users', '2016-07-18 12:35:25', 0),
(906, 1, 'Created record with ID: 26 : ::1', 'pengajuan', '2016-07-18 12:35:58', 0),
(907, 1, 'Updated record with ID: 26 : ::1', 'konfirmasi_izin', '2016-07-18 12:38:33', 0),
(908, 1, 'Created record with ID: 27 : ::1', 'pengajuan', '2016-07-18 12:41:16', 0),
(909, 1, 'Updated record with ID: 27 : ::1', 'konfirmasi_izin', '2016-07-18 12:41:38', 0),
(910, 1, 'Updated record with ID: 26 : ::1', 'konfirmasi_izin', '2016-07-18 12:43:56', 0),
(911, 1, 'Created record with ID: 28 : ::1', 'pengajuan', '2016-07-18 12:45:10', 0),
(912, 1, 'Updated record with ID: 28 : ::1', 'konfirmasi_izin', '2016-07-18 12:50:20', 0),
(913, 3, 'login dari: ::1', 'users', '2016-07-18 13:11:36', 0),
(914, 3, 'Created record with ID: 29 : ::1', 'pengajuan', '2016-07-18 13:12:57', 0),
(915, 1, 'login dari: ::1', 'users', '2016-07-18 13:13:21', 0),
(916, 1, 'Updated record with ID: 29 : ::1', 'konfirmasi_izin', '2016-07-18 13:13:57', 0),
(917, 3, 'login dari: ::1', 'users', '2016-07-18 15:04:46', 0),
(918, 3, 'Created record with ID: 30 : ::1', 'pengajuan', '2016-07-18 15:05:30', 0),
(919, 1, 'login dari: ::1', 'users', '2016-07-18 16:36:15', 0),
(920, 1, 'Updated record with ID: 30 : ::1', 'konfirmasi_izin', '2016-07-18 16:36:38', 0),
(921, 1, 'Updated record with ID: 30 : ::1', 'konfirmasi_izin', '2016-07-18 16:44:11', 0),
(922, 3, 'login dari: ::1', 'users', '2016-07-18 16:45:28', 0),
(923, 3, 'Created record with ID: 31 : ::1', 'pengajuan', '2016-07-18 16:46:04', 0),
(924, 2, 'login dari: ::1', 'users', '2016-07-18 16:46:43', 0),
(925, 2, 'Created record with ID: 32 : ::1', 'pengajuan', '2016-07-18 16:47:39', 0),
(926, 1, 'login dari: ::1', 'users', '2016-07-18 16:48:03', 0),
(927, 1, 'Updated record with ID: 31 : ::1', 'konfirmasi_izin', '2016-07-18 16:48:24', 0),
(928, 1, 'Updated record with ID: 32 : ::1', 'konfirmasi_izin', '2016-07-18 16:53:34', 0),
(929, 1, 'login dari: ::1', 'users', '2016-07-18 16:58:57', 0),
(930, 1, 'login dari: ::1', 'users', '2016-07-18 17:05:54', 0),
(931, 1, 'Updated record with ID: 31 : ::1', 'konfirmasi_izin', '2016-07-18 17:06:51', 0),
(932, 1, 'login dari: ::1', 'users', '2016-07-18 17:08:40', 0),
(933, 1, 'Created record with ID: 33 : ::1', 'pengajuan', '2016-07-18 17:23:07', 0),
(934, 1, 'Updated record with ID: 33 : ::1', 'konfirmasi_izin', '2016-07-18 17:23:28', 0),
(935, 1, 'login dari: ::1', 'users', '2016-07-18 22:01:21', 0),
(936, 1, 'Created record with ID: 34 : ::1', 'pengajuan', '2016-07-18 22:19:54', 0),
(937, 1, 'Updated record with ID: 34 : ::1', 'konfirmasi_izin', '2016-07-18 22:20:14', 0),
(938, 1, 'Updated record with ID: 34 : ::1', 'konfirmasi_izin', '2016-07-18 22:21:47', 0),
(939, 1, 'Created record with ID: 35 : ::1', 'pengajuan', '2016-07-18 22:22:27', 0),
(940, 1, 'Updated record with ID: 35 : ::1', 'konfirmasi_izin', '2016-07-18 22:22:41', 0),
(941, 1, 'Created record with ID: 36 : ::1', 'pengajuan', '2016-07-18 22:35:23', 0),
(942, 1, 'Updated record with ID: 36 : ::1', 'konfirmasi_izin', '2016-07-18 22:35:41', 0),
(943, 1, 'Created record with ID: 37 : ::1', 'pengajuan', '2016-07-18 22:43:12', 0),
(944, 1, 'Updated record with ID: 37 : ::1', 'konfirmasi_izin', '2016-07-18 23:26:21', 0),
(945, 3, 'login dari: ::1', 'users', '2016-07-18 23:40:04', 0),
(946, 3, 'Created record with ID: 38 : ::1', 'pengajuan', '2016-07-18 23:40:41', 0),
(947, 1, 'login dari: ::1', 'users', '2016-07-18 23:42:23', 0),
(948, 1, 'Updated record with ID: 38 : ::1', 'konfirmasi_izin', '2016-07-18 23:44:22', 0),
(949, 1, 'Updated record with ID: 38 : ::1', 'konfirmasi_izin', '2016-07-18 23:51:27', 0),
(950, 1, 'Created record with ID: 39 : ::1', 'pengajuan', '2016-07-19 00:11:53', 0),
(951, 1, 'Updated record with ID: 39 : ::1', 'konfirmasi_izin', '2016-07-19 00:12:11', 0),
(952, 1, 'Created record with ID: 40 : ::1', 'pengajuan', '2016-07-19 00:15:31', 0),
(953, 1, 'Updated record with ID: 40 : ::1', 'konfirmasi_izin', '2016-07-19 00:21:02', 0),
(954, 2, 'login dari: ::1', 'users', '2016-07-19 00:33:24', 0),
(955, 2, 'Created record with ID: 41 : ::1', 'pengajuan', '2016-07-19 00:33:56', 0),
(956, 1, 'login dari: ::1', 'users', '2016-07-19 00:34:20', 0),
(957, 1, 'Updated record with ID: 41 : ::1', 'konfirmasi_izin', '2016-07-19 00:34:42', 0),
(958, 3, 'login dari: ::1', 'users', '2016-07-19 01:43:39', 0),
(959, 1, 'login dari: ::1', 'users', '2016-07-19 01:44:42', 0),
(960, 3, 'login dari: ::1', 'users', '2016-07-19 01:46:51', 0),
(961, 1, 'login dari: ::1', 'users', '2016-07-19 01:47:22', 0),
(962, 3, 'login dari: ::1', 'users', '2016-07-19 01:51:30', 0),
(963, 1, 'login dari: ::1', 'users', '2016-07-19 04:14:12', 0),
(964, 1, 'Updated record with ID: 40 : ::1', 'konfirmasi_izin', '2016-07-19 04:18:16', 0),
(965, 1, 'Created record with ID: 42 : ::1', 'pengajuan', '2016-07-19 04:33:27', 0),
(966, 1, 'Updated record with ID: 42 : ::1', 'konfirmasi_izin', '2016-07-19 04:33:54', 0),
(967, 1, 'Created record with ID: 43 : ::1', 'pengajuan', '2016-07-19 05:25:53', 0),
(968, 1, 'Created record with ID: 44 : ::1', 'pengajuan', '2016-07-19 06:41:53', 0),
(969, 1, 'Updated record with ID: 44 : ::1', 'konfirmasi_izin', '2016-07-19 06:50:37', 0),
(970, 1, 'Updated record with ID: 41 : ::1', 'konfirmasi_izin', '2016-07-19 06:55:21', 0),
(971, 3, 'login dari: ::1', 'users', '2016-07-19 06:56:20', 0),
(972, 3, 'Created record with ID: 45 : ::1', 'pengajuan', '2016-07-19 07:08:14', 0),
(973, 3, 'Created record with ID: 46 : ::1', 'pengajuan', '2016-07-19 07:10:05', 0),
(974, 1, 'login dari: ::1', 'users', '2016-07-19 07:10:36', 0),
(975, 1, 'Updated record with ID: 45 : ::1', 'konfirmasi_izin', '2016-07-19 07:11:01', 0),
(976, 1, 'Updated record with ID: 46 : ::1', 'konfirmasi_izin', '2016-07-19 07:11:09', 0),
(977, 2, 'login dari: ::1', 'users', '2016-07-19 07:11:39', 0),
(978, 2, 'Created record with ID: 47 : ::1', 'pengajuan', '2016-07-19 07:13:03', 0),
(979, 3, 'login dari: ::1', 'users', '2016-07-19 07:13:24', 0),
(980, 3, 'Created record with ID: 48 : ::1', 'pengajuan', '2016-07-19 07:14:29', 0),
(981, 1, 'login dari: ::1', 'users', '2016-07-19 07:14:54', 0),
(982, 1, 'Updated record with ID: 48 : ::1', 'konfirmasi_izin', '2016-07-19 07:15:23', 0),
(983, 2, 'login dari: ::1', 'users', '2016-07-19 07:20:55', 0),
(984, 1, 'login dari: ::1', 'users', '2016-07-19 07:27:24', 0),
(985, 1, 'login dari: ::1', 'users', '2016-07-19 07:44:23', 0),
(986, 3, 'login dari: ::1', 'users', '2016-07-19 08:45:57', 0),
(987, 1, 'login dari: ::1', 'users', '2016-07-19 08:51:17', 0),
(988, 3, 'login dari: ::1', 'users', '2016-07-19 08:52:16', 0),
(989, 1, 'login dari: ::1', 'users', '2016-07-19 17:59:13', 0),
(990, 1, 'login dari: ::1', 'users', '2016-07-19 18:04:16', 0),
(991, 1, 'Created record with ID: 49 : ::1', 'pengajuan', '2016-07-19 18:49:31', 0),
(992, 1, 'Created record with ID: 50 : ::1', 'pengajuan', '2016-07-19 18:51:10', 0),
(993, 1, 'Updated record with ID: 50 : ::1', 'konfirmasi_izin', '2016-07-19 20:07:46', 0),
(994, 1, 'Created record with ID: 51 : ::1', 'pengajuan', '2016-07-19 20:11:57', 0),
(995, 1, 'Updated record with ID: 48 : ::1', 'konfirmasi_izin', '2016-07-19 20:17:14', 0),
(996, 1, 'Updated record with ID: 51 : ::1', 'konfirmasi_izin', '2016-07-19 20:20:37', 0),
(997, 1, 'login dari: ::1', 'users', '2016-07-19 22:22:09', 0),
(998, 1, 'Created record with ID: 52 : ::1', 'pengajuan', '2016-07-19 22:24:03', 0),
(999, 1, 'Updated record with ID: 52 : ::1', 'konfirmasi_izin', '2016-07-19 22:24:39', 0),
(1000, 1, 'Created record with ID: 53 : ::1', 'pengajuan', '2016-07-19 22:33:51', 0),
(1001, 1, 'Updated record with ID: 53 : ::1', 'konfirmasi_izin', '2016-07-19 22:34:15', 0),
(1002, 1, 'Created record with ID: 54 : ::1', 'pengajuan', '2016-07-19 23:24:12', 0),
(1003, 1, 'Created record with ID: 55 : ::1', 'pengajuan', '2016-07-19 23:26:14', 0),
(1004, 1, 'Created record with ID: 56 : ::1', 'pengajuan', '2016-07-19 23:57:15', 0),
(1005, 1, 'Updated record with ID: 48 : ::1', 'konfirmasi_izin', '2016-07-20 01:06:47', 0),
(1006, 1, 'Updated record with ID: 45 : ::1', 'konfirmasi_izin', '2016-07-20 01:07:19', 0),
(1007, 1, 'Updated record with ID: 45 : ::1', 'konfirmasi_izin', '2016-07-20 01:07:32', 0),
(1008, 1, 'Updated record with ID: 48 : ::1', 'konfirmasi_izin', '2016-07-20 01:07:48', 0),
(1009, 2, 'login dari: ::1', 'users', '2016-07-20 01:10:47', 0),
(1010, 2, 'login dari: ::1', 'users', '2016-07-20 01:11:17', 0),
(1011, 2, 'Created record with ID: 57 : ::1', 'pengajuan', '2016-07-20 01:12:27', 0),
(1012, 1, 'login dari: ::1', 'users', '2016-07-20 01:12:47', 0),
(1013, 1, 'Updated record with ID: 57 : ::1', 'konfirmasi_izin', '2016-07-20 01:13:04', 0),
(1014, 2, 'login dari: ::1', 'users', '2016-07-20 01:13:18', 0),
(1015, 1, 'login dari: ::1', 'users', '2016-07-20 01:13:39', 0),
(1016, 1, 'login dari: ::1', 'users', '2016-07-20 01:52:39', 0),
(1017, 1, 'login dari: ::1', 'users', '2016-07-20 01:56:45', 0),
(1018, 2, 'login dari: ::1', 'users', '2016-07-20 01:57:12', 0),
(1019, 1, 'login dari: ::1', 'users', '2016-07-20 03:02:41', 0),
(1020, 2, 'login dari: ::1', 'users', '2016-07-20 03:09:55', 0),
(1021, 2, 'Created record with ID: 58 : ::1', 'pengajuan', '2016-07-20 03:11:14', 0),
(1022, 1, 'login dari: ::1', 'users', '2016-07-20 03:11:38', 0),
(1023, 1, 'Updated record with ID: 58 : ::1', 'konfirmasi_izin', '2016-07-20 03:12:18', 0),
(1024, 1, 'Created Module: mahasiswa : ::1', 'modulebuilder', '2016-07-20 03:20:18', 0),
(1025, 1, 'Created record with ID: 1 : ::1', 'mahasiswa', '2016-07-20 03:20:59', 0),
(1026, 1, 'login dari: ::1', 'users', '2016-07-20 07:41:48', 0),
(1027, 3, 'login dari: ::1', 'users', '2016-07-20 07:43:38', 0),
(1028, 3, 'Created record with ID: 59 : ::1', 'pengajuan', '2016-07-20 07:44:22', 0),
(1029, 1, 'login dari: ::1', 'users', '2016-07-20 07:48:11', 0),
(1030, 1, 'login dari: ::1', 'users', '2016-07-20 18:07:53', 0),
(1031, 1, 'Deleted Module: Barang : ::1', 'builder', '2016-07-20 18:08:23', 0),
(1032, 1, 'Deleted Module: mahasiswa : ::1', 'builder', '2016-07-20 18:09:01', 0),
(1033, 1, 'Deleted Module: Jenis_Barang : ::1', 'builder', '2016-07-20 18:09:31', 0),
(1034, 1, 'login dari: ::1', 'users', '2016-07-25 14:44:34', 0),
(1035, 1, 'Updated record with ID: 59 : ::1', 'konfirmasi_izin', '2016-07-25 14:58:46', 0),
(1036, 3, 'login dari: ::1', 'users', '2016-07-26 05:34:24', 0),
(1037, 1, 'login dari: ::1', 'users', '2016-07-29 09:02:50', 0),
(1038, 3, 'login dari: ::1', 'users', '2016-07-29 09:03:28', 0),
(1039, 3, 'Created record with ID: 60 : ::1', 'pengajuan', '2016-07-29 09:04:06', 0),
(1040, 1, 'login dari: ::1', 'users', '2016-07-29 09:04:25', 0),
(1041, 1, 'Updated record with ID: 60 : ::1', 'konfirmasi_izin', '2016-07-29 09:05:27', 0),
(1042, 1, 'login dari: ::1', 'users', '2016-08-10 13:37:57', 0),
(1043, 1, 'login dari: ::1', 'users', '2016-08-22 09:23:55', 0),
(1044, 1, 'login dari: ::1', 'users', '2016-10-04 15:09:30', 0),
(1045, 1, 'login dari: ::1', 'users', '2016-10-07 06:27:43', 0),
(1046, 1, 'login dari: ::1', 'users', '2016-10-10 10:12:53', 0),
(1047, 1, 'login dari: ::1', 'users', '2016-10-14 11:01:28', 0),
(1048, 1, 'login dari: ::1', 'users', '2016-10-19 11:35:30', 0),
(1049, 1, 'login dari: ::1', 'users', '2016-10-19 11:59:21', 0),
(1050, 1, 'login dari: ::1', 'users', '2016-10-19 12:14:33', 0),
(1051, 1, 'login dari: ::1', 'users', '2016-10-31 15:04:01', 0),
(1052, 1, 'login dari: ::1', 'users', '2016-11-15 03:05:32', 0),
(1053, 1, 'login dari: ::1', 'users', '2016-11-15 03:12:34', 0),
(1054, 1, 'login dari: ::1', 'users', '2016-11-17 11:10:29', 0),
(1055, 1, 'login dari: ::1', 'users', '2016-11-21 09:15:49', 0),
(1056, 1, 'Updated record with ID: 48 : ::1', 'konfirmasi_izin', '2016-11-21 09:16:57', 0),
(1057, 1, 'login dari: ::1', 'users', '2016-11-21 09:18:24', 0),
(1058, 1, 'login dari: ::1', 'users', '2016-11-30 08:55:48', 0),
(1059, 1, 'login dari: ::1', 'users', '2016-12-29 16:00:28', 0),
(1060, 1, 'login dari: ::1', 'users', '2017-01-04 02:07:09', 0),
(1061, 1, 'Updated record with ID: 59 : ::1', 'konfirmasi_izin', '2017-01-04 02:07:37', 0),
(1062, 1, 'login dari: ::1', 'users', '2017-01-06 08:45:22', 0),
(1063, 1, 'login dari: ::1', 'users', '2017-04-10 09:27:29', 0),
(1064, 1, 'login dari: ::1', 'users', '2017-04-10 11:56:27', 0),
(1065, 1, 'login dari: ::1', 'users', '2017-12-01 08:22:12', 0),
(1066, 1, 'login dari: ::1', 'users', '2017-12-02 15:16:40', 0),
(1067, 1, 'login dari: ::1', 'users', '2017-12-02 15:45:25', 0),
(1068, 1, 'login dari: ::1', 'users', '2018-01-11 07:48:48', 0),
(1069, 1, 'login dari: ::1', 'users', '2018-01-11 07:52:41', 0),
(1070, 1, 'login dari: ::1', 'users', '2018-01-12 11:11:07', 0),
(1071, 1, 'login dari: 192.168.43.1', 'users', '2018-01-13 11:25:31', 0),
(1072, 1, 'login dari: ::1', 'users', '2018-01-14 15:47:05', 0),
(1073, 1, 'login dari: ::1', 'users', '2018-01-16 05:25:10', 0),
(1074, 1, 'modifikasi pengguna: Wawan', 'users', '2018-01-16 05:26:52', 0),
(1075, 3, 'login dari: ::1', 'users', '2018-01-16 05:27:02', 0),
(1076, 1, 'login dari: ::1', 'users', '2018-01-16 05:27:58', 0),
(1077, 1, 'login dari: ::1', 'users', '2018-01-18 07:37:39', 0),
(1078, 1, 'login dari: ::1', 'users', '2018-01-18 07:40:11', 0),
(1079, 4, 'login dari: ::1', 'users', '2018-01-18 07:40:31', 0),
(1080, 1, 'login dari: ::1', 'users', '2018-01-18 07:41:48', 0),
(1081, 1, 'login dari: ::1', 'users', '2018-01-18 13:40:52', 0),
(1082, 1, 'login dari: ::1', 'users', '2018-01-19 07:20:38', 0),
(1083, 4, 'login dari: ::1', 'users', '2018-01-19 07:23:35', 0),
(1084, 4, 'Created record with ID: 61 : ::1', 'pengajuan', '2018-01-19 07:24:11', 0),
(1085, 1, 'login dari: ::1', 'users', '2018-01-19 07:24:37', 0),
(1086, 1, 'Updated record with ID: 61 : ::1', 'konfirmasi_izin', '2018-01-19 07:25:03', 0),
(1087, 1, 'login dari: ::1', 'users', '2018-01-19 11:35:37', 0),
(1088, 1, 'login dari: ::1', 'users', '2018-01-22 02:53:51', 0),
(1089, 4, 'login dari: ::1', 'users', '2018-01-22 03:02:48', 0),
(1090, 1, 'login dari: ::1', 'users', '2018-01-22 03:03:25', 0),
(1091, 1, 'login dari: ::1', 'users', '2018-01-22 03:05:35', 0),
(1092, 1, 'login dari: ::1', 'users', '2018-01-28 15:35:15', 0),
(1093, 1, 'login dari: ::1', 'users', '2018-02-13 02:07:36', 0),
(1094, 1, 'login dari: ::1', 'users', '2018-02-14 02:54:47', 0),
(1095, 1, 'login dari: ::1', 'users', '2018-02-23 10:50:39', 0),
(1096, 1, 'login dari: ::1', 'users', '2018-02-23 12:10:48', 0),
(1097, 1, 'login dari: ::1', 'users', '2018-04-01 12:49:42', 0),
(1098, 1, 'login dari: ::1', 'users', '2018-04-01 12:50:30', 0),
(1099, 1, 'login dari: ::1', 'users', '2018-04-01 12:51:13', 0),
(1100, 1, 'login dari: ::1', 'users', '2018-04-01 12:53:07', 0),
(1101, 1, 'login dari: ::1', 'users', '2018-04-01 12:54:13', 0),
(1102, 1, 'login dari: ::1', 'users', '2018-04-06 16:02:18', 0),
(1103, 1, 'login dari: ::1', 'users', '2018-04-06 16:09:24', 0),
(1104, 1, 'login dari: ::1', 'users', '2018-08-12 11:10:23', 0),
(1105, 1, 'login dari: ::1', 'users', '2018-08-13 11:35:25', 0),
(1106, 1, 'login dari: ::1', 'users', '2019-02-28 09:06:44', 0),
(1107, 1, 'modifikasi pengguna: Wawan', 'users', '2019-02-28 09:13:48', 0),
(1108, 3, 'login dari: ::1', 'users', '2019-02-28 09:14:02', 0),
(1109, 3, 'Created record with ID: 62 : ::1', 'pengajuan', '2019-02-28 09:16:10', 0),
(1110, 1, 'login dari: ::1', 'users', '2019-02-28 09:16:35', 0),
(1111, 1, 'login dari: ::1', 'users', '2019-02-28 12:16:31', 0),
(1112, 1, 'login dari: ::1', 'users', '2019-03-05 11:40:44', 0),
(1113, 1, 'login dari: ::1', 'users', '2019-07-08 20:32:42', 0),
(1114, 1, 'login dari: ::1', 'users', '2019-09-26 05:09:33', 0),
(1115, 1, 'login dari: ::1', 'users', '2020-09-08 05:15:30', 0),
(1116, 1, 'login dari: ::1', 'users', '2020-09-08 05:21:05', 0),
(1117, 1, 'modifikasi pengguna: Sugeng Kurniawan', 'users', '2020-09-08 05:21:53', 0),
(1118, 2, 'login dari: ::1', 'users', '2020-09-08 05:22:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bf_countries`
--

CREATE TABLE IF NOT EXISTS `bf_countries` (
  `iso` char(2) NOT NULL DEFAULT 'US',
  `name` varchar(80) NOT NULL,
  `printable_name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_countries`
--

INSERT INTO `bf_countries` (`iso`, `name`, `printable_name`, `iso3`, `numcode`) VALUES
('AD', 'ANDORRA', 'Andorra', 'AND', 20),
('AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784),
('AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4),
('AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28),
('AI', 'ANGUILLA', 'Anguilla', 'AIA', 660),
('AL', 'ALBANIA', 'Albania', 'ALB', 8),
('AM', 'ARMENIA', 'Armenia', 'ARM', 51),
('AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530),
('AO', 'ANGOLA', 'Angola', 'AGO', 24),
('AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL),
('AR', 'ARGENTINA', 'Argentina', 'ARG', 32),
('AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16),
('AT', 'AUSTRIA', 'Austria', 'AUT', 40),
('AU', 'AUSTRALIA', 'Australia', 'AUS', 36),
('AW', 'ARUBA', 'Aruba', 'ABW', 533),
('AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31),
('BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70),
('BB', 'BARBADOS', 'Barbados', 'BRB', 52),
('BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50),
('BE', 'BELGIUM', 'Belgium', 'BEL', 56),
('BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854),
('BG', 'BULGARIA', 'Bulgaria', 'BGR', 100),
('BH', 'BAHRAIN', 'Bahrain', 'BHR', 48),
('BI', 'BURUNDI', 'Burundi', 'BDI', 108),
('BJ', 'BENIN', 'Benin', 'BEN', 204),
('BM', 'BERMUDA', 'Bermuda', 'BMU', 60),
('BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96),
('BO', 'BOLIVIA', 'Bolivia', 'BOL', 68),
('BR', 'BRAZIL', 'Brazil', 'BRA', 76),
('BS', 'BAHAMAS', 'Bahamas', 'BHS', 44),
('BT', 'BHUTAN', 'Bhutan', 'BTN', 64),
('BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL),
('BW', 'BOTSWANA', 'Botswana', 'BWA', 72),
('BY', 'BELARUS', 'Belarus', 'BLR', 112),
('BZ', 'BELIZE', 'Belize', 'BLZ', 84),
('CA', 'CANADA', 'Canada', 'CAN', 124),
('CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL),
('CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180),
('CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140),
('CG', 'CONGO', 'Congo', 'COG', 178),
('CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756),
('CI', 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CIV', 384),
('CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184),
('CL', 'CHILE', 'Chile', 'CHL', 152),
('CM', 'CAMEROON', 'Cameroon', 'CMR', 120),
('CN', 'CHINA', 'China', 'CHN', 156),
('CO', 'COLOMBIA', 'Colombia', 'COL', 170),
('CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188),
('CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL),
('CU', 'CUBA', 'Cuba', 'CUB', 192),
('CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132),
('CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL),
('CY', 'CYPRUS', 'Cyprus', 'CYP', 196),
('CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203),
('DE', 'GERMANY', 'Germany', 'DEU', 276),
('DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262),
('DK', 'DENMARK', 'Denmark', 'DNK', 208),
('DM', 'DOMINICA', 'Dominica', 'DMA', 212),
('DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214),
('DZ', 'ALGERIA', 'Algeria', 'DZA', 12),
('EC', 'ECUADOR', 'Ecuador', 'ECU', 218),
('EE', 'ESTONIA', 'Estonia', 'EST', 233),
('EG', 'EGYPT', 'Egypt', 'EGY', 818),
('EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732),
('ER', 'ERITREA', 'Eritrea', 'ERI', 232),
('ES', 'SPAIN', 'Spain', 'ESP', 724),
('ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231),
('FI', 'FINLAND', 'Finland', 'FIN', 246),
('FJ', 'FIJI', 'Fiji', 'FJI', 242),
('FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238),
('FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583),
('FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234),
('FR', 'FRANCE', 'France', 'FRA', 250),
('GA', 'GABON', 'Gabon', 'GAB', 266),
('GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826),
('GD', 'GRENADA', 'Grenada', 'GRD', 308),
('GE', 'GEORGIA', 'Georgia', 'GEO', 268),
('GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254),
('GH', 'GHANA', 'Ghana', 'GHA', 288),
('GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292),
('GL', 'GREENLAND', 'Greenland', 'GRL', 304),
('GM', 'GAMBIA', 'Gambia', 'GMB', 270),
('GN', 'GUINEA', 'Guinea', 'GIN', 324),
('GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312),
('GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226),
('GR', 'GREECE', 'Greece', 'GRC', 300),
('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
('GT', 'GUATEMALA', 'Guatemala', 'GTM', 320),
('GU', 'GUAM', 'Guam', 'GUM', 316),
('GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624),
('GY', 'GUYANA', 'Guyana', 'GUY', 328),
('HK', 'HONG KONG', 'Hong Kong', 'HKG', 344),
('HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL),
('HN', 'HONDURAS', 'Honduras', 'HND', 340),
('HR', 'CROATIA', 'Croatia', 'HRV', 191),
('HT', 'HAITI', 'Haiti', 'HTI', 332),
('HU', 'HUNGARY', 'Hungary', 'HUN', 348),
('ID', 'INDONESIA', 'Indonesia', 'IDN', 360),
('IE', 'IRELAND', 'Ireland', 'IRL', 372),
('IL', 'ISRAEL', 'Israel', 'ISR', 376),
('IN', 'INDIA', 'India', 'IND', 356),
('IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL),
('IQ', 'IRAQ', 'Iraq', 'IRQ', 368),
('IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364),
('IS', 'ICELAND', 'Iceland', 'ISL', 352),
('IT', 'ITALY', 'Italy', 'ITA', 380),
('JM', 'JAMAICA', 'Jamaica', 'JAM', 388),
('JO', 'JORDAN', 'Jordan', 'JOR', 400),
('JP', 'JAPAN', 'Japan', 'JPN', 392),
('KE', 'KENYA', 'Kenya', 'KEN', 404),
('KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417),
('KH', 'CAMBODIA', 'Cambodia', 'KHM', 116),
('KI', 'KIRIBATI', 'Kiribati', 'KIR', 296),
('KM', 'COMOROS', 'Comoros', 'COM', 174),
('KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659),
('KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'PRK', 408),
('KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410),
('KW', 'KUWAIT', 'Kuwait', 'KWT', 414),
('KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136),
('KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398),
('LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LAO', 418),
('LB', 'LEBANON', 'Lebanon', 'LBN', 422),
('LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662),
('LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438),
('LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144),
('LR', 'LIBERIA', 'Liberia', 'LBR', 430),
('LS', 'LESOTHO', 'Lesotho', 'LSO', 426),
('LT', 'LITHUANIA', 'Lithuania', 'LTU', 440),
('LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442),
('LV', 'LATVIA', 'Latvia', 'LVA', 428),
('LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434),
('MA', 'MOROCCO', 'Morocco', 'MAR', 504),
('MC', 'MONACO', 'Monaco', 'MCO', 492),
('MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498),
('MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450),
('MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584),
('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807),
('ML', 'MALI', 'Mali', 'MLI', 466),
('MM', 'MYANMAR', 'Myanmar', 'MMR', 104),
('MN', 'MONGOLIA', 'Mongolia', 'MNG', 496),
('MO', 'MACAO', 'Macao', 'MAC', 446),
('MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580),
('MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474),
('MR', 'MAURITANIA', 'Mauritania', 'MRT', 478),
('MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500),
('MT', 'MALTA', 'Malta', 'MLT', 470),
('MU', 'MAURITIUS', 'Mauritius', 'MUS', 480),
('MV', 'MALDIVES', 'Maldives', 'MDV', 462),
('MW', 'MALAWI', 'Malawi', 'MWI', 454),
('MX', 'MEXICO', 'Mexico', 'MEX', 484),
('MY', 'MALAYSIA', 'Malaysia', 'MYS', 458),
('MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508),
('NA', 'NAMIBIA', 'Namibia', 'NAM', 516),
('NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540),
('NE', 'NIGER', 'Niger', 'NER', 562),
('NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574),
('NG', 'NIGERIA', 'Nigeria', 'NGA', 566),
('NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558),
('NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528),
('NO', 'NORWAY', 'Norway', 'NOR', 578),
('NP', 'NEPAL', 'Nepal', 'NPL', 524),
('NR', 'NAURU', 'Nauru', 'NRU', 520),
('NU', 'NIUE', 'Niue', 'NIU', 570),
('NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554),
('OM', 'OMAN', 'Oman', 'OMN', 512),
('PA', 'PANAMA', 'Panama', 'PAN', 591),
('PE', 'PERU', 'Peru', 'PER', 604),
('PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258),
('PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598),
('PH', 'PHILIPPINES', 'Philippines', 'PHL', 608),
('PK', 'PAKISTAN', 'Pakistan', 'PAK', 586),
('PL', 'POLAND', 'Poland', 'POL', 616),
('PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666),
('PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612),
('PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630),
('PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL),
('PT', 'PORTUGAL', 'Portugal', 'PRT', 620),
('PW', 'PALAU', 'Palau', 'PLW', 585),
('PY', 'PARAGUAY', 'Paraguay', 'PRY', 600),
('QA', 'QATAR', 'Qatar', 'QAT', 634),
('RE', 'REUNION', 'Reunion', 'REU', 638),
('RO', 'ROMANIA', 'Romania', 'ROM', 642),
('RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643),
('RW', 'RWANDA', 'Rwanda', 'RWA', 646),
('SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682),
('SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90),
('SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690),
('SD', 'SUDAN', 'Sudan', 'SDN', 736),
('SE', 'SWEDEN', 'Sweden', 'SWE', 752),
('SG', 'SINGAPORE', 'Singapore', 'SGP', 702),
('SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654),
('SI', 'SLOVENIA', 'Slovenia', 'SVN', 705),
('SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744),
('SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703),
('SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694),
('SM', 'SAN MARINO', 'San Marino', 'SMR', 674),
('SN', 'SENEGAL', 'Senegal', 'SEN', 686),
('SO', 'SOMALIA', 'Somalia', 'SOM', 706),
('SR', 'SURINAME', 'Suriname', 'SUR', 740),
('ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678),
('SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222),
('SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760),
('SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748),
('TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796),
('TD', 'CHAD', 'Chad', 'TCD', 148),
('TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL),
('TG', 'TOGO', 'Togo', 'TGO', 768),
('TH', 'THAILAND', 'Thailand', 'THA', 764),
('TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762),
('TK', 'TOKELAU', 'Tokelau', 'TKL', 772),
('TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL),
('TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795),
('TN', 'TUNISIA', 'Tunisia', 'TUN', 788),
('TO', 'TONGA', 'Tonga', 'TON', 776),
('TR', 'TURKEY', 'Turkey', 'TUR', 792),
('TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780),
('TV', 'TUVALU', 'Tuvalu', 'TUV', 798),
('TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158),
('TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834),
('UA', 'UKRAINE', 'Ukraine', 'UKR', 804),
('UG', 'UGANDA', 'Uganda', 'UGA', 800),
('UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL),
('US', 'UNITED STATES', 'United States', 'USA', 840),
('UY', 'URUGUAY', 'Uruguay', 'URY', 858),
('UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860),
('VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336),
('VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670),
('VE', 'VENEZUELA', 'Venezuela', 'VEN', 862),
('VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92),
('VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850),
('VN', 'VIET NAM', 'Viet Nam', 'VNM', 704),
('VU', 'VANUATU', 'Vanuatu', 'VUT', 548),
('WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876),
('WS', 'SAMOA', 'Samoa', 'WSM', 882),
('YE', 'YEMEN', 'Yemen', 'YEM', 887),
('YT', 'MAYOTTE', 'Mayotte', NULL, NULL),
('ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710),
('ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894),
('ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `bf_divisi`
--

CREATE TABLE IF NOT EXISTS `bf_divisi` (
  `id_divisi` int(11) NOT NULL,
  `nama_divisi` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_divisi`
--

INSERT INTO `bf_divisi` (`id_divisi`, `nama_divisi`) VALUES
(19, 'President Director'),
(20, 'Director'),
(21, 'Manager of Software Products Department'),
(22, 'Programmer'),
(23, 'Manager of Custom Software Department'),
(24, 'Designer'),
(25, 'Manager of Networking & Server Department'),
(26, 'Head of Networking Division'),
(27, 'Server Administrator'),
(28, 'Networking');

-- --------------------------------------------------------

--
-- Table structure for table `bf_email_queue`
--

CREATE TABLE IF NOT EXISTS `bf_email_queue` (
  `id` int(11) NOT NULL,
  `to_email` varchar(128) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `alt_message` text,
  `max_attempts` int(11) NOT NULL DEFAULT '3',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `success` tinyint(1) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `last_attempt` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_email_queue`
--

INSERT INTO `bf_email_queue` (`id`, `to_email`, `subject`, `message`, `alt_message`, `max_attempts`, `attempts`, `success`, `date_published`, `last_attempt`, `date_sent`) VALUES
(1, 'admin@mybonfire.com', 'Congratulations! Your Bonfire Emailer is working!', 'If you are seeing this email, then it appears your Bonfire Emailer is working!', NULL, 3, 0, 0, NULL, NULL, NULL),
(2, 'dwi.febry@gmail.com', 'test vb3', 'ini adalah contoh kirim emali dari bonfire7 versi bootstrap 3', NULL, 3, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bf_jenis_izin`
--

CREATE TABLE IF NOT EXISTS `bf_jenis_izin` (
  `id` int(11) NOT NULL,
  `izin_jenis` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_jenis_izin`
--

INSERT INTO `bf_jenis_izin` (`id`, `izin_jenis`) VALUES
(1, 'Pergi Keluar'),
(2, 'Cuti'),
(3, 'Pergi Dinas'),
(4, 'Sakit');

-- --------------------------------------------------------

--
-- Table structure for table `bf_login_attempts`
--

CREATE TABLE IF NOT EXISTS `bf_login_attempts` (
  `id` bigint(20) NOT NULL,
  `ip_address` varchar(40) NOT NULL,
  `login` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_login_attempts`
--

INSERT INTO `bf_login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(2, '::1', 'wawan', '2020-09-08 03:20:42'),
(3, '::1', 'wawan', '2020-09-08 03:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `bf_pegawai`
--

CREATE TABLE IF NOT EXISTS `bf_pegawai` (
  `pg_id` int(11) NOT NULL,
  `pg_nama` varchar(50) NOT NULL,
  `pg_divisi` varchar(50) NOT NULL,
  `pg_alamat` varchar(200) NOT NULL,
  `pg_telefon` varchar(16) NOT NULL,
  `pg_foto` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_pegawai`
--

INSERT INTO `bf_pegawai` (`pg_id`, `pg_nama`, `pg_divisi`, `pg_alamat`, `pg_telefon`, `pg_foto`) VALUES
(1, 'Dr. Pulung Nurtantio Andono, ST, M.Kom', '19', 'JL.DURIAN RAYA NO 39', '-', 'pegawai_1461918139.jpg'),
(6, 'SUGENG KURNIAWAN', '22', 'Dersalam,Kudus', '081234543', 'pegawai_1466747354.jpg'),
(8, 'MOH. TOFA NURZAKI, S.KOM', '21', 'Semarang', '085345688', 'pegawai_1466747580.jpg'),
(9, 'wawan', '24', 'semarang', '1111', 'pegawai_1476087560.jpg'),
(10, 'sugeng', '22', 'dersalam', '085712279447', 'pegawai_1516586101.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `bf_pengajuan`
--

CREATE TABLE IF NOT EXISTS `bf_pengajuan` (
  `id` int(11) NOT NULL,
  `izin_nama` varchar(50) NOT NULL,
  `input_izin_jenis` varchar(40) NOT NULL,
  `tgl_m` date NOT NULL DEFAULT '0000-00-00',
  `tgl_s` date NOT NULL DEFAULT '0000-00-00',
  `izin_waktu_m` time NOT NULL,
  `izin_waktu_s` time NOT NULL,
  `izin_status` tinyint(1) NOT NULL,
  `keterangan_izin` varchar(100) DEFAULT NULL,
  `alasan` varchar(110) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_pengajuan`
--

INSERT INTO `bf_pengajuan` (`id`, `izin_nama`, `input_izin_jenis`, `tgl_m`, `tgl_s`, `izin_waktu_m`, `izin_waktu_s`, `izin_status`, `keterangan_izin`, `alasan`) VALUES
(45, 'wawan', '1', '2016-06-01', '2016-06-01', '11:00:00', '12:30:00', 2, 'ambil berkas', ''),
(46, 'wawan', '4', '2016-07-05', '2016-07-13', '00:00:00', '00:00:00', 2, 'opname d rumah sakit', ''),
(48, 'wawan', '1', '2016-07-18', '2016-07-18', '13:00:00', '14:30:00', 2, 'pergi ke rumah', ''),
(57, 'Sugeng Kurniawan', '3', '2016-07-18', '2016-07-20', '00:00:00', '00:00:00', 2, 'luar kota', ''),
(58, 'Sugeng Kurniawan', '1', '2016-07-20', '2016-07-20', '10:00:00', '12:15:00', 2, 'ambil berkas di rumah', ''),
(59, 'wawan', '1', '2016-07-20', '2016-07-20', '08:00:00', '16:30:00', 2, 'coba', ''),
(60, 'wawan', '1', '2016-07-29', '2016-07-29', '08:45:00', '14:45:00', 1, 'keluar rumah', 'ada rapat'),
(61, 'user', '1', '2018-01-19', '2018-01-19', '10:45:00', '13:00:00', 2, 'pulang sebentar', ''),
(62, 'wawan', '1', '2019-02-28', '2019-03-02', '08:45:00', '11:00:00', 0, 'ngurus sim sebentar', '0');

-- --------------------------------------------------------

--
-- Table structure for table `bf_permissions`
--

CREATE TABLE IF NOT EXISTS `bf_permissions` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_permissions`
--

INSERT INTO `bf_permissions` (`permission_id`, `name`, `description`, `status`) VALUES
(2, 'Site.Content.View', 'Allow users to view the Content Context', 'active'),
(3, 'Site.Reports.View', 'Allow users to view the Reports Context', 'active'),
(4, 'Site.Settings.View', 'Allow users to view the Settings Context', 'active'),
(5, 'Site.Developer.View', 'Allow users to view the Developer Context', 'active'),
(6, 'Bonfire.Roles.Manage', 'Allow users to manage the user Roles', 'active'),
(7, 'Bonfire.Users.Manage', 'Allow users to manage the site Users', 'active'),
(8, 'Bonfire.Users.View', 'Allow users access to the User Settings', 'active'),
(9, 'Bonfire.Users.Add', 'Allow users to add new Users', 'active'),
(10, 'Bonfire.Database.Manage', 'Allow users to manage the Database settings', 'active'),
(11, 'Bonfire.Emailer.Manage', 'Allow users to manage the Emailer settings', 'active'),
(12, 'Bonfire.Logs.View', 'Allow users access to the Log details', 'active'),
(13, 'Bonfire.Logs.Manage', 'Allow users to manage the Log files', 'active'),
(14, 'Bonfire.Emailer.View', 'Allow users access to the Emailer settings', 'active'),
(15, 'Site.Signin.Offline', 'Allow users to login to the site when the site is offline', 'active'),
(16, 'Bonfire.Permissions.View', 'Allow access to view the Permissions menu unders Settings Context', 'active'),
(17, 'Bonfire.Permissions.Manage', 'Allow access to manage the Permissions in the system', 'active'),
(18, 'Bonfire.Roles.Delete', 'Allow users to delete user Roles', 'active'),
(19, 'Bonfire.Modules.Add', 'Allow creation of modules with the builder.', 'active'),
(20, 'Bonfire.Modules.Delete', 'Allow deletion of modules.', 'active'),
(21, 'Permissions.Administrator.Manage', 'To manage the access control permissions for the Administrator role.', 'active'),
(22, 'Permissions.Editor.Manage', 'To manage the access control permissions for the Editor role.', 'inactive'),
(24, 'Permissions.User.Manage', 'To manage the access control permissions for the User role.', 'active'),
(25, 'Permissions.Developer.Manage', 'To manage the access control permissions for the Developer role.', 'active'),
(27, 'Activities.Own.View', 'To view the users own activity logs', 'active'),
(28, 'Activities.Own.Delete', 'To delete the users own activity logs', 'active'),
(29, 'Activities.User.View', 'To view the user activity logs', 'active'),
(30, 'Activities.User.Delete', 'To delete the user activity logs, except own', 'active'),
(31, 'Activities.Module.View', 'To view the module activity logs', 'active'),
(32, 'Activities.Module.Delete', 'To delete the module activity logs', 'active'),
(33, 'Activities.Date.View', 'To view the users own activity logs', 'active'),
(34, 'Activities.Date.Delete', 'To delete the dated activity logs', 'active'),
(35, 'Bonfire.UI.Manage', 'Manage the Bonfire UI settings', 'active'),
(36, 'Bonfire.Settings.View', 'To view the site settings page.', 'active'),
(37, 'Bonfire.Settings.Manage', 'To manage the site settings.', 'active'),
(38, 'Bonfire.Activities.View', 'To view the Activities menu.', 'active'),
(39, 'Bonfire.Database.View', 'To view the Database menu.', 'active'),
(40, 'Bonfire.Migrations.View', 'To view the Migrations menu.', 'active'),
(41, 'Bonfire.Builder.View', 'To view the Modulebuilder menu.', 'active'),
(42, 'Bonfire.Roles.View', 'To view the Roles menu.', 'active'),
(43, 'Bonfire.Sysinfo.View', 'To view the System Information page.', 'active'),
(44, 'Bonfire.Translate.Manage', 'To manage the Language Translation.', 'active'),
(45, 'Bonfire.Translate.View', 'To view the Language Translate menu.', 'active'),
(46, 'Bonfire.UI.View', 'To view the UI/Keyboard Shortcut menu.', 'active'),
(49, 'Bonfire.Profiler.View', 'To view the Console Profiler Bar.', 'active'),
(50, 'Bonfire.Roles.Add', 'To add New Roles', 'active'),
(68, 'Permissions.Admin.Manage', 'To manage the access control permissions for the Admin role.', 'active'),
(69, 'Conto.Master.View', '', 'active'),
(70, 'Conto.Master.Create', '', 'active'),
(71, 'Conto.Master.Edit', '', 'active'),
(72, 'Conto.Master.Delete', '', 'active'),
(73, 'Site.Kontexk.View', 'Allow user to view the Kontexk Context.', 'active'),
(74, 'Site.Transaksi.View', 'Allow user to view the Transaksi Context.', 'active'),
(75, 'Site.Transaksi.View', 'Allow user to view the Transaksi Context.', 'active'),
(76, 'Site.Transaksi.View', 'Allow user to view the Transaksi Context.', 'active'),
(88, 'Site.Master.View', 'Allow user to view the Master Context.', 'active'),
(94, 'Permissions.SKPD.Manage', 'To manage the access control permissions for the SKPD role.', 'inactive'),
(147, 'Site.Perizinan.View', 'Allow user to view the Perizinan Context.', 'active'),
(152, 'Divisi.Master.View', '', 'active'),
(153, 'Divisi.Master.Create', '', 'active'),
(154, 'Divisi.Master.Edit', '', 'active'),
(155, 'Divisi.Master.Delete', '', 'active'),
(156, 'Jenis_Izin.Master.View', '', 'active'),
(157, 'Jenis_Izin.Master.Create', '', 'active'),
(158, 'Jenis_Izin.Master.Edit', '', 'active'),
(159, 'Jenis_Izin.Master.Delete', '', 'active'),
(160, 'Pegawai.Master.View', '', 'active'),
(161, 'Pegawai.Master.Create', '', 'active'),
(162, 'Pegawai.Master.Edit', '', 'active'),
(163, 'Pegawai.Master.Delete', '', 'active'),
(164, 'Input_Izin.Perizinan.View', '', 'active'),
(165, 'Input_Izin.Perizinan.Create', '', 'active'),
(166, 'Input_Izin.Perizinan.Edit', '', 'active'),
(167, 'Input_Izin.Perizinan.Delete', '', 'active'),
(168, 'Pengajuan.Perizinan.View', '', 'active'),
(169, 'Pengajuan.Perizinan.Create', '', 'active'),
(170, 'Pengajuan.Perizinan.Edit', '', 'active'),
(171, 'Pengajuan.Perizinan.Delete', '', 'active'),
(178, 'Konfirmasi_Izin.Perizinan.View', '', 'active'),
(179, 'Konfirmasi_Izin.Perizinan.Create', '', 'active'),
(180, 'Konfirmasi_Izin.Perizinan.Edit', '', 'active'),
(181, 'Konfirmasi_Izin.Perizinan.Delete', '', 'active'),
(182, 'Site.Laporan.View', 'Allow user to view the Laporan Context.', 'active'),
(187, 'Laporan_Periodik.Laporan.View', '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `bf_roles`
--

CREATE TABLE IF NOT EXISTS `bf_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(60) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  `login_destination` varchar(255) NOT NULL DEFAULT '/',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `default_context` varchar(255) NOT NULL DEFAULT 'content'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_roles`
--

INSERT INTO `bf_roles` (`role_id`, `role_name`, `description`, `default`, `can_delete`, `login_destination`, `deleted`, `default_context`) VALUES
(1, 'Administrator', 'Has full control over every aspect of the site.', 0, 0, '', 0, 'content'),
(4, 'User', 'This is the default user with access to login.', 1, 0, '', 0, 'content'),
(6, 'Developer', 'Developers typically are the only ones that can access the developer tools. Otherwise identical to Administrators, at least until the site is handed off.', 0, 1, '', 0, 'content');

-- --------------------------------------------------------

--
-- Table structure for table `bf_role_permissions`
--

CREATE TABLE IF NOT EXISTS `bf_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_role_permissions`
--

INSERT INTO `bf_role_permissions` (`role_id`, `permission_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 12),
(1, 13),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 24),
(1, 25),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 49),
(1, 50),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 88),
(1, 147),
(1, 152),
(1, 153),
(1, 154),
(1, 155),
(1, 156),
(1, 157),
(1, 158),
(1, 159),
(1, 160),
(1, 161),
(1, 162),
(1, 163),
(1, 169),
(1, 178),
(1, 180),
(1, 181),
(1, 182),
(1, 187),
(4, 6),
(4, 7),
(4, 8),
(4, 11),
(4, 12),
(4, 13),
(4, 21),
(4, 24),
(4, 27),
(4, 28),
(4, 29),
(4, 31),
(4, 33),
(4, 36),
(4, 37),
(4, 38),
(4, 39),
(4, 41),
(4, 43),
(4, 49),
(4, 68),
(4, 69),
(4, 71),
(4, 147),
(4, 160),
(4, 161),
(4, 162),
(4, 168),
(4, 169),
(4, 170),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 49),
(7, 2),
(7, 6),
(7, 9),
(7, 12),
(7, 13),
(7, 18),
(7, 24),
(7, 27),
(7, 29),
(7, 35),
(7, 42),
(7, 46),
(7, 50),
(7, 88);

-- --------------------------------------------------------

--
-- Table structure for table `bf_schema_version`
--

CREATE TABLE IF NOT EXISTS `bf_schema_version` (
  `type` varchar(40) NOT NULL,
  `version` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_schema_version`
--

INSERT INTO `bf_schema_version` (`type`, `version`) VALUES
('conto_', 2),
('core', 37),
('divisi_', 2),
('input_izin_', 2),
('jenis_izin_', 2),
('konfirmasi_izin_', 1),
('laporan_periodik_', 1),
('pegawai_', 2),
('pengajuan_', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bf_sessions`
--

CREATE TABLE IF NOT EXISTS `bf_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bf_settings`
--

CREATE TABLE IF NOT EXISTS `bf_settings` (
  `name` varchar(30) NOT NULL,
  `module` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_settings`
--

INSERT INTO `bf_settings` (`name`, `module`, `value`) VALUES
('auth.allow_name_change', 'core', '1'),
('auth.allow_register', 'core', '1'),
('auth.allow_remember', 'core', '1'),
('auth.do_login_redirect', 'core', '1'),
('auth.login_type', 'core', 'both'),
('auth.name_change_frequency', 'core', '1'),
('auth.name_change_limit', 'core', '1'),
('auth.password_force_mixed_case', 'core', '0'),
('auth.password_force_numbers', 'core', '0'),
('auth.password_force_symbols', 'core', '0'),
('auth.password_min_length', 'core', '4'),
('auth.password_show_labels', 'core', '0'),
('auth.remember_length', 'core', '1209600'),
('auth.user_activation_method', 'core', '0'),
('auth.use_extended_profile', 'core', '0'),
('auth.use_usernames', 'core', '1'),
('ext.country', 'core', 'US'),
('ext.state', 'core', 'CA'),
('ext.street_name', 'core', ''),
('ext.type', 'core', 'small'),
('form_save', 'core.ui', 'ctrl+s/⌘+s'),
('goto_content', 'core.ui', 'alt+c'),
('mailpath', 'email', '/usr/sbin/sendmail'),
('mailtype', 'email', 'text'),
('password_iterations', 'users', '8'),
('protocol', 'email', 'mail'),
('sender_email', 'email', ''),
('site.languages', 'core', 'a:3:{i:0;s:7:"english";i:1;s:7:"persian";i:2;s:10:"portuguese";}'),
('site.list_limit', 'core', '10'),
('site.show_front_profiler', 'core', '1'),
('site.show_profiler', 'core', '1'),
('site.status', 'core', '1'),
('site.system_email', 'core', 'admin@mybonfire.com'),
('site.title', 'core', 'E-Izin'),
('smtp_host', 'email', ''),
('smtp_pass', 'email', ''),
('smtp_port', 'email', ''),
('smtp_timeout', 'email', ''),
('smtp_user', 'email', ''),
('updates.bleeding_edge', 'core', '0'),
('updates.do_check', 'core', '0');

-- --------------------------------------------------------

--
-- Table structure for table `bf_states`
--

CREATE TABLE IF NOT EXISTS `bf_states` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `abbrev` char(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_states`
--

INSERT INTO `bf_states` (`id`, `name`, `abbrev`) VALUES
(1, 'Alaska', 'AK'),
(2, 'Alabama', 'AL'),
(3, 'American Samoa', 'AS'),
(4, 'Arizona', 'AZ'),
(5, 'Arkansas', 'AR'),
(6, 'California', 'CA'),
(7, 'Colorado', 'CO'),
(8, 'Connecticut', 'CT'),
(9, 'Delaware', 'DE'),
(10, 'District of Columbia', 'DC'),
(11, 'Florida', 'FL'),
(12, 'Georgia', 'GA'),
(13, 'Guam', 'GU'),
(14, 'Hawaii', 'HI'),
(15, 'Idaho', 'ID'),
(16, 'Illinois', 'IL'),
(17, 'Indiana', 'IN'),
(18, 'Iowa', 'IA'),
(19, 'Kansas', 'KS'),
(20, 'Kentucky', 'KY'),
(21, 'Louisiana', 'LA'),
(22, 'Maine', 'ME'),
(23, 'Marshall Islands', 'MH'),
(24, 'Maryland', 'MD'),
(25, 'Massachusetts', 'MA'),
(26, 'Michigan', 'MI'),
(27, 'Minnesota', 'MN'),
(28, 'Mississippi', 'MS'),
(29, 'Missouri', 'MO'),
(30, 'Montana', 'MT'),
(31, 'Nebraska', 'NE'),
(32, 'Nevada', 'NV'),
(33, 'New Hampshire', 'NH'),
(34, 'New Jersey', 'NJ'),
(35, 'New Mexico', 'NM'),
(36, 'New York', 'NY'),
(37, 'North Carolina', 'NC'),
(38, 'North Dakota', 'ND'),
(39, 'Northern Mariana Islands', 'MP'),
(40, 'Ohio', 'OH'),
(41, 'Oklahoma', 'OK'),
(42, 'Oregon', 'OR'),
(43, 'Palau', 'PW'),
(44, 'Pennsylvania', 'PA'),
(45, 'Puerto Rico', 'PR'),
(46, 'Rhode Island', 'RI'),
(47, 'South Carolina', 'SC'),
(48, 'South Dakota', 'SD'),
(49, 'Tennessee', 'TN'),
(50, 'Texas', 'TX'),
(51, 'Utah', 'UT'),
(52, 'Vermont', 'VT'),
(53, 'Virgin Islands', 'VI'),
(54, 'Virginia', 'VA'),
(55, 'Washington', 'WA'),
(56, 'West Virginia', 'WV'),
(57, 'Wisconsin', 'WI'),
(58, 'Wyoming', 'WY'),
(59, 'Armed Forces Africa', 'AE'),
(60, 'Armed Forces Canada', 'AE'),
(61, 'Armed Forces Europe', 'AE'),
(62, 'Armed Forces Middle East', 'AE'),
(63, 'Armed Forces Pacific', 'AP');

-- --------------------------------------------------------

--
-- Table structure for table `bf_users`
--

CREATE TABLE IF NOT EXISTS `bf_users` (
  `id` bigint(20) unsigned NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '4',
  `email` varchar(120) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password_hash` char(60) NOT NULL,
  `reset_hash` varchar(40) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `hash_help` varchar(40) NOT NULL DEFAULT '',
  `reset_by` int(10) DEFAULT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_message` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT '',
  `display_name_changed` date DEFAULT NULL,
  `timezone` char(4) NOT NULL DEFAULT 'UP7',
  `language` varchar(20) NOT NULL DEFAULT 'english',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activate_hash` varchar(40) NOT NULL DEFAULT '',
  `password_iterations` int(4) NOT NULL,
  `force_password_reset` tinyint(1) NOT NULL DEFAULT '0',
  `id_skpd` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_users`
--

INSERT INTO `bf_users` (`id`, `role_id`, `email`, `username`, `password_hash`, `reset_hash`, `last_login`, `last_ip`, `created_on`, `deleted`, `hash_help`, `reset_by`, `banned`, `ban_message`, `display_name`, `display_name_changed`, `timezone`, `language`, `active`, `activate_hash`, `password_iterations`, `force_password_reset`, `id_skpd`) VALUES
(1, 1, 'admin@mybonfire.com', 'administrator', '$2a$08$fKsDubcbPbPa/pLUnCxXX.zUJ0mFbVuEaOEA.oRViQR7oZ1i/6dCK', NULL, '2020-09-08 05:21:05', '::1', '2015-04-20 11:26:31', 0, '', NULL, 0, NULL, 'Administrator', NULL, 'UP7', 'english', 1, '', 8, 0, 0),
(2, 4, 'SugengK@gmail.com', 'Sugeng Kurniawan', '$2a$08$Q589o39fHS6nthfKm1p6l.WgZKLFlVOa3QeBkwd59cg1HY94lexky', NULL, '2020-09-08 05:22:09', '::1', '2016-03-04 04:31:56', 0, '10drowssap', NULL, 0, NULL, 'Sugeng Kurniawan', NULL, 'UP7', 'english', 1, '', 8, 0, 0),
(3, 4, 'Wawandns@gmail.com', 'wawan', '$2a$08$MdRKOMoucAIbZqny8PmntO58ehlJRvCqjzOKVIMD2/7nsVlKoZIp6', NULL, '2019-02-28 09:14:02', '::1', '2016-06-24 04:34:57', 0, 'drowssap', NULL, 0, NULL, 'Wawan', NULL, 'UP7', 'english', 1, '', 8, 0, 0),
(4, 4, 'user@gmail.com', 'user', '$2a$08$wBz9hqepVb39aNJ4TZVmx.rZe/SRNnkydOdnmlOTQnbv6OsH0LNli', NULL, '2018-01-22 03:02:48', '::1', '2016-07-17 09:20:41', 0, 'resu', NULL, 0, NULL, 'user', NULL, 'UP7', 'english', 1, '', 8, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bf_user_cookies`
--

CREATE TABLE IF NOT EXISTS `bf_user_cookies` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(128) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bf_user_meta`
--

CREATE TABLE IF NOT EXISTS `bf_user_meta` (
  `meta_id` int(20) unsigned NOT NULL,
  `user_id` int(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bf_user_meta`
--

INSERT INTO `bf_user_meta` (`meta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'street_name', ''),
(2, 2, 'state', 'SC'),
(3, 2, 'country', 'ID'),
(4, 2, 'type', 'small'),
(5, 3, 'street_name', ''),
(6, 3, 'state', 'SC'),
(7, 3, 'country', 'US'),
(8, 3, 'type', 'small'),
(9, 4, 'street_name', ''),
(10, 4, 'state', 'SC'),
(11, 4, 'country', 'US'),
(12, 4, 'type', 'small'),
(13, 5, 'street_name', ''),
(14, 5, 'state', 'SC'),
(15, 5, 'country', 'US'),
(16, 5, 'type', 'small'),
(17, 6, 'street_name', ''),
(18, 6, 'state', 'SC'),
(19, 6, 'country', 'US'),
(20, 6, 'type', 'small'),
(21, 7, 'street_name', ''),
(22, 7, 'state', 'SC'),
(23, 7, 'country', 'US'),
(24, 7, 'type', 'small'),
(25, 8, 'street_name', ''),
(26, 8, 'state', 'SC'),
(27, 8, 'country', 'US'),
(28, 8, 'type', 'small'),
(29, 9, 'street_name', ''),
(30, 9, 'state', 'SC'),
(31, 9, 'country', 'US'),
(32, 9, 'type', 'small'),
(33, 1, 'street_name', ''),
(34, 1, 'state', 'SC'),
(35, 1, 'country', 'US'),
(36, 1, 'type', 'small'),
(37, 10, 'street_name', ''),
(38, 11, 'street_name', ''),
(39, 10, 'state', 'SC'),
(40, 11, 'state', 'SC'),
(41, 10, 'country', 'US'),
(42, 11, 'country', 'US'),
(43, 10, 'type', 'small'),
(44, 11, 'type', 'small');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bf_activities`
--
ALTER TABLE `bf_activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `bf_countries`
--
ALTER TABLE `bf_countries`
  ADD PRIMARY KEY (`iso`);

--
-- Indexes for table `bf_divisi`
--
ALTER TABLE `bf_divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `bf_email_queue`
--
ALTER TABLE `bf_email_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_jenis_izin`
--
ALTER TABLE `bf_jenis_izin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_login_attempts`
--
ALTER TABLE `bf_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_pegawai`
--
ALTER TABLE `bf_pegawai`
  ADD PRIMARY KEY (`pg_id`);

--
-- Indexes for table `bf_pengajuan`
--
ALTER TABLE `bf_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_permissions`
--
ALTER TABLE `bf_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `bf_roles`
--
ALTER TABLE `bf_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `bf_role_permissions`
--
ALTER TABLE `bf_role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`);

--
-- Indexes for table `bf_schema_version`
--
ALTER TABLE `bf_schema_version`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `bf_sessions`
--
ALTER TABLE `bf_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `bf_settings`
--
ALTER TABLE `bf_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `bf_states`
--
ALTER TABLE `bf_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bf_users`
--
ALTER TABLE `bf_users`
  ADD PRIMARY KEY (`id`), ADD KEY `email` (`email`);

--
-- Indexes for table `bf_user_cookies`
--
ALTER TABLE `bf_user_cookies`
  ADD KEY `token` (`token`);

--
-- Indexes for table `bf_user_meta`
--
ALTER TABLE `bf_user_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bf_activities`
--
ALTER TABLE `bf_activities`
  MODIFY `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1119;
--
-- AUTO_INCREMENT for table `bf_divisi`
--
ALTER TABLE `bf_divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `bf_email_queue`
--
ALTER TABLE `bf_email_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bf_jenis_izin`
--
ALTER TABLE `bf_jenis_izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bf_login_attempts`
--
ALTER TABLE `bf_login_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bf_pegawai`
--
ALTER TABLE `bf_pegawai`
  MODIFY `pg_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `bf_pengajuan`
--
ALTER TABLE `bf_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `bf_permissions`
--
ALTER TABLE `bf_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `bf_roles`
--
ALTER TABLE `bf_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bf_states`
--
ALTER TABLE `bf_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `bf_users`
--
ALTER TABLE `bf_users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bf_user_meta`
--
ALTER TABLE `bf_user_meta`
  MODIFY `meta_id` int(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
