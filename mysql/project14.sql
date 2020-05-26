-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-11-06 09:45:13
-- 伺服器版本: 10.1.32-MariaDB
-- PHP 版本： 7.1.17

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
('D004', '1', '2018-10-02 08:16:35.000000', '2018-10-26 03:40:29.000000'),
('D003', '1', '2018-10-02 08:16:43.000000', '2018-10-02 08:16:43.167667'),
('D002', '1', '2018-10-02 08:16:47.000000', '2018-10-02 08:16:47.827515'),
('D001', '1', '2018-10-02 08:16:52.000000', '2018-10-02 08:16:52.701325'),
('D005', '1', '2018-10-02 08:18:37.000000', '2018-10-05 02:43:20.000000'),
('D005', '1', '2018-10-04 12:29:08.000000', '2018-10-07 14:46:43.000000'),
('D001', '5', '2018-10-25 10:50:32.000000', '2018-10-25 10:50:32.831400'),
('D006', '3', '2018-10-25 10:50:52.000000', '2018-10-25 10:50:52.240260'),
('D006', '5', '2018-10-25 10:54:09.000000', '2018-10-25 10:54:09.033088'),
('D006', '5', '2018-10-25 10:58:32.000000', '2018-10-25 10:58:32.319603'),
('D001', '2', '2018-10-25 11:16:03.000000', '2018-10-25 11:16:03.576063'),
('D006', '3', '2018-10-25 11:20:52.000000', '2018-10-25 11:20:52.048532'),
('D006', '5', '2018-10-25 11:21:31.000000', '2018-10-25 11:21:31.093057'),
('D006', '2', '2018-10-25 11:22:12.000000', '2018-10-25 11:22:12.971824'),
('D006', '5', '2018-10-25 11:23:32.000000', '2018-10-25 11:23:32.218901'),
('D006', '2', '2018-10-25 11:31:26.000000', '2018-10-25 11:31:26.063233'),
('D006', '5', '2018-10-25 13:11:07.000000', '2018-10-25 13:11:07.138331'),
('D006', '5', '2018-10-25 13:41:24.000000', '2018-10-25 13:41:24.669623'),
('D006', '2', '2018-10-26 02:32:28.000000', '2018-10-26 02:32:28.353751'),
('D006', '1', '2018-10-26 02:34:40.000000', '2018-10-26 02:34:40.693731'),
('D006', '1', '2018-10-26 02:36:55.000000', '2018-10-26 02:36:55.780353'),
('D006', '1', '2018-10-26 02:38:35.000000', '2018-10-26 02:38:35.232887'),
('D006', '1', '2018-10-26 03:15:26.000000', '2018-10-26 03:15:26.223025'),
('D001', '1', '2018-10-26 03:19:36.000000', '2018-10-26 03:19:36.199963'),
('D001', '1', '2018-10-26 03:20:12.000000', '2018-10-26 03:20:12.489648'),
('D006', '1', '2018-10-26 03:26:43.000000', '2018-10-26 03:26:43.609535'),
('D006', '1', '2018-10-26 03:31:51.000000', '2018-10-26 03:31:51.207652'),
('D006', '1', '2018-10-26 03:33:44.000000', '2018-10-26 03:33:44.574965'),
('D006', '1', '2018-10-26 03:36:04.000000', '2018-10-26 03:36:04.506636'),
('D006', '1', '2018-10-26 03:57:07.000000', '2018-10-26 03:57:07.375333'),
('D006', '1', '2018-10-26 04:01:16.000000', '2018-10-26 04:01:16.201060'),
('D001', '1', '2018-10-26 04:15:42.000000', '2018-10-26 04:15:54.000000'),
('D001', '1', '2018-10-26 04:18:53.000000', '2018-10-26 04:18:53.497628'),
('D001', '1', '2018-10-26 04:20:53.000000', '2018-10-26 04:20:53.953834'),
('D001', '1', '2018-10-26 04:46:13.000000', '2018-10-26 04:46:13.541939'),
('D001', '1', '2018-10-26 04:49:46.000000', '2018-10-26 04:49:46.833384'),
('D001', '1', '2018-10-26 04:50:51.000000', '2018-10-26 04:50:51.115644'),
('D001', '1', '2018-10-26 04:55:33.000000', '2018-10-26 04:55:33.276815'),
('D001', '1', '2018-10-26 04:59:49.000000', '2018-10-26 05:02:23.000000'),
('D001', '1', '2018-10-26 05:02:42.000000', '2018-10-26 05:02:42.327156'),
('D001', '1', '2018-10-26 05:02:51.000000', '2018-10-26 05:02:51.439877'),
('D001', '1', '2018-10-26 05:13:34.000000', '2018-10-26 05:13:34.988765'),
('D001', '1', '2018-10-26 05:14:36.000000', '2018-10-26 05:14:36.321898'),
('D001', '1', '2018-10-26 05:20:52.000000', '2018-10-26 05:20:52.211256'),
('D001', '1', '2018-10-26 05:27:51.000000', '2018-10-26 05:27:51.144145'),
('D001', '3', '2018-10-26 06:30:57.000000', '2018-10-26 06:33:29.000000'),
('D001', '3', '2018-11-02 02:47:53.000000', '2018-11-02 02:47:53.480656'),
('D001', '3', '2018-11-02 03:09:58.000000', '2018-11-02 03:09:58.085147'),
('D001', '1', '2018-11-02 03:16:36.000000', '2018-11-02 03:17:17.000000'),
('D001', '3', '2018-11-02 03:24:09.000000', '2018-11-02 03:24:09.760379'),
('D001', '6', '2018-11-02 03:25:01.000000', '2018-11-02 03:25:01.214458'),
('D001', '3', '2018-11-02 03:26:27.000000', '2018-11-02 03:26:27.488807'),
('D001', '2', '2018-11-02 03:28:47.000000', '2018-11-02 03:28:58.000000'),
('D001', '2', '2018-11-02 03:31:07.000000', '2018-11-02 03:31:30.000000'),
('D001', '2', '2018-11-02 03:31:53.000000', '2018-11-02 03:31:53.758022'),
('D001', '6', '2018-11-02 03:32:49.000000', '2018-11-02 03:32:49.138559'),
('D009', '6', '2018-11-02 03:50:34.000000', '2018-11-02 03:50:34.300700'),
('D001', '5', '2018-11-02 03:53:00.000000', '2018-11-02 03:53:08.000000'),
('D001', '1', '2018-11-02 03:56:06.000000', '2018-11-02 03:56:06.072224'),
('D001', '2', '2018-11-02 03:58:46.000000', '2018-11-02 03:58:46.445369'),
('D001', '2', '2018-11-02 03:59:21.000000', '2018-11-02 03:59:21.833061'),
('D001', '2', '2018-11-02 04:00:41.000000', '2018-11-02 04:00:41.520073'),
('D001', '2', '2018-11-02 04:02:35.000000', '2018-11-02 04:02:35.295705');

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
  `desNo` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `cq2_number`
