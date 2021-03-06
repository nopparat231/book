
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
?>
<?php
// *** Validate request to login to this site.
if (!isset($_SESSION)) {
  session_start();

}

$loginFormAction = $_SERVER['PHP_SELF'];
if (isset($_GET['accesscheck'])) {
  $_SESSION['PrevUrl'] = $_GET['accesscheck'];
}

if (isset($_POST['mem_username'])) {
  $loginUsername=$_POST['mem_username'];
  $password=$_POST['mem_password'];
  $MM_fldUserAuthorization = "";
  $MM_redirectLoginSuccess = "index.php";
  $MM_redirectLoginFailed = "login_alert.php";
  $MM_redirecttoReferrer = false;
  mysql_select_db($database_condb);

  $LoginRS__query=sprintf("SELECT * FROM tbl_member WHERE mem_username=%s AND mem_password=%s AND active='yes' AND status='user'",
    GetSQLValueString($loginUsername, "text"), GetSQLValueString($password, "text"));

  $LoginRS = mysql_query($LoginRS__query, $condb) or die(mysql_error());

  $loginFoundUser = mysql_num_rows($LoginRS);
  $objResultcheck = mysql_fetch_array($LoginRS);
  
  if ($loginFoundUser) {
   $loginStrGroup = "";

   if (PHP_VERSION >= 5.1) {session_regenerate_id(true);} else {session_regenerate_id();}
    //declare two session variables and assign them
   $_SESSION['MM_Username'] = $loginUsername;
   $_SESSION['MM_UserGroup'] = $loginStrGroup;
   $_SESSION['User'] = $objResultcheck['mem_name'];
    

   if (isset($_SESSION['PrevUrl']) && false) {
    $MM_redirectLoginSuccess = $_SESSION['PrevUrl'];
  }
  header("Location: " . $MM_redirectLoginSuccess ); //. $MM_redirectLoginSuccess
}
else {
  header("Location: " . $MM_redirectLoginFailed ); //. $MM_redirectLoginFailed
}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>


  <div class="row" style="padding-top:100px">
    <div class="col-md-4"></div>
    <div class="col-md-4" style="background-color:#f4f4f4">
      <h3 align="center">
        <span class="glyphicon glyphicon-lock"> </span>
      เข้าสู่ระบบ<br><br>  </h3>
      <form  name="formlogin" action="<?php echo $loginFormAction; ?>" method="POST" id="login" class="form-horizontal">
        <div class="form-group">
          <div class="col-sm-12">
            <input  name="mem_username" type="text" required class="form-control" id="mem_username" placeholder="ชื่อผู้ใช้" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <input name="mem_password" type="password" required class="form-control" id="mem_password" placeholder="รหัสผ่าน" />
          </div>
        </div>

        <div class="modal-footer">
          <div class="form-group">
            <div class="col-sm-12">
              <a href="index.php" type="button"  data-target='#reset_view' data-toggle='modal'>
                <span class="glyphicon glyphicon-new-window" >ลืมรหัสผ่าน</a></span>&nbsp;&nbsp;

              <button type="submit" class="btn btn-success" id="btn">
                <span class="glyphicon glyphicon-log-in"> </span>
              เข้าสู่ระบบ </button>



                <br><br>
                <a href='./admin/' class='animate'><span class='glyphicon glyphicon-user'>ผู้ใช้งานระบบ</span></a> &nbsp;&nbsp;

                <button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>


              </div>
            </div>
          </form>
        </div>
      </div>
    </div>

  </body>
  </html>
