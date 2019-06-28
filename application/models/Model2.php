<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model2 extends CI_Model {
    
    function getdata(){
        $query=$this->db->get('warehouse');
        return $query->result();
    }
    function searchdata($warehouseID){
        $this->db->where('warehouseID',$warehouseID);
        $query=$this->db->get('warehouse');
        return $query->row();
    }
    function updatedata($warehouseID){
        $data = array (
            'warehouseID' => $this->input->post('warehouseid'),
            'capacity' => $this->input->post('capacity'),
            //set a join for current capacity here
        );
        $this->db->where('warehouseID='.$warehouseID);
        $this->db->update('warehouse',$data); 
    }
}
