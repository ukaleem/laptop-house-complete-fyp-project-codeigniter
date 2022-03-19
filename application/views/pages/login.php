<div class="container" style="padding-bottom: 2%;">
  <div class="row">
    <div class="col-lg-3"></div>
    <div class="col-lg-6">

          <h2 class="text-success text-center">Sign in Now!</h2>
          <p class="text-primary text-center">FILL IN THE DETAILS TO GET Login on over site !. </p>

          <?php 
          if(isset($_SESSION['sess_error'])){ ?>
          <div class="alert alert-success"> <?php echo $_SESSION['sess_error'] ?></div>
          <?php
          }
          ?>

          <?php echo validation_errors('<div class="alert alert-danger">','</div>');?>

          <form action="<?php echo base_url('home/sigIn') ?>" method="POST">

              <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" class="form-control" name="email" id="email">
              </div>

              <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" name="password" id="password">
              </div>
              <div class="form-group">
                <div class="checkbox">
                  <label>
                    <input type="checkbox" value="remember-me">
                    Remember Password
                  </label>
                </div>
              </div>
              <div class="text-center">
                <a class="d-block small mt-3" href="<?php echo base_url('home/index/register');?>">Register an Account</a>
                <a class="d-block small text-danger" href="<?php echo base_url('home/forget_password') ?>">Forgot Password?</a>
              </div>
              <div class="text-center">
                <button class="btn btn-lg btn-success" name="login">
                  Login Now
                </button>
              </div>
          </form>
    <div class="col-lg-3"></div>
    </div>
  </div>
</div>