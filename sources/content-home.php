<?php
include_once('config.php');
$dt=new database();
?>

<div class="main-content content-home">
	<?php
		$dt->select("SELECT * FROM product WHERE view!='' ORDER BY view desc LIMIT 0,8");
	?>
	<div class="box-main view">
		<h3><a class="box" href="danh-muc-san-pham/san-pham-xem-nhieu.html">Sản phẩm xem nhiều</a></h3>
	<div class="product">
				<?php
				
				while ($row6=$dt->fetch()) {
					?>
					<div class="box-product">
					<a href="san-pham/<?php echo makeUrl($row6['name_product']) ?>-<?php echo $row6['id'] ?>.html">
						<div class="show-product">
							<img src="admin/sources/product/uploads/<?php echo $row6['image_link'] ?>" class="product-thumbnail">
							<div class="main-product">
								<p><?php echo $row6['name_product']; ?></p>
								<div class="price">
									<?php if ($row6['discount'] > 0) { ?>
										<p class="discount"><?php echo number_format($row6['discount']); ?> VNĐ</p>
										<del class="price"><?php echo number_format($row6['price']); ?> VNĐ</del>
										
										<?php
									}else{?>
										<p style="color: #f06560" class="price"><?php echo number_format($row6['price']); ?></p>
									<?php }?>
								</div>
							</div>
						</div>
					</a>
					</div>
					<?php
				}
				?>
			</div>
		
	</div>
	<!-- main content home-->
	<?php
	$dt->select("SELECT * FROM product_type");
	$data= array();
	while ($row2=$dt->fetch()) {
		$data[]=$row2;
	}
	foreach ($data as $key => $value) {
		$name_product_type= $value['name_product_type'];
		$id= $value['id'];
		$dt->select("SELECT * FROM product WHERE name_product_type='$name_product_type' ORDER BY id desc limit 0,4");
		?><div class="box-main">
			<h3><a class="box" href="1/<?php echo $value['id'] ?>-<?php echo makeUrl($name_product_type) ?>.html"><?php echo $name_product_type ?></a> </h3>
			<div class="product">
				<?php

				while ($row3=$dt->fetch()) {
					?>
					<div class="box-product">
					<a href="san-pham/<?php echo makeUrl($row3['name_product']) ?>-<?php echo $row3['id'] ?>.html">
						<div class="show-product">
							<img src="admin/sources/product/uploads/<?php echo $row3['image_link'] ?>" class="product-thumbnail">
							<div class="main-product">
								<p><?php echo $row3['name_product']; ?></p>
								<div class="price">
									<?php if ($row3['discount'] > 0) { ?>
										<p class="discount"><?php echo number_format($row3['discount']); ?> VNĐ</p>
										<del class="price"><?php echo number_format($row3['price']); ?> VNĐ</del>
										
										<?php
									}else{?>
										<p style="color: #f06560" class="price"><?php echo number_format($row3['price']); ?></p>
									<?php }?>
								</div>
							</div>
						</div>
					</a>
					</div>
					<?php
				}
				?>
			</div>	
		</div>

		<?php
	}

	?>
	
</div>