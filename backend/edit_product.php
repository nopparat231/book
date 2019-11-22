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

$colname_eprd = "-1";
if (isset($_GET['p_id'])) {
  $colname_eprd = $_GET['p_id'];
}
mysql_select_db($database_condb);
$query_eprd = sprintf("SELECT * FROM tbl_product WHERE p_id = %s", GetSQLValueString($colname_eprd, "int"));
$eprd = mysql_query($query_eprd, $condb) or die(mysql_error());
$row_eprd = mysql_fetch_assoc($eprd);
$totalRows_eprd = mysql_num_rows($eprd);

$t_id=$_GET['t_id'];
$t1_id=$_GET['t1_id'];

mysql_select_db($database_condb);
$query_prd = "
SELECT * FROM  tbl_type as t
WHERE t.t_id=$t_id";
$prd = mysql_query($query_prd, $condb) or die(mysql_error());
$row_prd = mysql_fetch_assoc($prd);
$totalRows_prd = mysql_num_rows($prd);

$query_prd1 = "
SELECT * FROM  tbl_type1 as t1
WHERE t1.t1_id=$t1_id";
$prd1 = mysql_query($query_prd1, $condb) or die(mysql_error());
$row_prd1 = mysql_fetch_assoc($prd1);
$totalRows_prd1 = mysql_num_rows($prd1);

$query_sell1 = "
SELECT * FROM tbl_sell as s , tbl_product as p WHERE s.s_id = p.s_id AND p.p_id='$colname_eprd' ";
$sell1 = mysql_query($query_sell1, $condb) or die(mysql_error());
$row_sell1 = mysql_fetch_assoc($sell1);
$totalRows_sell1 = mysql_num_rows($sell1);


mysql_select_db($database_condb);
$query_ptype = "SELECT * FROM tbl_type WHERE t_id !=".$t_id;
$ptype = mysql_query($query_ptype, $condb) or die(mysql_error());
$row_ptype = mysql_fetch_assoc($ptype);
$totalRows_ptype = mysql_num_rows($ptype);

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



   <?php include('m.php');?>
   <div class="row">
    <div class="col-md-12">
      <h3 align="center"> แก้ไขข้อมูล
       <?php include('edit-ok.php');?>
     </h3>
     <div class="table-responsive">
      <form action="edit_product_db.php"  method="post" enctype="multipart/form-data" name="Add_Product" id="Add_Product" >
        <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">

          <tr>
            <td width="129" align="right" valign="middle">ชื่อ :</td>
            <td colspan="2"><label for="pro_name2"></label>
              <input name="p_name" type="text" required id="pro_name2" value="<?php echo $row_eprd['p_name']; ?>" size="50"/></td>
            </tr>
            <tr>
              <td align="right" valign="middle">&nbsp;</td>
              <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td align="right" valign="middle"><font color="red">*</font>ประเภท :&nbsp;</td>
              <td colspan="2">
                <select  name="t_id" class="country" required="required">
                  <option value="">กรุณาเลือกประเภท</option>
                  <?php
                  include('db.php');
                  $sql = mysqli_query($con,"select * from tbl_type");
                  while($row=mysqli_fetch_array($sql))
                  {
                    echo '<option value="'.$row['t_id'].'">'.$row['t_name'].'</option>';
                  } ?>
                </select>
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
                    <td align="right" valign="top">รายละเอียด :&nbsp;</td>
                    <td colspan="2">
                      <textarea name="p_detial" id="p_detial" class="ckeditor" cols="80" rows="5"><?php echo $row_eprd['p_detial']; ?></textarea>
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
                    <td align="right" valign="middle">&nbsp;</td>
                    <td colspan="2">รูปที่&nbsp;1</td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle">&nbsp;</td>
                    <td colspan="2"><img src="../pimg/<?php echo $row_eprd['p_img1']; ?>" width="100"></td>
                  </tr>
                  <tr>
                    <td align="right" valign="middle"><br>แก้รูปที่1 :&nbsp;</td>
                    <td colspan="2"><label for="p_img1"></label>
                      <input name="p_img1" type="file"  class="bg-warning" id="p_img1" size="40" />
                      <input name="p_img11" type="hidden" id="p_img11" value="<?php echo $row_eprd['p_img1']; ?>">
                      <input name="p_id" type="hidden" id="p_id" value="<?php echo $row_eprd['p_id']; ?>"></td>
                    </tr>
                    <tr>
                      <td align="right" valign="middle">&nbsp;</td>
                      <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="right" valign="middle">&nbsp;</td>
                      <td colspan="2">รูปที่&nbsp;2</td>
                    </tr>
                    <tr>
                      <td align="right" valign="middle">&nbsp;</td>
                      <td colspan="2"><img src="../pimg/<?php echo $row_eprd['p_img2']; ?>" width="100"></td>
                    </tr>
                    <tr>
                      <td align="right" valign="middle"><br>แก้รูปที่2 :&nbsp;</td>
                      <td colspan="2"><label for="p_img2"></label>
                        <input name="p_img2" type="file"  class="bg-warning" id="p_img2" size="40" />
                        <input name="p_img22" type="hidden" id="p_img22" value="<?php echo $row_eprd['p_img2']; ?>"></td>
                      </tr>
                      <tr>
                        <tr>
                          <td align="right" valign="middle">&nbsp;</td>
                          <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                         
                    

                            <tr>
                              <td width="129" align="right" valign="middle">จำนวน :</td>
                              <td colspan="2"><label for="p_qty"></label>
                                <input name="p_qty" min="0"type="number" required id="p_qty" value="<?php echo $row_eprd['p_qty']; ?>" size="5"/></td>
                              </tr>

                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td colspan="2">&nbsp;</td>
                              </tr>
                              <tr>
                                <td align="right" valign="middle">หน่วยนับ</td>
                                <td colspan="2"><label for="pro_qty"></label>
                                 :
                                 <select name="p_unit" id="p_unit" required>
                                  <option value="<?php echo $row_eprd['p_unit'];?>"><?php echo $row_eprd['p_unit'];?></option>
                                  <option value="เล่ม">เล่ม</option>
                                  <option value="แผ่น">ชุด</option>

                                </select></td>
                              </tr>

                              <tr>
                                <td align="right" valign="middle">&nbsp;</td>
                                <td colspan="2">&nbsp;</td>
                              </tr>
                              <tr>
                                <td width="129" align="right" valign="middle">น้ำหนัก :</td>
                                <td colspan="2"><label for="p_ems"></label>
                                  <input name="p_ems" min="0" type="number" required id="p_ems" value="<?php echo $row_eprd['p_ems']; ?>" size="5"/> กรัม</td>
                                </tr>
                                <tr>
                                  <td align="right" valign="middle">&nbsp;</td>
                                  <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                  <td align="right" valign="middle">ราคา :</td>
                                  <td width="2"><label for="p_price"></label>
                                   <input name="p_price"min="0" type="number" required id="p_price" value="<?php echo $row_eprd['p_price']; ?>" size="5"/></td>
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
                                <td align="right" valign="middle">&nbsp;</td>
                                <td colspan="2">&nbsp;</td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td colspan="2"><button type="submit" name="button" id="button" value="ตกลง" class="btn btn-primary">บันทึก</button></td>
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

                mysql_free_result($eprd);

                mysql_free_result($prd);
                ?>
                <?php include('f.php');?>
