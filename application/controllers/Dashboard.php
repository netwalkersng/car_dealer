<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	/**
 * Car Dealer User Page Controller
 *
 * This class handles  User  related functionality
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */


    public function index()
        {	
            
            $this->global_func->page_protect();
            $data['title']		= 'Motosellers.com | User Dashboard';		
            $this->load->view('dashboards/templates/header', $data);
            $this->load->view('dashboards/templates/user_menu');
            $this->load->view('dashboards/users/user_home');
            $this->load->view('dashboards/templates/footer');
    }
    
}