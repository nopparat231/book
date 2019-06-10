<?php require_once('Connections/condb.php'); ?>
<?php
//error_reporting( error_reporting() & ~E_NOTICE );
session_start();
// print_r($_SESSION);
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


//session_start();
$colname_buyer = "-1";
if (isset($_SESSION['MM_Username'])) {
  $colname_buyer = $_SESSION['MM_Username'];
}
mysql_select_db($database_condb);
$query_buyer = sprintf("SELECT * FROM tbl_member WHERE mem_username = %s", GetSQLValueString($colname_buyer, "text"));
$buyer = mysql_query($query_buyer, $condb) or die(mysql_error());
$row_buyer = mysql_fetch_assoc($buyer);
$totalRows_buyer = mysql_num_rows($buyer);

	//echo 'ss'.$row_buyer;

if($_SESSION['MM_Username']!=''){
  ?>

  <!-- <p id="hp"><button class="btn btn-info" ><a href="index.php">เลือกสินค้าเพิ่ม</a>  </button></p> -->
  
  <form  name="formlogin" action="saveorder.php" method="POST" id="login" class="form-horizontal">
    <div class="col-md-6"> 




      <h3 align="left" style="color:#64CCF5">
        <span class="glyphicon glyphicon-shopping-cart"> </span>
      ที่อยู่ในการจัดส่งสินค้า  </h3>

      <div class="form-group">
        <div class="col-sm-12">
          <input type="text"  name="name" value="<?php echo $row_buyer['mem_name']; ?>" class="form-control" required placeholder="ชื่อ-สกุล" />
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-12">
          <textarea name="address" class="form-control"  rows="3"  required placeholder="ที่อยู่ในการส่งสินค้า"><?php echo $row_buyer['mem_address']; ?></textarea>
        </div>

      </div>
      <div class="form-group">
        <div class="col-sm-12">
          <input type="text"  name="phone" value="<?php echo $row_buyer['mem_tel']; ?>" class="form-control" required placeholder="เบอร์โทรศัพท์" />
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-12">
          <input type="email"  name="email" class="form-control" value="<?php echo $row_buyer['mem_email']; ?>" required placeholder="อีเมล์" />
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-12" align="center">
          <input name="mem_id" type="hidden" id="mem_id" value="<?php echo $row_buyer['mem_id']; ?>">


          <a href="confirm_order.php?act=up&oct=after&tems=ems" type="submit" class="btn btn-warning" >แก้ไขสินค้า</a>

          <button type="submit" class="btn btn-success" id="btn">
          ยืนยันสั่งซื้อ </button>

          <a href="crear_shoping.php" type="submit" class="btn btn-danger" >ยกเลิกการสั่งซื้อ</a>

        </div>
      </div>

    </div>
    <div class="col-md-4"></div>
    <div class="col-md-4">

      <table border="1" cellspacing="20" cellpadding="20" align="left" class="table" style="border-style: solid;
      border-color: coral; padding: 15px">

      <td colspan="5" align="center"  bgcolor="#FF8D33"><strong>สรุปรายการสั่งซื้อ<br />


        <tr>

          <td colspan="6" >*ข้อมูลลูกค้า
            <table border="0" cellspacing="20" cellpadding="20">
              <tr>
                <td  align="left" valign="top"><br>
                 <strong>

                  ชื่อสกุล  : <?php echo $row_buyer['mem_name'];?> <br />

                  เบอร์โทร : <?php echo $row_buyer['mem_tel'];?> <br />

                  อีเมลล์ : <?php echo $row_buyer['mem_email'];?> <br />
                  <hr style="border-radius: 15px;border: 1px solid black; width: 400px">


                </strong> 
              </td>
            </tr>
          </table>



          <table border="0" cellspacing="20" cellpadding="20">
            <tr><td><strong>*รายการสั่งซื้อ <br><br></strong></td></tr>

            <tr>

              <td><strong>รายการสินค้า</strong></td>
              <td><strong>จำนวณ</strong></td>
              <td style="text-align: center;"><strong>รวม</strong></td>

            </tr>


            <?php
            require_once('Connections/condb.php');
            $total = 0;

            if ($totalRows_buyer > 0) {
              if ($_GET['sumems']) {
                $ems = $_GET['sumems'];
              }else{
                $ems = $_POST['sumems'];
              }


              foreach($_SESSION['shopping_cart'] as $p_id=>$p_qty)
              {
                $sql = "select * from tbl_product where p_id=$p_id";
                $query = mysql_query($sql,$condb);
                $row  = mysql_fetch_array($query);
                $sum  = $row['p_price']*$p_qty;

                //$total  += $sum;
                $totalp += $sum;


                $sumw = $ems;
                //$sumww += $sumw;



                ?>

                <tr>
                  <td style="width: 250px"><?php echo iconv_substr($row['p_name'],0,45,'utf-8')." ...";?></td>
                  <td align="center"><?php echo $p_qty;?></td>
                  <td><?php echo number_format($sum,2)." บาท";?></td>
                </tr> 

                <input type="hidden" name="ems" value="<?php echo $ems; ?>">
                <input type="hidden"  name="p_name[]" value="<?php echo $row['p_name']; ?>" class="form-control" required placeholder="ชื่อ-สกุล" />

              <?php          } 


              $tax = $totalp*0.07;

              $totalp += $tax;
              $totalp += $sumw;
              ?>

            </table>
            <input type="hidden" name="total" value="<?php echo $totalp ?>">

            <table border="0" cellspacing="20" cellpadding="20">
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


       <table border="0" cellspacing="20" cellpadding="20">
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


</form>


<?php
}
} else{
  include('logout3.php');
 }//seseion

 mysql_free_result($buyer);
 ?>
 <br>
 <br>
