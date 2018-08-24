<?php include('h.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="img/Li.png" />
  <style type="text/css">
  input[type=number]{
    width:40px;
    text-align:center;
    color:red;
    font-weight:600;
  }
</style>


</head>
<body>
  <div >

    <?php  include('test2navbar.php'); 
    // include('navbar.php');?>
  </div>

  <div class="container">
    <div class="row">



      <?php
      $type_name = $_GET['type_name'];
      $t_id = $_GET['t_id'];
      $q = $_GET['q'];
      if($t_id !=''){ ?>

        <div class="col-md-12" >
          <div class="panel panel-info">
            <div class="panel-heading"> รายการสินค้า 
              <a href="index.php" class="btn btn-info btn-xs"> <?php echo $type_name;?> </a>
            </div>
          </div>
          <?php  include('listprd_by_type.php'); ?>
        </div>

      <?php }elseif($q!=''){ ?>

       <div class="col-md-12">
        <div class="panel panel-default">
          <div class="panel-heading"> 
            รายการสินค้า
            <a href="listprd_by_view.php?view" class="btn btn-primary btn-xs"><?php echo $q;?> </a>
          </div>
        </div>
        <?php include('listprd_by_q.php'); ?>
      </div>


    <?php }else{?>

      <div class="col-md-12" >
        <div class="panel " style="background-color: #F0F8FF">
          <div class="panel-heading"> รายการสินค้า
            <a href="index.php" class="btn btn-info btn-xs"> ล่าสุด </a>
          </div>
        </div>
        <?php  include('listprd.php'); ?>
      </div>

      <?php
    }
    ?>
    <div class="col-md-12">
      <div class="panel " style="background-color: #FFF5EE">
        <div class="panel-heading"> 
          รายการสินค้า
          <a href="listprd_by_view.php?view" class="btn btn-danger btn-xs">ขายดี </a>
        </div>
      </div>
      <?php include('listprd_by_view.php'); ?>
    </div>

    <div class="col-md-12">
      <div class="panel " style="background-color: #F5F5DC">
        <div class="panel-heading"> 
          รายการสินค้า
          <a href="listprd_by_view.php?view" class="btn btn-warning btn-xs">ทังหมด </a>
        </div>
      </div>
      <?php include('listprdall.php'); ?>
    </div>



    <!--  </div> -->
  </div>
</div>
<!-- </div> -->
<!--end show  product-->
  <?php  include('f.php');?>
</body>

<div>

  
</div>
</html>
