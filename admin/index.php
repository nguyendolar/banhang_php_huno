 <?php
 @ob_start();
 session_start();
 include_once('config.php');
 if (!isset($_SESSION["loginad"])) {
  exit(header("location: sources/login.php"));
}
?>
<?php
include_once("config.php");
$dt=new database();

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin | Hunonic</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "icon" href = "../image/logo5.png" type = "image/x-icon">
  <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.css">
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <style type="text/css" media="screen">
    .sidebar-dark-primary{
      background: #1257a0 !important
    }

    .sidebar-dark-primary .sidebar a {
      color: #fff !important;
    }
  </style>
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <script type="text/javascript" src="sources/product/ckeditor/ckeditor.js"></script>
  <script type="text/javascript" src="sources/product/ckfinder/ckfinder.js"></script>
</head>
<body class="hold-transition sidebar-mini">
  <div class="wrapper">
   <?php
   $dt->select("SELECT COUNT(*) as total_shipping FROM shipping WHERE status='Đang chờ' ");
   $row2=$dt->fetch();
   ?>
   <!-- Navbar -->
   <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index.php" class="nav-link">Home Admin</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../index.php" class="nav-link">Page Site</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="sources/logout.php" class="nav-link">Logout</a>
      </li>
      <!-- SEARCH FORM -->
      <form class="form-inline ml-3" method="post" action="index.php?pag=1" >
        <div class="input-group input-group-sm">
          <input class="form-control form-control-navbar" required="required" name="search_text" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-navbar" type="submit" name="search">
              <i class="fa fa-search"></i>
            </button>
          </div>
        </div>
      </form>
      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
         <i class="far fa-comments"></i>
         <span class="badge badge-danger navbar-badge"><?php echo $row2['total_shipping']; ?></span>
       </a>
       <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
        <a href="index.php?view=order&action=list" class="dropdown-item">
          <!-- Message Start -->
          <div class="media">

            <div class="media-body">
              <h3 class="dropdown-item-title">Đơn hàng</h3>
              <p class="text-sm  text-danger">Có <?php echo $row2['total_shipping'] ?> đơn hàng mới</p>
              
            </div>
          </div>
          <!-- Message End -->
        </a>
        <div class="dropdown-divider"></div>
     </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">

      <?php
      $dt->select("SELECT* FROM admin");
      $row=$dt->fetch();
      ?>
      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="image">
            <img src="sources/admin/uploads/<?php echo $row['thumbnail'] ?>" class="rounded" alt="User Image">
          </div>
          <div class="info">
            <a href="index.php?view=admin&action=list" class="d-block"><?php echo $row['name'] ?></a>
          </div>
        </div>

        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

            <li class="nav-item has-treeview">
                <a href="#" class="nav-link"> <!-- duong dan menu -->
                 <i class="nav-icon fa fa-briefcase"></i> <!-- cái này là icon menu -->
                 <p>
                  Loại Sản Phẩm
                  <i class="right fa fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="index.php?view=product_type&action=list" class="nav-link">
                    <i class="fa fa-circle-o nav-icon"></i>
                    <p>Danh Sách</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="index.php?view=product_type&action=add" class="nav-link">
                    <i class="fa fa-circle-o nav-icon"></i>
                    <p>Thêm</p>
                  </a>
                </li>
              </ul>
            </li>
        </ul>
      </nav>
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
             <i class="nav-icon fa fa-university"></i>
             <p>
               Nhà Sản Xuất
               <i class="right fa fa-angle-left"></i>
             </p>
           </a>
           <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="index.php?view=producer&action=list" class="nav-link">
                <i class="fa fa-circle-o nav-icon"></i>
                <p>Danh Sách</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="index.php?view=producer&action=add" class="nav-link">
                <i class="fa fa-circle-o nav-icon"></i>
                <p>Thêm</p>
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </nav>
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
           <i class="nav-icon fa fa-shopping-bag"></i>
           <p>
             Sản Phẩm
             <i class="right fa fa-angle-left"></i>
           </p>
         </a>
         <ul class="nav nav-treeview">
          <li class="nav-item">
            <a href="index.php?view=product&action=list&pag=1" class="nav-link">
              <i class="fa fa-circle-o nav-icon"></i>
              <p>Danh Sách</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="index.php?view=product&action=add" class="nav-link">
              <i class="fa fa-circle-o nav-icon"></i>
              <p>Thêm</p>
            </a>
          </li>
        </ul>
      </li>
    </ul>
  </nav>
  <nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
    <li class="nav-item has-treeview">
      <a href="index.php?view=slide" class="nav-link">
       <i class="nav-icon fa fa-th"></i>
       <p>Thay Đổi Slide</p>
     </a>
    </li>
  </ul>
