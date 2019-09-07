<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * konfirmasi_izin controller
 */
class konfirmasi_izin extends Front_Controller
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
		$this->load->model('konfirmasi_izin_model', null, true);
		$this->lang->load('konfirmasi_izin');
		
			Assets::add_css('flick/jquery-ui-1.8.13.custom.css');
			Assets::add_js('jquery-ui-1.8.13.min.js');

		Assets::add_module_js('konfirmasi_izin', 'konfirmasi_izin.js');
	}

	//--------------------------------------------------------------------


	/**
	 * Displays a list of form data.
	 *
	 * @return void
	 */
	public function index()
	{

		$records = $this->konfirmasi_izin_model->find_all();

		Template::set('records', $records);
		Template::render();
	}

	//--------------------------------------------------------------------
	public function tolak($id){
		$data = array(
	       		'status_izin' => 1);
		$this->db->where('id',$id_pengajuan);
		$this->db->update('bf_pengajuan',$data);
		redirect('admin/perizinan/konfirmasi_izin');
	}

	public function terima($id){
		$data = array(
	       		'status_izin' => 2);
		$this->db->where('id',$id_pengajuan);
		$this->db->update('bf_pengajuan',$data);
		redirect('admin/perizinan/konfirmasi_izin');
	}


}