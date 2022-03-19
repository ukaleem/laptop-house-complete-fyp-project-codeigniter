<?php

class Home extends CI_Controller {
	function __construct()
	{
		parent::__construct();
	}

	public function index($page = "Home")
	{
		if ($page == "login") {
			echo "<h1>You are not allowed..";
			exit();
		} else if ($page == "admin_Home") {
			$this->load->view('admin_panel/admin_Home');

		} else {

		//Load Model and send data to all the pages
		$this->load->model('Lh_Products_Model');
		$data['products'] = $this->Lh_Products_Model->getProducts();
		$this->load->model('Products_Model');
		$data['catagories'] = $this->Products_Model->getProductCatagorys();


		//load other pages 
		$data['page_name'] = $page;
		$data['pg_tital1'] = "Laptop House";
		$data['pg_address'] = "Shop# 8 Ground Floor, Madina Tayyiba Plaza Prince Chowk,Gujrat ";
		$data['pg_branch'] = "Gujrat Branch Pakistan";
		$data['pg_contant'] = "+92300-6263101";
		$data['pg_email'] = "laptop_house786@yahoo.com";

		$this->load->view('templates/header',$data);
		$this->load->view('pages/'.$page.'.php',$data);
		$this->load->view('templates/footer',$data);

	}
}
//Cutomer sigIn function call here!!
	public function sigIn(){
		
				//set validation
				$this->form_validation->set_rules('email','Eamil','required|valid_email');
				$this->form_validation->set_rules('password','Password','required|min_length[5]');

				if($this->form_validation->run() == TRUE)
				{
					if(isset($_POST['login']))
					{
						// get form field data
						$Eamil = $_POST['email'];
						$Pass = $_POST['password'];

						//load model and get some data from model 
						$this->load->model('Customer_Model');
						//check user exist or not
						if ($DATA = $this->Customer_Model->cust_signIn($Eamil,$Pass))
						{
							// echo "<pre>";
							// print_r($DATA);
							// echo $DATA->cus_name;
							// exit();

							$this->session->set_flashdata('sess_Cust_Admin','Wellcome Dear!.. ');
							$_SESSION['sess_logedin'] = TRUE;
							$_SESSION['user_id'] = $DATA->cus_id;
							$loginId =  $DATA->cus_id;
							$_SESSION['sess_name'] = $DATA->cus_name;
							redirect("customer_controller/admin/",'refresh');
						}
						else
						{
							//redirect to login page again
							$this->session->set_flashdata('sess_error','Sorry Required data is not found in database! Register your account!');
							redirect('home/sigIn','refresh');
						}
					}	
				}
					//load other pages
					$data['page_name'] = "Sign In";
					$data['pg_tital1'] = "Laptop House";
					$data['pg_address'] = "Gujrat, Jail chock, BISMILA Market";
					$data['pg_branch'] = "Gujrat Branch Pakistan";
					$data['pg_contant'] = "+92300-6263101";
					$data['pg_email'] = "laptop_house786@yahoo.com";
					$this->load->model('Products_Model');
					$data['catagories'] = $this->Products_Model->getProductCatagorys();

					$this->load->view('templates/header',$data);
					$this->load->view('pages/login.php',$data);
					$this->load->view('templates/footer',$data);
	
		}

		//Admin Login Function Call here
		public function admin_home(){
			
			//set some Codigniter validation
			$this->form_validation->set_rules('adminName','Admin Name','required');
			$this->form_validation->set_rules('adminPassword','Admin Password','required|min_length[5]'); 

			//Check that form data is valid or not 
			if ($this->form_validation->run() == TRUE) {

				//check admin login btn is click or not
				if (isset($_POST['adminLoginBtn'])) {

					//get Form fields data like UserName and Passwrod
					$_adminName = $_POST['adminName'];
					$_adminPasword = $_POST['adminPassword'];

					//Create model and check admin Record from database
					$this->load->model('Admin_Model');
					if ($AdminRecordExist = $this->Admin_Model->Admin_Login($_adminName,$_adminPasword)) {
						$this->session->set_flashdata('sess_Admin_Login_Success','Wellcome Admin!.. ');
							$_SESSION['sess_Admin_logedin'] = TRUE;
							$AdminDetails =  array('Admin_Id' => $AdminRecordExist->admin_id , 
													'Admin_Name' => $AdminRecordExist->admin_name , 
													'Admin_Password' => $AdminRecordExist->admin_password , 
													'Admin_Email' => $AdminRecordExist->admin_email , 
													'Admin_Status' => $AdminRecordExist->admin_status
													);
							$_SESSION['sess_Admin_Name'] = $AdminRecordExist->admin_name ;
							//this admin_Home is a controller
							$this->load->view('admin_panel/admin_includes/admin_header',$AdminDetails);
							$this->load->view("admin_panel/admin_Home",$AdminDetails);
							$this->load->view('admin_panel/admin_includes/admin_footer',$AdminDetails);
							//reDirect('admin_Home',"$AdminDetails");
							//$this->load->view("admin_panel/admin_Home",$AdminDetails);
					} else {
						//redirect to login page again
							$this->session->set_flashdata('sess_Admin_Login_Error','Sorry! Please Try agian with an Other username + password');
							redirect('home/admin_login','refresh');
					}							
				}
			}
		}
		//Admin Login Function Call here
		public function admin_login(){
			$this->load->view("admin_panel/admin_login");
		}


	public function sigOut()
	{
		unset($_SESSION['sess_logedin']);
		unset($_SESSION['user_id']);
		unset($_SESSION['sess_info']);
		unset($_SESSION['sess_name']);
		session_destroy();
		$_SESSION['sess_logedin'] == FALSE;
		$this->session->set_flashdata('sess_sigOut','You are SignOut Successfully!...');
		redirect('home');
	}
	public function Search(){
		if (isset($_POST['searchBtn'])) {
			$value = $_POST['searchBar'];

//Load Model and send data to all the pages
		$this->load->model('Lh_Products_Model');
		$data['products'] = $this->Lh_Products_Model->getProducts();
		$this->load->model('Products_Model');
		$data['catagories'] = $this->Products_Model->getProductCatagorys();
		$data['Search_value'] = $value;


		//load other pages 
		$data['page_name'] = "Search Loading...";
		$data['pg_tital1'] = "Laptop House";
		$data['pg_address'] = "Shop# 8 Ground Floor, Madina Tayyiba Plaza Prince Chowk,Gujrat ";
		$data['pg_branch'] = "Gujrat Branch Pakistan";
		$data['pg_contant'] = "+92300-6263101";
		$data['pg_email'] = "laptop_house786@yahoo.com";

		$this->load->view('templates/header',$data);
		$this->load->view('pages/search',$data);
		$this->load->view('templates/footer',$data);

		}
	}
	 	public function SendMessage(){
		if (isset($_POST['messageBtn'])) {
			$name = $_POST['name'];
			$email = $_POST['email'];
			$subject = $_POST['subject'];
			$message = $_POST['message'];

			$this->load->model('feedback_model');
			$this->feedback_model->insertMsg($name,$email,$subject,$message);

			redirect('home#contact_us','refresh');
        	unset($_POST["messageBtn"]);

		}
	}


}
