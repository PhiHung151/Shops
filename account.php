
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý tài khoản</title>
    <link rel="icon" href="./upload/img/logo.png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="script/js/myJS.js"></script>
    <link rel="stylesheet" href="script/css/mystyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
<?php
if (!isset($_COOKIE['login'])){
    echo '
        <H2 style="margin-top: 15px; margin-left: 15px">Bạn chưa đăng nhập tài khoản!</H2>
            <script>setTimeout(function(){ window.location="./login.php" }, 3000);</script>';
    die();
}
?>
<?php
if(isset($_COOKIE['login'])){
    $idUser = $_COOKIE['login'];
    require_once "./module/Account.php";
    $acccout = new Account();
    if(isset($_POST['act'])){
        require_once "./controller/Account_Control.php";
        $temp  =new  Account_Control();
        $temp -> ChangeInfoUser();
    }
    $dataUser = $acccout->getUser($idUser);
}
?>
<?php include 'views/header.html' ?>
<div class="between">
    <div class="content">
        <div class="container">
            <div class="row" style="margin: 15px 0px">
                <div class="col-md-3" style="padding: 4px">
                    <div class="bg-white" style="padding: 5px 15px">
                        <?php include "./views/menuacount.html" ?>
                    </div>
                   </div>
                <div class="col-md-9" style="padding: 4px">
                        <div class="bg-white" style="padding: 15px 15px">
                            <H4>THÔNG TIN TÀI KHOẢN</H4>
                            <div style="width: 40%; height: 3px; background:  #ccc"></div>
                            <p style="width: 100%; text-align: center; margin-top: 25px">
                                <img style="height: 170px; width: 170px; border-radius: 170px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTht9-qZYmqErdGMhJVbRf7BfhLRGspNWaFnR8nddu3x7Da7nqh23vsG6VWtG_VE9G9kLU&usqp=CAU">
                                <H3 style="text-transform:uppercase; text-align: center; font-weight: 900"><?php echo $dataUser['name']?></H3>
                            </p>
                            <hr style="width: 40%">
                            <span>Họ tên:</span>
                            <p style="font-weight: 600"><?php echo $dataUser['name']?></p>
                            <span>Địa chỉ:</span>
                            <p style="font-weight: 600"><?php echo $dataUser['address']?></p>
                            <span>Số điện thoại:</span>
                            <p style="font-weight: 600"><?php echo $dataUser['phonenumber']?></p>
                            <span>Email:</span>
                            <p style="font-weight: 600"><?php echo $dataUser['email']?></p>
                            <button class="btn btn-info" onclick=" editInfoUser()">Chỉnh sửa thông tin</button>

                            <dialog id="editit" style="border: none; width: 500px;  box-shadow: 0px 0px 15px 0px #aaa; border-radius: 5px; display: none">
                                <button class="button" style="float: right; margin-left: 10px;" id="huyedit">X</button>
                                <p style="font-size: 21px; font-weight: 600">Chỉnh sửa thông tin tài khoản</p>
                                <hr>
                                <form method="post" action="#" style="text-align: left">
                                    <input type="hidden" id = "editid" name="id" value="" style="display: none">
                                    <br>
                                    <p style="font-weight: 500; ">Họ tên</p>
                                    <input id="name" class="form-control-sm" type="text" name="name" required value="<?php echo $dataUser['name']?>" style="width: 100%; border: solid 2px #333">
                                    <p style="font-weight: 500">Địa chỉ</p>
                                    <input  class="form-control-sm" id="code" type="text" name="address" required value="<?php echo $dataUser['address']?>" style="width: 100%; border: solid 2px #333">
                                    <p style="font-weight: 500">Số điện thoại</p>
                                    <input class="form-control-sm" id="link" type="text" name="phonenumber" required value="<?php echo $dataUser['phonenumber']?>" style="width: 100%; border: solid 2px #333">
                                    <p></p>
                                    <button   class="btn btn-info" id="xacnhandelete" name="act" value="edit" style="float: right">Xác nhận</button>
                                </form>
                            </dialog>

                            <script>function editInfoUser()
                                {
                                    var xacnhan = document.getElementById('editit');
                                    var huyedit = document.getElementById('huyedit');

                                    huyedit.addEventListener('click', function() {
                                        xacnhan.close();
                                        xacnhan.style.display='none';
                                    });
                                    xacnhan.showModal();
                                    xacnhan.style.display='block';
                                }</script>


                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include 'views/footer.html'?>
<script>
    $(window).load(function(){
        responsive();
        $(window).resize(function(){
            responsive();
        });
    });
</script>
</body>
</html>
