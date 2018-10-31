<?php include 'config_page.php'; ?>

<style type="text/css">
  
footer {
    background-color: rgba(44, 62, 80, 1.0);

    width: 100%;
    bottom: 0;
    font-weight: lighter;
    color: white;
}
.footerHeader{
    width:100%;
    padding:1em;
    background-color:rgba(52, 73, 94,1.0);
    text-align:center;
    color:white;
}
footer h3{
    font-weight:lighter;
}
footer ul{
    padding-left:5px;
    list-style:none;
}
footer p{
    text-align : justify;
    font-size : 12px;
}
footer iframe {
    width:100%;
    position:relative;
    height:170px;
}
.sm{
    list-style:none;
    overflow:auto;
}
.sm li {
    display: inline;
    padding:5px;
    float:left;
} 
.sm li a img {
    width:32px;
}
  
</style>

<footer>
    <div class="footerHeader" ></div>
    <div class="container">
    <div class="col-md-4" >
        <h3>เกี่ยวกับ</h3>
       
           <?php echo $row_cf['about']; ?>
       
    </div>
    
    <div class="col-md-4">
        <h3>สถานที่ตั้ง </h3>
        <p>
           <?php echo $row_cf['location']; ?> 

        </p>
   
    </div>
    <div class="col-md-4" >
        <h3>ติดต่อ</h3>
        
       
            <?php echo $row_cf['contact']; ?>
      
      
    </div>
    </div>
</footer>