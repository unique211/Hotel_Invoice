<?php
defined('BASEPATH') or exit('No direct script access allowed');

class CItem_master extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Item_master_model');
    }



	public function adddata(){ 
        $table_name = $this->input->post('table_name');
        $id=$this->input->post('id');
        $data1="";
        $data="";


        date_default_timezone_set('Asia/Kolkata');
		$date = date("Y-m-d H:i:s");
		$hotel_id=$this->session->hotel_id;
      
            if($id==""){
                $data = array(
                    'curse'=>$this->input->post('curse'),
					'amount_full'=>$this->input->post('amount_full'),
					'amount_half'=>$this->input->post('amount_half'),
					'description'=>$this->input->post('description'),
					'hotel_id'=>$hotel_id,         
                    'created_at'=>$date,
                    'updated_at'=>$date,
               );
              
            }else{
                $data = array(
					'curse'=>$this->input->post('curse'),
					'amount_full'=>$this->input->post('amount_full'),
					'amount_half'=>$this->input->post('amount_half'),
					'description'=>$this->input->post('description'),
					'hotel_id'=>$hotel_id,    
                     'updated_at'=>$date,
               );
              
            }
          
            
        
        if($id==""){
            $data1 = $this->Item_master_model->insertdata($table_name,$data);
        }else{
            $data1 = $this->Item_master_model->updatedata($table_name,$data,$id);
        }
        echo json_encode($data1);
    }
    public function deleteData()
    { 
		$table_name = $this->input->post('table_name');
        $id=$this->input->post('id');
       
        $data1=$this->Item_master_model->delete_data($table_name,$id);
    	echo json_encode($data1);
    }
    public function get_master(){
	
		$table_name	=$this->input->post('table_name');//"account_group"; //
		$data=$this->Item_master_model->data_get($table_name);			
		echo json_encode($data);	
    }
    public function get_master_where(){
	
        $table_name	=$this->input->post('table_name');//"account_group"; //
        $id=$this->input->post('id');
		$data=$this->Item_master_model->get_master_where($table_name,$id);			
		echo json_encode($data);	
	}
	
}
