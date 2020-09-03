-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.16 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 db_database10 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_database10` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_database10`;

-- 导出  过程 db_database10.findAllBook 结构
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `findAllBook`()
BEGIN
  SELECT * FROM tb_books order by id desc;
END//
DELIMITER ;

-- 导出  表 db_database10.room 结构
CREATE TABLE IF NOT EXISTS `room` (
  `roomID` int(255) NOT NULL AUTO_INCREMENT COMMENT '教室号自增',
  `roomName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `roomEven` varchar(255) DEFAULT NULL COMMENT '申请教室原因',
  `roomStart` bigint(255) DEFAULT NULL COMMENT '申请教室的开始时间',
  `roomEnd` bigint(255) DEFAULT NULL COMMENT '申请教室的结束时间',
  PRIMARY KEY (`roomID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- 正在导出表  db_database10.room 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
REPLACE INTO `room` (`roomID`, `roomName`, `roomEven`, `roomStart`, `roomEnd`) VALUES
	(59, '1314', '222', 1577827200000, 1577830200000),
	(64, '456', '222', 1577827200000, 1577830200000),
	(67, '520', '222', 1577827200000, 1577830200000),
	(68, '444', NULL, 0, 0);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;

-- 导出  表 db_database10.tb_applicant 结构
CREATE TABLE IF NOT EXISTS `tb_applicant` (
  `APPLICANT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLICANT_EMAIL` varchar(50) NOT NULL,
  `APPLICANT_PWD` varchar(50) NOT NULL,
  `APPLICANT_REGISTDATE` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`APPLICANT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12149 DEFAULT CHARSET=utf8;

-- 正在导出表  db_database10.tb_applicant 的数据：~25 rows (大约)
/*!40000 ALTER TABLE `tb_applicant` DISABLE KEYS */;
REPLACE INTO `tb_applicant` (`APPLICANT_ID`, `APPLICANT_EMAIL`, `APPLICANT_PWD`, `APPLICANT_REGISTDATE`) VALUES
	(0, 'root', 'root', '2020-06-04 18:04:53'),
	(14, 'werwer@qq.com', '6666', '2019-05-24 23:44:33'),
	(15, '65456', '45656', '2019-05-25 23:09:28'),
	(16, 'sfjgwekj', '9999', '2019-05-26 12:04:38'),
	(17, '11111', '11111', '2019-05-27 19:27:59'),
	(18, 'wqdwqdw@qq.com', '2222', '2019-05-27 22:34:19'),
	(19, '2323@qq.com', '123', '2019-05-28 10:39:08'),
	(20, 'AAAAAA', '66666', '2020-05-20 17:06:54'),
	(21, '666666', '666666', '2020-05-25 06:45:02'),
	(22, 'asdf', 'sdf', '2020-05-25 07:02:50'),
	(23, 'zxc', '123', '2020-05-31 15:45:31'),
	(26, '', '', '2020-06-04 19:45:18'),
	(27, 'asdf111', 'asd', '2020-06-04 19:45:58'),
	(28, 'ffffff', 'ttt', '2020-06-04 19:46:39'),
	(29, 'fffff', '', '2020-06-04 19:48:08'),
	(30, '1', '1', '2020-06-04 21:35:21'),
	(12138, 'admin', 'root', '2020-06-04 21:13:38'),
	(12140, '6666661', '56', '2020-06-07 00:51:40'),
	(12141, '89789789', '78978', '2020-06-08 01:50:40'),
	(12142, '0000', '0000', '2020-06-08 02:17:11'),
	(12143, 'ï¼', '!', '2020-06-08 02:23:25'),
	(12144, '12', '11', '2020-06-08 15:28:39'),
	(12145, '258', '258', '2020-06-09 18:51:38'),
	(12146, '8889', '1', '2020-06-09 20:28:33'),
	(12147, '25147@qq.com', '123456', '2020-06-10 09:39:19'),
	(12148, '77@qq.com', '11', '2020-06-10 10:27:15');
/*!40000 ALTER TABLE `tb_applicant` ENABLE KEYS */;

-- 导出  表 db_database10.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `userPwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `userPower` int(255) NOT NULL COMMENT '用户权限',
  PRIMARY KEY (`userID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- 正在导出表  db_database10.user 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`userID`, `userName`, `userPwd`, `userPower`) VALUES
	(1, 'root', 'root', 0),
	(2, '123', '123', 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
