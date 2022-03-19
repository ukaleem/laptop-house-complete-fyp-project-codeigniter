<?php 
/**
* 
*/
class AddCatagories_Model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}
	public function getAllCategories(){
		$this->db->select('*'); 
		$this->db->from('lh_categories');
		$Query = $this->db->get();
		return $Query->result_array();
	}
	public function insertCategories($title){
		$_name = $title;
		$sql = "INSERT INTO lh_categories(
					cat_title) VALUES (?)";
		if ($this->db->query($sql , array($_name))) {
			$Id = $this->db->insert_id();
			$efRow = $this->db->affected_rows();

			$this->session->set_flashdata('sess_pInsert_successfull',"New Product# $Id is Inserted Successfully...");
			return true;
		} else {
			$this->session->set_flashdata('sess_pInsert_error',"Something Is Wrong Please Try again...");
			return false;
		}
	}
	public function deleteCategorie($delId){

		$_delID = $delId;
		$sql = "DELETE FROM `lh_categories` WHERE `cat_id` = ? ";
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