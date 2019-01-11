

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
$query_typeprd = "SELECT * FROM tbl_type ";
$typeprd = mysql_query($query_typeprd, $condb) or die(mysql_error());
$row_typeprd = mysql_fetch_assoc($typeprd);
$totalRows_typeprd = mysql_num_rows($typeprd);


mysql_select_db($database_condb);
$query_typeprd1 = "SELECT * FROM tbl_type1 ";
$typeprd1 = mysql_query($query_typeprd1, $condb) or die(mysql_error());
$row_typeprd1 = mysql_fetch_assoc($typeprd1);
$totalRows_typeprd1 = mysql_num_rows($typeprd1);



?>

<?php do{ ?>

  <div class="col-sm-2" align="left" >
   <li> <a href="index.php?t_id=<?php echo $row_typeprd['t_id'];?>&type_name=<?php echo $row_typeprd['t_name'];?>"><font color="white" size="5"><?php echo $row_typeprd['t_name']; ?></font></a></li>


 </div>

<?php } while ($row_typeprd = mysql_fetch_assoc($typeprd)); ?>
<?php do{ ?>
  <div class="col-sm-2" align="left" >

   <li> <a href="index.php?t_id=<?php echo $row_typeprd1['t_id'];?>&type1_name=<?php echo $row_typeprd1['t1_name'];?>"><font color="white" size="5"><?php echo $row_typeprd1['t1_name']; ?></font></a></li>
 </div>

<?php } while ($row_typeprd1 = mysql_fetch_assoc($typeprd1)); ?>



<?php
mysql_free_result($typeprd);
?>
<?php
mysql_free_result($typeprd1);
?>