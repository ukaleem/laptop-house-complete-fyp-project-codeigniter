<?php if (isset($_SESSION['sess_WrongTry'])) { ?>
	<div class="alert alert-danger">
	<?php echo $_SESSION['sess_WrongTry']; ?>
</div>
<?php } ?>
<?php unset($_SESSION['sess_WrongTry']); ?>

<?php if (isset($_SESSION['sess_AlreadySignIn'])) { ?>
	<div class="alert alert-danger">
	<?php echo $_SESSION['sess_AlreadySignIn']; ?>
</div>
<?php } ?>
<?php unset($_SESSION['sess_AlreadySignIn']); ?>

<!-- Tested Product model  -->
	<!-- <?php 
	//echo "<pre>";
	//print_r($products);
	//exit(); ?> -->

	  <!-- slider start-->
  <div class="slider1">
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="4000">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="assets/images/slider_3.png" class="d-block w-100" alt="...">
        <div class="carousel-caption mb-2">
          <h1 class="text text-white">Laptop House</h1>
          <h4 class="text text-white" >Name of Quality</h4>
          <p class="text text-white">for more details contact us...</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="assets/images/slider_1.png" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="assets/images/Slider_2.png" class="d-block w-100" alt="...">
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
	<!-- Home -->
	<!-- Products start -->
<hr style="color: orange;">
        <div class="container text-center" style="padding-top: 20px;" id="daily_products">
        	
    	<?php if (isset($_SESSION['sess_cartAdd_success'])) { ?>
		<div class="alert alert-success">
		<?php echo $_SESSION['sess_cartAdd_success']; ?>
		</div>
		<?php } ?>
		<?php unset($_SESSION['sess_cartAdd_success']); ?>

            <h2 class="text-primary">Daily Products!</h2>
            <p class="pt-2">Limited Time Offers on Product</p>
          <div class="row text-center">
          	<?php if (count($products) == 0){ ?>
            		<h3 class="text-info text-center">No Product is availble to buy...</h3>
            	<?php } ?>

          	<?php for ($f_A_L=0; $f_A_L < count($products); $f_A_L++) { 
                  //echo "<tr>";
                  for ($s_A_L=0; $s_A_L < 1 ; $s_A_L++) {  ?> 
                 
            <div class="col-lg-3 col-md-6 mb-4">

              <div class="card">
                <img class="card-img-top" height="200px" width="200px" src=<?php echo base_url().'upload/images/'.$products[$f_A_L]['p_image']; ?> alt="Book 01">
                <div class="card-header">
                  <h4 class="text-primary">
                    <?php $H_Name = $products[$f_A_L]['p_name']; echo ucfirst($H_Name);?> 
                  </h4>
                </div>
                <div class="card-body">
                  <h4 class="card-title"> 
                   <?php echo 'Rs.'.$products[$f_A_L]['p_price'];?>
                  </h4>
                  <p  class="card-text text text-info" style="height: 70px;text-align: justify;">
                    <?php echo $products[$f_A_L]['p_description']; ?>
                  </p>
                </div>
                <div class="card-footer">
                	<?php if (isset($_SESSION['user_id'])){ ?>
                	<form action="<?php echo base_url('cart_controller/addToCart'); ?>" method ="Post">
                		<input type="hidden" name="user_id" <?php echo "value='".$_SESSION['user_id']."'" ?>>
                		<input type="hidden" name="pro_id" <?php echo "value='".$products[$f_A_L]['p_id']."'" ?>>
                		<button class="btn btn-success" id="addToCartBtn" name="addToCartBtn" value="1">
                			Add to Cart
                		</button>
                	</form>
                	<?php } else { ?>
                	<form action="<?php echo base_url('home/sigIn'); ?>" method ="Post">
                		<button class="btn btn-success" id="login" name="login">
                			Buy Now
                		</button>
                	</form>
                	<?php }?>
                </form>
                </div>
              </div>
            </div>
              <?php }  } ?>
          </div>
        </div>
	<!-- End Products -->
	
	<!-- Banner -->
