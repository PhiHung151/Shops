<?php


class Account_Control
{
    public function __construct()
    {

    }
    function ChangePasswordUser()
    {

        if(isset($_POST['oldpassword'])){
            $oldpass = $_POST['oldpassword'];
            $pass1 =  $_POST['new1password'];
            $pass2 =  $_POST['new2password'];
            if($pass1!=$pass2){
                echo '<script>alert("Mật khẩu mới và xác nhận không khớp nhau...")</script>';
            }elseif(strlen($pass2) < 5){
                echo '<script>alert("Mật khẩu mới phải lớn hơn 5 ký tự..")</script>';

            } else{
                require_once "./module/Account.php";
                $accout = new Account();
                $id = $id = $_COOKIE['login'];
                $access = $accout->ChangePassword($id, $oldpass, $pass1);
            }
         //   echo '<script>window.location="./changethepassword.php";</script>';
        }
    }
    function ChangePasswordAdmin()
    {

        if(isset($_POST['oldpassword'])){
            $oldpass = $_POST['oldpassword'];
            $pass1 =  $_POST['new1password'];
            $pass2 =  $_POST['new2password'];
            if($pass1!=$pass2){
                echo '<script>alert("Mật khẩu mới và xác nhận không khớp nhau...")</script>';
            }elseif(strlen($pass2) < 5){
                echo '<script>alert("Mật khẩu mới phải lớn hơn 5 ký tự..")</script>';

            } else{
                require_once "../module/Account.php";
                $accout = new Account();
                $access = $accout->ChangePassword(0, $oldpass, $pass1);
            }
            //   echo '<script>window.location="./changethepassword.php";</script>';
        }
    }
    public function ChangeInfoUser()
    {
        if(isset($_POST['name'])){
            $id = $_COOKIE['login'];
            $name = trim($_POST['name']);
            $address = trim($_POST['address']);
            $phonenumber = trim($_POST['phonenumber']);
            include "include/classnumber.php";
            $classnumber = new classnumber;
            $hl = true;

            if(!$classnumber->itemstringisnumber($phonenumber)){
                echo '<script>alert("Số điện thoại không hợp lệ...")</script>';
                $hl = false;
            }
            if($hl==true){
                require_once "./module/Account.php";
                $accout = new Account();
                $access = $accout->ChangeInformation($id,$name, $phonenumber, $address);
                if($access==true) echo '<script>alert("Thông tin đã được thay đổi đã được thay đổi...")</script>';
                else echo '<script>alert("Thay đổi thông tin thất bại...")</script>';
            }
        //    echo '<script>window.location="./account.php";</script>';
        }
    }
    public function ChangePassUserByAmin(){
        if(isset($_POST['act'])){
            $pass = $_POST['pass'];
            $id = $_POST['id'];

            if(strlen($pass) < 5){
                echo '<script>alert("Mật khẩu mới phải lớn hơn 5 ký tự..")</script>';

            }else{
                require_once "../module/Account.php";
                $accout = new Account();
                $access = $accout->ChangePasswordUserByAdmin($id, $pass);
            }
            echo '<script>window.location="./?select=account-management";</script>';
        }
    }
    public function ChangeInfoUserByAmin()
    {
        if(isset($_POST['act'])){
            $id = $_POST['id'];
            $name = trim($_POST['name']);
            $address = trim($_POST['address']);
            $phonenumber = trim($_POST['phonenumber']);
            include "../include/classnumber.php";
            $classnumber = new classnumber;
            $hl = true;

            if(!$classnumber->itemstringisnumber($phonenumber)){
                echo '<script>alert("Số điện thoại không hợp lệ...")</script>';
                $hl = false;
            }
            if($hl==true){
                require_once "../module/Account.php";
                $accout = new Account();
                $access = $accout->ChangeInformation($id,$name, $phonenumber, $address);
                if($access==true) echo '<script>alert("Thông tin đã được thay đổi đã được thay đổi...")</script>';
                else echo '<script>alert("Thay đổi thông tin thất bại...")</script>';
            }
            echo '<script>window.location="./?select=account-management";</script>';
        }
    }
    public function userRegistration(){

        if (isset($_POST['name'])) {
            $email = trim($_POST['email']);
            $password = $_POST['password'];
            $password2 = $_POST['password2'];
            $name = trim($_POST['name']);
            $address = trim($_POST['address']);
            $phonenumber = trim($_POST['phonenumber']);
            require_once "./include/classnumber.php";
            $classnumber = new classnumber;
            $hl = true;

            if (strlen(strstr($email, "@")) <= 0 || strlen(strstr($email, ".")) <= 0) {
                echo '<script>document.getElementById("emaill").style.display = "block"</script>';
                $hl = false;
            }
            if (!$classnumber->itemstringisnumber($phonenumber)) {
                echo '<script>document.getElementById("sdt").style.display = "block"</script>';
                $hl = false;
            }
            if ($password != $password2) {

                echo '<script>document.getElementById("passerror").style.display = "block"</script>';
                $hl = false;
            } elseif (strlen($password) < 5) {
                echo '<script>document.getElementById("passerror").style.display = "block";
                document.getElementById("passerror").textContent = "Mật khẩu phải có trên 5 ký tự";
                </script>';
                $hl = false;
            }
            if ($hl == true) {
                include "./module/Account.php";
                $accout = new Account();
                $password = md5($password);
                $access = $accout->Registration($email, $password, $name, $phonenumber, $address);
                $id = $accout->getIdByEmail($email);
                if ($access === true) {
                    require_once './module/AddressBook.php';
                    $AddressBook = new AddressBook();
                    $AddressBook->addAddressBook($id,$name,$phonenumber,$address);

                    setcookie('login', $id, time() + 360000);
                    echo '<script> alert("Đăng ký thành công"); window.location="./";</script>';
                } else {

                }
            }
        }
    }
    public function addUser(){

        if (isset($_POST['name'])) {
            $email = trim($_POST['email']);
            $password = $_POST['password'];
            $password2 = $_POST['password2'];
            $name = trim($_POST['name']);
            $address = trim($_POST['address']);
            $phonenumber = trim($_POST['phonenumber']);
            require_once "../include/classnumber.php";
            $classnumber = new classnumber;
            $hl = true;

            if (strlen(strstr($email, "@")) <= 0 || strlen(strstr($email, ".")) <= 0) {
                echo '<script>document.getElementById("emaill").style.display = "block"</script>';
                $hl = false;
            }
            if (!$classnumber->itemstringisnumber($phonenumber)) {
                echo '<script>document.getElementById("sdt").style.display = "block"</script>';
                $hl = false;
            }
            if ($password != $password2) {

                echo '<script>document.getElementById("passerror").style.display = "block"</script>';
                $hl = false;
            } elseif (strlen($password) < 5) {
                echo '<script>document.getElementById("passerror").style.display = "block";
                document.getElementById("passerror").textContent = "Mật khẩu phải có trên 5 ký tự";
                </script>';
                $hl = false;
            }
            if ($hl == true) {
                include "../module/Account.php";
                $accout = new Account();
                $password = md5($password);
                $access = $accout->Registration($email, $password, $name, $phonenumber, $address);
                if ($access === true) {
                    $id = $accout->getIdByEmail($email);
                    require_once '../module/AddressBook.php';
                    $AddressBook = new AddressBook();
                    $AddressBook->addAddressBook($id,$name,$phonenumber,$address);
                    echo '<script> alert("Tài khoản đã được thêm thành công")</script>';
                } else {

                }
            }
        }
    }
}