<?php 

/**
* 
*/
class admin_Home extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
	}

	public function index(){
		$this->load->view('admin_panel/admin_includes/admin_header');
		$this->load->view("admin_panel/admin_Home");
		$this->load->view('admin_panel/admin_includes/admin_footer');

	}

	public function admin_products(){
		$this->load->model('Admin_Model');
		$this->load->model('Products_Model');

		$data['catagories'] = $this->Products_Model->getProductCatagorys();

        $data['product']= $this->Admin_Model->products();
       /* echo "<pre>";
        echo count($data);
        print_r($data);
        exit();*/
		$this->load->view('admin_panel/admin_includes/admin_header',$data);
		$this->load->view("admin_panel/admin_pages/admin_products",$data);
		$this->load->view('admin_panel/admin_includes/admin_footer',$data);
	}
	public function admin_orders(){
		$this->load->model('Admin_Model');
		$this->load->model('Orders_Model');

		$data['allOrders'] = $this->Orders_Model->GetAllOrders();
       /* echo "<pre>";
        echo count($data);
        print_r($data);
        exit();*/
		$this->load->view('admin_panel/admin_includes/admin_header',$data);
		$this->load->view("admin_panel/admin_pages/admin_orders",$data);
		$this->load->view('admin_panel/admin_includes/admin_footer',$data);
	}
	public function admin_customers(){
		$this->load->model('Customer_Model');
		
        $data['customer']= $this->Customer_Model->allCustomers();
    
		$this->load->view('admin_panel/admin_includes/admin_header',$data);
		$this->load->view("admin_panel/admin_pages/admin_customers",$data);
		$this->load->view('admin_panel/admin_includes/admin_footer',$data);
	}
	public function admin_AddCatagories(){
		$this->load->model('AddCatagories_Model');
		
        $data['categories']= $this->AddCatagories_Model->getAllCategories();
    
		$this->load->view('admin_panel/admin_includes/admin_header',$data);
		$this->load->view("admin_panel/admin_pages/admin_addCatagories",$data);
		$this->load->view('admin_panel/admin_includes/admin_footer',$data);
	}
	public function admin_placeorders(){
		$this->load->model('Place_Orders_Model');

        $data['placedOrders']= $this->Place_Orders_Model->allPlacedOrders();
       /* echo "<pre>";
        echo count($data);
        print_r($data);
        exit();*/
		$this->load->view('admin_panel/admin_includes/admin_header',$data);
		$this->load->view("admin_panel/admin_pages/admin_placeorders",$data);
		$this->load->view('admin_panel/admin_includes/admin_footer',$data);
	}

	public function admin_feedbacks(){
		$this->load->model('feedback_model');
        $data['feedbacks']= $this->feedback_model->allFeedbacks();
        
		$this->load->view('admin_panel/admin_includes/admin_header',$data);
		$this->load->view("admin_panel/admin_pages/admin_feedbacks",$data);
		$this->load->view('admin_panel/admin_includes/admin_footer',$data);
	}
	public function admin_message(){
		$this->load->model('feedback_model');
        $data['allMassages']= $this->feedback_model->allMassages();
        
		$this->load->view('admin_panel/admin_includes/admin_header',$data);
		$this->load->view("admin_panel/admin_pages/admin_email_msg",$data);
		$this->load->view('admin_panel/admin_includes/admin_footer',$data);
	}

	public function admin_dashboard(){
		
		$this->load->view('admin_panel/admin_includes/admin_header');
		$this->load->view("admin_panel/admin_pages/admin_dashboard");
		$this->load->view('admin_panel/admin_includes/admin_footer');
	}

	public function my_profile(){
		$data['pg_tital1'] = "Laptop House";
		$data['pg_address'] = "Gujrat, Jail chock, BISMILA Market";
		$data['pg_branch'] = "Gujrat Branch Pakistan";
		$data['pg_contant'] = "+92300-6263101";
		$data['pg_email'] = "laptop_house786@yahoo.com";

		$this->load->model('Admin_Model');
		$data['my_profile'] = $this->Admin_Model->my_profile();
		$this->load->view('admin_panel/admin_includes/admin_header',$data);
		$this->load->view("admin_panel/admin_pages/my_profile",$data);
		$this->load->view('admin_panel/admin_includes/admin_footer',$data);
	}

	public function update_my_profile(){
		if (isset($_POST['profileUpdateBtn'])) {
		$id = $_POST['id'];
		$name = $_POST['name'];
		$pw = $_POST['password'];
		$email = $_POST['email'];
		$status = $_POST['status'];

		$this->load->model('Admin_Model');
		$this->Admin_Model->update_My_Profile($id,$name,$email,$pw,$status);
       	redirect('admin_Home/my_profile','refresh');
        unset($_POST["id"]);
		}
		

	}



}

 ?>