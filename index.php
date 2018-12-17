<?php
if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/db.class.php";
include "./include/function.php";
$db = new db();
$cats= $db->query("select * from category");
$sp = $db->query("select * from book");
?>
<?php include "layouts/head.php"; ?>
			<section class="main-content">
				<div class="row">
					<div class="span12">													
						<div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line">Sách mới
                                    <strong>NEW</strong></span></span></span>
									
								</h4>
								 <?php include "sachmoi.php"; ?> 
							</div>						
						</div>
						<br/>
						<div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line">Sản phẩm bán chạy
										<strong>HOT</strong></span></span></span>
								</h4>
									<?php include "sachhot.php"; ?>
								</div>
							</div>
							<br/>

								<div id="myCarousel-2" class="myCarousel carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											
									</div>							
								</div>
							</div>						
						</div>
						
			</section>
		<?php include "layouts/footer.php"; ?>