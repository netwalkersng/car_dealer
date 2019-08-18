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
	public function register(){
		
		$this->form_validation->set_rules('first_name', 'First Name', 'required|max_length[40]');
		$this->form_validation->set_rules('last_name', 'Last Name', 'required|max_length[40]');
		$this->form_validation->set_rules('email', 'E-mail', 'required|is_unique[carbiz_users.user_email]|max_length[40]|valid_email', array('is_unique'=>'{field} already exist on our database'));
		$this->form_validation->set_rules('gender', 'Gender', 'max_length[6]|callback_did_select', array('did_select' => 'Please select your gender'));
		$this->form_validation->set_rules('company_name', 'Company name', 'required|max_length[50]');
		$this->form_validation->set_rules('password', 'Password', 'required|max_length[12]');
		$this->form_validation->set_rules('password_again', 'Password Again', 'required|max_length[12]|matches[password]',  array('matches' => 'Password did match'));
		if($this->form_validation->run()==FALSE){
			$this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
			$data['title'] = 'Motosellers Sign Up page';
			$this->load->view('template/header', $data);
			$this->load->view('register');
			$this->load->view('template/footer');	
		}else{
		
			$userdata['user_type']	= 2;//2 = users

			$userdata['first_name'] = $this->input->post('first_name');
			$userdata['last_name'] 	= $this->input->post('last_name');
			$userdata['gender'] 	= $this->input->post('gender');			
			// $userdata['user_name'] 	= $this->input->post('username');
			$userdata['user_email'] = $this->input->post('email');
			$userdata['password'] 	= password_hash($this->input->post('password'), PASSWORD_DEFAULT );
			$userdata['confirmation_key'] 	= uniqid();
			$userdata['confirmed'] 	= 0;
			$userdata['status']		= 1;

			$this->load->model('user_model');
			$user_id = $this->user_model->insert_user_data($userdata);
			$this->user_model->add_user_meta($user_id, 'company_name', $this->input->post('company_name'));

			$this->load->library('email');

			$this->email->from('odinaka@yopmail.com', 'Odinaka');
			$this->email->to('isaacodinakafranklin@gmail.com');
			

			$this->email->subject('Email Test');
			$this->email->message('Testing the email class.');

			$this->email->send();
			echo "end";
            // add_user_meta($user_id,'phone',$this->input->post('phone'));
			// $this try_register();
		}
	}
	public function did_select($select_message){
		if($select_message == 'select..'){
			return FALSE;
		}else{
			return TRUE;
		}

	}
}
