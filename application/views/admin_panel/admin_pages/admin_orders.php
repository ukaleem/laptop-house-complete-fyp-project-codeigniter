<section id="main-content">
      <section class="wrapper">
        <!-- <?php echo "<pre>"; print_r($allOrders); ?> -->
        <h3><li style="color: green;">Orders</li></h3>
      	<!-- <a href="#focus" class="btn btn-primary" >ADD NEW Order +</a> -->
			<h1 class="text text-danger">Orders Details: </h1>
	<table class="table mt-5">
        <thead>
          <th class="text-danger">Order Id</th>
          <th class="text-danger">Product Name</th>
          <!-- <th class="text-danger">Quantity</th> -->
          <th class="text-danger">Total </th>
          <th class="text-danger">Order Date </th>
          <th class="text-danger">User </th>
          <th class="text-danger">Address</th>
          <th class="text-danger">Phone</th>
        </thead>

        <tbody>
           <?php for ($r=0; $r < count($allOrders); $r++) { 
                  echo "<tr>";
                  for ($s_A_L=0; $s_A_L < 1 ; $s_A_L++) {  ?> 
                  <td> <?php $delID = $allOrders["$r"]["ord_id"];
                             $newUpdatedId = $allOrders["$r"]["ord_id"];
                            echo $allOrders["$r"]["ord_id"]; ?> </td>
                  <td><?php echo $allOrders["$r"][ "pro_name" ]; ?></td>
                  <td><?php echo $allOrders["$r"][ "ord_total" ]; ?></td>
                  <td><?php echo $allOrders["$r"][ "ord_date" ]; ?></td>
                  <td><?php echo $allOrders["$r"][ "cus_name" ]; ?></td>
                  <td><?php echo $allOrders["$r"][ "cus_address" ]; ?></td>
                  <td><?php echo $allOrders["$r"][ "cus_phone" ]; ?></td>

              <?php } echo "</tr>"; } ?>
        </tbody>



    </table>
        