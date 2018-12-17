<?php
if(!isset($_SESSION)) session_start();
include "config.php";
include "./classes/db.class.php";
include "./include/function.php";
$db = new db();
$us = $db->query("select * from users");
?>
<?php include "layouts/head.php"; ?>	
			<section class="header_text sub">
			<!-- <img class="pageBanner" src="themes/images/logo/daidien55.png" alt="New products" > -->
				<h4><span>Câu hỏi thường gặp-Giải đáp</span></h4>
			</section>			
			<section class="main-content">				
				<div class="row">
					<div class="span5">					
						<h4 class="title"><span class="text"><strong>Câu hỏi</strong></span></h4>
						<form action="#" method="post">
							<input type="hidden" name="next" value="/">
							<fieldset>
								<div class="control-group">
									<p>1.Tôi có thể đặt sách với số lượng lớn?</p>
									<p>2.Tôi có thể trả lại hàng?</p>
									<p>3.Khi nào tôi sẽ nhận được hàng ?</p><br>
									<p>4.Tôi có nhận được ưu đãi gì nếu mua sách nhiều lần ở trang web của bạn?</p>
									<p>5.Làm sao để xóa sản phẩm ra khỏ giỏ hàng?</p>
									<p>6.Nếu bạn giao hàng sai tôi phải đổi trả như thế nào?</p>
									<p>7.Nếu sách bị lỗi tôi phải đổi trả trong vòng bao nhiêu ngày?</p><br>
									<p>8.Tôi có thể xem hàng trước khi nhận?</p>
								</div>
							</fieldset>
						</form>				
					</div>
					<div class="span7">					
						<h4 class="title"><span class="text"><strong>GIẢI ĐÁP</strong></span></h4>
						<form action="#" method="post" class="form-stacked">
							<fieldset>
								<div class="control-group">
									<p>1.Bạn có thể đặt hàng với số lượng lớn. Vui lòng liên hệ đường dây nóng.</p>
									<p>2.Bạn đượ trả hàng khi hàng bị lỗi.</p>
									<p>3.Sau 3 ngày kể từ ngày đặt hàng bạn sẽ nhận được nếu bạn ở khu vực TP HCM. Đối với các tỉnh ở xa thì từ 5 đến 7 ngày , hoặc nếu bạn muốn nhanh hơn thì vui lòng chọn mục giao hàng nhanh.</p>
									<p>4. bạn sẽ là khách hàng thân thiết của chúng tôi và tất nhiên bạ sẽ đượ giảm giá 5 % đến 15 % từ những lần mua sau.</p>
									<p>5. Bạn kéo qua bên trái và chọn vào mục "Xóa" nhấn "ok".</p>
									<p>6. Nếu là lỗi giao hàng của chúng tôi, chúng tôi sẽ giao lại sách cho bạn và bạn sẽ không tốn bất kì chi phi nào.</p>
									<p>7.Bạn vui lòng thông báo với nhân viên giao hàng ngay khi nhận sách bạn sẽ được đổi trả ngay trong ngày. Nếu bạn chưa kiểm tra hàng ngay khi nhận thì bạn phải báo với chúng tôi trong vòng 2 ngày kể từ ngày nhận.</p>
									<p>8.Bạn có thể kiểm tra hàng trước khi nhận.</p>
								</div>							                            
								<div class="control-group">
									
								</div>
							</fieldset>
						</form>					
					</div>				
				</div>
				<p> VIETNAMBOOK được thành lập với mục tiêu cung cấp sách cho khách hàng với đầy đủ các thể loại và số lượng lớn cho khách hàng với giá ưu đãi nhất. Với kinh nghiệm và sự tìm hiểu của chúng tôi về nhu cầu của khách hàng trong những năm qua thì chúng tôi tin chắc rằng chúng tôi sẽ làm các bạn hài lòng. Cùng với sự chất lượng về sách chúng tôi cũng không ngừng nổ lực với đội ngũ tư vấn nhiệt tình và nhanh nhẹn nhất có thể để hỗ trợ các bạn giúp các bạn có cảm giác như đang đi tham quan nhà sách trực tiếp. Luôn giải đáp thắc mắc nhanh nhất khi bạn cần.</p><br>
				<p>Ngoài những câu hỏi trên bạn có thể liên lạc trực tiếp với chúng tôi qua đường dây nóng để giải quyết nhanh nhất có thể hoặc gửi câu hỏi qua mail chúng tôi sẽ giải đáp thắc mắc của bạn. Bạn cũng có thể để lại bình luận và đánh giá trên trang của chúng tôi.</p><br>
				<p>Cảm ơn bạn đã đến trang web của chúng tôi!</p>

			</section>	

			<?php include "layouts/footer.php"; ?>