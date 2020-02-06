<?php
class Bill_model extends CI_Model
{
	function insertdata($table, $data)
	{
		$ref_id = '';
		$this->db->insert($table, $data);
		$ref_id = $this->db->insert_id();
		return $ref_id;
	}
	function insertdata2($table, $data)
	{
		$result = '';
		$result =	$this->db->insert($table, $data);
		//	 $this->db->insert_id();
		return $result;
	}
	function updatedata($table, $data, $id)
	{
		$this->db->where('id', $id);
		$result = $this->db->update($table, $data);
		return $result;
	}
	function delete_bill_details($id)
	{
		$this->db->where('bill_ref_id', $id);
		$result = $this->db->delete('bill_details');
		return $result;
	}
	function delete_data($table, $id)
	{
		$data = array(
			'status' => 0,
		);
		$this->db->where('id', $id);
		$result = $this->db->update($table, $data);
		$this->db->where('bill_ref_id', $id);
		$this->db->delete('bill_details');
		return $result;
		/* $this->db->where('id',$id);    
        $result = $this->db->delete($table);
        return $result;*/
	}
	function data_get($table, $from, $to, $status)
	{
		$result = array();

		$hotel_id = $this->session->hotel_id;
		$this->db->select('bill_master.*,emp_master.emp_name,table_master.table_name');
		//$this->db->select('bill_master.*,emp_master.emp_name,table_master.table_name,sum(bill_details.qty) as tot_quantity');
		$this->db->from('bill_master');
		$this->db->join('emp_master', 'emp_master.id=bill_master.emp_id');
		$this->db->join('table_master', 'table_master.id=bill_master.table_id');
		//	$this->db->join('bill_details', 'bill_details.bill_ref_id=bill_master.id');
		if ($status == "All") {
			$this->db->where('bill_master.status !=', 0);
		} else {
			$this->db->where('bill_master.status', $status);
		}

		$this->db->where('DATE(bill_master.created_at) >=', $from);
		$this->db->where('DATE(bill_master.created_at) <=', $to);
		$this->db->where('bill_master.hotel_id', $hotel_id);
		$query = $this->db->get();

		foreach ($query->result_array() as $value) {

			$id = $value['id'];
			$quantity = 0;
			$this->db->select('sum(bill_details.qty) as tot_quantity');
			$this->db->from('bill_details');
			$this->db->where('bill_details.bill_ref_id', $id);
			$query2 = $this->db->get();

			$quantity =	$query2->row()->tot_quantity;

			$result[] = array(
				'created_at' => $value['created_at'],
				'gst_per' => $value['gst_per'],
				'service_per' => $value['service_per'],
				'total_amt' => $value['total_amt'],
				'status' => $value['status'],
				'bill_number' => $value['bill_number'],
				'customer_name' => $value['customer_name'],
				'table_name' => $value['table_name'],
				'emp_name' => $value['emp_name'],
				'tot_quantity' => $quantity,
				'id' => $id,

			);
		}





		return $result;
	}
	function get_hotel_data()
	{
		$hotel_id = $this->session->hotel_id;
		$this->db->select('*');
		$this->db->from('hotel_master');
		$this->db->where('hotel_master.id', $hotel_id);
		$query = $this->db->get();
		return $query->result();
	}
	function get_master_where($table_name, $id)
	{
		$this->db->select('bill_master.*,emp_master.emp_name,table_master.table_name');
		$this->db->from('bill_master');
		$this->db->join('emp_master', 'emp_master.id=bill_master.emp_id');
		$this->db->join('table_master', 'table_master.id=bill_master.table_id');
		//$this->db->where('bill_master.status', 1);
		$this->db->where('bill_master.id', $id);
		$query = $this->db->get();
		return $query->result();
	}
	function get_master_where1($table_name, $id)
	{
		$this->db->select('bill_details.*,item_master.curse');
		$this->db->from('bill_details');
		$this->db->join('item_master', 'item_master.id=bill_details.item_id');
		$this->db->where('bill_details.bill_ref_id', $id);
		$query = $this->db->get();
		return $query->result();
	}
	function get_items_count($table_name, $id)
	{
		$this->db->select('bill_details.*,item_master.curse');
		$this->db->from('bill_details');
		$this->db->join('item_master', 'item_master.id=bill_details.item_id');
		$this->db->where('bill_details.bill_ref_id', $id);
		$query = $this->db->get();


		return $query->num_rows();
	}
	function getdropdown($table)
	{
		$hotel_id = $this->session->hotel_id;
		$this->db->select('*');
		$this->db->from($table);
		$this->db->where('status', 1);
		$this->db->where('hotel_id', $hotel_id);
		$query = $this->db->get();
		return $query->result();
	}



	function getdropdown2($table, $table_id)
	{

		$result = array();

		$hotel_id = $this->session->hotel_id;
		$this->db->select('*');
		$this->db->from('table_master');
		$this->db->where('status', 1);
		$this->db->where('hotel_id', $hotel_id);
		$query = $this->db->get();

		foreach ($query->result_array() as $value) {

			if($table_id>0){
				$id = $value['id'];
				$this->db->select('*');
				$this->db->from('bill_master');
				$this->db->where('bill_master.table_id', $id);
				$this->db->where('bill_master.status', 1);
				$query2 = $this->db->get();

				if ($query2->num_rows() > 0) {
				} else {
					$result[] = array(
						'table_name' => $value['table_name'],
						'id' => $value['id'],
					);
				}
				$this->db->select('*');
				$this->db->from('bill_master');
				$this->db->where('bill_master.table_id', $id);
				$this->db->where('bill_master.id', $table_id);
				//$this->db->where('bill_master.status', 1);
					$query2 = $this->db->get();

				if ($query2->num_rows() > 0) {
					$result[] = array(
						'table_name' => $value['table_name'],
						'id' => $value['id'],
					);
				}


			}else{
				$id = $value['id'];
				$this->db->select('*');
				$this->db->from('bill_master');
				$this->db->where('bill_master.table_id', $id);
				$this->db->where('bill_master.status', 1);
				$query2 = $this->db->get();
	
	
				if ($query2->num_rows() > 0) {
				} else {
					$result[] = array(
						'table_name' => $value['table_name'],
						'id' => $value['id'],
					);
				}
			}

			
		}

		return $result;
	}

	function get_rate($item)
	{
		$hotel_id = $this->session->hotel_id;
		$this->db->select('*');
		$this->db->from('item_master');
		$this->db->where('id', $item);
		$this->db->where('hotel_id', $hotel_id);
		$query = $this->db->get();
		return $query->result();
	}

	function get_billnumber()
	{
		$hotel_id = $this->session->hotel_id;
		$this->db->select_max('bill_number', 'max');
		$this->db->where('hotel_id', $hotel_id);
		$query = $this->db->get('bill_master');
		if ($query->num_rows() == 0) {
			return 1;
		}
		$max = $query->row()->max;
		return $max == 0 ? 1 : $max + 1;
	}

	function get_billnumber_old($id)
	{
		$hotel_id = $this->session->hotel_id;
		$this->db->select('bill_number');
		$this->db->where('hotel_id', $hotel_id);
		$this->db->where('id', $id);
		$query = $this->db->get('bill_master');

		$max = $query->row()->bill_number;
		return $max;
	}
}
