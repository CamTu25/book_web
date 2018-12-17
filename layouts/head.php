
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title> VBOOKS</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">

					<form method="GET" action="timkiem.php">
					<input type="text" name="ts" class="input-block-level search-query" style="color: red" Placeholder="Tìm kiếm">
					</form>
				</div>

				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">	 
						 <?php
						//	print_r($_SESSION['user']); (trở về trang đăng chủ nếu đăng nhập ngay từ đầu)
						if(!isset($_SESSION['user']))
						{
						?>			
						<li><a href="dangnhap.php?url=<?php echo $_SERVER["REQUEST_URI"]; ?>">Đăng nhập</a></li>
						<?php 
						} 
						else{
						?> 
						<a href="dangxuat.php"> Đăng xuất : <?php echo $_SESSION['user']["username"] ?></a> 
						<?php
						}
						?>
							<li><a href="cart.php">Giỏ hàng</a></li>	
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.php" class="logo pull-left"><img src="images/logo/4.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
						<ul>
							<li><a href="index.php">TRANG CHỦ</a></li>									
							<li><a href="#">LOẠI SÁCH</a>
								
						             	 <ul>
										      
										      <?php
										      $cats= $db->query("select * from category");
							                    foreach ($cats as  $v) {
							                     ?>
							                    <li><a href="sanpham.php?id=<?php echo $v['cat_id'] ?>"><?php echo $v['cat_name'];?></a></li>
							                   <?php
							                    }
                  								?>
            							</ul>
												
							<li><a href="gioithieu.php">GIỚI THIỆU</a></li>			
							<li><a href="dangki.php">ĐĂNG KÍ</a></li>							
							<li><a href="lienhe.php">LIÊN HỆ</a></li>
						</ul>
					</nav>
				</div>
			</section>
			<section  class="homepage-slider" id="home-slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="images/logo/daidien55.png" alt="" />
						</li>
						<li>
							<img src="images/logo/daidien100.png" alt="" />
							<div class="intro">
								<h1>Hãy đăng kí tài khoản và đăng nhập </h1>
								<p><span>Bạn sẽ được giảm giá khi mua hàng ở trang web của chúng tôi.</span></p>
								<p><span>Hãy mua sắm thật vui vẻ nhé!</span></p>
							</div>
						</li>
					</ul>
				</div>			
			</section>
			<section class="header_text">
				Kính chào Quý khách .Chúng tôi luôn mong muốn phục vụ Quý khách một cách tốt nhất! 
				<br/>Vì vậy đừng quên đóng góp ý kiến của Quý khách để chúng tôi có thể phục vụ quý khách tốt hơn!
			</section>