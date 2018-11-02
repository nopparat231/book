<?php require_once('../Connections/condb.php'); ?>
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
$query_ptype = "SELECT * FROM tbl_type";
$ptype = mysql_query($query_ptype, $condb) or die(mysql_error());
$row_ptype = mysql_fetch_assoc($ptype);
$totalRows_ptype = mysql_num_rows($ptype);

mysql_select_db($database_condb);
$query_prd = "
SELECT * FROM tbl_product as p, tbl_type as t
WHERE p.t_id = t.t_id
ORDER BY p.p_id ASC";
$prd = mysql_query($query_prd, $condb) or die(mysql_error());
$row_prd = mysql_fetch_assoc($prd);
$totalRows_prd = mysql_num_rows($prd);
?>
<?php include('access.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <?php include('h.php');?>
  <?php include('datatable.php');?>
  <!-- ckeditor-->
  <script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>

</head>
<body>
  <div class="container">
    <div class="row">
     <?php include('navbar.php');?>
   </div>
   <div class="row">
     <div class="col-md-2">

      <?php include('menu.php');?>
    </div>
    <div class="col-md-10">
      <h3 align="center"> เพิ่มรายการสินค้า </h3>
      <div class="table-responsive">
        <form action="add_product_db.php"  method="post" enctype="multipart/form-data" name="Add_Product" id="Add_Product" >


          <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td colspan="3" align="center">&nbsp;</td>
            </tr>
            <tr>
              <td width="129" align="right" valign="middle">ชื่อสินค้า :</td>
              <td colspan="2"><label for="pro_name2"></label>
                <input name="p_name" type="text" required id="pro_name2" size="50"/></td>
              </tr>
              <tr>
                <td align="right" valign="middle">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
              </tr>
              <tr>
                <td width="129" align="right" valign="middle">จำนวนสินค้า :</td>
                <td colspan="2"><label for="p_qty"></label>
                  <input name="p_qty" type="number" required id="p_qty" size="5"/></td>
                </tr>
                <tr>
                 <td align="right" valign="middle">&nbsp;</td>
                 <td colspan="2">&nbsp;</td>
               </tr>
               <tr>
                <td align="right" valign="middle">ราคาก่อนลด :</td>
                <td width="2"><label for="promo"></label>
                  <input name="promo" type="number" required id="promo" value="0" size="5"/></td>
                </tr>

                <tr>
                  <td align="right" valign="middle">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right" valign="middle">ราคาหลังลด :</td>
                  <td width="2"><label for="p_price"></label>
                   <input name="p_price" type="number" required id="p_price" value="" size="5"/></td>
                 </tr>
                 <tr>
                  <td align="right" valign="middle">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>

                <tr>
                  <td width="129" align="right" valign="middle">ค่าจัดส่ง</td>
                  <td colspan="2"><label for="p_ems"></label>
                    <input name="p_ems" type="number" required id="p_ems" size="5"/></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle">ประเภทสินค้า :</td>
                    <td colspan="2">
                      <label for=""></label>
                      <select name="t_id" id="t_id" required="required">
                        <option value="">กรุณาเลือกประเภท</option>
                        <?php
                        do {
                          ?>
                          <option value="<?php echo $row_ptype['t_id']?>"><?php echo $row_ptype['t_name']?></option>
                          <?php
                        } while ($row_ptype = mysql_fetch_assoc($ptype));
                        $rows = mysql_num_rows($ptype);
                        if($rows > 0) {
                          mysql_data_seek($ptype, 0);
                          $row_ptype = mysql_fetch_assoc($ptype);
                        }
                        ?>
                      </select>
                    </td>
                  </tr>


                  <tr>
                    <td align="right" valign="middle">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle">ประเภทย่อยสินค้า :</td>
                    <td colspan="2">

                     <?php 

                     $query_typeprd1 = "SELECT * FROM tbl_type1 ";
                     $typeprd1 = mysql_query($query_typeprd1, $condb) or die(mysql_error());
                     $row_typeprd1 = mysql_fetch_assoc($typeprd1);
                     $totalRows_typeprd1 = mysql_num_rows($typeprd1);

                     ?>

                     <label for=""></label>
                     <select name="t1_id" required="required">
                       <option value="">กรุณาเลือกประเภท</option>


                       <?php
                       do {
                        ?>
                        <option value="<?php echo $row_typeprd1['t1_id']?>"><?php echo $row_typeprd1['t1_name']?></option>
                        <?php
                      } while ($row_typeprd1 = mysql_fetch_assoc($typeprd1));
                      $rows1 = mysql_num_rows($typeprd1);
                      if($rows1 > 0) {
                        mysql_data_seek($typeprd1, 0);
                        $row_typeprd1 = mysql_fetch_assoc($typeprd1);
                      }
                      ?>
                    </select>
                  </td>
                </tr>
                
                <tr>
                  <td align="right" valign="middle">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right" valign="top">รายละเอียดสินค้า :</td>
                  <td colspan="2">
                    <textarea name="p_detial" id="p_detial" class="ckeditor" cols="80" rows="5"></textarea>
                  </td>
                </tr>
                <tr>
                  <td align="right" valign="middle">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>




                <tr>
                  <td align="right" valign="middle">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>

                <tr>
                  <td align="right" valign="middle">หน่วยสินค้า</td>
                  <td colspan="2"><label for="pro_qty"></label>
                   :
                   <select name="p_unit" id="p_unit" required>
                    <option value="เล่ม">เล่ม</option>
                    <option value="แผ่น">แผ่น</option>
                    <option value="คู่">คู่</option>
                    <option value="ตัว">ตัว</option>

                  </select></td>
                </tr>
                <tr>
                  <td align="right" valign="middle">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right" valign="middle">รูปภาพสินค้า1 :</td>
                  <td colspan="2"><label for="p_img1"></label>
                    <input name="p_img1" type="file" required class="bg-warning" id="p_img1" size="40" /></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle">รูปภาพสินค้า2 :</td>
                    <td colspan="2"><label for="p_img2"></label>
                      <input name="p_img2" type="file"  class="bg-warning" id="p_img2" size="40" /></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="2"><button type="submit" name="button" id="button" value="ตกลง" class="btn btn-primary">เพิ่มสินค้า</button></td>
                    </tr>
                  </table>
                </form>
              </div>
            </div>
          </div>
        </div>
      </body>
      </html>
      <?php
      mysql_free_result($ptype);

      mysql_free_result($prd);
      ?>
      <?php include('f.php');?>
