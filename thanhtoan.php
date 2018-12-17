<?php
include "config.php";
include "./classes/db.class.php";
$db = new db();
if(!isset($_SESSION)) session_start();
if (empty($_SESSION['giohang'])) {
	?>
									<script type="text/javascript">
										window.location.href="index.php";
									</script>
									<?php
}
?>
	<?php include "layouts/head.php"; ?>	

	<section class="header_text sub">
			
				<h4><span>Hãy xác nhận thông tin của bạn</span></h4>
			</section>	
<?php
/*echo "<pre>";
print_r($_SESSION);*/

?>
			<section class="main-content">				
				<div class="row">
					<div class="span5">			

						<h4 class="title"><span class="text"><strong>THÔNG TIN</strong></span></h4>

						<form action="xulygiohang.php" method="post">
							<input type="hidden" username="next" value="Đăng nhập ">
							<fieldset>
								<div class="control-group">
									<label class="control-label">Tên người nhận</label>
									<div class="controls">
										<input type="text" placeholder="Nhập tên" class="input-xlarge" name="name" value="<?php echo $_SESSION['user']['name']  ?>">
									</div>
							
								<div class="control-group">
									<label class="control-label">Địa chỉ người nhận</label>
									<div class="controls">
										<input type="text" placeholder="Nhập địa chỉ" class="input-xlarge" name="address" value="<?php echo $_SESSION['user']['address']  ?>" >
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Số điện thoại người nhận</label>
									<div class="controls">
										<input type="text" placeholder="Nhập số điện thoại" class="input-xlarge" name="phone" value="<?php echo $_SESSION['user']['phone']  ?>" >
									</div>
								</div>
								<div class="control-group">
									<input type="submit" name="thantoan" tabindex="3" class="btn btn-inverse large" value="Thanh toán">
								</div>
							</fieldset>
						</form>	
						<div class="control-group">
									<a href="index.php"><input type="submit" name="trove" tabindex="3" class="btn btn-inverse large" value="Trở về"></a>
						</div>
						

							</div>
							

<?php include "layouts/footer.php"?>