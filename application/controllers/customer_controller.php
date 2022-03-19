<?php 

/**
 * 
 */
 class customer_controller extends CI_Controller
 {
 	function __construct()
 	{
 		parent::__construct();
 		$this->load->model('Products_Model');
 	}
 	public function admin(){
		if ($_SESSION['sess_name']) {

			$data['page_name'] = "Sign In";
			$data['pg_tital1'] = "Laptop House";
			$data['pg_address'] = "Gujrat, Jail chock, BISMILA Market";
			$data['pg_branch'] = "Gujrat Branch Pakistan";
			$data['pg_contant'] = "+92300-6263101";
			$data['pg_email'] = "laptop_house786@yahoo.com";
			$this->load->model('Products_Model');
		$data['catagories'] = $this->Products_Model->getProductCatagorys();

		$this->load->model('Customer_Model');
		$data['my_profile'] = $this->Customer_Model->SelectedCustomers($_SESSION['user_id']);

			$this->load->view('templates/header',$data);
			$this->load->view('pages/admin');
			$this->load->view('templates/footer',$data);
			} else {
				$this->session->set_flashdata('sess_WrongTry','Error:You Are Tring to Access Wrong Page...');
				redirect('home');
			}		
	}
		public function cartView(){
		$data['page_name'] = "Cart View";
		$data['pg_tital1'] = "Laptop House";
		$data['pg_address']= "Gujrat, Jail chock, BISMILA Market";
		$data['pg_branch'] = "Gujrat Branch Pakistan";
		$data['pg_contant']= "+92300-6263101";
		$data['pg_email'] = "laptop_house786@yahoo.com";

		$this->load->model('Products_Model');
		$data['catagories'] = $this->Products_Model->getProductCatagorys();

		$this->load->model('Cart_Model');
		$data['cart'] = $this->Cart_Model->allData();


		$this->load->view('templates/header',$data);
		$this->load->view('pages/cart');
		$this->load->view('templates/footer',$data);
	}

	//This is customer SigUp function 
	// Customer SignIn funciton is in Home.php controller.
  	public function customer_signup(){
 		if (isset($_POST['register'])) {
 			$this->form_validation->set_rules('username','User Nname','required');
			$this->form_validation->set_rules('email','Eamil','required');
			$this->form_validation->set_rules('password','Password','required|min_length[8]');
			$this->form_validation->set_rules('phone','Phone No','required|min_length[11]');
			$this->form_validation->set_rules('address','Address','required');
			
			if ($this->form_validation->run() == TRUE) {
						
				//insert user data form register page to database
				$username = $_POST['username'];
	 			$email = $_POST['email'];
	 			$password = $_POST['password'];
	 			$phoneno = $_POST['phone'];
	 			$address = $_POST['address'];

	 			
				$this->load->model('Customer_Model');
				$this->Customer_Model->cust_signUp($username,$email,$password,$phoneno,$address);
				redirect('home/index/register','refresh');
			} else {
				redirect('home/index/register','refresh');
			}
 			
 		}

 	}
 } ?>