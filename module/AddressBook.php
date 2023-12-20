<?php
class AddressBook
{
    public $getconect=false;
    function __construct(){
        require_once "ConnectDatabase.php";
        $conectSQL = new connectDatabase();
        $this->getconect = $conectSQL->connect();
    }
    public function addAddressBook($id_user,$name,$phonenumber,$address){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "INSERT INTO sodiachi value(null,$id_user,'$name','$phonenumber','$address')";
            echo $sql;
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return 0;
    }
    public function getAddressBookByIdUser($user_id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "SELECT * FROM sodiachi where id_user = $user_id";
            $getSQL = mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($getSQL) == 0) return array();
            else{
                $rtdata = array(array());
                $dem = 0;
                while ($linedata = mysqli_fetch_assoc($getSQL)){
                    $rtdata[$dem++] = $linedata;
                }
                return $rtdata;
            }
        }
        return array();
    }
    public function deleAddressBookById($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "DELETE FROM sodiachi where id = $id";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return false;
    }
    public function editAddressBookbyID($id,$name,$phonenumber,$address){
        if(!$this->getconect){
            return 0;
        }else{
           $sql = "UPDATE sodiachi set name = '$name', phonenumber = '$phonenumber',address='$address' where id = $id";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return false;
    }

}