<?php
include "config.php";
include "../classes/db.class.php";
$db = new db();
$ct= $db->query("SELECT * FROM `contact`");
?>
<?php include "layouts/head.php"; ?>
    
    <div class="right_content">            
        
    <h2>Ý kiến khách hàng</h2> 
                    
                    
<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
        	
            <th scope="col" class="rounded">Tên khách hàng</th>
            <th scope="col" class="rounded">Email</th>
            <th scope="col" class="rounded">Đóng góp</th>
        </tr>
    </thead>
        <tfoot>
    </tfoot>
    <tbody>
    	
       <?php
        foreach ($ct as $key => $v) 
        {
            ?>
    
         <tr>
            <td><?php echo $v['name_user'] ?></td>
            <td><?php echo $v['email_user'] ?></td>
            <td><?php echo $v['thongtin'] ?></td>
            
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