<?php
class WaitingNum{
 
    // database connection and table name
    private $conn;
    private $table_name = "waitingNum";
 
    // object properties
    public $numID;
    public $desConfirm;
    public $cusArrived;
    public $robNo;
    public $match_des;
    public $WNTimeStamp;

    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }

    function readCallingNum(){
        // query to read single record
        $query="SELECT * FROM `waitingNum` WHERE robNo= ? AND desConfirm='0' AND match_desNo IS NOT NULL ORDER BY WNTimeStamp DESC LIMIT 0,1";
        //$query="SELECT a.* , b.numplate FROM `waitingNum` AS a ,`cq2_number` AS b WHERE a.numID=b.numID AND robNo= ? AND desConfirm='0' ORDER BY WNTimeStamp DESC LIMIT 0,1";
        //$query="SELECT DISTINCT m.robNo, s.stoNo, s.stoCity, s.stoAddress, s.stoName FROM `match_robot` AS m, `store` AS s WHERE m.match_stoNo = s.stoNo" ;
        // prepare query statement
        $stmt = $this->conn->prepare( $query );
    
        // bind id of product to be updated
        $stmt->bindParam(1, $this->robNo);
    
        // execute query
        $stmt->execute();
    
        // get retrieved row
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
    
        // set values to object properties
        $this->numID = $row['numID'];
        $this->numPlate = $row['numPlate'];
        $this->desConfirm = $row['desConfirm'];
        $this->cusArrived = $row['cusArrived'];
        $this->robNo = $row['robNo'];
        $this->match_desNo = $row['match_desNo'];
        $this->WNTimeStamp = $row['WNTimeStamp'];
    }

    function readNumber(){
        // query to read single record
        $query="SELECT * FROM `waitingNum` WHERE robNo= ? AND desConfirm='1' AND match_desNo IS NOT NULL ORDER BY WNTimeStamp DESC LIMIT 0,1";
        
        // prepare query statement
        $stmt = $this->conn->prepare( $query );
    
        // bind id of product to be updated
        $stmt->bindParam(1, $this->robNo);
    
        // execute query
        $stmt->execute();
    
        // get retrieved row
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
    
        // set values to object properties
        $this->numID = $row['numID'];
        $this->numPlate = $row['numPlate'];
        $this->desConfirm = $row['desConfirm'];
        $this->cusArrived = $row['cusArrived'];
        $this->robNo = $row['robNo'];
        $this->match_desNo = $row['match_desNo'];
        $this->WNTimeStamp = $row['WNTimeStamp'];
    }

}
?>