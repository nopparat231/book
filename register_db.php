
<meta charset="UTF-8" />
<?php
session_start();
include('Connections/condb.php');


$mem_username = $_POST['mem_username'];
$mem_password = $_POST['mem_password'];
$mem_name = $_POST['mem_name'];
$mem_email = $_POST['mem_email'];
$mem_tel = $_POST['mem_tel'];
$mem_address = $_POST['a']." ตำบล".$_POST['t']." อำเภอ".$_POST['o']." จังหวัด".$_POST['j']." รหัสไปรษณีย์ ".$_POST['p'];
$user = "user";
$session_id = session_id();
$no = "no";

mysql_select_db($database_condb);
$check = "SELECT * FROM tbl_member WHERE '$mem_username' = mem_username ";
$result = mysql_query($check,$condb);
$num = mysql_num_rows($result);

$checkemail = "SELECT * FROM tbl_member WHERE mem_email = '$mem_email'";
$resultemail = mysql_query($checkemail,$condb);
$numemail = mysql_num_rows($resultemail);

if ($numemail > 0 ){
	echo"<script>";
	echo"alert('E-mail นี้มีผู้ใช้แล้ว กรุณาลองใหม่อีกครั้ง');";
	echo"window.location = 'index.php';";
	echo"</script>";

}elseif ($num > 0 ){
	echo"<script>";
	echo"alert('Username นี้มีผู้ใช้แล้ว กรุณาลองใหม่อีกครั้ง');";
	echo"window.location = 'index.php';";
	echo"</script>";

}else{

$sql ="INSERT INTO tbl_member (mem_username , mem_password , mem_name , mem_email ,  mem_tel , mem_address , status ,sid , active ) VALUES ('$mem_username' , '$mem_password' ,'$mem_name','$mem_email','$mem_tel','$mem_address' ,'$user' ,'$session_id','$no' )";

$result1 = mysql_query($sql,$condb) or die ("Error in query : $sql" .mysql_error());


		$mem_id = mysql_insert_id($condb);

		$strTo = $mem_email;
		$strSubject = "ยืนยันการสมัครสมาชิก เว็บจำหน่ายหนังสือออนไลน์ BOOKSHOP";
		$strHeader = "Content-type: text/html; charset=UTF-8\n"; // or UTF-8 //

		$strMessage = "";
		$strMessage .= "ยินดีต้อนรับ : คุณ".$mem_name."<br>";
		$strMessage .= "________________________________________<br>";
		$strMessage .= "ยืนยันการสมัครสมาชิกโดยการคลิกที่ลิ้งค์ด้านล่าง<br>";
		$strMessage .= "http://localhost/book/activate.php?sid=".$session_id."&mem_id=".$mem_id."<br>";
		$strMessage .= "________________________________________<br>";
		$strMessage .= "<br>";

		$flgSend = mail($strTo,$strSubject,$strMessage,$strHeader);

}

mysql_close();
if($result1){
	echo"<script>";
	echo"alert('สมัครสมาชิกเรียบร้อยแล้ว กรุณายืนยันที่ E-mail !');";
	echo"window.location = 'index.php';";
	echo"</script>";
}else{
	echo"<script>";
	echo"alert('สมัครสมาชิกไม่สำเร็จ!');";
	echo"window.location = 'index.php';";
	echo"</script>";
	}

?>
