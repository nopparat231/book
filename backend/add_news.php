<?php include('access.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
  <?php include('h.php');?>
  <?php include('datatable.php');?>
</head>
<body>
  <div class="container">
    <div class="row">
     <?php include('navbar.php');?>
   </div>
   <div class="row">
     <div class="col-md-2">

      <?php include('menu.php');?>           
    </div>
    <div class="col-md-10">
      <h3 align="center">  เพิ่ม ข่าว </h3>
      <div class="table">
        <form  name="register" action="add_news_db.php" method="POST" id="register" class="form-horizontal">
         <div class="form-group">
           <div class="col-sm-2">  </div>
          
         </div>
         <tr>
          
          <td colspan="2">

            <textarea name="add_new" cols="100" class="ckeditor" rows="5"></textarea>

          </td>
        </tr>
<br>
        <div class="form-group">
          <div class="col-sm-2"> </div>
          <div class="col-sm-6">
            <button type="submit" class="btn btn-primary" id="btn"> บันทึก  </button>
           <a href="list_news.php" class="btn btn-danger" >ยกเลิก</a>
          </div>

        </div>
      </form>
    </div>
  </div>
</div>
</div>
</div>
</div>
</div> 
</body>
</html>
<?php  include('f.php');?>