<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Carbiz System_model_core model
 *
 * This class handles System_model_core management related functionality
 *
 * @package		Admin
 * @subpackage	System_model_core
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */

class System_model extends CI_Model 
{
	function __construct()
	{
		parent::__construct();
		$this->load->database();
    }

    	#************ email functions *************#
	function get_all_emails()
	{
		$query = $this->db->get_where('carbiz_emailtmpl',array('status'=>1));
		return $query;
	}
	
	function get_email_by_id($id)
	{
		$query = $this->db->get_where('carbiz_emailtmpl',array('id'=>$id));
		return $query;
	}
	
	#updated on version 1.8
	function get_email_tmpl_by_email_name($name)
	{

		
		$file 		= './web_config/locals-email/'.$name.'.xml';
	   	$xmlstr 	= @file_get_contents($file);
	   	if($xmlstr!='')
	   	{
			$xml 		= simplexml_load_string($xmlstr);
			$content	= $xml->xpath('//content');	   		
	   	}
	   	
		if(isset($content[0]))
		{
			$values = (array)$content[0];
			$values['body'] = nl2br($values['body']);
			return (object)$values;
		}
		else
		{
			$query = $this->db->get_where('carbiz_emailtmpl',array('email_name'=>$name));
			if($query->num_rows()>0)
			{
				$row = $query->row();
				$values = json_decode($row->values);
				return $values;
			}
			else
			{
				$values = array('subject'=>'Subject Not found','body'=>'body not found');
			}
			return $values;			
		}
	}
	#end
}