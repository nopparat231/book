<?php
/*
Author: Javed Ur Rehman
Website: https://www.allphptricks.com
*/
?>
<html>
<head>
	<title>Dynamic Dependent Select Box using jQuery and Ajax</title>
	<meta charset="utf-8">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>


	<tr>
		<td align="right" valign="middle">*ประเภทหลักสินค้า :</td>
		<td colspan="2">
			<select  name="t_id" class="country" required>
				<option value="0">กรุณาเลือกประเภทหลักสินค้า</option>
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
		<td align="right" valign="middle">*ประเภทย่อยสินค้า :</td>
		<td colspan="2">
			<select name="t1_id" class="city" required>
				<option>กรุณาเลือกประเภทย่อยสินค้า</option>
			</select>

		</td>
	</tr>
	<br /><br />


	<script type="text/javascript">
		$(document).ready(function()
		{
			$(".country").change(function()
			{
				var country_id=$(this).val();
				var post_id = 'id='+ country_id;

				$.ajax
				({
					type: "POST",
					url: "ajax.php",
					data: post_id,
					cache: false,
					success: function(cities)
					{
						$(".city").html(cities);
					} 
				});

			});
		});
	</script>
</body>
</html>
