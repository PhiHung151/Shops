<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Beauty Store - Đăng ký tài khoản</title>
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
        <img src="upload/img/register1.png" style="height: 150px; width: auto"><br>
        <input type="text" placeholder="Tên: 'Nguyen Van A'" required name="name">
        <input type="email" placeholder="Email" required name="email">
        <div id="emaill" style="color: #f00; line-height: 14px; margin-bottom: 10px; margin-top: -5px; font-size: 14px; display: none">Email không hợp lệ</div>
        <input type="password" placeholder="Mật khẩu" required  name="password">
        <input type="password" placeholder="Xác nhận mật khẩu" required name="password2">
        <div id="passerror" style=" display: none;color: #f00; line-height: 14px; margin-bottom: 10px; margin-top: -5px; font-size: 14px">Mật khẩu không khớp</div>
        <input type="text" placeholder="Số điện thoại" required name="phonenumber">
            <div id="sdt" style=" display: none;color: #f00; line-height: 14px; margin-bottom: 10px; margin-top: -5px; font-size: 14px">Số điện thoại không hợp lệ</div>
        <input type="text" placeholder="Địa chỉ" name="address">
        <input type="submit" value="ĐĂNG Ký" >
    </form>
    <hr>
    <span>Nếu đã có tài khoản <a href="login.php" >Đăng nhập</a></span>
    <?php    require_once "./controller/Account_Control.php";
    $temp  =new  Account_Control();
    $temp -> userRegistration();
    ?>

</div>
</body>
</html>