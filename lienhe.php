<?php
if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/db.class.php";
include "./include/function.php";

$db = new db();
$name_user		= postIndex("name_user");
$email_user 	= postIndex("email_user");
$thongtin	= postIndex("thongtin");
$submit		= postIndex("submit");
$sql ="insert into contact (name_user,email_user, thongtin) values ('".$name_user."','".$email_user."','".$thongtin."')";
//echo $sql;
$db->queryInsert($sql);
?>

<?php include "layouts/head.php"; ?>			
			
			<section class="header_text sub">
				<h4><span>Liên hệ</span></h4>
			</section>
			<section class="main-content">				
				<div class="row">				
					<div class="span5">
						<div>
							<h5>THÔNG TIN </h5>
							<p><strong>Điện thoại:</strong>&nbsp;01234567890<br>
							<strong>Fax:</strong>&nbsp;+04 (123) 456-7890<br>
							<strong>Email:</strong>&nbsp;<a href="index.php">VBOOKS.CF</a>								
							</p>
						</div>
					</div>
					<div class="span7">
						<p>Có một số nguyên nhân gây ra lỗi trong khi bạn sử dụng trang web của chúng tôi, bạn có thể gửi phản ánh đến chúng tôi.</p>
						<form method="post" action="lienhe.php">
							<fieldset>
								<div class="clearfix">
									<label for="name"><span>Họ tên:</span></label>
									<div class="input">
										<input tabindex="1" size="18" id="name" name="name_user" type="text" value="<?php echo $name_user;?>" class="input-xlarge" placeholder="Name">
									</div>
								</div>
								
								<div class="clearfix">
									<label for="email"><span>Email:</span></label>
									<div class="input">
										<input tabindex="2" size="25" id="email" name="email_user" type="text" value="<?php echo $email_user;?>" class="input-xlarge" placeholder="Email Address">
									</div>
								</div>
								
								<div class="clearfix">
									<label for="email"><span>Tin nhắn:</span></label>
									<div class="input">
										<input tabindex="3" size="25" id="thongtin" name="thongtin" type="text" value="<?php echo $thongtin;?>" class="input-xlarge" placeholder="Tin nhắn">
									</div>
								</div>
								
								
								<div class="actions">
									<input tabindex="4" class="btn btn-inverse large" type="submit" name="submit" value="Gửi" >
								</div>
							</fieldset>
						</form>
						<?php

if ($submit !="")
{
	$err= "";
	if (strlen($name_user)<6 ) 		    $err .="Hãy nhập Họ tên!<br>";
	if (strlen($email_user)<6 ) 		$err .="Hãy nhập Email!<br>";
	if (strlen($thongtin)<6 ) 		    $err .="Hãy nhập thêm thông tin!<br>";
	?>
    <div class="info">
    	<?php 
			if ($err !="") echo $err;
			else
			  {
				echo "Xinh Chào : $name_user <br>";
				echo "Cảm ơn bạn đã đóng góp ý kiến!";
			  }
		?>
    </div>
    <?php

}
?>
					</div>				
				</div>
			</section>			

						<?php include "layouts/footer.php"; ?>