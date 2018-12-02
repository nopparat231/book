<?php 

session_start();
$p_id = $_GET['p_id'];
$act = $_GET['act'];
error_reporting(E_ALL & ~E_NOTICE);

if($act == 'add' && !empty($p_id))
{
    if(!isset($_SESSION['shopping_cart']))
    {
        $_SESSION['shopping_cart'] = array();
    }else{

    }
    if(isset($_SESSION['shopping_cart'][$p_id]))
    {

        $_SESSION['shopping_cart'][$p_id]++;

    }else{
        $_SESSION['shopping_cart'][$p_id]=1;
    }
    
}


if($act == 'remove' && !empty($p_id))
{
    unset($_SESSION['shopping_cart'][$p_id]);
}



if($act == 'update')
{
    $amount_array = $_POST['amount'];
    foreach($amount_array as $p_id => $amount)
    {
        $_SESSION['shopping_cart'][$p_id] = $amount;

    }


}

$q = $p_qty;
?>

<form id="frmcart" name="frmcart" method="post" action="?act=update&oct=after" >
    <table width="100%" border="0" aligh="center" class="table table-striped">
        <tr>
            <td height="40" colspan="7" align="center" bgcolor="#33CCFF"><strong><b>ตระกล้าสินค้า</b></strong></td>
        </tr>
        <tr >
            <td><center>สินค้า</center></td>
            <td><center>ไซร์</center></td>
            <td><center>ราคา</center></td>
            <td><center>จำนวน</center></td>
            <td><center>ค่าจัดส่ง</center></td>
            <td align="right">รวม</td>
            <td><center></center></td>
        </tr>
        <script type="text/javascript">

            onunload = function()
            {
                var foo = document.getElementById('foo');
                self.name = 'fooidx' + foo.selectedIndex;
            }

            onload = function()
            {
                var idx, foo = document.getElementById('foo');
                foo.selectedIndex = (idx = self.name.split('fooidx')) ? idx[1] : 0;
            }

        </script>
        <?php
        $total=0;
        
        if ($_GET['tems']) {
            $ttems = $_GET['tems'];
        }else{
            $ttems = $_POST['tems'];
        }
        if(!empty($_SESSION['shopping_cart']))
        {
            require_once('Connections/condb.php'); 
            foreach($_SESSION['shopping_cart'] as $p_id=>$p_qty)
            {
                $sql = "select * from tbl_product where p_id=$p_id";
                $query = mysql_query($sql, $condb );
                $row = mysql_fetch_array($query);
                $sum = $row['p_price'] * $p_qty;
                $total += $sum;

                if ($ttems == 'ems') {
                    if ($row['p_ems'] <= 20 ) {
                      $tems = 32;
                  }elseif ($row['p_ems'] > 20 && $row['p_ems'] <= 100  ) {
                      $tems = 37;
                  }elseif ($row['p_ems'] > 100 && $row['p_ems'] <= 250  ) {
                      $tems = 42;
                  }elseif ($row['p_ems'] > 250 && $row['p_ems'] <= 500  ) {
                      $tems = 52;
                  }elseif ($row['p_ems'] > 500 && $row['p_ems'] <= 1000  ) {
                      $tems = 67;
                  }elseif ($row['p_ems'] > 1000 && $row['p_ems'] <= 1500  ) {
                      $tems = 82;
                  }elseif ($row['p_ems'] > 1500 && $row['p_ems'] <= 2500  ) {
                      $tems = 97;
                  }elseif ($row['p_ems'] > 2500 && $row['p_ems'] <= 3000  ) {
                      $tems = 122;
                  }elseif ($row['p_ems'] > 3000 && $row['p_ems'] <= 3500  ) {
                      $tems = 137;
                  }elseif ($row['p_ems'] > 4000 && $row['p_ems'] <= 4500  ) {
                      $tems = 157;
                  }

              }elseif($ttems == 'kerry') {
                if ($row['p_ems'] <= 20 ) {
                  $tems = 25;
              }elseif ($row['p_ems'] > 20 && $row['p_ems'] <= 100  ) {
                  $tems = 30;
              }elseif ($row['p_ems'] > 100 && $row['p_ems'] <= 250  ) {
                  $tems = 35;
              }elseif ($row['p_ems'] > 250 && $row['p_ems'] <= 500  ) {
                  $tems = 40;
              }elseif ($row['p_ems'] > 500 && $row['p_ems'] <= 1000  ) {
                  $tems = 45;
              }elseif ($row['p_ems'] > 1000 && $row['p_ems'] <= 1500  ) {
                  $tems = 82;
              }elseif ($row['p_ems'] > 1500 && $row['p_ems'] <= 2500  ) {
                  $tems = 97;
              }elseif ($row['p_ems'] > 2500 && $row['p_ems'] <= 3000  ) {
                  $tems = 122;
              }elseif ($row['p_ems'] > 3000 && $row['p_ems'] <= 3500  ) {
                  $tems = 137;
              }elseif ($row['p_ems'] > 4000 && $row['p_ems'] <= 4500  ) {
                  $tems = 157;
              }
          }

          $ems = $tems * $p_qty;
          $total += $ems;

          $sumems +=$ems;
          $sumqyt += $p_qty;

          echo "<tr>";
          echo "<td width='30%' align='center'>". $row["p_name"] ."<br><img src='pimg/" . $row["p_img1"] . "' width='50%''></img></td>";
          echo "<td align='center' width='5%'>" .$row["p_size"]. "</td>";
          echo "<td width='15%' align='center'>" .number_format($row["p_price"],2) . "</td>";


          echo "<td width='15%' align='center'>"; 
          ?>
          <input type='number' value="<?php echo $p_qty; ?>" onkeyup="if(this.value > <?php echo $row['p_qty']; ?>) this.value = <?php echo $row['p_qty']; ?>;" size='1' name='amount[<?php echo $p_id ?>]' /></td>"
          <?php

          echo "<td width='10%' align='center'>".number_format($ems). "</td>";
                //echo "<input type='number' name='amount[$p_id]' value='$p_qty' size='2'/></td>";
          echo "<td width='10%' align='right'>".number_format($sum,2). "</td>";
          echo "<td width='2%'align='right'><a href='confirm_order.php?p_id=$p_id&act=remove&oct=after' ><span class='glyphicon glyphicon-remove'  style='color: red'></span></a></td>";

          echo "</tr>";


      }

      echo "<tr>";
      echo "<td  align='left' colspan='6'><b>จำนวนสิน้าในรถเข็น</b></td>";
      echo "<td align='center'>"."<b>".number_format($sumqyt)."</b>"."</td>";


      echo "</tr>";

      echo "<tr>";
      echo "<td  align='left' colspan='6'><b>ราคาสินค้ารวม</b></td>";
      echo "<td align='center'>"."<b>".number_format($total,2)."</b>"."</td>";
      echo "</tr>";


      $tax = $total*0.07;
      $total += $tax;


      echo "<tr>";?>
      <td  align='left' colspan='5'><b>จัดส่ง </b>
        <td align='left'>

            <select class="form-control" name="tems"  id="foo" onchange="this.form.submit()" required="required" style="width: 150px">
                
                <option value="ems" selected="select">EMS</option>
                <option value="kerry" >Kerry</option>

            </select>

        </td>

    </td>;
    <input type="number" name="sumems" hidden="hidden" value="<?php echo $sumems ?>"/>
    <?php
    echo "<td align='center'>"."<b>".number_format($sumems)."</b>"."</td>";
    echo "</tr>";

    echo "<tr>";
    echo "<td  align='left' colspan='6'><b>ภาษี 7%</b></td>";
    echo "<td align='center'>"."<b>".number_format($tax,2)."</b>"."</td>";
    echo "</tr>";

    echo "<tr class='success'>";
    echo "<td colspan='6' bgcolor='#CEE7FF' align='center'><b>จำนวนเงินรวม</b></td>";
    echo "<td align='center' bgcolor='#CEE7FF'>"."<b>".number_format($total,2)."</b>"."</td>";

    echo "</tr>";

}


