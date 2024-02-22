	<div class="header">
	<div class="top-header">
		<div class="container">
			<div class="top-header-left">
				<a href="#"><i class="fa fa-phone"></i>0983988828</a>
			</div>
				
			<div class="top-header-right">
				<?php
					include_once("config.php");
					$dt=new database();
					session_start();
					if (isset($_SESSION["login"])) {
						?>
						<button class="ss-login"><p>xin chào, <?php $username=$_SESSION['login'];
						
							$dt->select("SELECT * FROM user WHERE email='$username'");
							$row2=$dt->fetch();
							echo $row2['name'];
						 ?></p>
						 	<ul>
						 		<li><a href="logout.php">Đăng Xuất</a></li>
						 	</ul>
						 </button>
						<?php
					}elseif (!empty($_SESSION['current_user'])) {
			            $currentUser = $_SESSION['current_user'];
			            ?>
			           
			               <button class="ss-login"><p> Xin chào <?= $currentUser['name'] ?></p>
			              <ul>
						 		<li><a href="logout.php">Đăng Xuất</a></li>
						 	</ul>
			            </button>
						<?php
					}else {
				?>
				
				<a class="button-login" href=""><i class="fa fa-user"></i></a>
				
				<?php } ?>
				<a href="index.php?view=cart"><i class="fa fa-shopping-basket"></i>
				(<?php
					$i=0;
					foreach ($_SESSION as $key => $value) {
						if (substr($key,0,5)=='cart_' && $value != 0){
							$i++;
						}
					}
					echo $i;
				?>)
			</a>
			</div>
		</div>
	</div>
</div>