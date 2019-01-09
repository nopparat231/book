
<?php include('mm.php');?> 
<b>  ADMIN : <?php echo $row_mm['admin_name'];?></b>
<br />  
<div class="list-group">
	<a href="index.php" class="list-group-item active"  style="background-color: #2C3E50">หน้าหลัก</a>
	<?php 
	if ($row_mm['status'] == 'admin') { ?>
		<a href="adduser_admin.php" class="list-group-item">เพิ่มผู้ใช้งานระบบ</a>
		<a href="list_admin.php" class="list-group-item">-จัดการผู้ดูแลระบบ</a>
		<a href="list_member.php" class="list-group-item">-จัดการสมาชิค</a>
		
		<a href="../logout_admin.php" class="list-group-item list-group-item-danger">-ออกจากระบบ</a>

	<?php } elseif($row_mm['status'] == 'superadmin') { ?>
		
		<a href="list_admin.php" class="list-group-item">รายงานผู้ดูแลระบบ</a>
		<a href="list_member.php" class="list-group-item">รายงานข้อมูลสมาชิก</a>
		<a href="report_all_prd.php" class="list-group-item">รายงานข้อมูลสินค้า</a>
		<a href="report_all_order.php" class="list-group-item">รายงานการสั่งซื้อ</a>
		<a href="report_all_type.php" class="list-group-item">รายงานประเภทสินค้า</a>
		<a href="report_all_bank.php" class="list-group-item">รายงานข้อมูลธนาคาร</a>
		<a href="../logout_admin.php" class="list-group-item list-group-item-danger" >-ออกจากระบบ</a>

	<?php }elseif($row_mm['status'] == 'staff') {	 ?>
		<a href="list_product.php" class="list-group-item">-จัดการสินค้า</a>
		<a href="list_product_type.php?list" class="list-group-item">-จัดการประเภทสินค้า</a>
		
		<a href="list_bank.php" class="list-group-item">-จัดการข้อมูลธนาคาร</a>
		<a href="carousel.php" class="list-group-item">-จัดการภาพหน้าปก</a>
		<a href="list_news.php" class="list-group-item">-จัดการข่าวสาร</a>
		<a href="add_about.php" class="list-group-item">-จัดการเกี่ยวกับ</a>
		<a href="../logout_admin.php" class="list-group-item list-group-item-danger">-ออกจากระบบ</a>
	<?php } ?>

</div>