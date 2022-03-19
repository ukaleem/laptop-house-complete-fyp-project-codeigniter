<section id="main-content">
      <section class="wrapper">
        <!-- Deleted Successfull Alerts -->
          <?php if (isset($_SESSION['sess_pDelete_error'])) { ?>
            <div class="alert alert-danger">
            <?php echo $_SESSION['sess_pDelete_error']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_pDelete_error']); ?>

          <?php if (isset($_SESSION['sess_pDelete_successfull'])) { ?>
            <div class="alert alert-success">
            <?php echo $_SESSION['sess_pDelete_successfull']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_pDelete_successfull']); ?>
        <h3><li style="color: green;">FeedBacks</li></h3>
			<h1 class="text text-danger">Check Feedbacks: </h1>
	<table class="table mt-5">
        <thead>
          <th class="text-danger">Id #</th>
          <th class="text-danger">Status</th>
          <th class="text-danger">Comment </th>
          <th class="text-danger">User Name</th>
          <th class="text-danger">Email</th>
          <th class="text-danger">#Action</th>
        </thead>
        <tbody>
     <?php for ($r=0; $r < count($feedbacks); $r++) { 
                  echo "<tr>";
                  for ($s_A_L=0; $s_A_L < 1 ; $s_A_L++) {  ?> 
                  <td> <?php $delID = $feedbacks["$r"]["fb_id"];
                             $newUpdatedId = $feedbacks["$r"]["fb_id"];
                            echo $feedbacks["$r"]["fb_id"]; ?> </td>
                  <td><?php echo $feedbacks["$r"][ "status" ]; ?></td>
                  <td><?php echo $feedbacks["$r"][ "comment" ]; ?></td>
                  <td><?php echo $feedbacks["$r"][ "user_name" ]; ?></td>
                  <td><?php echo $feedbacks["$r"][ "email" ]; ?></td>


                  <td style="text-align: center;"> 
                      <form action="<?php echo base_url('feedback_controller/deleteFeedBack');?>" method ="POST">
                        <button style="width: 70px;"  class="btn btn-danger" name="delBtn" id="delBtn" value="<?php echo $delID; ?>">
                           Delete
                        </button>
                        <a class="btn btn-success" style="width: 70px;" href='mailto:<?php echo $feedbacks["$r"][ "email" ]; ?>'> Reply</a>
                      </form>
                  </td>
                  </tr>
              <?php } echo "</tr>"; } ?>
        </tbody>
    </table>
        