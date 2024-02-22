<?php
	include_once('config.php');
	$dt=new database();
	$id=$_GET['id'];
	
	$dt->select("SELECT * FROM product WHERE id='$id'");
	$row=$dt->fetch();
	$view=$row['view'];
	$view+=1;
	$dt->command("UPDATE product SET view = '$view' WHERE id='$id'");
?>
<div class="main-content">
	<div class="page-single-product">
		<div class="images-product">
			<img src="admin/sources/product/uploads/<?php echo $row['image_link'] ?>">

			<div class="price_sg">
			<?php if ($row['discount'] > 0) { ?>
				<p class="discount_sg"><?php echo number_format($row['discount']); ?> VNĐ</p>
				<p><span>Giá gốc: </span><del><?php echo number_format($row['price']); ?> VNĐ</del><span class="onsale"><?php
					$sale = $row['price']-$row['discount'];
					echo "-".number_format($sale)." VNĐ";
				?></span></p>
				
				<?php
			}else{?>
				<p class="sg_price"><?php echo number_format($row['price']); ?> VNĐ</p>
			<?php }?>
			</div>
			<div class="add-to-cart">
				<a href="sources/update_cart.php?sale=<?php echo $row['id'] ?>">Thêm vào giỏ hàng</a>
			</div>

		</div>
		<div class="summary">
			<div class="title-sp">
				<h3><?php echo $row['name_product'] ?></h3>
			</div>
			<div class="des_short">
				<?php echo $row['des_short'] ?>
			</div>
			<div class="khohang">
				<h4>Kho hàng</h4>
				<p>Hunonic Center, Đường CMT8, Tổ 2, Phường Cam Giá, TP Thái Nguyên
			
			</div>
			<div class="giaohang">
				<h4>Giao hàng</h4>
				<p>
				Giao hàng nhanh trong 2h (Chi tiết)</p><p>
				– Miễn phí giao hàng (Trong bán kính 10 km) cho đơn hàng từ 500.000 đ trở lên (Chi tiết)</p>
			
			</div>

		</div>

		<div class="description">
			<div class="title-des">
				<h3>Mô tả</h3>
			</div>
			
			<div class="main-description">
				<?php echo $row['des'] ?>
			</div>
		</div>
		
	</div>
</div>
<div class="relate">
	<div class="title-relate">
		<h3>Sản Phẩm liên quan</h3>
	</div>
	<div class="product">
		<?php
		$name_product_type = $row['name_product_type'];
			$dt->select("SELECT * FROM product WHERE name_product_type='$name_product_type' AND id!='$id' ORDER BY id desc limit 0,8");
			while ($row2=$dt->fetch()) {
				?>
				<a href="san-pham/<?php echo makeUrl($row2['name_product']) ?>-<?php echo $row2['id'] ?>.html">
				<div class="show-product">
					<img src="admin/sources/product/uploads/<?php echo $row2['image_link'] ?>" class="product-thumbnail">
					<div class="main-product">
						<p><?php echo $row2['name_product']; ?></p>
						<div class="price">
							<?php if ($row2['discount'] > 0) { ?>
								<p class="discount"><?php echo number_format($row2['discount']); ?> VNĐ</p>
								<del class="price"><?php echo number_format($row2['price']); ?> VNĐ</del>
								<?php
							}else{?>
								<p style="color: #f06560" class="price"><?php echo number_format($row2['price']); ?> VNĐ</p>
							<?php }?>
						</div>
					</div>
				</div>
			</a>
				<?php
			}
		?>
	</div>
</div>