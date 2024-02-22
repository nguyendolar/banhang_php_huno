<?php
	include_once("config.php");
	$dt=new database();
	$view=isset($_GET['view'])?$_GET['view']:"home";
	$id=isset($_GET['id'])?$_GET['id']:"";
	$product=isset($_GET['product'])?$_GET['product']:"";
	if (isset($_GET['search'])) {
		$view='search';
	}
?>
<div class="menu">
		<div class="container">
			<i class="fas fa-list"></i>
			<ul class="navigation">
					
				<?php $dt->select("SELECT * FROM logo WHERE id='1'");
					$row3=$dt->fetch();
				?>

				<li  class="<?php if ($view=='home') {
					echo 'active';
				} ?>"><a class="img_logo" href="index.html"><img class="logo" src="admin/sources/logo/uploads/<?php echo $row3['logo'] ?>"></a></li>
				<li class="sub-menu <?php if ($view=='product') {
					echo 'class="active"';
				} ?>" ><a href="san-pham.html">Sản Phẩm</a>
					<ul>
						<?php
						$dt->select("SELECT * FROM collect LIMIT 0,7");
						while ($row=$dt->fetch()) {
							$collection_name =$row['collection_name'];
						?>
						<li><a href="collect/<?php echo $row['id'] ?>-<?php echo makeUrl($collection_name ) ?>.html"><?php echo $row['collection_name'] ?></a></li>
						<?php
						}?>
					</ul>
				</li>
				<?php
				$dt->select("SELECT * FROM product_type LIMIT 0,5");
				while ($row=$dt->fetch()) {
					$name_product_type =$row['name_product_type'];
				?>
				<li><a href="1/<?php echo $row['id'] ?>-<?php echo makeUrl($name_product_type ) ?>.html"><?php echo $row['name_product_type'] ?></a></li>
				<?php
				}?>
				
				<li  <?php if ($view=='gioithieu') {
					echo 'class="active"';
				} ?>><a href="gioi-thieu.html">Giới Thiệu</a></li>

			</ul>
			<ul class="mobile-menu"> 
				<li  <?php if ($view=='home') {
					echo 'class="active"';
				} ?>><a href="index.html">Trang Chủ</a></li>
				<li  class="sub-menu  <?php if ($view=='product') {
					echo 'active';
				} ?>"><a href="san-pham.html">Sản Phẩm</a></li>
				<?php
				$dt->select("SELECT * FROM product_type LIMIT 0,7");
				while ($row=$dt->fetch()) {
					$name_product_type =$row['name_product_type'];
				?>
				<li><a href="1/<?php echo $row['id'] ?>-<?php echo makeUrl($name_product_type ) ?>.html"><?php echo $row['name_product_type'] ?></a></li>
				<?php
				}?>
				<li  <?php if ($view=='gioithieu') {
					echo 'class="active"';
				} ?>><a href="gioi-thieu.html">Giới Thiệu</a></li>
			</ul>
			<div class="form-search">
				<form action="index.html">
					<input type="text" name="txt-search"  required="required" placeholder="Nhập từ khóa..." name="src">
					<button type="submit" name="search"><i class="fa fa-search"></i></button>
				</form>
			</div>
		</div>
	</div><!-- end menu -->
	<div class="brc" id="<?php echo $view ?>">
		
		<div class="container">
			<a href="index.php?view=<?php echo $view ?>&id=<?php echo $id ?>"><?php 
	if ($view=="product") {
		$view="Danh Mục Sản Phẩm";
	}elseif ($view=="gioithieu") {
		$view="Giới Thiệu";
	}elseif ($view=="product_type") {
		$view="Danh Mục Sản Phẩm";
	}elseif ($view=="collection") {
		$view="Danh Mục Sản Phẩm";
	}elseif ($view=="cart") {
		$view="Giỏ Hàng";
	}elseif ($view=="notice") {
		$view="Thông Báo";
	}elseif ($view=="single-product") {
		$view="Sản Phẩm";
	}; echo  $view; ?></a>
		</div>
	</div>
	<!-- slide -->
	<div class="slide" id="<?php echo $view ?>">
		<div class="container-fluid">
		<?php
		$dt->select("SELECT * FROM slide");
		while ($row3=$dt->fetch()) {
			?>
			<div class="item">
				<img src="admin/sources/slide/uploads/<?php echo $row3['name_image']  ?>" class="slide-img">
			</div>
			<?php
		}
		?>
	</div>
	</div>
