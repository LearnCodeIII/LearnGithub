-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2019 年 03 月 20 日 02:49
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
-- 資料表結構 `ad`
--

CREATE TABLE `ad` (
  `sn` int(11) NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_number` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_poc` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_mobile` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `contract_budget` varchar(255) CHARACTER SET utf8 NOT NULL,
  `contract_start_date` date NOT NULL,
  `contract_end_date` date NOT NULL,
  `ad_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ad_pic` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ad_link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ad_link_count` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ad_start_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ad_end_time` char(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

--
-- 資料表的匯出資料 `ad`
--

INSERT INTO `ad` (`sn`, `client_name`, `client_number`, `client_address`, `client_poc`, `client_mobile`, `client_email`, `contract_budget`, `contract_start_date`, `contract_end_date`, `ad_name`, `ad_pic`, `ad_link`, `ad_link_count`, `ad_start_time`, `ad_end_time`) VALUES
(1, 'TATA Ltd. 1', '01', 'Earth1', 'Ms. 1', '09861', 'Test1@tcs.com', 'TWD1', '2020-01-01', '2050-01-01', 'Fun1', 'Pic1', 'Link1', 'Count1', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(2, 'TATA Ltd. 2', '02', 'Earth2', 'Ms. 2', '09862', 'Test2@tcs.com', 'TWD2', '2020-01-01', '2050-01-01', 'Fun2', 'Pic2', 'Link2', 'Count2', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(3, 'TATA Ltd. 3', '03', 'Earth3', 'Ms. 3', '09863', 'Test3@tcs.com', 'TWD3', '2020-01-01', '2050-01-01', 'Fun3', 'Pic3', 'Link3', 'Count3', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(4, 'TATA Ltd. 4', '04', 'Earth4', 'Ms. 4', '09864', 'Test4@tcs.com', 'TWD4', '2020-01-01', '2050-01-01', 'Fun4', 'Pic4', 'Link4', 'Count4', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(5, 'TATA Ltd. 5', '05', 'Earth5', 'Ms. 5', '09865', 'Test5@tcs.com', 'TWD5', '2020-01-01', '2050-01-01', 'Fun5', 'Pic5', 'Link5', 'Count5', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(6, 'TATA Ltd. 6', '06', 'Earth6', 'Ms. 6', '09866', 'Test6@tcs.com', 'TWD6', '2020-01-01', '2050-01-01', 'Fun6', 'Pic6', 'Link6', 'Count6', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(7, 'TATA Ltd. 7', '07', 'Earth7', 'Ms. 7', '09867', 'Test7@tcs.com', 'TWD7', '2020-01-01', '2050-01-01', 'Fun7', 'Pic7', 'Link7', 'Count7', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(8, 'TATA Ltd. 8', '08', 'Earth8', 'Ms. 8', '09868', 'Test8@tcs.com', 'TWD8', '2020-01-01', '2050-01-01', 'Fun8', 'Pic8', 'Link8', 'Count8', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(9, 'TATA Ltd. 9', '09', 'Earth9', 'Ms. 9', '09869', 'Test9@tcs.com', 'TWD9', '2020-01-01', '2050-01-01', 'Fun9', 'Pic9', 'Link9', 'Count9', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(10, 'TATA Ltd. 10', '010', 'Earth10', 'Ms. 10', '098610', 'Test10@tcs.com', 'TWD10', '2020-01-01', '2050-01-01', 'Fun10', 'Pic10', 'Link10', 'Count10', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(11, 'TATA Ltd. 11', '011', 'Earth11', 'Ms. 11', '098611', 'Test11@tcs.com', 'TWD11', '2020-01-01', '2050-01-01', 'Fun11', 'Pic11', 'Link11', 'Count11', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(12, 'TATA Ltd. 12', '012', 'Earth12', 'Ms. 12', '098612', 'Test12@tcs.com', 'TWD12', '2020-01-01', '2050-01-01', 'Fun12', 'Pic12', 'Link12', 'Count12', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(13, 'TATA Ltd. 13', '013', 'Earth13', 'Ms. 13', '098613', 'Test13@tcs.com', 'TWD13', '2020-01-01', '2050-01-01', 'Fun13', 'Pic13', 'Link13', 'Count13', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(14, 'TATA Ltd. 14', '014', 'Earth14', 'Ms. 14', '098614', 'Test14@tcs.com', 'TWD14', '2020-01-01', '2050-01-01', 'Fun14', 'Pic14', 'Link14', 'Count14', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(15, 'TATA Ltd. 15', '015', 'Earth15', 'Ms. 15', '098615', 'Test15@tcs.com', 'TWD15', '2020-01-01', '2050-01-01', 'Fun15', 'Pic15', 'Link15', 'Count15', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(16, 'TATA Ltd. 16', '016', 'Earth16', 'Ms. 16', '098616', 'Test16@tcs.com', 'TWD16', '2020-01-01', '2050-01-01', 'Fun16', 'Pic16', 'Link16', 'Count16', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(17, 'TATA Ltd. 17', '017', 'Earth17', 'Ms. 17', '098617', 'Test17@tcs.com', 'TWD17', '2020-01-01', '2050-01-01', 'Fun17', 'Pic17', 'Link17', 'Count17', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(18, 'TATA Ltd. 18', '018', 'Earth18', 'Ms. 18', '098618', 'Test18@tcs.com', 'TWD18', '2020-01-01', '2050-01-01', 'Fun18', 'Pic18', 'Link18', 'Count18', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(19, 'TATA Ltd. 19', '019', 'Earth19', 'Ms. 19', '098619', 'Test19@tcs.com', 'TWD19', '2020-01-01', '2050-01-01', 'Fun19', 'Pic19', 'Link19', 'Count19', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(20, 'TATA Ltd. 20', '020', 'Earth20', 'Ms. 20', '098620', 'Test20@tcs.com', 'TWD20', '2020-01-01', '2050-01-01', 'Fun20', 'Pic20', 'Link20', 'Count20', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(21, 'TATA Ltd. 21', '021', 'Earth21', 'Ms. 21', '098621', 'Test21@tcs.com', 'TWD21', '2020-01-01', '2050-01-01', 'Fun21', 'Pic21', 'Link21', 'Count21', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(22, 'TATA Ltd. 22', '022', 'Earth22', 'Ms. 22', '098622', 'Test22@tcs.com', 'TWD22', '2020-01-01', '2050-01-01', 'Fun22', 'Pic22', 'Link22', 'Count22', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(23, 'TATA Ltd. 23', '023', 'Earth23', 'Ms. 23', '098623', 'Test23@tcs.com', 'TWD23', '2020-01-01', '2050-01-01', 'Fun23', 'Pic23', 'Link23', 'Count23', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(24, 'TATA Ltd. 24', '024', 'Earth24', 'Ms. 24', '098624', 'Test24@tcs.com', 'TWD24', '2020-01-01', '2050-01-01', 'Fun24', 'Pic24', 'Link24', 'Count24', '2020-01-01 00:00:00', '0000-00-00 00:00:00'),
(25, 'TATA Ltd. 25', '025', 'Earth25', 'Ms. 25', '098625', 'Test25@tcs.com', 'TWD25', '2020-01-01', '2050-01-01', 'Fun25', 'Pic25', 'Link25', 'Count25', '2020-01-01 00:00:00', '0000-00-00 00:00:00');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`sn`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `ad`
--
ALTER TABLE `ad`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
