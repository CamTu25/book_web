<?php
session_start();
include "config.php";
include "./classes/db.class.php";
include "./include/function.php";
if(!isset($_SESSION['giohang'])) $_SESSION['giohang'] = array();
$db = new db();
$tam=$_SESSION['giohang'];
$masach=getIndex("masach");
$tensach=getIndex("tensach");
$gia=getIndex("gia");
$sl=getIndex("sl");
$tongtien=$gia*$sl;
if ($masach !='') //Thêm
{
	if (!isset($tam[$masach]))
	{
		$tam[$masach]["tensach"]= $tensach;
		$tam[$masach]["gia"]= $gia;
		$tam[$masach]["sl"]= $sl;
		$tam[$masach]["tongtien"]= $tongtien;

	}
	else $tam[$masach]["sl"] += $sl;
}

$_SESSION['giohang'] = $tam ;
?>
<script type="text/javascript">
	window.location="cart.php";
</script>