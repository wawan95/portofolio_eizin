<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Pegawai_model extends BF_Model {

	protected $table_name	= "pegawai";
	protected $key			= "pg_id";
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
			"field"		=> "pegawai_pg_nama",
			"label"		=> "Nama",
			"rules"		=> "max_length[50]"
		),
		array(
			"field"		=> "pegawai_pg_divisi",
			"label"		=> "Divisi",
			"rules"		=> "max_length[50]"
		),
		array(
			"field"		=> "pegawai_pg_alamat",
			"label"		=> "Alamat",
			"rules"		=> "max_length[200]"
		),
		array(
			"field"		=> "pegawai_pg_telefon",
			"label"		=> "Telefon",
			"rules"		=> "max_length[16]"
		),
		array(
			"field"		=> "pegawai_pg_foto",
			"label"		=> "Foto",
			"rules"		=> "max_length[200]"
		),
	);
	protected $insert_validation_rules 	= array();
	protected $skip_validation 			= FALSE;

	//--------------------------------------------------------------------

	function search($term, $offset="", $limit=""){
		$records = $this->db->like("id", $term)
							->or_like("pg_nama", $term)->or_like("pg_divisi", $term)->or_like("pg_alamat", $term)->or_like("pg_telefon", $term)->or_like("pg_foto", $term)
							->limit($offset, $limit)
							->get("pegawai")
							->result();
		return $records;
	}

	function num_search($term){
		$num_row = $this->db->like("id", $term)
							->or_like("pg_nama", $term)->or_like("pg_divisi", $term)->or_like("pg_alamat", $term)->or_like("pg_telefon", $term)->or_like("pg_foto", $term)
							->get("pegawai")
							->num_rows();
		return $num_row;
	}

	function get_insert($data){
       $this->db->insert('bf_pegawai', $data);
       return TRUE;
    }

    function get_update($data){
    	$pg_id = $this->input->post('pg_id');
    	$this->db->where('pg_id',$pg_id);
    	$this->db->update('bf_pegawai',$data);
    }

    function updateFoto($pg_foto){
    	$pg_id = $this->input->post('pg_id');
    	$foto = $pg_foto;
    	$data = array(
    		'pg_foto'=> $foto,	
    	);
    	$this->db->where('pg_id',$pg_id);
    	$this->db->update('bf_pegawai',$data);
    }

    public function getDivisi($id_divisi='', $selected=''){
		$recs = $this->db->get('bf_divisi')->result();
		$html = '<select id='.$id_divisi.' name='.$id_divisi.'>';
		$html .= '<option value="">Pilih Jenis</option>';
		foreach($recs as $rec){
			$html .= '<option value='.$rec->id_divisi.'>'.$rec->nama_divisi.'</option>';
		}
		$html .= '</select>';		
		return $html;
	}

	public function editDivisi($id_divisi='',$selected=''){
		$recs = $this->db->get('bf_divisi')->result();
		$html = '<select id='.$id_divisi.' name='.$id_divisi.'>';
		
		foreach($recs as $rec){
			$sel = ($selected == $rec->id_divisi)?"selected":"";
			$html .= '<option value='.$rec->id_divisi.' '.$sel.'>'.$rec->nama_divisi.' '.$sel.'</option>';
		}
		$html .= '</select>';		
		return $html;
	}

	public function getViewDivisi($id_divisi){
		$a = $this->db->where('id_divisi',$id_divisi)->get('bf_divisi')->row();
		return($a)?$a->nama_divisi:'';
	}
}
