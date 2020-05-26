-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-12-09 18:43:07
-- 伺服器版本: 10.1.32-MariaDB
-- PHP 版本： 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- 資料庫： `project`
--

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
('D001', '2', '2018-11-02 04:02:35.000000', '2018-11-02 04:02:35.295705'),
('D001', '1', '2018-12-07 02:51:28.000000', '2018-12-07 02:51:28.765554'),
('D001', '1', '2018-12-07 02:52:54.000000', '2018-12-07 02:52:54.496554'),
('D001', '1', '2018-12-07 02:55:30.000000', '2018-12-07 02:55:49.000000'),
('D001', '1', '2018-12-07 02:56:51.000000', '2018-12-07 02:56:51.614354'),
('D001', '1', '2018-12-07 03:08:31.000000', '2018-12-07 03:08:31.755354'),
('D001', '1', '2018-12-07 03:09:50.000000', '2018-12-07 03:10:09.000000'),
('D001', '1', '2018-12-07 03:24:20.000000', '2018-12-07 03:24:20.175754'),
('D001', '1', '2018-12-07 03:28:19.000000', '2018-12-07 03:28:19.723754'),
('D001', '1', '2018-12-07 03:38:16.000000', '2018-12-07 03:38:16.108612'),
('D001', '1', '2018-12-07 03:43:13.000000', '2018-12-07 03:43:13.042100'),
('D001', '1', '2018-12-07 03:55:37.000000', '2018-12-07 03:55:37.529815'),
('D001', '1', '2018-12-07 07:37:44.000000', '2018-12-07 07:37:44.200005'),
('D001', '1', '2018-12-07 07:44:30.000000', '2018-12-07 07:44:30.894205'),
('D001', '1', '2018-12-07 07:46:50.000000', '2018-12-07 07:46:50.833205'),
('D001', '1', '2018-12-07 07:48:59.000000', '2018-12-07 07:48:59.788805'),
('D001', '1', '2018-12-07 07:58:38.000000', '2018-12-07 07:58:38.583805'),
('D001', '1', '2018-12-07 08:06:04.000000', '2018-12-07 08:06:04.084405'),
('D001', '1', '2018-12-07 08:20:58.000000', '2018-12-07 08:20:58.346083'),
('D001', '1', '2018-12-07 08:21:45.000000', '2018-12-07 08:21:45.582369'),
('D001', '1', '2018-12-07 08:23:32.000000', '2018-12-07 08:23:32.570740'),
('D001', '1', '2018-12-07 09:05:29.000000', '2018-12-07 09:05:29.019481'),
('D001', '1', '2018-12-07 09:06:19.000000', '2018-12-07 09:06:19.442681'),
('D001', '1', '2018-12-07 09:07:12.000000', '2018-12-07 09:07:12.032281'),
('D001', '1', '2018-12-07 09:25:29.000000', '2018-12-07 09:25:29.145081'),
('D001', '1', '2018-12-07 09:26:57.000000', '2018-12-07 09:26:57.522081'),
('D001', '1', '2018-12-08 08:05:07.000000', '2018-12-08 08:05:44.000000'),
('D001', '1', '2018-12-08 10:41:28.000000', '2018-12-08 10:41:28.928559'),
('D001', '1', '2018-12-08 10:43:24.000000', '2018-12-08 10:43:24.165759'),
('D001', '1', '2018-12-08 10:53:05.000000', '2018-12-08 10:53:18.000000'),
('D001', '1', '2018-12-08 10:54:32.000000', '2018-12-08 10:54:32.220559'),
('D001', '1', '2018-12-08 10:57:31.000000', '2018-12-08 11:06:08.000000'),
('D001', '1', '2018-12-08 11:10:58.000000', '2018-12-08 11:10:58.677359'),
('D001', '1', '2018-12-09 03:51:42.000000', '2018-12-09 03:51:42.181468'),
('D001', '1', '2018-12-09 04:22:29.000000', '2018-12-09 04:23:43.000000'),
('D001', '1', '2018-12-09 04:24:29.000000', '2018-12-09 04:24:29.714068'),
('D001', '1', '2018-12-09 04:41:36.000000', '2018-12-09 04:42:16.000000'),
('D001', '1', '2018-12-09 04:42:51.000000', '2018-12-09 04:42:51.515268'),
('D001', '1', '2018-12-09 04:46:02.000000', '2018-12-09 04:46:02.775268'),
('D001', '1', '2018-12-09 04:49:05.000000', '2018-12-09 04:49:05.610268'),
('D001', '1', '2018-12-09 04:53:14.000000', '2018-12-09 04:53:14.951068'),
('D001', '1', '2018-12-09 05:00:33.000000', '2018-12-09 05:00:33.165068'),
('D001', '1', '2018-12-09 07:47:40.000000', '2018-12-09 07:47:40.016031'),
('D001', '1', '2018-12-09 07:52:30.000000', '2018-12-09 07:52:30.495031'),
('D001', '1', '2018-12-09 08:08:05.000000', '2018-12-09 08:08:05.551431'),
('D001', '1', '2018-12-09 08:15:34.000000', '2018-12-09 08:15:34.281831'),
('D001', '1', '2018-12-09 08:37:45.000000', '2018-12-09 08:42:58.000000'),
('D001', '1', '2018-12-09 08:43:20.000000', '2018-12-09 08:43:20.555831'),
('D001', '1', '2018-12-09 08:45:03.000000', '2018-12-09 08:45:03.254631'),
('D001', '1', '2018-12-09 14:22:47.000000', '2018-12-09 14:23:14.000000'),
('D001', '1', '2018-12-09 14:38:59.000000', '2018-12-09 14:38:59.235031'),
('D001', '1', '2018-12-09 14:45:19.000000', '2018-12-09 14:45:19.414031'),
('D001', '1', '2018-12-09 14:50:03.000000', '2018-12-09 14:50:03.104438'),
('D001', '1', '2018-12-09 15:56:01.000000', '2018-12-09 15:56:01.012671'),
('D001', '1', '2018-12-09 15:57:13.000000', '2018-12-09 15:57:34.000000'),
('D001', '1', '2018-12-09 15:58:28.000000', '2018-12-09 15:58:28.340071'),
('D001', '1', '2018-12-09 16:00:13.000000', '2018-12-09 16:01:48.000000'),
('D001', '1', '2018-12-09 16:02:24.000000', '2018-12-09 16:02:24.018071'),
('D001', '1', '2018-12-09 16:03:47.000000', '2018-12-09 16:06:08.000000'),
('D001', '1', '2018-12-09 16:15:12.000000', '2018-12-09 16:15:12.239871'),
('D001', '1', '2018-12-09 16:15:43.000000', '2018-12-09 16:15:43.081071'),
('D001', '1', '2018-12-09 16:18:11.000000', '2018-12-09 16:18:11.346471'),
('D001', '1', '2018-12-09 16:20:30.000000', '2018-12-09 16:20:30.471271'),
('D001', '1', '2018-12-09 16:23:36.000000', '2018-12-09 16:23:36.535471'),
('D001', '1', '2018-12-09 17:10:55.000000', '2018-12-09 17:15:37.000000');

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
(2, 2, '2018-10-07 12:00:31.000000', 'R001', '0', '1', NULL, 'D001'),
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
(22, 10, '2018-12-07 01:56:39.000000', 'R001', '1', '1', NULL, NULL),
(23, 11, '2018-12-07 02:34:21.000000', 'R001', '1', '1', NULL, NULL),
(24, 12, '2018-12-07 02:34:54.000000', 'R001', '1', '1', NULL, NULL),
(25, 13, '2018-12-07 05:27:27.000000', 'R001', '1', '0', NULL, NULL),
(26, 14, '2018-12-07 07:47:44.000000', 'R001', '1', '1', NULL, NULL),
(27, 15, '2018-12-07 08:15:57.000000', 'R001', '1', '1', NULL, NULL),
(5, 255, '2018-10-08 12:36:57.000000', 'R001', '1', '1', NULL, NULL),
(6, 256, '2018-10-08 12:37:02.000000', 'R001', '1', '1', NULL, NULL),
(7, 288, '2018-10-20 03:50:20.000000', 'R001', '0', '0', NULL, NULL),
(11, 289, '2018-10-20 04:06:21.000000', 'R001', '0', '0', NULL, NULL),
(12, 290, '2018-10-20 04:15:36.000000', 'R001', '0', '0', NULL, NULL);

