//------新增可剪髮理髮師至waitingdes，若上線理髮師資料表有資料更新-------
//--空閒的理髮師--
CREATE TRIGGER `addFreeDes` AFTER UPDATE ON `on_duty_designer`
 FOR EACH ROW BEGIN

REPLACE INTO waitingdes(`desNo` ,`desState` ,`finishTime` ,`stoNo`) 
SELECT `desNo` ,`desState` ,`finishTime` ,`stoNo` FROM on_duty_designer 
WHERE stoNo='1'
 AND desState='0'ORDER BY finishTime DESC LIMIT 0,1;

END

//------新增可剪髮理髮師至waitingdes，若上線理髮師資料表有資料新增-------
//--空閒的理髮師--
CREATE TRIGGER `addFreeDes2` AFTER INSERT ON `on_duty_designer`
 FOR EACH ROW BEGIN

REPLACE INTO waitingdes(`desNo` ,`desState` ,`finishTime` ,`stoNo`)
SELECT `desNo` ,`desState` ,`finishTime` ,`stoNo` FROM on_duty_designer 
WHERE stoNo='1'
AND desState='0'ORDER BY finishTime DESC LIMIT 0,1;

END

//--------結果----------------------
desNo   desState             finishTime               stoNo             WDTimeStamp
 D001       0       2018-12-11 10:15:06.000000          1       2018-12-11 16:11:24.617043


//------新增正在等待的號碼至waitingnum，若該號碼尚未被分配、處理、叫號-------
//--空閒的號碼--
CREATE TRIGGER `addWaitingNum` AFTER UPDATE ON `cq2_number`
 FOR EACH ROW BEGIN

REPLACE INTO waitingnum(`numID` ,`numPlate`,`desConfirm` ,`cusArrived` ,`robNo` ,`match_desNo`)
SELECT numID,numPlate,'1','1',robNo,NULL FROM `CQ2_number` WHERE robNo='R001' AND callState='1' 
AND handleState='1' ORDER BY numTime ASC LIMIT 0,1;

END


//--------結果----------------------
numID   desConfirm  cusArrived    robNo   match_desNo          WNTimeStamp
  3          1          1         R001        NULL      2018-12-11 11:04:58.391124

//--空閒的號碼--
CREATE TRIGGER `addWaitingNum2` AFTER INSERT ON `cq2_number`
 FOR EACH ROW BEGIN

REPLACE INTO waitingnum(`numID` ,`numPlate`,`desConfirm` ,`cusArrived` ,`robNo` ,`match_desNo`)
SELECT numID,numPlate,'1','1',robNo,NULL FROM `CQ2_number` WHERE robNo='R001' AND callState='1' 
AND handleState='1' ORDER BY numTime ASC LIMIT 0,1;

END


//------將waitingdes的最空閒理髮師配對給waitingnum裡最閒置的號碼-------
CREATE TRIGGER `match_desNo` AFTER UPDATE ON `waitingNum`
 FOR EACH ROW BEGIN

UPDATE waitingnum SET match_desNo=
(SELECT desNo FROM `waitingdes` WHERE finishTime=(SELECT MIN(finishTime) FROM `waitingdes`) AND desState='0')
WHERE robNo= "R001" AND WNTimeStamp = (SELECT MIN(WNTimeStamp) ) ;

UPDATE waitingdes SET desState="1" WHERE desNo= (SELECT match_desNo FROM waitingnum WHERE WNTimeStamp = (SELECT MIN(WNTimeStamp)))


stoNo="1" AND finishTime=(SELECT MIN(finishTime));

DELETE FROM waitingDes WHERE stoNo="1" AND finishTime=(SELECT MIN(finishTime));

END

//--------
CREATE TRIGGER `updateWaitingDesState=1` AFTER UPDATE ON `waitingnum`
 FOR EACH ROW BEGIN

UPDATE waitingdes SET desState="1" WHERE desNo= 
(SELECT match_desNo FROM waitingnum WHERE WNTimeStamp = (SELECT MIN(WNTimeStamp)));

END

/**/
SELECT REPLACE((SELECT desState FROM waitingdes WHERE stoNo='1'
AND desState='0'ORDER BY finishTime DESC LIMIT 0,1), "0", "1");