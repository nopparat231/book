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


<?php require_once('Connections/condb.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
  function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "")
  {
    if (PHP_VERSION < 6) {
      $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
    }

    $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

    switch ($theType) {
      case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
      case "long":
      case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
      case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
      case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
      case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
    }
    return $theValue;
  }
}


mysql_select_db($database_condb);
$query_prd = "SELECT * FROM tbl_new order by new_id desc";
$prd = mysql_query( $query_prd,$condb) or die(mysql_error());
$row_prd = mysql_fetch_assoc($prd);
$totalRows_prd = mysql_num_rows($prd);
?>


</head>
<body id="top">
  <div >

    <?php


    include('test2navbar.php');
    include 'nav.php';


    ?>
  </div>
  <script type="text/javascript">

    <?php
    function DateThai($strDate)
    {
      $strYear = date("Y",strtotime($strDate))+543;
      $strMonth= date("n",strtotime($strDate));
      $strDay= date("j",strtotime($strDate));
      $strHour= date("H",strtotime($strDate));
      $strMinute= date("i",strtotime($strDate));
      $strSeconds= date("s",strtotime($strDate));
      $strMonthCut = Array("","ม.ค.","ก.พ.","มี.ค.","เม.ย.","พ.ค.","มิ.ย.","ก.ค.","ส.ค.","ก.ย.","ต.ค.","พ.ย.","ธ.ค.");
      $strMonthThai=$strMonthCut[$strMonth];
      return "$strDay $strMonthThai $strYear, $strHour:$strMinute";
    }


    ?>
  </script>
  <div class="container">
    <div class="row" >

      <?php
      //include('carousel.php');


      ?>
      <br><br>
      <div class="col-md-12">
        <h3><b>ข่าวสาร&กิจกรรม</b></h3>

        <?php do {

         echo "<hr>";
         
         echo "<table >";
         echo "<tr>";
         ?>

         <th>

          <p><img src="<?php echo $row_prd['new_img']; ?>" style="height:231px; width:481px" /></p>

        </th>
        <th>&nbsp;&nbsp;&nbsp;&nbsp;</th>


        <th>
          <p ><h3><b><?php echo $row_prd['new_title']; ?></h3></b> </p>
          <br>
          <p > <?php echo mb_substr($row_prd['new_v'] , 0 , 250 , 'utf-8'); ?> <b>...</b></p>



          <br>
          <p><?php echo DateThai($row_prd['new_time']); ?></p>
          <p><a href="new_re.php?new_id=<?php echo $row_prd['new_id']; ?>"><button>อ่านต่อ</button></a></p>
          <?php
          echo "</th>";

          echo "</tr>";
          echo "</table>";
          echo "<br>";

        } while ($row_prd = mysql_fetch_assoc($prd)); ?>


      </div>


    </div>
  </div>

  <br><br>  <br><br>
  <p id="back-top" style="text-align: right;">
    <a href="#top" ><font size="30"><span class="glyphicon glyphicon-arrow-up" ></span></font> </a>
  </p>
  <?php  include('f.php');?>
  <!--end show  product-->

</body>

<?php mysql_free_result($cf); ?>

</html>
