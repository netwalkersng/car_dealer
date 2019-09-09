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


class Brandmodels extends CI_Controller {
	
	var $per_page = 1000;
	
	public function __construct()
	{
		parent::__construct();
		// is_installed(); #defined in auth helper
		// checksavedlogin(); #defined in auth helper
		
		
        $this->global_func->page_protect();
		$this->global_func->admin_protect();
		$this->load->helper('form');
		$this->load->library('form_validation');

		$this->load->model('brandmodels_model');
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger col-3" style="margin:0">', '</div><br>');
    }

    function index()
    {
        $this->all();
    }
    public function all($start='0')
    
    {
        $value['posts'] 	= $this->brandmodels_model->get_all_brandmodels_by_range($start,$this->per_page,'name');

        $total 				= $this->brandmodels_model->count_all_brandmodels();
        
        $data['title']		= 'Motosellers.com | Brand Models';		
        $this->load->view('dashboards/templates/header', $data);
        $this->load->view('dashboards/templates/admin_menu');
        $this->load->view('dashboards/admin/all_brandmodels_view', $value);
        $this->load->view('dashboards/templates/footer');	

    }

    public function newbrand(){
        $this->form_validation->set_rules('name', 'Brand Name', 'required|callback_brand_exist', array('brand_exist'=>'This brand name already exist'));
        if($this->form_validation->run() == FALSE){
        $data['title']		= 'Motosellers.com | Add New Brand';		
        $this->load->view('dashboards/templates/header', $data);
        $this->load->view('dashboards/templates/admin_menu');
        $this->load->view('dashboards/admin/newbrand_view');
        $this->load->view('dashboards/templates/footer');
        }
        else{
           $data['name']=  $this->input->post('name');
            $data['type']= "brand";           
           $this->brandmodels_model->insert_brandmodels($data);
           $this->session->set_flashdata('msg', '<div class="alert alert-success col-3">Data inserted</div>');
           redirect(base_url('brandmodels/newbrand'));
        }
    }

    public function newmodel($type='model'){
        $value['type'] = $type;
		$value['countries'] = $this->brandmodels_model->get_brandmodels_by_type('brand');
		$value['models'] 	= $this->brandmodels_model->get_brandmodels_by_type('model');
        $this->form_validation->set_rules('brandmodels', 'Brand Model', 'required');
        $this->form_validation->set_rules('brand', 'Brand Parent', 'required');
        if($this->form_validation->run() == FALSE){
        $data['title']		= 'Motosellers.com | Add New Model';		
        $this->load->view('dashboards/templates/header', $data);
        $this->load->view('dashboards/templates/admin_menu');
        $this->load->view('dashboards/admin/newmodel_view', $value);
        $this->load->view('dashboards/templates/footer');
        }
        else{
           $data['parent']= $parent = $this->input->post('brand');
            $data['type']= $this->input->post('type');
            $data['name']= $this->input->post('brandmodels');           
           $this->brandmodels_model->insert_brandmodels($data);
           $this->session->set_flashdata('msg', '<div class="alert alert-success  col-3">Data inserted</div>');
           redirect(base_url('brandmodels/newmodel'));
        }
    }

    function brand_exist($name){
        if($this->brandmodels_model->brand_exist($name)==0){
            return TRUE;
        }else{
            return FALSE;
        }
      
    }

    public function editbrandmodel($type='brand',$id='')

