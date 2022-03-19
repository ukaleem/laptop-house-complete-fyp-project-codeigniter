<?php 

/**
* 
*/
class Cart_Model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}
	public function Add($id,$pro_id,$qty){

		$sql = "INSERT INTO lh_cart(`cus_id`, `product_id`, `qunatity`) VALUES (?,?,?)";

		if ($this->db->query($sql , array($id,$pro_id,$qty))) {
			$Id = $this->db->insert_id();
			$efRow = $this->db->affected_rows();
			$this->session->set_flashdata('sess_cartAdd_success',"Added...");
			return true;
		} else {
			return false;
		}

	}
	public function allData(){
		$this->db->select('*');
		$this->db->from('lh_cart');
		$Data = $this->db->get();
		return $Data->result_array();
	}
	public function selecedProDetails(){
		$this->db->select('*');
		$this->db->from('lh_cart');
		$this->db->where('product_id',"3");
		$Data = $this->db->get();
		return $Data->result_array();
	}
	public function update($qunt,$id){

		// echo "$qunt and $id";
		// exit();
		$data = array( 
		    'qunatity' => $qunt,
		);
		$this->db->where('cart_id', $id);
		if ($this->db->update('lh_cart', $data)) {
			return true;
		} else {
			return false;
		}
	}

	public function Remove_from_Cart($rid){

		$sql = "DELETE FROM `lh_cart` WHERE `cart_id` = ? ";
		if ($this->db->query($sql , array($rid))) {
			// $this->session->set_flashdata('sess_pDelete_successfull',"Record Deleted...");
			return true;
		} else {
			// $this->session->set_flashdata('sess_pDelete_error',"Not Deleted Something Is Wrong...");
			return false;
		}

	}
	public function currentUserItems($id){
			$this->db->select('*');
			$this->db->from('lh_cart');
			$this->db->where('cus_id',$id);

			$data = $this->db->get();
			return $data->result_array();
	}
}

 ?>