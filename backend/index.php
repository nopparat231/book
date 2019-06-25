<?php include('access.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <?php include('h.php');?>
  <?php include('datatable.php');?>

  </head> <?php include('navbar.php'); ?>
  <body>
    <?php // include('menu.php');  ?>
    <div class="container">



     <div class="row">
       <div class="col-md-3">

         <?php include('menu.php');?>

       </div>
       <div class="col-md-9" >

        <?php if ($row_mm['status'] == 'staff') { ?>



          <?php include 'show_all_order.php';

          include 'f.php';
          ?>




        <?php }  ?>


        <br />
        <br />
        <?php
        $act = $_GET['act'];
        if ($act =='show-order') {
          include('detail_order_after_cartdone.php');
        }elseif ($act == 'show-payed'){
          include('show_cart_pay.php');
        }elseif ($act == 'show-post') {
          include('show_cart_post.php');
        }elseif ($act == 'show-cancel'){
          include('show_cancel_cart.php');
        }elseif ($act == 'show-check'){
          include('show_check_cart.php');
        }elseif ($act == 'show-new'){
          include('show_new_cart.php');
        }

        ?>
      </div>
    </div>
  </div>
</body>
</html>
