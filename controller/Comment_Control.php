<?php
class Comment_Control{
    public function __construct()
    {
    }
    public function getlistCommentByIdProduct($id_pr){
        require_once '../../module/Comment.php';
        $comment = new Comment();
        return $comment->getlistCommentByProductId($id_pr);
    }
    public function addComment($id_pr, $cmt){
        $id_user = $_COOKIE['login'];
        require_once '../../module/Comment.php';
        $comment = new Comment();
        return $comment->addNewComment($id_pr, $id_user, $cmt);
    }
    public function getlistComment(){
        require_once '../module/Comment.php';
        $comment = new Comment();
        return $comment->getlistComment();

    }
    public function deleteCommentByID($id){
        require_once '../module/Comment.php';
        $comment = new Comment();
        $comment->deleteCommentByID($id);
    }
}