<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Shop extends CI_Controller {

	public function index()	//shop dashboard
	{
		$this->load->view('shop/shopmain.php');
	}

	public function __construct()
        {
            parent::__construct();
            $this->load->database();
            $this->load->model('Model3');
        }

	public function viewStock()
	{
		$this->load->view('shop/shopstock.php');
	}

	public function feedback()
	{
		if($this->input->post('save')){
			$shopID_fk=$this->input->post('ShopID');
			$description=$this->input->post('feedback');
			   
			$this->Model3->saverecords($shopID_fk,$description);
			$this->load->view('shop');
		   
	   }
	   else
			$this->load->view('shop/shopmakefeedback.php');
	}

	public function sales_history()
	{
		$this->load->view('shop/shopsaleshistory.php');
	}

	public function make_payment()
	{
		$this->load->view('shop/shopmakepayment.php');
	}

	public function sales_predict()
	{
		$this->load->view('shop/shopsalespredict.php');
	}
}
