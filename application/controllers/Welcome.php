<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Welcome extends CI_Controller
{


	public function index()
	{
		if (isset($this->session->userid)) {
			$this->session->unset_userdata('userid');
			//	$this->session->unset_userdata('role');  	
			$this->session->unset_userdata('username');
			$this->session->unset_userdata('email');
			$this->session->unset_userdata('id');
		}
		$this->load->view('login');
		// $title['active_menu'] = "ind";
		// $this->load->view('index', $title);
	}

	public function login()
	{
		$this->load->view('login');
	}
	public function signup()
	{
		$this->load->view('signup');
	}
	public function forgot()
	{
		$this->load->view('forgot');
	}
	public function hotel()
	{
		if (isset($this->session->userid)) {

			$title['active_menu'] = "con";
			$this->load->view('hotel_master', $title);
		} else {
			redirect(base_url());
		}
		
	}
	public function Item_master()
	{
		if (isset($this->session->userid)) {

			$title['active_menu'] = "item";
			$this->load->view('item_master', $title);
		} else {
			redirect(base_url());
		}
		
	}
	public function Emp_master()
	{
		if (isset($this->session->userid)) {

			$title['active_menu'] = "emp";
			$this->load->view('employee_master', $title);
		} else {
			redirect(base_url());
		}
		
	}

	public function Table_master()
	{
		if (isset($this->session->userid)) {

			$title['active_menu'] = "table";
			$this->load->view('table_master', $title);
		} else {
			redirect(base_url());
		}
		
	}

	public function Bill_generation()
	{
		if (isset($this->session->userid)) {

			$title['active_menu'] = "bill";
			$this->load->view('bill_generation', $title);
		} else {
			redirect(base_url());
		}
		
	}

	public function transaction()
	{
		$title['active_menu'] = "tra";	
		$this->load->view('transaction', $title);
	
	}
	public function reports()
	{
		$title['active_menu'] = "rep";
		$this->load->view('reports', $title);
	
	}
	public function dashboard()
	{


		$title['active_menu'] = "ind";
		$this->load->view('index', $title);
		// if (isset($this->session->userid)) {

		// 	$title['active_menu'] = "ind";
		// 	$this->load->view('index', $title);
		// } else {
		// 	redirect(base_url());
		// }
	}

	// public function birth_death()
	// {
	// if(isset($this->session->userid)){
	// $title['active_menu'] = "bir";
	// $this->load->view('birth_death',$title);
	// }
	// else{
	// redirect(base_url());
	// }

	// }




}
