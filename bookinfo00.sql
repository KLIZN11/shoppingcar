-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.45-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 bookinfo 的数据库结构
CREATE DATABASE IF NOT EXISTS `bookinfo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bookinfo`;


-- 导出  表 bookinfo.tb_applicant 结构
CREATE TABLE IF NOT EXISTS `tb_applicant` (
  `APPLICANT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLICANT_EMAIL` varchar(50) NOT NULL,
  `APPLICANT_PWD` varchar(50) NOT NULL,
  `APPLICANT_REGISTDATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`APPLICANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  bookinfo.tb_applicant 的数据：~2 rows (大约)
DELETE FROM `tb_applicant`;
/*!40000 ALTER TABLE `tb_applicant` DISABLE KEYS */;
INSERT INTO `tb_applicant` (`APPLICANT_ID`, `APPLICANT_EMAIL`, `APPLICANT_PWD`, `APPLICANT_REGISTDATE`) VALUES
	(1, '456', '456', '2019-05-28 10:56:03'),
	(5, '123', '123', '2019-05-28 11:28:45');
/*!40000 ALTER TABLE `tb_applicant` ENABLE KEYS */;


-- 导出  表 bookinfo.tb_book 结构
CREATE TABLE IF NOT EXISTS `tb_book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(50) DEFAULT NULL,
  `book_price` varchar(50) DEFAULT NULL,
  `book_writer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  bookinfo.tb_book 的数据：~4 rows (大约)
DELETE FROM `tb_book`;
/*!40000 ALTER TABLE `tb_book` DISABLE KEYS */;
INSERT INTO `tb_book` (`book_id`, `book_name`, `book_price`, `book_writer`) VALUES
	(1, 'JavaWeb技术及应用', '59.5', 'QST青软实训'),
	(2, '概率论与数理统计', '26.1', '韩文忠'),
	(3, '计算机系统安全', '56.1', '李章兵'),
	(4, '大学物理学', '27', '周培勤');
/*!40000 ALTER TABLE `tb_book` ENABLE KEYS */;


-- 导出  表 bookinfo.tb_users 结构
CREATE TABLE IF NOT EXISTS `tb_users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_LOGNAME` varchar(50) DEFAULT NULL,
  `USER_PWD` varchar(50) DEFAULT NULL,
  `USER_REALNAME` varchar(50) DEFAULT NULL,
  `USER_EMAIL` varchar(50) DEFAULT NULL,
  `USER_ROLE` bigint(22) DEFAULT NULL,
  `USER_STATE` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  bookinfo.tb_users 的数据：~3 rows (大约)
DELETE FROM `tb_users`;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` (`USER_ID`, `USER_LOGNAME`, `USER_PWD`, `USER_REALNAME`, `USER_EMAIL`, `USER_ROLE`, `USER_STATE`) VALUES
	(1, 'admin', 'admin', '青软实训', 'admin@test.com', 1, 1),
	(2, 'fengjj', '123456', '冯娟娟', 'fengjj@test.com', 1, 1),
	(3, 'test', '123456', 'test', 'test@test.com', 1, 1);
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
