<?php


class Option
{
    public $getconect=false;
    function __construct(){
        require_once "ConnectDatabase.php";
        $conectSQL = new connectDatabase();
        $this->getconect = $conectSQL->connect();
    }
 public function ChangeBillingInformation($json){
     if(!$this->getconect){
         return 0;
     }else{
         $sql = "UPDATE option SET value ='$json' where name ='payment'";
         mysqli_query($this->getconect, $sql);
         return true;
     }
     return 0;
 }
 public function GetBillingInformation(){
     if(!$this->getconect){
         return 0;
     }else{
         $sql = "SELECT value FROM `option` WHERE name = 'payment'";
         $data = mysqli_query($this->getconect, $sql);
         if(mysqli_num_rows($data) >0) return mysqli_fetch_assoc($data)['value'];
         return true;
     }
     return 0;
 }
}