<?php


class Option_Control
{
     public function ChangeBillingInformation(){
         $array = array(
             "bankname" => $_POST['bankname'],
             "stk" => $_POST['stk'],
             "ctkbank" => $_POST['ctkbank'],
             "sdt" => $_POST['sdt'],
             "ctkmomo" => $_POST['ctkmomo']
         );
         require_once '../module/Option.php';
         $option = new Option();
         if($option->ChangeBillingInformation(json_encode($array)) == true){
             echo '<script>alert("Thông tin thanh toán đã được thay đổi")</script>';
         }
     }
    public function GetBillingInformation(){
        $array= array();
        require_once '../module/Option.php';
        $option = new Option();
        $json = $option->GetBillingInformation();
        $array =  json_decode($json);
        return $array;
    }
    public function GetBillingInformation1(){
        $array= array();
        require_once './module/Option.php';
        $option = new Option();
        $json = $option->GetBillingInformation();
        $array =  json_decode($json);
        return $array;
    }
}