<?php 

/**
 * 
 */
 class admin_customers_controller extends CI_Controller
 {
 	
 	function __construct()
 	{
 		parent::__construct();
 	}
 	public function deleteAdminCustomer(){
 		$delId = $_POST['delBtn'];
        $this->load->model('Customer_Model');
        $this->Customer_Model->deleteCustomer($delId);
        redirect('admin_Home/admin_customers','refresh');
        unset($_POST["delBtn"]);
 	}
 } ?>