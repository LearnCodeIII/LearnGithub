-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2019 年 03 月 15 日 10:24
-- 伺服器版本: 10.1.37-MariaDB
-- PHP 版本： 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `movie`
--

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fav_type` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pwd` varchar(255) NOT NULL,
  `pwd_change_d` datetime DEFAULT NULL,
  `pwd_err_c` int(11) DEFAULT NULL,
  `last_login_d` datetime DEFAULT NULL,
  `login_c` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `member`
--

INSERT INTO `member` (`sid`, `name`, `nickname`, `gender`, `age`, `birthday`, `email`, `mobile`, `fav_type`, `avatar`, `join_date`, `pwd`, `pwd_change_d`, `pwd_err_c`, `last_login_d`, `login_c`, `rank`, `permission`) VALUES
(1, '皮卡丘', '皮卡', '男', 10, '2000-01-01', 'pokemon1@mm.com', '0910-000-001', NULL, NULL, '2019-03-14 07:54:31', 'qwe', NULL, NULL, '0000-00-00 00:00:00', 0, 0, '1'),
(2, '小火龍', '火龍', '男', 11, '2000-01-02', 'pokemon2@mm.com', '0910-000-002', NULL, NULL, '2019-03-14 08:06:10', 'qwe', NULL, NULL, NULL, NULL, NULL, '0'),
(3, '傑尼龜', '傑尼', '女', 9, '2000-01-03', 'pokemon3@mm.com', '0910-000-003', NULL, NULL, '2019-03-14 08:06:10', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(4, '妙蛙種子', '種子', '女', 12, '2000-01-04', 'pokemon4@mm.com', '0910-000-004', NULL, NULL, '2019-03-14 08:06:10', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(5, '伊布', '小伊', '男', 10, '2000-01-05', 'pokemon5@mm.com', '0910-000-005', NULL, NULL, '2019-03-14 08:06:10', 'qwe', NULL, NULL, NULL, NULL, NULL, '0'),
(6, '假人1號', '小假1', '女', 1, '2000-01-01', 'fakeman1@fake.com', '0920-000-001', NULL, NULL, '2019-03-14 08:31:07', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(7, '假人2號', '小假2', '女', 2, '2000-01-01', 'fakeman2@fake.com', '0920-000-002', NULL, NULL, '2019-03-14 08:31:07', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(8, '假人3號', '小假3', '女', 3, '2000-01-01', 'fakeman3@fake.com', '0920-000-003', NULL, NULL, '2019-03-14 08:31:07', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(9, '假人4號', '小假4', '女', 4, '2000-01-01', 'fakeman4@fake.com', '0920-000-004', NULL, NULL, '2019-03-14 08:31:07', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(10, '假人5號', '小假5', '男', 5, '2000-01-01', 'fakeman5@fake.com', '0920-000-005', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '0'),
(11, '假人6號', '小假6', '女', 6, '2000-01-01', 'fakeman6@fake.com', '0920-000-006', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(12, '假人7號', '小假7', '女', 7, '2000-01-01', 'fakeman7@fake.com', '0920-000-007', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(13, '假人8號', '小假8', '女', 8, '2000-01-01', 'fakeman8@fake.com', '0920-000-008', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(14, '假人9號', '小假9', '女', 9, '2000-01-01', 'fakeman9@fake.com', '0920-000-009', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(15, '假人10號', '小假10', '男', 10, '2000-01-01', 'fakeman10@fake.com', '0920-000-010', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '0'),
(16, '假人11號', '小假11', '女', 11, '2000-01-01', 'fakeman11@fake.com', '0920-000-011', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(17, '假人12號', '小假12', '女', 12, '2000-01-01', 'fakeman12@fake.com', '0920-000-012', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(18, '假人13號', '小假13', '女', 13, '2000-01-01', 'fakeman13@fake.com', '0920-000-013', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(19, '假人14號', '小假14', '女', 14, '2000-01-01', 'fakeman14@fake.com', '0920-000-014', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(20, '假人15號', '小假15', '男', 15, '2000-01-01', 'fakeman15@fake.com', '0920-000-015', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '0'),
(21, '假人16號', '小假16', '女', 16, '2000-01-01', 'fakeman16@fake.com', '0920-000-016', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(22, '假人17號', '小假17', '女', 17, '2000-01-01', 'fakeman17@fake.com', '0920-000-017', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(23, '假人18號', '小假18', '女', 18, '2000-01-01', 'fakeman18@fake.com', '0920-000-018', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(24, '假人19號', '小假19', '女', 19, '2000-01-01', 'fakeman19@fake.com', '0920-000-019', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(25, '假人20號', '小假20', '男', 20, '2000-01-01', 'fakeman20@fake.com', '0920-000-020', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(26, '假人21號', '小假21', '女', 21, '2000-01-01', 'fakeman21@fake.com', '0920-000-021', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(27, '假人22號', '小假22', '女', 22, '2000-01-01', 'fakeman22@fake.com', '0920-000-022', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(28, '假人23號', '小假23', '女', 23, '2000-01-01', 'fakeman23@fake.com', '0920-000-023', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(29, '假人24號', '小假24', '女', 24, '2000-01-01', 'fakeman24@fake.com', '0920-000-024', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(30, '假人25號', '小假25', '男', 25, '2000-01-01', 'fakeman25@fake.com', '0920-000-025', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(31, '假人26號', '小假26', '女', 26, '2000-01-01', 'fakeman26@fake.com', '0920-000-026', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(32, '假人27號', '小假27', '女', 27, '2000-01-01', 'fakeman27@fake.com', '0920-000-027', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(33, '假人28號', '小假28', '女', 28, '2000-01-01', 'fakeman28@fake.com', '0920-000-028', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(34, '假人29號', '小假29', '女', 29, '2000-01-01', 'fakeman29@fake.com', '0920-000-029', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(35, '假人30號', '小假30', '男', 30, '2000-01-01', 'fakeman30@fake.com', '0920-000-030', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(36, '假人31號', '小假31', '女', 31, '2000-01-01', 'fakeman31@fake.com', '0920-000-031', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(37, '假人32號', '小假32', '女', 32, '2000-01-01', 'fakeman32@fake.com', '0920-000-032', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(38, '假人33號', '小假33', '女', 33, '2000-01-01', 'fakeman33@fake.com', '0920-000-033', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(39, '假人34號', '小假34', '女', 34, '2000-01-01', 'fakeman34@fake.com', '0920-000-034', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(40, '假人35號', '小假35', '男', 35, '2000-01-01', 'fakeman35@fake.com', '0920-000-035', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(41, '假人36號', '小假36', '女', 36, '2000-01-01', 'fakeman36@fake.com', '0920-000-036', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(42, '假人37號', '小假37', '女', 37, '2000-01-01', 'fakeman37@fake.com', '0920-000-037', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(43, '假人38號', '小假38', '女', 38, '2000-01-01', 'fakeman38@fake.com', '0920-000-038', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(44, '假人39號', '小假39', '女', 39, '2000-01-01', 'fakeman39@fake.com', '0920-000-039', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(45, '假人40號', '小假40', '男', 40, '2000-01-01', 'fakeman40@fake.com', '0920-000-040', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(46, '假人41號', '小假41', '女', 41, '2000-01-01', 'fakeman41@fake.com', '0920-000-041', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(47, '假人42號', '小假42', '女', 42, '2000-01-01', 'fakeman42@fake.com', '0920-000-042', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(48, '假人43號', '小假43', '女', 43, '2000-01-01', 'fakeman43@fake.com', '0920-000-043', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(49, '假人44號', '小假44', '女', 44, '2000-01-01', 'fakeman44@fake.com', '0920-000-044', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(50, '假人45號', '小假45', '男', 45, '2000-01-01', 'fakeman45@fake.com', '0920-000-045', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(51, '假人46號', '小假46', '女', 46, '2000-01-01', 'fakeman46@fake.com', '0920-000-046', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(52, '假人47號', '小假47', '女', 47, '2000-01-01', 'fakeman47@fake.com', '0920-000-047', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(53, '假人48號', '小假48', '女', 48, '2000-01-01', 'fakeman48@fake.com', '0920-000-048', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(54, '假人49號', '小假49', '女', 49, '2000-01-01', 'fakeman49@fake.com', '0920-000-049', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(55, '假人50號', '小假50', '男', 50, '2000-01-01', 'fakeman50@fake.com', '0920-000-050', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(56, '假人51號', '小假51', '女', 51, '2000-01-01', 'fakeman51@fake.com', '0920-000-051', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(57, '假人52號', '小假52', '女', 52, '2000-01-01', 'fakeman52@fake.com', '0920-000-052', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(58, '假人53號', '小假53', '女', 53, '2000-01-01', 'fakeman53@fake.com', '0920-000-053', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(59, '假人54號', '小假54', '女', 54, '2000-01-01', 'fakeman54@fake.com', '0920-000-054', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(60, '假人55號', '小假55', '男', 55, '2000-01-01', 'fakeman55@fake.com', '0920-000-055', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(61, '假人56號', '小假56', '女', 56, '2000-01-01', 'fakeman56@fake.com', '0920-000-056', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(62, '假人57號', '小假57', '女', 57, '2000-01-01', 'fakeman57@fake.com', '0920-000-057', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(63, '假人58號', '小假58', '女', 58, '2000-01-01', 'fakeman58@fake.com', '0920-000-058', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(64, '假人59號', '小假59', '女', 59, '2000-01-01', 'fakeman59@fake.com', '0920-000-059', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(65, '假人60號', '小假60', '男', 60, '2000-01-01', 'fakeman60@fake.com', '0920-000-060', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(66, '假人61號', '小假61', '女', 61, '2000-01-01', 'fakeman61@fake.com', '0920-000-061', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(67, '假人62號', '小假62', '女', 62, '2000-01-01', 'fakeman62@fake.com', '0920-000-062', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(68, '假人63號', '小假63', '女', 63, '2000-01-01', 'fakeman63@fake.com', '0920-000-063', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(69, '假人64號', '小假64', '女', 64, '2000-01-01', 'fakeman64@fake.com', '0920-000-064', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(70, '假人65號', '小假65', '男', 65, '2000-01-01', 'fakeman65@fake.com', '0920-000-065', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(71, '假人66號', '小假66', '女', 66, '2000-01-01', 'fakeman66@fake.com', '0920-000-066', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(72, '假人67號', '小假67', '女', 67, '2000-01-01', 'fakeman67@fake.com', '0920-000-067', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(73, '假人68號', '小假68', '女', 68, '2000-01-01', 'fakeman68@fake.com', '0920-000-068', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(74, '假人69號', '小假69', '女', 69, '2000-01-01', 'fakeman69@fake.com', '0920-000-069', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(75, '假人70號', '小假70', '男', 70, '2000-01-01', 'fakeman70@fake.com', '0920-000-070', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(76, '假人71號', '小假71', '女', 71, '2000-01-01', 'fakeman71@fake.com', '0920-000-071', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(77, '假人72號', '小假72', '女', 72, '2000-01-01', 'fakeman72@fake.com', '0920-000-072', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(78, '假人73號', '小假73', '女', 73, '2000-01-01', 'fakeman73@fake.com', '0920-000-073', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(79, '假人74號', '小假74', '女', 74, '2000-01-01', 'fakeman74@fake.com', '0920-000-074', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(80, '假人75號', '小假75', '男', 75, '2000-01-01', 'fakeman75@fake.com', '0920-000-075', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(81, '假人76號', '小假76', '女', 76, '2000-01-01', 'fakeman76@fake.com', '0920-000-076', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(82, '假人77號', '小假77', '女', 77, '2000-01-01', 'fakeman77@fake.com', '0920-000-077', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(83, '假人78號', '小假78', '女', 78, '2000-01-01', 'fakeman78@fake.com', '0920-000-078', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(84, '假人79號', '小假79', '女', 79, '2000-01-01', 'fakeman79@fake.com', '0920-000-079', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(85, '假人80號', '小假80', '男', 80, '2000-01-01', 'fakeman80@fake.com', '0920-000-080', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(86, '假人81號', '小假81', '女', 81, '2000-01-01', 'fakeman81@fake.com', '0920-000-081', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(87, '假人82號', '小假82', '女', 82, '2000-01-01', 'fakeman82@fake.com', '0920-000-082', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(88, '假人83號', '小假83', '女', 83, '2000-01-01', 'fakeman83@fake.com', '0920-000-083', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(89, '假人84號', '小假84', '女', 84, '2000-01-01', 'fakeman84@fake.com', '0920-000-084', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(90, '假人85號', '小假85', '男', 85, '2000-01-01', 'fakeman85@fake.com', '0920-000-085', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(91, '假人86號', '小假86', '女', 86, '2000-01-01', 'fakeman86@fake.com', '0920-000-086', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(92, '假人87號', '小假87', '女', 87, '2000-01-01', 'fakeman87@fake.com', '0920-000-087', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(93, '假人88號', '小假88', '女', 88, '2000-01-01', 'fakeman88@fake.com', '0920-000-088', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(94, '假人89號', '小假89', '女', 89, '2000-01-01', 'fakeman89@fake.com', '0920-000-089', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(95, '假人90號', '小假90', '男', 90, '2000-01-01', 'fakeman90@fake.com', '0920-000-090', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(96, '假人91號', '小假91', '女', 91, '2000-01-01', 'fakeman91@fake.com', '0920-000-091', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(97, '假人92號', '小假92', '女', 92, '2000-01-01', 'fakeman92@fake.com', '0920-000-092', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(98, '假人93號', '小假93', '女', 93, '2000-01-01', 'fakeman93@fake.com', '0920-000-093', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(99, '假人94號', '小假94', '女', 94, '2000-01-01', 'fakeman94@fake.com', '0920-000-094', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(100, '假人95號', '小假95', '男', 95, '2000-01-01', 'fakeman95@fake.com', '0920-000-095', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(101, '假人96號', '小假96', '女', 96, '2000-01-01', 'fakeman96@fake.com', '0920-000-096', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(102, '假人97號', '小假97', '女', 97, '2000-01-01', 'fakeman97@fake.com', '0920-000-097', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(103, '假人98號', '小假98', '女', 98, '2000-01-01', 'fakeman98@fake.com', '0920-000-098', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1'),
(104, '假人99號', '小假99', '女', 99, '2000-01-01', 'fakeman99@fake.com', '0920-000-099', NULL, NULL, '2019-03-14 08:31:08', 'qwe', NULL, NULL, NULL, NULL, NULL, '1');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nickname` (`nickname`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
