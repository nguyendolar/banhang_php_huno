<?php
	include_once('config.php');
	$dt=new database();
	
?>	
<style>
/* The Modal (background) */
.modal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0,0,0,0.4);
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 10% auto; /* 10% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
  max-width: 400px; /* Set maximum width of modal */
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

/* Modal Header */
.modal-header {
  padding: 10px 16px;
  border-bottom: 1px solid #e9ecef;
  background-color: #f8f9fa;
}

/* Modal Body */
.modal-body {
  padding: 10px 16px;
}

/* Modal Footer */
.modal-footer {
  padding: 10px 16px;
  border-top: 1px solid #e9ecef;
  background-color: #f8f9fa;
}

/* Close Button */
.close {
  color: #000;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
<div class="main-content">
	<div class="cart">
		<div class="table-cart">
			<form action="sources/update_cart.php?update" method="post">
			<table border="1px" cellspacing="10px">
				<tr>
					<th>Sản Phẩm</th>
					<th>Giá</th>
					<th>Size</th>
					<th>Số lượng</th>
					<th>Tổng</th>
					<th>action</th>
				</tr>
				<?php
					$total_price_cart=0;
					$i=0;
					$info_order ="";
					foreach ($_SESSION as $key => $value) {
						if (substr($key,0,5)=='cart_') {
							$id=substr($key,5);
							$dt->select("SELECT * FROM product WHERE id='$id'");
							$i++;
							while ($row=$dt->fetch()) {
								$lsSize = explode(", ", $row['size_type']);
								if ($_SESSION['cart_'.$row['id']] != 0) {
									$info_order = $info_order." ".$row['name_product']." x".$_SESSION['cart_'.$row['id']]." ".$lsSize[0].",";
								?>
								<tr>
									<td class="img-cart"><img src="admin/sources/product/uploads/<?php echo $row['image_link'] ?>"> <span><?php echo $row['name_product'] ?></span></td>
									<td class="price-cart"><?php if ($row['discount'] > 0) {
										echo number_format($row['discount'])." VNĐ";
									}else {
										echo number_format($row['price'])." VNĐ";
									} ?></td>

									<td><select name="size">
										<?php
											
											foreach($lsSize as $key=>$value){
										?>
											<option><?php echo $value, PHP_EOL; ?></option>
										<?php
											}
										?>
									</select></td>
									
									<td class="quantity-cart">
										<input  type="number" value="<?php echo $_SESSION["cart_".$id] ?>" min="0" step="1" name="total_<?php echo $i ?>">
									</td>
									<td class="total-cart" id="total_price_<?php echo $id ?>"><?php if ($row['discount'] > 0) {
										echo number_format($row['discount']* $_SESSION["cart_".$id])." VNĐ";
										$total_price_cart+=$row['discount']* $_SESSION["cart_".$id];
									}else {
										echo number_format($row['price']* $_SESSION["cart_".$id])." VNĐ";
										$total_price_cart+=$row['price']* $_SESSION["cart_".$id];
									} ?></td>
									<td class="action-cart"><a href="sources/update_cart.php?id=<?php echo $id?>&remove">X</a></td>
									
								</tr>
								<?php
								}
							}
						}
					}
				?>
				<tr>
					
				</tr>
			</table>
			<div class="footer-table">
				<a href="?index.php">Tiếp tục mua hàng</a>
				<input type="submit" value="Cập nhật">
				<p class="total-price-cart">Tổng tiền: <?php echo number_format($total_price_cart).' VNĐ'; ?></p>
			</div>
			</form>
		</div>
		<div class="shipping-cart">
			<table>
			
				<tr>
					<td>
						<form action="sources/order.php" method="post" class="shipping offline">
							<input required="required"  type="text" name="txh_name"  placeholder="Họ tên" />
							<input required="required" type="email" name="txt_email"  placeholder="Email" />
							<input required="required" type="text" name="txt_phone" id="mobile"  placeholder="Số điện thoại" />
							<input required="required" type="text" name="txt_address"  placeholder="Địa chỉ" />
							<input required="required" name="txt_gia" type="hidden"  value="<?php echo $total_price_cart ?> "/>
							
							<input required="required" type="hidden"  name="info_order" value="<?php echo $info_order ?>">
							<?php if (isset($_SESSION["login"])) { ?>
								<input required="required" type="submit" class="checkmobile" name="submit" value="Đặt hàng"> 
								<input required="required" type="hidden"  name="bank" value="1">
								<!-- Modal-->
								<button id="openModalBtn" type="button" style="background-color: #4CAF50; /* Màu nền */
  border: none; /* Không có viền */
  font-weight : bold;
  color: white; /* Màu chữ */
  padding: 10px 32px; /* Kích thước padding */
  text-align: center; /* Căn giữa nội dung */
  text-decoration: none; /* Không có gạch chân */
  display: inline-block; /* Hiển thị dạng khối trên cùng một dòng */
  font-size: 16px; /* Kích thước chữ */
  margin: 4px 2px;">THANH TOÁN ONLINE</button>

								<div id="myModal" class="modal">
								<div class="modal-content">
								<span class="close">&times;</span>
									<div class="modal-header">
									<h5 class="modal-title"><strong style = "color : #2343B7;margin : 5px auto">Vui lòng chuyển <span style = "color : red"><?php echo number_format($total_price_cart).' VNĐ'; ?> </span>
								qua thông tin tài khoản bên dưới để xác nhận đặt hàng </strong></h5>
									</div>
									<div class="modal-body">
									<img src='./image/bank.png' style="width : 400px; height : 400px; margin : 5px auto" />
									</div>
									<div class="modal-footer">
									<input required="required" type="submit" class="checkmobile" name="submit1"
									style="background-color: #4CAF50; /* Màu nền */
  border: none; /* Không có viền */
  font-weight : bold;
  color: white; /* Màu chữ */
  padding: 10px 10px; /* Kích thước padding */
  text-align: center; /* Căn giữa nội dung */
  text-decoration: none; /* Không có gạch chân */
  display: inline-block; /* Hiển thị dạng khối trên cùng một dòng */
  font-size: 16px; /* Kích thước chữ */
  margin: 4px 2px;"
									value="Xác nhận đã thanh toán và đặt hàng">
									</div>
								</div>
								</div>
																
								<!-- Modal-->
							<?php } else { ?>	
								<input required="required" type="submit" class="checkmobile" name="submit" value="Đặt hàng">
								<?php } ?>
						</form>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $('body').on('click','.checkmobile', function() {
    var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
    var mobile = $('#mobile').val();
    if(mobile !==''){
        if (vnf_regex.test(mobile) == false) 
        {
            alert('Số điện thoại của bạn không đúng định dạng!');
            return false;
        }else{
            return true;
        }
    }
    });
});
</script>
<script type="text/javascript">
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("openModalBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// Get the close button inside modal
var closeBtn = document.getElementById("closeModalBtn");

// When the user clicks on the button, open the modal
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks on close button, close the modal
closeBtn.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>