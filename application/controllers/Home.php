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
		$this->load->view('home2');
	}
}
