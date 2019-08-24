<?php
/**
 * Car Dealer Account Page Controller
 *
 * This class handles user account  related functionality
 * @author		Netwalkers NG
 * @link		http://netwalkers.com.ng
 */
defined('BASEPATH') OR exit('No direct script access allowed');
class Global_func  {


 public function logged_in(){
        $CI =& get_instance();
        if($CI->session->user_id==TRUE){
            return TRUE;
                                
        }else{
        return FALSE;
       }
     }
    

    public function toggle_sign_in(){
        $CI =& get_instance();
        
        if( (get_cookie('user_id')!==NULL)){
           
            return   $str = 'Sign Out';
            
           
            
                                
        }else{
            return $str = 'Sign In';
            // echo $CI->session->user_id;
       }
    }
    
    function page_protect(){

        // $CI =& get_instance();
        if($this->logged_in()!=TRUE){
            redirect('account');
            // echo "logged out";
        }
        // echo $this->logged_in();
    }

    function admin_protect(){
        $CI =& get_instance();
        // $CI =& get_instance();
        
        if($this->is_admin($CI->session->user_id)!=1){
            redirect('account');
            // echo "logged out";
        }
        // echo $this->logged_in();
    }

    function is_admin($id){
        $CI =& get_instance();
        $CI->load->model('user_model');
        $query = $CI->user_model->get_user_type($CI->session->user_id);
        $result = $query->row()->user_type;
        return ($result ==1) ?  TRUE :  FALSE;

    }

    public function toggle_sign_in_url(){
        $CI =& get_instance();
        
        if(isset($CI->session->user_id)){
           
            return  $str = base_url('account/logout');
            
                                
        }else{
            return  $str = base_url('account');
            // echo $CI->session->user_id;
       }
    }
}