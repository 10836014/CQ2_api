-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018 年 10 月 13 日 21:11
-- 伺服器版本: 10.1.34-MariaDB
-- PHP 版本： 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- 資料庫： `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `project`;

-- --------------------------------------------------------

--
-- 資料表結構 `attendance`
--

CREATE TABLE `attendance` (
  `desNo` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `stoNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `clock_in` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `clock_out` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `attendance`
--

INSERT INTO `attendance` (`desNo`, `stoNo`, `clock_in`, `clock_out`) VALUES
('D004', '1', '2018-10-02 08:16:35.000000', '2018-10-02 08:16:35.008416'),
('D003', '1', '2018-10-02 08:16:43.000000', '2018-10-02 08:16:43.167667'),
('D002', '1', '2018-10-02 08:16:47.000000', '2018-10-02 08:16:47.827515'),
('D001', '1', '2018-10-02 08:16:52.000000', '2018-10-02 08:16:52.701325'),
('D005', '1', '2018-10-02 08:18:37.000000', '2018-10-05 02:43:20.000000'),
('D005', '1', '2018-10-04 12:29:08.000000', '2018-10-07 14:46:43.000000');

-- --------------------------------------------------------

--
-- 資料表結構 `cq2_number`
--

CREATE TABLE `cq2_number` (
  `numID` int(200) NOT NULL,
  `numplate` int(4) NOT NULL,
  `numTime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `robNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `callState` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `handleState` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `endTime` datetime(6) DEFAULT NULL,
  `desNo` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `cq2_number`
--

INSERT INTO `cq2_number` (`numID`, `numplate`, `numTime`, `robNo`, `callState`, `handleState`, `endTime`, `desNo`) VALUES
(1, 1, '2018-10-07 11:36:31.000000', 'R001', '0', '0', NULL, ''),
(2, 2, '2018-10-07 12:00:31.000000', 'R001', '0', '0', NULL, ''),
(3, 3, '2018-10-07 12:36:31.000000', 'R001', '1', '1', NULL, ''),
(4, 4, '2018-10-08 12:36:31.000000', 'R001', '1', '1', NULL, ''),
(5, 255, '2018-10-08 12:36:57.000000', 'R001', '1', '1', NULL, ''),
(6, 256, '2018-10-08 12:37:02.000000', 'R001', '1', '1', NULL, '');

-- --------------------------------------------------------

--
-- 資料表結構 `designer`
--

CREATE TABLE `designer` (
  `desNo` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `desName` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `desID` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `desAddress` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `designer`
--

INSERT INTO `designer` (`desNo`, `desName`, `desID`, `birthday`, `desAddress`) VALUES
('D001', '葉老大', 'james001', '1111-11-11', '臺北市中山區北安路595巷13號'),
('D002', '羅小綾', 'lily002', '1111-11-11', '台北市大安區和平東路一段63號B1'),
('D003', '陳小如', 'lulu003', '1111-11-11', '桃園縣中壢市中華路二段501號(家樂福2樓)'),
('D004', '林小瑾', 'yee004', '1111-11-11', '新北市三重區三和路4段380號B1'),
('D005', '黃小瑄', 'joanna005', '1111-11-11', '台北市南港區南港路2段20巷1號2樓'),
('D006', '王小美', '1', '1111-11-11', '後面有山坡');

-- --------------------------------------------------------

--
-- 資料表結構 `on_duty_designer`
--

CREATE TABLE `on_duty_designer` (
  `desNo` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `stoNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `desState` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `finishTime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `on_duty_designer`
--

INSERT INTO `on_duty_designer` (`desNo`, `stoNo`, `desState`, `finishTime`) VALUES
('D001', '1', '0', '2018-10-02 16:17:40.000000'),
('D002', '1', '0', '2018-10-02 16:27:21.000000'),
('D003', '1', '0', '2018-10-05 10:28:16.000000'),
('D004', '1', '1', '2018-10-05 10:33:29.000000'),
('D005', '1', '1', '2018-10-02 16:19:02.000000');

-- --------------------------------------------------------

--
-- 資料表結構 `match_robot`
--

CREATE TABLE `match_robot` (
  `robNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `robState` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `match_stoNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `match_robot`
--

INSERT INTO `match_robot` (`robNo`, `robState`, `match_stoNo`) VALUES
('R001', '0', '1'),
('R002', '0', '2'),
('R003', '0', '3');

-- --------------------------------------------------------

--
-- 資料表結構 `store`
--

CREATE TABLE `store` (
  `stoNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `stoCity` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `stoAddress` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stoName` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `store`
--

INSERT INTO `store` (`stoNo`, `stoCity`, `stoAddress`, `stoName`) VALUES
('1', '台北市', '臺北市中山區北安路595巷13號', '大直店'),
('2', '台北市', '台北市大安區和平東路一段63號B1', '和平店'),
('3', '桃園市', '桃園縣中壢市中華路二段501號(家樂福2樓)', '中壢店'),
('4', '新北市', '新北市三重區三和路4段380號B1', '三重店'),
('5', '台北市', '台北市南港區南港路2段20巷1號2樓', '南港店'),
('6', '桃園市', '桃園縣蘆竹鄉南崁路152號', '南崁店'),
('7', '基隆市', '基隆市信義區深溪路53號B1', '基隆店');

-- --------------------------------------------------------

--
-- 資料表結構 `waitingdes`
--

CREATE TABLE `waitingdes` (
  `desNo` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `desState` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `finishTime` datetime(6) NOT NULL,
  `stoNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `waitingnum`
--

CREATE TABLE `waitingnum` (
  `numID` int(200) NOT NULL,
  `desConfirm` int(4) NOT NULL,
  `cusArrived` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `attendance`
--
ALTER TABLE `attendance`
  ADD UNIQUE KEY `clock_in` (`clock_in`),
  ADD KEY `att_des_index` (`desNo`),
  ADD KEY `att_sto_index` (`stoNo`);

--
-- 資料表索引 `cq2_number`
--
ALTER TABLE `cq2_number`
  ADD PRIMARY KEY (`numID`),
  ADD KEY `robNo` (`robNo`);

--
-- 資料表索引 `designer`
--
ALTER TABLE `designer`
  ADD PRIMARY KEY (`desNo`);

--
-- 資料表索引 `on_duty_designer`
--
ALTER TABLE `on_duty_designer`
  ADD PRIMARY KEY (`desNo`,`stoNo`);

--
-- 資料表索引 `match_robot`
--
ALTER TABLE `match_robot`
  ADD PRIMARY KEY (`robNo`);

--
-- 資料表索引 `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`stoNo`);

--
-- 資料表索引 `waitingdes`
--
ALTER TABLE `waitingdes`
  ADD PRIMARY KEY (`desNo`);

--
-- 資料表索引 `waitingnum`
--
ALTER TABLE `waitingnum`
  ADD PRIMARY KEY (`numID`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `cq2_number`
--
ALTER TABLE `cq2_number`
  MODIFY `numID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`desNo`) REFERENCES `designer` (`desNo`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`stoNo`) REFERENCES `store` (`stoNo`);

--
-- 資料表的 Constraints `on_duty_designer`
--
ALTER TABLE `on_duty_designer`
  ADD CONSTRAINT `on_duty_designer_ibfk_1` FOREIGN KEY (`desNo`) REFERENCES `attendance` (`desNo`);

--
-- 資料表的 Constraints `waitingdes`
--
ALTER TABLE `waitingdes`
  ADD CONSTRAINT `waitingDes_ibfk_1` FOREIGN KEY (`desNo`) REFERENCES `on_duty_designer` (`desNo`);

--
-- 資料表的 Constraints `waitingnum`
--
ALTER TABLE `waitingnum`
  ADD CONSTRAINT `waitingNum_ibfk_1` FOREIGN KEY (`numID`) REFERENCES `cq2_number` (`numID`);
COMMIT;
