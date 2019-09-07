<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Input_izin_model extends BF_Model {

	protected $table_name	= "input_izin";
	protected $key			= "id";
	protected $soft_deletes	= false;
	protected $date_format	= "datetime";

	protected $log_user 	= FALSE;

	protected $set_created	= false;
	protected $set_modified = false;

	/*
		Customize the operations of the model without recreating the insert, update,
		etc methods by adding the method names to act as callbacks here.
	 */
	protected $before_insert 	= array();
	protected $after_insert 	= array();
	protected $before_update 	= array();
	protected $after_update 	= array();
	protected $before_find 		= array();
	protected $after_find 		= array();
	protected $before_delete 	= array();
	protected $after_delete 	= array();

	/*
		For performance reasons, you may require your model to NOT return the
		id of the last inserted row as it is a bit of a slow method. This is
		primarily helpful when running big loops over data.
	 */
	protected $return_insert_id 	= TRUE;

	// The default type of element data is returned as.
	protected $return_type 			= "object";

	// Items that are always removed from data arrays prior to
	// any inserts or updates.
	protected $protected_attributes = array();

	/*
		You may need to move certain rules (like required) into the
		$insert_validation_rules array and out of the standard validation array.
		That way it is only required during inserts, not updates which may only
		be updating a portion of the data.
	 */
	protected $validation_rules 		= array(
		array(
			"field"		=> "input_izin_izin_nama",
			"label"		=> "Nama",
			"rules"		=> "max_length[50]"
		),
		array(
			"field"		=> "input_izin_izin_divisi",
			"label"		=> "Divisi",
			"rules"		=> "max_length[50]"
		),
		array(
			"field"		=> "input_izin_input_izin_jenis",
			"label"		=> "Jenis Izin",
			"rules"		=> "max_length[40]"
		),
		array(
			"field"		=> "input_izin_tgl_m",
			"label"		=> "Tanggal Mulai",
			"rules"		=> ""
		),
		array(
			"field"		=> "input_izin_tgl_s",
			"label"		=> "Tanggal Selesai",
			"rules"		=> ""
		),
		array(
			"field"		=> "input_izin_izin_waktu_m",
			"label"		=> "Waktu Mulai",
			"rules"		=> ""
		),
		array(
			"field"		=> "input_izin_izin_waktu_s",
			"label"		=> "Waktu Selesai",
			"rules"		=> ""
		),
	);
	protected $insert_validation_rules 	= array();
	protected $skip_validation 			= FALSE;

	//--------------------------------------------------------------------

	function search($term, $offset="", $limit=""){
		$records = $this->db->like("id", $term)
							->or_like("izin_nama", $term)->or_like("izin_divisi", $term)->or_like("input_izin_jenis", $term)->or_like("tgl_m", $term)->or_like("tgl_s", $term)->or_like("izin_waktu_m", $term)->or_like("izin_waktu_s", $term)
							->limit($offset, $limit)
							->get("input_izin")
							->result();
		return $records;
	}

	function num_search($term){
		$num_row = $this->db->like("id", $term)
							->or_like("izin_nama", $term)->or_like("izin_divisi", $term)->or_like("input_izin_jenis", $term)->or_like("tgl_m", $term)->or_like("tgl_s", $term)->or_like("izin_waktu_m", $term)->or_like("izin_waktu_s", $term)
							->get("input_izin")
							->num_rows();
		return $num_row;
	}

	
	public function ListNama($pg_id='',$sel=''){ // menampilkan data dari database
		$recs = $this->db->get('bf_pegawai')->result();
		$html = '<select id='.$pg_id.' name='.$pg_id.'>';
		$html .= '<option value="">Nama Anda</option>';
		foreach($recs as $rec){   
			$selected = ($sel == $rec->pg_id)?"selected":"";//tambahan
			$html .= '<option value='.$rec->pg_id.' '.$selected.'>'.$rec->pg_nama.'</option>';

		}
		
		$html .= '</select>';

		return $html;
	}	

	public function GetListNama($pg_id){
		
		$recs = $this->db->where('pg_id',$pg_id)->get('bf_pegawai')->row();
		return($recs)?$recs->pg_nama:'';

	}
	public function EditNama($pg_id='',$selected=''){
		$recs = $this->db->get('bf_pegawai')->result();
		$html = '<select id='.$pg_id.' name='.$pg_id.'>';
		
		foreach($recs as $rec){
			$sel = ($selected == $rec->pg_id)?"selected":"";
			$html .= '<option value='.$rec->pg_id.' '.$sel.'>'.$rec->pg_nama.'</option>';
		}
		$html .= '</select>';		
		return $html;
	}
		public function getViewNamaPegawai($pg_id){
		$a = $this->db->where('pg_id',$pg_id)->get('bf_pegawai')->row();
		return($a)?$a->pg_nama:'';
	}

	public function List_Divisi($id_divisi='',$sel=''){ // menampilkan data dari database
		$recs = $this->db->get('bf_divisi')->result();
		$html = '<select id='.$id_divisi.' name='.$id_divisi.'>';
		$html .= '<option value="">Divisi</option>';
		foreach($recs as $rec){   
			$selected = ($sel == $rec->id_divisi)?"selected":"";//tambahan
			$html .= '<option value='.$rec->id_divisi.' '.$selected.'>'.$rec->nama_divisi.'</option>';

		}
		
		$html .= '</select>';

		return $html;
	}	

	public function GetList_Divisi($id_divisi){
		
		$recs = $this->db->where('id_divisi',$id_divisi)->get('bf_divisi')->row();
		return($recs)?$recs->nama_divisi:'';

	}
	public function EditDivisi($id_divisi='',$selected=''){
		$recs = $this->db->get('bf_divisi')->result();
		$html = '<select id='.$id_divisi.' name='.$id_divisi.'>';
		
		foreach($recs as $rec){
			$sel = ($selected == $rec->id_divisi)?"selected":"";
			$html .= '<option value='.$rec->id_divisi.' '.$sel.'>'.$rec->nama_divisi.'</option>';
		}
		$html .= '</select>';		
		return $html;
	}

		public function ListJenis_Izin($id='',$sel=''){ // menampilkan data dari database
			$recs = $this->db->get('bf_jenis_izin')->result();
			$html = '<select id='.$id.' name='.$id.'>';
			$html .= '<option value="">Jenis Izin</option>';
			foreach($recs as $rec){   
				$selected = ($sel == $rec->id)?"selected":"";//tambahan
				$html .= '<option value='.$rec->id.' '.$sel.'>'.$rec->izin_jenis.'</option>';

			}
			
			$html .= '</select>';

			return $html;
		}	

		
		public function EditJenisIzin($id='',$selected=''){
		$recs = $this->db->get('bf_jenis_izin')->result();
		$html = '<select id='.$id.' name='.$id.'>';
		
		foreach($recs as $rec){
			$sel = ($selected == $rec->id)?"selected":"";
			$html .= '<option value='.$rec->id.' '.$sel.'>'.$rec->izin_jenis.'</option>';
		}
		$html .= '</select>';		
		return $html;
	}
	public function GetList_Jenis_Izin($id){
			
			$recs = $this->db->where('id',$id)->get('bf_jenis_izin')->row();
			return($recs)?$recs->izin_jenis:'';

		}
}
