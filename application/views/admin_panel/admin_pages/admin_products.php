<?php 

//Testing...
/*echo "<pre>";
print_r($catagories);
for ($r=0; $r < count($catagories); $r++) { 
  echo $catagories["$r"]["cat_title"]; 
}
exit();*/

if (isset($_POST['update'])) {
$updateIdRecord  = $this->Products_Model->updateProduct($_POST['update']);
    $uid = $updateIdRecord[0]["p_id"];
    $uname = $updateIdRecord[0][ "p_name" ];
    $uprice = $updateIdRecord[0][ "p_price" ];
    $uquant = $updateIdRecord[0][ "p_quantity" ];
    $ucname = $updateIdRecord[0][ "cat_name" ];
    $udesc = $updateIdRecord[0][ "p_description" ];
    $uimg = $updateIdRecord[0][ "p_image" ];
  //Testing...  
  //    echo "$uname and $uprice and $uquant and $ucname $udesc and $uimg ";
  // echo "<pre>";
  // print_r($updateIdRecord);
  // exit();
}

if (isset($_POST["newUpdateBtn"])){

        $newid = $_POST["newUpdateBtn"];
        // echo "$newid";
        // exit();
        $name = $_POST['pName'];
        $price = $_POST['pPrice'];
        $quant = $_POST['pQuantity'];
        $catag = $_POST['pCatagorey'];
        $desc = $_POST['pDesc'];
        

        $this->Products_Model->finalUpdateProduct($newid,$name,$price,$quant,$catag,$img,$desc);
        unset($_POST["newUpdateBtn"]);
        unset($uid);
        unset($uname);
        unset($uprice);
        unset($uquant);
        unset($ucname);
        unset($udesc);
        unset($uimg);
        redirect('admin_Home/admin_products','refresh');
  }

 ?>

<section id="main-content">
      <section class="wrapper"> 

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

          <!-- Update Successfull Alerts -->
          <?php if (isset($_SESSION['sess_pUpdated_error'])) { ?>
            <div class="alert alert-danger">
            <?php echo $_SESSION['sess_pUpdated_error']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_pUpdated_error']); ?>

          <?php if (isset($_SESSION['sess_pUpdated_successfull'])) { ?>
            <div class="alert alert-success">
            <?php echo $_SESSION['sess_pUpdated_successfull']; ?>
          </div>
          <?php } ?>
          <?php unset($_SESSION['sess_pUpdated_successfull']); ?>
<a href="#focus" class="btn btn-primary" >ADD NEW PRODUCTS +</a>
<h3><li style="color: green;">Products</li></h3>

<h1 class="text text-danger">Products Details: </h1>

<table class="table mt-5">
        <thead>
          <th class="text-danger">Id#</th>
          <th class="text-danger">Name</th>
          <th class="text-danger">Price </th>
          <th class="text-danger">Quantity</th>
          <th class="text-danger">Category</th>
          <th class="text-danger">Description</th>
          <th class="text-danger">Image</th>
          <th class="text-danger">#Action</th>
        </thead>
        <tbody>
      <?php for ($f_A_L=0; $f_A_L < count($product); $f_A_L++) { 
                  echo "<tr>";
                  for ($s_A_L=0; $s_A_L < 1 ; $s_A_L++) {  ?> 
                  <td> <?php $delID = $product["$f_A_L"]["p_id"];
                             $newUpdatedId = $product["$f_A_L"]["p_id"];
                            echo $product["$f_A_L"]["p_id"]; ?> </td>
                  <td><?php echo $product["$f_A_L"][ "p_name" ]; ?></td>
                  <td><?php echo $product["$f_A_L"][ "p_price" ]; ?></td>
                  <td><?php echo $product["$f_A_L"][ "p_quantity" ]; ?></td>
                  <td><?php echo $product["$f_A_L"][ "cat_name" ]; ?></td>
                  <td><?php echo $product["$f_A_L"][ "p_description" ]; ?></td>
                  <td><?php echo $product["$f_A_L"][ "p_image" ]; ?></td>

                  <td style="text-align: center;"> 
                      <form action="<?php echo base_url('products_controller/deleteProduct');?>" method ="POST">
                        <button style="width: 70px;"  class="btn btn-danger" name="delBtn" id="delBtn" value="<?php echo $delID; ?>">
                           Delete
                        </button>
                      </form>
                      <!-- <form action="<?php echo base_url('products_controller/updateProduct');?>" method ="POST">   -->
                      <form action="#focus" method ="POST">  
                        <button class="btn btn-primary" name="update" id="update" value="<?php $UpD = $delID; echo $UpD; ?>">
                            Update
                        </button>
                      </form>
                  </td>
                  </tr>
              <?php } echo "</tr>"; } ?>
        </tbody>
</table>
<h1 class="text text-danger">Insert Products:</h1>
<!-- <li class="divider"> </li>
<hr class="divider" style="background-color: orange;"> --> 
<!-- enctype="multipart/form-data" -->
            <?php if (!isset($uid)) { ?>
           <form method="POST" action="<?php echo base_url('products_controller/addProducts');?>"  >
            <?php } if (isset($uid)) { ?>
           <form action="#" role="form" method="POST" >
            <?php } ?>

                      <div class="form-group has-success" id="focus">
                        <label for="pName">Product Name:</label>
                        <input type="text" class="form-control" name="pName" id="pName" required
                        value="<?php if(isset($uname)){ echo $uname; } ?>">
                      </div>

                      <div class="form-group has-success">
                        <label for="pPrice">Price:</label>
                        <input type="number" class="form-control" name="pPrice" id="pPrice" required
                        value="<?php if(isset($uprice)){ echo $uprice; } ?>">
                      </div>

                       <div class="form-group has-success">
                        <label for="pQuantity">Quantity:</label>
                        <input type="number" class="form-control" name="pQuantity" id="pQuantity" required
                        value="<?php if(isset($uquant)){ echo $uquant; } ?>">
                      </div>
                       <div class="form-group has-success">
                        <label for="pCatagorey">Catagorey:</label>
                        <select class="form-control" name="pCatagorey" id="pCatagorey" required>
                          <?php for ($r=0; $r < count($catagories); $r++) {  ?>
                              <option value = '<?php echo $catagories["$r"]["cat_title"]; ?>'> <?php echo $catagories["$r"]["cat_title"]; ?></option>
                          <?php } ?>
                          <?php if(isset($ucname)){ ?>
                             <option value="<?php echo $uname;?>"> <?php echo $uname;?> </option>
                          <?php } ?>
                         
                        </select>
                        <!-- <input type="text" class="form-control" name="pCatagorey" id="pCatagorey" required> -->
                      </div>
                       <div class="form-group has-success">
                        <label for="pDesc">Description:</label>
                        
                        <input type="text" class="form-control" name="pDesc" id="pDesc" required
                        value="<?php if(isset($udesc)){ echo $udesc; } ?>">
                      </div>
                       <div class="form-group has-success">
                        <label for="pImage">Upload Image:</label>
                        <input type="file" class="form-control" name="pImage" id="pImage"
                        value="<?php if(isset($uimg)){ echo $uimg; } ?>">
                      </div>


                      <div>
                          <?php if (!isset($uid)) { ?>
                          <button class="btn btn-primary" name="insertBtn" id="insertBtn">
                          Insert Now
                          </button>
                          <?php } if (isset($uid)) { ?>
                          
                          <button class="btn btn-primary" name="newUpdateBtn" id="newUpdateBtn" value="<?php echo $uid; ?>">
                          Update Now
                          </button>
                          <?php } ?>
                        
                      </div>
           </form>