<h2 class="text-center p-3 text-success">Danh Sách Nhà Sản Xuất</h2>
<table class="table table-striped" width="100%" border="1px">
		<thead>
			<tr>
				<th>STT</th>
				<th>ID</th>
				<th>Nhà Sản xuất</th>
				<th>action</th>
			</tr>
		</thead>
		<tbody>
			<?php
			include_once("config.php");
			$dt=new database();
			$stt=0;
			$dt->select("SELECT* FROM producer ");
			while ($row=$dt->fetch()) {
				$stt++;
				?>
				<tr>
					<td><?php echo $stt; ?></td>
					<td><?php echo $row['producer_id'] ?></td>
					<td><?php echo $row['name_producer'] ?></td>
					<td>
						<a href="index.php?view=producer&action=edit&id=<?php echo $row['producer_id'] ?>" class="navbar-link"><i style="color: #444" class="fas fa-pencil-alt"></i></a> || 
						<a href="sources/producer/action.php?id=<?php echo $row['producer_id'] ?>" class="navbar-link"><i style="color: red" class="fas fa-minus-circle"></i></a>
					</td>
				</tr>
				<?php
			}
			?>
		</tbody>
	</table>