--

INSERT INTO `cq2_number` (`numID`, `numplate`, `numTime`, `robNo`, `callState`, `handleState`, `endTime`, `desNo`) VALUES
(1, 1, '2018-10-07 11:36:31.000000', 'R001', '0', '0', NULL, 'D006'),
(13, 1, '2018-10-25 07:50:04.000000', 'R001', '0', '1', NULL, NULL),
(2, 2, '2018-10-07 12:00:31.000000', 'R001', '0', '0', NULL, 'D005'),
(14, 2, '2018-10-25 08:34:53.000000', 'R001', '1', '1', NULL, NULL),
(3, 3, '2018-10-07 12:36:31.000000', 'R001', '1', '1', NULL, ''),
(15, 3, '2018-10-25 08:35:05.000000', 'R001', '1', '1', NULL, NULL),
(4, 4, '2018-10-08 12:36:31.000000', 'R001', '1', '1', NULL, ''),
(16, 4, '2018-10-25 08:38:11.000000', 'R001', '1', '1', NULL, NULL),
(17, 5, '2018-10-25 08:40:44.000000', 'R001', '1', '1', NULL, NULL),
(18, 6, '2018-10-25 08:41:00.000000', 'R001', '1', '1', NULL, NULL),
(19, 7, '2018-10-25 08:41:08.000000', 'R001', '1', '1', NULL, NULL),
(20, 8, '2018-10-25 19:53:27.000000', 'R001', '1', '1', NULL, NULL),
(21, 9, '2018-10-25 19:53:35.000000', 'R001', '1', '1', NULL, NULL),
(5, 255, '2018-10-08 12:36:57.000000', 'R001', '1', '1', NULL, NULL),
(6, 256, '2018-10-08 12:37:02.000000', 'R001', '1', '1', NULL, NULL),
(7, 288, '2018-10-20 03:50:20.000000', 'R001', '0', '0', NULL, NULL),
(11, 289, '2018-10-20 04:06:21.000000', 'R001', '0', '0', NULL, NULL),
(12, 290, '2018-10-20 04:15:36.000000', 'R001', '0', '0', NULL, NULL);

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
('D006', '王小美', 'apple', '1111-11-11', '後面有山坡'),
('D007', 'Tiffany', 'Tiffany', '1999-06-30', '100台北市中正區濟南路一段321號'),
('D008', 'Tiffany3', 'apple01', '1995-04-22', '100台北市中正區濟南路一段321號'),
('D009', '湯', 'nancy', '1999-03-08', '我家');

