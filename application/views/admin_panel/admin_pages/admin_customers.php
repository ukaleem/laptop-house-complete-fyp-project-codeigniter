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
      	<!-- <a href="#focus" class="btn btn-primary" >ADD NEW Customer +</a> -->
        <h3><li style="color: green;">Customers</li></h3>
			<h1 class="text text-danger">Customer Details: </h1>
			<hr>
	<table class="table mt-5">
        <thead>
          <th class="text-danger">Id #</th>
          <th class="text-danger">Name</th>
          <th class="text-danger">Email </th>
          <th class="text-danger">Password</th>
          <th class="text-danger">Phone</th>
          <th class="text-danger">Address</th>
          <th class="text-danger">#Action</th>
        </thead>
        <tbody>
     <?php for ($r=0; $r < count($customer); $r++) { 
                  echo "<tr>";
                  for ($s_A_L=0; $s_A_L < 1 ; $s_A_L++) {  ?> 
                  <td> <?php $delID = $customer["$r"]["cus_id"];
                             $newUpdatedId = $customer["$r"]["cus_id"];
                            echo $customer["$r"]["cus_id"]; ?> </td>
                  <td><?php echo $customer["$r"][ "cus_name" ]; ?></td>
                  <td><?php echo $customer["$r"][ "cus_email" ]; ?></td>
                  <td><?php echo $customer["$r"][ "cus_password" ]; ?></td>
                  <td><?php echo $customer["$r"][ "cus_phone" ]; ?></td>
                  <td><?php echo $customer["$r"][ "cus_address" ]; ?></td>

                  <td style="text-align: center;"> 
                      <form action="<?php echo base_url('admin_customers_controller/deleteAdminCustomer');?>" method ="POST">
                        <button style="width: 70px;"  class="btn btn-danger" name="delBtn" id="delBtn" value="<?php echo $delID; ?>">
                           Delete
                        </button>
                      </form>
                  </td>
                  </tr>
              <?php } echo "</tr>"; } ?>
        </tbody>
    </table>

        