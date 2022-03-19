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

        <a href="#focus" class="btn btn-primary" >ADD NEW CATEGORIES +</a>
        <h3><li style="color: green;">Add Catagories</li></h3>
			<h1 class="text text-danger"> Catagories Details: </h1>
			<hr>
	<table class="table mt-5">
        <thead>
          <th class="text-danger">Id #</th>
          <th class="text-danger"> Categorie Title</th>
          <th class="text-danger">#Action</th>
        </thead>
        <tbody>
          <?php for ($r=0; $r < count($categories); $r++) { 
                  echo "<tr>";
                  for ($s_A_L=0; $s_A_L < 1 ; $s_A_L++) {  ?> 
                  <td> <?php $delID = $categories["$r"]["cat_id"];
                             $newUpdatedId = $categories["$r"]["cat_id"];
                            echo $categories["$r"]["cat_id"]; ?> </td>
                  <td><?php echo $categories["$r"][ "cat_title" ]; ?></td>

                  <td style="text-align: center;"> 
                      <form action="<?php echo base_url('addCatagories_controller/deleteCategories');?>" method ="POST">
                        <button style="width: 70px;"  class="btn btn-danger" name="delBtn" id="delBtn" value="<?php echo $delID; ?>">
                           Delete
                        </button>
                      </form>

                  </td>
                  </tr>
              <?php } echo "</tr>"; } ?>
        </tbody>
    </table>

<h1 class="text text-danger">Add Categories:</h1>
<!-- <li class="divider"> </li>
<hr class="divider" style="background-color: orange;"> --> 
            <?php if (!isset($uid)) { ?>
           <form action="<?php echo base_url('addCatagories_controller/addCategorie');?>" method="POST" >
            <?php } if (isset($uid)) { ?>
           <form action="#" method="POST" >
            <?php } ?>

                      <div class="form-group has-success" id="focus">
                        <label for="pName">Categorie Title:</label>
                        <input type="text" class="form-control" name="pTitle" id="pTitle" required
                        value="<?php if(isset($uname)){ echo $uname; } ?>">
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