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
-- 資料庫： `uploadding`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cinema`
--

CREATE TABLE `cinema` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `taxID` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `cinema`
--

INSERT INTO `cinema` (`sid`, `name`, `img`, `taxID`, `phone`, `address`, `account`, `password`, `intro`) VALUES
(137, '光點台北', '/images/cinema/spot_taipei.png', '28468385', '02-2511-7786', '台北市中山區中山北路二段18號', '28468385', '12345678', '從民國68年到民國86年的十八年間，台北之家這棟建築物處於荒煙蔓草中，閒置多時，成為第三級古蹟後，為妥善維護古蹟空間，由台北市文化局疾呼奔走，經台積電文教基金會贊助新台幣六千萬元，將建築物本體修復後，委託由侯孝賢導演擔任理事長的【台灣電影文化協會】經營。經各方審慎規劃後，決定將其活化為以電影文化為主的藝文空間，本建築物定名為「台北之家」，並於民國91年11月10日正式開館。'),
(138, '光點華山', '/images/cinema/spot_huashan.png', '28468385', '02-2394-0622', '台北市中正區八德路一段1號', 'spothuashan', '12345678', '光點華山電影館,位於華山文創園區中六館，原為酒廠再製酒包裝室，1996年由文化部規劃指導，改建為電影館，並由侯孝賢導演領軍之團隊「台灣電影文化協會」經營管理，於2012年11月正式開幕，為全國首座國家級藝術電影館。整館空間保留舊建築結構並結合新的創意元素，為老屋新力之創新展現。'),
(139, '朝代大戲院', '/images/cinema/dynasty.jpg', '86138031', '02-25571300', '台北市民權西路136號4樓', 'dynasty', '12345678', '朝代戲院自1991年起便坐落於台北市民權西路台北橋下現址，為大同區唯一首輪戲院。1997年開始，由現任許經理接棒經營。\r\n\r\n體認到當時首輪電影市場的難以親近，許經理為了能讓大家感受電影的魅力、享受看電影，決定將電影院改設成二輪戲院，讓電影票價成為即便是學生也不會有壓力的負擔，「DON’T MISS IT TWICE」更成為了當時工作忙碌的人們踏進電影院的理由。\r\n\r\n2012年，重新整修完畢的朝代戲院以「3D數位 美食 新樂園」為號召，除了帶來了空間上的新穎改變，更引進了數位3D播放技術，成為了全台二輪'),
(140, '湳山戲院', '/images/cinema/nashan.jpg', '04920795', '0227023130', '台北市大安區通化街24巷1號', 'nashan', '12345678', ''),
(141, 'Spacebar Room 文青不挑片', '/images/cinema/文青不挑片2.jpg', '54358027', '02-2738-5660', '110 台北市信義區和平東路三段291號', 'spacebarroom', '12345678', '鄰近六張犁捷運站的影像工作室 Spacebar Studio，到了週五晚上搖身一變成為「文青不挑片」的聚會所，吸引許多電影愛好者定時上門拜訪。Spacebar Studio 的 Mossy 透露，本來只是公司的親朋好友們下班後在辦公空間地下室舉辦的電影小聚，卻因為有設立 Facebook 公開的活動頁面而廣為人知，逐漸變成每週一次、對外開放的觀影活動。'),
(142, '府中15新北紀錄片放映院', '/images/cinema/introduction FZ15 S.jpg', '12345678', '022968-3600', '22055新北市板橋區府中路15號', 'fzfifteen', '12345678', '為了培養紀錄片觀影人口、建立紀錄片工作者發表平台，新北市政府於100年12月3日啟用全國第一個以紀錄片為主題放映的場地—「『府中15』新北市紀錄片放映院」。除了作為優質紀錄片定點放映、舉辦名人講座之地點外，並結合府中商圈，打造市民休閒及觀賞藝術電影的藝文特區。'),
(143, '台北 Xiaomijo小米酒咖啡館', '/images/cinema/1355971561-500373397_n.jpg', '', '02-23957617', '台北市大安區永康街41巷5號', 'Xiaomijo', '12345678', '來XIAOMIJO冒險一下吧!週二~週五13:00~22:00，周六週日12:00開門；週一固定公休，臨時公休會在FB公告，謝謝!');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`sid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `cinema`
--
ALTER TABLE `cinema`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
