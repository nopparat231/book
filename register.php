
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


      <h3 align="center">  สมัครสมาชิก </h3>

      <form  name="register" action="register_db.php" method="POST" id="register" class="form-horizontal">
       <div class="form-group">
         <div class="col-sm-2">  </div>
         <div class="col-sm-5" align="left">
           <font color="red"> *กรุณากรอกข้อมูลให้ครบทุกช่อง </font>
         </div>
       </div>
       <div class="form-group">
        <div class="col-sm-2" align="right"> ชื่อผู้ใช้ </div>
        <div class="col-sm-10" align="left">
          <input  name="mem_username" type="text" required class="form-control" id="mem_username" placeholder="" pattern="^[a-zA-Z0-9]+$" title="ภาษาอังกฤษหรือตัวเลขเท่านั้น" minlength="2"  />
        </div>
      </div>

      <div class="form-group">
        <div class="col-sm-2" align="right"> รหัสผ่าน </div>
        <div class="col-sm-10" align="left">
          <input  name="mem_password" type="password" required class="form-control" id="txtNewPassword" placeholder="" pattern="^[a-zA-Z0-9]+$" minlength="2" />

        </div>
      </div>

      <div class="form-group">
        <div class="col-sm-2" align="right"> ยืนยันรหัสผ่าน </div>
        <div class="col-sm-10" align="left">
          <input  name="mem_password" type="password" id="txtConfirmPassword" onkeyup="checkPasswordMatch();" required class="form-control" id="mem_password" placeholder="" pattern="^[a-zA-Z0-9]+$" minlength="2" />
              <div class="registrationFormAlert" id="divCheckPasswordMatch"></div>
        </div>
      </div>


      <div class="form-group">
        <div class="col-sm-2" align="right"> ชื่อ-สกุล </div>
        <div class="col-sm-10" align="left">
          <input  name="mem_name" type="text" required class="form-control" id="mem_name" placeholder="" />
        </div>
      </div>
      <!-- ที่อยู่ -->
      <?php include 'from_add.php'; ?>

      <div class="form-group">
        <div class="col-sm-2" align="right">เบอร์โทร </div>
        <div class="col-sm-10" align="left">
          <input  name="mem_tel" required class="form-control" id="input-num" placeholder="0912345678" pattern="[0-9]{10}" size="10" title="เบอร์โทร 0-9" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
          type="tel"
          maxlength = "10" onkeyup="num();"/>
        </div>
      </div>


      <div class="form-group">
        <div class="col-sm-2" align="right"> E-mail </div>
        <div class="col-sm-10" align="left">
          <input  name="mem_email" type="E-mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required class="form-control" id="mem_email" placeholder="xxx@xxx.com" title="กรุณากรอก Email ให้ถูกต้อง" minlength="2"/>
        </div>
      </div>
      <div class="modal-footer">
        <div class="form-group">
          <div class="col-sm-2"> </div>
          <div class="col-sm-6">
            <button type="submit" class="btn btn-primary" id="btn"> สมัครสมาชิก  </button>
            <button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
          </div>

        </div>
      </div>
    </form>
  </div>
</div>


</body>
</html>

<script type="text/javascript">

  function checkPasswordMatch() {
    var password = $("#txtNewPassword").val();
    var confirmPassword = $("#txtConfirmPassword").val();
    if (password != confirmPassword)
      $("#divCheckPasswordMatch").html("รหัสผ่านไม่ตรงกัน!");
    else
      $("#divCheckPasswordMatch").html("รหัสผ่านตรงกัน.");
  }


  function validate() {
    var element = document.getElementById('input-field');
    element.value = element.value.replace(/[^a-zA-Zก-๙ @]+/, '');
  };
  function num() {
    var element = document.getElementById('input-num');
    element.value = element.value.replace(/[^0-9]+/, '');
  };
</script>
