<style type="text/css">


.dropdown-submenu {
  position: relative;
}

.dropdown-submenu>.dropdown-menu {
  top: 5;
  left: 100%;
  margin-top: -6px;
  margin-left: -1px;
  -webkit-border-radius: 0 6px 6px 6px;
  -moz-border-radius: 0 6px 6px;
  border-radius: 0 6px 6px 6px;
}

.dropdown-submenu:hover>.dropdown-menu {
  display: block;
}

.dropdown-submenu>a:after {
  display: block;
  content: " ";
  float: right;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
  border-width: 5px 0 5px 5px;
  border-left-color: #ccc;
  margin-top: 5px;
  margin-right: -10px;
}

.dropdown-submenu:hover>a:after {
  border-left-color: #fff;
}

.dropdown-submenu.pull-left {
  float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
  left: -100%;
  margin-left: 10px;
  -webkit-border-radius: 6px 0 6px 6px;
  -moz-border-radius: 6px 0 6px 6px;
  border-radius: 6px 0 6px 6px;
}

</style>


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
$query_typeprd = "SELECT * FROM tbl_type ";
$typeprd = mysql_query($query_typeprd, $condb) or die(mysql_error());
$row_typeprd = mysql_fetch_assoc($typeprd);
$totalRows_typeprd = mysql_num_rows($typeprd);







?>


<!-- <div class="list-group" id="list-tab" >
              <a href="index.php" class="list-group-item list-group-item-action active" id="list-home-list">หมวดสินค้า</a>
            -->
            <?php do { ?>
              <li class="dropdown-submenu">
                <a href="index.php?t_id=<?php echo $row_typeprd['t_id'];?>&type_name=<?php echo $row_typeprd['t_name'];?>" > <?php echo $row_typeprd['t_name']; ?></a>
                <?php 
                $sql = "SELECT * FROM tbl_type1 inner join tbl_type on tbl_type1.t_id = tbl_type.t_id where tbl_type1.t_id =".$row_typeprd['t_id'];
                $typeprd1 = mysql_query($sql, $condb) or die(mysql_error());
                $row_typeprd1 = mysql_fetch_assoc($typeprd1);
                $totalRows_typeprd1 = mysql_num_rows($typeprd1);

                 ?>
                <?php do{ ?>
                  <?php if ($totalRows_typeprd1 > 0) { ?>
                    <ul class="[ dropdown-menu ]" role="menu">
                      <?php do{?>

                        <li>

                          <a href="index.php?t1_id=<?php echo $row_typeprd1['t1_id'];?>&type_name=<?php echo $row_typeprd1['t1_name'];?>" class="[ animate ]"> <?php echo $row_typeprd1['t1_name']; ?></a>

                        </li>


                      <?php } while ($row_typeprd1 = mysql_fetch_assoc($typeprd1)); ?>
                    </ul>
                  <?php }
                } while ($row_typeprd1 = mysql_fetch_assoc($typeprd1)); ?>

              </li>
            <?php } while ($row_typeprd = mysql_fetch_assoc($typeprd)); ?>



            <?php
            mysql_free_result($typeprd);
            ?>
