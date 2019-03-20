-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2019 年 03 月 20 日 02:50
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
-- 資料庫： `uploadding`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cinema_tk`
--

CREATE TABLE `cinema_tk` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `cinema_tk`
--

INSERT INTO `cinema_tk` (`sid`, `name`, `type`, `price`) VALUES
(1, '光點台北', '全票', 260),
(2, '光點台北', '優待票', 240),
(3, '光點台北', '早場優惠票', 200),
(4, '光點台北', '會員票', 200),
(5, '光點台北', '敬老/愛心票', 130),
(6, '光點華山', '全票', 270),
(7, '光點華山', '優待票', 250),
(8, '光點華山', '早場優惠票', 200),
(9, '光點華山', '會員', 200),
(10, '光點華山', '敬老/愛心票', 135);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `cinema_tk`
--
ALTER TABLE `cinema_tk`
  ADD PRIMARY KEY (`sid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `cinema_tk`
--
ALTER TABLE `cinema_tk`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
