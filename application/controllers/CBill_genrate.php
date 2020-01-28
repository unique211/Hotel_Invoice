<?php
defined('BASEPATH') or exit('No direct script access allowed');

class CBill_genrate extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('Bill_model');
	}



	public function adddata()
	{
		$table_name = $this->input->post('table_name');
		$id = $this->input->post('id');
		$data1 = "";
		$data = "";


		date_default_timezone_set('Asia/Kolkata');
		$date = date("Y-m-d H:i:s");
		$hotel_id = $this->session->hotel_id;

		if ($id == "") {
			$data = array(
				'date' => $this->input->post('date'),
				'customer_name' => $this->input->post('customer_name'),
				'emp_id' => $this->input->post('emp_id'),
				'table_id' => $this->input->post('table_id'),
				'gst_per' => $this->input->post('gst_per'),
				'service_per' => $this->input->post('service_per'),
				'total_amt' => $this->input->post('total_amt'),
				'hotel_id' => $hotel_id,
				'created_at' => $date,
				'updated_at' => $date,
			);
		} else {
			$data = array(
				'date' => $this->input->post('date'),
				'customer_name' => $this->input->post('customer_name'),
				'emp_id' => $this->input->post('emp_id'),
				'table_id' => $this->input->post('table_id'),
				'gst_per' => $this->input->post('gst_per'),
				'service_per' => $this->input->post('service_per'),
				'total_amt' => $this->input->post('total_amt'),
				'hotel_id' => $hotel_id,
				'updated_at' => $date,
			);
		}



		if ($id == "") {
			$data1 = $this->Bill_model->insertdata($table_name, $data);
		} else {
			$data1 = $this->Bill_model->updatedata($table_name, $data, $id);
			$this->Bill_model->delete_bill_details($id);
		}
		echo json_encode($data1);
	}
	public function adddata2()
	{
		$table_name = $this->input->post('table_name');
		$id = $this->input->post('id');
		$data1 = "";
		$data = "";


		date_default_timezone_set('Asia/Kolkata');
		$date = date("Y-m-d H:i:s");
		$hotel_id = $this->session->hotel_id;

		
			$data = array(
				'bill_ref_id' => $this->input->post('bill_ref_id'),
				'item_id' => $this->input->post('item_id'),
				'varity' => $this->input->post('varity'),
				'qty' => $this->input->post('qty'),
				'rate' => $this->input->post('rate'),
				'amount' => $this->input->post('amount'),
				'created_at' => $date,

			);
		



	
			$data1 = $this->Bill_model->insertdata2($table_name, $data);
		
		echo json_encode($data1);
	}
	public function deleteData()
	{
		$table_name = $this->input->post('table_name');
		$id = $this->input->post('id');

		$data1 = $this->Bill_model->delete_data($table_name, $id);
		echo json_encode($data1);
	}
	public function get_master()
	{

		$table_name	= $this->input->post('table_name'); //"account_group"; //
		$data = $this->Bill_model->data_get($table_name);
		echo json_encode($data);
	}
	public function get_master_where()
	{

		$table_name	= $this->input->post('table_name'); //"account_group"; //
		$id = $this->input->post('id');
		$data = $this->Bill_model->get_master_where($table_name, $id);
		echo json_encode($data);
	}
	public function get_master_where1()
	{

		$table_name	= $this->input->post('table_name'); //"account_group"; //
		$id = $this->input->post('id');
		$data = $this->Bill_model->get_master_where1($table_name, $id);
		echo json_encode($data);
	}
	public function getdropdown()
	{

		$table_name	= $this->input->post('table_name'); //"account_group"; //
		$data = $this->Bill_model->getdropdown($table_name);
		echo json_encode($data);
	}
	public function get_rate()
	{

		$item	= $this->input->post('item'); //"account_group"; //
		$data = $this->Bill_model->get_rate($item);
		echo json_encode($data);
	}
	public function print_invoice()
	{
		$this->load->library('myfpdf');
		$id=$this->input->post('btnprint');
		$data['hotel_details']=$this->Bill_model->get_hotel_data();
		$data['master']=$this->Bill_model->get_master_where('bill_master', $id);
		$data['details']=$this->Bill_model->get_master_where1('bill_details', $id);
		$this->load->view('bill_invoice2',$data);
		
	}
}
