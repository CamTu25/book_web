<?php
include "config.php";
include "../classes/db.class.php";
$db = new db();
$ma = $_GET['id'];
$sql= "delete from book where book_id='$ma' ";
//echo $sql;
$data = $db->query($sql);
header("location:admin.php");

