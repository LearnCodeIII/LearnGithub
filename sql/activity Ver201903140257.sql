-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2019 年 03 月 14 日 07:55
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
-- 資料表結構 `activity`
--

CREATE TABLE `activity` (
  `sid` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '活動名稱',
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '活動內容',
  `dateStart` date NOT NULL COMMENT '活動開始日期',
  `dateEnd` date NOT NULL COMMENT '活動結束日期',
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '活動圖片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `activity`
--

INSERT INTO `activity` (`sid`, `name`, `content`, `dateStart`, `dateEnd`, `picture`) VALUES
(1, '【朝代大戲院】看電影送冷飲！', '來朝代大戲院看電影，一張門票即可兌換中杯可樂乙杯！', '2018-02-03', '2019-06-30', 'https://picsum.photos/200/150/?random'),
(2, '【光點之家】光點會員招募！', '辦卡優惠價NT$5OO，可享【光點台北】、 【光點華山】兩館購票優惠!', '2018-02-03', '2019-06-30', 'https://picsum.photos/150/100/?random'),
(3, '【台北電影節】實習生招募！', '第二十一屆台北電影節節目組早鳥實習生招募開始！', '2018-02-03', '2019-06-30', 'https://picsum.photos/150/150/?random'),
(5, '【朝代大戲院】看電影送冷飲！', '來朝代大戲院看電影，一張門票即可兌換中杯可樂乙杯！', '2018-02-03', '2019-06-30', 'https://picsum.photos/200/150/?random'),
(6, '【光點之家】光點會員招募！', '辦卡優惠價NT$5OO，可享【光點台北】、 【光點華山】兩館購票優惠，【光點生活】、【光點珈琲時光】消費優惠，並可獲得 YIRI LIVING							提供當月會員禮。（如右圖，數量有限，送完為止！', '2018-02-03', '2019-06-30', 'https://picsum.photos/150/100/?random'),
(7, '【台北電影節】實習生招募！', '第二十一屆台北電影節節目組早鳥實習生招募開始！', '2018-02-03', '2019-06-30', 'https://picsum.photos/150/150/?random'),
(9, '【朝代大戲院】看電影送冷飲！', '來朝代大戲院看電影，一張門票即可兌換中杯可樂乙杯！', '2018-02-03', '2019-06-30', 'https://picsum.photos/200/150/?random'),
(10, '【光點之家】光點會員招募！', '辦卡優惠價NT$5OO，可享【光點台北】、 【光點華山】兩館購票優惠，【光點生活】、【光點珈琲時光】消費優惠，並可獲得 YIRI LIVING							提供當月會員禮。（如右圖，數量有限，送完為止！', '2018-02-03', '2019-06-30', 'https://picsum.photos/150/100/?random'),
(11, '【台北電影節】實習生招募！', '第二十一屆台北電影節節目組早鳥實習生招募開始！', '2018-02-03', '2019-06-30', 'https://picsum.photos/150/150/?random'),
(13, '【朝代大戲院】看電影送冷飲！', '來朝代大戲院看電影，一張門票即可兌換中杯可樂乙杯！', '2018-02-03', '2019-06-30', 'https://picsum.photos/200/150/?random'),
(14, '【光點之家】光點會員招募！', '辦卡優惠價NT$5OO，可享【光點台北】、 【光點華山】兩館購票優惠，【光點生活】、【光點珈琲時光】消費優惠，並可獲得 YIRI LIVING							提供當月會員禮。（如右圖，數量有限，送完為止！', '2018-02-03', '2019-06-30', 'https://picsum.photos/150/100/?random'),
(15, '【台北電影節】實習生招募！', '第二十一屆台北電影節節目組早鳥實習生招募開始！', '2018-02-03', '2019-06-30', 'https://picsum.photos/150/150/?random');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`sid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `activity`
--
ALTER TABLE `activity`
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
