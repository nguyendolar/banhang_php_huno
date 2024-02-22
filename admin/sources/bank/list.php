<h2 class="text-center p-3 text-success">Danh Sách Đơn Hàng Cần Xác Nhận Thanh Toán</h2>
<table class="table table-striped" width="100%" border="1px">
			<tr>
				<th>STT</th>
				<th>Tên khách hàng</th>
				<th>Email</th>
				<th>Số điện thoại</th>
				<th>Địa chỉ</th>
				<th>Tổng tiền</th>
				<th>info</th>
				<th>created</th>
				<th>status</th>
				<th>action</th>
			</tr>
			<?php
			include_once("config.php");
			$dt=new database();
			$pag=isset($_GET["pag"])?$_GET["pag"]:"";
						if ($pag<1 || $pag==1) {
							$pag=0;
						}else{
							$pag=$pag*10-10;
						}
			$stt=0;
			$dt->select("SELECT* FROM shipping WHERE size in ('1','2') ORDER BY id desc limit $pag,10 ");
			while ($row=$dt->fetch()) {
				$stt++;
				?>
				<tr>
					<td><?php echo $stt; ?></td>
					<td><?php echo $row['name'] ?></a></td>
					<td><?php echo $row['email'] ?></td>
					<td><?php echo $row['phone'] ?></td>
					<td><?php echo $row['address'] ?></td>
					<td><?php echo $row['price'] ?></td>
					<td><?php echo $row['info'] ?></td>
					<td><?php echo $row['created'] ?></td>
					<td><?php if($row['size'] == "1") {
						echo 'Chờ xác nhận thanh toán';
					} else {
						echo 'Đã thanh toán';
					}?></td>
					<td>
						<?php if($row['size'] == "1") { ?>
					<a href="sources/bank/action.php?id=<?php echo $row['id'] ?>" class="navbar-link"><i style="color: red" class="nav-icon fa fa-bookmark" title="Xác nhận"></i></a>
					<?php } ?>
				</td>
				</tr>
				<?php
			}
			?>
	
	</table>
	<div style="background: none" class="card-footer clearfix container">
		<div class="row">
			<ul class="pagination pagination-sm m-0 float-right">
				<?php
				if (isset($_GET['pag']) && $_GET['pag'] > 1) {
					$prev=$_GET['pag']-1;
					echo "<li  class='page-item'><a class='page-link' href='index.php?view=bank&action=list&pag=".$prev."'>&laquo;</a></li>";
				}
				?>

				<?php
					$dt->select("SELECT* FROM shipping");
					$count=$dt->num_rows();
					$total_pag=ceil($count/10);
					for ($i=1; $i <=$total_pag ; $i++) { 
							if (isset($_GET['pag']) && $_GET['pag']==$i) {
								$active='active';
							}else{
								$active='';
							}
						echo "<li class='page-item ".$active."'><a class='page-link' href='index.php?view=bank&action=list&pag=$i'> $i </a></li>";
					
					}
				?>
			<?php
				if ( isset($_GET['pag']) && $_GET['pag'] < $total_pag) {
					$next=$_GET['pag']+1;
					echo "<li  class='page-item'><a class='page-link' href='index.php?view=bank&action=list&pag=".$next."'>&raquo;</a></li>";
				}
				?>

			</ul>
		</div>
	</div>
	<script type="text/javascript">
    // Kiểm tra nếu tồn tại tham số msg trong URL
    if (window.location.search.indexOf('msg') !== -1) {
        // Hiển thị cửa sổ thông báo
        alert('Xác nhận Thành công');
    }
</script>