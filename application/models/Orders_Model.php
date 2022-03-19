<?php 

/**
 * 
 */
 class Orders_Model extends CI_Model
 {
 	
 	function __construct()
 	{
 		parent::__construct();
 	}

 public function insertOrder($ProductNames,$Bill,$User,$userAddres,$userPhone){
		
		$sql = "INSERT INTO lh_order(`pro_name`, `ord_total`, `cus_name`, `cus_address`, `cus_phone`) VALUES  (?,?,?,?,?)";

		if ($this->db->query($sql , array($ProductNames,$Bill,$User,$userAddres,$userPhone))) {
			$Id = $this->db->insert_id();
			$efRow = $this->db->affected_rows();

			$this->session->set_flashdata('sess_Order_successfull',"Thank You! Order Placed Successfully...");
			return true;
		} else {
			$this->session->set_flashdata('sess_Order_error',"Something Is Wrong Please Try again...");
			return false;
		}
	}

	public function GetAllOrders(){
		$this->db->select('*');
		$this->db->from('lh_order');
		$res = $this->db->get();
		return $res->result_array();
	}


 } ?>