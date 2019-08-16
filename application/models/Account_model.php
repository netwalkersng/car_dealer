<?php
 class Account_model extends CI_Model{
    public function password_from_email_rows($password= 123456, $user_email='test@account.com'){
		$sql = "select `user_email`, `password` FROM `carbiz_users` WHERE password = ? AND user_email = ?";
		$password = MD5($password);
		$query = $this->db->query($sql, array($password, $user_email));
		return $query->num_rows();
	}
 }