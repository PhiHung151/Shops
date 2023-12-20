<?php


class PurchaseHistory
{
    public $getconect=false;
    function __construct(){
        require_once "ConnectDatabase.php";
        $conectSQL = new connectDatabase();
        $this->getconect = $conectSQL->connect();
    }
    public function getListPurchaseHistory(){
        if(!$this->getconect){
            return 0;
        }else{
            $sql="SELECT * FROM lichsumuahang";
            $query= mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($query) <=0) return array();
            else{
                $dataRt = array(array());
                $dem=0;
                while($line = mysqli_fetch_assoc($query)){
                    $dataRt[$dem++] = $line;
                }
                return $dataRt;
            }
        }
        return array();
    }
    public function delePurchaseHistoryById($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql="DELETE FROM lichsumuahang where id='$id'";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return false;
    }
    public function getListPurchaseHistorybyIdUser($id_user){
        if(!$this->getconect){
            return 0;
        }else{
            $sql="SELECT * FROM lichsumuahang where id_user = '$id_user'";
            $query= mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($query) <=0) return array();
            else{
                $dataRt = array(array());
                $dem=0;
                while($line = mysqli_fetch_assoc($query)){
                    $dataRt[$dem++] = $line;
                }
                return $dataRt;
            }
        }
        return array();
    }
}