-- --------------------------------------------------------

--
-- 資料表結構 `login`
--

CREATE TABLE `login` (
  `empNo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `login`
--

INSERT INTO `login` (`empNo`, `password`) VALUES
('e001', 'e001'),
('e002', 'e002');

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
('R003', '0', '3'),
('R004', '0', '5'),
('R005', '1', '6');

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
('D001', '2', '1', '2018-11-02 12:02:38.000000');

-- --------------------------------------------------------

--
-- 資料表結構 `overnum`
--

CREATE TABLE `overnum` (
  `numID` int(200) NOT NULL,
  `robNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `desNo` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `overnum`
--

INSERT INTO `overnum` (`numID`, `robNo`, `desNo`) VALUES
(1, 'R001', NULL),
(2, 'R001', NULL);

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
('1', '台北市', '臺北市中山區北安路595巷14號', '大直店'),
('2', '台北市', '台北市大安區和平東路一段63號B1', '和平店'),
('3', '桃園市', '桃園縣中壢市中華路二段501號(家樂福2樓)', '中壢店'),
('4', '新北市', '新北市三重區三和路4段380號B1', '三重店'),
('5', '台北市', '台北市南港區南港路2段20巷1號2樓', '南港店'),
('6', '桃園市', '桃園縣蘆竹鄉南崁路152號', '南崁店'),
('7', '基隆市', '基隆市信義區深溪路53號B2', '基隆店');

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
  `desConfirm` int(4) DEFAULT '1',
  `cusArrived` int(4) DEFAULT '1',
  `robNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `match_desNo` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `waitingnum`
--

INSERT INTO `waitingnum` (`numID`, `desConfirm`, `cusArrived`, `robNo`, `match_desNo`) VALUES
(2, 0, 1, 'R001', 'D001'),
(3, 0, 1, 'R001', 'D001');

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
  ADD UNIQUE KEY `numplate` (`numplate`,`numTime`,`robNo`),
  ADD KEY `numID` (`numID`),
  ADD KEY `robNo` (`robNo`);

--
-- 資料表索引 `designer`
--
ALTER TABLE `designer`
  ADD PRIMARY KEY (`desNo`);

--
-- 資料表索引 `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`empNo`),
  ADD UNIQUE KEY `empNo` (`empNo`);

--
-- 資料表索引 `match_robot`
--
ALTER TABLE `match_robot`
  ADD PRIMARY KEY (`robNo`),
  ADD KEY `match_stoNo` (`match_stoNo`);

--
-- 資料表索引 `on_duty_designer`
--
ALTER TABLE `on_duty_designer`
  ADD PRIMARY KEY (`desNo`,`stoNo`),
  ADD KEY `stoNo` (`stoNo`);

--
-- 資料表索引 `overnum`
--
ALTER TABLE `overnum`
  ADD PRIMARY KEY (`numID`),
  ADD KEY `robNo` (`robNo`);

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
  ADD PRIMARY KEY (`numID`),
  ADD KEY `match_desNo` (`match_desNo`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `cq2_number`
--
ALTER TABLE `cq2_number`
  MODIFY `numID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- 資料表的 Constraints `cq2_number`
--
ALTER TABLE `cq2_number`
  ADD CONSTRAINT `cq2_number_ibfk_1` FOREIGN KEY (`robNo`) REFERENCES `match_robot` (`robNo`);

--
-- 資料表的 Constraints `match_robot`
--
ALTER TABLE `match_robot`
  ADD CONSTRAINT `match_robot_ibfk_1` FOREIGN KEY (`match_stoNo`) REFERENCES `store` (`stoNo`);

--
-- 資料表的 Constraints `on_duty_designer`
--
ALTER TABLE `on_duty_designer`
  ADD CONSTRAINT `on_duty_designer_ibfk_1` FOREIGN KEY (`desNo`) REFERENCES `attendance` (`desNo`),
  ADD CONSTRAINT `on_duty_designer_ibfk_2` FOREIGN KEY (`stoNo`) REFERENCES `match_robot` (`match_stoNo`);

--
-- 資料表的 Constraints `overnum`
--
ALTER TABLE `overnum`
  ADD CONSTRAINT `overnum_ibfk_1` FOREIGN KEY (`numID`) REFERENCES `cq2_number` (`numID`),
  ADD CONSTRAINT `overnum_ibfk_2` FOREIGN KEY (`robNo`) REFERENCES `cq2_number` (`robNo`);

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
