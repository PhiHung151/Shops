<?php


class Purchase
{
    public $getconect=false;
    function __construct(){
        require_once "ConnectDatabase.php";
        $conectSQL = new connectDatabase();
        $this->getconect = $conectSQL->connect();
    }
    public function addPurchase($soluong, $gia,$thanhtoan,$hinhthucthanhtoan,$diachigiaohang,$tinhtrangthanhtoan,$sanpham,$ngaymua,$id_user,$noidungTT){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "INSERT INTO tinhtrangdonhang value (null,$soluong, $gia,$thanhtoan,$hinhthucthanhtoan,'$diachigiaohang',$tinhtrangthanhtoan,'$sanpham','$ngaymua',0,0,'$id_user','$noidungTT')";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return 0;
    }
    public function getPurchaseByIdUser($id_user){
        if(!$this->getconect){
            return 0;
        }else{
            $sql="SELECT * FROM tinhtrangdonhang where id_user = '$id_user'";
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
    public function getListPurchaseDelivery(){
        if(!$this->getconect){
            return 0;
        }else{
            $sql="SELECT * FROM tinhtrangdonhang where (hinhthucthanhtoan = 2 and tinhtrangthanhtoan = 1 and ttgiaohang=0) or (hinhthucthanhtoan = 1 and tinhtrangthanhtoan = 1 and ttgiaohang=0) or (hinhthucthanhtoan = 0 and ttgiaohang=0)";
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
    public function getListPurchaseUnprocessed(){
        if(!$this->getconect){
            return 0;
        }else{
            $sql="SELECT * FROM tinhtrangdonhang where (hinhthucthanhtoan = 2 and tinhtrangthanhtoan = 0) or (hinhthucthanhtoan = 1 and tinhtrangthanhtoan = 0)";
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
    public function getPurchaseById($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql="SELECT * FROM tinhtrangdonhang where id = '$id'";
            $query= mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($query) <=0) return array();
            else{
                return mysqli_fetch_assoc($query);
            }
        }
        return array();
    }
    public function delePurchaseById($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql="DELETE FROM tinhtrangdonhang where id = '$id'";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return false;
    }
    public function paymentBrowsing($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql="UPDATE tinhtrangdonhang set tinhtrangthanhtoan = '1' where id = '$id'";
             mysqli_query($this->getconect, $sql);
           return true;
        }
        return false;
    }
    public function deleteOder($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql="DELETE FROM tinhtrangdonhang where id = '$id'";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return false;
    }
    public function browseShipping($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql="UPDATE tinhtrangdonhang set ttgiaohang = '1' where id = '$id'";
            mysqli_query($this->getconect, $sql);

            $sql="SELECT * FROM tinhtrangdonhang where id = '$id'";
            $query = mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($query)>0) {
                $data = mysqli_fetch_assoc($query);
                $name = $data['sanphham'];
                $soluong= $data['soluong'];
                $thanhtoan= $data['thanhtoan'];
                $hinhthucthanhtoan= $data['hinhthucthanhtoan'];
                $diachigiaohang= $data['diachigiaohang'];
                $ngaydat= $data['ngaymua'];
                $ngaygui= date("d/m/Y");
                $id_user= $data['id_user'];
                $sql="INSERT INTO lichsumuahang value (null ,'$name','$soluong','$thanhtoan','$hinhthucthanhtoan','$diachigiaohang','$ngaydat','$ngaygui','$id_user')";
                mysqli_query($this->getconect, $sql);
            }
            return true;
        }
        return false;
    }

}