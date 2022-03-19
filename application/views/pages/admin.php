<div class="container" style="padding-bottom: 5%;">

  <!-- Successfull login alert by sess_success -->
  <?php if(isset($_SESSION['sess_success'])){ ?>
  <div class="alert alert-success"> <?php echo $_SESSION['sess_success'] ?></div>
  <?php } ?>

  <!-- Provide Some extra Alerts by sess_info -->
  <?php if(isset($_SESSION['sess_info'])){ ?>
  <div class="alert alert-success"> <?php echo $_SESSION['sess_info'] ?></div>
  <?php } ?>

  <!-- Provide Massage about admin or user -->
  <?php if (isset($_SESSION['sess_admin'])): ?>
    <div class="alert alert-success"> <?php echo $_SESSION['sess_admin']; ?></div>
  <?php endif ?>

  <div class="row">
    
    <div class="col-sm-12 col-md-6 col-lg-3"">
      <div class="container text-center">
        <h2 class="text-info">User Profile</h2>
        <img class="rounded-circle w-100" alt="admin Profile images" alt="Profile pic" src="<?php echo base_url('assets/images/user_profile.jpg'); ?>">
        <!-- Wellcome message show with User Name by sess_name -->
        <?php if (isset($_SESSION['sess_name'])) { ?>
       <h4> <li style="color: green;"> <small style="color: black;"><?php echo ucfirst( $_SESSION['sess_name']).'...  ' ?></small> </li></h4>
        <?php } ?>
      </div>
    </div>

    <div class="col-sm-12 col-md-6 col-lg-9" style="padding: 1em; border-left: 3px solid #ae7562;">
      <!-- <H3 class =" text text-center">Profile Details:</H3> -->
      <div class="container">
        <div class="row">
           <div id="profile" class="tab-pane active">
                      <section class="panel">
                        <!-- <div class="text-center ">
                          Hello! Administrator Some Deatils about the Admin Or Motivation Quote Chould be display here Company Deatils or qoure can be write here..
                        </div> -->
                        <div class="text-center text-info">
                          <h1 class="text-center">Bio Graphy</h1>
                            <h3>
                              <span>Admin Name </span>: <?php echo $my_profile[0]['cus_name']; ?>
                            </h3>
                            <h3>
                               <span>Address </span>: <?php echo $my_profile[0]['cus_address']; ?>
                            </h3>
                            <h3>
                               <span>Email </span>:<?php echo $my_profile[0]['cus_email']; ?>
                            </h3>
                            <h3>
                               <span>Mobile </span>: <?php echo $my_profile[0]['cus_phone'];?>
                            </h3>
                            <h3>
                              <h3>
                               <span>Last Password </span>: <?php echo $my_profile[0]['cus_password']; ?>
                          </div>
                      </section>
                      <section>
                        <div class="row">
                        </div>
                      </section>
                    </div>
        </div>
      </div>
    </div>
  </div>
</div>