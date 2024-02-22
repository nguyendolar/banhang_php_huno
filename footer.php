<?php
	include_once("config.php");
	$dt=new database();
	
?>
<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="social-footer">
					<a href="#"><i class="fab fa-facebook-f"></i></a>
					<a href="#"><i class="fab fa-youtube"></i></a>
					<a href="#"><i class="fab fa-skype"></i></a>
				</div>
			</div>
		</div>
		<div class="main-footer">
			<div class="container">
				<div class="box-footer-left">
					<h3>Giới thiệu</h3>
					<?php

						$dt->select("SELECT * FROM info");
						$row=$dt->fetch();
					?>
					<p><?php echo $row['info_footer'] ?></p>
				</div>
				<div class="box-footer-right">
					<h3>Liên Hệ</h3>
					<ul>
	                    <li>
	                        <p><i class="fa fa-home"></i>Hunonic Center, Đường CMT8, Tổ 2, Phường Cam Giá, TP Thái Nguyên</p>
	                        <p><i class="sp-ic fa fa-mobile" ></i>0983988828</p>
	                        <p><i class="sp-ic fa fa-envelope"></i>info@hunonic.vn</p>
	                    </li>
	                </ul>
				</div>
				<div class="box-footer-right">
					<h3>DANH MỤC</h3>
					<ul>
						<?php
							$dt->select("SELECT * FROM product_type");
							while ($row=$dt->fetch()) {

							?>
							<li><a href="index.php?view=product_type&id=<?php echo $row['id'] ?>&product_type=<?php echo $row['name_product_type'] ?>"><?php echo $row['name_product_type'] ?></a></li>
							<?php
							}
						?>
					</ul>
				
			</div>
			</div>
			
		</div>
	</div> <!-- end footer -->