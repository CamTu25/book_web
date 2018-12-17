<?php
include "config.php";
include "../classes/db.class.php";
$db = new db();
$cats= $db->query("select * from category");
$sp = $db->query("select * from book where cat_id='tth' limit 8");
?>

    <?php include "layouts/head.php"; ?>
    <div class="right_content">            
    <h2>Danh Mục Sản Phẩm</h2>          
<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
        	
           <th scope="col" class="rounded">Mã Sản Phẩm</th>
            <th scope="col" class="rounded">Tên Sản Phẩm</th>
            <th scope="col" class="rounded">Giá Bán</th>
            <th scope="col" class="rounded">Loại Sách</th>
            <th scope="col" class="rounded">Chỉnh Sửa</th>
            <th scope="col" class="rounded-q4">Xóa</th>
        
        </tr>
    </thead>
        <tfoot>
    </tfoot>
    <tbody>
    	
       <?php
        foreach ($sp as $key => $v) 
        {
            ?>
    
         <tr>
           
            <td><?php echo $v['book_id'] ?></td>
            <td><?php echo $v['book_name'] ?></td>
            <td><?php echo $v['price'] ?></td>
            <td><?php echo $v['cat_id'] ?></td>
            <td><a href="update.php?id=<?php echo $v['book_id'];?>"><img src="images/user_edit.png" alt="" title="" border="0" /></a></td>
            <td><a href="delete.php?id=<?php echo $v['book_id'];?>" class="ask" > <img src="images/trash.png" alt="" title="" border="0" /></a></td>
        </tr> 
        <?php
        }
        ?>
       
    </tbody>
</table>
 </div><!-- end of right content-->               
  </div>   <!--end of center content -->               
    <div class="clear"></div>
    </div> <!--end of main content-->
        <?php include "layouts/footer.php"; ?>