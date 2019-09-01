<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Carbiz Category Controller
 *
 * This class handles category management functionality
 *
 * @package		Admin
 * @subpackage	Category
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */


class Category extends CI_Controller {
	

	public function __construct()
	{
		parent::__construct();
		$this->global_func->page_protect();
		$this->global_func->admin_protect();
		// is_installed(); #defined in auth helper
		// checksavedlogin(); #defined in auth helper
		
		// if(!is_admin())
		// {
		// 	if(count($_POST)<=0)
		// 	$this->session->set_userdata('req_url',current_url());
		// 	redirect(site_url('admin/auth'));
		// }

		// $this->per_page = get_per_page_value();#defined in auth helper

		$this->load->model('category_model');
		// $this->form_validation->set_error_delimiters('<div class="alert alert-danger" style="margin:0">', '</div>');
	}

		#load all services view with paging
	public function index(){
		$this->all();
	}
	public function all($start='0')
	{
		$value['posts']  	 = $this->category_model->get_all_categories_by_range($start,'show_menu');
		$data['title']		= 'Motosellers.com | All Car Categories';		
		$this->load->view('dashboards/templates/header', $data);
		$this->load->view('dashboards/templates/admin_menu');
		$this->load->view('dashboards/admin/all_category', $value);
		$this->load->view('dashboards/templates/footer');
	}

	#load edit service view
	public function edit($id='')
	{	$this->load->helper('form');
		$this->load->library('form_validation');
		$value['post']  = $this->category_model->get_category_by_id($id);
		$data['title']		= 'Motosellers.com | Edit Category';		
		$this->load->view('dashboards/templates/header', $data);
		$this->load->view('dashboards/templates/admin_menu');
		
		$this->load->view('dashboards/admin/editcategory_view', $value);
		$this->load->view('dashboards/templates/footer');
	}

	#update a service
	public function updatecategory()
	{	$this->load->helper('form');
		$this->load->library('form_validation');
		$this->form_validation->set_rules('title', 'title', 'required');
		$this->form_validation->set_rules('featured_img', 'featured_img', 'required');			

		if ($this->form_validation->run() == FALSE)
		{
			$id = $this->input->post('id');
			$this->edit($id);	
		}
		else
		{
			$id = $this->input->post('id');

			$data 					= array();
			$data['title'] 			= $this->input->post('title');
			$data['parent'] 		= 0;
			$data['fa_icon'] 		= 'fa-car';
			
			if($_FILES['featured_img2']['size']==0){
			$data['featured_img'] 	= $this->input->post('featured_img');	
			}
			else{
				$data['featured_img'] 	= $this->upload('./uploads/car-icons', 'featured_img2');
			}
			
			$data['created_by'] 	= $this->session->userdata('user_id');
			
			
			if(constant("ENVIRONMENT")=='demo')
			{
				$this->session->set_flashdata('msg', '<div class="alert alert-success">Data updated.[NOT AVAILABLE ON DEMO]</div>');
			}
			else
			{
				$this->category_model->update_category($data,$id);
				$this->session->set_flashdata('msg', '<div class="alert alert-success"> data updated </div>');
			}
			redirect(site_url('category/edit/'.$id));		
		}
	}

	function upload($location, $file){
		$config['upload_path']          = $location;
                $config['allowed_types']        = 'gif|jpg|png';
                $config['max_size']             = 100;
                $config['max_width']            = 1024;
                $config['max_height']           = 768;

				$this->load->library('upload', $config);
				if ( ! $this->upload->do_upload($file))
                {
                        $error = array('error' => $this->upload->display_errors());

                         echo "Erro Uploading file";
                }
                else
                {
                        $data = array('upload_data' => $this->upload->data());

                       return $data['upload_data']['file_name'];
                }
	}

}