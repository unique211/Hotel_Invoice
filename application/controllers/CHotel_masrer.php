<?php
defined('BASEPATH') or exit('No direct script access allowed');

class CHotel_masrer extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Hotel_master_model');
    }



	public function adddata(){ 
        $table_name = $this->input->post('table_name');
        $id=$this->input->post('id');
        $data1="";
        $data="";


        date_default_timezone_set('Asia/Kolkata');
        $date = date("Y-m-d H:i:s");
      
            if($id==""){
                $data = array(
                    'hotel_name'=>$this->input->post('hotel_name'),
					'mobile1'=>$this->input->post('mobile1'),
					'mobile2'=>$this->input->post('mobile2'),
					'address'=>$this->input->post('address'),
					'gst_no'=>$this->input->post('gst_no'),
					'note'=>$this->input->post('note'),
					'logo'=>$this->input->post('logo'),
					'printer'=>$this->input->post('printer'),
					'from_date'=>$this->input->post('from_date'),
					'to_date'=>$this->input->post('to_date'),
                  
                    'created_at'=>$date,
                    'updated_at'=>$date,
               );
              
            }else{
                $data = array(
                    'hotel_name'=>$this->input->post('hotel_name'),
					'mobile1'=>$this->input->post('mobile1'),
					'mobile2'=>$this->input->post('mobile2'),
					'address'=>$this->input->post('address'),
					'gst_no'=>$this->input->post('gst_no'),
					'note'=>$this->input->post('note'),
					'logo'=>$this->input->post('logo'),
					'printer'=>$this->input->post('printer'),
					'from_date'=>$this->input->post('from_date'),
					'to_date'=>$this->input->post('to_date'),
                     'updated_at'=>$date,
               );
              
            }
          
            
        
        if($id==""){
            $data1 = $this->Hotel_master_model->insertdata($table_name,$data);
        }else{
            $data1 = $this->Hotel_master_model->updatedata($table_name,$data,$id);
        }
        echo json_encode($data1);
    }
    public function deleteData()
    { 
		$table_name = $this->input->post('table_name');
        $id=$this->input->post('id');
       
        $data1=$this->Hotel_master_model->delete_data($table_name,$id);
    	echo json_encode($data1);
    }
    public function get_master(){
	
		$table_name	=$this->input->post('table_name');//"account_group"; //
		$data=$this->Hotel_master_model->data_get($table_name);			
		echo json_encode($data);	
    }
    public function get_master_where(){
	
        $table_name	=$this->input->post('table_name');//"account_group"; //
        $id=$this->input->post('id');
		$data=$this->Hotel_master_model->get_master_where($table_name,$id);			
		echo json_encode($data);	
	}
	public function doc_image_upload()
    {
        $this->load->helper("file");
        $this->load->helper(array('form', 'url'));
        $this->load->helper('directory');
        $this->load->library("upload");
        //  $id=$this->input->post('id');
        if ($_FILES['attachment']['size'] > 0) {
            $this->upload->initialize(array(
                "upload_path" => './Upload/',
                "overwrite" => FALSE,
                "max_filename" => 300,
                "remove_spaces" => TRUE,
                "allowed_types" => '*',
                "max_size" => 30000,
            ));
            if (!$this->upload->do_upload('attachment')) {
                $error = array('error' => $this->upload->display_errors());
                echo json_encode($error);
            }
            $data = $this->upload->data();
            $path = $data['file_name'];
            echo json_encode($path);
        } else {
            echo "no file";
        }
    }
}
