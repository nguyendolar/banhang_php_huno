
<?php
  include_once("config.php");
  $dt=new database();
?>
<h2 class="text-center p-3 text-success">Cập Nhật Password</h2>
<form action="sources/admin/action.php" method="post" enctype="multipart/form-data">
   <table class="table table-striped">
    
      <tr>
        <td>Mật khẩu mới</td>
        <td><input type="text" name="pass" required="required"></td>
     </tr>
 <tr>
        <td colspan="2"><button style="margin: 0px 350px;" type="submit"  name="edit" class="btn btn-primary btn-lg" >EDIT</button></td>
     </tr>
  </table>
</form>