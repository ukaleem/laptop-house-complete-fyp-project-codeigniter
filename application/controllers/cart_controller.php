<?php 
/**
* 
*/
class cart_controller extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->Model('Cart_Model');
		$this->load->Model('Products_Model');
		$this->load->Model('Customer_Model');
		$this->load->Model('Orders_Model');
	}
	public function addToCart(){
		if (isset($_POST['addToCartBtn'])) {
			$id = $_POST['user_id'];
			$pro_id = $_POST['pro_id'];
			$qty = 1;
			$this->Cart_Model->Add($id,$pro_id,$qty);
			//Load Model and send data to all the pages
		$this->load->model('Lh_Products_Model');
		$data['products'] = $this->Lh_Products_Model->getProducts();
		$this->load->model('Products_Model');
		$data['catagories'] = $this->Products_Model->getProductCatagorys();

		$this->load->model('Cart_Model');
		$data['cart'] = $this->Cart_Model->allData();
		$data['CartCount'] = 1;


		//load other pages 
		$data['page_name'] = 'Home';
		$data['pg_tital1'] = "Laptop House";
		$data['pg_address'] = "Shop# 8 Ground Floor, Madina Tayyiba Plaza Prince Chowk,Gujrat ";
		$data['pg_branch'] = "Gujrat Branch Pakistan";
		$data['pg_contant'] = "+92300-6263101";
		$data['pg_email'] = "laptop_house786@yahoo.com";

		$this->load->view('templates/header',$data);
		$this->load->view('pages/cart',$data);
		$this->load->view('templates/footer',$data);
 			// redirect('home#daily_products','refresh');
        	unset($_POST["addToCartBtn"]);
		}

	} 
	public function cart_plus(){
		if (isset($_POST['cart_plus'])) {
			$qty = $_POST['q'];
			$id = $_POST['cart_id'];
			// echo "$qty and $id";
			// exit();

			$this->Cart_Model->update($qty,$id);
			
		$this->load->model('Lh_Products_Model');

		$data['products'] = $this->Lh_Products_Model->getProducts();
		$this->load->model('Products_Model');
		$data['catagories'] = $this->Products_Model->getProductCatagorys();

		$this->load->model('Cart_Model');
		$data['cart'] = $this->Cart_Model->allData();
		$data['CartCount'] = $qty;


		//load other pages 
		$data['page_name'] = 'Home';
		$data['pg_tital1'] = "Laptop House";
		$data['pg_address'] = "Shop# 8 Ground Floor, Madina Tayyiba Plaza Prince Chowk,Gujrat ";
		$data['pg_branch'] = "Gujrat Branch Pakistan";
		$data['pg_contant'] = "+92300-6263101";
		$data['pg_email'] = "laptop_house786@yahoo.com";

		$this->load->view('templates/header',$data);
		$this->load->view('pages/cart',$data);
		$this->load->view('templates/footer',$data);



 			// redirect('customer_controller/cartView','refresh');
        	unset($_POST["cart_plus"]);

		}
	}
	public function cart_minus(){
		if (isset($_POST['cart_minus'])) {
			$qty = $_POST['qm'];
			$id = $_POST['cart_id'];
			// echo "$qty and $id";
			// exit();

			$this->Cart_Model->update($qty,$id);
			//Load Model and send data to all the pages
		$this->load->model('Lh_Products_Model');
		$data['products'] = $this->Lh_Products_Model->getProducts();
		$this->load->model('Products_Model');
		$data['catagories'] = $this->Products_Model->getProductCatagorys();

		$this->load->model('Cart_Model');
		$data['cart'] = $this->Cart_Model->allData();
		$data['CartCount'] = $qty;


		//load other pages 
		$data['page_name'] = 'Home';
		$data['pg_tital1'] = "Laptop House";
		$data['pg_address'] = "Shop# 8 Ground Floor, Madina Tayyiba Plaza Prince Chowk,Gujrat ";
		$data['pg_branch'] = "Gujrat Branch Pakistan";
		$data['pg_contant'] = "+92300-6263101";
		$data['pg_email'] = "laptop_house786@yahoo.com";

		$this->load->view('templates/header',$data);
		$this->load->view('pages/cart',$data);
		$this->load->view('templates/footer',$data);

 			// redirect('customer_controller/cartView','refresh');
        	unset($_POST["cart_plus"]);

		}
	}
	public function Remove_from_Cart(){
		if (isset($_POST['cart_remove'])) {
			$removeId = $_POST['cart_remove'];
			// echo "Remove id is $removeId";
			// exit();

			$this->Cart_Model->Remove_from_Cart($removeId);
 			redirect('customer_controller/cartView','refresh');
        	unset($_POST["cart_plus"]);

		}
	}
	public function CheckOut() {
		if (isset($_POST['CheckOutBtn'])) {
			$productsDetails = array();
			$Bill =  $_POST['CheckOutBtn'];
			$user_id = $_SESSION['user_id'];
			$ProductNames = "";
			$User = "";
			$userAddres = "";
			$userPhone = ""; 

			//loged in user buy products
			// User ny jitny v order kiya hun gay wo is main ah jayn gay
			$data = $this->Cart_Model->currentUserItems($user_id);
			$productsDetails = array();

			for ($i=0; $i <count($data) ; $i++) { 
			$productsDetails = $this->Products_Model->selectedProduct($data[$i]['product_id']);
			$ProductNames .= $productsDetails[0]['p_name']." Qunatity".$data[$i]['qunatity']."X\n";
			}

			// for ($i=0; $i < count($data); $i++) { 
			// 	$ProductNames .= $productsDetails[0]['p_name']." ".$data[$i]['qunatity']."X\n";
			// }

			$UserDetails = $this->Customer_Model->SelectedCustomers($user_id);
			for ($i=0; $i <count($UserDetails); $i++) { 
				$User .= $UserDetails[$i]['cus_name'];
				$userAddres .= $UserDetails[$i]['cus_address'];
				$userPhone .= $UserDetails[$i]['cus_phone']; 
			}

			$res = $this->Orders_Model->InsertOrder($ProductNames,$Bill,$User,$userAddres,$userPhone);
			redirect('customer_controller/cartView','refresh');
        	unset($_POST["CheckOutBtn"]);

			// echo "<pre>";
			// echo $ProductNames;
			// echo "$User </br>";
			// echo "$userAddres </br>";
			// echo "$userPhone </br>";
			// print_r($UserDetails);
			// print_r($data);

			// echo "$Bill and $user_id";
			// exit;


			
		}

	}
}


 ?>