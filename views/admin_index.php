<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>QUẢN TRỊ CHƯƠNG MOBILE</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="../script/css/adminstyle.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../include/script/ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="../include/fontawesome/css/all.css">
    <script language="javascript" src="http://code.jquery.com/jquery-2.0.0.min.js"></script>
    <!-- <script src="https://code.jquery.com/jquery-latest.js"></script> -->
    <link rel="icon" href="../upload/img/admin_icon.png">
</head>
<body>
<div class="sidebar">
    <div class="logo-details">
        <i class='bx bx-menu'></i>
        <span class="logo_name">MENU</span>
    </div>
    <ul class="nav-links" style="margin-top: -20px">
        <li>
            <div class="iocn-link">
                <a href="?select=management-products">
                    <i class='bx bx-collection' ></i>
                    <span class="link_name">Sản phẩm</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
            </div>
            <ul class="sub-menu">
                <li><a class="link_name" >Sản phẩm</a></li>
                <li><a href="?select=add-new-products">Thêm mới</a></li>
                <li><a href="?select=management-products">Quản lý</a></li>
                <li><a href="?select=product-categories">Phân loại</a></li>
            </ul>
        </li>
        <li>
            <div class="iocn-link">
                <a href="?select=delivery-order">
                    <i class='bx bx-book-alt' ></i>
                    <span class="link_name">Đơn hàng</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
            </div>
            <ul class="sub-menu">
                <li><a class="link_name" href="#">Đơn hàng</a></li>
                <li><a href="?select=unprocessed-order">Chờ xử lý</a></li>
                <li><a href="?select=delivery-order">Chờ giao hàng</a></li>
            </ul>
        </li>
        <li>
            <a href="?select=purchase-history">
                <i class="fas fa-history" style="font-size: 17px"></i>
                <span class="link_name">Lịch sử mua hàng</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="">Lịch sử mua hàng</a></li>
            </ul>
        </li>
        <li>
            <div class="iocn-link">
                <a href="?select=account-management">
                    <i class="far fa-user" style="font-size: 17px"></i>
                    <span class="link_name">Người dùng</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
            </div>
            <ul class="sub-menu">
                <li><a class="link_name" href="?select=account-management">Người dùng</a></li>
                <li><a href="?select=add-new-user">Thêm mới</a></li>
                <li><a href="?select=account-management">Quản lý</a></li>
            </ul>
        </li>
        <li>
            <a href="?select=comment">
                <i class="far fa-comment"></i>
                <span class="link_name">Bình luận</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="#">Chart</a></li>
            </ul>
        </li>
        <li>
            <div class="iocn-link">
                <a href="?select=create-menu">
                    <i class="fab fa-accusoft" style="font-size: 17px"></i>
                    <span class="link_name">Giao diện</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
            </div>
            <ul class="sub-menu">
                <li><a href="?select=create-menu">Menu website</a></li>
            </ul>
        </li>

        <li>
            <div class="iocn-link">
                <a href="?select=payment-settings">
                    <i class='bx bx-cog' ></i>
                    <span class="link_name">Cài đặt</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
            </div>
            <ul class="sub-menu">
                <li><a href="?select=payment-settings">Thanh toán</a></li>
                <li><a href="?select=change-admin-password">Đổi mật khẩu admin</a></li>
            </ul>
        </li>
        <li>
            <div class="profile-details" onclick="logoutadmin()">
                <div class="profile-content">
                    <img src="../upload/img/admin_icon.png" alt="profileImg" class="img_logout">
                </div>
                <div class="name-job">
                    <div class="profile_name">ADMIN</div>
                    <div class="job">Quản trị website</div>
                </div>
                <i class='bx bx-log-out' ></i>
            </div>
        </li>
    </ul>
</div>
<section class="home-section" style="min-width: 700px; ">
    <div style="background: #11101d; width: 100%; height: 30px; line-height:30px ">
        <div class="screen-menu">
            <div style="margin-right: 25px;float: right; font-size: 16px"><a  class="link-home" href="../" style="color: #eee"><i style="padding-right: 5px;" class="fas fa-home">
                    </i>Vào trang web</a> </div>
        </div>
    </div>

    <?php
        if (isset($_GET['select'])){
            $slect = $_GET['select'];
            if($slect=='add-new-user') require_once '../views/add_new_user.html';
            else if($slect=='account-management') require_once "../views/account_management.html";
            else if($slect=='add-new-products') require_once "../views/add_new_products.html";
            else if($slect=='product-categories') require_once "../views/product_categories.html";
            else if($slect=='management-products') require_once "../views/product_management.html";
            else if($slect=='edit-a-product') require_once "../views/edit_a_product.html";
            else if($slect=='comment') require_once "../views/comment.html";
            else if($slect=='delivery-order') require_once "../views/delivery_order.html";
            else if($slect=='purchase-history') require_once "../views/purchase_history.html";
            else if($slect=='unprocessed-order') require_once "../views/unprocessed_order.html";
            else if($slect=='change-admin-password') require_once "../views/change_admin_password.html";
            else if($slect=='payment-settings') require_once "../views/payment_settings.html";
            else if($slect=='create-menu') require_once "../views/create_menu.html";
            else{
                echo "<div style='color: #666; width: 100%; height: 100%;'>
                    <div style='text-align: center; padding-top: 20%; font-weight: 500;font-size: 70px;'>
                        TRANG QUẢN TRỊ
                    </div>
                </div>";
            }
        }else{
         echo "<div style='color: #666; width: 100%; height: 100%;'>
                <div style='text-align: center; padding-top: 20%; font-weight: 500;font-size: 70px;'>
                    TRANG QUẢN TRỊ
                </div>
            </div>";
        } ?>

</section>
<script src="../script/js/adminscript.js"></script>
<script>
    function logoutadmin(){
        document.cookie = "<?php echo $loginadmin ?>=; expires=Thu, 01 Jan 1970 00:00:00 UTC";
        window.location="./";
    }
</script>
</body>
</html>
