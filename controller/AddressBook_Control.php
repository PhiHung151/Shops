<?php
class AddressBook_Control{
    public function __construct()
    {
    }
    public function addAddressBook(){
        $name = $_POST['name'];
        $phonenumber = $_POST['phonenumber'];
        $address = $_POST['address'];
        $id_user = $_COOKIE['login'];
        include "include/classnumber.php";
        $classnumber = new classnumber;
        $hl = true;
        if(!$classnumber->itemstringisnumber($phonenumber)){
            echo '<script>alert("Số điện thoại không hợp lệ...")</script>';
        }else{
            require_once './module/AddressBook.php';
            $AddressBook = new AddressBook();
            $AddressBook->addAddressBook($id_user,$name,$phonenumber,$address);
        }
        echo '<script>window.location="./addressbook.php";</script>';
        return true;
    }
    public function editAddressBook(){
        $name = $_POST['name'];
        $phonenumber = $_POST['phonenumber'];
        $address = $_POST['address'];
        $id = $_POST['id'];
        include "include/classnumber.php";
        $classnumber = new classnumber;
        $hl = true;
        if(!$classnumber->itemstringisnumber($phonenumber)){
            echo '<script>alert("Số điện thoại không hợp lệ...")</script>';
        }else{
            require_once './module/AddressBook.php';
            $AddressBook = new AddressBook();
            $AddressBook->editAddressBookbyID($id,$name,$phonenumber,$address);
        }
       echo '<script>window.location="./addressbook.php";</script>';
        return true;
    }
    public function deleteAddressBook(){
        $id =  $_POST['dele'];
        require_once './module/AddressBook.php';
        $AddressBook = new AddressBook();
        $AddressBook->deleAddressBookById($id);
        return true;
    }
    public function getAddressBookByIdUser_convert(){
        $id_user =  $_COOKIE['login'];
        require_once './module/AddressBook.php';
        $AddressBook = new AddressBook();
        $getAddressBookByIdUser_convert = $AddressBook->getAddressBookByIdUser($id_user);
        $arrayAddressBook = array();
        $dem=0;
        foreach ($getAddressBookByIdUser_convert as $line){
            $arrayAddressBook[$dem++] = $line['name'] . " ". $line['phonenumber'].", ".$line['address'];
        }
        return $arrayAddressBook;
    }
}