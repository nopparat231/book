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
$query_mem = "SELECT count(mem_id) as SumMem FROM tbl_member ";
$mem = mysql_query($query_mem, $condb) or die(mysql_error());
$row_mem = mysql_fetch_assoc($mem);
$totalRows_mem = mysql_num_rows($mem);



mysql_select_db($database_condb);
$query_view = "SELECT p_qty , p_name , SUM(p_view) as SumView , count(p_id) as Sumprd FROM tbl_product ";
$view = mysql_query($query_view, $condb) or die(mysql_error());
$row_view = mysql_fetch_assoc($view);
$totalRows_view = mysql_num_rows($view);

mysql_select_db($database_condb);
$query_order = "SELECT order_status ,  count(order_id) as Sumorder  FROM tbl_order ";
$order = mysql_query($query_order, $condb) or die(mysql_error());
$row_order = mysql_fetch_assoc($order);
$totalRows_order = mysql_num_rows($order);

// โชว์จำนวน ออเดอร์


$colname_mm = "-1";
if (isset($_SESSION['MM_Username'])) {
  $colname_mm = $_SESSION['MM_Username'];
}
mysql_select_db($database_condb);
$query_mm = "SELECT * FROM tbl_member WHERE mem_username = '$colname_mm'";
$mm = mysql_query($query_mm, $condb) or die(mysql_error());
$row_mm = mysql_fetch_assoc($mm);
$totalRows_mm = mysql_num_rows($mm);

$mem_id = $row_mm['mem_id'];

mysql_select_db($database_condb);
$query_mycart = sprintf("SELECT o.order_id as oid, o.mem_id, o.order_status, o.order_date, d.order_id , count(d.order_id) as coid , d.total as ctotal FROM tbl_order as o, tbl_order_detail as d WHERE o.mem_id = $mem_id AND o.order_id = d.order_id GROUP BY o.order_id ORDER BY o.order_id DESC " , GetSQLValueString($colname_mycart , "int"));
$mycart = mysql_query($query_mycart , $condb) or die(mysql_error());
$row_mycart = mysql_fetch_assoc($mycart);
$totalRows_mycart = mysql_num_rows($mycart);

mysql_select_db($database_condb);
$query_mycart1 = sprintf("SELECT o.order_id as oid, o.mem_id, o.order_status, o.order_date, d.order_id , count(d.order_id) as coid , d.total as ctotal FROM tbl_order as o, tbl_order_detail as d WHERE o.order_status = 1 AND o.mem_id = $mem_id AND o.order_id = d.order_id GROUP BY o.order_id ORDER BY o.order_id DESC " , GetSQLValueString($colname_mycart , "int"));
$mycart1 = mysql_query($query_mycart1 , $condb) or die(mysql_error());
$row_mycart1 = mysql_fetch_assoc($mycart1);
$totalRows_mycart1 = mysql_num_rows($mycart1);

mysql_select_db($database_condb);
$query_mycart2 = sprintf("SELECT o.order_id as oid, o.mem_id, o.order_status, o.order_date, d.order_id , count(d.order_id) as coid , d.total as ctotal FROM tbl_order as o, tbl_order_detail as d WHERE o.order_status = 2 AND o.mem_id = $mem_id AND o.order_id = d.order_id GROUP BY o.order_id ORDER BY o.order_id DESC " , GetSQLValueString($colname_mycart , "int"));
$mycart2 = mysql_query($query_mycart2 , $condb) or die(mysql_error());
$row_mycart2 = mysql_fetch_assoc($mycart2);
$totalRows_mycart2 = mysql_num_rows($mycart2);

mysql_select_db($database_condb);
$query_mycart3 = sprintf("SELECT o.order_id as oid, o.mem_id, o.order_status, o.order_date, d.order_id , count(d.order_id) as coid , d.total as ctotal FROM tbl_order as o, tbl_order_detail as d WHERE o.order_status = 3 AND o.mem_id = $mem_id AND o.order_id = d.order_id GROUP BY o.order_id ORDER BY o.order_id DESC " , GetSQLValueString($colname_mycart , "int"));
$mycart3 = mysql_query($query_mycart3 , $condb) or die(mysql_error());
$row_mycart3 = mysql_fetch_assoc($mycart3);
$totalRows_mycart3 = mysql_num_rows($mycart3);

mysql_select_db($database_condb);
$query_mycart4 = sprintf("SELECT o.order_id as oid, o.mem_id, o.order_status, o.order_date, d.order_id , count(d.order_id) as coid , d.total as ctotal FROM tbl_order as o, tbl_order_detail as d WHERE o.order_status = 4 AND o.mem_id = $mem_id AND o.order_id = d.order_id GROUP BY o.order_id ORDER BY o.order_id DESC " , GetSQLValueString($colname_mycart , "int"));
$mycart4 = mysql_query($query_mycart4 , $condb) or die(mysql_error());
$row_mycart4 = mysql_fetch_assoc($mycart4);
$totalRows_mycart4 = mysql_num_rows($mycart4);

mysql_select_db($database_condb);
$query_mycart5 = sprintf("SELECT o.order_id as oid, o.mem_id, o.order_status, o.order_date, d.order_id , count(d.order_id) as coid , d.total as ctotal FROM tbl_order as o, tbl_order_detail as d WHERE o.order_status = 5 AND o.mem_id = $mem_id AND o.order_id = d.order_id GROUP BY o.order_id ORDER BY o.order_id DESC " , GetSQLValueString($colname_mycart , "int"));
$mycart5 = mysql_query($query_mycart5 , $condb) or die(mysql_error());
$row_mycart5 = mysql_fetch_assoc($mycart5);
$totalRows_mycart5 = mysql_num_rows($mycart5);


// โชว์จำนวน ออเดอร์



?>