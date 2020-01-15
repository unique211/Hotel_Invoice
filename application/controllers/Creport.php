<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Creport extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Report_model');
    }



	
    public function deleteData()
    { 
		$table_name = $this->input->post('table_name');
        $id=$this->input->post('id');
       
        $data1=$this->Report_model->delete_data($table_name,$id);
    	echo json_encode($data1);
    }
    public function getdropdown(){
	
		$table_name	=$this->input->post('table_name');//"account_group"; //
		$data=$this->Report_model->getdropdown($table_name);			
		echo json_encode($data);	
	}
	public function get_master(){

		$hotel=$this->input->post('hotel');
		$from=$this->input->post('fromdate');
		$to=$this->input->post('todate');
	
		$table_name	=$this->input->post('table_name');//"account_group"; //
		$data=$this->Report_model->get_master($table_name,$hotel,$from,$to);			
		echo json_encode($data);	
    }
    public function get_master_where(){
	
        $table_name	=$this->input->post('table_name');//"account_group"; //
        $id=$this->input->post('id');
		$data=$this->Report_model->get_master_where($table_name,$id);			
		echo json_encode($data);	
	}
	
}
