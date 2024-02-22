<?php
	include_once("../../config.php");
	$dt=new database();
	$id=isset($_GET["id"])?$_GET["id"]:"";
	$name=$_POST["name"];
	$phone=$_POST["phone"];
	$email=$_POST['email'];
	$content=$_POST['content'];
	$status=$_POST['status'];
	if (isset($_POST['edit'])) {
		$dt->command("UPDATE dat_ban SET name='$name',email='$email',phone='$phone',
				content='$content',status='$status' WHERE id='$id' ");
		header("location: ../../index.php?view=dat_ban&action=list&pag=1");
	}else{
	$dt->command("DELETE FROM dat_ban WHERE id='$id' ");
	header("location: ../../index.php?view=dat_ban&action=list&pag=1");}

?>