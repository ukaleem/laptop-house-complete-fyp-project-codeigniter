<?php 
/**
 * 
 */
 class Place_Orders_Model extends CI_Model
 { 	
 	function __construct()
 	{
 		parent::__construct();
 	}
 	public function allPlacedOrders(){
		$this->db->select('*');
		$this->db->from('lh_placeorder');
		$Data = $this->db->get();
		return $Data->result_array();
		// echo "<pre>";
		// print_r();
		// exit();
	}
 	public function insertOrder($fname,$lname,$phone,$email,$address,$city,$date,$description){
		$sql = "INSERT INTO lh_placeorder (`fname`, `lname`, `phone`, `email`, `address`, `city`, `date`, `description`) VALUES (?,?,?,?,?,?,?,?)";

		if ($this->db->query($sql , array($fname,$lname,$phone,$email,$address,$city,$date,$description))) {
			$Id = $this->db->insert_id();
			$efRow = $this->db->affected_rows();

			$this->session->set_flashdata('sess_pInsert_successfull',"Your Order Is Placed Successfully We will Contact you soon");
			return true;
		} else {
			$this->session->set_flashdata('sess_pInsert_error',"Something Is Wrong Please Try again...");
			return false;
		}
 	}
 	public function deletePlacedOrders($delId){

		$_delID = $delId;
		$sql = "DELETE FROM `lh_placeorder` WHERE `id` = ? ";
		if ($this->db->query($sql , array($_delID))) {
			$this->session->set_flashdata('sess_pDelete_successfull',"Record Deleted...");
			return true;
		} else {
			$this->session->set_flashdata('sess_pDelete_error',"Not Deleted Something Is Wrong...");
			return false;
		}
	}
} ?>