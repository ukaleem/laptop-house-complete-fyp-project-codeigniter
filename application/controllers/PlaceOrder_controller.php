<?php 
/**
 * 
 */
 class PlaceOrder_controller extends CI_Controller
 {
 	
 	function __construct()
 	{
 		parent::__construct();
 	}
 	public function placeOrderByForm(){

 				$data['page_name'] = "Place Order";
				$data['pg_tital1'] = "Laptop House";
				$data['pg_address'] = "Gujrat, Jail chock, BISMILA Market";
				$data['pg_branch'] = "Gujrat Branch Pakistan";
				$data['pg_contant'] = "+92300-6263101";
				$data['pg_email'] = "laptop_house786@yahoo.com";
				$this->load->model('Products_Model');
		$data['catagories'] = $this->Products_Model->getProductCatagorys();

				$this->load->view('templates/header',$data);
				$this->load->view('pages/placeOrder');
				$this->load->view('templates/footer',$data);
 	}
 	public function insertPlacedOrder(){
 		if (isset($_POST["pinsertBtn"])){
				$fname = $_POST['fname'];
		        $lname = $_POST['lname'];
		        $phone = $_POST['phone'];
		        $email = $_POST['email'];
		        $address = $_POST['address'];
		        $city = $_POST["city"];
		        $date = $_POST['date'];
		        $description = trim($_POST['description']);

        $this->load->model('Place_Orders_Model');
        $this->Place_Orders_Model->insertOrder($fname,$lname,$phone,$email,$address,$city,$date,$description);
        redirect('PlaceOrder_controller/placeOrderByForm','refresh');
        unset($_POST["insertBtn"]);
 		}
 	}
 	public function deletePlacedOrder(){
		$delId = $_POST['delBtn'];
        $this->load->model('Place_Orders_Model');
        $this->Place_Orders_Model->deletePlacedOrders($delId);
        redirect('admin_Home/admin_placeorders','refresh');
        unset($_POST["delBtn"]);
	}

 } ?>