
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper"> 
        <h2>Pleaes Choose Action from Menu</h2>
    <!--sidebar end-->
    <!-- Successfull login alert by sess_success -->
  <?php if(isset($_SESSION['sess_Admin_Login_Success'])){ ?>
  <div class="alert alert-success"> <?php echo $_SESSION['sess_Admin_Login_Success'] ?></div>
  <?php } ?>

  <!-- Provide Some extra Alerts by sess_info -->
  <?php if(isset($_SESSION['sess_info'])){ ?>
  <div class="alert alert-success"> <?php echo $_SESSION['sess_info'] ?></div>
  <?php } ?>

  <!-- Provide Massage about admin or user -->
  <?php if (isset($_SESSION['sess_admin'])): ?>
    <div class="alert alert-success"> <?php echo $_SESSION['sess_admin']; ?></div>
  <?php endif ?>

 