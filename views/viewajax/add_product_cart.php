<?php
    if(isset($_POST['soluong'])){
        include '../../controller/Cart_Control.php';
        $Cart_Control = new Cart_Control();
        $Cart_Control->addCart();
    }
?>