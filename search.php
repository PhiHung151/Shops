<!DOCTYPE html>
<html>
<head>
    <title>Tìm kiếm sản phẩm</title>
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
<?php
$key="";
if(isset($_GET['key'])) $key = $_GET['key'];
?>
<?php
    require_once './module/Product.php';
    $Product = new Product();
    $getdata = $Product->getListProduct();
?>
<?php include 'views/header.html' ?>
<div class="between">
    <div class="content">
        <div class="container">
            <br>     <br>
            <H2><span style="color: #000"><?php echo $key?> </span> <span style="color:#888">- Kết quả tìm kiếm</span></H2>
            <br>
        <div class="row">
            <?php $dem=0;
            foreach ($getdata as $line){
                $splitKey =  explode (' ' , $key);
                foreach ($splitKey as $keyItem){
                if($keyItem!="") if(strlen(strstr(strtolower($line['ten']),strtolower($keyItem))) > 0){
                ?>
                <div class="col-md-4 col-sm-6 col-lg-3 col-6">
                    <a href="products.php?receive=<?php echo $line['id'] ?>">
                        <div class="per-box">
                            <img class="img-avatarpr" src="<?php echo $line['img']?>" alt="san pham">
                            <div class="name-pr"><?php echo $line['ten']?></div>
                            <div class="price-pe"><?php echo number_format($line['giaban'], 0, ',', '.'); ?>₫</div>
                        </div>
                    </a>
                </div>
                <?php
                    $dem=1;
                    break;
            }}}
            if($dem==0)
                echo "<H5 style='color: #111'>Không tìm thấy kết quả phù hợp! Hãy thử tìm kiếm với một từ khóa khác!</H5><br><br><br>";
            ?>
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