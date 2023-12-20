<!DOCTYPE html>
<html>
<head>
    <title>Đặt hàng thành công</title>
    <link rel="icon" href="./upload/img/logo.png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <script src="script/js/myJS.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="script/css/mystyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
<?php include 'views/header.html' ?>
<div class="between">
    <div class="content">
        <div class="container">
            <div class="bg-white" style="margin-bottom: 100px   ;margin-top: 100px;padding-bottom: 20px ;text-align: center; padding: 15px">
                <H2 style="margin-top: 15px; color: #fd7e14">ĐẶT HÀNG THÀNH CÔNG</H2>
                <h4 style="margin-top: 20px; color:#000;">Cảm ơn bạn đã tin tưởng và lựa chọn <a href="./">CHƯƠNG MOBILE</a>, đơn hàng của bạn đã được tạo. Chúng tôi sẽ duyệt đơn hàng và giao hàng trong khoảng 3-7 ngày làm việc.</h4>
                <a href="./">
                    <button class="btn btn-info" style="margin-top: 30px; font-weight: 900; font-size: 20px"> TIẾP TỤC MUA HÀNG</button>
                </a>
                <br>   <br>   <br>
                <p style="margin-bottom: -15px; color: #999">Bạn có thể xem và quản lý đơn hàng tại <a href="./purchasestatus.php">Tình trạng mua hàng</a> </p>
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