<style type="text/css">

.list-group.panel > .list-group-item {
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px
}


</style>
<div class="container-fluid">
  
  <div class="row">
    <div class="col-md-2">
      
      <!-- menu -->
      <div id="MainMenu">
        <div class="list-group panel">
          <a href="#" class="list-group-item list-group-item-success" data-parent="#MainMenu">Item 1</a>
          <a href="#" class="list-group-item list-group-item-success" data-parent="#MainMenu">Item 2</a>
          <a href="#demo3" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Item 3 <i class="fa fa-caret-down"></i></a>
          <div class="collapse" id="demo3">
            <a href="#SubMenu1" class="list-group-item" data-toggle="collapse" data-parent="#SubMenu1">Subitem 1 <i class="fa fa-caret-down"></i></a>
            <div class="collapse list-group-submenu" id="SubMenu1">
              <a href="#" class="list-group-item" data-parent="#SubMenu1">Subitem 1 a</a>
              <a href="#" class="list-group-item" data-parent="#SubMenu1">Subitem 2 b</a>
              <a href="#SubSubMenu1" class="list-group-item" data-toggle="collapse" data-parent="#SubSubMenu1">Subitem 3 c <i class="fa fa-caret-down"></i></a>
              <div class="collapse list-group-submenu list-group-submenu-1" id="SubSubMenu1">
                <a href="#" class="list-group-item" data-parent="#SubSubMenu1">Sub sub item 1</a>
                <a href="#" class="list-group-item" data-parent="#SubSubMenu1">Sub sub item 2</a>
              </div>
              <a href="#" class="list-group-item" data-parent="#SubMenu1">Subitem 4 d</a>
            </div>
            <a href="javascript:;" class="list-group-item">Subitem 2</a>
            <a href="javascript:;" class="list-group-item">Subitem 3</a>
          </div>
          <a href="#demo4" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Item 4  <i class="fa fa-caret-down"></i></a>
          <div class="collapse" id="demo4">
            <a href="" class="list-group-item">Subitem 1</a>
            <a href="" class="list-group-item">Subitem 2</a>
            <a href="" class="list-group-item">Subitem 3</a>
          </div>
        </div>
      </div>
    </div>
  </div>
    
</div>