<?php
	include_once('config.php');
	$dt=new database();
?>
<div class="sidebar add_sticky_sidebar" id="sidebar">
			<!-- danh muc san pham 
			<div class="widget">
				<h3><i class="fas fa-list-ul"></i>DANH MỤC</h3>
				<ul>
					<?php
						$dt->select("SELECT * FROM product_type");
						while ($row=$dt->fetch()) {
							$name_product_type =$row['name_product_type'];
						?>
						<li><a href="1/<?php echo $row['id'] ?>-<?php echo makeUrl($name_product_type ) ?>.html"><?php echo $row['name_product_type'] ?></a></li>
						<?php
						}
					?>
				</ul>
			</div>
			-->

			<div class="widget">
				<h3><i class="fas fa-list-ul"></i>BỘ SƯU TẬP</h3>
				<ul>
					<?php
						$dt->select("SELECT * FROM collect");
						while ($row=$dt->fetch()) {
							$collection_name =$row['collection_name'];
						?>
						<li><a href="collect/<?php echo $row['id'] ?>-<?php echo makeUrl($collection_name ) ?>.html"><?php echo $row['collection_name'] ?></a></li>
						<?php
						}
					?>
				</ul>
			</div>

			<!-- san pham ban chay -->
			<div class="widget widget-product" id="widget-3">
				<h3><i class="fas fa-list-ul"></i>Sản phẩm bán chạy</h3>
				<ul>
					<?php
						$dt->select("SELECT * FROM product WHERE sell != '' ORDER BY sell desc limit 0,7");
						while ($row=$dt->fetch()) {
							?>
							<li><a href="san-pham/<?php echo makeUrl($row['name_product']) ?>-<?php echo $row['id'] ?>.html">
								<img class="product-thumbnail-small" src="admin/sources/product/uploads/<?php echo $row['image_link'] ?>">
								<div class="main-widget-product">
									<p><?php echo $row['name_product'] ?></p>
									<?php if ($row['discount'] > 0) {
										?>
										<p class="discount"><?php echo number_format($row['discount']); ?> VNĐ</p>
										<del class="price"><?php echo number_format($row['price']); ?> VNĐ</del>
										<?php
									}else{?>
										<p class="price"><?php echo number_format($row['price']); ?></p>
									<?php }?>
									
								</div>
							</a></li>
		
							<?php
						}
					?>
				</ul>
			</div>
			
		</div>