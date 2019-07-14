				<?php include('mm.php');?>
				<div id="throbber" style="display:none; min-height:120px;"></div>
				<div id="noty-holder"></div>
				<div id="wrapper">
					<!-- Navigation -->
					<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">
								<img src="../img/logo42.png" alt="LOGO">
							</a>
						</div>

						<ul class="nav navbar-right top-nav">
							<li>
								<a  href="../logout_admin.php">  ออกจากระบบ</a>
							</li>
						</ul>

						<ul class="nav navbar-right top-nav">
							<li>
								<a  href="#">  ชื่อ-สกุล : <?php echo $row_mm['admin_name'];?></a>
							</li>
						</ul>

						<ul class="nav navbar-right top-nav">
							<li>
								<a  href="#">  ตำแหน่ง : <?php echo $row_mm['status'];?></a>
							</li>
						</ul>

						<ul class="nav navbar-right top-nav">
							<li>
								<a  href="#">  รหัสพนักงาน : BK00<?php echo $row_mm['admin_id'];?></a>
							</li>
						</ul>

						<ul class="nav navbar-right top-nav">
							<li>
								<a  href="#">  ชื่อผู้ใช้ : <?php echo $row_mm['admin_name'];?></a>
							</li>

						</ul>

						<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav side-nav">


								<style type="text/css">
									.font{
										font-size: 20px;
									}
								</style>

								<li>
									<a href="index.php" class="font"><img src="../icon/admin/home.png" alt="หน้าหลัก">  หน้าหลัก</a>
								</li>
								<li>
									<a href="list_product_type.php?list"  class="font"><img src="../icon/staff/edittype.png" alt="จัดการประเภทหนังสือ">  จัดการประเภทหนังสือ</a>
								</li>
								<li>
									<a  href="list_product.php" class="font"><img src="../icon/staff/edb.png" alt="">  จัดการหนังสือ</a>
								</li>
								<li>
									<a href="list_sell.php" class="font"><img src="../icon/staff/addbook.png" alt="">  จัดการตรวจรับหนังสือ</a>
								</li>
								<li>
									<a href="list_bank.php" class="font"><img src="../icon/staff/bank.png" alt="">  จัดการข้อมูลธนาคาร</a>
								</li>
								<li>
									<a href="carousel.php" class="font"><img src="../icon/staff/logo.png" alt="">  จัดการโลโก้ หน้าปก</a>
								</li>
								<li>
									<a href="list_news.php" class="font"><img src="../icon/staff/news.png" alt="">  จัดการข่าวสาร</a>
								</li>
								<li>
									<a href="add_about.php" class="font"><img src="../icon/staff/info.png" alt="">  จัดการเกี่ยวกับ ติดต่อเรา</a>
								</li>

							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</nav>

					<div id="page-wrapper">
						<div class="container-fluid">
							<!-- Page Heading -->
							<div class="row" id="main" >
								<div class="col-sm-12 col-md-12 well" id="content">





