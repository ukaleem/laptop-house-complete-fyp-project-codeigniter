 <!-- Inserted Successfull Alerts -->
        <?php if (isset($_SESSION['sess_pInsert_error'])) { ?>
            <div class="alert alert-danger">
            <?php echo $_SESSION['sess_pInsert_error']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_pInsert_error']); ?>

          <?php if (isset($_SESSION['sess_pInsert_successfull'])) { ?>
            <div class="alert alert-success">
            <?php echo $_SESSION['sess_pInsert_successfull']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_pInsert_successfull']); ?>
<hr style="color: orange;">
<h1 class="text text-center">Place order form</h1>
<div class="row">
      <div class="col-lg-3"></div>
      <div class="col-lg-6">
		<div class="panel-body bio-graph-info">
                        <form class="form-horizontal" role="form" method="POST" action="<?php echo base_url("PlaceOrder_controller/insertPlacedOrder"); ?>">
                        	<div class="form-group">
                            <label class=" control-label">First Name</label>
                            <div class="">
                              <input type="text" class="form-control" name="fname" id="fname" required>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class=" control-label">Last Name</label>
                            <div class="">
                              <input type="text" class="form-control" name="lname" id="lname" required>
                            </div>
                          </div>
                           <div class="form-group">
                            <label class=" control-label">Phone</label>
                            <div class="">
                              <input type="text" class="form-control" name="phone" id="phone" required>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class=" control-label">Eamil</label>
                            <div class="">
                              <input type="text" class="form-control" name="email" id="email" required  >
                              <!-- <input type="hidden" name="id" id="id"> -->
                            </div>
                          </div>
                       
                          <div class="form-group">
                            <label class=" control-label">Address</label>
                            <div class="">
                              <input type="text" class="form-control" name="address" id="address required">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class=" control-label">City</label>
                            <div class="">
                              <input type="text" class="form-control" name="city" id="city" required >
                            </div>
                          </div>
                           <div class="form-group">
                            <label class=" control-label">Date</label>
                            <div class="">
                              <input type="date" class="form-control" name="date" id="date"  required>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class=" control-label">Any Special Request?</label>
                            <div class="">
                              <textarea class="form-control" name="description" id="description" required>
                                
                              </textarea>
                            </div>
                          </div>

                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10" style="text-align: center;">
                              <button type="submit"  class="btn btn-info" id="pinsertBtn" name="pinsertBtn">Place Order</button>

                            </div>
                          </div>
                        </form>
                      </div>
                  </div>
           <div class="col-lg-3">
           </div>
  </div>
  <hr style="color: orange;">