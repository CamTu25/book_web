<?php
include "config.php";
include "../classes/db.class.php";
include "../include/function.php";
$db = new db();
if(isset($_POST['email']) && isset($_POST['password']))
							 {
							 	$email = $_POST['email'];
								$password = ($_POST['password']);
								$sql="select * from users_admin where email='".$email."' and password='".$password."'";
								$us = $db->query($sql);
								if(Count($us)>0)
								{
									$_SESSION['email']=$us["0"];
									?>
									<script type="text/javascript">
										window.location.href="danhmuc.php";
									</script>
									<?php
								}
								else 
									{
										?>
									<script type="text/javascript">
										window.location.href="index.php";
									</script>
									<?php
									}
							 }
?>
