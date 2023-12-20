<!DOCTYPE html>
<html>
<head>
    <title>Giỏ hàng của tôi</title>
    <link rel="icon" href="./upload/img/logo.png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="script/css/mystyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
<?php
    if(isset($_POST['act'])){
        require_once './controller/Cart_Control.php';
        $getCart = new Cart_Control();
        $getCart-> deleCartByID();
    }
?>
<?php include 'views/header.html' ?>
<?php
require_once './controller/Cart_Control.php';
$Cart = new Cart_Control();
$getCart = $Cart->getProductCart();
?>
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
                        <h2 style="margin-top: 15px">Giỏ hàng</h2>
                        <hr>
                        <table>
                            <thead style="height: 40px;background: #ccc;font-weight: 900; color: #000">
                            <th style="font-weight: 900; color: #222">STT</th>
                            <th style="font-weight: 900; color: #222">HÌNH ẢNH</th>
                            <th style="font-weight: 900; color: #222">TÊN SẢN PHẨM</th>
                            <th style="font-weight: 900; color: #222">GIÁ BÁN</th>
                            <th style="font-weight: 900; color: #222">SỐ LƯỢNG</th>
                            <th style="font-weight: 900; color: #222">THÀNH TIỀN</th>
                            <th style="font-weight: 900; color: #222">HÀNH ĐỘNG</th>
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
                                    <td style="color: #027dc1; font-weight: 600;"><?php echo $line['soluongmua']?></td>
                                    <td style="color: #fd5e14; font-weight: 900"><?php echo number_format($line['giaban'] * $line['soluongmua'],0,',','.')?>đ</td>
                                    <td style="color: #fd7e14;font-weight: bold; text-align: center">
                                        <i title="Xóa tài khoản" id="<?php echo $line['id'] ?>" onclick="deleteitemn(this.id)" class="fas fa-window-close" class="btn btn-danger" ></i>
                                    </td>
                                </tr>
                                <?php
                                $sumTT +=$line['giaban'] * $line['soluongmua'];
                                $sumSL+=$line['soluongmua'];
                            }?>
                            <tr style="background: #e2e2e2;font-weight: 900; color: #c82333" >
                                <td colspan="4" style="font-weight: 900;padding-left: 35px; ">TỔNG SỐ</td>
                                <td><?php echo $sumSL?></td>
                                <td style=""><?php echo number_format($sumTT,0,',','.')?>đ</td>
                                <td></td>
                            </tr>
                        </table>
                        <div style="margin-top: 10px; text-align: right">
                            <form action="purchase.php">
                                <?php if ($sumSL>0) echo '<button class="btn btn-info" style="font-weight: 600">THANH TOÁN NGAY</button>'; else echo "<br><br>"?>
                            </form>
                        </div>
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
</body>
</html>
