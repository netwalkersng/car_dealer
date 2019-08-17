<?php
 class Account_model extends CI_Model{
    public function password_from_email_rows($password= 123456, $user_email='test@account.com'){
		$sql = "select `user_email`, `password` FROM `carbiz_users` WHERE password = ? AND user_email = ?";
		$password = MD5($password);
		$query = $this->db->query($sql, array($password, $user_email));
		return $query->num_rows();
    }
    
    public function email_count($email){
        $sql = "select email FROM `carbiz_users` WHERE `user_email` = ?";
        $query = $this->db->query($sql, array($email));
        return $query->num_rows();
    }
    public function get_user_id_by_email($email="test"){
        $sql = "SELECT id FROM `carbiz_users` WHERE `user_email` = ?";
        $query = $this->db->query($sql, array($email));
        return $query->row_array();
    }
    public function get_user_details_by_email($email="test"){
        $sql = "SELECT * FROM `carbiz_users` WHERE `user_email` = ?";
        $query = $this->db->query($sql, array($email));
        return $query->row_array();
    }
 }