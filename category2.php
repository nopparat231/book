
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
$query_typeprd = "SELECT * FROM tbl_type ORDER BY t_id ASC";
$typeprd = mysql_query($query_typeprd, $condb) or die(mysql_error());
$row_typeprd = mysql_fetch_assoc($typeprd);
$totalRows_typeprd = mysql_num_rows($typeprd);


?>

<div class="list-group" id="hp" >
  <a href="index.php" class="list-group-item list-group-item-action active" id="list-home-list" style="background-color: #2C3E50">หมวดสินค้า</a>

  <?php do { ?>

    <a href="index.php?t_id=<?php echo $row_typeprd['t_id'];?>&type_name=<?php echo $row_typeprd['t_name'];?>" class="list-group-item"><?php echo $row_typeprd['t_name']; ?><span class="badge"></span><span class="list-group-item-action"></span></a>

    <?php 

    $query_typeprd1 = "SELECT * FROM tbl_type1 where t_id =  ".$row_typeprd['t_id'];
    $typeprd1 = mysql_query($query_typeprd1, $condb) or die(mysql_error());
    $row_typeprd1 = mysql_fetch_assoc($typeprd1);
    $totalRows_typeprd1 = mysql_num_rows($typeprd1);

    ?>
    <?php do{ ?>
      <?php if ($totalRows_typeprd1 > 0) { ?>

        <?php do{?>


          <a href="index.php?t_id=<?php echo $row_typeprd1['t_id'];?>&type_name=<?php echo $row_typeprd1['t1_name'];?>" class="list-group-item"">  - <?php echo $row_typeprd1['t1_name']; ?><span class="list-group-item-action"></a>



          <?php } while ($row_typeprd1 = mysql_fetch_assoc($typeprd1)); ?>

        <?php }
      } while ($row_typeprd1 = mysql_fetch_assoc($typeprd1)); ?>


    <?php } while ($row_typeprd = mysql_fetch_assoc($typeprd)); ?>
  </div>


  <?php
  mysql_free_result($typeprd);
  ?>
