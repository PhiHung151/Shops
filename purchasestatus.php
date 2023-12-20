<!DOCTYPE html>
<html>
<head>
    <title>Đơn hàng của tôi</title>
    <link rel="icon" href="./upload/img/logo.png">
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
    require_once './controller/Purchase_Control.php';
    $purchase = new Purchase_Control();
    if(isset($_POST['dele'])){
        $purchase->delePurchaseByI();
    }
?>
<?php
if(isset($_COOKIE['login'])){

    $dataPurchase =$purchase->getPurchaseByIdUser();
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
                        <H4>Đơn hàng của tôi</H4>
                        <div style="color: #999; font-size: 13px; line-height: 13px">*Bạn chỉ có thể thực hiện việc HỦY đối với các đơn hàng chưa được gửi đi*</div>
                        <div style="color: #999;font-size: 13px; line-height: 13px;">*Nếu bạn thanh toán bằng MOMO hoặc chuyển khoản ngân hàng, chúng tôi cần thời gian để xử lý. Vẫn sẽ có nút "Thanh toán" trong thời gian chờ xử lý, nếu bạn đã thanh toán hãy bỏ qua nó.*</div>
                        <style>
                            td{
                                font-size: 13px;
                                padding:5px 0px;
                            }
                        </style>
                        <table style="margin-top: 10px">
                            <thead style="height: 40px;background: #ccc;font-weight: 900; color: #000; font-size: 10px">
                            <th style="font-weight: 900; color: #222; font-size: 12px">STT</th>
                            <th style="font-weight: 900; color: #222; font-size: 12px">TÊN SẢN PHẨM</th>
                            <th style="font-weight: 900; color: #222; font-size: 12px">SỐ LƯỢNG MUA</th>
                            <th style="font-weight: 900; color: #222; font-size: 12px">TỔNG THANH TOÁN</th>
                            <th style="font-weight: 900; color: #222; font-size: 12px">HÌNH THỨC THANH TOÁN</th>
                            <th style="font-weight: 900; color: #222; font-size: 12px">ĐÃ THANH TOÁN</th>
                            <th style="font-weight: 900; color: #222; font-size: 12px">TÌNH TRẠNG GỬI HÀNG</th>
                            <th style="font-weight: 900; color: #222; font-size: 12px">NGÀY ĐẶT HÀNG</th>
                            <th style="font-weight: 900; color: #222; font-size: 12px">ĐỊA CHỈ NHẬN</th>
                            <th style="font-weight: 900; color: #222; font-size: 12px">HÀNH ĐỘNG</th>
                            </thead>
                            <?php
                            $dem=0;
                            foreach($dataPurchase as $line){
                                ?>
                                <tr class="<?php if ($dem%2==0) echo 'tr2'; echo 'tr1'?>">
                                    <td style="font-weight: 600; text-align: center"><?php echo $dem+1?></td>
                                    <td><?php echo $line['sanphham'] ?></td>
                                    <td style="text-align: center; font-weight: 600"><?php echo $line['soluong'] ?></td>
                                    <td style="color: #fd7e14"><?php echo number_format($line['thanhtoan'],0,',','.')?>đ</td>
                                    <td><?php
                                        if($line['hinhthucthanhtoan']==0) echo "<span style='background: #444444; color: #fff; padding: 0px 5px'>Tiền mặt</span>";
                                        else if($line['hinhthucthanhtoan']==1) echo "<span style='background: #c69500; color: #fff; padding: 0px 5px'>Ngân hàng</span>";
                                        else if($line['hinhthucthanhtoan']==2) echo "<span style='background: #ad006c; color: #fff; padding: 0px 5px'>Momo</span>";
                                        ?></td>
                                    <td style="text-align: center">
                                        <?php
                                        if($line['tinhtrangthanhtoan']==0) echo "<span style='background: #c82333; color: #fff; padding: 0px 5px'>Chưa</span>";
                                        else if($line['tinhtrangthanhtoan']==1) echo "<span style='background: #28a745; color: #fff; padding: 0px 5px'>Đã</span>";
                                        ?>
                                    </td>
                                    <td>
                                        <?php
                                        if($line['ttgiaohang']==0) echo "<span style='background: #6f42c1; color: #fff; padding: 0px 5px'>Chưa</span>";
                                        else if($line['ttgiaohang']==1) echo "<span style='background: #2e9ad0; color: #fff; padding: 0px 5px'>Đã gửi</span>";
                                        ?>
                                    </td>
                                    <td>
                                        <?php echo $line['ngaymua'] ?>
                                    </td>
                                    <td>
                                        <textarea><?php echo $line['diachigiaohang'] ?></textarea>
                                    </td>
                                    <td style="text-align: center">
                                        <?php
                                        if($line['ttgiaohang']==0) {?>
                                            <button title="Hủy đơn hàng" id="<?php echo $line['id'] ?>" onclick="deleteitemn(<?php echo $line['id'] ?>)" class="btn btn-outline-danger" style="font-size: 13px; padding: 2px 3px" >
                                                Hủy
                                            </button>
                                            <?php if($line['tinhtrangthanhtoan'] == 0 && $line['hinhthucthanhtoan']!=0) { if($line['hinhthucthanhtoan']==1) {?>
                                                <button title="Thanh toán" id="<?php echo $line['id'] ?>" onclick="payBank(<?php echo $line['id'] ?>)" class="btn btn-info" style="font-size: 13px; padding: 2px 3px; margin-top: 5px" >
                                                    Thanh toán
                                                </button>
                                                <?php } else {?>
                                                <button title="Thanh toán" id="<?php echo $line['id'] ?>" onclick="payMomo(<?php echo $line['id'] ?>)" class="btn btn-info" style="font-size: 13px; padding: 2px 3px; margin-top: 5px" >
                                                    Thanh toán
                                                </button>
                                        <?php } }}
                                        else if($line['ttgiaohang']==1) echo "<span style='background: #444444; color: #fff; padding: 0px 5px; margin: 0px 2px'>Không có hành động</span>";
                                        ?>
                                    </td>
                                </tr>
                                <?php
                                $dem++;
                            }
                            ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<dialog id="xacnhanxoa" style="padding: 10px 15px;border: none; width: 100%; max-width: 600px;  box-shadow: 0px 0px 15px 0px #aaa; border-radius: 5px; display: none; ">
    <p style="font-size: 16px;">Bạn có thể hủy đơn hàng này, bởi vì đơn hàng này vẫn chưa được gửi hàng đi!. Trong trường hợp nếu bạn đã thanh toán qua momo hoặc chuyển khoản ngân hàng, chúng tôi sẽ hoàn lại tiền nếu có phí phát sinh sẽ do bạn chịu.</p>
    <p style="font-weight: 600">Bạn chắc chắn muốn hủy chứ!</p>
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
<dialog id="paybank" style="padding: 15px 10px;border: none;width: 100%; max-width: 600px;  box-shadow: 0px 0px 15px 0px #aaa; border-radius: 5px; display: none;position: fixed; top:50%;left: 50%;  transform: translate(-50%,-50%);">
    <p style="font-size: 17px; font-weight: 400">Chúng tôi cần thời gian để xử lý thanh toán của bạn, nếu bạn đã thanh toán trước đó hãy bỏ qua hành động này. Chúng tôi sẽ xử lý thanh toán của bạn trong thời gian sớm nhất.</p>
    <p style="font-size: 17px; font-weight: 600">Thực hiện thanh toán hoặc bấm hủy</p>
    <hr style="margin-top: -5px; margin-bottom: 5px">
    <button class="btn btn-danger" style="float: right; margin-left: 10px; padding: 2px; font-size: 14px" id="huypay">Hủy</button>
    <form method="post" action="./bankpayment.php" style="text-align: left">
        <input type="hidden" id = "idpay" name="idpay" value="" style="display: none" >
        <button   class="btn btn-info" id="xacnhanedit" style="float: right; padding: 2px 5px">Thanh toán</button>
    </form>
</dialog>
<script>function payBank(clicked_id)
    {
        var xacnhan = document.getElementById('paybank');
        var huyedit = document.getElementById('huypay');
        document.getElementById('idpay').value = clicked_id;
        huyedit.addEventListener('click', function() {
            xacnhan.close();
            xacnhan.style.display='none';
        });
        xacnhan.showModal();
        xacnhan.style.display='block';
    }</script>

<dialog id="paymomo" style="padding: 15px 10px;border: none;width: 100%; max-width: 600px;  box-shadow: 0px 0px 15px 0px #aaa; border-radius: 5px; display: none;position: fixed; top:50%;left: 50%;  transform: translate(-50%,-50%);">
    <p style="font-size: 17px; font-weight: 400">Chúng tôi cần thời gian để xử lý thanh toán của bạn, nếu bạn đã thanh toán trước đó hãy bỏ qua hành động này. Chúng tôi sẽ xử lý thanh toán của bạn trong thời gian sớm nhất.</p>
    <p style="font-size: 17px; font-weight: 600">Thực hiện thanh toán hoặc bấm hủy</p>
    <hr style="margin-top: -5px; margin-bottom: 5px">
    <button class="btn btn-danger" style="float: right; margin-left: 10px; padding: 2px; font-size: 14px" id="huypaymomo">Hủy</button>
    <form method="post" action="./momopayment.php" style="text-align: left">
        <input type="hidden" id = "idpaymomo" name="idpay" value="" style="display: none" >
        <button   class="btn btn-info" id="xacnhanedit" style="float: right; padding: 2px 5px">Thanh toán</button>
    </form>
</dialog>
<script>function payMomo(clicked_id)
    {
        var xacnhan = document.getElementById('paymomo');
        var huyedit = document.getElementById('huypaymomo');
        document.getElementById('idpaymomo').value = clicked_id;
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
