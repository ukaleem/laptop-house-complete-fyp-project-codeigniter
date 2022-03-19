<?php 
/**
* 
*/
class feedback_controller extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
	}
	public function feedbackView(){
				$data['page_name'] = "Place Order";
				$data['pg_tital1'] = "Laptop House";
				$data['pg_address'] = "Gujrat, Jail chock, BISMILA Market";
				$data['pg_branch'] = "Gujrat Branch Pakistan";
				$data['pg_contant'] = "+92300-6263101";
				$data['pg_email'] = "laptop_house786@yahoo.com";
				$this->load->model('Products_Model');
				$data['catagories'] = $this->Products_Model->getProductCatagorys();

				$this->load->view('templates/header',$data);
				$this->load->view('pages/feedbacks');
				$this->load->view('templates/footer',$data);
	}
	public function insertFeedBack(){
		if(isset($_POST['feedbackBtn'])){
		$status = $_POST['experience'];
		$comment  = $_POST['comments'];
		$name = $_POST['name'];
		$email  = $_POST['email'];
		$this->load->model('feedback_model');
		$this->feedback_model->insertFeedback($status,$comment,$name,$email);
		redirect('feedback_controller/feedbackView','refresh');
        // unset($_POST["insertBtn"]);
		}
	}
	public function deleteFeedBack(){
		if (isset($_POST['delBtn'])) {
		$delId = $_POST['delBtn'];
        $this->load->model('feedback_model');
        $this->feedback_model->deleteFeedback($delId);
        redirect('admin_Home/admin_feedbacks','refresh');
        unset($_POST["delBtn"]);
		}
	}
	public function deleteMsg(){
		if (isset($_POST['delBtn'])) {
		$delId = $_POST['delBtn'];
        $this->load->model('feedback_model');
        $this->feedback_model->deleteMsg($delId);
        redirect('admin_Home/admin_message','refresh');
        unset($_POST["delBtn"]);
		}
	}
}
 ?>