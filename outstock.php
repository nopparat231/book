<style type="text/css">
	
.button {
    background-color: #3c3c3c;
    border: none;
    color: white;
    padding: 3px 30px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}
.btn1:hover {

    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.btn2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}



</style>

<?php 
$qty = $row_prd['p_qty'];
if($qty < 0){

    echo "<font color='red'>";
    echo "<button class='btn btn-danger btn-xs' disabled='disable'>หมด!</button>";
    echo "</font>";
    }else{

        ?>

        <a href="index.php?p_id=<?php echo $row_prd['p_id'];?>&act=add" class="button btn1" >
        <font color="#FFFFE0" > <span class="glyphicon glyphicon-shopping-cart" ></span>สั่งซื้อ</font></a>

    
<?php } ?>