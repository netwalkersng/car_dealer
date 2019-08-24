<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Carbiz admin Controller
 *
 * This class handles user account related functionality
 *
 * @package		User
 * @subpackage	UserModelCore
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */



    class User_model extends CI_Model {
        public function __construct(){
            parent::__construct();
            $this->load->database();
        }
        function insert_user_data($data)
        {
            $this->db->insert('carbiz_users',$data);
            return $this->db->insert_id();
		}
	function get_user_type($id){
		return $this->db->get_where('carbiz_users', array('id'=>$id));

	}

    function add_user_meta($user_id, $user_meta, $value){
        $meta_data['user_id'] = $user_id;
        $meta_data['key'] = $user_meta;
        $meta_data['value'] =  $value;
        $this->db->insert('carbiz_user_meta', $meta_data);
    }

    function check_login($user_email,$return_as='num_rows')
	{
		$query = $this->db->get_where('carbiz_users',array('user_email'=>$user_email));

		if($query->num_rows()<=0)
		{
			
			// $mail_query = $this->db->get_where('users',array('user_email'=>$user_name));
			if($mail_query->num_rows()>0)
				$query = $mail_query;
		}

		if($return_as=='num_rows')
		{
			if($query->num_rows()>0)
			{
				$row = $query->row();
				if($row->user_type==1)
					return 1;
				else
				{
					if($row->confirmed==1)
						return 1;
					else
						return -1;
				}
			}
			else 
				return 0;
		}
		else
		{
			return $query;
		}
    }
    
    function update_password($password)
	{
		// $this->load->library('bcrypt');
		$user_email = $this->session->userdata('user_email');
		$data['password'] = password_hash($password, PASSWORD_DEFAULT);
        $data['recovery_key'] = '';
		$this->db->update('carbiz_users',$data,array('user_email'=>$user_email));
	}
}