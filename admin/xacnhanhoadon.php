<?php 
	include "config.php";
	include "../classes/db.class.php";
	include "../include/function.php";
	$order_id=getIndex("order_id");
	$ac=getIndex("ac");
	if($order_id!="")
	{
		$db=new db();
		if ($ac=="xacnhan") 
		{
			$sql="UPDATE `order` SET `tinhtrang` = '1' WHERE `order`.`order_id` = '".$order_id."' AND `tinhtrang`='0'";
			$kq=$db->queryUpdate($sql);

		}
		if($ac=="dagiao")
		{
			$sql="UPDATE `order` SET `tinhtrang` = '2' WHERE `order`.`order_id` = '".$order_id."' AND `tinhtrang`='1'";
			$kq=$db->queryUpdate($sql);
		}	
		?>
									<script type="text/javascript">
										window.location.href="donhang.php";
									</script>
									<?php
	}
 ?>