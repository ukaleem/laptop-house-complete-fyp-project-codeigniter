<?php 

/**
 * 
 */
 class feedback_model extends CI_Model
 {
 	
 	function __construct()
 	{
 		parent::__construct();
 	}
 	public function insertFeedback($status,$comment,$name,$email)
 	{
 		$sql = "INSERT INTO lh_feed_back(`status`, `comment`, `user_name`, `email`)  VALUES (?,?,?,?)";

		if ($this->db->query($sql , array($status,$comment,$name,$email))) {
			$Id = $this->db->insert_id();
			$efRow = $this->db->affected_rows();

			$this->session->set_flashdata('sess_feedbackInsert_successfull',"Thank You! Your Feedback is Posted...");
			return true;
		} else {
			$this->session->set_flashdata('sess_feedback_error',"Sorry Try again...");
			return false;
		}

 	}
 	public function insertMsg($name,$email,$subject,$message)
 	{
 		$sql = "INSERT INTO lh_email_msgs(`name`, `email`, `subject`, `message`) VALUES (?,?,?,?)";

		if ($this->db->query($sql , array($name,$email,$subject,$message))) {
			$Id = $this->db->insert_id();
			$efRow = $this->db->affected_rows();

			$this->session->set_flashdata('sess_MsgInsert_successfull',"Your Email Massage is Sent...");
			return true;
		} else {
			$this->session->set_flashdata('sess_Msg_error',"Sorry Email Message Not Send...");
			return false;
		}

 	}
 	public function allFeedbacks(){
		
			$this->db->select('*');
			$this->db->from('lh_feed_back');
			$query = $this->db->get();
			return $query->result_array();
	}
	public function allMassages(){
		
			$this->db->select('*');
			$this->db->from('lh_email_msgs');
			$query = $this->db->get();
			return $query->result_array();
	}
	public function deleteFeedback($delId){
		$_delID = $delId;
		$sql = "DELETE FROM `lh_feed_back` WHERE `fb_id` = ? ";
		if ($this->db->query($sql , array($_delID))) {
			$this->session->set_flashdata('sess_pDelete_successfull',"Record Deleted...");
			return true;
		} else {
			$this->session->set_flashdata('sess_pDelete_error',"Not Deleted Something Is Wrong...");
			return false;
		}
	} 
	public function deleteMsg($delId){
		$_delID = $delId;
		$sql = "DELETE FROM `lh_email_msgs` WHERE `id` = ? ";
		if ($this->db->query($sql , array($_delID))) {
			$this->session->set_flashdata('sess_pDelete_successfull',"Record Deleted...");
			return true;
		} else {
			$this->session->set_flashdata('sess_pDelete_error',"Not Deleted Something Is Wrong...");
			return false;
		}
	}

 } ?>