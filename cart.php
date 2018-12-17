<?php
if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/db.class.php";
include "./include/function.php";
$db = new db();
$url="dangnhap.php";
if(isset($_SESSION['user']))
	$url="thanhtoan.php";
?> 

<?php include "layouts/head.php"; ?>	
			
			<section class="header_text sub">
			<!-- <img class="pageBanner" src="themes/images/logo/2.jpg" alt="New products" > -->
				<h4><span>Giỏ hàng</span></h4>
			</section>
			<section class="main-content">				
				<div class="row">
					<div class="span9">					
						<h4 class="title"><span class="text"><strong>Giỏ hàng</strong>&nbsp;&nbsp;của bạn</span></h4>

						
						<table class="table table-striped">
							    <thead>
							    	
							    	<tr>
							            <th scope="col" class="rounded">Mã Sách</th>
							        	<th scope="col" class="rounded">Tên Sách</th>
							        	<th scope="col" class="rounded">Hình ảnh</th>
							        	<th scope="col" class="rounded">Giá</th>
							        	<th scope="col" class="rounded">Số lượng</th>
							        	<th scope="col" class="rounded">Tổng tiền</th>
							            <th scope="col" class="rounded-company">Xóa</th>
							            
							        </tr>
   								 </thead>

							 <tbody>

							 	
							 	 <?php 
							 	 if(isset($_SESSION['giohang']) !="")
							 		{
									
							 		foreach ($_SESSION['giohang'] as $key => $v) 
							{ 
								$sql ="select * from book where book_id = '$key' ";
								$data =$db->query($sql);
								$r=$data["0"];
								$tongtien=$r["price"]*$v["sl"];
								
								
							?>
							
							<tr>
								<td><input type="text" name="masach" style="color: red" value=" <?php echo $key;?>" readonly ><br></td>
								<td> <input type="text" name="tensach" style="color: red" value="<?php echo $r['book_name']; ?>" readonly ><br></td>
								<td>
									<img src="images/<?php echo $r['img']; ?>" height = "250" width = "150">
								</td>
								<td> <input type="text" name="gia" style="color: red" value=" <?php echo $r['price']; ?>" readonly ></td>
								<td><input type="text" name="sl" style="color: red" value=" <?php echo $v["sl"];?>" readonly > </td>
								
								<td><input type="text" name="tongtien" style="color: red" value=" <?php  echo number_format($tongtien);?>" readonly ></td>
									
									<td><a href="deletecart.php?id=<?php echo $key; ?>"><img src="images/trash.png" alt="" title="" border="0" /></a>
								</td>
							</tr>
							
								<?php
							
						}
							
						}
							?>	  
							</tbody> 
						</table>
						<div>
                           <dl class="submit">
							<a href="<?php echo $url; ?>"><input type="submit" class="btn btn-inverse large"  value="Thanh toán"></a>
							</dl>
							<dl class="submit">
							<a href="index.php"> <input type="submit" class="btn btn-inverse large"  value="Tiếp tục mua hàng"></a>
						</dl>

						</div>					
					</div>			
						</div>						
					</div>
				</div>
			

			</section>	
			<?php include "layouts/footer.php"; ?>