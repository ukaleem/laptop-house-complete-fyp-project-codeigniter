<?php 

/**
* 
*/
class Customer_Model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}
	public function cust_signIn($email,$pw){

		if (isset($email) and isset($pw) )
			{
				//get and match data from database
				$this->db->select('*');
				// $checkInfo = array('username' =>$email ,'password' =>$pass);
				$this->db->from('lh_customers');
				$this->db->where(array('cus_email' => $email,'cus_password' => $pw));
				$query = $this->db->get();
				if ($data = $query->row()) {
					$this->session->set_flashdata("sess_SigIn_success","Login Successful!...");
					return $data;
				} else {
					$this->session->set_flashdata("sess_SigIn_error","Login Failed try again!...");
					return false;
				}
			}
			else
			{
				$this->session->set_flashdata('sess_error'," Please Check email and password and try again!.");
				return false;
			}
	}

	public function cust_signUp($name , $email ,$password , $phone ,$address){
		$_name = $name;
		$_email = $email;
		$_password = $password;
		$_phone = $phone;
		$_address = $address;

		$sql = "INSERT INTO lh_customers (`cus_name`, `cus_email`, `cus_password`, `cus_phone`, `cus_address`) VALUES (?,?,?,?,?)";

		if ($this->db->query($sql , array($_name,$_email,$_password,$_phone,$_address))) {
			$Id = $this->db->insert_id();
			$efRow = $this->db->affected_rows();

			$this->session->set_flashdata("sess_SigUp_success","Your Account has been Register, you can login now!...");
			return true;
		} else {
			$this->session->set_flashdata('sess_SigUp_error',"Something Is Wrong Please Try again...");
			return false;
		}

	}
	public function allCustomers(){
		$this->db->select('*');
		$this->db->from('lh_customers');
		$Data = $this->db->get();
		return $Data->result_array();
		// echo "<pre>";
		// print_r();
		// exit();
	}
	public function SelectedCustomers($id){
		$this->db->select('*');
		$this->db->from('lh_customers');
		$this->db->where('cus_id',$id);
		$Data = $this->db->get();
		return $Data->result_array();
		// echo "<pre>";
		// print_r();
		// exit();
	}
	public function deleteCustomer($delId){

		$_delID = $delId;
		$sql = "DELETE FROM `lh_customers` WHERE `cus_id` = ? ";
		if ($this->db->query($sql , array($_delID))) {
			$this->session->set_flashdata('sess_pDelete_successfull',"Record Deleted...");
			return true;
		} else {
			$this->session->set_flashdata('sess_pDelete_error',"Not Deleted Something Is Wrong...");
			return false;
		}
	}
}

 ?>