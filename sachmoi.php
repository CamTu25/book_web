	

							<div id="myCarousel" class="myCarousel carousel slide">
								<div class="carousel-inner">
<?php 									
									$db= new db();

									// $sql= $db->query("select * from book  where cat_id='tth' limit 8");
									$sql= $db->query("select * from book  order by rand() limit 8");
																			
								foreach($sql as $v)
									{
										?>
										<div class="active item">
											<ul class="thumbnails">												
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>
														<p><a href="chitiet.php?id=<?php echo $v['book_id']?>"><img src="./images/<?php echo $v["img"]; ?>" alt="" /></a></p>
														
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
									
								
								
		
									
											
									