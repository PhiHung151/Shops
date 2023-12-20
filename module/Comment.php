<?php


class Comment
{
    private $conect;

    public function __construct()
    {
        require_once "ConnectDatabase.php";
        $this->conect = new connectDatabase();
        $this->conect = $this->conect->connect();
    }


    public function getlistCommentByProductId($id_product)
    {
        if (!$this->conect) {
            return false;
        } else {
            $data = array(array());
            $sql = "SELECT * from comment where id_product = '$id_product'";
            $getcmt = mysqli_query($this->conect, $sql);
            if (mysqli_num_rows($getcmt) <= 0) {
                return array();
            }
            else {
                $dem=0;
                while ($line = mysqli_fetch_assoc($getcmt)){
                    $id_user = $line['id_user'];
                    $sql ="SELECT name FROM user where id = '$id_user'";
                    $getUser = mysqli_query($this->conect,$sql);
                    $data[$dem][0] =  $line['cmt'];
                    $data[$dem][1] = mysqli_fetch_assoc($getUser)['name'];
                    $dem++;
                }
            }
            return $data;
        }
        return array();
    }
    public function getlistComment()
    {
        if (!$this->conect) {
            return false;
        } else {
            $data = array(array());
            $sql = "SELECT * from comment";
            $getcmt = mysqli_query($this->conect, $sql);
            if (mysqli_num_rows($getcmt) <= 0) {
                return array();
            }
            else {
                $dem=0;
                while ($line = mysqli_fetch_assoc($getcmt)){
                    $id_user = $line['id_user'];
                    $sql ="SELECT name FROM user where id = '$id_user'";
                    $getUser = mysqli_query($this->conect,$sql);
                    $id_sanpham = $line['id_product'];
                    $sql ="SELECT ten FROM sanpham where id = '$id_sanpham'";
                    $getProduct = mysqli_query($this->conect,$sql);
                    $data[$dem][0] =  $line['cmt'];
                    $data[$dem][1] = mysqli_fetch_assoc($getUser)['name'];
                    $data[$dem][2]  = mysqli_fetch_assoc($getProduct)['ten'];
                    $data[$dem][3] = $line['id'];
                    $dem++;
                }
            }
            return $data;
        }
        return array();
    }

    public function deleteCommentByID($id)
    {
        if (!$this->conect) {
            return false;
        } else {
            $sql = "delete from comment where id = $id";
            mysqli_query($this->conect, $sql);
            return true;
        }
        return false;
    }
    public function addNewComment($id_prduct,$id_user,$cmt){
        if (!$this->conect) {
            return false;
        } else {
            $sql = "INSERT INTO comment value (null ,'$id_user','$id_prduct','$cmt')";
            mysqli_query($this->conect, $sql);
            return true;
        }
        return false;
    }
}
