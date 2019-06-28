<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model1 extends CI_Model {     //used for user registration
    function create(){       
        $data = array (
            'name' => $this->input->post('name'),
            'password' => $this->input->post('password'),
            'userID'=> $this->input->post('id'),
            'userType'=> $this->input->post('radio1'),
            'email' => $this->input->post('email'),
            'address' => $this->input->post('address'),
            'contactNoMobile'=> $this->input->post('cnummob'),
            'contactNoResidential'=> $this->input->post('cnumres')
        );
        $this->db->insert('logintable',$data);
    }
  
}
