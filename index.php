<?php 
ob_start();
include('h.php');?>
<?php include('datatable.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="img/Li.png" />
  <style type="text/css">
.hr{
  color: #f00;
background-color: #f00;
height: 5px;
}

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
   include('carousel.php');?>
  </div>

  <div class="container">
    <div class="row">



      <?php


      
      $type_name = $_GET['type_name'];
      $t_id = $_GET['t_id'];
      $q = $_GET['q'];
      if($t_id !=''){ ?>

        <div class="col-md-12" ><br>
           รายการสินค้า 
              <a href="index.php" class="btn btn-info btn-xs"> <?php echo $type_name;?> </a>
               <hr size="10" style="background-color: #0099CC; height: 5px;">
           
          <?php  include('listprd_by_type.php'); ?>
        </div>

      <?php }elseif($q!=''){ ?>

       <div class="col-md-12">
         <br>
            รายการสินค้า
            <a href="listprd_by_view.php?view" class="btn btn-primary btn-xs"><?php echo $q;?> </a>
            <hr size="10" style="background-color: #D3D3D3; height: 5px;">
         
        <?php include('listprd_by_q.php'); ?>
      </div>


    <?php }else{?>

      <div class="col-md-12" ><br>
         รายการสินค้า
            <a href="index.php" class="btn btn-xs" style="background-color: #7FFFD4"> ล่าสุด </a>
             <hr size="10" style="background-color: #0099CC; height: 5px;">
          
        <?php  include('listprd.php'); ?>
      </div>

      <?php
    }
    ?>
    <div class="col-md-12">
      
          รายการสินค้า
          <a href="listprd_by_view.php?view" class="btn btn-danger btn-xs">ขายดี </a>
          <hr size="10" style="background-color: #FF6666; height: 5px;">
        
      <?php include('listprd_by_view.php'); ?>
    </div>

    <div class="col-md-12">
    
          รายการสินค้า

          <a href="listprd_by_view.php?view" class="btn btn-warning btn-xs">ทังหมด </a>
          <hr size="10" style="background-color: #FF9933; height: 5px;">
   
      <?php include('listprdall.php'); ?>
    </div>



   
  </div>
</div>

<!--end show  product-->
  <?php  include('f.php');?>
</body>

<div>

  
</div>
</html>
