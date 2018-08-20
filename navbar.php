<style type="text/css">
.product_view .modal-dialog{max-width: 800px; width: 100%;  }



/*dd*/

</style>


<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
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

$colname_mlogin = "-1";
if (isset($_SESSION['MM_Username'])) {
  $colname_mlogin = $_SESSION['MM_Username'];
}
mysql_select_db($database_condb);
$query_mlogin = sprintf("SELECT * FROM tbl_member WHERE mem_username = %s", GetSQLValueString($colname_mlogin, "text"));
$mlogin = mysql_query( $query_mlogin,$condb) or die(mysql_error());
$row_mlogin = mysql_fetch_assoc($mlogin);
$totalRows_mlogin = mysql_num_rows($mlogin);
?>


<?php //include('banner.php');?><br />
<br />
<br />
<div class="row-fluid">
  <div class="span12">
    <div class="span6">
      <h1 class="muted">Company Name</h1>
    </div>


  </div>
</div>

<nav class="navbar navbar-default " id="navbar">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>

      </button>
      <a class="nav navbar-nav" href="index.php"><img src="img/b1.png" width="10%" /></a>
      <ul class="nav navbar-nav navbar-left">

        <li><a href="index.php" class="glyphicon glyphicon-home"> หน้าหลัก</a></li>
      </ul>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="how-to-buy.php" class="glyphicon glyphicon-xbt">แจ้งชำระเงิน</a></li>

      </ul>
      <form class="navbar-form navbar-left" name="qp" action="index.php" method="GET">
        <div class="form-group"> &nbsp; 
          ค้นหาสินค้า
          <input type="text" class="form-control" placeholder="ระบุคำค้น" name="q">
        </div>
        <button type="submit" class="btn btn-info">ค้นหา</button>
      </form>




      <ul class="nav navbar-nav navbar-right ">
        <li><a href="register.php" class="glyphicon glyphicon-user">สมัครสมาชิก</a></li>

        <?php
        $mm = ($_SESSION['MM_Username']);

        if($mm != ''){





          echo "<li>";
          echo"<a href='profile.php'>";
          echo"<span class='glyphicon glyphicon-user
          '>คุณ".$row_mlogin['mem_name'];
          echo"</span></a>";
          echo"</li>";

          echo"<li><a href='logout.php'><span class='glyphicon glyphicon-log-out'> ออกจากระบบ</span></a></li>";

        }else{
          echo"<li><a href='login.php' class='glyphicon glyphicon-log-in '> เข้าสู่ระบบ</a></li>";

        }


        ?>
      </ul>
        <!-- <ul class="nav navbar-nav navbar-right"> -->
         
         <ul class="nav navbar-nav navbar-right">
              
             <ul class="nav navbar-nav navbar-right">
        <li><a type="button" data-target="#product_view" data-toggle="modal" class="glyphicon glyphicon-shopping-cart" >0 ชิ้น </a></li>

        </ul>
</ul>

<div class="modal fade product_view" id="product_view">
    <div class="modal-dialog ">
      
        
        <?php include('cart.php');?>

</div>
</div>


</div>
    <!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<?php
mysql_free_result($mlogin);
?>

