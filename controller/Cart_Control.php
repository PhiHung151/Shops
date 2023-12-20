<?php
class Cart_Control
{
    public function __construct()
    {
    }
    public function addCart(){
        $id_user = $_POST['id_user'];
        $id_product = $_POST['id_product'];
        $soluong = $_POST['soluong'];
        require_once '../../module/Cart.php';
        $Cart = new Cart();
        $Cart->addCart($id_user,$id_product,$soluong);
    }
    public function getNumByIdUser(){
        if(isset($_COOKIE['login'])){
            $id_user = $_COOKIE['login'];
            require_once "./module/Cart.php";
            $cart = new Cart();
            return $cart->getNumByIdUser($id_user);
        }
        return 0;
    }
    public function getProductCart(){
        if(isset($_COOKIE['login'])){
            $id_user = $_COOKIE['login'];
            require_once "./module/Cart.php";
            $cart = new Cart();
            return $cart->getProductCart($id_user);
        }
        return 0;
    }
    public function deleCartByID(){
        $idCart =  $_POST['dele'];
        require_once './module/Cart.php';
        $Cart = new Cart();
        $Cart->deleCart($idCart);
    }
}