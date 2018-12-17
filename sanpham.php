<?php
if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/db.class.php";
include "./include/function.php";
$db = new db();
$cats= $db->query("select * from category");
$sp = $db->query("select * from book ");
?>
<?php include "layouts/head.php"; ?>

			<section class="main-content">
				<div class="row">
					<div class="span12">													
						<div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line"> Danh sách
                                    <strong>Sản phẩm</strong></span></span></span>
									
								</h4>

							<div id="myCarousel" class="myCarousel carousel slide">
								
								<div class="carousel-inner">

								<?php 
									$id1 = $_GET['id'];
									$db= new db();
									$sql= $db->query("select * from book where cat_id = '$id1'");	
									foreach($sql as $v)
									{
										?>
										<div class="active item">
											<ul class="thumbnails">												
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>
														<p><a href="chitiet.php?id=<?php echo $v['book_id']?>">
													<img src="./images/<?php echo $v["img"]; ?>" alt="" /></a></p>
														
														<a href="chitiet.php?id=<?php echo $v['book_id']?>" style="text-overflow: ellipsis; overflow:  hidden;" class="title"><?php echo $v["book_name"]; ?></a><br/>
														<p class="price"><?php echo $v["price"] ?>Đ</p>

													</div>
												</li>
													
											</ul>
										</div>
									<?php 
								} 

								?>
								</div>
								
							</div>
								 
							</div>						
						</div>
						<br/>
						
						
			</section>
		<?php include "layouts/footer.php"; ?>