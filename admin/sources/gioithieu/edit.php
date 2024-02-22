
<?php
  include_once("config.php");
  $dt=new database();
   $dt->select("SELECT * FROM gioithieu  ");
   $row2=$dt->fetch();
?>
<h2 class="text-center p-3 text-success">Giới Thiệu Website</h2>
<form action="sources/gioithieu/action.php" method="post" enctype="multipart/form-data">
   <table class="table table-striped">
    
      <tr>
        <td>Nội Dung</td>
        <td><textarea style="width: 100%;"   name="content" id="content"><?php echo $row2['content'] ?></textarea></td>
     </tr>
 <tr>
        <td colspan="2"><button style="margin: 0px 350px;" type="submit"  name="edit" class="btn btn-primary btn-lg" >Edit</button></td>
     </tr>
  </table>
</form>
<script type="text/javascript">
    CKEDITOR.replace("content",{
               filebrowserBrowseUrl : 'sources/gioithieu/ckfinder/ckfinder.html',
               filebrowserImageBrowseUrl : 'sources/gioithieu/ckfinder/ckfinder.html?type=Images',
               filebrowserFlashBrowseUrl : 'sources/gioithieu/ckfinder/ckfinder.html?type=Flash',
               filebrowserUploadUrl : 'sources/gioithieu/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
               filebrowserImageUploadUrl : 'sources/gioithieu/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
               filebrowserFlashUploadUrl : 'sources/gioithieu/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
            });

</script>
