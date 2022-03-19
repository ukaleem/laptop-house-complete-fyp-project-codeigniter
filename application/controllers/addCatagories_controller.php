<?php 
/**
 * 
 */
 class addCatagories_controller extends CI_Controller
 {
 	function __construct()
 	{
 		parent::__construct();
 	}
 	//This will insert Data to Products
	public function addCategorie(){
		if (isset($_POST["insertBtn"])){
			
		$title = $_POST['pTitle'];

        $this->load->model('AddCatagories_Model');
        $this->AddCatagories_Model->insertCategories($title);
        redirect('admin_Home/admin_AddCatagories','refresh');
        unset($_POST["insertBtn"]);
		}
	}

	public function deleteCategories(){
		$delId = $_POST['delBtn'];
        $this->load->model('AddCatagories_Model');
        $this->AddCatagories_Model->deleteCategorie($delId);
        redirect('admin_Home/admin_AddCatagories','refresh');
        unset($_POST["delBtn"]);
	}
	public function updateProduct(){
		$updateBtn = $_POST['update'];
		$this->load->model('Products_Model');
		$updateIdRecord['updateRecorde']  = $this->Products_Model->updateProduct($updateBtn);
	/*	echo "<pre>";
		print_r($updateIdRecord);
		exit();*/
		$this->load->view("admin_panel/admin_pages/admin_products",$updateIdRecord);
       // redirect('admin_Home/admin_products','refresh',$updateIdRecord);
        unset($_POST["updateBtn"]);

	}

 } ?>