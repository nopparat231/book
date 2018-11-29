<?php //require_once('Connections/condb.php'); ?>
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
$q = $_GET['q'];
$type = $_GET['type'];

mysql_select_db($database_condb);

if ($type == 'all') {
 
$query_prd = "SELECT * FROM tbl_product WHERE p_name LIKE '%$q%' OR  p_detial LIKE '%$q%' OR  p_at LIKE '%$q%' OR  p_pu LIKE '%$q%' OR  p_br LIKE '%$q%'   ORDER BY p_id ASC";
$prd = mysql_query($query_prd, $condb) or die(mysql_error());
$row_prd = mysql_fetch_assoc($prd);
$totalRows_prd = mysql_num_rows($prd);

}elseif ($type == 'p_at') {
  $query_prd = "SELECT * FROM tbl_product WHERE p_at LIKE '%$q%' ORDER BY p_id ASC";
$prd = mysql_query($query_prd, $condb) or die(mysql_error());
$row_prd = mysql_fetch_assoc($prd);
$totalRows_prd = mysql_num_rows($prd);

}elseif ($type == 'p_pu') {
  $query_prd = "SELECT * FROM tbl_product WHERE p_pu LIKE '%$q%' ORDER BY p_id ASC";
$prd = mysql_query($query_prd, $condb) or die(mysql_error());
$row_prd = mysql_fetch_assoc($prd);
$totalRows_prd = mysql_num_rows($prd);

}elseif ($type == 'p_br') {
  $query_prd = "SELECT * FROM tbl_product WHERE p_br LIKE '%$q%' ORDER BY p_id ASC";
$prd = mysql_query($query_prd, $condb) or die(mysql_error());
$row_prd = mysql_fetch_assoc($prd);
$totalRows_prd = mysql_num_rows($prd);
}


?>

<?php if ($totalRows_prd > 0){ ?>


  <?php do { ?>
    <div class="col-sm-2" align="center">
      <img src="pimg/<?php echo $row_prd['p_img1'];?>" width="80%" />
      <p align="center">
        <b><?php echo $row_prd['p_name']; ?> </b>
        <br /><?php if ($row_prd['promo'] != 0 && date('Y-m-d') >= date($row_prd['promo_start'])) {
          echo " <font color='#8B0000'><strike>".number_format($row_prd['promo'],2)."</strike></font>";
        } ?>
        <b ><font color="#FF8C00"><?php echo $row_prd['p_price']; ?>  บาท </font> </b>
        <br />
        <?php include('outstock.php');?>
        <br />
        <a href="product-detail.php?p_id=<?php echo $row_prd['p_id'];?>&act=product-detail" class="button btn2" style="background-color: #FFFFFF"><font color="#000000" ><span class="glyphicon glyphicon-search"></span>รายละเอียด</font></a>
        <br><br>
      </p>
    </div>
  <?php } while ($row_prd = mysql_fetch_assoc($prd)); 
}
?>
<div class="col-sm-2" align="center">
  <br><br>  <br><br>  <br><br>  <br><br><br><br>  <br><br><br><br>  <br><br>
</div>
<?php
mysql_free_result($prd);
?>
