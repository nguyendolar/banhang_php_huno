<?php
	include_once('config.php');
	$dt=new database();
	$txtsearch= $_GET['txt-search'];
?>
<input type="hidden" name="txtsearch" id="txtsearch" value="<?php echo $txtsearch ?>">

<div class="main-content">
	<div class="page-search">
		<div class="title">
			<h3>Kết quả tìm kiếm "<?php echo $txtsearch ?> "</h3>
		</div>
		<div class="main-page-search box-main">
	
			<div class="product">
				<?php
				 $pag=isset($_GET['pag'])?$_GET['pag']:0;
                            if ($pag==1 || $pag==0) {
                                $pag=0;
                            }
                            else{
                                $pag=$pag*12-12;
                            }
				$dt->select("SELECT * FROM product WHERE name_product LIKE '%$txtsearch%' OR name_product_type LIKE '%$txtsearch%' OR price LIKE '%$txtsearch%' OR name_producer LIKE '%$txtsearch%' ORDER BY id desc LIMIT $pag,12 ");

				while ($row=$dt->fetch()) {
				?>
					<div class="box-product">
					<a href="san-pham/<?php echo makeUrl($row['name_product']) ?>-<?php echo $row['id'] ?>.html">
						<div class="show-product">
							<img src="admin/sources/product/uploads/<?php echo $row['image_link'] ?>" class="product-thumbnail">
							<div class="main-product">
								<p><?php echo $row['name_product']; ?></p>
								<div class="price">
									<?php if ($row['discount'] > 0) { ?>
										<p class="discount"><?php echo number_format($row['discount']); ?></p>
										<del class="price"><?php echo number_format($row['price']); ?></del>
										<?php
									}else{?>
										<p style="color: #f06560" class="price"><?php echo number_format($row['price']); ?></p>
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
		<div class="pagination">
			<?php
				$dt->select("SELECT * FROM product WHERE name_product LIKE '%$txtsearch%' OR name_product_type LIKE '%$txtsearch%' OR price LIKE '%$txtsearch%' OR name_producer LIKE '%$txtsearch%' ORDER BY id desc LIMIT $pag,12 ");

	            $count=$dt->num_rows();
	            $pag2=ceil($count/12);

	            for ($i=1; $i <=$pag2 ; $i++) { 
	               ?>
	               <li><a stt="<?php echo $i ?>" href="index.php?search&txt-search=<?php echo $txtsearch ?>"><?php echo $i; ?></a></li>
	               <?php
		        }
	         ?>
		</div>
	</div>
</div>