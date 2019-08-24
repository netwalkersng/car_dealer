<?php
/**
 * Car Dealer User Page Controller
 *
 * This class handles user user's  related functionality
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
    function __construct()

	{

		parent::__construct();

		$this->load->database();

	}

	public function index()
 	{	$data['title'] = 'Motosellers.com | User Dashboard | Home';
		$this->load->model('account_model');
		$this->load->view('dashboards/templates/header', $data);
		$this->load->view('dashboards/users/user_home');
		$this->load->view('dashboards/templates/footer');
	}

	
}