</nav>
<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

  <li class="nav-item has-treeview">
    <a href="index.php?view=user&action=list&page=1" class="nav-link">
     <i class="nav-icon fa  fa-address-book"></i>
     <p>Người Dùng</p>
     </a>
  </li>
</ul>
</nav>
<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
    <li class="nav-item has-treeview">
      <a href="index.php?view=order&action=list&page=1" class="nav-link">
       <i class="nav-icon fa fa-cart-plus"></i>
       <p>Đơn hàng</p>
     </a>
  </li>
</ul>
</nav>
<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
    <li class="nav-item has-treeview">
      <a href="index.php?view=bank&action=list&page=1" class="nav-link">
       <i class="nav-icon fa fa-cart-plus"></i>
       <p>Xác nhận thanh toán</p>
     </a>
  </li>
</ul>
</nav>
<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
  <li class="nav-item has-treeview">
    <a href="index.php?view=info" class="nav-link">
     <i class="nav-icon fa fa-info"></i>
     <p>Thông Tin Website</p>
  </a>
  </li>
</ul>
</nav>
<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
    <li class="nav-item has-treeview">
      <a href="index.php?view=gioithieu" class="nav-link">
       <i class="nav-icon fa fa-bookmark"></i>
       <p>Giới thiệu</p>
     </a>
  </li>
