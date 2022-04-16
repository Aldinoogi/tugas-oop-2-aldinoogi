-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for tugasoop2
CREATE DATABASE IF NOT EXISTS `tugasoop2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tugasoop2`;

-- Dumping structure for table tugasoop2.tbl_kabkota
CREATE TABLE IF NOT EXISTS `tbl_kabkota` (
  `id_kabkota` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kabkota` varchar(26) NOT NULL,
  `nama_kabkota` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `kode_provinsi` varchar(26) NOT NULL,
  PRIMARY KEY (`id_kabkota`) USING BTREE,
  UNIQUE KEY `kode_kabkota` (`kode_kabkota`) USING BTREE,
  KEY `kode_provinsi` (`kode_provinsi`),
  CONSTRAINT `tbl_kabkota_ibfk_1` FOREIGN KEY (`kode_provinsi`) REFERENCES `tbl_provinsi` (`kode_provinsi`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tugasoop2.tbl_kabkota: ~32 rows (approximately)
/*!40000 ALTER TABLE `tbl_kabkota` DISABLE KEYS */;
INSERT INTO `tbl_kabkota` (`id_kabkota`, `kode_kabkota`, `nama_kabkota`, `created_at`, `update_at`, `kode_provinsi`) VALUES
	(101, 'KSU', 'Kabupaten Adm. Kepulauan Seribu', '2022-04-10 20:10:04', '2022-04-10 20:00:00', 'ID-JK'),
	(102, 'TNA', 'Kota Adm. Jakarta Pusat', '2022-04-10 20:10:00', '2022-04-10 20:00:00', 'ID-JK'),
	(103, 'TJP', 'Kota Adm. Jakarta Utara', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JK'),
	(104, 'GGP', 'Kota Adm. Jakarta Barat', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JK'),
	(105, 'KYB', 'Kota Adm. Jakarta Selatan', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JK'),
	(106, 'CKG', 'Kota Adm. Jakarta Timur', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JK'),
	(111, 'CBI', 'Kabupaten Bogor', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(112, 'SBM', 'Kabupaten Sukabumi', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(113, 'CJR', 'Kabupaten Cianjur', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(114, 'SOR', 'Kabupaten Bandung', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(115, 'GRT', 'Kabupaten Garut', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(116, 'SPA', 'Kabupaten Tasikmalaya', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(117, 'CMS', 'Kabupaten Ciamis', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(118, 'KNG', 'Kabupaten Kuningan', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(119, 'SBR', 'Kabupaten Cirebon', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(120, 'MJL', 'Kabupaten Majalengka', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(121, 'SMD', 'Kabupaten Sumedang', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(122, 'IDM', 'Kabupaten Indramayu', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(123, 'SNG', 'Kabupaten Subang', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(124, 'PWK', 'Kabupaten Purwakarta', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(125, 'KWG', 'Kabupaten Karawang', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(126, 'CKR', 'Kabupaten Bekasi', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(127, 'NPH', 'Kabupaten Bandung Barat', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(128, 'BGR', 'Kota Bogor', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(129, 'SKB', 'Kota Sukabumi', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(130, 'BDG', 'Kota Bandung', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(131, 'CBN', 'Kota Cirebon', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(132, 'BKS', 'Kota Bekasi', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(133, 'DPK', 'Kota Depok', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(134, 'CMH', 'Kota Cimahi', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(135, 'TSM', 'Kota Tasikmalaya', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB'),
	(137, 'BJR', 'Kota Banjar', '2022-04-10 20:00:00', '2022-04-10 20:00:00', 'ID-JB');
/*!40000 ALTER TABLE `tbl_kabkota` ENABLE KEYS */;

-- Dumping structure for table tugasoop2.tbl_provinsi
CREATE TABLE IF NOT EXISTS `tbl_provinsi` (
  `id_provinsi` int(11) NOT NULL AUTO_INCREMENT,
  `kode_provinsi` varchar(26) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_provinsi`) USING BTREE,
  UNIQUE KEY `kode_provinsi` (`kode_provinsi`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tugasoop2.tbl_provinsi: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbl_provinsi` DISABLE KEYS */;
INSERT INTO `tbl_provinsi` (`id_provinsi`, `kode_provinsi`, `nama_provinsi`, `created_at`, `update_at`) VALUES
	(1, 'ID-JK', 'DKI Jakarta', '2022-04-10 20:00:00', '2022-04-10 20:00:00'),
	(2, 'ID-JB', 'Jawa Barat', '2022-04-10 20:00:00', '2022-04-16 13:40:53');
/*!40000 ALTER TABLE `tbl_provinsi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
