<?php
    $loginadmin = md5("abzhfkHJuhfhY75Hjf");
    if(!isset($_COOKIE[$loginadmin])){
        if(isset( $_POST['email'])){
            $email = trim( $_POST['email']);
            $pass =  md5($_POST['password']);
            require_once "../module/Account.php";
            $acccout = new Account();
            $access = $acccout->loginAdmin($email,$pass);
            if($access === 0)  echo '<script>alert("Đăng nhập thất bại...")</script>';
            else{
                setcookie($loginadmin, $access, time() + 360000);
                echo '<script> alert("Đăng nhập thành công")</script>';
                echo '<script>window.location="./";</script>';
            }
        }
        include '../views/admin_login.html';
    }
    else{
        include '../views/admin_index.php';
    }
?>
