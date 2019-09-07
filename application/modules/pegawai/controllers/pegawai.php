<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * pegawai controller
 */
class pegawai extends Front_Controller
{

	//--------------------------------------------------------------------


	/**
	 * Constructor
	 *
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();

		$this->load->library('form_validation');
		$this->load->model('pegawai_model', null, true);
		$this->lang->load('pegawai');
		

		Assets::add_module_js('pegawai', 'pegawai.js');
	}

	//--------------------------------------------------------------------


	/**
	 * Displays a list of form data.
	 *
	 * @return void
	 */
	public function index()
	{

		$records = $this->pegawai_model->find_all();

		Template::set('records', $records);
		Template::render();
	}

	//--------------------------------------------------------------------

	function Upload(){
		$config =  array(
	        'upload_path'     => "./assets/images", //folder foto
	        'allowed_types'   => "gif|jpg|png|jpeg", //type file
	        'file_name' => "pegawai_".time(), //mengganti nama
	        'max_size' => "4000", //ukuran file
	    );    
		$this->load->library("upload", $config); // load library upload CI
		//proses upload
		if($this->upload->do_upload("pegawai_pg_foto")){
			$gambar = $this->upload->data();
			//data array setiap field
			$data = array(
	      		'pg_foto' =>$gambar['file_name'],
	       		'pg_nama' =>$this->input->post('pegawai_pg_nama'),
	       		'pg_divisi' =>$this->input->post('pegawai_pg_divisi'),
	       		'pg_alamat' =>$this->input->post('pegawai_pg_alamat'),
	       		'pg_telefon' =>$this->input->post('pegawai_pg_telefon')
	        );
	        $this->pegawai_model->get_insert($data); //masukan data ke database
	        redirect('admin/master/pegawai');

		}
		else{
				$error = array('error' => $this->upload->display_errors());

			}
	}
	function hapus($id)
	{
		$this->db->where('pg_id',$id);
		$this->db->delete('bf_pegawai');
		redirect('admin/master/pegawai');
	}
	function edit($id){
		$config =  array(
	        'upload_path'     => "./assets/images", //folder foto
	        'allowed_types'   => "gif|jpg|png|jpeg", //type file
	        'file_name' => "pegawai_".time(), //mengganti nama
	        'max_size' => "4000", //ukuran file
	    );    
		$this->load->library("upload", $config); // load library upload CI
		//proses upload
		if($this->upload->do_upload("pegawai_pg_foto")){
			$gambar = $this->upload->data();
			//data array setiap field
			$data = array(
	      		'pg_foto' =>$gambar['file_name'],
	       		'pg_nama' =>$this->input->post('pegawai_pg_nama'),
	       		'pg_divisi' =>$this->input->post('pegawai_pg_divisi'),
	       		'pg_alamat' =>$this->input->post('pegawai_pg_alamat'),
	       		'pg_telefon' =>$this->input->post('pegawai_pg_telefon')
	        );
	        $this->db->where('pg_id',$id);
	        $this->db->update('bf_pegawai',$data); //masukan data ke database
	        redirect('admin/master/pegawai');redirect('admin/master/pegawai');

		}
		else{
				$error = array('error' => $this->upload->display_errors());
			}
	} 	
	

}