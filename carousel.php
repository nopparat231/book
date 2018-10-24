<?php include 'config_page.php'; ?>


		<!-- Carousel -->
    	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
			  	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			    <div class="item active">
			    	<img src="pimg/<?php echo $row_cf['carousel_img_1']; ?>" alt="First slide">
                    <!-- Static Header -->
                    
			    </div>
			    <div class="item">
			    	<img src="pimg/<?php echo $row_cf['carousel_img_2']; ?>" alt="Second slide">
			    	<!-- Static Header -->
                    
			    </div>

                 <div class="item">
                    <img src="pimg/<?php echo $row_cf['carousel_img_3']; ?>" alt="Second slide">
                    <!-- Static Header -->
                    
                </div>
			
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    	<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    	<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div><!-- /carousel -->
