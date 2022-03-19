<?php 
// echo "<pre>";
// print_r($cart);exit;
  // $this->load->model('Products_Model');
    // $selectedProduct  = $this->Products_Model->selectedProduct('1');
// echo "<pre>";
    // print_r($selectedProduct);exit();
  for ($i=0; $i <count($cart) ; $i++) { 
     $this->load->model('Products_Model');
    $selectedProduct  = $this->Products_Model->selectedProduct($cart[$i]['product_id']);
    // echo "<pre>";
    // print_r($selectedProduct);
    $cart[$i]['name'] = $selectedProduct[0]['p_name'];
    $cart[$i]['price'] = $selectedProduct[0]['p_price'];
    $cart[$i]['des'] = $selectedProduct[0]['p_description'];
    // $cusId = $cart[$i]['cus_id'];
    // $productId = $cart[$i]['product_id'];
    // $quantity = $cart[$i]['qunatity'];
  }
// print_r($cart);exit;
 ?>

<div class="container" style="padding-top: 20px;padding-bottom: 30px;">

  <!-- Order Successfull Alerts -->
        <?php if (isset($_SESSION['sess_Order_error'])) { ?>
            <div class="alert alert-danger">
            <?php echo $_SESSION['sess_Order_error']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_Order_error']); ?>

          <?php if (isset($_SESSION['sess_Order_successfull'])) { ?>
            <div class="alert alert-success">
            <?php echo $_SESSION['sess_Order_successfull']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_Order_successfull']); ?>
  <h1 class="text text-primary text-center">Shopping Cart</h1>
  <div class="Row">
    <table class="table mt-5">
        <thead>
          <th class="text-success">Name</th>
          <th class="text-success">Price </th>
          <th class="text-success">Description</th>
          <th class="text-success">Quantity</th>
          <th class="text-success">Total</th>
          <th></th>
         <!--  <th class="text-success">action</th> -->
        </thead>
        <?php 
        // echo "<pre>";
        // print_r($cart);
        // echo "$cusId <br>";
        // echo "$productId <br>";
        // echo "$quantity <br>";
        // print_r($res);
        // for ($i=0; $i <count($order) ; $i++) { 
        //   $query = "SELECT * FROM prodiuc WHERE id=".$order[$i]['id']
        //   $order[$i]['titile'] = $pro['titi'];
        //   $order[$i]['price'] = $pro['price']
        //   $total = $price * $qty;
        // }
        // exit();
         ?>
        <tbody>
         <!--  <?php if(isset($_SESSION['user_id'])){ ?>
          <?php for ($r=0; $r < count($selectedProduct); $r++) { 
                  echo "<tr>";
                  for ($s_A_L=0; $s_A_L < 1 ; $s_A_L++) {  ?> 
                  <td><?php echo $selectedProduct["$r"][ "p_name" ]; ?></td>
                  <td><?php echo $selectedProduct["$r"][ "p_price" ]; ?></td>
                  <td><?php echo $selectedProduct["$r"][ "p_description" ]; ?></td>
                  <td width="13%"><input type="number"  class="form-control text-info" name="itemQuantity" id="itemQuantity"
                    <?php echo 'value="'.$selectedProduct["$r"][ "p_quantity" ].'"'; ?> ></td>
                  <td>
                    <button class="btn btn-danger">
                      Remove
                    </button>
                  </td>
              <?php } echo "</tr>"; } ?>
              <tr>
                <th colspan="3">
                  <a class="btn btn-warning" style="color: white;"
                   href="<?php echo base_url()."home#daily_products";?>">
                      < Continue Shoping
                  </a>
                </th>
                <th> </th>
                <th>
                  <button class="btn btn-success">
                     CheckOut >
                  </button>
                </th>
              </tr>
           <?php } else { ?>
           <tr>
             <th colspan="4">
               <h3>Cart is empty!</h3>
             </th>
           </tr>
           <?php } ?>   --> 
           <?php if(isset($_SESSION['user_id'])){ ?>
           <?php
           $grandTotal = 0;
           $total = array();
           $productDetails = "";
            for ($i=0; $i <count($cart) ; $i++) {
            // print($cart[$i]['qunatity']);exit; 
              // $qty = $cart[$i]['qunatity']+1;
              $total[$i] = $cart[$i]['price'] * $cart[$i]['qunatity'];
              echo "<tr>

              <td>".$cart[$i]['name']."</td>
              <td>".$cart[$i]['price']."</td>
              <td>".$cart[$i]['des']."</td>
              <td aline='center' width='13%'>

              <form action='".base_url()."cart_controller/cart_plus"."' method='post'>
              <input type='hidden' value='".$cart[$i]['cart_id']."' name='cart_id'>
              <input type='hidden' value='".($cart[$i]['qunatity']+1)."' name='q'>
              <button type='submit' class='btn btn-info' name='cart_plus' value='ADD'>+</button></form>" .$cart[$i]['qunatity']."
              <form action='".base_url()."cart_controller/cart_minus"."' method='post'>
              <input type='hidden' value='".$cart[$i]['cart_id']."' name='cart_id'>
              <input type='hidden' value='".($cart[$i]['qunatity']-1)."' name='qm'>
              <button type='submit' class='btn btn-warning' name='cart_minus' value='MINUS'>-</button></form>


              </td>
              <td>".$total[$i]."</td>

              <td aline='center' width='13%'>
              <form action='".base_url()."cart_controller/remove_from_cart"."' method='post'>
              <button type='submit' class='btn btn-danger' name='cart_remove' value='".$cart[$i]['cart_id']."'>Remove</button></form>
              </td>

              </tr>";
              // $grandTotal = ($grandTotal+$total[$i]);
              array_sum($total);
            } ?>
              <tr>
                <th colspan="3">
                  <a class="btn btn-warning" style="color: white;"
                   href="<?php echo base_url()."home#daily_products";?>">
                      < Continue Shoping
                  </a>
                </th>
                <th style="font-family: arial;" colspan="2">Grand Sum Rs.<?php echo array_sum($total); ?> PK</th>
                <th>
                  <form method="post" action="<?php echo base_url().'cart_controller/CheckOut' ?>">
                    <button class="btn btn-success" value="<?php echo array_sum($total); ?>" name="CheckOutBtn" onclick="window.alert('Are Your sure?');">
                       CheckOut >
                    </button>
                  </form>
                </th>
              </tr>
           <!--  echo "$grandTotal";
            echo "<br>";
            echo array_sum($total) -->

          <?php ?>
          <?php } else { ?>
           <tr>
             <th colspan="4">
               <h3>Cart is empty!</h3>
             </th>
           </tr>
           <?php } ?> 
        </tbody>
  </table>

  </div>
</div>
<hr>