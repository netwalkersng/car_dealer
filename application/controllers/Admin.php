<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	/**
 * Car Dealer Account Page Controller
 *
 * This class handles user Admin  related functionality
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */
	public function index()
	{	
		$this->global_func->page_protect();
		$this->global_func->admin_protect();
		$data['title']		= 'Motosellers.com | Admin Dashboard';		
		$this->load->view('dashboards/templates/header', $data);
		$this->load->view('dashboards/templates/admin_menu');
		$this->load->view('dashboards/admin/admin_home');
		$this->load->view('dashboards/templates/footer');
	}

	public function dashboard()
	{	
		
		$this->global_func->page_protect();
		$data['title']		= 'Motosellers.com | User Dashboard';		
		$this->load->view('dashboards/templates/header', $data);
		$this->load->view('dashboards/templates/user_menu');
		$this->load->view('dashboards/admin/user_home');
		$this->load->view('dashboards/templates/footer');
	}
	public function __construct(){
		parent::__construct();
		$this->load->model('account_model');
		$this->load->helper('form');
		$this->load->model('user_model');
		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
		
	}
	function changepass()
	{
		// if(!is_admin() && !is_agent())
		// {
		// 	if(count($_POST)<=0)
		// 	$this->session->set_userdata('req_url',current_url());
		// 	redirect(site_url('admin'));
		// }

		
		$data['title']		= 'Motosellers.com | Change Password';		
		$this->load->view('dashboards/templates/header', $data);
		$this->load->view('dashboards/templates/user_menu');
		$this->load->view('dashboards/users/changepassword_view');
		$this->load->view('dashboards/templates/footer');
		
	}

	#update password function
	function update_password()
	{	
		
		// if(!is_admin() && !is_agent())
		// {
		// 	if(count($_POST)<=0)
		// 	$this->session->set_userdata('req_url',current_url());
		// 	redirect(site_url('admin'));
		// }
		
		 
		 
		// die();
		if($this->session->userdata('recovery')!='yes')
		
		$this->form_validation->set_rules('current_password', 'Current Password', 'required|callback_currentpass_check');
		
		$this->form_validation->set_rules('new_password', 'New Password', 'required|matches[re_password]');
		$this->form_validation->set_rules('re_password', 'Password Confirmation', 'required');
		
		if ($this->form_validation->run() == FALSE)
		{
			
			$this->changepass();	
			
		}
		else
		{
			// die("die");
			$password = $this->input->post('new_password');
			$this->user_model->update_password($password);
			
			$this->session->set_userdata('recovery',"no");
			$this->session->set_flashdata('msg', '<div class="alert alert-success">password change success </div>');

			$data['title']		= 'Motosellers.com | Change Password Success';	
			
			$this->load->view('dashboards/templates/header', $data);
			$this->load->view('dashboards/templates/user_menu');
			$this->load->view('msg_view');
			$this->load->view('dashboards/templates/footer');
			//redirect(site_url('admin/changepass'));		
		}
	
	}

	#current password validation function for password changing
	function currentpass_check($str)
	{
		$user_email = $this->session->userdata('user_email');
		$query = $this->user_model->check_login($user_email,'result');

		if($query->num_rows()>0)
		{					
			$row = $query->row();
			$ok = 0;

			// $this->load->library('bcrypt');

			if(password_verify($str,$row->password))
			{
				$ok=1;
			}
		}


		if ($ok==0)
		{
			$this->form_validation->set_message('currentpass_check', 'current password not matched');
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}
}
