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
$colname_mm = "-1";
if (isset($_SESSION['MM_Username'])) {
	$colname_mm = $_SESSION['MM_Username'];
}
mysql_select_db($database_condb);
$query_mm = sprintf("SELECT * FROM tbl_member WHERE mem_username = %s", GetSQLValueString($colname_mm, "text"));
$mm = mysql_query($query_mm, $condb) or die(mysql_error());
$row_mm = mysql_fetch_assoc($mm);
$totalRows_mm = mysql_num_rows($mm);
$mem_id = $row_mm['mem_id'];
mysql_select_db($database_condb);
$query_mycart = sprintf("SELECT o.order_id as oid, o.mem_id, o.order_status, o.order_date, d.order_id , count(d.order_id) as coid , d.total as ctotal FROM tbl_order as o, tbl_order_detail as d WHERE o.mem_id = $mem_id AND o.order_id = d.order_id AND o.order_status = 1 GROUP BY o.order_id ORDER BY o.order_id DESC " , GetSQLValueString($colname_mycart , "int"));
$mycart = mysql_query($query_mycart , $condb) or die(mysql_error());
$row_mycart = mysql_fetch_assoc($mycart);
$totalRows_mycart = mysql_num_rows($mycart);
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<?php include('h.php');?>
<h3>&nbsp;&nbsp;&nbsp;รายการแจ้งชำระ</h3><br>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8 ">
				<?php if ($totalRows_mycart > 0) {?>
					<div class="table-responsive">
						<table id="example" class="display table table-hover" cellspacing="0" border="1">

							<thead >
								<tr >
									<th>เลขที่ใบสั่งซื้อ</th>

									<th>ราคารวม</th>
									<th>สถานะ</th>
									<th>วันที่ทำรายการ</th>
									<th>รายละเอียด</th>
									<th>ยกเลิกคำสั่งซื้อ</th>
								</tr>
							</thead>



							<?php do { ?>
								<tr>
									<td align="center">
										BK<?php echo $row_mycart['oid'];?>

									</td>

									<td align="center">
										<?php echo number_format($row_mycart['ctotal'],2);?>
									</td>
									<td align="center">
										<font color="red">
											<?php $status = $row_mycart['order_status'];
											include('backend/status.php');
											?>
										</font>
									</td>
									<td align="center"> <?php echo $row_mycart['order_date'];?></td>

										<td align="center"><span id="hp">
											<a href="my_order.php?order_id=<?php echo $row_mycart['oid'];?>act=show-order"  class="btn-sm btn-info">
												<span class="glyphicon glyphicon-zoom-in"></span>แจ้งชำระเงิน
											</a>
										</span>
									</td>
										<td><?php if ($status == 3 | $status == 4 | $status == 5) { ?>
											<center>
												<a class="btn btn-danger btn-xs" disabled>
												ยกเลิก </a>
											</center>
										<?php }else{ ?>
											<center>
												<a href="del_order.php?order_id=<?php echo $row_mycart['oid'];?>&order_status=4" class="btn btn-danger btn-xs" onClick="return confirm('ยืนยันการยกเลิกคำสั่งซื้อ');">
												ยกเลิก </a>
											</center>

										<?php } ?>


									</td>
								</tr>
							<?php } while ($row_mycart = mysql_fetch_assoc($mycart)); ?>
						</table>
					</div>
				<?php }else{
					echo "<center> <h3>ไม่มีรายการแจ้งชำระเงิน</h3></center>";
				} ?>
			</div>
		</div>
	</div>
</body>
</html>


<?php
mysql_free_result($mycart);
mysql_free_result($mm);
?>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
