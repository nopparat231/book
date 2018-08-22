<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<style type="text/css">
   
   .team_columns_carousel_wrapper {
    padding: 25px;
    overflow: hidden
}
.team_columns_carousel_control_left,
.team_columns_carousel_control_right {
    top: 26px;
    z-index: 2;
    opacity: 1;
    width: 35px;
    height: 35px;
    border: 0;
    text-shadow: none;
    text-align: center;
    -webkit-transition: all ease-in-out .3s;
    transition: all ease-in-out .3s
}
.team_columns_carousel_control_icons {
    line-height: 35px;
    font-size: 20px!important;
    font-weight: normal!important;
    margin-top:8px;
}
.team_columns_carousel_control_left {
    left: 26px!important
}
.team_columns_carousel_control_right {
    left: 63px!important
}
.adv_left {
    left: 41px!important
}
.adv_right {
    left: 78px!important
}
.team_columns_item_image {
    padding-top: 60px;
    padding-bottom: 25px
}
.team_columns_item_image img {
    width: 100%;
    -webkit-filter: grayscale(70%);
    -moz-filter: grayscale(70%);
    -ms-filter: grayscale(70%);
    -o-filter: grayscale(70%);
    filter: grayscale(70%);
    -webkit-transition: all ease-in-out .3s;
    -moz-transition: all ease-in-out .3s;
    -ms-transition: all ease-in-out .3s;
    -o-transition: all ease-in-out .3s;
    transition: all ease-in-out .3s
}
.team_columns_item_image:hover img {
    -webkit-filter: grayscale(0%);
    -moz-filter: grayscale(0%);
    -ms-filter: grayscale(0%);
    -o-filter: grayscale(0%);
    filter: grayscale(0%)
}
.team_columns_item_caption {
    padding: 10px;
    text-align: center;
    padding-bottom: 30px
}
.team_columns_item_caption>hr {
    width: 15%
}
.team_columns_item_caption h4 {
    font-weight: 800;
    text-transform: uppercase;
    font-family: 'Open Sans', sans-serif
}
.team_columns_item_caption h5 {
    font-weight: 600;
    text-transform: uppercase;
    font-family: 'Open Sans', sans-serif
}
.team_columns_item_caption p {
    font-weight: 400;
    margin-top: 20px;
    font-family: 'Open Sans', sans-serif
}
.team_columns_item_caption p a,
.team_columns_item_caption p a:visited {
    text-decoration: none;
    -webkit-transition: all ease-in-out .3s;
    transition: all ease-in-out .3s
}
.team_columns_item_social a,
.team_columns_item_social a:visited {
    width: 25px;
    float: left;
    height: 25px;
    display: block;
    line-height: 25px;
    margin-right: 2px;
    text-decoration: none;
    -webkit-transition: background ease-in-out .3s;
    transition: background ease-in-out .3s
}
@media(min-width:768px) and (max-width:789px) {
    .adv_team_columns_item_social a, .adv_team_columns_item_social a:visited {
        margin-right: 0
    }
}
.team_columns_carousel_wrapper {
    background: #fff
}
.team_columns_carousel_control_left,
.team_columns_carousel_control_left:hover,
.team_columns_carousel_control_left:active,
.team_columns_carousel_control_left:focus,
.team_columns_carousel_control_right,
.team_columns_carousel_control_right:hover,
.team_columns_carousel_control_right:active,
.team_columns_carousel_control_right:focus {
    color: #fff;
    background: #feb600!important
}
.team_columns_item_caption {
    color: #fff;
    background: #171717
}
.team_columns_item_caption>hr {
    border-top: 2px solid #feb600
}
.team_columns_item_caption p a,
.team_columns_item_caption p a:visited {
    color: #feb600
}
.team_columns_item_caption p a:hover,
.team_columns_item_caption p a:active {
    color: #cb9200
}
.team_columns_item_social a,
.team_columns_item_social a:visited {
    color: #171717;
    background: #feb600
}
.team_columns_item_social a:hover,
.team_columns_item_social a:active {
    background: #cb9200
}
.four_shows_one_move .cloneditem-1,
.four_shows_one_move .cloneditem-2,
.four_shows_one_move .cloneditem-3 {
    display: none
}
@media all and (min-width: 768px) {
    .four_shows_one_move .carousel-inner>.active.left,
    .four_shows_one_move .carousel-inner>.prev {
        left: -50%
    }
    .four_shows_one_move .carousel-inner>.active.right,
    .four_shows_one_move .carousel-inner>.next {
        left: 50%
    }
    .four_shows_one_move .carousel-inner>.left,
    .four_shows_one_move .carousel-inner>.prev.right,
    .four_shows_one_move .carousel-inner>.active {
        left: 0
    }
    .four_shows_one_move .carousel-inner .cloneditem-1 {
        display: block
    }
}
@media all and (min-width: 768px) and (transform-3d),
all and (min-width: 768px) and (-webkit-transform-3d) {
    .four_shows_one_move .carousel-inner>.item.active.right,
    .four_shows_one_move .carousel-inner>.item.next {
        -webkit-transform: translate3d(50%, 0, 0);
        transform: translate3d(50%, 0, 0);
        left: 0
    }
    .four_shows_one_move .carousel-inner>.item.active.left,
    .four_shows_one_move .carousel-inner>.item.prev {
        -webkit-transform: translate3d(-50%, 0, 0);
        transform: translate3d(-50%, 0, 0);
        left: 0
    }
    .four_shows_one_move .carousel-inner>.item.left,
    .four_shows_one_move .carousel-inner>.item.prev.right,
    .four_shows_one_move .carousel-inner>.item.active {
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
        left: 0
    }
}
@media all and (min-width: 992px) {
    .four_shows_one_move .carousel-inner>.active.left,
    .four_shows_one_move .carousel-inner>.prev {
        left: -25%
    }
    .four_shows_one_move .carousel-inner>.active.right,
    .four_shows_one_move .carousel-inner>.next {
        left: 25%
    }
    .four_shows_one_move .carousel-inner>.left,
    .four_shows_one_move .carousel-inner>.prev.right,
    .four_shows_one_move .carousel-inner>.active {
        left: 0
    }
    .four_shows_one_move .carousel-inner .cloneditem-2,
    .four_shows_one_move .carousel-inner .cloneditem-3 {
        display: block
    }
}
@media all and (min-width: 992px) and (transform-3d),
all and (min-width: 992px) and (-webkit-transform-3d) {
    .four_shows_one_move .carousel-inner>.item.active.right,
    .four_shows_one_move .carousel-inner>.item.next {
        -webkit-transform: translate3d(25%, 0, 0);
        transform: translate3d(25%, 0, 0);
        left: 0
    }
    .four_shows_one_move .carousel-inner>.item.active.left,
    .four_shows_one_move .carousel-inner>.item.prev {
        -webkit-transform: translate3d(-25%, 0, 0);
        transform: translate3d(-25%, 0, 0);
        left: 0
    }
    .four_shows_one_move .carousel-inner>.item.left,
    .four_shows_one_move .carousel-inner>.item.prev.right,
    .four_shows_one_move .carousel-inner>.item.active {
        -webkit-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
        left: 0
    }
}
</style>

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<script type="text/javascript" src="http://yourjavascript.com/21051171187/jquery-touchswipe-min.js"></script>
<script type="text/javascript" src="http://yourjavascript.com/11873115711/jquery-1-12-4-min.js"></script>
<script type="text/javascript" src="http://yourjavascript.com/71712155041/responsive-bootstrap-carousel.js"></script>
<div class="container">
   <div class="row">
      <div id="adv_team_4_columns_carousel" class="carousel slide four_shows_one_move team_columns_carousel_wrapper" data-ride="carousel" data-interval="2000" data-pause="hover">
         <!--========= Wrapper for slides =========-->
         <div class="carousel-inner" role="listbox">
            <!--========= 1st slide =========-->
            <div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="http://placehold.it/150x150" alt="slider 01">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN1</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN2</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN3</h5>
                  </div>
               </div>
            </div>
            <!--========= 2nd slide =========-->
            <div class="item active">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
            </div>
            <!--========= 3rd slide =========-->
            <div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
            </div>
            <!--========= 4th slide =========-->
            <div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
            </div>
            <!--========= 5th Slide =========-->
            <div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
            </div>
            <!--========= 6th Slide =========-->
            <div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="http://placehold.it/150x150" alt="slider 01">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
            </div>
            <!--========= 7th Slide =========-->
            <div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="http://placehold.it/150x150" alt="slider 01">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
            </div>
            <!--========= 8th Slide =========-->
            <div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="http://placehold.it/150x150" alt="slider 01">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lahore</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="http://placehold.it/150x150" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Karachi</h4>
                     <hr>
                     <h5>PAKISTAN</h5>
                  </div>
               </div>
            </div>
         </div>
         <!--======= Navigation Buttons =========-->
         <!--======= Left Button =========-->
         <a class="left carousel-control team_columns_carousel_control_left adv_left" href="#adv_team_4_columns_carousel" role="button" data-slide="prev">
         <span class="fa fa-angle-left team_columns_carousel_control_icons" aria-hidden="true"></span>
         <span class="sr-only">Previous</span>
         </a>
         <!--======= Right Button =========-->
         <a class="right carousel-control team_columns_carousel_control_right adv_right" href="#adv_team_4_columns_carousel" role="button" data-slide="next">
         <span class="fa fa-angle-right team_columns_carousel_control_icons" aria-hidden="true"></span>
         <span class="sr-only">Next</span>
         </a>
      </div>
   </div>
</div>