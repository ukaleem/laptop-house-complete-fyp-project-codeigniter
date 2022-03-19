<?php 

/**
* Controler class that contains
* add/Delete?update Products in lh_products 
*/
class products_controller extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('Products_Model');
		
	}
	//This will insert Data to Products
	public function addProducts(){
		if (isset($_POST["insertBtn"])){
			
			// if (!empty($_FILES['pImage']['name'])) {

			// 	$config['upload_path'] = 'C:\wamp\www\Leptop_House\upload\images';
			// 	$config['allowed_types'] ='gif|jpj|png';
			// 	$config['file_name'] = $_FILES['pImage']['name'];


			// 	$this->load->library('upload',$config);
			// 	$this->load->initialize($config);

			// 	if ($this->upload->do_upload('pImage')) {
					
			// 		$uploadData = $this->upload->data();
			// 		$pImage = $uploadData['file_name'];

			// 	} else {
					
			// 		$pImage = '';
			// 	}
			// } else {
			
			// 	$pImage = '';
			// }
				$name = $_POST['pName'];
		        $price = $_POST['pPrice'];
		        $quant = $_POST['pQuantity'];
		        $catag = $_POST['pCatagorey'];
		        $desc = $_POST['pDesc'];
		        $img = $_POST['pImage'];
		       /* $config=[
				'upload_path'=>'./upload/',
				'allowed_types'=>'gif|jpj|png',
				'tmp_name'=>''];
				$this->load->library('upload',$config);
				
				if ($this->upload->do_upload()) {
					$data = $this->upload->data();
					echo "<pre>";
					print_r($img);
					print_r($data);
					exit();
				} else {
					$uploadError = $this->upload->display_errors();
					print_r($uploadError);
					exit();
				}
			*/
        $this->Products_Model->insertProduct($name,$price,$quant,$catag,$img,$desc);
        redirect('admin_Home/admin_products','refresh');
        unset($_POST["insertBtn"]);
		}
	}

	public function deleteProduct(){
		$delId = $_POST['delBtn'];
        $this->load->model('Products_Model');
        $this->Products_Model->deleteProduct($delId);
        redirect('admin_Home/admin_products','refresh');
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
}

 ?>