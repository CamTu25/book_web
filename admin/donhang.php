<?php
include "config.php";
include "../classes/db.class.php";
include "../include/function.php";
$db = new db();
$od= $db->query("SELECT * FROM `order`");
$odt= $db->query("SELECT * FROM `order_detail`");
?>
<?php include "layouts/head.php"; ?>
    
    <div class="right_content">   
    <h2>Danh Mục Đơn Hàng </h2> 
                    
                    
<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
    <thead>
    	<tr>
            <th scope="col" class="rounded">Email</th>
            <th scope="col" class="rounded">Ngày đặt hàng</th>
            <th scope="col" class="rounded">Tên khách hàng</th>
            <th scope="col" class="rounded">Địa chỉ</th>
            <th scope="col" class="rounded">Số điện thoại</th>
            <th scope="col" class="rounded">Tình trạng</th>
            <th scope="col" class="rounded">Xác nhận</th>
            <th scope="col" class="rounded">Đã giao</th>
            
        </tr>
    </thead>
        <tfoot>
    </tfoot>
    <tbody>
       <?php
                                    $db= new db();
                                    $sql= $db->query("select * from `order`");  
                                    foreach($sql as $v) 
                                    {
                                    
            ?>
    
         <tr>
            <td><a href="chitietdh.php?id=<?php echo $v['order_id']?>"><?php echo $v['email'] ?></a></td>
            <td><?php echo $v['order_date'] ?></td>
            <td><?php echo $v['name'] ?></td>
            <td><?php echo $v['address'] ?></td>
            <td><?php echo $v['phone'] ?></td>
            <td>
                <?php 
                    if($v['tinhtrang']==1)
                        echo "Đã xác nhận";
                    elseif ($v['tinhtrang']==2)
                        echo "Đã giao";
                    else
                        echo "Chưa xác nhận";
                ?>

            </td>
            <td>
                <a href="xacnhanhoadon.php?ac=xacnhan&order_id=<?php echo $v['order_id']; ?>"><img src="images/valid.png" alt="" title="" border="0" /></a>
            </td>
            <td>
                <a href="xacnhanhoadon.php?ac=dagiao&order_id=<?php echo $v['order_id']; ?>"><img src="images/valid.png" alt="" title="" border="0" /></a>
            </td>
            
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