<hr style="color: orange;">
	<div class="banner_2">
		<div class="banner_2_background" style="background-image:url(<?php echo base_url('assets/images/banner_2_background.jpg'); ?>)"></div>
		<div class="banner_2_container">
			<div class="banner_2_dots">
			</div>
			<!-- Banner 2 Slider -->

			<div class="owl-carousel owl-theme banner_2_slider">

				<!-- Banner 2 Slider Item -->
				<div class="owl-item">
					<div class="banner_2_item">
						<div class="container fill_height">
							<div class="row fill_height">
								<div class="col-lg-4 col-md-6 fill_height">
									<div class="banner_2_content">
										<div class="banner_2_category">Laptops</div>
										<div class="banner_2_title">MacBook Air 13</div>
										<div class="banner_2_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</div>
										<div class="rating_r rating_r_4 banner_2_rating"><i></i><i></i><i></i><i></i><i></i></div>
										<div class="button banner_2_button"><a href="#">Explore</a></div>
									</div>
									
								</div>
								<div class="col-lg-8 col-md-6 fill_height">
									<div class="banner_2_image_container">
										<div class="banner_2_image"><img src=<?php echo base_url("assets/images/banner_2_product.png"); ?> alt=""></div>
									</div>
								</div>
							</div>
						</div>			
					</div>
				</div>

				<!-- Banner 2 Slider Item -->
				<div class="owl-item">
					<div class="banner_2_item">
						<div class="container fill_height">
							<div class="row fill_height">
								<div class="col-lg-4 col-md-6 fill_height">
									<div class="banner_2_content">
										<div class="banner_2_category">Laptops</div>
										<div class="banner_2_title">MacBook Air 13</div>
										<div class="banner_2_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</div>
										<div class="rating_r rating_r_4 banner_2_rating"><i></i><i></i><i></i><i></i><i></i></div>
										<div class="button banner_2_button"><a href="#">Explore</a></div>
									</div>
									
								</div>
								<div class="col-lg-8 col-md-6 fill_height">
									<div class="banner_2_image_container">
										<div class="banner_2_image"><img src=<?php echo base_url("assets/images/banner_2_product.png"); ?> alt=""></div>
									</div>
								</div>
							</div>
						</div>			
					</div>
				</div>

				<!-- Banner 2 Slider Item -->
				<div class="owl-item">
					<div class="banner_2_item">
						<div class="container fill_height">
							<div class="row fill_height">
								<div class="col-lg-4 col-md-6 fill_height">
									<div class="banner_2_content">
										<div class="banner_2_category">Laptops</div>
										<div class="banner_2_title">MacBook Air 13</div>
										<div class="banner_2_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas fermentum laoreet.</div>
										<div class="rating_r rating_r_4 banner_2_rating"><i></i><i></i><i></i><i></i><i></i></div>
										<div class="button banner_2_button"><a href="#">Explore</a></div>
									</div>
									
								</div>
								<div class="col-lg-8 col-md-6 fill_height">
									<div class="banner_2_image_container">
										<div class="banner_2_image"><img src=<?php echo base_url("images/banner_2_product.png"); ?> alt=""></div>
									</div>
								</div>
							</div>
						</div>			
					</div>
				</div>

			</div>
		</div>
	</div>
<hr style="color: orange;">
	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" style="background-image: url(<?php echo base_url('assets/images/blog_single_background.jpg'); ?>);" data-speed="0.8">
				<!-- Adverts -->
				<div class="adverts">
					<div class="container">
						<div class="row">

							<div class="col-lg-4 advert_col">
								
								<!-- Advert Item -->

								<div class="advert d-flex flex-row align-items-center justify-content-start" style="background-color:#ffffff;">
									<div class="advert_content">
										<div class="advert_title"><a href="#">Trends 2018</a></div>
										<div class="advert_text">Lorem ipsum dolor sit amet, consectetur adipiscing Donec et.</div>
									</div>
									<div class="ml-auto"><div class="advert_image"><img src=<?php echo base_url("assets/images/adv_1.png") ?> alt=""></div></div>
								</div>
							</div>

							<div class="col-lg-4 advert_col">
								
								<!-- Advert Item -->

								<div class="advert d-flex flex-row align-items-center justify-content-start" style="background-color:#ffffff;">
									<div class="advert_content">
										<div class="advert_subtitle">Trends 2018</div>
										<div class="advert_title_2"><a href="#">Sale -45%</a></div>
										<div class="advert_text">Lorem ipsum dolor sit amet, consectetur.</div>
									</div>
									<div class="ml-auto"><div class="advert_image"><img src=<?php echo base_url("assets/images/adv_2.png"); ?> alt=""></div></div>
								</div>
							</div>

							<div class="col-lg-4 advert_col">
								
								<!-- Advert Item -->

								<div class="advert d-flex flex-row align-items-center justify-content-start"style="background-color:#ffffff;">
									<div class="advert_content">
										<div class="advert_title"><a href="#">Trends 2018</a></div>
										<div class="advert_text">Lorem ipsum dolor sit amet, consectetur.</div>
									</div>
									<div class="ml-auto"><div class="advert_image"><img src=<?php echo base_url("assets/images/adv_3.png"); ?> alt=""></div></div>
								</div>
							</div>

						</div>
					</div>
				</div>
		</div>
	</div>
    <!-- Characteristics -->
