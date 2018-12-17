<?php
include "config.php";
include "./classes/db.class.php";
$db = new db();
if(!isset($_SESSION)) session_start();	
?>
<?php include "layouts/head.php"; ?>	

<h4 class="title"><span class="text"><strong>
Bạn đã đặt hàng thành công!<br>
Bạn sẽ nhận được hàng sau 2 đến 4 ngày kể từ ngày mua hàng.<br>
Bạn sẽ thanh toán khi nhận được hàng.<br>
Cảm ơn bạn đã mua hàng!
</strong></span></h4>
<div>
		<a href="index.php"> <input type="submit" class="input-block-level search-query" style="color: red" value="Trở về"></a>
</div>		
<?php include "layouts/footer.php"?>