--
-- 觸發器 `cq2_number`
--
DELIMITER $$
CREATE TRIGGER `addWaitingNum` AFTER UPDATE ON `cq2_number` FOR EACH ROW BEGIN


INSERT INTO waitingnum(`numID` ,`desConfirm` ,`cusArrived` ,`robNo` ,`match_desNo`)
SELECT numID,'1','1',robNo,NULL FROM `CQ2_number` WHERE robNo='R001' AND callState='1' AND handleState='1' ORDER BY numTime ASC LIMIT 0,1;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 資料表結構 `designer`
--

CREATE TABLE `designer` (
  `desNo` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `desName` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `desID` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `desAddress` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `designer`
--

INSERT INTO `designer` (`desNo`, `desName`, `desID`, `password`, `birthday`, `desAddress`) VALUES
('D001', '葉老大', 'james001', '11111111', '1111-11-11', '臺北市中山區北安路595巷13號'),
('D002', '羅小綾', 'lily002', '11111111', '1111-11-11', '台北市大安區和平東路一段63號B1'),
('D003', '陳小如', 'lulu003', '11111111', '1111-11-11', '桃園縣中壢市中華路二段501號(家樂福2樓)'),
('D004', '林小瑾', 'yee004', '11111111', '1111-11-11', '新北市三重區三和路4段380號B1'),
('D005', '黃小瑄', 'joanna005', '11111111', '1111-11-11', '台北市南港區南港路2段20巷1號2樓'),
('D006', '王小美', 'apple', '11111111', '1111-11-11', '後面有山坡'),
('D007', 'Tiffany', 'Tiffany', '11111111', '1999-06-30', '100台北市中正區濟南路一段321號'),
('D008', 'Tiffany3', 'apple01', '11111111', '1995-04-22', '100台北市中正區濟南路一段321號'),
('D009', '湯', 'nancy', '11111111', '1999-03-08', '我家');

-- --------------------------------------------------------

--
-- 資料表結構 `login`
--

CREATE TABLE `login` (
  `empNo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(36) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `login`
--

INSERT INTO `login` (`empNo`, `password`, `email`) VALUES
('e001', 'e001', '10356014@ntub.edu.tw'),
('e002', 'e002', '111111@yahoo.com.tw');

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
('D003', '1', '0', '0000-00-00 00:00:00.000000'),
('D004', '1', '1', '2018-12-10 01:37:41.000000');

--
-- 觸發器 `on_duty_designer`
--
DELIMITER $$
CREATE TRIGGER `addFreeDes` AFTER UPDATE ON `on_duty_designer` FOR EACH ROW BEGIN

INSERT INTO waitingdes(`desNo` ,`desState` ,`finishTime` ,`stoNo`)
SELECT `desNo` ,`desState` ,`finishTime` ,`stoNo` FROM on_duty_designer 
WHERE stoNo='1'
 AND desState='0'ORDER BY finishTime ASC LIMIT 0,1;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `addFreeDes2` AFTER INSERT ON `on_duty_designer` FOR EACH ROW BEGIN

INSERT INTO waitingdes(`desNo` ,`desState` ,`finishTime` ,`stoNo`)
SELECT `desNo` ,`desState` ,`finishTime` ,`stoNo` FROM on_duty_designer 
WHERE stoNo='1'
 AND desState='0'ORDER BY finishTime ASC LIMIT 0,1;

END
$$
DELIMITER ;

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
(1, 'R001', 'D001'),
(2, 'R001', 'D001'),
(13, 'R001', 'D001'),
(15, 'R001', 'D001'),
(17, 'R001', NULL),
(18, 'R001', 'D001');

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
  `stoNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `WDTimeStamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `waitingdes`
--

INSERT INTO `waitingdes` (`desNo`, `desState`, `finishTime`, `stoNo`, `WDTimeStamp`) VALUES
('D003', '0', '0000-00-00 00:00:00.000000', '1', '2018-12-09 17:38:13.110071'),
('D004', '0', '2018-12-09 00:00:00.000000', '1', '2018-12-09 17:36:59.868071');

-- --------------------------------------------------------

--
-- 資料表結構 `waitingnum`
--

CREATE TABLE `waitingnum` (
  `numID` int(200) NOT NULL,
  `desConfirm` int(4) DEFAULT '1',
  `cusArrived` int(4) DEFAULT '1',
  `robNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `match_desNo` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WNTimeStamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `waitingnum`
--

INSERT INTO `waitingnum` (`numID`, `desConfirm`, `cusArrived`, `robNo`, `match_desNo`, `WNTimeStamp`) VALUES
(3, 1, 1, 'R001', 'D001', '2018-12-09 06:58:12.777231');

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
  ADD UNIQUE KEY `empNo` (`empNo`),
  ADD UNIQUE KEY `email` (`email`);

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
  ADD KEY `robNo` (`robNo`),
  ADD KEY `desNo` (`desNo`);

--
-- 資料表索引 `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`stoNo`);

INSERT INTO `waitingnum` (`numID`, `desConfirm`, `cusArrived`, `robNo`, `match_desNo`, `WNTimeStamp`) VALUES
(3, 1, 1, 'R001', 'D001', '2018-12-09 06:58:12.777231');

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
  MODIFY `numID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
