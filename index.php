<?php 
ob_start();
include('h.php');?>
<?php include('datatable.php');
include 'check_order_date.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="img/Li.png" />


  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

  <script>
    $(document).ready(function(){

  // hide #back-top first
  $("#back-top").hide();
  
  // fade in #back-top
  $(function () {
    $(window).scroll(function () {
      if ($(this).scrollTop() > 100) {
        $('#back-top').fadeIn();
      } else {
        $('#back-top').fadeOut();
      }
    });

    // scroll body to 0px on click
    $('#back-top a').click(function () {
      $('body,html').animate({
        scrollTop: 0
      }, 800);
      return false;
    });
  });

});
</script> 


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
<body id="top">
  <div >

    <?php  

    
    include('test2navbar.php'); 
    

    ?>
  </div>

  <div class="container">
    <div class="row">





      <?php
      include('carousel.php');


      
      $type_name = $_GET['type_name'];
      $t_id = $_GET['t_id'];
      $t1_id = $_GET['t1_id'];
      $q = $_GET['q'];
      if($t_id !=''){ ?>

        <div class="col-md-12" ><br>
         รายการสินค้า 
         <a class="btn btn-info btn-xs"> <?php echo $type_name;?> </a>
         <hr size="10" style="background-color: #0099CC; height: 5px;">
       </div>
       <?php  include('listprd_by_type.php'); ?>
       

     <?php }elseif($q!=''){ ?>

       <div class="col-md-12">
         <br>
         รายการสินค้า
         <a class="btn btn-primary btn-xs"><?php echo $q;?> </a>
         <hr size="10" style="background-color: #D3D3D3; height: 5px;">
       </div>

       <?php include('listprd_by_q.php'); ?>


     <?php }elseif($t1_id !=''){ ?>

     <div class="col-md-12" ><br>
       รายการสินค้า 
       <a class="btn btn-info btn-xs"> <?php echo $type_name;?> </a>
       <hr size="10" style="background-color: #0099CC; height: 5px;">
     </div>
     <?php  include('listprd_by_type1.php'); ?>

   <?php }else{?>

      <div class="col-md-12" ><br>
       รายการสินค้า
       <a class="btn btn-xs" style="background-color: #7FFFD4"> ล่าสุด </a>
       <hr size="10" style="background-color: #0099CC; height: 5px;">
       
       <?php  include('listprd.php'); ?>
     </div>

     <?php
   }
   ?>

   <?php if ($q != '' or $type_name != ''){

   }else{ ?>


     <div class="col-md-12">

      รายการสินค้า
      <a class="btn btn-danger btn-xs">ขายดี </a>
      <hr size="10" style="background-color: #FF6666; height: 5px;">

      <?php include('listprd_by_view.php'); ?>
    </div>

    <div class="col-md-12">

      รายการสินค้า

      <a class="btn btn-warning btn-xs">ทังหมด </a>
      <hr size="10" style="background-color: #FF9933; height: 5px;">

      <?php include('listprdall.php'); ?>
    </div>

  <?php } ?>

  
</div>
</div>
<p id="back-top">
  <a href="#top"><font size="30"><span class="glyphicon glyphicon-arrow-up"></span></font> ขึ้นด้านบน</a>
</p>

<!--end show  product-->
<?php  include('f.php');?>
</body>


</html>
