
<meta charset="UTF-8" />
<?php
include('../Connections/condb.php');


$new_id = $_POST['new_id'];
$new_v = $_POST['new_v'];

$sql ="UPDATE tbl_new SET new_v='$new_v' WHERE new_id='$new_id'";

		$result = mysql_query( $sql,$condb) or die("Error in query : $sql" .mysql_error());


		mysql_close();

		if($result){
			echo "<script>";
			echo "window.location ='edit_news.php?new_id=$new_id&act=edit-ok'; ";
			echo "</script>";
		} else {

			echo "<script>";
			echo "alert('ERROR!');";
			echo "window.location ='list_news.php'; ";
			echo "</script>";
		}



?>
