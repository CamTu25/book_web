<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TRANG QUẢN TRỊ| được hỗ trợ bởi VV</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="clockp.js"></script>
<script type="text/javascript" src="clockh.js"></script> 
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="ddaccordion.js"></script>
<script type="text/javascript">
ddaccordion.init({
	headerclass: "submenuheader", //Shared CSS class name of headers group
	contentclass: "submenu", //Shared CSS class name of contents group
	revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["suffix", "<img src='images/plus.gif' class='statusicon' />", "<img src='images/minus.gif' class='statusicon' />"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})
</script>

<script type="text/javascript" src="jconfirmaction.jquery.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
		$('.ask').jConfirmAction();
	});
	
</script>

<script language="javascript" type="text/javascript" src="niceforms.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="niceforms-default.css" />

</head>
<body>
<div id="main_container">

	<div class="header">
    <div class="logo"><a href="#"><img src="images/logoad3.png" alt="" title="" border="0" /></a></div>
    
                       
    <div class="right_header">Xin chào Admin<br><a href="logout.php" class="logout">Đăng xuất</a></div>
    <div id="clock_a"></div>
    </div>
    
    <div class="main_content">
    
                    <div class="menu">
                    <ul>
                    <li><a class="current" href="index.php">Đăng nhập Admin</a></li>
                    <li><a href="#">Danh Mục</a>
                       
                        	           <ul>
                                              
                                              <?php
                                              $cats= $db->query("select * from category");
                                                foreach ($cats as  $v) {
                                                 ?>
                                                <li><a href="danhmuc.php?id=<?php echo $v['cat_id'] ?>"><?php echo $v['cat_name'];?></a></li>
                                               <?php
                                                }
                                                ?>
                                        </ul>
                        </li>
                    <li><a href="#">Người Dùng</a>
                       <ul>
                          <?php
                    $usd= $db->query("select * from users_admin");
                    foreach ($usd as  $v) {
                     ?>
                    <li><a href="#"><?php echo $v['name'];?></a></li>
                   <?php
                    }
                   ?>
                       </ul>
                    </li>

                    </div>        
                    
    <div class="center_content">  
    <div class="left_content">
    
            <div class="sidebarmenu">
            
                <a class="menuitem submenuheader" href="">Sản Phẩm</a>
                <div class="submenu">
                    <ul>
                    <?php
                                              $cats= $db->query("select * from category");
                                                foreach ($cats as  $v) {
                                                 ?>
                                                <li><a href="danhmuc.php?id=<?php echo $v['cat_id'] ?>"><?php echo $v['cat_name'];?></a></li>
                                               <?php
                                                }
                                                ?>
                    </ul>
                </div>
                <a class="menuitem submenuheader" href="#" >Admin</a>
                     <div class="submenu">
                        <ul>
                    <?php
                    $usd= $db->query("select * from users_admin");
                    foreach ($usd as  $v) {
                     ?>
                    <li><a href="#"><?php echo $v['email'];?></a></li>
                   <?php
                    }
                   ?>
                   </ul>
                    </div>

                <a class="menuitem submenuheader" href="#">Nhà Xuất Bản</a>
                <div class="submenu">
                    <ul>
                    <?php
                    $nxb= $db->query("select * from publisher");
                    foreach ($nxb as  $v) {
                     ?>
                    <li><a href="nxb.php?id=<?php echo $v['pub_id'] ?>"><?php echo $v['pub_name'];?></a></li>
                   <?php
                    }
                   ?>
                    </ul>
                </div>
                 <a class="menuitem" href="khachhang.php">Quản lí khách hàng</a>
                 <a class="menuitem" href="ykien.php">Ý kiến đóng góp</a>
                 <a class="menuitem" href="donhang.php">Đơn hàng</a>
                <!-- <a class="menuitem" href="chitietdh.php">Chi tiết đơn hàng</a> -->
               
                </div>

            <div class="sidebar_box">
            </div>  
            <div class="sidebar_box">
                
            </div>
    </div>  
    <br>