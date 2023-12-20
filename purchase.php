<?php
    if(isset($_POST['gender'])){
        require_once "./controller/Purchase_Control.php";
        $Purchase= new Purchase_Control();
        $Purchase->addPurchase();
    }
?>
<!DOCTYPE html>
<html>
<head>
    <title>Đặt hàng</title>
    <link rel="icon" href="./upload/img/logochuongmobile.png">
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
    <style>
        td{
            font-size: 14px;
            padding-left: 10px;
        }

    </style>
</head>
<body>
<?php include 'views/header.html' ?>
<?php
if(isset($_POST['act'])){
    require_once './controller/Cart_Control.php';
    $getCart = new Cart_Control();
    $getCart-> deleCartByID();
}
?>
<?php
require_once './controller/Cart_Control.php';
$Cart = new Cart_Control();
$getCart = $Cart->getProductCart();
?>

<div class="between">
    <div class="content">
        <div class="container">
            <div class="row" style="margin: 15px 0px">
                <div class="col-md-8" style="padding: 4px">
                    <div class="bg-white" style="padding: 15px 15px">
                        <h5>Sản phẩm đang mua</h5>
                        <table>
                            <thead style="height: 40px;background: #ccc;font-weight: 900; color: #000">
                            <th style="font-weight: 700; color: #222;font-size: 13px">STT</th>
                            <th style="font-weight: 700; color: #222;font-size: 13px">HÌNH ẢNH</th>
                            <th style="font-weight: 700; color: #222;font-size: 13px">TÊN SẢN PHẨM</th>
                            <th style="font-weight: 700; color: #222;font-size: 13px">GIÁ BÁN</th>
                            <th style="font-weight: 700; color: #222;font-size: 13px">SỐ LƯỢNG</th>
                            <th style="font-weight: 700; color: #222;font-size: 13px">THÀNH TIỀN</th>
                            <th style="font-weight: 700; color: #222;font-size: 13px">HÀNH ĐỘNG</th>
                            </thead>
                            <?php
                            $stt = 1;
                            $sumSL = 0;
                            $sumTT = 0;
                            if(sizeof($getCart)==0) echo "<tr class='tr2'><td colspan='7' style='text-align: center; font-size: 20px; font-weight: 600; '>Giỏ hàng rỗng</td></tr>";
                            foreach ($getCart as $line){
                                ?>
                                <tr class="<?php if($stt%2==1) echo 'tr2'; else echo 'tr1'?>">
                                    <td style="text-align: center; font-weight: 500"><?php echo $stt++;?> </td>
                                    <td><img src="<?php echo $line['img']?>" style="width: 60px; height: 60px"></td>
                                    <td><?php echo $line['ten']?></td>
                                    <td style="color: #fd5e14; font-weight: 400"><?php echo number_format($line['giaban'],0,',','.')?></td>
                                    <td style="color: #027dc1; font-weight: 600;text-align: center"><?php echo $line['soluongmua']?></td>
                                    <td style="color: #fd5e14; font-weight: 900"><?php echo number_format($line['giaban'] * $line['soluongmua'],0,',','.')?>đ</td>
                                    <td style="color: #fd7e14;font-weight: bold; text-align: center">
                                        <i title="Xóa tài khoản" id="<?php echo $line['id'] ?>" onclick="deleteitemn(this.id)" class="fas fa-window-close" class="btn btn-danger" ></i>
                                    </td>
                                </tr>
                                <?php
                                $sumTT +=$line['giaban'] * $line['soluongmua'];
                                $sumSL+=$line['soluongmua'];
                            }?>
                        </table>
                    </div>
                </div>
                <div class="col-md-4" style="padding: 4px">
                    <div class="bg-white" style="padding: 5px 15px">
                        <H5 style="margin-top: 10px; width: 100%; text-align: center">ĐẶT HÀNG</H5>
                        <hr>
                        <H5>Thông tin đơn hàng</H5>
                        <div class="row">
                            <div class="col-6 text-pttt">Tổng số sản phẩm:</div>
                            <div class="col-6 text-pttt" style="font-weight: 900"> <?php echo $sumSL?></div>
                            <div class="col-6 text-pttt" >Tổng thanh toán:</div>
                            <div class="col-6 text-pttt" style="font-weight: 900; color: #DC3545"> <?php echo number_format($sumTT,0,',','.')?>đ</div>
                        </div>
                        <hr>
                        <form style="width: 100%;" method="post">
                        <h5>Địa chỉ nhận hàng</h5>

                        <select name="address" style="width: 100%; border-radius: 5px; height: 30px; border:solid 1px #666; font-weight: 500;  font-size: 15px;">
                            <?php
                                require_once './controller/AddressBook_Control.php';
                                $AddressBook = new AddressBook_Control();
                                $dataAddressBook = $AddressBook->getAddressBookByIdUser_convert();
                                foreach ($dataAddressBook as $line){
                                    ?>
                                    <option><?php echo $line?></option>
                            <?php
                                }
                            ?>
                        </select>
                        <span style="font-size: 12px; color: #999">*Thay đổi địa chỉ nhận hàng tại <a href="addressbook.php">Sổ địa chỉ</a>* </span>
                        <hr>
                        <h5>Phương thức thanh toán</h5>
                            <input checked name="gender" type="radio" value="cash" /><span class="text-pttt"> Thanh toán khi nhận hàng <img src="./upload/img/thanh-toan-tien-mat.png" class="img-pttt"></span><br>
                            <input name="gender" type="radio" value="momo" /><span class="text-pttt"> Thanh toán bằng momo  <img src="./upload/img/thanh-toan-momo.png" class="img-pttt"></span><br>
                            <input name="gender" type="radio" value="bank" /><span class="text-pttt"> Thanh toán bằng chuyển khoản <img src="./upload/img/thanh-toan-chuyen-khoan.png" class="img-pttt"></span><br>
                        <hr>
                        <p>

                           <div style="width: 100%;text-align: center"><button class="btn-info btn" style="font-weight: 600">ĐẶT NGAY</button></div>
                        </form>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include 'views/footer.html'?>

<dialog id="xacnhanxoa" style="padding: 10px 15px;border: none; width: 400px;  box-shadow: 0px 0px 15px 0px #aaa; border-radius: 5px; display: none;">
    <p style="font-size: 16px;">Xóa sản phẩm này!</p>
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
