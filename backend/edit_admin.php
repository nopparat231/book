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

$colname_editadmin = "-1";
if (isset($_GET['admin_id'])) {
  $colname_editadmin = $_GET['admin_id'];
}
mysql_select_db($database_condb);
$query_editadmin = sprintf("SELECT * FROM tbl_admin WHERE admin_id = %s", GetSQLValueString($colname_editadmin, "int"));
$editadmin = mysql_query($query_editadmin, $condb) or die(mysql_error());
$row_editadmin = mysql_fetch_assoc($editadmin);
$totalRows_editadmin = mysql_num_rows($editadmin);
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
        <h3 align="center">  แก้ไข  Admin  <?php include('edit-ok.php');?> </h3>
<div class="table-responsive">
    <form  name="register" action="edit_admin_db.php" method="POST" id="register" class="form-horizontal">
       <div class="form-group">
       <div class="col-sm-2">  </div>
       <div class="col-sm-5" align="left">

       </div>
       </div>
       <div class="form-group">
       	<div class="col-sm-2" align="right"> ชื่อผู้ใช้ : </div>
          <div class="col-sm-5" align="left">
            <input  name="admin_user" type="text" disabled   class="form-control" id="admin_user" placeholder="username" value="<?php echo $row_editadmin['admin_user']; ?>" minlength="2"  />
          </div>
      </div>

        <div class="form-group">
        <div class="col-sm-2" align="right"> รหัสผ่าน : </div>
          <div class="col-sm-5" align="left">
            <input  name="admin_pass" type="password" required class="form-control" id="admin_pass" placeholder="password" pattern="^[a-zA-Z0-9]+$" value="<?php echo $row_editadmin['admin_pass']; ?>" minlength="2" />
          </div>
        </div>
        <div class="form-group">
        <div class="col-sm-2" align="right"> ชื่อ-สกุล : </div>
          <div class="col-sm-7" align="left">
            <input  name="admin_name" type="text" required class="form-control" id="admin_name" placeholder="ชื่อ-สกุล" value="<?php echo $row_editadmin['admin_name']; ?>" />
          </div>
        </div>


        <div class="form-group">
        <div class="col-sm-2" align="right"> ที่อยู่ : </div>
          <div class="col-sm-10" align="left">
            <input name="admin_address" type="text" required class="form-control" id="admin_address" placeholder="ที่อยู่"  value="<?php echo $row_editadmin['admin_address']; ?>" minlength="2"></input>
          </div>
        </div>

        <div class="form-group">
        <div class="col-sm-2" align="right"> เบอร์โทร : </div>
          <div class="col-sm-5" align="left">
            <input  name="admin_tel" type="text" required class="form-control" id="admin_tel" placeholder="0912345678" pattern="[0-9]{10}" minlength="2" title="เบอร์โทร 0-9"  value="<?php echo $row_editadmin['admin_tel']; ?>" minlength="2"/>
          </div>
        </div>

        <div class="form-group">
        <div class="col-sm-2" align="right"> E-mail : </div>
          <div class="col-sm-5" align="left">
            <input  name="admin_email" type="E-mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required class="form-control" id="admin_email" placeholder="E-mail" title="กรุณากรอก Email ให้ถูกต้อง" value="<?php echo $row_editadmin['admin_email']; ?>" minlength="2"/>
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-2" align="right"> เลือกสถานะ : </div>
          <div class="col-sm-7" align="left">

            <select name="status">
             <option value="<?php echo $row_editadmin['status']; ?> "><?php echo $row_editadmin['status']; ?></option>

             <option value="staff">staff</option>
             <option value="admin">admin</option>

           </select>
         </div>
       </div>



      <div class="form-group">
      <div class="col-sm-2"> </div>
          <div class="col-sm-6">
          <button type="submit" class="btn btn-primary" id="btn"> บันทึก  </button>
          <input name="admin_id" type="hidden" id="admin_id" value="<?php echo $row_editadmin['admin_id']; ?>">
          </div>

      </div>
      </form>
    </div>
</div>
</div>
</div>

      </div>
    </div>
 </div>
  </body>
</html>
<?php
mysql_free_result($editadmin);

// include('f.php');?>
