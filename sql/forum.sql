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
-- 資料庫： `movie`
--

-- --------------------------------------------------------

--
-- 資料表結構 `forum`
--

CREATE TABLE `forum` (
  `sid` int(11) NOT NULL COMMENT '文章編號',
  `headline` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '文章標題',
  `review` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '影評',
  `i_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '發布日期',
  `w_date` date NOT NULL COMMENT '觀看日期',
  `w_cinema` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '觀看戲院',
  `film_rate` int(11) NOT NULL COMMENT '電影評分',
  `fav` tinyint(1) NOT NULL COMMENT '我的最愛',
  `intro_pic` varchar(255) NOT NULL COMMENT '介紹圖片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表的匯出資料 `forum`
--

INSERT INTO `forum` (`sid`, `headline`, `review`, `i_date`, `w_date`, `w_cinema`, `film_rate`, `fav`, `intro_pic`) VALUES
(257, '111111', '<p>1111</p>', '2019-03-20 01:48:34', '2019-01-01', '11', 2, 0, '97b6b059620e8ff74a9258dc6e6be83e18f175a1.jpg'),
(256, '1111111111', '<p>111</p>', '2019-03-20 01:47:21', '2019-01-01', '11', 1, 1, '66f67f2eb414f0d68b979d04eebbfee760de46b7.jpg'),
(255, '111111', '<p>222222222</p>', '2019-03-20 01:37:02', '2019-01-01', '11111111', 2, 1, 'e9dd3cc32f229b35ec628b12d5f6ebbb8340ba6c.jpg'),
(254, '33311', '<p>33333333</p>', '2019-03-19 12:43:46', '2019-01-01', '22', 2, 1, '030adeca41de46f771b97bdb094831a7bf17a2cb.png'),
(252, '1111', '<p>111111111111</p>', '2019-03-19 11:53:32', '2019-01-01', '1111111', 1, 1, 'd0a1542f6347ef30e6bd2d3948a15a5ea0d1668a.jpg'),
(251, '333333333333', '<p>3333333333</p>', '2019-03-19 11:25:39', '2019-01-01', '3333', 2, 1, ''),
(250, '1411', '<p>111111111</p>', '2019-03-19 11:23:48', '2019-01-01', '22222', 1, 1, '38cca8fada3503088734ff09d989b98881384c8e.jpg'),
(249, '111111', '<p>1111111</p>', '2019-03-19 10:33:49', '2019-01-01', '111', 1, 1, '7598b1ccc28b5cb00acfca5ae6d32dc34fb5acb5.jpg'),
(248, '1411', '<p>12222222222</p>', '2019-03-19 08:16:58', '2019-01-01', '3333', 4, 1, 'b14c164a66162f2ad94c42cd0ff5ff68773df469.png'),
(247, '1411', '<p>12222222222</p>', '2019-03-19 08:14:30', '2019-01-01', '3333', 4, 1, '2430a7208a1ce34de0ac9c99bf7607a16c25f4e7.jpg'),
(246, '1411', '<p>12222222222</p>', '2019-03-19 08:14:30', '2019-01-01', '3333', 4, 1, '74310f3bd7be38d48101ffe4ae13404789ed0b54.jpg'),
(245, '1411', '<p>12222222222</p>', '2019-03-19 08:14:27', '2019-01-01', '3333', 4, 1, '746e5872f1974e384ec525a898448f0e06d25561.jpg'),
(244, '111111', '<p>111111111</p>', '2019-03-19 08:12:46', '2019-01-01', '111', 3, 1, 'e7f038a5db16934b7410cf0bc0fd2678ffc5b209.jpg'),
(243, '111111', '<p>111111111</p>', '2019-03-19 08:12:39', '2019-01-01', '111', 3, 1, '5121ebcb867b8e62e1a7c845af5cdc096243fca8.jpg'),
(242, '111111', '<p>111111111</p>', '2019-03-19 08:12:18', '2019-01-01', '111', 3, 1, '88e0ad450f43c787e27cafeb476f4d04571547d7.png'),
(241, '111111', '<p>111111111</p>', '2019-03-19 08:12:17', '2019-01-01', '111', 3, 1, '1e21ad90ede745e6696bf8153ed6c1540f078d14.png'),
(240, '111111', '<p>111111111</p>', '2019-03-19 08:12:14', '2019-01-01', '111', 3, 1, '87fa0c810a68bec1b7463b04167227c5fec53484.png'),
(239, '111111', '<p>111111111</p>', '2019-03-19 08:12:09', '2019-01-01', '111', 3, 1, '6669e98fdc12957b9800754d3b741bded23f9af5.png'),
(238, '22222', '<p>11111</p>', '2019-03-19 08:10:42', '2019-01-01', '1111', 1, 1, '7cf814031d24fefa809546c4c810fe5c1d15f644.jpg'),
(237, '111111', '<p>11111</p>', '2019-03-19 08:10:27', '2019-01-01', '1111', 1, 1, '6328c48d2bacfb94a79cd7e937a8c998265419a1.jpg'),
(236, '111111', '<p>11111</p>', '2019-03-19 08:10:22', '2019-01-01', '1111', 1, 1, '69929457d7a02852ef3ae792eaefe977b40e0270.jpg'),
(235, '11111111', '<p>8888888888</p>', '2019-03-19 08:09:52', '2019-01-01', '5555555', 7, 0, '038eff6ca70450ff30528dba9d8c9151610b513c.png'),
(234, '11111111', '<p>8888888888</p>', '2019-03-19 08:09:37', '2019-01-01', '5555555', 7, 0, 'c2bc3784d85be1763a88efdba89cecbb3cfbcb49.png'),
(233, '11111111', '<p>8888888888</p>', '2019-03-19 07:51:49', '2019-01-01', '5555555', 7, 0, '7e704465597b41bbe72cca0f7f7b10c6bd7ffd3c.png'),
(232, '11111111', '<p>8888888888</p>', '2019-03-19 07:51:38', '2019-01-01', '5555555', 7, 0, '120eebed0570f15974d16f8a6d7d7be528a6523e.png');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`sid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `forum`
--
ALTER TABLE `forum`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章編號', AUTO_INCREMENT=258;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
