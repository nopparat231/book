
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <?php include('datatable.php');?>
</head>
<body>

  <div class="row" style="padding-top:50px">

    <div class="col-md-10" style="background-color:#f4f4f4">


      <h3 align="center">  สมัครสมาชิค </h3>

      <form  name="register" action="register_db.php" method="POST" id="register" class="form-horizontal">
       <div class="form-group">
         <div class="col-sm-2">  </div>
         <div class="col-sm-5" align="left">
           <font color="red"> *กรุณากรอกข้อมูลให้ครบทุกช่อง </font>
         </div>
       </div>
       <div class="form-group">
        <div class="col-sm-2" align="right"> ชื่อผู้ใช้ </div>
        <div class="col-sm-5" align="left">
          <input  name="mem_username" type="text" required class="form-control" id="mem_username" placeholder="username" pattern="^[a-zA-Z0-9]+$" title="ภาษาอังกฤษหรือตัวเลขเท่านั้น" minlength="2"  />
        </div>
      </div>

      <div class="form-group">
        <div class="col-sm-2" align="right"> รหัสผ่าน </div>
        <div class="col-sm-5" align="left">
          <input  name="mem_password" type="password" required class="form-control" id="mem_password" placeholder="password" pattern="^[a-zA-Z0-9]+$" minlength="2" />
        </div>
      </div>

      <div class="form-group">
        <div class="col-sm-2" align="right"> ชื่อ-สกุล </div>
        <div class="col-sm-5" align="left">
          <input  name="mem_name" type="text" required class="form-control" id="mem_name" placeholder="ชื่อ-สกุล" />
        </div>
      </div>
<!-- ที่อยู่ -->
      <?php include 'from_add.php'; ?>

      <div class="form-group">
        <div class="col-sm-2" align="right"> เบอร์โทร </div>
        <div class="col-sm-5" align="left">
          <input  name="mem_tel" type="text" required class="form-control" id="mem_tel" placeholder="0912345678" pattern="[0-9]{10}" minlength="2" title="เบอร์โทร 0-9" minlength="2"/>
        </div>
      </div>

      <div class="form-group">
        <div class="col-sm-2" align="right"> E-mail </div>
        <div class="col-sm-5" align="left">
          <input  name="mem_email" type="E-mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required class="form-control" id="mem_email" placeholder="E-mail" title="กรุณากรอก Email ให้ถูกต้อง" minlength="2"/>
        </div>
      </div>
      <div class="modal-footer">
        <div class="form-group">
          <div class="col-sm-2"> </div>
          <div class="col-sm-6">
            <button type="submit" class="btn btn-primary" id="btn"> สมัครสามชิก  </button>
            <button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
          </div>

        </div>
      </div>
    </form>
  </div>
</div>


</body>
</html>
