
<div class="content container">
		
		<?php
			
			$view=isset($_GET['view'])?$_GET['view']:"";
			if ($view=='notice') {
				include_once('sidebar.php');
				include_once('sources/notice.php');
			}elseif (isset($_GET['search'])) {
				include_once('sidebar.php');
				include_once('sources/search.php');
			}elseif ($view=='product_type') {
				include_once('sidebar.php');
				include_once('sources/product_type.php');
			}elseif ($view=='collection') {
				include_once('sidebar.php');
				include_once('sources/collection.php');
			}elseif ($view=='product') {
				include_once('sidebar.php');
				include_once('sources/product.php');
			}elseif ($view=='single-product') {
				include_once('sidebar.php');
				include_once('sources/single-product.php');
			}elseif ($view=='cart') {
				include_once('sidebar.php');
				include_once('sources/cart.php');
			}elseif ($view=='gioithieu') {
				include_once('sidebar.php');
				include_once('sources/page-gioithieu.php');
			}else {
				include_once('sources/content-home.php');
			}
		?>
	</div>