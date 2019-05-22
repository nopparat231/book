<?php

session_start();
$p_id = $_GET['p_id'];
$act = $_GET['act'];
error_reporting(E_ALL & ~E_NOTICE);

$q = $p_qty;

?>
<div class="col-md-9">
  <form id="frmcart" name="frmcart" method="post" action="?act=update&oct=after" >
    <table width="100%" border="0" aligh="center" class="table table-striped">
      <thead>
        <tr>
          <th height="40" colspan="8" align="center"><h2>หนังสือในตะกร้า <?php echo $meQty; ?> ชิ้น</h2></th>
        </tr>
      </thead>
      <tr >
        <td>รูปหนังสือ</td>
        <td>รายละเอียด</td>
        <td></td>
        <td><center>ราคา</center></td>
        <td><center>จำนวน</center></td>
        <td><center>น้ำหนัก</center></td>

        <td align="right">ราคารวม</td>
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
          $sql = "select * from tbl_product  where p_id=$p_id";
          $query = mysql_query($sql, $condb );
          $row = mysql_fetch_array($query);

          $sqlt = "select * from tbl_type  where t_id=".$row["t_id"];//ดึงข้อมูลประเภท t_id 
          $queryt = mysql_query($sqlt, $condb );
          $rowt = mysql_fetch_array($queryt);

          $sqlt1 = "select * from tbl_type1  where t1_id=".$row["t1_id"];//ดึงข้อมูลประเภทย่อย t1_id 
          $queryt1 = mysql_query($sqlt1, $condb );
          $rowt1 = mysql_fetch_array($queryt1);

          $sum = $row['p_price'] * $p_qty;

          $total += $sum;

          $sumw = $row['p_ems'] * $p_qty;
        //$ssum  += $row['p_ems'];


          $sumqyt += $p_qty;

          echo "<tr>";
          echo "<td width='15%'><img src='pimg/" . $row["p_img1"] . "' width='100%''></img></td>";
          echo "<td ><u style='color: blue;'>" .$row["p_name"]. "</u><br><br>ผู้เขียน : " .$row["p_at"]. "<br>ประเภท : " .$rowt["t_name"]."<br>หมวดหมู่ : " .$rowt1["t1_name"]. "</td>";
          echo "<td align='center' width='5%'>" .$row["p_size"]. "</td>";
          echo "<td width='15%' align='center'>";
          $da = date('Y-m-d');
          if ($row['promo'] != 0  && $da <= $row['promo_done']) {
            echo "<strike>" .number_format($row['promo'],2) . "</strike><br>";
          } 
          echo number_format($row["p_price"],2)."</td>";

          echo "<td width='15%' align='center'>";
          ?>

          <input type="hidden" name="ttems" value="<?php echo $ems; ?>">
          <input type='number' min="0" max= "<?php echo $row['p_qty']; ?>" value="<?php echo $p_qty; ?>" onkeyup="if(this.value > <?php echo $row['p_qty']; ?>) this.value = <?php echo $row['p_qty']; ?>;" size='1' name='amount[<?php echo $p_id ?>]' /></td>
          <?php

          echo "<td width='10%' align='center'>".number_format($sumw). "</td>";
                //echo "<input type='number' name='amount[$p_id]' value='$p_qty' size='2'/></td>";
          echo "<td width='15%' align='right'>";
          echo number_format($sum,2);
          if ($row['promo'] != 0  && $da <= $row['promo_done']) {

            echo  "<br><font color='#FF8C00'>ประหยัด <br> " .number_format($row['promo']-$row['p_price'],2). " บาท </font>";
          } 
          echo "</td>";

          


          echo "<td width='2%'align='right'><a href='confirm_order.php?p_id=$p_id&act=remove&oct=after' ><span class='glyphicon glyphicon-remove'  style='color: red'></span></a></td>";

          echo "</tr>";
          $sumww += $sumw;

        }
        ?>

      </table>
      <input type="button" name="Submit2" value="< กลับหน้าหลัก" class="btn btn-info pull-left" onclick="window.location='index.php';" />
    </div>

    <div class="col-md-3">
      <table width="100%" border="0" aligh="center" class="table">
        <thead>
          <tr>
            <th height="40" colspan="7" align="center"><h2>สรุปรายการสั่งซื้อ</h2></th>
          </tr>
        </thead>
        <?php
        echo "<tr>";
        echo "<td  align='left' colspan='5'><b>สิค้าในรถเข็น</b></td>";
        echo "<td align='right'>"."<b>".number_format($sumqyt)." เล่ม</b>"."</td>";


        echo "</tr>";

        echo "<tr>";
        echo "<td  align='left' colspan='5'><b>ราคาสินค้ารวม</b></td>";
        echo "<td align='right'>"."<b>".number_format($total,2)." บาท</b>"."</td>";
        echo "</tr>";

        echo "<tr>";
        echo "<td  align='left' colspan='5'><b>น้ำหนักสินค้ารวม</b></td>";
        echo "<td align='right'>"."<b>".number_format($sumww,2)."(กรัม)</b>"."</td>";
        echo "</tr>";

        $tax = $total*0.07;
        $total += $tax;


        echo "<tr>";?>
        <td  align='left' colspan='4'><b>จัดส่ง </b>
          <td align='left'>

            <select class="form-control" name="tems"  id="foo" onchange="this.form.submit()" required="required" style="width: 100px">

              <option value="ems" selected="select">EMS</option>
              <option value="kerry" >Kerry</option>

            </select>

          </td>

        </td>

        <?php
        include 'class_ems.php';
        $total += $tems;
        echo "<td align='right'>"."<b>".number_format($tems)." บาท</b>"."</td>";
        echo "</tr>";

        echo "<tr>";
        echo "<td  align='left' colspan='5'><b>ภาษี 7%</b></td>";
        echo "<td align='right'>"."<b>".number_format($tax,2)." บาท</b>"."</td>";
        echo "</tr>";
//echo "<hr>";
        echo "<tr>";
        
        echo "<td colspan='5' align='left'><h3>ราคาสุทธิ</h3></td>";
        echo "<td align='right'>"."<h3>".number_format($total,2)."</h3>"."</td>";

        echo "</tr>";

      }


      if ($p_qty > $row["p_qty"]) {
// echo $p_qty;
// echo $row["p_qty"];
       ?>

       <input type="number" name="sumems" hidden="hidden" value="<?php echo $tems ?>"/>
       <script>alert('รายการสินค้า "<?php echo $row["p_name"] ?>" มีสินค้าเพียง "<?php echo $row["p_qty"] ?>" ชิ้น!'); </script>
       <tr >

        <td colspan="6" >


          <input type="button" name="Submit2" value="สั่งซื้อ" disabled class="btn btn-success pull-right" onclick="window.location='confirm_order.php?p_id=$p_id&oct=order&sumems=<?php echo $tems ?>';" />

          <input type="submit" name="button" id="button" value="คำนวน"  class="btn btn-warning pull-right"  />

        <?php   }else{?>

          <tr >

            <td colspan="7" >

              <?php if ($sumems == 0): ?>

              <?php endif ?>
              <input type="button" name="Submit2" value="สั่งซื้อ" class="btn btn-success pull-right" onclick="window.location='confirm_order.php?p_id=$p_id&oct=order&sumems=<?php echo $tems ?>';" />

              <input type="submit" name="button" id="button" value="คำนวน"  class="btn btn-warning pull-left"  />


            <?php } ?>

          </td>
        </tr>
      </table>
    </form>
  </div>
  <br><br><br><br><br><br><br><br><br>