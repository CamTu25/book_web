
<?php
include "config.php";
include "../classes/db.class.php";
include "../include/function.php";
$db = new db();
//print_r($_POST);
$ac=getIndex("ac");
if($ac=="insert")
{
	$book_id	= postIndex("book_id");
	$book_name 	= postIndex("book_name");
	$description= postIndex("description");
	$price		= postIndex("price");
	$img		=postIndex("img");
	$pub_id		= postIndex("pub_id");
	$cat_id		= postIndex("cat_id");
	$submit 	= postIndex("submit");
	 $sql= "insert into book (book_id,book_name,description,price,img,pub_id,cat_id) values('".$book_id."','".$book_name."','".$description."','".$price."','".$img."','".$pub_id."','".$cat_id."')";
	$data = $db->queryInsert($sql);
}
if($ac=="update")
{

}

?>

<?php
if ($submit !="")
{
	$err= "";
	if (strlen($book_id)<3 ) 		$err .="Hãy nhập mã sách <br>";
	if (strlen($book_name)<6 ) 		$err .="Hãy nhập tên sách <br>";
	if (strlen($description)<6 )	$err .="Hãy viết mô tả <br>";
	if(strlen($price)<6) 		    $err .="Hãy nhập giá <br>";
	if(strlen($img)<6) 		 		$err .="Hãy chọn hình <br>";
	if(strlen($pub_id)<2) 		 	$err .="Hãy chọn nhà xuất bản <br>";
	if(strlen($cat_id)<2) 	      	$err .="Hãy chọn loại sách <br>";
	?>

 <div class="info">
 	<table>
    	<?php 
			if ($err !="") echo $err;
			else
			  {
			  	echo "Danh mục sách vừa thêm <br>";
				 echo "book_id : $book_id <br>";
				 echo "book_name: $book_name <br>";
				 echo "description : $description<br>";
				 echo "price : $price <br>";
				 echo "img : $img <br>";
				 echo "pub_id : $pub_id <br>";
				 echo "cat_id : $cat_id <br>";
			  }   
		?>
		<a href="admin.php"><input type="submit" class="input-block-level search-query" style="color: blue" value="Trở về"></a>
	</table>
    </div>
    <?php
}
?>


