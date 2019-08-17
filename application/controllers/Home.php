<?php
/**
 * Car Dealer Home Page Controller
 *
 * This class handles home page  related functionality
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function index()
	{	
		$data['title'] = 'Motoselles.com | Nigeria Car Market Place';
		// $data['toggle_sign_up'] ='sign In';
		//echo $this->global_func->toggle_sign_in();
		$this->load->view('template/header', $data);
		$this->load->view('home');
		$this->load->view('template/footer');
	}
	
}
