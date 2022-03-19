<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">

  <!-- 
    ---- This link is not working change leater on  -->
  <link rel="shortcut icon" href="<?php echo base_url('assets/admin_panel_assets/img/favicon.png');?>">

  <title>Admin Home - Leptop House</title>

  <!-- Bootstrap CSS -->
  <link href="<?php echo base_url('assets/admin_panel_assets/css/bootstrap.min.css');?>" rel="stylesheet">
  <!-- bootstrap theme -->
  <link rel="stylesheet" href="<?php echo base_url('assets/admin_panel_assets/css/bootstrap-theme.css');?>" >
  <!--external css-->
  <!-- font icon -->
  <link href="<?php echo base_url('assets/admin_panel_assets/css/elegant-icons-style.css');?>" rel="stylesheet" />
  <link href="<?php echo base_url('assets/admin_panel_assets/css/font-awesome.min.css');?>" rel="stylesheet" />
  <!-- full calendar css-->
  <link href="<?php echo base_url('assets/admin_panel_assets/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css');?>" rel="stylesheet" />
  <link href="<?php echo base_url('assets/admin_panel_assets/assets/fullcalendar/fullcalendar/fullcalendar.css');?>" rel="stylesheet" />
  <!-- easy pie chart-->
  <link href="<?php echo base_url('assets/admin_panel_assets/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css');?>" rel="stylesheet" type="text/css" media="screen" />
  <!-- owl carousel -->
  <link rel="stylesheet" href="<?php echo base_url('assets/admin_panel_assets/css/owl.carousel.css');?>" type="text/css">
  <link href="<?php echo base_url('assets/admin_panel_assets/css/jquery-jvectormap-1.2.2.css');?>" rel="stylesheet">
  <!-- Custom styles -->
  <link rel="stylesheet" href="<?php echo base_url('assets/admin_panel_assets/css/fullcalendar.css');?>">
  <link href="<?php echo base_url('assets/admin_panel_assets/css/widgets.css');?>" rel="stylesheet">
  <link href="<?php echo base_url('assets/admin_panel_assets/css/style.css');?>" rel="stylesheet">
  <link href="<?php echo base_url('assets/admin_panel_assets/css/style-responsive.css');?>" rel="stylesheet" />
  <link href="<?php echo base_url('assets/admin_panel_assets/css/xcharts.min.css');?>" rel=" stylesheet">
  <link href="<?php echo base_url('assets/admin_panel_assets/css/jquery-ui-1.10.4.min.css');?>" rel="stylesheet">
</head>

<body>
  <!-- container section start -->
  <section id="container" class="">


    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="<?php echo base_url('admin_Home/my_profile'); ?>" class="logo">Admin <span class="lite">Panel</span></a>
      <!--logo end-->

      <!-- <div class="nav search-row" id="top_menu"> -->
        <!--  search form start -->
        <!-- <ul class="nav top-menu"> -->
          <!-- <li> -->
            <!-- <form class="navbar-form"> -->
              <!-- <input class="form-control" placeholder="Search" type="text"> -->
            <!-- </form> -->
          <!-- </li> -->
        <!-- </ul> -->
        <!--  search form end -->
      <!-- </div> -->

      <div class="top-nav notification-row">
        <!-- notificatoin dropdown start-->
        <ul class="nav pull-right top-menu">
          <!-- task notificatoin end -->
          <!-- inbox notificatoin start-->
          <li id="mail_notificatoin_bar" class="dropdown">
            <a href="<?php echo base_url('admin_Home/admin_message'); ?>">
                            <i class="icon-envelope-l"></i>
                            <!-- <span class="badge bg-important">5</span> -->
            </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-blue"></div>
              <li>
                <p class="blue">New messages came here!</p>
              </li>
            </ul>
          </li>
          <!-- inbox notificatoin end -->
          <!-- alert notification start-->
          <li id="alert_notificatoin_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-bell-l"></i>
                            <!-- <span class="badge bg-important">7</span> -->
                        </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-blue"></div>
              <li>
                <p class="blue">New notifications Show Here</p>
              </li>
            </ul>
          </li>
          <!-- alert notification end-->
          <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.jpg">
                            </span>
                            <span class="username"><?php if(isset($_SESSION['sess_Admin_Name'])){  echo $_SESSION['sess_Admin_Name'];} else { echo "Admin";} ?></span>
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>
              <li class="eborder-top">
                <a href="<?php echo base_url('admin_Home/my_profile');?>"><i class="icon_profile"></i> My Profile</a>
              </li>
              <li>
                <a href="<?php echo base_url('home/admin_login');?>"><i class="icon_key_alt"></i> Log Out</a>
              </li>
            </ul>
          </li>
          <!-- user login dropdown end -->
        </ul>
        <!-- notificatoin dropdown end-->
      </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="active">
            <a class="" href="<?php echo base_url('admin_Home/admin_dashboard');?>">
                          <i class="icon_house_alt"></i>
                          <span>Dashboard</span>
                      </a>
          </li>
          <li>
            <a href="<?php echo base_url('admin_Home/admin_products');?>" class="">
                          <span>Products</span>
                      </a>
          </li>

          <li>
            <a href="<?php echo base_url('admin_Home/admin_AddCatagories');?>" class="">
                          <span>Add Categories</span>
            </a>
          </li>

          <li>
            <a class="" href="<?php echo base_url('admin_Home/admin_orders');?>">
                          <span>Orders</span>
                      </a>
          </li>
          <li>
            <a class="" href="<?php echo base_url('admin_Home/admin_customers');?>">
                          <span>Customers</span> </a>
          </li>
          <li>
            <a class="" href="<?php echo base_url('admin_Home/admin_placeorders');?>">
                          <span>Placed Orders</span> </a>
          </li>
          <li>
            <a class="" href="<?php echo base_url('admin_Home/admin_feedbacks');?>">
                          <span>FeedBacks</span> </a>
          </li>

        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>