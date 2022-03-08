<?php
session_start();
 
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: index.php");
    exit;
}else{
    $userid = $_SESSION["id"];
    $query = "select * from user where IdUser = $userid limit 1";
    $row = mysqli_query($link,$query);
    $userprofile = mysqli_fetch_row($row);
}
?>