<hr style="color: orange;">
	<div class="characteristics">
		<div class="container">
			<div class="row">

				<!-- Char. Item -->
				<div class="col-lg-3 col-md-6 char_col">
					
					<div class="char_item d-flex flex-row align-items-center justify-content-start">
						<div class="char_icon"><img src=<?php echo base_url("assets/images/char_1.png"); ?> alt=""></div>
						<div class="char_content">
							<div class="char_title">Free Delivery</div>
							<div class="char_subtitle">from $50</div>
						</div>
					</div>
				</div>

				<!-- Char. Item -->
				<div class="col-lg-3 col-md-6 char_col">
					
					<div class="char_item d-flex flex-row align-items-center justify-content-start">
						<div class="char_icon"><img src=<?php echo base_url("assets/images/char_2.png"); ?> alt=""></div>
						<div class="char_content">
							<div class="char_title">Free Delivery</div>
							<div class="char_subtitle">from $50</div>
						</div>
					</div>
				</div>

				<!-- Char. Item -->
				<div class="col-lg-3 col-md-6 char_col">
					
					<div class="char_item d-flex flex-row align-items-center justify-content-start">
						<div class="char_icon"><img src=<?php echo base_url("assets/images/char_3.png"); ?> alt=""></div>
						<div class="char_content">
							<div class="char_title">Free Delivery</div>
							<div class="char_subtitle">from $50</div>
						</div>
					</div>
				</div>

				<!-- Char. Item -->
				<div class="col-lg-3 col-md-6 char_col">
					
					<div class="char_item d-flex flex-row align-items-center justify-content-start">
						<div class="char_icon"><img src=<?php echo base_url("assets/images/char_4.png"); ?> alt=""></div>
						<div class="char_content">
							<div class="char_title">Free Delivery</div>
							<div class="char_subtitle">from $50</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<hr style="color: orange;">	
        	<!-- page start-->
<hr style="color: orange;">
       <div class="container text-center" style="padding:20px 200px 30px 200px; background-image: url('<?php echo base_url('assets/images/banner_2_background.jpg'); ?>');" id="contact_us">
       	<h2 class="text-primary">Contact Us!</h2>
            <p class="pt-2">We Contact you back with in 12/hours</p>
        <div class="row text-center">
          <div class="col-lg-6">
            <div class="recent">
              <h3 class="text text-muted">Send us a message</h3>
            </div>
            <!-- <div id="sendmessage">Your message has been sent. Thank you!</div> -->
            <div id="errormessage"></div>
            <form action="<?php echo base_url('home/SendMessage'); ?>" method="post" role="form" class="contactForm">
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                <div class="validation"></div>
              </div>

              <div class="text-center"><button type="submit" name="messageBtn" name="messageBtn" class="btn btn-primary btn-lg">Send Message</button></div>
            </form>
          </div>

          <div class="col-lg-6">
            <div class="recent">
              <h3 class="text text-muted">Get in touch with us</h3>
              <!-- Deleted Successfull Alerts -->
          <?php if (isset($_SESSION['sess_Msg_error'])) { ?>
            <div class="alert alert-danger">
            <?php echo $_SESSION['sess_Msg_error']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_Msg_error']); ?>

          <?php if (isset($_SESSION['sess_MsgInsert_successfull'])) { ?>
            <div class="alert alert-success">
            <?php echo $_SESSION['sess_MsgInsert_successfull']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_MsgInsert_successfull']); ?>
            </div>
            <div class="text text-info" style="text-align: center;">
            	<br>
              <h4>Address:</h4><?php echo $pg_address;  ?><br>
              <h4>Telephone:</h4><?php echo $pg_contant;  ?></br>
            </div>
          </div>
        </div>
        <hr style="color: orange;">
        <!-- page end-->
        </div>
        <hr style="color: orange;">

