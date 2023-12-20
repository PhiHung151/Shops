<?php
require_once '../../controller/Comment_Control.php';
$Comment = new Comment_Control();
$id_product = $_POST['id_product'];
if(isset($_POST['cmt']) && $_POST['cmt']!=""){
    $commet = $_POST['cmt'];
    $Comment->addComment($id_product,$commet);
}
$getComent =  $Comment->getlistCommentByIdProduct($id_product);
$getCount=sizeof($getComent);
?>
<span style="font-size: 13px; margin-left:10px; position:relative; top:-20px;">Have all <?php echo $getCount ?> comments</span>
<?php
$dem = 0;
foreach ($getComent as $line)
 echo ' <div class="row" style="margin-top:10px">
                           <div class="col-1" style="text-align: center;">
                               <img class="imgicon-avatar-cmt" style="float:left; width:60px; border-radius:60px;"  src="./upload/img/user.png">
                           </div>
                           <div class="col-11">
                               <span style="font-weight: 500">'.$line[1].'</span><br>
                               <span style="font-family: none;">'.$line[0].'</span>
                           </div>
                         </div>';
