<?php 
/**
* 
*/
class random_controller extends CI_Controller
{	
	function __construct()
	{
		parent::__construct();
	}
	public function randomView(){
				$data['page_name'] = "Place Order";
				$data['pg_tital1'] = "Laptop House";
				$data['pg_address'] = "Gujrat, Jail chock, BISMILA Market";
				$data['pg_branch'] = "Gujrat Branch Pakistan";
				$data['pg_contant'] = "+92300-6263101";
				$data['pg_email'] = "laptop_house786@yahoo.com";
				$this->load->model('Products_Model');
		$data['catagories'] = $this->Products_Model->getProductCatagorys();

				$this->load->view('templates/header',$data);
				$this->load->view('pages/RendomPage');
				$this->load->view('templates/footer',$data);
	}
}
?>