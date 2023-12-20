<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Skin - Đăng nhập</title>
    <link rel="icon" href="./upload/img/logo.png">
    <link rel="stylesheet" href="script/css/loginuser.css">
</head>
<body>
<?php
if(isset($_COOKIE['login'])){
    echo '
        <H2 style="margin-top: 15px; margin-left: 15px">Bạn đã đăng nhập tài khoản!</H2>
        <script>setTimeout(function(){ window.location="./" }, 3000);</script>';
    die();
}
?>
<div class="box">
    <form method="post" action="#" >
        <img src="upload/img/login1.png" style="height: 150px; width: auto"><br>
        <input type="email" placeholder="Email" required  name="email">
        <input type="password" placeholder="Password" required name="password">
        <input type="submit" value="ĐĂNG NHẬP">
    </form>
    <hr>
    <span>Nếu chưa có tài khoản <a href="register.php">Đăng ký</a></span><br>
</div>
<?php
if(isset( $_POST['email'])){
    $email = trim($_POST['email']);
    $pass =  md5($_POST['password']);
    require_once "./module/Account.php";
    $acccout = new Account();
    $access = $acccout->login($email,$pass);
    if($access == 1){
        echo '<script>alert("Chào admin")</script>';
        echo '<script>window.location="./views/admin_index.php";</script>';
    }  else if($access == 0){
        echo '<script>alert("Sai tai khoan")</script>';
        echo '<script>window.location="./login.php";</script>';
    }
    else{
        setcookie('login', $access, time() + 360000);
        echo '<script> alert("Đăng nhập thành công")</script>';
        echo '<script>window.location="./";</script>';
    }
}
?>
</body>
</html>