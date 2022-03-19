<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href=<?php echo base_url("assets/admin_panel_assets/img/Russia.png");?> >

  <title>Admin Login</title>

  <!-- Bootstrap CSS -->
  <link href=<?php echo base_url("assets/admin_panel_assets/css/bootstrap.min.css");?> rel="stylesheet">
  <!-- bootstrap theme -->
  <link href=<?php echo base_url("assets/admin_panel_assets/css/bootstrap-theme.css");?> rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href=<?php echo base_url("assets/admin_panel_assets/css/elegant-icons-style.css");?> rel="stylesheet" />
  <link href=<?php echo base_url("assets/admin_panel_assets/css/font-awesome.css");?> rel="stylesheet" />
  <!-- Custom styles -->
  <link href=<?php echo base_url("assets/admin_panel_assets/css/style.css");?> rel="stylesheet">
  <link href=<?php echo base_url("assets/admin_panel_assets/css/style-responsive.css");?> rel="stylesheet" />

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <!-- 
    =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>

<body class="login-img3-body">

  <div class="container">
    
    <form class="login-form" method="POST" action='<?php echo base_url("home/admin_home"); ?>'>
      <div class="login-wrap">
        <?php echo validation_errors('<div class="alert alert-danger">','</div>');?>
        <?php 
          if(isset($_SESSION) and isset($_SESSION['sess_Administrator_Not_Exist'])){ ?>
          <div class="alert alert-danger"> <?php echo $_SESSION['sess_Administrator_Not_Exist'] ?></div>
          <?php
          }
        ?>
        <?php 
          if(isset($_SESSION) and isset($_SESSION['sess_Admin_Login_Error'])){ ?>
          <div class="alert alert-danger"> <?php echo $_SESSION['sess_Admin_Login_Error'] ?></div>
          <?php
          }
        ?>
        <p class="login-img">
          <!-- <i class="icon_lock_alt"></i> -->
          <img src="<?php echo base_url("assets/images/shopping-icon.png");?>">
        </p>
        <div class="input-group">
          <span class="input-group-addon">
            <!-- <i class="icon_profile"></i> -->
            <img src="<?php echo base_url("assets/images/user.png");?>">
          </span>
          <input type="text" class="form-control" id="adminName" name="adminName" placeholder="Username" autofocus required>
        </div>
        <div class="input-group">
          <span class="input-group-addon">
            <!-- <i class="icon_key_alt"></i> -->
            <img src="<?php echo base_url("assets/images/phone.png");?>">
          </span>
          <input type="password" id="adminPassword" name="adminPassword" class="form-control" placeholder="Password" required>
        </div>
        <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right"> <a href="#"> Forgot Password?</a></span>
        </label>
        <button class="btn btn-primary btn-lg btn-block" id="adminLoginBtn" name="adminLoginBtn" type="submit">Login</button>
        <!-- <button class="btn btn-info btn-lg btn-block" type="submit">Signup</button> -->
      </div>
    </form>
    <!-- <div class="text-right">
      <div class="credits">
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
    </div> -->
  </div>


</body>

</html>
