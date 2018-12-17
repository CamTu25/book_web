<?php
include "config.php";
include "../classes/db.class.php";
$db = new db();
$usr= $db->query("SELECT * FROM `users`");
?>
<?php include "layouts/head.php"; ?>
    
    <div class="right_content">            
        
    <h2>Danh sách Khách Hàng</h2> 
                    
                    
<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
        	
            <th scope="col" class="rounded">Email</th>
            <th scope="col" class="rounded">Username</th>
            <th scope="col" class="rounded">Tên Khách Hàng</th>
            <th scope="col" class="rounded">Địa chỉ</th>
            <th scope="col" class="rounded">Số điện thoại</th>
            
        
        </tr>
    </thead>
        <tfoot>
    </tfoot>
    <tbody>
    	
       <?php
        foreach ($usr as $key => $v) 
        {
            ?>
    
         <tr>
            <td><?php echo $v['email'] ?></td>
            <td><?php echo $v['username'] ?></td>
            <td><?php echo $v['name'] ?></td>
            <td><?php echo $v['address'] ?></td>
            <td><?php echo $v['phone'] ?></td>
            
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