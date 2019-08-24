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
}