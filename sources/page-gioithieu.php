<div class="main-content">
	<?php
	include_once('config.php');
	$dt=new database();
	$dt->select("SELECT * FROM gioithieu WHERE id='1'");
	$row=$dt->fetch();
?>

	<div class="page-product box-main">
		<div class="main-page-product-type">
			<?php
				echo  $row['content'] ;
			?>
		</div>
	</div>
</div>