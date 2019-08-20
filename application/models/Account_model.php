<?php
 class Account_model extends CI_Model{
    public function password_from_email_rows($password= 123456, $user_email='test@account.com'){
		$sql = "select `user_email`, `password` FROM `carbiz_users` WHERE user_email = ?";
        // $password = MD5($password);
        $query = $this->db->query($sql, array($user_email));
       if($query->num_rows()==1){
           $hash = $query->row()->password;
            if(password_verify($password, $hash)){
                return 1;
            }else{
                return 0;
            }
       }else{
            return 0;
       }
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

    function confirm_email($email,$code)
	{
		$query = $this->db->get_where('carbiz_users',array('user_email'=>$email,'confirmation_key'=>$code));
		if($query->num_rows()>0)
		{
			$this->load->helper('date');
			$datestring = "%Y-%m-%d %h:%i:00";
			$time = time();

			$data['confirmed'] = 1;
			$data['confirmed_date'] = mdate($datestring, $time);
			$data['confirmation_key'] = '';
			$this->db->update('carbiz_users',$data,array('user_email'=>$email));
			return TRUE;
		}
		else
		{
			return FALSE;
		}
	}
    
 }