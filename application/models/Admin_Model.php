<?php

/**
* 
*/
class Admin_Model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}
	public function login($email,$pw){

		if (isset($email) and isset($pw) )
			{
				//get and match data from database
				$this->db->select('*');
				// $checkInfo = array('username' =>$email ,'password' =>$pass);
				$this->db->from('adminTbl');
				$this->db->where(array('email' => $email,'password' => $pw));
				$query = $this->db->get();
				return $query->row();
			}
			else
			{
				$this->session->set_flashdata('sess_error'," Please Check email and password and try again!.");
				return false;
			}
	}
	public function Admin_Login($uName,$pw){
		if (isset($uName) and isset($pw)){
			$this->db->select('*');
			$this->db->from('lh_administrator');
			$this->db->where(array('admin_name' => $uName,'admin_password' => $pw ));

			$query = $this->db->get();
			return $query->row();
		}
		else {
			$this->session->set_flashdata('sess_Administrator_Not_Exist',"Sorry Your Are not Admint! Don't Try to Login Before Checking your UserName and Password.");
			return false;
		}
	}

	//Same function is in lh_products_model
	public function products(){

			$this->db->select('*');
			$this->db->from('lh_products');
			$query = $this->db->get();

			return $query->result_array();
	}
	//Same function is in lh_administrator
	public function my_profile(){

			$this->db->select('*');
			$this->db->from('lh_administrator');
			$query = $this->db->get();

			return $query->result_array();
	}

	public function update_My_Profile($id,$name ,$email ,$pw, $status){
		$_id = $id;
		$_name = $name;
		$_email = $email;
		$_pw = $pw;
		$_status = $status;

		$data = array( 
		    'admin_name' => $_name , 
		    'admin_email' => $_email, 
		    'admin_password' => $_pw,
		    'admin_status' => $_status
		);
		$this->db->where('admin_id', $_id);
		if ($this->db->update('lh_administrator', $data)) {
			$this->session->set_flashdata('sess_editProfile_success',"Profile Updated Successfully...");
			return true;
		} else {
			$this->session->set_flashdata('sess_editProfile_error',"Error! Profile Not Updated...");
			return false;
		}
	}

	public function admin_Logout(){
		
	}

}


 ?>