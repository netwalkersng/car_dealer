<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Carbiz category_model_core model
 *
 * This class handles category_model_core management related functionality
 *
 * @package		Admin
 * @subpackage	category_model_core
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */
class Category_model extends CI_Model 
{
	var $category,$menu;

	function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->category = array();
    }

	function get_all_categories_by_range($start,$sort_by='')
	{
		$this->db->order_by($sort_by, "asc");
		$this->db->where('status',1); 
		$query = $this->db->get('carbiz_categories');
		return $query;
	}

	function insert_category($data)
	{
		$this->db->insert('carbiz_categories',$data);
		return $this->db->insert_id();
	}

	function get_category_by_id($id)
	{
		$query = $this->db->get_where('carbiz_categories',array('id'=>$id));
		if($query->num_rows()<=0)
		{
			echo 'Invalid category id';die;
		}
		else
		{
			return $query->row();
		}
	}

	function update_category($data,$id)
	{
		$this->db->update('carbiz_categories',$data,array('id'=>$id));
	}
}