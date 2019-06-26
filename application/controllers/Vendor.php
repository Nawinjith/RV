<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vendor extends CI_Controller {

	public function index()	//vendor dashboard
	{	
		$this->load->view('vendor/vendormain.php');
	}

	public function viewStock()	//vendor view Stock
	{	
		$this->load->view('vendor/vendorviewstock.php');
	}

	public function viewwarehouseProgress()	//vendor view warehouse Progress
	{	
		$this->load->view('vendor/vendorviewwarehouseP.php');
	}

	public function viewsalespersonProgress()	//vendor view Salesperso progress
	{	
		$this->load->view('vendor/vendorviewsalesP.php');
	}

	public function importOrders()
	{	
		$this->load->view('vendor/importorders.php');
	}

	public function view_warehouse()
	{	
		$this->load->view('vendor/warehouse.php');
	}

	public function view_history()
	{	
		$this->load->view('vendor/saleshistory.php');
	}

	
}
