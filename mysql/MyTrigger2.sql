--
-- 觸發器 `cq2_number`
--自動新增等待理髮師
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

--
--
-- 資料表的匯出資料 `on_duty_designer`
--

INSERT INTO `on_duty_designer` (`desNo`, `stoNo`, `desState`, `finishTime`) VALUES
('D001', '1', '1', '2018-12-13 16:35:15.000000');

--
-- 觸發器 `on_duty_designer`
--自動新增等待理髮師
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
--

--
-- 觸發器 `waitingdes`
--自動配對
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
--

//------將waitingdes的最空閒理髮師配對給waitingnum裡最閒置的號碼-------
--自動配對理髮師給號碼
CREATE TRIGGER `match_desNo` AFTER UPDATE ON `waitingNum`
 FOR EACH ROW BEGIN

UPDATE waitingnum SET match_desNo=
(SELECT desNo FROM `waitingdes` WHERE finishTime=(SELECT MIN(finishTime) FROM `waitingdes`) AND desState='0')
WHERE robNo= "R001" AND WNTimeStamp = (SELECT MIN(WNTimeStamp) ) ;

SELECT desNo FROM `waitingdes` WHERE finishTime=(SELECT MIN(finishTime) FROM `waitingdes`





UPDATE waitingdes SET desState="1" WHERE 
desNo= (SELECT match_desNo FROM waitingnum WHERE WNTimeStamp = (SELECT MIN(WNTimeStamp)))

//---SELECT出最早分配的號碼
SELECT match_desNo FROM waitingnum WHERE robNo='R001' AND desConfirm='1'ORDER BY WNTimeStamp ASC LIMIT 0,1

/**/ 
--自動配對完後，Update理髮師編號
UPDATE waitingnum SET desState='1'
WHERE desNo = (SELECT match_desNo FROM waitingnum WHERE robNo='R001' AND desConfirm='1'ORDER BY WNTimeStamp ASC LIMIT 0,1  ) ;


END IF; 

END

//--------

//--Update到waitingDes的觸發器
//--錯誤原因
//--"error":"Can't update table 'waitingdes' in stored function\/trigger because it is already used by statement which invoked this stored function\/trigger."}Error: Can't update table 'waitingdes' in stored function/trigger because it is already used by statement which invoked this stored function/trigger.
CREATE TRIGGER `matchAfterUpdate` AFTER UPDATE ON `waitingdes`
 FOR EACH ROW BEGIN

UPDATE waitingnum SET match_desNo=
(SELECT desNo FROM `waitingdes` WHERE finishTime = (SELECT MIN(finishTime) FROM `waitingdes`)  AND desState='0' )
WHERE robNo= "R001" AND WNTimeStamp = (SELECT MIN(WNTimeStamp) ) ;


END


UPDATE waitingdes SET desState='1' WHERE desNo= (SELECT `desState` ORDER BY MIN(`finishTime`))