<!DOCTYPE html>
<html>
<head>
    <title>Sổ địa chỉ</title>
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
if(isset($_COOKIE['login'])){
    $idUser = $_COOKIE['login'];
    require_once "./module/AddressBook.php";
    $AddressBookMD = new AddressBook();
    if(isset($_POST['act'])){
        $act = $_POST['act'];
        if ($act == 'add'){
            require_once "./controller/AddressBook_Control.php";
            $AddressBook = new AddressBook_Control();
            $AddressBook->addAddressBook();
        }else if ($act == 'edit'){
            require_once "./controller/AddressBook_Control.php";
            $AddressBook = new AddressBook_Control();
            $AddressBook->editAddressBook();
        }else if($act == 'dele'){
            require_once "./controller/AddressBook_Control.php";
            $AddressBook = new AddressBook_Control();
            $AddressBook->deleteAddressBook();
        }
    }
    $getAddressBook =  $AddressBookMD->getAddressBookByIdUser($idUser);
}else{
    echo '
        <H2 style="margin-top: 15px; margin-left: 15px">Bạn chưa đăng nhập tài khoản!</H2>
        <script>setTimeout(function(){ window.location="./login.php" }, 3000);</script>';
    die();
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
                        <H4>SỔ ĐỊA CHỈ</H4>
                        <span style="color: #999">*Sổ địa chỉ là danh sách các địa chỉ dùng để đặt và nhận hàng*</span>
                        <table>
                            <thead style="height: 40px;background: #ccc;font-weight: 900; color: #000">
                            <th style="font-weight: 900; color: #222">STT</th>
                            <th style="font-weight: 900; color: #222">TÊN NGƯỜI NHẬN</th>
                            <th style="font-weight: 900; color: #222">SỐ ĐIỆN THOẠI</th>
                            <th style="font-weight: 900; color: #222">ĐỊA CHỈ NHẬN HÀNG</th>
                            <th style="font-weight: 900; color: #222">HÀNH ĐỘNG</th>
                            </thead>
                            <?php
                                $dem=0;
                               foreach($getAddressBook as $line){
                                  ?>
                                   <tr class="<?php if ($dem%2==0) echo 'tr2'; echo 'tr1'?>">
                                       <td style="font-weight: 600; text-align: center"><?php echo $dem+1?></td>
                                       <td><?php echo $line['name'] ?></td>
                                       <td><?php echo $line['phonenumber'] ?></td>
                                       <td><?php echo $line['address'] ?></td>
                                       <td style="color: #fd7e14;font-weight: bold; text-align: center">
                                           <i title="Xóa tài khoản" id="<?php echo $line['id'] ?>" onclick="deleteitemn(<?php echo $line['id'] ?>)" class="fas fa-window-close" class="btn btn-danger" ></i>
                                           <i title="Sửa thông tin tài khoản" id="<?php echo $line['id'] ?>" onclick="editAddressBook(this.id,'<?php echo $line['name']?>','<?php echo $line['phonenumber']?>','<?php echo $line['address']?>')" class="fas fa-pen-square" ></i>
                                       </td>
                                   </tr>
                            <?php
                                   $dem++;
                            }
                            ?>
                        </table>

                      <div style="text-align: right; margin-top: 10px">  <button class="btn btn-info" style="font-weight: 600" onclick="addAddressBook()">Thêm địa chỉ mới</button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<dialog id="addAddressbook" style="border: none; width: 500px;  box-shadow: 0px 0px 15px 0px #aaa; border-radius: 5px; display: none">
    <button class="button" style="float: right; margin-left: 10px;" id="huyedit">X</button>
    <p style="font-size: 21px; font-weight: 600">Thêm địa chỉ giao hàng mới</p>
    <hr>
    <form method="post" action="#" style="text-align: left; margin-top: -25px">
        <input type="hidden" id = "editid" name="id" value="" style="display: none">
        <br>
        <p style="font-weight: 500; ">Tên người nhận</p>
        <input id="name" class="form-control-sm" type="text" name="name" required  style="width: 100%; border: solid 2px #333">
        <p style="font-weight: 500">Số điện thoại</p>
        <input class="form-control-sm" id="link" type="text" name="phonenumber" required  style="width: 100%; border: solid 2px #333">
        <p style="font-weight: 500">Địa chỉ</p>
        <input  class="form-control-sm" id="code" type="text" name="address" required style="width: 100%; border: solid 2px #333">
        <br><br>
        <button   class="btn btn-info" name="act" value="add" style="float: right">Xác nhận</button>
    </form>
</dialog>

<script>function addAddressBook()
    {
        var xacnhan = document.getElementById('addAddressbook');
        var huyedit = document.getElementById('huyedit');

        huyedit.addEventListener('click', function() {
            xacnhan.close();
            xacnhan.style.display='none';
        });
        xacnhan.showModal();
        xacnhan.style.display='block';
    }</script>

<dialog id="xacnhanxoa" style="padding: 10px 15px;border: none; width: 400px;  box-shadow: 0px 0px 15px 0px #aaa; border-radius: 5px; display: none; ">
    <p style="font-size: 16px;">Thao tác này sẽ xóa bỏ địa chỉ này! bạn chắc chắn chứ!</p>
    <hr style="margin-top: -7px; margin-bottom: 7px">
    <button class="btn btn-danger" style="float: right; margin-left: 10px; padding: 2px; font-size: 14px" id="huydelete">Hủy</button>
    <form style="float: right" method="post">
        <input name="select" value="account-management" style="display: none">
        <input id = "dele" name="dele" value="" style="display: none">
        <button style="padding: 2px; font-size: 14px" class="btn btn-info" name="act" value="dele">Xác nhận</button>
    </form>
</dialog>
<script>function deleteitemn(clicked_id)
    {
        var xacnhan = document.getElementById('xacnhanxoa');
        var id =  document.getElementById(clicked_id);
        var huydelete = document.getElementById('huydelete');
        var dele = document.getElementById('dele');
        dele.value = clicked_id;
        huydelete.addEventListener('click', function() {
            xacnhan.style.display='none';
            xacnhan.close();
        });
        xacnhan.style.display='block';
        xacnhan.showModal();
    }</script>
<dialog id="editit" style="padding: 15px 10px;border: none; width: 500px;  box-shadow: 0px 0px 15px 0px #aaa; border-radius: 5px; display: none;position: fixed; top:50%;left: 50%;  transform: translate(-50%,-50%);">
    <i class="fas fa-window-close"  class="btn btn-danger"  id="huyeditAddressBook" style="float: right; background: #fff; color: #ff2222"></i>
    <p style="font-size: 21px; font-weight: 400">Chỉnh sửa thông tin tài khoản</p>
    <hr style="margin-top: -5px; margin-bottom: 5px">
    <form method="post" action="#" style="text-align: left">
        <input type="hidden" id = "id" name="id" value="" style="display: none" >
        <span style="font-weight: 400; ">Tên người nhận</span><br>
        <input id="hoten" class="form-control-sm" type="text" aria-invalid="name" name="name" required value="" style="width: 100%; border: solid 1px #333">
        <br> <br><span style="font-weight: 400">Số điện thoại</span><br>
        <input  class="form-control-sm" id="phonenumber" type="text" name="phonenumber" required value="" style="width: 100%; border: solid 1px #333">
        <br><br><span style="font-weight: 400">Địa chỉ</span><br>
        <input class="form-control-sm" id="address" type="text" name="address" required value="" style="width: 100%; border: solid 1px #333">
        <p></p>
        <button   class="btn btn-info" id="xacnhanedit" name="act" value="edit" style="float: right; padding: 2px 5px">Xác nhận</button>
    </form>
</dialog>
<script>function editAddressBook(clicked_id, hoten,sodienthoai,diachi)
    {
        var xacnhan = document.getElementById('editit');
        var huyedit = document.getElementById('huyeditAddressBook');
        document.getElementById('id').value = clicked_id;
        document.getElementById('hoten').value = hoten;
        document.getElementById('address').value = diachi;
        document.getElementById('phonenumber').value = sodienthoai;

        huyedit.addEventListener('click', function() {
            xacnhan.close();
            xacnhan.style.display='none';
        });
        xacnhan.showModal();
        xacnhan.style.display='block';
    }</script>

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
