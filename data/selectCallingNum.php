<?php
     
        $con = mysqli_connect("localhost","root","");

        /*if ($con){
           echo "result:1"; 
        }*/
        if (!$con){
            die('Could not connect: ' . mysql_error());
            return json_encode(array('rusult' => '1', 'data' => '伺服器連接失敗'));
        }

        $selected = mysqli_select_db($con, "project") ;
        //mysql_select_db("project", $con);

        $sql="SELECT * FROM `CQ2_number` WHERE robNo='$_POST[robNo]' AND callState='1' AND handleState='1' ORDER BY numTime ASC LIMIT 0,1";

        mysqli_query($con,$sql);

        if (!mysqli_query($con,$sql))
        {
        //die 'Error: ' . mysqli_error($con);
        echo json_encode(array('rusult' => '1', 'data' => '修改失敗'));
        echo ('Error: ' . mysqli_error($con));
        }else{
        echo json_encode(array('rusult' => '0', 'data' => '修改成功'));
        }
        mysqli_close($con);

?>


BEGIN

INSERT INTO waitingnum(`numID` ,`desConfirm` ,`cusArrived` ,`robNo` ,`match_desNo`)
SELECT numID,'1','1',robNo,NULL,NULL FROM `CQ2_number` 
WHERE robNo='R001' AND callState='1' AND handleState='1' ORDER BY numTime ASC LIMIT 0,1;

END