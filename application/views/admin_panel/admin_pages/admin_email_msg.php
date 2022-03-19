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
        <h3><li style="color: green;">Messages</li></h3>
			<h1 class="text text-danger">Check Messages: </h1>
	<table class="table mt-5">
        <thead>
          <th class="text-danger">Id #</th>
          <th class="text-danger">Name</th>
          <th class="text-danger">Email </th>
          <th class="text-danger">Subject</th>
          <th class="text-danger">Message</th>
          <th class="text-danger">#Action</th>
        </thead>
        <tbody>
     <?php for ($r=0; $r < count($allMassages); $r++) { 
                  echo "<tr>";
                  for ($s_A_L=0; $s_A_L < 1 ; $s_A_L++) {  ?> 
                  <td> <?php $delID = $allMassages["$r"]["id"];
                             $newUpdatedId = $allMassages["$r"]["id"];
                            echo $allMassages["$r"]["id"]; ?> </td>
                  <td><?php echo $allMassages["$r"][ "name" ]; ?></td>
                  <td><?php echo $allMassages["$r"][ "email" ]; ?></td>
                  <td><?php echo $allMassages["$r"][ "subject" ]; ?></td>
                  <td><?php echo $allMassages["$r"][ "message" ]; ?></td>


                  <td style="text-align: center;"> 
                      <form action="<?php echo base_url('feedback_controller/deleteMsg');?>" method ="POST">
                        <button style="width: 70px;"  class="btn btn-danger" name="delBtn" id="delBtn" value="<?php echo $delID; ?>">
                           Delete
                        </button>
                        <a class="btn btn-success" style="width: 70px;" href='mailto:<?php echo $allMassages["$r"][ "email" ]; ?>'> Reply</a>
                      </form>
                  </td>
                  </tr>
              <?php } echo "</tr>"; } ?>
        </tbody>
    </table>
        