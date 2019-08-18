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
        function insert_user_data($data)
        {
            $this->db->insert('carbiz_users',$data);
            return $this->db->insert_id();
        }

    function add_user_meta($user_id, $user_meta, $value){
        $meta_data['user_id'] = $user_id;
        $meta_data['key'] = $user_meta;
        $meta_data['value'] =  $value;
        $this->db->insert('carbiz_user_meta', $meta_data);
    }
}