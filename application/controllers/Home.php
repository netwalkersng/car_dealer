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
	{	$data['title'] = 'Motoselles.com | Nigeria Car Market Place';
		$this->load->view('template/header', $data);
		$this->load->view('home');
		$this->load->view('template/footer');
	}
}
