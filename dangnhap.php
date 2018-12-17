<?php
include "config.php";
include "./classes/db.class.php";
include "./include/function.php";
$url=getIndex('url','thanhtoan.php');
$db = new db();
if(!isset($_SESSION)) session_start();
if(isset($_POST['email'])  && isset($_POST['password']))
							 {
							 	$email = $_POST['email'];
								$password = md5($_POST['password']);
								$sql="select * from users where email='".$email."' and password='".$password."'";
								$us = $db->query($sql);
								if(Count($us)>0)
								{
									$_SESSION['user']=$us["0"];
									?>
									<script type="text/javascript">
										window.location.href='<?php echo $url; ?>';
									</script>
									<?php
								}
								else 
									{
										?>
									<script type="text/javascript">
										window.location.href="dangnhap.php";
									</script>
									<?php
									}
							 }
?>
<?php
 include "layouts/head.php"; ?>	
	
			<section class="header_text sub">
			
				<h4><span>Hãy đăng nhập tài khoản của bạn để mua hàng</span></h4>
			</section>	

			<section class="main-content">				
				<div class="row">
					<div class="span5">			

						<h4 class="title"><span class="text"><strong>ĐĂNG NHẬP</strong></span></h4>

						<form action="dangnhap.php" method="post">
							<input type="hidden" username="next" value="Đăng nhập ">
							<fieldset>
								<div class="control-group">
									<label class="control-label">Email</label>
									<div class="controls">
										<input type="text" placeholder="Nhập email" id="email" class="input-xlarge" name="email" >
									</div>
								
								<div class="control-group">
									<label class="control-label">Mật khẩu</label>
									<div class="controls">
										<input type="password" placeholder="Nhập mật khẩu" id="password" class="input-xlarge" name="password" >
									</div>
								</div>
								<div class="control-group">
									<input tabindex="3" class="btn btn-inverse large" type="submit" value="Đăng nhập" name="submit">
									
								</div>
							</fieldset>
						</form>	
							<div class="control-group">
									<a href="index.php"><input type="submit" name="trove" tabindex="3" class="btn btn-inverse large" value="Trở về"></a>
						</div>
						
						<?php 
							if(!empty($error)){
								echo "<p>".$error;
							}
						 ?> 

							</div>

							
				<?php include "layouts/footer.php"; ?>