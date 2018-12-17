<?php
include "config.php";
include "../classes/db.class.php";
include "../include/function.php";
$ac=getIndex('ac','insert');
$db = new db();
$cats= $db->query("select * from category");

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
    	<tr>
        	<td colspan="6" class="rounded-foot-left"><em>Đã cập nhật xong</em></td>
        	<td class="rounded-foot-right">&nbsp;</td>

        </tr>
    </tfoot>
    <tbody>
        <?php 
                                    $id1 = getIndex('id','gk');
                                    $db= new db();
                                    $sql= $db->query("select * from book where cat_id = '$id1' limit 20 ");
                                    foreach($sql as $v)
                                    {
                                        
            ?>
    
    	 <tr>
            <td><?php echo $v['book_id'] ?></td>
            <td><?php echo $v['book_name'] ?></td>
            <td><?php echo $v['price'] ?></td>
            <td><?php echo $v['cat_id'] ?></td>
            <td><a href="danhmuc.php?id=<?php echo $id1; ?>&idsach=<?php echo $v['book_id'];?>&ac=update"><img src="images/user_edit.png" alt="" title="" border="0" /></a></td>
           <td><a href="delete.php?id=<?php echo $v['book_id'];?>" class="ask" ><img src="images/trash.png" alt="" title="" border="0" /></a></td>
        </tr> 
        <?php
    }
        ?>
    </tbody>
</table>

<?php 
    $idsach=getIndex('idsach');
    $sp = $db->query("select * from book where book_id='$idsach'");
    
    if(empty($sp))
    {
        $masach= "";
        $ten="";
        $description="";
        $price ="";
        $pub_id ="";
        $cat_id ="";
    }else
    {
        $masach=$sp['0']['book_id'];
        $ten=$sp['0']['book_name'];
        $description= $sp['0']['description'];
        $price = $sp['0']['price'];
        $pub_id =$sp['0']['pub_id'];
        $cat_id= $sp['0']['cat_id'];
    }
 ?>
<h2>Thêm Sách Mới</h2>

         <div class="form">

         <form action="insertbook.php?ac=<?php echo $ac; ?>" method="post" class="niceform">
                <fieldset>
                    <dl>
                        <dt><label for="text">Mã Sách</label></dt>
                        <dd><input type="text" name="book_id" id="" size="54"  placeholder="Nhập book_id" value="<?php echo $masach; ?>" /></dd>
                    </dl>
                    <dl>
                        <dt><label for="text">Tên sách</label></dt>
                        <dd><input type="text" name="book_name" id="" size="54" placeholder="Nhập book_name" value="<?php echo $ten; ?>" /></dd>
                    </dl>
                    
                    
                        <dt><label for="comments">Mô tả</label></dt>
                        <dd><textarea name="description" id="" rows="5" cols="50"><?php echo $description; ?></textarea></dd>
                    </dl>
                    
                    
                    <dl>
                        <dt><label for="text">Giá</label></dt>
                        <dd><input type="text" name="price" id="" size="54" placeholder="Nhập giá" value="<?php echo $price; ?>" /></dd>
                    </dl>
                    
                    <dl>
                        <dt><label for="upload">Hình ảnh</label></dt>
                        <dd><input type="file" name="img" id="upload" /></dd>
                    </dl>

                    <dl>
                        <dt><label for="gender">Chọn NXB</label></dt>
                        <dd><select name="pub_id">
                                    <?php
                                    foreach ($nxb as  $v) {
                                        $select="";
                                        if ($v['pub_id']==$pub_id) {
                                            $select="selected";
                                        }
                                     ?>
                                    <option value="<?php echo $v['pub_id'];?>" <?php echo $select ?>><?php echo $v['pub_name'];?></option>
                                   <?php
                                    }
                                   ?>
                                
                            </select>

                        </dd>
                    </dl>

                   <dl>
                        <dt><label for="gender">Chọn Loại Sách</label></dt>
                        <dd><select name="cat_id">
                                    <?php
                                    foreach ($cats as  $v) {
                                        $select="";
                                        if ($v['cat_id']==$cat_id) {
                                            $select="selected";
                                        }
                                     ?>
                                    <option value="<?php echo $v['cat_id'];?>" <?php echo $select ?>><?php echo $v['cat_name'];?></option>
                                   <?php
                                    }
                                   ?>
                                
                            </select>

                        </dd>
                    </dl>
                    
                    
                     <dl>
                     <dl class="submit">
                    <input type="submit" name="submit" id="submit" value="Thêm" />
                     </dl>    
                </fieldset> 
         </form>
         </div>

         <div class="form">
         <form action="" method="post" class="niceform">
                <fieldset>
                            </select>     
                </fieldset>
         </form>
         </div> 
     
     </div><!-- end of right content-->               
  </div>   <!--end of center content -->               
    <div class="clear"></div>
    </div> <!--end of main content-->
<?php include "layouts/footer.php"; ?>

</div>      
</body>
</html>