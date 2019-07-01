<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model3 extends CI_Model {     //used for handel to customer feedback
    function saverecords($shopID_fk,$description)
        {
            $query="insert into feedback values('$shopID_fk','','','','$description','')";
            $this->db->query($query);
        }
  
}