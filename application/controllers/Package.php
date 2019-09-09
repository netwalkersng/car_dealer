<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Carbiz memento Controller
 *
 * This class handles only memento related functionality
 *
 * @package		Admin
 * @subpackage	Memento
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */
class Package extends CI_Controller {

    public function index()
	{
		$this->all();
    }
    
    public function all() 
	{
		$data['title']		= 'Motosellers.com | Packages';		
        $this->load->view('dashboards/templates/header', $data);
        $this->load->view('dashboards/templates/admin_menu');
        $this->load->view('dashboards/users/all_packages_view');
        $this->load->view('dashboards/templates/footer');
	}

}