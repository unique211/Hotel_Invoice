<?php
class Report_model extends CI_Model
{

	function insertdata($table, $data)
	{
		$result = '';

		$this->db->insert($table, $data);
		$result =  $this->db->insert_id();

		return $result;
	}
	function updatedata($table, $data, $id)
	{
		$this->db->where('id', $id);
		$result = $this->db->update($table, $data);
		return $result;
	}
	function delete_data($table, $id)
	{



		if ($table == "hotel_master") {
			$data = array(
				'status' => 0,
			);
			$this->db->where('id', $id);
			$result = $this->db->update($table, $data);

			$this->db->where('ref_id', $id);
			$this->db->where('role', 'Admin');
			$this->db->delete('login_master');

			return $result;
		} else {
			$data = array(
				'status' => 0,
			);
			$this->db->where('id', $id);
			$result = $this->db->update($table, $data);
			return $result;
		}


		/* $this->db->where('id',$id);    
        $result = $this->db->delete($table);
        
        return $result;*/
	}
	function getdropdown($table)
	{

		$this->db->select('*');
		$this->db->from('hotel_master');

		$this->db->where('hotel_master.status', 1);
		$query = $this->db->get();
		return $query->result();
	}

	function get_master($table,$hotel,$from,$to)
	{
		$hotel_id=$this->session->hotel_id;
		$role=$this->session->role;

		$this->db->select('bill_master.*,emp_master.emp_name,table_master.table_name');
		$this->db->from('bill_master');
		$this->db->join('emp_master', 'emp_master.id=bill_master.emp_id');
		$this->db->join('table_master', 'table_master.id=bill_master.table_id');
		$this->db->where('bill_master.status', 1);
		if($role=="Admin"){
			$this->db->where('bill_master.hotel_id', $hotel_id);
		}else{
			if($hotel>0){
				$this->db->where('bill_master.hotel_id', $hotel);
			}
			
		}
		$this->db->where('bill_master.status', 1);
		$this->db->where('bill_master.date >=', $from);
			$this->db->where('bill_master.date <=', $to);
	//	$this->db->where('DATE(date) = CURRENT_DATE()');
		$query = $this->db->get();
		return $query->result();
	}


	function get_master_where($table_name, $id)
	{
		if ($table_name == "login_master") {
			$this->db->select('*');
			$this->db->from('login_master');

			$this->db->where('login_master.status', 1);
			$this->db->where('ref_id', $id);
			$this->db->where('role', 'Admin');
			$query = $this->db->get();
			return $query->result();
		} else {
			$this->db->select('*');
			$this->db->from('hotel_master');

			$this->db->where('hotel_master.status', 1);
			$this->db->where('hotel_master.id', $id);
			$query = $this->db->get();
			return $query->result();
		}
	}
}
