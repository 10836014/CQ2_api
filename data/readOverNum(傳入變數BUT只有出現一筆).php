<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
 
// include database and object files
include_once '../config/database.php';
include_once '../object/overNum.php';
 
// get database connection
$database = new Database();
$db = $database->getConnection();
 
// prepare product object
$overNum = new overNum($db);
 
// set ID property of product to be edited
$overNum->robNo = isset($_GET['robNo']) ? $_GET['robNo'] : die();
//$on_duty->robNo = isset($_GET['robNo']) ? $_GET['robNo'] : die();
 
// read the details of product to be edited
$overNum->readOverNum();
 
// create array
$overNum_arr = array(
        "numID" => $overNum -> numID,
        "robNo" => $overNum -> robNo,
        "desNo" => $overNum -> desNo
); 

// make it json formatqc  
print_r(json_encode($overNum_arr));
?>