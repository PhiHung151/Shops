<style>

    .tr1{
        background: #f5f5f5;
    }
    .tr2{
        background: #fff;
    }
    .td1{
        padding-left: 10px;
        width: 30%;
        font-weight: 500;
    }
    .td2{
        padding-left: 10px;
        width: 70%;
        font-weight: 400;
    }
    table{
        width: 100%;
        min-width: 100%;
        margin: auto;
        border-collapse: separate;
        border-spacing: 0;
    }


    table thead th {
        font-size:14px;
        background: #dedede;
        color: #4C68D7;
        position: sticky;
        top: 0;
        padding: 5px 5px;
    }

    .col-12 table th, .col-12 table td {
        padding: 5px 5px;
        vertical-align: top;
    }
    tr img{
        margin: 5px;
    }
</style>
<?php
   if(isset($_POST['id'])){
       $id = $_POST['id'];
       require_once '../../module/Product.php';
       $product = new Product();
       $getdata = $product->getProductById($id);
?>
<div class="col-12 bg-white" style="margin-top: 25px; padding-top: 8px; padding-bottom: 18px">
    <H4 style="text-align: center; margin-bottom: 25px">THÔNG SỐ KỸ THUẬT</H4>
    <table>
        <tr class="tr1">
            <td class="td1" style="width: 50%">Thương hiệu</td>
            <td class="td2"   <?php if ($getdata['thuonghieu']=='[Chưa cập nhật]') echo 'style = "color:#c22"'?>><?php echo $getdata['thuonghieu']?></td>
        </tr>
        <tr class="tr1">
            <td class="td1">Trọng lượng</td>
            <td class="td2"   <?php if ($getdata['trongluong']=='[Chưa cập nhật]') echo 'style = "color:#c22"'?>><?php echo $getdata['trongluong']?></td>
        </tr>
        <tr class="tr2">
            <td class="td1">Phụ kiện đi kèm</td>
            <td class="td2"   <?php if ($getdata['phukien']=='[Chưa cập nhật]') echo 'style = "color:#c22"'?>><?php echo $getdata['phukien']?></td>
        </tr>
    </table>
</div>
<?php } ?>