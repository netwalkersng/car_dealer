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
			
			$this->send_confirmation_email($userdata);	
			$this->send_admin_notification_email();
			echo "success";

            // add_user_meta($user_id,'phone',$this->input->post('phone'));
			// $this try_register();
		}
	}

	#send a email to the admin
	public function send_admin_notification_email()
	{
		$val = $this->get_admin_email_and_name();
		$admin_email = $val['admin_email'];
		$admin_name  = $val['admin_name'];
		
		$subject = "New user signup notification";		
		$body = "Recently a new user signed up to your site.";
		
		$this->load->library('email');
		
		$this->email->from($admin_email, $admin_name);
		$this->email->to($admin_email);
		$this->email->subject($subject);		
		$this->email->message($body);		
		$this->email->send();

		
	}
	#get web admin name and email for email sending
	public function get_admin_email_and_name()
	{
		$this->load->model('admin/options_model');
		$values = $this->options_model->getvalues('webadmin_email');

		
		if($values)
		{
			$data['admin_email'] = (isset($values->webadmin_email))?$values->webadmin_email:'admin@'.$_SERVER['HTTP_HOST'];
			$data['admin_name']  = (isset($values->webadmin_name))?$values->webadmin_name:'Admin';
		}
		else
		{
			$data['admin_email'] = 'admin@'.$_SERVER['HTTP_HOST'];
			$data['admin_name']  = 'Admin';		
		}


		return $data;
	}	



	#send a confirmation email with confirmation link
	public function send_confirmation_email($data=array('username'=>'sc mondal','useremail'=>'shimulcsedu@gmail.com','confirmation_key'=>'1234'))
	{
		$val = $this->get_admin_email_and_name();
		$admin_email = $val['admin_email'];
		$admin_name  = $val['admin_name'];
		$link = site_url('account/confirm/'.$data['user_email'].'/'.$data['confirmation_key']); 
		
		$this->load->model('admin/system_model');
		$tmpl = $this->system_model->get_email_tmpl_by_email_name('confirmation_email');
		$subject = $tmpl->subject;
		$subject = str_replace("#username",$data['user_email'],$subject);
		$subject = str_replace("#activationlink",$link,$subject);
		$subject = str_replace("#webadmin",$admin_name,$subject);
		$subject = str_replace("#useremail",$data['user_email'],$subject);

		
		$body = $tmpl->body;
		 $body = str_replace("#username",$data['user_email'],$body);
		 $body = str_replace("#activationlink",$link,$body);
		 $body = str_replace("#webadmin",$admin_name,$body);
		 $body = str_replace("#useremail",$data['user_email'],$body);

				
		$this->load->library('email');
		$this->email->from($admin_email, $admin_name);
		$this->email->to($data['user_email']);
		$this->email->subject($subject);		
		$this->email->message($body);		
		$this->email->send();
	}

	public function did_select($select_message){
		if($select_message == 'select..'){
			return FALSE;
		}else{
			return TRUE;
		}

	}

	#confirmation email link points here
	public function confirm($email='',$code='')
	{
		$this->load->model('account_model');
		$res = $this->account_model->confirm_email($email,$code);

		if($res==TRUE)
		{
			$this->session->set_flashdata('msg', '<div class="alert alert-success"> email confirmed. <a href="'. base_url('account').'">Login</a> </div>
			');
			redirect(site_url('account/showmsg'));		
		}
		else
		{
			$this->session->set_flashdata('msg', '<div class="alert alert-danger"> email confirmation failed</div>');
			redirect(site_url('account/showmsg'));
		}
	}
	
	#load any msg on front end
	public function showmsg()
	{
			$data['title'] = 'Motosellers Confirmation messages';
			$this->load->view('template/header', $data);
			$this->load->view('msg_view');
			$this->load->view('template/footer');	
	}
}
