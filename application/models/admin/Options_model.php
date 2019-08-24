<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Carbiz options_model_core model
 *
 * This class handles options_model_core management related functionality
 *
 * @package		Admin
 * @subpackage	options_model_core
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */

class Options_model extends CI_Model 
{
	function __construct()
	{
		parent::__construct();
		$this->load->database();
    }

    function getvalues($key)
	{
		$query = $this->db->get_where('carbiz_options',array('key'=>$key));
		if($query->num_rows()>0)
		{
			$row = $query->row();
			return json_decode($row->values);
		}
		else
			return '';	
	}
}