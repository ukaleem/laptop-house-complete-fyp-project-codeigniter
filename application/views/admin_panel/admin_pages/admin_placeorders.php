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


        <h3><li style="color: green;">Placed Orders</li></h3>
      	<!-- <a href="#focus" class="btn btn-primary" >ADD NEW Order +</a> -->
			<h1 class="text text-danger">Placed Orders Detail: </h1>
	<table class="table mt-5">
        <thead>
          <th class="text-danger">Id#</th>
          <th class="text-danger">FName</th>
          <th class="text-danger">LName </th>
          <th class="text-danger">Phone</th>
          <th class="text-danger">Eamil</th>
          <th class="text-danger">Address</th>
          <th class="text-danger">City</th>
          <th class="text-danger">Date</th>
          <th class="text-danger">Description</th>
          <th class="text-danger">#Action</th>
        </thead>
         <tbody>
     <?php for ($r=0; $r < count($placedOrders); $r++) { 
                  echo "<tr>";
                  for ($s_A_L=0; $s_A_L < 1 ; $s_A_L++) {  ?> 
                  <td> <?php $delID = $placedOrders["$r"]["id"];
                             $newUpdatedId = $placedOrders["$r"]["id"];
                            echo $placedOrders["$r"]["id"]; ?> </td>
                  <td><?php echo $placedOrders["$r"][ "fname" ]; ?></td>
                  <td><?php echo $placedOrders["$r"][ "lname" ]; ?></td>
                  <td><?php echo $placedOrders["$r"][ "phone" ]; ?></td>
                  <td><?php echo $placedOrders["$r"][ "email" ]; ?></td>
                  <td><?php echo $placedOrders["$r"][ "address"]; ?></td>
                  <td><?php echo $placedOrders["$r"][ "city" ]; ?></td>
                  <td><?php echo $placedOrders["$r"][ "date" ]; ?></td>
                  <td><?php echo $placedOrders["$r"][ "description"]; ?></td>

                  <td style="text-align: center;"> 
                      <form action="<?php echo base_url('PlaceOrder_controller/deletePlacedOrder');?>" method ="POST">
                        <button style="width: 70px;"  class="btn btn-danger" name="delBtn" id="delBtn" value="<?php echo $delID; ?>">
                           Delete
                        </button>
                      </form>
                  </td>
                  </tr>
              <?php } echo "</tr>"; } ?>
        </tbody>
    </table>
    
        