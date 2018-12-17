<?php
if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/db.class.php";
include "./include/function.php";
$db = new db();
$id=$_GET["id"];
$sp = $db->query("select * from book where book_id='".$id."'");

?>
			<?php include "layouts/head.php"; ?>
			<section class="header_text sub">
			</section>
			
			<section class="main-content">				
				<div class="row">						
					<div class="span9">
						<div class="row">
							<div class="span4">
								 <?php
								
								        foreach ($sp as $key => $v) 
								        {
								            ?>
								<p><img src="./images/<?php echo $v['img'] ?>" alt="" /></a></p>
							</div>

							<div class="span5">
									
									
										<form action="updatecart.php" method="get" >
									<address>
										<div>
											
										<strong><span>Tên sách : </span></strong><br> <input type="text" name="tensach" style="color: red" value="<?php echo $v['book_name'] ?>" readonly ><br>
										<strong><span> Giá:</span></strong><br><input type="text" name="gia" style="color: red" value="<?php echo $v['price'] ?>" readonly ><br>
										<strong><span> Số lượng: <br></span></strong><input type="text" name="sl" value="1" style="color: red" placeholder="1" ><br>
										<input type="hidden" name="masach" value="<?php echo $v["book_id"] ?>">
										<strong><span><input type="submit" class="input-block-level search-query" style="color: red" value="Thêm vào giỏ hàng"></span></strong>

										</div>
									</address>		
								</form>
							</div>
										
						</div>
						<div class="row">
							<div class="span9">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Nội dung</a></li><br><br>
									<?php ; 
								 $id = $_GET['id'];
								$sql="select *from book where book_id='$id'";
								 ?> 
									<?php echo $v['description'] ?>
								</ul>							 
								<div class="tab-content">
									<div class="tab-pane active" id="home">
										
									 </div>
								</div>							
							</div>						
									
			</section>	
			 <?php
    }
        ?>		
			<?php include "layouts/footer.php"?>