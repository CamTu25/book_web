<?php
include "config.php";
include "./classes/db.class.php";
$t = isset($_GET['ts'])?$_GET['ts']:'';
$db = new db();
?>
<?php include "layouts/head.php"; ?>
<!DOCTYPE html>
<html lang="en">
<body>
     
    <?php
    if (isset($_GET['ts']))
    {
         echo "Kết quả tìm kiếm của bạn !<br>";
        $sql="select * from book where book_name like '%$t%' ";
        $arr = $db->query($sql);
        foreach ($arr as $key => $r) {
            ?>
        <h4><span><p><strong><a href="chitiet.php?id=<?php echo $r['book_id']?>"><?php echo $r['book_name'];?></a></strong></p></span></h4>
        <p><a href="chitiet.php?id=<?php echo $r['book_id']?>"><img height="200" width="200" src="images/<?php echo $r['img']; ?>">
            <?php
        }
    }
    ?>
</body>
</html>
<?php include "layouts/footer.php"; ?>