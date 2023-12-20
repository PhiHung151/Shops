<?php


class PurchaseHistory_Control
{
    public function __construct()
    {
    }
    public function getListPurchaseHistory(){
        require_once '../module/PurchaseHistory.php';
        $purchaseHistory = new PurchaseHistory();
        return $purchaseHistory->getListPurchaseHistory();
    }
   public function delePurchaseHistoryById(){
        $id = $_POST['deleid'];
        require_once '../module/PurchaseHistory.php';
        $purchaseHistory = new PurchaseHistory();
        $purchaseHistory->delePurchaseHistoryById($id);
    }
    public function getListPurchaseHistorybyIdUser(){
        $id_user = $_COOKIE['login'];
        require_once './module/PurchaseHistory.php';
        $purchaseHistory = new PurchaseHistory();
        return $purchaseHistory->getListPurchaseHistorybyIdUser($id_user);
    }
}