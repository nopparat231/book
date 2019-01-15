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
$t1_id = $_GET['t1_id'];


mysql_select_db($database_condb);
$query_prd = "SELECT * FROM tbl_product WHERE t1_id=$t1_id ORDER BY p_id ASC";
$prd = mysql_query($query_prd, $condb) or die(mysql_error());
$row_prd = mysql_fetch_assoc($prd);
$totalRows_prd = mysql_num_rows($prd);

if($totalRows_prd > 0) { ?>

<?php do { ?>
  <div class="col-sm-2" align="center">
    <a href="product-detail.php?p_id=<?php echo $row_prd['p_id'];?>&act=product-detail">
    <img src="pimg/<?php echo $row_prd['p_img1'];?>" width="80%" style="height: 200px" />
  </a>
    <p align="center">
    <b><?php echo iconv_substr($row_prd['p_name'],0,20,'utf-8'); ?>... </b>
<br /><?php if ($row_prd['promo'] != 0 && date('Y-m-d') >= date($row_prd['promo_start'])) {
        echo " <font color='#8B0000'><strike>".number_format($row_prd['promo'],2)."</strike></font>";
      }else {
        echo "<br />";
      } ?>
    <b ><font color="#FF8C00"><?php echo $row_prd['p_price']; ?>  บาท </font> </b>
      <br />
      <?php  if ($row_prd['promo'] != 0 && date('Y-m-d') >= $row_prd['promo_start']) {

          echo  "<font color='#FF8C00'>ประหยัด" .number_format($row_prd['promo']-$row_prd['p_price'],2). "บาท </font>";
        }?>
      <?php include('outstock.php');?>
    <br />
    <a href="product-detail.php?p_id=<?php echo $row_prd['p_id'];?>&act=product-detail" class="button btn2" style="background-color: #FFFFFF"><font color="#000000" ><span class="glyphicon glyphicon-search"></span>รายละเอียด</font></a>
      <br><br>
      </p>
    </div>
  <?php } while ($row_prd = mysql_fetch_assoc($prd)); ?>

  <?php } else{
      echo "<h4 align='center'>";
      echo "ไม่มีสินค้า";
      echo "</h4>";
   }?>
   <div class="col-sm-2" align="center">
    <br><br>  <br><br>  <br><br>  <br><br><br><br>  <br><br><br><br>  <br><br>
      </div>
<?php
mysql_free_result($prd);
?>
