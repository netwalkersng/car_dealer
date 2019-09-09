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
class Brandmodels_model extends CI_Model 
{
	var $category,$menu;

	function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->category = array();
	}

	function get_brandmodels_id_by_name($name,$type,$parent)
	{
		$query = $this->db->get_where('carbiz_brandmodels',array('status'=>1,'name'=>$name,'type'=>$type,'parent'=>$parent));
		if($query->num_rows()>0)
		{
			$row = $query->row();
			return $row->id;
		}
		else
		{
			$data = array();
			$data['type'] 	= $type;
			$data['name'] 	= $name;
			$data['parent']	= $parent;
			$this->db->insert('carbiz_brandmodels',$data);
			return $this->db->insert_id();
		}
	}

	function get_brandmodels_json($term='',$type,$parent)
	{
		$this->db->like('name',$term);
		$this->db->order_by('TRIM(name)', "asc");
		$query = $this->db->get_where('carbiz_brandmodels',array('status'=>1,'type'=>$type,'parent'=>$parent));
		$data = array();
		foreach ($query->result() as $row) {
			$val = array();
			$val['id'] = $row->id;
			$val['label'] = $row->name;
			$val['value'] = $row->name;
			array_push($data,$val);
		}
		return $data;
	}

	function get_all_brandmodels_by_range($start,$limit='',$sort_by='name')
	{
		$data = array();
		$this->db->order_by('TRIM('.$sort_by.')', "asc");
		$this->db->where('status',1);
		$this->db->where('parent',0);
		$key = $this->input->post('key');
		if($key!='')
		{
			$this->db->like('name',$key);
		}
		$query = $this->db->get('carbiz_brandmodels');

		foreach ($query->result() as $brand) {

			array_push($data,$brand);

			$this->db->order_by('TRIM(name)', "asc");
			
			$model_query = $this->db->get_where('carbiz_brandmodels',array('status'=>1,'parent'=>$brand->id));
			foreach ($model_query->result() as $model) {
					array_push($data,$model);
			}
		}

		return array_slice($data,$start,$limit,true);
	}
	
	function count_all_brandmodels()
	{
		$data = array();
		$this->db->where('status',1);
		$this->db->where('parent',0);
		$key = $this->input->post('key');
		if($key!='')
		{
			$this->db->like('name',$key);
		}
		$query = $this->db->get('carbiz_brandmodels');

		foreach ($query->result() as $brand) {

			array_push($data,$brand);

			$this->db->order_by('TRIM(name)', "asc");
			
			$model_query = $this->db->get_where('carbiz_brandmodels',array('status'=>1,'parent'=>$brand->id));
			foreach ($model_query->result() as $model) {
					array_push($data,$model);
			}
		}

		return count($data);
	}
	
	function insert_brandmodels($data)
	{
		$this->db->insert('carbiz_brandmodels',$data);
		return $this->db->insert_id();
	}

	function get_brandmodels_by_type($type)
	{
		$this->db->order_by('TRIM(name)', "asc");
		$query = $this->db->get_where('carbiz_brandmodels',array('type'=>$type,'status'=>1));
		return $query;
	}

	function get_brandmodels_by_id($id)
	{
		$query = $this->db->get_where('carbiz_brandmodels',array('id'=>$id));
		if($query->num_rows()<=0)
		{
			return 'error';
		}
		else
		{
			return $query->row();
		}
	}

	function delete_brandmodels_by_id($id)
	{
		$data['status'] = 0;
		$this->db->update('carbiz_brandmodels',$data,array('id'=>$id));
		$this->db->update('carbiz_brandmodels',$data,array('parent'=>$id));
	}


	function update_brandmodels($data,$id)
	{
		$this->db->update('carbiz_brandmodels',$data,array('id'=>$id));
	}
	
	public function brand_exist($name){
	$query = $this->db->get_where('carbiz_brandmodels', array('name'=>$name));
	return $query->num_rows();
	}
}

/* End of file category_model_core.php */
/* Location: ./system/application/models/category_model_core.php */