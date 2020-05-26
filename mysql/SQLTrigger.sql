
--
-- 觸發器 `cq2_number`
--
DELIMITER $$
CREATE TRIGGER `新增正在等待的號碼至waitingnum_insert` AFTER INSERT ON `cq2_number` FOR EACH ROW REPLACE INTO waitingnum(`numID` ,`numPlate` , `desConfirm` ,`cusArrived` ,`robNo` ,`match_desNo`)
SELECT numID, numPlate,'1','1',robNo,NULL FROM `CQ2_number` WHERE robNo='R001' AND callState='1' 
AND handleState='1' ORDER BY numTime ASC LIMIT 0,1
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `新增正在等待的號碼至waitingnum_update` AFTER UPDATE ON `cq2_number` FOR EACH ROW REPLACE INTO waitingnum(`numID` ,`numPlate` , `desConfirm` ,`cusArrived` ,`robNo` ,`match_desNo`)
SELECT numID, numPlate,'1','1',robNo,NULL FROM `CQ2_number` WHERE robNo='R001' AND callState='1' 
AND handleState='1' ORDER BY numTime ASC LIMIT 0,1
$$
DELIMITER ;


--
-- 觸發器 `on_duty_designer`
--
DELIMITER $$
CREATE TRIGGER `新增可剪髮理髮師至waitingdes_update` AFTER UPDATE ON `on_duty_designer` FOR EACH ROW REPLACE INTO waitingdes(`desNo` ,`desState` ,`finishTime` ,`stoNo`) 
SELECT `desNo` ,`desState` ,`finishTime` ,`stoNo` FROM on_duty_designer 
WHERE stoNo='1'
 AND desState='0'ORDER BY finishTime DESC LIMIT 0,1
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `新增空閒理髮師至waitingdes_insert` AFTER INSERT ON `on_duty_designer` FOR EACH ROW REPLACE INTO waitingdes(`desNo` ,`desState` ,`finishTime` ,`stoNo`) 
SELECT `desNo` ,`desState` ,`finishTime` ,`stoNo` FROM on_duty_designer 
WHERE stoNo='1'
 AND desState='0'ORDER BY finishTime DESC LIMIT 0,1
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- 觸發器 `waitingnum`
--
DELIMITER $$
CREATE TRIGGER `將waitingdes的最空閒理髮師配對給waitingnum裡最閒置的號碼` AFTER UPDATE ON `waitingnum` FOR EACH ROW BEGIN

UPDATE waitingnum SET match_desNo=
(SELECT desNo FROM `waitingdes` WHERE finishTime = (SELECT MIN(finishTime) FROM `waitingdes`)  AND desState='0' )
WHERE robNo= "R001" AND WNTimeStamp = (SELECT MIN(WNTimeStamp) ) ;

UPDATE waitingdes SET desState="1" WHERE stoNo="1" AND finishTime=(SELECT MIN(finishTime));

DELETE FROM waitingDes WHERE stoNo="1" AND finishTime=(SELECT MIN(finishTime));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `將waitingdes的最空閒理髮師配對給waitingnum裡最閒置的號碼2` AFTER INSERT ON `waitingnum` FOR EACH ROW BEGIN

UPDATE waitingnum SET match_desNo=
(SELECT desNo FROM `waitingdes` WHERE finishTime = (SELECT MIN(finishTime) FROM `waitingdes`)  AND desState='0' )
WHERE robNo= "R001" AND WNTimeStamp = (SELECT MIN(WNTimeStamp) ) ;

UPDATE waitingdes SET desState="1" WHERE stoNo="1" AND finishTime=(SELECT MIN(finishTime));

DELETE FROM waitingDes WHERE stoNo="1" AND finishTime=(SELECT MIN(finishTime));

END
$$
DELIMITER ;