if ($p_qty > $row["p_qty"]) {
// echo $p_qty;
// echo $row["p_qty"];
   ?>


   <script>alert('รายการสินค้า "<?php echo $row["p_name"] ?>" มีสินค้าเพียง "<?php echo $row["p_qty"] ?>" ชิ้น!'); </script>
   <tr >

    <td colspan="6" >
        <input type="button" name="Submit2" value="< กลับหน้าหลัก" class="btn btn-info pull-left" onclick="window.location='index.php';" />

        <input type="button" name="Submit2" value="สั่งซื้อ" disabled class="btn btn-success pull-right" onclick="window.location='confirm_order.php?p_id=$p_id&oct=order';" />

        <input type="submit" name="button" id="button" value="คำนวน"  class="btn btn-warning pull-right"  />

    <?php   }else{?>

      <tr >

        <td colspan="7" >
            <input type="button" name="Submit2" value="< กลับหน้าหลัก" class="btn btn-info pull-left" onclick="window.location='index.php';" />
            <?php if ($sumems == 0): ?>

            <?php endif ?>
            <input type="button" name="Submit2" value="สั่งซื้อ" class="btn btn-success pull-right" onclick="window.location='confirm_order.php?p_id=$p_id&oct=order';" />

            <input type="submit" name="button" id="button" value="คำนวน"  class="btn btn-warning pull-right"  />


        <?php } ?>

    </td>
</tr>
</table>
</form>