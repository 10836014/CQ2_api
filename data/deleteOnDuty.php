<?php
     
        $con = mysqli_connect("localhost","root","password");

        /*if ($con){
           echo "result:1"; 
        }*/
        if (!$con){
            die('Could not connect: ' . mysqli_error($con));
            return json_encode(array('rusult' => '1', 'data' => '伺服器連接失敗'));
        }

        $selected = mysqli_select_db($con, "project") ;
        //mysql_select_db("project", $con);

        $sql="DELETE FROM on_duty_designer  WHERE desNo='$_POST[desNo]'";

        mysqli_query($con,$sql);

        if (!mysqli_query($con,$sql)){
            //die 'Error: ' . mysqli_error($con);
            echo json_encode(array('rusult' => '1', 'data' => '刪除失敗', 'error' => mysqli_error($con)));
            echo ('Error: ' . mysqli_error($con));
            }else{
            echo json_encode(array('rusult' => '0', 'data' => '刪除成功'));
        }
        mysqli_close($con)
?>
