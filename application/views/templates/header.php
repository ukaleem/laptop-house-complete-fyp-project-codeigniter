<!DOCTYPE html>
<html>
    <head>
        <title><?php echo $page_name;?></title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="<?php echo"$pg_tital1"; ?> project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<!--         <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap4.css');?>">
        <link rel="stylesheet" href="<?php echo base_url('assets/css/mystyle.css');?>">  -->

		<link rel="stylesheet" type="text/css" href=<?php echo base_url("assets/styles/bootstrap4/bootstrap.min.css"); ?>>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url("assets/css/cartcss.css"); ?>">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url("assets/styles/main_styles.css"); ?>">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/styles/regular_styles.css') ?>">
        <link rel="stylesheet" type="text/css" href=<?php echo base_url("assets/styles/regular_responsive.css"); ?>>

		<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/styles/responsive.css'); ?>">
        <!-- Plugins -->
        <link href=<?php echo base_url("assets/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"); ?> rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href=<?php echo base_url("assets/plugins/OwlCarousel2-2.2.1/owl.carousel.css"); ?>>
        <link rel="stylesheet" type="text/css" href=<?php echo base_url("assets/plugins/OwlCarousel2-2.2.1/owl.theme.default.css"); ?>>
        <link rel="stylesheet" type="text/css" href=<?php echo base_url("assets/plugins/OwlCarousel2-2.2.1/animate.css"); ?>>
        <link rel="stylesheet" type="text/css" href=<?php echo base_url("assets/plugins/slick-1.8.0/slick.css"); ?>>

		<!-- Online Links of style -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/scrollReveal.js/4.0.0-beta.25/scrollreveal.js"></script>
    	</head>
<body style="font-family: Berlin Sans FB">
    <!-- Header -->
    
    <header class="header">
        <div class="top_bar" style="border-bottom: solid 3px rgb(114, 26, 88)">
            <div class="container">
                <div class="row">
                    <div class="col d-flex flex-row">
                        <div class="top_bar_contact_item">
                            <div class="top_bar_icon"><img src=<?php echo base_url('assets/images/phone.png'); ?> alt="">
                            </div> 
                            <a href="#"><?php echo $pg_contant; ?></a>
                        </div>
                        <div class="top_bar_contact_item"><div class="top_bar_icon"><img src=<?php echo base_url('assets/images/mail.png'); ?> alt=""></div><a href="mailto:<?php echo $pg_email; ?>"><?php echo $pg_email; ?></a></div>
                        <div class="top_bar_content ml-auto">
                         
                            <?php if (isset($_SESSION['sess_name'])) { ?>
                            <div class="top_bar_user">
                                <div class="user_icon"><img src=<?php echo base_url('assets/images/home.png'); ?> alt=""></div>
                                <div><a href="<?php echo base_url("customer_controller/admin") ?>">Profile</a></div>
                                <div class="user_icon"><img src=<?php echo base_url('assets/images/exit.png'); ?> alt=""></div>
                                <div>
                                    <a href="<?php echo base_url("home/sigOut") ?>">Sign Out</a></div>
                            </div>

                            <?php } else { ?>
                            <div class="top_bar_user">
                                <div class="user_icon"><img src=<?php echo base_url('assets/images/user.svg'); ?> alt="">
                                </div>
                                <div><a href=<?php echo base_url("home/index/register"); ?>>Register</a></div>
                                <div><a href="<?php echo base_url("home/sigIn") ?>">Sign in</a></div>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>      
        </div>
        <!-- Header Main -->
        <div class="header_main">
            <div class="container">
                <div class="row">

                    <!-- Logo -->
                    <!-- Logo -->
                    <div class="col-lg-2 col-sm-3 col-3 order-1">
                        <div class="logo_container">
                            <div class="logo">
                                <a href="<?php echo base_url("home") ?>">
                                    <div><img height="120" width="140" src=<?php echo base_url('assets/images/lp.png'); ?> alt="Logo.png">
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Search -->
                    <div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
                        <div class="header_search">
                            <div class="header_search_content">
                                <div class="header_search_form_container">
                                    <form action="<?php echo base_url().'home/Search' ?>" method="post" class="header_search_form clearfix">
                                        <input type="search" name="searchBar" required="required" class="header_search_input" placeholder="Search for products...">
                                        <button type="submit" name="searchBtn" class="header_search_button trans_300" value="Submit"><img src=<?php echo base_url("assets/images/search.png"); ?> alt=""></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    
                    <div class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
                        <div class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
                            <!-- Cart -->
                            <div class="cart">
                                <div class="cart_container d-flex flex-row align-items-center justify-content-end">
                                    <div class="cart_icon">
                                        <img src=<?php echo base_url("assets/images/cart.png"); ?> alt="">
                                        <div class="cart_count">
                                            <span>
                                                <?php if (isset($CartCount)) {
                                                    echo $CartCount;
                                                } else {
                                                    echo "00";
                                                }?>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="cart_content">
                                        <div class="cart_text"><a href="<?php echo base_url('customer_controller/cartView'); ?>">Cart</a></div>
                                        <!-- <div class="cart_price">$00</div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Navigation -->

        <nav class="main_nav">
            <div class="container">
                <div class="row">
                    <div class="col">
                        
                        <div class="main_nav_content d-flex flex-row">

                            <!-- Categories Menu -->

                            <div class="cat_menu_container">
                                <div class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
                                    <div class="cat_burger"><span></span><span></span><span></span></div>
                                    <div class="cat_menu_text">categories</div>
                                </div>
                                <ul class="cat_menu">
                                <?php for ($i=0; $i <count($catagories); $i++) { ?>
                                    <li><a href="<?php echo base_url('random_controller/randomView'); ?>"> 
                                        <?php $data =$catagories[$i]['cat_title']; echo $catagories[$i]['cat_title'];?>
                                        <i class="fas fa-chevron-right ml-auto"></i></a></li>
                                <?php } ?>
                                </ul>
                            </div>

                            <!-- Main Nav Menu -->

                            <div class="main_nav_menu ml-auto">
                                <ul class="standard_dropdown main_nav_dropdown">
                                    <!-- <li> <a href="#">Home<i class="fas fa-chevron-down"></i></a></li> -->
                                    <li> <a href="http://localhost/Leptop_House/home#daily_products">Daily Products<i class="fas fa-chevron-down"></i></a> </li>
                                    <li> <a href="<?php echo base_url('PlaceOrder_controller/placeOrderByForm'); ?>">Place Order<i class="fas fa-chevron-down"></i></a> </li>
                                    <li> <a href="#footer">About Us<i class="fas fa-chevron-down"></i></a> </li>
                                    <li><a href="http://localhost/Leptop_House/home#contact_us">Contacts<i class="fas fa-chevron-down"></i></a></li>

                                    <li><a href="<?php echo base_url('feedback_controller/feedbackView'); ?>">FeedBacks<i class="fas fa-chevron-down"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        
       

    </header>
