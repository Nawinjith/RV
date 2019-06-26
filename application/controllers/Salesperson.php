<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Salesperson extends CI_Controller {

	public function index()
	{	
		$this->load->view('salesperson/salespersonmain.php');
	}

	public function view_saleshistory()
	{	
		$this->load->view('salesperson/saleshistory.php');
	}

	public function view_delivery()
	{	
		$this->load->view('salesperson/viewdelivery.php');
	}
}
