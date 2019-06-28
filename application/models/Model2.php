<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model2 extends CI_Model { //warehouse details
    
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

    function getdataimports(){
        $query=$this->db->get('product_import');
        return $query->result();
    }

    function searchimports($importNo){
        $this->db->where('importNo',$importNo);
        $query=$this->db->get('product_import');
        return $query->row();
    }
    function updateimports($importNo){       
        $data = array (

            'flag'=> $this->input->post('cnumres')
        );
        $this->db->where('importNo='.$importNo);
        $this->db->update('product_import',$data);
    }
}
