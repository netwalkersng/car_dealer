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
		$this->load->helper(array('form'));
		$this->load->library('form_validation');
		
		$this->load->model('account_model');
	}
	public function index(){
		#Login with info from Form
		$this->form_validation->set_rules('email', 'E-mail', 'trim|required|max_length[50]',
									array('required'=>'you have not provided an {field}',
											'max_length'=> '{field} length should not be more than 50  characters'											
									)
								);	
		$this->form_validation->set_rules('password', 'Password', 'required|callback_password_from_email_match['.$this->input->post('email').']',
																	array('password_from_email_match'=>'Email or password combination is not correct'));
		if($this->form_validation->run()==FALSE){
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
		$data['title'] = 'Motoselles.com | Login Page';
		$data['toggle_sign_up'] =' sign in';
		//$this->site_wise_funct->toggle_sign_up();
		$this->load->view('template/header', $data);
		$this->load->view('login_form');
		$this->load->view('template/footer');		
		}
		else{
			$this->trylogin();	
		}
	}

	public function trylogin(){
		$this->input->post('email');
		$user_data = $this->account_model->get_user_details_by_email($this->input->post('email'));
		$user_id = $this->session->user_id = $user_data['id'];
		set_cookie("user_id", $user_id, time()+30*24*60*60);
		redirect(site_url());
	}
	function display_cookie() {			   
		echo get_cookie('remember_me');
	}
	
	public function email_exist($email){
		
		if($this->account_model->email_count($email)!=1){
			return false;
		}
		else{
			return true;
		}
	}
	
	public function password_from_email_match($password= 123456, $user_email='test@account.com'){		
		if($this->account_model->password_from_email_rows($password,$user_email)==1){
			return TRUE;
		}else{
			return FALSE;
		}
	}

	public function logout(){
		unset($_SESSION['user_id']);
		delete_cookie('user_id');
		redirect(site_url());
	}
}
