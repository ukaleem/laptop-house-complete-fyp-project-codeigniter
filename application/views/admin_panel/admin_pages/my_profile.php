<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <!-- profile-widget -->
          <div class="col-lg-12">
            <div class="profile-widget profile-widget-info">
              <div class="panel-body">
                <div class="col-lg-2 col-sm-2">
                  <h3><li style="color:green;"><?php echo $my_profile[0]['admin_name'] ?></h3>
                  <h6>(Administrator)</h6>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading tab-bg-info">
                <ul class="nav nav-tabs">
                  <li  class="active">
                    <a data-toggle="tab" href="#profile">
                                          <i class="icon-user"></i>
                                          Profile
                                      </a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#edit-profile">
                                          <i class="icon-envelope"></i>
                                          Edit Profile
                                      </a>
                  </li>
                </ul>
              </header>
              <div class="panel-body">
                <div class="tab-content">
                  <!-- profile -->
                  <div id="profile" class="tab-pane active">
                    <section class="panel">
                      <div class="bio-graph-heading">
                        Hello! Administrator Some Deatils about the Admin Or Motivation Quote Chould be display here Company Deatils or qoure can be write here..
                      </div>
                      <div class="panel-body bio-graph-info">
                        <h1>Bio Graphy</h1>
                        <div class="row">
                          <div class="bio-row">
                            <p><span>Admin Name </span>: <?php echo $my_profile[0]['admin_name']; ?> </p>
                          </div>
                          <div class="bio-row">
                            <p><span>Address </span>: <?php echo $pg_address; ?></p>
                          </div>
                          <div class="bio-row">
                            <p><span>Country </span>: Pakistan</p>
                          </div>
                          <div class="bio-row">
                            <p><span>Branch </span>: <?php echo $pg_branch; ?> </p>
                          </div>
                          <div class="bio-row">
                            <p><span>Email </span>:<?php echo $my_profile[0]['admin_email']; ?></p>
                          </div>
                          <div class="bio-row">
                            <p><span>Mobile </span>: <?php echo $pg_contant; ?></p>
                          </div>
                          <div class="bio-row">
                            <p><span>Last Password </span>: <?php echo $my_profile[0]['admin_password']; ?></p>
                          </div>
                        </div>
                      </div>
                    </section>
                    <section>
                      <div class="row">
                      </div>
                    </section>
                  </div>
                  <!-- edit-profile -->
                  <div id="edit-profile" class="tab-pane">
                    <section class="panel">
                      <div class="panel-body bio-graph-info">
                        <h1> Profile Info</h1>
                        <form class="form-horizontal" role="form" method="POST" action="<?php echo base_url("admin_Home/update_my_profile"); ?>">
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Admin Name</label>
                            <div class="col-lg-6">
                              <input type="text" class="form-control" name="name" id="name" value="<?php echo $my_profile[0]['admin_name'] ?>">
                              <input type="hidden" name="id" id="id" value="<?php echo $my_profile[0]['admin_id'] ?>">
                            </div>
                          </div>
                         
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Admin Email</label>
                            <div class="col-lg-6">
                              <input type="text" class="form-control" name="email" id="email" value="<?php echo $my_profile[0]['admin_email'] ?> ">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Password</label>
                            <div class="col-lg-6">
                              <input type="text" class="form-control" name="password" id="password" value="<?php echo $my_profile[0]['admin_password'] ?>">
                            </div>
                          </div>
                           <div class="form-group">
                            <label class="col-lg-2 control-label">Status</label>
                            <div class="col-lg-6">
                              <input type="text" class="form-control" name="status" id="status" value="<?php echo $my_profile[0]['admin_status'] ?>">
                            </div>
                          </div>

                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button type="submit" class="btn btn-primary" id="profileUpdateBtn" name="profileUpdateBtn">Update Profile </button>
                            </div>
                          </div>
                        </form>
                      </div>
                    </section>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>

        <!-- page end-->
      </section>
    </section>
    <!--main content end-->