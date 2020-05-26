<?php
//引入(1)寫好的資料庫連結資料database.php
//require_once("database.php");
// required headers
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    

$con = mysqli_connect("localhost","root","");

if (!$con){
    die('Could not connect: ' . mysql_error());
    return json_encode(array('rusult' => '1', 'data' => '伺服器連接失敗'));
}

$selected = mysqli_select_db($con, "project") ;
//mysql_select_db("project", $con);

     $stoNo;
     $stoCity;
     $stoAddress;
     $stoName;
     $robNo;


//SQL設定篩選資料的方式, ORDER BY 為排列順序
 $sql = "SELECT m.robNo, s.stoNo, s.stoCity, s.stoAddress, s.stoName 
            FROM `match_rob` AS m, `store` AS s, `robot` AS r 
            WHERE m.stoNo = s.stoNo ";
 
//使用mysql_query($sql)去撈取資料
 $result = mysqli_query($con,$sql);

while ($row = mysqli_fetch_array($result)){
 //將陣列內容轉存在PHP的array
 $data_array = array (
                "stoNo" => $row['stoNo'],
                "stoCity" => $row['stoCity'],
                "stoAddress" => $row['stoAddress'],
                "stoName" => $row['stoName'],
                "robNo"=> $row['robNo']
        );}
 
//將儲存好資料的array轉成JSON以傳送給網頁進行顯示
echo json_encode($data_array);

?>
