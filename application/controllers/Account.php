<?php
/**
 * Car Dealer Account Page Controller
 *
 * This class handles user account  related functionality
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Account extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->helper('form');
		$this->load->library('form_validation');
	}
	public function index(){
		#Login with info from Form
		$this->form_validation->set_rules('email', 'E-mail', 'trim|required|max_length[50]',
									array('required'=>'you have not provided an {field}',
											'max_length'=> '{field} length should not be more than 50  characters'											
									)
								);
		// $this->form_validation->set_rules('')
		
		$this->form_validation->set_rules('password', 'Password', 'required|callback_password_from_email_match['.$this->input->post('email').']',
																	array('password_from_email_match'=>'Email or password combination is not correct'));
		if($this->form_validation->run()==FALSE){
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
		$data['title'] = 'Motoselles.com | Login Page';
		$this->load->view('template/header', $data);
		$this->load->view('login_form');
		$this->load->view('template/footer');		
		}
		else{
			$this->trylogin();
		}
	}

	public function trylogin(){
		echo "trying to login";
	}
	public function email_exist($email){
		$sql = "select email FROM `carbiz_users` WHERE `user_email` = ?";
		$query = $this->db->query($sql, array($email));
		if($query->num_rows()!=1){
			return false;
		}
		else{
			return true;
		}
	}
	public function password_from_email_match($password= 123456, $user_email='test@account.com'){
		$sql = "select `user_email`, `password` FROM `carbiz_users` WHERE password = ? AND user_email = ?";
		$password = MD5($password);
		$query = $this->db->query($sql, array($password, $user_email));
		
		if($query->num_rows()==1){
			return TRUE;
		}else{
			return FALSE;
		}
	}
}