	<?php
	include_once("../../config.php");
	$dt=new database();
	$id=isset($_GET["id"])?$_GET["id"]:"";
	$name = "2";
	$dt->command("UPDATE shipping SET size='$name' WHERE id='$id'  ");
	
	header("location: ../../index.php?view=bank&action=list&pag=1&msg=1");
?>