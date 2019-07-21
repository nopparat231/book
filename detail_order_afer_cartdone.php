<?php require_once('Connections/condb.php'); ?>

<?php session_start(); ?>
<?php
error_reporting( error_reporting() & ~E_NOTICE );
date_default_timezone_set('Asia/Bangkok');
  //print_r($_SESSION);
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
$colname_buyer = "-1";
if (isset($_SESSION['MM_Username'])) {
  $colname_buyer = $_SESSION['MM_Username'];
}
mysql_select_db($database_condb);
$query_buyer = sprintf("SELECT * FROM tbl_member WHERE mem_username = %s", GetSQLValueString($colname_buyer, "text"));
$buyer = mysql_query($query_buyer, $condb) or die(mysql_error());
$row_buyer = mysql_fetch_assoc($buyer);
$totalRows_buyer = mysql_num_rows($buyer);
mysql_select_db($database_condb);
$query_rb = "SELECT * FROM tbl_bank WHERE b_status = 0";
$rb = mysql_query($query_rb, $condb) or die(mysql_error());
$row_rb = mysql_fetch_assoc($rb);
$totalRows_rb = mysql_num_rows($rb);
$colname_cartdone = "-1";
if (isset($_GET['order_id'])) {
  $colname_cartdone = $_GET['order_id'];
}
mysql_select_db($database_condb);
$query_cartdone = sprintf("
  SELECT * FROM
  tbl_order as o,
  tbl_order_detail as d,
  tbl_product as p,
  tbl_member  as m
  WHERE o.order_id = %s
  AND o.order_id=d.order_id
  AND d.p_id=p.p_id
  AND o.mem_id = m.mem_id
  ORDER BY o.order_date ASC", GetSQLValueString($colname_cartdone, "int"));
$cartdone = mysql_query($query_cartdone, $condb) or die(mysql_error());
$row_cartdone = mysql_fetch_assoc($cartdone);
$totalRows_cartdone = mysql_num_rows($cartdone);
?>
<style type="text/css">
  input[type='radio'] {
    -webkit-appearance: none;
    width: 20px;
    height: 20px;
    border: 1px solid darkgray;
    border-radius: 50%;
    outline: none;
    box-shadow: 0 0 5px 0px gray inset;
  }
  input[type='radio']:hover {
    box-shadow: 0 0 5px 0px orange inset;
  }
  input[type='radio']:before {
    content: '';
    display: block;
    width: 60%;
    height: 60%;
    margin: 20% auto;
    border-radius: 50%;
  }
  input[type='radio']:checked:before {
    background: red;
  }
</style>

<?php
$status =  $row_cartdone['order_status'];
if($status > 1){ ?>
 <br /><br />
 <div class="col-md-6">
  <table border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="5" align="left" bgcolor="#FFFFFF">
        <h4>รายการสั่งซื้อ</h4>
        <hr style="border-radius: 5px;border: 2px solid #64CCF5;">
      </td>

    </tr>
    <?php
    $status =  $row_cartdone['order_status'];
          //include('backend/status.php');
    ?>

    <tr>
      <td >เลขที่ใบสั่งซื้อ : </td>
      <td colspan="5" align="left"><label for="pay_date"></label>
        <?php echo "BK00000".$row_cartdone['order_id']; ?>
      </tr>

      <tr>
        <td >สถานะ : </td>
        <td colspan="5" align="left"><label for="pay_date"></label>
         <?php
         $status =  $row_cartdone['order_status'];
         include('backend/status.php');
         ?>

       </td>
     </tr>

     <tr>
      <td >โอนเงินไปยังบัญชี : </td>
      <td colspan="5" align="left"><label for="pay_date"></label>
        <?php echo $row_cartdone['b_name'];?>
      </td>
    </tr>

    <tr>
      <td >เลขที่บัญชี : </td>
      <td colspan="5" align="left"><label for="pay_date"></label>
       <?php echo $row_cartdone['b_number'];?>
     </td>
   </tr>
 </tr>

 <tr>
  <td >จำนวณเงิน : </td>
  <td colspan="5" align="left"><label for="pay_date"></label>
    <?php echo  number_format($row_cartdone['pay_amount'],2);?> บาท
  </td>
</tr>

<tr>
  <td >วันที่ชำระเงิน : </td>
  <td colspan="5" align="left"><label for="pay_date"></label>
   <?php $old_startDate = date("d-m-Y",strtotime($row_cartdone['pay_date'])); ?>
   <?php echo date($old_startDate);?>
 </td>
</tr>

<tr>
  <td >เวลาที่ชำระเงิน : </td>
  <td colspan="5" align="left"><label for="pay_amount"></label>
    <?php $old_startTime = date("H:i",strtotime($row_cartdone['order_date'])); ?>
    <?php echo date($old_startTime);?>

  </td>
</tr>

<tr>
  <td colspan="5" align="left" bgcolor="#FFFFFF">

   <hr style="border-radius: 5px;border: 1px solid black;">

   <center>หลักฐานการโอน <br>

    <?php if ($row_cartdone['pay_slip'] != '') { ?>

     <img src="pimg/<?php echo $row_cartdone['pay_slip'];?>"  width="300px"/>

   <?php } ?>

 </center>
 <br>
 <?php if ($row_cartdone['postcode'] != '') { ?>

   <h4>เลขที่ใบส่งของ :  <?php echo $row_cartdone['postcode'];?></h4>

 <?php } ?>

</td>

</tr>

<tr>
  <td >&nbsp;</td>
  <td >&nbsp;</td>
  <td >&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
  <td >&nbsp;</td>
  <td >&nbsp;</td>
  <td >&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
</tr>

</table>

</div>

<div class="col-md-6">


  <a href="print_report.php?order_id=<?php echo $colname_cartdone;?>" class="btn btn-primary btn-sm pull-right" target="_blank" id="hp" >  <span class="glyphicon glyphicon-print"></span></a>

  <table border="1" align="left" class="table" style=" border-style: solid;
  border-color: coral;">
  <tr>

    <td colspan="7" align="center"  bgcolor="#FF8D33"><strong>สรุปรายการสั่งซื้อ<br />

    </tr>
    <tr>

      <td colspan="6" align="left">*ข้อมูลการจัดส่ง

        <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td  align="left" valign="top"><br>
             <strong>
              ชื่อผู้รับ  : <?php echo $row_buyer['mem_name'];?> <br />

              เบอร์โทร : <?php echo $row_buyer['mem_tel'];?> <br />

              ที่อยู่จัดส่ง : <?php echo $row_buyer['mem_address'];?> <br />
              <hr style="border-radius: 15px;border: 1px solid black; ">


            </strong>
          </td>
        </tr>
      </table>

      <table border="0" cellspacing="0" cellpadding="0">
        <tr><td><strong>*รายการสั่งซื้อ <br><br></strong></td></tr>

        <tr>

          <td><strong>รายการสินค้า</strong></td>
          <td><strong>จำนวณ</strong></td>
          <td style="text-align: center;"><strong>รวม</strong></td>

        </tr>

        <?php do { ?>

          <?php
          $sum  = $row_cartdone['p_price']*$row_cartdone['p_c_qty'];
                  //$totalp += $sum;
                  //$total  += $sum;
          $totalp += $sum;
          $sumw = $row_cartdone['pos_ems'];

          ?>


          <tr>
            <td style="width: 250px"><?php echo iconv_substr($row_cartdone['p_name'],0,35,'utf-8')." ...";?></td>
            <td align="center"><?php echo $row_cartdone['p_c_qty'];?></td>
            <td  ><?php echo number_format($sum,2)." บาท";?></td>
          </tr>

        <?php } while ($row_cartdone = mysql_fetch_assoc($cartdone));

        $tax = $totalp*0.07;

        $totalp += $tax;
        $totalp += $sumw;
                //$_SESSION["totalp"] = "$totalp";

        ?>

      </table>

      <table border="0" cellspacing="0" cellpadding="0">
       <hr style="border-radius: 15px;border: 1px solid black; ">
       <tr>
        <td></td>
        <td></td>
        <td></td>
      </tr>

      <tr>
       <td style="width: 300px">จัดส่ง</td>
       <td ></td>
       <td ><?php echo number_format($sumw,2)." บาท"; ?></td>
     </tr>
     <tr>
      <td></td>
      <td></td>
      <td></td>
    </tr>

    <tr>
     <td style="width: 300px">ภาษี 7%</td>
     <td ></td>
     <td ><?php echo number_format($tax,2)." บาท"; ?></td>
   </tr>
 </table>


 <table border="0" cellspacing="0" cellpadding="0">
   <hr style="border-radius: 15px;border: 1px solid black; ">
   <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr>

  <tr>
   <td style="width: 300px"><b>ยอดสุทธิ</b></td>
   <td ></td>
   <td ><b><?php echo number_format($totalp,2)." บาท"; ?></b></td>

 </tr>

</table>
<br><br>
</td>

</tr>


</table>

<center><a target="_bank" href="http://track.thailandpost.co.th/tracking/default.aspx"><img src="img/post.png"  width="52px"/></a>&nbsp;&nbsp;&nbsp;&nbsp;<a target="_bank"  href="https://th.kerryexpress.com/th/track/"><img src="img/kerry.png" width="60px"/></a></center>

</div>



<?php }else{?>
  <form action="add_payslip_db.php" method="post" enctype="multipart/form-data" name="formpay" id="formpay">
    <br /><br />
    <div class="col-md-6">
      <table border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="5" align="left" bgcolor="#FFFFFF">
           <h3>แจ้งชำระเงิน </h3>


           <h5 align="left" style="color: red;" >*รายการสั่งซื้อจะถูกยกเลิก ถ้าหากไม่ชำระเงินภายใน 3 วัน</h5>

           <hr style="border-radius: 5px;border: 2px solid black;">
         </td>

       </tr>
       <?php
       $status =  $row_cartdone['order_status'];
          //include('backend/status.php');
       ?>
       <tr>
        <td >&nbsp;</td>
        <td >&nbsp;</td>
        <td >&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>

      <tr>
        <td >วันที่ชำระเงิน</td>
        <td colspan="5" align="left"><label for="pay_date"></label>
          <input type="date" name="pay_date" id="pay_date" value="<?php echo date('Y-m-d');?>"/></td>
        </tr>
        <tr>
          <td >&nbsp;</td>
          <td >&nbsp;</td>
          <td >&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td >วันที่ชำระเงิน</td>
          <td colspan="5" align="left"><label for="pay_date"></label>
            <input type="time" id="pay_date" value="<?php echo date("H:i"); ?>"/></td>
          </tr>
          <tr>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
            <td >&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td >จำนวนเงิน</td>
            <td colspan="5" align="left"><label for="pay_amount"></label>
              <input type="number" name="pay_amount" pattern="([0-9]{1,3}).([0-9]{1,3})" step='0.01' id="pay_amount" required="required"/></td>
            </tr>
            <tr>
              <td >&nbsp;</td>
              <td >&nbsp;</td>
              <td >&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>

            <tr>
              <td >หลักฐานการโอน</td>
              <td colspan="5" align="left"><input name="pay_slip" id="pay_slip" type="file"  required="required" accept="image/jpeg"/>
              (ไฟล์ .jpg, gif, png, pdf&nbsp;ไม่เกิน 2mb)</td>
            </tr>
            <tr>
              <td >&nbsp;</td>
              <td >&nbsp;</td>
              <td >&nbsp;</td>
              <td><input name="order_id" type="hidden" id="order_id" value="<?php echo $colname_cartdone;?>" /></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr><td><strong>*โอนไปยังบัญชี<br></strong></td></tr>
            <?php do { ?>
              <tr>

                <td align="center">
                  <input <?php if (!(strcmp($row_rb['b_name'],"b_bank"))) {echo "checked=\"checked\"";} ?> type="radio" name="bank"  value="<?php echo $row_rb['b_name'].'_'.$row_rb['b_number'];?>" required="required" />
                  <img src="bimg/<?php echo $row_rb['b_logo']; ?>" width="50" />
                </td>

                <td></td>
                <td><?php echo $row_rb['b_name']; ?></td>
                <td> <?php echo $row_rb['b_number']; ?></td>
                <td><strong>สาขา</strong><?php echo $row_rb['bn_name']; ?></td>
              </tr>
            <?php } while ($row_rb = mysql_fetch_assoc($rb)); ?>

          </table>

        </div>


        <div class="col-md-6">

          <a href="print_report.php?order_id=<?php echo $colname_cartdone;?>" class="btn btn-primary btn-sm pull-right" target="_blank" id="hp" ><span class="glyphicon glyphicon-print"></span></a>

          <table border="1" align="left" class="table" style=" border-style: solid;
          border-color: coral;">
          <tr>

            <td colspan="7" align="center"  bgcolor="#FF8D33"><strong>สรุปรายการสั่งซื้อ<br />

            </tr>
            <tr>

              <td colspan="6" align="left">*ข้อมูลการจัดส่ง

                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td  align="left" valign="top"><br>
                     <strong>
                      ชื่อผู้รับ  : <?php echo $row_buyer['mem_name'];?> <br />

                      เบอร์โทร : <?php echo $row_buyer['mem_tel'];?> <br />

                      ที่อยู่จัดส่ง : <?php echo $row_buyer['mem_address'];?> <br />
                      <hr style="border-radius: 15px;border: 1px solid black; ">


                    </strong>
                  </td>
                </tr>
              </table>

              <table border="0" cellspacing="0" cellpadding="0">
                <tr><td><strong>*รายการสั่งซื้อ <br><br></strong></td></tr>

                <tr>

                  <td><strong>รายการสินค้า</strong></td>
                  <td><strong>จำนวณ</strong></td>
                  <td style="text-align: center;"><strong>รวม</strong></td>

                </tr>

                <?php do { ?>

                  <?php
                  $sum  = $row_cartdone['p_price']*$row_cartdone['p_c_qty'];
                  //$totalp += $sum;
                  //$total  += $sum;
                  $totalp += $sum;
                  $sumw = $row_cartdone['pos_ems'];

                  ?>


                  <tr>
                    <td style="width: 250px"><?php echo iconv_substr($row_cartdone['p_name'],0,35,'utf-8')." ...";?></td>
                    <td align="center"><?php echo $row_cartdone['p_c_qty'];?></td>
                    <td  ><?php echo number_format($sum,2)." บาท";?></td>
                  </tr>

                <?php } while ($row_cartdone = mysql_fetch_assoc($cartdone));

                $tax = $totalp*0.07;

                $totalp += $tax;
                $totalp += $sumw;
                //$_SESSION["totalp"] = "$totalp";

                ?>

              </table>

              <table border="0" cellspacing="0" cellpadding="0">
               <hr style="border-radius: 15px;border: 1px solid black; ">
               <tr>
                <td></td>
                <td></td>
                <td></td>
              </tr>

              <tr>
               <td style="width: 300px">จัดส่ง</td>
               <td ></td>
               <td ><?php echo number_format($sumw,2)." บาท"; ?></td>
             </tr>
             <tr>
              <td></td>
              <td></td>
              <td></td>
            </tr>

            <tr>
             <td style="width: 300px">ภาษี 7%</td>
             <td ></td>
             <td ><?php echo number_format($tax,2)." บาท"; ?></td>
           </tr>
         </table>


         <table border="0" cellspacing="0" cellpadding="0">
           <hr style="border-radius: 15px;border: 1px solid black; ">
           <tr>
            <td></td>
            <td></td>
            <td></td>
          </tr>

          <tr>
           <td style="width: 300px"><b>ยอดสุทธิ</b></td>
           <td ></td>
           <td ><b><?php echo number_format($totalp,2)." บาท"; ?></b></td>

         </tr>

       </table>
       <br><br>
     </td>

   </tr>


 </table>
</div>



<p align="center"><br />
  <button type="submit" name="add" class="btn btn-success"> บันทึก </button>

</p>

</form>
<?php } ?>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
</div>
</div>

<?php
//unset($_SESSION['totalp']);
mysql_free_result($buyer);
mysql_free_result($rb);
mysql_free_result($cartdone);
?>
