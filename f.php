
<style type="text/css">

footer {
    background-color: rgba(44, 62, 80, 1.0);

    width: 100%;
    bottom: 1;
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

<footer class="page-footer">
    <div class="footerHeader" ></div>
    <div class="container">
        <div class="col-md-12" >
            <h3>หมวดหมู่ทั้งหมด</h3>
            
            <h3><?php include 'sub_f.php'; ?>
            <div class="col-sm-2" align="left" >
             <div class="pull-left"><li><a href="./admin">ผู้ดูแลระบบ</a></li></div> </h3>
            </div>
         </div>
     </div>
     
 </div>
</footer>
