<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />

<style type="text/css">

#form1 table tr h3 {
	text-align: center;
}
@media print{
  #hp{
    display:none;
  }
  @charset "UTF-8";
</style>
<?php include 'detail_order_afer_cartdone_DB.php';


date_default_timezone_set('Asia/Bangkok');

?>
<?php include 'config_page.php'; ?>
<center>
  <br>
  <br>
	<?php

  $status =  $row_cartdone['order_status'];
  if ($status == 1) { ?>
   <a href="" class="btn btn-primary " target="_blank" id="hp" onclick="window.print();" >  <span class="glyphicon glyphicon-print"></span> พิมพ์ใบแจ้งหนี้ </a>


 <?php }else{ ?>
   <a href="" class="btn btn-success " target="_blank" id="hp" onclick="window.print();" >  <span class="glyphicon glyphicon-print"></span> พิมพ์ใบเสร็จ </a>


 <?php }  ?>

  <br>
  <br>

  <form id="form1" name="form1" method="post" action="">
    <table width="1081" height="499" border="0">
      <tr>
        <th width="21" height="298" scope="row" >&nbsp;</th>
        <th width="493" scope="row" align="center"><img src="pimg/<?php echo $row_cf['logo']; ?>" width="350" height="150" /></th>

        <th width="553" align="center" nowrap="nowrap">
          <h3><strong>บริษัท BOOKSHOP จํากัด</strong></h3>
          <p> 435/124 ซอยประชาอุทิศ 90 ถนนประชาอุทิศ ตำบลบ้านคลองสวน อำเภอพระสมุทรเจดีย์ จังหวัดสมุทรปราการ กรุงเทพ 10290 </p>
          <p>  435/124 Pachautid90 PachautidRd. Bankhongsuan Phasamutjdee SamutPrakran (Thailand) 10290</p>
          <p> โทร. 091-423-2511 เลขประจําตัวผู้เสียภาษอีากร 1234567890123 </p>
          <p>&nbsp;</p>

          <table width="416" border="1" cellpadding="0" cellspacing="0">
            <tr>

             <?php if ($row_cartdone['b_name'] <> ''){
              $chec ='ต้นฉบับใบเสร็จรับเงิน';
              $engc = 'ORIGINAL RECEIPT';
            }else{
              $chec ='ต้นฉบับใบแจ้งหนี้';
              $engc = 'ORIGINAL INVOICE';
            }?>

            <th width="406" align="center" scope="row"><h4 align="center"><strong><?php echo $chec; ?></strong></h4>
              <h4 align="center"><?php echo $engc; ?></h4></th>
            </tr>
          </table>
          <h4>&nbsp;</h4></th>
        </tr>
        <tr>
          <th scope="row">&nbsp;</th>
          <th height="195" scope="row"><table width="489" border="0" style="text-align: left;">
					<tr>
						<th width="186" style="text-align: left;" scope="row"><p>&nbsp; &nbsp; รหัสลูกค้า</p></th>
						<td width="293" align="left" valign="bottom"><p>US<?php echo $row_cartdone['mem_id'];?></p></td>
					</tr>
            <tr>
              <th width="186" style="text-align: left;" scope="row"><p>&nbsp; &nbsp; นามลูกค้า</p></th>
              <td width="293" align="left" valign="bottom"><p><?php echo $row_cartdone['mem_name'];?></p></td>
            </tr>
            <tr>
              <th style="text-align: left;" scope="row"><p>&nbsp; &nbsp; ที่อยู่</p></th>
              <td style="text-align: left;" valign="bottom">
                <p>
                  <?php echo $row_cartdone['address'];?>
                </p>
              </td>
            </tr>
            <tr>

            </tr>
          </table>        <h3>&nbsp;</h3></th>
          <td><table width="300" border="0" align="right">
					<tr>
						<th scope="row">วันที<br><br></th>
						<td><?php echo date($row_cartdone['order_date']);?><br><br></td>

					</tr>
            <tr>
              <th scope="row">เลขที่ใบกำกับ</th>
              <td>BK<?php echo  str_pad($row_cartdone['order_id'], 6, "0", STR_PAD_LEFT);?></td>
            </tr>


          </table></td>
        </tr>
      </table>
      <table width="2" height="204" border="1" cellpadding="0" cellspacing="0">
        <col width="36" />
        <col width="23" />
        <col width="28" />
        <col width="123" />
        <col width="94" />
        <col width="68" />
        <col width="10" />
        <col width="8" />
        <col width="22" />
        <col width="59" />
        <col width="57" />
        <col width="22" />
        <col width="54" />
        <col width="9" />
        <col width="45" />
        <col width="13" />
        <col width="8" />
        <col width="13" />
        <col width="63" />
        <col width="41" />
        <col width="127" />
        <col width="20" />
      </table>
      <table width="1081" border="1" cellpadding="0" cellspacing="0">
        <tr align="center" class="bg-primary">
          <td width="70" nowrap="nowrap" scope="row">ลำดับ</td>
          <td width="120" nowrap="nowrap">รหัสสินค้า</td>
          <td width="370" nowrap="nowrap">รายละเอียด</td>

          <td width="80" nowrap="nowrap">จำนวน</td>
          <td width="88" nowrap="nowrap">หน่วย</td>
          <td width="110" nowrap="nowrap">ราคา/หน่วย</td>
          <td width="100" nowrap="nowrap">จำนวนเงิน</td>

        </tr>


        <?php
        $i = 1;


        do { ?>

          <?php
          $t_id = $row_cartdone['t_id'];
          include 't_id.php';
          $sum  = $row_cartdone['p_price']*$row_cartdone['p_c_qty'];
          $totalp  += $sum;
          $total  += $sum;
          $sumems = $row_cartdone['pos_ems'];

          ?>


          <td align="center" scope="row"><?php echo $i; ?></td>
          <td align="center"><?php echo $row_typeprd['t_type'];?><?php echo str_pad($row_cartdone['p_id'], 6, "0", STR_PAD_LEFT);?></td>
          <td align="center"><?php echo $row_cartdone['p_name'];?></td>

          <td align="center"><?php echo $row_cartdone['p_c_qty'];?></td>
          <td align="center"><?php echo $row_cartdone['p_unit'];?></td>
          <td align="center"><?php echo number_format($row_cartdone['p_price'],2);?></td>
          <td align="right"><?php echo number_format($sum,2);?></td>

        </tr>


        <?php
        $i += 1;
      } while ($row_cartdone = mysql_fetch_assoc($cartdone));

      ?>



      <tr>
        <th align="center" scope="row">&nbsp;</th>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>

      </tr>
      <tr>
        <th align="center" scope="row">&nbsp;</th>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>

      </tr>
      <tr>
        <th align="center" scope="row">&nbsp;</th>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>

      </tr>
      <tr>
        <th align="center" scope="row">&nbsp;</th>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>

      </tr>
      <tr>
        <th align="center" scope="row">&nbsp;</th>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>

      </tr>
      <tr>
        <th align="center" scope="row">&nbsp;</th>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>

      </tr>
      <tr>
        <th align="center" scope="row">&nbsp;</th>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>

      </tr>
      <tr>
        <th align="center" scope="row">&nbsp;</th>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>
        <td align="center">&nbsp;</td>

      </tr>
    </table>
    <?php include 'detail_order_afer_cartdone_DB.php';
    include 'number_to_thai.php';

    ?>
    <?php
    $tax = $total*0.07;
    $total += $tax;
    $total += $sumems;
    ?>

    <table width="1081" border="1" cellpadding="0" cellspacing="0">
      <tr>
        <th width="70%" align="left" scope="row">&nbsp;จำนวนเงินรวมทั้งสิ้น (ตัวอักษร) : &nbsp;&nbsp;<?php echo convert($total); ?></th>
        <td width="20%"> &nbsp;รวมเงิน<br />
        &nbsp;TOTAL</td>

        <td width="10%" align="right"><?php echo number_format($totalp,2);?></td>
      </tr>

      <tr>
        <?php if ($row_cartdone['b_name'] <> ''){
          $checked ='checked';
        }else{}?>
        <th align="left" valign="bottom" scope="row"> &nbsp; &nbsp;



          <td>&nbsp;ค่าจัดส่ง<br />
          &nbsp;SHIPPING CHARGE</td>
          <td align="right">&nbsp; <?php echo number_format($sumems,2); ?></td>
        </tr>

        <tr> <th align="left" valign="bottom" scope="row"> &nbsp; &nbsp;
        </th>


        <td>&nbsp;ภาษีมูลค่าเพิ่ม<br />
        &nbsp;VAT 7%</td>
        <td align="right"><?php echo number_format($tax,2);?></td>
      </tr>
      <tr>
        <th align="left" valign="bottom"scope="row">&nbsp;
				<?php

				$status =  $row_cartdone['order_status'];
				if ($status == 1) { ?>



				<?php }else{ ?>
					เงินโอน :&nbsp;<?php echo number_format($row_cartdone['pay_amount'],2);?> บาท &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ธนาคาร :&nbsp;<?php
 				 echo $row_cartdone['b_name'];?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; เลขที่บัญชี :&nbsp;<?php
 				 echo $row_cartdone['b_number'];?></th>


				<?php }  ?></th>
        <td>&nbsp;ยอดรวมสุทธิ<br />
        &nbsp;GRAND TOTAL</td>
        <td align="right"><strong><?php echo number_format($total,2);?></strong></td>
      </tr>
    </table>
    <p>&nbsp;</p>
    <table width="691" align="center" cellpadding="0" cellspacing="0">

    </table>
    <table width="1081" border="1" cellpadding="0" cellspacing="0">
      <tr>
        <th height="53" align="center" valign="bottom" scope="row"> &nbsp;ผู้รับสินค้า ............................................................</th>
        <th align="center" valign="bottom"> &nbsp;ผู้ส่งสินค้า ............................................................</th>
        <th align="center" valign="bottom"><p> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;ในนาม บริษัท BOOKSHOP จำกัด</p></th>
      </tr>
      <tr>
        <th height="63" valign="bottom" scope="row"> &nbsp;ลงวันที่  .................................................................</th>
        <th valign="bottom">&nbsp;ลงวันที่  .................................................................</th>
        <th align="center" valign="bottom">&nbsp;ลงวันที่  .................................................................</th>
      </tr>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </form>
</center>
<?php mysql_free_result($cartdone); ?>
