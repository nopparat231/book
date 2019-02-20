
<style type="text/css">


.animate {
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

.navbar-bootsnipp {
  background-color: rgb(255, 255, 255);
  border-color: rgb(95, 176, 228);
  border-radius: 0px;
  margin-bottom: 0px;
  z-index: 100;
}
.navbar-bootsnipp:nth-of-type(2) {
  border-top-width: 50px;
  z-index: 50
}

.navbar-bootsnipp.affix-top {
  position: absolute;
  top: 50px;
  width: 100%;
}
.navbar-bootsnipp.affix {
  top: 50px;
  width: 100%;
}
.navbar-bootsnipp .navbar-toggle .icon-bar {
  background-color: rgb(95, 176, 228);
}

.navbar-bootsnipp .navbar-brand {
  color: rgb(95, 176, 228);
  font-weight: 900;
  letter-spacing: 2px;
}

.navbar-bootsnipp .navbar-nav > li > a {
  border: 0px solid rgb(95, 176, 228);
  color: rgb(120, 120, 120);
  padding: 15px 14px;
}

.navbar-bootsnipp .navbar-nav > li > form > .input-group > input,
.navbar-bootsnipp .navbar-nav > li > form > .input-group > .input-group-btn > .btn {
  border-radius: 0px;
}

.navbar-bootsnipp .navbar-nav > li:not(.disabled).open > a,
.navbar-bootsnipp .navbar-nav > li:not(.disabled).active > a,
.navbar-bootsnipp .navbar-nav > li:not(.disabled) > a:hover,
.navbar-bootsnipp .navbar-nav > li:not(.disabled) > a:focus {
  border-left-width: 5px;
  color: rgb(95, 176, 228);
  padding-left: 10px;
}
.navbar-bootsnipp .navbar-nav > li.disabled > a {
  color: rgb(200, 200, 200);
}

.navbar-bootsnipp .navbar-nav > li > .dropdown-menu {
  border-radius: 0;
  margin-right: -1px;
  min-width: 220px;
  padding: 0px;
}
.navbar-bootsnipp .navbar-nav > li:not(.dropdown-right) > .dropdown-menu {
  left: 0px;
  margin-left: -1px;
  right: auto;
}
.navbar-bootsnipp .navbar-nav > li > .dropdown-menu > li > a {
  border-left: 0px solid rgb(95, 176, 228);
  color: rgb(120, 120, 120);
  font-size: 16px;
  font-weight: 400;
  padding: 10px 20px;
  white-space: nowrap;
}
.navbar-bootsnipp .navbar-nav > li > .dropdown-menu > li.active > a,
.navbar-bootsnipp .navbar-nav > li > .dropdown-menu > li > a:hover,
.navbar-bootsnipp .navbar-nav > li > .dropdown-menu > li > a:focus {
  background-color: rgb(245, 245, 245);
  border-left-width: 5px;
  padding-left: 15px;
}

.navbar .bootsnipp-profile > a {
  padding-bottom: 9px;
  padding-top: 9px;
}
.navbar .bootsnipp-profile > a > img {
  border-radius: 50%;
  width: 32px;
}
.navbar .bootsnipp-profile > .dropdown-menu {
  width: 320px;
}
.navbar .bootsnipp-profile > .dropdown-menu > li > .row {
  padding: 5px 15px;
}
.navbar .bootsnipp-profile > .dropdown-menu > li > .row img {
  width: 100%;
}

.navbar-bootsnipp .bootsnipp-search {
  display: none;
}
.navbar-bootsnipp .bootsnipp-search .form-control {
  background-color: rgb(235, 235, 235);
  border-radius: 0px;
  border-width: 0px;
  font-size: 24px;
  padding: 30px 0px;
}
.navbar-bootsnipp .bootsnipp-search .form-control {
  background-color: rgb(235, 235, 235);
  border-radius: 0px;
  border-width: 0px;
  font-size: 24px;
  padding: 25px 0px;
}
.navbar-bootsnipp .bootsnipp-search .form-control:focus {
  border-color: transparent;
  outline: 0;
  -webkit-box-shadow: none;
  box-shadow: none;
}
.navbar-bootsnipp .bootsnipp-search .input-group-btn > .btn {
  padding: 14px 16px;
  border-radius: 0px;
}
.navbar-bootsnipp .bootsnipp-search .input-group-btn > .btn.active,
.navbar-bootsnipp .bootsnipp-search .input-group-btn > .btn:hover,
.navbar-bootsnipp .bootsnipp-search .input-group-btn > .btn:focus {
  padding: 14px 16px 14px 15px;
}
.navbar-bootsnipp .bootsnipp-search .input-group-btn > .btn-default {
  background-color: rgb(245, 245, 245);
}
.nav-padding {
  padding-top: 61px;
}

@media screen and (min-width: 768px) {
  .navbar-bootsnipp .navbar-brand {
    font-size: 20px;
    height: auto;
    padding: 15px 5px;
  }
  .navbar-bootsnipp .navbar-nav > li > a {
    font-size: 16px;
    letter-spacing: 1px;
  }
  .navbar-bootsnipp .navbar-nav > li:not(.disabled).open > a,
  .navbar-bootsnipp .navbar-nav > li:not(.disabled).active > a,
  .navbar-bootsnipp .navbar-nav > li:not(.disabled) > a:hover,
  .navbar-bootsnipp .navbar-nav > li:not(.disabled) > a:focus {
    border-bottom-width: 5px;
    border-left-width: 0px;
    padding-bottom: 10px;
    padding-left: 14px;
  }

  .navbar-bootsnipp .navbar-nav > li.disabled > a {
    padding-left: 10px;
    padding-right: 10px;
  }


  .navbar-bootsnipp .bootsnipp-search {
    background-color: rgb(235, 235, 235);
    display: block;
    position: absolute;
    top: 100%;
    width: 100%;
    -webkit-transform: rotateX(-90deg);
    -moz-transform: rotateX(-90deg);
    -o-transform: rotateX(-90deg);
    -ms-transform: rotateX(-90deg);
    transform: rotateX(-90deg);
    -webkit-transform-origin: 0 0 0;
    -moz-transform-origin: 0 0 0;
    -o-transform-origin: 0 0 0;
    -ms-transform-origin: 0 0 0;
    transform-origin: 0 0 0;
    visibility: hidden;
  }
  .navbar-bootsnipp .bootsnipp-search.open {
    -webkit-transform: rotateX(0deg);
    -moz-transform: rotateX(0deg);
    -o-transform: rotateX(0deg);
    -ms-transform: rotateX(0deg);
    transform: rotateX(0deg);
    visibility: visible;
  }
  .navbar-bootsnipp .bootsnipp-search > .container {
    padding: 0px;
  }
}

</style>

<nav class="[ navbar navbar-inverse navbar-fixed-top ][ navbar-bootsnipp animate ]" >
  <div class="[ container ]">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
      
      <ul class="nav navbar-nav navbar-right">
        <form action="index.php" method="GET" role="search" class="navbar-form navbar-left">
                <div class="form-group">
                  <input type="text" name="q" class="form-control" required="required" placeholder="ค้นหา" />
                  <select class="form-control" name="type" required="required">
                    <option value="all">ทั้งหมด</option>
                    <?php// include 'sub_q.php'; ?>
                    <option value="p_at">ผู้เขียน</option>
                    <option value="p_pu">สำนักพิมพ์</option>
                    <option value="p_br">ISBN </option>
                  </select>
                </div>
                <button type="submit" class="btn btn-default">ค้นหา</button>
              </form>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>