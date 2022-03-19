<?php 
/** 
* 
*/
class Products_Model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}
	public function getProductCatagorys(){

				$this->db->select('cat_title');
				$this->db->from('lh_categories');
				$query = $this->db->get();
				return $query->result_array();
	}
	public function selectedProduct($productId){
		$this->db->select('*');
		$this->db->from('lh_products');
		$this->db->where('p_id',$productId);
		$query = $this->db->get();
		return $query->result_array();
	}
	public function insertProduct($name ,$price ,$quant, $catag,$img , $desc){
		$_name = $name;
		$_Price = $price;
		$_quant = $quant;
		$_catag = $catag;
		$_img = $img;
		$_desc  = $desc;
		
		$sql = "INSERT INTO lh_products(
					p_name,
					p_price,
					p_quantity,
					cat_name,
					p_image,
					p_description) VALUES (?,?,?,?,?,?)";

		if ($this->db->query($sql , array($_name,$_Price,$_quant,$_catag,$_img,$_desc))) {
			$Id = $this->db->insert_id();
			$efRow = $this->db->affected_rows();

			$this->session->set_flashdata('sess_pInsert_successfull',"New Product# $Id is Inserted Successfully...");
			return true;
		} else {
			$this->session->set_flashdata('sess_pInsert_error',"Something Is Wrong Please Try again...");
			return false;
		}
	}

	public function deleteProduct($delId){

		$_delID = $delId;
		$sql = "DELETE FROM `lh_products` WHERE `p_id` = ? ";
		if ($this->db->query($sql , array($_delID))) {
			$this->session->set_flashdata('sess_pDelete_successfull',"Record Deleted...");
			return true;
		} else {
			$this->session->set_flashdata('sess_pDelete_error',"Not Deleted Something Is Wrong...");
			return false;
		}
	}

	public function updateProduct($updateId){

			$this->db->select('*');
			$this->db->from('lh_products');
			$this->db->where('p_id',$updateId);
			$query = $this->db->get();
			return $query->result_array();

	}
	public function finalUpdateProduct($id,$name ,$price ,$quant, $catag,$img , $desc){
		$_id = $id;
		$_name = $name;
		$_Price = $price;
		$_quant = $quant;
		$_catag = $catag;
		$_img = $img;
		$_desc  = $desc;

		$data = array( 
		    'p_name' => $_name , 
		    'p_price' => $_Price, 
		    'p_quantity' => $_quant,
		    'cat_name' => $_catag , 
		    'p_image' => $_img, 
		    'p_description' => $_desc
		);
		$this->db->where('p_id', $_id);
		if ($this->db->update('lh_products', $data)) {
			$this->session->set_flashdata('sess_pUpdated_successfull',"Product# $_id is Updated Successfully...");
			return true;
		} else {
			$this->session->set_flashdata('sess_pUpdated_error',"Something Wrong Not Updated...");
			return false;
		}
	}
}
?>