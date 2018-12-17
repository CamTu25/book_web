<?php
if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/db.class.php";
include "./include/function.php";

$db = new db();
$email		= postIndex("email");
$username 	= postIndex("username");
$password1	= md5(postIndex("password1"));
$password2	= md5(postIndex("password2"));
$name		= postIndex("name");
$address	= postIndex("address");
$phone		= postIndex("phone");
$sm 		= postIndex("submit");

$sql ="INSERT INTO users (email, username, password, name, address, phone) values ('".$email."','".$username."','".$password1."','".$name."','".$address."','".$phone."')";
//echo $sql;
$db->queryInsert($sql);
?>
<?php include "layouts/head.php"; ?>		
<?php
?>			

					<div class="span7">					
						<h4 class="title"><span class="text"><strong>ĐĂNG KÝ</strong></span></h4>
						<form action="dangki.php" method="post" class="form-stacked" >
							<fieldset>
								<div class="control-group">
									<label class="control-label">Địa chỉ Email:</label>
									<div class="controls">
										<input type="text" placeholder="Nhập email" class="input-xlarge" name="email" value="<?php echo $email;?>">
								</div>
								</div>
                                <div class="control-group">
									<label class="control-label">Tên người dùng:</label>
									<div class="controls">
										<input type="text" placeholder="Nhập tên" class="input-xlarge" name="username" value="<?php echo $username;?>">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Mật khẩu:</label>
									<div class="controls">
										<input type="password" placeholder="Nhập mật khẩu" class="input-xlarge" name="password1">
									</div>
								</div>
                                <div class="control-group">
									<label class="control-label">Xác nhận lại mật khẩu:</label>
									<div class="controls">
										<input type="password" placeholder="Nhập lại mật khẩu" class="input-xlarge" name="password2">
									</div>
								</div>
								
                                <div class="control-group">
									<label class="control-label">Họ tên</label>
									<div class="controls">
										<input type="text" placeholder="Nhập họ tên" class="input-xlarge" name="name" value="<?php echo $name;?>">
									</div>
								</div>
									<div>
									<label class="control-label">Địa chỉ</label>
									<div class="controls">
										<input type="text" placeholder="Nhập địa chỉ" class="input-xlarge" name="address" value="<?php echo $address ?>">
									</div>				                            
								<div class="control-group">
									<label class="control-label">Số điện thoại</label>
									<div class="controls">
										<input type="text" placeholder="Nhập số điện thoại" class="input-xlarge" name="phone" value="<?php echo $phone ?>">
									</div>	
								</div>
								<hr>
								<div class="actions"><input tabindex="9" class="btn btn-inverse large" type="submit" name="submit" value="Tạo tài khoản" ></div>
							</fieldset>
						</form>	
						<div class="actions"><a href="index.php"><input tabindex="9" class="btn btn-inverse large" type="submit" name="sm" value="Trở về" ></a></div>
<?php

if ($sm !="")
{
	$err= "";
	if (strlen($email)<6 ) 		    $err .="Email ít nhất phải 6 ký tự!<br>";
	if (strlen($username)<6 ) 		$err .="Username ít nhất phải 6 ký tự!<br>";
	if ($password1!= $password2) 	$err .="Mật khẩu và mật khẩu nhập lại không khớp. <br>";
	if(strlen($password1)<8) 		$err .="Mật khẩu phải ít nhất 8 ký tự.<br>";
	if(str_word_count($name)<2) 	$err .="Họ tên phải chứa ít nhất 2 từ.<br> ";
	if(str_word_count($address)<2) 	$err .="Địa chỉ phải chứa ít nhất 2 từ.<br> ";
	if (strlen($phone)<6 )      	$err .="Số điện thoại phải chứa ít nhất 6 kí tự.<br> ";
	?>
    <div class="info">
    	<?php 
			if ($err !="") echo $err;
			else
			  {
				// echo "Email : $email <br>";
				// echo "Username: $username <br>";
				// echo "Mật khẩu đã mã hóa Md5:".md5($password1) ."<br>";
				// echo "Họ tên: ". ucwords($name)."<br>";
				// echo "Địa chỉ: ". ucwords($address)."<br>";
				// echo "Số điện thoại: ". ucwords($phone)."<br>";
				echo "Xinh Chào : $username <br>";
				echo "Bạn đã đăng kí thành công!!";
			  }
		?>
    </div>
    <?php

}
?>
					</div>				
				</div>
			</fieldset>
		</form>
	</div>
			<?php include "layouts/footer.php"; ?>
				
		

