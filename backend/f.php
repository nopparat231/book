

<p align="center" style="padding-top:100px">




</p>

<script src="../js/jquery.min.js"></script>

<script src="../js/bootstrap.min.js"></script>

<script language="javascript">
function doajax(){
	$(document).ready(function(){
    $("#Gender").change(function () {
        var gender = $("#Gender").val();
        jQuery.ajax({
            url: "f.php"    // Send the data with your url.
            type: "POST",
            data:  {'GenderID': gender},     // Here you have written as {GenderID: gender} , not {'GenderID': gender}
            success: function(data){ 
                if(data.success == true){ 
                   alert('success'); 
                }
            }               
        });
    });
});
};
</script>

<html>
<head>
<title>ThaiCreate.Com jQuery Tutorials</title>

<script type="text/javascript">
$(document).ready(function(){

	$("#btn1").click(function(){

			$.post("f.php", { 
			data1: $("#txt1").val(), 
			data2: $("#txt2").val()}, 
				function(result){
					$("#div1").html(result);
				}
			);

		});
	});
</script>
</head>
<body>
<input type="text" id="txt1">
<input type="text" id="txt2">
<div id="div1"></div>
<input type="button" id="btn1" value="Load">
</body>
</html>
<?php
 echo "You input : <u>".$_POST["data1"]."</u> and <u>".$_POST["data2"]."</u>";
?>