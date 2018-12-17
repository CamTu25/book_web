<?php
include "config.php";
include "./classes/db.class.php";
$db = new db();
if(!isset($_SESSION)) session_start();
if (!isset($_SESSION['user']))
{
?>
                                    <script type="text/javascript">
                                        window.location.href="dangnhap.php";
                                    </script>
                                    <?php

}


/*echo "<pre>";
print_r($_SESSION);*/
/*

1. Tham vao bang order
INSERT INTO `order` (`order_id`, `email`, `order_date`, `consignee_name`, `consignee_add`, `consignee_phone`, `status`) VALUES ('111', 'abcd@yahoo.com', '2018-11-20 00:00:00', 'A', 'B', 'C', '0');
2. duyet qua gio hang:
 - Them vao table order_detail
   INSERT INTO `order_detail` (`order_id`, `book_id`, `quantity`, `price`) VALUES ('111', 'td01', '1', '12');


*/ /*echo "<pre>";
   print_r($_SESSION);*/
  $email = $_SESSION["user"]["email"];
  $order_id = time() ."_". $email;
  $order_date = Date("Y-m-d");
  $name = $_SESSION["user"]["name"];
  $address = $_SESSION["user"]["address"];
  $phone = $_SESSION["user"]["phone"];
  $tinhtrang = $_POST["tinhtrang"];
  $sql= "insert into `order` (`email`,`order_id`,`order_date`,`name`,`address`,`phone`,`tinhtrang`) values('".$email."','".$order_id."','".$order_date."','".$name."','".$address."','".$phone."',0)";

  echo "<hr> $sql ";
  $data = $db->queryInsert($sql);
  
	foreach ($_SESSION['giohang'] as $key => $value) {		
		$book_id = $key;
		$quantity = $value["sl"];
		$price =$value["gia"];
		$tongtien =$value["tongtien"];		
		$sql= "insert into `order_detail` (`order_id`, `book_id`, `quantity`, `price`, `tongtien`) VALUES ('".$order_id."', '".$book_id."', '".$quantity."', '".$price."' , '".$tongtien."')";

		echo "<br> $sql ";
		$data = $db->queryInsert($sql);

	}
    //gui emai
	$_SESSION['giohang']= array();
?>
<script type="text/javascript">
  window.location="thongbao.php";
</script>
	