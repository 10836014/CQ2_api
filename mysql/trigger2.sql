//--Example--
    -> BEGIN
    ->     IF NEW.amount < 0 THEN
    ->         SET NEW.amount = 0;
    ->     ELSEIF NEW.amount > 100 THEN
    ->         SET NEW.amount = 100;
    ->     END IF;
    -> END;
//----------- 


//------新增要排隊的理髮師至waitingdes

     BEGIN
         IF OLD.`desNo`!=(SELECT `desNo` FROM on_duty_designer WHERE stoNo='1'AND desState='0'ORDER BY finishTime DESC LIMIT 0,1)  THEN
             INSERT INTO waitingdes(`desNo` ,`desState` ,`finishTime` ,`stoNo`)
                SELECT `desNo` ,`desState` ,`finishTime` ,`stoNo` FROM on_duty_designer 
                WHERE stoNo='1'AND desState='0'ORDER BY finishTime DESC LIMIT 0,1;
         END IF;
     END;
INSERT INTO waitingdes(`desNo` ,`desState` ,`finishTime` ,`stoNo`)
SELECT `desNo` ,`desState` ,`finishTime` ,`stoNo` FROM on_duty_designer 
WHERE stoNo='1'AND desState='0'ORDER BY finishTime DESC LIMIT 0,1;