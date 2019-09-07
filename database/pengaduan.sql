/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.6.14 : Database - pengaduan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pengaduan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pengaduan`;

/*Table structure for table `bf_activities` */

DROP TABLE IF EXISTS `bf_activities`;

CREATE TABLE `bf_activities` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `activity` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `deleted` tinyint(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;

/*Table structure for table `bf_countries` */

DROP TABLE IF EXISTS `bf_countries`;

CREATE TABLE `bf_countries` (
  `iso` char(2) NOT NULL DEFAULT 'US',
  `name` varchar(80) NOT NULL,
  `printable_name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`iso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `bf_email_queue` */

DROP TABLE IF EXISTS `bf_email_queue`;

CREATE TABLE `bf_email_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_email` varchar(128) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `alt_message` text,
  `max_attempts` int(11) NOT NULL DEFAULT '3',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `success` tinyint(1) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `last_attempt` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `bf_login_attempts` */

DROP TABLE IF EXISTS `bf_login_attempts`;

CREATE TABLE `bf_login_attempts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) NOT NULL,
  `login` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `bf_ms_skpd` */

DROP TABLE IF EXISTS `bf_ms_skpd`;

CREATE TABLE `bf_ms_skpd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_skpd` varchar(30) NOT NULL,
  `nama_skpd` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_tlp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `nama_pimpinan` varchar(100) DEFAULT NULL,
  `nip_pimpinan` varchar(25) DEFAULT NULL,
  `pejabat` enum('Badan/Dinas/Kantor','Camat','Sekretaris','Bidang','Bagian') DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

/*Table structure for table `bf_pengguna` */

DROP TABLE IF EXISTS `bf_pengguna`;

CREATE TABLE `bf_pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `bf_permissions` */

DROP TABLE IF EXISTS `bf_permissions`;

CREATE TABLE `bf_permissions` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

/*Table structure for table `bf_role_permissions` */

DROP TABLE IF EXISTS `bf_role_permissions`;

CREATE TABLE `bf_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `bf_roles` */

DROP TABLE IF EXISTS `bf_roles`;

CREATE TABLE `bf_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  `login_destination` varchar(255) NOT NULL DEFAULT '/',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `default_context` varchar(255) NOT NULL DEFAULT 'content',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Table structure for table `bf_schema_version` */

DROP TABLE IF EXISTS `bf_schema_version`;

CREATE TABLE `bf_schema_version` (
  `type` varchar(40) NOT NULL,
  `version` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `bf_sessions` */

DROP TABLE IF EXISTS `bf_sessions`;

CREATE TABLE `bf_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `bf_settings` */

DROP TABLE IF EXISTS `bf_settings`;

CREATE TABLE `bf_settings` (
  `name` varchar(30) NOT NULL,
  `module` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `bf_states` */

DROP TABLE IF EXISTS `bf_states`;

CREATE TABLE `bf_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `abbrev` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

/*Table structure for table `bf_tb_aduan` */

DROP TABLE IF EXISTS `bf_tb_aduan`;

CREATE TABLE `bf_tb_aduan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_skpd` int(4) NOT NULL,
  `id_user` int(4) NOT NULL,
  `id_user_respon` int(4) DEFAULT NULL,
  `id_user_selesai` int(4) DEFAULT NULL,
  `status` smallint(2) NOT NULL DEFAULT '0' COMMENT '0 lapor, 1 proses, 2 selesai',
  `aduan` text NOT NULL,
  `respon` text COMMENT 'jawaban dari aduan',
  `keterangan` text COMMENT 'penyelesaian',
  `flag_lapor` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'laporan pengaduan',
  `flag_proses` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 belum, 1 diproses',
  `flag_selesai` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 belum, 1 selesai',
  `view` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 belum, 1 sudah',
  `view_skpd` tinyint(1) DEFAULT '0' COMMENT '0 belum, 1 sudah',
  `view_skpd_end` tinyint(1) DEFAULT '0' COMMENT '0 belum, 1 sudah',
  `address` varchar(20) NOT NULL COMMENT 'IP pengadu',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'waktu aduan',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time_respon` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'waktu respon',
  `time_selesai` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'waktu selesai',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Table structure for table `bf_user_cookies` */

DROP TABLE IF EXISTS `bf_user_cookies`;

CREATE TABLE `bf_user_cookies` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(128) NOT NULL,
  `created_on` datetime NOT NULL,
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `bf_user_meta` */

DROP TABLE IF EXISTS `bf_user_meta`;

CREATE TABLE `bf_user_meta` (
  `meta_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

/*Table structure for table `bf_users` */

DROP TABLE IF EXISTS `bf_users`;

CREATE TABLE `bf_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `id_skpd` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Table structure for table `s_skpd` */

DROP TABLE IF EXISTS `s_skpd`;

CREATE TABLE `s_skpd` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kota` bigint(20) NOT NULL,
  `kelompok` int(11) NOT NULL,
  `kode_urusan` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `kode_skpd` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nama_skpd` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `no_telepon` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jenis` int(1) NOT NULL DEFAULT '1',
  `nama_pimpinan_skpd` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nip_kepala_skpd` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pejabat` enum('Badan/Dinas/Kantor','Camat','Sekretaris','Bidang','Bagian') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Badan/Dinas/Kantor',
  `jabatan` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pangkat` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(11) NOT NULL,
  `rumpun` enum('SOSBUD','EKONOMI','INFRASTRUKTUR','SEMUA','') COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag_penghasil` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
