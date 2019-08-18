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
  public function __construct(){
        $CI =& get_instance();
        
        
    }
 public function logged_in(){
        $CI =& get_instance();
        if($CI->session->user_id==TRUE){
            return "TRUE";
                                
        }else{
        return "FALSE";
       }
     }
    

    public function toggle_sign_in(){
        $CI =& get_instance();
        
        if((isset($CI->session->user_id)) | (get_cookie('user_id')!==NULL)){
           
            return   $str = 'Sign Out';
            
           
            
                                
        }else{
            return $str = 'Sign In';
            // echo $CI->session->user_id;
       }
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