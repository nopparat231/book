<?php require_once('Connections/condb.php'); ?>
<?php
session_start();


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

$colname_pf = "-1";
if (isset($_SESSION['MM_Username'])) {
  $colname_pf = $_SESSION['MM_Username'];
}
mysql_select_db($database_condb);
$query_pf = sprintf("SELECT * FROM tbl_member WHERE mem_username = %s", GetSQLValueString($colname_pf, "text"));
$pf = mysql_query($query_pf, $condb);
$row_pf = mysql_fetch_assoc($pf);
$totalRows_pf = mysql_num_rows($pf);
?>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="utf-8">
  <?php include('h.php'); ?>
  <?php include('datatable.php'); ?>
  <title></title>
</head>
<body>
  <div>
    
    <?php include('test2navbar.php') ?>
  </div>
  <div class="container">
    <div class="row">
      

      <!-- start show prd -->
      <div class="col-md-3">
        
        <?php include('category2.php') ?>
      </div>
      <!-- content -->
      
      <!--  <div class="col-md-8" > -->
        <?php
        $page = $_GET['page'];
        $mem_id = $_GET['mem_id'];
        $mycart_ro = $_GET['mycart_ro'];
        $mycart_po = $_GET['mycart_po'];

        if ($page == 'mycart') {
         echo "<div class='col-md-9' >";
         include('mycart.php');
         echo "</div>";
       }elseif ($mem_id != '') {
        echo "<div class='col-md-9' >";
        include('edit_profile.php');
        echo "</div>";
      }elseif ($mycart_ro == 'mycart_ro') {
        echo "<div class='col-md-9' >";
        include('mycart_ro.php');
        echo "</div>";
      }elseif ($mycart_po == 'mycart_po') {
        echo "<div class='col-md-9' >";
        include('mycart_po.php');
        echo "</div>";
      } else  {
        echo "<div class='col-md-9' >";
        include('detail_order_afer_cartdone.php');
        echo "</div>";
      } 
      

      

      ?>
      <!--  </div> -->
      
    </div>

  </div>
  <!-- end show prd -->


</body>
</html>
<?php

include ('f.php');
?>