</ul>
</nav>
<!-- /.sidebar-menu -->
</div>
<!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <div class="container-fluid">
    <?php
    $view=isset($_GET['view'])?$_GET['view']:'';
    $action= isset($_GET['action'])?$_GET['action']:'';
    if ($view=='product_type' && $action=='list') {
      include_once('sources/product_type/list.php');
    }elseif ($view == 'product_type' && $action=='add') {
      include_once('sources/product_type/add.php');
    }elseif ($view == 'product_type' && $action=='edit') {
      include_once('sources/product_type/edit.php');
    } elseif ($view=='producer' && $action=='list') {
      include_once('sources/producer/list.php');
    }elseif ($view == 'producer' && $action=='add') {
      include_once('sources/producer/add.php');
    }elseif ($view == 'producer' && $action=='edit') {
      include_once('sources/producer/edit.php');
    }elseif ($view=='product' && $action=='list') {
      include_once('sources/product/list.php');
    }elseif ($view == 'product' && $action=='add') {
      include_once('sources/product/add.php');
    }elseif ($view == 'product' && $action=='edit') {
      include_once('sources/product/edit.php');
    }elseif (isset($_POST["search"]) || $view=="search") {
      include_once("sources/search.php");
    }elseif ( $view=="slide") {
      include_once("sources/slide/edit.php");
    }elseif ($view=='user' && $action=='list') {
      include_once('sources/user/list.php');
    }elseif ($view == 'user' && $action=='edit') {
      include_once('sources/user/edit.php');
    }
    elseif ($view=='order' && $action=='list') {
      include_once('sources/order/list.php');
    }elseif ($view=='bank' && $action=='list') {
        include_once('sources/bank/list.php');
    }elseif ($view == 'order' && $action=='edit') {
      include_once('sources/order/edit.php');
    }elseif ($view == 'info') {
      include_once('sources/info/edit.php');
    }elseif ($view == 'gioithieu') {
      include_once('sources/gioithieu/edit.php');
    }elseif ($view == 'admin' && $action=='list') {
      include_once('sources/admin/list.php');
    }elseif ($view == 'admin' && $action =='editpass') {
      include_once('sources/admin/edit_pass.php');
    }
    elseif ($view == 'admin' && $action =='name') {
      include_once('sources/admin/edit_name.php');
    }
    elseif ($view == 'admin' && $action =='thumbnail') {
      include_once('sources/admin/edit_thumbnail.php');
    }else{
      ?>
      <div class="col-md-12" style="margin: 0 0 50px 0; ">
        <?php
$dt->select("SELECT * FROM shipping WHERE month(created)='1' AND status='Đã xong' ");
$total_t1=0;
while ($row_t1=$dt->fetch()) {
  $price=(int)$row_t1['price'];
  $total_t1=$total_t1+$price;

}
$dt->select("SELECT * FROM shipping WHERE month(created)='2' AND status='Đã xong'  ");
$total_t2=0;
while ($row_t2=$dt->fetch()) {
  $price=(int)$row_t2['price'];
  $total_t2=$total_t2+$price;

}
$dt->select("SELECT * FROM shipping WHERE month(created)='3' AND status='Đã xong'  ");
$total_t3=0;
while ($row_t3=$dt->fetch()) {
  $price=(int)$row_t3['price'];
  $total_t3=$total_t3+$price;

}
$dt->select("SELECT * FROM shipping WHERE month(created)='4' AND status='Đã xong'  ");
$total_t4=0;
while ($row_t4=$dt->fetch()) {
  $price=(int)$row_t4['price'];
  $total_t4=$total_t4+$price;

}
$dt->select("SELECT * FROM shipping WHERE month(created)='5'  AND status='Đã xong' ");
$total_t5=0;
while ($row_t5=$dt->fetch()) {
  $price=(int)$row_t5['price'];
  $total_t5=$total_t5+$price;

}
$dt->select("SELECT * FROM shipping WHERE month(created)='6' AND status='Đã xong' ");
$total_t6=0;
while ($row_t6=$dt->fetch()) {
  $price=(int)$row_t6['price'];
  $total_t6=$total_t6+$price;

}
$dt->select("SELECT * FROM shipping WHERE month(created)='7' AND status='Đã xong' ");
$total_t7=0;
while ($row_t7=$dt->fetch()) {
  $price=(int)$row_t7['price'];
  $total_t7=$total_t7+$price;

}
$dt->select("SELECT * FROM shipping WHERE month(created)='8' AND status='Đã xong'  ");
$total_t8=0;
while ($row_t8=$dt->fetch()) {
  $price=(int)$row_t8['price'];
  $total_t8=$total_t8+$price;

}
$dt->select("SELECT * FROM shipping WHERE month(created)='9' AND status='Đã xong'  ");
$total_t9=0;
while ($row_t9=$dt->fetch()) {
  $price=(int)$row_t9['price'];
  $total_t9=$total_t9+$price;

}
$dt->select("SELECT * FROM shipping WHERE month(created)='10' AND status='Đã xong' ");
$total_t10=0;
while ($row_t10=$dt->fetch()) {
  $price=(int)$row_t10['price'];
  $total_t10=$total_t10+$price;

}
$dt->select("SELECT * FROM shipping WHERE month(created)='11' AND status='Đã xong' ");
$total_t11=0;
while ($row_t11=$dt->fetch()) {
  $price=(int)$row_t11['price'];
  $total_t11=$total_t11+$price;

}
$dt->select("SELECT * FROM shipping WHERE month(created)='12' AND status='Đã xong' ");
$total_t12=0;
while ($row_t12=$dt->fetch()) {
  $price=(int)$row_t12['price'];
  $total_t12=$total_t12+$price;

}

?>

        <h2 class="text-center p-3 text-success">Thống Kê Báo Cáo</h2>
        <div class="row">
         <div class="col-12 col-sm-6 col-md-4">
          <div class="info-box">
            <span class="info-box-icon bg-info elevation-1"><i class="fas fa-dollar-sign"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Tống số vốn </span>
              <span class="info-box-number">
              <?php
                $dt->select("SELECT * FROM product");
                $total_money_product=0;
                while ($row6=$dt->fetch()) {
                  $total_money_product=$total_money_product+((int)$row6['investment_money']*(int)$row6['total']);
                }
                echo number_format($total_money_product)." VNĐ";
              ?>
              </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-12 col-sm-6 col-md-4">
          <div class="info-box mb-3">
            <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-dollar-sign"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Tổng thu nhập</span>
              <span class="info-box-number"><?php  echo number_format($total_sale=$total_t1+$total_t2+$total_t3+$total_t4+$total_t5+$total_t6+$total_t7+$total_t8+$total_t9+$total_t10+$total_t11+$total_t12)." VNĐ" ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        
        <div class="clearfix hidden-md-up"></div>

        <div class="col-12 col-sm-6 col-md-4">
          <div class="info-box mb-3">
            <span class="info-box-icon bg-warning elevation-1"><i class="fa fa-shopping-cart"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Số sản phẩm đã bán</span>
              <span class="info-box-number">
                <?php
                  $dt->select("SELECT * FROM product ");
                  $total_sell=0;
                  while ($row5=$dt->fetch()) {
                      $total_sell=$total_sell+(int)$row5['sell'];
                    }
                     echo $total_sell;
                ?>
              </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
      </div>
    </div>
    <div class="row">
    <div class="col-md-12">
     <!-- AREA CHART -->
     <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">Thông Kê doanh số(2020)</h3>

        <div class="card-tools">
          <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i>
          </button>
          <button type="button" class="btn btn-tool" data-widget="remove"><i class="fa fa-times"></i></button>
        </div>
      </div>
      <div class="card-body">
        <div class="chart">
          <canvas id="areaChart" style="height:250px"></canvas>
        </div>
      </div>
    </div>
    <!-- /.card-body -->
  </div>

  <?php
}
?>
</div>

