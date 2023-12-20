<?php
class Purchase_Control
{
    public function addPurchase(){
        $gender = $_POST['gender'];
        if($gender=='cash'){
            $gender=0;
        }else if($gender=='bank'){
        $gender=1;
    }else{
            $gender=2;
        }
        $id_user = $_COOKIE['login'];
        $tinhtrangthanhtoan = 0;
        $address = $_POST['address'];
        $ngaymua = date("d/m/Y");
        require_once './controller/Cart_Control.php';
        $Cart = new Cart_Control();
        $getCart = $Cart->getProductCart();
        require_once 'module/Purchase.php';
        $Purchase = new Purchase();
        require_once './module/Cart.php';
        $Cart=new Cart();
        $sumTT=0;
        foreach ($getCart as $line){
            $sanpham = $line['ten'];
            $soluong = $line['soluongmua'];
            $gia = $line['giaban'];
            $id_cart=$line['id'];
            $thanhtoan = $soluong*$gia;
            $noidungTT = "THANHTOAN MHD".$id_user.$thanhtoan;
            $sumTT+=$thanhtoan;
            $Purchase->addPurchase($soluong,$gia,$thanhtoan,$gender,$address,$tinhtrangthanhtoan,$sanpham,$ngaymua,$id_user,$noidungTT);
            $Cart->deleCart($id_cart);
        }
        if($gender==0){
            echo '<script>window.location="./finishedorder.php";</script>';
        }else if($gender==1){
            echo "<script>window.location='./bankpayment.php?pay=$sumTT';</script>";
        }else{
            echo "<script>window.location='./momopayment.php?pay=$sumTT';</script>";
        }
       return true;
    }
    public function getPurchaseByIdUser(){
        $id_user = $_COOKIE['login'];
        require_once './module/Purchase.php';
        $purchase = new Purchase();
        return $purchase->getPurchaseByIdUser($id_user);
    }
    public function getListPurchaseUnprocessed(){
      //  $id_user = $_COOKIE['login'];
        require_once '../module/Purchase.php';
        $purchase = new Purchase();
        return $purchase->getListPurchaseUnprocessed();
    }
    public function getListPurchaseDelivery(){
     //   $id_user = $_COOKIE['login'];
        require_once '../module/Purchase.php';
        $purchase = new Purchase();
        return $purchase->getListPurchaseDelivery();
    }
    public function delePurchaseByI(){
        $id = $_POST['dele'];
        require_once './module/Purchase.php';
        $purchase = new Purchase();
        return $purchase->delePurchaseById($id);
    }
    public function getPurchaseById($id){
        require_once './module/Purchase.php';
        $purchase = new Purchase();
        return $purchase->getPurchaseById($id);
    }
    public function paymentBrowsing(){
        $id = $_POST['duyetdon'];
        require_once '../module/Purchase.php';
        $purchase = new Purchase();
        $kq = $purchase->paymentBrowsing($id);
        if ($kq == true) echo "<script>alert('Đơn hàng đã được duyệt')</script>" ;
        else  echo "<script>alert('Duyệt đơn hàng thất bại, sảy ra lỗi trong quá trình')</script>" ;
    }
    public function deleteOder(){
        $id = $_POST['dele'];
        require_once '../module/Purchase.php';
        $purchase = new Purchase();
        $kq = $purchase->deleteOder($id);

    }
    public function  browseShipping(){
        $id = $_POST['duyetdon'];
        require_once '../module/Purchase.php';
        $purchase = new Purchase();
        $kq = $purchase->browseShipping($id);
        if ($kq == true) echo "<script>alert('Xác nhận đã gửi đơn hàng này thành công');
        window.location='?select=delivery-order';</script>" ;
        else  echo "<script>alert('Xảy ra lỗi')</script>" ;
    }

}