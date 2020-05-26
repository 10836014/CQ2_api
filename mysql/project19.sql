-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-12-13 08:52:15
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
('D001', '1', '2018-12-12 13:53:34.000000', '2018-12-12 13:53:34.170270'),
('D001', '1', '2018-12-12 13:55:00.000000', '2018-12-12 13:55:00.652913'),
('D001', '1', '2018-12-13 07:46:49.000000', '2018-12-13 07:46:49.567763'),
('D001', '1', '2018-12-13 07:47:59.000000', '2018-12-13 07:47:59.882763'),
('D001', '1', '2018-12-13 07:49:12.000000', '2018-12-13 07:49:12.975763');

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
-- 觸發器 `cq2_number`
--
DELIMITER $$
CREATE TRIGGER `AddFreeNum` AFTER UPDATE ON `cq2_number` FOR EACH ROW BEGIN

REPLACE INTO waitingnum(`numID` ,`numPlate` , `desConfirm` ,`cusArrived` ,`robNo` ,`match_desNo`)
SELECT numID, numPlate,'1','1',robNo,NULL FROM `CQ2_number` WHERE robNo='R001' AND callState='1' 
AND handleState='1' ORDER BY numTime DESC LIMIT 0,1;


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `AddFreeNum2` AFTER INSERT ON `cq2_number` FOR EACH ROW BEGIN

REPLACE INTO waitingnum(`numID` ,`numPlate`,`desConfirm` ,`cusArrived` ,`robNo` ,`match_desNo`)
SELECT numID,numPlate,'1','1',robNo,NULL FROM `CQ2_number` WHERE robNo='R001' AND callState='1' 
AND handleState='1' ORDER BY numTime DESC LIMIT 0,1;

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
('D009', '湯', 'nancy', '11111111', '1999-03-08', '我家'),
('D010', '漂亮姨', 'pretty', '11111111', '0000-00-00', '查無此地址');

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
('e002', 'e002'),
('e003', 'e003'),
('e004', 'e004');

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
('R007', '0', '7');

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
('D001', '1', '0', '2018-12-13 15:49:12.000000');

--
-- 觸發器 `on_duty_designer`
--
DELIMITER $$
CREATE TRIGGER `AddFrssDes2` AFTER INSERT ON `on_duty_designer` FOR EACH ROW BEGIN

REPLACE INTO waitingdes(`desNo` ,`desState` ,`finishTime` ,`stoNo`)
SELECT `desNo` ,`desState` ,`finishTime` ,`stoNo` FROM on_duty_designer 
WHERE stoNo='1'
AND desState='0'ORDER BY finishTime DESC LIMIT 0,1;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `addFrssDes` AFTER UPDATE ON `on_duty_designer` FOR EACH ROW BEGIN

REPLACE INTO waitingdes(`desNo` ,`desState` ,`finishTime` ,`stoNo`)
SELECT `desNo` ,`desState` ,`finishTime` ,`stoNo` FROM on_duty_designer 
WHERE stoNo='1'
AND desState='0'ORDER BY finishTime DESC LIMIT 0,1;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 資料表結構 `overnum`
--

CREATE TABLE `overnum` (
  `numID` int(200) NOT NULL,
  `numPlate` int(4) NOT NULL,
  `robNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `desNo` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('D001', '0', '2018-12-13 15:49:12.000000', '1', '2018-12-13 07:49:12.983763');

--
-- 觸發器 `waitingdes`
--
DELIMITER $$
CREATE TRIGGER `3` AFTER DELETE ON `waitingdes` FOR EACH ROW BEGIN

UPDATE waitingnum SET match_desNo=
(SELECT desNo FROM `waitingdes` WHERE finishTime = (SELECT MIN(finishTime) FROM `waitingdes`)  AND desState='0' )
WHERE robNo= "R001" AND WNTimeStamp = (SELECT MIN(WNTimeStamp) ) ;


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `4` AFTER UPDATE ON `waitingdes` FOR EACH ROW BEGIN

UPDATE waitingnum SET match_desNo=
(SELECT desNo FROM `waitingdes` WHERE finishTime = (SELECT MIN(finishTime) FROM `waitingdes`)  AND desState='0' )
WHERE robNo= "R001" AND WNTimeStamp = (SELECT MIN(WNTimeStamp) ) ;


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `match_desNo` AFTER INSERT ON `waitingdes` FOR EACH ROW BEGIN

UPDATE waitingnum SET match_desNo=
(SELECT desNo FROM `waitingdes` WHERE finishTime = (SELECT MIN(finishTime) FROM `waitingdes`)  AND desState='0' )
WHERE robNo= "R001" AND WNTimeStamp = (SELECT MIN(WNTimeStamp) ) ;




END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 資料表結構 `waitingnum`
--

CREATE TABLE `waitingnum` (
  `numID` int(200) NOT NULL,
  `numPlate` int(4) NOT NULL,
  `desConfirm` int(4) DEFAULT '1',
  `cusArrived` int(4) DEFAULT '1',
  `robNo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `match_desNo` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WNTimeStamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 觸發器 `waitingnum`
--
DELIMITER $$
CREATE TRIGGER `updateWaitingDesState=1` AFTER UPDATE ON `waitingnum` FOR EACH ROW BEGIN

UPDATE waitingdes SET desState="1" WHERE desNo= (SELECT match_desNo FROM waitingnum WHERE WNTimeStamp = (SELECT MIN(WNTimeStamp)));

END
$$
DELIMITER ;

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
  ADD UNIQUE KEY `numID_2` (`numID`),
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
  ADD UNIQUE KEY `empNo` (`empNo`);

--
-- 資料表索引 `match_robot`
--
ALTER TABLE `match_robot`
  ADD PRIMARY KEY (`robNo`),
  ADD UNIQUE KEY `match_stoNo` (`match_stoNo`);

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
  MODIFY `numID` int(200) NOT NULL AUTO_INCREMENT;

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
