<?php
class Cart
{
    public $getconect=false;
    function __construct(){
        require_once "ConnectDatabase.php";
        $conectSQL = new connectDatabase();
        $this->getconect = $conectSQL->connect();
    }
    public function addCart($id_user, $id_product, $soluong){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "SELECT id , soluongmua FROM giohang where id_user = '$id_user' and id_sanpham= '$id_product'";
            $getCart= mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($getCart) > 0){
                $getCart =  mysqli_fetch_assoc($getCart);
                $id = $getCart['id'];
                $soluong += $getCart['soluongmua'];
                $sql = "UPDATE giohang set soluongmua = $soluong where id = $id";
                mysqli_query($this->getconect, $sql);
            }
            else {
                $sql = "INSERT INTO giohang value (null,'$id_user','$id_product','$soluong')";
                mysqli_query($this->getconect, $sql);
            }
            return true;
        }
        return 0;
    }
    public function  getNumByIdUser($id_user){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "SELECT id from giohang where id_user = '$id_user'";
            return mysqli_num_rows(mysqli_query($this->getconect, $sql));
        }
        return 0;
    }
    public function getProductCart($id_user){
        if(!$this->getconect){
            return 0;
        }else{
            $datareturn = array();
            $sql = "SELECT gt.id, giaban, img, ten,gt.soluongmua from giohang gt INNER JOIN sanpham sp ON gt.id_sanpham=sp.id  where id_user = '$id_user'";
            $getData = mysqli_query($this->getconect, $sql);
            $dem=0;
            while ($linedata = mysqli_fetch_assoc($getData)){
                $datareturn[$dem++] = $linedata;
            }
            return $datareturn;
        }
        return 0;
    }
    public function deleCart($id_cart){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "DELETE FROM giohang where id = '$id_cart'";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return 0;
    }
}