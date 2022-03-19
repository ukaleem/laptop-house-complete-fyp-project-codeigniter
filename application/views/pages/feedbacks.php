<hr style="color: orange;">
<div class="container">
    <!-- Inserted Successfull Alerts -->
        <?php if (isset($_SESSION['sess_feedback_error'])) { ?>
            <div class="alert alert-danger">
            <?php echo $_SESSION['sess_feedback_error']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_feedback_error']); ?>

          <?php if (isset($_SESSION['sess_feedbackInsert_successfull'])) { ?>
            <div class="alert alert-success">
            <?php echo $_SESSION['sess_feedbackInsert_successfull']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_feedbackInsert_successfull']); ?>
          
            <div class="imagebg"></div>
            <div class="row " style="margin-top: 50px">
                <div class="col-md-6 col-md-offset-3 form-container">
                    <h2 class="text-primary">Feedback</h2> 
                    <p> Please provide your feedback below: </p>
                    <form action="<?php echo base_url('feedback_controller/insertFeedBack');?>" method="post">
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label>How do you rate your overall experience?</label>
                                <p>
                                    <label class="radio-inline text-warning">
                                        <input type="radio" name="experience" id="radio_experience" value="bad" >
                                        BAD 
                                    </label>
                                    <label class="radio-inline text-info">
                                        <input type="radio" name="experience" id="radio_experience" value="average" >
                                        AVERAGE 
                                    </label>
                                    <label class="radio-inline text-success">
                                        <input type="radio" name="experience" id="radio_experience" value="good" >
                                        GOOD 
                                    </label>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label for="comments"> Comments:</label>
                                <textarea class="form-control" type="textarea" name="comments" id="comments" placeholder="Your Comments" maxlength="6000" rows="7"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="name"> Your Name:</label>
                                <input type="text" class="form-control" id="name" name="name" required>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label for="email"> Email:</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <button type="submit" name="feedbackBtn" id="feedbackBtn" class="btn btn-lg btn-warning btn-block" > Post </button>
                            </div>
                        </div>
                    </form>
                    <div id="success_message" style="width:100%; height:100%; display:none; "> <h3>Posted your feedback successfully!</h3> </div>
                    <div id="error_message" style="width:100%; height:100%; display:none; "> <h3>Error</h3> Sorry there was an error sending your form. </div>
                </div>
            </div>
        </div>
<hr style="color: orange;">