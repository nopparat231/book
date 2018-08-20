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



  <?php include('navbar.php');?>
</div>
<div class="container">
  <div class="row">

    <!-- banner -->

         <!-- 
           <a href="http://track.thailandpost.co.th/tracking/default.aspx" target="bank_"><img src="img/ems.png" class="rounded float-left" width="100%" /></a>
           <br />
            <a href="https://facebook.com" target="bank_"><img src="img/logof.png" class="rounded float-left" width="100%" /></a>
          -->

<!-- <div class="col-md-12">
        <div class="row">

    <?php// include('category2.php'); ?>
    <br />
  </div></div> -->
  <!-- end banner --> 

         <div class="col-md-12">
          <div class="panel panel-danger">
            <div class="panel-heading"> 
          รายการสินค้าขายดี
       </div>
   </div>
    <?php include('listprd_by_view.php'); ?>
    </div>

  <!--start show  product-->
    <!-- <div class="container">
      <div class="row"> -->
        <!-- categories -->

        <!-- product-->
        <div class="col-md-12" >
          <div class="panel panel-info">
            <div class="panel-heading"> รายการสินค้า
              <a href="index.php" class="btn btn-info btn-xs"> ล่าสุด </a>
            </div>
          </div>

          <?php

          $t_id = $_GET['t_id'];
          $q = $_GET['q'];
          if($t_id !=''){
            include('listprd_by_type.php');
          }else if($q!=''){
            include('listprd_by_q.php');
          }else{
            include('listprd.php');

          }
          ?>
        </div>


        <!-- cart -->

        
 
        <!--  </div> -->
      </div>
    </div>
    <!-- </div> -->
    <!--end show  product-->
  </body>
  <div class="col-md-12">
    <?php  include('f.php');?>
  </div>
  </html>
  
  <script>
    window.onscroll = function() {myFunction()};

    var navbar = document.getElementById("navbar");
    var sticky = navbar.offsetTop;

    function myFunction() {
      if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
      } else {
        navbar.classList.remove("sticky");
      }
    }
  </script>

