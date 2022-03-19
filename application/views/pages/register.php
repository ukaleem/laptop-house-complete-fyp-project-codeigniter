  <div class="container" style="padding-bottom: 5%">
    <div class="row">
      <div class="col-lg-3"></div>
      <div class="col-lg-6">

        <h2 class="text-center text-success">Register Now!</h1>
        <p class="text-center text-danger">FILL IN THE DETAILS TO GET REGISTER on over site !.</p>

        <!-- Inserted Successfull Alerts -->
        <?php if (isset($_SESSION['sess_SigUp_error'])) { ?>
            <div class="alert alert-danger">
            <?php echo $_SESSION['sess_SigUp_error']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_SigUp_error']); ?>

          <?php if (isset($_SESSION['sess_SigUp_success'])) { ?>
            <div class="alert alert-success">
            <?php echo $_SESSION['sess_SigUp_success']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_SigUp_success']); ?>

        <?php echo validation_errors('<div class="alert alert-danger">','</div>');?>

        <form action="<?php echo base_url('customer_controller/customer_signup')?>" method="POST">
            <div class="form-group">
              <label for="username">Your Name:</label>
              <input type="text" class="form-control" name="username" id="username" required>
            </div>

            <div class="form-group">
              <label for="email">Email:</label>
              <input type="text" class="form-control" name="email" id="email" required>
            </div>

            <div class="form-group">
              <label for="password">Password:</label>
              <input type="password" class="form-control" name="password" id="password" required>
            </div>

            <!-- <div class="form-group">
              <label for="password">Confrom Password:</label>
              <input type="password" class="form-control" name="c_password" id="c_password" required>
            </div> -->
<!-- 
            <div class="form-group">
              <label for="gender">Gender:</label>
              <select name="gender" class="form-control" id="gender">
                <option value="male">Male</option>
                <option value="Female">Female</option>
              </select>
              <input type="hidden" name="user_role_id" id="user_role_id" value="2">
            </div> -->

            <div class="form-groups">
              <label for="phone">Phone No:</label>
              <input type="number" class="form-control" name="phone" id="phone" required>
            </div>
            <div class="form-group">
              <label for="address"> Address :</label>
              <textarea id="address" class="form-control"  name="address" required>
                
              </textarea>
              

            </div>
            
            <div class="form-group">
                <div class="checkbox">
                  <label>
                    <input type="checkbox" value="remember-me">
                    Remember Password
                  </label>
                </div>
              </div>
            <div>
              <button class="btn btn-success btn-lg mt-3" name="register">
                Regsiter Now
              </button>
              <a href="<?php echo base_url('home/sigIn'); ?>" class="btn btn-success btn-lg mt-3" > Login Now </a>
            </div>
          </form></div>
      <div class="col-lg-3"></div>
    </div>
  </div>