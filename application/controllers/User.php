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
}