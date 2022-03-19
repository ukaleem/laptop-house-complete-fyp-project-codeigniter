<?php 

/**
* 
*/
class Lh_Products_Model extends CI_model
{
	
	function __construct()
	{
		parent::__construct();
	}
	public function getProducts(){
		$this->db->select('*');
		$this->db->from('lh_products');
		$Query = $this->db->get();
		return $Query->result_array();
	}
	public function products(){

			$this->db->select('*');
			$this->db->from('lh_products');
			$query = $this->db->get();
			return $query->result_array();
	}

	
}


 ?>