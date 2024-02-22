
<?php
  include_once("config.php");
  $dt=new database();
   $dt->select("SELECT * FROM info  ");
   $row2=$dt->fetch();
?>
<h2 class="text-center p-3 text-success">Thông Tin Liên Hệ</h2>
<form action="sources/info/action.php" method="post" enctype="multipart/form-data">
   <table class="table table-striped">
    
      <tr>
        <td>Thông Tin</td>
        <td><textarea style="width: 100%;"   name="info_footer" id="info_footer"><?php echo $row2['info_footer'] ?></textarea></td>
     </tr>

       <tr>
        <td>Liên Hệ</td>
        <td><input type="text" name="hotline"  value="<?php echo $row2['hotline'] ?>"  required="required" class="form-control" ></td>
     </tr>
       <tr>
        <td>Địa Chỉ</td>
        <td><input type="text" name="address"  value="<?php echo $row2['address'] ?>"   class="form-control" ></td>
     </tr>
       <tr>
        <td>Email</td>
        <td><input type="text" name="email"  value="<?php echo $row2['email'] ?>"  required="required" class="form-control" ></td>
     </tr>

     <tr>
        <td colspan="2"><button style="margin: 0px 350px;" type="submit"  name="edit" class="btn btn-primary btn-lg" >Edit</button></td>
     </tr>
  </table>
</form>
<script type="text/javascript">
    CKEDITOR.replace("info_footer",{
               filebrowserBrowseUrl : 'sources/info/ckfinder/ckfinder.html',
               filebrowserImageBrowseUrl : 'sources/info/ckfinder/ckfinder.html?type=Images',
               filebrowserFlashBrowseUrl : 'sources/info/ckfinder/ckfinder.html?type=Flash',
               filebrowserUploadUrl : 'sources/info/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
               filebrowserImageUploadUrl : 'sources/info/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
               filebrowserFlashUploadUrl : 'sources/info/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
            });

</script>
