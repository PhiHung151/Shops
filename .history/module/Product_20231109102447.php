<?php
class Product
{
    public $getconect=false;
    function __construct(){
        require_once "ConnectDatabase.php";
        $conectSQL = new connectDatabase();
        $this->getconect = $conectSQL->connect();
    }
    public function addProductCategory($name,$lever, $parent){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "INSERT INTO phanloai value (null,'$name','$lever','$parent',0)";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return 0;
    }

    public function editProductCategory($id,$name,$lever, $parent){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "UPDATE phanloai set tenphanloai='$name', capdo='$lever',id_phanloaicha = '$parent' where id = $id";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return 0;
    }
    public function  getListProductCategory(){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "SELECT * FROM phanloai";
            $getquery= mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($getquery) <=0) return array();
            else{
                $data = array(array());
                $dem=0;
                while ($linedata = mysqli_fetch_assoc($getquery)){
                    $data[$dem][0] = $linedata['tenphanloai'];
                    $data[$dem][1] = $linedata['capdo'];
                    if( $data[$dem][1] == 1) $data[$dem][2] = "[Trống]";
                    else {
                        $idphanloaicha = $linedata['id_phanloaicha'];
                        $sql = "SELECT tenphanloai FROM phanloai where id='$idphanloaicha'";
                        $getPhanloaicha = mysqli_query($this->getconect, $sql);
                        if(mysqli_num_rows($getPhanloaicha)>0){
                            $data[$dem][2] = mysqli_fetch_assoc($getPhanloaicha)['tenphanloai'];
                        }else $data[$dem][2]="[Trống]";
                    }
                    $data[$dem][3] = $linedata['id'];
                    $data[$dem][4] =  $linedata['id_phanloaicha'];
                    $data[$dem][5] =  $linedata['showmenu'];
                    $dem++;
                }
                return $data;
            }
        }
        return array();
    }
    public function  getMenu(){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "SELECT * FROM phanloai where showmenu=1";
            $getquery= mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($getquery) <=0) return array();
            else{
                $data = array(array());
                $dem=0;
                while ($linedata = mysqli_fetch_assoc($getquery)){
                    $data[$dem][0] = $linedata['tenphanloai'];
                    $data[$dem][1] = $linedata['capdo'];
                    if( $data[$dem][1] == 1) $data[$dem][2] = "[Trống]";
                    else {
                        $idphanloaicha = $linedata['id_phanloaicha'];
                        $sql = "SELECT tenphanloai FROM phanloai where id='$idphanloaicha'";
                        $getPhanloaicha = mysqli_query($this->getconect, $sql);
                        if(mysqli_num_rows($getPhanloaicha)>0){
                            $data[$dem][2] = mysqli_fetch_assoc($getPhanloaicha)['tenphanloai'];
                        }else $data[$dem][2]="[Trống]";
                    }
                    $data[$dem][3] = $linedata['id'];
                    $data[$dem][4] =  $linedata['id_phanloaicha'];
                    $data[$dem][5] =  $linedata['showmenu'];
                    $dem++;
                }
                return $data;
            }
        }
        return array();
    }
    public function getListProductCategoryLever1(){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "SELECT * FROM phanloai where capdo=1";
            $getquery= mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($getquery) <=0) return array();
            else{
                $data = array(array());
                $dem=0;
                while ($linedata = mysqli_fetch_assoc($getquery)){
                    $data[$dem][0] = $linedata['id'];
                    $data[$dem][1] = $linedata['tenphanloai'];
                    $dem++;
                }
                return $data;
            }
        }
        return array();
    }
    public function deleteProductCategoryByID($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "DELETE FROM phanloai WHERE id = '$id'";
            mysqli_query($this->getconect, $sql);
            $sql = "UPDATE phanloai set capdo = 1 where  id_phanloaicha = $id";
            mysqli_query($this->getconect, $sql);
            $sql = "UPDATE sanpham set id_phanloai = 0 where  id_phanloai = $id";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return 0;
    }
    public function deleteProductByID($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "DELETE FROM sanpham WHERE id = '$id'";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return 0;
    }
    public function add_new_product_todatabase($phanloai, $ten,$img,$giaban,$tinhtrang,$soluong,$posts,$thuonghieu,$trongluong,$phukien){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "INSERT INTO sanpham value (null,$phanloai,'$ten','$img',$giaban,'$tinhtrang',$soluong,$posts,'$thuonghieu','$trongluong','$phukien')";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return 0;
    }
    public function createMenu($input, $id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "UPDATE phanloai SET showmenu ='$input' WHERE id = '$id'";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return 0;
    }
    public function edit_a_product_todatabase($id, $phanloai, $ten,$giaban,$tinhtrang,$soluong,$posts,$thuonghieu,$trongluong, $phukien){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "UPDATE sanpham set id_phanloai = $phanloai,ten = '$ten', giaban = $giaban,tinhtrang = '$tinhtrang',soluong = $soluong,posts='$posts',thuonghieu ='$thuonghieu',trongluong='$trongluong',phukien='$phukien' where id = $id";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return 0;
    }
    public function updata_image_product_by_id($id, $path){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "UPDATE sanpham set img = '$path' where id = $id";
            mysqli_query($this->getconect, $sql);
            return true;
        }
        return 0;
    }
    public function getProductById($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "SELECT * FROM sanpham where id ='$id'";
            $getquery= mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($getquery) <=0) return array();
            else{
                $data = mysqli_fetch_assoc($getquery);
                $phanloai = $data['id_phanloai'];
                $sql = "SELECT tenphanloai FROM phanloai where id= $phanloai";
                $data['phanloaitext'] = mysqli_fetch_assoc(mysqli_query($this->getconect, $sql))['tenphanloai'];
                if($data['giaban'] == "") $data['giaban'] = "[Chưa cập nhật]";
                if($data['tinhtrang'] =="")  $data['tinhtrang'] ="[Chưa cập nhật]";
                if($data['thuonghieu'] =="")  $data['thuonghieu'] ="[Chưa cập nhật]";
                if($data['soluong'] == "") $data['soluong'] = "[Chưa cập nhật]";
                if($data['posts'] =="")  $data['phukien'] ="[Chưa cập nhật]";
                if($data['trongluong'] =="")  $data['trongluong'] ="[Chưa cập nhật]";
                if($data['phukien'] =="")  $data['phukien'] ="[Chưa cập nhật]";
                return $data;
            }
        }
        return array();
    }

    public function getProductById2($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "SELECT * FROM sanpham where id =$id";
            $getquery= mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($getquery) <=0) return array();
            else{
                $data = mysqli_fetch_assoc($getquery);
                $phanloai = $data['id_phanloai'];
                $sql = "SELECT tenphanloai FROM phanloai where id= $phanloai";
                $data['phanloaitext'] = mysqli_fetch_assoc(mysqli_query($this->getconect, $sql))['tenphanloai'];
                return $data;
            }
        }
        return array();
    }
    public function getNameCategorybyID($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "SELECT tenphanloai FROM phanloai where id =$id";
            $getquery = mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($getquery) <=0) return 0;
            return mysqli_fetch_assoc($getquery)['tenphanloai'];
        }
        return 0;
    }
    public function getListProductByIDCategory($id){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "SELECT * FROM sanpham where id_phanloai='$id'";
            $getquery= mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($getquery) <=0) return array();
            else{
                $data = array(array());
                $dem=0;
                while ($linedata = mysqli_fetch_assoc($getquery)){
                    $data[$dem] = $linedata;
                    $phanloai = $linedata['id_phanloai'];
                    $sql = "SELECT tenphanloai FROM phanloai where id= $phanloai";
                    $data[$dem]['phanloaitext'] = mysqli_fetch_assoc(mysqli_query($this->getconect, $sql))['tenphanloai'];
                    if($data[$dem]['phanloaitext'] == 'Chưa phân loại') $data[$dem]['phanloaitext'] = "[".$data[$dem]['phanloaitext']."]";
                    if($data[$dem]['tinhtrang'] == "") $data[$dem]['tinhtrang']='[Chưa cập nhật]';
                    $dem++;
                }
                return $data;
            }
        }
        return array();
    }
    public function getListProduct(){
        if(!$this->getconect){
            return 0;
        }else{
            $sql = "SELECT * FROM sanpham";
            $getquery= mysqli_query($this->getconect, $sql);
            if(mysqli_num_rows($getquery) <=0) return array();
            else{
                $data = array(array());
                $dem=0;
                while ($linedata = mysqli_fetch_assoc($getquery)){
                    $data[$dem] = $linedata;
                    $phanloai = $linedata['id_phanloai'];
                    $sql = "SELECT tenphanloai FROM phanloai where id= $phanloai";
                    $data[$dem]['phanloaitext'] = mysqli_fetch_assoc(mysqli_query($this->getconect, $sql))['tenphanloai'];
                    if($data[$dem]['phanloaitext'] == 'Chưa phân loại') $data[$dem]['phanloaitext'] = "[".$data[$dem]['phanloaitext']."]";
                    if($data[$dem]['tinhtrang'] == "") $data[$dem]['tinhtrang']='[Chưa cập nhật]';
                    $dem++;
                }
                return $data;
            }
        }
        return array();
    }

}