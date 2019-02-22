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
    include 'nav.php';


    ?>
  </div>

  <div class="container">
    <div class="row">

      <?php
      include('carousel.php');

      

      ?>
      <br><br> 
      <div class="col-md-6">
        <?php echo $row_cf['about']; ?>

      </div>
      <div class="col-md-6">
        <?php echo $row_cf['location']; ?>
        
        <?php echo $row_cf['contact']; ?>
      </div>



    </div>
  </div>
  
  <br><br>  <br><br>  <br><br>  <br><br><br><br>  <br><br><br><br>  <br><br>
  <p id="back-top">
    <a href="#top"><font size="30"><span class="glyphicon glyphicon-arrow-up"></span></font> ขึ้นด้านบน</a>
  </p>
  <?php  include('f.php');?>
  <!--end show  product-->

</body>



</html>