<input type="hidden" id="t1" value="<?php echo $total_t1 ?>">
<input type="hidden" id="t2" value="<?php echo $total_t2?>">
<input type="hidden" id="t3" value="<?php echo $total_t3 ?>">
<input type="hidden" id="t4" value="<?php echo $total_t4 ?>">
<input type="hidden" id="t5" value="<?php echo $total_t5 ?>">
<input type="hidden" id="t6" value="<?php echo $total_t6 ?>">
<input type="hidden" id="t7" value="<?php echo $total_t7 ?>">
<input type="hidden" id="t8" value="<?php echo $total_t8 ?>">
<input type="hidden" id="t9" value="<?php echo $total_t9 ?>">
<input type="hidden" id="t10" value="<?php echo $total_t10 ?>">
<input type="hidden" id="t11" value="<?php echo $total_t11 ?>">
<input type="hidden" id="t12" value="<?php echo $total_t12 ?>">

</div>
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>

<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>

<!-- ChartJS 1.0.1 -->
<script src="plugins/chartjs-old/Chart.min.js"></script>

<script>
  $(function () {
    // Get context with jQuery - using jQuery's .get() method.
    var areaChartCanvas = $('#areaChart').get(0).getContext('2d')
    // This will get the first returned node in the jQuery collection.
    var areaChart       = new Chart(areaChartCanvas)
    var t1=$('#t1').val();
     var t3=$('#t3').val();
    var t2=$('#t2').val();
     var t4=$('#t4').val();
     var t5=$('#t5').val();
     var t6=$('#t6').val();
     var t7=$('#t7').val();
     var t8=$('#t8').val();
     var t9=$('#t9').val();
     var t10=$('#t10').val();
     var t11=$('#t11').val();
     var t12=$('#t12').val();
    var areaChartData = {
      labels  : ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'tháng 6', 'tháng 7' ,' Tháng 8','Tháng 9','Tháng 10','Tháng 11','Tháng 12'],
      datasets: [
      {
        data : [t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12]
      }
      ]
    }

    var areaChartOptions = {
      showScale               : true,
      //Boolean - Whether grid lines are shown across the chart
      scaleShowGridLines      : false,
      //String - Colour of the grid lines
      scaleGridLineColor      : 'rgba(0,0,0,.05)',
      //Number - Width of the grid lines
      scaleGridLineWidth      : 1,
      //Boolean - Whether to show horizontal lines (except X axis)
      scaleShowHorizontalLines: true,
      //Boolean - Whether to show vertical lines (except Y axis)
      scaleShowVerticalLines  : true,
      //Boolean - Whether the line is curved between points
      bezierCurve             : true,
      //Number - Tension of the bezier curve between points
      bezierCurveTension      : 0.3,
      //Boolean - Whether to show a dot for each point
      pointDot                : false,
      //Number - Radius of each point dot in pixels
      pointDotRadius          : 4,
      //Number - Pixel width of point dot stroke
      pointDotStrokeWidth     : 1,
      //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
      pointHitDetectionRadius : 20,
      //Boolean - Whether to show a stroke for datasets
      datasetStroke           : true,
      //Number - Pixel width of dataset stroke
      datasetStrokeWidth      : 2,
      //Boolean - Whether to fill the dataset with a color
      datasetFill             : true,
      //String - A legend template
      legendTemplate          : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].lineColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',
      //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio     : true,
      //Boolean - whether to make the chart responsive to window resizing
      responsive              : true
    }

    areaChart.Line(areaChartData, areaChartOptions)

    var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
    var pieChart       = new Chart(pieChartCanvas)
    
  })
</script>
</body>
</html>
