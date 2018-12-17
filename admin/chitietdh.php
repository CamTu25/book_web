<?php
include "config.php";
include "../classes/db.class.php";
$db = new db();
$id=$_GET["id"];
$od= $db->query("select * from `order_detail` where order_id='".$id."'");
?>
<?php include "layouts/head.php"; ?>
    
    <div class="right_content">            
        
    <h2>Danh Mục Chi Tiết Đơn Hàng</h2> 
                    
                    
<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
           
           <th scope="col" class="rounded">Mã Đơn Hàng</th>
            <th scope="col" class="rounded">Mã sách</th>
            <th scope="col" class="rounded">Số Lượng</th>
            <th scope="col" class="rounded">Giá Bán</th>
            <th scope="col" class="rounded">Tổng Tiền</th>
        </form>
        </tr>
    </thead>
        <tfoot>
    </tfoot>
    <tbody>
    	
       <?php
        foreach ($od as $key => $v) 
        {
            ?>
         <tr>
            <td><?php echo $v['order_id'] ?></td>
            <td><?php echo $v['book_id'] ?></td>
            <td><?php echo $v['quantity'] ?></td>
            <td><?php echo $v['price'] ?></td>
            <td><?php echo $v['tongtien'] ?></td>
           
        </tr> 
        <?php
        }
        ?>
       
    </tbody>
</table> 

                    <!--
                     <dl class="submit">
                    <input type="submit" style="color: blue" name="submit" id="submit" value="Save" />
                     </dl>
 -->

</div><!-- end of right content-->               
  </div>   <!--end of center content -->               
    <div class="clear"></div>
    </div> <!--end of main content-->
<?php include "layouts/footer.php"; ?>