<?php
     
        $con = mysqli_connect("localhost","root","password");

        /*if ($con){
           echo "result:1"; 
        }*/
        if (!$con){
            die('Could not connect: ' . mysql_error());
            return json_encode(array('rusult' => '1', 'data' => '伺服器連接失敗'));
        }

        $selected = mysqli_select_db($con, "project") ;
        //mysql_select_db("project", $con);

        //$sql="INSERT INTO waitingNum (numID, robNo) SELECT CQ2_number.numID , robNo FROM CQ2_number WHERE robNo='$_POST[robNo]' AND callState='1' AND handleState='1' ORDER BY numTime ASC LIMIT 0,1";
        $sql="REPLACE INTO waitingdes(`desNo`, `desState`, `finishTime`, `stoNo`)
                VALUES ('$_POST[desNo]','0', NOW(), '$_POST[stoNo]')";

        if (!mysqli_query($con,$sql))
        {
        //die 'Error: ' . mysqli_error($con);
        echo json_encode(array('rusult' => '1', 'data' => '添加失敗', 'error' => mysqli_error($con)));
        echo ('Error: ' . mysqli_error($con));
        }else{
        echo json_encode(array('rusult' => '0', 'data' => '添加成功'));
        }
        mysqli_close($con)
?>