	{   $value['editbrandmodel'] 	= $this->brandmodels_model->get_brandmodels_by_id($id);
        $value['countries'] 	= $this->brandmodels_model->get_brandmodels_by_type('brand');
        $value['models'] 		= $this->brandmodels_model->get_brandmodels_by_type('model');
        

       
            $value['editbrandmodel'] 	= $this->brandmodels_model->get_brandmodels_by_id($id);
            $value['countries'] 	= $this->brandmodels_model->get_brandmodels_by_type('brand');
            $value['models'] 		= $this->brandmodels_model->get_brandmodels_by_type('model');
            $value['type'] 		= $type;
            $title['title']		= 'Motosellers.com | Update Car Model';	


            $this->form_validation->set_rules('brandmodels', 'Brand Model', 'required');
            // $this->form_validation->set_rules('brand', 'Brand Parent', 'required');
            if($this->form_validation->run() == FALSE){
                    
            $this->load->view('dashboards/templates/header', $title);
            $this->load->view('dashboards/templates/admin_menu');
            $this->load->view('dashboards/admin/editmodel_view', $value);
            $this->load->view('dashboards/templates/footer');
            }
            else{
            $data['parent']= $parent = $this->input->post('parent');
            $data['type']= $this->input->post('type');
            $data['name']= $this->input->post('brandmodels'); 
             
           $this->brandmodels_model->update_brandmodels($data,$id);       
           $this->session->set_flashdata('msg', '<div class="alert alert-success  col-3">Data Updated</div>');
           redirect(base_url('brandmodels/editbrandmodel/'.$data['type'].'/'.$id));

            }
        

        // if( $type == 'brand')
        // {
        //      $value['editbrandmodel'] 	= $this->brandmodels_model->get_brandmodels_by_id($id);
        //      $value['countries'] 	= $this->brandmodels_model->get_brandmodels_by_type('brand');
        //      $value['models'] 		= $this->brandmodels_model->get_brandmodels_by_type('model');
        //      $value['type'] 		= $type;
        //      $title['title']		= 'Motosellers.com | Update Car Model';	
 
 
        //      $this->form_validation->set_rules('brandmodels', 'Brand Model', 'required');
        //      $this->form_validation->set_rules('brand', 'Brand Parent', 'required');
        //      if($this->form_validation->run() == FALSE){
                     
        //      $this->load->view('dashboards/templates/header', $title);
        //      $this->load->view('dashboards/templates/admin_menu');
        //      $this->load->view('dashboards/admin/editmodel_view', $value);
        //      $this->load->view('dashboards/templates/footer');
        //      }
        //      else{
        //      $data['parent']= $parent = $this->input->post('parent');
        //      $data['type']= $this->input->post('type');
        //      $data['name']= $this->input->post('brandmodels'); 
              
        //     $this->brandmodels_model->update_brandmodels($data,$id);       
        //     $this->session->set_flashdata('msg', '<div class="alert alert-success  col-3">Data Updated</div>');
        //     redirect(base_url('brandmodels/editbrandmodel/'.$data['type'].'/'.$id));
 
        //      }
        //  }
        
		

    }

    public function updatebrandmodel($id){
        $data = array();			
		$data['name'] 	= $this->input->post('brandmodel');
		$data['type'] 	= $type;
		$data['parent'] = $parent;
		$data['status']	= 1;
		$this->brandmodels_model->update_brandmodels($data,$id);
    }
    
    // public function editmodel($id){
    // echo  $value['type'];
    //    if( $value['type'] == 'models')
    //    {
    //      $value['editbrandmodel'] 	= $this->brandmodels_model->get_brandmodels_by_id($id);
    //         $value['countries'] 	= $this->brandmodels_model->get_brandmodels_by_type('brand');
    //         $value['models'] 		= $this->brandmodels_model->get_brandmodels_by_type('model');
    //         $title['title']		= 'Motosellers.com | Update Car Model';	


    //         $this->form_validation->set_rules('brandmodels', 'Brand Model', 'required');
    //         $this->form_validation->set_rules('brand', 'Brand Parent', 'required');
    //         if($this->form_validation->run() == FALSE){
                    
    //         $this->load->view('dashboards/templates/header', $title);
    //         $this->load->view('dashboards/templates/admin_menu');
    //         $this->load->view('dashboards/admin/editmodel_view', $value);
    //         $this->load->view('dashboards/templates/footer');
    //         }
    //         else{
    //         $data['parent']= $parent = $this->input->post('parent');
    //         $data['type']= $this->input->post('type');
    //         $data['name']= $this->input->post('brandmodels'); 
             
    //        $this->brandmodels_model->update_brandmodels($data,$id);       
    //        $this->session->set_flashdata('msg', '<div class="alert alert-success  col-3">Data Updated</div>');
    //        redirect(base_url('brandmodels/editmodel/'.$id));

    //         }
    //     }

    
    // }


    
}