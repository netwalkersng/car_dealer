<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
if ( ! function_exists('is_banned'))
{
	function is_banned($user_email)
	{
		$CI = get_instance();
		$CI->load->database();
		$query = $CI->db->get_where('carbiz_users',array('user_email'=>$user_email));
		if($query->num_rows()>0)
		{
			$row = $query->row();
			if($row->banned==1)
				return TRUE;
			else
				return FALSE;
		}
		else
			return TRUE;
	}

	if ( ! function_exists('is_admin'))
	{
		function is_admin()
		{
			$CI = get_instance();
			if($CI->session->userdata('user_mail')!='' && $CI->session->userdata('user_type')==1)
				return TRUE;
			else
				return FALSE;
		}
	}
	if ( ! function_exists('get_id_by_username'))
{
	function get_id_by_user_email($user_id)
	{
		$CI = get_instance();
		$query = $CI->db->get_where('carbiz_users',array('id'=>$user_id));
		$row = $query->row();
		return $row->id;
		
	}
}

	if ( ! function_exists('is_agent'))
	{
		function is_agent()
		{
			$CI = get_instance();
			if($CI->session->userdata('user_email')!='' && $CI->session->userdata('user_type')==2)
				return TRUE;
			else if($CI->session->userdata('user_email')!='' && $CI->session->userdata('user_type')==3)
				return TRUE;
			else
				return FALSE;
		}
	}
		if ( ! function_exists('get_car_type_icon'))
	{
		function get_car_type_icon($return_type="name",$name='default-icon.png')
		{
			if($return_type=="name")
				return $name;
			else
				return base_url()."/uploads/car-icons/".$name;
		}
	}
}